id sub_1CA601760()
{
  v224 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9D5040;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("Scheme|User|Password|Host|Port|Path|Query|Fragment", 50);
  v6 = v5;
  v7 = sub_1CA94C438("Scheme|User|Password|Host|Port|Path|Query|Fragment", 50);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v233 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v234 = v11;
  v12 = &v215 - v233;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v231 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v230 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v232 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v215 - v232;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v228 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  *&v227 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA97EDF0;
  *(v20 + 32) = @"DescriptionNote";
  v21 = @"Description";
  v22 = @"DescriptionNote";
  v225 = sub_1CA94C438("URLs are structured as follows: scheme://user:password@host:port/path?query#fragment", 84);
  v223 = v23;
  v24 = sub_1CA94C438("URLs are structured as follows: scheme://user:password@host:port/path?query#fragment", 84);
  v222 = v25;
  v226 = &v215;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v215 - v233;
  sub_1CA948D98();
  v27 = v231;
  v28 = [v231 bundleURL];
  v229 = inited;
  v29 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v232;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 40) = sub_1CA2F9F14(v225, v223, v24, v222, 0, 0, v26, &v215 - v30);
  v32 = v228;
  *(v20 + 64) = v228;
  *(v20 + 72) = @"DescriptionSummary";
  v33 = @"DescriptionSummary";
  v225 = sub_1CA94C438("Gets the specified part of the URL passed into the action.", 58);
  v223 = v34;
  v222 = sub_1CA94C438("Gets the specified part of the URL passed into the action.", 58);
  v36 = v35;
  v226 = &v215;
  MEMORY[0x1EEE9AC00](v222);
  v37 = &v215 - v233;
  sub_1CA948D98();
  v38 = [v27 bundleURL];
  MEMORY[0x1EEE9AC00](v38);
  sub_1CA948B68();

  v39 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v40 = sub_1CA2F9F14(v225, v223, v222, v36, 0, 0, v37, &v215 - v30);
  *(v20 + 104) = v32;
  *(v20 + 80) = v40;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v41 = sub_1CA94C1E8();
  v42 = v227;
  v43 = sub_1CA6B3784(v41);
  v44 = v229;
  v229[15] = v43;
  v44[18] = v42;
  v44[19] = @"IconColor";
  v44[20] = 1953392980;
  v44[21] = 0xE400000000000000;
  v45 = MEMORY[0x1E69E6158];
  v44[23] = MEMORY[0x1E69E6158];
  v44[24] = @"IconSymbol";
  v44[25] = 1802398060;
  v44[26] = 0xE400000000000000;
  v44[28] = v45;
  v44[29] = @"IconSymbolColor";
  v44[30] = 1702194242;
  v44[31] = 0xE400000000000000;
  v44[33] = v45;
  v44[34] = @"Input";
  v46 = v44;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v47 = swift_initStackObject();
  v227 = xmmword_1CA981350;
  *(v47 + 16) = xmmword_1CA981350;
  *(v47 + 32) = 0x656C7069746C754DLL;
  *(v47 + 40) = 0xE800000000000000;
  v48 = MEMORY[0x1E69E6370];
  *(v47 + 48) = 0;
  *(v47 + 72) = v48;
  strcpy((v47 + 80), "ParameterKey");
  *(v47 + 93) = 0;
  *(v47 + 94) = -5120;
  *(v47 + 96) = 0x4C52554657;
  *(v47 + 104) = 0xE500000000000000;
  *(v47 + 120) = v45;
  *(v47 + 128) = 0x6465726975716552;
  *(v47 + 136) = 0xE800000000000000;
  *(v47 + 144) = 1;
  *(v47 + 168) = v48;
  *(v47 + 176) = 0x7365707954;
  v49 = v48;
  *(v47 + 184) = 0xE500000000000000;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v47 + 216) = v226;
  *(v47 + 192) = &unk_1F4A093A8;
  v50 = @"IconColor";
  v51 = @"IconSymbol";
  v52 = @"IconSymbolColor";
  v53 = @"Input";
  v54 = sub_1CA94C1E8();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v225 = v55;
  v46[35] = v54;
  v46[38] = v55;
  v46[39] = @"InputPassthrough";
  *(v46 + 320) = 0;
  v46[43] = v49;
  v46[44] = @"Name";
  v56 = @"InputPassthrough";
  v57 = @"Name";
  v58 = sub_1CA94C438("Get Component of URL (Action Name)", 34);
  v60 = v59;
  v61 = sub_1CA94C438("Get Component of URL", 20);
  v63 = v62;
  v222 = &v215;
  MEMORY[0x1EEE9AC00](v61);
  v64 = v233;
  sub_1CA948D98();
  v65 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v215 - v232;
  sub_1CA948B68();

  v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v68 = sub_1CA2F9F14(v58, v60, v61, v63, 0, 0, &v215 - v64, v66);
  v70 = v228;
  v69 = v229;
  v229[45] = v68;
  v69[48] = v70;
  v69[49] = @"Output";
  v71 = swift_allocObject();
  *(v71 + 16) = v227;
  *(v71 + 32) = 0x75736F6C63736944;
  *(v71 + 40) = 0xEF6C6576654C6572;
  *(v71 + 48) = 0x63696C627550;
  *(v71 + 56) = 0xE600000000000000;
  *(v71 + 72) = MEMORY[0x1E69E6158];
  *(v71 + 80) = 0x656C7069746C754DLL;
  *(v71 + 88) = 0xE800000000000000;
  *(v71 + 96) = 0;
  *(v71 + 120) = MEMORY[0x1E69E6370];
  *(v71 + 128) = 0x614E74757074754FLL;
  *(v71 + 136) = 0xEA0000000000656DLL;
  v72 = @"Output";
  v73 = sub_1CA94C438("Component of URL (Default Output Name)", 38);
  v222 = v74;
  v75 = sub_1CA94C438("Component of URL", 16);
  v77 = v76;
  v223 = &v215;
  MEMORY[0x1EEE9AC00](v75);
  sub_1CA948D98();
  v78 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v215 - v232;
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v71 + 144) = sub_1CA2F9F14(v73, v222, v75, v77, 0, 0, &v215 - v64, v79);
  *(v71 + 168) = v70;
  *(v71 + 176) = 0x7365707954;
  *(v71 + 216) = v226;
  *(v71 + 184) = 0xE500000000000000;
  *(v71 + 192) = &unk_1F4A093D8;
  v81 = MEMORY[0x1E69E6158];
  v82 = sub_1CA94C1E8();
  v83 = v229;
  v229[50] = v82;
  v83[53] = v225;
  v83[54] = @"Parameters";
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v226 = swift_allocObject();
  *(v226 + 1) = xmmword_1CA981360;
  v225 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v84 = swift_allocObject();
  *(v84 + 16) = v227;
  *(v84 + 32) = @"Class";
  *(v84 + 40) = 0xD000000000000014;
  *(v84 + 48) = 0x80000001CA99B500;
  *(v84 + 64) = v81;
  *(v84 + 72) = @"Key";
  *(v84 + 80) = 0x4C52554657;
  *(v84 + 88) = 0xE500000000000000;
  *(v84 + 104) = v81;
  *(v84 + 112) = @"KeyboardType";
  *(v84 + 120) = 5001813;
  *(v84 + 128) = 0xE300000000000000;
  *(v84 + 144) = v81;
  *(v84 + 152) = @"Label";
  v85 = @"Class";
  v86 = @"Key";
  v87 = @"Label";
  *&v227 = v85;
  v222 = v86;
  v223 = v87;
  v88 = @"Parameters";
  v89 = @"KeyboardType";
  v90 = sub_1CA94C438("URL (WFURL)", 11);
  v92 = v91;
  v93 = sub_1CA94C438("URL", 3);
  v95 = v94;
  v221 = &v215;
  MEMORY[0x1EEE9AC00](v93);
  v96 = &v215 - v233;
  sub_1CA948D98();
  v97 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v215 - v232;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v100 = sub_1CA2F9F14(v90, v92, v93, v95, 0, 0, v96, v98);
  *(v84 + 184) = v228;
  *(v84 + 160) = v100;
  _s3__C3KeyVMa_0(0);
  v221 = v101;
  v220 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v102 = sub_1CA94C1E8();
  v103 = sub_1CA2F864C(v102);
  v226[4] = v103;
  v104 = swift_allocObject();
  v219 = v104;
  *(v104 + 16) = xmmword_1CA981370;
  *(v104 + 32) = v227;
  *(v104 + 40) = 0xD000000000000016;
  *(v104 + 48) = 0x80000001CA99C4A0;
  v105 = MEMORY[0x1E69E6158];
  *(v104 + 64) = MEMORY[0x1E69E6158];
  *(v104 + 72) = @"DefaultValue";
  *(v104 + 80) = 0x656D65686353;
  *(v104 + 88) = 0xE600000000000000;
  *(v104 + 104) = v105;
  *(v104 + 112) = @"Items";
  *&v227 = swift_allocObject();
  *(v227 + 16) = xmmword_1CA985370;
  v106 = @"DefaultValue";
  v107 = @"Items";
  v108 = sub_1CA94C438("Scheme (WFURLComponent)", 23);
  v216 = v109;
  v217 = v108;
  v110 = sub_1CA94C438("Scheme", 6);
  v215 = v111;
  v218 = &v215;
  MEMORY[0x1EEE9AC00](v110);
  v112 = v233;
  sub_1CA948D98();
  v113 = v231;
  v114 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v114);
  v115 = &v215 - v232;
  sub_1CA948B68();

  v116 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v117 = sub_1CA2F9F14(v217, v216, v110, v215, 0, 0, &v215 - v112, v115);
  v118 = v227;
  *(v227 + 32) = v117;
  v119 = sub_1CA94C438("User (WFURLComponent)", 21);
  v216 = v120;
  v217 = v119;
  v215 = sub_1CA94C438("User", 4);
  v122 = v121;
  v218 = &v215;
  MEMORY[0x1EEE9AC00](v215);
  sub_1CA948D98();
  v123 = [v113 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  v124 = v232;
  sub_1CA948B68();

  v125 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v118 + 40) = sub_1CA2F9F14(v217, v216, v215, v122, 0, 0, &v215 - v112, &v215 - v124);
  v126 = sub_1CA94C438("Password (WFURLComponent)", 25);
  v216 = v127;
  v217 = v126;
  v128 = sub_1CA94C438("Password", 8);
  v215 = v129;
  v218 = &v215;
  MEMORY[0x1EEE9AC00](v128);
  v130 = v233;
  sub_1CA948D98();
  v131 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v131);
  sub_1CA948B68();

  v132 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v133 = sub_1CA2F9F14(v217, v216, v128, v215, 0, 0, &v215 - v130, &v215 - v124);
  v134 = v227;
  *(v227 + 48) = v133;
  v135 = sub_1CA94C438("Host (WFURLComponent)", 21);
  v216 = v136;
  v217 = v135;
  v137 = sub_1CA94C438("Host", 4);
  v215 = v138;
  v218 = &v215;
  MEMORY[0x1EEE9AC00](v137);
  sub_1CA948D98();
  v139 = v231;
  v140 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v140);
  v141 = &v215 - v232;
  sub_1CA948B68();

  v142 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v134 + 56) = sub_1CA2F9F14(v217, v216, v137, v215, 0, 0, &v215 - v130, v141);
  v143 = sub_1CA94C438("Port (WFURLComponent)", 21);
  v216 = v144;
  v217 = v143;
  v145 = sub_1CA94C438("Port", 4);
  v215 = v146;
  v218 = &v215;
  MEMORY[0x1EEE9AC00](v145);
  v147 = v233;
  sub_1CA948D98();
  v148 = [v139 bundleURL];
  MEMORY[0x1EEE9AC00](v148);
  v149 = v232;
  sub_1CA948B68();

  v150 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v151 = sub_1CA2F9F14(v217, v216, v145, v215, 0, 0, &v215 - v147, &v215 - v149);
  v152 = v227;
  *(v227 + 64) = v151;
  v153 = sub_1CA94C438("Path (WFURLComponent)", 21);
  v216 = v154;
  v217 = v153;
  v155 = sub_1CA94C438("Path", 4);
  v215 = v156;
  v218 = &v215;
  MEMORY[0x1EEE9AC00](v155);
  sub_1CA948D98();
  v157 = v231;
  v158 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v158);
  sub_1CA948B68();

  v159 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v152 + 72) = sub_1CA2F9F14(v217, v216, v155, v215, 0, 0, &v215 - v147, &v215 - v149);
  v160 = sub_1CA94C438("Query (WFURLComponent)", 22);
  v216 = v161;
  v217 = v160;
  v162 = sub_1CA94C438("Query", 5);
  v215 = v163;
  v218 = &v215;
  MEMORY[0x1EEE9AC00](v162);
  v164 = v233;
  sub_1CA948D98();
  v165 = [v157 bundleURL];
  MEMORY[0x1EEE9AC00](v165);
  sub_1CA948B68();

  v166 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v167 = sub_1CA2F9F14(v217, v216, v162, v215, 0, 0, &v215 - v164, &v215 - v149);
  v168 = v227;
  *(v227 + 80) = v167;
  v169 = sub_1CA94C438("Fragment (WFURLComponent)", 25);
  v216 = v170;
  v217 = v169;
  v171 = sub_1CA94C438("Fragment", 8);
  v215 = v172;
  v218 = &v215;
  MEMORY[0x1EEE9AC00](v171);
  v173 = &v215 - v164;
  sub_1CA948D98();
  v174 = v231;
  v175 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v175);
  sub_1CA948B68();

  v176 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v177 = sub_1CA2F9F14(v217, v216, v171, v215, 0, 0, v173, &v215 - v149);
  v178 = v168;
  *(v168 + 88) = v177;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v180 = v219;
  *(v219 + 120) = v178;
  v181 = v222;
  *(v180 + 144) = v179;
  *(v180 + 152) = v181;
  strcpy((v180 + 160), "WFURLComponent");
  *(v180 + 175) = -18;
  v182 = v223;
  *(v180 + 184) = MEMORY[0x1E69E6158];
  *(v180 + 192) = v182;
  v223 = sub_1CA94C438("Component (WFURLComponent)", 26);
  v184 = v183;
  v185 = sub_1CA94C438("Component", 9);
  v187 = v186;
  *&v227 = &v215;
  MEMORY[0x1EEE9AC00](v185);
  v188 = &v215 - v233;
  sub_1CA948D98();
  v189 = [v174 bundleURL];
  MEMORY[0x1EEE9AC00](v189);
  v190 = &v215 - v232;
  sub_1CA948B68();

  v191 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v192 = sub_1CA2F9F14(v223, v184, v185, v187, 0, 0, v188, v190);
  *(v180 + 224) = v228;
  *(v180 + 200) = v192;
  v193 = sub_1CA94C1E8();
  v194 = sub_1CA2F864C(v193);
  v195 = v226;
  v226[5] = v194;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v197 = v229;
  v229[55] = v195;
  v197[58] = v196;
  v197[59] = @"ParameterSummary";
  v198 = @"ParameterSummary";
  v199 = sub_1CA94C438("Get ${WFURLComponent} from ${WFURL} (Parameter Summary)", 55);
  v201 = v200;
  v202 = sub_1CA94C438("Get ${WFURLComponent} from ${WFURL}", 35);
  v204 = v203;
  MEMORY[0x1EEE9AC00](v202);
  v205 = &v215 - v233;
  sub_1CA948D98();
  v206 = [v231 bundleURL];
  MEMORY[0x1EEE9AC00](v206);
  v207 = &v215 - v232;
  sub_1CA948B68();

  v208 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v209 = sub_1CA2F9F14(v199, v201, v202, v204, 0, 0, v205, v207);
  v210 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v211 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v212 = v229;
  v229[60] = v210;
  v212[63] = v211;
  v212[64] = @"ResidentCompatible";
  v212[68] = MEMORY[0x1E69E6370];
  *(v212 + 520) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v213 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

BOOL sub_1CA6030C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_1CA6030F4(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

void *RowTemplateConditionalParameterState.subject.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t sub_1CA60317C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA6277BC();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1CA60C8D8(v6);
  *a1 = v2;
  return result;
}

void RowTemplateConditionalParameterState.init(serializedRepresentation:variableProvider:parameter:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444490, &qword_1CA983530);
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_10:

    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v6 = v49;
  v7 = sub_1CA323E28();
  if (!v7)
  {
    swift_unknownObjectRelease();

    goto LABEL_10;
  }

  v8 = v7;
  sub_1CA25B3D0(0, &qword_1EC446B00, off_1E836EC20);
  v9 = v1;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = sub_1CA399E74(v8, v3, v1);
  if (!v10 || (v11 = v10, v12 = [v10 number], v11, !v12))
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

LABEL_11:
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *v5 = 0u;
    goto LABEL_12;
  }

  v45 = v12;
  v46 = sub_1CA94C978();
  v13 = sub_1CA323E28();
  if (v13)
  {
    v14 = v13;
    v15 = sub_1CA25B3D0(0, &qword_1EC447190, off_1E836E020);
    swift_unknownObjectRetain();
    v16 = v9;
    v17 = v14;
    v11 = v15;
    v18 = sub_1CA399E74(v17, v3, v1);
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_1CA948D28();
  OUTLINED_FUNCTION_1_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1_37();
  v23 = sub_1CA948CC8();
  v43 = v24;
  v44 = v23;
  (*(v21 + 8))(v11, v19);
  if (!sub_1CA323E28())
  {
    goto LABEL_18;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_186_0();
  v25 = swift_dynamicCastObjCClass();
  if (!v25)
  {
    swift_unknownObjectRelease();
LABEL_18:
    v26 = 0;
    goto LABEL_19;
  }

  v26 = [v25 BOOLValue];
  swift_unknownObjectRelease();
LABEL_19:
  v50 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  v48 = sub_1CA94C1E8();
  v27 = sub_1CA604DA4();
  v28 = *(v27 + 16);
  if (v28)
  {
    v41 = v18;
    v47 = v9;
    v42 = v5;
    v40 = v27;
    v29 = v27 + 40;
    do
    {
      v30 = *(v29 - 8);
      v31 = *(*v29 + 8);
      v32 = *(v31 + 24);
      v33 = v32(v30, v31);
      if (*(v6 + 16))
      {
        v35 = sub_1CA271BF8(v33, v34);
        v37 = v36;

        if (v37)
        {
          v38 = *(*(v6 + 56) + 8 * v35);
          sub_1CA444B1C(v30, v31);
          v39 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          swift_unknownObjectRetain();
          if ([v39 initWithSerializedRepresentation:v38 variableProvider:v3 parameter:{v47, v40}])
          {
            v32(v30, v31);
            swift_unknownObjectRetain();
            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_134();
            sub_1CA60D430();
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
          v6 = v49;
        }
      }

      else
      {
      }

      v29 += 16;
      --v28;
    }

    while (v28);

    v26 = v50;
    v5 = v42;
    v9 = v47;
    v18 = v41;
  }

  else
  {
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  *v5 = v46;
  *(v5 + 8) = v48;
  *(v5 + 16) = v26;
  *(v5 + 24) = v44;
  *(v5 + 32) = v43;
  *(v5 + 40) = v18;
LABEL_12:
  OUTLINED_FUNCTION_36();
}

uint64_t RowTemplateConditionalParameterState.serializedRepresentation.getter()
{
  v72 = *(v0 + 8);
  HIDWORD(v68) = *(v0 + 16);
  v1 = *(v0 + 40);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v3 = sub_1CA94C1E8();
  if ([v1 serializedRepresentation])
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = v3;
    swift_getObjectType();
    v5 = OUTLINED_FUNCTION_71_6();
    sub_1CA32EB34(v5, v6, 0xE700000000000000, isUniquelyReferenced_nonNull_native, v7, v8);
  }

  else
  {
    sub_1CA271BF8(0x7475706E494657, 0xE700000000000000);
    if (v9)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v73 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
      OUTLINED_FUNCTION_47_14();
      sub_1CA94D588();

      sub_1CA94D5A8();
      swift_unknownObjectRelease();
    }
  }

  v10 = sub_1CA94C988();
  v11 = [objc_allocWithZone(WFNumberSubstitutableState) initWithNumber_];

  v12 = [v11 serializedRepresentation];
  v69 = v2;
  if (v12)
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v73 = v3;
    swift_getObjectType();
    v14 = OUTLINED_FUNCTION_71_6();
    sub_1CA32EB34(v14, v15, 0xEB000000006E6F69, v13, v16, v17);
  }

  else
  {
    sub_1CA271BF8(0x7469646E6F434657, 0xEB000000006E6F69);
    if (v18)
    {
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
      OUTLINED_FUNCTION_47_14();
      v19 = sub_1CA94D588();
      OUTLINED_FUNCTION_77_9(v19, v20, v21, v22, v23, v24, v25, v26, v67, v68, v2, v70, v72, v3);
      sub_1CA94D5A8();
      swift_unknownObjectRelease();
    }
  }

  v27 = v72 + 64;
  OUTLINED_FUNCTION_5_5();
  v30 = v29 & v28;
  v32 = (v31 + 63) >> 6;
  sub_1CA94C218();
  v33 = 0;
  v71 = v72 + 64;
LABEL_10:
  v34 = v33;
  if (!v30)
  {
    goto LABEL_12;
  }

  do
  {
    v35 = v3;
    v33 = v34;
LABEL_16:
    v36 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v37 = (*(v72 + 48) + 16 * (v36 | (v33 << 6)));
    v38 = *v37;
    v39 = v37[1];
    sub_1CA94C218();
    v40 = [swift_unknownObjectRetain() serializedRepresentation];
    if (v40)
    {
      v43 = v40;
      HIDWORD(v67) = swift_isUniquelyReferenced_nonNull_native();
      v73 = v35;
      v44 = sub_1CA271BF8(v38, v39);
      LODWORD(v68) = v45;
      if (__OFADD__(*(v35 + 16), (v45 & 1) == 0))
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v46 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
      if (sub_1CA94D588())
      {
        v47 = sub_1CA271BF8(v38, v39);
        if ((v68 & 1) != (v48 & 1))
        {
LABEL_36:
          result = sub_1CA94D878();
          __break(1u);
          return result;
        }

        v46 = v47;
        if ((v68 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else if ((v68 & 1) == 0)
      {
LABEL_24:
        v49 = v73;
        *(v73 + 8 * (v46 >> 6) + 64) |= 1 << v46;
        v50 = (*(v49 + 48) + 16 * v46);
        *v50 = v38;
        v50[1] = v39;
        *(*(v49 + 56) + 8 * v46) = v43;
        v3 = v49;
        swift_unknownObjectRelease();
        v51 = *(v3 + 16);
        v52 = __OFADD__(v51, 1);
        v53 = v51 + 1;
        if (!v52)
        {
          *(v3 + 16) = v53;
          v27 = v71;
          goto LABEL_10;
        }

        goto LABEL_35;
      }

      v62 = v73;
      *(*(v73 + 56) + 8 * v46) = v43;
      v3 = v62;
      swift_unknownObjectRelease();
      goto LABEL_29;
    }

    v3 = v35;
    sub_1CA271BF8(v38, v39);
    v42 = v41;

    if (v42)
    {
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
      OUTLINED_FUNCTION_47_14();
      v54 = sub_1CA94D588();
      OUTLINED_FUNCTION_77_9(v54, v55, v56, v57, v58, v59, v60, v61, v67, v68, v69, v71, v72, v35);
      swift_unknownObjectRelease();
      sub_1CA94D5A8();
LABEL_29:
      swift_unknownObjectRelease();
      v27 = v71;
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
    v34 = v33;
    v27 = v71;
  }

  while (v30);
  while (1)
  {
LABEL_12:
    v33 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v33 >= v32)
    {
      break;
    }

    v30 = *(v27 + 8 * v33);
    ++v34;
    if (v30)
    {
      v35 = v3;
      goto LABEL_16;
    }
  }

  if ((v68 & 0x100000000) != 0)
  {
    sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
    v63 = sub_1CA94CFA8();
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v73 = v3;
    sub_1CA32EA0C(v63, 0xD000000000000025, 0x80000001CA9D53A0, v64, &v73);
  }

  v65 = sub_1CA94C1A8();

  return v65;
}

uint64_t RowTemplateConditionalParameterState.parameterState(key:)(uint64_t a1, uint64_t a2)
{
  if (*(*(v2 + 8) + 16) && (sub_1CA271BF8(a1, a2), (v3 & 1) != 0))
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

uint64_t RowTemplateConditionalParameterState.init(subject:selectedOperator:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 40) = a1;
  *a3 = a2;
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  *(a3 + 8) = sub_1CA94C1E8();
  v6 = sub_1CA948D28();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_37();
  v10 = sub_1CA948CC8();
  v12 = v11;

  result = (*(v8 + 8))(v3, v6);
  *(a3 + 24) = v10;
  *(a3 + 32) = v12;
  *(a3 + 16) = 0;
  return result;
}

void __swiftcall RowTemplateConditionalParameterState.makeSubjectParameter(key:)(WFParameter *__return_ptr retstr, Swift::String key)
{
  object = key._object;
  countAndFlagsBits = key._countAndFlagsBits;
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA97EDF0;
  v5 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = countAndFlagsBits;
  *(inited + 48) = object;
  *(inited + 64) = v5;
  *(inited + 72) = @"Label";
  v6 = @"Key";
  sub_1CA94C218();
  v7 = @"Label";
  sub_1CA94C438("Condition", 9);
  OUTLINED_FUNCTION_70_0();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
  }

  v8 = qword_1EDB9F690;
  OUTLINED_FUNCTION_69();
  v9 = sub_1CA94C368();
  OUTLINED_FUNCTION_69();
  v10 = sub_1CA94C368();

  v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

  v12 = sub_1CA94C3A8();
  v14 = v13;

  *(inited + 104) = v5;
  *(inited + 80) = v12;
  *(inited + 88) = v14;
  _s3__C3KeyVMa_0(0);
  sub_1CA60EA2C(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v15 = sub_1CA94C1E8();
  v16 = sub_1CA2F864C(v15);
  [objc_allocWithZone(WFConditionalSubjectParameter) initWithDefinition_];
}

uint64_t RowTemplateConditionalParameterState.setParameterState(_:key:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_getObjectType();
    v6 = swift_unknownObjectRetain();

    return sub_1CA43FF40(v6, a2, a3, (v3 + 8));
  }

  else
  {
    result = sub_1CA271BF8(a2, a3);
    if (v8)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v9 = *(v3 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4457E0, &qword_1CA990910);
      sub_1CA94D588();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
      OUTLINED_FUNCTION_134();
      sub_1CA94D5A8();
      result = swift_unknownObjectRelease();
      *(v3 + 8) = v9;
    }
  }

  return result;
}

void RowTemplateConditionalParameterState.subject.setter(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 variable];
    if (v6)
    {
      v7 = v6;
      objc_opt_self();
      OUTLINED_FUNCTION_5_3();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = [v8 outputUUID];

        v10 = sub_1CA94C3A8();
        v12 = v11;

        *(v2 + 40) = a1;
        v13 = a1;

        if (!a1)
        {

          goto LABEL_39;
        }

        goto LABEL_9;
      }
    }
  }

  *(v2 + 40) = a1;
  v13 = a1;

  if (!a1)
  {
    goto LABEL_38;
  }

  v10 = 0;
  v12 = 0;
