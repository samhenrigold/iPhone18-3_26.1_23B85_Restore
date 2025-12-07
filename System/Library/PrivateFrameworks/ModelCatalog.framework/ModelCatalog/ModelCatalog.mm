uint64_t sub_18E1C29A4@<X0>(char a1@<W8>)
{
  *(v1 - 81) = a1;

  return sub_18E44F2FC();
}

uint64_t sub_18E1C29FC()
{

  return swift_beginAccess();
}

uint64_t sub_18E1C2A1C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 40) = a2 + 768;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = a2;
  *(result + 72) = 0xE400000000000000;
  return result;
}

void sub_18E1C2A38(uint64_t *a1@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  *(v3 + 48) = v2;
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  *(v3 + 72) = v7;
  *(v3 + 96) = 100000;
  *(v3 + 104) = 0;
  *(v3 + 108) = 0;
}

ModelCatalog::UseCaseIdentifier_optional __swiftcall UseCaseIdentifier.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3 = v1;
  sub_18E1C77B0();
  v6 = v4 == 0xD00000000000001DLL && v5 == object;
  if (v6 || (v7 = v4, (sub_18E1C8DF0(0xD00000000000001DLL, v5) & 1) != 0))
  {

    v9 = 0;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v11 = v7 == 0xD000000000000026 && v10 == object;
  if (v11 || (sub_18E1C8DF0(0xD000000000000026, v10) & 1) != 0)
  {

    v9 = 1;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v13 = v7 == 0xD00000000000002DLL && v12 == object;
  if (v13 || (sub_18E1C8DF0(0xD00000000000002DLL, v12) & 1) != 0)
  {

    v9 = 2;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v15 = v7 == 0xD000000000000037 && v14 == object;
  if (v15 || (sub_18E1C8DF0(0xD000000000000037, v14) & 1) != 0)
  {

    v9 = 3;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v17 = v7 == 0xD000000000000030 && v16 == object;
  if (v17 || (sub_18E1C8DF0(0xD000000000000030, v16) & 1) != 0)
  {

    v9 = 4;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v19 = v7 == 0xD000000000000030 && v18 == object;
  if (v19 || (sub_18E1C8DF0(0xD000000000000030, v18) & 1) != 0)
  {

    v9 = 5;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v21 = v7 == 0xD000000000000030 && v20 == object;
  if (v21 || (sub_18E1C8DF0(0xD000000000000030, v20) & 1) != 0)
  {

    v9 = 6;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v23 = v7 == 0xD000000000000026 && v22 == object;
  if (v23 || (sub_18E1C8DF0(0xD000000000000026, v22) & 1) != 0)
  {

    v9 = 7;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v25 = v7 == 0xD000000000000026 && v24 == object;
  if (v25 || (sub_18E1C8DF0(0xD000000000000026, v24) & 1) != 0)
  {

    v9 = 8;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v27 = v7 == 0xD000000000000026 && v26 == object;
  if (v27 || (sub_18E1C8DF0(0xD000000000000026, v26) & 1) != 0)
  {

    v9 = 9;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v29 = v7 == 0xD00000000000001FLL && v28 == object;
  if (v29 || (sub_18E1C8DF0(0xD00000000000001FLL, v28) & 1) != 0)
  {

    v9 = 10;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v31 = v7 == 0xD00000000000001DLL && v30 == object;
  if (v31 || (sub_18E1C8DF0(0xD00000000000001DLL, v30) & 1) != 0)
  {

    v9 = 11;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v33 = v7 == 0xD000000000000025 && v32 == object;
  if (v33 || (sub_18E1C8DF0(0xD000000000000025, v32) & 1) != 0)
  {

    v9 = 12;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v35 = v7 == 0xD00000000000001BLL && v34 == object;
  if (v35 || (sub_18E1C8DF0(0xD00000000000001BLL, v34) & 1) != 0)
  {

    v9 = 13;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v37 = v7 == 0xD00000000000002CLL && v36 == object;
  if (v37 || (sub_18E1C8DF0(0xD00000000000002CLL, v36) & 1) != 0)
  {

    v9 = 14;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v39 = v7 == 0xD000000000000016 && v38 == object;
  if (v39 || (sub_18E1C8DF0(0xD000000000000016, v38) & 1) != 0)
  {

    v9 = 15;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v41 = v7 == 0xD000000000000027 && v40 == object;
  if (v41 || (sub_18E1C8DF0(0xD000000000000027, v40) & 1) != 0)
  {

    v9 = 16;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  sub_18E1D7FA4();
  v43 = v6 && v42 == object;
  if (v43 || (sub_18E1C8DF0(0xD000000000000016, v42) & 1) != 0)
  {

    v9 = 17;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v45 = v7 == 0xD000000000000020 && v44 == object;
  if (v45 || (sub_18E1C8DF0(0xD000000000000020, v44) & 1) != 0)
  {

    v9 = 18;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v47 = v7 == 0xD000000000000026 && v46 == object;
  if (v47 || (sub_18E1C8DF0(0xD000000000000026, v46) & 1) != 0)
  {

    v9 = 19;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v49 = v7 == 0xD00000000000001CLL && v48 == object;
  if (v49 || (sub_18E1C8DF0(0xD00000000000001CLL, v48) & 1) != 0)
  {

    v9 = 20;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v51 = v7 == 0xD000000000000025 && v50 == object;
  if (v51 || (sub_18E1C8DF0(0xD000000000000025, v50) & 1) != 0)
  {

    v9 = 21;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v53 = v7 == 0xD000000000000039 && v52 == object;
  if (v53 || (sub_18E1C8DF0(0xD000000000000039, v52) & 1) != 0)
  {

    v9 = 22;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v55 = v7 == 0xD000000000000046 && v54 == object;
  if (v55 || (sub_18E1C8DF0(0xD000000000000046, v54) & 1) != 0)
  {

    v9 = 23;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v57 = v7 == 0xD00000000000003ELL && v56 == object;
  if (v57 || (sub_18E1C8DF0(0xD00000000000003ELL, v56) & 1) != 0)
  {

    v9 = 24;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v59 = v7 == 0xD000000000000031 && v58 == object;
  if (v59 || (sub_18E1C8DF0(0xD000000000000031, v58) & 1) != 0)
  {

    v9 = 25;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  sub_18E1CF678();
  v61 = v6 && v60 == object;
  if (v61 || (sub_18E1C8DF0(0xD00000000000003ELL, v60) & 1) != 0)
  {

    v9 = 26;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v63 = v7 == 0xD00000000000003FLL && v62 == object;
  if (v63 || (sub_18E1C8DF0(0xD00000000000003FLL, v62) & 1) != 0)
  {

    v9 = 27;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v65 = v7 == 0xD00000000000004CLL && v64 == object;
  if (v65 || (sub_18E1C8DF0(0xD00000000000004CLL, v64) & 1) != 0)
  {

    v9 = 28;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v67 = v7 == 0xD000000000000041 && v66 == object;
  if (v67 || (sub_18E1C8DF0(0xD000000000000041, v66) & 1) != 0)
  {

    v9 = 29;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v69 = v7 == 0xD00000000000004ELL && v68 == object;
  if (v69 || (sub_18E1C8DF0(0xD00000000000004ELL, v68) & 1) != 0)
  {

    v9 = 30;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v71 = v7 == 0xD000000000000040 && v70 == object;
  if (v71 || (sub_18E1C8DF0(0xD000000000000040, v70) & 1) != 0)
  {

    v9 = 31;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v73 = v7 == 0xD000000000000033 && v72 == object;
  if (v73 || (sub_18E1C8DF0(0xD000000000000033, v72) & 1) != 0)
  {

    v9 = 32;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v75 = v7 == 0xD00000000000003BLL && v74 == object;
  if (v75 || (sub_18E1C8DF0(0xD00000000000003BLL, v74) & 1) != 0)
  {

    v9 = 33;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  sub_18E22877C();
  v77 = v6 && v76 == object;
  if (v77 || (sub_18E1C8DF0(0xD000000000000027, v76) & 1) != 0)
  {

    v9 = 34;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  sub_18E1D019C();
  v79 = v6 && v78 == object;
  if (v79 || (sub_18E1C8DF0(0xD000000000000033, v78) & 1) != 0)
  {

    v9 = 35;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  sub_18E1CF678();
  v81 = v6 && v80 == object;
  if (v81 || (sub_18E1C8DF0(0xD000000000000040, v80) & 1) != 0)
  {

    v9 = 36;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v83 = v7 == 0xD000000000000024 && v82 == object;
  if (v83 || (sub_18E1C8DF0(0xD000000000000024, v82) & 1) != 0)
  {

    v9 = 37;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v85 = v7 == 0xD000000000000017 && v84 == object;
  if (v85 || (sub_18E1C8DF0(0xD000000000000017, v84) & 1) != 0)
  {

    v9 = 38;
    goto LABEL_7;
  }

  sub_18E1C77B0();
  v87 = v7 == 0xD00000000000001ELL && v86 == object;
  if (v87 || (sub_18E1C8DF0(0xD00000000000001ELL, v86) & 1) != 0)
  {

    v9 = 39;
    goto LABEL_7;
  }

  sub_18E1C88C4();
  if (v7 == 0xD000000000000019 && v88 == object)
  {

LABEL_249:

    v9 = 40;
    goto LABEL_7;
  }

  sub_18E1C8DF0(0xD000000000000019, v88);
  sub_18E1E87A4();
  if (v560)
  {
    goto LABEL_249;
  }

  sub_18E1CF29C();
  v563 = v90;
  if (v6 && v90 == object)
  {

LABEL_257:

    v9 = 41;
    goto LABEL_7;
  }

  v92 = sub_18E1E11C0();
  sub_18E1C8DF0(v92, v563);
  sub_18E1E87A4();
  if (v560)
  {
    goto LABEL_257;
  }

  sub_18E1CF29C();
  v564 = v93;
  if (v6 && v93 == object)
  {

LABEL_265:

    v9 = 42;
    goto LABEL_7;
  }

  v95 = sub_18E1E11C0();
  sub_18E1C8DF0(v95, v564);
  sub_18E1E87A4();
  if (v560)
  {
    goto LABEL_265;
  }

  sub_18E1C88C4();
  if (v7 == 0xD000000000000028 && v96 == object)
  {

LABEL_273:

    v9 = 43;
    goto LABEL_7;
  }

  sub_18E1C8DF0(0xD000000000000028, v96);
  sub_18E1E87A4();
  if (v560)
  {
    goto LABEL_273;
  }

  sub_18E1C88C4();
  sub_18E22877C();
  if (v6 && v98 == object)
  {

LABEL_281:

    v9 = 44;
    goto LABEL_7;
  }

  sub_18E1C8DF0(0xD000000000000027, v98);
  sub_18E1E87A4();
  if (v560)
  {
    goto LABEL_281;
  }

  sub_18E1C88C4();
  if (v7 == 0xD00000000000001ALL && v100 == object)
  {

LABEL_289:

    v9 = 45;
    goto LABEL_7;
  }

  sub_18E1C8DF0(0xD00000000000001ALL, v100);
  sub_18E1E3690();
  if (v498)
  {
    goto LABEL_289;
  }

  sub_18E1CF29C();
  v561 = v102;
  if (v6 && v102 == object)
  {

LABEL_297:

    v9 = 46;
    goto LABEL_7;
  }

  v104 = sub_18E1E11C0();
  sub_18E1C8DF0(v104, v561);
  sub_18E1E3690();
  if (v498)
  {
    goto LABEL_297;
  }

  sub_18E1C88C4();
  sub_18E2005DC();
  if (v6 && v105 == object)
  {

LABEL_305:

    v9 = 47;
    goto LABEL_7;
  }

  sub_18E1C8DF0(0xD000000000000024, v105);
  sub_18E1E3690();
  if (v498)
  {
    goto LABEL_305;
  }

  sub_18E1C88C4();
  if (v7 == 0xD00000000000002ELL && v107 == object)
  {

LABEL_313:

    v9 = 48;
    goto LABEL_7;
  }

  sub_18E1C8DF0(0xD00000000000002ELL, v107);
  sub_18E1E3690();
  if (v498)
  {
    goto LABEL_313;
  }

  sub_18E1CA5A4();
  if (v7 == 0xD000000000000034 && v109 == object)
  {

LABEL_321:

    v9 = 49;
    goto LABEL_7;
  }

  sub_18E1C8DF0(0xD000000000000034, v109);
  sub_18E1E3690();
  if (v498)
  {
    goto LABEL_321;
  }

  sub_18E1CA5A4();
  if (v7 == 0xD000000000000038 && v111 == object)
  {

LABEL_329:

    v9 = 50;
    goto LABEL_7;
  }

  sub_18E1C8DF0(0xD000000000000038, v111);
  sub_18E1E3690();
  if (v498)
  {
    goto LABEL_329;
  }

  sub_18E1CF29C();
  v562 = v113;
  if (v6 && v113 == object)
  {

LABEL_337:

    v9 = 51;
    goto LABEL_7;
  }

  v115 = sub_18E1E11C0();
  sub_18E1C8DF0(v115, v562);
  sub_18E1E3690();
  if (v498)
  {
    goto LABEL_337;
  }

  sub_18E1C88C4();
  sub_18E2005DC();
  if (v6 && v116 == object)
  {

LABEL_345:

    v9 = 52;
    goto LABEL_7;
  }

  sub_18E1C8DF0(0xD000000000000024, v116);
  sub_18E1E3690();
  if (v498)
  {
    goto LABEL_345;
  }

  sub_18E1C88C4();
  if (v7 == 0xD000000000000017 && v118 == object)
  {

LABEL_353:

    v9 = 53;
    goto LABEL_7;
  }

  sub_18E1C8DF0(0xD000000000000017, v118);
  sub_18E1E3690();
  if (v498)
  {
    goto LABEL_353;
  }

  sub_18E1C88C4();
  sub_18E1D7FA4();
  if (v6 && v120 == object)
  {

LABEL_361:

    v9 = 54;
    goto LABEL_7;
  }

  sub_18E1C8DF0(0xD000000000000016, v120);
  sub_18E1E3690();
  if (v498)
  {
    goto LABEL_361;
  }

  sub_18E1C88C4();
  if (v7 == 0xD000000000000023 && v129 == object)
  {

LABEL_369:

    v9 = 55;
    goto LABEL_7;
  }

  HIDWORD(v436) = sub_18E1CAF84(0xD000000000000023, v122, v123, v124, v125, v126, v127, v128, v435, 0xD00000000000002ELL, v129);

  if ((v436 & 0x100000000) != 0)
  {
    goto LABEL_369;
  }

  sub_18E1CA158();
  if (v6 && v138 == object)
  {

LABEL_377:

    v9 = 56;
    goto LABEL_7;
  }

  HIDWORD(v437) = sub_18E1CAF84(0xD00000000000003FLL, v131, v132, v133, v134, v135, v136, v137, v436, v467, v138);

  if ((v437 & 0x100000000) != 0)
  {
    goto LABEL_377;
  }

  sub_18E1CA158();
  if (v6 && v147 == object)
  {

LABEL_385:

    v9 = 57;
    goto LABEL_7;
  }

  sub_18E1C57BC(0xD00000000000003FLL, v140, v141, v142, v143, v144, v145, v146, v437, v468, v499, 0xD000000000000028, v147);
  sub_18E1CC4A0();
  if (v500)
  {
    goto LABEL_385;
  }

  sub_18E1C88C4();
  if (v7 == v469 && v156 == object)
  {

LABEL_393:

    v9 = 58;
    goto LABEL_7;
  }

  sub_18E1C57BC(0xD00000000000002ELL, v149, v150, v151, v152, v153, v154, v155, v438, v469, v500, v521, v156);
  sub_18E1CC4A0();
  if (v501)
  {
    goto LABEL_393;
  }

  sub_18E1CA5A4();
  if (v7 == 0xD00000000000002FLL && v165 == object)
  {

LABEL_401:

    v9 = 59;
    goto LABEL_7;
  }

  sub_18E1C57BC(0xD00000000000002FLL, v158, v159, v160, v161, v162, v163, v164, v439, v470, v501, v522, v165);
  sub_18E1CC4A0();
  if (v502)
  {
    goto LABEL_401;
  }

  sub_18E1C88C4();
  sub_18E1D7FA4();
  if (v6 && v174 == object)
  {

LABEL_409:

    v9 = 60;
    goto LABEL_7;
  }

  v565 = sub_18E1C57BC(0xD000000000000016, v167, v168, v169, v170, v171, v172, v173, v440, v471, v502, v523, v174);

  if (v565)
  {
    goto LABEL_409;
  }

  sub_18E1C88C4();
  sub_18E1CEA88();
  if (v6 && v176 == object)
  {

LABEL_417:

    v9 = 61;
    goto LABEL_7;
  }

  sub_18E1C8DF0(0xD00000000000001CLL, v176);
  sub_18E1E8414();
  if (v542)
  {
    goto LABEL_417;
  }

  sub_18E1C88C4();
  sub_18E1CF678();
  if (v6 && v178 == object)
  {

LABEL_425:

    v9 = 62;
    goto LABEL_7;
  }

  sub_18E1C8DF0(0xD000000000000019, v178);
  sub_18E1E8414();
  if (v542)
  {
    goto LABEL_425;
  }

  sub_18E1CA5A4();
  if (v7 == 0xD00000000000001FLL && v180 == object)
  {

LABEL_433:

    v9 = 63;
    goto LABEL_7;
  }

  sub_18E1C8DF0(0xD00000000000001FLL, v180);
  sub_18E1E8414();
  if (v542)
  {
    goto LABEL_433;
  }

  sub_18E1C88C4();
  sub_18E2005DC();
  if (v6 && v182 == object)
  {

LABEL_441:

    v9 = 64;
    goto LABEL_7;
  }

  sub_18E1C8DF0(0xD000000000000024, v182);
  sub_18E1E8414();
  if (v542)
  {
    goto LABEL_441;
  }

  sub_18E1C88C4();
  sub_18E1CF678();
  if (v6 && v184 == object)
  {

LABEL_449:

    v9 = 65;
    goto LABEL_7;
  }

  sub_18E1C8DF0(0xD000000000000019, v184);
  sub_18E1E8414();
  if (v542)
  {
    goto LABEL_449;
  }

  sub_18E1C88C4();
  if (v7 == 0xD000000000000014 && v193 == object)
  {

LABEL_457:

    v9 = 66;
    goto LABEL_7;
  }

  sub_18E1C57BC(0xD000000000000014, v186, v187, v188, v189, v190, v191, v192, v441, v472, v503, v524, v193);
  sub_18E1CC4A0();
  if (v504)
  {
    goto LABEL_457;
  }

  sub_18E1C88C4();
  if (v7 == 0xD00000000000001ELL && v202 == object)
  {

LABEL_465:

    v9 = 67;
    goto LABEL_7;
  }

  sub_18E1C57BC(0xD00000000000001ELL, v195, v196, v197, v198, v199, v200, v201, v442, v473, v504, v525, v202);
  sub_18E1CC4A0();
  if (v505)
  {
    goto LABEL_465;
  }

  sub_18E1C88C4();
  sub_18E1D48B4();
  if (v6 && v211 == object)
  {

LABEL_473:

    v9 = 68;
    goto LABEL_7;
  }

  sub_18E1C57BC(0xD000000000000023, v204, v205, v206, v207, v208, v209, v210, v443, v474, v505, v526, v211);
  sub_18E1CC4A0();
  if (v506)
  {
    goto LABEL_473;
  }

  sub_18E1CA5A4();
  if (v7 == 0xD000000000000015 && v220 == object)
  {

LABEL_481:

    v9 = 69;
    goto LABEL_7;
  }

  sub_18E1C57BC(0xD000000000000015, v213, v214, v215, v216, v217, v218, v219, v444, v475, v506, v527, v220);
  sub_18E1CC4A0();
  if (v507)
  {
    goto LABEL_481;
  }

  sub_18E1C88C4();
  if (v7 == 0xD000000000000021 && v229 == object)
  {

LABEL_489:

    v9 = 70;
    goto LABEL_7;
  }

  sub_18E1CAF84(0xD000000000000021, v222, v223, v224, v225, v226, v227, v228, v445, v476, v229);
  sub_18E1D4AD0();
  if (v477)
  {
    goto LABEL_489;
  }

  sub_18E1C88C4();
  sub_18E1D019C();
  if (v6 && v238 == object)
  {

LABEL_497:

    v9 = 71;
    goto LABEL_7;
  }

  sub_18E1CAF84(0xD00000000000001ALL, v231, v232, v233, v234, v235, v236, v237, v446, v477, v238);
  sub_18E1D4AD0();
  if (v478)
  {
    goto LABEL_497;
  }

  sub_18E1C88C4();
  sub_18E1CEA88();
  if (v6 && v247 == object)
  {

LABEL_505:

    v9 = 72;
    goto LABEL_7;
  }

  sub_18E1CAF84(0xD00000000000001CLL, v240, v241, v242, v243, v244, v245, v246, v447, v478, v247);
  sub_18E1D4AD0();
  if (v479)
  {
    goto LABEL_505;
  }

  sub_18E1C88C4();
  sub_18E1D48B4();
  if (v6 && v256 == object)
  {

LABEL_513:

    v9 = 73;
    goto LABEL_7;
  }

  sub_18E1CAF84(0xD000000000000023, v249, v250, v251, v252, v253, v254, v255, v448, v479, v256);
  sub_18E1D4AD0();
  if (v480)
  {
    goto LABEL_513;
  }

  sub_18E1CA158();
  if (v6 && v265 == object)
  {

LABEL_521:

    v9 = 74;
    goto LABEL_7;
  }

  sub_18E1CAF84(0xD000000000000021, v258, v259, v260, v261, v262, v263, v264, v449, v480, v265);
  sub_18E1D4AD0();
  if (v481)
  {
    goto LABEL_521;
  }

  sub_18E1C88C4();
  sub_18E211FE8();
  if (v6 && v274 == object)
  {

LABEL_529:

    v9 = 75;
    goto LABEL_7;
  }

  sub_18E1CAF84(0xD00000000000001BLL, v267, v268, v269, v270, v271, v272, v273, v450, v481, v274);
  sub_18E1D4AD0();
  if (v482)
  {
    goto LABEL_529;
  }

  sub_18E1C88C4();
  sub_18E1D48B4();
  if (v6 && v283 == object)
  {

LABEL_537:

    v9 = 76;
    goto LABEL_7;
  }

  sub_18E1CAF84(0xD000000000000023, v276, v277, v278, v279, v280, v281, v282, v451, v482, v283);
  sub_18E1D4AD0();
  if (v483)
  {
    goto LABEL_537;
  }

  sub_18E1C88C4();
  if (v7 == 0xD000000000000020 && v292 == object)
  {

LABEL_545:

    v9 = 77;
    goto LABEL_7;
  }

  sub_18E1CAF84(0xD000000000000020, v285, v286, v287, v288, v289, v290, v291, v452, v483, v292);
  sub_18E1D4AD0();
  if (v484)
  {
    goto LABEL_545;
  }

  sub_18E1CA158();
  if (v6 && v301 == object)
  {

LABEL_553:

    v9 = 78;
    goto LABEL_7;
  }

  v543 = sub_18E1CAF84(0xD000000000000021, v294, v295, v296, v297, v298, v299, v300, v453, v484, v301);

  if (v543)
  {
    goto LABEL_553;
  }

  sub_18E1C88C4();
  sub_18E1D019C();
  if (v6 && v310 == object)
  {

LABEL_561:

    v9 = 79;
    goto LABEL_7;
  }

  sub_18E1C57BC(0xD00000000000001ALL, v303, v304, v305, v306, v307, v308, v309, v454, v485, v508, v528, v310);
  sub_18E1CC4A0();
  if (v509)
  {
    goto LABEL_561;
  }

  sub_18E1C88C4();
  sub_18E1D7FA4();
  if (v6 && v319 == object)
  {

LABEL_569:

    v9 = 80;
    goto LABEL_7;
  }

  sub_18E1C57BC(0xD000000000000014, v312, v313, v314, v315, v316, v317, v318, v455, v486, v509, v529, v319);
  sub_18E1CC4A0();
  if (v510)
  {
    goto LABEL_569;
  }

  sub_18E1CA5A4();
  if (v7 == 0xD000000000000013 && v328 == object)
  {

LABEL_577:

    v9 = 81;
    goto LABEL_7;
  }

  sub_18E1C57BC(0xD000000000000013, v321, v322, v323, v324, v325, v326, v327, v456, v487, v510, v530, v328);
  sub_18E1CC4A0();
  if (v511)
  {
    goto LABEL_577;
  }

  sub_18E1C88C4();
  v544 = v330;
  if (v7 == 0xD000000000000017 && v330 == object)
  {

LABEL_585:

    v9 = 82;
    goto LABEL_7;
  }

  v555 = sub_18E1C8DF0(0xD000000000000017, v330);

  if (v555)
  {
    goto LABEL_585;
  }

  sub_18E1C88C4();
  sub_18E1CF678();
  if (v6 && v339 == object)
  {

LABEL_593:

    v9 = 83;
    goto LABEL_7;
  }

  sub_18E1C5598(0xD000000000000019, v332, v333, v334, v335, v336, v337, v338, v457, v488, v511, v531, v544, v339);
  sub_18E1DD318();
  if (v545)
  {
    goto LABEL_593;
  }

  sub_18E1C88C4();
  sub_18E1CEA88();
  if (v6 && v348 == object)
  {

LABEL_601:

    v9 = 84;
    goto LABEL_7;
  }

  sub_18E1C5598(0xD00000000000001CLL, v341, v342, v343, v344, v345, v346, v347, v458, v489, v512, v532, v545, v348);
  sub_18E1DD318();
  if (v546)
  {
    goto LABEL_601;
  }

  sub_18E1C88C4();
  sub_18E1CF678();
  if (v6 && v357 == object)
  {

LABEL_609:

    v9 = 85;
    goto LABEL_7;
  }

  sub_18E1C5598(0xD000000000000019, v350, v351, v352, v353, v354, v355, v356, v459, v490, v513, v533, v546, v357);
  sub_18E1DD318();
  if (v547)
  {
    goto LABEL_609;
  }

  sub_18E1CF29C();
  v556 = v359;
  if (v6 && v359 == object)
  {

LABEL_617:

    v9 = 86;
    goto LABEL_7;
  }

  v361 = sub_18E1E11C0();
  sub_18E1C5598(v361, v362, v363, v364, v365, v366, v367, v368, v460, v491, v514, v534, v547, v556);
  sub_18E1DD318();
  if (v548)
  {
    goto LABEL_617;
  }

  sub_18E1CA5A4();
  if (v7 == 0xD000000000000018 && v376 == object)
  {

LABEL_625:

    v9 = 87;
    goto LABEL_7;
  }

  sub_18E1C5598(0xD000000000000018, v369, v370, v371, v372, v373, v374, v375, v461, v492, v515, v535, v548, v376);
  sub_18E1DD318();
  if (v549)
  {
    goto LABEL_625;
  }

  sub_18E1CF29C();
  v557 = v378;
  if (v6 && v378 == object)
  {

LABEL_633:

    v9 = 88;
    goto LABEL_7;
  }

  v380 = sub_18E1E11C0();
  sub_18E1C5598(v380, v381, v382, v383, v384, v385, v386, v387, v462, v493, v516, v536, v549, v557);
  sub_18E1DD318();
  if (v550)
  {
    goto LABEL_633;
  }

  sub_18E1C88C4();
  if (v7 == 0xD00000000000002ALL && v388 == object)
  {

LABEL_641:

    v9 = 89;
    goto LABEL_7;
  }

  LODWORD(v517) = sub_18E1C8DF0(0xD00000000000002ALL, v388);

  if (v517)
  {
    goto LABEL_641;
  }

  sub_18E1C88C4();
  sub_18E1D019C();
  if (v6 && v397 == object)
  {

LABEL_649:

    v9 = 90;
    goto LABEL_7;
  }

  LODWORD(v518) = sub_18E1C5598(0xD00000000000001ALL, v390, v391, v392, v393, v394, v395, v396, v463, v494, v517, v537, 0xD00000000000002ALL, v397);

  if (v518)
  {
    goto LABEL_649;
  }

  sub_18E1CF29C();
  v558 = v399;
  if (v6 && v399 == object)
  {

LABEL_657:

    v9 = 91;
    goto LABEL_7;
  }

  v401 = sub_18E1E11C0();
  LODWORD(v519) = sub_18E1C5598(v401, v402, v403, v404, v405, v406, v407, v408, v464, v495, v518, v538, v551, v558);

  if (v519)
  {
    goto LABEL_657;
  }

  sub_18E1CA158();
  if (v6 && v416 == object)
  {

LABEL_665:

    v9 = 92;
    goto LABEL_7;
  }

  sub_18E1C5598(0xD00000000000002ALL, v409, v410, v411, v412, v413, v414, v415, v465, v496, v519, v539, v552, v416);
  sub_18E1DD318();
  if (v553)
  {
    goto LABEL_665;
  }

  sub_18E1C88C4();
  if (v7 == v540 && v425 == object)
  {

LABEL_673:

    v9 = 93;
    goto LABEL_7;
  }

  sub_18E1C5598(0xD000000000000028, v418, v419, v420, v421, v422, v423, v424, v466, v497, v520, v540, v553, v425);
  sub_18E1DD318();
  if (v554)
  {
    goto LABEL_673;
  }

  sub_18E1CA5A4();
  v428 = v427;
  if (v7 == 0xD000000000000030 && v427 == object)
  {

LABEL_681:

    v9 = 94;
    goto LABEL_7;
  }

  sub_18E1C5EEC(0xD000000000000030);
  sub_18E2218EC();
  if (v559)
  {
    goto LABEL_681;
  }

  sub_18E1CC3B8();
  if (v7 == 0xD000000000000022 && v428 == object)
  {

LABEL_689:

    v9 = 95;
    goto LABEL_7;
  }

  v431 = sub_18E1E11C0();
  sub_18E1C5EEC(v431);
  sub_18E2218EC();
  if (v559)
  {
    goto LABEL_689;
  }

  sub_18E1CC3B8();
  if (v7 == v541 && v428 == object)
  {

LABEL_697:

    v9 = 96;
    goto LABEL_7;
  }

  sub_18E1C5EEC(0xD000000000000028);
  sub_18E2218EC();
  if (v559)
  {
    goto LABEL_697;
  }

  sub_18E1CC3B8();
  sub_18E22877C();
  if (v6 && v428 == object)
  {

LABEL_705:

    v9 = 97;
    goto LABEL_7;
  }

  sub_18E1C5EEC(0xD000000000000027);
  sub_18E2218EC();
  if (v559)
  {
    goto LABEL_705;
  }

  sub_18E1CC3B8();
  if (v7 == 0xD00000000000002DLL && v428 == object)
  {
  }

  else
  {
    sub_18E1C5EEC(0xD00000000000002DLL);
    sub_18E1D4D14();
  }

  v9 = 98;
LABEL_7:
  *v3 = v9;
  return result;
}

uint64_t sub_18E1C4F14(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_18E1C4F90(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_18E44F3CC();
}

uint64_t sub_18E1C4FE0()
{

  return _s12ModelCatalog15ManagedResourcePA2A018ConfigurationBasedD0RzrlE4costAA11CostProfileVvg_0(v1, v0);
}

void sub_18E1C5008()
{

  JUMPOUT(0x193ACD400);
}

uint64_t sub_18E1C5074()
{

  return sub_18E1E8F44(v2, v0, v1);
}

uint64_t sub_18E1C5090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

void sub_18E1C50F4(uint64_t a1@<X8>)
{
  *v1 = v2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(v1 + 8) = a1;
  *(v1 + 16) = 2;
}

__n128 *sub_18E1C5108(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  result[2].n128_u64[1] = 808335409;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 808334641;
  result[4].n128_u64[1] = 0xE400000000000000;
  result[5].n128_u8[0] = 3;
  result[5].n128_u64[1] = 808334898;
  result[6].n128_u64[0] = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1C51B4(uint64_t a1)
{

  return sub_18E44F0EC();
}

uint64_t sub_18E1C51D4(uint64_t a1, uint64_t a2)
{

  return sub_18E44F3CC();
}

uint64_t sub_18E1C5220(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_18E1C5240(uint64_t result)
{
  *(v1 + 14) = result;
  *v2 = result;
  *(v1 + 22) = 2048;
  *(v1 + 24) = *(v3 - 312);
  return result;
}

uint64_t sub_18E1C5260(uint64_t a1)
{

  return swift_beginAccess();
}

unint64_t sub_18E1C527C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t sub_18E1C52AC(uint64_t a1, uint64_t a2)
{

  return sub_18E44F1AC();
}

void *sub_18E1C5340(void *a1)
{
  *v1 = a1;
  a1[28] = v2;

  return memcpy(a1, v2, 0xD8uLL);
}

double sub_18E1C5364()
{
  result = 0.0;
  *(v0 + 248) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  return result;
}

__n128 sub_18E1C53B4()
{
  *v0 = v1;
  *(v0 + 8) = v2;
  sub_18E1C551C((v3 - 128), v0 + 16);
  sub_18E1C551C((v3 - 168), v0 + 56);
  result = *(v3 - 208);
  v5 = *(v3 - 192);
  *(v0 + 96) = result;
  *(v0 + 112) = v5;
  return result;
}

uint64_t sub_18E1C53E8()
{

  return type metadata accessor for AJAXConfiguration(0);
}

double sub_18E1C5420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  *(a1 + 16) = a9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  *(a1 + 32) = *v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = v12;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  return result;
}

__n128 *sub_18E1C546C(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = 1;
  result[2].n128_u64[1] = 808335409;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 808334641;
  result[4].n128_u64[1] = 0xE400000000000000;
  result[5].n128_u8[0] = 3;
  result[5].n128_u64[1] = 808334898;
  result[6].n128_u64[0] = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1C54E0(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  return result;
}

uint64_t sub_18E1C5500()
{

  return swift_allocObject();
}

uint64_t sub_18E1C551C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_18E1C5568(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_18E1C5598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return sub_18E44F3CC();
}

uint64_t sub_18E1C55D8()
{

  return sub_18E44F20C();
}

uint64_t sub_18E1C5644()
{
  *(v0 + 32) = 1;

  return sub_18E44F1CC();
}

uint64_t sub_18E1C566C(uint64_t result)
{
  *(result + 40) = 808335409;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = 808334641;
  *(result + 72) = 0xE400000000000000;
  *(result + 80) = 3;
  *(result + 88) = 808334898;
  *(result + 96) = 0xE400000000000000;
  return result;
}

__n128 *sub_18E1C56A0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  result[2].n128_u64[1] = 808334898;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 808334898;
  result[4].n128_u64[1] = 0xE400000000000000;
  return result;
}

_OWORD *sub_18E1C56C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{

  return sub_18E270D70((v16 - 128), &v19);
}

uint64_t sub_18E1C56E0(uint64_t a1, uint64_t a2)
{
  *a2 = 0xD000000000000029;
  *(a2 + 8) = v2;
  *(a2 + 16) = 2;

  return swift_willThrow();
}

uint64_t sub_18E1C5720()
{
}

uint64_t sub_18E1C57BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return sub_18E44F3CC();
}

uint64_t sub_18E1C57DC()
{

  return sub_18E44E50C();
}

uint64_t sub_18E1C5854@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 40) = a2 + 768;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = a2;
  *(result + 72) = 0xE400000000000000;
  *(result + 80) = 5;
  *(result + 88) = 3419698;
  *(result + 96) = 0xE300000000000000;
  return result;
}

__n128 *sub_18E1C5888(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  result[2].n128_u64[1] = 841889841;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 841889073;
  result[4].n128_u64[1] = 0xE400000000000000;
  return result;
}

__n128 sub_18E1C58B4()
{
  result = *v0;
  v3 = v0[1].n128_u64[0];
  *(v1 - 104) = *v0;
  *(v1 - 88) = v3;
  return result;
}

void sub_18E1C58E8(uint64_t a1)
{
  *(v1 + 56) = a1;
  *(v1 + 32) = v2;

  JUMPOUT(0x193ACC600);
}

void sub_18E1C596C()
{

  sub_18E3EFF88();
}

uint64_t sub_18E1C5990()
{

  return type metadata accessor for AJAXConfiguration(0);
}

id sub_18E1C5A08()
{
  v2 = *(v0 - 224) | 0x8000000000000000;

  return sub_18E2462E8(0xD00000000000001BLL, v2);
}

uint64_t sub_18E1C5A2C(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_18E1C5A4C(uint64_t result)
{
  *(result + 40) = 808334898;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = 808334898;
  *(result + 72) = 0xE400000000000000;
  *(result + 80) = 5;
  *(result + 88) = 808334898;
  *(result + 96) = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1C5A90(uint64_t result)
{
  *(result + 40) = 808334898;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = 808334898;
  *(result + 72) = 0xE400000000000000;
  *(result + 80) = 5;
  *(result + 88) = 808334898;
  *(result + 96) = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1C5AE8(uint64_t a1)
{

  return swift_once();
}

void sub_18E1C5B2C()
{

  sub_18E3EFF88();
}

uint64_t sub_18E1C5B9C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 40) = a2;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = a2;
  *(result + 72) = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1C5C08(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_18E1C5C20(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_18E1C5C40(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_18E1C5C98()
{

  return _s12ModelCatalog15ManagedResourcePA2A018ConfigurationBasedD0RzrlE17executionContextsShyAA16ExecutionContextVGvg_0(v0, v1, v2);
}

uint64_t sub_18E1C5CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{

  return swift_dynamicCast();
}

uint64_t sub_18E1C5CE0()
{

  return swift_slowAlloc();
}

uint64_t sub_18E1C5CFC()
{

  return sub_18E2491A4(0x5672657470616461, 0xEE00746E61697261, v0);
}

uint64_t sub_18E1C5D84(uint64_t a1)
{

  return sub_18E1E8F44(a1, v1, v2);
}

uint64_t sub_18E1C5D9C(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 1;

  return swift_willThrow();
}

uint64_t sub_18E1C5DB8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  result = a1[1];
  v4 = *(a1 + 16);
  *v1 = v3;
  *(v1 + 8) = result;
  *(v1 + 16) = v4;
  return result;
}

void sub_18E1C5E38(uint64_t a1)
{

  sub_18E2533A8(a1, v1, v2, v3);
}

uint64_t sub_18E1C5E54(uint64_t a1)
{

  return MEMORY[0x1EEDC6098](a1, v1, v2);
}

uint64_t sub_18E1C5EB4()
{

  return sub_18E44EFFC();
}

uint64_t sub_18E1C5EEC(uint64_t a1)
{

  return sub_18E44F3CC();
}

void *sub_18E1C5F34(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return memcpy(va, v9, 0xD8uLL);
}

uint64_t sub_18E1C5F54()
{
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  *(v0 - 128) = 0u;

  return sub_18E298E58(v0 - 128);
}

uint64_t sub_18E1C5F74()
{

  return swift_slowAlloc();
}

void sub_18E1C5FA4()
{
  v0[74] = 0;
  v0[76] = 0;
  v0[78] = 0;
}

uint64_t sub_18E1C6010(uint64_t a1)
{

  return sub_18E44F26C();
}

__n128 *sub_18E1C6050(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  result[2].n128_u64[1] = 841889841;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 841889073;
  result[4].n128_u64[1] = 0xE400000000000000;
  result[5].n128_u8[0] = 3;
  result[5].n128_u64[1] = 808334898;
  result[6].n128_u64[0] = 0xE400000000000000;
  return result;
}

void *sub_18E1C6114(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return memcpy(va, v9, 0xD8uLL);
}

uint64_t sub_18E1C6188(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_18E44F3CC();
}

uint64_t sub_18E1C61FC(uint64_t result)
{
  *(result + 40) = 841889841;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = 841889073;
  *(result + 72) = 0xE400000000000000;
  *(result + 80) = 3;
  *(result + 88) = 808334898;
  *(result + 96) = 0xE400000000000000;
  return result;
}

void sub_18E1C6234(uint64_t a1@<X8>)
{
  *(v1 + 56) = a1;
  *(v1 + 64) = v2;
  *(v1 + 72) = 0;
  *(v1 + 80) = a1;
  *(v1 + 88) = a1;
  *(v1 + 96) = 256;
  *(v1 + 104) = a1;
}

void sub_18E1C6260()
{
  *(v6 - 376) = v1;
  *(v6 - 392) = v3;
  *(v6 - 456) = v0;
  *(v6 - 480) = v5;
  *(v6 - 464) = v4;
  *(v6 - 472) = v2;
}

uint64_t sub_18E1C62EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_18E44F14C();
}

__n128 sub_18E1C630C()
{
  v2 = v0->n128_u64[1];
  v3 = v0[2].n128_u8[0];
  *(v1 - 56) = v0->n128_u8[0];
  *(v1 - 48) = v2;
  result = v0[1];
  *(v1 - 40) = result;
  *(v1 - 24) = v3;
  return result;
}

uint64_t sub_18E1C6334()
{

  return sub_18E44E6DC();
}

void sub_18E1C6358(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v10, a4, v11, 2u);
}

unint64_t sub_18E1C638C(uint64_t a1, uint64_t a2)
{

  return sub_18E291C98(a1);
}

uint64_t sub_18E1C63E8(uint64_t result)
{
  *(result + 40) = 808335409;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = 808334641;
  *(result + 72) = 0xE400000000000000;
  *(result + 80) = 5;
  *(result + 88) = 3419698;
  *(result + 96) = 0xE300000000000000;
  *(result + 104) = 3;
  *(result + 112) = 808334898;
  *(result + 120) = 0xE400000000000000;
  return result;
}

__n128 *sub_18E1C6434(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  result[2].n128_u64[1] = 808335409;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 808334641;
  result[4].n128_u64[1] = 0xE400000000000000;
  return result;
}

void sub_18E1C6460()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E1C64CC(uint64_t result)
{
  *(v1 + 14) = result;
  *v2 = result;
  *(v1 + 22) = 2048;
  return result;
}

uint64_t sub_18E1C6594(uint64_t result)
{
  *(result + 104) = 5;
  *(result + 112) = 3419698;
  *(result + 120) = 0xE300000000000000;
  *(v1 + 112) = result;
  return result;
}

__n128 *sub_18E1C65C0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = 1;
  result[2].n128_u64[1] = 841889841;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 841889073;
  result[4].n128_u64[1] = 0xE400000000000000;
  result[5].n128_u8[0] = 3;
  result[5].n128_u64[1] = 808334898;
  result[6].n128_u64[0] = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1C6604(uint64_t a1, uint64_t a2)
{
  sub_18E1C95EC(v2, a2);

  return swift_beginAccess();
}

void sub_18E1C6694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  AssetBackedLLMModelBase.init(configuration:variant:)(va, a3, v4);
}

void sub_18E1C66B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, int a25, char a26, int a27, char a28, int a29, char a30)
{
  *(v32 - 216) = v31;
  *(v32 - 215) = a24;
  *(v32 - 214) = a26;
  *(v32 - 213) = a28;
  *(v32 - 212) = a30;
  *(v32 - 211) = v30;
  *(v32 - 209) = BYTE2(v30);
}

unint64_t sub_18E1C670C(uint64_t a1, uint64_t a2)
{

  return sub_18E291C98(a1);
}

void sub_18E1C6760()
{

  JUMPOUT(0x193ACC300);
}

__n128 *sub_18E1C6788(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  result[2].n128_u64[1] = 808334898;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 808334898;
  result[4].n128_u64[1] = 0xE400000000000000;
  result[5].n128_u8[0] = 5;
  result[5].n128_u64[1] = 808334898;
  result[6].n128_u64[0] = 0xE400000000000000;
  return result;
}

id sub_18E1C67BC()
{

  return objc_allocWithZone(v0);
}

void *sub_18E1C68BC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);

  return memcpy(va, (v34 - 248), 0xC1uLL);
}

uint64_t sub_18E1C6900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_18E44F26C();
}

uint64_t sub_18E1C6924(uint64_t result)
{
  *(result + 80) = 5;
  *(result + 88) = 3419698;
  *(result + 96) = 0xE300000000000000;
  *(result + 104) = 3;
  return result;
}

__n128 *sub_18E1C6A44(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  result[2].n128_u64[1] = 808335409;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 808334641;
  result[4].n128_u64[1] = 0xE400000000000000;
  result[5].n128_u8[0] = 5;
  result[5].n128_u64[1] = 3419698;
  result[6].n128_u64[0] = 0xE300000000000000;
  return result;
}

void sub_18E1C6AE8()
{

  sub_18E3EFF88();
}

uint64_t sub_18E1C6BD8()
{

  return sub_18E44F39C();
}

__n128 *sub_18E1C6C38(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v3;
  result[2].n128_u64[1] = 808335409;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 808334641;
  result[4].n128_u64[1] = 0xE400000000000000;
  result[5].n128_u8[0] = 3;
  result[5].n128_u64[1] = 808334898;
  result[6].n128_u64[0] = 0xE400000000000000;
  result[6].n128_u8[8] = 5;
  result[7].n128_u64[0] = 3419698;
  result[7].n128_u64[1] = 0xE300000000000000;
  *(v2 + 112) = result;
  return result;
}

__n128 *sub_18E1C6CB4(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = 1;
  result[2].n128_u64[1] = 808335409;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 808334641;
  result[4].n128_u64[1] = 0xE400000000000000;
  result[5].n128_u8[0] = 3;
  result[5].n128_u64[1] = 808334898;
  result[6].n128_u64[0] = 0xE400000000000000;
  result[6].n128_u8[8] = 5;
  result[7].n128_u64[0] = 3419698;
  result[7].n128_u64[1] = 0xE300000000000000;
  return result;
}

uint64_t sub_18E1C6D24(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_18E1C6D58(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_18E1C6D8C(uint64_t a1)
{

  return swift_once();
}

unint64_t sub_18E1C6DAC(char a1)
{
  result = 0xD00000000000001DLL;
  switch(a1)
  {
    case 1:
    case 7:
    case 8:
    case 9:
    case 19:
    case 100:
    case 106:
    case 121:
    case 123:
      result = 0xD000000000000026;
      break;
    case 2:
    case 98:
      result = 0xD00000000000002DLL;
      break;
    case 3:
      result = 0xD000000000000037;
      break;
    case 4:
    case 5:
    case 6:
    case 94:
      result = 0xD000000000000030;
      break;
    case 10:
    case 63:
    case 112:
    case 117:
      result = 0xD00000000000001FLL;
      break;
    case 12:
    case 21:
    case 122:
      result = 0xD000000000000025;
      break;
    case 13:
    case 75:
    case 99:
    case 102:
    case 108:
      result = 0xD00000000000001BLL;
      break;
    case 14:
      result = 0xD00000000000002CLL;
      break;
    case 15:
    case 17:
    case 54:
    case 60:
      result = 0xD000000000000016;
      break;
    case 16:
    case 34:
    case 44:
    case 97:
    case 120:
      result = 0xD000000000000027;
      break;
    case 18:
    case 77:
    case 101:
    case 114:
      result = 0xD000000000000020;
      break;
    case 20:
    case 61:
    case 72:
    case 84:
    case 103:
    case 104:
      result = 0xD00000000000001CLL;
      break;
    case 22:
      result = 0xD000000000000039;
      break;
    case 23:
      result = 0xD000000000000046;
      break;
    case 24:
    case 26:
      result = 0xD00000000000003ELL;
      break;
    case 25:
      result = 0xD000000000000031;
      break;
    case 27:
    case 56:
    case 57:
      result = 0xD00000000000003FLL;
      break;
    case 28:
      result = 0xD00000000000004CLL;
      break;
    case 29:
      result = 0xD000000000000041;
      break;
    case 30:
      result = 0xD00000000000004ELL;
      break;
    case 31:
    case 36:
      result = 0xD000000000000040;
      break;
    case 32:
    case 35:
      result = 0xD000000000000033;
      break;
    case 33:
      result = 0xD00000000000003BLL;
      break;
    case 37:
    case 47:
    case 52:
    case 64:
    case 125:
      result = 0xD000000000000024;
      break;
    case 38:
    case 53:
    case 82:
      result = 0xD000000000000017;
      break;
    case 39:
    case 67:
    case 109:
      result = 0xD00000000000001ELL;
      break;
    case 40:
    case 62:
    case 65:
    case 83:
    case 85:
    case 105:
      result = 0xD000000000000019;
      break;
    case 41:
    case 42:
    case 46:
    case 51:
    case 86:
    case 88:
    case 91:
    case 95:
    case 115:
    case 118:
      result = sub_18E1E11C0();
      break;
    case 43:
    case 93:
    case 96:
    case 107:
      result = 0xD000000000000028;
      break;
    case 45:
    case 71:
    case 79:
    case 90:
    case 119:
      result = 0xD00000000000001ALL;
      break;
    case 48:
    case 58:
      result = 0xD00000000000002ELL;
      break;
    case 49:
      result = 0xD000000000000034;
      break;
    case 50:
      result = 0xD000000000000038;
      break;
    case 55:
    case 68:
    case 73:
    case 76:
    case 111:
      result = 0xD000000000000023;
      break;
    case 59:
      result = 0xD00000000000002FLL;
      break;
    case 66:
    case 80:
    case 124:
      result = 0xD000000000000014;
      break;
    case 69:
      result = 0xD000000000000015;
      break;
    case 70:
    case 74:
    case 78:
      result = 0xD000000000000021;
      break;
    case 81:
      result = 0xD000000000000013;
      break;
    case 87:
      result = 0xD000000000000018;
      break;
    case 89:
    case 92:
      result = 0xD00000000000002ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18E1C7750()
{

  return swift_beginAccess();
}

uint64_t sub_18E1C7780(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_18E1C7804(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_18E1C7824(uint64_t a1)
{

  return sub_18E1E8F44(a1, v1, v2);
}

unint64_t sub_18E1C78D8()
{

  return sub_18E26DBE8(v0);
}

uint64_t sub_18E1C791C(uint64_t a1)
{

  return swift_once();
}

_BYTE *sub_18E1C7960(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 125 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 125) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x83)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x82)
  {
    v6 = ((a2 - 131) >> 8) + 1;
    *result = a2 + 125;
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
        JUMPOUT(0x18E1C7A2CLL);
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
          *result = a2 + 125;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18E1C7A5C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x83)
  {
    if (a2 + 125 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 125) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 126;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x7E;
  v5 = v6 - 126;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t static UseCaseIdentifier.== infix(_:_:)(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_18E1C6DAC(*a1);
  v5 = v4;
  if (v3 == sub_18E1C6DAC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_18E44F3CC();
  }

  return v8 & 1;
}

double static PartnerCapabilities.ChatGPT()@<D0>(uint64_t a1@<X8>)
{
  sub_18E2706EC(&qword_1EABE0FE0, &qword_18E49D9E0);
  sub_18E44E79C();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18E49D9B0;
  sub_18E44E75C();
  sub_18E2706EC(&qword_1EABE0FE8, &qword_18E49D9E8);
  sub_18E44E72C();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_18E49D9B0;
  sub_18E44E6BC();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18E49D9C0;
  sub_18E44E76C();
  sub_18E44E78C();
  sub_18E44E77C();
  *a1 = 1;
  *(a1 + 8) = 100000;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = 1;
  *&result = 100000;
  *(a1 + 40) = xmmword_18E49D9D0;
  *(a1 + 56) = &unk_1F011DEA8;
  *(a1 + 64) = &unk_1F011DED0;
  *(a1 + 72) = v4;
  *(a1 + 80) = 257;
  *(a1 + 88) = &unk_1F011DEF8;
  *(a1 + 96) = &unk_1F011DF20;
  *(a1 + 104) = &unk_1F011DF70;
  *(a1 + 112) = &unk_1F011DF98;
  *(a1 + 120) = &unk_1F011DFC0;
  *(a1 + 128) = &unk_1F011DFE8;
  return result;
}

uint64_t sub_18E1C7E6C(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

void sub_18E1C7EA4(uint64_t *a1@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  *(v2 + 48) = v4;
  *(v2 + 56) = v5;
  *(v2 + 64) = v6;
  *(v2 + 72) = v7;
  *(v2 + 96) = 1390000;
  *(v2 + 104) = 0;
  *(v2 + 108) = 0;
}

void sub_18E1C7EF4()
{

  JUMPOUT(0x193ACD400);
}

double sub_18E1C7F10()
{
  *(v0 + 288) = 0;
  result = 0.0;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 176) = 0u;
  return result;
}

uint64_t sub_18E1C7F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_18E1C7F64()
{
  v1 = *(v0 + 104);
  sub_18E1E15F4((v0 + 80), v1);
  return v1;
}

uint64_t sub_18E1C8078(uint64_t a1, uint64_t a2)
{

  return sub_18E44F3CC();
}

void *sub_18E1C80C0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return memcpy(va, v9, 0xD8uLL);
}

uint64_t Capabilities.imageGeneration.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 32), sizeof(__dst));
  memcpy(a1, (v1 + 32), 0x68uLL);
  return sub_18E1C867C(__dst, &v4);
}

void sub_18E1C820C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

double sub_18E1C824C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16)
{

  return sub_18E26C3FC(v16, &a16);
}

uint64_t sub_18E1C828C(unint64_t *a1)
{

  return sub_18E1E1638(a1, v1, v2, &protocol conformance descriptor for ResourceBundleIdentifier<A>);
}

uint64_t sub_18E1C82DC(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_18E1C8328(uint64_t result)
{
  *(result + 40) = 808335409;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = 808334641;
  *(result + 72) = 0xE400000000000000;
  *(result + 80) = 3;
  *(result + 88) = 808334898;
  *(result + 96) = 0xE400000000000000;
  *(result + 104) = 5;
  *(result + 112) = 3419698;
  *(result + 120) = 0xE300000000000000;
  return result;
}

uint64_t sub_18E1C8374(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

void sub_18E1C83A8()
{
  *(v0 + 8 * (v3 >> 6) + 64) |= 1 << v3;
  *(*(v0 + 48) + v3) = v1;
  *(*(v0 + 56) + 8 * v3) = v2;
}

uint64_t sub_18E1C842C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_18E1C844C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_18E1C84B4(uint64_t a1, uint64_t a2)
{

  return sub_18E44F2AC();
}

uint64_t sub_18E1C8558(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t sub_18E1C85D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 40) = a2 + 768;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = a2;
  *(result + 72) = 0xE400000000000000;
  *(result + 80) = 5;
  *(result + 88) = 3419698;
  *(result + 96) = 0xE300000000000000;
  return result;
}

uint64_t sub_18E1C86EC()
{

  return sub_18E44E6DC();
}

uint64_t sub_18E1C8734@<X0>(char a1@<W8>)
{
  *(v1 - 81) = a1;

  return sub_18E44F20C();
}

uint64_t sub_18E1C87AC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 40) = a2;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = a2;
  *(result + 72) = 0xE400000000000000;
  *(result + 80) = 5;
  *(result + 88) = a2;
  *(result + 96) = 0xE400000000000000;
  *(v2 + 112) = result;
  return result;
}

id sub_18E1C87D4()
{

  return objc_allocWithZone(v0);
}

void *sub_18E1C882C()
{

  return sub_18E201B68(v0);
}

void sub_18E1C884C()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2048;
  *(v0 + 14) = *(v2 - 312);
}

void sub_18E1C8880()
{

  os_unfair_lock_unlock(v0 + 6);
}

uint64_t sub_18E1C88A0(uint64_t a1, uint64_t a2)
{

  return sub_18E44EB4C();
}

uint64_t sub_18E1C88FC@<X0>(uint64_t a1@<X8>)
{
  *v2 = v4;
  v2[1] = a1;
  sub_18E1C551C((v1 + 40), (v2 + 2));
  return v3;
}

unint64_t sub_18E1C892C(uint64_t a1, uint64_t a2)
{

  return sub_18E1D5D44(a1);
}

uint64_t sub_18E1C8950(uint64_t a1)
{

  return swift_once();
}

id sub_18E1C89DC()
{

  return [v0 (v3 + 888)];
}

__n128 sub_18E1C89FC(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  *(v12 + 56) = a1;
  a1[1].n128_u64[0] = v10;
  a1[1].n128_u64[1] = v11;
  result = a10;
  a1[2] = a10;
  return result;
}

void sub_18E1C8A14()
{

  JUMPOUT(0x193ACC300);
}

void sub_18E1C8A38()
{

  JUMPOUT(0x193ACCC20);
}

uint64_t sub_18E1C8A68()
{
}

uint64_t sub_18E1C8AB4(uint64_t a1)
{

  return swift_once();
}

__n128 sub_18E1C8AD4()
{
  result = *(v1 - 248);
  v3 = *(v1 - 232);
  *(v0 + 136) = result;
  *(v0 + 152) = v3;
  return result;
}

uint64_t sub_18E1C8B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_18E44F26C();
}

__n128 *sub_18E1C8B30(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v3;
  result[2].n128_u64[1] = 808334898;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 808334898;
  result[4].n128_u64[1] = 0xE400000000000000;
  result[5].n128_u8[0] = 5;
  result[5].n128_u64[1] = 808334898;
  result[6].n128_u64[0] = 0xE400000000000000;
  *(v2 + 112) = result;
  return result;
}

uint64_t sub_18E1C8B84(uint64_t result)
{
  *(result + 40) = 808335409;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = 808334641;
  *(result + 72) = 0xE400000000000000;
  *(result + 80) = 5;
  *(result + 88) = 3419698;
  *(result + 96) = 0xE300000000000000;
  *(result + 104) = 3;
  *(result + 112) = 808334898;
  *(result + 120) = 0xE400000000000000;
  return result;
}

void *sub_18E1C8BF4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return memcpy(va, v9, 0xD8uLL);
}

uint64_t sub_18E1C8C1C(uint64_t a1)
{

  return swift_once();
}

id sub_18E1C8CC0(uint64_t a1, const char *a2)
{
  v5 = *(v3 - 240);

  return [v5 a2];
}

void sub_18E1C8CE0(uint64_t a1@<X8>)
{
  *(v1 + 56) = a1;
  *(v1 + 64) = 1;
  *(v1 + 72) = 0;
  *(v1 + 80) = a1;
  *(v1 + 88) = a1;
  *(v1 + 96) = 256;
  *(v1 + 104) = a1;
}

uint64_t sub_18E1C8D14(uint64_t result)
{
  *(result + 40) = 808334898;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = 808334898;
  *(result + 72) = 0xE400000000000000;
  *(result + 80) = 5;
  *(result + 88) = 808334898;
  *(result + 96) = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1C8DA0(uint64_t a1)
{

  return sub_18E44F0EC();
}

uint64_t sub_18E1C8DC0()
{
}

uint64_t sub_18E1C8DF0(uint64_t a1, uint64_t a2)
{

  return sub_18E44F3CC();
}

uint64_t sub_18E1C8E7C(uint64_t result)
{
  *(result + 40) = 875444273;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = 875443505;
  *(result + 72) = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1C8EE8(uint64_t a1)
{

  return swift_allocError();
}

void sub_18E1C8F4C()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2048;
  *(v0 + 14) = *(v2 - 312);
}

uint64_t sub_18E1C8F88()
{

  return swift_beginAccess();
}

uint64_t sub_18E1C8FA8()
{

  return sub_18E44E6DC();
}

uint64_t sub_18E1C9020@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 40) = a2;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = a2;
  *(result + 72) = 0xE400000000000000;
  *(result + 80) = 5;
  *(result + 88) = a2;
  *(result + 96) = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1C9074@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 112) = *a1;
  *(v3 - 96) = a2;
  return v2;
}

ModelCatalog::ResourceBundleQuery __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ResourceBundleQuery.init(configurationIdentifier:arguments:)(Swift::String configurationIdentifier, Swift::OpaquePointer_optional arguments)
{
  rawValue = arguments.value._rawValue;
  object = configurationIdentifier._object;
  countAndFlagsBits = configurationIdentifier._countAndFlagsBits;
  v8 = v2;
  v52 = configurationIdentifier._countAndFlagsBits;
  if (!arguments.value._rawValue)
  {

LABEL_22:
    if (qword_1ED6A8418 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_28;
  }

  v47 = v2;
  v48 = v3;
  v8 = arguments.value._rawValue + 64;
  sub_18E1CF244();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v49 = object;

  object = 0;
  v50 = v13;
  v51 = rawValue;
  if (!v11)
  {
LABEL_3:
    while (1)
    {
      v14 = (object + 1);
      if (__OFADD__(object, 1))
      {
        break;
      }

      if (v14 >= v13)
      {

        object = v49;
        v8 = v47;
        goto LABEL_22;
      }

      v11 = v8[v14];
      ++object;
      if (v11)
      {
        object = v14;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
LABEL_23:
    v38 = sub_18E44E83C();
    sub_18E1C95EC(v38, qword_1ED6A9858);

    v39 = sub_18E44E80C();
    v40 = sub_18E44EE2C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v54[0] = v53;
      *v41 = 136315394;
      v42 = sub_18E1C9624(countAndFlagsBits, object, v54);

      *(v41 + 4) = v42;
      *(v41 + 12) = 2080;
      v54[10] = rawValue;
      sub_18E2706EC(&qword_1EABE0DA8, &unk_18E49CE10);
      v43 = sub_18E44EB0C();
      v45 = v8;
      v46 = sub_18E1C9624(v43, v44, v54);

      *(v41 + 14) = v46;
      v8 = v45;
      countAndFlagsBits = v52;
      _os_log_impl(&dword_18E1C1000, v39, v40, "ResourceBundleQuery: Creating with configuration identifier: %s, arguments: %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193ACD400](v53, -1, -1);
      MEMORY[0x193ACD400](v41, -1, -1);
    }

    else
    {
    }

    *v8 = countAndFlagsBits;
    v8[1] = object;
    v8[2] = rawValue;
    goto LABEL_29;
  }

LABEL_7:
  sub_18E1E64AC();
  v15 = qword_1ED6A8340;

  if (v15 != -1)
  {
    sub_18E1C663C();
    swift_once();
  }

  v16 = qword_1ED6A9848;
  if (*(qword_1ED6A9848 + 16))
  {
    v11 &= v11 - 1;
    sub_18E44F48C();
    sub_18E44EB4C();
    sub_18E44F4CC();
    sub_18E1C5B14();
    v19 = ~v18;
    while (1)
    {
      v20 = v17 & v19;
      if (((*(v16 + 56 + (((v17 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v19)) & 1) == 0)
      {
        break;
      }

      v21 = (*(v16 + 48) + 16 * v20);
      if (*v21 != countAndFlagsBits || v21[1] != v4)
      {
        v23 = sub_18E44F3CC();
        v17 = v20 + 1;
        if ((v23 & 1) == 0)
        {
          continue;
        }
      }

      rawValue = v51;
      countAndFlagsBits = v52;
      v13 = v50;
      if (v11)
      {
        goto LABEL_7;
      }

      goto LABEL_3;
    }
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  type metadata accessor for CatalogErrors.QueryError(0);
  v24 = sub_18E270600();
  sub_18E1CE978(v24);

  sub_18E1D62E4();

  sub_18E1CC38C();
  v25 = sub_18E44EDBC();
  MEMORY[0x193ACC300](v25);

  sub_18E1E2CE8(v26, v27, v28, v29, v30, v31, v32, v33, v47, v48, v49, v50, v51, v52, v13, v54[0], v54[1]);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_29:
  result.arguments.value._rawValue = v36;
  result.configurationIdentifier._object = v35;
  result.configurationIdentifier._countAndFlagsBits = v34;
  result.arguments.is_nil = v37;
  return result;
}

void sub_18E1C94FC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t sub_18E1C9574(uint64_t result)
{
  *(result + 40) = v1;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  return result;
}

uint64_t sub_18E1C9588(uint64_t result)
{
  *(result + 40) = 841889841;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = 841889073;
  *(result + 72) = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1C95AC(uint64_t a1, uint64_t a2)
{
  sub_18E1C95EC(a1, a2);

  return swift_beginAccess();
}

uint64_t sub_18E1C95EC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_18E1C9624(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_18E23458C();

  v6 = sub_18E1C9834(v11, 0, 0, 1, v4, v3);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = v4;
    v11[1] = v3;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_18E1C97D8(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_18E1C9934(v11);
  return v7;
}

uint64_t sub_18E1C970C()
{

  return sub_18E44E6DC();
}

void sub_18E1C973C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{

  sub_18E1D46CC(v36, v35);
}

uint64_t sub_18E1C97B8()
{
}

uint64_t sub_18E1C97D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_18E1C9834(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_18E249828(a5, a6);
    *a1 = v9;
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
    result = sub_18E44F07C();
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

uint64_t sub_18E1C9934(void *a1)
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

__n128 initializeBufferWithCopyOfBuffer for AssetSpecificationVersion(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t dispatch thunk of CatalogClientProtocol.queryResourceBundle(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 64))(a1, a2);
}

{
  return (*(a3 + 48))(a1, a2);
}

void CatalogClientProtocol.queryResourceBundle(with:)()
{
  sub_18E1C570C();
  sub_18E44E54C();
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v1);
  sub_18E1C58B4();
  ResourceBundleQuery.toURI()();
  if (!v0)
  {
    v2 = sub_18E1D61F8();
    v3(v2);
    v4 = sub_18E1C8D64();
    v5(v4);
  }
}

{
  sub_18E1C570C();
  type metadata accessor for CatalogIndex(0);
  static CatalogIndex.resolveResourceBundleQueryURI(uri:)();
  if (!v0)
  {
    (*(v1 + 16))();
  }
}

void sub_18E1C9AF8()
{
  sub_18E1C62A0();
  v60 = v2;
  v61 = v1;
  v4 = v3;
  v5 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v5);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v52 - v7;
  sub_18E44E2BC();
  sub_18E1C4EAC();
  v67 = v9;
  v68 = v10;
  MEMORY[0x1EEE9AC00](v9);
  sub_18E1C4EDC();
  v63 = v12 - v11;
  v13 = sub_18E44E38C();
  sub_18E1C4EAC();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_18E1C4EDC();
  v19 = v18 - v17;
  v21 = *v0;
  v20 = v0[1];
  v22 = v0[2];
  sub_18E44E37C();

  v58 = v20;
  v59 = v21;
  MEMORY[0x193ACBAD0](v21, v20);
  if (v22 && (v23 = *(v22 + 16)) != 0)
  {
    v53 = v8;
    v54 = v4;
    v55 = v19;
    v56 = v15;
    v57 = v13;
    v72[0] = MEMORY[0x1E69E7CC0];
    sub_18E1CA37C();
    v24 = v72[0];
    v27 = sub_18E1CA7A0();
    v28 = 0;
    v75 = v22 + 64;
    v65 = v23;
    v66 = v68 + 32;
    v64 = v25;
    v62 = v22 + 72;
    v29 = v22;
    v30 = v63;
    do
    {
      if (v27 < 0 || v27 >= 1 << *(v29 + 32))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v31 = v27 >> 6;
      if ((*(v75 + 8 * (v27 >> 6)) & (1 << v27)) == 0)
      {
        goto LABEL_31;
      }

      if (*(v29 + 36) != v25)
      {
        goto LABEL_32;
      }

      v70 = v28;
      v71 = v25;
      v69 = v26;

      sub_18E44E28C();

      v72[0] = v24;
      v32 = *(v24 + 16);
      if (v32 >= *(v24 + 24) >> 1)
      {
        sub_18E1CA37C();
        v24 = v72[0];
      }

      *(v24 + 16) = v32 + 1;
      sub_18E1C96E4();
      (*(v34 + 32))(v24 + v33 + *(v34 + 72) * v32, v30);
      v35 = 1 << *(v29 + 32);
      if (v27 >= v35)
      {
        goto LABEL_33;
      }

      v36 = *(v75 + 8 * v31);
      if ((v36 & (1 << v27)) == 0)
      {
        goto LABEL_34;
      }

      if (*(v29 + 36) != v71)
      {
        goto LABEL_35;
      }

      v37 = v36 & (-2 << (v27 & 0x3F));
      if (v37)
      {
        v35 = __clz(__rbit64(v37)) | v27 & 0x7FFFFFFFFFFFFFC0;
        v38 = v65;
        v39 = v70;
      }

      else
      {
        v40 = v31 << 6;
        v41 = v31 + 1;
        v42 = (v62 + 8 * v31);
        v38 = v65;
        while (v41 < (v35 + 63) >> 6)
        {
          v44 = *v42++;
          v43 = v44;
          v40 += 64;
          ++v41;
          if (v44)
          {
            sub_18E249F2C(v27, v71, v69 & 1);
            v35 = __clz(__rbit64(v43)) + v40;
            goto LABEL_20;
          }
        }

        sub_18E249F2C(v27, v71, v69 & 1);
LABEL_20:
        v30 = v63;
        v39 = v70;
      }

      v26 = 0;
      v28 = v39 + 1;
      v27 = v35;
      v25 = v64;
    }

    while (v28 != v38);
    v45 = v29;
    v72[0] = v24;

    v46 = v61;
    sub_18E1CA7DC(v72);
    v8 = v53;
    v61 = v46;
    if (!v46)
    {

      v19 = v55;
      sub_18E44E2FC();
      v15 = v56;
      v13 = v57;
      v4 = v54;
      goto LABEL_26;
    }

LABEL_36:

    __break(1u);
  }

  else
  {
    v45 = v22;
LABEL_26:
    sub_18E44E32C();
    v47 = sub_18E44E54C();
    if (sub_18E1CAF28(v8, 1, v47) == 1)
    {
      sub_18E1E8EEC(v8, &qword_1EABE2FE0, &qword_18E49CE00);
      type metadata accessor for CatalogErrors.QueryError(0);
      sub_18E270600();
      swift_allocError();
      v49 = v48;
      v50 = (v48 + *(sub_18E2706EC(&qword_1EABE0DA0, &qword_18E49CE08) + 48));
      (*(v15 + 16))(v49, v19, v13);
      v73 = 0;
      v74 = 0xE000000000000000;
      v72[0] = v59;
      v72[1] = v58;
      v72[2] = v45;
      sub_18E44F0DC();
      v51 = v74;
      *v50 = v73;
      v50[1] = v51;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v15 + 8))(v19, v13);
    }

    else
    {
      (*(v15 + 8))(v19, v13);
      (*(*(v47 - 8) + 32))(v4, v8, v47);
    }

    sub_18E1C6650();
  }
}

unint64_t sub_18E1CA0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_18E1CBD4C();
}

double sub_18E1CA16C()
{
  *(v0 + 168) = 0;
  result = 0.0;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  return result;
}

__n128 *sub_18E1CA1C0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  result[2].n128_u64[1] = 875444273;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 875443505;
  result[4].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1CA1F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 64) = a2;
  *(result + 72) = v2;
  *(result + 80) = 5;
  *(result + 88) = 3419698;
  *(result + 96) = 0xE300000000000000;
  return result;
}

double sub_18E1CA298()
{
  *(v0 + 288) = 0;
  result = 0.0;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  return result;
}

unint64_t sub_18E1CA340(uint64_t a1)
{
  *(v3 - 136) = a1;
  *v1 = *(v3 - 432);
  v5 = *(v3 - 368);

  return sub_18E1C9624(v5, v2, (v3 - 136));
}

void sub_18E1CA37C()
{
  sub_18E1C6850();
  sub_18E1CA3C4();
  *v0 = v1;
}

void sub_18E1CA3C4()
{
  sub_18E1C575C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    sub_18E1C5534();
    if (v13 != v14)
    {
      sub_18E1E1CA8();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_18E1C5E88();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  sub_18E2706EC(v1, v2);
  v17 = *(v6(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = j__malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v6(0);
  sub_18E1C96E4();
  if (v10)
  {
    sub_18E26E004(v8 + v23, v15, v20 + v23, v4);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  sub_18E1C5544();
}

uint64_t sub_18E1CA578()
{
  v2 = *(v0 + 64);

  return sub_18E2886E4(v2, type metadata accessor for RawGuardrailResult);
}

void sub_18E1CA5D4()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

void sub_18E1CA614(uint64_t *a1@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  *(v3 + 48) = v2;
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  *(v3 + 72) = v7;
  *(v3 + 96) = 0;
  *(v3 + 101) = 0;
}

uint64_t sub_18E1CA644(uint64_t a1, uint64_t a2)
{
  sub_18E1C95EC(a1, a2);

  return swift_beginAccess();
}

void *sub_18E1CA720(void *a1)
{
  *v1 = a1;

  return memcpy(a1, v2, 0xD8uLL);
}

uint64_t sub_18E1CA740(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 40) = 100000;
  *(v1 + 48) = 0;
  *(v1 + 52) = 0;
  return result;
}

uint64_t sub_18E1CA780(uint64_t a1)
{

  return swift_allocObject();
}

void sub_18E1CA7DC(uint64_t *a1)
{
  v2 = sub_18E44E2BC();
  sub_18E1C5B08(v2);
  v4 = v3;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_18E1CA880(v5);
    v5 = v6;
  }

  v7 = *(v5 + 16);
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v7;
  sub_18E1CABA8(v8);
  *a1 = v5;
}

void sub_18E1CA8D0()
{
  sub_18E1C62A0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_18E44E2BC();
  sub_18E1C4EAC();
  MEMORY[0x1EEE9AC00](v9);
  sub_18E1C64E0();
  v53 = v10;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1CA564();
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v43 - v15;
  v45 = v5;
  if (v3 != v5)
  {
    v17 = v14;
    v18 = *v1;
    v20 = *(v13 + 16);
    v19 = v13 + 16;
    v21 = *(v19 + 56);
    v54 = (v19 - 8);
    v55 = v20;
    v51 = (v19 + 16);
    v52 = v18;
    v22 = v18 + v21 * (v3 - 1);
    v50 = -v21;
    v23 = v7 - v3;
    v44 = v21;
    v24 = v18 + v21 * v3;
    while (2)
    {
      v48 = v22;
      v49 = v3;
      v46 = v24;
      v47 = v23;
      v25 = v22;
      while (1)
      {
        v26 = v55;
        v55(v16, v24, v8);
        v26(v17, v25, v8);
        v27 = sub_18E44E29C();
        v28 = v16;
        v29 = v17;
        v31 = v30;
        v32 = sub_18E44E29C();
        if (v27 == v32 && v31 == v33)
        {
          break;
        }

        v35 = sub_18E221AF0(v27, v31, v32);

        v36 = *v54;
        (*v54)(v29, v8);
        v37 = sub_18E1C89D0();
        v36(v37);
        v17 = v29;
        v16 = v28;
        if (v35)
        {
          if (!v52)
          {
            __break(1u);
            return;
          }

          v38 = *v51;
          v39 = v53;
          (*v51)(v53, v24, v8);
          swift_arrayInitWithTakeFrontToBack();
          v38(v25, v39, v8);
          v25 += v50;
          v24 += v50;
          if (!__CFADD__(v23++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v41 = *v54;
      (*v54)(v29, v8);
      v42 = sub_18E1C89D0();
      v41(v42);
      v17 = v29;
      v16 = v28;
LABEL_14:
      v3 = v49 + 1;
      v22 = v48 + v44;
      v23 = v47 - 1;
      v24 = v46 + v44;
      if (v49 + 1 != v45)
      {
        continue;
      }

      break;
    }
  }

  sub_18E1C6650();
}

void sub_18E1CABA8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (sub_18E44F38C() < v1)
  {
    if (v1 >= -1)
    {
      v2 = v1 / 2;
      if (v1 <= 1)
      {
        v3 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_18E44E2BC();
        v3 = sub_18E44ECCC();
        *(v3 + 16) = v2;
      }

      v4 = sub_18E44E2BC();
      sub_18E1C5B08(v4);
      sub_18E1C96E4();
      sub_18E26E0E8();
      *(v3 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v1 < 0)
  {
    goto LABEL_12;
  }

  if (v1)
  {
    sub_18E1CA8D0();
  }
}

uint64_t sub_18E1CAD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return swift_dynamicCast();
}

__n128 sub_18E1CAD88(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  a1[1] = a10;
  a1[2].n128_u8[0] = 2;
  a1[2].n128_u64[1] = 875443505;
  a1[3].n128_u64[0] = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1CADF8()
{
  *(v1 - 344) = v0;

  return swift_slowAlloc();
}

uint64_t sub_18E1CAE34()
{

  return sub_18E44E6DC();
}

uint64_t sub_18E1CAEE8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = __clz(v2) | (a2 << 6);
  v5 = (*(result + 48) + 16 * v4);
  v3[26] = *v5;
  v3[27] = v5[1];
  v3[28] = *(*(result + 56) + 8 * v4);
  return result;
}

uint64_t sub_18E1CAF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_18E44F3CC();
}

void *sub_18E1CAFC8(void *__src)
{

  return memcpy((v1 - 248), __src, 0xC1uLL);
}

uint64_t sub_18E1CB024(uint64_t a1, uint64_t a2)
{

  return sub_18E2FB4EC(a1, a2, v2, v3);
}

__n128 *sub_18E1CB03C(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  result[2].n128_u64[1] = 808335409;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 808334641;
  result[4].n128_u64[1] = 0xE400000000000000;
  return result;
}

id sub_18E1CB068(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_18E1CB084@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 64) = a2;
  *(result + 72) = v2;
  *(result + 80) = 5;
  *(result + 88) = 3419698;
  *(result + 96) = 0xE300000000000000;
  *(result + 104) = 3;
  *(result + 112) = a2 + 257;
  *(result + 120) = v2;
  return result;
}

uint64_t sub_18E1CB0E4(uint64_t a1)
{

  return MEMORY[0x1EEDC6098](a1, v1, v2);
}

uint64_t type metadata accessor for CatalogIndex(uint64_t a1)
{
  result = qword_1ED6A9500;
  if (!qword_1ED6A9500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static CatalogIndex.resolveResourceBundleQueryURI(uri:)()
{
  sub_18E1C62A0();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v6 = sub_18E44E38C();
  sub_18E1C4EAC();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_18E1C4EDC();
  v12 = v11 - v10;
  v113 = sub_18E44E2BC();
  sub_18E1C4EAC();
  v115 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_18E1C86C0();
  v112 = v15 - v16;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v17);
  v111 = v93 - v18;
  v19 = sub_18E2706EC(&qword_1EABE0DB0, &unk_18E4E24B0);
  sub_18E1C5B08(v19);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v20);
  sub_18E1CAF50();
  v120 = v21;
  v22 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v22);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v23);
  sub_18E1CAF50();
  v119 = v24;
  v25 = sub_18E44E54C();
  sub_18E1C4EAC();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  sub_18E1C4EDC();
  v121 = v30 - v29;
  v125 = sub_18E44E49C();
  v32 = v31;
  v118 = sub_18E44E4FC();
  v122 = v33;
  if (!v33)
  {
    goto LABEL_7;
  }

  if (qword_1ED6A7EF0 != -1)
  {
LABEL_43:
    swift_once();
  }

  v116 = v32;
  v34 = sub_18E21654C(v125, v32, qword_1ED6A7DA0);
  if (!v34)
  {

    goto LABEL_7;
  }

  v35 = v34;
  static VariantHelpers.isResourceBundleQueryURIResolved(uri:)();
  if (v36)
  {

    sub_18E44E48C();
LABEL_7:
    sub_18E1C6650();
    return;
  }

  v109 = v3;
  v98 = v5;
  v99 = v12;
  v110 = v6;
  v6 = v35 + 64;
  v37 = 1 << *(v35 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v12 = v38 & *(v35 + 64);
  v39 = (v37 + 63) >> 6;
  v108 = (v27 + 32);
  v100 = v8;
  v103 = (v8 + 8);
  v97 = v115 + 16;
  v96 = v115 + 8;
  v107 = (v27 + 8);
  v95 = v115 + 32;
  v114 = v35;

  v32 = 0;
  v101 = MEMORY[0x1E69E7CC0];
  v105 = v39;
  v106 = v6;
  while (2)
  {
    v40 = v32;
    if (!v12)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v32 = v40;
LABEL_16:
      v41 = (v32 << 10) | (16 * __clz(__rbit64(v12)));
      v42 = *(v114 + 56);
      v43 = (*(v114 + 48) + v41);
      v27 = v43[1];
      v104 = *v43;
      v44 = (v42 + v41);
      v8 = v44[1];
      v123 = *v44;
      v124 = v8;
      swift_bridgeObjectRetain_n();

      MEMORY[0x193ACC300](63, 0xE100000000000000);
      MEMORY[0x193ACC300](v118, v122);
      v45 = v123;
      v46 = v119;
      v117 = v124;
      sub_18E44E50C();
      v47 = sub_18E1D4DCC();
      if (sub_18E1CAF28(v47, v48, v25) == 1)
      {
        sub_18E1CD978();

        sub_18E1E8EEC(v46, &qword_1EABE2FE0, &qword_18E49CE00);
        Error = type metadata accessor for CatalogErrors.QueryError(0);
        sub_18E1C6D0C();
        v84 = sub_18E3F6D08(v82, v83, &protocol conformance descriptor for CatalogErrors.QueryError);
        sub_18E1C8558(Error, v84);
        v86 = v85;
        v123 = 0;
        v124 = 0xE000000000000000;
        sub_18E44EFFC();
        MEMORY[0x193ACC300](0xD000000000000036, 0x800000018E477A60);
        sub_18E3F6D08(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v87 = sub_18E44F39C();
        MEMORY[0x193ACC300](v87);

        v88 = v123;
        v89 = v124;
        v90 = v117;
        *v86 = v45;
        v86[1] = v90;
        v86[2] = v88;
        v86[3] = v89;
        sub_18E1CF9A0();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        goto LABEL_7;
      }

      (*v108)(v121, v46, v25);
      if (qword_1ED6A8360 != -1)
      {
        swift_once();
      }

      static CatalogIndex.resolveResourceQueryURI(uri:variantResolverMappings:)();
      if (v2)
      {

        v91 = sub_18E1E315C();
        v92(v91, v25);
        sub_18E1CD978();

        goto LABEL_7;
      }

      v3 = v49;
      v50 = v25;
      v12 &= v12 - 1;
      v5 = v120;
      sub_18E44E35C();
      v51 = sub_18E1D4DCC();
      v52 = v110;
      if (sub_18E1CAF28(v51, v53, v110) != 1)
      {
        break;
      }

      v54 = sub_18E1E315C();
      v25 = v50;
      v55(v54, v50);

      sub_18E1E8EEC(v5, &qword_1EABE0DB0, &unk_18E4E24B0);
      v40 = v32;
LABEL_24:
      v39 = v105;
      v6 = v106;
      if (!v12)
      {
        while (1)
        {
LABEL_13:
          v32 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            __break(1u);
            goto LABEL_43;
          }

          if (v32 >= v39)
          {
            break;
          }

          v12 = *(v6 + 8 * v32);
          ++v40;
          if (v12)
          {
            goto LABEL_16;
          }
        }

        v70 = v99;
        sub_18E44E37C();
        MEMORY[0x193ACBAD0](v125, v116);
        if (*(v101 + 16))
        {
          v123 = v101;

          sub_18E3F05D4(&v123);
          v71 = v110;
          v72 = v100;
          if (v2)
          {
            goto LABEL_46;
          }

          sub_18E44E2FC();
        }

        else
        {

          v71 = v110;
          v72 = v100;
        }

        sub_18E44E36C();
        if (v73)
        {
          (*v103)(v70, v71);
        }

        else
        {
          type metadata accessor for CatalogErrors.QueryError(0);
          sub_18E1C6D0C();
          v76 = sub_18E3F6D08(v74, v75, &protocol conformance descriptor for CatalogErrors.QueryError);
          sub_18E1C8EE8(v76);
          v78 = v77;
          v79 = (v77 + *(sub_18E2706EC(&qword_1EABE0DA0, &qword_18E49CE08) + 48));
          (*(v72 + 16))(v78, v70, v71);
          sub_18E1CA5A4();
          *v79 = 0xD00000000000001ELL;
          v79[1] = v80;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          (*(v72 + 8))(v70, v71);
        }

        goto LABEL_7;
      }
    }

    v102 = 0;
    v5 = v120;
    v2 = sub_18E44E2EC();
    (*v103)(v120, v52);
    if (!v2)
    {
      v56 = sub_18E1E315C();
      v25 = v50;
      v57(v56, v50);

      v40 = v32;
      v2 = v102;
      goto LABEL_24;
    }

    if (*(v2 + 2))
    {
      v25 = v50;
      v58 = v115;
      v59 = *(v115 + 16);
      v94 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v60 = v111;
      v59(v111, &v2[v94], v113);
      v93[1] = sub_18E44E2AC();
      v61 = *(v58 + 8);
      v63 = v62;
      v61(v60, v113);
      if (v63)
      {

        v123 = v104;
        v124 = v27;
        v64 = sub_18E1E1244(0x6156u);
        MEMORY[0x193ACC300](v64, 0xE700000000000000);
        sub_18E44E28C();

        sub_18E1CD978();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v6 = v106;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_18E1CC468();
          sub_18E3EF9F0();
          v101 = v68;
        }

        v27 = v121;
        v5 = *(v101 + 16);
        v66 = *(v101 + 24);
        if (v5 >= v66 >> 1)
        {
          sub_18E1C8C60(v66);
          sub_18E3EF9F0();
          v101 = v69;
        }

        (*v107)(v27, v25);
        v67 = v101;
        *(v101 + 16) = v5 + 1;
        (*(v115 + 32))(v67 + v94 + *(v115 + 72) * v5, v112, v113);
        v2 = v102;
        v39 = v105;
        continue;
      }
    }

    else
    {
      __break(1u);
    }

    break;
  }

  __break(1u);
LABEL_46:

  __break(1u);
}

unint64_t sub_18E1CBD4C()
{
  sub_18E23458C();
  sub_18E44F48C();
  sub_18E1CAE1C();
  sub_18E44EB4C();
  sub_18E44F4CC();
  v0 = sub_18E1D0080();

  return sub_18E1CBEE8(v0, v1, v2);
}

uint64_t sub_18E1CBDCC(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

uint64_t sub_18E1CBDE8()
{

  return swift_allocObject();
}

uint64_t sub_18E1CBE48()
{
  result = *(v1 + 8);
  v3 = *(v1 + 16);
  *(v0 + 32) = *v1;
  *(v0 + 40) = result;
  *(v0 + 48) = v3;
  return result;
}

uint64_t sub_18E1CBE5C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 40) = a2 + 768;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = a2;
  *(result + 72) = 0xE400000000000000;
  *(result + 80) = 5;
  return result;
}

uint64_t sub_18E1CBE80()
{
  *(v0 + 56) = v1;
  *(v0 + 24) = sub_18E42BBD4;

  return swift_continuation_init();
}

uint64_t sub_18E1CBEB4(uint64_t a1, uint64_t a2)
{
  sub_18E1C95EC(a1, a2);

  return swift_beginAccess();
}

unint64_t sub_18E1CBEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_18E44F3CC() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void static VariantHelpers.isResourceBundleQueryURIResolved(uri:)()
{
  sub_18E1C575C();
  v1 = sub_18E44E2BC();
  sub_18E1C4EAC();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1C4EDC();
  v7 = v6 - v5;
  v8 = sub_18E2706EC(&qword_1EABE0DB0, &unk_18E4E24B0);
  v9 = sub_18E1C5B08(v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_18E1C86C0();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_18E1C89A8();
  sub_18E44E31C();
  sub_18E1CC250(v0, v12);
  v14 = sub_18E44E38C();
  v15 = sub_18E1D4DCC();
  if (sub_18E1CAF28(v15, v16, v14) == 1)
  {
    sub_18E1E8EEC(v0, &qword_1EABE0DB0, &unk_18E4E24B0);
    v17 = sub_18E208090();
LABEL_11:
    sub_18E1E8EEC(v17, v18, &unk_18E4E24B0);
    goto LABEL_12;
  }

  v19 = sub_18E44E2EC();
  sub_18E1C82B8();
  (*(v20 + 8))(v12, v14);
  if (!v19)
  {
    v18 = &qword_1EABE0DB0;
    v17 = v0;
    goto LABEL_11;
  }

  v21 = *(v19 + 16);
  if (v21)
  {
    v22 = 0;
    while (v21 != v22)
    {
      if (v22 >= *(v19 + 16))
      {
        __break(1u);
        return;
      }

      sub_18E1C96E4();
      (*(v3 + 16))(v7, v19 + v23 + *(v3 + 72) * v22++, v1);
      sub_18E44E29C();
      sub_18E1E1244(0x6156u);
      v24 = sub_18E44EBFC();

      (*(v3 + 8))(v7, v1);
      if ((v24 & 1) == 0)
      {
        break;
      }
    }
  }

  sub_18E1E8EEC(v0, &qword_1EABE0DB0, &unk_18E4E24B0);

LABEL_12:
  sub_18E1C5544();
}

uint64_t sub_18E1CC250(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E2706EC(&qword_1EABE0DB0, &unk_18E4E24B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E1CC2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

__n128 sub_18E1CC2F0()
{
  v1 = *(v0 - 208);
  *(v0 - 288) = *(v0 - 224);
  *(v0 - 272) = v1;
  *(v0 - 256) = *(v0 - 192);
  result = *(v0 - 182);
  *(v0 - 246) = result;
  return result;
}

uint64_t sub_18E1CC324()
{
}

uint64_t sub_18E1CC340(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_18E1D5BCC(a1, a2, a3);
  sub_18E1C4EEC();
  (*(v4 + 8))(v3);
  return v3;
}

void sub_18E1CC428(uint64_t a1@<X8>)
{
  *(v1 + 72) = 0;
  *(v1 + 80) = a1;
  *(v1 + 88) = a1;
  *(v1 + 96) = 256;
  *(v1 + 104) = a1;
}

uint64_t sub_18E1CC4A0()
{
}

uint64_t sub_18E1CC4C8(uint64_t a1, ...)
{

  return sub_18E44E25C();
}

uint64_t sub_18E1CC534@<X0>(void *a1@<X8>)
{
  v1[25] = a1[4];
  v1[26] = a1[5];
  v1[27] = a1[6];
}

void static CatalogIndex.resolveResourceQueryURIComponents(uri:variantResolverMappings:)()
{
  sub_18E1C62A0();
  v175 = v2;
  v176 = v0;
  v4 = v3;
  sub_18E44E2BC();
  sub_18E1C4EAC();
  v177 = v6;
  v178 = v5;
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C86C0();
  v179 = v7 - v8;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v9);
  v168 = &v154 - v10;
  sub_18E1C6668();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v154 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v171 = &v154 - v15;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v16);
  sub_18E1C89A8();
  v17 = sub_18E2706EC(&qword_1EABE0DB0, &unk_18E4E24B0);
  v18 = sub_18E1C5B08(v17);
  MEMORY[0x1EEE9AC00](v18);
  sub_18E1C86C0();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v154 - v23;
  v172 = sub_18E44E49C();
  v174 = v25;
  v169 = v4;
  sub_18E44E31C();
  sub_18E1CC250(v24, v21);
  v26 = sub_18E44E38C();
  v27 = sub_18E1CAF28(v21, 1, v26);
  v173 = v24;
  if (v27 == 1)
  {
    sub_18E1E8EEC(v21, &qword_1EABE0DB0, &unk_18E4E24B0);
  }

  else
  {
    v28 = sub_18E44E2EC();
    sub_18E1C82B8();
    (*(v29 + 8))(v21, v26);
    if (v28)
    {
      goto LABEL_5;
    }
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v184 = v28;
  if (*(v28 + 16) != 1)
  {
    goto LABEL_11;
  }

  v167 = v14;
  v30 = v177;
  v31 = (*(v177 + 80) + 32) & ~*(v177 + 80);
  v32 = *(v177 + 16);
  v32(v1, v28 + v31, v178);
  v33 = sub_18E44E29C();
  v35 = v34;
  v36 = *(v30 + 8);
  v37 = sub_18E1CF9A0();
  v36(v37);
  sub_18E1E381C();
  if (v33 == v38 && v35 == 0xE700000000000000)
  {

    v41 = v184;
LABEL_72:
    v101 = v171;
    v102 = v178;
    v32(v171, v41 + v31, v178);

    sub_18E44E2AC();
    v14 = v103;
    (v36)(v101, v102);
    if (v14)
    {
      v104 = sub_18E44EB5C();
      v105 = v173;
      if (v104 > 0)
      {
        goto LABEL_79;
      }

      type metadata accessor for CatalogErrors.QueryError(0);
      sub_18E1C6D0C();
      v117 = sub_18E3F6D08(v115, v116, &protocol conformance descriptor for CatalogErrors.QueryError);
      sub_18E1C8EE8(v117);
      v119 = v118;
      sub_18E2706EC(&qword_1EABE3210, &qword_18E4B0E10);
      sub_18E1D0240();
      sub_18E1C4EEC();
      (*(v120 + 16))(v119, v169);
      sub_18E1CA5A4();
      *v14 = 0xD000000000000039;
      v14[1] = v121;
      sub_18E208090();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v122 = v105;
    }

    else
    {

      type metadata accessor for CatalogErrors.QueryError(0);
      sub_18E1C6D0C();
      v108 = sub_18E3F6D08(v106, v107, &protocol conformance descriptor for CatalogErrors.QueryError);
      sub_18E1C8EE8(v108);
      v110 = v109;
      sub_18E2706EC(&qword_1EABE3210, &qword_18E4B0E10);
      sub_18E1D0240();
      sub_18E1C4EEC();
      (*(v111 + 16))(v110, v169);
      sub_18E1C6990();
      v114 = v113 + 35;
LABEL_82:
      *v14 = v114;
      v14[1] = v112;
      sub_18E208090();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v122 = v173;
    }

    sub_18E1E8EEC(v122, &qword_1EABE0DB0, &unk_18E4E24B0);
    goto LABEL_84;
  }

  sub_18E1D0380();
  v40 = sub_18E44F3CC();

  v41 = v184;
  v14 = v167;
  if (v40)
  {
    goto LABEL_72;
  }

LABEL_11:
  v42 = sub_18E21654C(v172, v174, v175);
  if (!v42)
  {
    sub_18E21D184();

    v105 = v173;
LABEL_79:
    sub_18E1E8EEC(v105, &qword_1EABE0DB0, &unk_18E4E24B0);
LABEL_84:
    sub_18E1C6650();
    return;
  }

  v43 = v176;
  if (!*(v42 + 16))
  {
    sub_18E21D184();

    v105 = v173;
    goto LABEL_79;
  }

  v44 = 0;
  v45 = v42 + 64;
  v46 = 1 << *(v42 + 32);
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  else
  {
    v47 = -1;
  }

  v48 = v47 & *(v42 + 64);
  v49 = (v46 + 63) >> 6;
  v170 = v177 + 16;
  v171 = (v177 + 8);
  v158 = (v177 + 32);
LABEL_17:
  if (v48)
  {
    v155 = v49;
    v176 = v43;
    v156 = v45;
    v167 = v14;
    goto LABEL_23;
  }

  do
  {
    v50 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      goto LABEL_89;
    }

    if (v50 >= v49)
    {

      type metadata accessor for CatalogErrors.QueryError(0);
      sub_18E1C6D0C();
      v125 = sub_18E3F6D08(v123, v124, &protocol conformance descriptor for CatalogErrors.QueryError);
      sub_18E1C8EE8(v125);
      v127 = v126;
      sub_18E2706EC(&qword_1EABE3210, &qword_18E4B0E10);
      sub_18E1D0240();
      sub_18E1C4EEC();
      (*(v128 + 16))(v127, v169);
      sub_18E1C6990();
      v114 = v129 + 24;
      goto LABEL_82;
    }

    v48 = *(v45 + 8 * v50);
    ++v44;
  }

  while (!v48);
  v155 = v49;
  v176 = v43;
  v156 = v45;
  v167 = v14;
  v44 = v50;
LABEL_23:
  v51 = __clz(__rbit64(v48));
  v48 &= v48 - 1;
  v52 = v51 | (v44 << 6);
  v160 = v42;
  v53 = (*(v42 + 48) + 16 * v52);
  v54 = *(*(v42 + 56) + 8 * v52);
  v55 = *(v54 + 64);
  v163 = v54 + 64;
  v56 = *v53;
  v57 = v53[1];
  v58 = 1 << *(v54 + 32);
  if (v58 < 64)
  {
    v59 = ~(-1 << v58);
  }

  else
  {
    v59 = -1;
  }

  v60 = v59 & v55;
  v162 = (v58 + 63) >> 6;
  v159 = v56;
  v62 = v56 == 0x636972656E6567 && v57 == 0xE700000000000000;
  v157 = v62;
  v165 = v54;
  swift_bridgeObjectRetain_n();
  v161 = v57;

  v63 = 0;
LABEL_33:
  if (v60)
  {
    v64 = v184;
    goto LABEL_40;
  }

  v64 = v184;
  while (1)
  {
    v65 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      break;
    }

    if (v65 >= v162)
    {

      v105 = v173;
      goto LABEL_79;
    }

    v60 = *(v163 + 8 * v65);
    ++v63;
    if (v60)
    {
      v63 = v65;
LABEL_40:
      v66 = __clz(__rbit64(v60));
      v60 &= v60 - 1;
      v67 = v66 | (v63 << 6);
      v68 = (*(v165 + 48) + 48 * v67);
      v69 = v68[3];
      v70 = v68[5];
      v71 = *(*(v165 + 56) + 8 * v67);
      v175 = v68[1];
      if (v69)
      {
        v164 = v68[4];
        v72 = qword_1EABE0C78;

        v166 = v71;

        if (v72 != -1)
        {
          swift_once();
        }

        if (!*(off_1EABE0C80 + 2))
        {
          goto LABEL_91;
        }

        sub_18E1CF9A0();
        sub_18E1CBD4C();
        if ((v73 & 1) == 0)
        {
          goto LABEL_92;
        }

        v182 = &type metadata for GenerativePlaygroundFFKey;
        v183 = sub_18E26DB94();
        v74 = (v164)(&v180);
        sub_18E1C9934(&v180);
        v180 = 0;
        v181 = 0xE000000000000000;
        if (v74)
        {
          v75 = 1702195828;
        }

        else
        {
          v75 = 0x65736C6166;
        }

        if (v74)
        {
          v76 = 0xE400000000000000;
        }

        else
        {
          v76 = 0xE500000000000000;
        }

        MEMORY[0x193ACC300](v75, v76);

        v164 = &v154;
        MEMORY[0x1EEE9AC00](v77);
        sub_18E1E3748();
        v78 = v176;
        v80 = sub_18E1CD660(sub_18E3F7204, v79, v166);
        v176 = v78;

        if (!v80)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v81 = *(v64 + 16);
        if (v81)
        {
          v82 = *v68;

          v164 = v70;

          v166 = v71;

          v83 = 0;
          v84 = v178;
          while (v81 != v83)
          {
            if (v83 >= *(v64 + 16))
            {
              goto LABEL_90;
            }

            sub_18E1C96E4();
            (*(v86 + 16))(v179, v64 + v85 + *(v86 + 72) * v83, v84);
            if (sub_18E44E29C() == v82 && v87 == v175)
            {

LABEL_66:
              v90 = *v158;
              v91 = v168;
              v92 = v178;
              (*v158)(v168, v179, v178);
              v90(v167, v91, v92);
              v93 = sub_18E44E2AC();
              if (v94)
              {
                v180 = v93;
                v181 = v94;
                MEMORY[0x1EEE9AC00](v93);
                sub_18E1E3748();
                v95 = v176;
                v97 = sub_18E1CD660(sub_18E1CD848, v96, v166);
                v176 = v95;
                v98 = sub_18E1D43AC();
                v99(v98);

                if (v97)
                {
                  goto LABEL_33;
                }

LABEL_70:

                sub_18E1CD978();

                v14 = v167;
                v42 = v160;
                v45 = v156;
                v43 = v176;
                v49 = v155;
                goto LABEL_17;
              }

              Error = type metadata accessor for CatalogErrors.QueryError(0);
              sub_18E1C6D0C();
              v143 = sub_18E3F6D08(v141, v142, &protocol conformance descriptor for CatalogErrors.QueryError);
              sub_18E1C8558(Error, v143);
              v145 = v144;
              v146 = (v144 + *(sub_18E2706EC(&qword_1EABE3210, &qword_18E4B0E10) + 48));
              sub_18E44E54C();
              sub_18E1C4EEC();
              (*(v147 + 16))(v145, v169);
              v180 = 0;
              v181 = 0xE000000000000000;
              sub_18E44EFFC();

              sub_18E1C6990();
              v180 = v149 | 2;
              v181 = v148;
              v150 = sub_18E44E29C();
              MEMORY[0x193ACC300](v150);

              v151 = v181;
              *v146 = v180;
              v146[1] = v151;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
              v152 = sub_18E1D43AC();
              v153(v152);
LABEL_86:

              sub_18E1CD978();

              sub_18E1E8EEC(v173, &qword_1EABE0DB0, &unk_18E4E24B0);

              goto LABEL_84;
            }

            v89 = sub_18E44F3CC();

            if (v89)
            {
              goto LABEL_66;
            }

            v84 = v178;
            (*v171)(v179, v178);
            ++v83;
            v64 = v184;
          }

          type metadata accessor for CatalogErrors.QueryError(0);
          sub_18E1C6D0C();
          v132 = sub_18E3F6D08(v130, v131, &protocol conformance descriptor for CatalogErrors.QueryError);
          sub_18E1C8EE8(v132);
          v134 = v133;
          v135 = (v133 + *(sub_18E2706EC(&qword_1EABE3210, &qword_18E4B0E10) + 48));
          sub_18E44E54C();
          sub_18E1C4EEC();
          (*(v136 + 16))(v134, v169);
          v180 = 0;
          v181 = 0xE000000000000000;
          sub_18E44EFFC();

          sub_18E1C6990();
          v180 = v138;
          v181 = v137;
          MEMORY[0x193ACC300](v82, v175);
          v139 = v181;
          *v135 = v180;
          v135[1] = v139;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          goto LABEL_86;
        }

        if (v157)
        {
        }

        else
        {
          sub_18E212024();
          sub_18E1D0380();
          v100 = sub_18E44F3CC();

          if ((v100 & 1) == 0)
          {
            goto LABEL_70;
          }
        }
      }

      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
}

uint64_t static CatalogIndex.resolveResourceQueryURI(uri:variantResolverMappings:)()
{
  static CatalogIndex.resolveResourceQueryURIComponents(uri:variantResolverMappings:)();
  if (!v0)
  {
    v2 = v1;
    sub_18E212024();
    v5 = v2 == v4 && v3 == 0xE700000000000000;
    if (v5 || (sub_18E1CBE3C(), sub_18E1D0380(), (sub_18E44F3CC() & 1) != 0))
    {
    }

    else
    {
      sub_18E1C2970();
      static VariantHelpers.createResourceIdentifier(with:variant:)();
    }
  }

  return sub_18E1C2970();
}

uint64_t sub_18E1CD514(uint64_t a1)
{

  return sub_18E44E6DC();
}

uint64_t sub_18E1CD52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_18E44F14C();
}

void *sub_18E1CD54C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return memcpy(va, v9, 0xC1uLL);
}

uint64_t sub_18E1CD580@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 a8, __int128 a9, char a10)
{
  v12 = *(v10 + 112);
  a8 = *(v10 + 96);
  a9 = v12;
  v13 = *(v10 + 128);
  a10 = v13;
  *a1 = a8;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;

  return sub_18E327BB0(&a8, &a3);
}

uint64_t sub_18E1CD5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 360) = a3;
  *(v3 - 368) = a2;

  return sub_18E44E83C();
}

void sub_18E1CD638()
{
  v1 = v0[28];
  *v0 = v0[27];
  v0[1] = v1;
}

BOOL sub_18E1CD660(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

    v8 = a1(v11);
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

uint64_t sub_18E1CD710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_allocObject();
}

void sub_18E1CD744(uint64_t a1, uint64_t a2)
{

  sub_18E3EFF88();
}

double sub_18E1CD75C()
{
  *(v0 - 192) = 0;
  result = 0.0;
  *(v0 - 224) = 0u;
  *(v0 - 208) = 0u;
  return result;
}

uint64_t sub_18E1CD7A8(uint64_t result)
{
  *(result + 40) = 808334898;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = 808334898;
  *(result + 72) = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1CD7C8(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return swift_beginAccess();
}

id sub_18E1CD7E8(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_18E1CD868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_18E44F3CC() & 1;
  }
}

uint64_t sub_18E1CD8C4()
{

  return sub_18E44E6DC();
}

uint64_t sub_18E1CD8DC@<X0>(uint64_t a1@<X8>)
{

  return sub_18E2491A4(v2 + 1, (a1 - 32) | 0x8000000000000000, v1);
}

void *sub_18E1CD8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&a9, v9, 0xC1uLL);
}

uint64_t sub_18E1CD944(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 40) = 250000;
  *(v1 + 48) = 0;
  *(v1 + 52) = 0;
  return result;
}

void sub_18E1CD95C(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
}

uint64_t sub_18E1CD990()
{

  return sub_18E44E6DC();
}

void *sub_18E1CD9B8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, ...)
{
  va_start(va, a59);

  return memcpy(va, v59, 0xC1uLL);
}

uint64_t sub_18E1CD9F0()
{
}

__n128 sub_18E1CDA38@<Q0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  *v1 = result.n128_u32[0];
  return result;
}

void sub_18E1CDA5C(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    sub_18E1C5534();
    if (v7 != v8)
    {
      sub_18E1E1CA8();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_18E1C5E88();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_18E2706EC(&qword_1EABE0E38, &qword_18E49D1E0);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 16);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

unint64_t sub_18E1CDB50()
{
  result = qword_1ED6A80E0;
  if (!qword_1ED6A80E0)
  {
    sub_18E2707F8(&unk_1EABE1160, &qword_18E49DDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A80E0);
  }

  return result;
}

void sub_18E1CDC04(uint64_t a1, uint64_t a2)
{
  v3 = sub_18E1CDBD8(a1, a2);
  if (!v2)
  {
    v4 = v3;
    ResourceBundleContainer.toResourceBundle()();
  }
}

uint64_t sub_18E1CDC54(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (*(v3 + 16))
  {
    v6 = result;

    a3(v7, v6, a2);
    sub_18E25E13C();
    return sub_18E1DD230();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_18E1CDCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1CFB3C();
  a19 = v27;
  a20 = v28;
  v32 = sub_18E1CD5F8(v29, v30, v31);
  v33 = sub_18E1C5E70(v32, &a14);
  MEMORY[0x1EEE9AC00](v33);
  sub_18E1CA254();
  MEMORY[0x1EEE9AC00](v34);
  sub_18E234640();
  MEMORY[0x1EEE9AC00](v35);
  sub_18E1CD80C();
  MEMORY[0x1EEE9AC00](v36);
  sub_18E1C5738();
  MEMORY[0x1EEE9AC00](v37);
  sub_18E2219B0();
  sub_18E212AA0();
  if (v21)
  {
    goto LABEL_2;
  }

  sub_18E1C6260();
  if (!v38)
  {
    v81 = sub_18E2885F0();
    v82 = sub_18E1C8558(&type metadata for XPCServiceError, v81);
    sub_18E1CBDCC(v82, v83);
LABEL_2:
    os_unfair_lock_unlock((v23 + 24));
    sub_18E1E6770();
    goto LABEL_3;
  }

  sub_18E223B94(v38);
  os_unfair_lock_unlock((v23 + 24));
  sub_18E223DB8();
  sub_18E1CC560();
  v39.n128_u64[0] = 136315138;
  sub_18E1E23AC(v39);
  v40.n128_u64[0] = 136315650;
  sub_18E1E334C(v40);
  sub_18E1E3684();
  while (1)
  {
    if (v41 == -1)
    {
      __break(1u);
      goto LABEL_48;
    }

    sub_18E1D02F4();
    v42 = &qword_1F018ABF0;
    sub_18E1CC494();
    v43 = swift_allocObject();
    v44 = sub_18E1E2DEC(v43);
    v165 = sub_18E44D310;
    v166 = v44;
    sub_18E1C8480();
    sub_18E1C80EC();
    v163 = v45;
    v164 = &unk_1F018BAB0;
    _Block_copy(&v161);
    sub_18E1CF544();

    v46 = sub_18E1E32D8(&v162);
    v48 = [v46 v47];
    v49 = sub_18E1CF9C4();
    _Block_release(v49);
    sub_18E1CC494();
    v50 = swift_allocObject();
    sub_18E223EA4(v50);
    sub_18E1CC494();
    v51 = swift_allocObject();
    sub_18E1D1A18(v51);
    sub_18E1CD8AC();
    v52 = swift_allocObject();
    sub_18E223B08(v52);
    sub_18E1CD8AC();
    v53 = swift_allocObject();
    *(v53 + 16) = sub_18E44D248;
    *(v53 + 24) = v23;
    v54 = qword_1ED6A8B58;
    sub_18E1E3C40();
    swift_unknownObjectRetain();

    sub_18E2214E8();

    if (v54 != -1)
    {
      sub_18E1C593C();
      swift_once();
    }

    v55 = sub_18E221A54();
    sub_18E1CE8B4(v55, qword_1ED6A9888);
    sub_18E233C70();
    v56 = sub_18E44E80C();
    sub_18E44EE2C();
    sub_18E20933C();
    sub_18E221E1C();
    sub_18E1E8CD8();
    if (v57)
    {
      sub_18E1C5F74();
      sub_18E1CA69C();
      v58 = swift_slowAlloc();
      v59 = sub_18E1CA340(v58);
      sub_18E200E1C(v59);
      sub_18E1E2FD0(&dword_18E1C1000, v56, v60, "requesting resource bundle container for %s");
      sub_18E221850();
      v25 = v22;
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1E6C6C();
    }

    else
    {

      v42 = v160;
    }

    sub_18E1D45C8();
    v61 = sub_18E44EA8C();
    v165 = sub_18E1E0F7C;
    v166 = v53;
    sub_18E1C8480();
    sub_18E1E15E8();
    v163 = sub_18E1E0EE0;
    v164 = &unk_1F018BB50;
    _Block_copy(&v161);
    sub_18E1CC324();

    v62 = sub_18E1CD984();
    sub_18E232F2C(v62, v63);
    _Block_release(v24);

    sub_18E1E6580();
    v20 = *v42;
    if (!v20)
    {
      break;
    }

    sub_18E220B64();
    v64 = v20;
    sub_18E223A9C();
    sub_18E1E3B68();
    sub_18E280314(v65, v66);
    sub_18E1E3C94();
    if ((v61 & 1) == 0)
    {
      if (qword_1ED6A9020 == -1)
      {
LABEL_27:
        sub_18E1CF740(v67, qword_1ED6A9028);
        sub_18E1D4CFC();
        swift_beginAccess();
        sub_18E1C2AA0();
        sub_18E1D5EF4();
        v101();
        v102 = v20;
        v103 = sub_18E44E80C();
        sub_18E44EE0C();
        sub_18E232CE0();
        if (sub_18E1E1A10())
        {
          sub_18E1CA69C();
          swift_slowAlloc();
          sub_18E20809C();
          swift_slowAlloc();
          v104 = sub_18E1CADF8();
          sub_18E1CFFE8(v104);
          sub_18E21D1B0();
          sub_18E1D4CFC();
          swift_beginAccess();
          sub_18E22413C();
          v105 = sub_18E1D84BC();
          sub_18E1C9624(v105, &qword_1EABE9328, v106);
          sub_18E1C97B8();
          sub_18E1E1520();
          v107 = v20;
          v108 = _swift_stdlib_bridgeErrorToNSError();
          sub_18E1C5240(v108);
          sub_18E1C8D90();
          _os_log_impl(v109, v110, v111, v112, v113, 0x20u);
          sub_18E32F548(v26);
          sub_18E221CE4();
          sub_18E1E2C2C();
          sub_18E1C6164();
          MEMORY[0x193ACD400]();

          sub_18E1C5904();
          v114 = sub_18E1C69C4();
          v115(v114);
        }

        else
        {

          sub_18E1C5904();
          sub_18E1E1028();
          v116();
        }

        sub_18E1E383C();
        sub_18E1E2660();
        swift_willThrow();

        sub_18E1CD984();
        swift_unknownObjectRelease_n();
LABEL_38:

        sub_18E1CEB50();

        goto LABEL_3;
      }

LABEL_48:
      sub_18E1C6A1C();
      v67 = swift_once();
      goto LABEL_27;
    }

    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      swift_once();
    }

    v68 = sub_18E1C9090();
    sub_18E1C95AC(v68, qword_1ED6A9028);
    sub_18E1CFC50();
    sub_18E1D42A4();
    v69();
    v70 = v20;
    v71 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E232CE0();
    if (sub_18E1E1A10())
    {
      sub_18E1CA69C();
      v23 = swift_slowAlloc();
      sub_18E20809C();
      v72 = swift_slowAlloc();
      sub_18E1CA69C();
      v73 = swift_slowAlloc();
      sub_18E240E98(v73);
      sub_18E21D1B0();
      v22 = &qword_1EABE9328;
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E1E316C();
      v74 = sub_18E24707C();
      sub_18E1C9624(v74, v25, v75);
      sub_18E44D3C4();
      *(v23 + 4) = &qword_1EABE9328;
      sub_18E1E6838();
      v76 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v76;
      *v72 = v76;
      sub_18E1C793C();
      sub_18E24095C(&dword_18E1C1000, v71, v53, "%s sync: connection error during call: %@, num connection attempts: %lu");
      sub_18E32F548(v72);
      sub_18E1E6C6C();
      sub_18E1E1D6C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      swift_unknownObjectRelease();
      v77 = sub_18E1C6838();
      v78(v77);
      sub_18E20067C();

      sub_18E1CF994();

      sub_18E1E26D0();
    }

    else
    {

      sub_18E1DD3C0(&a13);
      swift_unknownObjectRelease();
      v79 = sub_18E1C6838();
      v80(v79);
      sub_18E20067C();

      sub_18E1CF994();
    }

    swift_unknownObjectRelease();
    sub_18E1E3760();
  }

  sub_18E223428();
  sub_18E1D4CFC();
  swift_beginAccess();
  v84 = v24[2];
  if (v84)
  {
    v85 = v84;
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      v85 = swift_once();
    }

    sub_18E1CB0FC(v85, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E1CFC50();
    v86 = sub_18E1D6224();
    v87(v86);
    v88 = v84;
    v89 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E232CE0();
    if (sub_18E1E1A10())
    {
      sub_18E1CA69C();
      swift_slowAlloc();
      sub_18E20809C();
      swift_slowAlloc();
      v90 = sub_18E1CADF8();
      sub_18E1E18E4(v90);
      sub_18E21D1B0();
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E22413C();
      v91 = sub_18E1E3D6C();
      sub_18E1C9624(v91, &qword_1EABE9328, v92);
      sub_18E1C97B8();
      sub_18E1E3098();
      v93 = _swift_stdlib_bridgeErrorToNSError();
      sub_18E1C5240(v93);
      sub_18E1C8D90();
      _os_log_impl(v94, v95, v96, v97, v98, 0x20u);
      sub_18E32F548(v26);
      sub_18E221CE4();
      sub_18E1E2C2C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E1C5904();
      v99 = sub_18E1C69C4();
      v100(v99);
      sub_18E1E383C();
    }

    else
    {

      v137 = sub_18E1C8C3C();
      v138(v137);
      sub_18E1D8054();
    }

    swift_willThrow();

    sub_18E1CD984();
    swift_unknownObjectRelease_n();
    goto LABEL_38;
  }

  sub_18E1D4CFC();
  v117 = swift_beginAccess();
  v118 = *(v25 + 16);
  if (v118)
  {
    v119 = v118;
    sub_18E1D49FC();
    if (!v121)
    {
      sub_18E1C6A1C();
      v120 = swift_once();
    }

    sub_18E1CB0FC(v120, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E1CFC50();
    v122 = sub_18E1D6224();
    v123(v122);
    v124 = sub_18E44E80C();
    v125 = sub_18E44EDFC();
    if (sub_18E1E115C(v125))
    {
      sub_18E1C9700();
      swift_slowAlloc();
      sub_18E1CA69C();
      v126 = swift_slowAlloc();
      sub_18E1E2408(v126);
      sub_18E224444(4.8151e-34);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E223510();
      v127 = sub_18E1D5C74();
      sub_18E1C9624(v127, &qword_1EABE9328, v128);
      sub_18E1D5FEC();
      sub_18E1C884C();
      sub_18E1C8D90();
      _os_log_impl(v129, v130, v131, v132, v133, 0x16u);
      sub_18E1E1D6C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E1CEB50();
      swift_unknownObjectRelease();
      sub_18E1C5904();
      v135 = sub_18E1C69C4();
      v136(v135);
      sub_18E1E6770();
      sub_18E20067C();

      sub_18E1CF994();
    }

    else
    {

      sub_18E1CEB50();
      sub_18E25E204(&a13);
      swift_unknownObjectRelease();
      v152 = sub_18E1C8C3C();
      v153(v152);
      sub_18E1E6770();
      sub_18E20067C();
    }

    swift_unknownObjectRelease();
    sub_18E240AB4();
  }

  else
  {
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      v117 = swift_once();
    }

    sub_18E1C8658(v117, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E1CFC50();
    v140 = sub_18E212088();
    v141(v140);
    v142 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E1E3E30();
    if (os_log_type_enabled(v142, v143))
    {
      sub_18E1C9700();
      swift_slowAlloc();
      sub_18E1CA69C();
      v144 = swift_slowAlloc();
      sub_18E221F1C(v144);
      sub_18E243124(4.8151e-34);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E22413C();
      v145 = sub_18E1D5C74();
      sub_18E1C9624(v145, &qword_1EABE9328, v146);
      sub_18E1C97B8();
      sub_18E1C8F4C();
      sub_18E1D4494(&dword_18E1C1000, v147, v148, "%s sync: throwing neither result or error returned, num connection attempts:%lu");
      sub_18E1CF2EC();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      v149 = sub_18E1C614C();
      v150(v149);
      sub_18E1D62D8();
    }

    else
    {

      v154 = sub_18E1C614C();
      v155(v154);
      sub_18E1E84AC();
    }

    v156 = sub_18E2885F0();
    v157 = sub_18E1C8558(&type metadata for XPCServiceError, v156);
    sub_18E1E1254(v157, v158);

    sub_18E1CD984();
    swift_unknownObjectRelease_n();

    sub_18E1CEB50();
  }

LABEL_3:
  sub_18E2245CC();
  sub_18E1E6AEC();
}

void sub_18E1CE8CC(void *a1)
{

  _os_log_impl(a1, v1, v3, v2, v4, 2u);
}

void sub_18E1CE92C(uint64_t a1@<X8>)
{
  *(v1 + 80) = a1;
  *(v1 + 88) = a1;
  *(v1 + 96) = 0;
  *(v1 + 104) = a1;
}

__n128 *sub_18E1CE93C(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  result[2].n128_u64[1] = 808334898;
  result[3].n128_u64[0] = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1CE978(uint64_t a1)
{

  return swift_allocError();
}

void sub_18E1CE9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{

  sub_18E1D46CC(v35, 0xE700000000000000);
}

uint64_t sub_18E1CE9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_18E44F26C();
}

uint64_t sub_18E1CEA58()
{
}

uint64_t sub_18E1CEA94@<X0>(uint64_t a1@<X8>)
{

  return sub_18E2491A4(v2 + 5, (a1 - 32) | 0x8000000000000000, v1);
}

void sub_18E1CEAE4()
{
  *(v0 + 200) = v1;
  *(v0 + 208) = v1;
  *(v0 + 216) = 256;
  *(v0 + 224) = v1;
}

void sub_18E1CEAF8(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 96) = 250000;
  *(v1 + 104) = 0;
  *(v1 + 108) = 0;
}

uint64_t sub_18E1CEB2C(uint64_t a1, ...)
{

  return sub_18E44EB4C();
}

uint64_t sub_18E1CEB5C(void *a1)
{
  v53 = a1;
  v3 = sub_18E44E83C();
  sub_18E1C4EAC();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C86C0();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - v11;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v13 + 8))(ObjectType, v13);
    if (v2 || *v53)
    {
      return swift_unknownObjectRelease();
    }

    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      swift_once();
    }

    v15 = sub_18E1C95EC(v3, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E2244D0();
    v48 = v15;
    v47 = v16;
    v46 = v17;
    v17(v12, v15, v3);
    v18 = sub_18E44E80C();
    v51 = sub_18E44EE2C();
    v52 = v18;
    v19 = os_log_type_enabled(v18, v51);
    v49 = v9;
    v50 = v5;
    if (v19)
    {
      sub_18E1E2FE8();
      v20 = swift_slowAlloc();
      sub_18E1CA69C();
      v45 = swift_slowAlloc();
      aBlock = v45;
      *v20 = 136315138;
      sub_18E1D4CFC();
      swift_beginAccess();
      v21 = qword_1EABE9328;
      v22 = off_1EABE9330;

      v23 = sub_18E1C9624(v21, v22, &aBlock);

      v44 = v20;
      *(v20 + 4) = v23;
      v24 = v52;
      _os_log_impl(&dword_18E1C1000, v52, v51, "%s: establishing connection.", v20, 0xCu);
      sub_18E1C9934(v45);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {
    }

    v52 = *(v5 + 8);
    (v52)(v12, v3);
    sub_18E1D4CFC();
    swift_beginAccess();
    v25 = objc_allocWithZone(MEMORY[0x1E696B0B8]);

    v26 = sub_18E44EA8C();

    v27 = [v25 initWithMachServiceName:v26 options:0];

    *v53 = v27;
    if (v27)
    {
      v28 = v27;
      v29 = sub_18E206E44();
      [v28 setRemoteObjectInterface_];

      sub_18E1CC494();
      v30 = swift_allocObject();
      swift_weakInit();
      v58 = sub_18E2886A0;
      v59 = v30;
      aBlock = MEMORY[0x1E69E9820];
      v55 = 1107296256;
      v56 = sub_18E203E04;
      v57 = &unk_1F013FAF8;
      v31 = _Block_copy(&aBlock);

      [v28 setInterruptionHandler_];
      _Block_release(v31);
      sub_18E1CC494();
      v32 = swift_allocObject();
      swift_weakInit();
      v58 = sub_18E203ED4;
      v59 = v32;
      aBlock = MEMORY[0x1E69E9820];
      v55 = 1107296256;
      v56 = sub_18E203E04;
      v57 = &unk_1F013FB20;
      v33 = _Block_copy(&aBlock);

      [v28 setInvalidationHandler_];
      _Block_release(v33);
      [v28 resume];

      return swift_unknownObjectRelease();
    }

    v35 = v49;
    v46(v49, v48, v3);
    v36 = sub_18E44E80C();
    v37 = sub_18E44EE0C();
    v38 = sub_18E223CA0();
    if (os_log_type_enabled(v38, v39))
    {
      sub_18E1E2FE8();
      v40 = swift_slowAlloc();
      sub_18E1CA69C();
      v53 = swift_slowAlloc();
      aBlock = v53;
      *v40 = 136315138;
      v41 = qword_1EABE9328;
      v42 = off_1EABE9330;

      v43 = sub_18E1C9624(v41, v42, &aBlock);

      *(v40 + 4) = v43;
      _os_log_impl(&dword_18E1C1000, v36, v37, "%s: did not create connection.", v40, 0xCu);
      sub_18E1C9934(v53);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return (v52)(v35, v3);
  }

  else
  {
    result = sub_18E44F14C();
    __break(1u);
  }

  return result;
}

uint64_t sub_18E1CF1AC()
{
  swift_weakDestroy();
  sub_18E1CC494();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_18E1CF1F8(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_18E1CF210()
{
  *(v1 - 123) = 0;
  *(v1 - 128) = 0;
  *(v1 - 112) = v0;
  *(v1 - 104) = 1;
  *(v1 - 96) = 0;

  return sub_18E292124(v1 - 128);
}

void sub_18E1CF2EC()
{
  sub_18E1C9934(v0);

  JUMPOUT(0x193ACD400);
}

double sub_18E1CF330@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  result = 0.0;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0;
  return result;
}

double sub_18E1CF34C()
{

  return sub_18E26C3FC(v0, (v1 - 128));
}

uint64_t sub_18E1CF3DC(uint64_t a1, uint64_t a2)
{

  return sub_18E44F3CC();
}

void sub_18E1CF41C(uint64_t a1@<X8>)
{
  *(v1 + 96) = a1;
  *(v1 + 104) = 0;
  *(v1 + 108) = 0;
}

uint64_t sub_18E1CF42C()
{
}

uint64_t sub_18E1CF450()
{

  return sub_18E44E6DC();
}

uint64_t sub_18E1CF494(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_18E1CF518(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_18E1CF550(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_18E1CF570(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_18E1CF580(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_18E1CF5A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_18E1CF5C8()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E1CF5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  *(v15 + 16) = a1;

  return swift_initStackObject();
}

void sub_18E1CF630()
{
  *(v3 - 304) = v1;
  *(v3 - 392) = v0;
  *(v3 - 464) = v2;
}

void sub_18E1CF6E0(char a1@<W8>)
{
  *(v2 + 56) = v1;
  *(v2 + 64) = v3;
  *(v2 + 72) = a1;
  *(v2 + 96) = 100000;
  *(v2 + 104) = 0;
  *(v2 + 108) = 0;
}

BOOL sub_18E1CF7C4()
{

  return os_log_type_enabled(v0, v1);
}

void sub_18E1CF7DC()
{
  v2 = (*(v0 + 16) + 24);

  os_unfair_lock_lock(v2);
}

id sub_18E1CF834@<X0>(void *a1@<X8>)
{
  *(v4 - 472) = v3;
  *(v4 - 480) = v1;
  *(v4 - 488) = v2;

  return a1;
}

uint64_t sub_18E1CF89C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_18E1CF90C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_18E44F4DC();
}

__n128 *sub_18E1CF930(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  return result;
}

uint64_t sub_18E1CF940@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 40) = a2;
  *(result + 48) = 0xE400000000000000;
  return result;
}

void sub_18E1CFA14()
{
  v2 = v1[28];
  *v1 = v1[27];
  v1[1] = v2;
  *(v0 + 24) = 0;
}

uint64_t sub_18E1CFAB8(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 1;

  return swift_willThrow();
}

double sub_18E1CFAE8(uint64_t a1)
{
  *(v1 + 32) = a1;
  *(v1 + 40) = 240000;
  *&result = 0x10000000100;
  *(v1 + 48) = 256;
  *(v1 + 52) = 0;
  return result;
}

uint64_t sub_18E1CFB1C()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_18E1CFB90@<X0>(char a1@<W8>)
{
  *(v1 - 81) = a1;

  return sub_18E44F2FC();
}

uint64_t sub_18E1CFBD4(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_18E1CFC20(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_18E1CFC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{

  return swift_dynamicCast();
}

uint64_t sub_18E1CFCA8(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 56) = 1590000;
  *(v1 + 64) = 0;
  *(v1 + 68) = 0;
  return result;
}

void *sub_18E1CFCDC(uint64_t a1, ...)
{

  return sub_18E44F48C();
}

void *sub_18E1CFD00()
{
  v3 = v0[14];
  v0[55] = v0[13];
  v0[56] = v3;
  v4 = v0[16];
  v0[57] = v0[15];
  v0[58] = v4;
  v5 = v0[18];
  v0[59] = v0[17];
  v0[60] = v5;
  v6 = v0[11];
  v0[61] = v0[12];
  v0[62] = v6;
  v7 = v0[9];
  v0[63] = v0[10];
  v0[64] = v7;
  v0[65] = v0[8];

  return memcpy((v1 + 352), v0 + 264, 0x140uLL);
}

uint64_t sub_18E1CFD4C()
{

  return sub_18E44E38C();
}

uint64_t sub_18E1CFDD4()
{
}

uint64_t sub_18E1CFE24()
{
}

uint64_t sub_18E1CFE74(uint64_t result)
{
  *(v1 + 14) = result;
  **(v2 - 288) = result;
  *(v1 + 22) = 2048;
  *(v1 + 24) = *(v2 - 232);
  return result;
}

uint64_t sub_18E1CFEAC()
{
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  *v1 = v3;
  v1[1] = v4;
  v5 = *(v0 + 96);
  v1[2] = *(v0 + 88);
  v1[3] = v5;
  v6 = *(v0 + 112);
  v1[4] = *(v0 + 120);
  v1[5] = v6;
  v1[6] = *(v0 + 104);
  *(v0 + 208) = 7;

  return sub_18E2C1F7C(v3);
}

void *sub_18E1CFEE4(uint64_t a1)
{
  *(v1 + 88) = a1;
  v3 = (a1 + 16);

  return memcpy(v3, (v1 + 344), 0xD8uLL);
}

uint64_t sub_18E1CFF30()
{
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  return v0;
}

uint64_t sub_18E1CFF78@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 56) = 3;
  *(result + 64) = a2;
  *(result + 72) = v2;
  *(v3 + 112) = result;
  return result;
}

__n128 *sub_18E1CFF8C(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  return result;
}

void *sub_18E1CFFA8(void *a1)
{

  return memcpy(a1, v1, 0xC1uLL);
}

void *sub_18E1D0000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(v9, &a9, 0xC8uLL);
}

void sub_18E1D0044(char a1@<W8>)
{
  *(v2 + 56) = v1;
  *(v2 + 64) = v3;
  *(v2 + 72) = a1;
  *(v2 + 96) = 0;
  *(v2 + 101) = 0;
}

uint64_t sub_18E1D00B8()
{
  v2 = *(*(v0 - 96) + 16);

  return sub_18E2869B0(v2);
}

__n128 *sub_18E1D0130(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  result[2].n128_u64[1] = 808334898;
  result[3].n128_u64[0] = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1D0174()
{

  return sub_18E2491A4(0x65676175676E616CLL, 0xE800000000000000, v0);
}

uint64_t sub_18E1D01F8(__n128 a1)
{
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  *(v1 + 96) = *v2;
  *(v1 + 104) = v4;
  *(v1 + 112) = v5;
  *(v1 + 120) = a1;
  *(v1 + 136) = a1;
  *(v1 + 152) = 0;
}

void sub_18E1D0224(char a1@<W8>)
{
  *(v2 + 56) = v1;
  *(v2 + 64) = v3;
  *(v2 + 72) = a1;
  *(v2 + 96) = 100000;
  *(v2 + 104) = 0;
}

uint64_t sub_18E1D0240()
{

  return sub_18E44E54C();
}

uint64_t sub_18E1D02C0()
{
}

uint64_t sub_18E1D02D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = v2;
  *(a2 + 8) = a1;
  *(a2 + 16) = v3;
}

__n128 *sub_18E1D02E4(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = 1;
  return result;
}

uint64_t sub_18E1D0300()
{

  return sub_18E44E6DC();
}

uint64_t sub_18E1D0318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{

  return sub_18E44F3CC();
}

void *sub_18E1D0338(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return memcpy(va, v9, 0xC1uLL);
}

__n128 sub_18E1D03A4@<Q0>(uint64_t *a1@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  *(v1 + 136) = v4;
  *(v1 + 144) = v5;
  *(v1 + 152) = v6;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  *(v1 + 176) = 0;
  *(v1 + 200) = *(v2 + 200);
  result = *(v2 + 216);
  *(v1 + 216) = result;
  *(v1 + 232) = *(v3 - 96);
  *(v1 + 184) = 0;
  *(v1 + 192) = 0;
  return result;
}

__n128 sub_18E1D03DC@<Q0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  *v1 = result.n128_u32[0];
  return result;
}

uint64_t sub_18E1D0404(uint64_t a1)
{

  return swift_initStackObject();
}

uint64_t sub_18E1D041C()
{
  *(v1 - 123) = 0;
  *(v1 - 128) = 0;
  *(v1 - 112) = v0;
  *(v1 - 104) = 1;
  *(v1 - 96) = 0;

  return sub_18E292124(v1 - 128);
}

uint64_t sub_18E1D0468@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 968) = v1;
  *(v2 + 976) = a1;
  return v3;
}

void sub_18E1D04C8()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_18E1D0528();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_18E1D0584(uint64_t a1)
{
  v123[1] = *MEMORY[0x1E69E9840];
  v117 = sub_18E44E6AC();
  MEMORY[0x1EEE9AC00](v117);
  v116 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = &type metadata for RawGuardrailResult;
  if (*(v5 + 16))
  {
    v108 = a1;
    v109 = v1;
    v7 = v5 + 64;
    v8 = 1 << *(v5 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v5 + 64);
    v11 = (v8 + 63) >> 6;
    v111 = (v3 + 8);

    v12 = 0;
    *&v13 = 136315394;
    v110 = v13;
    v118 = v11;
    v119 = v5;
    v112 = v5 + 64;
    while (v10)
    {
      v14 = v12;
LABEL_10:
      v15 = __clz(__rbit64(v10)) | (v14 << 6);
      v16 = *(v5 + 56);
      v17 = *(v5 + 48) + 16 * v15;
      v18 = *(v17 + 8);
      v121 = *v17;
      v19 = *(v16 + 8 * v15);
      Kind = v6[171].Kind;

      v21 = v19;
      if (Kind != -1)
      {
        swift_once();
      }

      v22 = sub_18E44E83C();
      sub_18E1C95EC(v22, qword_1ED6A9870);

      v23 = v21;
      v24 = sub_18E44E80C();
      v25 = sub_18E44EE2C();

      LODWORD(v120) = v25;
      v26 = os_log_type_enabled(v24, v25);
      v122 = v18;
      if (v26)
      {
        v27 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v123[0] = v114;
        *v27 = v110;
        *(v27 + 4) = sub_18E1C9624(v121, v18, v123);
        *(v27 + 12) = 2080;
        v28 = [v23 uuid];
        v113 = v24;
        v29 = v28;
        v30 = v116;
        sub_18E44E68C();

        sub_18E43ADE8(&unk_1ED6A8270, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v31 = v117;
        v32 = sub_18E44F39C();
        v115 = v23;
        v34 = v33;
        v35 = v31;
        v7 = v112;
        (*v111)(v30, v35);
        v36 = sub_18E1C9624(v32, v34, v123);
        v23 = v115;

        *(v27 + 14) = v36;
        v37 = v113;
        _os_log_impl(&dword_18E1C1000, v113, v120, "Attempting unlock for: %s, %s", v27, 0x16u);
        v38 = v114;
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v38, -1, -1);
        v39 = v27;
        v6 = &type metadata for RawGuardrailResult;
        MEMORY[0x193ACD400](v39, -1, -1);
      }

      else
      {
      }

      v10 &= v10 - 1;
      v123[0] = 0;
      v40 = v23;
      if ([v23 unlock_])
      {
        v41 = v123[0];

        v12 = v14;
        v11 = v118;
        v5 = v119;
      }

      else
      {
        v42 = v123[0];
        v43 = sub_18E44E44C();

        v120 = v43;
        swift_willThrow();
        v44 = v122;

        v45 = v40;
        v46 = sub_18E44E80C();
        v47 = sub_18E44EE2C();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          v123[0] = v115;
          *v48 = v110;
          v49 = sub_18E1C9624(v121, v44, v123);
          v121 = v46;
          v50 = v49;

          *(v48 + 4) = v50;
          *(v48 + 12) = 2080;
          v51 = [v45 uuid];
          v52 = v116;
          sub_18E44E68C();

          sub_18E43ADE8(&unk_1ED6A8270, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v53 = v117;
          v54 = sub_18E44F39C();
          v56 = v55;
          (*v111)(v52, v53);
          v57 = sub_18E1C9624(v54, v56, v123);

          *(v48 + 14) = v57;
          v58 = v121;
          _os_log_impl(&dword_18E1C1000, v121, v47, "unlock failed for: %s, %s", v48, 0x16u);
          v59 = v115;
          swift_arrayDestroy();
          MEMORY[0x193ACD400](v59, -1, -1);
          v60 = v48;
          v7 = v112;
          MEMORY[0x193ACD400](v60, -1, -1);
        }

        else
        {
        }

        v109 = 0;
        v12 = v14;
        v11 = v118;
        v5 = v119;
        v6 = &type metadata for RawGuardrailResult;
      }
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v14 >= v11)
      {
        break;
      }

      v10 = *(v7 + 8 * v14);
      ++v12;
      if (v10)
      {
        goto LABEL_10;
      }
    }

    v61 = v108;
    v62 = *(v108 + 40);
    if (!v62)
    {
      if (v6[171].Kind != -1)
      {
        swift_once();
      }

      v84 = sub_18E44E83C();
      sub_18E1C95EC(v84, qword_1ED6A9870);

      v85 = sub_18E44E80C();
      v86 = sub_18E44EE2C();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v123[0] = v88;
        *v87 = 136315138;
        sub_18E1D121C(0, &qword_1ED6A80D0, 0x1E69DEEE0);

        v89 = sub_18E44E9BC();
        v91 = v90;

        v92 = sub_18E1C9624(v89, v91, v123);
        v61 = v108;

        *(v87 + 4) = v92;
        _os_log_impl(&dword_18E1C1000, v85, v86, "unlock called when we believe we are already unlocked  %s", v87, 0xCu);
        sub_18E1C9934(v88);
        MEMORY[0x193ACD400](v88, -1, -1);
        v93 = v87;
        goto LABEL_40;
      }

LABEL_41:

      goto LABEL_42;
    }

    v63 = __OFSUB__(v62, 1);
    v64 = v62 - 1;
    if (!v63)
    {
      *(v108 + 40) = v64;
      v65 = v6[171].Kind;
      if (v64)
      {
        if (v65 != -1)
        {
          swift_once();
        }

        v66 = sub_18E44E83C();
        sub_18E1C95EC(v66, qword_1ED6A9870);
        swift_retain_n();
        v67 = sub_18E44E80C();
        v68 = sub_18E44EE2C();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v123[0] = v70;
          *v69 = 136315650;
          sub_18E1D121C(0, &qword_1ED6A80D0, 0x1E69DEEE0);

          v71 = sub_18E44E9BC();
          v73 = v72;

          v74 = sub_18E1C9624(v71, v73, v123);

          *(v69 + 4) = v74;
          *(v69 + 12) = 2080;

          v75 = sub_18E44E9CC();
          v77 = v76;

          v78 = sub_18E1C9624(v75, v77, v123);

          *(v69 + 14) = v78;
          *(v69 + 22) = 2048;
          v79 = *(v61 + 40);

          *(v69 + 24) = v79;

          _os_log_impl(&dword_18E1C1000, v67, v68, "unlock finished, but lock is still in place: %s, %s lock count: %ld", v69, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x193ACD400](v70, -1, -1);
          MEMORY[0x193ACD400](v69, -1, -1);
        }

        else
        {
        }

        return;
      }

      if (v65 != -1)
      {
        swift_once();
      }

      v94 = sub_18E44E83C();
      sub_18E1C95EC(v94, qword_1ED6A9870);
      swift_retain_n();
      v85 = sub_18E44E80C();
      v95 = sub_18E44EE2C();
      if (os_log_type_enabled(v85, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v123[0] = v97;
        *v96 = 136315650;
        sub_18E1D121C(0, &qword_1ED6A80D0, 0x1E69DEEE0);

        v98 = sub_18E44E9BC();
        v100 = v99;

        v101 = sub_18E1C9624(v98, v100, v123);

        *(v96 + 4) = v101;
        *(v96 + 12) = 2080;

        v102 = sub_18E44E9CC();
        v104 = v103;

        v105 = sub_18E1C9624(v102, v104, v123);
        v61 = v108;

        *(v96 + 14) = v105;
        *(v96 + 22) = 2048;
        v106 = *(v61 + 40);

        *(v96 + 24) = v106;

        _os_log_impl(&dword_18E1C1000, v85, v95, "unlock succeeded for: %s, %s lock count: %ld", v96, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v97, -1, -1);
        v93 = v96;
LABEL_40:
        MEMORY[0x193ACD400](v93, -1, -1);
        goto LABEL_41;
      }

LABEL_42:
      [*(v61 + 32) invalidate];
      v107 = *(v61 + 32);
      *(v61 + 32) = 0;

      return;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (qword_1ED6A8AB0 != -1)
  {
LABEL_47:
    swift_once();
  }

  v80 = sub_18E44E83C();
  sub_18E1C95EC(v80, qword_1ED6A9870);
  v81 = sub_18E44E80C();
  v82 = sub_18E44EE2C();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&dword_18E1C1000, v81, v82, "Attempting unlock when there are no tokens", v83, 2u);
    MEMORY[0x193ACD400](v83, -1, -1);
  }
}

uint64_t sub_18E1D121C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_18E1D125C()
{
  sub_18E1C62A0();
  v67 = v0;
  v2 = v1;
  v4 = v3;
  sub_18E44E2BC();
  sub_18E1C4EAC();
  v72 = v5;
  v73 = v6;
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C4EDC();
  v71 = v8 - v7;
  v9 = sub_18E2706EC(&qword_1EABE0DB0, &unk_18E4E24B0);
  sub_18E1C5B08(v9);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1CAF50();
  v70 = v11;
  v12 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v12);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v13);
  sub_18E1CAF50();
  v78 = v14;
  v16 = sub_18E1D839C(v15);
  v17 = 0;
  v18 = *(v16 + 16);
  v19 = v16 + 32;
  while (v18 != v17)
  {
    if (v17 >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_42;
    }

    sub_18E1E8C38(v19, &v74);
    v20 = v76;
    sub_18E1E15F4(&v74, v75);
    v21 = sub_18E1D4560();
    if (v22(v21, v20) == v4 && v23 == v2)
    {

LABEL_13:

      sub_18E1C551C(&v74, v77);
      sub_18E1C551C(v77, v67);
LABEL_40:
      sub_18E1C6650();
      return;
    }

    v25 = sub_18E44F3CC();

    if (v25)
    {
      goto LABEL_13;
    }

    sub_18E1C9934(&v74);
    v19 += 40;
    ++v17;
  }

  sub_18E44E50C();
  v26 = sub_18E44E54C();
  if (sub_18E1CAF28(v78, 1, v26) == 1)
  {
    sub_18E1E8EEC(v78, &qword_1EABE2FE0, &qword_18E49CE00);
LABEL_20:
    type metadata accessor for CatalogErrors.QueryError(0);
    sub_18E1C6D0C();
    v39 = sub_18E3F6D08(v37, v38, &protocol conformance descriptor for CatalogErrors.QueryError);
    sub_18E1C8EE8(v39);
    sub_18E1CA5A4();
    *v40 = v4;
    v40[1] = v2;
    v40[2] = 0xD000000000000022;
    v40[3] = v41;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_40;
  }

  v27 = sub_18E44E49C();
  sub_18E1C82B8();
  v29 = v26;
  v31 = v30;
  (*(v28 + 8))(v78, v29);
  v32 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v32 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {

    goto LABEL_20;
  }

  v33 = MEMORY[0x1E69E7CC0];
  v34 = sub_18E44E9AC();
  sub_18E44E35C();
  v35 = sub_18E44E38C();
  if (sub_18E1CAF28(v70, 1, v35) == 1)
  {
    sub_18E1E8EEC(v70, &qword_1EABE0DB0, &unk_18E4E24B0);
    v36 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v42 = sub_18E44E2EC();
    sub_18E1C82B8();
    v43 = sub_18E1CF9A0();
    v44(v43);
    if (v42)
    {
      v36 = v42;
    }

    else
    {
      v36 = v33;
    }
  }

  v69 = *(v36 + 16);
  if (!v69)
  {
LABEL_39:

    static Catalog.ResourceBundle.createResourceBundleVariant(configurationIdentifier:resourceVariants:)(v34, v67);

    goto LABEL_40;
  }

  sub_18E1C96E4();
  v68 = v36 + v46;
  while (v45 < *(v36 + 16))
  {
    v79 = v45;
    (*(v73 + 16))(v71, v68 + *(v73 + 72) * v45, v72);
    v47 = sub_18E44E29C();
    v49 = v48;
    v50 = sub_18E44E2AC();
    v52 = v51;
    (*(v73 + 8))(v71, v72);
    if (v52)
    {
      swift_isUniquelyReferenced_nonNull_native();
      *&v77[0] = v34;
      v53 = sub_18E1CBD4C();
      if (__OFADD__(v34[2], (v54 & 1) == 0))
      {
        goto LABEL_43;
      }

      v55 = v53;
      v56 = v54;
      sub_18E2706EC(&qword_1EABE0DB8, &qword_18E49CE20);
      if (sub_18E44F0EC())
      {
        v57 = sub_18E1CBD4C();
        if ((v56 & 1) != (v58 & 1))
        {
          goto LABEL_45;
        }

        v55 = v57;
      }

      if (v56)
      {

        v34 = *&v77[0];
        v59 = (*(*&v77[0] + 56) + 16 * v55);
        *v59 = v50;
        v59[1] = v52;
      }

      else
      {
        v34 = *&v77[0];
        *(*&v77[0] + 8 * (v55 >> 6) + 64) |= 1 << v55;
        v62 = (v34[6] + 16 * v55);
        *v62 = v47;
        v62[1] = v49;
        v63 = (v34[7] + 16 * v55);
        *v63 = v50;
        v63[1] = v52;
        v64 = v34[2];
        v65 = __OFADD__(v64, 1);
        v66 = v64 + 1;
        if (v65)
        {
          goto LABEL_44;
        }

        v34[2] = v66;
      }
    }

    else
    {
      sub_18E1CBD4C();
      v61 = v60;

      if (v61)
      {
        swift_isUniquelyReferenced_nonNull_native();
        *&v77[0] = v34;
        sub_18E2706EC(&qword_1EABE0DB8, &qword_18E49CE20);
        sub_18E44F0EC();
        v34 = *&v77[0];

        sub_18E44F10C();
      }
    }

    v45 = v79 + 1;
    if (v69 == v79 + 1)
    {
      goto LABEL_39;
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  sub_18E44F41C();
  __break(1u);
}

void *sub_18E1D1974(int a1, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, __n128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t __src, uint64_t a15, __int128 a16, __int128 a17, __int128 a18)
{
  *(&a16 + 7) = a10;
  *(&a17 + 7) = *(v20 + 32);
  *(&a18 + 1) = *(v20 + 42);
  *v18 = v26;
  *(v18 + 8) = v25;
  *(v18 + 16) = v24;
  *(v18 + 24) = v23;
  *(v18 + 32) = v22;
  *(v18 + 40) = a6;
  *(v18 + 48) = a7;
  *(v18 + 56) = 1;
  *(v18 + 64) = a8;
  *(v18 + 72) = v19;
  *(v18 + 80) = v21 & 1;

  return memcpy((v18 + 81), &__src, 0x41uLL);
}

uint64_t sub_18E1D19C8(uint64_t result, __n128 a2)
{
  *(result + 216) = a2;
  *(result + 200) = a2;
  *(result + 184) = a2;
  *(result + 168) = a2;
  *(result + 152) = a2;
  *(result + 136) = a2;
  *(result + 120) = a2;
  *(result + 104) = a2;
  *(result + 88) = a2;
  *(result + 72) = a2;
  *(result + 56) = a2;
  *(result + 40) = a2;
  *(result + 24) = a2;
  *(result + 8) = a2;
  return result;
}

uint64_t sub_18E1D1A04()
{
  *(v0 + 128) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  return 47;
}

uint64_t sub_18E1D1A24()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = static Catalog.ResourceBundle.fetchAllResourceBundles()();
  }

  return v1;
}

uint64_t static Catalog.ResourceBundle.fetchAllResourceBundles()()
{
  v79 = *MEMORY[0x1E69E9840];
  sub_18E2706EC(&qword_1EABE12E8, &qword_18E4E2690);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18E49ED70;
  *(v2 + 56) = &type metadata for AssetBackedDefaultOverridesBundle;
  *(v2 + 64) = sub_18E1D3DD8();
  sub_18E1E1950();
  *(v2 + 32) = swift_allocObject();
  static Catalog.ResourceBundle.Overrides.DefaultOverrides.DefaultOverridesOnly()();
  *(v2 + 96) = &type metadata for AssetBackedLLMBundle;
  v3 = sub_18E1D4BA0();
  *(v2 + 104) = v3;
  sub_18E1D48C0();
  v4 = swift_allocObject();
  *(v2 + 72) = v4;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMTokenizerExperimental()();
  static Catalog.Resource.LLM.Model.CodeLMExperimental()();
  sub_18E1E3DC4();
  *(v4 + 16) = 0xD000000000000023;
  *(v4 + 24) = v0;
  *(v2 + 136) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 144) = v3;
  sub_18E1D48C0();
  v5 = swift_allocObject();
  *(v2 + 112) = v5;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMLargeV1Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMLargeV1()();
  sub_18E1E3DC4();
  *(v5 + 16) = 0xD000000000000028;
  *(v5 + 24) = v0;
  *(v2 + 176) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 184) = v3;
  sub_18E1D48C0();
  v6 = swift_allocObject();
  *(v2 + 152) = v6;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMLargeV2Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMLargeV2()();
  sub_18E1E3DC4();
  *(v6 + 16) = 0xD000000000000028;
  *(v6 + 24) = v0;
  *(v2 + 216) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 224) = v3;
  sub_18E1D48C0();
  v7 = swift_allocObject();
  *(v2 + 192) = v7;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMLargeV3Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMLargeV3()();
  sub_18E1E3DC4();
  *(v7 + 16) = 0xD000000000000028;
  *(v7 + 24) = v0;
  *(v2 + 256) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 264) = v3;
  sub_18E1D48C0();
  v8 = swift_allocObject();
  *(v2 + 232) = v8;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMLargeV4Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMLargeV4()();
  sub_18E1E3DC4();
  *(v8 + 16) = 0xD000000000000028;
  *(v8 + 24) = v0;
  *(v2 + 296) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 304) = v3;
  sub_18E1D48C0();
  v9 = swift_allocObject();
  *(v2 + 272) = v9;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMLargeV5Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMLargeV5()();
  sub_18E1E3DC4();
  *(v9 + 16) = 0xD000000000000028;
  *(v9 + 24) = v0;
  *(v2 + 336) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 344) = v3;
  sub_18E1D48C0();
  v10 = swift_allocObject();
  *(v2 + 312) = v10;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMSafetyGuardrailTokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMSafetyGuardrail()();
  sub_18E1E3DC4();
  *(v10 + 16) = 0xD000000000000030;
  *(v10 + 24) = v0;
  *(v2 + 376) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 384) = v3;
  sub_18E1D48C0();
  v11 = swift_allocObject();
  *(v2 + 352) = v11;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMSmallV1Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMSmallV1()();
  sub_18E1E3DC4();
  *(v11 + 16) = 0xD000000000000028;
  *(v11 + 24) = v0;
  *(v2 + 416) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 424) = v3;
  sub_18E1D48C0();
  v12 = swift_allocObject();
  *(v2 + 392) = v12;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMSmallV2Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMSmallV2()();
  sub_18E1E3DC4();
  *(v12 + 16) = 0xD000000000000028;
  *(v12 + 24) = v0;
  *(v2 + 456) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 464) = v3;
  sub_18E1D48C0();
  v13 = swift_allocObject();
  *(v2 + 432) = v13;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMSmallV3Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMSmallV3()();
  sub_18E1E3DC4();
  *(v13 + 16) = 0xD000000000000028;
  *(v13 + 24) = v0;
  *(v2 + 496) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 504) = v3;
  sub_18E1D48C0();
  v14 = swift_allocObject();
  *(v2 + 472) = v14;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMSmallV4Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMSmallV4()();
  sub_18E1E3DC4();
  *(v14 + 16) = 0xD000000000000028;
  *(v14 + 24) = v0;
  *(v2 + 536) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 544) = v3;
  sub_18E1D48C0();
  v15 = swift_allocObject();
  *(v2 + 512) = v15;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMSmallV5Tokenizer()();
  static Catalog.Resource.LLM.Model.CodeLMSmallV5()();
  sub_18E1E3DC4();
  *(v15 + 16) = 0xD000000000000028;
  *(v15 + 24) = v0;
  *(v2 + 576) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 584) = v3;
  sub_18E1D48C0();
  v16 = swift_allocObject();
  *(v2 + 552) = v16;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMTokenizer()();
  static Catalog.Resource.LLM.Model.CodeLM()();
  sub_18E1E3DC4();
  *(v16 + 16) = 0xD000000000000022;
  *(v16 + 24) = v0;
  *(v2 + 616) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 624) = v3;
  sub_18E1D48C0();
  *(v2 + 592) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMWithDraft()();
  *(v2 + 656) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 664) = v3;
  sub_18E1D48C0();
  *(v2 + 632) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.CodeLMV1ANE3B()();
  *(v2 + 696) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 704) = v3;
  sub_18E1D48C0();
  v17 = swift_allocObject();
  *(v2 + 672) = v17;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMTokenizerV2()();
  static Catalog.Resource.LLM.Model.CodeLMV2()();
  sub_18E1E3DC4();
  *(v17 + 16) = 0xD000000000000022;
  *(v17 + 24) = v0;
  *(v2 + 736) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 744) = v3;
  sub_18E1D48C0();
  v18 = swift_allocObject();
  *(v2 + 712) = v18;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMTokenizerV3()();
  static Catalog.Resource.LLM.Model.CodeLMV3()();
  sub_18E1E3DC4();
  *(v18 + 16) = 0xD000000000000022;
  *(v18 + 24) = v0;
  *(v2 + 776) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 784) = v3;
  sub_18E1D48C0();
  v19 = swift_allocObject();
  *(v2 + 752) = v19;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeLMTokenizerV4()();
  static Catalog.Resource.LLM.Model.CodeLMV4()();
  sub_18E1E3DC4();
  *(v19 + 16) = 0xD000000000000022;
  *(v19 + 24) = v0;
  *(v2 + 816) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 824) = v3;
  sub_18E1D48C0();
  v20 = swift_allocObject();
  *(v2 + 792) = v20;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.DistilledMessagesActionTokenizer()();
  static Catalog.Resource.LLM.Model.DistilledMessagesAction()();
  sub_18E1E3DC4();
  *(v20 + 16) = 0xD000000000000026;
  *(v20 + 24) = v0;
  *(v2 + 856) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 864) = v3;
  sub_18E1D48C0();
  v21 = swift_allocObject();
  *(v2 + 832) = v21;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.DistilledMessagesReplyTokenizer()();
  static Catalog.Resource.LLM.Model.DistilledMessagesReply()();
  sub_18E1E3DC4();
  *(v21 + 16) = 0xD000000000000025;
  *(v21 + 24) = v0;
  *(v2 + 896) = &type metadata for SecureAnalyticsBundle;
  *(v2 + 904) = sub_18E2ADF28();
  sub_18E1E1950();
  *(v2 + 872) = swift_allocObject();
  static Catalog.ResourceBundle.SecureAnalytics.IntegrityDiagnoseModel()();
  *(v2 + 936) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 944) = v3;
  sub_18E1D48C0();
  v22 = swift_allocObject();
  *(v2 + 912) = v22;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.CodeSafetyGuardrailTokenizer()();
  static Catalog.Resource.LLM.Model.CodeSafetyGuardrail()();
  sub_18E1E3DC4();
  *(v22 + 16) = 0xD000000000000030;
  *(v22 + 24) = v0;
  *(v2 + 976) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 984) = v3;
  sub_18E1D48C0();
  v23 = swift_allocObject();
  *(v2 + 952) = v23;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.VisualGenerationQueryHandlingLiteTokenizer()();
  static Catalog.Resource.LLM.Model.VisualGenerationQueryHandlingLite()();
  sub_18E1E3DC4();
  *(v23 + 16) = 0xD00000000000002CLL;
  *(v23 + 24) = v0;
  *(v2 + 1016) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1024) = v3;
  sub_18E1D48C0();
  *(v2 + 992) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ADMBackgroundPrompt()();
  *(v2 + 1056) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1064) = v3;
  sub_18E1D48C0();
  *(v2 + 1032) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ADMPeopleGrounding()();
  *(v2 + 1096) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1104) = v3;
  sub_18E1D48C0();
  *(v2 + 1072) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ADMPromptRewriting()();
  *(v2 + 1136) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1144) = v3;
  sub_18E1D48C0();
  *(v2 + 1112) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.FactualConsistencyClassifier()();
  *(v2 + 1176) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1184) = v3;
  sub_18E1D48C0();
  *(v2 + 1152) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MessagesActionSmall()();
  *(v2 + 1216) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1224) = v3;
  sub_18E1D48C0();
  *(v2 + 1192) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MessagesReplyWatch()();
  *(v2 + 1256) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1264) = v3;
  sub_18E1D48C0();
  *(v2 + 1232) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MiscSafety()();
  *(v2 + 1296) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1304) = v3;
  sub_18E1D48C0();
  *(v2 + 1272) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MiscSafetyCustomized()();
  *(v2 + 1336) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1344) = v3;
  sub_18E1D48C0();
  *(v2 + 1312) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MMGuardSafetyGuardrail()();
  *(v2 + 1376) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1384) = v3;
  sub_18E1D48C0();
  *(v2 + 1352) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MMSafety()();
  *(v2 + 1416) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1424) = v3;
  sub_18E1D48C0();
  *(v2 + 1392) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PQAVerification()();
  *(v2 + 1456) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1464) = v3;
  sub_18E1D48C0();
  *(v2 + 1432) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PrepubescentSafety()();
  *(v2 + 1496) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1504) = v3;
  sub_18E1D48C0();
  *(v2 + 1472) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PrepubescentSafetyCustomized()();
  *(v2 + 1536) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1544) = v3;
  sub_18E1D48C0();
  *(v2 + 1512) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.Safety()();
  *(v2 + 1576) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1584) = v3;
  sub_18E1D48C0();
  *(v2 + 1552) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.StructuralIntegrity()();
  *(v2 + 1616) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1624) = v3;
  sub_18E1D48C0();
  *(v2 + 1592) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.StructuralIntegrityCustomized()();
  *(v2 + 1656) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1664) = v3;
  sub_18E1D48C0();
  *(v2 + 1632) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.TextGuardSafetyGuardrail()();
  *(v2 + 1696) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1704) = v3;
  sub_18E1D48C0();
  *(v2 + 1672) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.VIContentClassifier()();
  *(v2 + 1736) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1744) = v3;
  sub_18E1D48C0();
  *(v2 + 1712) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.AnswerSynthesis()();
  *(v2 + 1776) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1784) = v3;
  sub_18E1D48C0();
  *(v2 + 1752) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.FullPayloadCorrection()();
  *(v2 + 1816) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1824) = v3;
  sub_18E1D48C0();
  *(v2 + 1792) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.AutoTagger()();
  *(v2 + 1856) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1864) = v3;
  sub_18E1D48C0();
  *(v2 + 1832) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.AutonamingMessages()();
  *(v2 + 1896) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1904) = v3;
  sub_18E1D48C0();
  *(v2 + 1872) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.AFMTextInstruct3BBase()();
  *(v2 + 1936) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1944) = v3;
  sub_18E1D48C0();
  *(v2 + 1912) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.BulletsTransform()();
  *(v2 + 1976) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 1984) = v3;
  sub_18E1D48C0();
  *(v2 + 1952) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ConciseTone()();
  *(v2 + 2016) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2024) = v3;
  sub_18E1D48C0();
  *(v2 + 1992) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ContextAwareness()();
  *(v2 + 2056) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2064) = v3;
  sub_18E1D48C0();
  *(v2 + 2032) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ContextProgram()();
  *(v2 + 2096) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2104) = v3;
  sub_18E1D48C0();
  *(v2 + 2072) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.DescribeYourEdit()();
  *(v2 + 2136) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2144) = v3;
  sub_18E1D48C0();
  *(v2 + 2112) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.FitnessSummary()();
  *(v2 + 2176) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2184) = v3;
  sub_18E1D48C0();
  *(v2 + 2152) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ContentTagger()();
  *(v2 + 2216) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2224) = v3;
  sub_18E1D48C0();
  *(v2 + 2192) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.InstructFMApiGeneric()();
  *(v2 + 2256) = &type metadata for LLMCompileDraftBundle;
  *(v2 + 2264) = sub_18E2ADF7C();
  sub_18E1E1950();
  *(v2 + 2232) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLMCompileDraft.InstructFMApiThirdPartyCompileDraft()();
  *(v2 + 2296) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2304) = v3;
  sub_18E1D48C0();
  *(v2 + 2272) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.FriendlyTone()();
  *(v2 + 2336) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2344) = v3;
  sub_18E1D48C0();
  *(v2 + 2312) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.JournalMomentsClassification()();
  *(v2 + 2376) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2384) = v3;
  sub_18E1D48C0();
  *(v2 + 2352) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.JournalMomentsReflection()();
  *(v2 + 2416) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2424) = v3;
  sub_18E1D48C0();
  *(v2 + 2392) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.LWOnDevicePlannerV1()();
  *(v2 + 2456) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2464) = v3;
  sub_18E1D48C0();
  *(v2 + 2432) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MagicRewrite()();
  *(v2 + 2496) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2504) = v3;
  sub_18E1D48C0();
  *(v2 + 2472) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MailReply()();
  *(v2 + 2536) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2544) = v3;
  sub_18E1D48C0();
  *(v2 + 2512) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MailReplyLongFormBasic()();
  *(v2 + 2576) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2584) = v3;
  sub_18E1D48C0();
  *(v2 + 2552) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MailReplyLongFormRewrite()();
  *(v2 + 2616) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2624) = v3;
  sub_18E1D48C0();
  *(v2 + 2592) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MailReplyQA()();
  *(v2 + 2656) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2664) = v3;
  sub_18E1D48C0();
  *(v2 + 2632) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MessagesAction()();
  *(v2 + 2696) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2704) = v3;
  sub_18E1D48C0();
  *(v2 + 2672) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MessagesReply()();
  *(v2 + 2736) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2744) = v3;
  sub_18E1D48C0();
  *(v2 + 2712) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MMGuardSafetyGuardrail3B()();
  *(v2 + 2776) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2784) = v3;
  sub_18E1D48C0();
  *(v2 + 2752) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.Nutrition()();
  *(v2 + 2816) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2824) = v3;
  sub_18E1D48C0();
  *(v2 + 2792) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PersonalizedSmartReply()();
  *(v2 + 2856) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2864) = v3;
  sub_18E1D48C0();
  *(v2 + 2832) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosLibraryUnderstandingMM()();
  *(v2 + 2896) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2904) = v3;
  sub_18E1D48C0();
  *(v2 + 2872) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosLibraryUnderstandingT2T()();
  *(v2 + 2936) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2944) = v3;
  sub_18E1D48C0();
  *(v2 + 2912) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationAssetCurationOutlier3b()();
  *(v2 + 2976) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 2984) = v3;
  sub_18E1D48C0();
  *(v2 + 2952) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationGlobalTraits3b()();
  *(v2 + 3016) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3024) = v3;
  sub_18E1D48C0();
  *(v2 + 2992) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationQueryUnderstanding3b()();
  *(v2 + 3056) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3064) = v3;
  sub_18E1D48C0();
  *(v2 + 3032) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationStoryteller3b()();
  *(v2 + 3096) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3104) = v3;
  sub_18E1D48C0();
  *(v2 + 3072) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesTitle()();
  *(v2 + 3136) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3144) = v3;
  sub_18E1D48C0();
  *(v2 + 3112) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationTitle3b()();
  *(v2 + 3176) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3184) = v3;
  sub_18E1D48C0();
  *(v2 + 3152) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PlannerV4()();
  *(v2 + 3216) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3224) = v3;
  sub_18E1D48C0();
  *(v2 + 3192) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PlannerV5()();
  *(v2 + 3256) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3264) = v3;
  sub_18E1D48C0();
  *(v2 + 3232) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PlannerV6()();
  *(v2 + 3296) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3304) = v3;
  sub_18E1D48C0();
  *(v2 + 3272) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ProfessionalTone()();
  *(v2 + 3336) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3344) = v3;
  sub_18E1D48C0();
  *(v2 + 3312) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ProofreadingReview()();
  *(v2 + 3376) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3384) = v3;
  sub_18E1D48C0();
  *(v2 + 3352) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.RemindersSuggestActionItems()();
  *(v2 + 3416) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3424) = v3;
  sub_18E1D48C0();
  *(v2 + 3392) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.RemindersSuggestActionItemsV2()();
  *(v2 + 3456) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3464) = v3;
  sub_18E1D48C0();
  *(v2 + 3432) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ResponseGenerationV4()();
  *(v2 + 3496) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3504) = v3;
  sub_18E1D48C0();
  *(v2 + 3472) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ResponseGenerationV5()();
  *(v2 + 3536) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3544) = v3;
  sub_18E1D48C0();
  *(v2 + 3512) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ResponseGenerationV6()();
  *(v2 + 3576) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3584) = v3;
  sub_18E1D48C0();
  *(v2 + 3552) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.SafetyGuardrail()();
  *(v2 + 3616) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3624) = v3;
  sub_18E1D48C0();
  *(v2 + 3592) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.SearchQueryUnderstandingOnDevice()();
  *(v2 + 3656) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3664) = v3;
  sub_18E1D48C0();
  *(v2 + 3632) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ShortcutsAskAFMAction3B()();
  *(v2 + 3696) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3704) = v3;
  sub_18E1D48C0();
  *(v2 + 3672) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ShortcutsAskAFMAction3BV2()();
  *(v2 + 3736) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3744) = v3;
  sub_18E1D48C0();
  *(v2 + 3712) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.SmartAppActions()();
  *(v2 + 3776) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3784) = v3;
  sub_18E1D48C0();
  *(v2 + 3752) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.StructuralExtraction()();
  *(v2 + 3816) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3824) = v3;
  sub_18E1D48C0();
  *(v2 + 3792) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.StructuredExtraction()();
  *(v2 + 3856) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3864) = v3;
  sub_18E1D48C0();
  *(v2 + 3832) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.SuggestRecipeItems()();
  *(v2 + 3896) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3904) = v3;
  sub_18E1D48C0();
  *(v2 + 3872) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.SuggestRecipeItemsV2()();
  *(v2 + 3936) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3944) = v3;
  sub_18E1D48C0();
  *(v2 + 3912) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.Summarization()();
  *(v2 + 3976) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 3984) = v3;
  sub_18E1D48C0();
  *(v2 + 3952) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.TablesTransform()();
  *(v2 + 4016) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 4024) = v3;
  sub_18E1D48C0();
  *(v2 + 3992) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.TakeawaysTransform()();
  *(v2 + 4056) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 4064) = v3;
  sub_18E1D48C0();
  *(v2 + 4032) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.TamalePOI()();
  *(v2 + 4096) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 4104) = v3;
  sub_18E1D48C0();
  *(v2 + 4072) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.TextEventExtraction()();
  *(v2 + 4136) = &type metadata for AssetBackedLLMDraftBundle;
  v24 = sub_18E2083A8();
  *(v2 + 4144) = v24;
  sub_18E1E2C84();
  v25 = swift_allocObject();
  *(v2 + 4112) = v25;
  sub_18E1E1A64();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.DraftModel.TextEventExtraction()();
  *(v25 + 16) = 0xD00000000000003DLL;
  *(v25 + 24) = v1;
  *(v2 + 4176) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 4184) = v3;
  sub_18E1D48C0();
  *(v2 + 4152) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.TextExpert()();
  *(v2 + 4216) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 4224) = v3;
  sub_18E1D48C0();
  *(v2 + 4192) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.TextPersonExtraction()();
  *(v2 + 4256) = &type metadata for AssetBackedLLMDraftBundle;
  *(v2 + 4264) = v24;
  sub_18E1E2C84();
  v26 = swift_allocObject();
  *(v2 + 4232) = v26;
  sub_18E1E1A64();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.DraftModel.TextPersonExtraction()();
  *(v26 + 16) = 0xD00000000000003ELL;
  *(v26 + 24) = v1;
  *(v2 + 4296) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 4304) = v3;
  sub_18E1D48C0();
  *(v2 + 4272) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.DeviceSummarizationTextSummarizer()();
  *(v2 + 4336) = &type metadata for AssetBackedLLMDraftBundle;
  *(v2 + 4344) = v24;
  sub_18E1E2C84();
  v27 = swift_allocObject();
  *(v2 + 4312) = v27;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.DraftModel.Textunderstanding()();
  *(v27 + 16) = 0xD00000000000003ALL;
  *(v27 + 24) = &type metadata for AssetBackedLLMDraftBundle;
  *(v2 + 4376) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 4384) = v3;
  sub_18E1D48C0();
  *(v2 + 4352) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.AFMTextInstruct3BThirdParty()();
  *(v2 + 4416) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 4424) = v3;
  sub_18E1D48C0();
  *(v2 + 4392) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.AFMTextInstruct3BThirdPartySD()();
  *(v2 + 4456) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 4464) = v3;
  sub_18E1D48C0();
  *(v2 + 4432) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.UIGrounding()();
  *(v2 + 4496) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 4504) = v3;
  sub_18E1D48C0();
  *(v2 + 4472) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.UIPreviews()();
  *(v2 + 4536) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 4544) = v3;
  sub_18E1D48C0();
  *(v2 + 4512) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.UrgencyClassification()();
  *(v2 + 4576) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 4584) = v3;
  sub_18E1D48C0();
  *(v2 + 4552) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.SmallMessagesReplyWatch()();
  *(v2 + 4616) = &type metadata for LLMBundle;
  v28 = sub_18E1D8410();
  *(v2 + 4624) = v28;
  sub_18E1D48C0();
  *(v2 + 4592) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.AccessibilityMagnifier()();
  *(v2 + 4656) = &type metadata for LLMBundle;
  *(v2 + 4664) = v28;
  sub_18E1D48C0();
  *(v2 + 4632) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.AnswerSynthesisServer()();
  *(v2 + 4696) = &type metadata for LLMBundle;
  *(v2 + 4704) = v28;
  sub_18E1D48C0();
  *(v2 + 4672) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.InstructServerAutograder()();
  *(v2 + 4736) = &type metadata for LLMBundle;
  *(v2 + 4744) = v28;
  sub_18E1D48C0();
  *(v2 + 4712) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.InstructServerBase()();
  *(v2 + 4776) = &type metadata for LLMBundle;
  *(v2 + 4784) = v28;
  sub_18E1D48C0();
  *(v2 + 4752) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerBulletsTransform()();
  *(v2 + 4816) = &type metadata for LLMBundle;
  *(v2 + 4824) = v28;
  sub_18E1D48C0();
  *(v2 + 4792) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerConciseTone()();
  *(v2 + 4856) = &type metadata for LLMBundle;
  *(v2 + 4864) = v28;
  sub_18E1D48C0();
  *(v2 + 4832) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerDescribeYourEdit()();
  *(v2 + 4896) = &type metadata for LLMBundle;
  *(v2 + 4904) = v28;
  sub_18E1D48C0();
  *(v2 + 4872) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerFitnessWorkoutVoice()();
  *(v2 + 4936) = &type metadata for LLMBundle;
  *(v2 + 4944) = v28;
  sub_18E1D48C0();
  *(v2 + 4912) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerFriendlyTone()();
  *(v2 + 4976) = &type metadata for LLMBundle;
  *(v2 + 4984) = v28;
  sub_18E1D48C0();
  *(v2 + 4952) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.JournalFollowUpPrompts()();
  *(v2 + 5016) = &type metadata for LLMBundle;
  *(v2 + 5024) = v28;
  sub_18E1D48C0();
  *(v2 + 4992) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.LWPlannerV1()();
  *(v2 + 5056) = &type metadata for LLMBundle;
  *(v2 + 5064) = v28;
  sub_18E1D48C0();
  *(v2 + 5032) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerMagicRewrite()();
  *(v2 + 5096) = &type metadata for LLMBundle;
  *(v2 + 5104) = v28;
  sub_18E1D48C0();
  *(v2 + 5072) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerMailReplyLongFormBasic()();
  *(v2 + 5136) = &type metadata for LLMBundle;
  *(v2 + 5144) = v28;
  sub_18E1D48C0();
  *(v2 + 5112) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerMailReplyLongFormRewrite()();
  *(v2 + 5176) = &type metadata for LLMBundle;
  *(v2 + 5184) = v28;
  sub_18E1D48C0();
  *(v2 + 5152) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerMailReplyQA()();
  *(v2 + 5216) = &type metadata for LLMBundle;
  *(v2 + 5224) = v28;
  sub_18E1D48C0();
  *(v2 + 5192) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MessagesUserRequest()();
  *(v2 + 5256) = &type metadata for LLMBundle;
  *(v2 + 5264) = v28;
  sub_18E1D48C0();
  *(v2 + 5232) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.MMGuardSafetyGuardrailServer()();
  *(v2 + 5296) = &type metadata for LLMBundle;
  *(v2 + 5304) = v28;
  sub_18E1D48C0();
  *(v2 + 5272) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.OpenEndedInteraction()();
  *(v2 + 5336) = &type metadata for LLMBundle;
  *(v2 + 5344) = v28;
  sub_18E1D48C0();
  *(v2 + 5312) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.OpenEndedReflection()();
  *(v2 + 5376) = &type metadata for LLMBundle;
  *(v2 + 5384) = v28;
  sub_18E1D48C0();
  *(v2 + 5352) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.OpenEndedSchema()();
  *(v2 + 5416) = &type metadata for LLMBundle;
  *(v2 + 5424) = v28;
  sub_18E1D48C0();
  *(v2 + 5392) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.OpenEndedTone()();
  *(v2 + 5456) = &type metadata for LLMBundle;
  *(v2 + 5464) = v28;
  sub_18E1D48C0();
  *(v2 + 5432) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.OpenEndedToneBase()();
  *(v2 + 5496) = &type metadata for LLMBundle;
  *(v2 + 5504) = v28;
  sub_18E1D48C0();
  *(v2 + 5472) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.OpenEndedToneQueryResponse()();
  *(v2 + 5536) = &type metadata for LLMBundle;
  *(v2 + 5544) = v28;
  sub_18E1D48C0();
  *(v2 + 5512) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.OpenEndedToneQueryResponseV2()();
  *(v2 + 5576) = &type metadata for LLMBundle;
  *(v2 + 5584) = v28;
  sub_18E1D48C0();
  *(v2 + 5552) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerPersonalizedSmartReply()();
  *(v2 + 5616) = &type metadata for LLMBundle;
  *(v2 + 5624) = v28;
  sub_18E1D48C0();
  *(v2 + 5592) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosCommon()();
  *(v2 + 5656) = &type metadata for LLMBundle;
  *(v2 + 5664) = v28;
  sub_18E1D48C0();
  *(v2 + 5632) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationAssetCuration()();
  *(v2 + 5696) = &type metadata for LLMBundle;
  *(v2 + 5704) = v28;
  sub_18E1D48C0();
  *(v2 + 5672) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationAssetCurationV2()();
  *(v2 + 5736) = &type metadata for LLMBundle;
  *(v2 + 5744) = v28;
  sub_18E1D48C0();
  *(v2 + 5712) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationGlobalTraits()();
  *(v2 + 5776) = &type metadata for LLMBundle;
  *(v2 + 5784) = v28;
  sub_18E1D48C0();
  *(v2 + 5752) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationGlobalTraitsV2()();
  *(v2 + 5816) = &type metadata for LLMBundle;
  *(v2 + 5824) = v28;
  sub_18E1D48C0();
  *(v2 + 5792) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationGlobalTraitsV3()();
  *(v2 + 5856) = &type metadata for LLMBundle;
  *(v2 + 5864) = v28;
  sub_18E1D48C0();
  *(v2 + 5832) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationQueryUnderstanding()();
  *(v2 + 5896) = &type metadata for LLMBundle;
  *(v2 + 5904) = v28;
  sub_18E1D48C0();
  *(v2 + 5872) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationQueryUnderstandingV2()();
  *(v2 + 5936) = &type metadata for LLMBundle;
  *(v2 + 5944) = v28;
  sub_18E1D48C0();
  *(v2 + 5912) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationQueryUnderstandingV3()();
  *(v2 + 5976) = &type metadata for LLMBundle;
  *(v2 + 5984) = v28;
  sub_18E1D48C0();
  *(v2 + 5952) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationStoryteller()();
  *(v2 + 6016) = &type metadata for LLMBundle;
  *(v2 + 6024) = v28;
  sub_18E1D48C0();
  *(v2 + 5992) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PhotosMemoriesCreationStorytellerV2()();
  *(v2 + 6056) = &type metadata for LLMBundle;
  *(v2 + 6064) = v28;
  sub_18E1D48C0();
  *(v2 + 6032) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.Planner()();
  *(v2 + 6096) = &type metadata for LLMBundle;
  *(v2 + 6104) = v28;
  sub_18E1D48C0();
  *(v2 + 6072) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PlannerV2()();
  *(v2 + 6136) = &type metadata for LLMBundle;
  *(v2 + 6144) = v28;
  sub_18E1D48C0();
  *(v2 + 6112) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PlannerV3()();
  *(v2 + 6176) = &type metadata for LLMBundle;
  *(v2 + 6184) = v28;
  sub_18E1D48C0();
  *(v2 + 6152) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PlannerV7()();
  *(v2 + 6216) = &type metadata for LLMBundle;
  *(v2 + 6224) = v28;
  sub_18E1D48C0();
  *(v2 + 6192) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PlannerV8()();
  *(v2 + 6256) = &type metadata for LLMBundle;
  *(v2 + 6264) = v28;
  sub_18E1D48C0();
  *(v2 + 6232) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.PlannerV9()();
  *(v2 + 6296) = &type metadata for LLMBundle;
  *(v2 + 6304) = v28;
  sub_18E1D48C0();
  *(v2 + 6272) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerPQAVerification()();
  *(v2 + 6336) = &type metadata for LLMBundle;
  *(v2 + 6344) = v28;
  sub_18E1D48C0();
  *(v2 + 6312) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerProfessionalTone()();
  *(v2 + 6376) = &type metadata for LLMBundle;
  *(v2 + 6384) = v28;
  sub_18E1D48C0();
  *(v2 + 6352) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerProofreadingReview()();
  *(v2 + 6416) = &type metadata for LLMBundle;
  *(v2 + 6424) = v28;
  sub_18E1D48C0();
  *(v2 + 6392) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.RemindersAutoCategorizeList()();
  *(v2 + 6456) = &type metadata for LLMBundle;
  *(v2 + 6464) = v28;
  sub_18E1D48C0();
  *(v2 + 6432) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ResponseGeneration()();
  *(v2 + 6496) = &type metadata for LLMBundle;
  *(v2 + 6504) = v28;
  sub_18E1D48C0();
  *(v2 + 6472) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ResponseGenerationV2()();
  *(v2 + 6536) = &type metadata for LLMBundle;
  *(v2 + 6544) = v28;
  sub_18E1D48C0();
  *(v2 + 6512) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ResponseGenerationV3()();
  *(v2 + 6576) = &type metadata for LLMBundle;
  *(v2 + 6584) = v28;
  sub_18E1D48C0();
  *(v2 + 6552) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ResponseGenerationV7()();
  *(v2 + 6616) = &type metadata for LLMBundle;
  *(v2 + 6624) = v28;
  sub_18E1D48C0();
  *(v2 + 6592) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ResponseGenerationV8()();
  *(v2 + 6656) = &type metadata for LLMBundle;
  *(v2 + 6664) = v28;
  sub_18E1D48C0();
  *(v2 + 6632) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.SearchQueryUnderstandingServer()();
  *(v2 + 6696) = &type metadata for LLMBundle;
  *(v2 + 6704) = v28;
  sub_18E1D48C0();
  *(v2 + 6672) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ShortcutsAskAFMAction()();
  *(v2 + 6736) = &type metadata for LLMBundle;
  *(v2 + 6744) = v28;
  sub_18E1D48C0();
  *(v2 + 6712) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ShortcutsAskAFMActionV2()();
  *(v2 + 6776) = &type metadata for LLMBundle;
  *(v2 + 6784) = v28;
  sub_18E1D48C0();
  *(v2 + 6752) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerStructuredExtraction()();
  *(v2 + 6816) = &type metadata for LLMBundle;
  *(v2 + 6824) = v28;
  sub_18E1D48C0();
  *(v2 + 6792) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.STXMultimodal()();
  *(v2 + 6856) = &type metadata for LLMBundle;
  *(v2 + 6864) = v28;
  sub_18E1D48C0();
  *(v2 + 6832) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.SuperAutofillMultimodal()();
  *(v2 + 6896) = &type metadata for LLMBundle;
  *(v2 + 6904) = v28;
  sub_18E1D48C0();
  *(v2 + 6872) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerTablesTransform()();
  *(v2 + 6936) = &type metadata for LLMBundle;
  *(v2 + 6944) = v28;
  sub_18E1D48C0();
  *(v2 + 6912) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.ServerTakeawaysTransform()();
  *(v2 + 6976) = &type metadata for LLMBundle;
  *(v2 + 6984) = v28;
  sub_18E1D48C0();
  *(v2 + 6952) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.SummarizationTextSummarizer()();
  *(v2 + 7016) = &type metadata for LLMBundle;
  *(v2 + 7024) = v28;
  sub_18E1D48C0();
  *(v2 + 6992) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.VisualIntelligence()();
  *(v2 + 7056) = &type metadata for LLMBundle;
  *(v2 + 7064) = v28;
  sub_18E1D48C0();
  *(v2 + 7032) = swift_allocObject();
  static Catalog.ResourceBundle.TokenGeneration.LLM.FinancialInsights()();
  *(v2 + 7096) = &type metadata for LLMBundle;
  *(v2 + 7104) = v28;
  sub_18E1D48C0();
  v29 = swift_allocObject();
  *(v2 + 7072) = v29;
  sub_18E1E1A64();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.PhotosMemoriesCreationBase()();
  sub_18E1D4980();
  *(v29 + 16) = 0xD000000000000033;
  *(v29 + 24) = v1;
  *(v2 + 7136) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 7144) = v3;
  sub_18E1D48C0();
  v30 = swift_allocObject();
  *(v2 + 7112) = v30;
  sub_18E1E1A64();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.PQAVerificationBase()();
  sub_18E1D4980();
  *(v30 + 16) = 0xD000000000000026;
  *(v30 + 24) = v1;
  *(v2 + 7176) = &type metadata for LLMBundle;
  *(v2 + 7184) = v28;
  sub_18E1D48C0();
  v31 = swift_allocObject();
  *(v2 + 7152) = v31;
  sub_18E1E1A64();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.SummarizationTextSummarizerAjaxBase()();
  sub_18E1D4980();
  *(v31 + 16) = 0xD00000000000003DLL;
  *(v31 + 24) = v1;
  *(v2 + 7216) = &type metadata for AssetBackedDiffusionBundle;
  v32 = sub_18E22EAB0();
  *(v2 + 7224) = v32;
  sub_18E1E2C84();
  v33 = swift_allocObject();
  *(v2 + 7192) = v33;
  sub_18E1CF684();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.Animation()();
  *(v33 + 16) = 0xD000000000000030;
  *(v33 + 24) = &unk_1F0141400;
  *(v2 + 7256) = &type metadata for AssetBackedDiffusionBundle;
  *(v2 + 7264) = v32;
  sub_18E1E2C84();
  *(v2 + 7232) = swift_allocObject();
  static Catalog.ResourceBundle.VisualGeneration.Diffusion.DiffusionBase()();
  *(v2 + 7296) = &type metadata for AssetBackedDiffusionBundle;
  *(v2 + 7304) = v32;
  sub_18E1E2C84();
  v34 = swift_allocObject();
  *(v2 + 7272) = v34;
  sub_18E1CF684();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.Emoji()();
  *(v34 + 16) = 0xD00000000000002CLL;
  *(v34 + 24) = &unk_1F0141400;
  *(v2 + 7336) = &type metadata for AssetBackedDiffusionBundle;
  *(v2 + 7344) = v32;
  sub_18E1E2C84();
  v35 = swift_allocObject();
  *(v2 + 7312) = v35;
  sub_18E1CF684();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.Illustration()();
  *(v35 + 16) = 0xD000000000000033;
  *(v35 + 24) = &unk_1F0141400;
  *(v2 + 7376) = &type metadata for AssetBackedDiffusionBundle;
  *(v2 + 7384) = v32;
  sub_18E1E2C84();
  v36 = swift_allocObject();
  *(v2 + 7352) = v36;
  sub_18E1CF684();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.MessagesBackgrounds()();
  *(v36 + 16) = 0xD00000000000003BLL;
  *(v36 + 24) = &unk_1F0141400;
  *(v2 + 7416) = &type metadata for AssetBackedDiffusionBundle;
  *(v2 + 7424) = v32;
  sub_18E1E2C84();
  v37 = swift_allocObject();
  *(v2 + 7392) = v37;
  sub_18E1CF684();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.PersonalizedAnimation()();
  *(v37 + 16) = 0xD00000000000003DLL;
  *(v37 + 24) = &unk_1F0141400;
  *(v2 + 7456) = &type metadata for AssetBackedDiffusionBundle;
  *(v2 + 7464) = v32;
  sub_18E1E2C84();
  v38 = swift_allocObject();
  *(v2 + 7432) = v38;
  sub_18E1CF684();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.PersonalizedEmoji()();
  *(v38 + 16) = 0xD000000000000039;
  *(v38 + 24) = &unk_1F0141400;
  *(v2 + 7496) = &type metadata for AssetBackedDiffusionBundle;
  *(v2 + 7504) = v32;
  sub_18E1E2C84();
  v39 = swift_allocObject();
  *(v2 + 7472) = v39;
  sub_18E1CF684();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.PersonalizedIllustration()();
  *(v39 + 16) = 0xD000000000000040;
  *(v39 + 24) = &unk_1F0141400;
  *(v2 + 7536) = &type metadata for AssetBackedDiffusionBundle;
  *(v2 + 7544) = v32;
  sub_18E1E2C84();
  v40 = swift_allocObject();
  *(v2 + 7512) = v40;
  sub_18E1CF684();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.PersonalizedSketch()();
  *(v40 + 16) = 0xD00000000000003ALL;
  *(v40 + 24) = &unk_1F0141400;
  *(v2 + 7576) = &type metadata for AssetBackedDiffusionBundle;
  *(v2 + 7584) = v32;
  sub_18E1E2C84();
  v41 = swift_allocObject();
  *(v2 + 7552) = v41;
  sub_18E1CF684();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.PersonalizedScribble()();
  *(v41 + 16) = 0xD000000000000042;
  *(v41 + 24) = &unk_1F0141400;
  *(v2 + 7616) = &type metadata for AssetBackedDiffusionBundle;
  *(v2 + 7624) = v32;
  sub_18E1E2C84();
  v42 = swift_allocObject();
  *(v2 + 7592) = v42;
  sub_18E1CF684();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.Refiner()();
  *(v42 + 16) = 0xD00000000000002ELL;
  *(v42 + 24) = &unk_1F0141400;
  *(v2 + 7656) = &type metadata for AssetBackedDiffusionBundle;
  *(v2 + 7664) = v32;
  sub_18E1E2C84();
  v43 = swift_allocObject();
  *(v2 + 7632) = v43;
  sub_18E1CF684();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.Sketch()();
  *(v43 + 16) = 0xD00000000000002DLL;
  *(v43 + 24) = &unk_1F0141400;
  *(v2 + 7696) = &type metadata for AssetBackedDiffusionBundle;
  *(v2 + 7704) = v32;
  sub_18E1E2C84();
  v44 = swift_allocObject();
  *(v2 + 7672) = v44;
  sub_18E1CF684();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.SkinToneEmoji()();
  *(v44 + 16) = 0xD000000000000035;
  *(v44 + 24) = &unk_1F0141400;
  *(v2 + 7736) = &type metadata for AssetBackedDiffusionBundle;
  *(v2 + 7744) = v32;
  sub_18E1E2C84();
  v45 = swift_allocObject();
  *(v2 + 7712) = v45;
  sub_18E1CF684();
  static Catalog.Resource.Diffusion.Model.VisualGenerationBase()();
  static Catalog.Resource.Diffusion.Adapter.Scribble()();
  *(v45 + 16) = 0xD000000000000035;
  *(v45 + 24) = &unk_1F0141400;
  *(v2 + 7776) = &type metadata for LLMBundle;
  *(v2 + 7784) = v28;
  sub_18E1D48C0();
  v46 = swift_allocObject();
  *(v2 + 7752) = v46;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.FoundationModelsPlatformDummyTokenizer()();
  static Catalog.Resource.LLM.Model.FoundationModelsPlatformBase()();
  sub_18E1D4980();
  *(v46 + 16) = 0xD000000000000022;
  *(v46 + 24) = &unk_1F0141400;
  *(v2 + 7816) = &type metadata for AssetBackedLLMBundle;
  *(v2 + 7824) = v3;
  sub_18E1D48C0();
  v47 = swift_allocObject();
  *(v2 + 7792) = v47;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.NLRouterTokenizer()();
  static Catalog.Resource.LLM.Model.NLRouterBase()();
  bzero(v47 + 14, 0xC8uLL);
  v47[2] = 0xD000000000000022;
  v47[3] = &unk_1F0141400;
  *(v2 + 7856) = &type metadata for LLMBundle;
  *(v2 + 7864) = v28;
  sub_18E1D48C0();
  v48 = swift_allocObject();
  *(v2 + 7832) = v48;
  sub_18E1CF684();
  static Catalog.Resource.Tokenizer.ChatGPTTokenizer()();
  static Catalog.Resource.LLM.Model.ChatGPT()();
  bzero(v48 + 14, 0xC8uLL);
  v48[2] = 0xD000000000000018;
  v48[3] = &unk_1F0141400;
  *(v2 + 7896) = &type metadata for ImageSpatialPhotosReliveBundle;
  *(v2 + 7904) = sub_18E231008();
  sub_18E1E2C84();
  v49 = swift_allocObject();
  *(v2 + 7872) = v49;
  sub_18E1CF684();
  static Catalog.Resource.ImageSpatialPhotosRelive.SpatialPhotosReliveBuiltin()();
  static Catalog.Resource.ImageSpatialPhotosRelive.FOVEstimatorBuiltin()();
  *(v49 + 16) = 0xD00000000000002CLL;
  *(v49 + 24) = &unk_1F0141400;
  *(v2 + 7936) = &type metadata for AssetBackedImageSpatialPhotosReliveBundle;
  *(v2 + 7944) = sub_18E23144C();
  sub_18E1E2C84();
  v50 = swift_allocObject();
  *(v2 + 7912) = v50;
  sub_18E1CF684();
  static Catalog.Resource.ImageSpatialPhotosRelive.SpatialPhotosReliveMain()();
  static Catalog.Resource.ImageSpatialPhotosRelive.FOVEstimatorMain()();
  *(v50 + 16) = 0xD000000000000029;
  *(v50 + 24) = &unk_1F0141400;
  *(v2 + 7976) = &type metadata for AssetBackedTokenInputDenyListWithDefaultsBundle;
  *(v2 + 7984) = sub_18E2316AC();
  sub_18E1E6400();
  v51 = swift_allocObject();
  *(v2 + 7952) = v51;
  sub_18E1CF684();
  static Catalog.Resource.ModelConfigurationReplacement.All()();
  static Catalog.Resource.TokenInputDenyList.FoundationModelsFrameworkApiInputDenyList()();
  static Catalog.Resource.EmbeddingDenyList.All()();
  *(v51 + 16) = 0xD00000000000002ELL;
  *(v51 + 24) = &unk_1F0141400;
  *(v2 + 8016) = &type metadata for AssetBackedTokenInputDenyListBundle;
  *(v2 + 8024) = sub_18E207A4C();
  sub_18E1E2C84();
  v52 = swift_allocObject();
  *(v2 + 7992) = v52;
  sub_18E1CF684();
  static Catalog.Resource.TokenInputDenyList.FoundationModelsFrameworkApiInputDenyList()();
  static Catalog.Resource.EmbeddingDenyList.All()();
  *(v52 + 16) = 0xD000000000000025;
  *(v52 + 24) = &unk_1F0141400;
  *(v2 + 8056) = &type metadata for AssetBackedTokenOutputDenyListWithDefaultsBundle;
  *(v2 + 8064) = sub_18E2319DC();
  sub_18E1E6400();
  v53 = swift_allocObject();
  *(v2 + 8032) = v53;
  sub_18E1CF684();
  static Catalog.Resource.ModelConfigurationReplacement.All()();
  static Catalog.Resource.TokenOutputDenyList.FoundationModelsFrameworkApiOutputDenyList()();
  static Catalog.Resource.EmbeddingDenyList.All()();
  *(v53 + 16) = 0xD00000000000002FLL;
  *(v53 + 24) = &unk_1F0141400;
  *(v2 + 8096) = &type metadata for AssetBackedTokenOutputDenyListBundle;
  *(v2 + 8104) = sub_18E231D0C();
  sub_18E1E2C84();
  v54 = swift_allocObject();
  *(v2 + 8072) = v54;
  sub_18E1CF684();
  static Catalog.Resource.TokenOutputDenyList.FoundationModelsFrameworkApiOutputDenyList()();
  static Catalog.Resource.EmbeddingDenyList.All()();
  *(v54 + 16) = 0xD000000000000026;
  *(v54 + 24) = &unk_1F0141400;
  *(v2 + 8136) = &type metadata for AssetBackedTokenOutputRetainListBundle;
  v55 = sub_18E2AE01C();
  *(v2 + 8144) = v55;
  sub_18E1E1950();
  *(v2 + 8112) = swift_allocObject();
  static Catalog.ResourceBundle.Overrides.TokenOutputRetainList.TokenOutputRetainListStructureExtractionSafetyWordList()();
  *(v2 + 8176) = &type metadata for AssetBackedTokenOutputRetainListBundle;
  *(v2 + 8184) = v55;
  sub_18E1E1950();
  *(v2 + 8152) = swift_allocObject();
  static Catalog.ResourceBundle.Overrides.TokenOutputRetainList.TokenOutputRetainListWithDefaultsTemplate()();
  static Catalog.Resource.Motion.Model.CoreMotionIMUFoundationModel()();
  static Catalog.Resource.Motion.Adapter.CoreMotionCalorimetryFMPredictedWRMets()();
  v77 = 0xD000000000000042;
  v78 = 0x800000018E459040;
  sub_18E231D60();
  v57 = v56;
  v75 = &type metadata for AssetBackedMotionBundle;
  v58 = sub_18E2AE070();
  v76 = v58;
  sub_18E1E2C84();
  swift_allocObject();
  sub_18E221820();
  sub_18E2AE0C4(v59, v60);
  *(v57 + 16) = 205;
  sub_18E1C551C(&v74, v57 + 0x2000);
  sub_18E2AE120(&v77);
  sub_18E1D44C0();
  static Catalog.Resource.Motion.Model.CoreMotionIMUFoundationModel()();
  static Catalog.Resource.Motion.Adapter.CoreMotionCalorimetryReducedEmbeddings()();
  v77 = 0xD00000000000003ELL;
  v78 = 205;
  v61 = *(v57 + 16);
  if (v61 >= *(v57 + 24) >> 1)
  {
    sub_18E1E2944();
    v57 = v71;
  }

  v75 = &type metadata for AssetBackedMotionBundle;
  v76 = v58;
  sub_18E1E2C84();
  swift_allocObject();
  sub_18E221820();
  sub_18E2AE0C4(v62, v63);
  *(v57 + 16) = v61 + 1;
  sub_18E1C551C(&v74, v57 + 40 * v61 + 32);
  sub_18E2AE120(&v77);
  static Catalog.ResourceBundle.Motion.CoreMotionIMUFoundationModel()();
  v64 = *(v57 + 16);
  if (v64 >= *(v57 + 24) >> 1)
  {
    sub_18E1E2944();
    v57 = v72;
  }

  v75 = &type metadata for AssetBackedMotionBundle;
  v76 = v58;
  sub_18E1E2C84();
  swift_allocObject();
  sub_18E221820();
  sub_18E2AE0C4(v65, v66);
  *(v57 + 16) = v64 + 1;
  sub_18E1C551C(&v74, v57 + 40 * v64 + 32);
  sub_18E2AE120(&v77);
  static Catalog.ResourceBundle.Motion.CoreMotionPednetFoundationModel()();
  v67 = *(v57 + 16);
  if (v67 >= *(v57 + 24) >> 1)
  {
    sub_18E231D60();
    v57 = v73;
  }

  v75 = &type metadata for MotionBundle;
  v76 = sub_18E205FC8();
  sub_18E1E2C84();
  swift_allocObject();
  sub_18E221820();
  sub_18E1DEEE0(v68, v69);
  *(v57 + 16) = v67 + 1;
  sub_18E1C551C(&v74, v57 + 40 * v67 + 32);
  sub_18E231E1C(&v77);
  return v57;
}

