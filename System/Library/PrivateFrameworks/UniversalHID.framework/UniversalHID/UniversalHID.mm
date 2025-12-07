uint64_t sub_270704508()
{
  result = sub_27070452C();
  qword_2808293E8 = result;
  qword_2808293F0 = v1;
  return result;
}

uint64_t sub_27070452C()
{
  v1 = sub_27070E504(&unk_288073910);
  v12 = v1;
  v13 = v0;
  v2 = 0;
  switch(v0 >> 62)
  {
    case 1uLL:
      v2 = v1 >> 32;
      break;
    case 2uLL:
      v2 = *(v1 + 24);
      break;
    case 3uLL:
      break;
    default:
      v2 = BYTE6(v0);
      break;
  }

  sub_270766E38(v2, v2, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v12, v13);
  sub_270708D74(v12, v13);
  v3 = sub_2707046AC();
  v5 = v4;
  sub_2707A8370();
  sub_270708D74(v3, v5);
  v6 = sub_27070E504(&unk_288073938);
  v8 = v7;
  sub_2707A8370();
  sub_270708D74(v6, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829520, &qword_2707A9F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2707A9CF0;
  *(inited + 56) = &type metadata for ApplicationCollection;
  *(inited + 64) = &protocol witness table for ApplicationCollection;
  *(inited + 32) = v12;
  *(inited + 40) = v13;
  v10 = static HIDReportDescriptor.Builder.buildBlock(_:)(inited);
  swift_setDeallocating();
  sub_27078DA0C();
  return v10;
}

uint64_t sub_2707046AC()
{
  v1 = sub_27070E504(&unk_288073230);
  v372 = v1;
  v373 = v0;
  v2 = 0;
  switch(v0 >> 62)
  {
    case 1uLL:
      v2 = v1 >> 32;
      break;
    case 2uLL:
      v2 = *(v1 + 24);
      break;
    case 3uLL:
      break;
    default:
      v2 = BYTE6(v0);
      break;
  }

  sub_270766E38(v2, v2, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v372, v373);
  v370 = v373;
  v371 = v372;
  sub_270708D74(v372, v373);
  v4 = sub_27070E504(&unk_288073258);
  v372 = v4;
  v373 = v3;
  v5 = 0;
  switch(v3 >> 62)
  {
    case 1uLL:
      v5 = v4 >> 32;
      break;
    case 2uLL:
      v5 = *(v4 + 24);
      break;
    case 3uLL:
      break;
    default:
      v5 = BYTE6(v3);
      break;
  }

  sub_270766E38(v5, v5, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v372, v373);
  v368 = v373;
  v369 = v372;
  sub_270708D74(v372, v373);
  v7 = sub_27070E504(&unk_288073280);
  v372 = v7;
  v373 = v6;
  v8 = 0;
  switch(v6 >> 62)
  {
    case 1uLL:
      v8 = v7 >> 32;
      break;
    case 2uLL:
      v8 = *(v7 + 24);
      break;
    case 3uLL:
      break;
    default:
      v8 = BYTE6(v6);
      break;
  }

  sub_270766E38(v8, v8, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v372, v373);
  v366 = v373;
  v367 = v372;
  sub_270708D74(v372, v373);
  LOBYTE(v372) = 5;
  v9 = sub_27074110C(&v372, 0xFF1AuLL);
  v364 = v10;
  v365 = v9;
  LOBYTE(v372) = 17;
  v11 = sub_27074110C(&v372, 0xE060uLL);
  v362 = v12;
  v363 = v11;
  v14 = sub_27070E504(&unk_2880732A8);
  v372 = v14;
  v373 = v13;
  v15 = 0;
  switch(v13 >> 62)
  {
    case 1uLL:
      v15 = v14 >> 32;
      break;
    case 2uLL:
      v15 = *(v14 + 24);
      break;
    case 3uLL:
      break;
    default:
      v15 = BYTE6(v13);
      break;
  }

  sub_270766E38(v15, v15, 16);
  sub_2707A82E0();
  sub_2707A82F0();
  v16 = v372;
  v17 = v373;
  sub_270706C38(v372, v373);
  v360 = v17;
  v361 = v16;
  sub_270708D74(v16, v17);
  v19 = sub_27070E504(&unk_2880732D0);
  v372 = v19;
  v373 = v18;
  v20 = 0;
  switch(v18 >> 62)
  {
    case 1uLL:
      v20 = v19 >> 32;
      break;
    case 2uLL:
      v20 = *(v19 + 24);
      break;
    case 3uLL:
      break;
    default:
      v20 = BYTE6(v18);
      break;
  }

  sub_270766E38(v20, v20, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v21 = v372;
  v22 = v373;
  sub_270706C38(v372, v373);
  v358 = v22;
  v359 = v21;
  sub_270708D74(v21, v22);
  v24 = sub_27070E504(&unk_2880732F8);
  v372 = v24;
  v373 = v23;
  v25 = 0;
  switch(v23 >> 62)
  {
    case 1uLL:
      v25 = v24 >> 32;
      break;
    case 2uLL:
      v25 = *(v24 + 24);
      break;
    case 3uLL:
      break;
    default:
      v25 = BYTE6(v23);
      break;
  }

  sub_270766E38(v25, v25, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v26 = v372;
  v27 = v373;
  sub_270706C38(v372, v373);
  v356 = v27;
  v357 = v26;
  sub_270708D74(v26, v27);
  LOBYTE(v372) = 5;
  v28 = sub_27074110C(&v372, 0xFF1AuLL);
  v354 = v29;
  v355 = v28;
  LOBYTE(v372) = 17;
  v353 = sub_27074110C(&v372, 0xE061uLL);
  v352 = v30;
  v32 = sub_27070E504(&unk_288073320);
  v372 = v32;
  v373 = v31;
  v33 = 0;
  switch(v31 >> 62)
  {
    case 1uLL:
      v33 = v32 >> 32;
      break;
    case 2uLL:
      v33 = *(v32 + 24);
      break;
    case 3uLL:
      break;
    default:
      v33 = BYTE6(v31);
      break;
  }

  sub_270766E38(v33, v33, 16);
  sub_2707A82E0();
  sub_2707A82F0();
  v34 = v372;
  v35 = v373;
  sub_270706C38(v372, v373);
  v351 = v34;
  v350 = v35;
  sub_270708D74(v34, v35);
  v37 = sub_27070E504(&unk_288073348);
  v372 = v37;
  v373 = v36;
  v38 = 0;
  switch(v36 >> 62)
  {
    case 1uLL:
      v38 = v37 >> 32;
      break;
    case 2uLL:
      v38 = *(v37 + 24);
      break;
    case 3uLL:
      break;
    default:
      v38 = BYTE6(v36);
      break;
  }

  sub_270766E38(v38, v38, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v39 = v372;
  v40 = v373;
  sub_270706C38(v372, v373);
  v349 = v39;
  v348 = v40;
  sub_270708D74(v39, v40);
  v42 = sub_27070E504(&unk_288073370);
  v372 = v42;
  v373 = v41;
  v43 = 0;
  switch(v41 >> 62)
  {
    case 1uLL:
      v43 = v42 >> 32;
      break;
    case 2uLL:
      v43 = *(v42 + 24);
      break;
    case 3uLL:
      break;
    default:
      v43 = BYTE6(v41);
      break;
  }

  sub_270766E38(v43, v43, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v44 = v372;
  v45 = v373;
  sub_270706C38(v372, v373);
  v347 = v44;
  v346 = v45;
  sub_270708D74(v44, v45);
  LOBYTE(v372) = 5;
  v345 = sub_27074110C(&v372, 0xFF1AuLL);
  v344 = v46;
  LOBYTE(v372) = 17;
  v343 = sub_27074110C(&v372, 0xE061uLL);
  v342 = v47;
  v49 = sub_27070E504(&unk_288073398);
  v372 = v49;
  v373 = v48;
  v50 = 0;
  switch(v48 >> 62)
  {
    case 1uLL:
      v50 = v49 >> 32;
      break;
    case 2uLL:
      v50 = *(v49 + 24);
      break;
    case 3uLL:
      break;
    default:
      v50 = BYTE6(v48);
      break;
  }

  sub_270766E38(v50, v50, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v51 = v372;
  v52 = v373;
  sub_270706C38(v372, v373);
  v341 = v51;
  v340 = v52;
  sub_270708D74(v51, v52);
  v54 = sub_27070E504(&unk_2880733C0);
  v372 = v54;
  v373 = v53;
  v55 = 0;
  switch(v53 >> 62)
  {
    case 1uLL:
      v55 = v54 >> 32;
      break;
    case 2uLL:
      v55 = *(v54 + 24);
      break;
    case 3uLL:
      break;
    default:
      v55 = BYTE6(v53);
      break;
  }

  sub_270766E38(v55, v55, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v56 = v372;
  v57 = v373;
  sub_270706C38(v372, v373);
  v339 = v56;
  v338 = v57;
  sub_270708D74(v56, v57);
  v59 = sub_27070E504(&unk_2880733E8);
  v372 = v59;
  v373 = v58;
  v60 = 0;
  switch(v58 >> 62)
  {
    case 1uLL:
      v60 = v59 >> 32;
      break;
    case 2uLL:
      v60 = *(v59 + 24);
      break;
    case 3uLL:
      break;
    default:
      v60 = BYTE6(v58);
      break;
  }

  sub_270766E38(v60, v60, 32);
  sub_2707A82E0();
  sub_2707A82F0();
  v61 = v372;
  v62 = v373;
  sub_270706C38(v372, v373);
  v337 = v61;
  v336 = v62;
  sub_270708D74(v61, v62);
  v64 = sub_27070E504(&unk_288073410);
  v372 = v64;
  v373 = v63;
  v65 = 0;
  switch(v63 >> 62)
  {
    case 1uLL:
      v65 = v64 >> 32;
      break;
    case 2uLL:
      v65 = *(v64 + 24);
      break;
    case 3uLL:
      break;
    default:
      v65 = BYTE6(v63);
      break;
  }

  sub_270766E38(v65, v65, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v66 = v372;
  v67 = v373;
  sub_270706C38(v372, v373);
  v335 = v66;
  v334 = v67;
  sub_270708D74(v66, v67);
  v69 = sub_27070E504(&unk_288073438);
  v372 = v69;
  v373 = v68;
  v70 = 0;
  switch(v68 >> 62)
  {
    case 1uLL:
      v70 = v69 >> 32;
      break;
    case 2uLL:
      v70 = *(v69 + 24);
      break;
    case 3uLL:
      break;
    default:
      v70 = BYTE6(v68);
      break;
  }

  sub_270766E38(v70, v70, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v71 = v372;
  v72 = v373;
  sub_270706C38(v372, v373);
  v333 = v71;
  v332 = v72;
  sub_270708D74(v71, v72);
  LOBYTE(v372) = 5;
  v331 = sub_27074110C(&v372, 0xFF1AuLL);
  v330 = v73;
  LOBYTE(v372) = 17;
  v329 = sub_27074110C(&v372, 0xE061uLL);
  v328 = v74;
  v76 = sub_27070E504(&unk_288073460);
  v372 = v76;
  v373 = v75;
  v77 = 0;
  switch(v75 >> 62)
  {
    case 1uLL:
      v77 = v76 >> 32;
      break;
    case 2uLL:
      v77 = *(v76 + 24);
      break;
    case 3uLL:
      break;
    default:
      v77 = BYTE6(v75);
      break;
  }

  sub_270766E38(v77, v77, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v78 = v372;
  v79 = v373;
  sub_270706C38(v372, v373);
  v327 = v78;
  v326 = v79;
  sub_270708D74(v78, v79);
  v81 = sub_27070E504(&unk_288073488);
  v372 = v81;
  v373 = v80;
  v82 = 0;
  switch(v80 >> 62)
  {
    case 1uLL:
      v82 = v81 >> 32;
      break;
    case 2uLL:
      v82 = *(v81 + 24);
      break;
    case 3uLL:
      break;
    default:
      v82 = BYTE6(v80);
      break;
  }

  sub_270766E38(v82, v82, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v83 = v372;
  v84 = v373;
  sub_270706C38(v372, v373);
  v325 = v83;
  v324 = v84;
  sub_270708D74(v83, v84);
  v86 = sub_27070E504(&unk_2880734B0);
  v372 = v86;
  v373 = v85;
  v87 = 0;
  switch(v85 >> 62)
  {
    case 1uLL:
      v87 = v86 >> 32;
      break;
    case 2uLL:
      v87 = *(v86 + 24);
      break;
    case 3uLL:
      break;
    default:
      v87 = BYTE6(v85);
      break;
  }

  sub_270766E38(v87, v87, 32);
  sub_2707A82E0();
  sub_2707A82F0();
  v88 = v372;
  v89 = v373;
  sub_270706C38(v372, v373);
  v323 = v88;
  v322 = v89;
  sub_270708D74(v88, v89);
  v91 = sub_27070E504(&unk_2880734D8);
  v372 = v91;
  v373 = v90;
  v92 = 0;
  switch(v90 >> 62)
  {
    case 1uLL:
      v92 = v91 >> 32;
      break;
    case 2uLL:
      v92 = *(v91 + 24);
      break;
    case 3uLL:
      break;
    default:
      v92 = BYTE6(v90);
      break;
  }

  sub_270766E38(v92, v92, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v93 = v372;
  v94 = v373;
  sub_270706C38(v372, v373);
  v321 = v93;
  v320 = v94;
  sub_270708D74(v93, v94);
  v96 = sub_27070E504(&unk_288073500);
  v372 = v96;
  v373 = v95;
  v97 = 0;
  switch(v95 >> 62)
  {
    case 1uLL:
      v97 = v96 >> 32;
      break;
    case 2uLL:
      v97 = *(v96 + 24);
      break;
    case 3uLL:
      break;
    default:
      v97 = BYTE6(v95);
      break;
  }

  sub_270766E38(v97, v97, 6);
  sub_2707A82E0();
  sub_2707A82F0();
  v98 = v372;
  v99 = v373;
  sub_270706C38(v372, v373);
  v319 = v98;
  v318 = v99;
  sub_270708D74(v98, v99);
  LOBYTE(v372) = 5;
  v317 = sub_27074110C(&v372, 0xFF1AuLL);
  v316 = v100;
  LOBYTE(v372) = 17;
  v101 = sub_27074110C(&v372, 0xE061uLL);
  v314 = v102;
  v315 = v101;
  v104 = sub_27070E504(&unk_288073528);
  v372 = v104;
  v373 = v103;
  v105 = 0;
  switch(v103 >> 62)
  {
    case 1uLL:
      v105 = v104 >> 32;
      break;
    case 2uLL:
      v105 = *(v104 + 24);
      break;
    case 3uLL:
      break;
    default:
      v105 = BYTE6(v103);
      break;
  }

  sub_270766E38(v105, v105, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v106 = v372;
  v107 = v373;
  sub_270706C38(v372, v373);
  v312 = v107;
  v313 = v106;
  sub_270708D74(v106, v107);
  v109 = sub_27070E504(&unk_288073550);
  v372 = v109;
  v373 = v108;
  v110 = 0;
  switch(v108 >> 62)
  {
    case 1uLL:
      v110 = v109 >> 32;
      break;
    case 2uLL:
      v110 = *(v109 + 24);
      break;
    case 3uLL:
      break;
    default:
      v110 = BYTE6(v108);
      break;
  }

  sub_270766E38(v110, v110, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v111 = v372;
  v112 = v373;
  sub_270706C38(v372, v373);
  v310 = v112;
  v311 = v111;
  sub_270708D74(v111, v112);
  v114 = sub_27070E504(&unk_288073578);
  v372 = v114;
  v373 = v113;
  v115 = 0;
  switch(v113 >> 62)
  {
    case 1uLL:
      v115 = v114 >> 32;
      break;
    case 2uLL:
      v115 = *(v114 + 24);
      break;
    case 3uLL:
      break;
    default:
      v115 = BYTE6(v113);
      break;
  }

  sub_270766E38(v115, v115, 32);
  sub_2707A82E0();
  sub_2707A82F0();
  v116 = v372;
  v117 = v373;
  sub_270706C38(v372, v373);
  v308 = v117;
  v309 = v116;
  sub_270708D74(v116, v117);
  v119 = sub_27070E504(&unk_2880735A0);
  v372 = v119;
  v373 = v118;
  v120 = 0;
  switch(v118 >> 62)
  {
    case 1uLL:
      v120 = v119 >> 32;
      break;
    case 2uLL:
      v120 = *(v119 + 24);
      break;
    case 3uLL:
      break;
    default:
      v120 = BYTE6(v118);
      break;
  }

  sub_270766E38(v120, v120, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v121 = v372;
  v122 = v373;
  sub_270706C38(v372, v373);
  v306 = v122;
  v307 = v121;
  sub_270708D74(v121, v122);
  v124 = sub_27070E504(&unk_2880735C8);
  v372 = v124;
  v373 = v123;
  v125 = 0;
  switch(v123 >> 62)
  {
    case 1uLL:
      v125 = v124 >> 32;
      break;
    case 2uLL:
      v125 = *(v124 + 24);
      break;
    case 3uLL:
      break;
    default:
      v125 = BYTE6(v123);
      break;
  }

  sub_270766E38(v125, v125, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v126 = v372;
  v127 = v373;
  sub_270706C38(v372, v373);
  v304 = v127;
  v305 = v126;
  sub_270708D74(v126, v127);
  LOBYTE(v372) = 5;
  v128 = sub_27074110C(&v372, 0xFF1AuLL);
  v302 = v129;
  v303 = v128;
  LOBYTE(v372) = 17;
  v130 = sub_27074110C(&v372, 0xE061uLL);
  v300 = v131;
  v301 = v130;
  v133 = sub_27070E504(&unk_2880735F0);
  v372 = v133;
  v373 = v132;
  v134 = 0;
  switch(v132 >> 62)
  {
    case 1uLL:
      v134 = v133 >> 32;
      break;
    case 2uLL:
      v134 = *(v133 + 24);
      break;
    case 3uLL:
      break;
    default:
      v134 = BYTE6(v132);
      break;
  }

  sub_270766E38(v134, v134, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v135 = v372;
  v136 = v373;
  sub_270706C38(v372, v373);
  v298 = v136;
  v299 = v135;
  sub_270708D74(v135, v136);
  v138 = sub_27070E504(&unk_288073618);
  v372 = v138;
  v373 = v137;
  v139 = 0;
  switch(v137 >> 62)
  {
    case 1uLL:
      v139 = v138 >> 32;
      break;
    case 2uLL:
      v139 = *(v138 + 24);
      break;
    case 3uLL:
      break;
    default:
      v139 = BYTE6(v137);
      break;
  }

  sub_270766E38(v139, v139, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v140 = v372;
  v141 = v373;
  sub_270706C38(v372, v373);
  v296 = v141;
  v297 = v140;
  sub_270708D74(v140, v141);
  v143 = sub_27070E504(&unk_288073640);
  v372 = v143;
  v373 = v142;
  v144 = 0;
  switch(v142 >> 62)
  {
    case 1uLL:
      v144 = v143 >> 32;
      break;
    case 2uLL:
      v144 = *(v143 + 24);
      break;
    case 3uLL:
      break;
    default:
      v144 = BYTE6(v142);
      break;
  }

  sub_270766E38(v144, v144, 32);
  sub_2707A82E0();
  sub_2707A82F0();
  v145 = v372;
  v146 = v373;
  sub_270706C38(v372, v373);
  v294 = v146;
  v295 = v145;
  sub_270708D74(v145, v146);
  v148 = sub_27070E504(&unk_288073668);
  v372 = v148;
  v373 = v147;
  v149 = 0;
  switch(v147 >> 62)
  {
    case 1uLL:
      v149 = v148 >> 32;
      break;
    case 2uLL:
      v149 = *(v148 + 24);
      break;
    case 3uLL:
      break;
    default:
      v149 = BYTE6(v147);
      break;
  }

  sub_270766E38(v149, v149, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v150 = v372;
  v151 = v373;
  sub_270706C38(v372, v373);
  v292 = v151;
  v293 = v150;
  sub_270708D74(v150, v151);
  v153 = sub_27070E504(&unk_288073690);
  v372 = v153;
  v373 = v152;
  v154 = 0;
  switch(v152 >> 62)
  {
    case 1uLL:
      v154 = v153 >> 32;
      break;
    case 2uLL:
      v154 = *(v153 + 24);
      break;
    case 3uLL:
      break;
    default:
      v154 = BYTE6(v152);
      break;
  }

  sub_270766E38(v154, v154, 6);
  sub_2707A82E0();
  sub_2707A82F0();
  v155 = v372;
  v156 = v373;
  sub_270706C38(v372, v373);
  v290 = v156;
  v291 = v155;
  sub_270708D74(v155, v156);
  LOBYTE(v372) = 5;
  v157 = sub_27074110C(&v372, 0xFF1AuLL);
  v288 = v158;
  v289 = v157;
  LOBYTE(v372) = 17;
  v159 = sub_27074110C(&v372, 0xE061uLL);
  v286 = v160;
  v287 = v159;
  v162 = sub_27070E504(&unk_2880736B8);
  v372 = v162;
  v373 = v161;
  v163 = 0;
  switch(v161 >> 62)
  {
    case 1uLL:
      v163 = v162 >> 32;
      break;
    case 2uLL:
      v163 = *(v162 + 24);
      break;
    case 3uLL:
      break;
    default:
      v163 = BYTE6(v161);
      break;
  }

  sub_270766E38(v163, v163, 32);
  sub_2707A82E0();
  sub_2707A82F0();
  v164 = v372;
  v165 = v373;
  sub_270706C38(v372, v373);
  v284 = v165;
  v285 = v164;
  sub_270708D74(v164, v165);
  v167 = sub_27070E504(&unk_2880736E0);
  v372 = v167;
  v373 = v166;
  v168 = 0;
  switch(v166 >> 62)
  {
    case 1uLL:
      v168 = v167 >> 32;
      break;
    case 2uLL:
      v168 = *(v167 + 24);
      break;
    case 3uLL:
      break;
    default:
      v168 = BYTE6(v166);
      break;
  }

  sub_270766E38(v168, v168, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v169 = v372;
  v170 = v373;
  sub_270706C38(v372, v373);
  v282 = v170;
  v283 = v169;
  sub_270708D74(v169, v170);
  v172 = sub_27070E504(&unk_288073708);
  v372 = v172;
  v373 = v171;
  v173 = 0;
  switch(v171 >> 62)
  {
    case 1uLL:
      v173 = v172 >> 32;
      break;
    case 2uLL:
      v173 = *(v172 + 24);
      break;
    case 3uLL:
      break;
    default:
      v173 = BYTE6(v171);
      break;
  }

  sub_270766E38(v173, v173, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v174 = v372;
  v175 = v373;
  sub_270706C38(v372, v373);
  v278 = v175;
  v279 = v174;
  sub_270708D74(v174, v175);
  LOBYTE(v372) = 5;
  v176 = sub_27074110C(&v372, 0xFF1AuLL);
  v272 = v177;
  v273 = v176;
  LOBYTE(v372) = 17;
  v178 = sub_27074110C(&v372, 0xE061uLL);
  v268 = v179;
  v269 = v178;
  v181 = sub_27070E504(&unk_288073730);
  v372 = v181;
  v373 = v180;
  v182 = 0;
  switch(v180 >> 62)
  {
    case 1uLL:
      v182 = v181 >> 32;
      break;
    case 2uLL:
      v182 = *(v181 + 24);
      break;
    case 3uLL:
      break;
    default:
      v182 = BYTE6(v180);
      break;
  }

  sub_270766E38(v182, v182, 32);
  sub_2707A82E0();
  sub_2707A82F0();
  v183 = v372;
  v184 = v373;
  sub_270706C38(v372, v373);
  v262 = v184;
  v263 = v183;
  sub_270708D74(v183, v184);
  v186 = sub_27070E504(&unk_288073758);
  v372 = v186;
  v373 = v185;
  v187 = 0;
  switch(v185 >> 62)
  {
    case 1uLL:
      v187 = v186 >> 32;
      break;
    case 2uLL:
      v187 = *(v186 + 24);
      break;
    case 3uLL:
      break;
    default:
      v187 = BYTE6(v185);
      break;
  }

  sub_270766E38(v187, v187, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v189 = v372;
  v188 = v373;
  sub_270706C38(v372, v373);
  v280 = v189;
  v281 = v188;
  sub_270708D74(v189, v188);
  v191 = sub_27070E504(&unk_288073780);
  v372 = v191;
  v373 = v190;
  v192 = 0;
  switch(v190 >> 62)
  {
    case 1uLL:
      v192 = v191 >> 32;
      break;
    case 2uLL:
      v192 = *(v191 + 24);
      break;
    case 3uLL:
      break;
    default:
      v192 = BYTE6(v190);
      break;
  }

  sub_270766E38(v192, v192, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v193 = v372;
  v194 = v373;
  sub_270706C38(v372, v373);
  v276 = v194;
  v277 = v193;
  sub_270708D74(v193, v194);
  LOBYTE(v372) = 5;
  v274 = sub_27074110C(&v372, 0xFF1AuLL);
  v275 = v195;
  LOBYTE(v372) = 17;
  v270 = sub_27074110C(&v372, 0xE061uLL);
  v271 = v196;
  v198 = sub_27070E504(&unk_2880737A8);
  v372 = v198;
  v373 = v197;
  v199 = 0;
  switch(v197 >> 62)
  {
    case 1uLL:
      v199 = v198 >> 32;
      break;
    case 2uLL:
      v199 = *(v198 + 24);
      break;
    case 3uLL:
      break;
    default:
      v199 = BYTE6(v197);
      break;
  }

  sub_270766E38(v199, v199, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v200 = v372;
  v201 = v373;
  sub_270706C38(v372, v373);
  v264 = v201;
  v265 = v200;
  sub_270708D74(v200, v201);
  v203 = sub_27070E504(&unk_2880737D0);
  v372 = v203;
  v373 = v202;
  v204 = 0;
  switch(v202 >> 62)
  {
    case 1uLL:
      v204 = v203 >> 32;
      break;
    case 2uLL:
      v204 = *(v203 + 24);
      break;
    case 3uLL:
      break;
    default:
      v204 = BYTE6(v202);
      break;
  }

  sub_270766E38(v204, v204, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v205 = v372;
  v206 = v373;
  sub_270706C38(v372, v373);
  v266 = v206;
  v267 = v205;
  sub_270708D74(v205, v206);
  v208 = sub_27070E504(&unk_2880737F8);
  v372 = v208;
  v373 = v207;
  v209 = 0;
  switch(v207 >> 62)
  {
    case 1uLL:
      v209 = v208 >> 32;
      break;
    case 2uLL:
      v209 = *(v208 + 24);
      break;
    case 3uLL:
      break;
    default:
      v209 = BYTE6(v207);
      break;
  }

  sub_270766E38(v209, v209, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v210 = v372;
  v211 = v373;
  sub_270706C38(v372, v373);
  v260 = v211;
  v261 = v210;
  sub_270708D74(v210, v211);
  LOBYTE(v372) = 5;
  v212 = sub_27074110C(&v372, 0xFF1AuLL);
  v258 = v213;
  v259 = v212;
  LOBYTE(v372) = 17;
  v214 = sub_27074110C(&v372, 0xE061uLL);
  v256 = v215;
  v257 = v214;
  v217 = sub_27070E504(&unk_288073820);
  v372 = v217;
  v373 = v216;
  v218 = 0;
  switch(v216 >> 62)
  {
    case 1uLL:
      v218 = v217 >> 32;
      break;
    case 2uLL:
      v218 = *(v217 + 24);
      break;
    case 3uLL:
      break;
    default:
      v218 = BYTE6(v216);
      break;
  }

  sub_270766E38(v218, v218, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v219 = v372;
  v220 = v373;
  sub_270706C38(v372, v373);
  v254 = v220;
  v255 = v219;
  sub_270708D74(v219, v220);
  v222 = sub_27070E504(&unk_288073848);
  v372 = v222;
  v373 = v221;
  v223 = 0;
  switch(v221 >> 62)
  {
    case 1uLL:
      v223 = v222 >> 32;
      break;
    case 2uLL:
      v223 = *(v222 + 24);
      break;
    case 3uLL:
      break;
    default:
      v223 = BYTE6(v221);
      break;
  }

  sub_270766E38(v223, v223, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v224 = v372;
  v225 = v373;
  sub_270706C38(v372, v373);
  v252 = v225;
  v253 = v224;
  sub_270708D74(v224, v225);
  v227 = sub_27070E504(&unk_288073870);
  v372 = v227;
  v373 = v226;
  v228 = 0;
  switch(v226 >> 62)
  {
    case 1uLL:
      v228 = v227 >> 32;
      break;
    case 2uLL:
      v228 = *(v227 + 24);
      break;
    case 3uLL:
      break;
    default:
      v228 = BYTE6(v226);
      break;
  }

  sub_270766E38(v228, v228, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v230 = v372;
  v229 = v373;
  sub_270706C38(v372, v373);
  v251 = v230;
  sub_270708D74(v230, v229);
  v232 = sub_27070E504(&unk_288073898);
  v372 = v232;
  v373 = v231;
  v233 = 0;
  switch(v231 >> 62)
  {
    case 1uLL:
      v233 = v232 >> 32;
      break;
    case 2uLL:
      v233 = *(v232 + 24);
      break;
    case 3uLL:
      break;
    default:
      v233 = BYTE6(v231);
      break;
  }

  sub_270766E38(v233, v233, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v234 = v372;
  v235 = v373;
  sub_270706C38(v372, v373);
  sub_270708D74(v234, v235);
  v237 = sub_27070E504(&unk_2880738C0);
  v372 = v237;
  v373 = v236;
  v238 = 0;
  switch(v236 >> 62)
  {
    case 1uLL:
      v238 = v237 >> 32;
      break;
    case 2uLL:
      v238 = *(v237 + 24);
      break;
    case 3uLL:
      break;
    default:
      v238 = BYTE6(v236);
      break;
  }

  sub_270766E38(v238, v238, 7);
  sub_2707A82E0();
  sub_2707A82F0();
  v239 = v372;
  v240 = v373;
  sub_270706C38(v372, v373);
  sub_270708D74(v239, v240);
  v242 = sub_27070E504(&unk_2880738E8);
  v372 = v242;
  v373 = v241;
  v243 = 0;
  switch(v241 >> 62)
  {
    case 1uLL:
      v243 = v242 >> 32;
      break;
    case 2uLL:
      v243 = *(v242 + 24);
      break;
    case 3uLL:
      break;
    default:
      v243 = BYTE6(v241);
      break;
  }

  sub_270766E38(v243, v243, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v245 = v372;
  v244 = v373;
  sub_270706C38(v372, v373);
  sub_270708D74(v245, v244);
  if (qword_280829408 != -1)
  {
    swift_once();
  }

  v247 = qword_280829410;
  v246 = *algn_280829418;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829520, &qword_2707A9F08);
  v248 = swift_allocObject();
  *(v248 + 72) = v371;
  *(v248 + 80) = v370;
  *(v248 + 112) = v369;
  *(v248 + 120) = v368;
  *(v248 + 152) = v367;
  *(v248 + 160) = v366;
  *(v248 + 192) = v365;
  *(v248 + 200) = v364;
  *(v248 + 232) = v363;
  *(v248 + 240) = v362;
  *(v248 + 272) = v361;
  *(v248 + 280) = v360;
  *(v248 + 312) = v359;
  *(v248 + 320) = v358;
  *(v248 + 352) = v357;
  *(v248 + 360) = v356;
  *(v248 + 392) = v355;
  *(v248 + 400) = v354;
  *(v248 + 432) = v353;
  *(v248 + 440) = v352;
  *(v248 + 472) = v351;
  *(v248 + 480) = v350;
  *(v248 + 512) = v349;
  *(v248 + 520) = v348;
  *(v248 + 552) = v347;
  *(v248 + 560) = v346;
  *(v248 + 592) = v345;
  *(v248 + 600) = v344;
  *(v248 + 632) = v343;
  *(v248 + 640) = v342;
  *(v248 + 672) = v341;
  *(v248 + 680) = v340;
  *(v248 + 712) = v339;
  *(v248 + 720) = v338;
  *(v248 + 752) = v337;
  *(v248 + 760) = v336;
  *(v248 + 792) = v335;
  *(v248 + 800) = v334;
  *(v248 + 832) = v333;
  *(v248 + 840) = v332;
  *(v248 + 872) = v331;
  *(v248 + 880) = v330;
  *(v248 + 912) = v329;
  *(v248 + 920) = v328;
  *(v248 + 952) = v327;
  *(v248 + 960) = v326;
  *(v248 + 992) = v325;
  *(v248 + 1000) = v324;
  *(v248 + 1032) = v323;
  *(v248 + 1040) = v322;
  *(v248 + 1072) = v321;
  *(v248 + 1080) = v320;
  *(v248 + 1112) = v319;
  *(v248 + 1120) = v318;
  *(v248 + 1152) = v317;
  *(v248 + 1160) = v316;
  *(v248 + 1192) = v315;
  *(v248 + 1200) = v314;
  *(v248 + 1232) = v313;
  *(v248 + 1240) = v312;
  *(v248 + 1272) = v311;
  *(v248 + 1280) = v310;
  *(v248 + 1312) = v309;
  *(v248 + 1320) = v308;
  *(v248 + 1352) = v307;
  *(v248 + 1360) = v306;
  *(v248 + 1392) = v305;
  *(v248 + 1400) = v304;
  *(v248 + 1432) = v303;
  *(v248 + 1440) = v302;
  *(v248 + 1472) = v301;
  *(v248 + 1480) = v300;
  *(v248 + 1512) = v299;
  *(v248 + 1520) = v298;
  *(v248 + 1552) = v297;
  *(v248 + 1560) = v296;
  *(v248 + 1592) = v295;
  *(v248 + 1600) = v294;
  *(v248 + 1632) = v293;
  *(v248 + 1640) = v292;
  *(v248 + 1672) = v291;
  *(v248 + 1680) = v290;
  *(v248 + 1712) = v289;
  *(v248 + 1720) = v288;
  *(v248 + 1752) = v287;
  *(v248 + 1760) = v286;
  *(v248 + 1792) = v285;
  *(v248 + 1800) = v284;
  *(v248 + 1832) = v283;
  *(v248 + 1840) = v282;
  *(v248 + 1872) = v279;
  *(v248 + 1880) = v278;
  *(v248 + 1912) = v273;
  *(v248 + 1920) = v272;
  *(v248 + 1952) = v269;
  *(v248 + 1960) = v268;
  *(v248 + 1992) = v263;
  *(v248 + 2000) = v262;
  *(v248 + 56) = &type metadata for ReportID;
  *(v248 + 64) = &protocol witness table for ReportID;
  *(v248 + 32) = 21;
  *(v248 + 696) = &type metadata for LogicalMinimum;
  *(v248 + 976) = &type metadata for LogicalMinimum;
  *(v248 + 1256) = &type metadata for LogicalMinimum;
  *(v248 + 1536) = &type metadata for LogicalMinimum;
  *(v248 + 704) = &protocol witness table for LogicalMinimum;
  *(v248 + 984) = &protocol witness table for LogicalMinimum;
  *(v248 + 1264) = &protocol witness table for LogicalMinimum;
  *(v248 + 1544) = &protocol witness table for LogicalMinimum;
  *(v248 + 736) = &type metadata for LogicalMaximum;
  *(v248 + 1016) = &type metadata for LogicalMaximum;
  *(v248 + 1296) = &type metadata for LogicalMaximum;
  *(v248 + 1576) = &type metadata for LogicalMaximum;
  *(v248 + 744) = &protocol witness table for LogicalMaximum;
  *(v248 + 1024) = &protocol witness table for LogicalMaximum;
  *(v248 + 1304) = &protocol witness table for LogicalMaximum;
  *(v248 + 1584) = &protocol witness table for LogicalMaximum;
  *(v248 + 2032) = v280;
  *(v248 + 16) = xmmword_2707A9D00;
  *(v248 + 2040) = v281;
  *(v248 + 96) = &type metadata for ReportSize;
  *(v248 + 104) = &protocol witness table for ReportSize;
  *(v248 + 2072) = v277;
  *(v248 + 2080) = v276;
  *(v248 + 136) = &type metadata for ReportCount;
  *(v248 + 144) = &protocol witness table for ReportCount;
  *(v248 + 2112) = v274;
  *(v248 + 2120) = v275;
  *(v248 + 2152) = v270;
  *(v248 + 176) = &type metadata for Input;
  *(v248 + 184) = &protocol witness table for Input;
  *(v248 + 2160) = v271;
  *(v248 + 216) = &type metadata for UsagePage;
  *(v248 + 224) = &protocol witness table for UsagePage;
  *(v248 + 2192) = v265;
  *(v248 + 2200) = v264;
  *(v248 + 256) = &type metadata for Usage;
  *(v248 + 264) = &protocol witness table for Usage;
  *(v248 + 296) = &type metadata for ReportSize;
  *(v248 + 304) = &protocol witness table for ReportSize;
  *(v248 + 336) = &type metadata for ReportCount;
  *(v248 + 344) = &protocol witness table for ReportCount;
  *(v248 + 376) = &type metadata for Input;
  *(v248 + 384) = &protocol witness table for Input;
  *(v248 + 416) = &type metadata for UsagePage;
  *(v248 + 424) = &protocol witness table for UsagePage;
  *(v248 + 456) = &type metadata for Usage;
  *(v248 + 464) = &protocol witness table for Usage;
  *(v248 + 496) = &type metadata for ReportSize;
  *(v248 + 504) = &protocol witness table for ReportSize;
  *(v248 + 536) = &type metadata for ReportCount;
  *(v248 + 544) = &protocol witness table for ReportCount;
  *(v248 + 576) = &type metadata for Input;
  *(v248 + 584) = &protocol witness table for Input;
  *(v248 + 616) = &type metadata for UsagePage;
  *(v248 + 624) = &protocol witness table for UsagePage;
  *(v248 + 656) = &type metadata for Usage;
  *(v248 + 664) = &protocol witness table for Usage;
  *(v248 + 776) = &type metadata for ReportSize;
  *(v248 + 784) = &protocol witness table for ReportSize;
  *(v248 + 816) = &type metadata for ReportCount;
  *(v248 + 824) = &protocol witness table for ReportCount;
  *(v248 + 856) = &type metadata for Input;
  *(v248 + 864) = &protocol witness table for Input;
  *(v248 + 896) = &type metadata for UsagePage;
  *(v248 + 904) = &protocol witness table for UsagePage;
  *(v248 + 936) = &type metadata for Usage;
  *(v248 + 944) = &protocol witness table for Usage;
  *(v248 + 1056) = &type metadata for ReportSize;
  *(v248 + 1064) = &protocol witness table for ReportSize;
  *(v248 + 1096) = &type metadata for ReportCount;
  *(v248 + 1104) = &protocol witness table for ReportCount;
  *(v248 + 1136) = &type metadata for Input;
  *(v248 + 1144) = &protocol witness table for Input;
  *(v248 + 1176) = &type metadata for UsagePage;
  *(v248 + 1184) = &protocol witness table for UsagePage;
  *(v248 + 1216) = &type metadata for Usage;
  *(v248 + 1224) = &protocol witness table for Usage;
  *(v248 + 1336) = &type metadata for ReportSize;
  *(v248 + 1344) = &protocol witness table for ReportSize;
  *(v248 + 1376) = &type metadata for ReportCount;
  *(v248 + 1384) = &protocol witness table for ReportCount;
  *(v248 + 1416) = &type metadata for Input;
  *(v248 + 1424) = &protocol witness table for Input;
  *(v248 + 1456) = &type metadata for UsagePage;
  *(v248 + 1464) = &protocol witness table for UsagePage;
  *(v248 + 1496) = &type metadata for Usage;
  *(v248 + 1504) = &protocol witness table for Usage;
  *(v248 + 1616) = &type metadata for ReportSize;
  *(v248 + 1624) = &protocol witness table for ReportSize;
  *(v248 + 1656) = &type metadata for ReportCount;
  *(v248 + 1664) = &protocol witness table for ReportCount;
  *(v248 + 1696) = &type metadata for Input;
  *(v248 + 1704) = &protocol witness table for Input;
  *(v248 + 1736) = &type metadata for UsagePage;
  *(v248 + 1744) = &protocol witness table for UsagePage;
  *(v248 + 1776) = &type metadata for Usage;
  *(v248 + 1784) = &protocol witness table for Usage;
  *(v248 + 1816) = &type metadata for ReportSize;
  *(v248 + 1824) = &protocol witness table for ReportSize;
  *(v248 + 1856) = &type metadata for ReportCount;
  *(v248 + 1864) = &protocol witness table for ReportCount;
  *(v248 + 1896) = &type metadata for Input;
  *(v248 + 1904) = &protocol witness table for Input;
  *(v248 + 1936) = &type metadata for UsagePage;
  *(v248 + 1944) = &protocol witness table for UsagePage;
  *(v248 + 1976) = &type metadata for Usage;
  *(v248 + 1984) = &protocol witness table for Usage;
  *(v248 + 2016) = &type metadata for ReportSize;
  *(v248 + 2024) = &protocol witness table for ReportSize;
  *(v248 + 2056) = &type metadata for ReportCount;
  *(v248 + 2064) = &protocol witness table for ReportCount;
  *(v248 + 2096) = &type metadata for Input;
  *(v248 + 2104) = &protocol witness table for Input;
  *(v248 + 2136) = &type metadata for UsagePage;
  *(v248 + 2144) = &protocol witness table for UsagePage;
  *(v248 + 2176) = &type metadata for Usage;
  *(v248 + 2184) = &protocol witness table for Usage;
  *(v248 + 2216) = &type metadata for ReportSize;
  *(v248 + 2224) = &protocol witness table for ReportSize;
  *(v248 + 2256) = &type metadata for ReportCount;
  *(v248 + 2264) = &protocol witness table for ReportCount;
  *(v248 + 2232) = v267;
  *(v248 + 2240) = v266;
  *(v248 + 2296) = &type metadata for Input;
  *(v248 + 2304) = &protocol witness table for Input;
  *(v248 + 2272) = v261;
  *(v248 + 2280) = v260;
  *(v248 + 2336) = &type metadata for UsagePage;
  *(v248 + 2344) = &protocol witness table for UsagePage;
  *(v248 + 2312) = v259;
  *(v248 + 2320) = v258;
  *(v248 + 2376) = &type metadata for Usage;
  *(v248 + 2384) = &protocol witness table for Usage;
  *(v248 + 2352) = v257;
  *(v248 + 2360) = v256;
  *(v248 + 2416) = &type metadata for ReportSize;
  *(v248 + 2424) = &protocol witness table for ReportSize;
  *(v248 + 2392) = v255;
  *(v248 + 2400) = v254;
  *(v248 + 2456) = &type metadata for ReportCount;
  *(v248 + 2464) = &protocol witness table for ReportCount;
  *(v248 + 2432) = v253;
  *(v248 + 2440) = v252;
  *(v248 + 2496) = &type metadata for Input;
  *(v248 + 2504) = &protocol witness table for Input;
  *(v248 + 2472) = v251;
  *(v248 + 2480) = v229;
  *(v248 + 2536) = &type metadata for ReportCount;
  *(v248 + 2544) = &protocol witness table for ReportCount;
  *(v248 + 2512) = v234;
  *(v248 + 2520) = v235;
  *(v248 + 2576) = &type metadata for ReportSize;
  *(v248 + 2584) = &protocol witness table for ReportSize;
  *(v248 + 2552) = v239;
  *(v248 + 2560) = v240;
  *(v248 + 2616) = &type metadata for Input;
  *(v248 + 2624) = &protocol witness table for Input;
  *(v248 + 2592) = v245;
  *(v248 + 2600) = v244;
  *(v248 + 2656) = &type metadata for HIDReportDescriptor;
  *(v248 + 2664) = &protocol witness table for HIDReportDescriptor;
  *(v248 + 2632) = v247;
  *(v248 + 2640) = v246;
  sub_270706C38(v247, v246);
  v249 = static HIDReportDescriptor.Builder.buildBlock(_:)(v248);
  swift_setDeallocating();
  sub_27078DA0C();
  return v249;
}

void sub_270706C38(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

void sub_270706CA4()
{
  if (qword_280829408 != -1)
  {
    swift_once();
  }

  v1 = qword_280829410;
  v2 = *algn_280829418;
  sub_270706C38(qword_280829410, *algn_280829418);
  v0 = HIDReportDescriptor.reportBitCount(for:)(0);
  sub_270708D74(v1, v2);
  qword_280829400 = v0;
}

uint64_t static ForceStageCollection.bitCount.getter()
{
  if (qword_2808293F8 != -1)
  {
    OUTLINED_FUNCTION_2();
    swift_once();
  }

  return qword_280829400;
}

uint64_t sub_270706D70()
{
  result = sub_270706D94();
  qword_280829410 = result;
  *algn_280829418 = v1;
  return result;
}

uint64_t sub_270706D94()
{
  v1 = sub_27070E504(&unk_2880731E0);
  v12 = v1;
  v13 = v0;
  v2 = 0;
  switch(v0 >> 62)
  {
    case 1uLL:
      v2 = v1 >> 32;
      break;
    case 2uLL:
      v2 = *(v1 + 24);
      break;
    case 3uLL:
      break;
    default:
      v2 = BYTE6(v0);
      break;
  }

  sub_270766E38(v2, v2, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v12, v13);
  sub_270708D74(v12, v13);
  v3 = sub_270706F14();
  v5 = v4;
  sub_2707A8370();
  sub_270708D74(v3, v5);
  v6 = sub_27070E504(&unk_288073208);
  v8 = v7;
  sub_2707A8370();
  sub_270708D74(v6, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829520, &qword_2707A9F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2707A9CF0;
  *(inited + 56) = &type metadata for LogicalCollection;
  *(inited + 64) = &protocol witness table for LogicalCollection;
  *(inited + 32) = v12;
  *(inited + 40) = v13;
  v10 = static HIDReportDescriptor.Builder.buildBlock(_:)(inited);
  swift_setDeallocating();
  sub_27078DA0C();
  return v10;
}

uint64_t sub_270706F14()
{
  v1 = sub_27070E504(&unk_288072C40);
  v298 = v1;
  v299 = v0;
  v2 = 0;
  switch(v0 >> 62)
  {
    case 1uLL:
      v2 = v1 >> 32;
      break;
    case 2uLL:
      v2 = *(v1 + 24);
      break;
    case 3uLL:
      break;
    default:
      v2 = BYTE6(v0);
      break;
  }

  sub_270766E38(v2, v2, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v298, v299);
  v296 = v299;
  v297 = v298;
  sub_270708D74(v298, v299);
  v4 = sub_27070E504(&unk_288072C68);
  v298 = v4;
  v299 = v3;
  v5 = 0;
  switch(v3 >> 62)
  {
    case 1uLL:
      v5 = v4 >> 32;
      break;
    case 2uLL:
      v5 = *(v4 + 24);
      break;
    case 3uLL:
      break;
    default:
      v5 = BYTE6(v3);
      break;
  }

  sub_270766E38(v5, v5, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v298, v299);
  v294 = v299;
  v295 = v298;
  sub_270708D74(v298, v299);
  v7 = sub_27070E504(&unk_288072C90);
  v298 = v7;
  v299 = v6;
  v8 = 0;
  switch(v6 >> 62)
  {
    case 1uLL:
      v8 = v7 >> 32;
      break;
    case 2uLL:
      v8 = *(v7 + 24);
      break;
    case 3uLL:
      break;
    default:
      v8 = BYTE6(v6);
      break;
  }

  sub_270766E38(v8, v8, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  sub_270706C38(v298, v299);
  v292 = v299;
  v293 = v298;
  sub_270708D74(v298, v299);
  LOBYTE(v298) = 5;
  v9 = sub_27074110C(&v298, 0xFF1AuLL);
  v290 = v10;
  v291 = v9;
  LOBYTE(v298) = 17;
  v11 = sub_27074110C(&v298, 0xE052uLL);
  v288 = v12;
  v289 = v11;
  v14 = sub_27070E504(&unk_288072CB8);
  v298 = v14;
  v299 = v13;
  v15 = 0;
  switch(v13 >> 62)
  {
    case 1uLL:
      v15 = v14 >> 32;
      break;
    case 2uLL:
      v15 = *(v14 + 24);
      break;
    case 3uLL:
      break;
    default:
      v15 = BYTE6(v13);
      break;
  }

  sub_270766E38(v15, v15, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v16 = v298;
  v17 = v299;
  sub_270706C38(v298, v299);
  v286 = v17;
  v287 = v16;
  sub_270708D74(v16, v17);
  LOBYTE(v298) = 7;
  v18 = sub_270740DC4(&v298, 255);
  v284 = v19;
  v285 = v18;
  v21 = sub_27070E504(&unk_288072CE0);
  v298 = v21;
  v299 = v20;
  v22 = 0;
  switch(v20 >> 62)
  {
    case 1uLL:
      v22 = v21 >> 32;
      break;
    case 2uLL:
      v22 = *(v21 + 24);
      break;
    case 3uLL:
      break;
    default:
      v22 = BYTE6(v20);
      break;
  }

  sub_270766E38(v22, v22, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v23 = v298;
  v24 = v299;
  sub_270706C38(v298, v299);
  v282 = v24;
  v283 = v23;
  sub_270708D74(v23, v24);
  v26 = sub_27070E504(&unk_288072D08);
  v298 = v26;
  v299 = v25;
  v27 = 0;
  switch(v25 >> 62)
  {
    case 1uLL:
      v27 = v26 >> 32;
      break;
    case 2uLL:
      v27 = *(v26 + 24);
      break;
    case 3uLL:
      break;
    default:
      v27 = BYTE6(v25);
      break;
  }

  sub_270766E38(v27, v27, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v28 = v298;
  v29 = v299;
  sub_270706C38(v298, v299);
  v280 = v29;
  v281 = v28;
  sub_270708D74(v28, v29);
  v31 = sub_27070E504(&unk_288072D30);
  v298 = v31;
  v299 = v30;
  v32 = 0;
  switch(v30 >> 62)
  {
    case 1uLL:
      v32 = v31 >> 32;
      break;
    case 2uLL:
      v32 = *(v31 + 24);
      break;
    case 3uLL:
      break;
    default:
      v32 = BYTE6(v30);
      break;
  }

  sub_270766E38(v32, v32, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v33 = v298;
  v34 = v299;
  sub_270706C38(v298, v299);
  v279 = v33;
  v278 = v34;
  sub_270708D74(v33, v34);
  LOBYTE(v298) = 5;
  v277 = sub_27074110C(&v298, 0xFF1AuLL);
  v276 = v35;
  LOBYTE(v298) = 17;
  v275 = sub_27074110C(&v298, 0xE053uLL);
  v274 = v36;
  v38 = sub_27070E504(&unk_288072D58);
  v298 = v38;
  v299 = v37;
  v39 = 0;
  switch(v37 >> 62)
  {
    case 1uLL:
      v39 = v38 >> 32;
      break;
    case 2uLL:
      v39 = *(v38 + 24);
      break;
    case 3uLL:
      break;
    default:
      v39 = BYTE6(v37);
      break;
  }

  sub_270766E38(v39, v39, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v40 = v298;
  v41 = v299;
  sub_270706C38(v298, v299);
  v273 = v40;
  v272 = v41;
  sub_270708D74(v40, v41);
  LOBYTE(v298) = 7;
  v271 = sub_270740DC4(&v298, 255);
  v270 = v42;
  v44 = sub_27070E504(&unk_288072D80);
  v298 = v44;
  v299 = v43;
  v45 = 0;
  switch(v43 >> 62)
  {
    case 1uLL:
      v45 = v44 >> 32;
      break;
    case 2uLL:
      v45 = *(v44 + 24);
      break;
    case 3uLL:
      break;
    default:
      v45 = BYTE6(v43);
      break;
  }

  sub_270766E38(v45, v45, 8);
  sub_2707A82E0();
  sub_2707A82F0();
  v46 = v298;
  v47 = v299;
  sub_270706C38(v298, v299);
  v269 = v46;
  v268 = v47;
  sub_270708D74(v46, v47);
  v49 = sub_27070E504(&unk_288072DA8);
  v298 = v49;
  v299 = v48;
  v50 = 0;
  switch(v48 >> 62)
  {
    case 1uLL:
      v50 = v49 >> 32;
      break;
    case 2uLL:
      v50 = *(v49 + 24);
      break;
    case 3uLL:
      break;
    default:
      v50 = BYTE6(v48);
      break;
  }

  sub_270766E38(v50, v50, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v51 = v298;
  v52 = v299;
  sub_270706C38(v298, v299);
  v266 = v52;
  v267 = v51;
  sub_270708D74(v51, v52);
  v54 = sub_27070E504(&unk_288072DD0);
  v298 = v54;
  v299 = v53;
  v55 = 0;
  switch(v53 >> 62)
  {
    case 1uLL:
      v55 = v54 >> 32;
      break;
    case 2uLL:
      v55 = *(v54 + 24);
      break;
    case 3uLL:
      break;
    default:
      v55 = BYTE6(v53);
      break;
  }

  sub_270766E38(v55, v55, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v56 = v298;
  v57 = v299;
  sub_270706C38(v298, v299);
  v264 = v57;
  v265 = v56;
  sub_270708D74(v56, v57);
  LOBYTE(v298) = 5;
  v58 = sub_27074110C(&v298, 0xFF1AuLL);
  v262 = v59;
  v263 = v58;
  LOBYTE(v298) = 17;
  v60 = sub_27074110C(&v298, 0xE054uLL);
  v260 = v61;
  v261 = v60;
  v63 = sub_27070E504(&unk_288072DF8);
  v298 = v63;
  v299 = v62;
  v64 = 0;
  switch(v62 >> 62)
  {
    case 1uLL:
      v64 = v63 >> 32;
      break;
    case 2uLL:
      v64 = *(v63 + 24);
      break;
    case 3uLL:
      break;
    default:
      v64 = BYTE6(v62);
      break;
  }

  sub_270766E38(v64, v64, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v65 = v298;
  v66 = v299;
  sub_270706C38(v298, v299);
  v258 = v66;
  v259 = v65;
  sub_270708D74(v65, v66);
  v68 = sub_27070E504(&unk_288072E20);
  v298 = v68;
  v299 = v67;
  v69 = 0;
  switch(v67 >> 62)
  {
    case 1uLL:
      v69 = v68 >> 32;
      break;
    case 2uLL:
      v69 = *(v68 + 24);
      break;
    case 3uLL:
      break;
    default:
      v69 = BYTE6(v67);
      break;
  }

  sub_270766E38(v69, v69, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v70 = v298;
  v71 = v299;
  sub_270706C38(v298, v299);
  v256 = v71;
  v257 = v70;
  sub_270708D74(v70, v71);
  v73 = sub_27070E504(&unk_288072E48);
  v298 = v73;
  v299 = v72;
  v74 = 0;
  switch(v72 >> 62)
  {
    case 1uLL:
      v74 = v73 >> 32;
      break;
    case 2uLL:
      v74 = *(v73 + 24);
      break;
    case 3uLL:
      break;
    default:
      v74 = BYTE6(v72);
      break;
  }

  sub_270766E38(v74, v74, 32);
  sub_2707A82E0();
  sub_2707A82F0();
  v75 = v298;
  v76 = v299;
  sub_270706C38(v298, v299);
  v254 = v76;
  v255 = v75;
  sub_270708D74(v75, v76);
  v78 = sub_27070E504(&unk_288072E70);
  v298 = v78;
  v299 = v77;
  v79 = 0;
  switch(v77 >> 62)
  {
    case 1uLL:
      v79 = v78 >> 32;
      break;
    case 2uLL:
      v79 = *(v78 + 24);
      break;
    case 3uLL:
      break;
    default:
      v79 = BYTE6(v77);
      break;
  }

  sub_270766E38(v79, v79, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v80 = v298;
  v81 = v299;
  sub_270706C38(v298, v299);
  v252 = v81;
  v253 = v80;
  sub_270708D74(v80, v81);
  v83 = sub_27070E504(&unk_288072E98);
  v298 = v83;
  v299 = v82;
  v84 = 0;
  switch(v82 >> 62)
  {
    case 1uLL:
      v84 = v83 >> 32;
      break;
    case 2uLL:
      v84 = *(v83 + 24);
      break;
    case 3uLL:
      break;
    default:
      v84 = BYTE6(v82);
      break;
  }

  sub_270766E38(v84, v84, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v85 = v298;
  v86 = v299;
  sub_270706C38(v298, v299);
  v250 = v86;
  v251 = v85;
  sub_270708D74(v85, v86);
  LOBYTE(v298) = 5;
  v87 = sub_27074110C(&v298, 0xFF1AuLL);
  v248 = v88;
  v249 = v87;
  LOBYTE(v298) = 17;
  v89 = sub_27074110C(&v298, 0xE055uLL);
  v246 = v90;
  v247 = v89;
  v92 = sub_27070E504(&unk_288072EC0);
  v298 = v92;
  v299 = v91;
  v93 = 0;
  switch(v91 >> 62)
  {
    case 1uLL:
      v93 = v92 >> 32;
      break;
    case 2uLL:
      v93 = *(v92 + 24);
      break;
    case 3uLL:
      break;
    default:
      v93 = BYTE6(v91);
      break;
  }

  sub_270766E38(v93, v93, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v94 = v298;
  v95 = v299;
  sub_270706C38(v298, v299);
  v244 = v95;
  v245 = v94;
  sub_270708D74(v94, v95);
  v97 = sub_27070E504(&unk_288072EE8);
  v298 = v97;
  v299 = v96;
  v98 = 0;
  switch(v96 >> 62)
  {
    case 1uLL:
      v98 = v97 >> 32;
      break;
    case 2uLL:
      v98 = *(v97 + 24);
      break;
    case 3uLL:
      break;
    default:
      v98 = BYTE6(v96);
      break;
  }

  sub_270766E38(v98, v98, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v99 = v298;
  v100 = v299;
  sub_270706C38(v298, v299);
  v242 = v100;
  v243 = v99;
  sub_270708D74(v99, v100);
  v102 = sub_27070E504(&unk_288072F10);
  v298 = v102;
  v299 = v101;
  v103 = 0;
  switch(v101 >> 62)
  {
    case 1uLL:
      v103 = v102 >> 32;
      break;
    case 2uLL:
      v103 = *(v102 + 24);
      break;
    case 3uLL:
      break;
    default:
      v103 = BYTE6(v101);
      break;
  }

  sub_270766E38(v103, v103, 32);
  sub_2707A82E0();
  sub_2707A82F0();
  v104 = v298;
  v105 = v299;
  sub_270706C38(v298, v299);
  v240 = v105;
  v241 = v104;
  sub_270708D74(v104, v105);
  v107 = sub_27070E504(&unk_288072F38);
  v298 = v107;
  v299 = v106;
  v108 = 0;
  switch(v106 >> 62)
  {
    case 1uLL:
      v108 = v107 >> 32;
      break;
    case 2uLL:
      v108 = *(v107 + 24);
      break;
    case 3uLL:
      break;
    default:
      v108 = BYTE6(v106);
      break;
  }

  sub_270766E38(v108, v108, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v109 = v298;
  v110 = v299;
  sub_270706C38(v298, v299);
  v238 = v110;
  v239 = v109;
  sub_270708D74(v109, v110);
  v112 = sub_27070E504(&unk_288072F60);
  v298 = v112;
  v299 = v111;
  v113 = 0;
  switch(v111 >> 62)
  {
    case 1uLL:
      v113 = v112 >> 32;
      break;
    case 2uLL:
      v113 = *(v112 + 24);
      break;
    case 3uLL:
      break;
    default:
      v113 = BYTE6(v111);
      break;
  }

  sub_270766E38(v113, v113, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v114 = v298;
  v115 = v299;
  sub_270706C38(v298, v299);
  v236 = v115;
  v237 = v114;
  sub_270708D74(v114, v115);
  LOBYTE(v298) = 5;
  v116 = sub_27074110C(&v298, 0xFF1AuLL);
  v234 = v117;
  v235 = v116;
  LOBYTE(v298) = 17;
  v118 = sub_27074110C(&v298, 0xE056uLL);
  v232 = v119;
  v233 = v118;
  v121 = sub_27070E504(&unk_288072F88);
  v298 = v121;
  v299 = v120;
  v122 = 0;
  switch(v120 >> 62)
  {
    case 1uLL:
      v122 = v121 >> 32;
      break;
    case 2uLL:
      v122 = *(v121 + 24);
      break;
    case 3uLL:
      break;
    default:
      v122 = BYTE6(v120);
      break;
  }

  sub_270766E38(v122, v122, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v123 = v298;
  v124 = v299;
  sub_270706C38(v298, v299);
  v230 = v124;
  v231 = v123;
  sub_270708D74(v123, v124);
  v126 = sub_27070E504(&unk_288072FB0);
  v298 = v126;
  v299 = v125;
  v127 = 0;
  switch(v125 >> 62)
  {
    case 1uLL:
      v127 = v126 >> 32;
      break;
    case 2uLL:
      v127 = *(v126 + 24);
      break;
    case 3uLL:
      break;
    default:
      v127 = BYTE6(v125);
      break;
  }

  sub_270766E38(v127, v127, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v128 = v298;
  v129 = v299;
  sub_270706C38(v298, v299);
  v228 = v129;
  v229 = v128;
  sub_270708D74(v128, v129);
  v131 = sub_27070E504(&unk_288072FD8);
  v298 = v131;
  v299 = v130;
  v132 = 0;
  switch(v130 >> 62)
  {
    case 1uLL:
      v132 = v131 >> 32;
      break;
    case 2uLL:
      v132 = *(v131 + 24);
      break;
    case 3uLL:
      break;
    default:
      v132 = BYTE6(v130);
      break;
  }

  sub_270766E38(v132, v132, 32);
  sub_2707A82E0();
  sub_2707A82F0();
  v133 = v298;
  v134 = v299;
  sub_270706C38(v298, v299);
  v222 = v134;
  v223 = v133;
  sub_270708D74(v133, v134);
  v136 = sub_27070E504(&unk_288073000);
  v298 = v136;
  v299 = v135;
  v137 = 0;
  switch(v135 >> 62)
  {
    case 1uLL:
      v137 = v136 >> 32;
      break;
    case 2uLL:
      v137 = *(v136 + 24);
      break;
    case 3uLL:
      break;
    default:
      v137 = BYTE6(v135);
      break;
  }

  sub_270766E38(v137, v137, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v138 = v298;
  v139 = v299;
  sub_270706C38(v298, v299);
  v216 = v139;
  v217 = v138;
  sub_270708D74(v138, v139);
  v141 = sub_27070E504(&unk_288073028);
  v298 = v141;
  v299 = v140;
  v142 = 0;
  switch(v140 >> 62)
  {
    case 1uLL:
      v142 = v141 >> 32;
      break;
    case 2uLL:
      v142 = *(v141 + 24);
      break;
    case 3uLL:
      break;
    default:
      v142 = BYTE6(v140);
      break;
  }

  sub_270766E38(v142, v142, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v143 = v298;
  v144 = v299;
  sub_270706C38(v298, v299);
  v226 = v144;
  v227 = v143;
  sub_270708D74(v143, v144);
  LOBYTE(v298) = 5;
  v224 = sub_27074110C(&v298, 0xFF1AuLL);
  v225 = v145;
  LOBYTE(v298) = 17;
  v220 = sub_27074110C(&v298, 0xE057uLL);
  v221 = v146;
  v148 = sub_27070E504(&unk_288073050);
  v298 = v148;
  v299 = v147;
  v149 = 0;
  switch(v147 >> 62)
  {
    case 1uLL:
      v149 = v148 >> 32;
      break;
    case 2uLL:
      v149 = *(v148 + 24);
      break;
    case 3uLL:
      break;
    default:
      v149 = BYTE6(v147);
      break;
  }

  sub_270766E38(v149, v149, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v150 = v298;
  v151 = v299;
  sub_270706C38(v298, v299);
  v218 = v151;
  v219 = v150;
  sub_270708D74(v150, v151);
  v153 = sub_27070E504(&unk_288073078);
  v298 = v153;
  v299 = v152;
  v154 = 0;
  switch(v152 >> 62)
  {
    case 1uLL:
      v154 = v153 >> 32;
      break;
    case 2uLL:
      v154 = *(v153 + 24);
      break;
    case 3uLL:
      break;
    default:
      v154 = BYTE6(v152);
      break;
  }

  sub_270766E38(v154, v154, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v155 = v298;
  v156 = v299;
  sub_270706C38(v298, v299);
  v214 = v156;
  v215 = v155;
  sub_270708D74(v155, v156);
  v158 = sub_27070E504(&unk_2880730A0);
  v298 = v158;
  v299 = v157;
  v159 = 0;
  switch(v157 >> 62)
  {
    case 1uLL:
      v159 = v158 >> 32;
      break;
    case 2uLL:
      v159 = *(v158 + 24);
      break;
    case 3uLL:
      break;
    default:
      v159 = BYTE6(v157);
      break;
  }

  sub_270766E38(v159, v159, 32);
  sub_2707A82E0();
  sub_2707A82F0();
  v161 = v298;
  v160 = v299;
  sub_270706C38(v298, v299);
  v212 = v161;
  v213 = v160;
  sub_270708D74(v161, v160);
  v163 = sub_27070E504(&unk_2880730C8);
  v298 = v163;
  v299 = v162;
  v164 = 0;
  switch(v162 >> 62)
  {
    case 1uLL:
      v164 = v163 >> 32;
      break;
    case 2uLL:
      v164 = *(v163 + 24);
      break;
    case 3uLL:
      break;
    default:
      v164 = BYTE6(v162);
      break;
  }

  sub_270766E38(v164, v164, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v165 = v298;
  v166 = v299;
  sub_270706C38(v298, v299);
  v208 = v166;
  v209 = v165;
  sub_270708D74(v165, v166);
  v168 = sub_27070E504(&unk_2880730F0);
  v298 = v168;
  v299 = v167;
  v169 = 0;
  switch(v167 >> 62)
  {
    case 1uLL:
      v169 = v168 >> 32;
      break;
    case 2uLL:
      v169 = *(v168 + 24);
      break;
    case 3uLL:
      break;
    default:
      v169 = BYTE6(v167);
      break;
  }

  sub_270766E38(v169, v169, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v170 = v298;
  v171 = v299;
  sub_270706C38(v298, v299);
  v210 = v171;
  v211 = v170;
  sub_270708D74(v170, v171);
  LOBYTE(v298) = 5;
  v172 = sub_27074110C(&v298, 0xFF1AuLL);
  v206 = v173;
  v207 = v172;
  LOBYTE(v298) = 17;
  v174 = sub_27074110C(&v298, 0xE058uLL);
  v204 = v175;
  v205 = v174;
  v177 = sub_27070E504(&unk_288073118);
  v298 = v177;
  v299 = v176;
  v178 = 0;
  switch(v176 >> 62)
  {
    case 1uLL:
      v178 = v177 >> 32;
      break;
    case 2uLL:
      v178 = *(v177 + 24);
      break;
    case 3uLL:
      break;
    default:
      v178 = BYTE6(v176);
      break;
  }

  sub_270766E38(v178, v178, 0);
  sub_2707A82E0();
  sub_2707A82F0();
  v180 = v298;
  v179 = v299;
  sub_270706C38(v298, v299);
  sub_270708D74(v180, v179);
  v182 = sub_27070E504(&unk_288073140);
  v298 = v182;
  v299 = v181;
  v183 = 0;
  switch(v181 >> 62)
  {
    case 1uLL:
      v183 = v182 >> 32;
      break;
    case 2uLL:
      v183 = *(v182 + 24);
      break;
    case 3uLL:
      break;
    default:
      v183 = BYTE6(v181);
      break;
  }

  sub_270766E38(v183, v183, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v184 = v298;
  v185 = v299;
  sub_270706C38(v298, v299);
  sub_270708D74(v184, v185);
  v187 = sub_27070E504(&unk_288073168);
  v298 = v187;
  v299 = v186;
  v188 = 0;
  switch(v186 >> 62)
  {
    case 1uLL:
      v188 = v187 >> 32;
      break;
    case 2uLL:
      v188 = *(v187 + 24);
      break;
    case 3uLL:
      break;
    default:
      v188 = BYTE6(v186);
      break;
  }

  sub_270766E38(v188, v188, 32);
  sub_2707A82E0();
  sub_2707A82F0();
  v189 = v298;
  v190 = v299;
  sub_270706C38(v298, v299);
  sub_270708D74(v189, v190);
  v192 = sub_27070E504(&unk_288073190);
  v298 = v192;
  v299 = v191;
  v193 = 0;
  switch(v191 >> 62)
  {
    case 1uLL:
      v193 = v192 >> 32;
      break;
    case 2uLL:
      v193 = *(v192 + 24);
      break;
    case 3uLL:
      break;
    default:
      v193 = BYTE6(v191);
      break;
  }

  sub_270766E38(v193, v193, 1);
  sub_2707A82E0();
  sub_2707A82F0();
  v194 = v298;
  v195 = v299;
  sub_270706C38(v298, v299);
  sub_270708D74(v194, v195);
  v197 = sub_27070E504(&unk_2880731B8);
  v298 = v197;
  v299 = v196;
  v198 = 0;
  switch(v196 >> 62)
  {
    case 1uLL:
      v198 = v197 >> 32;
      break;
    case 2uLL:
      v198 = *(v197 + 24);
      break;
    case 3uLL:
      break;
    default:
      v198 = BYTE6(v196);
      break;
  }

  sub_270766E38(v198, v198, 2);
  sub_2707A82E0();
  sub_2707A82F0();
  v200 = v298;
  v199 = v299;
  sub_270706C38(v298, v299);
  sub_270708D74(v200, v199);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829520, &qword_2707A9F08);
  v201 = swift_allocObject();
  *(v201 + 32) = v297;
  *(v201 + 40) = v296;
  *(v201 + 72) = v295;
  *(v201 + 80) = v294;
  *(v201 + 112) = v293;
  *(v201 + 120) = v292;
  *(v201 + 152) = v291;
  *(v201 + 160) = v290;
  *(v201 + 192) = v289;
  *(v201 + 200) = v288;
  *(v201 + 232) = v287;
  *(v201 + 240) = v286;
  *(v201 + 272) = v285;
  *(v201 + 280) = v284;
  *(v201 + 312) = v283;
  *(v201 + 320) = v282;
  *(v201 + 352) = v281;
  *(v201 + 360) = v280;
  *(v201 + 392) = v279;
  *(v201 + 400) = v278;
  *(v201 + 432) = v277;
  *(v201 + 440) = v276;
  *(v201 + 472) = v275;
  *(v201 + 480) = v274;
  *(v201 + 512) = v273;
  *(v201 + 520) = v272;
  *(v201 + 552) = v271;
  *(v201 + 560) = v270;
  *(v201 + 592) = v269;
  *(v201 + 600) = v268;
  *(v201 + 632) = v267;
  *(v201 + 640) = v266;
  *(v201 + 672) = v265;
  *(v201 + 680) = v264;
  *(v201 + 712) = v263;
  *(v201 + 720) = v262;
  *(v201 + 752) = v261;
  *(v201 + 760) = v260;
  *(v201 + 792) = v259;
  *(v201 + 800) = v258;
  *(v201 + 832) = v257;
  *(v201 + 840) = v256;
  *(v201 + 872) = v255;
  *(v201 + 880) = v254;
  *(v201 + 912) = v253;
  *(v201 + 920) = v252;
  *(v201 + 952) = v251;
  *(v201 + 960) = v250;
  *(v201 + 992) = v249;
  *(v201 + 1000) = v248;
  *(v201 + 1032) = v247;
  *(v201 + 1040) = v246;
  *(v201 + 1072) = v245;
  *(v201 + 1080) = v244;
  *(v201 + 1112) = v243;
  *(v201 + 1120) = v242;
  *(v201 + 1152) = v241;
  *(v201 + 1160) = v240;
  *(v201 + 1192) = v239;
  *(v201 + 1200) = v238;
  *(v201 + 1232) = v237;
  *(v201 + 1240) = v236;
  *(v201 + 1272) = v235;
  *(v201 + 1280) = v234;
  *(v201 + 1312) = v233;
  *(v201 + 1320) = v232;
  *(v201 + 1352) = v231;
  *(v201 + 1360) = v230;
  *(v201 + 1392) = v229;
  *(v201 + 1400) = v228;
  *(v201 + 1432) = v223;
  *(v201 + 1440) = v222;
  *(v201 + 1472) = v217;
  *(v201 + 1480) = v216;
  *(v201 + 16) = xmmword_2707A9D10;
  *(v201 + 1512) = v227;
  *(v201 + 1520) = v226;
  *(v201 + 56) = &type metadata for ReportSize;
  *(v201 + 64) = &protocol witness table for ReportSize;
  *(v201 + 1552) = v224;
  *(v201 + 1560) = v225;
  *(v201 + 1592) = v220;
  *(v201 + 96) = &type metadata for ReportCount;
  *(v201 + 104) = &protocol witness table for ReportCount;
  *(v201 + 1600) = v221;
  *(v201 + 136) = &type metadata for Input;
  *(v201 + 144) = &protocol witness table for Input;
  *(v201 + 1632) = v219;
  *(v201 + 1640) = v218;
  *(v201 + 176) = &type metadata for UsagePage;
  *(v201 + 184) = &protocol witness table for UsagePage;
  *(v201 + 1672) = v215;
  *(v201 + 1680) = v214;
  *(v201 + 1712) = v212;
  *(v201 + 216) = &type metadata for Usage;
  *(v201 + 224) = &protocol witness table for Usage;
  *(v201 + 1720) = v213;
  *(v201 + 256) = &type metadata for LogicalMinimum;
  *(v201 + 264) = &protocol witness table for LogicalMinimum;
  *(v201 + 1752) = v209;
  *(v201 + 1760) = v208;
  *(v201 + 296) = &type metadata for LogicalMaximum;
  *(v201 + 304) = &protocol witness table for LogicalMaximum;
  *(v201 + 336) = &type metadata for ReportSize;
  *(v201 + 344) = &protocol witness table for ReportSize;
  *(v201 + 376) = &type metadata for ReportCount;
  *(v201 + 384) = &protocol witness table for ReportCount;
  *(v201 + 416) = &type metadata for Input;
  *(v201 + 424) = &protocol witness table for Input;
  *(v201 + 456) = &type metadata for UsagePage;
  *(v201 + 464) = &protocol witness table for UsagePage;
  *(v201 + 496) = &type metadata for Usage;
  *(v201 + 504) = &protocol witness table for Usage;
  *(v201 + 536) = &type metadata for LogicalMinimum;
  *(v201 + 544) = &protocol witness table for LogicalMinimum;
  *(v201 + 576) = &type metadata for LogicalMaximum;
  *(v201 + 584) = &protocol witness table for LogicalMaximum;
  *(v201 + 616) = &type metadata for ReportSize;
  *(v201 + 624) = &protocol witness table for ReportSize;
  *(v201 + 656) = &type metadata for ReportCount;
  *(v201 + 664) = &protocol witness table for ReportCount;
  *(v201 + 696) = &type metadata for Input;
  *(v201 + 704) = &protocol witness table for Input;
  *(v201 + 736) = &type metadata for UsagePage;
  *(v201 + 744) = &protocol witness table for UsagePage;
  *(v201 + 776) = &type metadata for Usage;
  *(v201 + 784) = &protocol witness table for Usage;
  *(v201 + 816) = &type metadata for LogicalMinimum;
  *(v201 + 824) = &protocol witness table for LogicalMinimum;
  *(v201 + 856) = &type metadata for LogicalMaximum;
  *(v201 + 864) = &protocol witness table for LogicalMaximum;
  *(v201 + 896) = &type metadata for ReportSize;
  *(v201 + 904) = &protocol witness table for ReportSize;
  *(v201 + 936) = &type metadata for ReportCount;
  *(v201 + 944) = &protocol witness table for ReportCount;
  *(v201 + 976) = &type metadata for Input;
  *(v201 + 984) = &protocol witness table for Input;
  *(v201 + 1016) = &type metadata for UsagePage;
  *(v201 + 1024) = &protocol witness table for UsagePage;
  *(v201 + 1056) = &type metadata for Usage;
  *(v201 + 1064) = &protocol witness table for Usage;
  *(v201 + 1096) = &type metadata for LogicalMinimum;
  *(v201 + 1104) = &protocol witness table for LogicalMinimum;
  *(v201 + 1136) = &type metadata for LogicalMaximum;
  *(v201 + 1144) = &protocol witness table for LogicalMaximum;
  *(v201 + 1176) = &type metadata for ReportSize;
  *(v201 + 1184) = &protocol witness table for ReportSize;
  *(v201 + 1216) = &type metadata for ReportCount;
  *(v201 + 1224) = &protocol witness table for ReportCount;
  *(v201 + 1256) = &type metadata for Input;
  *(v201 + 1264) = &protocol witness table for Input;
  *(v201 + 1296) = &type metadata for UsagePage;
  *(v201 + 1304) = &protocol witness table for UsagePage;
  *(v201 + 1336) = &type metadata for Usage;
  *(v201 + 1344) = &protocol witness table for Usage;
  *(v201 + 1376) = &type metadata for LogicalMinimum;
  *(v201 + 1384) = &protocol witness table for LogicalMinimum;
  *(v201 + 1416) = &type metadata for LogicalMaximum;
  *(v201 + 1424) = &protocol witness table for LogicalMaximum;
  *(v201 + 1456) = &type metadata for ReportSize;
  *(v201 + 1464) = &protocol witness table for ReportSize;
  *(v201 + 1496) = &type metadata for ReportCount;
  *(v201 + 1504) = &protocol witness table for ReportCount;
  *(v201 + 1536) = &type metadata for Input;
  *(v201 + 1544) = &protocol witness table for Input;
  *(v201 + 1576) = &type metadata for UsagePage;
  *(v201 + 1584) = &protocol witness table for UsagePage;
  *(v201 + 1616) = &type metadata for Usage;
  *(v201 + 1624) = &protocol witness table for Usage;
  *(v201 + 1656) = &type metadata for LogicalMinimum;
  *(v201 + 1664) = &protocol witness table for LogicalMinimum;
  *(v201 + 1696) = &type metadata for LogicalMaximum;
  *(v201 + 1704) = &protocol witness table for LogicalMaximum;
  *(v201 + 1736) = &type metadata for ReportSize;
  *(v201 + 1744) = &protocol witness table for ReportSize;
  *(v201 + 1776) = &type metadata for ReportCount;
  *(v201 + 1784) = &protocol witness table for ReportCount;
  *(v201 + 1816) = &type metadata for Input;
  *(v201 + 1824) = &protocol witness table for Input;
  *(v201 + 1792) = v211;
  *(v201 + 1800) = v210;
  *(v201 + 1856) = &type metadata for UsagePage;
  *(v201 + 1864) = &protocol witness table for UsagePage;
  *(v201 + 1832) = v207;
  *(v201 + 1840) = v206;
  *(v201 + 1896) = &type metadata for Usage;
  *(v201 + 1904) = &protocol witness table for Usage;
  *(v201 + 1872) = v205;
  *(v201 + 1880) = v204;
  *(v201 + 1936) = &type metadata for LogicalMinimum;
  *(v201 + 1944) = &protocol witness table for LogicalMinimum;
  *(v201 + 1912) = v180;
  *(v201 + 1920) = v179;
  *(v201 + 1976) = &type metadata for LogicalMaximum;
  *(v201 + 1984) = &protocol witness table for LogicalMaximum;
  *(v201 + 1952) = v184;
  *(v201 + 1960) = v185;
  *(v201 + 2016) = &type metadata for ReportSize;
  *(v201 + 2024) = &protocol witness table for ReportSize;
  *(v201 + 1992) = v189;
  *(v201 + 2000) = v190;
  *(v201 + 2056) = &type metadata for ReportCount;
  *(v201 + 2064) = &protocol witness table for ReportCount;
  *(v201 + 2032) = v194;
  *(v201 + 2040) = v195;
  *(v201 + 2096) = &type metadata for Input;
  *(v201 + 2104) = &protocol witness table for Input;
  *(v201 + 2072) = v200;
  *(v201 + 2080) = v199;
  v202 = static HIDReportDescriptor.Builder.buildBlock(_:)(v201);
  swift_setDeallocating();
  sub_27078DA0C();
  return v202;
}

void sub_270708D10(void *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X2>, uint64_t *a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = *a2;
  v9 = *a3;
  *a5 = *a2;
  a5[1] = v9;

  sub_270706C38(v8, v9);
}

void sub_270708D74(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_270708DF0()
{
  v0 = OUTLINED_FUNCTION_46();
  sub_270706C38(v0, v1);
  return OUTLINED_FUNCTION_46();
}

void sub_270708E1C(uint64_t a1, uint64_t a2)
{
  sub_270708D74(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
}

void sub_270708E74(uint64_t *a1@<X8>)
{
  ForceStageCollection.init(data:)();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t ForceStageCollection.init()()
{
  if (qword_2808293F8 != -1)
  {
    OUTLINED_FUNCTION_2();
    swift_once();
  }

  v1 = qword_280829400;

  return HIDReport.init(bitCount:id:)(v1, 0);
}

void ForceStageCollection.report.setter(uint64_t a1, uint64_t a2)
{
  sub_270708D74(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
}

unint64_t sub_270708FBC@<X0>(_BYTE *a1@<X8>)
{
  result = ForceStageCollection.signalingNaNMask.getter();
  *a1 = result;
  return result;
}

uint64_t sub_270709030()
{
  OUTLINED_FUNCTION_13();

  return sub_270709AE8();
}

unint64_t sub_270709084()
{
  OUTLINED_FUNCTION_13();

  return sub_2707090D8(v0, v1, v2);
}

unint64_t sub_2707090D8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v9 = a1;
  v48 = *MEMORY[0x277D85DE8];
  v10 = a3 >> 62;
  v11 = a1 & 7;
  if ((a1 & 7) != 0)
  {
    v4 = 8 - v11;
    v12 = 0;
    switch(v10)
    {
      case 1uLL:
      case 2uLL:
        OUTLINED_FUNCTION_38();
        if (v18)
        {
          goto LABEL_80;
        }

        __break(1u);
LABEL_15:
        if (v6 < *(a2 + 16))
        {
          goto LABEL_56;
        }

        if (v6 >= *(a2 + 24))
        {
          goto LABEL_59;
        }

        v19 = sub_2707A81F0();
        if (!v19)
        {
          goto LABEL_74;
        }

        v20 = v19;
        v21 = sub_2707A8210();
        v22 = v6 - v21;
        if (__OFSUB__(v6, v21))
        {
          goto LABEL_62;
        }

        if (++v6 < *(a2 + 16))
        {
          goto LABEL_64;
        }

        if (v6 >= *(a2 + 24))
        {
          goto LABEL_66;
        }

        v23 = *(v20 + v22);
        v24 = sub_2707A81F0();
        if (!v24)
        {
          goto LABEL_76;
        }

        a2 = v24;
        v25 = sub_2707A8210();
        v26 = v6 - v25;
        if (!__OFSUB__(v6, v25))
        {
          goto LABEL_35;
        }

        __break(1u);
LABEL_25:
        v27 = a2 >> 32;
        if (v6 < a2 || v6 >= v27)
        {
          goto LABEL_58;
        }

        v29 = sub_2707A81F0();
        if (v29)
        {
          a2 = v29;
          v30 = sub_2707A8210();
          v31 = v6 - v30;
          if (__OFSUB__(v6, v30))
          {
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
            goto LABEL_70;
          }

          v32 = v6 + 1;
          if (v32 >= v27)
          {
            goto LABEL_63;
          }

          v23 = *(a2 + v31);
          v33 = sub_2707A81F0();
          if (v33)
          {
            a2 = v33;
            v34 = sub_2707A8210();
            v26 = v32 - v34;
            if (!__OFSUB__(v32, v34))
            {
LABEL_35:
              v15 = (v5 & v23) >> (v9 & 7);
              v16 = *(a2 + v26);
              return ((v16 & (0xFFuLL >> v4)) << v4) | v15;
            }

            goto LABEL_65;
          }
        }

        else
        {
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
        }

        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        break;
      default:
        goto LABEL_3;
    }

    goto LABEL_78;
  }

  switch(v10)
  {
    case 1uLL:
    case 2uLL:
      OUTLINED_FUNCTION_60();
      if (v18)
      {
        v11 = 8 * v35;
LABEL_9:
        v13 = v11 + v9;
        if (__OFADD__(v11, v9))
        {
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v3 = v13 >> 3;
        switch(v10)
        {
          case 1:
            goto LABEL_45;
          case 2:
            goto LABEL_39;
          case 3:
            goto LABEL_77;
          default:
            if (v3 >= BYTE6(a3))
            {
              goto LABEL_68;
            }

            v42 = a2;
            v43 = a3;
            v44 = BYTE2(a3);
            v45 = BYTE3(a3);
            v46 = BYTE4(a3);
            v47 = BYTE5(a3);
            result = *(&v42 + v3);
            break;
        }
      }

      else
      {
        __break(1u);
LABEL_39:
        if (v3 < *(a2 + 16))
        {
          goto LABEL_67;
        }

        if (v3 >= *(a2 + 24))
        {
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
        }

        v36 = sub_2707A81F0();
        if (!v36)
        {
          goto LABEL_79;
        }

        v9 = v36;
        v37 = sub_2707A8210();
        v38 = v3 - v37;
        if (__OFSUB__(v3, v37))
        {
          __break(1u);
LABEL_45:
          if (v3 < a2 || v3 >= a2 >> 32)
          {
            goto LABEL_69;
          }

          v40 = sub_2707A81F0();
          if (!v40)
          {
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            v12 = 8 * v13;
LABEL_3:
            if (!__OFADD__(v12, v9))
            {
              v6 = (v12 + v9) >> 3;
              v13 = 255;
              v5 = 255 << v11;
              switch(v10)
              {
                case 1:
                  goto LABEL_25;
                case 2:
                  goto LABEL_15;
                case 3:
                  __break(1u);
                  goto LABEL_73;
                default:
                  if (v6 >= BYTE6(a3))
                  {
                    goto LABEL_57;
                  }

                  v42 = a2;
                  v43 = a3;
                  v44 = BYTE2(a3);
                  v45 = BYTE3(a3);
                  v46 = BYTE4(a3);
                  v47 = BYTE5(a3);
                  if (v6 + 1 >= BYTE6(a3))
                  {
                    goto LABEL_60;
                  }

                  v14 = (*(&v42 + v6) & v5);
                  v42 = a2;
                  v15 = v14 >> (v9 & 7);
                  v43 = a3;
                  v44 = BYTE2(a3);
                  v45 = BYTE3(a3);
                  v46 = BYTE4(a3);
                  v47 = BYTE5(a3);
                  v16 = *(&v42 + v6 + 1);
                  break;
              }

              return ((v16 & (0xFFuLL >> v4)) << v4) | v15;
            }

            __break(1u);
            goto LABEL_55;
          }

          v9 = v40;
          v41 = sub_2707A8210();
          v38 = v3 - v41;
          if (__OFSUB__(v3, v41))
          {
            goto LABEL_71;
          }
        }

        return *(v9 + v38);
      }

      return result;
    default:
      goto LABEL_9;
  }
}

uint64_t sub_2707095C4()
{
  OUTLINED_FUNCTION_13();

  return sub_270709618();
}

uint64_t sub_270709618()
{
  OUTLINED_FUNCTION_29();
  v8 = OUTLINED_FUNCTION_17(v7, *MEMORY[0x277D85DE8]);
  if ((v3 & 7) != 0)
  {
    v18 = 0;
    OUTLINED_FUNCTION_66();
    v21 = (v20 << v19);
    v22 = v3 & 7;
    v23 = v20 >> v6;
    v24 = v5;
    while (2)
    {
      v25 = v16;
      if (v5 != 1)
      {
        if (v5 != 2)
        {
          v26 = 0;
LABEL_9:
          v27 = v3 + v18;
          if (!__OFADD__(v3, v18))
          {
            v28 = __OFADD__(v26, v27);
            v29 = v26 + v27;
            if (!v28)
            {
              v96 = v24;
              v97 = v23;
              v30 = v29 >> 3;
              switch(v5)
              {
                case 1u:
                  v93 = __PAIR64__(v21, v22);
                  OUTLINED_FUNCTION_8();
                  v94 = v3;
                  if (v30 < v54 || v30 >= v53)
                  {
                    goto LABEL_78;
                  }

                  v56 = v53;
                  v57 = sub_2707A81F0();
                  if (!v57)
                  {
                    goto LABEL_98;
                  }

                  v59 = OUTLINED_FUNCTION_39(v57, v58);
                  if (__OFSUB__(v30, v59))
                  {
                    goto LABEL_80;
                  }

                  v60 = v30 + 1;
                  if (v30 + 1 >= v56)
                  {
                    goto LABEL_82;
                  }

                  v36 = *(v21 + v30 - v59);
                  v1 = v0;
                  v61 = sub_2707A81F0();
                  if (!v61)
                  {
                    goto LABEL_97;
                  }

                  v45 = OUTLINED_FUNCTION_40(v61, v62);
                  if (__OFSUB__(v60, v45))
                  {
                    goto LABEL_85;
                  }

                  v3 = v94;
                  goto LABEL_35;
                case 2u:
                  if (v30 < *(v2 + 16))
                  {
                    goto LABEL_77;
                  }

                  v93 = __PAIR64__(v21, v22);
                  OUTLINED_FUNCTION_8();
                  v94 = v38;
                  if (v30 >= *(v2 + 24))
                  {
                    goto LABEL_81;
                  }

                  v39 = sub_2707A81F0();
                  if (!v39)
                  {
                    goto LABEL_96;
                  }

                  v41 = OUTLINED_FUNCTION_39(v39, v40);
                  if (__OFSUB__(v30, v41))
                  {
                    goto LABEL_83;
                  }

                  v42 = v30 + 1;
                  if (v30 + 1 < *(v2 + 16))
                  {
                    goto LABEL_84;
                  }

                  if (v42 >= *(v2 + 24))
                  {
                    goto LABEL_86;
                  }

                  v36 = *(v21 + v30 - v41);
                  v1 = v0;
                  v43 = sub_2707A81F0();
                  if (!v43)
                  {
                    goto LABEL_95;
                  }

                  v45 = OUTLINED_FUNCTION_40(v43, v44);
                  if (__OFSUB__(v42, v45))
                  {
                    goto LABEL_87;
                  }

LABEL_35:
                  v8 = OUTLINED_FUNCTION_36(v45, v46, v47, v48, v49, v50, v51, v52, v90, v91, v93, v94, v96, v97, v100, v101, v102, v103, v104, v105, v106, v107, v108);
                  v6 = v91;
                  v22 = v92;
                  v21 = HIDWORD(v92);
                  v24 = v96;
                  v23 = v98;
LABEL_36:
                  v4 = ((((v37 & v23) << v6) | ((v36 & v21) >> v22)) << v18) | v4;
                  v63 = v18 >= 0x18;
                  v18 += 8;
                  if (!v63)
                  {
                    continue;
                  }

                  return v4;
                case 3u:
                  goto LABEL_94;
                default:
                  if (v30 >= v17)
                  {
                    goto LABEL_76;
                  }

                  v8 = OUTLINED_FUNCTION_12(v8, v9, v10, v11, v12, v13, v14, v15);
                  v22 = v34;
                  v35 = v30 + 1;
                  v110 = v1;
                  v24 = v96;
                  v23 = v97;
                  if (v30 + 1 >= v17)
                  {
                    goto LABEL_79;
                  }

                  v36 = v109[v30];
                  v109[0] = v16;
                  v109[1] = v31;
                  v109[2] = v32;
                  v109[3] = v33;
                  v109[4] = v8;
                  v109[5] = v9;
                  v109[6] = v10;
                  v109[7] = v11;
                  v109[8] = v0;
                  v109[9] = v12;
                  v109[10] = v13;
                  v109[11] = v14;
                  v109[12] = v15;
                  v110 = v1;
                  v37 = v109[v35];
                  goto LABEL_36;
              }
            }

            goto LABEL_73;
          }

LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        v25 = *(v2 + 16);
      }

      break;
    }

    if ((v25 - 0x1000000000000000) >> 61 == 7)
    {
      v26 = 8 * v25;
      goto LABEL_9;
    }

    __break(1u);
  }

  v4 = 0;
  v64 = 32;
  v65 = v5;
LABEL_41:
  v66 = v64;
  while (2)
  {
    v67 = v16;
    if (v5 != 1)
    {
      if (v5 != 2)
      {
        v68 = 0;
        goto LABEL_48;
      }

      v67 = *(v2 + 16);
    }

    if ((v67 - 0x1000000000000000) >> 61 != 7)
    {
      __break(1u);
      goto LABEL_72;
    }

    v68 = 8 * v67;
LABEL_48:
    v64 = v66 - 8;
    v69 = v3 + v66 - 8;
    if (__OFADD__(v3, v66 - 8))
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v28 = __OFADD__(v68, v69);
    v70 = v68 + v69;
    if (v28)
    {
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
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
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
    }

    v71 = v70 >> 3;
    v99 = v65;
    switch(v5)
    {
      case 1u:
        OUTLINED_FUNCTION_8();
        v95 = v3;
        if (v71 < v85 || v71 >= v84)
        {
          goto LABEL_88;
        }

        v1 = v0;
        v87 = sub_2707A81F0();
        if (!v87)
        {
          goto LABEL_101;
        }

        v76 = OUTLINED_FUNCTION_40(v87, v88);
        if (!__OFSUB__(v71, v76))
        {
          goto LABEL_66;
        }

        goto LABEL_92;
      case 2u:
        v95 = v3;
        if (v71 < *(v2 + 16))
        {
          goto LABEL_89;
        }

        OUTLINED_FUNCTION_8();
        if (v71 >= *(v2 + 24))
        {
          goto LABEL_91;
        }

        v1 = v0;
        v74 = sub_2707A81F0();
        if (!v74)
        {
          goto LABEL_100;
        }

        v76 = OUTLINED_FUNCTION_40(v74, v75);
        if (__OFSUB__(v71, v76))
        {
          goto LABEL_93;
        }

LABEL_66:
        v3 = v95;
        v8 = OUTLINED_FUNCTION_36(v76, v77, v78, v79, v80, v81, v82, v83, v90, v91, v92, v95, v96, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108);
LABEL_67:
        v65 = v99;
        if (!v66)
        {
          return v4;
        }

        v66 -= 8;
        if (v64 == 32)
        {
          continue;
        }

        v4 = (v73 << (v64 & 0x18)) | v4;
        if (v64)
        {
          goto LABEL_41;
        }

        return v4;
      case 3u:
        goto LABEL_99;
      default:
        if (v71 >= v17)
        {
          goto LABEL_90;
        }

        v8 = OUTLINED_FUNCTION_12(v8, v9, v10, v11, v12, v13, v14, v15);
        v110 = v1;
        v73 = *(v72 + v71);
        goto LABEL_67;
    }
  }
}

uint64_t sub_270709AE8()
{
  OUTLINED_FUNCTION_29();
  v7 = v6;
  v9 = v8;
  v10 = v6 >> 24;
  v11 = HIDWORD(v6);
  v12 = v1 >> 40;
  v13 = HIWORD(v1);
  v14 = HIBYTE(v1);
  v15 = v0 >> 8;
  v16 = v0 >> 16;
  v17 = v0 >> 24;
  v18 = v0 >> 40;
  if ((v2 & 7) != 0)
  {
    v19 = 0;
    OUTLINED_FUNCTION_66();
    v22 = v21 << v20;
    v23 = v2 & 7;
    v24 = v21 >> v5;
    v25 = 1;
    while (2)
    {
      v26 = v25;
      v27 = v7;
      if (v4 != 1)
      {
        if (v4 != 2)
        {
          v28 = 0;
LABEL_9:
          v29 = v2 + v19;
          if (!__OFADD__(v2, v19))
          {
            v30 = __OFADD__(v28, v29);
            v31 = v28 + v29;
            if (!v30)
            {
              HIDWORD(v105) = v26;
              v106 = v24;
              HIDWORD(v107) = v23;
              v32 = v31 >> 3;
              switch(v4)
              {
                case 1u:
                  HIDWORD(v102) = v22;
                  OUTLINED_FUNCTION_9();
                  v103 = v2;
                  if (v32 < v64 || v32 >= v63)
                  {
                    goto LABEL_77;
                  }

                  v66 = v63;
                  v67 = sub_2707A81F0();
                  if (!v67)
                  {
                    goto LABEL_97;
                  }

                  v69 = OUTLINED_FUNCTION_39(v67, v68);
                  if (__OFSUB__(v32, v69))
                  {
                    goto LABEL_79;
                  }

                  v70 = v32 + 1;
                  if (v32 + 1 >= v66)
                  {
                    goto LABEL_81;
                  }

                  v43 = *(v18 + v32 - v69);
                  v71 = sub_2707A81F0();
                  if (!v71)
                  {
                    goto LABEL_96;
                  }

                  v55 = OUTLINED_FUNCTION_40(v71, v72);
                  if (__OFSUB__(v70, v55))
                  {
                    goto LABEL_84;
                  }

                  v2 = v103;
                  goto LABEL_35;
                case 2u:
                  if (v32 < *(v1 + 16))
                  {
                    goto LABEL_76;
                  }

                  HIDWORD(v102) = v22;
                  OUTLINED_FUNCTION_9();
                  v103 = v48;
                  if (v32 >= *(v1 + 24))
                  {
                    goto LABEL_80;
                  }

                  v49 = sub_2707A81F0();
                  if (!v49)
                  {
                    goto LABEL_95;
                  }

                  v51 = OUTLINED_FUNCTION_39(v49, v50);
                  if (__OFSUB__(v32, v51))
                  {
                    goto LABEL_82;
                  }

                  v52 = v32 + 1;
                  if (v32 + 1 < *(v1 + 16))
                  {
                    goto LABEL_83;
                  }

                  if (v52 >= *(v1 + 24))
                  {
                    goto LABEL_85;
                  }

                  v43 = *(v18 + v32 - v51);
                  v53 = sub_2707A81F0();
                  if (!v53)
                  {
                    goto LABEL_94;
                  }

                  v55 = OUTLINED_FUNCTION_40(v53, v54);
                  if (__OFSUB__(v52, v55))
                  {
                    goto LABEL_86;
                  }

LABEL_35:
                  v10 = OUTLINED_FUNCTION_41(v55, v56, v57, v58, v59, v60, v61, v62, v100, v101, v102, v103, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117);
                  v5 = v101;
                  v22 = HIDWORD(v102);
LABEL_36:
                  v25 = 0;
                  v23 = HIDWORD(v107);
                  v24 = v106;
                  v3 = ((((v47 & v106) << v5) | ((v43 & v22) >> SBYTE4(v107))) << v19) | v3;
                  v19 = 8;
                  if ((v105 & 0x100000000) == 0)
                  {
                    return v3;
                  }

                  continue;
                case 3u:
                  goto LABEL_93;
                default:
                  if (v32 >= v9)
                  {
                    goto LABEL_75;
                  }

                  v33 = OUTLINED_FUNCTION_14(v10, v11, v12, v13, v14, v15, v16, v17);
                  if (v32 + 1 >= v42)
                  {
                    goto LABEL_78;
                  }

                  v43 = *(v41 + v32);
                  v10 = OUTLINED_FUNCTION_14(v33, v34, v35, v36, v37, v38, v39, v40);
                  v22 = v44;
                  v47 = *(v46 + v45);
                  goto LABEL_36;
              }
            }

            goto LABEL_72;
          }

LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        v27 = *(v1 + 16);
      }

      break;
    }

    if ((v27 - 0x1000000000000000) >> 61 == 7)
    {
      v28 = 8 * v27;
      goto LABEL_9;
    }

    __break(1u);
  }

  v3 = 0;
  v73 = 16;
  v74 = 0xF000000000000000;
  v75 = v4;
LABEL_40:
  v76 = v73;
  while (2)
  {
    v77 = v7;
    if (v4 != 1)
    {
      if (v4 != 2)
      {
        v78 = 0;
        goto LABEL_47;
      }

      v77 = *(v1 + 16);
    }

    if ((v77 + v74) >> 61 != 7)
    {
      __break(1u);
      goto LABEL_71;
    }

    v78 = 8 * v77;
LABEL_47:
    v73 = v76 - 8;
    v79 = v2 + v76 - 8;
    if (__OFADD__(v2, v76 - 8))
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v30 = __OFADD__(v78, v79);
    v80 = v78 + v79;
    if (v30)
    {
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
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
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
    }

    v81 = v80 >> 3;
    v118 = v75;
    switch(v4)
    {
      case 1u:
        OUTLINED_FUNCTION_9();
        v104 = v2;
        if (v81 < v95 || v81 >= v94)
        {
          goto LABEL_87;
        }

        v97 = sub_2707A81F0();
        if (!v97)
        {
          goto LABEL_100;
        }

        v86 = OUTLINED_FUNCTION_40(v97, v98);
        if (!__OFSUB__(v81, v86))
        {
          goto LABEL_65;
        }

        goto LABEL_91;
      case 2u:
        v104 = v2;
        if (v81 < *(v1 + 16))
        {
          goto LABEL_88;
        }

        OUTLINED_FUNCTION_9();
        if (v81 >= *(v1 + 24))
        {
          goto LABEL_90;
        }

        v84 = sub_2707A81F0();
        if (!v84)
        {
          goto LABEL_99;
        }

        v86 = OUTLINED_FUNCTION_40(v84, v85);
        if (__OFSUB__(v81, v86))
        {
          goto LABEL_92;
        }

LABEL_65:
        v2 = v104;
        v10 = OUTLINED_FUNCTION_41(v86, v87, v88, v89, v90, v91, v92, v93, v100, v101, v102, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117);
        v74 = 0xF000000000000000;
LABEL_66:
        v75 = v118;
        if (!v76)
        {
          return v3;
        }

        v76 -= 8;
        if (v73 == 16)
        {
          continue;
        }

        v3 = (v83 << (v73 & 8)) | v3;
        if (v73)
        {
          goto LABEL_40;
        }

        return v3;
      case 3u:
        goto LABEL_98;
      default:
        if (v81 >= v9)
        {
          goto LABEL_89;
        }

        v10 = OUTLINED_FUNCTION_14(v10, v11, v12, v13, v14, v15, v16, v17);
        v83 = *(v82 + v81);
        goto LABEL_66;
    }
  }
}

uint64_t sub_270709FE0()
{
  OUTLINED_FUNCTION_13();

  return sub_27070A034();
}

uint64_t sub_27070A034()
{
  OUTLINED_FUNCTION_29();
  v6 = OUTLINED_FUNCTION_17(v5, *MEMORY[0x277D85DE8]);
  v16 = 0;
  v17 = v3 & 7;
  if ((v3 & 7) != 0)
  {
    v18 = 8 - v17;
    v19 = 255 << v17;
    v20 = v3 & 7;
    v21 = 0xFFuLL >> (8 - v17);
    v22 = -8;
    v23 = v4;
    while (2)
    {
      v24 = v14;
      if (v4 != 1)
      {
        if (v4 != 2)
        {
          v25 = 0;
LABEL_9:
          v26 = v3 + v22 + 8;
          if (!__OFADD__(v3, v22 + 8))
          {
            v27 = __OFADD__(v25, v26);
            v28 = v25 + v26;
            if (!v27)
            {
              v96 = v22 + 8;
              v97 = v21;
              v29 = v28 >> 3;
              v98 = v23;
              switch(v4)
              {
                case 1u:
                  v91 = __PAIR64__(v19, v20);
                  v93 = v18;
                  OUTLINED_FUNCTION_11();
                  OUTLINED_FUNCTION_59();
                  if (v37 != v27 || v29 >= v52)
                  {
                    goto LABEL_79;
                  }

                  v54 = v52;
                  v55 = sub_2707A81F0();
                  if (!v55)
                  {
                    goto LABEL_99;
                  }

                  v56 = v55;
                  v89 = v3;
                  v57 = sub_2707A8210();
                  if (__OFSUB__(v29, v57))
                  {
                    goto LABEL_81;
                  }

                  v58 = v29 + 1;
                  if (v29 + 1 >= v54)
                  {
                    goto LABEL_83;
                  }

                  v35 = *(v56 + v29 - v57);
                  v1 = v0;
                  v59 = sub_2707A81F0();
                  if (!v59)
                  {
                    goto LABEL_98;
                  }

                  v44 = OUTLINED_FUNCTION_40(v59, v60);
                  if (__OFSUB__(v58, v44))
                  {
                    goto LABEL_86;
                  }

                  v3 = v89;
                  goto LABEL_36;
                case 2u:
                  if (v29 < *(v2 + 16))
                  {
                    goto LABEL_78;
                  }

                  v91 = __PAIR64__(v19, v20);
                  v93 = v18;
                  OUTLINED_FUNCTION_11();
                  OUTLINED_FUNCTION_61();
                  if (v37 == v27)
                  {
                    goto LABEL_82;
                  }

                  v38 = sub_2707A81F0();
                  if (!v38)
                  {
                    goto LABEL_97;
                  }

                  v39 = v38;
                  v89 = v3;
                  v40 = sub_2707A8210();
                  if (__OFSUB__(v29, v40))
                  {
                    goto LABEL_84;
                  }

                  v41 = v29 + 1;
                  if (v29 + 1 < *(v2 + 16))
                  {
                    goto LABEL_85;
                  }

                  if (v41 >= *(v2 + 24))
                  {
                    goto LABEL_87;
                  }

                  v35 = *(v39 + v29 - v40);
                  v1 = v0;
                  v42 = sub_2707A81F0();
                  if (!v42)
                  {
                    goto LABEL_96;
                  }

                  v44 = OUTLINED_FUNCTION_40(v42, v43);
                  if (__OFSUB__(v41, v44))
                  {
                    goto LABEL_88;
                  }

                  v3 = v89;
LABEL_36:
                  v6 = OUTLINED_FUNCTION_35(v44, v45, v46, v47, v48, v49, v50, v51, v87, v89, v91, v93, v94, v95, v96, v97, v98, v101, v102, v103, v104, v105, v106, v107, v108, v109);
                  v18 = v92;
                  v20 = v90;
                  v19 = HIDWORD(v90);
                  v23 = v99;
LABEL_37:
                  v21 = v97;
                  v16 |= (((v36 & v97) << v18) | ((v35 & v19) >> v20)) << v96;
                  v22 += 8;
                  if (v22 >= 0x38)
                  {
                    return v16;
                  }

                  continue;
                case 3u:
                  goto LABEL_95;
                default:
                  if (v29 >= v15)
                  {
                    goto LABEL_77;
                  }

                  v6 = OUTLINED_FUNCTION_12(v6, v7, v8, v9, v10, v11, v12, v13);
                  v20 = v33;
                  v34 = v29 + 1;
                  v111 = v1;
                  v23 = v98;
                  if (v29 + 1 >= v15)
                  {
                    goto LABEL_80;
                  }

                  v35 = v110[v29];
                  v110[0] = v14;
                  v110[1] = v30;
                  v110[2] = v31;
                  v110[3] = v32;
                  v110[4] = v6;
                  v110[5] = v7;
                  v110[6] = v8;
                  v110[7] = v9;
                  v110[8] = v0;
                  v110[9] = v10;
                  v110[10] = v11;
                  v110[11] = v12;
                  v110[12] = v13;
                  v111 = v1;
                  v36 = v110[v34];
                  goto LABEL_37;
              }
            }

            goto LABEL_74;
          }

LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        v24 = *(v2 + 16);
      }

      break;
    }

    if ((v24 - 0x1000000000000000) >> 61 == 7)
    {
      v25 = 8 * v24;
      goto LABEL_9;
    }

    __break(1u);
  }

  v61 = 64;
  v62 = v4;
LABEL_41:
  v63 = v61;
  while (2)
  {
    v64 = v14;
    if (v4 != 1)
    {
      if (v4 != 2)
      {
        v65 = 0;
        goto LABEL_48;
      }

      v64 = *(v2 + 16);
    }

    if ((v64 - 0x1000000000000000) >> 61 != 7)
    {
      __break(1u);
      goto LABEL_73;
    }

    v65 = 8 * v64;
LABEL_48:
    v61 = v63 - 8;
    v66 = v3 + v63 - 8;
    if (__OFADD__(v3, v63 - 8))
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v27 = __OFADD__(v65, v66);
    v67 = v65 + v66;
    if (v27)
    {
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
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
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
    }

    v68 = v67 >> 3;
    v100 = v62;
    switch(v4)
    {
      case 1u:
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_59();
        v94 = v82;
        if (v37 != v27 || v68 >= v82)
        {
          goto LABEL_89;
        }

        v1 = v0;
        v84 = sub_2707A81F0();
        if (!v84)
        {
          goto LABEL_102;
        }

        v74 = OUTLINED_FUNCTION_40(v84, v85);
        if (!__OFSUB__(v68, v74))
        {
          goto LABEL_67;
        }

        goto LABEL_93;
      case 2u:
        if (v68 < *(v2 + 16))
        {
          goto LABEL_90;
        }

        OUTLINED_FUNCTION_11();
        v95 = v71;
        OUTLINED_FUNCTION_61();
        if (v37 == v27)
        {
          goto LABEL_92;
        }

        v1 = v0;
        v72 = sub_2707A81F0();
        if (!v72)
        {
          goto LABEL_101;
        }

        v74 = OUTLINED_FUNCTION_40(v72, v73);
        if (__OFSUB__(v68, v74))
        {
          goto LABEL_94;
        }

LABEL_67:
        v6 = OUTLINED_FUNCTION_35(v74, v75, v76, v77, v78, v79, v80, v81, v87, v88, v90, v92, v94, v95, v96, v97, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109);
LABEL_68:
        v62 = v100;
        if (!v63)
        {
          return v16;
        }

        v63 -= 8;
        if (v61 == 64)
        {
          continue;
        }

        v16 |= v70 << (v61 & 0x38);
        if (v61)
        {
          goto LABEL_41;
        }

        return v16;
      case 3u:
        goto LABEL_100;
      default:
        if (v68 >= v15)
        {
          goto LABEL_91;
        }

        v6 = OUTLINED_FUNCTION_12(v6, v7, v8, v9, v10, v11, v12, v13);
        v111 = v1;
        v70 = *(v69 + v68);
        goto LABEL_68;
    }
  }
}

void sub_27070A518()
{
  OUTLINED_FUNCTION_13();

  sub_27070A56C(v0, v1);
}

void sub_27070A56C(uint64_t result, uint64_t a2)
{
  v4 = v2;
  v5 = a2;
  v6 = result;
  v40 = *MEMORY[0x277D85DE8];
  v8 = *v2;
  v7 = v2[1];
  v9 = (v7 >> 62);
  v10 = *v2;
  v11 = 0;
  if ((a2 & 7) != 0)
  {
    switch(v7 >> 62)
    {
      case 1uLL:
        v11 = *v2;
        goto LABEL_17;
      case 2uLL:
        v11 = *(v8 + 16);
LABEL_17:
        if ((v11 - 0x1000000000000000) >> 61 == 7)
        {
          goto LABEL_3;
        }

        __break(1u);
        goto LABEL_19;
      default:
LABEL_3:
        if (!__OFADD__(a2, 8 * v11))
        {
          v10 = (-255 << (a2 & 7));
          sub_2707A82E0();
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_64();
          v12 = 0;
          switch(v13)
          {
            case 1:
            case 2:
              goto LABEL_21;
            default:
              goto LABEL_5;
          }
        }

        __break(1u);
        goto LABEL_50;
    }
  }

  switch(v7 >> 62)
  {
    case 1uLL:
    case 2uLL:
LABEL_19:
      OUTLINED_FUNCTION_60();
      if (v17)
      {
        goto LABEL_65;
      }

      __break(1u);
LABEL_21:
      OUTLINED_FUNCTION_5();
      if (v17)
      {
        v12 = 8 * v18;
LABEL_5:
        if (!__OFADD__(v5, 8))
        {
          if (!__OFADD__(v12, v5 + 8))
          {
            sub_2707A82E0();

            sub_2707A82F0();
            return;
          }

          goto LABEL_52;
        }

LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      __break(1u);
LABEL_23:
      if (v3 < *(v8 + 16))
      {
        goto LABEL_53;
      }

      if (v3 >= *(v8 + 24))
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v5 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = *(v8 + 16);
        v19 = *(v8 + 24);
        if (sub_2707A81F0() && __OFSUB__(v10, sub_2707A8210()))
        {
          goto LABEL_61;
        }

        if (__OFSUB__(v19, v10))
        {
          goto LABEL_59;
        }

        v27 = sub_2707A8220();
        OUTLINED_FUNCTION_33(v27);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_4();
        v29 = OUTLINED_FUNCTION_44(v28);

        v5 = v29;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = *(v8 + 16);
        v30 = *(v8 + 24);
        v31 = sub_2707A82B0();
        v32 = OUTLINED_FUNCTION_47(v31);
        *(v32 + 16) = v10;
        *(v32 + 24) = v30;

        v8 = v32;
      }

      OUTLINED_FUNCTION_19();
      sub_2707A81C0();
      v33 = sub_2707A81F0();
      if (!v33)
      {
        while (1)
        {
          v9 = &loc_2707A9000;
          *v4 = xmmword_2707A9D20;
          __break(1u);
LABEL_65:
          v11 = 8 * v15;
LABEL_11:
          v14 = __OFADD__(v11, v5);
          v15 = v11 + v5;
          if (v14)
          {
            break;
          }

          v3 = v15 >> 3;
          switch(v9)
          {
            case 1uLL:
              if (v3 < v8 || v3 >= v8 >> 32)
              {
                goto LABEL_55;
              }

              v5 = v7 & 0x3FFFFFFFFFFFFFFFLL;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_38;
              }

              if (sub_2707A81F0() && __OFSUB__(v10, sub_2707A8210()))
              {
                goto LABEL_60;
              }

              v21 = sub_2707A8220();
              OUTLINED_FUNCTION_33(v21);
              OUTLINED_FUNCTION_18();
              OUTLINED_FUNCTION_4();
              v23 = OUTLINED_FUNCTION_44(v22);

              v5 = v23;
LABEL_38:
              OUTLINED_FUNCTION_19();
              sub_2707A81C0();
              v24 = sub_2707A81F0();
              if (v24)
              {
                v25 = v24;
                v26 = sub_2707A8210();
                if (!__OFSUB__(v3, v26))
                {
                  *(v25 + v3 - v26) = v6;
                  v16 = v5 | 0x4000000000000000;
                  goto LABEL_48;
                }

LABEL_57:
                __break(1u);
LABEL_58:
                __break(1u);
LABEL_59:
                __break(1u);
LABEL_60:
                __break(1u);
LABEL_61:
                __break(1u);
              }

LABEL_63:
              *v4 = xmmword_2707A9D20;
              __break(1u);
              break;
            case 2uLL:
              goto LABEL_23;
            case 3uLL:
              __break(1u);
              goto LABEL_63;
            default:
              v36 = v8;
              LOWORD(v37) = v7;
              BYTE2(v37) = BYTE2(v7);
              HIBYTE(v37) = BYTE3(v7);
              LOBYTE(v38) = BYTE4(v7);
              HIBYTE(v38) = BYTE5(v7);
              v39 = BYTE6(v7);
              if (v3 >= BYTE6(v7))
              {
                goto LABEL_54;
              }

              *(&v36 + v3) = v6;
              v8 = v36;
              v16 = v37 | ((v38 | (v39 << 16)) << 32);
              goto LABEL_48;
          }
        }

LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v34 = v33;
      v35 = sub_2707A8210();
      if (__OFSUB__(v3, v35))
      {
        goto LABEL_58;
      }

      *(v34 + v3 - v35) = v6;
      v16 = v5 | 0x8000000000000000;
LABEL_48:
      *v4 = v8;
      v4[1] = v16;
      return;
    default:
      goto LABEL_11;
  }
}

void sub_27070AAA4()
{
  OUTLINED_FUNCTION_13();

  sub_27070AAF8(v0, v1);
}

void sub_27070AAF8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = a2;
  v6 = a1;
  v101 = *MEMORY[0x277D85DE8];
  v8 = *v2;
  v7 = v2[1];
  v9 = a2 & 7;
  if ((a2 & 7) != 0)
  {
    v10 = 0;
    switch(v7 >> 62)
    {
      case 1uLL:
      case 2uLL:
        goto LABEL_52;
      default:
        goto LABEL_3;
    }
  }

  v28 = 24;
  while (2)
  {
    v29 = v28 - 16;
    v30 = v7 >> 62;
    v31 = 0;
    v3 = v8;
    switch(v7 >> 62)
    {
      case 1uLL:
      case 2uLL:
        OUTLINED_FUNCTION_38();
        if (v39)
        {
          v31 = 8 * v38;
LABEL_14:
          v32 = v5 + v29;
          if (!__OFADD__(v5, v29))
          {
            v16 = __OFADD__(v31, v32);
            v33 = v31 + v32;
            if (v16)
            {
              goto LABEL_87;
            }

            v34 = v33 >> 3;
            switch(v30)
            {
              case 1:
                v87 = v6 >> (v29 & 8);
                if (v34 < v8 || v34 >= v8 >> 32)
                {
                  goto LABEL_92;
                }

                if (OUTLINED_FUNCTION_50(a1, a2, v7))
                {
                  goto LABEL_39;
                }

                v46 = sub_2707A81F0();
                if (v46)
                {
                  v48 = OUTLINED_FUNCTION_52(v46, v47);
                  if (__OFSUB__(v8, v48))
                  {
                    goto LABEL_99;
                  }

                  v49 = v8 - v48 + v6;
                }

                else
                {
                  v49 = 0;
                }

                v50 = sub_2707A8220();
                OUTLINED_FUNCTION_33(v50);
                v51 = OUTLINED_FUNCTION_0();
                OUTLINED_FUNCTION_44(v51);
                OUTLINED_FUNCTION_31();
                v9 = v49;
                v6 = v6;
LABEL_39:
                OUTLINED_FUNCTION_19();
                sub_2707A81C0();
                v52 = sub_2707A81F0();
                if (!v52)
                {
                  goto LABEL_110;
                }

                a1 = OUTLINED_FUNCTION_53(v52, v53);
                if (__OFSUB__(v34, a1))
                {
                  goto LABEL_95;
                }

                *(v8 + v34 - a1) = v87;
                v7 = v9 | 0x4000000000000000;
LABEL_50:
                v28 -= 8;
                if (v28 <= 8)
                {
                  goto LABEL_85;
                }

                continue;
              case 2:
                if (v34 < *(v8 + 16))
                {
                  goto LABEL_91;
                }

                v86 = v6 >> (v29 & 8);
                if (v34 >= *(v8 + 24))
                {
                  goto LABEL_94;
                }

                if (OUTLINED_FUNCTION_54(a1, a2, v7))
                {
                  goto LABEL_45;
                }

                v9 = *(v8 + 16);
                v40 = *(v8 + 24);
                v41 = sub_2707A81F0();
                if (v41)
                {
                  v43 = OUTLINED_FUNCTION_51(v41, v42);
                  if (__OFSUB__(v9, v43))
                  {
                    goto LABEL_100;
                  }

                  v44 = v9 - v43 + v6;
                }

                else
                {
                  v44 = 0;
                }

                if (__OFSUB__(v40, v9))
                {
                  goto LABEL_98;
                }

                v54 = sub_2707A8220();
                OUTLINED_FUNCTION_33(v54);
                v55 = OUTLINED_FUNCTION_0();
                OUTLINED_FUNCTION_49(v55);
                OUTLINED_FUNCTION_55();
                v3 = v44;
                v6 = v6;
LABEL_45:
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v56 = *(v8 + 16);
                  v9 = *(v8 + 24);
                  v57 = sub_2707A82B0();
                  v58 = OUTLINED_FUNCTION_47(v57);
                  *(v58 + 16) = v56;
                  *(v58 + 24) = v9;

                  v8 = v58;
                }

                OUTLINED_FUNCTION_19();
                sub_2707A81C0();
                v59 = sub_2707A81F0();
                if (!v59)
                {
                  goto LABEL_111;
                }

                a1 = OUTLINED_FUNCTION_56(v59, v60);
                if (__OFSUB__(v34, a1))
                {
                  goto LABEL_96;
                }

                *(v9 + v34 - a1) = v86;
                v7 = v3 | 0x8000000000000000;
                goto LABEL_50;
              case 3:
                goto LABEL_112;
              default:
                OUTLINED_FUNCTION_63();
                v89 = v37;
                v90 = BYTE3(v8);
                v91 = BYTE4(v8);
                v92 = BYTE5(v8);
                v93 = BYTE6(v8);
                v94 = HIBYTE(v8);
                v95 = v7;
                v96 = BYTE2(v7);
                v97 = BYTE3(v7);
                v98 = BYTE4(v7);
                v99 = BYTE5(v7);
                v100 = BYTE6(v7);
                if (v34 >= BYTE6(v7))
                {
                  goto LABEL_93;
                }

                *(v36 + v34) = v35;
                OUTLINED_FUNCTION_45();
                OUTLINED_FUNCTION_26();
                goto LABEL_50;
            }
          }

          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        __break(1u);
LABEL_52:
        OUTLINED_FUNCTION_5();
        if (v39)
        {
LABEL_3:
          if (!__OFADD__(v5, 8 * v10))
          {
            sub_2707A82E0();
            OUTLINED_FUNCTION_27();
            OUTLINED_FUNCTION_64();
            v11 = 0;
            switch(v12)
            {
              case 1:
              case 2:
                goto LABEL_54;
              default:
                goto LABEL_5;
            }
          }

LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        __break(1u);
LABEL_54:
        OUTLINED_FUNCTION_5();
        if (v39)
        {
LABEL_116:
          v11 = 8 * v61;
LABEL_5:
          if (!__OFADD__(v5, 16))
          {
            if (!__OFADD__(v11, v5 + 16))
            {
              sub_2707A82E0();
              OUTLINED_FUNCTION_27();
              v8 = *v4;
              v13 = v4[1];
              v14 = v13 >> 62;
              v15 = 0;
              v3 = *v4;
              switch(v13 >> 62)
              {
                case 1uLL:
                case 2uLL:
                  goto LABEL_56;
                default:
                  goto LABEL_8;
              }
            }

LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
            goto LABEL_97;
          }

LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

        __break(1u);
LABEL_56:
        OUTLINED_FUNCTION_38();
        if (!v39)
        {
          __break(1u);
LABEL_58:
          if (v6 < *(v8 + 16))
          {
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
            goto LABEL_104;
          }

          if (v6 >= *(v8 + 24))
          {
LABEL_104:
            __break(1u);
            goto LABEL_105;
          }

          v63 = v13 & 0x3FFFFFFFFFFFFFFFLL;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = *(v8 + 16);
            v64 = *(v8 + 24);
            if (sub_2707A81F0() && __OFSUB__(v5, sub_2707A8210()))
            {
              goto LABEL_109;
            }

            if (__OFSUB__(v64, v5))
            {
              goto LABEL_107;
            }

            v77 = sub_2707A8220();
            OUTLINED_FUNCTION_33(v77);
            OUTLINED_FUNCTION_18();
            OUTLINED_FUNCTION_4();
            v79 = v78;
            sub_2707A81D0();
            OUTLINED_FUNCTION_62();

            v63 = v79;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = *(v8 + 16);
            v80 = *(v8 + 24);
            v81 = sub_2707A82B0();
            v82 = OUTLINED_FUNCTION_47(v81);
            *(v82 + 16) = v5;
            *(v82 + 24) = v80;

            v8 = v82;
          }

          OUTLINED_FUNCTION_19();
          sub_2707A81C0();
          v83 = sub_2707A81F0();
          if (v83)
          {
            v84 = v83;
            v85 = sub_2707A8210();
            if (!__OFSUB__(v6, v85))
            {
              *(v84 + v6 - v85) = v9;
              v7 = v63 | 0x8000000000000000;
              goto LABEL_85;
            }

            goto LABEL_106;
          }

          goto LABEL_115;
        }

        v15 = 8 * v62;
LABEL_8:
        v16 = __OFADD__(v15, v5 + 8);
        v17 = v15 + v5 + 8;
        if (v16)
        {
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        v18 = v6;
        v6 = v17 >> 3;
        LODWORD(v9) = v18 >> (8 - v9);
        switch(v14)
        {
          case 1:
            v65 = v8 >> 32;
            if (v6 < v8 || v6 >= v65)
            {
              goto LABEL_103;
            }

            v67 = v13 & 0x3FFFFFFFFFFFFFFFLL;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_75;
            }

            v68 = sub_2707A81F0();
            if (v68)
            {
              v69 = v68;
              v70 = sub_2707A8210();
              if (__OFSUB__(v3, v70))
              {
LABEL_108:
                __break(1u);
LABEL_109:
                __break(1u);
LABEL_110:
                *v4 = xmmword_2707A9D20;
                __break(1u);
LABEL_111:
                *v4 = xmmword_2707A9D20;
                __break(1u);
LABEL_112:
                *v4 = v8;
                v4[1] = v7;
                __break(1u);
              }

              v71 = v3 - v70 + v69;
            }

            else
            {
              v71 = 0;
            }

            v5 = v65 - v3;
            v72 = sub_2707A8220();
            OUTLINED_FUNCTION_33(v72);
            OUTLINED_FUNCTION_18();
            OUTLINED_FUNCTION_4();
            OUTLINED_FUNCTION_44(v73);
            OUTLINED_FUNCTION_62();

            v67 = v71;
LABEL_75:
            OUTLINED_FUNCTION_19();
            sub_2707A81C0();
            v74 = sub_2707A81F0();
            if (!v74)
            {
LABEL_114:
              *v4 = xmmword_2707A9D20;
              __break(1u);
LABEL_115:
              v61 = &loc_2707A9000;
              *v4 = xmmword_2707A9D20;
              __break(1u);
              goto LABEL_116;
            }

            v75 = v74;
            v76 = sub_2707A8210();
            if (__OFSUB__(v6, v76))
            {
LABEL_105:
              __break(1u);
LABEL_106:
              __break(1u);
LABEL_107:
              __break(1u);
              goto LABEL_108;
            }

            *(v75 + v6 - v76) = v9;
            v7 = v67 | 0x4000000000000000;
LABEL_85:
            *v4 = v8;
            v4[1] = v7;
            return;
          case 2:
            goto LABEL_58;
          case 3:
            __break(1u);
            goto LABEL_114;
          default:
            OUTLINED_FUNCTION_63();
            v89 = v19;
            v90 = BYTE3(v8);
            v91 = BYTE4(v8);
            v92 = BYTE5(v8);
            v93 = BYTE6(v8);
            v94 = HIBYTE(v8);
            v95 = v20;
            v96 = v21;
            v97 = v22;
            v98 = v23;
            v99 = v24;
            v100 = v25;
            if (v6 >= v25)
            {
              goto LABEL_102;
            }

            v88[v6] = v9;
            OUTLINED_FUNCTION_45();
            v7 = v27 | (v26 << 32);
            goto LABEL_85;
        }

      default:
        goto LABEL_14;
    }
  }
}

void sub_27070B30C()
{
  OUTLINED_FUNCTION_13();

  sub_27070B360(v0, v1);
}

void sub_27070B360(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v6 = a2;
  v99 = *MEMORY[0x277D85DE8];
  v9 = *v2;
  v8 = v2[1];
  v10 = a2 & 7;
  if ((a2 & 7) != 0)
  {
    v11 = 0;
    switch(v8 >> 62)
    {
      case 1uLL:
      case 2uLL:
        goto LABEL_97;
      default:
        goto LABEL_3;
    }
  }

  v10 = 24;
  while (2)
  {
    OUTLINED_FUNCTION_25();
    switch(v62)
    {
      case 1:
        v68 = v3;
        goto LABEL_64;
      case 2:
        v68 = *(v9 + 16);
LABEL_64:
        if ((v68 + v61) >> 61 != 7)
        {
          __break(1u);
LABEL_97:
          OUTLINED_FUNCTION_5();
          if (v27)
          {
LABEL_3:
            if (!__OFADD__(v6, 8 * v11))
            {
              OUTLINED_FUNCTION_48();
              OUTLINED_FUNCTION_27();
              OUTLINED_FUNCTION_64();
              v12 = 0;
              switch(v13)
              {
                case 1:
                case 2:
                  goto LABEL_100;
                default:
                  goto LABEL_5;
              }
            }

LABEL_104:
            __break(1u);
            goto LABEL_105;
          }

          __break(1u);
          while (2)
          {
            __break(1u);
LABEL_100:
            OUTLINED_FUNCTION_5();
            if (v27)
            {
              v12 = 8 * v93;
LABEL_5:
              if (!__OFADD__(v6, 32))
              {
                if (!__OFADD__(v12, v6 + 32))
                {
                  OUTLINED_FUNCTION_43();
                  OUTLINED_FUNCTION_27();
                  v9 = *v5;
                  v14 = 40;
                  OUTLINED_FUNCTION_37();
LABEL_8:
                  OUTLINED_FUNCTION_25();
                  switch(v20)
                  {
                    case 1:
                    case 2:
                      OUTLINED_FUNCTION_38();
                      if (!v27)
                      {
                        continue;
                      }

                      v18 = 8 * v26;
LABEL_9:
                      v21 = v6 + v19;
                      if (__OFADD__(v6, v19))
                      {
                        goto LABEL_107;
                      }

                      v22 = __OFADD__(v18, v21);
                      v23 = v18 + v21;
                      if (v22)
                      {
                        goto LABEL_108;
                      }

                      v22 = __OFSUB__(v19, v10);
                      v24 = v19 - v10;
                      if (v22)
                      {
                        goto LABEL_109;
                      }

                      if (v24 - 33 <= 0xFFFFFFFFFFFFFFBELL)
                      {
                        goto LABEL_13;
                      }

                      if ((v24 & 0x8000000000000000) != 0)
                      {
                        OUTLINED_FUNCTION_37();
                      }

                      else if (v24 >= 0x20)
                      {
LABEL_13:
                        LOBYTE(v25) = 0;
                      }

                      else
                      {
                        v25 = a1 >> v24;
                      }

                      break;
                    default:
                      goto LABEL_9;
                  }

                  v28 = v23 >> 3;
                  switch(v17)
                  {
                    case 1:
                      v95 = v25;
                      if (v28 < v9 || v28 >= v9 >> 32)
                      {
                        goto LABEL_118;
                      }

                      if (OUTLINED_FUNCTION_50(v15, v16, v8))
                      {
                        goto LABEL_40;
                      }

                      v40 = sub_2707A81F0();
                      if (v40)
                      {
                        v42 = OUTLINED_FUNCTION_52(v40, v41);
                        if (__OFSUB__(v3, v42))
                        {
                          goto LABEL_126;
                        }

                        v43 = v3 - v42 + a1;
                      }

                      else
                      {
                        v43 = 0;
                      }

                      v44 = sub_2707A8220();
                      OUTLINED_FUNCTION_33(v44);
                      v45 = OUTLINED_FUNCTION_0();
                      OUTLINED_FUNCTION_44(v45);
                      OUTLINED_FUNCTION_31();
                      v4 = v43;
                      a1 = a1;
LABEL_40:
                      OUTLINED_FUNCTION_19();
                      sub_2707A81C0();
                      v46 = sub_2707A81F0();
                      if (!v46)
                      {
                        goto LABEL_132;
                      }

                      OUTLINED_FUNCTION_53(v46, v47);
                      OUTLINED_FUNCTION_57();
                      if (v22)
                      {
                        goto LABEL_121;
                      }

                      *(v3 + v48) = v95;
LABEL_51:
                      OUTLINED_FUNCTION_37();
LABEL_52:
                      v14 -= 8;
                      if (v14 <= 0x10)
                      {
                        goto LABEL_95;
                      }

                      goto LABEL_8;
                    case 2:
                      if (v28 < *(v9 + 16))
                      {
                        goto LABEL_117;
                      }

                      v94 = v25;
                      if (v28 >= *(v9 + 24))
                      {
                        goto LABEL_120;
                      }

                      if (OUTLINED_FUNCTION_54(v15, v16, v8))
                      {
                        goto LABEL_46;
                      }

                      v4 = *(v9 + 16);
                      v34 = *(v9 + 24);
                      v35 = sub_2707A81F0();
                      if (v35)
                      {
                        v37 = OUTLINED_FUNCTION_51(v35, v36);
                        if (__OFSUB__(v4, v37))
                        {
                          goto LABEL_127;
                        }

                        v38 = v4 - v37 + a1;
                      }

                      else
                      {
                        v38 = 0;
                      }

                      if (__OFSUB__(v34, v4))
                      {
                        goto LABEL_125;
                      }

                      v49 = sub_2707A8220();
                      OUTLINED_FUNCTION_33(v49);
                      v50 = OUTLINED_FUNCTION_0();
                      OUTLINED_FUNCTION_49(v50);
                      OUTLINED_FUNCTION_55();
                      v3 = v38;
                      a1 = a1;
LABEL_46:
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v51 = *(v9 + 16);
                        v4 = *(v9 + 24);
                        v52 = sub_2707A82B0();
                        v53 = OUTLINED_FUNCTION_47(v52);
                        *(v53 + 16) = v51;
                        *(v53 + 24) = v4;

                        v9 = v53;
                      }

                      OUTLINED_FUNCTION_19();
                      sub_2707A81C0();
                      v54 = sub_2707A81F0();
                      if (!v54)
                      {
                        goto LABEL_133;
                      }

                      OUTLINED_FUNCTION_56(v54, v55);
                      OUTLINED_FUNCTION_57();
                      if (v22)
                      {
                        goto LABEL_122;
                      }

                      *(v4 + v56) = v94;
                      goto LABEL_51;
                    case 3:
                      goto LABEL_131;
                    default:
                      OUTLINED_FUNCTION_1();
                      if (v31 >= v32)
                      {
                        goto LABEL_119;
                      }

                      *(v30 + v31) = v29;
                      OUTLINED_FUNCTION_7();
                      OUTLINED_FUNCTION_26();
                      goto LABEL_52;
                  }
                }

                goto LABEL_106;
              }

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
LABEL_110:
              __break(1u);
LABEL_111:
              __break(1u);
LABEL_112:
              __break(1u);
LABEL_113:
              __break(1u);
LABEL_114:
              __break(1u);
LABEL_115:
              __break(1u);
LABEL_116:
              __break(1u);
LABEL_117:
              __break(1u);
LABEL_118:
              __break(1u);
LABEL_119:
              __break(1u);
LABEL_120:
              __break(1u);
LABEL_121:
              __break(1u);
LABEL_122:
              __break(1u);
LABEL_123:
              __break(1u);
LABEL_124:
              __break(1u);
LABEL_125:
              __break(1u);
LABEL_126:
              __break(1u);
LABEL_127:
              __break(1u);
LABEL_128:
              *v5 = xmmword_2707A9D20;
              __break(1u);
LABEL_129:
              *v5 = xmmword_2707A9D20;
              __break(1u);
LABEL_130:
              *v5 = v9;
              v5[1] = v8;
              __break(1u);
LABEL_131:
              *v5 = v9;
              v5[1] = v8;
              __break(1u);
LABEL_132:
              *v5 = xmmword_2707A9D20;
              __break(1u);
LABEL_133:
              *v5 = xmmword_2707A9D20;
              __break(1u);
            }

            break;
          }

          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        v60 = 8 * v68;
LABEL_57:
        v63 = v6 + v10;
        if (__OFADD__(v6, v10))
        {
          goto LABEL_102;
        }

        v22 = __OFADD__(v60, v63);
        v64 = v60 + v63;
        if (v22)
        {
          goto LABEL_103;
        }

        v97 = v6;
        v65 = v64 >> 3;
        v66 = a1 >> (v10 & 0x18);
        switch(v59)
        {
          case 1:
            if (v65 < v9 || v65 >= v9 >> 32)
            {
              goto LABEL_111;
            }

            if (OUTLINED_FUNCTION_50(v57, v58, v8))
            {
              goto LABEL_83;
            }

            v75 = sub_2707A81F0();
            if (v75)
            {
              v77 = OUTLINED_FUNCTION_52(v75, v76);
              if (__OFSUB__(v3, v77))
              {
                goto LABEL_123;
              }

              v78 = v3 - v77 + a1;
            }

            else
            {
              v78 = 0;
            }

            v79 = sub_2707A8220();
            OUTLINED_FUNCTION_33(v79);
            v80 = OUTLINED_FUNCTION_0();
            OUTLINED_FUNCTION_44(v80);
            OUTLINED_FUNCTION_31();
            v4 = v78;
            a1 = a1;
LABEL_83:
            OUTLINED_FUNCTION_19();
            sub_2707A81C0();
            v81 = sub_2707A81F0();
            if (!v81)
            {
              goto LABEL_128;
            }

            v83 = OUTLINED_FUNCTION_53(v81, v82);
            if (__OFSUB__(v65, v83))
            {
              goto LABEL_114;
            }

            *(v3 + v65 - v83) = v66;
            v33 = v4 | 0x4000000000000000;
LABEL_94:
            v92 = v10 + 8;
            v10 -= 8;
            v6 = v97;
            if (v92 > 8)
            {
              continue;
            }

LABEL_95:
            *v5 = v9;
            v5[1] = v33;
            return;
          case 2:
            if (v65 < *(v9 + 16))
            {
              goto LABEL_110;
            }

            if (v65 >= *(v9 + 24))
            {
              goto LABEL_113;
            }

            v96 = a1;
            if (OUTLINED_FUNCTION_54(v57, v58, v8))
            {
              goto LABEL_89;
            }

            v4 = *(v9 + 16);
            v69 = *(v9 + 24);
            v70 = sub_2707A81F0();
            if (v70)
            {
              v72 = OUTLINED_FUNCTION_51(v70, v71);
              if (__OFSUB__(v4, v72))
              {
                goto LABEL_124;
              }

              v73 = v4 - v72 + a1;
            }

            else
            {
              v73 = 0;
            }

            if (__OFSUB__(v69, v4))
            {
              goto LABEL_116;
            }

            v84 = sub_2707A8220();
            OUTLINED_FUNCTION_33(v84);
            v85 = OUTLINED_FUNCTION_0();
            OUTLINED_FUNCTION_49(v85);
            OUTLINED_FUNCTION_55();
            v3 = v73;
LABEL_89:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = *(v9 + 16);
              v86 = *(v9 + 24);
              v87 = sub_2707A82B0();
              v88 = OUTLINED_FUNCTION_47(v87);
              *(v88 + 16) = v4;
              *(v88 + 24) = v86;

              v9 = v88;
            }

            a1 = v96;
            OUTLINED_FUNCTION_19();
            sub_2707A81C0();
            v89 = sub_2707A81F0();
            if (!v89)
            {
              goto LABEL_129;
            }

            v91 = OUTLINED_FUNCTION_56(v89, v90);
            if (__OFSUB__(v65, v91))
            {
              goto LABEL_115;
            }

            *(v4 + v65 - v91) = v66;
            v33 = v3 | 0x8000000000000000;
            goto LABEL_94;
          case 3:
            goto LABEL_130;
          default:
            OUTLINED_FUNCTION_1();
            if (v65 >= v67)
            {
              goto LABEL_112;
            }

            v98[v65] = v66;
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_67();
            goto LABEL_94;
        }

      default:
        goto LABEL_57;
    }
  }
}

void sub_27070BA90()
{
  OUTLINED_FUNCTION_13();

  sub_27070BAE4(v0, v1);
}

void sub_27070BAE4(uint64_t result, uint64_t a2)
{
  v5 = v2;
  v6 = a2;
  v7 = result;
  v92 = *MEMORY[0x277D85DE8];
  v9 = *v2;
  v8 = v2[1];
  v10 = a2 & 7;
  if ((a2 & 7) != 0)
  {
    v11 = 0;
    switch(v8 >> 62)
    {
      case 1uLL:
      case 2uLL:
        goto LABEL_95;
      default:
        goto LABEL_3;
    }
  }

  v10 = 72;
  while (2)
  {
    v56 = v10 - 16;
    v57 = v8 >> 62;
    v58 = 0;
    v3 = v9;
    switch(v8 >> 62)
    {
      case 1uLL:
      case 2uLL:
        OUTLINED_FUNCTION_38();
        if (!v27)
        {
          __break(1u);
LABEL_95:
          OUTLINED_FUNCTION_5();
          if (v27)
          {
LABEL_3:
            if (!__OFADD__(v6, 8 * v11))
            {
              OUTLINED_FUNCTION_48();
              OUTLINED_FUNCTION_27();
              OUTLINED_FUNCTION_64();
              v12 = 0;
              switch(v13)
              {
                case 1:
                case 2:
                  goto LABEL_98;
                default:
                  goto LABEL_5;
              }
            }

LABEL_102:
            __break(1u);
            goto LABEL_103;
          }

          __break(1u);
          while (2)
          {
            __break(1u);
LABEL_98:
            OUTLINED_FUNCTION_5();
            if (v27)
            {
              v12 = 8 * v86;
LABEL_5:
              if (!__OFADD__(v6, 64))
              {
                if (!__OFADD__(v12, v6 + 64))
                {
                  OUTLINED_FUNCTION_43();
                  sub_2707A82F0();
                  v9 = *v5;
                  v14 = 72;
                  OUTLINED_FUNCTION_37();
LABEL_8:
                  OUTLINED_FUNCTION_25();
                  switch(v20)
                  {
                    case 1:
                    case 2:
                      OUTLINED_FUNCTION_38();
                      if (!v27)
                      {
                        continue;
                      }

                      v18 = 8 * v26;
LABEL_9:
                      v21 = v6 + v19;
                      if (__OFADD__(v6, v19))
                      {
                        goto LABEL_105;
                      }

                      v22 = __OFADD__(v18, v21);
                      v23 = v18 + v21;
                      if (v22)
                      {
                        goto LABEL_106;
                      }

                      v22 = __OFSUB__(v19, v10);
                      v24 = v19 - v10;
                      if (v22)
                      {
                        goto LABEL_107;
                      }

                      if (v24 - 65 > 0xFFFFFFFFFFFFFF7ELL)
                      {
                        if ((v24 & 0x8000000000000000) != 0)
                        {
                          OUTLINED_FUNCTION_37();
                        }

                        else
                        {
                          v25 = v7 >> v24;
                          if (v24 >= 0x40)
                          {
                            LOBYTE(v25) = 0;
                          }
                        }
                      }

                      else
                      {
                        LOBYTE(v25) = 0;
                      }

                      break;
                    default:
                      goto LABEL_9;
                  }

                  v28 = v23 >> 3;
                  switch(v17)
                  {
                    case 1:
                      v88 = v25;
                      if (v28 < v9 || v28 >= v9 >> 32)
                      {
                        goto LABEL_116;
                      }

                      if (OUTLINED_FUNCTION_50(v15, v16, v8))
                      {
                        goto LABEL_40;
                      }

                      v39 = sub_2707A81F0();
                      if (v39)
                      {
                        v41 = OUTLINED_FUNCTION_52(v39, v40);
                        if (__OFSUB__(v3, v41))
                        {
                          goto LABEL_124;
                        }

                        v42 = v3 - v41 + v7;
                      }

                      else
                      {
                        v42 = 0;
                      }

                      v43 = sub_2707A8220();
                      OUTLINED_FUNCTION_33(v43);
                      v44 = OUTLINED_FUNCTION_0();
                      OUTLINED_FUNCTION_44(v44);
                      OUTLINED_FUNCTION_31();
                      v4 = v42;
LABEL_40:
                      OUTLINED_FUNCTION_19();
                      sub_2707A81C0();
                      v45 = sub_2707A81F0();
                      if (!v45)
                      {
                        goto LABEL_130;
                      }

                      OUTLINED_FUNCTION_53(v45, v46);
                      OUTLINED_FUNCTION_57();
                      if (v22)
                      {
                        goto LABEL_119;
                      }

                      *(v3 + v47) = v88;
LABEL_51:
                      OUTLINED_FUNCTION_37();
LABEL_52:
                      v14 -= 8;
                      if (v14 <= 0x10)
                      {
                        goto LABEL_94;
                      }

                      goto LABEL_8;
                    case 2:
                      if (v28 < *(v9 + 16))
                      {
                        goto LABEL_115;
                      }

                      v87 = v25;
                      if (v28 >= *(v9 + 24))
                      {
                        goto LABEL_118;
                      }

                      if (OUTLINED_FUNCTION_54(v15, v16, v8))
                      {
                        goto LABEL_46;
                      }

                      v4 = *(v9 + 16);
                      v33 = *(v9 + 24);
                      v34 = sub_2707A81F0();
                      if (v34)
                      {
                        v36 = OUTLINED_FUNCTION_51(v34, v35);
                        if (__OFSUB__(v4, v36))
                        {
                          goto LABEL_125;
                        }

                        v37 = v4 - v36 + v7;
                      }

                      else
                      {
                        v37 = 0;
                      }

                      if (__OFSUB__(v33, v4))
                      {
                        goto LABEL_123;
                      }

                      v48 = sub_2707A8220();
                      OUTLINED_FUNCTION_33(v48);
                      v49 = OUTLINED_FUNCTION_0();
                      OUTLINED_FUNCTION_49(v49);
                      OUTLINED_FUNCTION_55();
                      v3 = v37;
LABEL_46:
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v50 = *(v9 + 16);
                        v4 = *(v9 + 24);
                        v51 = sub_2707A82B0();
                        v52 = OUTLINED_FUNCTION_47(v51);
                        *(v52 + 16) = v50;
                        *(v52 + 24) = v4;

                        v9 = v52;
                      }

                      OUTLINED_FUNCTION_19();
                      sub_2707A81C0();
                      v53 = sub_2707A81F0();
                      if (!v53)
                      {
                        goto LABEL_131;
                      }

                      OUTLINED_FUNCTION_56(v53, v54);
                      OUTLINED_FUNCTION_57();
                      if (v22)
                      {
                        goto LABEL_120;
                      }

                      *(v4 + v55) = v87;
                      goto LABEL_51;
                    case 3:
                      goto LABEL_129;
                    default:
                      OUTLINED_FUNCTION_1();
                      if (v31 >= v32)
                      {
                        goto LABEL_117;
                      }

                      *(v30 + v31) = v29;
                      OUTLINED_FUNCTION_7();
                      OUTLINED_FUNCTION_26();
                      goto LABEL_52;
                  }
                }

                goto LABEL_104;
              }

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
LABEL_110:
              __break(1u);
LABEL_111:
              __break(1u);
LABEL_112:
              __break(1u);
LABEL_113:
              __break(1u);
LABEL_114:
              __break(1u);
LABEL_115:
              __break(1u);
LABEL_116:
              __break(1u);
LABEL_117:
              __break(1u);
LABEL_118:
              __break(1u);
LABEL_119:
              __break(1u);
LABEL_120:
              __break(1u);
LABEL_121:
              __break(1u);
LABEL_122:
              __break(1u);
LABEL_123:
              __break(1u);
LABEL_124:
              __break(1u);
LABEL_125:
              __break(1u);
LABEL_126:
              *v5 = xmmword_2707A9D20;
              __break(1u);
LABEL_127:
              *v5 = xmmword_2707A9D20;
              __break(1u);
LABEL_128:
              *v5 = v9;
              v5[1] = v8;
              __break(1u);
LABEL_129:
              *v5 = v9;
              v5[1] = v8;
              __break(1u);
LABEL_130:
              *v5 = xmmword_2707A9D20;
              __break(1u);
LABEL_131:
              *v5 = xmmword_2707A9D20;
              __break(1u);
            }

            break;
          }

          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        v58 = 8 * v64;
LABEL_57:
        v59 = v6 + v56;
        if (__OFADD__(v6, v56))
        {
          goto LABEL_100;
        }

        v22 = __OFADD__(v58, v59);
        v60 = v58 + v59;
        if (v22)
        {
          goto LABEL_101;
        }

        v90 = v6;
        v61 = v60 >> 3;
        v62 = v7 >> (v56 & 0x38);
        switch(v57)
        {
          case 1:
            if (v61 < v9 || v61 >= v9 >> 32)
            {
              goto LABEL_109;
            }

            if (OUTLINED_FUNCTION_50(result, a2, v8))
            {
              goto LABEL_82;
            }

            v71 = sub_2707A81F0();
            if (v71)
            {
              v73 = OUTLINED_FUNCTION_52(v71, v72);
              if (__OFSUB__(v9, v73))
              {
                goto LABEL_121;
              }

              v74 = v9 - v73 + v7;
            }

            else
            {
              v74 = 0;
            }

            v75 = sub_2707A8220();
            OUTLINED_FUNCTION_33(v75);
            v76 = OUTLINED_FUNCTION_0();
            OUTLINED_FUNCTION_44(v76);
            OUTLINED_FUNCTION_31();
            v4 = v74;
LABEL_82:
            OUTLINED_FUNCTION_19();
            sub_2707A81C0();
            v77 = sub_2707A81F0();
            if (!v77)
            {
              goto LABEL_126;
            }

            result = OUTLINED_FUNCTION_53(v77, v78);
            if (__OFSUB__(v61, result))
            {
              goto LABEL_112;
            }

            *(v9 + v61 - result) = v62;
            v8 = v4 | 0x4000000000000000;
LABEL_93:
            v10 -= 8;
            v6 = v90;
            if (v10 > 8)
            {
              continue;
            }

LABEL_94:
            *v5 = v9;
            v5[1] = v8;
            return;
          case 2:
            if (v61 < *(v9 + 16))
            {
              goto LABEL_108;
            }

            if (v61 >= *(v9 + 24))
            {
              goto LABEL_111;
            }

            v89 = v7;
            if (OUTLINED_FUNCTION_54(result, a2, v8))
            {
              goto LABEL_88;
            }

            v4 = *(v9 + 16);
            v65 = *(v9 + 24);
            v66 = sub_2707A81F0();
            if (v66)
            {
              v68 = OUTLINED_FUNCTION_51(v66, v67);
              if (__OFSUB__(v4, v68))
              {
                goto LABEL_122;
              }

              v69 = v4 - v68 + v7;
            }

            else
            {
              v69 = 0;
            }

            if (__OFSUB__(v65, v4))
            {
              goto LABEL_114;
            }

            v79 = sub_2707A8220();
            OUTLINED_FUNCTION_33(v79);
            v80 = OUTLINED_FUNCTION_0();
            OUTLINED_FUNCTION_49(v80);
            OUTLINED_FUNCTION_55();
            v3 = v69;
LABEL_88:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = *(v9 + 16);
              v81 = *(v9 + 24);
              v82 = sub_2707A82B0();
              v83 = OUTLINED_FUNCTION_47(v82);
              *(v83 + 16) = v4;
              *(v83 + 24) = v81;

              v9 = v83;
            }

            v7 = v89;
            OUTLINED_FUNCTION_19();
            sub_2707A81C0();
            v84 = sub_2707A81F0();
            if (!v84)
            {
              goto LABEL_127;
            }

            result = OUTLINED_FUNCTION_56(v84, v85);
            if (__OFSUB__(v61, result))
            {
              goto LABEL_113;
            }

            *(v4 + v61 - result) = v62;
            v8 = v3 | 0x8000000000000000;
            goto LABEL_93;
          case 3:
            goto LABEL_128;
          default:
            OUTLINED_FUNCTION_1();
            if (v61 >= v63)
            {
              goto LABEL_110;
            }

            v91[v61] = v62;
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_67();
            goto LABEL_93;
        }

      default:
        goto LABEL_57;
    }
  }
}

void (*ForceStageCollection.signalingNaNMask.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  *(v1 + 8) = sub_2707090D8(0, v2, v3);
  return sub_27070C270;
}

unint64_t sub_27070C2BC@<X0>(_BYTE *a1@<X8>)
{
  result = ForceStageCollection.isNextThresholdSignalingNaN.getter();
  *a1 = result & 1;
  return result;
}

void (*ForceStageCollection.isNextThresholdSignalingNaN.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  v3 = sub_2707090D8(0, v1, v2);
  OUTLINED_FUNCTION_22(v3 & 1);
  return sub_27070C394;
}

uint64_t sub_27070C3DC@<X0>(_BYTE *a1@<X8>)
{
  result = ForceStageCollection.isPressedThresholdSignalingNaN.getter();
  *a1 = result & 1;
  return result;
}

void ForceStageCollection.isPressedThresholdSignalingNaN.setter()
{
  v0 = OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_32(v0, 0x1Du);
  sub_27070A56C(v1, 0);
}

void (*ForceStageCollection.isPressedThresholdSignalingNaN.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  v3 = sub_2707090D8(0, v1, v2);
  OUTLINED_FUNCTION_22((v3 & 2) != 0);
  return sub_27070C4BC;
}

uint64_t sub_27070C504@<X0>(_BYTE *a1@<X8>)
{
  result = ForceStageCollection.isReleasedThresholdSignalingNaN.getter();
  *a1 = result & 1;
  return result;
}

void ForceStageCollection.isReleasedThresholdSignalingNaN.setter()
{
  v0 = OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_32(v0, 0x1Bu);
  sub_27070A56C(v1, 0);
}

void (*ForceStageCollection.isReleasedThresholdSignalingNaN.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  v3 = sub_2707090D8(0, v1, v2);
  OUTLINED_FUNCTION_22((v3 & 4) != 0);
  return sub_27070C5E4;
}

uint64_t sub_27070C62C@<X0>(_BYTE *a1@<X8>)
{
  result = ForceStageCollection.isNormalizedForceSignalingNaN.getter();
  *a1 = result & 1;
  return result;
}

void ForceStageCollection.isNormalizedForceSignalingNaN.setter()
{
  v0 = OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_32(v0, 0x17u);
  sub_27070A56C(v1, 0);
}

void (*ForceStageCollection.isNormalizedForceSignalingNaN.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  v3 = sub_2707090D8(0, v1, v2);
  OUTLINED_FUNCTION_22((v3 & 8) != 0);
  return sub_27070C70C;
}

uint64_t sub_27070C754@<X0>(_BYTE *a1@<X8>)
{
  result = ForceStageCollection.isNormalizedForceVelocitySignalingNaN.getter();
  *a1 = result & 1;
  return result;
}

void ForceStageCollection.isNormalizedForceVelocitySignalingNaN.setter(char a1)
{
  if (a1)
  {
    v1 = 16;
  }

  else
  {
    v1 = 0;
  }

  v2 = OUTLINED_FUNCTION_42();
  sub_27070A56C(v1 & 0xFFFFFFF0 | v2 & 0xF, 0);
}

void (*ForceStageCollection.isNormalizedForceVelocitySignalingNaN.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  v3 = sub_2707090D8(0, v1, v2);
  OUTLINED_FUNCTION_22((v3 & 0x10) != 0);
  return sub_27070C834;
}

uint64_t sub_27070C874@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = ForceStageCollection.stage.getter(*a2, *(a2 + 8));
  *a1 = result;
  return result;
}

void ForceStageCollection.stage.setter(uint64_t a1)
{
  v1 = 255;
  if (a1 < 255)
  {
    v1 = a1;
  }

  sub_27070A56C(v1 & ~(v1 >> 63), 8);
}

uint64_t ForceStageCollection.stage.modify(void *a1)
{
  a1[1] = v1;
  *a1 = OUTLINED_FUNCTION_34();
  return OUTLINED_FUNCTION_20();
}

void sub_27070C944(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 255)
  {
    v1 = 255;
  }

  sub_27070A56C(v1 & ~(v1 >> 63), 8);
}

unint64_t sub_27070C9A0@<X0>(_BYTE *a1@<X8>)
{
  result = ForceStageCollection.transition.getter();
  *a1 = result;
  return result;
}

void (*ForceStageCollection.transition.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  *(v1 + 8) = sub_2707090D8(16, v2, v3);
  return sub_27070CA5C;
}

unint64_t sub_27070CA90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = ForceStageCollection.nextThreshold.getter(*a1, a1[1]);
  *a2 = v4;
  return result;
}

uint64_t ForceStageCollection.nextThreshold.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6(a1);
  ForceStageCollection.nextThreshold.getter(v2, v3);
  *v1 = v4;
  return OUTLINED_FUNCTION_20();
}

unint64_t sub_27070CBA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = ForceStageCollection.pressedThreshold.getter(*a1, a1[1]);
  *a2 = v4;
  return result;
}

uint64_t ForceStageCollection.pressedThreshold.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6(a1);
  ForceStageCollection.pressedThreshold.getter(v2, v3);
  *v1 = v4;
  return OUTLINED_FUNCTION_20();
}

unint64_t sub_27070CC8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = ForceStageCollection.releasedThreshold.getter(*a1, a1[1]);
  *a2 = v4;
  return result;
}

uint64_t ForceStageCollection.releasedThreshold.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6(a1);
  ForceStageCollection.releasedThreshold.getter(v2, v3);
  *v1 = v4;
  return OUTLINED_FUNCTION_20();
}

unint64_t sub_27070CD70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = ForceStageCollection.normalizedForce.getter(*a1, a1[1]);
  *a2 = v4;
  return result;
}

uint64_t ForceStageCollection.normalizedForce.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6(a1);
  ForceStageCollection.normalizedForce.getter(v2, v3);
  *v1 = v4;
  return OUTLINED_FUNCTION_20();
}

unint64_t sub_27070CE54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = ForceStageCollection.normalizedForceVelocity.getter(*a1, a1[1]);
  *a2 = v4;
  return result;
}

uint64_t ForceStageCollection.normalizedForceVelocity.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6(a1);
  ForceStageCollection.normalizedForceVelocity.getter(v2, v3);
  *v1 = v4;
  return OUTLINED_FUNCTION_20();
}

unint64_t sub_27070CF44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = TouchSensitiveButtonReport.signalingNaNMask.getter(*a2, *(a2 + 8));
  *a1 = result;
  return result;
}

void (*TouchSensitiveButtonReport.signalingNaNMask.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  *(v1 + 8) = sub_2707090D8(8, v2, v3);
  return sub_27070D000;
}

unint64_t sub_27070D044@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = TouchSensitiveButtonReport.isXSignalingNaN.getter(*a2, *(a2 + 8));
  *a1 = result & 1;
  return result;
}

void (*TouchSensitiveButtonReport.isXSignalingNaN.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  v3 = sub_2707090D8(8, v1, v2);
  OUTLINED_FUNCTION_22(v3 & 1);
  return sub_27070D11C;
}

uint64_t sub_27070D15C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = TouchSensitiveButtonReport.isDeltaXSignalingNaN.getter(*a2, *(a2 + 8));
  *a1 = result & 1;
  return result;
}

void TouchSensitiveButtonReport.isDeltaXSignalingNaN.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_32(v0, 0x3Du);
  sub_27070A56C(v1, 8);
}

void (*TouchSensitiveButtonReport.isDeltaXSignalingNaN.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  v3 = sub_2707090D8(8, v1, v2);
  OUTLINED_FUNCTION_22((v3 & 2) != 0);
  return sub_27070D23C;
}

uint64_t sub_27070D27C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = TouchSensitiveButtonReport.isYSignalingNaN.getter(*a2, *(a2 + 8));
  *a1 = result & 1;
  return result;
}

void TouchSensitiveButtonReport.isYSignalingNaN.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_32(v0, 0x3Bu);
  sub_27070A56C(v1, 8);
}

void (*TouchSensitiveButtonReport.isYSignalingNaN.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  v3 = sub_2707090D8(8, v1, v2);
  OUTLINED_FUNCTION_22((v3 & 4) != 0);
  return sub_27070D35C;
}

uint64_t sub_27070D39C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = TouchSensitiveButtonReport.isDeltaYSignalingNaN.getter(*a2, *(a2 + 8));
  *a1 = result & 1;
  return result;
}

void TouchSensitiveButtonReport.isDeltaYSignalingNaN.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_32(v0, 0x37u);
  sub_27070A56C(v1, 8);
}

void (*TouchSensitiveButtonReport.isDeltaYSignalingNaN.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  v3 = sub_2707090D8(8, v1, v2);
  OUTLINED_FUNCTION_22((v3 & 8) != 0);
  return sub_27070D47C;
}

uint64_t sub_27070D4BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = TouchSensitiveButtonReport.isMajorRadiusSignalingNaN.getter(*a2, *(a2 + 8));
  *a1 = result & 1;
  return result;
}

void TouchSensitiveButtonReport.isMajorRadiusSignalingNaN.setter()
{
  v0 = OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_32(v0, 0x2Fu);
  sub_27070A56C(v1, 8);
}

void (*TouchSensitiveButtonReport.isMajorRadiusSignalingNaN.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  v3 = sub_2707090D8(8, v1, v2);
  OUTLINED_FUNCTION_22((v3 & 0x10) != 0);
  return sub_27070D59C;
}

uint64_t sub_27070D5DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = TouchSensitiveButtonReport.isMinorRadiusSignalingNaN.getter(*a2, *(a2 + 8));
  *a1 = result & 1;
  return result;
}

void TouchSensitiveButtonReport.isMinorRadiusSignalingNaN.setter(char a1)
{
  if (a1)
  {
    v1 = 32;
  }

  else
  {
    v1 = 0;
  }

  v2 = OUTLINED_FUNCTION_34();
  sub_27070A56C(v1 & 0xFFFFFFE0 | v2 & 0x1F, 8);
}

void (*TouchSensitiveButtonReport.isMinorRadiusSignalingNaN.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  v3 = sub_2707090D8(8, v1, v2);
  OUTLINED_FUNCTION_22((v3 & 0x20) != 0);
  return sub_27070D6BC;
}

uint64_t sub_27070D700@<X0>(_WORD *a1@<X8>)
{
  result = TouchSensitiveButtonReport.usage.getter();
  *a1 = result;
  return result;
}

void (*TouchSensitiveButtonReport.usage.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  *(v1 + 8) = sub_270709AE8();
  return sub_27070D7BC;
}

uint64_t sub_27070D808@<X0>(_WORD *a1@<X8>)
{
  result = TouchSensitiveButtonReport.usagePage.getter();
  *a1 = result;
  return result;
}

void (*TouchSensitiveButtonReport.usagePage.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  *(v1 + 8) = sub_270709AE8();
  return sub_27070D8C4;
}

unint64_t sub_27070D94C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = TouchSensitiveButtonReport.x.getter(*a1, a1[1]);
  *a2 = v4;
  return result;
}

uint64_t TouchSensitiveButtonReport.x.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6(a1);
  TouchSensitiveButtonReport.x.getter(v2, v3);
  *v1 = v4;
  return OUTLINED_FUNCTION_20();
}

unint64_t sub_27070DA80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = TouchSensitiveButtonReport.deltaX.getter(*a1, a1[1]);
  *a2 = v4;
  return result;
}

uint64_t TouchSensitiveButtonReport.deltaX.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6(a1);
  TouchSensitiveButtonReport.deltaX.getter(v2, v3);
  *v1 = v4;
  return OUTLINED_FUNCTION_20();
}

unint64_t sub_27070DBB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = TouchSensitiveButtonReport.y.getter(*a1, a1[1]);
  *a2 = v4;
  return result;
}

uint64_t TouchSensitiveButtonReport.y.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6(a1);
  TouchSensitiveButtonReport.y.getter(v2, v3);
  *v1 = v4;
  return OUTLINED_FUNCTION_20();
}

unint64_t sub_27070DCE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = TouchSensitiveButtonReport.deltaY.getter(*a1, a1[1]);
  *a2 = v4;
  return result;
}

uint64_t TouchSensitiveButtonReport.deltaY.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6(a1);
  TouchSensitiveButtonReport.deltaY.getter(v2, v3);
  *v1 = v4;
  return OUTLINED_FUNCTION_20();
}

unint64_t sub_27070DE1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = TouchSensitiveButtonReport.majorRadius.getter(*a1, a1[1]);
  *a2 = v4;
  return result;
}

uint64_t TouchSensitiveButtonReport.majorRadius.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6(a1);
  TouchSensitiveButtonReport.majorRadius.getter(v2, v3);
  *v1 = v4;
  return OUTLINED_FUNCTION_20();
}

unint64_t sub_27070DF60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = TouchSensitiveButtonReport.minorRadius.getter(*a1, *(a1 + 8));
  *a2 = v4;
  return result;
}

uint64_t sub_27070DFD4(void (*a1)(void), uint64_t a2, double a3)
{
  a1(((~*&a3 & 0x7FF0000000000000) == 0) & ((*&a3 & 0xFFFFFFFFFFFFFLL) != 0));

  return sub_27070CB04(a2);
}

uint64_t TouchSensitiveButtonReport.minorRadius.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6(a1);
  TouchSensitiveButtonReport.minorRadius.getter(v2, v3);
  *v1 = v4;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_27070E0CC@<X0>(_DWORD *a1@<X8>)
{
  result = TouchSensitiveButtonReport.eventMask.getter();
  *a1 = result;
  return result;
}

void TouchSensitiveButtonReport.eventMask.setter(uint64_t a1)
{
  if (a1 >= 0xFF)
  {
    a1 = 255;
  }

  else
  {
    a1 = a1;
  }

  sub_27070A56C(a1, 240);
}

void (*TouchSensitiveButtonReport.eventMask.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  *(v1 + 8) = sub_2707090D8(240, v2, v3);
  return sub_27070E198;
}

void sub_27070E198(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFF)
  {
    v2 = 255;
  }

  else
  {
    v2 = v1;
  }

  sub_27070A56C(v2, 240);
}

BOOL sub_27070E1EC@<W0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = TouchSensitiveButtonReport.touch.getter(*a1, a1[1], a2);
  *a3 = result;
  return result;
}

uint64_t (*TouchSensitiveButtonReport.touch.modify(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_3(a1);
  v3 = HIDReport.subscript.getter(248, v1, v2);
  OUTLINED_FUNCTION_22(v3);
  return sub_27070E298;
}

uint64_t TouchSensitiveButtonReport.forceStageCollectionRange.getter(uint64_t a1, unint64_t a2)
{
  if (qword_2808293F8 != -1)
  {
    OUTLINED_FUNCTION_2();
    swift_once();
  }

  v4 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v4 = a1;
      break;
    case 2uLL:
      v4 = *(a1 + 16);
      break;
    default:
      break;
  }

  result = v4 + 32;
  if (__OFADD__(v4, 32))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (__OFADD__(result, qword_280829400 >> 3))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (result + (qword_280829400 >> 3) < result)
  {
LABEL_12:
    __break(1u);
    JUMPOUT(0x27070E368);
  }

  return result;
}

uint64_t TouchSensitiveButtonReport.forceStageCollection.getter(uint64_t a1, unint64_t a2)
{
  sub_270706C38(a1, a2);
  TouchSensitiveButtonReport.forceStageCollectionRange.getter(a1, a2);
  v4 = sub_2707A82D0();
  v6 = v5;
  sub_270708D74(a1, a2);

  return sub_27070E5A4(v4, v6);
}

uint64_t sub_27070E3EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = TouchSensitiveButtonReport.forceStageCollection.getter(*a1, *(a1 + 8));
  *a2 = result;
  a2[1] = v4;
  return result;
}

void TouchSensitiveButtonReport.forceStageCollection.setter()
{
  v1 = *v0;
  v14 = *v0;
  v15 = *(v0 + 8);
  sub_270706C38(*v0, v15);
  v2 = TouchSensitiveButtonReport.forceStageCollectionRange.getter(v1, v15);
  v4 = v3;
  v5 = OUTLINED_FUNCTION_58();
  sub_270706C38(v5, v6);
  v7 = OUTLINED_FUNCTION_58();
  sub_27070F3C4(v7, v8, v9, v2, v4);
  v10 = OUTLINED_FUNCTION_58();
  sub_270708D74(v10, v11);
  v12 = OUTLINED_FUNCTION_58();
  sub_270708D74(v12, v13);
  sub_270708D74(*v0, *(v0 + 8));
  *v0 = v14;
  *(v0 + 8) = v15;
}

uint64_t sub_27070E504(uint64_t a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829510, &qword_2707A9F00);
  v7 = sub_27070FA50();
  v5[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v5, v6);
  sub_27076293C(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v4);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return OUTLINED_FUNCTION_46();
}

uint64_t sub_27070E5A4(uint64_t a1, uint64_t a2)
{
  v11[5] = *MEMORY[0x277D85DE8];
  v11[3] = MEMORY[0x277CC9318];
  v11[4] = MEMORY[0x277CC9300];
  v11[0] = a1;
  v11[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v11, MEMORY[0x277CC9318]);
  v3 = *v2;
  v4 = v2[1];
  switch(v4 >> 62)
  {
    case 1uLL:
      v7 = v3 >> 32;
      if (v3 >> 32 < v3)
      {
        __break(1u);
      }

      v6 = v3;
      goto LABEL_8;
    case 2uLL:
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
LABEL_8:
      sub_2707629C8(v6, v7, &v10);
      goto LABEL_9;
    case 3uLL:
      memset(v9, 0, 14);
      v5 = v9;
      goto LABEL_5;
    default:
      v9[0] = *v2;
      LOWORD(v9[1]) = v4;
      BYTE2(v9[1]) = BYTE2(v4);
      BYTE3(v9[1]) = BYTE3(v4);
      BYTE4(v9[1]) = BYTE4(v4);
      BYTE5(v9[1]) = BYTE5(v4);
      v5 = v9 + BYTE6(v4);
LABEL_5:
      sub_27076293C(v9, v5, &v10);
LABEL_9:
      __swift_destroy_boxed_opaque_existential_1(v11);
      return OUTLINED_FUNCTION_46();
  }
}

uint64_t sub_27070E734(uint64_t a1, uint64_t a2)
{
  v7[3] = MEMORY[0x277D838B0];
  v7[4] = MEMORY[0x277CC9C18];
  v7[0] = a1;
  v7[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v7, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2)
  {
    v4 = v2[1];
    v5 = v4 - v3;
    if (v4 != v3)
    {
      if (v5 <= 14)
      {
        sub_2707A8260();
      }

      else if (v5 >= 0x7FFFFFFF)
      {
        MEMORY[0x2743A7810]();
      }

      else
      {
        MEMORY[0x2743A7830]();
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v7);
  return OUTLINED_FUNCTION_46();
}

uint64_t TouchSensitiveButtonReport.forceStageCollection.modify(uint64_t *a1)
{
  a1[2] = v1;
  v4 = *v1;
  v3 = v1[1];
  sub_270706C38(v4, v3);
  TouchSensitiveButtonReport.forceStageCollectionRange.getter(v4, v3);
  v5 = sub_2707A82D0();
  v7 = v6;
  sub_270708D74(v4, v3);
  *a1 = sub_27070E5A4(v5, v7);
  a1[1] = v8;
  return OUTLINED_FUNCTION_20();
}

void sub_27070E884(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = OUTLINED_FUNCTION_28();
    sub_270706C38(v2, v3);
    OUTLINED_FUNCTION_28();
    TouchSensitiveButtonReport.forceStageCollection.setter();
    v4 = OUTLINED_FUNCTION_28();

    sub_270708D74(v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_28();
    TouchSensitiveButtonReport.forceStageCollection.setter();
  }
}

unint64_t ForceStageCollection.init(forceStageEvent:)(void *a1)
{
  if (qword_2808293F8 != -1)
  {
    OUTLINED_FUNCTION_2();
    swift_once();
  }

  v10 = HIDReport.init(bitCount:id:)(qword_280829400, 0);
  IntegerValue = IOHIDEventGetIntegerValue();
  v3 = 255;
  if (IntegerValue < 255)
  {
    v3 = IntegerValue;
  }

  sub_27070A56C(v3 & ~(v3 >> 63), 8);
  result = IOHIDEventGetIntegerValue();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    sub_27070A56C(result, 16);
    IOHIDEventGetDoubleValue();
    ForceStageCollection.nextThreshold.setter(v5);
    IOHIDEventGetDoubleValue();
    ForceStageCollection.pressedThreshold.setter(v6);
    IOHIDEventGetDoubleValue();
    ForceStageCollection.releasedThreshold.setter(v7);
    IOHIDEventGetDoubleValue();
    ForceStageCollection.normalizedForce.setter(v8);
    IOHIDEventGetDoubleValue();
    ForceStageCollection.normalizedForceVelocity.setter(v9);

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t TouchSensitiveButtonReport.init(touchSensitiveButtonEvent:)(char *a1)
{
  if (qword_2808293E0 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v47 = qword_2808293E8;
    v48 = qword_2808293F0;
    sub_270706C38(qword_2808293E8, qword_2808293F0);
    v2 = HIDReportDescriptor.reportBitCount(for:)(0x15u);
    sub_270708D74(v47, v48);
    v51 = HIDReport.init(bitCount:id:)(v2, 21);
    v52 = v3;
    v4 = a1;
    IOHIDEventGetIntegerValue();
    IntegerValue = IOHIDEventGetIntegerValue();

    sub_27070AAF8(IntegerValue, 16);
    v6 = v4;
    v7 = IOHIDEventGetIntegerValue();
    IOHIDEventGetIntegerValue();

    sub_27070AAF8(v7, 32);
    IOHIDEventGetDoubleValue();
    TouchSensitiveButtonReport.x.setter(v8);
    IOHIDEventGetDoubleValue();
    TouchSensitiveButtonReport.deltaX.setter(v9);
    IOHIDEventGetDoubleValue();
    TouchSensitiveButtonReport.y.setter(v10);
    IOHIDEventGetDoubleValue();
    TouchSensitiveButtonReport.deltaY.setter(v11);
    IOHIDEventGetDoubleValue();
    TouchSensitiveButtonReport.majorRadius.setter(v12);
    IOHIDEventGetDoubleValue();
    TouchSensitiveButtonReport.minorRadius.setter(v13);
    v14 = IOHIDEventGetIntegerValue();
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      JUMPOUT(0x27070EE60);
    }

    if (HIDWORD(v14))
    {
      goto LABEL_31;
    }

    if (v14 >= 0xFF)
    {
      v14 = 255;
    }

    sub_27070A56C(v14, 240);
    v15 = IOHIDEventGetIntegerValue() != 0;
    HIDReport.subscript.setter(v15, 248);
    v16 = [v6 children];
    if (v16)
    {
      v17 = v16;
      sub_27070F6B0();
      v18 = sub_2707A8710();

      v19 = sub_27070EFE4(v18, sub_27071B7D4, sub_27070F1F8);
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    a1 = *(v19 + 16);
    if (!a1)
    {
      break;
    }

    v46 = v6;
    v20 = v19 + 32;
    while (1)
    {
      sub_27070F5BC(v20, &v47);
      v21 = v50;
      __swift_project_boxed_opaque_existential_1(&v47, v49);
      v22 = OUTLINED_FUNCTION_62();
      if (v23(v22, v21) == 41)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(&v47);
LABEL_22:
      v20 += 40;
      if (!--a1)
      {

        goto LABEL_25;
      }
    }

    v24 = v50;
    __swift_project_boxed_opaque_existential_1(&v47, v49);
    v25 = OUTLINED_FUNCTION_62();
    v27 = v26(v25, v24);
    __swift_destroy_boxed_opaque_existential_1(&v47);
    v28 = v27;
    ForceStageCollection.init(forceStageEvent:)(v28);
    v29 = v51;
    v30 = v52;
    v47 = v51;
    v48 = v52;
    sub_270706C38(v51, v52);
    if (qword_2808293F8 != -1)
    {
      OUTLINED_FUNCTION_2();
      swift_once();
    }

    v31 = 0;
    switch(v30 >> 62)
    {
      case 1uLL:
        v31 = v29;
        break;
      case 2uLL:
        v31 = *(v29 + 16);
        break;
      default:
        break;
    }

    v32 = v31 + 32;
    if (!__OFADD__(v31, 32))
    {
      v33 = v32 + (qword_280829400 >> 3);
      if (__OFADD__(v32, qword_280829400 >> 3))
      {
        goto LABEL_27;
      }

      if (v33 < v32)
      {
        goto LABEL_28;
      }

      v34 = OUTLINED_FUNCTION_65();
      sub_270706C38(v34, v35);
      v36 = OUTLINED_FUNCTION_65();
      sub_27070F3C4(v36, v37, v38, v32, v33);

      v39 = OUTLINED_FUNCTION_65();
      sub_270708D74(v39, v40);
      v41 = OUTLINED_FUNCTION_65();
      sub_270708D74(v41, v42);
      v43 = v47;
      v44 = v48;
      sub_270708D74(v29, v30);
      v51 = v43;
      v52 = v44;
      goto LABEL_22;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

LABEL_25:

  return v51;
}

uint64_t sub_27070EEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v17 = MEMORY[0x277D84F90];
    sub_27071B7D4(0, v3, 0);
    v4 = v17;
    v8 = (a1 + 32);
    do
    {
      v9 = *v8;
      v17 = v4;
      v10 = *(v4 + 16);
      v11 = *(v4 + 24);
      v12 = v9;
      if (v10 >= v11 >> 1)
      {
        sub_27071B7D4(v11 > 1, v10 + 1, 1);
        v4 = v17;
      }

      v15 = a2;
      v16 = a3;
      *&v14 = v12;
      *(v4 + 16) = v10 + 1;
      sub_27070F8A8(&v14, v4 + 40 * v10 + 32);
      ++v8;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_27070EFE4(unint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v22 = a3;
  if (a1 >> 62)
  {
    v5 = sub_2707A8CA0();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v26 = MEMORY[0x277D84F90];
  result = (a2)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v21 = a2;
    v8 = 0;
    v6 = v26;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = v22(v8, a1);
      }

      else
      {
        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = sub_27070F6B0();
      v24 = v11;
      v25 = &protocol witness table for HIDEvent;
      v23[0] = v10;
      v26 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        v21(v12 > 1, v13 + 1, 1);
        v14 = v24;
        v15 = v25;
      }

      else
      {
        v14 = v11;
        v15 = &protocol witness table for HIDEvent;
      }

      ++v8;
      v16 = __swift_mutable_project_boxed_opaque_existential_1(v23, v14);
      v17 = MEMORY[0x28223BE20](v16, v16);
      v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v19, v17);
      sub_27070F8C0(v13, v19, &v26, v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v23);
      v6 = v26;
    }

    while (v5 != v8);
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_27070F1F8(unint64_t a1, unint64_t a2)
{
  sub_27070F6B0();
  if (a2 >> 62)
  {
    v4 = sub_2707A8CB0();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v4;
    }

LABEL_10:
    sub_2707A8B00();
    v6 = 0xD000000000000046;
    v5 = 0x80000002707B4100;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v4;
  }

  sub_2707A8B00();
  v5 = 0x80000002707B40B0;
  v6 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x2743A7BE0](v6, v5);
  v8 = sub_2707A9010();
  MEMORY[0x2743A7BE0](v8);

  MEMORY[0x2743A7BE0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v9 = sub_2707A9010();
  MEMORY[0x2743A7BE0](v9);

  result = sub_2707A8C80();
  __break(1u);
  return result;
}

uint64_t sub_27070F3C4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
      }

      v7 = a1;
      if (sub_2707A81F0() && __OFSUB__(v7, sub_2707A8210()))
      {
        goto LABEL_14;
      }

LABEL_10:
      sub_2707A8200();
      return sub_2707A82C0();
    case 2uLL:
      v5 = *(a1 + 16);
      v6 = *(a1 + 24);
      if (sub_2707A81F0() && __OFSUB__(v5, sub_2707A8210()))
      {
        goto LABEL_13;
      }

      if (!__OFSUB__(v6, v5))
      {
        goto LABEL_10;
      }

      __break(1u);
      return sub_2707A82C0();
    default:
      return sub_2707A82C0();
  }
}

uint64_t sub_27070F5BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_27070F6B0()
{
  result = qword_28082A300;
  if (!qword_28082A300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28082A300);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_27070F730(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 16))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_27070F780(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDUsage(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HIDUsage(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void sub_27070F85C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_27070F8A8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_27070F8C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_27070F8A8(&v12, v10 + 40 * a1 + 32);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_27070FA50()
{
  result = qword_280829518;
  if (!qword_280829518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280829510, &qword_2707A9F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829518);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0()
{
  OUTLINED_FUNCTION_13();

  return sub_270709084();
}

uint64_t _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0()
{
  OUTLINED_FUNCTION_13();

  return sub_2707095C4();
}

uint64_t _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0()
{
  OUTLINED_FUNCTION_13();

  return sub_270709030();
}

uint64_t _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0()
{
  OUTLINED_FUNCTION_13();

  return sub_270709FE0();
}

void _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0()
{
  OUTLINED_FUNCTION_13();

  sub_27070A518();
}

void _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcis_0()
{
  OUTLINED_FUNCTION_13();

  sub_27070AAA4();
}

void _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0()
{
  OUTLINED_FUNCTION_13();

  sub_27070B30C();
}

void _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0()
{
  OUTLINED_FUNCTION_13();

  sub_27070BA90();
}

uint64_t OUTLINED_FUNCTION_10()
{

  return sub_270709618();
}

uint64_t OUTLINED_FUNCTION_12(uint64_t result, char a2, char a3, char a4, char a5, char a6, char a7, char a8)
{
  *(v13 - 110) = v8;
  *(v13 - 109) = v9;
  *(v13 - 108) = v10;
  *(v13 - 107) = v11;
  *(v13 - 106) = result;
  *(v13 - 105) = a2;
  *(v13 - 104) = a3;
  *(v13 - 103) = a4;
  *(v13 - 102) = v12;
  *(v13 - 101) = a5;
  *(v13 - 100) = a6;
  *(v13 - 99) = a7;
  *(v13 - 98) = a8;
  return result;
}

uint64_t OUTLINED_FUNCTION_14(uint64_t result, char a2, char a3, char a4, char a5, char a6, char a7, char a8)
{
  *(v13 - 110) = v8;
  *(v13 - 109) = v9;
  *(v13 - 108) = v10;
  *(v13 - 107) = result;
  *(v13 - 106) = a2;
  *(v13 - 105) = a3;
  *(v13 - 104) = a4;
  *(v13 - 103) = a5;
  *(v13 - 102) = v11;
  *(v13 - 101) = a6;
  *(v13 - 100) = a7;
  *(v13 - 99) = a8;
  *(v13 - 98) = v12;
  return result;
}

unint64_t OUTLINED_FUNCTION_15()
{

  return sub_2707090D8(v0, v2, v1);
}

unint64_t OUTLINED_FUNCTION_21(uint64_t a1, unint64_t a2)
{

  return sub_2707090D8(8, a1, a2);
}

uint64_t OUTLINED_FUNCTION_27()
{

  return sub_2707A82F0();
}

uint64_t OUTLINED_FUNCTION_31()
{
}

uint64_t OUTLINED_FUNCTION_33(uint64_t a1)
{

  return swift_allocObject();
}

unint64_t OUTLINED_FUNCTION_34()
{
  v2 = *v0;
  v3 = v0[1];

  return sub_2707090D8(8, v2, v3);
}

uint64_t OUTLINED_FUNCTION_39(uint64_t a1, uint64_t a2)
{

  return sub_2707A8210();
}

uint64_t OUTLINED_FUNCTION_40(uint64_t a1, uint64_t a2)
{

  return sub_2707A8210();
}

unint64_t OUTLINED_FUNCTION_42()
{
  v2 = *v0;
  v3 = v0[1];

  return sub_2707090D8(0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_43()
{

  return sub_2707A82E0();
}

uint64_t OUTLINED_FUNCTION_44(uint64_t a1)
{

  return sub_2707A81D0();
}

uint64_t OUTLINED_FUNCTION_47(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_48()
{

  return sub_2707A82E0();
}

uint64_t OUTLINED_FUNCTION_49(uint64_t a1)
{

  return sub_2707A81D0();
}

uint64_t OUTLINED_FUNCTION_50(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_51(uint64_t a1, uint64_t a2)
{

  return sub_2707A8210();
}

uint64_t OUTLINED_FUNCTION_52(uint64_t a1, uint64_t a2)
{

  return sub_2707A8210();
}

uint64_t OUTLINED_FUNCTION_53(uint64_t a1, uint64_t a2)
{

  return sub_2707A8210();
}

uint64_t OUTLINED_FUNCTION_54(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_55()
{
}

uint64_t OUTLINED_FUNCTION_56(uint64_t a1, uint64_t a2)
{

  return sub_2707A8210();
}

void OUTLINED_FUNCTION_59()
{
  *(v3 - 136) = v2;
  *(v3 - 128) = v1;
  *(v3 - 120) = v0;
}

uint64_t static FluidTouchGestureEvent.dispatch(report:platform:)(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = *a3;
  type metadata accessor for FluidTouchGesture();
  *(swift_initStackObject() + 16) = v3;
  return FluidTouchGesture.dispatch(report:)();
}

uint64_t FluidTouchGesture.__allocating_init(platform:)(_BYTE *a1)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  return result;
}

uint64_t FluidTouchGesture.dispatch(report:)()
{
  if (*(v0 + 16) != 1)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_0_0();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  OUTLINED_FUNCTION_0_0();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  OUTLINED_FUNCTION_0_0();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  OUTLINED_FUNCTION_0_0();
  sub_270710834();
  OUTLINED_FUNCTION_0_0();
  sub_270710834();
  OUTLINED_FUNCTION_0_0();
  sub_270710834();
  OUTLINED_FUNCTION_0_0();
  _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  mach_absolute_time();
  FluidTouchGestureEvent = IOHIDEventCreateFluidTouchGestureEvent();
  IOHIDEventSetIntegerValue();
  OUTLINED_FUNCTION_0_0();
  v2 = vcvtd_n_f64_s32(_s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), 0x10uLL);
  OUTLINED_FUNCTION_0_0();
  _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
  if (v2 != 0.0 || (OUTLINED_FUNCTION_0_0(), _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), OUTLINED_FUNCTION_0_0(), vcvtd_n_f64_s32(_s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0(), 0x10uLL) != 0.0))
  {
    OUTLINED_FUNCTION_0_0();
    _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
    OUTLINED_FUNCTION_0_0();
    _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
    mach_absolute_time();
    VelocityEvent = IOHIDEventCreateVelocityEvent();
    IOHIDEventAppendEvent();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829528, &qword_2707A9F30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2707A9CF0;
  v5 = *(v0 + 16);
  v6 = FluidTouchGestureEvent;
  mach_absolute_time();
  if (v5 == 1)
  {
    DigitizerEvent = IOHIDEventCreateDigitizerEvent();
    v8 = &protocol witness table for DigitizerEvent;
    v9 = &type metadata for DigitizerEvent;
  }

  else
  {
    DigitizerEvent = IOHIDEventCreateRelativePointerEvent();
    v8 = &protocol witness table for PointerEvent;
    v9 = &type metadata for PointerEvent;
  }

  IOHIDEventAppendEvent();

  *(v4 + 56) = v9;
  *(v4 + 64) = v8;
  *(v4 + 32) = DigitizerEvent;

  return v4;
}

double sub_2707107E4()
{
  v0 = _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcig_0();
  if ((v0 & 0x80) != 0)
  {
    return -v0 * -0.0078125;
  }

  else
  {
    return v0 / 127.0;
  }
}

double sub_270710834()
{
  v0 = _s12UniversalHID9HIDReportV_2ass5Int16VSi_AFmtcig_0();
  if ((v0 & 0x8000) != 0)
  {
    return -v0 * -0.0000305175781;
  }

  else
  {
    return v0 / 32767.0;
  }
}

double sub_270710884()
{
  v0 = _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcig_0();
  result = vcvtd_n_f64_u64(v0, 0x3FuLL);
  if (v0 < 0)
  {
    return (~v0 + 1.0) * -1.08420217e-19;
  }

  return result;
}

double sub_2707108C4()
{
  v0 = _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcig_0();
  if ((v0 & 0x80000000) != 0)
  {
    return -v0 * -4.65661287e-10;
  }

  else
  {
    return v0 / 2147483650.0;
  }
}

uint64_t sub_270710980@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = AppleVendorUsage.init(rawValue:)(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

unint64_t sub_2707109FC(uint64_t a1)
{
  result = sub_270710A24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_270710A24()
{
  result = qword_280829530;
  if (!qword_280829530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829530);
  }

  return result;
}

unint64_t sub_270710A7C()
{
  result = qword_280829538;
  if (!qword_280829538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829538);
  }

  return result;
}

void HIDUsageProtocol<>.usage.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_0();
  v3 = *(*(v2 + 24) + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v4, v5);
  v6 = swift_checkMetadataState();
  OUTLINED_FUNCTION_0_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9, v10);
  v27 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v27 - v14;
  sub_2707A86D0();
  OUTLINED_FUNCTION_3_1();
  if (sub_2707A89F0())
  {
    OUTLINED_FUNCTION_1_1();
    if (sub_2707A89E0() > 64)
    {
      v28 = 0x8000000000000000;
      v16 = v6;
      OUTLINED_FUNCTION_3_1();
      if (sub_2707A89F0())
      {
        OUTLINED_FUNCTION_1_1();
        if (sub_2707A89E0() < 64)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

      v16 = v6;
      OUTLINED_FUNCTION_3_1();
      v17 = sub_2707A89F0();
      OUTLINED_FUNCTION_1_1();
      v18 = sub_2707A89E0();
      if (v17)
      {
        if (v18 > 64)
        {
LABEL_8:
          v19 = sub_270710EEC();
          OUTLINED_FUNCTION_8_0(v19, MEMORY[0x277D83B88], v19);
          sub_2707A8570();
          OUTLINED_FUNCTION_7_0();
          v20(v3, v6);
          if ((v16 & 1) == 0)
          {
            goto LABEL_14;
          }

LABEL_25:
          __break(1u);
          return;
        }

        swift_getAssociatedConformanceWitness();
        sub_2707A8EB0();
        v21 = v27;
        sub_2707A8E80();
        sub_2707A8570();
        OUTLINED_FUNCTION_7_0();
        v22(v21, v6);
        if (v6)
        {
          goto LABEL_25;
        }

LABEL_13:
        OUTLINED_FUNCTION_1_1();
        sub_2707A89D0();
        goto LABEL_14;
      }

      if (v18 < 64)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_1_1();
  if (sub_2707A89E0() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v28 = 0x7FFFFFFFFFFFFFFFLL;
    OUTLINED_FUNCTION_3_1();
    v23 = sub_2707A89F0();
    OUTLINED_FUNCTION_1_1();
    v24 = sub_2707A89E0();
    if ((v23 & 1) == 0)
    {
      break;
    }

    if (v24 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    v25 = sub_270710EEC();
    OUTLINED_FUNCTION_8_0(v25, MEMORY[0x277D83B88], v25);
    sub_2707A8570();
    OUTLINED_FUNCTION_7_0();
    v26(v23, v6);
    if (v6)
    {
      __break(1u);
LABEL_19:
      OUTLINED_FUNCTION_1_1();
      if (sub_2707A89E0() == 64)
      {
        OUTLINED_FUNCTION_3_1();
        if ((sub_2707A89F0() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_24;
  }

  if (v24 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  OUTLINED_FUNCTION_1_1();
  sub_2707A89D0();
LABEL_24:
  OUTLINED_FUNCTION_1_1();
  sub_2707A89D0();
  (*(v8 + 8))(v15, v6);
  OUTLINED_FUNCTION_12_0();
}

unint64_t sub_270710EEC()
{
  result = qword_280829540;
  if (!qword_280829540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829540);
  }

  return result;
}

void HIDUsagePageProtocol<>.init(page:usage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11_0();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_2707A8930();
  OUTLINED_FUNCTION_0_1();
  v16 = v15;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v17, v18);
  OUTLINED_FUNCTION_6_0();
  if ((*(v5 + 24))(v7, v5) == v11)
  {
    v21 = v9;
    sub_270710EEC();
    HIDUsageProtocol<>.init<A>(_:)(&v21, v7, MEMORY[0x277D83B88]);
    if (__swift_getEnumTagSinglePayload(v3, 1, v7) != 1)
    {
      OUTLINED_FUNCTION_5_0();
      (*(v20 + 32))(v13, v3, v7);
      v19 = 0;
      goto LABEL_6;
    }

    (*(v16 + 8))(v3, v14);
  }

  v19 = 1;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v13, v19, 1, v7);
  OUTLINED_FUNCTION_12_0();
}

void HIDUsageProtocol.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11_0();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v25 = v14;
  v15 = sub_2707A8930();
  OUTLINED_FUNCTION_0_1();
  v17 = v16;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_6_0();
  v20 = (*(v5 + 16))(v9, v5);
  v21 = (*(v5 + 24))(v9, v5);
  (*(v7 + 32))(v20, v21, v11, v7);
  OUTLINED_FUNCTION_5_0();
  (*(v22 + 8))(v13, v9);
  if (__swift_getEnumTagSinglePayload(v3, 1, v11) == 1)
  {
    (*(v17 + 8))(v3, v15);
    v23 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    (*(v24 + 32))(v25, v3, v11);
    v23 = 0;
  }

  __swift_storeEnumTagSinglePayload(v25, v23, 1, v11);
  OUTLINED_FUNCTION_12_0();
}

void HIDUsageProtocol<>.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11_0();
  v53 = v4;
  v54 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v56 = v13;
  sub_2707A8930();
  OUTLINED_FUNCTION_0_1();
  v47 = v15;
  v48 = v14;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v16, v17);
  v52 = &v47 - v18;
  v19 = *(v8 - 8);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_2707A8930();
  OUTLINED_FUNCTION_0_1();
  v49 = v26;
  v50 = v25;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v47 - v29;
  v31 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v47 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36, v37);
  v40 = &v47 - v39;
  v41 = *(v19 + 16);
  v55 = v12;
  v41(v23, v12, v8, v38);
  sub_2707A87D0();
  if (__swift_getEnumTagSinglePayload(v30, 1, AssociatedTypeWitness) == 1)
  {
    (*(v19 + 8))(v55, v8);
    v43 = v49;
    v42 = v50;
  }

  else
  {
    (*(v31 + 32))(v40, v30, AssociatedTypeWitness);
    (*(v31 + 16))(v35, v40, AssociatedTypeWitness);
    v30 = v52;
    sub_2707A86E0();
    (*(v19 + 8))(v55, v8);
    (*(v31 + 8))(v40, AssociatedTypeWitness);
    if (__swift_getEnumTagSinglePayload(v30, 1, v10) != 1)
    {
      OUTLINED_FUNCTION_5_0();
      v45 = v56;
      (*(v46 + 32))(v56, v30, v10);
      v44 = 0;
      goto LABEL_7;
    }

    v43 = v47;
    v42 = v48;
  }

  (*(v43 + 8))(v30, v42);
  v44 = 1;
  v45 = v56;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v45, v44, 1, v10);
  OUTLINED_FUNCTION_12_0();
}

uint64_t HIDUsage.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 16))(a2, a3);
  v6 = OUTLINED_FUNCTION_3_1();
  v8 = v7(v6);
  OUTLINED_FUNCTION_5_0();
  (*(v9 + 8))(a1, a2);
  return v5 | (v8 << 16);
}

uint64_t sub_2707117E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656761705FLL && a2 == 0xE500000000000000;
  if (v4 || (sub_2707A8EA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65676173755FLL && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2707A8EA0();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2707118E4(char a1)
{
  sub_2707A8F60();
  MEMORY[0x2743A8500](a1 & 1);
  return sub_2707A8FC0();
}

uint64_t sub_270711938(char a1)
{
  if (a1)
  {
    return 0x65676173755FLL;
  }

  else
  {
    return 0x656761705FLL;
  }
}

uint64_t sub_270711984(uint64_t a1)
{
  v2 = *v1;
  sub_2707A8F60();
  MEMORY[0x2743A8500](v2);
  return sub_2707A8FC0();
}

uint64_t sub_2707119D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2707117E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270711A18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2707118A4();
  *a1 = result;
  return result;
}

uint64_t sub_270711A40(uint64_t a1)
{
  v2 = sub_270711C04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270711A7C(uint64_t a1)
{
  v2 = sub_270711C04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HIDUsage.encode(to:)(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829548, &qword_2707AA0A0);
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_6_0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270711C04();
  sub_2707A8FE0();
  sub_2707A8E40();
  if (!v2)
  {
    sub_2707A8E40();
  }

  return (*(v7 + 8))(v3, v5);
}

unint64_t sub_270711C04()
{
  result = qword_280829550;
  if (!qword_280829550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829550);
  }

  return result;
}

uint64_t HIDUsage.hashValue.getter(uint64_t a1)
{
  sub_2707A8F60();
  sub_2707A8F90();
  sub_2707A8F90();
  return sub_2707A8FC0();
}

uint64_t HIDUsage.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280829558, &qword_2707AA0A8);
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v14[-v8];
  v10 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_270711C04();
  sub_2707A8FD0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14[15] = 0;
    v11 = sub_2707A8D90();
    v14[14] = 1;
    v12 = sub_2707A8D90();
    (*(v5 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v11 | (v12 << 16);
  }

  return v10;
}

uint64_t sub_270711E94@<X0>(unsigned __int16 a1@<W0>, unsigned __int16 a2@<W1>, uint64_t a3@<X8>)
{
  result = HIDUsage.init(page:usage:)(a1, a2);
  *a3 = result;
  *(a3 + 4) = 0;
  return result;
}

uint64_t sub_270711EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = HIDUsage.init<A>(_:)(a1, a2, a3);
  *a4 = result;
  *(a4 + 4) = 0;
  return result;
}

uint64_t sub_270711EEC@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  result = HIDUsage.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_270711F44(uint64_t a1)
{
  v2 = *v1;
  sub_2707A8F60();
  HIDUsage.hash(into:)(v4, v2);
  return sub_2707A8FC0();
}

uint64_t HIDUsage.description.getter(unsigned int a1)
{
  v1 = HIWORD(a1);
  v22 = a1;
  v2 = sub_270710EEC();
  v10 = OUTLINED_FUNCTION_10_0(v2, v3, v4, v5, v6, v7, v8, v9, v22);
  v18 = OUTLINED_FUNCTION_10_0(v10, v11, v12, v13, v14, v15, v16, v17, v1);
  v20 = v19;
  MEMORY[0x2743A7BE0](58, 0xE100000000000000);
  MEMORY[0x2743A7BE0](v18, v20);

  return v10;
}

unint64_t sub_270712054(uint64_t a1)
{
  result = sub_27071207C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_27071207C()
{
  result = qword_280829560;
  if (!qword_280829560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829560);
  }

  return result;
}

unint64_t sub_2707120D4()
{
  result = qword_280829568;
  if (!qword_280829568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829568);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HIDUsage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HIDUsage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x270712360);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2707123B0()
{
  result = qword_280829570;
  if (!qword_280829570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829570);
  }

  return result;
}

unint64_t sub_270712408()
{
  result = qword_280829578;
  if (!qword_280829578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829578);
  }

  return result;
}

unint64_t sub_270712460()
{
  result = qword_280829580;
  if (!qword_280829580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829580);
  }

  return result;
}

uint64_t sub_270712530@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_27076860C(a2, a3);
  *a1 = result;
  *(a1 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_2707125BC@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_270768670(a2, a3);
  *a1 = result;
  *(a1 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t result)
{
  *v1 = result;
  v1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2707A8960();
}

void OUTLINED_FUNCTION_9_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  HIDUsageProtocol.init<A>(_:)(a1, a4, a2);
}

uint64_t OUTLINED_FUNCTION_10_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2707A8680();
}

uint64_t Platform.hashValue.getter()
{
  v1 = *v0;
  sub_2707A8F60();
  MEMORY[0x2743A8500](v1);
  return sub_2707A8FC0();
}

unint64_t sub_2707127BC()
{
  result = qword_280829588;
  if (!qword_280829588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280829588);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Platform(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Platform(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x270712964);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t FluidTouchGestureFilter.__allocating_init(service:)(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v4 = swift_allocObject();
  FluidTouchGestureFilter.init(platform:service:)(&v6, a1, a2);
  return v4;
}

uint64_t FluidTouchGestureFilter.__allocating_init(platform:service:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  FluidTouchGestureFilter.init(platform:service:)(a1, a2, a3);
  return v6;
}

void *FluidTouchGestureFilter.init(platform:service:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0x20000;
  if (*a1 == 1)
  {
    v5 = 2048;
  }

  v3[4] = 0;
  v3[5] = 0;
  v3[2] = v5;
  ObjectType = swift_getObjectType();
  v7 = (*(a3 + 16))(ObjectType, a3);
  swift_unknownObjectRelease();
  v3[3] = v7;
  return v3;
}

uint64_t FluidTouchGestureFilter.filterEvent(_:)(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = *(v2 + 16);
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  v10 = (*(v9 + 24))(v8, v9);
  if ((HIDEventType.maskValue.getter(v10) & v7) != 0)
  {
    v11 = a2[3];
    v12 = a2[4];
    v374 = a2;
    __swift_project_boxed_opaque_existential_1(a2, v11);
    v13 = (*(v12 + 8))(v11, v12);
    v14 = *(v13 + 16);
    if (v14)
    {
      v342 = a1;
      v358 = v2;
      v15 = 0;
      v326 = v13;
      v16 = v13 + 32;
      v17 = MEMORY[0x277D84F90];
      while (1)
      {
        sub_27070F5BC(v16, v394);
        v18 = v395;
        v19 = v396;
        __swift_project_boxed_opaque_existential_1(v394, v395);
        v20 = OUTLINED_FUNCTION_0_2();
        v22 = v21(v20);
        if (v22 == 4)
        {
          break;
        }

        switch(v22)
        {
          case 5:
            v184 = OUTLINED_FUNCTION_28_0(v22, v23, v24, v25, v26, v27, v28, v29);
            OUTLINED_FUNCTION_22_0(v184, v185, v186, v187, v188, v189, v190, v191, v326, v342, v358, v374, v390, v391, v392, v393);
            v192 = OUTLINED_FUNCTION_7_1();
            v194 = v193(v192);
            if (v194 != 5)
            {
              goto LABEL_135;
            }

            OUTLINED_FUNCTION_22_0(v194, v195, v196, v197, v198, v199, v200, v201, v337, v353, v369, v385, v390, v391, v392, v393);
            v202 = OUTLINED_FUNCTION_7_1();
            v204 = v203(v202);
            OUTLINED_FUNCTION_29_0(v204, v205, v206, v207, v208, v209, v210, v211);
            if (v15)
            {
              v15 = 1;
            }

            else
            {
              IOHIDEventGetPhase();
              OUTLINED_FUNCTION_6_1();
              if (v212)
              {
                v15 = 1;
              }

              else
              {
                v15 = 0;
              }
            }

            if (qword_2808294D0 != -1)
            {
              swift_once();
            }

            OUTLINED_FUNCTION_27_0(&qword_28082A6B8);
            v294 = HIDReportDescriptor.reportBitCount(for:)(0x10u);
            OUTLINED_FUNCTION_26_0(v294, v295, v296, v297, v298, v299, v300, v301, v338, v354, v370, v386, v390, v391);
            v302 = HIDReport.init(bitCount:id:)(&v390, 16);
            v310 = OUTLINED_FUNCTION_11_1(v302, v303, v304, v305, v306, v307, v308, v309, v341, v357, v373, v389);
            __swift_project_boxed_opaque_existential_1(v310, v310[3]);
            v311 = OUTLINED_FUNCTION_7_1();
            v312(v311);
            switch(v18 >> 62)
            {
              case 1uLL:
                if (!__OFSUB__(HIDWORD(v3), v3))
                {
                  goto LABEL_111;
                }

                goto LABEL_163;
              case 2uLL:
                if (!__OFSUB__(*(v3 + 24), *(v3 + 16)))
                {
                  goto LABEL_111;
                }

                goto LABEL_162;
              case 3uLL:
                break;
              default:
LABEL_111:
                OUTLINED_FUNCTION_5();
                if (!v314)
                {
                  goto LABEL_143;
                }

                if (v319 >= 12)
                {
                  _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
                }

                break;
            }

LABEL_115:
            IOHIDEventGetPhase();
            OUTLINED_FUNCTION_19_0();
            OUTLINED_FUNCTION_16_0();
            IOHIDEventGetFloatValue();
            v317 = 16;
LABEL_116:
            sub_270713BE0(v316, v317);
            goto LABEL_117;
          case 7:
            v156 = OUTLINED_FUNCTION_28_0(v22, v23, v24, v25, v26, v27, v28, v29);
            OUTLINED_FUNCTION_10_1(v156, v157, v158, v159, v160, v161, v162, v163, v326, v342, v358, v374, v390, v391, v392, v393);
            v164 = OUTLINED_FUNCTION_0_2();
            v166 = v165(v164);
            if (v166 != 7)
            {
              goto LABEL_137;
            }

            OUTLINED_FUNCTION_10_1(v166, v167, v168, v169, v170, v171, v172, v173, v335, v351, v367, v383, v390, v391, v392, v393);
            v174 = OUTLINED_FUNCTION_1_2();
            v176 = v175(v174);
            OUTLINED_FUNCTION_29_0(v176, v177, v178, v179, v180, v181, v182, v183);
            if (v15)
            {
              v15 = 1;
            }

            else
            {
              IOHIDEventGetPhase();
              OUTLINED_FUNCTION_6_1();
              if (v212)
              {
                v15 = 1;
              }

              else
              {
                v15 = 0;
              }
            }

            if (qword_2808294F0 != -1)
            {
              swift_once();
            }

            OUTLINED_FUNCTION_27_0(&qword_28082A7E0);
            v275 = HIDReportDescriptor.reportBitCount(for:)(0xFu);
            OUTLINED_FUNCTION_26_0(v275, v276, v277, v278, v279, v280, v281, v282, v336, v352, v368, v384, v390, v391);
            v283 = HIDReport.init(bitCount:id:)(&v390, 15);
            v291 = OUTLINED_FUNCTION_11_1(v283, v284, v285, v286, v287, v288, v289, v290, v340, v356, v372, v388);
            v293 = v291[3];
            v292 = v291[4];
            __swift_project_boxed_opaque_existential_1(v291, v293);
            (*(v292 + 328))(v293, v292);
            switch(v18 >> 62)
            {
              case 1uLL:
                if (!__OFSUB__(HIDWORD(v3), v3))
                {
                  goto LABEL_105;
                }

                goto LABEL_160;
              case 2uLL:
                if (!__OFSUB__(*(v3 + 24), *(v3 + 16)))
                {
                  goto LABEL_105;
                }

                goto LABEL_164;
              case 3uLL:
                goto LABEL_115;
              default:
LABEL_105:
                OUTLINED_FUNCTION_5();
                if (!v314)
                {
                  goto LABEL_142;
                }

                if (v318 >= 12)
                {
                  _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
                }

                break;
            }

            goto LABEL_115;
          case 0x10:
            v58 = OUTLINED_FUNCTION_28_0(v22, v23, v24, v25, v26, v27, v28, v29);
            OUTLINED_FUNCTION_10_1(v58, v59, v60, v61, v62, v63, v64, v65, v326, v342, v358, v374, v390, v391, v392, v393);
            v66 = OUTLINED_FUNCTION_0_2();
            v68 = v67(v66);
            if (v68 != 16)
            {
              goto LABEL_136;
            }

            OUTLINED_FUNCTION_10_1(v68, v69, v70, v71, v72, v73, v74, v75, v329, v345, v361, v377, v390, v391, v392, v393);
            v76 = OUTLINED_FUNCTION_1_2();
            v78 = v77(v76);
            OUTLINED_FUNCTION_29_0(v78, v79, v80, v81, v82, v83, v84, v85);
            if (v15)
            {
              v15 = 1;
            }

            else
            {
              IOHIDEventGetPhase();
              OUTLINED_FUNCTION_6_1();
              if (v212)
              {
                v15 = 1;
              }

              else
              {
                v15 = 0;
              }
            }

            if (qword_280829480 != -1)
            {
              swift_once();
            }

            OUTLINED_FUNCTION_27_0(&qword_280829BB0);
            v213 = HIDReportDescriptor.reportBitCount(for:)(0xDu);
            OUTLINED_FUNCTION_26_0(v213, v214, v215, v216, v217, v218, v219, v220, v330, v346, v362, v378, v390, v391);
            HIDReport.init(bitCount:id:)(&v390, 13);
            OUTLINED_FUNCTION_20_0();
            OUTLINED_FUNCTION_18_0();
            OUTLINED_FUNCTION_17_0();
            IOHIDEventGetFloatValue();
            IOHIDEventGetFloatValue();
            IOHIDEventGetFloatValue();
            OUTLINED_FUNCTION_33_0();
            IntegerValue = IOHIDEventGetIntegerValue();
            if ((IntegerValue & 0x8000000000000000) != 0)
            {
              goto LABEL_139;
            }

            if (HIDWORD(IntegerValue))
            {
              goto LABEL_146;
            }

            OUTLINED_FUNCTION_2_1(IntegerValue);
            _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
            v222 = IOHIDEventGetIntegerValue();
            if ((v222 & 0x8000000000000000) != 0)
            {
              goto LABEL_147;
            }

            if (v222 >> 16)
            {
              goto LABEL_150;
            }

            OUTLINED_FUNCTION_2_1(v222);
            _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
            IOHIDEventGetFloatValue();
            OUTLINED_FUNCTION_9_1(v223);
            v224 = IOHIDEventGetIntegerValue();
            if ((v224 & 0x8000000000000000) != 0)
            {
              goto LABEL_155;
            }

            if (v224 >> 16)
            {
              goto LABEL_157;
            }

            goto LABEL_77;
          case 0x16:
            if (qword_280829428 != -1)
            {
              swift_once();
            }

            OUTLINED_FUNCTION_27_0(&qword_2808296D8);
            v114 = HIDReportDescriptor.reportBitCount(for:)(0xEu);
            OUTLINED_FUNCTION_26_0(v114, v115, v116, v117, v118, v119, v120, v121, v326, v342, v358, v374, v390, v391);
            v122 = HIDReport.init(bitCount:id:)(&v390, 14);
            v124 = v123;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = OUTLINED_FUNCTION_31_0();
            }

            v126 = v17[2];
            v125 = v17[3];
            if (v126 >= v125 >> 1)
            {
              v17 = sub_270713C50((v125 > 1), v126 + 1, 1, v17);
            }

            v17[2] = v126 + 1;
            v127 = &v17[2 * v126];
            v127[4] = v122;
            v127[5] = v124;
            v15 = 1;
            break;
          case 0x1B:
            v86 = OUTLINED_FUNCTION_28_0(v22, v23, v24, v25, v26, v27, v28, v29);
            OUTLINED_FUNCTION_10_1(v86, v87, v88, v89, v90, v91, v92, v93, v326, v342, v358, v374, v390, v391, v392, v393);
            v94 = OUTLINED_FUNCTION_0_2();
            v96 = v95(v94);
            if (v96 != 27)
            {
              __break(1u);
LABEL_133:
              __break(1u);
LABEL_134:
              __break(1u);
LABEL_135:
              __break(1u);
LABEL_136:
              __break(1u);
LABEL_137:
              __break(1u);
LABEL_138:
              __break(1u);
LABEL_139:
              __break(1u);
LABEL_140:
              __break(1u);
LABEL_141:
              __break(1u);
LABEL_142:
              __break(1u);
LABEL_143:
              __break(1u);
LABEL_144:
              __break(1u);
LABEL_145:
              __break(1u);
LABEL_146:
              __break(1u);
LABEL_147:
              __break(1u);
LABEL_148:
              __break(1u);
LABEL_149:
              __break(1u);
LABEL_150:
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
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
              JUMPOUT(0x270713888);
            }

            OUTLINED_FUNCTION_10_1(v96, v97, v98, v99, v100, v101, v102, v103, v331, v347, v363, v379, v390, v391, v392, v393);
            v104 = OUTLINED_FUNCTION_1_2();
            v106 = v105(v104);
            OUTLINED_FUNCTION_29_0(v106, v107, v108, v109, v110, v111, v112, v113);
            if (v15)
            {
              v15 = 1;
            }

            else
            {
              IOHIDEventGetPhase();
              OUTLINED_FUNCTION_6_1();
              if (v212)
              {
                v15 = 1;
              }

              else
              {
                v15 = 0;
              }
            }

            if (qword_280829470 != -1)
            {
              swift_once();
            }

            OUTLINED_FUNCTION_27_0(&qword_280829B90);
            v225 = HIDReportDescriptor.reportBitCount(for:)(0xCu);
            OUTLINED_FUNCTION_26_0(v225, v226, v227, v228, v229, v230, v231, v232, v332, v348, v364, v380, v390, v391);
            HIDReport.init(bitCount:id:)(&v390, 12);
            OUTLINED_FUNCTION_20_0();
            OUTLINED_FUNCTION_18_0();
            OUTLINED_FUNCTION_17_0();
            IOHIDEventGetFloatValue();
            v234 = v233;
            IOHIDEventGetFloatValue();
            sub_2707138B8(v234, v235);
            v236 = IOHIDEventGetIntegerValue();
            if ((v236 & 0x8000000000000000) != 0)
            {
              goto LABEL_138;
            }

            if (HIDWORD(v236))
            {
              goto LABEL_144;
            }

            OUTLINED_FUNCTION_2_1(v236);
            _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
            v237 = IOHIDEventGetIntegerValue();
            if ((v237 & 0x8000000000000000) != 0)
            {
              goto LABEL_149;
            }

            if (v237 >> 16)
            {
              goto LABEL_151;
            }

            OUTLINED_FUNCTION_2_1(v237);
            _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
            IOHIDEventGetFloatValue();
            OUTLINED_FUNCTION_9_1(v238);
            v224 = IOHIDEventGetIntegerValue();
            if ((v224 & 0x8000000000000000) != 0)
            {
              goto LABEL_153;
            }

            if (v224 >> 16)
            {
              goto LABEL_156;
            }

LABEL_77:
            OUTLINED_FUNCTION_2_1(v224);
            _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
            v269 = sub_27071392C(v19, sub_2707144C4);
            if (v269)
            {
              v270 = v269;
              IOHIDEventGetFloatValue();
              IOHIDEventGetFloatValue();
              IOHIDEventGetFloatValue();
              HIDFixed.init(doubleValue:)();
              OUTLINED_FUNCTION_13_0(v271);
              _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0();
              HIDFixed.init(doubleValue:)();
              OUTLINED_FUNCTION_13_0(v272);
              _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0();
            }

            else
            {
              HIDFixed.init(doubleValue:)();
              OUTLINED_FUNCTION_13_0(v273);
              _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0();
              HIDFixed.init(doubleValue:)();
              OUTLINED_FUNCTION_13_0(v274);
              _s12UniversalHID9HIDReportV_2ass5Int32VSi_AFmtcis_0();
            }

LABEL_117:
            v320 = v390;
            v321 = v391;
            sub_270706C38(v390, v391);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = OUTLINED_FUNCTION_31_0();
            }

            v323 = v17[2];
            v322 = v17[3];
            v3 = v323 + 1;
            if (v323 >= v322 >> 1)
            {
              v17 = sub_270713C50((v322 > 1), v323 + 1, 1, v17);
            }

            v17[2] = v3;
            v324 = &v17[2 * v323];
            v324[4] = v320;
            v324[5] = v321;
            sub_270708D74(v390, v391);
            break;
          case 0x17:
            v30 = OUTLINED_FUNCTION_28_0(v22, v23, v24, v25, v26, v27, v28, v29);
            OUTLINED_FUNCTION_10_1(v30, v31, v32, v33, v34, v35, v36, v37, v326, v342, v358, v374, v390, v391, v392, v393);
            v38 = OUTLINED_FUNCTION_0_2();
            v40 = v39(v38);
            if (v40 != 23)
            {
              goto LABEL_133;
            }

            OUTLINED_FUNCTION_10_1(v40, v41, v42, v43, v44, v45, v46, v47, v327, v343, v359, v375, v390, v391, v392, v393);
            v48 = OUTLINED_FUNCTION_1_2();
            v50 = v49(v48);
            OUTLINED_FUNCTION_29_0(v50, v51, v52, v53, v54, v55, v56, v57);
            if (v15)
            {
              v15 = 1;
            }

            else
            {
              IOHIDEventGetPhase();
              OUTLINED_FUNCTION_6_1();
              if (v212)
              {
                v15 = 1;
              }

              else
              {
                v15 = 0;
              }
            }

            if (qword_280829478 != -1)
            {
              swift_once();
            }

            OUTLINED_FUNCTION_27_0(&qword_280829BA0);
            v258 = HIDReportDescriptor.reportBitCount(for:)(0xBu);
            OUTLINED_FUNCTION_26_0(v258, v259, v260, v261, v262, v263, v264, v265, v328, v344, v360, v376, v390, v391);
            HIDReport.init(bitCount:id:)(&v390, 11);
            OUTLINED_FUNCTION_20_0();
            OUTLINED_FUNCTION_18_0();
            OUTLINED_FUNCTION_17_0();
            IOHIDEventGetFloatValue();
            IOHIDEventGetFloatValue();
            IOHIDEventGetFloatValue();
            OUTLINED_FUNCTION_33_0();
            v266 = IOHIDEventGetIntegerValue();
            if ((v266 & 0x8000000000000000) != 0)
            {
              goto LABEL_140;
            }

            if (HIDWORD(v266))
            {
              goto LABEL_145;
            }

            OUTLINED_FUNCTION_2_1(v266);
            _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
            v267 = IOHIDEventGetIntegerValue();
            if ((v267 & 0x8000000000000000) != 0)
            {
              goto LABEL_148;
            }

            if (v267 >> 16)
            {
              goto LABEL_152;
            }

            OUTLINED_FUNCTION_2_1(v267);
            _s12UniversalHID9HIDReportV_2ass4Int8VSi_AFmtcis_0();
            IOHIDEventGetFloatValue();
            OUTLINED_FUNCTION_9_1(v268);
            v224 = IOHIDEventGetIntegerValue();
            if ((v224 & 0x8000000000000000) != 0)
            {
              goto LABEL_154;
            }

            if (v224 >> 16)
            {
              goto LABEL_158;
            }

            goto LABEL_77;
        }

        __swift_destroy_boxed_opaque_existential_1(v394);
        v16 += 40;
        if (!--v14)
        {

          a1 = v342;
          v4 = v358;
          goto LABEL_126;
        }
      }

      v128 = OUTLINED_FUNCTION_28_0(v22, v23, v24, v25, v26, v27, v28, v29);
      OUTLINED_FUNCTION_22_0(v128, v129, v130, v131, v132, v133, v134, v135, v326, v342, v358, v374, v390, v391, v392, v393);
      v136 = OUTLINED_FUNCTION_7_1();
      v138 = v137(v136);
      if (v138 != 4)
      {
        goto LABEL_134;
      }

      OUTLINED_FUNCTION_22_0(v138, v139, v140, v141, v142, v143, v144, v145, v333, v349, v365, v381, v390, v391, v392, v393);
      v146 = OUTLINED_FUNCTION_7_1();
      v148 = v147(v146);
      OUTLINED_FUNCTION_29_0(v148, v149, v150, v151, v152, v153, v154, v155);
      if (v15)
      {
        v15 = 1;
      }

      else
      {
        IOHIDEventGetPhase();
        OUTLINED_FUNCTION_6_1();
        if (v212)
        {
          v15 = 1;
        }

        else
        {
          v15 = 0;
        }
      }

      if (qword_280829438 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_27_0(&qword_2808297B0);
      v239 = HIDReportDescriptor.reportBitCount(for:)(0x11u);
      OUTLINED_FUNCTION_26_0(v239, v240, v241, v242, v243, v244, v245, v246, v334, v350, v366, v382, v390, v391);
      v247 = HIDReport.init(bitCount:id:)(&v390, 17);
      v255 = OUTLINED_FUNCTION_11_1(v247, v248, v249, v250, v251, v252, v253, v254, v339, v355, v371, v387);
      __swift_project_boxed_opaque_existential_1(v255, v255[3]);
      v256 = OUTLINED_FUNCTION_7_1();
      v257(v256);
      switch(v18 >> 62)
      {
        case 1uLL:
          if (!__OFSUB__(HIDWORD(v3), v3))
          {
            goto LABEL_95;
          }

          goto LABEL_159;
        case 2uLL:
          if (!__OFSUB__(*(v3 + 24), *(v3 + 16)))
          {
            goto LABEL_95;
          }

          goto LABEL_161;
        case 3uLL:
          goto LABEL_99;
        default:
LABEL_95:
          OUTLINED_FUNCTION_5();
          if (!v314)
          {
            goto LABEL_141;
          }

          if (v313 >= 14)
          {
            _s12UniversalHID9HIDReportV_2ass5Int64VSi_AFmtcis_0();
          }

LABEL_99:
          IOHIDEventGetPhase();
          OUTLINED_FUNCTION_19_0();
          OUTLINED_FUNCTION_16_0();
          IOHIDEventGetFloatValue();
          sub_270713BE0(v315, 16);
          IOHIDEventGetFloatValue();
          v317 = 32;
          break;
      }

      goto LABEL_116;
    }

    v15 = 0;
LABEL_126:
    if ((*(v4 + 41) & 8) != 0)
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }

    else
    {
      sub_27070F5BC(v374, a1);
    }

    if ((*(v4 + 33) & 8) == 0)
    {
    }
  }

  else
  {
    sub_27070F5BC(a2, a1);
    v15 = 0;
  }

  return v15 & 1;
}