LABEL_9:
  v14 = [v13 variable];
  if (!v14)
  {
LABEL_26:

    goto LABEL_27;
  }

  v15 = v14;
  v16 = [v13 variable];
  if (!v16)
  {
LABEL_25:

    goto LABEL_26;
  }

  v17 = v16;
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {

    goto LABEL_26;
  }

  v19 = [v18 outputUUID];

  v20 = sub_1CA94C3A8();
  v22 = v21;

  if (!v12)
  {

    goto LABEL_21;
  }

  if (v20 == v10 && v12 == v22)
  {

    goto LABEL_26;
  }

  v24 = sub_1CA94D7F8();

  if (v24)
  {
    goto LABEL_22;
  }

LABEL_21:
  if (!sub_1CA6048D4(v13))
  {
    sub_1CA3F132C(v15, &selRef_propertyName);
    if (!v25)
    {
      v34 = [v15 possibleContentClasses];
      v13 = 0;
      v35 = sub_1CA60C498(v34);

      if (*(v35 + 16))
      {

        v13 = [swift_getObjCClassFromMetadata() allProperties];
        sub_1CA25B3D0(0, &unk_1EC4419D0, 0x1E6996D88);
        OUTLINED_FUNCTION_186_0();
        v36 = sub_1CA94C658();

        if (sub_1CA25B410(v36))
        {
          OUTLINED_FUNCTION_39_11();
          if (v13)
          {
            MEMORY[0x1CCAA22D0](0, v36);
          }

          else
          {
            v37 = *(v36 + 32);
          }

          OUTLINED_FUNCTION_11();

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
          v38 = swift_allocObject();
          *(v38 + 16) = xmmword_1CA9813B0;
          v39 = [v13 name];
          sub_1CA94C3A8();

          v40 = objc_allocWithZone(WFPropertyVariableAggrandizement);
          v41 = OUTLINED_FUNCTION_162();
          *(v38 + 32) = sub_1CA60C764(v41, v42, 0);
          sub_1CA25B3D0(0, &unk_1EC444CA0, off_1E836F4B8);
          v43 = sub_1CA94C648();

          v44 = [v15 variableBySettingAggrandizements_];

          v26 = [objc_allocWithZone(WFConditionalSubjectParameterState) initWithVariable_];
          *(v2 + 40) = v26;
          if (v26)
          {
            goto LABEL_28;
          }

LABEL_38:
          goto LABEL_39;
        }
      }
    }

    goto LABEL_25;
  }

LABEL_22:

LABEL_27:
  v26 = a1;
LABEL_28:
  v27 = v26;
  v28 = OUTLINED_FUNCTION_11();
  v29 = sub_1CA6048D4(v28);
  sub_1CA607C68(v29, v13);
  sub_1CA2F154C(v30, v47);

  sub_1CA6102B4(v47, v45, &qword_1EC447198, &qword_1CA98EB10);
  v31 = v46;
  if (v46)
  {
    __swift_project_boxed_opaque_existential_1(v45, v46);
    OUTLINED_FUNCTION_4_50();
    v33 = v32(v31);

    sub_1CA30F7DC(v47, &qword_1EC447198, &qword_1CA98EB10);
    __swift_destroy_boxed_opaque_existential_0(v45);
  }

  else
  {
    sub_1CA30F7DC(v47, &qword_1EC447198, &qword_1CA98EB10);

    sub_1CA30F7DC(v45, &qword_1EC447198, &qword_1CA98EB10);
    v33 = 4;
  }

  *v2 = v33;
LABEL_39:
  *(v2 + 16) = 0;
}

void sub_1CA60465C()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = *v0;
    v3 = v1;
    if (sub_1CA6048D4(v1) == 1)
    {
    }

    else
    {
      v4 = sub_1CA6048D4(v1);
      sub_1CA607C68(v4, v3);
      v6 = v5;
      v7 = 0;
      v8 = *(v5 + 16);
      for (i = v5 + 32; ; i += 40)
      {
        if (v8 == v7)
        {

          return;
        }

        if (v7 >= *(v6 + 16))
        {
          break;
        }

        sub_1CA2C9578(i, &v14);
        v10 = v15;
        __swift_project_boxed_opaque_existential_1(&v14, v15);
        OUTLINED_FUNCTION_4_50();
        if (v11(v10) == v2)
        {

          sub_1CA27F268(&v14, v16);
          sub_1CA27F268(v16, v17);
          v12 = v18;
          __swift_project_boxed_opaque_existential_1(v17, v18);
          OUTLINED_FUNCTION_4_50();
          v13(v12);

          __swift_destroy_boxed_opaque_existential_0(v17);
          return;
        }

        ++v7;
        __swift_destroy_boxed_opaque_existential_0(&v14);
      }

      __break(1u);
    }
  }
}

void *sub_1CA604850@<X0>(void *a1@<X8>)
{
  result = RowTemplateConditionalParameterState.subject.getter();
  *a1 = result;
  return result;
}

void sub_1CA6048A4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  RowTemplateConditionalParameterState.subject.setter(v1);
}

id sub_1CA6048D4(id result)
{
  if (result)
  {
    result = [result contentType];
    if (result >= 0xA)
    {
      result = sub_1CA94D5F8();
      __break(1u);
    }
  }

  return result;
}

void static RowTemplateConditionalParameterState.possibleOperators(subject:)(void *a1)
{
  v2 = sub_1CA6048D4(a1);

  sub_1CA607C68(v2, a1);
}

void (*RowTemplateConditionalParameterState.subject.modify(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_1CA6049D8;
}

void sub_1CA6049D8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    RowTemplateConditionalParameterState.subject.setter(v2);
  }

  else
  {
    RowTemplateConditionalParameterState.subject.setter(*a1);
  }
}

uint64_t sub_1CA604DA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447620, &qword_1CA98F9D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CA981340;
  v1 = sub_1CA610508();
  *(v0 + 32) = &type metadata for RowTemplateConditionalParameterState.LinkEnumerationKey;
  *(v0 + 40) = v1;
  v2 = sub_1CA61055C();
  *(v0 + 48) = &type metadata for RowTemplateConditionalParameterState.NumericEnumerationKey;
  *(v0 + 56) = v2;
  v3 = sub_1CA6105B0();
  *(v0 + 64) = &type metadata for RowTemplateConditionalParameterState.EnumerationKey;
  *(v0 + 72) = v3;
  v4 = sub_1CA610604();
  *(v0 + 80) = &type metadata for RowTemplateConditionalParameterState.StringKey;
  *(v0 + 88) = v4;
  v5 = sub_1CA610658();
  *(v0 + 96) = &type metadata for RowTemplateConditionalParameterState.BoundedNumberKey;
  *(v0 + 104) = v5;
  v6 = sub_1CA6106AC();
  *(v0 + 112) = &type metadata for RowTemplateConditionalParameterState.AnotherBoundedNumberKey;
  *(v0 + 120) = v6;
  v7 = sub_1CA610700();
  *(v0 + 128) = &type metadata for RowTemplateConditionalParameterState.NumberKey;
  *(v0 + 136) = v7;
  v8 = sub_1CA610754();
  *(v0 + 144) = &type metadata for RowTemplateConditionalParameterState.AnotherNumberKey;
  *(v0 + 152) = v8;
  v9 = sub_1CA6107A8();
  *(v0 + 160) = &type metadata for RowTemplateConditionalParameterState.DateKey;
  *(v0 + 168) = v9;
  v10 = sub_1CA6107FC();
  *(v0 + 176) = &type metadata for RowTemplateConditionalParameterState.AnotherDateKey;
  *(v0 + 184) = v10;
  v11 = sub_1CA610850();
  *(v0 + 192) = &type metadata for RowTemplateConditionalParameterState.DurationKey;
  *(v0 + 200) = v11;
  v12 = sub_1CA6108A4();
  *(v0 + 208) = &type metadata for RowTemplateConditionalParameterState.AnotherDurationKey;
  *(v0 + 216) = v12;
  v13 = sub_1CA6108F8();
  *(v0 + 224) = &type metadata for RowTemplateConditionalParameterState.MeasurementKey;
  *(v0 + 232) = v13;
  v14 = sub_1CA61094C();
  *(v0 + 240) = &type metadata for RowTemplateConditionalParameterState.AnotherMeasurementKey;
  *(v0 + 248) = v14;
  v15 = sub_1CA6109A0();
  *(v0 + 256) = &type metadata for RowTemplateConditionalParameterState.AppKey;
  *(v0 + 264) = v15;
  return v0;
}

void RowTemplateConditionalParameterState.init(variable:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v35 = v2;
  v3 = [objc_allocWithZone(WFConditionalSubjectParameterState) initWithVariable_];
  v4 = v3;
  v5 = sub_1CA6048D4(v3);

  if (!v5)
  {
    sub_1CA3F132C(v1, &selRef_propertyName);
    if (!v6 && (v7 = [v1 possibleContentClasses], v8 = sub_1CA60C498(v7), v7, *(v8 + 16)) && (, v9 = objc_msgSend(swift_getObjCClassFromMetadata(), sel_allProperties), sub_1CA25B3D0(0, &unk_1EC4419D0, 0x1E6996D88), OUTLINED_FUNCTION_186_0(), v10 = sub_1CA94C658(), v9, sub_1CA25B410(v10)))
    {
      OUTLINED_FUNCTION_39_11();
      if (v9)
      {
        MEMORY[0x1CCAA22D0](0, v10);
      }

      else
      {
        v11 = *(v10 + 32);
      }

      OUTLINED_FUNCTION_11();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1CA9813B0;
      v13 = [v9 name];
      sub_1CA94C3A8();

      v14 = objc_allocWithZone(WFPropertyVariableAggrandizement);
      v15 = OUTLINED_FUNCTION_162();
      *(v12 + 32) = sub_1CA60C764(v15, v16, 0);
      sub_1CA25B3D0(0, &unk_1EC444CA0, off_1E836F4B8);
      sub_1CA94C648();
      OUTLINED_FUNCTION_139();

      v17 = [v1 variableBySettingAggrandizements_];

      v3 = [objc_allocWithZone(WFConditionalSubjectParameterState) initWithVariable_];
      v4 = v3;
    }

    else
    {
    }
  }

  v18 = v4;
  v19 = sub_1CA6048D4(v3);
  sub_1CA607C68(v19, v18);
  v21 = v20;
  sub_1CA2F154C(v20, v39);

  sub_1CA6102B4(v39, v36, &qword_1EC447198, &qword_1CA98EB10);
  v22 = v37;
  v23 = v1;
  if (v37)
  {
    v21 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    OUTLINED_FUNCTION_4_50();
    v25 = v24(v22);
    __swift_destroy_boxed_opaque_existential_0(v36);
  }

  else
  {
    sub_1CA30F7DC(v36, &qword_1EC447198, &qword_1CA98EB10);
    v25 = 4;
  }

  v26 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  v27 = sub_1CA94C1E8();
  v28 = sub_1CA948D28();
  OUTLINED_FUNCTION_1_0();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_1_37();
  v32 = sub_1CA948CC8();
  v34 = v33;

  (*(v30 + 8))(v21, v28);
  sub_1CA30F7DC(v39, &qword_1EC447198, &qword_1CA98EB10);
  *v35 = v25;
  *(v35 + 8) = v27;
  *(v35 + 16) = 0;
  *(v35 + 24) = v32;
  *(v35 + 32) = v34;
  *(v35 + 40) = v3;
  OUTLINED_FUNCTION_36();
}

Swift::Void __swiftcall RowTemplateConditionalParameterState.replace(variable:with:)(WFVariable_optional *variable, WFVariable_optional *with)
{
  v3 = v2;
  if (variable)
  {
    v6 = *(v2 + 40);
    if (v6)
    {
      v7 = v6;
      if ([v7 respondsToSelector_] && (v8 = objc_msgSend(v7, sel_variable)) != 0)
      {
        v9 = v8;
        sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
        v10 = variable;
        v11 = sub_1CA94CFD8();

        if (v11)
        {
          goto LABEL_6;
        }
      }

      else
      {
      }

      v17 = v7;
      v18 = [v17 variable];
      v19 = v17;
      if (v18)
      {
        v20 = v18;
        objc_opt_self();
        OUTLINED_FUNCTION_186_0();
        v21 = swift_dynamicCastObjCClass();
        if (v21)
        {
          v22 = [v21 outputUUID];

          goto LABEL_21;
        }

        v19 = v20;
      }
    }

LABEL_21:
    *(v3 + 40) = 0;
    *(v3 + 16) = 0;
    return;
  }

LABEL_6:
  if (!with)
  {
    return;
  }

  v12 = objc_allocWithZone(WFConditionalSubjectParameterState);
  v40 = with;
  RowTemplateConditionalParameterState.subject.setter([v12 initWithVariable_]);
  if (!variable)
  {
    goto LABEL_25;
  }

  v39 = variable;
  sub_1CA3F132C(v40, &selRef_UUID);
  OUTLINED_FUNCTION_70_0();
  v13 = sub_1CA3F132C(v39, &selRef_UUID);
  if (v14)
  {
    if (with == v13 && variable == v14)
    {

      v23 = v39;
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_69();
    v16 = sub_1CA94D7F8();

    if (v16)
    {
LABEL_25:
      v23 = v40;
LABEL_26:

      return;
    }
  }

  else
  {
  }

  if (sub_1CA6048D4(*(v3 + 40)))
  {
    goto LABEL_25;
  }

  sub_1CA3F132C(v40, &selRef_propertyName);
  if (!v24)
  {
    v25 = [(WFVariable_optional *)v40 possibleContentClasses];
    v26 = sub_1CA60C498(v25);

    if (*(v26 + 16))
    {

      v27 = [swift_getObjCClassFromMetadata() allProperties];
      sub_1CA25B3D0(0, &unk_1EC4419D0, 0x1E6996D88);
      OUTLINED_FUNCTION_186_0();
      v28 = sub_1CA94C658();

      if (sub_1CA25B410(v28))
      {
        OUTLINED_FUNCTION_39_11();
        if (v27)
        {
          MEMORY[0x1CCAA22D0](0, v28);
        }

        else
        {
          v29 = *(v28 + 32);
        }

        OUTLINED_FUNCTION_11();

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1CA9813B0;
        v31 = [v27 name];
        sub_1CA94C3A8();
        v33 = v32;

        v34 = objc_allocWithZone(WFPropertyVariableAggrandizement);
        v35 = OUTLINED_FUNCTION_139();
        *(v30 + 32) = sub_1CA60C764(v35, v33, 0);
        sub_1CA25B3D0(0, &unk_1EC444CA0, off_1E836F4B8);
        v36 = sub_1CA94C648();

        v37 = [(WFVariable_optional *)v40 variableBySettingAggrandizements:v36];

        v38 = [objc_allocWithZone(WFConditionalSubjectParameterState) initWithVariable_];
        RowTemplateConditionalParameterState.subject.setter(v38);

        goto LABEL_25;
      }
    }
  }
}

uint64_t RowTemplateConditionalParameterState.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 + 8) + 24))(a2, *(a3 + 8));
  sub_1CA323E28();
  OUTLINED_FUNCTION_139();

  if (!a1)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  swift_getAssociatedTypeWitness();
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t RowTemplateConditionalParameterState.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(*(a4 + 8) + 24))(a3, *(a4 + 8));
  if (a1)
  {
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_87();
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_62_8();
    sub_1CA43FF40(v7, v8, v9, v10);
  }

  else
  {
    sub_1CA43F494(v5, v6);
  }

  return swift_unknownObjectRelease();
}

void (*RowTemplateConditionalParameterState.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v9;
  v9[3] = a4;
  v9[4] = v4;
  v9[1] = a2;
  v9[2] = a3;
  OUTLINED_FUNCTION_63_10();
  v10 = OUTLINED_FUNCTION_69();
  *v9 = RowTemplateConditionalParameterState.subscript.getter(v10, v11, a4);
  return sub_1CA6059DC;
}

void sub_1CA6059DC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v5 = (*a1)[1];
  v4 = (*a1)[2];
  v6 = **a1;
  if (a2)
  {
    v7 = swift_unknownObjectRetain();
    RowTemplateConditionalParameterState.subscript.setter(v7, v5, v4, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    RowTemplateConditionalParameterState.subscript.setter(v6, v5, v4, v3);
  }

  free(v2);
}

uint64_t RowTemplateConditionalParameterState.containedVariables.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 40);
  v3 = &selRef_arrayWithObject_;
  if (v2)
  {
    v4 = [v2 containedVariables];
    sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
    OUTLINED_FUNCTION_5_3();
    v32 = sub_1CA94C658();
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_5_5();
  v7 = v6 & v5;
  v34 = (v8 + 63) >> 6;
  result = sub_1CA94C218();
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (v7)
  {
LABEL_10:
    v13 = [swift_unknownObjectRetain_n() v3[468]];
    sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
    v14 = sub_1CA94C658();
    swift_unknownObjectRelease_n();

    if (v14 >> 62)
    {
      v15 = sub_1CA94D328();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v11 >> 62;
    if (v11 >> 62)
    {
      result = sub_1CA94D328();
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v37 = v15;
    v17 = __OFADD__(result, v15);
    v18 = result + v15;
    if (v17)
    {
      goto LABEL_43;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v16)
      {
LABEL_21:
        sub_1CA94D328();
      }

LABEL_22:
      result = sub_1CA94D488();
      v36 = result;
      v19 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_23;
    }

    if (v16)
    {
      goto LABEL_21;
    }

    v19 = v11 & 0xFFFFFFFFFFFFFF8;
    if (v18 > *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_22;
    }

    v36 = v11;
LABEL_23:
    v7 &= v7 - 1;
    v20 = *(v19 + 16);
    v21 = (*(v19 + 24) >> 1) - v20;
    v22 = v19 + 8 * v20;
    v35 = v19;
    if (v14 >> 62)
    {
      v24 = sub_1CA94D328();
      if (v24)
      {
        v25 = v24;
        result = sub_1CA94D328();
        if (v21 < result)
        {
          goto LABEL_47;
        }

        if (v25 < 1)
        {
          goto LABEL_48;
        }

        v33 = result;
        sub_1CA276B98(&qword_1EC447B50, &unk_1EC444470, &unk_1CA983510);
        for (i = 0; i != v25; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444470, &unk_1CA983510);
          v27 = sub_1CA276BDC(v38, i, v14);
          v29 = *v28;
          v27(v38, 0);
          *(v22 + 32 + 8 * i) = v29;
        }

        v23 = v33;
        v3 = &selRef_arrayWithObject_;
        goto LABEL_33;
      }

LABEL_37:

      v11 = v36;
      if (v37 > 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v23 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v23)
      {
        goto LABEL_37;
      }

      if (v21 < v23)
      {
        goto LABEL_46;
      }

      swift_arrayInitWithCopy();
LABEL_33:

      v11 = v36;
      if (v23 < v37)
      {
        goto LABEL_44;
      }

      if (v23 > 0)
      {
        v30 = *(v35 + 16);
        v17 = __OFADD__(v30, v23);
        v31 = v30 + v23;
        if (v17)
        {
          goto LABEL_45;
        }

        *(v35 + 16) = v31;
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v34)
    {

      v38[0] = v32;
      sub_1CA2B7C28(v11);
      return v38[0];
    }

    v7 = *(v1 + 64 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

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
  return result;
}

uint64_t RowTemplateConditionalParameterState.process(context:)(uint64_t a1)
{
  *(v2 + 296) = a1;
  *(v2 + 304) = *v1;
  *(v2 + 281) = *(v1 + 16);
  *(v2 + 320) = *(v1 + 40);
  OUTLINED_FUNCTION_90();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1CA605F28()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[40];
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    v0[41] = v2;
    *v2 = v0;
    v2[1] = sub_1CA606040;
    v3 = v0[37];

    return sub_1CA32BED0(v3);
  }

  else
  {
    v5 = sub_1CA60D538();
    OUTLINED_FUNCTION_127(&type metadata for RowTemplateConditionalParameterState.ConditionalSubjectProcessingError, v5);
    *v6 = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_5();

    return v7();
  }
}

uint64_t sub_1CA606040()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  *(v5 + 336) = v0;

  if (!v0)
  {
    *(v5 + 344) = v3;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1CA606154()
{
  v72 = v0;
  v2 = *(v0 + 344);
  if (!v2 || (objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) == 0))
  {
    v21 = *(v0 + 320);
    v22 = sub_1CA60D538();
    OUTLINED_FUNCTION_127(&type metadata for RowTemplateConditionalParameterState.ConditionalSubjectProcessingError, v22);
    *v23 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_21;
  }

  v4 = v3;
  v5 = *(v0 + 281);
  v6 = *(v0 + 304);
  v7 = [v3 content];
  *(v0 + 352) = v7;
  v8 = sub_1CA6030C8(v6, &unk_1F49F88C0);
  sub_1CA94C218();
  if (v5 != 1 || !v8)
  {
    v26 = sub_1CA607C00([v4 contentType]);
    if (v26 == 1)
    {
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 288;
      *(v0 + 24) = sub_1CA607638;
      v27 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4471A8, &qword_1CA98EB20);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1CA3CD588;
      *(v0 + 104) = &block_descriptor_32;
      *(v0 + 112) = v27;
      [v7 getBoolRepresentation_];
      OUTLINED_FUNCTION_68();

      goto _swift_continuation_await;
    }

    v29 = v26;
    v30 = *(v0 + 312);
    goto LABEL_57;
  }

  v5 = &selRef_isInputParameter;
  v9 = [v7 items];
  sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
  OUTLINED_FUNCTION_134();
  v10 = sub_1CA94C658();

  v11 = sub_1CA25B410(v10);

  if (!v11)
  {
    v31 = *(v0 + 320);
    sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
    sub_1CA94CFA8();

    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_4_38();
    OUTLINED_FUNCTION_68();

    __asm { BRAA            X2, X16 }
  }

  v12 = *(v0 + 304);
  v1 = &off_1E836E000;
  if (!v12 || v12 == 2)
  {
    v34 = sub_1CA323E28();
    *(v0 + 392) = v34;
    if (v34)
    {
      swift_getObjectType();
      v35 = swift_task_alloc();
      *(v0 + 400) = v35;
      *v35 = v0;
      v36 = sub_1CA60713C;
LABEL_47:
      v35[1] = v36;
      OUTLINED_FUNCTION_68();

      WFParameterState.process(context:)(v52, v53);
      return;
    }

LABEL_50:
    v30 = *(v0 + 312);
    v29 = 3;
    goto LABEL_51;
  }

  if (v12 != 99)
  {
    if (v12 != 4)
    {
      v70 = 0;
      v71 = 0xE000000000000000;
      sub_1CA94D408();
      MEMORY[0x1CCAA1300](0xD000000000000048, 0x80000001CA9D5490);
      v15 = WFDefaultLocalizedLabelForContentOperator();
      if (!v15)
      {
        goto LABEL_69;
      }

      v45 = v15;
      v46 = sub_1CA94C3A8();
      v48 = v47;

      MEMORY[0x1CCAA1300](v46, v48);

      OUTLINED_FUNCTION_76_7("Fatal error", v49, v50, v70, v71, "WorkflowKit/RowTemplateConditionalParameterState.swift");
      OUTLINED_FUNCTION_68();
      return;
    }

    v13 = [v7 items];
    v14 = sub_1CA94C658();

    v15 = sub_1CA25B410(v14);
    v16 = v15;
    v17 = 0;
    v5 = v14 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v16 == v17)
      {

        v30 = *(v0 + 312);
        v29 = 2;
        v1 = &off_1E836E000;
        goto LABEL_51;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v20 = OUTLINED_FUNCTION_134();
        v15 = MEMORY[0x1CCAA22D0](v20);
      }

      else
      {
        if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_68;
        }

        v15 = *(v14 + 8 * v17 + 32);
      }

      v18 = v15;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_67;
      }

      sub_1CA25B3D0(0, &qword_1EC4447F0, 0x1E6996EC0);
      if ([v18 isKindOfClass_])
      {
        break;
      }

      sub_1CA25B3D0(0, &qword_1EC446EF8, 0x1E6996DB8);
      v19 = [v18 isKindOfClass_];

      ++v17;
      if (v19)
      {
        goto LABEL_45;
      }
    }