unint64_t sub_18E1D3DD8()
{
  result = qword_1EABE06D8;
  if (!qword_1EABE06D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE06D8);
  }

  return result;
}

void *static Catalog.ResourceBundle.Overrides.DefaultOverrides.DefaultOverridesOnly()()
{
  sub_18E1E1FB0();
  sub_18E1D4400();
  static Catalog.Resource.ModelConfigurationReplacement.All(variant:)(v1, v2);
  if (!v0)
  {
    return sub_18E1E6A5C("com.apple.defaultoverrides", v13, v14, v15, v16, v17, v18, v19, v20);
  }

  sub_18E1E16E0();
  sub_18E44EFFC();
  sub_18E211360();
  MEMORY[0x193ACC300](67, 0x800000018E4659C0);
  v4 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
  sub_18E1E25E4(v4, v5, v4, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v6, v7, v8);
  sub_18E22EA38();
  result = sub_18E1CD52C("Fatal error", v9, v10, v11, v12, "ModelCatalog/Resources.swift");
  __break(1u);
  return result;
}

unint64_t sub_18E1D40A4()
{
  result = qword_1ED6A90C8;
  if (!qword_1ED6A90C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A90C8);
  }

  return result;
}

void AssetBackedModelConfigurationReplacementBase.init(configuration:variant:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18E223548();
  sub_18E1C826C();
  v15 = sub_18E1CD9B8(v7, v8, v9, v10, v11, v12, v13, v14, v61, v67, v71, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v159, v163, v167, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234, v237, v240);
  sub_18E1D0338(v15, v16, v17, v18, v19, v20, v21, v22, v62);
  sub_18E1E3BD4();
  v25 = sub_18E21D09C(29, v23, v24);
  if (v4)
  {
    goto LABEL_7;
  }

  if (!v244 || !*(v244 + 16))
  {
    v57 = sub_18E2D0B44();
    v58 = sub_18E1C8558(&type metadata for CatalogErrors.ConfigurationError, v57);
    sub_18E1E6860(v58, v59);
    sub_18E221DDC(v60, 41);

LABEL_7:

    sub_18E1FE044(&v243);
    goto LABEL_8;
  }

  v33 = sub_18E223A20(v25, v26, v27, v28, v29, v30, v31, v32, v63, v68, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v160, v164, v168, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v238, v241, v243);
  sub_18E1C973C(v33, v34, v35, v36, v37, v38, v39, v40, v64, v69, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v161, v165, v169);
  v49 = sub_18E1D5E70(v41, v42, v43, v44, v45, v46, v47, v48, v65, v70, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v162, v166, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v215, v218, v221, v224, v227, v230, v233, v236, v239, v242, v243);
  sub_18E1D4410(v49, v50, v51, v52, v53, v54, v55, v56, v66);
  *(v6 + 200) = v5;
  *(v6 + 208) = v3;
LABEL_8:
  sub_18E1CFAAC();
  sub_18E220CC4();
}