LABEL_45:

    v34 = OUTLINED_FUNCTION_58_7(v51, 0x80000001CA9B28F0);
    *(v0 + 360) = v34;
    v1 = &off_1E836E000;
    if (v34)
    {
      swift_getObjectType();
      v35 = swift_task_alloc();
      *(v0 + 368) = v35;
      *v35 = v0;
      v36 = sub_1CA606B5C;
      goto LABEL_47;
    }

    goto LABEL_50;
  }

  OUTLINED_FUNCTION_14_29();
  v34 = sub_1CA323E28();
  if (!v34)
  {
    goto LABEL_41;
  }

  v37 = objc_opt_self();
  v38 = OUTLINED_FUNCTION_36_6(v37);
  if (!v38 || (v39 = [v38 value]) == 0)
  {
    v34 = swift_unknownObjectRelease();
LABEL_41:
    v30 = *(v0 + 312);
    goto LABEL_42;
  }

  v40 = v39;
  v41 = *(v0 + 312);
  sub_1CA25B3D0(0, &qword_1EC441788, off_1E836F4E0);
  v42 = sub_1CA94C3A8();
  v5 = v43;
  sub_1CA25B3D0(0, &qword_1EC446960, off_1E836F4D8);
  v70 = sub_1CA538038(v42);
  v44.variableString.super.isa = &v70;
  WFVariableStringParameterState.init(variableString:)(v44);
  OUTLINED_FUNCTION_139();
  swift_isUniquelyReferenced_nonNull_native();
  v70 = v41;
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_43_11();

  v34 = swift_unknownObjectRelease();
  v30 = v70;
LABEL_42:
  v29 = 2;
LABEL_51:
  if (OUTLINED_FUNCTION_58_7(v34, 0x80000001CA9B28F0))
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1CA25B3D0(0, &qword_1EC441788, off_1E836F4E0);
    sub_1CA25B3D0(0, &qword_1EC446960, off_1E836F4D8);
    v70 = OUTLINED_FUNCTION_57_10();
    v55.variableString.super.isa = &v70;
    WFVariableStringParameterState.init(variableString:)(v55);
    OUTLINED_FUNCTION_87();
    swift_isUniquelyReferenced_nonNull_native();
    v70 = v30;
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_43_11();
    v30 = v70;
  }

  v2 = 0xED000065756C6156;
  if (sub_1CA323E28())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
    v56 = sub_1CA94D008();
    v5 = [objc_allocWithZone(v1[387]) initWithValue_];

    swift_isUniquelyReferenced_nonNull_native();
    v70 = v30;
    OUTLINED_FUNCTION_0_4();
    sub_1CA60D32C();
    v30 = v70;
  }

LABEL_57:
  *(v0 + 432) = v30;
  sub_1CA607C68(v29, *(v0 + 320));
  OUTLINED_FUNCTION_64_8();
  while (1)
  {
    if (v1 == v5)
    {
      v60 = *(v0 + 352);
      v61 = *(v0 + 320);

      v62 = sub_1CA60D538();
      v63 = OUTLINED_FUNCTION_127(&type metadata for RowTemplateConditionalParameterState.ConditionalSubjectProcessingError, v62);
      OUTLINED_FUNCTION_54_7(v63, v64);

      swift_unknownObjectRelease();

LABEL_21:
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_68();

      __asm { BRAA            X1, X16 }
    }

    if (v5 >= *(v29 + 16))
    {
      break;
    }

    v57 = *(v0 + 304);
    sub_1CA2C9578(v2, v0 + 224);
    v58 = *(v0 + 248);
    __swift_project_boxed_opaque_existential_1((v0 + 224), v58);
    OUTLINED_FUNCTION_4_50();
    if (v59(v58) == v57)
    {
      v65 = *(v0 + 296);

      OUTLINED_FUNCTION_32_15();
      sub_1CA94C218();
      v66 = v65;
      v67 = swift_task_alloc();
      *(v0 + 440) = v67;
      *v67 = v0;
      OUTLINED_FUNCTION_3_50(v67);
      OUTLINED_FUNCTION_68();

      __asm { BRAA            X4, X16 }
    }

    ++v5;
    v15 = __swift_destroy_boxed_opaque_existential_0((v0 + 224));
    v2 += 40;
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
_swift_continuation_await:
  MEMORY[0x1EEE6DEC8](v15);
}

uint64_t sub_1CA606B5C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 376) = v4;
  *(v2 + 384) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1CA606C5C()
{
  v32 = v0;
  OUTLINED_FUNCTION_61_9();
  if (!*(v0 + 376))
  {
    goto LABEL_7;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_5_3();
  v1 = swift_dynamicCastObjCClass();
  if (!v1 || (v2 = [objc_opt_self() resultsForString:v1 ofTypes:0x200000000 error:0], v3 = objc_msgSend(v2, sel_number), v2, !v3))
  {
    swift_unknownObjectRelease();
LABEL_7:
    swift_unknownObjectRelease();
    v7 = *(v0 + 312);
    goto LABEL_8;
  }

  v4 = [v3 stringValue];
  if (!v4)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = *(v0 + 312);
  [objc_allocWithZone(WFNumberStringSubstitutableState) initWithValue_];

  swift_isUniquelyReferenced_nonNull_native();
  v31 = v6;
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_61_9();
  sub_1CA60D32C();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v7 = v6;
LABEL_8:
  if (sub_1CA323E28())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1CA25B3D0(0, &qword_1EC441788, off_1E836F4E0);
    sub_1CA25B3D0(0, &qword_1EC446960, off_1E836F4D8);
    v31 = OUTLINED_FUNCTION_57_10();
    v8.variableString.super.isa = &v31;
    WFVariableStringParameterState.init(variableString:)(v8);
    OUTLINED_FUNCTION_139();
    swift_isUniquelyReferenced_nonNull_native();
    v31 = v7;
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_43_11();
    v7 = v31;
  }

  if (sub_1CA323E28())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
    v9 = sub_1CA94D008();
    [objc_allocWithZone(WFNumberStringSubstitutableState) initWithValue_];

    swift_isUniquelyReferenced_nonNull_native();
    v31 = v7;
    OUTLINED_FUNCTION_0_4();
    sub_1CA60D32C();
    v7 = v31;
  }

  *(v0 + 432) = v7;
  sub_1CA607C68(3, *(v0 + 320));
  v11 = v10;
  v12 = 0;
  v13 = *(v10 + 16);
  v14 = v10 + 32;
  while (v13 != v12)
  {
    if (v12 >= *(v11 + 16))
    {
      __break(1u);
      goto LABEL_26;
    }

    v15 = *(v0 + 304);
    sub_1CA2C9578(v14, v0 + 224);
    v16 = *(v0 + 248);
    __swift_project_boxed_opaque_existential_1((v0 + 224), v16);
    OUTLINED_FUNCTION_4_50();
    if (v17(v16) == v15)
    {
      v24 = *(v0 + 296);

      sub_1CA27F268((v0 + 224), v0 + 184);
      sub_1CA27F268((v0 + 184), v0 + 144);
      v25 = *(v0 + 176);
      __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
      *(v0 + 264) = v7;
      *(v0 + 272) = v24;
      *(v0 + 280) = 0;
      v26 = *(v25 + 16);
      sub_1CA94C218();
      v27 = v24;
      v30 = (v26 + *v26);
      v28 = swift_task_alloc();
      *(v0 + 440) = v28;
      *v28 = v0;
      v29 = OUTLINED_FUNCTION_3_50(v28);

      v30(v29);
      return;
    }

    ++v12;
    __swift_destroy_boxed_opaque_existential_0((v0 + 224));
    v14 += 40;
  }

  v18 = *(v0 + 352);
  v19 = *(v0 + 320);

  v20 = sub_1CA60D538();
  v21 = OUTLINED_FUNCTION_127(&type metadata for RowTemplateConditionalParameterState.ConditionalSubjectProcessingError, v20);
  OUTLINED_FUNCTION_54_7(v21, v22);

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_5();

  v23();
}

uint64_t sub_1CA60713C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 408) = v4;
  *(v2 + 416) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1CA60723C()
{
  OUTLINED_FUNCTION_189();
  v24 = v0;
  v1 = 0x7265626D754E4657;
  if (!*(v0 + 408))
  {
    goto LABEL_6;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_5_3();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    swift_unknownObjectRelease();
LABEL_6:
    v4 = swift_unknownObjectRelease();
    v5 = *(v0 + 312);
    goto LABEL_7;
  }

  v3 = *(v0 + 312);
  [objc_allocWithZone(WFNumberStringSubstitutableState) initWithValue_];
  swift_isUniquelyReferenced_nonNull_native();
  v23 = v3;
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_62_8();
  sub_1CA60D32C();
  swift_unknownObjectRelease();
  v4 = swift_unknownObjectRelease();
  v5 = v3;
LABEL_7:
  v6 = "WorkflowKit.TableTemplateValue";
  if (OUTLINED_FUNCTION_58_7(v4, 0x80000001CA9B28F0))
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1CA25B3D0(0, &qword_1EC441788, off_1E836F4E0);
    sub_1CA25B3D0(0, &qword_1EC446960, off_1E836F4D8);
    v23 = OUTLINED_FUNCTION_57_10();
    v7.variableString.super.isa = &v23;
    WFVariableStringParameterState.init(variableString:)(v7);
    OUTLINED_FUNCTION_87();
    swift_isUniquelyReferenced_nonNull_native();
    v23 = v5;
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_43_11();
    v5 = v23;
  }

  if (sub_1CA323E28())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
    v8 = sub_1CA94D008();
    [objc_allocWithZone(WFNumberStringSubstitutableState) initWithValue_];

    swift_isUniquelyReferenced_nonNull_native();
    v23 = v5;
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_62_8();
    sub_1CA60D32C();
    v5 = v23;
  }

  *(v0 + 432) = v5;
  sub_1CA607C68(3, *(v0 + 320));
  OUTLINED_FUNCTION_64_8();
  while (&selRef_initWithIntentDescriptor_isSyncedFromOtherDevice_ != v6)
  {
    if (v6 >= MEMORY[0xED000065756C6166])
    {
      __break(1u);
      return;
    }

    v9 = *(v0 + 304);
    sub_1CA2C9578(v1, v0 + 224);
    v10 = *(v0 + 248);
    __swift_project_boxed_opaque_existential_1((v0 + 224), v10);
    OUTLINED_FUNCTION_4_50();
    if (v11(v10) == v9)
    {
      v18 = *(v0 + 296);

      OUTLINED_FUNCTION_32_15();
      sub_1CA94C218();
      v19 = v18;
      v22 = (v10 + *v10);
      v20 = swift_task_alloc();
      *(v0 + 440) = v20;
      *v20 = v0;
      v21 = OUTLINED_FUNCTION_3_50(v20);

      v22(v21);
      return;
    }

    v6 = (v6 + 1);
    __swift_destroy_boxed_opaque_existential_0((v0 + 224));
    v1 += 40;
  }

  v12 = *(v0 + 352);
  v13 = *(v0 + 320);

  v14 = sub_1CA60D538();
  v15 = OUTLINED_FUNCTION_127(&type metadata for RowTemplateConditionalParameterState.ConditionalSubjectProcessingError, v14);
  OUTLINED_FUNCTION_54_7(v15, v16);

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_5();

  v17();
}

uint64_t sub_1CA607638()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 424) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA607734()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 320);

  swift_unknownObjectRelease();

  v2 = OUTLINED_FUNCTION_4_38();

  return v3(v2);
}

uint64_t sub_1CA6077B4()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  *(v5 + 448) = v0;

  if (!v0)
  {
    *(v5 + 282) = v3 & 1;
  }

  v8 = *(v5 + 272);

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA6078E0()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[44];
  v2 = v0[40];
  v3 = sub_1CA94C7A8();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);

  OUTLINED_FUNCTION_2_4();

  return v4(v3);
}

uint64_t sub_1CA607980()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_5();

  return v1();
}

uint64_t sub_1CA6079DC()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 320);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_5();

  return v2();
}

uint64_t sub_1CA607A64()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 320);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_5();

  return v2();
}

uint64_t sub_1CA607AEC()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 352);
  v2 = *(v0 + 320);
  swift_willThrow();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA607B78()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 320);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 144));

  OUTLINED_FUNCTION_5();

  return v2();
}

unint64_t sub_1CA607C00(unint64_t result)
{
  if (result >= 0xA)
  {
    result = sub_1CA94D5F8();
    __break(1u);
  }

  return result;
}

void sub_1CA607C68(uint64_t a1, id a2)
{
  if ([a2 isEnumeration])
  {
    if (a1 == 3)
    {
      v14 = sub_1CA94C438("Number", 6);
      if (qword_1EDB9F5F0 != -1)
      {
        OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
      }

      v15 = qword_1EDB9F690;
      OUTLINED_FUNCTION_134();
      v16 = sub_1CA94C368();
      OUTLINED_FUNCTION_134();
      sub_1CA94C368();
      OUTLINED_FUNCTION_11();

      v18 = OUTLINED_FUNCTION_96(v17, sel_localizedStringForKey_value_table_);

      sub_1CA94C3A8();
      OUTLINED_FUNCTION_70_0();

      OUTLINED_FUNCTION_34_16();
      v19 = swift_allocObject();
      *(v19 + 16) = a2;
      OUTLINED_FUNCTION_34_16();
      v20 = swift_allocObject();
      *(v20 + 16) = a2;
      *v180 = &type metadata for RowTemplateConditionalParameterState.NumericEnumerationKey;
      *&v180[8] = v15;
      *&v180[16] = v14;
      *&v180[24] = &unk_1CA98F8C8;
      *&v180[32] = v19;
      *&v180[40] = sub_1CA60F6DC;
      *&v180[48] = v20;
      *&v180[56] = &unk_1CA98F8D0;
      *&v180[64] = 0;
      sub_1CA609258(v180);
    }

    else if (a1 == 8)
    {
      v6 = sub_1CA94C438("Value", 5);
      if (qword_1EDB9F5F0 != -1)
      {
        OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
      }

      v7 = qword_1EDB9F690;
      OUTLINED_FUNCTION_134();
      v8 = sub_1CA94C368();
      OUTLINED_FUNCTION_134();
      sub_1CA94C368();
      OUTLINED_FUNCTION_11();

      v10 = OUTLINED_FUNCTION_96(v9, sel_localizedStringForKey_value_table_);

      sub_1CA94C3A8();
      OUTLINED_FUNCTION_70_0();

      OUTLINED_FUNCTION_34_16();
      v11 = swift_allocObject();
      *(v11 + 16) = a2;
      OUTLINED_FUNCTION_34_16();
      v12 = swift_allocObject();
      *(v12 + 16) = a2;
      *v180 = &type metadata for RowTemplateConditionalParameterState.LinkEnumerationKey;
      *&v180[8] = v7;
      *&v180[16] = v6;
      *&v180[24] = &unk_1CA98F8E0;
      *&v180[32] = v11;
      *&v180[40] = sub_1CA610A54;
      *&v180[48] = v12;
      *&v180[56] = &unk_1CA98F8E8;
      *&v180[64] = 0;
      sub_1CA6090D8(v180);
    }

    else
    {
      v21 = sub_1CA94C438("Value", 5);
      if (qword_1EDB9F5F0 != -1)
      {
        OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
      }

      v22 = qword_1EDB9F690;
      OUTLINED_FUNCTION_134();
      v23 = sub_1CA94C368();
      OUTLINED_FUNCTION_134();
      sub_1CA94C368();
      OUTLINED_FUNCTION_11();

      v25 = OUTLINED_FUNCTION_96(v24, sel_localizedStringForKey_value_table_);

      sub_1CA94C3A8();
      OUTLINED_FUNCTION_70_0();

      OUTLINED_FUNCTION_34_16();
      v26 = swift_allocObject();
      *(v26 + 16) = a2;
      OUTLINED_FUNCTION_34_16();
      v27 = swift_allocObject();
      *(v27 + 16) = a2;
      *v180 = &type metadata for RowTemplateConditionalParameterState.EnumerationKey;
      *&v180[8] = v22;
      *&v180[16] = v21;
      *&v180[24] = &unk_1CA98F8B0;
      *&v180[32] = v26;
      *&v180[40] = sub_1CA610A54;
      *&v180[48] = v27;
      *&v180[56] = &unk_1CA98F8B8;
      *&v180[64] = 0;
      sub_1CA6093D8(v180);
    }

    v28 = a2;

LABEL_16:
    OUTLINED_FUNCTION_72_5();
  }

  else
  {
    switch(a1)
    {
      case 0:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447360, &unk_1CA9826A0);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1CA97EDF0;
        *(v13 + 56) = &type metadata for HasValueOperator;
        *(v13 + 64) = sub_1CA60F140();
        *(v13 + 96) = &type metadata for HasNoValueOperator;
        *(v13 + 104) = sub_1CA60F194();
        goto LABEL_16;
      case 2:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447360, &unk_1CA9826A0);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_1CA981300;
        *(v35 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4473F0, &unk_1CA991790);
        *(v35 + 64) = sub_1CA60F2E4();
        *(v35 + 32) = 0xD000000000000019;
        *(v35 + 40) = 0x80000001CA9B28F0;
        *(v35 + 48) = 0;
        *(v35 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447400, &unk_1CA98F880);
        *(v35 + 104) = sub_1CA60F360();
        *(v35 + 72) = 0xD000000000000019;
        *(v35 + 80) = 0x80000001CA9B28F0;
        *(v35 + 88) = 0;
        *(v35 + 136) = &type metadata for HasValueOperator;
        *(v35 + 144) = sub_1CA60F140();
        *(v35 + 176) = &type metadata for HasNoValueOperator;
        *(v35 + 184) = sub_1CA60F194();
        v36 = OUTLINED_FUNCTION_79_5();
        *(v35 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E20, &unk_1CA9917A0);
        *(v35 + 224) = sub_1CA60F3DC();
        *(v35 + 192) = 0xD000000000000019;
        *(v35 + 200) = 0x80000001CA9B28F0;
        *(v35 + 208) = 0;
        *(v35 + 209) = v36;
        v37 = OUTLINED_FUNCTION_79_5();
        *(v35 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447420, &unk_1CA98F890);
        *(v35 + 264) = sub_1CA60F458();
        *(v35 + 232) = 0xD000000000000019;
        *(v35 + 240) = 0x80000001CA9B28F0;
        *(v35 + 248) = 0;
        *(v35 + 249) = v37;
        v38 = OUTLINED_FUNCTION_79_5();
        *(v35 + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447430, &qword_1CA9917B0);
        *(v35 + 304) = sub_1CA60F4D4();
        *(v35 + 272) = 0xD000000000000019;
        *(v35 + 280) = 0x80000001CA9B28F0;
        *(v35 + 288) = 0;
        *(v35 + 289) = v38;
        v39 = OUTLINED_FUNCTION_79_5();
        *(v35 + 336) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447440, &qword_1CA98F8A0);
        *(v35 + 344) = sub_1CA60F550();
        *(v35 + 312) = 0xD000000000000019;
        *(v35 + 320) = 0x80000001CA9B28F0;
        *(v35 + 328) = 0;
        *(v35 + 329) = v39;
        goto LABEL_16;
      case 3:
        v46 = [a2 minimumValue];
        if (!v46)
        {
          goto LABEL_50;
        }

        v47 = v46;
        v48 = [a2 maximumValue];
        if (v48)
        {
          v49 = v48;
          v50 = v47;
          v51 = v49;
          sub_1CA60A84C(0x65646E756F424657, 0xEF7265626D754E64, v50, v51, 0xD000000000000016, 0x80000001CA9D5410, v50, v51, a2);

LABEL_32:
          goto LABEL_16;
        }

LABEL_50:
        OUTLINED_FUNCTION_14_29();
        OUTLINED_FUNCTION_72_5();

        sub_1CA60AEFC(v139, v140, v141, v142, v143, v144, v145);
        break;
      case 4:
        v52 = [a2 displayableTimeUnits];
        v53 = [a2 comparableTimeUnits];
        *&v175 = 0x657461444657;
        *(&v175 + 1) = 0xE600000000000000;
        *&v176 = v52;
        *(&v176 + 1) = v53;
        v177 = 0u;
        v178 = 0u;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447360, &unk_1CA9826A0);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_1CA981380;
        *(v54 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447C20, &unk_1CA991670);
        *(v54 + 64) = sub_1CA60F008();
        v55 = swift_allocObject();
        *(v54 + 32) = v55;
        OUTLINED_FUNCTION_40_8(v55, v56, v57, v58, v59, v60, v61, v62, v63, v153, v158, v163, v168, *(&v168 + 1), v169, v170, v171, v172, v173, v174, v175, v176, v64, v177);
        *(v54 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447C30, &unk_1CA98F860);
        *(v54 + 104) = sub_1CA60F084();
        v65 = swift_allocObject();
        *(v54 + 72) = v65;
        OUTLINED_FUNCTION_40_8(v65, v66, v67, v68, v69, v70, v71, v72, v73, v154, v159, v164, v168, *(&v168 + 1), v169, v170, v171, v172, v173, v174, v175, v176, v74, v177);
        *(v54 + 136) = &type metadata for HasValueOperator;
        *(v54 + 144) = sub_1CA60F140();
        *(v54 + 176) = &type metadata for HasNoValueOperator;
        *(v54 + 184) = sub_1CA60F194();
        *&__src[7] = v175;
        *&__src[23] = v176;
        *&__src[39] = v177;
        *&__src[55] = v178;
        *(v54 + 216) = &type metadata for DateOrderedComparisonOperator;
        v75 = sub_1CA60F1E8();
        *(v54 + 224) = v75;
        OUTLINED_FUNCTION_70_11();
        v76 = swift_allocObject();
        *(v54 + 192) = v76;
        *(v76 + 16) = 1;
        memcpy((v76 + 17), __src, 0x47uLL);
        *&v180[7] = v175;
        *&v180[23] = v176;
        *&v180[39] = v177;
        *&v180[55] = v178;
        *(v54 + 256) = &type metadata for DateOrderedComparisonOperator;
        *(v54 + 264) = v75;
        OUTLINED_FUNCTION_70_11();
        v77 = swift_allocObject();
        *(v54 + 232) = v77;
        *(v77 + 16) = 0;
        v78 = memcpy((v77 + 17), v180, 0x47uLL);
        v86 = OUTLINED_FUNCTION_65_6(v78, v79, v80, v81, v82, v83, v84, v85, v155, v160, v165, v168, *(&v168 + 1), v169, v170, v171, v172, v173, v174, v175);
        v88 = sub_1CA5C3564(v86, v87);
        v96 = OUTLINED_FUNCTION_65_6(v88, v89, v90, v91, v92, v93, v94, v95, v156, v161, v166, v168, *(&v168 + 1), v169, v170, v171, v172, v173, v174, v175);
        v98 = sub_1CA5C3564(v96, v97);
        v106 = OUTLINED_FUNCTION_65_6(v98, v99, v100, v101, v102, v103, v104, v105, v157, v162, v167, v168, *(&v168 + 1), v169, v170, v171, v172, v173, v174, v175);
        sub_1CA5C3564(v106, v107);
        if ((v52 & 0x1C) != 0)
        {
          OUTLINED_FUNCTION_78_9(1, 7);
          v54 = v108;
          v170 = &type metadata for DateIsTodayOperator;
          v171 = sub_1CA60F23C();
          *(v54 + 16) = 7;
          sub_1CA27F268(&v168, v54 + 272);
        }

        v120 = *(v54 + 16);
        v119 = *(v54 + 24);
        if (v120 >= v119 >> 1)
        {
          v147 = OUTLINED_FUNCTION_64(v119);
          OUTLINED_FUNCTION_78_9(v147, v120 + 1);
          v54 = v148;
        }

        v170 = &type metadata for DateBetweenComparisonOperator;
        v171 = sub_1CA60F290();
        v121 = swift_allocObject();
        *&v168 = v121;
        *(v121 + 16) = 0x657461444657;
        *(v121 + 24) = 0xE600000000000000;
        *(v121 + 32) = v52;
        *(v121 + 40) = v53;
        *(v121 + 48) = xmmword_1CA98EAF0;
        *(v121 + 64) = 0;
        *(v121 + 72) = 0;
        strcpy((v121 + 80), "WFAnotherDate");
        *(v121 + 94) = -4864;
        *(v121 + 96) = v52;
        *(v121 + 104) = v53;
        *(v121 + 112) = 0;
        *(v121 + 120) = 0;
        *(v121 + 128) = xmmword_1CA98EB00;
        *(v54 + 16) = v120 + 1;
        sub_1CA27F268(&v168, v54 + 40 * v120 + 32);
        v122 = [a2 tense];
        if ((v122 & 2) != 0)
        {
          v123 = [a2 displayableTimeUnits];
          v124 = [a2 comparableTimeUnits];
          v126 = *(v54 + 16);
          v125 = *(v54 + 24);
          if (v126 >= v125 >> 1)
          {
            v149 = OUTLINED_FUNCTION_64(v125);
            OUTLINED_FUNCTION_78_9(v149, v126 + 1);
            v54 = v150;
          }

          v127 = OUTLINED_FUNCTION_162();
          v170 = __swift_instantiateConcreteTypeFromMangledNameV2(v127, v128);
          v171 = sub_1CA276B98(&qword_1EC4473E8, &qword_1EC4473E0, &unk_1CA98F870);
          v129 = swift_allocObject();
          v130 = OUTLINED_FUNCTION_24_18(v129);
          *(v130 + 32) = v123;
          *(v130 + 40) = v124;
          *(v54 + 16) = v126 + 1;
          sub_1CA27F268(&v168, v54 + v126 * v131 + 32);
        }

        if (v122)
        {
          v132 = [a2 displayableTimeUnits];
          v133 = [a2 comparableTimeUnits];
          v135 = *(v54 + 16);
          v134 = *(v54 + 24);
          if (v135 >= v134 >> 1)
          {
            v151 = OUTLINED_FUNCTION_64(v134);
            OUTLINED_FUNCTION_78_9(v151, v135 + 1);
            v54 = v152;
          }

          v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4473D0, &qword_1CA98CDD8);
          v171 = sub_1CA276B98(&qword_1EC4473D8, &qword_1EC4473D0, &qword_1CA98CDD8);
          v136 = swift_allocObject();
          v137 = OUTLINED_FUNCTION_24_18(v136);
          *(v137 + 32) = v132;
          *(v137 + 40) = v133;
          *(v54 + 16) = v135 + 1;
          sub_1CA27F268(&v168, v54 + v135 * v138 + 32);
        }

        goto LABEL_16;
      case 5:
        v109 = [a2 unitType];
        v50 = [a2 unitType];
        v110 = OUTLINED_FUNCTION_15_23();
        sub_1CA60B460(v110, v111, v109, v112, 0x80000001CA9D5450, v50, a2);

        goto LABEL_32;
      case 6:
        OUTLINED_FUNCTION_15_23();
        OUTLINED_FUNCTION_72_5();

        sub_1CA60BFE8(v29, v30, v31, v32, v33);
        return;
      case 7:
        sub_1CA60B9E4(0x6974617275444657, 0xEA00000000006E6FLL, [a2 displayableTimeUnits], objc_msgSend(a2, sel_comparableTimeUnits), 0xD000000000000011, 0x80000001CA9D5430, objc_msgSend(a2, sel_displayableTimeUnits), objc_msgSend(a2, sel_comparableTimeUnits), a2);
        goto LABEL_16;
      case 8:
        OUTLINED_FUNCTION_76_7("Fatal error", v4, v5, 0xD000000000000043, 0x80000001CA9D5570, "WorkflowKit/RowTemplateConditionalParameterState.swift");
        __break(1u);
        return;
      case 9:
        v40 = [a2 variable];
        if (v40)
        {
          v41 = v40;
          objc_opt_self();
          OUTLINED_FUNCTION_5_3();
          v42 = swift_dynamicCastObjCClass();
          if (v42 && (v43 = [v42 action]) != 0)
          {
            v44 = v43;
            v45 = [v43 outputsMultipleItems];
          }

          else
          {
            v45 = 0;
          }
        }

        else
        {
          v45 = 0;
        }

        v113 = [a2 variable];
        if (v113)
        {
          v114 = v113;
          v115 = objc_opt_self();
          v116 = OUTLINED_FUNCTION_36_6(v115) != 0;

          v45 |= v116;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447360, &unk_1CA9826A0);
        v117 = swift_allocObject();
        *(v117 + 16) = xmmword_1CA97EDF0;
        *(v117 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447368, &qword_1CA98F848);
        *(v117 + 64) = sub_1CA60EF10();
        *(v117 + 32) = 0x7070414657;
        *(v117 + 40) = 0xE500000000000000;
        v118 = v45 & 1;
        *(v117 + 48) = v118;
        *(v117 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447378, &unk_1CA98F850);
        *(v117 + 104) = sub_1CA60EF8C();
        *(v117 + 72) = 0x7070414657;
        *(v117 + 80) = 0xE500000000000000;
        *(v117 + 88) = v118;
        goto LABEL_16;
      default:
        goto LABEL_16;
    }
  }
}

double RowTemplateConditionalParameterState.hash(into:)(void *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[5];
  sub_1CA94D938();
  if (v5)
  {
    v6 = v5;
    OUTLINED_FUNCTION_87();
    sub_1CA94CFE8();
  }

  MEMORY[0x1CCAA2780](v4);
  v11 = sub_1CA42AD5C(v3);
  sub_1CA60317C(&v11);
  v7 = *(v11 + 16);
  if (v7)
  {
    v8 = (v11 + 48);
    do
    {
      v9 = *v8;
      v8 += 3;
      sub_1CA94C218();
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_23();
      sub_1CA94C458();

      MEMORY[0x1CCAA2780]([v9 hash]);
      swift_unknownObjectRelease();
      --v7;
    }

    while (v7);
  }

  return result;
}

void static RowTemplateConditionalParameterState.== infix(_:_:)()
{
  OUTLINED_FUNCTION_37_0();
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[5];
  v6 = *v4;
  v5 = v4[1];
  v7 = v4[5];
  if (v3)
  {
    if (!v7)
    {
      goto LABEL_29;
    }

    sub_1CA25B3D0(0, &qword_1EC447190, off_1E836E020);
    v8 = v7;
    v9 = v3;
    v10 = sub_1CA94CFD8();

    if ((v10 & 1) == 0 || v2 != v6)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v7)
    {
      v11 = 0;
    }

    else
    {
      v11 = v2 == v6;
    }

    if (!v11)
    {
      goto LABEL_29;
    }
  }

  swift_bridgeObjectRetain_n();
  sub_1CA94C218();
  v12 = sub_1CA60C7CC(v1, v5);

  if ((v12 & 1) == 0)
  {

LABEL_29:
    OUTLINED_FUNCTION_36();
    return;
  }

  v13 = 0;
  OUTLINED_FUNCTION_5_5();
  v16 = v15 & v14;
  v18 = (v17 + 63) >> 6;
  v19 = &selRef_initWithIntentDescriptor_isSyncedFromOtherDevice_;
  while (v16)
  {
LABEL_18:
    v21 = __clz(__rbit64(v16)) | (v13 << 6);
    v22 = *(*(v1 + 56) + 8 * v21);
    if (*(v5 + 16))
    {
      v23 = (*(v1 + 48) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      swift_unknownObjectRetain();
      sub_1CA94C218();
      v26 = sub_1CA271BF8(v24, v25);
      v28 = v27;

      if ((v28 & 1) == 0)
      {
        v29 = 0;
        v19 = &selRef_initWithIntentDescriptor_isSyncedFromOtherDevice_;
        goto LABEL_24;
      }

      v29 = *(*(v5 + 56) + 8 * v26);
      v19 = &selRef_initWithIntentDescriptor_isSyncedFromOtherDevice_;
    }

    else
    {
      v29 = 0;
    }

    swift_unknownObjectRetain();
LABEL_24:
    v16 &= v16 - 1;
    v30 = [v22 v19[489]];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v30 & 1) == 0)
    {
LABEL_28:

      goto LABEL_29;
    }
  }

  while (1)
  {
    v20 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v20 >= v18)
    {
      goto LABEL_28;
    }

    v16 = *(v1 + 64 + 8 * v20);
    ++v13;
    if (v16)
    {
      v13 = v20;
      goto LABEL_18;
    }
  }

  __break(1u);
}

BOOL RowTemplateConditionalParameterState.isBoolean.getter()
{
  v1 = v0[5];
  v2 = OUTLINED_FUNCTION_87();
  v3 = sub_1CA6048D4(v2);

  return v3 == 1;
}

uint64_t RowTemplateConditionalParameterState.operators.getter()
{
  v1 = v0[5];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v3 = OUTLINED_FUNCTION_87();
  v4 = sub_1CA6048D4(v3);
  sub_1CA607C68(v4, v0);
  v6 = sub_1CA360EB0(v5);

  return v6;
}

uint64_t RowTemplateConditionalParameterState.hashValue.getter()
{
  v0 = OUTLINED_FUNCTION_63_10();
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v0;
  v11 = v4;
  sub_1CA94D918();
  RowTemplateConditionalParameterState.hash(into:)(v6);
  return sub_1CA94D968();
}

uint64_t sub_1CA608F18(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA31555C;

  return RowTemplateConditionalParameterState.process(context:)(a1);
}

void (*sub_1CA608FDC(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_1CA6049D8;
}

uint64_t sub_1CA609028@<X0>(uint64_t *a1@<X8>)
{
  result = RowTemplateConditionalParameterState.selectedOperator.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1CA609074(uint64_t a1)
{
  v2 = v1[1];
  v3 = *(v1 + 16);
  v4 = *(v1 + 3);
  v5 = v1[5];
  v8 = *v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  sub_1CA94D918();
  RowTemplateConditionalParameterState.hash(into:)(v7);
  return sub_1CA94D968();
}

uint64_t sub_1CA6090D8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447360, &unk_1CA9826A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CA981350;
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447450, &qword_1CA98F8F0);
  *(v2 + 64) = sub_1CA60F780();
  v3 = swift_allocObject();
  *(v2 + 32) = v3;
  v7 = *(a1 + 8);
  memcpy((v3 + 16), a1, 0x48uLL);
  *(v2 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447460, &qword_1CA98F8F8);
  *(v2 + 104) = sub_1CA60F7FC();
  v4 = swift_allocObject();
  *(v2 + 72) = v4;
  memcpy((v4 + 16), a1, 0x48uLL);
  *(v2 + 136) = &type metadata for HasValueOperator;
  *(v2 + 144) = sub_1CA60F140();
  *(v2 + 176) = &type metadata for HasNoValueOperator;
  *(v2 + 184) = sub_1CA60F194();
  sub_1CA5A3E5C(&v7, v6);

  sub_1CA5A3E5C(&v7, v6);

  return v2;
}

uint64_t sub_1CA609258(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447360, &unk_1CA9826A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CA981350;
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447490, &qword_1CA98F910);
  *(v2 + 64) = sub_1CA60F878();
  v3 = swift_allocObject();
  *(v2 + 32) = v3;
  v7 = *(a1 + 8);
  memcpy((v3 + 16), a1, 0x48uLL);
  *(v2 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4474A0, &qword_1CA98F918);
  *(v2 + 104) = sub_1CA60F8F4();
  v4 = swift_allocObject();
  *(v2 + 72) = v4;
  memcpy((v4 + 16), a1, 0x48uLL);
  *(v2 + 136) = &type metadata for HasValueOperator;
  *(v2 + 144) = sub_1CA60F140();
  *(v2 + 176) = &type metadata for HasNoValueOperator;
  *(v2 + 184) = sub_1CA60F194();
  sub_1CA5A3E5C(&v7, v6);

  sub_1CA5A3E5C(&v7, v6);

  return v2;
}

uint64_t sub_1CA6093D8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447360, &unk_1CA9826A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CA981350;
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4474B8, &qword_1CA98F920);
  *(v2 + 64) = sub_1CA60F970();
  v3 = swift_allocObject();
  *(v2 + 32) = v3;
  v7 = *(a1 + 8);
  memcpy((v3 + 16), a1, 0x48uLL);
  *(v2 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4474C8, &qword_1CA98F928);
  *(v2 + 104) = sub_1CA60F9EC();
  v4 = swift_allocObject();
  *(v2 + 72) = v4;
  memcpy((v4 + 16), a1, 0x48uLL);
  *(v2 + 136) = &type metadata for HasValueOperator;
  *(v2 + 144) = sub_1CA60F140();
  *(v2 + 176) = &type metadata for HasNoValueOperator;
  *(v2 + 184) = sub_1CA60F194();
  sub_1CA5A3E5C(&v7, v6);

  sub_1CA5A3E5C(&v7, v6);

  return v2;
}

uint64_t sub_1CA609578()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_46_11();
  v3 = v0[19];
  v0[2] = v4;
  v0[7] = v0 + 18;
  OUTLINED_FUNCTION_53_13();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447478, &unk_1CA98F900);
  OUTLINED_FUNCTION_3_0(v5);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_5_43();
  [v3 getEnumerationPossibleStatesWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1CA609654()
{
  OUTLINED_FUNCTION_0();
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1CA609724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_38_12(*(v16 + 144));
  OUTLINED_FUNCTION_28_10();
  while (v15 != v18)
  {
    if (v19)
    {
      v20 = MEMORY[0x1CCAA22D0](v18, v14);
    }

    else
    {
      if (v18 >= *(v17 + 16))
      {
        goto LABEL_19;
      }

      v20 = *(v14 + 8 * v18 + 32);
    }

    v21 = v20;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    sub_1CA25B3D0(0, &unk_1EC447480, off_1E836E828);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = WFVariableSubstitutableParameterStateDowncast(v21, ObjCClassFromMetadata);

    if (v23)
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      MEMORY[0x1CCAA1490]();
      OUTLINED_FUNCTION_23_18();
      if (v24)
      {
        OUTLINED_FUNCTION_26_19();
      }

      OUTLINED_FUNCTION_162();
      sub_1CA94C6E8();
      ++v18;
    }

    else
    {
LABEL_10:
      ++v18;
    }
  }

  OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_24();

  v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, v16, a11, a12, a13, a14);
}

uint64_t sub_1CA609888(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444F10, &qword_1CA98D960);
    sub_1CA94C658();
  }

  return sub_1CA5470D4();
}

uint64_t sub_1CA6098FC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = sub_1CA25B3D0(0, &qword_1EC447470, off_1E836E810);
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1CA6099B4;

  return MEMORY[0x1EEDF81A0](v2);
}

uint64_t sub_1CA6099B4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 32) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_2_4();

    return v5(0);
  }

  else
  {

    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1CA609AE0()
{
  OUTLINED_FUNCTION_6();
  if (*(v0 + 32))
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      v2 = [v1 identifier];
      v3 = sub_1CA94C3A8();
      v5 = v4;

      if (v3 == sub_1CA94C3A8() && v5 == v6)
      {
        v8 = 1;
      }

      else
      {
        v8 = sub_1CA94D7F8();
      }
    }

    else
    {
      v8 = 0;
    }

    swift_unknownObjectRelease_n();
  }

  else
  {
    v8 = 0;
  }

  OUTLINED_FUNCTION_2_4();

  return v9(v8 & 1);
}

uint64_t sub_1CA609C24()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_46_11();
  v3 = v0[19];
  v0[2] = v4;
  v0[7] = v0 + 18;
  OUTLINED_FUNCTION_53_13();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447478, &unk_1CA98F900);
  OUTLINED_FUNCTION_3_0(v5);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_5_43();
  [v3 getEnumerationPossibleStatesWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1CA609D00()
{
  OUTLINED_FUNCTION_0();
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1CA609DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_38_12(*(v16 + 144));
  OUTLINED_FUNCTION_28_10();
  while (v15 != v18)
  {
    if (v19)
    {
      v20 = MEMORY[0x1CCAA22D0](v18, v14);
    }

    else
    {
      if (v18 >= *(v17 + 16))
      {
        goto LABEL_19;
      }

      v20 = *(v14 + 8 * v18 + 32);
    }

    v21 = v20;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    sub_1CA25B3D0(0, &qword_1EC446B00, off_1E836EC20);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = WFVariableSubstitutableParameterStateDowncast(v21, ObjCClassFromMetadata);

    if (v23)
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      MEMORY[0x1CCAA1490]();
      OUTLINED_FUNCTION_23_18();
      if (v24)
      {
        OUTLINED_FUNCTION_26_19();
      }

      OUTLINED_FUNCTION_162();
      sub_1CA94C6E8();
      ++v18;
    }

    else
    {
LABEL_10:
      ++v18;
    }
  }

  OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_24();

  v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, v16, a11, a12, a13, a14);
}

uint64_t sub_1CA609F34(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1CA609FEC;

  return MEMORY[0x1EEDF81A0](v2);
}

uint64_t sub_1CA609FEC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 32) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_2_4();

    return v5(0);
  }

  else
  {

    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1CA60A118()
{
  OUTLINED_FUNCTION_14();
  if (*(v0 + 32))
  {
    swift_unknownObjectRetain();
    v1 = objc_opt_self();
    v2 = OUTLINED_FUNCTION_36_6(v1);
    v3 = v2;
    if (v2)
    {
      sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
      OUTLINED_FUNCTION_134();
      v3 = sub_1CA94CFD8();
    }

    swift_unknownObjectRelease_n();
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_2_4();

  return v4(v3 & 1);
}

uint64_t sub_1CA60A204()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_46_11();
  v3 = v0[19];
  v0[2] = v4;
  v0[7] = v0 + 18;
  OUTLINED_FUNCTION_53_13();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447478, &unk_1CA98F900);
  OUTLINED_FUNCTION_3_0(v5);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_5_43();
  [v3 getEnumerationPossibleStatesWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1CA60A2E0()
{
  OUTLINED_FUNCTION_0();
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1CA60A3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_38_12(*(v16 + 144));
  OUTLINED_FUNCTION_28_10();
  while (v15 != v18)
  {
    if (v19)
    {
      v20 = MEMORY[0x1CCAA22D0](v18, v14);
    }

    else
    {
      if (v18 >= *(v17 + 16))
      {
        goto LABEL_19;
      }

      v20 = *(v14 + 8 * v18 + 32);
    }

    v21 = v20;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    sub_1CA25B3D0(0, &qword_1EC4417B0, off_1E836F350);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = WFVariableSubstitutableParameterStateDowncast(v21, ObjCClassFromMetadata);

    if (v23)
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      MEMORY[0x1CCAA1490]();
      OUTLINED_FUNCTION_23_18();
      if (v24)
      {
        OUTLINED_FUNCTION_26_19();
      }

      OUTLINED_FUNCTION_162();
      sub_1CA94C6E8();
      ++v18;
    }

    else
    {
LABEL_10:
      ++v18;
    }
  }

  OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_24();

  v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, v16, a11, a12, a13, a14);
}

uint64_t sub_1CA60A514(void *a1, void *a2)
{
  v3 = WFVariableSubstitutableParameterStateUpcast(a1);
  v4 = [a2 localizedLabelForEnumerationPossibleState_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1CA94C3A8();

  return v5;
}

uint64_t sub_1CA60A59C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1CA60A654;

  return MEMORY[0x1EEDF81A0](v2);
}

uint64_t sub_1CA60A654()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 32) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_2_4();

    return v5(0);
  }

  else
  {

    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1CA60A780()
{
  OUTLINED_FUNCTION_14();
  if (*(v0 + 32))
  {
    swift_unknownObjectRetain();
    v1 = objc_opt_self();
    v2 = OUTLINED_FUNCTION_36_6(v1);
    v3 = v2;
    if (v2)
    {
      sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
      OUTLINED_FUNCTION_134();
      v3 = sub_1CA94CFD8();
    }

    swift_unknownObjectRelease_n();
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_2_4();

  return v4(v3 & 1);
}

uint64_t sub_1CA60A84C(uint64_t a1, uint64_t a2, void *a3, void *a4, unint64_t a5, uint64_t a6, void *a7, void *a8, id a9)
{
  v76 = [a9 isIrrational];
  if (v76)
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1CA94C218();
    v14 = a3;
    v15 = a4;
    sub_1CA2E55BC();
    v13 = v16;
    v17 = *(v16 + 16);
    v18 = v17 + 1;
    if (v17 >= *(v16 + 24) >> 1)
    {
      sub_1CA2E55BC();
      v13 = v67;
    }

    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4474E0, &qword_1CA98F930);
    v88 = sub_1CA60FAB4();
    v19 = swift_allocObject();
    *&v85 = v19;
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = v14;
    v19[5] = v15;
    *(v13 + 16) = v18;
    sub_1CA27F268(&v85, v13 + 40 * v17 + 32);
    v20 = *(v13 + 24);
    sub_1CA94C218();
    v21 = v14;
    v22 = v15;
    if ((v17 + 2) > (v20 >> 1))
    {
      sub_1CA2E55BC();
      v13 = v68;
    }

    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4474F0, &qword_1CA98F938);
    v88 = sub_1CA60FB30();
    v23 = swift_allocObject();
    *&v85 = v23;
    v23[2] = a1;
    v23[3] = a2;
    v23[4] = v21;
    v23[5] = v22;
    *(v13 + 16) = v17 + 2;
    sub_1CA27F268(&v85, v13 + 40 * v18 + 32);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA2E55BC();
    v13 = v61;
  }

  v24 = *(v13 + 16);
  v25 = v24 + 1;
  if (v24 >= *(v13 + 24) >> 1)
  {
    sub_1CA2E55BC();
    v13 = v62;
  }

  v87 = &type metadata for HasValueOperator;
  v88 = sub_1CA60F140();
  *(v13 + 16) = v25;
  sub_1CA27F268(&v85, v13 + 40 * v24 + 32);
  v26 = v24 + 2;
  if ((v24 + 2) > *(v13 + 24) >> 1)
  {
    sub_1CA2E55BC();
    v13 = v63;
  }

  v87 = &type metadata for HasNoValueOperator;
  v88 = sub_1CA60F194();
  *(v13 + 16) = v26;
  sub_1CA27F268(&v85, v13 + 40 * v25 + 32);
  v27 = *(v13 + 24);
  v28 = v24 + 3;
  sub_1CA94C218();
  v29 = a3;
  v30 = a4;
  if ((v24 + 3) > (v27 >> 1))
  {
    sub_1CA2E55BC();
    v13 = v64;
  }

  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447500, &qword_1CA98F940);
  v87 = v75;
  v31 = sub_1CA60FBEC();
  v88 = v31;
  v32 = swift_allocObject();
  *&v85 = v32;
  *(v32 + 16) = 2;
  v33 = a1;
  *(v32 + 24) = a1;
  *(v32 + 32) = a2;
  *(v32 + 40) = v29;
  *(v32 + 48) = v30;
  *(v13 + 16) = v28;
  sub_1CA27F268(&v85, v13 + 40 * v26 + 32);
  if ((v76 & 1) == 0)
  {
    v34 = *(v13 + 24);
    v35 = v24 + 4;
    sub_1CA94C218();
    v71 = v29;
    v36 = v30;
    if (v35 > (v34 >> 1))
    {
      sub_1CA2E55BC();
      v13 = v69;
    }

    v87 = v75;
    v88 = v31;
    v37 = swift_allocObject();
    *&v85 = v37;
    *(v37 + 16) = 3;
    *(v37 + 24) = a1;
    *(v37 + 32) = a2;
    *(v37 + 40) = v71;
    *(v37 + 48) = v36;
    *(v13 + 16) = v35;
    sub_1CA27F268(&v85, v13 + 40 * v28 + 32);
  }

  v38 = *(v13 + 16);
  v39 = *(v13 + 24);
  v40 = v38 + 1;
  sub_1CA94C218();
  v41 = v29;
  v42 = v30;
  if (v38 >= v39 >> 1)
  {
    sub_1CA2E55BC();
    v13 = v65;
  }

  v87 = v75;
  v88 = v31;
  v43 = swift_allocObject();
  *&v85 = v43;
  *(v43 + 16) = 0;
  v44 = a2;
  *(v43 + 24) = a1;
  *(v43 + 32) = a2;
  *(v43 + 40) = v41;
  *(v43 + 48) = v42;
  *(v13 + 16) = v40;
  sub_1CA27F268(&v85, v13 + 40 * v38 + 32);
  if (v76)
  {
    v45 = a1;
  }

  else
  {
    v46 = *(v13 + 24);
    v47 = v38 + 2;
    sub_1CA94C218();
    v77 = v41;
    v48 = v42;
    v49 = v40;
    if (v47 > (v46 >> 1))
    {
      sub_1CA2E55BC();
      v13 = v70;
    }

    v87 = v75;
    v88 = v31;
    v50 = swift_allocObject();
    *&v85 = v50;
    *(v50 + 16) = 1;
    v45 = v33;
    *(v50 + 24) = v33;
    *(v50 + 32) = a2;
    *(v50 + 40) = v77;
    *(v50 + 48) = v48;
    *(v13 + 16) = v47;
    v44 = a2;
    sub_1CA27F268(&v85, v13 + 40 * v49 + 32);
  }

  v51 = *(v13 + 16);
  v52 = *(v13 + 24);
  sub_1CA94C218();
  v53 = v41;
  v54 = v42;
  sub_1CA94C218();
  v55 = a7;
  v56 = a8;
  if (v51 >= v52 >> 1)
  {
    sub_1CA2E55BC();
    v13 = v66;
  }

  *&v81 = v45;
  *(&v81 + 1) = v44;
  *&v82 = v53;
  *(&v82 + 1) = v54;
  *&v83 = a5;
  *(&v83 + 1) = a6;
  *&v84 = v55;
  *(&v84 + 1) = v56;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447510, &qword_1CA98F948);
  v88 = sub_1CA60FC68();
  v57 = swift_allocObject();
  *&v85 = v57;
  v58 = v82;
  v57[1] = v81;
  v57[2] = v58;
  v59 = v84;
  v57[3] = v83;
  v57[4] = v59;
  *(v13 + 16) = v51 + 1;
  sub_1CA27F268(&v85, v13 + 40 * v51 + 32);
  *&v85 = v45;
  *(&v85 + 1) = v44;
  v86 = v53;
  v87 = v54;
  v88 = a5;
  v89 = a6;
  v90 = v55;
  v91 = v56;
  sub_1CA6102B4(&v81, v80, &qword_1EC447510, &qword_1CA98F948);
  sub_1CA30F7DC(&v85, &qword_1EC447510, &qword_1CA98F948);
  return v13;
}