void *sub_18E1D41CC(uint64_t a1)
{
  *(v1 + 120) = a1;
  v3 = (a1 + 16);

  return memcpy(v3, (v1 + 808), 0xD8uLL);
}

uint64_t sub_18E1D4214()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;
}

uint64_t sub_18E1D42C0()
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *(v0 + 32) = *v1;
  *(v0 + 40) = v3;
  *(v0 + 48) = v4;
}

void sub_18E1D42E0(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
}

uint64_t sub_18E1D430C()
{

  return sub_18E44E46C();
}

uint64_t sub_18E1D432C(uint64_t a1, uint64_t a2, ...)
{

  return sub_18E44EB4C();
}

void *sub_18E1D4380()
{

  return memcpy((v0 + 224), (v0 + 424), 0xC1uLL);
}

uint64_t sub_18E1D43E0()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0xE000000000000000;

  return sub_18E44EFFC();
}

void *sub_18E1D4410(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(__srca, a9);
  __src = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);

  return memcpy(v9, __srca, 0xC8uLL);
}

uint64_t sub_18E1D443C(uint64_t a1)
{

  return swift_once();
}

void sub_18E1D4494(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void sub_18E1D44E0()
{
  v1 = *(v0 + 624);
  *(v0 + 616) = *(v0 + 616);
  *(v0 + 624) = v1;
}

uint64_t sub_18E1D451C(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 40) = 150000;
  *(v1 + 48) = 0;
  return result;
}