uint64_t sub_1CA60AEFC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, id a7)
{
  v53 = [a7 isIrrational];
  if (v53)
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1CA94C218();
    sub_1CA2E55BC();
    v11 = v12;
    v13 = *(v12 + 16);
    v14 = v13 + 1;
    if (v13 >= *(v12 + 24) >> 1)
    {
      sub_1CA2E55BC();
      v11 = v46;
    }

    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E40, &qword_1CA98F950);
    v57 = sub_1CA60FCE4();
    *&v54 = a1;
    *(&v54 + 1) = a2;
    v55 = a3 & 1;
    *(v11 + 16) = v14;
    sub_1CA27F268(&v54, v11 + 40 * v13 + 32);
    v15 = *(v11 + 24);
    v16 = v13 + 2;
    sub_1CA94C218();
    if (v16 > (v15 >> 1))
    {
      sub_1CA2E55BC();
      v11 = v47;
    }

    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447530, &unk_1CA98F958);
    v57 = sub_1CA60FD60();
    *&v54 = a1;
    *(&v54 + 1) = a2;
    v55 = a3 & 1;
    *(v11 + 16) = v16;
    sub_1CA27F268(&v54, v11 + 40 * v14 + 32);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA2E55BC();
    v11 = v40;
  }

  v17 = *(v11 + 16);
  v18 = v17 + 1;
  if (v17 >= *(v11 + 24) >> 1)
  {
    sub_1CA2E55BC();
    v11 = v41;
  }

  v56 = &type metadata for HasValueOperator;
  v57 = sub_1CA60F140();
  *(v11 + 16) = v18;
  sub_1CA27F268(&v54, v11 + 40 * v17 + 32);
  v19 = v17 + 2;
  if ((v17 + 2) > *(v11 + 24) >> 1)
  {
    sub_1CA2E55BC();
    v11 = v42;
  }

  v56 = &type metadata for HasNoValueOperator;
  v57 = sub_1CA60F194();
  *(v11 + 16) = v19;
  sub_1CA27F268(&v54, v11 + 40 * v18 + 32);
  v20 = *(v11 + 24);
  v21 = v17 + 3;
  sub_1CA94C218();
  if ((v17 + 3) > (v20 >> 1))
  {
    sub_1CA2E55BC();
    v11 = v43;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E30, &unk_1CA985F40);
  v56 = v22;
  v23 = sub_1CA60FDDC();
  v57 = v23;
  v24 = swift_allocObject();
  *&v54 = v24;
  *(v24 + 16) = 2;
  *(v24 + 24) = a1;
  *(v24 + 32) = a2;
  v25 = a3 & 1;
  *(v24 + 40) = v25;
  *(v11 + 16) = v21;
  sub_1CA27F268(&v54, v11 + 40 * v19 + 32);
  v50 = a1;
  if ((v53 & 1) == 0)
  {
    v26 = a5;
    v27 = *(v11 + 24);
    sub_1CA94C218();
    if ((v17 + 4) > (v27 >> 1))
    {
      sub_1CA2E55BC();
      v11 = v48;
    }

    a5 = v26;
    v56 = v22;
    v57 = v23;
    v28 = swift_allocObject();
    *&v54 = v28;
    *(v28 + 16) = 3;
    a1 = v50;
    *(v28 + 24) = v50;
    *(v28 + 32) = a2;
    *(v28 + 40) = v25;
    *(v11 + 16) = v17 + 4;
    sub_1CA27F268(&v54, v11 + 40 * v21 + 32);
  }

  v29 = *(v11 + 16);
  v30 = *(v11 + 24);
  v31 = v29 + 1;
  sub_1CA94C218();
  if (v29 >= v30 >> 1)
  {
    sub_1CA2E55BC();
    v11 = v44;
  }

  v56 = v22;
  v57 = v23;
  v32 = swift_allocObject();
  *&v54 = v32;
  *(v32 + 16) = 0;
  *(v32 + 24) = a1;
  *(v32 + 32) = a2;
  *(v32 + 40) = v25;
  *(v11 + 16) = v31;
  sub_1CA27F268(&v54, v11 + 40 * v29 + 32);
  if ((v53 & 1) == 0)
  {
    v33 = a5;
    v34 = *(v11 + 24);
    sub_1CA94C218();
    if ((v29 + 2) > (v34 >> 1))
    {
      sub_1CA2E55BC();
      v11 = v49;
    }

    a5 = v33;
    v56 = v22;
    v57 = v23;
    v35 = swift_allocObject();
    *&v54 = v35;
    *(v35 + 16) = 1;
    a1 = v50;
    *(v35 + 24) = v50;
    *(v35 + 32) = a2;
    *(v35 + 40) = v25;
    *(v11 + 16) = v29 + 2;
    sub_1CA27F268(&v54, v11 + 40 * v31 + 32);
  }

  v36 = *(v11 + 16);
  v37 = *(v11 + 24);
  sub_1CA94C218();
  sub_1CA94C218();
  if (v36 >= v37 >> 1)
  {
    sub_1CA2E55BC();
    v11 = v45;
  }

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447550, &qword_1CA98F968);
  v57 = sub_1CA60FE58();
  v38 = swift_allocObject();
  *&v54 = v38;
  *(v38 + 16) = a1;
  *(v38 + 24) = a2;
  *(v38 + 32) = v25;
  *(v38 + 40) = a4;
  *(v38 + 48) = a5;
  *(v38 + 56) = a6 & 1;
  *(v11 + 16) = v36 + 1;
  sub_1CA27F268(&v54, v11 + 40 * v36 + 32);
  return v11;
}

uint64_t sub_1CA60B460(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, id a7)
{
  v58 = [a7 isIrrational];
  if (v58)
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v11 = a3;
    sub_1CA94C218();
    sub_1CA2E55BC();
    v10 = v12;
    v13 = *(v12 + 16);
    v14 = v13 + 1;
    if (v13 >= *(v12 + 24) >> 1)
    {
      sub_1CA2E55BC();
      v10 = v51;
    }

    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447560, &qword_1CA98F970);
    *&v60 = a1;
    *(&v60 + 1) = a2;
    v63 = sub_1CA60FED4();
    v61 = a3;
    *(v10 + 16) = v14;
    sub_1CA27F268(&v60, v10 + 40 * v13 + 32);
    v15 = *(v10 + 24);
    v16 = v13 + 2;
    sub_1CA94C218();
    v17 = v11;
    if (v16 > (v15 >> 1))
    {
      sub_1CA2E55BC();
      v10 = v52;
    }

    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447570, &qword_1CA98F978);
    v18 = sub_1CA60FF50();
    *&v60 = a1;
    *(&v60 + 1) = a2;
    v63 = v18;
    v61 = a3;
    *(v10 + 16) = v16;
    sub_1CA27F268(&v60, v10 + 40 * v14 + 32);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA2E55BC();
    v10 = v45;
  }

  v19 = *(v10 + 16);
  v20 = v19 + 1;
  if (v19 >= *(v10 + 24) >> 1)
  {
    sub_1CA2E55BC();
    v10 = v46;
  }

  v62 = &type metadata for HasValueOperator;
  v63 = sub_1CA60F140();
  *(v10 + 16) = v20;
  sub_1CA27F268(&v60, v10 + 40 * v19 + 32);
  v21 = v19 + 2;
  v57 = a6;
  if ((v19 + 2) > *(v10 + 24) >> 1)
  {
    sub_1CA2E55BC();
    v10 = v47;
  }

  v62 = &type metadata for HasNoValueOperator;
  v63 = sub_1CA60F194();
  *(v10 + 16) = v21;
  sub_1CA27F268(&v60, v10 + 40 * v20 + 32);
  v22 = *(v10 + 24);
  v23 = v19 + 3;
  sub_1CA94C218();
  v24 = a3;
  if ((v19 + 3) > (v22 >> 1))
  {
    sub_1CA2E55BC();
    v10 = v48;
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447580, &qword_1CA98F980);
  v62 = v25;
  v26 = sub_1CA60FFCC();
  v63 = v26;
  v27 = swift_allocObject();
  *&v60 = v27;
  *(v27 + 16) = 2;
  *(v27 + 24) = a1;
  *(v27 + 32) = a2;
  *(v27 + 40) = a3;
  *(v10 + 16) = v23;
  sub_1CA27F268(&v60, v10 + 40 * v21 + 32);
  if ((v58 & 1) == 0)
  {
    v28 = *(v10 + 24);
    sub_1CA94C218();
    v29 = v24;
    if ((v19 + 4) > (v28 >> 1))
    {
      sub_1CA2E55BC();
      v10 = v53;
    }

    v62 = v25;
    v63 = v26;
    v30 = swift_allocObject();
    *&v60 = v30;
    *(v30 + 16) = 3;
    *(v30 + 24) = a1;
    *(v30 + 32) = a2;
    *(v30 + 40) = a3;
    *(v10 + 16) = v19 + 4;
    sub_1CA27F268(&v60, v10 + 40 * v23 + 32);
  }

  v32 = *(v10 + 16);
  v31 = *(v10 + 24);
  v33 = v32 + 1;
  sub_1CA94C218();
  v34 = v24;
  if (v32 >= v31 >> 1)
  {
    sub_1CA2E55BC();
    v10 = v49;
  }

  v62 = v25;
  v63 = v26;
  v35 = swift_allocObject();
  *&v60 = v35;
  *(v35 + 16) = 0;
  *(v35 + 24) = a1;
  *(v35 + 32) = a2;
  *(v35 + 40) = a3;
  *(v10 + 16) = v33;
  sub_1CA27F268(&v60, v10 + 40 * v32 + 32);
  if ((v58 & 1) == 0)
  {
    v36 = *(v10 + 24);
    sub_1CA94C218();
    v37 = v34;
    if ((v32 + 2) > (v36 >> 1))
    {
      sub_1CA2E55BC();
      v10 = v54;
    }

    v62 = v25;
    v63 = v26;
    v38 = swift_allocObject();
    *&v60 = v38;
    *(v38 + 16) = 1;
    *(v38 + 24) = a1;
    *(v38 + 32) = a2;
    *(v38 + 40) = a3;
    *(v10 + 16) = v32 + 2;
    sub_1CA27F268(&v60, v10 + 40 * v33 + 32);
  }

  v39 = *(v10 + 16);
  v40 = *(v10 + 24);
  sub_1CA94C218();
  v41 = v34;
  sub_1CA94C218();
  v42 = v57;
  if (v39 >= v40 >> 1)
  {
    sub_1CA2E55BC();
    v10 = v50;
  }

  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447590, &qword_1CA98F988);
  v63 = sub_1CA610048();
  v43 = swift_allocObject();
  *&v60 = v43;
  v43[2] = a1;
  v43[3] = a2;
  v43[4] = a3;
  v43[5] = a4;
  v43[6] = a5;
  v43[7] = v57;
  *(v10 + 16) = v39 + 1;
  sub_1CA27F268(&v60, v10 + 40 * v39 + 32);
  return v10;
}

uint64_t sub_1CA60B9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  *&v56 = a7;
  *(&v56 + 1) = a8;
  *&v58 = a3;
  *(&v58 + 1) = a4;
  v11 = [a9 isIrrational];
  if (v11)
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1CA94C218();
    sub_1CA2E55BC();
    v12 = v13;
    v14 = *(v13 + 16);
    v15 = v14 + 1;
    if (v14 >= *(v13 + 24) >> 1)
    {
      sub_1CA2E55BC();
      v12 = v51;
    }

    *(&v64 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4475A0, &qword_1CA98F990);
    v65 = sub_1CA6100C4();
    v16 = swift_allocObject();
    *&v63 = v16;
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;
    *(v16 + 32) = v58;
    *(v12 + 16) = v15;
    sub_1CA27F268(&v63, v12 + 40 * v14 + 32);
    v17 = *(v12 + 24);
    v18 = v14 + 2;
    sub_1CA94C218();
    if (v18 > (v17 >> 1))
    {
      sub_1CA2E55BC();
      v12 = v52;
    }

    *(&v64 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4475B0, &qword_1CA98F998);
    v65 = sub_1CA610140();
    v19 = swift_allocObject();
    *&v63 = v19;
    *(v19 + 16) = a1;
    *(v19 + 24) = a2;
    *(v19 + 32) = v58;
    *(v12 + 16) = v18;
    sub_1CA27F268(&v63, v12 + 40 * v15 + 32);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA2E55BC();
    v12 = v45;
  }

  v20 = *(v12 + 16);
  v21 = v20 + 1;
  if (v20 >= *(v12 + 24) >> 1)
  {
    sub_1CA2E55BC();
    v12 = v46;
  }

  *(&v64 + 1) = &type metadata for HasValueOperator;
  v65 = sub_1CA60F140();
  *(v12 + 16) = v21;
  sub_1CA27F268(&v63, v12 + 40 * v20 + 32);
  v22 = v20 + 2;
  if ((v20 + 2) > *(v12 + 24) >> 1)
  {
    sub_1CA2E55BC();
    v12 = v47;
  }

  *(&v64 + 1) = &type metadata for HasNoValueOperator;
  v65 = sub_1CA60F194();
  *(v12 + 16) = v22;
  sub_1CA27F268(&v63, v12 + 40 * v21 + 32);
  v23 = *(v12 + 24);
  v24 = v20 + 3;
  sub_1CA94C218();
  if ((v20 + 3) > (v23 >> 1))
  {
    sub_1CA2E55BC();
    v12 = v48;
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4475C0, &qword_1CA98F9A0);
  *(&v64 + 1) = v25;
  v26 = sub_1CA6101BC();
  v65 = v26;
  v27 = swift_allocObject();
  *&v63 = v27;
  *(v27 + 16) = 2;
  *(v27 + 24) = a1;
  *(v27 + 32) = a2;
  *(v27 + 40) = v58;
  *(v12 + 16) = v24;
  sub_1CA27F268(&v63, v12 + 40 * v22 + 32);
  if (v11)
  {
    v28 = a2;
  }

  else
  {
    v29 = a1;
    v30 = *(v12 + 24);
    v31 = v20 + 4;
    sub_1CA94C218();
    v28 = a2;
    if (v31 > (v30 >> 1))
    {
      sub_1CA2E55BC();
      v12 = v53;
    }

    *(&v64 + 1) = v25;
    v65 = v26;
    v32 = swift_allocObject();
    *&v63 = v32;
    *(v32 + 16) = 3;
    a1 = v29;
    *(v32 + 24) = v29;
    *(v32 + 32) = a2;
    *(v32 + 40) = v58;
    *(v12 + 16) = v31;
    sub_1CA27F268(&v63, v12 + 40 * v24 + 32);
  }

  v33 = *(v12 + 16);
  v34 = *(v12 + 24);
  v35 = v33 + 1;
  sub_1CA94C218();
  if (v33 >= v34 >> 1)
  {
    sub_1CA2E55BC();
    v12 = v49;
  }

  *(&v64 + 1) = v25;
  v65 = v26;
  v36 = swift_allocObject();
  *&v63 = v36;
  *(v36 + 16) = 0;
  *(v36 + 24) = a1;
  *(v36 + 32) = v28;
  *(v36 + 40) = v58;
  *(v12 + 16) = v35;
  sub_1CA27F268(&v63, v12 + 40 * v33 + 32);
  if ((v11 & 1) == 0)
  {
    v37 = *(v12 + 24);
    v38 = v33 + 2;
    sub_1CA94C218();
    if (v38 > (v37 >> 1))
    {
      sub_1CA2E55BC();
      v12 = v54;
    }

    *(&v64 + 1) = v25;
    v65 = v26;
    v39 = swift_allocObject();
    *&v63 = v39;
    *(v39 + 16) = 1;
    *(v39 + 24) = a1;
    *(v39 + 32) = v28;
    *(v39 + 40) = v58;
    *(v12 + 16) = v38;
    sub_1CA27F268(&v63, v12 + 40 * v35 + 32);
  }

  v41 = *(v12 + 16);
  v40 = *(v12 + 24);
  sub_1CA94C218();
  sub_1CA94C218();
  if (v41 >= v40 >> 1)
  {
    sub_1CA2E55BC();
    v12 = v50;
  }

  *&v60[0] = a1;
  *(&v60[0] + 1) = v28;
  v60[1] = v58;
  *&v61 = a5;
  *(&v61 + 1) = a6;
  v62 = v56;
  *(&v64 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4475D0, &qword_1CA98F9A8);
  v65 = sub_1CA610238();
  v42 = swift_allocObject();
  *&v63 = v42;
  v42[1] = v60[0];
  v42[2] = v58;
  v43 = v62;
  v42[3] = v61;
  v42[4] = v43;
  *(v12 + 16) = v41 + 1;
  sub_1CA27F268(&v63, v12 + 40 * v41 + 32);
  *&v63 = a1;
  *(&v63 + 1) = v28;
  v64 = v58;
  v65 = a5;
  v66 = a6;
  v67 = v56;
  sub_1CA6102B4(v60, v59, &qword_1EC4475D0, &qword_1CA98F9A8);
  sub_1CA30F7DC(&v63, &qword_1EC4475D0, &qword_1CA98F9A8);
  return v12;
}

uint64_t sub_1CA60BFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5)
{
  v8 = [a5 isIrrational];
  if (v8)
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1CA94C218();
    sub_1CA2E55BC();
    v9 = v10;
    v11 = *(v10 + 16);
    v12 = v11 + 1;
    if (v11 >= *(v10 + 24) >> 1)
    {
      sub_1CA2E55BC();
      v9 = v36;
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4475E0, &qword_1CA98F9B0);
    v45 = sub_1CA610318();
    *&v42 = a1;
    *(&v42 + 1) = a2;
    *(v9 + 16) = v12;
    sub_1CA27F268(&v42, v9 + 40 * v11 + 32);
    v13 = *(v9 + 24);
    sub_1CA94C218();
    if ((v11 + 2) > (v13 >> 1))
    {
      sub_1CA2E55BC();
      v9 = v37;
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4475F0, &qword_1CA98F9B8);
    v45 = sub_1CA610394();
    *&v42 = a1;
    *(&v42 + 1) = a2;
    *(v9 + 16) = v11 + 2;
    sub_1CA27F268(&v42, v9 + 40 * v12 + 32);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA2E55BC();
    v9 = v30;
  }

  v14 = *(v9 + 16);
  v15 = v14 + 1;
  v41 = a4;
  if (v14 >= *(v9 + 24) >> 1)
  {
    sub_1CA2E55BC();
    v9 = v31;
  }

  v44 = &type metadata for HasValueOperator;
  v45 = sub_1CA60F140();
  *(v9 + 16) = v15;
  sub_1CA27F268(&v42, v9 + 40 * v14 + 32);
  v16 = v14 + 2;
  if ((v14 + 2) > *(v9 + 24) >> 1)
  {
    sub_1CA2E55BC();
    v9 = v32;
  }

  v44 = &type metadata for HasNoValueOperator;
  v45 = sub_1CA60F194();
  *(v9 + 16) = v16;
  sub_1CA27F268(&v42, v9 + 40 * v15 + 32);
  v17 = *(v9 + 24);
  v18 = v14 + 3;
  sub_1CA94C218();
  if ((v14 + 3) > (v17 >> 1))
  {
    sub_1CA2E55BC();
    v9 = v33;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447600, &qword_1CA98F9C0);
  v44 = v19;
  v20 = sub_1CA610410();
  v45 = v20;
  LOBYTE(v42) = 2;
  *(&v42 + 1) = a1;
  v43 = a2;
  *(v9 + 16) = v18;
  sub_1CA27F268(&v42, v9 + 40 * v16 + 32);
  if ((v8 & 1) == 0)
  {
    v21 = *(v9 + 24);
    sub_1CA94C218();
    if ((v14 + 4) > (v21 >> 1))
    {
      sub_1CA2E55BC();
      v9 = v38;
    }

    v44 = v19;
    v45 = v20;
    LOBYTE(v42) = 3;
    *(&v42 + 1) = a1;
    v43 = a2;
    *(v9 + 16) = v14 + 4;
    sub_1CA27F268(&v42, v9 + 40 * v18 + 32);
  }

  v23 = *(v9 + 16);
  v22 = *(v9 + 24);
  v24 = v23 + 1;
  sub_1CA94C218();
  if (v23 >= v22 >> 1)
  {
    sub_1CA2E55BC();
    v9 = v34;
  }

  v44 = v19;
  v45 = v20;
  LOBYTE(v42) = 0;
  *(&v42 + 1) = a1;
  v43 = a2;
  *(v9 + 16) = v24;
  sub_1CA27F268(&v42, v9 + 40 * v23 + 32);
  if ((v8 & 1) == 0)
  {
    v25 = *(v9 + 24);
    sub_1CA94C218();
    if ((v23 + 2) > (v25 >> 1))
    {
      sub_1CA2E55BC();
      v9 = v39;
    }

    v44 = v19;
    v45 = v20;
    LOBYTE(v42) = 1;
    *(&v42 + 1) = a1;
    v43 = a2;
    *(v9 + 16) = v23 + 2;
    sub_1CA27F268(&v42, v9 + 40 * v24 + 32);
  }

  v26 = *(v9 + 16);
  v27 = *(v9 + 24);
  sub_1CA94C218();
  sub_1CA94C218();
  if (v26 >= v27 >> 1)
  {
    sub_1CA2E55BC();
    v9 = v35;
  }

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447610, &qword_1CA98F9C8);
  v45 = sub_1CA61048C();
  v28 = swift_allocObject();
  *&v42 = v28;
  v28[2] = a1;
  v28[3] = a2;
  v28[4] = a3;
  v28[5] = v41;
  *(v9 + 16) = v26 + 1;
  sub_1CA27F268(&v42, v9 + 40 * v26 + 32);
  return v9;
}

uint64_t sub_1CA60C498(void *a1)
{
  v1 = [a1 count];
  v24 = MEMORY[0x1E69E7CC0];
  sub_1CA2B8DF8(0, v1 & ~(v1 >> 63), 0);
  v2 = v24;
  v3 = sub_1CA948AF8();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1CA94CBC8();
  if (v1 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v18[0] = v5;
  v18[1] = v18;
  if (v1)
  {
    sub_1CA60EEC4();
    do
    {
      result = sub_1CA94D148();
      if (!v22)
      {
        goto LABEL_15;
      }

      sub_1CA25B374(&v21, &v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A70, &unk_1CA9843A0);
      swift_dynamicCast();
      __swift_destroy_boxed_opaque_existential_0(&v21);
      v10 = v23;
      v24 = v2;
      v12 = *(v2 + 16);
      v11 = *(v2 + 24);
      if (v12 >= v11 >> 1)
      {
        v13 = OUTLINED_FUNCTION_64(v11);
        sub_1CA2B8DF8(v13, v12 + 1, 1);
        v2 = v24;
      }

      *(v2 + 16) = v12 + 1;
      *(v2 + 8 * v12 + 32) = v10;
    }

    while (--v1);
  }

  sub_1CA60EEC4();
  while (1)
  {
    sub_1CA94D148();
    if (!v20)
    {
      break;
    }

    sub_1CA2C0A20(&v19, &v21);
    sub_1CA25B374(&v21, &v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443A70, &unk_1CA9843A0);
    swift_dynamicCast();
    __swift_destroy_boxed_opaque_existential_0(&v21);
    v14 = v23;
    v24 = v2;
    v16 = *(v2 + 16);
    v15 = *(v2 + 24);
    if (v16 >= v15 >> 1)
    {
      v17 = OUTLINED_FUNCTION_64(v15);
      sub_1CA2B8DF8(v17, v16 + 1, 1);
      v2 = v24;
    }

    *(v2 + 16) = v16 + 1;
    *(v2 + 8 * v16 + 32) = v14;
  }

  (*(v18[0] + 8))(v8, v3);
  sub_1CA30F7DC(&v19, &unk_1EC444650, &unk_1CA981C70);
  return v2;
}

id sub_1CA60C764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1CA94C368();

  v6 = [v3 initWithPropertyName:v5 propertyUserInfo:a3];

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_1CA60C7CC(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_5();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  result = sub_1CA94C218();
  v10 = 0;
  while (v6)
  {
LABEL_9:
    if (*(a2 + 16))
    {
      v6 &= v6 - 1;
      sub_1CA94C218();
      v12 = OUTLINED_FUNCTION_69();
      sub_1CA271BF8(v12, v13);
      v15 = v14;

      if (v15)
      {
        continue;
      }
    }

    return 0;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return 1;
    }

    v6 = *(a1 + 64 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA60C8D8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1CA94D778();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447350, &unk_1CA981A30);
        v6 = sub_1CA94C6C8();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1CA60CAB8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1CA60C9DC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1CA60C9DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_1CA94D7F8();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v12 + 32);
        v15 = *(v12 + 16);
        result = *(v12 + 24);
        *(v12 + 24) = *v12;
        *(v12 + 40) = v15;
        *v12 = result;
        *(v12 + 8) = v14;
        v10 = v14;
        v12 -= 24;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1CA60CAB8(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_1CA94D7F8();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_1CA94D7F8()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = v24 + v21;
              v27 = *v25;
              v28 = *(v25 + 1);
              v29 = *(v26 - 24);
              v25[2] = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v30 = a3[1];
      if (v7 < v30)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = v9 + a4;
          }

          if (v31 < v9)
          {
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            return;
          }

          if (v7 != v31)
          {
            v32 = *a3;
            v33 = *a3 + 24 * v7 - 24;
            v94 = v9;
            v34 = v9 - v7;
            do
            {
              v35 = (v32 + 24 * v7);
              v36 = *v35;
              v37 = v35[1];
              v38 = v34;
              v39 = v33;
              do
              {
                v40 = v36 == *v39 && v37 == *(v39 + 8);
                if (v40 || (sub_1CA94D7F8() & 1) == 0)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_125;
                }

                v41 = *(v39 + 32);
                v42 = *(v39 + 16);
                v36 = *(v39 + 24);
                *(v39 + 24) = *v39;
                *(v39 + 40) = v42;
                *v39 = v36;
                *(v39 + 8) = v41;
                v37 = v41;
                v39 -= 24;
              }

              while (!__CFADD__(v38++, 1));
              ++v7;
              v33 += 24;
              --v34;
            }

            while (v7 != v31);
            v7 = v31;
            v9 = v94;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CA2E49C0(0, v8[2] + 1, 1, v8);
        v8 = v89;
      }

      v45 = v8[2];
      v44 = v8[3];
      v46 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        sub_1CA2E49C0(v44 > 1, v45 + 1, 1, v8);
        v8 = v90;
      }

      v8[2] = v46;
      v47 = v8 + 4;
      v48 = &v8[2 * v45 + 4];
      *v48 = v9;
      v48[1] = v7;
      v95 = *result;
      if (!*result)
      {
        goto LABEL_128;
      }

      if (v45)
      {
        v93 = v8 + 4;
        while (1)
        {
          v49 = v46 - 1;
          v50 = &v47[2 * v46 - 2];
          v51 = &v8[2 * v46];
          if (v46 >= 4)
          {
            break;
          }

          if (v46 == 3)
          {
            v52 = v8[4];
            v53 = v8[5];
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
LABEL_70:
            if (v55)
            {
              goto LABEL_110;
            }

            v67 = *v51;
            v66 = v51[1];
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_113;
            }

            v71 = v50[1];
            v72 = v71 - *v50;
            if (__OFSUB__(v71, *v50))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v69, v72))
            {
              goto LABEL_118;
            }

            if (v69 + v72 >= v54)
            {
              if (v54 < v72)
              {
                v49 = v46 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v46 < 2)
          {
            goto LABEL_112;
          }

          v74 = *v51;
          v73 = v51[1];
          v62 = __OFSUB__(v73, v74);
          v69 = v73 - v74;
          v70 = v62;
LABEL_85:
          if (v70)
          {
            goto LABEL_115;
          }

          v76 = *v50;
          v75 = v50[1];
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_117;
          }

          if (v77 < v69)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v49 - 1 >= v46)
          {
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v81 = &v47[2 * v49 - 2];
          v82 = *v81;
          v83 = v49;
          v84 = &v47[2 * v49];
          v85 = v84[1];
          sub_1CA60D140((*a3 + 24 * *v81), (*a3 + 24 * *v84), *a3 + 24 * v85, v95);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v85 < v82)
          {
            goto LABEL_105;
          }

          v86 = v8;
          v87 = v8[2];
          if (v83 > v87)
          {
            goto LABEL_106;
          }

          *v81 = v82;
          v81[1] = v85;
          if (v83 >= v87)
          {
            goto LABEL_107;
          }

          v46 = v87 - 1;
          memmove(v84, v84 + 2, 16 * (v87 - 1 - v83));
          v86[2] = v87 - 1;
          v88 = v87 > 2;
          v8 = v86;
          v5 = 0;
          v47 = v93;
          if (!v88)
          {
            goto LABEL_99;
          }
        }

        v56 = &v47[2 * v46];
        v57 = *(v56 - 8);
        v58 = *(v56 - 7);
        v62 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        if (v62)
        {
          goto LABEL_108;
        }

        v61 = *(v56 - 6);
        v60 = *(v56 - 5);
        v62 = __OFSUB__(v60, v61);
        v54 = v60 - v61;
        v55 = v62;
        if (v62)
        {
          goto LABEL_109;
        }

        v63 = v51[1];
        v64 = v63 - *v51;
        if (__OFSUB__(v63, *v51))
        {
          goto LABEL_111;
        }

        v62 = __OFADD__(v54, v64);
        v65 = v54 + v64;
        if (v62)
        {
          goto LABEL_114;
        }

        if (v65 >= v59)
        {
          v79 = *v50;
          v78 = v50[1];
          v62 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v62)
          {
            goto LABEL_119;
          }

          if (v54 < v80)
          {
            v49 = v46 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v97 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_129;
  }

  sub_1CA60D008(&v97, *result, a3);
LABEL_103:
}

uint64_t sub_1CA60D008(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1CA627610();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1CA60D140((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1CA60D140(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1CA43F004(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1CA94D7F8() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 24;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 24;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 24;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_17;
  }

  sub_1CA43F004(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_19:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v17 = *(v10 - 3) == *(v6 - 3) && *(v10 - 2) == *(v6 - 2);
    if (!v17 && (sub_1CA94D7F8() & 1) != 0)
    {
      v12 = v5 + 24 == v6;
      v6 -= 24;
      if (!v12)
      {
        v19 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v19;
        v6 = v15;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 24))
    {
      v18 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v18;
    }

    v10 -= 24;
  }

LABEL_36:
  v20 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v20])
  {
    memmove(v6, v4, 24 * v20);
  }

  return 1;
}

uint64_t sub_1CA60D32C()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_29_6(v8, v9, v6);
  OUTLINED_FUNCTION_7_0();
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v10;
  v14 = v11;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4457E0, &qword_1CA990910);
  if ((OUTLINED_FUNCTION_39_0(v15) & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_1CA271BF8(v1, v7);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_1CA94D878();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  if (v14)
  {
    *(*(*v5 + 56) + 8 * v13) = v0;
    OUTLINED_FUNCTION_36();

    return swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_62_8();
    v3();
    OUTLINED_FUNCTION_36();

    return sub_1CA94C218();
  }
}

uint64_t sub_1CA60D430()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_29_6(v6, v7, v4);
  OUTLINED_FUNCTION_7_0();
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v8;
  v12 = v9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4457E0, &qword_1CA990910);
  if ((OUTLINED_FUNCTION_39_0(v13) & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1CA271BF8(v1, v5);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1CA94D878();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v3;
  if (v12)
  {
    *(v16[7] + 8 * v11) = v0;
    OUTLINED_FUNCTION_36();

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1CA32F5C0(v11, v1, v5, v0, v16);
    OUTLINED_FUNCTION_36();

    return sub_1CA94C218();
  }
}

unint64_t sub_1CA60D538()
{
  result = qword_1EC4471A0;
  if (!qword_1EC4471A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4471A0);
  }

  return result;
}

unint64_t sub_1CA60D5B8(uint64_t a1)
{
  result = sub_1CA60D5E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60D5E0()
{
  result = qword_1EC4471B0;
  if (!qword_1EC4471B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4471B0);
  }

  return result;
}

unint64_t sub_1CA60D634(uint64_t a1)
{
  result = sub_1CA60D65C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60D65C()
{
  result = qword_1EC4471B8;
  if (!qword_1EC4471B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4471B8);
  }

  return result;
}

unint64_t sub_1CA60D6B4()
{
  result = qword_1EC4471C0;
  if (!qword_1EC4471C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4471C0);
  }

  return result;
}

unint64_t sub_1CA60D708(uint64_t a1)
{
  result = sub_1CA60D730();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60D730()
{
  result = qword_1EC4471C8;
  if (!qword_1EC4471C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4471C8);
  }

  return result;
}

unint64_t sub_1CA60D784(uint64_t a1)
{
  result = sub_1CA60D7AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60D7AC()
{
  result = qword_1EC4471D0;
  if (!qword_1EC4471D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4471D0);
  }

  return result;
}

unint64_t sub_1CA60D804()
{
  result = qword_1EC4471D8;
  if (!qword_1EC4471D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4471D8);
  }

  return result;
}

unint64_t sub_1CA60D858(uint64_t a1)
{
  result = sub_1CA60D880();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60D880()
{
  result = qword_1EC4471E0;
  if (!qword_1EC4471E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4471E0);
  }

  return result;
}

unint64_t sub_1CA60D8D4(uint64_t a1)
{
  result = sub_1CA60D8FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60D8FC()
{
  result = qword_1EC4471E8;
  if (!qword_1EC4471E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4471E8);
  }

  return result;
}

unint64_t sub_1CA60D954()
{
  result = qword_1EC4471F0;
  if (!qword_1EC4471F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4471F0);
  }

  return result;
}

unint64_t sub_1CA60D9A8(uint64_t a1)
{
  result = sub_1CA60D9D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60D9D0()
{
  result = qword_1EC4471F8;
  if (!qword_1EC4471F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4471F8);
  }

  return result;
}

unint64_t sub_1CA60DA24(uint64_t a1)
{
  result = sub_1CA60DA4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60DA4C()
{
  result = qword_1EC447200;
  if (!qword_1EC447200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447200);
  }

  return result;
}

unint64_t sub_1CA60DAA4()
{
  result = qword_1EC447208;
  if (!qword_1EC447208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447208);
  }

  return result;
}

unint64_t sub_1CA60DAF8(uint64_t a1)
{
  result = sub_1CA60DB20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60DB20()
{
  result = qword_1EC447210;
  if (!qword_1EC447210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447210);
  }

  return result;
}

unint64_t sub_1CA60DB74(uint64_t a1)
{
  result = sub_1CA60DB9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60DB9C()
{
  result = qword_1EC447218;
  if (!qword_1EC447218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447218);
  }

  return result;
}

unint64_t sub_1CA60DBF4()
{
  result = qword_1EC447220;
  if (!qword_1EC447220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447220);
  }

  return result;
}

unint64_t sub_1CA60DC48(uint64_t a1)
{
  result = sub_1CA60DC70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60DC70()
{
  result = qword_1EC447228;
  if (!qword_1EC447228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447228);
  }

  return result;
}

unint64_t sub_1CA60DCC4(uint64_t a1)
{
  result = sub_1CA60DCEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60DCEC()
{
  result = qword_1EC447230;
  if (!qword_1EC447230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447230);
  }

  return result;
}

unint64_t sub_1CA60DD44()
{
  result = qword_1EC447238;
  if (!qword_1EC447238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447238);
  }

  return result;
}

unint64_t sub_1CA60DD98(uint64_t a1)
{
  result = sub_1CA60DDC0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60DDC0()
{
  result = qword_1EC447240;
  if (!qword_1EC447240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447240);
  }

  return result;
}

unint64_t sub_1CA60DE14(uint64_t a1)
{
  result = sub_1CA60DE3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60DE3C()
{
  result = qword_1EC447248;
  if (!qword_1EC447248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447248);
  }

  return result;
}

unint64_t sub_1CA60DE94()
{
  result = qword_1EC447250;
  if (!qword_1EC447250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447250);
  }

  return result;
}

unint64_t sub_1CA60DEE8(uint64_t a1)
{
  result = sub_1CA60DF10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60DF10()
{
  result = qword_1EC447258;
  if (!qword_1EC447258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447258);
  }

  return result;
}

unint64_t sub_1CA60DF64(uint64_t a1)
{
  result = sub_1CA60DF8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60DF8C()
{
  result = qword_1EC447260;
  if (!qword_1EC447260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447260);
  }

  return result;
}

unint64_t sub_1CA60DFE4()
{
  result = qword_1EC447268;
  if (!qword_1EC447268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447268);
  }

  return result;
}

unint64_t sub_1CA60E038(uint64_t a1)
{
  result = sub_1CA60E060();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E060()
{
  result = qword_1EC447270;
  if (!qword_1EC447270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447270);
  }

  return result;
}

unint64_t sub_1CA60E0B4(uint64_t a1)
{
  result = sub_1CA60E0DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E0DC()
{
  result = qword_1EC447278;
  if (!qword_1EC447278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447278);
  }

  return result;
}

unint64_t sub_1CA60E134()
{
  result = qword_1EC447280;
  if (!qword_1EC447280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447280);
  }

  return result;
}

unint64_t sub_1CA60E188(uint64_t a1)
{
  result = sub_1CA60E1B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E1B0()
{
  result = qword_1EC447288;
  if (!qword_1EC447288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447288);
  }

  return result;
}

unint64_t sub_1CA60E204(uint64_t a1)
{
  result = sub_1CA60E22C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E22C()
{
  result = qword_1EC447290;
  if (!qword_1EC447290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447290);
  }

  return result;
}

unint64_t sub_1CA60E284()
{
  result = qword_1EC447298;
  if (!qword_1EC447298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447298);
  }

  return result;
}

unint64_t sub_1CA60E2D8(uint64_t a1)
{
  result = sub_1CA60E300();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E300()
{
  result = qword_1EC4472A0;
  if (!qword_1EC4472A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4472A0);
  }

  return result;
}

unint64_t sub_1CA60E354(uint64_t a1)
{
  result = sub_1CA60E37C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E37C()
{
  result = qword_1EC4472A8;
  if (!qword_1EC4472A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4472A8);
  }

  return result;
}

unint64_t sub_1CA60E3D4()
{
  result = qword_1EC4472B0;
  if (!qword_1EC4472B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4472B0);
  }

  return result;
}

unint64_t sub_1CA60E428(uint64_t a1)
{
  result = sub_1CA60E450();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E450()
{
  result = qword_1EC4472B8;
  if (!qword_1EC4472B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4472B8);
  }

  return result;
}

unint64_t sub_1CA60E4A4(uint64_t a1)
{
  result = sub_1CA60E4CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E4CC()
{
  result = qword_1EC4472C0;
  if (!qword_1EC4472C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4472C0);
  }

  return result;
}

unint64_t sub_1CA60E524()
{
  result = qword_1EC4472C8;
  if (!qword_1EC4472C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4472C8);
  }

  return result;
}

unint64_t sub_1CA60E578(uint64_t a1)
{
  result = sub_1CA60E5A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E5A0()
{
  result = qword_1EC4472D0;
  if (!qword_1EC4472D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4472D0);
  }

  return result;
}

unint64_t sub_1CA60E5F4(uint64_t a1)
{
  result = sub_1CA60E61C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E61C()
{
  result = qword_1EC4472D8;
  if (!qword_1EC4472D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4472D8);
  }

  return result;
}

unint64_t sub_1CA60E674()
{
  result = qword_1EC4472E0;
  if (!qword_1EC4472E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4472E0);
  }

  return result;
}

unint64_t sub_1CA60E6C8(uint64_t a1)
{
  result = sub_1CA60E6F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E6F0()
{
  result = qword_1EC4472E8;
  if (!qword_1EC4472E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4472E8);
  }

  return result;
}

unint64_t sub_1CA60E744(uint64_t a1)
{
  result = sub_1CA60E76C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E76C()
{
  result = qword_1EC4472F0;
  if (!qword_1EC4472F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4472F0);
  }

  return result;
}

unint64_t sub_1CA60E7C4()
{
  result = qword_1EC4472F8;
  if (!qword_1EC4472F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4472F8);
  }

  return result;
}

unint64_t sub_1CA60E818(uint64_t a1)
{
  result = sub_1CA60E840();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E840()
{
  result = qword_1EC447300;
  if (!qword_1EC447300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447300);
  }

  return result;
}

unint64_t sub_1CA60E894(uint64_t a1)
{
  result = sub_1CA60E8BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E8BC()
{
  result = qword_1EC447308;
  if (!qword_1EC447308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447308);
  }

  return result;
}

unint64_t sub_1CA60E914()
{
  result = qword_1EC447310;
  if (!qword_1EC447310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447310);
  }

  return result;
}

unint64_t sub_1CA60E968(uint64_t a1)
{
  result = sub_1CA60E990();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E990()
{
  result = qword_1EC447318;
  if (!qword_1EC447318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447318);
  }

  return result;
}

uint64_t sub_1CA60EA2C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CA60EA7C(uint64_t a1)
{
  result = sub_1CA60EAA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60EAA4()
{
  result = qword_1EC447328;
  if (!qword_1EC447328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447328);
  }

  return result;
}

unint64_t sub_1CA60EAFC()
{
  result = qword_1EC447330;
  if (!qword_1EC447330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447330);
  }

  return result;
}

uint64_t sub_1CA60EC40(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_56();
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

_BYTE *sub_1CA60EC8C(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RowTemplateConditionalParameterState.ConditionalSubjectProcessingError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1CA60EE1C()
{
  result = qword_1EC447338;
  if (!qword_1EC447338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447338);
  }

  return result;
}

unint64_t sub_1CA60EE70()
{
  result = qword_1EC447340;
  if (!qword_1EC447340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447340);
  }

  return result;
}

unint64_t sub_1CA60EEC4()
{
  result = qword_1EC447358;
  if (!qword_1EC447358)
  {
    sub_1CA948AF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447358);
  }

  return result;
}

unint64_t sub_1CA60EF10()
{
  result = qword_1EC447370;
  if (!qword_1EC447370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447368, &qword_1CA98F848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447370);
  }

  return result;
}

unint64_t sub_1CA60EF8C()
{
  result = qword_1EC447380;
  if (!qword_1EC447380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447378, &unk_1CA98F850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447380);
  }

  return result;
}

unint64_t sub_1CA60F008()
{
  result = qword_1EC447390;
  if (!qword_1EC447390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC447C20, &unk_1CA991670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447390);
  }

  return result;
}

unint64_t sub_1CA60F084()
{
  result = qword_1EC4473A0;
  if (!qword_1EC4473A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC447C30, &unk_1CA98F860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4473A0);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{

  v0 = OUTLINED_FUNCTION_48_7();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

unint64_t sub_1CA60F140()
{
  result = qword_1EC4473A8;
  if (!qword_1EC4473A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4473A8);
  }

  return result;
}

unint64_t sub_1CA60F194()
{
  result = qword_1EC4473B0;
  if (!qword_1EC4473B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4473B0);
  }

  return result;
}

unint64_t sub_1CA60F1E8()
{
  result = qword_1EC4473B8;
  if (!qword_1EC4473B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4473B8);
  }

  return result;
}

unint64_t sub_1CA60F23C()
{
  result = qword_1EC4473C0;
  if (!qword_1EC4473C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4473C0);
  }

  return result;
}

unint64_t sub_1CA60F290()
{
  result = qword_1EC4473C8;
  if (!qword_1EC4473C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4473C8);
  }

  return result;
}

unint64_t sub_1CA60F2E4()
{
  result = qword_1EC4473F8;
  if (!qword_1EC4473F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4473F0, &unk_1CA991790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4473F8);
  }

  return result;
}

unint64_t sub_1CA60F360()
{
  result = qword_1EC447408;
  if (!qword_1EC447408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447400, &unk_1CA98F880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447408);
  }

  return result;
}

unint64_t sub_1CA60F3DC()
{
  result = qword_1EC447418;
  if (!qword_1EC447418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC444E20, &unk_1CA9917A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447418);
  }

  return result;
}

unint64_t sub_1CA60F458()
{
  result = qword_1EC447428;
  if (!qword_1EC447428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447420, &unk_1CA98F890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447428);
  }

  return result;
}

unint64_t sub_1CA60F4D4()
{
  result = qword_1EC447438;
  if (!qword_1EC447438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447430, &qword_1CA9917B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447438);
  }

  return result;
}

unint64_t sub_1CA60F550()
{
  result = qword_1EC447448;
  if (!qword_1EC447448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447440, &qword_1CA98F8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447448);
  }

  return result;
}

uint64_t sub_1CA60F5CC()
{
  OUTLINED_FUNCTION_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_49_9(v1);

  return sub_1CA60A1E4(v2);
}

uint64_t sub_1CA60F654()
{
  OUTLINED_FUNCTION_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_49_9(v1);

  return sub_1CA609C04(v2);
}

uint64_t sub_1CA60F6F8()
{
  OUTLINED_FUNCTION_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_49_9(v1);

  return sub_1CA609558(v2);
}

unint64_t sub_1CA60F780()
{
  result = qword_1EC447458;
  if (!qword_1EC447458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447450, &qword_1CA98F8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447458);
  }

  return result;
}

unint64_t sub_1CA60F7FC()
{
  result = qword_1EC447468;
  if (!qword_1EC447468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447460, &qword_1CA98F8F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447468);
  }

  return result;
}

unint64_t sub_1CA60F878()
{
  result = qword_1EC447498;
  if (!qword_1EC447498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447490, &qword_1CA98F910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447498);
  }

  return result;
}

unint64_t sub_1CA60F8F4()
{
  result = qword_1EC4474A8;
  if (!qword_1EC4474A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4474A0, &qword_1CA98F918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4474A8);
  }

  return result;
}

unint64_t sub_1CA60F970()
{
  result = qword_1EC4474C0;
  if (!qword_1EC4474C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4474B8, &qword_1CA98F920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4474C0);
  }

  return result;
}

unint64_t sub_1CA60F9EC()
{
  result = qword_1EC4474D0;
  if (!qword_1EC4474D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4474C8, &qword_1CA98F928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4474D0);
  }

  return result;
}

uint64_t objectdestroy_162Tm()
{

  OUTLINED_FUNCTION_70_11();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

unint64_t sub_1CA60FAB4()
{
  result = qword_1EC4474E8;
  if (!qword_1EC4474E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4474E0, &qword_1CA98F930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4474E8);
  }

  return result;
}

unint64_t sub_1CA60FB30()
{
  result = qword_1EC4474F8;
  if (!qword_1EC4474F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4474F0, &qword_1CA98F938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4474F8);
  }

  return result;
}