void sub_18E1D4530(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 96) = 1590000;
  *(v1 + 104) = 0;
  *(v1 + 108) = 0;
}

double sub_18E1D456C()
{
  *(v0 + 128) = 0;
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  return result;
}

uint64_t sub_18E1D45A8(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_18E1D45EC(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != result || v4 != a2)
  {
    sub_18E21D0F8();
    result = sub_18E44F3CC();
    if ((result & 1) == 0)
    {

      sub_18E44EFFC();

      sub_18E1CA5A4();
      v10 = v6;
      v7 = sub_18E1CBE3C();
      MEMORY[0x193ACC300](v7);
      v8 = sub_18E24B33C();
      sub_18E1C8558(&type metadata for CatalogErrors.ConfigurationError, v8);
      *v9 = v3;
      v9[1] = v4;
      v9[2] = 0xD00000000000001CLL;
      v9[3] = v10;
      return swift_willThrow();
    }
  }

  return result;
}

void sub_18E1D46CC(uint64_t a1, uint64_t a2)
{
  sub_18E212024();
  if (v2 != v5 || v3 != 0xE700000000000000)
  {
    v7 = v3;
    v8 = v2;
    v9 = *(v4 + 192);
    sub_18E1D0380();
    if ((sub_18E44F3CC() & 1) == 0)
    {
      if (qword_1ED6A94E0 != -1)
      {
        swift_once();
      }

      v10 = sub_18E1E3DF8();
      if (sub_18E2230F4(v10, v11, v12) && (v9 == 2 || (v9 & 1) == 0))
      {
        if (qword_1ED6A9048 != -1)
        {
          swift_once();
        }

        v13 = sub_18E1E3DF8();
        v16 = sub_18E21654C(v13, v14, v15);
        if (!v16 || (v17 = v16, v26 = v8, v27 = v7, MEMORY[0x1EEE9AC00](v16), v25[2] = &v26, v18 = sub_18E1CD660(sub_18E1CD848, v25, v17), , !v18))
        {
          v26 = 0;
          v27 = 0xE000000000000000;

          sub_18E44EFFC();

          sub_18E1CA5A4();
          v26 = 0xD000000000000014;
          v27 = v19;
          v20 = sub_18E1E3DF8();
          MEMORY[0x193ACC300](v20);
          v21 = v26;
          v22 = v27;
          v23 = sub_18E328264();
          sub_18E1C8558(&type metadata for CatalogErrors.VariantError, v23);
          *v24 = v8;
          v24[1] = v7;
          v24[2] = v21;
          v24[3] = v22;
          swift_willThrow();
        }
      }
    }
  }
}