uint64_t objectdestroy_195Tm()
{

  v1 = OUTLINED_FUNCTION_49_5();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

unint64_t sub_1CA60FBEC()
{
  result = qword_1EC447508;
  if (!qword_1EC447508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447500, &qword_1CA98F940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447508);
  }

  return result;
}

unint64_t sub_1CA60FC68()
{
  result = qword_1EC447518;
  if (!qword_1EC447518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447510, &qword_1CA98F948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447518);
  }

  return result;
}

unint64_t sub_1CA60FCE4()
{
  result = qword_1EC447528;
  if (!qword_1EC447528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC444E40, &qword_1CA98F950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447528);
  }

  return result;
}

unint64_t sub_1CA60FD60()
{
  result = qword_1EC447538;
  if (!qword_1EC447538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447530, &unk_1CA98F958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447538);
  }

  return result;
}

unint64_t sub_1CA60FDDC()
{
  result = qword_1EC447548;
  if (!qword_1EC447548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC444E30, &unk_1CA985F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447548);
  }

  return result;
}

unint64_t sub_1CA60FE58()
{
  result = qword_1EC447558;
  if (!qword_1EC447558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447550, &qword_1CA98F968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447558);
  }

  return result;
}

unint64_t sub_1CA60FED4()
{
  result = qword_1EC447568;
  if (!qword_1EC447568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447560, &qword_1CA98F970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447568);
  }

  return result;
}

unint64_t sub_1CA60FF50()
{
  result = qword_1EC447578;
  if (!qword_1EC447578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447570, &qword_1CA98F978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447578);
  }

  return result;
}

unint64_t sub_1CA60FFCC()
{
  result = qword_1EC447588;
  if (!qword_1EC447588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447580, &qword_1CA98F980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447588);
  }

  return result;
}

unint64_t sub_1CA610048()
{
  result = qword_1EC447598;
  if (!qword_1EC447598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447590, &qword_1CA98F988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447598);
  }

  return result;
}

unint64_t sub_1CA6100C4()
{
  result = qword_1EC4475A8;
  if (!qword_1EC4475A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4475A0, &qword_1CA98F990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4475A8);
  }

  return result;
}

unint64_t sub_1CA610140()
{
  result = qword_1EC4475B8;
  if (!qword_1EC4475B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4475B0, &qword_1CA98F998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4475B8);
  }

  return result;
}

unint64_t sub_1CA6101BC()
{
  result = qword_1EC4475C8;
  if (!qword_1EC4475C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4475C0, &qword_1CA98F9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4475C8);
  }

  return result;
}

unint64_t sub_1CA610238()
{
  result = qword_1EC4475D8;
  if (!qword_1EC4475D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4475D0, &qword_1CA98F9A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4475D8);
  }

  return result;
}

uint64_t sub_1CA6102B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v5 = OUTLINED_FUNCTION_23();
  v6(v5);
  return a2;
}

unint64_t sub_1CA610318()
{
  result = qword_1EC4475E8;
  if (!qword_1EC4475E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4475E0, &qword_1CA98F9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4475E8);
  }

  return result;
}

unint64_t sub_1CA610394()
{
  result = qword_1EC4475F8;
  if (!qword_1EC4475F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4475F0, &qword_1CA98F9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4475F8);
  }

  return result;
}

unint64_t sub_1CA610410()
{
  result = qword_1EC447608;
  if (!qword_1EC447608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447600, &qword_1CA98F9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447608);
  }

  return result;
}

unint64_t sub_1CA61048C()
{
  result = qword_1EC447618;
  if (!qword_1EC447618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447610, &qword_1CA98F9C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447618);
  }

  return result;
}

unint64_t sub_1CA610508()
{
  result = qword_1EC447628;
  if (!qword_1EC447628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447628);
  }

  return result;
}

unint64_t sub_1CA61055C()
{
  result = qword_1EC447630;
  if (!qword_1EC447630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447630);
  }

  return result;
}

unint64_t sub_1CA6105B0()
{
  result = qword_1EC447638;
  if (!qword_1EC447638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447638);
  }

  return result;
}

unint64_t sub_1CA610604()
{
  result = qword_1EC447640;
  if (!qword_1EC447640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447640);
  }

  return result;
}

unint64_t sub_1CA610658()
{
  result = qword_1EC447648;
  if (!qword_1EC447648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447648);
  }

  return result;
}

unint64_t sub_1CA6106AC()
{
  result = qword_1EC447650;
  if (!qword_1EC447650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447650);
  }

  return result;
}

unint64_t sub_1CA610700()
{
  result = qword_1EC447658;
  if (!qword_1EC447658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447658);
  }

  return result;
}

unint64_t sub_1CA610754()
{
  result = qword_1EC447660;
  if (!qword_1EC447660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447660);
  }

  return result;
}

unint64_t sub_1CA6107A8()
{
  result = qword_1EC447668;
  if (!qword_1EC447668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447668);
  }

  return result;
}

unint64_t sub_1CA6107FC()
{
  result = qword_1EC447670;
  if (!qword_1EC447670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447670);
  }

  return result;
}

unint64_t sub_1CA610850()
{
  result = qword_1EC447678;
  if (!qword_1EC447678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447678);
  }

  return result;
}

unint64_t sub_1CA6108A4()
{
  result = qword_1EC447680;
  if (!qword_1EC447680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447680);
  }

  return result;
}

unint64_t sub_1CA6108F8()
{
  result = qword_1EC447688;
  if (!qword_1EC447688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447688);
  }

  return result;
}

unint64_t sub_1CA61094C()
{
  result = qword_1EC447690;
  if (!qword_1EC447690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447690);
  }

  return result;
}

unint64_t sub_1CA6109A0()
{
  result = qword_1EC447698;
  if (!qword_1EC447698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447698);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_76_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1CA94D5F8();
}

id OUTLINED_FUNCTION_79_5()
{

  return [v0 (v1 + 3248)];
}

uint64_t sub_1CA610AB0(uint64_t a1, char a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1CA35FF80();
  }

  else
  {
    v8 = *v5;

    return sub_1CA35E6F0(v8, a2);
  }
}

uint64_t sub_1CA610B34(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  OUTLINED_FUNCTION_90();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA610B64()
{
  if (v0[19])
  {
    if ([swift_unknownObjectRetain() isRunningWithSiriUI])
    {
      v1 = swift_task_alloc();
      v0[21] = v1;
      *v1 = v0;
      v1[1] = sub_1CA610D4C;
      OUTLINED_FUNCTION_9_2();

      return sub_1CA6116E0(v2, v3);
    }

    swift_unknownObjectRelease();
    if ([swift_unknownObjectRetain() isRunningWithExternalUI])
    {
      v6 = swift_task_alloc();
      v0[23] = v6;
      *v6 = v0;
      OUTLINED_FUNCTION_4_51(v6);
      OUTLINED_FUNCTION_9_2();

      return sub_1CA611970(v7, v8);
    }

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_9_34();
  v10 = [objc_opt_self() sharedGuard];
  OUTLINED_FUNCTION_8_28(v10);
  v0[2] = v11;
  OUTLINED_FUNCTION_3_51();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443848, &qword_1CA9815E8);
  OUTLINED_FUNCTION_1_46(v12);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_2_57();
  OUTLINED_FUNCTION_14_30(v13, sel_authenticateForSubject_completion_);
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DEC8](v14);
}

uint64_t sub_1CA610D4C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 225) = v4;
  *(v2 + 176) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CA610E54()
{
  v1 = *(v0 + 225);
  swift_unknownObjectRelease();
  if (v1 == 2)
  {
    if ([swift_unknownObjectRetain() isRunningWithExternalUI])
    {
      v2 = swift_task_alloc();
      *(v0 + 184) = v2;
      *v2 = v0;
      OUTLINED_FUNCTION_4_51(v2);
      OUTLINED_FUNCTION_9_2();

      return sub_1CA611970(v3, v4);
    }

    else
    {
      OUTLINED_FUNCTION_9_34();
      swift_unknownObjectRelease();
      v11 = [objc_opt_self() sharedGuard];
      OUTLINED_FUNCTION_8_28(v11);
      *(v0 + 16) = v12;
      OUTLINED_FUNCTION_3_51();
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443848, &qword_1CA9815E8);
      OUTLINED_FUNCTION_1_46(v13);
      *(v0 + 88) = 1107296256;
      OUTLINED_FUNCTION_2_57();
      OUTLINED_FUNCTION_14_30(v14, sel_authenticateForSubject_completion_);
      OUTLINED_FUNCTION_9_2();

      return MEMORY[0x1EEE6DEC8](v15);
    }
  }

  else
  {
    *(v0 + 227) = *(v0 + 225) & 1;
    sub_1CA94C838();
    *(v0 + 216) = sub_1CA94C828();
    sub_1CA94C7C8();
    OUTLINED_FUNCTION_0_64();
    OUTLINED_FUNCTION_9_2();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1CA611014()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 226) = v4;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CA61111C()
{
  v1 = *(v0 + 226);
  swift_unknownObjectRelease();
  if (v1 == 2)
  {
    OUTLINED_FUNCTION_9_34();
    v2 = [objc_opt_self() sharedGuard];
    OUTLINED_FUNCTION_8_28(v2);
    *(v0 + 16) = v3;
    OUTLINED_FUNCTION_3_51();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443848, &qword_1CA9815E8);
    OUTLINED_FUNCTION_1_46(v4);
    *(v0 + 88) = 1107296256;
    OUTLINED_FUNCTION_2_57();
    OUTLINED_FUNCTION_14_30(v5, sel_authenticateForSubject_completion_);
    OUTLINED_FUNCTION_9_2();

    return MEMORY[0x1EEE6DEC8](v6);
  }

  else
  {
    *(v0 + 227) = *(v0 + 226) & 1;
    sub_1CA94C838();
    *(v0 + 216) = sub_1CA94C828();
    sub_1CA94C7C8();
    OUTLINED_FUNCTION_0_64();
    OUTLINED_FUNCTION_9_2();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1CA61126C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA61136C()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 224);

  *(v0 + 227) = v1;
  sub_1CA94C838();
  *(v0 + 216) = sub_1CA94C828();
  sub_1CA94C7C8();
  v2 = OUTLINED_FUNCTION_0_64();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1CA6113F0()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 227);

  sub_1CA611B84(v1);
  v2 = *(v0 + 8);
  v3 = *(v0 + 227);

  return v2(v3);
}

uint64_t sub_1CA611464()
{
  OUTLINED_FUNCTION_0();
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_44();

  return v1(v0);
}

uint64_t sub_1CA6114C0()
{
  OUTLINED_FUNCTION_0();
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_44();

  return v1(v0);
}

uint64_t sub_1CA61151C(uint64_t a1)
{
  v2 = *(v1 + 200);
  swift_willThrow();

  v3 = OUTLINED_FUNCTION_44();

  return v4(v3);
}

uint64_t sub_1CA611588()
{
  type metadata accessor for LockedAppHub();
  swift_allocObject();
  result = sub_1CA6115C4();
  qword_1EC461678 = result;
  return result;
}

uint64_t sub_1CA6115C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445D48, &qword_1CA9891C0);
  swift_allocObject();
  *(v0 + 16) = sub_1CA94A038();
  v2 = [objc_opt_self() sharedContext];
  [v2 addApplicationStateObserver:v1 forEvent:1];

  return v1;
}

uint64_t sub_1CA6116E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CA611700, 0, 0);
}

uint64_t sub_1CA611700()
{
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_10_31(v1);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4476A0, &qword_1CA98FA10);
  *v2 = v0;
  v2[1] = sub_1CA6117EC;
  v3 = OUTLINED_FUNCTION_12_30();

  return MEMORY[0x1EEE6DE38](v3);
}

uint64_t sub_1CA6117EC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA611910()
{
  OUTLINED_FUNCTION_0();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CA611970(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CA611990, 0, 0);
}

uint64_t sub_1CA611990()
{
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_10_31(v1);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4476A0, &qword_1CA98FA10);
  *v2 = v0;
  v2[1] = sub_1CA611A7C;
  v3 = OUTLINED_FUNCTION_12_30();

  return MEMORY[0x1EEE6DE38](v3);
}

uint64_t sub_1CA611A7C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA611BB8()
{
  v1 = [objc_opt_self() sharedContext];
  [v1 removeApplicationStateObserver:v0 forEvent:1];

  return v0;
}

uint64_t sub_1CA611C1C()
{
  sub_1CA611BB8();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1CA611C8C(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4476A8, &qword_1CA98FA18);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  if ([a2 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v10 = [a3 bundleIdentifier];
    sub_1CA94C3A8();

    (*(v7 + 16))(v9, a1, v6);
    v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v12 = swift_allocObject();
    (*(v7 + 32))(v12 + v11, v9, v6);
    v13 = sub_1CA94C368();
    aBlock[4] = sub_1CA612708;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CA611EEC;
    aBlock[3] = &block_descriptor_18;
    v14 = _Block_copy(aBlock);

    [a2 handleAppProtectionRequestWithBundleIdentifier:v13 completionHandler:v14];
    _Block_release(v14);

    swift_unknownObjectRelease();
  }

  else
  {
    LOBYTE(aBlock[0]) = 2;
    sub_1CA94C7E8();
  }
}

void sub_1CA611EEC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1CA611F64(char a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4476A8, &qword_1CA98FA18);
    return sub_1CA94C7D8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4476A8, &qword_1CA98FA18);
    return sub_1CA94C7E8();
  }
}

void sub_1CA611FE8(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4476A8, &qword_1CA98FA18);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  if ([a2 respondsToSelector_])
  {
    sub_1CA61227C();
    swift_unknownObjectRetain();
    v10 = [a3 bundleIdentifier];
    v11 = sub_1CA94C3A8();

    v12 = sub_1CA51CC38(v11);
    (*(v7 + 16))(v9, a1, v6);
    v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v14 = swift_allocObject();
    (*(v7 + 32))(v14 + v13, v9, v6);
    aBlock[4] = sub_1CA6125F0;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CA6122C0;
    aBlock[3] = &block_descriptor_10_0;
    v15 = _Block_copy(aBlock);

    v16 = [a2 performSiriRequest:v12 completionHandler:v15];
    _Block_release(v15);

    swift_unknownObjectRelease();

    if ((v16 & 1) == 0)
    {
      LOBYTE(aBlock[0]) = 2;
      sub_1CA94C7E8();
    }
  }

  else
  {
    LOBYTE(aBlock[0]) = 2;
    sub_1CA94C7E8();
  }
}

unint64_t sub_1CA61227C()
{
  result = qword_1EC4476B0;
  if (!qword_1EC4476B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4476B0);
  }

  return result;
}

void sub_1CA6122C0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1CA612328(void *a1, uint64_t a2)
{
  v4 = sub_1CA949F78();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = a1;
    LOBYTE(v22) = [v9 didUnlock];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4476A8, &qword_1CA98FA18);
    sub_1CA94C7E8();
  }

  else
  {
    sub_1CA949C58();
    v11 = a1;
    v12 = sub_1CA949F68();
    v13 = sub_1CA94CC28();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v21[1] = a2;
      v15 = v14;
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      v21[2] = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4476B8, &qword_1CA98FA20);
      v17 = sub_1CA94C408();
      v19 = sub_1CA26B54C(v17, v18, &v22);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1CA256000, v12, v13, "Received unexpected interaction response of type %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1CCAA4BF0](v16, -1, -1);
      MEMORY[0x1CCAA4BF0](v15, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v20 = [v11 error];
    if (v20)
    {
      v22 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4476A8, &qword_1CA98FA18);
      sub_1CA94C7D8();
    }

    else
    {
      LOBYTE(v22) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4476A8, &qword_1CA98FA18);
      sub_1CA94C7E8();
    }
  }
}

void sub_1CA6125F0(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4476A8, &qword_1CA98FA18) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1CA612328(a1, v4);
}

uint64_t objectdestroyTm_2()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4476A8, &qword_1CA98FA18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CA612708(char a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4476A8, &qword_1CA98FA18);

  return sub_1CA611F64(a1, a2);
}

id sub_1CA6127F0()
{
  v250 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9D56B0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("camera|clip|record", 18);
  v6 = v5;
  v7 = sub_1CA94C438("camera|clip|record", 18);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v269 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v270 = v11;
  v12 = v241 - v269;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v268 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v271 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v272 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v241 - v272;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v267 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v265 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  v249 = xmmword_1CA981310;
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Uses the microphone to record audio.", 36);
  v25 = v24;
  v26 = sub_1CA94C438("Uses the microphone to record audio.", 36);
  v28 = v27;
  v264 = v241;
  MEMORY[0x1EEE9AC00](v26);
  v29 = v241 - v269;
  sub_1CA948D98();
  v30 = [v268 bundleURL];
  v266 = inited;
  v31 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v241 - v272;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v23, v25, v26, v28, 0, 0, v29, v32);
  *(v20 + 64) = v267;
  *(v20 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v35 = sub_1CA94C1E8();
  v36 = v265;
  v37 = sub_1CA6B3784(v35);
  v38 = v266;
  v266[15] = v37;
  v38[18] = v36;
  v38[19] = @"IconColor";
  v38[20] = 6579538;
  v38[21] = 0xE300000000000000;
  v39 = MEMORY[0x1E69E6158];
  v38[23] = MEMORY[0x1E69E6158];
  v38[24] = @"IconSymbol";
  v38[25] = 0xD000000000000012;
  v38[26] = 0x80000001CA9D5720;
  v40 = MEMORY[0x1E69E6370];
  v38[28] = v39;
  v38[29] = @"InputPassthrough";
  v38[33] = v40;
  v41 = v40;
  *(v38 + 240) = 0;
  v42 = v38;
  v43 = @"IconColor";
  v44 = @"IconSymbol";
  v45 = @"InputPassthrough";
  v42[34] = sub_1CA94C368();
  *(v42 + 280) = 1;
  v42[38] = v41;
  v42[39] = @"Name";
  v46 = @"Name";
  v264 = sub_1CA94C438("Record Audio (Action Name)", 26);
  v48 = v47;
  v49 = sub_1CA94C438("Record Audio", 12);
  v51 = v50;
  v265 = v241;
  MEMORY[0x1EEE9AC00](v49);
  v52 = v269;
  sub_1CA948D98();
  v53 = v268;
  v54 = [v268 bundleURL];
  MEMORY[0x1EEE9AC00](v54);
  v55 = v241 - v272;
  sub_1CA948B68();

  v56 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v57 = sub_1CA2F9F14(v264, v48, v49, v51, 0, 0, v241 - v52, v55);
  v58 = v266;
  v266[40] = v57;
  v59 = v267;
  v58[43] = v267;
  v58[44] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v60 = swift_initStackObject();
  *(v60 + 16) = xmmword_1CA9813C0;
  *(v60 + 32) = 0x656C7069746C754DLL;
  *(v60 + 40) = 0xE800000000000000;
  *(v60 + 48) = 0;
  *(v60 + 72) = MEMORY[0x1E69E6370];
  *(v60 + 80) = 0x614E74757074754FLL;
  *(v60 + 88) = 0xEA0000000000656DLL;
  v61 = @"Output";
  v62 = sub_1CA94C438("Recorded Audio (Default Output Name)", 36);
  v263 = v63;
  v264 = v62;
  v64 = sub_1CA94C438("Recorded Audio", 14);
  v66 = v65;
  v265 = v241;
  MEMORY[0x1EEE9AC00](v64);
  v67 = v241 - v52;
  sub_1CA948D98();
  v68 = [v53 bundleURL];
  MEMORY[0x1EEE9AC00](v68);
  v69 = v241 - v272;
  sub_1CA948B68();

  v70 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v60 + 96) = sub_1CA2F9F14(v264, v263, v64, v66, 0, 0, v67, v69);
  *(v60 + 120) = v59;
  *(v60 + 128) = 0x7365707954;
  *(v60 + 136) = 0xE500000000000000;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v60 + 168) = v259;
  *(v60 + 144) = &unk_1F4A09408;
  v71 = MEMORY[0x1E69E6158];
  v72 = sub_1CA94C1E8();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v74 = v266;
  v266[45] = v72;
  v74[48] = v73;
  v74[49] = @"Parameters";
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v265 = swift_allocObject();
  *(v265 + 1) = xmmword_1CA981570;
  v264 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v75 = swift_allocObject();
  v248 = xmmword_1CA981380;
  *(v75 + 16) = xmmword_1CA981380;
  v258 = 0x80000001CA99C4A0;
  *(v75 + 32) = @"Class";
  *(v75 + 40) = 0xD000000000000016;
  *(v75 + 48) = 0x80000001CA99C4A0;
  *(v75 + 64) = v71;
  *(v75 + 72) = @"DefaultValue";
  *(v75 + 80) = 0x6C616D726F4ELL;
  *(v75 + 88) = 0xE600000000000000;
  *(v75 + 104) = v71;
  *(v75 + 112) = @"Description";
  v76 = @"Class";
  v77 = @"DefaultValue";
  v78 = v76;
  v79 = v77;
  v253 = v78;
  v257 = v79;
  v80 = @"Parameters";
  v81 = @"Description";
  v260 = sub_1CA94C438("High-quality audio takes up a lot more space than normal audio, so stick with normal unless you really need it. Normal audio is returned as an M4A file (with AAC audio), while high-quality audio is returned in uncompressed WAV format. (WFRecordingCompression)", 259);
  *&v256 = v82;
  v83 = sub_1CA94C438("High-quality audio takes up a lot more space than normal audio, so stick with normal unless you really need it. Normal audio is returned as an M4A file (with AAC audio), while high-quality audio is returned in uncompressed WAV format.", 234);
  v85 = v84;
  v261 = v241;
  MEMORY[0x1EEE9AC00](v83);
  v86 = v269;
  sub_1CA948D98();
  v87 = [v268 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = v241 - v272;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v75 + 120) = sub_1CA2F9F14(v260, v256, v83, v85, 0, 0, v241 - v86, v88);
  *(v75 + 144) = v267;
  *(v75 + 152) = @"Items";
  v261 = swift_allocObject();
  v256 = xmmword_1CA981360;
  *(v261 + 1) = xmmword_1CA981360;
  v255 = @"Items";
  v254 = sub_1CA94C438("Normal (WFRecordingCompression)", 31);
  v252 = v90;
  v91 = sub_1CA94C438("Normal", 6);
  v251 = v92;
  v260 = v241;
  MEMORY[0x1EEE9AC00](v91);
  v93 = v241 - v86;
  sub_1CA948D98();
  v94 = v268;
  v95 = [v268 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  v96 = v272;
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v98 = sub_1CA2F9F14(v254, v252, v91, v251, 0, 0, v93, v241 - v96);
  v99 = v261;
  v261[4] = v98;
  v254 = sub_1CA94C438("Very High (WFRecordingCompression)", 34);
  v252 = v100;
  v251 = sub_1CA94C438("Very High", 9);
  v102 = v101;
  v260 = v241;
  MEMORY[0x1EEE9AC00](v251);
  v103 = v241 - v269;
  sub_1CA948D98();
  v104 = [v94 bundleURL];
  MEMORY[0x1EEE9AC00](v104);
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v99[5] = sub_1CA2F9F14(v254, v252, v251, v102, 0, 0, v103, v241 - v96);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v254 = v106;
  *(v75 + 160) = v99;
  *(v75 + 184) = v106;
  *(v75 + 192) = @"Key";
  *(v75 + 200) = 0xD000000000000016;
  *(v75 + 208) = 0x80000001CA9D5A20;
  *(v75 + 224) = MEMORY[0x1E69E6158];
  *(v75 + 232) = @"Label";
  v107 = @"Key";
  v108 = @"Label";
  v109 = v107;
  v110 = v108;
  v251 = v109;
  v247 = v110;
  v111 = sub_1CA94C438("Audio Quality (WFRecordingCompression)", 38);
  v113 = v112;
  v114 = sub_1CA94C438("Audio Quality", 13);
  v116 = v115;
  v261 = v241;
  MEMORY[0x1EEE9AC00](v114);
  v117 = v241 - v269;
  sub_1CA948D98();
  v118 = [v268 bundleURL];
  MEMORY[0x1EEE9AC00](v118);
  v119 = v241 - v272;
  sub_1CA948B68();

  v120 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v121 = sub_1CA2F9F14(v111, v113, v114, v116, 0, 0, v117, v119);
  *(v75 + 264) = v267;
  *(v75 + 240) = v121;
  _s3__C3KeyVMa_0(0);
  v261 = v122;
  v260 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v123 = sub_1CA94C1E8();
  v124 = sub_1CA2F864C(v123);
  v265[4] = v124;
  v125 = swift_allocObject();
  v246 = xmmword_1CA981370;
  *(v125 + 16) = xmmword_1CA981370;
  v126 = v253;
  *(v125 + 32) = v253;
  *(v125 + 40) = 0xD000000000000016;
  v127 = v257;
  *(v125 + 48) = v258;
  v128 = MEMORY[0x1E69E6158];
  *(v125 + 64) = MEMORY[0x1E69E6158];
  *(v125 + 72) = v127;
  *(v125 + 80) = 0x706154206E4FLL;
  *(v125 + 88) = 0xE600000000000000;
  v129 = v255;
  *(v125 + 104) = v128;
  *(v125 + 112) = v129;
  v252 = swift_allocObject();
  *&v252->data = v256;
  v253 = v126;
  v130 = sub_1CA94C438("On Tap (WFRecordingStart)", 25);
  v243 = v131;
  v244 = v130;
  v132 = sub_1CA94C438("On Tap", 6);
  v242 = v133;
  v245 = v241;
  MEMORY[0x1EEE9AC00](v132);
  v134 = v269;
  sub_1CA948D98();
  v135 = [v268 bundleURL];
  v241[1] = v241;
  MEMORY[0x1EEE9AC00](v135);
  v136 = v272;
  sub_1CA948B68();

  v137 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v138 = sub_1CA2F9F14(v244, v243, v132, v242, 0, 0, v241 - v134, v241 - v136);
  v252[1].isa = v138;
  v139 = sub_1CA94C438("Immediately (WFRecordingStart)", 30);
  v243 = v140;
  v244 = v139;
  v141 = sub_1CA94C438("Immediately", 11);
  v242 = v142;
  v245 = v241;
  MEMORY[0x1EEE9AC00](v141);
  v143 = v241 - v134;
  sub_1CA948D98();
  v144 = v268;
  v145 = [v268 bundleURL];
  MEMORY[0x1EEE9AC00](v145);
  sub_1CA948B68();

  v146 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v147 = sub_1CA2F9F14(v244, v243, v141, v242, 0, 0, v143, v241 - v136);
  v149 = v251;
  v148 = v252;
  v252[1].info = v147;
  *(v125 + 120) = v148;
  *(v125 + 144) = v254;
  *(v125 + 152) = v149;
  *(v125 + 160) = 0xD000000000000010;
  *(v125 + 168) = 0x80000001CA9D5AD0;
  v150 = v247;
  *(v125 + 184) = MEMORY[0x1E69E6158];
  *(v125 + 192) = v150;
  v251 = v149;
  v252 = v150;
  v245 = sub_1CA94C438("Start Recording (WFRecordingStart)", 34);
  v152 = v151;
  v153 = sub_1CA94C438("Start Recording", 15);
  v155 = v154;
  v247 = v241;
  MEMORY[0x1EEE9AC00](v153);
  v156 = v241 - v269;
  sub_1CA948D98();
  v157 = [v144 bundleURL];
  MEMORY[0x1EEE9AC00](v157);
  v158 = v241 - v272;
  sub_1CA948B68();

  v159 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v160 = sub_1CA2F9F14(v245, v152, v153, v155, 0, 0, v156, v158);
  *(v125 + 224) = v267;
  *(v125 + 200) = v160;
  v161 = sub_1CA94C1E8();
  v162 = sub_1CA2F864C(v161);
  v265[5] = v162;
  v163 = swift_allocObject();
  *(v163 + 16) = v246;
  *(v163 + 32) = v253;
  *(v163 + 40) = 0xD000000000000016;
  v164 = v257;
  *(v163 + 48) = v258;
  v165 = MEMORY[0x1E69E6158];
  *(v163 + 64) = MEMORY[0x1E69E6158];
  *(v163 + 72) = v164;
  *(v163 + 80) = 0x706154206E4FLL;
  *(v163 + 88) = 0xE600000000000000;
  v166 = v255;
  *(v163 + 104) = v165;
  *(v163 + 112) = v166;
  v262 = swift_allocObject();
  *(v262 + 1) = v256;
  v257 = sub_1CA94C438("On Tap (WFRecordingEnd)", 23);
  *&v256 = v167;
  v168 = sub_1CA94C438("On Tap", 6);
  v255 = v169;
  v258 = v241;
  MEMORY[0x1EEE9AC00](v168);
  v170 = v269;
  sub_1CA948D98();
  v171 = v268;
  v172 = [v268 bundleURL];
  v247 = v241;
  MEMORY[0x1EEE9AC00](v172);
  v173 = v241 - v272;
  sub_1CA948B68();

  v174 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v175 = sub_1CA2F9F14(v257, v256, v168, v255, 0, 0, v241 - v170, v173);
  v262[4] = v175;
  v257 = sub_1CA94C438("After Time (WFRecordingEnd)", 27);
  *&v256 = v176;
  v177 = sub_1CA94C438("After Time", 10);
  v255 = v178;
  v258 = v241;
  MEMORY[0x1EEE9AC00](v177);
  sub_1CA948D98();
  v179 = [v171 bundleURL];
  MEMORY[0x1EEE9AC00](v179);
  v180 = v272;
  sub_1CA948B68();

  v181 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v182 = sub_1CA2F9F14(v257, v256, v177, v255, 0, 0, v241 - v170, v241 - v180);
  v183 = v262;
  v262[5] = v182;
  *(v163 + 120) = v183;
  v184 = v251;
  *(v163 + 144) = v254;
  *(v163 + 152) = v184;
  strcpy((v163 + 160), "WFRecordingEnd");
  *(v163 + 175) = -18;
  v185 = v252;
  *(v163 + 184) = MEMORY[0x1E69E6158];
  *(v163 + 192) = v185;
  v186 = sub_1CA94C438("Finish Recording (WFRecordingEnd)", 33);
  v258 = v187;
  v188 = sub_1CA94C438("Finish Recording", 16);
  v190 = v189;
  v262 = v241;
  MEMORY[0x1EEE9AC00](v188);
  v191 = v241 - v269;
  sub_1CA948D98();
  v192 = [v268 bundleURL];
  MEMORY[0x1EEE9AC00](v192);
  sub_1CA948B68();

  v193 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v194 = sub_1CA2F9F14(v186, v258, v188, v190, 0, 0, v191, v241 - v180);
  *(v163 + 224) = v267;
  *(v163 + 200) = v194;
  v195 = sub_1CA94C1E8();
  v196 = sub_1CA2F864C(v195);
  v265[6] = v196;
  v197 = swift_allocObject();
  *(v197 + 16) = v248;
  *(v197 + 32) = v253;
  *(v197 + 40) = 0xD000000000000020;
  *(v197 + 48) = 0x80000001CA9A44A0;
  v198 = MEMORY[0x1E69E6158];
  *(v197 + 64) = MEMORY[0x1E69E6158];
  *(v197 + 72) = @"DefaultUnit";
  *(v197 + 80) = 7235949;
  *(v197 + 88) = 0xE300000000000000;
  v199 = v251;
  *(v197 + 104) = v198;
  *(v197 + 112) = v199;
  *(v197 + 120) = 0xD000000000000017;
  *(v197 + 128) = 0x80000001CA9D5BD0;
  v200 = v252;
  *(v197 + 144) = v198;
  *(v197 + 152) = v200;
  v201 = @"DefaultUnit";
  v202 = sub_1CA94C438("Duration (WFRecordingTimeInterval)", 34);
  v204 = v203;
  v205 = sub_1CA94C438("Duration", 8);
  v207 = v206;
  v263 = v241;
  MEMORY[0x1EEE9AC00](v205);
  v208 = v241 - v269;
  sub_1CA948D98();
  v209 = [v268 bundleURL];
  MEMORY[0x1EEE9AC00](v209);
  v210 = v241 - v272;
  sub_1CA948B68();

  v211 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v197 + 160) = sub_1CA2F9F14(v202, v204, v205, v207, 0, 0, v208, v210);
  *(v197 + 184) = v267;
  *(v197 + 192) = @"PossibleUnits";
  *(v197 + 200) = &unk_1F4A09438;
  *(v197 + 224) = v259;
  *(v197 + 232) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v212 = swift_allocObject();
  *(v212 + 16) = v249;
  v213 = @"PossibleUnits";
  v214 = @"RequiredResources";
  *(v212 + 32) = sub_1CA94C1E8();
  *(v197 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v197 + 240) = v212;
  v215 = sub_1CA94C1E8();
  v216 = sub_1CA2F864C(v215);
  v217 = v265;
  v265[7] = v216;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v219 = v266;
  v266[50] = v217;
  v219[53] = v218;
  v219[54] = @"ParameterSummary";
  v220 = @"ParameterSummary";
  v221 = sub_1CA94C438("Record audio (Parameter Summary)", 32);
  v223 = v222;
  v224 = sub_1CA94C438("Record audio", 12);
  v226 = v225;
  MEMORY[0x1EEE9AC00](v224);
  v227 = v241 - v269;
  sub_1CA948D98();
  v228 = [v268 bundleURL];
  MEMORY[0x1EEE9AC00](v228);
  v229 = v241 - v272;
  sub_1CA948B68();

  v230 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v231 = sub_1CA2F9F14(v221, v223, v224, v226, 0, 0, v227, v229);
  v232 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v233 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v234 = v266;
  v266[55] = v232;
  v234[58] = v233;
  v234[59] = @"RequiredResources";
  v234[60] = &unk_1F4A09508;
  v235 = v259;
  v234[63] = v259;
  v234[64] = @"UserInterfaceClasses";
  v236 = @"RequiredResources";
  v237 = @"UserInterfaceClasses";
  v238 = sub_1CA94C1E8();
  v234[68] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v234[65] = v238;
  v234[69] = @"UserInterfaces";
  v234[73] = v235;
  v234[70] = &unk_1F4A095C8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v239 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void __swiftcall WFWorkflowActionTree.__inheritedInputVariable(for:workflowInputTypes:ignoreInputTypes:)(WFVariable_optional *__return_ptr retstr, WFAction *a2, Swift::OpaquePointer_optional workflowInputTypes, Swift::Bool ignoreInputTypes)
{
  is_nil = workflowInputTypes.is_nil;
  if (workflowInputTypes.value._rawValue)
  {
    v6 = *(workflowInputTypes.value._rawValue + 2);
    if (v6)
    {
      v7 = workflowInputTypes.value._rawValue + 32;
      sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
      v8 = MEMORY[0x1E69E7CC0];
      do
      {
        v9 = swift_dynamicCastMetatype();
        if (v9)
        {
          v10 = v9;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1CA2E5130();
            v8 = v12;
          }

          v11 = v8[2];
          if (v11 >= v8[3] >> 1)
          {
            sub_1CA2E5130();
            v8 = v13;
          }

          v8[2] = v11 + 1;
          retstr = &v8[v11];
          *&retstr->is_nil = v10;
        }

        v7 += 8;
        --v6;
      }

      while (v6);
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v8 = 0;
  }

  v14.is_nil = is_nil;
  v14.value._rawValue = v8;
  WFWorkflowActionTree.inheritedInputVariable(for:workflowInputTypes:ignoreInputTypes:)(retstr, a2, v14, ignoreInputTypes);
}

void __swiftcall WFWorkflowActionTree.inheritedInputVariable(for:workflowInputTypes:ignoreInputTypes:)(WFVariable_optional *__return_ptr retstr, WFAction *a2, Swift::OpaquePointer_optional workflowInputTypes, Swift::Bool ignoreInputTypes)
{
  v5 = v4;
  is_nil = workflowInputTypes.is_nil;
  rawValue = workflowInputTypes.value._rawValue;
  v6 = MEMORY[0x1E69E7CD0];
  v63 = MEMORY[0x1E69E7CD0];
  v7 = &selRef_groupedIntermediaryActions;
  v8 = &selRef_metaDataDeviceQueryOperation;
  v57 = a2;
  v9 = v57;
  while (2)
  {
    for (i = v9; ; i = v18)
    {
LABEL_3:
      v11 = [v5 v7[209]];
      if (v11 == sub_1CA948778())
      {

        goto LABEL_49;
      }

      v12 = v63;
      if (!v11)
      {

        if (rawValue && (v41 = WFAction.inputContentClasses.getter(), v42 = WFAction.canHandleInput(of:supportedClasses:includingCoercedTypes:)(rawValue, v41, 1), , v42))
        {
          v43 = objc_allocWithZone(WFShortcutInputVariable);
          v44 = v57;
          sub_1CA615164(v57, 0);
        }

        else
        {
        }

        return;
      }

      if (*(v63 + 16))
      {
        v13 = sub_1CA94D908();
        v14 = ~(-1 << *(v12 + 32));
        while (1)
        {
          v15 = v13 & v14;
          if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
          {
            break;
          }

          v13 = v15 + 1;
          if (*(*(v12 + 48) + 8 * v15) == i)
          {

            goto LABEL_56;
          }
        }
      }

      sub_1CA369200(&v62, i);
      v16 = sub_1CA614BCC(i);
      if (sub_1CA25B410(v16) != 1)
      {

        goto LABEL_49;
      }

      sub_1CA275D70(0, (v16 & 0xC000000000000001) == 0, v16);
      v17 = (v16 & 0xC000000000000001) != 0 ? MEMORY[0x1CCAA22D0](0, v16) : *(v16 + 32);
      v18 = v17;

      if (![(WFAction *)v18 snappingPassthrough])
      {
        break;
      }
    }

    if ([(WFAction *)v18 blocksSnapping])
    {

LABEL_55:

      goto LABEL_56;
    }

    v19 = [v5 v8[305]];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444800, &qword_1CA984018);
    v20 = sub_1CA94C658();

    v21 = sub_1CA25B410(v20);

    if (!v21)
    {
      v22 = [(WFAction *)v18 containedVariables];
      sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
      v23 = sub_1CA94C658();

      v24 = sub_1CA25B410(v23);
      if (v24)
      {
        v25 = v24;
        v59 = v18;
        v60 = v5;
        v26 = 0;
        v18 = (v23 & 0xFFFFFFFFFFFFFF8);
        v61 = MEMORY[0x1E69E7CC0];
        while (v25 != v26)
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x1CCAA22D0](v26, v23);
          }

          else
          {
            if (v26 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_51;
            }

            v27 = *(v23 + 8 * v26 + 32);
          }

          v28 = v27;
          v29 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            __break(1u);
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

          v30 = sub_1CA60D308(v27);
          v32 = v31;

          ++v26;
          if (v32)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1CA26DADC();
              v61 = v35;
            }

            v33 = *(v61 + 16);
            if (v33 >= *(v61 + 24) >> 1)
            {
              sub_1CA26DADC();
              v61 = v36;
            }

            *(v61 + 16) = v33 + 1;
            v34 = v61 + 16 * v33;
            *(v34 + 32) = v30;
            *(v34 + 40) = v32;
            v26 = v29;
          }
        }

        v37 = sub_1CA2E2E2C(v61);
        v5 = v60;
        v9 = v59;
        v8 = &selRef_metaDataDeviceQueryOperation;
        if (!v6[2])
        {

          v6 = v37;
          v7 = &selRef_groupedIntermediaryActions;
          continue;
        }

        sub_1CA94C218();
        OUTLINED_FUNCTION_0_65();
        v39 = sub_1CA6152E8(v37, v6, v38, sub_1CA6155C8);

        v40 = v39[2];

        i = v59;
        v7 = &selRef_groupedIntermediaryActions;
        if (v40)
        {
          goto LABEL_3;
        }
      }

      else
      {

LABEL_49:
      }

LABEL_56:

      return;
    }

    break;
  }

  v45 = [(WFAction *)v18 outputVariableWithVariableProvider:v57 UUIDProvider:0];
  if (!v45)
  {
LABEL_52:

LABEL_54:

    goto LABEL_55;
  }

  v46 = v45;
  v47 = sub_1CA60D308(v45);
  if (!v48)
  {

    i = v46;
    goto LABEL_54;
  }

  if (v6[2])
  {
    v49 = sub_1CA27AF18(v47, v48, v6);

    if (!v49)
    {

      goto LABEL_56;
    }
  }

  else
  {
  }

  if (is_nil)
  {
  }

  else
  {
    v50 = *&v5[OBJC_IVAR___WFWorkflowActionTree_variableAvailability];
    v51 = v5;
    v52 = v18;
    v53 = sub_1CA365410(v52, v50, v51, v52);
    v54 = WFAction.inputContentClasses.getter();
    v55 = WFAction.canHandleInput(of:supportedClasses:includingCoercedTypes:)(v53, v54, 1);

    if (!v55)
    {
    }
  }
}

uint64_t sub_1CA614BCC(uint64_t a1)
{
  v3 = _s17ControlFlowBranchVMa(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v53 = (&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v48 - v7;
  v9 = _s6LayoutVMa(0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v48 - v14);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - v16;
  v18 = [v1 indexOfAction_];
  v19 = sub_1CA948778();
  v20 = MEMORY[0x1E69E7CC0];
  if (v18 && v18 != v19)
  {
    v54 = v12;
    sub_1CA285AF8(v17);
    v21 = *(v17 + 4);
    sub_1CA94C218();
    sub_1CA285D14(v17, _s6LayoutVMa);
    if (v18 < 0)
    {
      goto LABEL_33;
    }

    if (v18 >= *(v21 + 16))
    {
LABEL_34:
      __break(1u);
    }

    else
    {
      v48 = v4;
      v22 = v21 + 48 * v18;
      v23 = *(v22 + 32);
      v24 = *(v22 + 48);
      v25 = *(v22 + 56);
      v26 = *(v22 + 64);
      v27 = *(v22 + 72);
      v50 = *(v22 + 40);
      v51 = v24;
      v49 = v25;
      sub_1CA36D94C(v23, v50, v24, v25, v26, v27);

      if (v27)
      {
        if (v27 != 1)
        {
          v55 = v20;
          v34 = *(v51 + 16);
          if (v34)
          {
            v54 = *(v3 + 28);
            v52 = (*(v48 + 80) + 32) & ~*(v48 + 80);
            v35 = v51 + v52;
            v36 = *(v48 + 72);
            sub_1CA94C218();
            while (1)
            {
              sub_1CA36D71C(v35, v8);
              v1 = *&v8[v54];
              sub_1CA94C218();
              sub_1CA285D14(v8, _s17ControlFlowBranchVMa);
              v37 = *(v1 + 16);
              if (v37)
              {
                v38 = v1 + 40 * v37;
                v4 = *(v38 - 8);
                v39 = *v38;
                v40 = *(v38 + 8);
                v20 = *(v38 + 16);
                v41 = *(v38 + 24);
                sub_1CA36DA2C(v4, *v38, v40, v20, v41);

                if (v41)
                {
                  if (!*(v40 + 16))
                  {
                    __break(1u);
LABEL_33:
                    __break(1u);
                    goto LABEL_34;
                  }

                  v42 = v53;
                  sub_1CA36D71C(v40 + v52, v53);
                  sub_1CA36D780(v4, v39, v40, v20, 1);
                  v4 = *v42;
                  sub_1CA285D14(v42, _s17ControlFlowBranchVMa);
                }

                v43 = v4;
                MEMORY[0x1CCAA1490]();
                if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1CA94C698();
                }

                sub_1CA94C6E8();

                v20 = v55;
              }

              else
              {
              }

              v35 += v36;
              if (!--v34)
              {

                swift_bridgeObjectRelease_n();
                goto LABEL_30;
              }
            }
          }

          goto LABEL_30;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
        v28 = swift_allocObject();
        v20 = v28;
        *(v28 + 16) = xmmword_1CA9813B0;
        if (v26)
        {
          v29 = v51;
          if (*(v51 + 16))
          {
            v30 = *(v51 + ((*(v48 + 80) + 32) & ~*(v48 + 80)));
            *(v28 + 32) = v30;
            v31 = v30;

LABEL_28:

LABEL_30:

            return v20;
          }

          __break(1u);
        }

        else
        {
          v44 = v54;
          sub_1CA285AF8(v54);
          v1 = *v44;
          sub_1CA94C218();
          sub_1CA285D14(v44, _s6LayoutVMa);
          v29 = v18 - 1;
          sub_1CA275D70(v18 - 1, (v1 & 0xC000000000000001) == 0, v1);
          if ((v1 & 0xC000000000000001) == 0)
          {
            v45 = *(v1 + 8 * v29 + 32);
LABEL_27:
            v46 = v45;

            *(v20 + 32) = v46;

            goto LABEL_28;
          }
        }

        v45 = MEMORY[0x1CCAA22D0](v29, v1);
        goto LABEL_27;
      }

      sub_1CA36D9BC(v23, v50, v51, v49, v26, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1CA9813B0;
      sub_1CA285AF8(v15);
      v4 = *v15;
      sub_1CA94C218();
      sub_1CA285D14(v15, _s6LayoutVMa);
      v1 = v18 - 1;
      sub_1CA275D70(v18 - 1, (v4 & 0xC000000000000001) == 0, v4);
      if ((v4 & 0xC000000000000001) == 0)
      {
        v32 = *(v4 + 8 * v1 + 32);
LABEL_12:
        v33 = v32;

        *(v20 + 32) = v33;
        return v20;
      }
    }

    v32 = MEMORY[0x1CCAA22D0](v1, v4);
    goto LABEL_12;
  }

  return v20;
}

id sub_1CA615164(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1CA25B3D0(0, &unk_1EC444CA0, off_1E836F4B8);
    v4 = sub_1CA94C648();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 initWithVariableProvider:a1 aggrandizements:v4];
  swift_unknownObjectRelease();

  return v5;
}

void *sub_1CA6151F8()
{
  OUTLINED_FUNCTION_0_65();

  return sub_1CA6152E8(v0, v1, v2, sub_1CA6155C8);
}

void *sub_1CA615268(uint64_t a1, uint64_t a2)
{

  return sub_1CA6152E8(a1, a2, sub_1CA61596C, sub_1CA61596C);
}

void *sub_1CA6152E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    sub_1CA5C3FA4(0, v8, v18 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0));
    OUTLINED_FUNCTION_1_47();
    v11 = a3();
    if (!v8)
    {
      v12 = v11;

      return v12;
    }

    swift_willThrow();

    __break(1u);
  }

  else
  {
    v9 = swift_slowAlloc();

    OUTLINED_FUNCTION_1_47();
    v12 = sub_1CA615530(v14, v15, v16, v17, a4);

    if (!v8)
    {

      MEMORY[0x1CCAA4BF0](v9, -1, -1);
      return v12;
    }
  }

  result = MEMORY[0x1CCAA4BF0](v9, -1, -1);
  __break(1u);
  return result;
}

void *sub_1CA6154B0(uint64_t a1, uint64_t a2)
{

  return sub_1CA6152E8(a1, a2, sub_1CA615D04, sub_1CA615D04);
}

void *sub_1CA615530(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);

    return v10;
  }

  return result;
}

void sub_1CA6155C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v56 = 0;
    v28 = 0;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(a3 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = a4 + 56;
LABEL_28:
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v54 = (v31 - 1) & v31;
LABEL_35:
      v53 = v34 | (v28 << 6);
      v37 = (*(v5 + 48) + 16 * v53);
      v39 = *v37;
      v38 = v37[1];
      sub_1CA94D918();
      sub_1CA94C218();
      sub_1CA94C458();
      v40 = sub_1CA94D968();
      v41 = ~(-1 << *(v4 + 32));
      do
      {
        v42 = v40 & v41;
        if (((*(v33 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
        {

          v4 = a4;
          v31 = v54;
          goto LABEL_28;
        }

        v43 = (*(a4 + 48) + 16 * v42);
        if (*v43 == v39 && v43[1] == v38)
        {
          break;
        }

        v45 = sub_1CA94D7F8();
        v40 = v42 + 1;
      }

      while ((v45 & 1) == 0);

      *(result + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
      v27 = __OFADD__(v56++, 1);
      v4 = a4;
      v31 = v54;
      if (v27)
      {
        goto LABEL_50;
      }
    }

    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
LABEL_46:

        sub_1CA6B04B4(result, a2, v56, v5, v46, v47, v48, v49, v50, a2, v52, v53, v54, result, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, a4, v68, v69, v70, v71);
        return;
      }

      v36 = *(v5 + 56 + 8 * v28);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v56 = 0;
    v6 = 0;
    v50 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v53 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v54 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      sub_1CA94D918();
      sub_1CA94C218();
      sub_1CA94C458();
      v18 = sub_1CA94D968();
      v19 = v5;
      v20 = ~(-1 << *(v5 + 32));
      do
      {
        v21 = v18 & v20;
        v22 = (v18 & v20) >> 6;
        v23 = 1 << (v18 & v20);
        if ((v23 & *(v11 + 8 * v22)) == 0)
        {

          v5 = v19;
          v4 = a4;
          v10 = v53;
          v9 = v54;
          goto LABEL_6;
        }

        v24 = (*(v19 + 48) + 16 * v21);
        if (*v24 == v17 && v24[1] == v16)
        {
          break;
        }

        v26 = sub_1CA94D7F8();
        v18 = v21 + 1;
      }

      while ((v26 & 1) == 0);

      v9 = v54;
      *(result + 8 * v22) |= v23;
      v27 = __OFADD__(v56++, 1);
      v5 = v19;
      v4 = a4;
      v10 = v53;
      if (v27)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v50 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v54 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}