void *sub_18E1D48D8()
{
  sub_18E1C551C((v1 - 128), v0 + 80);
  v2 = *(v0 + 104);

  return sub_18E1E15F4((v0 + 80), v2);
}

void sub_18E1D491C()
{
  *(v0 + 56) = v1;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
}

__n128 *sub_18E1D4930(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  result[2].n128_u64[1] = 808335409;
  result[3].n128_u64[0] = 0xE400000000000000;
  return result;
}

void sub_18E1D4980()
{

  bzero((v0 + 112), 0xC8uLL);
}

uint64_t sub_18E1D49D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{

  return swift_initStackObject();
}

uint64_t sub_18E1D4A18()
{
  *v3 = v1;
  v3[1] = v2;
  result = sub_18E1C551C(v0 + 4, (v3 + 2));
  v5 = *v0;
  v3[7] = *(v0 + 1);
  v3[8] = 0;
  v3[9] = 0;
  v3[10] = v5;
  v3[11] = *(v0 + 2);
  return result;
}

__n128 *sub_18E1D4A58(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  return result;
}

uint64_t sub_18E1D4A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  *v13 = a13;
}

uint64_t sub_18E1D4AD0()
{
}

uint64_t sub_18E1D4B50(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 40) = 1590000;
  *(v1 + 48) = 0;
  *(v1 + 52) = 0;
  return result;
}

uint64_t sub_18E1D4B68(uint64_t result)
{
  *(result + 104) = 5;
  *(result + 112) = 3419698;
  *(result + 120) = 0xE300000000000000;
  return result;
}

void *sub_18E1D4B84(uint64_t a1, uint64_t a2, ...)
{

  return sub_18E44F48C();
}

unint64_t sub_18E1D4BA0()
{
  result = qword_1ED6A8108;
  if (!qword_1ED6A8108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8108);
  }

  return result;
}

uint64_t sub_18E1D4C00(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_18E1D4C20()
{

  return sub_18E44E6DC();
}

uint64_t sub_18E1D4C98(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_18E1D4D14()
{
}

uint64_t sub_18E1D4D90@<X0>(uint64_t result@<X0>, unsigned __int16 a2@<W8>)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 | 0x20000u;
  *(v2 + 48) = 0;
  *(v2 + 52) = 0;
  return result;
}

uint64_t sub_18E1D4DA4(uint64_t result)
{
  *(result + 104) = 5;
  *(result + 112) = 3419698;
  *(result + 120) = 0xE300000000000000;
  return result;
}

uint64_t sub_18E1D4E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_18E44E24C();
  swift_allocObject();
  sub_18E44E23C();
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v5 = *(a1 + OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleType);
  v6 = *(a1 + OBJC_IVAR____TtC12ModelCatalog23ResourceBundleContainer_resourceBundleType + 8);
  sub_18E1C77B0();
  v8 = v5 == 0xD000000000000018 && v7 == v6;
  if (v8 || (v9 = sub_18E22324C(), (sub_18E1E37B4(v9, v10) & 1) != 0))
  {
    sub_18E1E1A74();
    if (v8)
    {
      sub_18E1E269C();
      *(&v47 + 1) = &type metadata for AssetBackedImageSpatialPhotosReliveBundle;
      v48 = sub_18E23144C();
      sub_18E1E2C84();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F76A0();
    }

    else
    {
      sub_18E1E269C();
      *(&v47 + 1) = &type metadata for ImageSpatialPhotosReliveBundle;
      v48 = sub_18E231008();
      sub_18E1E2C84();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F764C();
    }

LABEL_9:
    sub_18E1E2088();
    sub_18E44E22C();
    sub_18E1E8F44(&v49, &qword_1EABE1010, &unk_18E4E24D0);

    if (v2)
    {
      return sub_18E287190(&v46);
    }

LABEL_30:
    v49 = v46;
    v50 = v47;
    v51 = v48;
    goto LABEL_31;
  }

  v12 = v5 == 0x6E6F69746F4DLL && v6 == 0xE600000000000000;
  if (v12 || (sub_18E1E37B4(0x6E6F69746F4DLL, 0xE600000000000000) & 1) != 0)
  {
    sub_18E1E1A74();
    if (v8)
    {
      sub_18E1E269C();
      *(&v47 + 1) = &type metadata for AssetBackedMotionBundle;
      v48 = sub_18E2AE070();
      sub_18E1E2C84();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F75F8();
      goto LABEL_9;
    }

    sub_18E1E269C();
    *(&v47 + 1) = &type metadata for MotionBundle;
    v48 = sub_18E205FC8();
    sub_18E1E2C84();
    swift_allocObject();
    sub_18E1E3C4C();
    sub_18E2F75A4();
LABEL_19:
    sub_18E1E2088();
    sub_18E44E22C();
    if (v2)
    {
      sub_18E1E8F44(&v49, &qword_1EABE1010, &unk_18E4E24D0);

      return sub_18E287190(&v46);
    }

    sub_18E1E8F44(&v49, &qword_1EABE1010, &unk_18E4E24D0);

    goto LABEL_30;
  }

  sub_18E1C77B0();
  v14 = v5 == 0xD00000000000001ALL && v13 == v6;
  if (v14 || (sub_18E1E37B4(0xD00000000000001ALL, v13) & 1) != 0)
  {
    sub_18E1E1A74();
    if (v8)
    {
      sub_18E1E269C();
      *(&v47 + 1) = &type metadata for AssetBackedDefaultOverridesBundle;
      v48 = sub_18E1D3DD8();
      sub_18E1E1950();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F7550();
    }

    else
    {
      sub_18E1E269C();
      *(&v47 + 1) = &type metadata for DefaultOverridesBundle;
      v48 = sub_18E2EE04C();
      sub_18E1E1950();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F74FC();
    }

    goto LABEL_19;
  }

  sub_18E1C77B0();
  v16 = v5 == 0xD00000000000001CLL && v15 == v6;
  if (v16 || (sub_18E1E37B4(0xD00000000000001CLL, v15) & 1) != 0)
  {
    sub_18E1E1A74();
    if (v8)
    {
      sub_18E1E269C();
      *(&v47 + 1) = &type metadata for AssetBackedTokenInputDenyListBundle;
      v48 = sub_18E207A4C();
      sub_18E1E2C84();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E224854();
    }

    else
    {
      sub_18E1E269C();
      *(&v47 + 1) = &type metadata for TokenInputDenyListBundle;
      v48 = sub_18E2EDFF8();
      sub_18E1E2C84();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F74A8();
    }

    goto LABEL_19;
  }

  sub_18E1C77B0();
  v18 = v5 == 0xD000000000000028 && v17 == v6;
  if (v18 || (sub_18E1E37B4(0xD000000000000028, v17) & 1) != 0)
  {
    sub_18E1E1A74();
    if (v8)
    {
      sub_18E1E269C();
      *(&v47 + 1) = &type metadata for AssetBackedTokenInputDenyListWithDefaultsBundle;
      v48 = sub_18E2316AC();
      sub_18E1E6400();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F7454();
    }

    else
    {
      sub_18E1E269C();
      *(&v47 + 1) = &type metadata for TokenInputDenyListWithDefaultsBundle;
      v48 = sub_18E2EDFA4();
      sub_18E1E6400();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F7400();
    }

    goto LABEL_19;
  }

  sub_18E1C77B0();
  v20 = v5 == 0xD00000000000001DLL && v19 == v6;
  if (v20 || (sub_18E1E37B4(0xD00000000000001DLL, v19) & 1) != 0)
  {
    sub_18E1E1A74();
    if (v8)
    {
      sub_18E1E269C();
      *(&v47 + 1) = &type metadata for AssetBackedTokenOutputDenyListBundle;
      v48 = sub_18E231D0C();
      sub_18E1E2C84();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F73AC();
    }

    else
    {
      sub_18E1E269C();
      *(&v47 + 1) = &type metadata for TokenOutputDenyListBundle;
      v48 = sub_18E2EDF50();
      sub_18E1E2C84();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F7358();
    }

    goto LABEL_19;
  }

  sub_18E1C77B0();
  v22 = v5 == 0xD000000000000029 && v21 == v6;
  if (v22 || (sub_18E1E37B4(0xD000000000000029, v21) & 1) != 0)
  {
    sub_18E1E1A74();
    if (v8)
    {
      sub_18E1E269C();
      *(&v47 + 1) = &type metadata for AssetBackedTokenOutputDenyListWithDefaultsBundle;
      v48 = sub_18E2319DC();
      sub_18E1E6400();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F7304();
    }

    else
    {
      sub_18E1E269C();
      *(&v47 + 1) = &type metadata for TokenOutputDenyListWithDefaultsBundle;
      v48 = sub_18E2EDEFC();
      sub_18E1E6400();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F72B0();
    }

    goto LABEL_19;
  }

  sub_18E1C77B0();
  sub_18E221BD4();
  v25 = v24 + 7;
  v26 = v5 == v24 + 7 && v23 == v6;
  if (v26 || (sub_18E1E37B4(v24 + 7, v23) & 1) != 0)
  {
    sub_18E1E1A74();
    if (v8)
    {
      sub_18E1E269C();
      *(&v47 + 1) = &type metadata for AssetBackedTokenOutputRetainListBundle;
      v48 = sub_18E2AE01C();
      sub_18E1E1950();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F725C();
    }

    else
    {
      sub_18E1E269C();
      *(&v47 + 1) = &type metadata for TokenOutputRetainListBundle;
      v48 = sub_18E2EDEA8();
      sub_18E1E1950();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F7208();
    }

    goto LABEL_19;
  }

  v27 = sub_18E220D9C();
  v29 = v5 == v27 && v6 == v28;
  if (v29 || (sub_18E1E37B4(v27, v28) & 1) != 0)
  {
    sub_18E1E1A74();
    if (v8)
    {
      sub_18E1E269C();
      *(&v47 + 1) = &type metadata for AssetBackedSecureAnalyticsBundle;
      v48 = sub_18E2062CC();
      sub_18E1E1950();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F71B4();
    }

    else
    {
      sub_18E1E269C();
      *(&v47 + 1) = &type metadata for SecureAnalyticsBundle;
      v48 = sub_18E2ADF28();
      sub_18E1E1950();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F7160();
    }

    goto LABEL_19;
  }

  sub_18E1C77B0();
  sub_18E221BD4();
  v32 = v5 == v31 - 5 && v30 == v6;
  if (v32 || (sub_18E1E37B4(v31 - 5, v30) & 1) != 0)
  {
    sub_18E1E1A74();
    if (v8)
    {
      sub_18E1E269C();
      *(&v47 + 1) = &type metadata for AssetBackedLLMBundle;
      v48 = sub_18E1D4BA0();
      sub_18E1D48C0();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E1E01EC();
    }

    else
    {
      sub_18E1E269C();
      *(&v47 + 1) = &type metadata for LLMBundle;
      v48 = sub_18E1D8410();
      sub_18E1D48C0();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F710C();
    }

    goto LABEL_19;
  }

  sub_18E1C77B0();
  v34 = v5 == v25 && v33 == v6;
  if (v34 || (sub_18E221BD4(), (sub_18E1E37B4(v35 + 7, v36) & 1) != 0))
  {
    sub_18E1E1A74();
    if (v8)
    {
      sub_18E1E269C();
      *(&v47 + 1) = &type metadata for AssetBackedLLMCompileDraftBundle;
      v48 = sub_18E2EE0A0();
      sub_18E1E1950();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F70B8();
    }

    else
    {
      sub_18E1E269C();
      *(&v47 + 1) = &type metadata for LLMCompileDraftBundle;
      v48 = sub_18E2ADF7C();
      sub_18E1E1950();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F7064();
    }

    goto LABEL_19;
  }

  sub_18E1C77B0();
  sub_18E221BD4();
  v39 = v5 == v38 && v37 == v6;
  if (v39 || (v40 = sub_18E22324C(), (sub_18E1E37B4(v40, v41) & 1) != 0))
  {
    sub_18E1E1A74();
    if (v8)
    {
      sub_18E1E269C();
      *(&v47 + 1) = &type metadata for AssetBackedLLMDraftBundle;
      v48 = sub_18E2083A8();
      sub_18E1E2C84();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F7010();
    }

    else
    {
      sub_18E1E269C();
      *(&v47 + 1) = &type metadata for LLMDraftBundle;
      v48 = sub_18E2EDE54();
      sub_18E1E2C84();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F6FBC();
    }

    goto LABEL_19;
  }

  sub_18E1C77B0();
  v43 = v5 == 0xD00000000000001ALL && v42 == v6;
  if (v43 || (sub_18E221BD4(), (sub_18E1E37B4(v44 + 2, v45) & 1) != 0))
  {
    sub_18E1E1A74();
    if (v8)
    {
      sub_18E1E269C();
      *(&v47 + 1) = &type metadata for AssetBackedDiffusionBundle;
      v48 = sub_18E22EAB0();
      sub_18E1E2C84();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F6F68();
    }

    else
    {
      sub_18E1E269C();
      *(&v47 + 1) = &type metadata for DiffusionBundle;
      v48 = sub_18E2EDE00();
      sub_18E1E2C84();
      swift_allocObject();
      sub_18E1E3C4C();
      sub_18E2F6F14();
    }

    goto LABEL_19;
  }

LABEL_31:
  v46 = v49;
  v47 = v50;
  v48 = v51;
  if (*(&v50 + 1))
  {
    return sub_18E1C551C(&v46, a2);
  }

  result = sub_18E1E8F44(&v46, &qword_1EABE1010, &unk_18E4E24D0);
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}