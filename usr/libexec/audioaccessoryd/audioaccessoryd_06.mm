id sub_10011D740(void *a1)
{
  if (!a1)
  {
    v13 = 0;
    return (v13 & 1);
  }

  v2 = a1;
  v3 = [v2 listeningServices];
  if (!v3)
  {
    v14 = 0;
    goto LABEL_32;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = [v2 productID];
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10 == 876163384 && v12 == 0xE400000000000000)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v16 = [v2 productID];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v18 == 925905464 && v20 == 0xE400000000000000)
    {

LABEL_15:

      v14 = 0;
      goto LABEL_32;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  v22 = type metadata accessor for MagicPairingSettingsRecord(0);
  v23 = (v1 + *(v22 + 76));
  v24 = *v23;
  v25 = v23[1];

  v26 = sub_10011EDEC(v24, v25);
  LOBYTE(v25) = v27;
  v28 = sub_10011EDEC(v5, v7);
  if (v25)
  {
    v30 = 0;
  }

  else
  {
    v30 = v26;
  }

  if (v29)
  {
    v31 = 0;
  }

  else
  {
    v31 = v28;
  }

  v32 = (v31 ^ v30) & 0xFF8C;
  v14 = v32 != 0;
  v33 = [v2 listeningServicesV2];
  if (v33)
  {
    v34 = v33;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = sub_10011EDEC(v35, v37);
    v40 = v39;
    v41 = (v1 + *(v22 + 80));
    v42 = *v41;
    v43 = v41[1];

    v44 = sub_10011EDEC(v42, v43);
    if (v45)
    {
      v46 = 0;
    }

    else
    {
      v46 = v44;
    }

    if (v40)
    {
      v47 = 0;
    }

    else
    {
      v47 = v38;
    }

    v48 = v47 != v46;
    if (v32)
    {
      v14 = 1;
    }

    else
    {
      v14 = v48;
    }
  }

LABEL_32:
  v49 = [v2 productID];
  if (v49)
  {

    v50 = [v2 productID];
    if (!v50)
    {
      goto LABEL_191;
    }

    v51 = v50;
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    v55 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord(0) + 52));
    if (v52 == *v55 && v54 == v55[1])
    {
    }

    else
    {
      v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v56 & 1) == 0)
      {
        goto LABEL_191;
      }
    }
  }

  v57 = [v2 vendorID];
  if (v57)
  {

    v58 = [v2 vendorID];
    if (!v58)
    {
      goto LABEL_191;
    }

    v59 = v58;
    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;

    v63 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord(0) + 56));
    if (v60 == *v63 && v62 == v63[1])
    {
    }

    else
    {
      v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v64 & 1) == 0)
      {
        goto LABEL_191;
      }
    }
  }

  v65 = [v2 masterKey];
  if (v65)
  {
    v66 = v65;
    v67 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    sub_1000EF870(v67, v69);
    v70 = [v2 masterKey];
    if (v70)
    {
      v71 = v70;
      v72 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;
    }

    else
    {
      v72 = 0;
      v74 = 0xF000000000000000;
    }

    v75 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord(0) + 28));
    v76 = *v75;
    v77 = v75[1];
    sub_1000EE9F4(*v75, v77);
    if (v74 >> 60 == 15)
    {
      if (v77 >> 60 != 15)
      {
        goto LABEL_79;
      }

      sub_1000FF5CC(v72, v74);
    }

    else
    {
      if (v77 >> 60 == 15)
      {
        goto LABEL_79;
      }

      sub_1000EE9F4(v76, v77);
      sub_1000FF5B8(v72, v74);
      v78 = sub_100121564(v72, v74, v76, v77);
      sub_1000EF870(v76, v77);
      sub_1000FF5CC(v72, v74);
      sub_1000FF5CC(v76, v77);
      sub_1000FF5CC(v72, v74);
      if (!v78)
      {
        goto LABEL_191;
      }
    }
  }

  v79 = [v2 masterHint];
  if (v79)
  {
    v80 = v79;
    v81 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;

    sub_1000EF870(v81, v83);
    v84 = [v2 masterHint];
    if (v84)
    {
      v85 = v84;
      v72 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v86;
    }

    else
    {
      v72 = 0;
      v74 = 0xF000000000000000;
    }

    v87 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord(0) + 32));
    v76 = *v87;
    v77 = v87[1];
    sub_1000EE9F4(*v87, v77);
    if (v74 >> 60 == 15)
    {
      if (v77 >> 60 != 15)
      {
        goto LABEL_79;
      }

      sub_1000FF5CC(v72, v74);
    }

    else
    {
      if (v77 >> 60 == 15)
      {
        goto LABEL_79;
      }

      sub_1000EE9F4(v76, v77);
      sub_1000FF5B8(v72, v74);
      v88 = sub_100121564(v72, v74, v76, v77);
      sub_1000EF870(v76, v77);
      sub_1000FF5CC(v72, v74);
      sub_1000FF5CC(v76, v77);
      sub_1000FF5CC(v72, v74);
      if (!v88)
      {
        goto LABEL_191;
      }
    }
  }

  v89 = [v2 accessoryKey];
  if (v89)
  {
    v90 = v89;
    v91 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v93 = v92;

    sub_1000EF870(v91, v93);
    v94 = [v2 accessoryKey];
    if (v94)
    {
      v95 = v94;
      v72 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v96;
    }

    else
    {
      v72 = 0;
      v74 = 0xF000000000000000;
    }

    v97 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord(0) + 36));
    v76 = *v97;
    v77 = v97[1];
    sub_1000EE9F4(*v97, v77);
    if (v74 >> 60 == 15)
    {
      if (v77 >> 60 != 15)
      {
        goto LABEL_79;
      }

      sub_1000FF5CC(v72, v74);
    }

    else
    {
      if (v77 >> 60 == 15)
      {
        goto LABEL_79;
      }

      sub_1000EE9F4(v76, v77);
      sub_1000FF5B8(v72, v74);
      v98 = sub_100121564(v72, v74, v76, v77);
      sub_1000EF870(v76, v77);
      sub_1000FF5CC(v72, v74);
      sub_1000FF5CC(v76, v77);
      sub_1000FF5CC(v72, v74);
      if (!v98)
      {
        goto LABEL_191;
      }
    }
  }

  v99 = [v2 accessoryHint];
  if (v99)
  {
    v100 = v99;
    v101 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v102;

    sub_1000EF870(v101, v103);
    v104 = [v2 accessoryHint];
    if (v104)
    {
      v105 = v104;
      v72 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v106;
    }

    else
    {
      v72 = 0;
      v74 = 0xF000000000000000;
    }

    v107 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord(0) + 40));
    v76 = *v107;
    v77 = v107[1];
    sub_1000EE9F4(*v107, v77);
    if (v74 >> 60 == 15)
    {
      if (v77 >> 60 != 15)
      {
        goto LABEL_79;
      }

      sub_1000FF5CC(v72, v74);
    }

    else
    {
      if (v77 >> 60 == 15)
      {
        goto LABEL_79;
      }

      sub_1000EE9F4(v76, v77);
      sub_1000FF5B8(v72, v74);
      v110 = sub_100121564(v72, v74, v76, v77);
      sub_1000EF870(v76, v77);
      sub_1000FF5CC(v72, v74);
      sub_1000FF5CC(v76, v77);
      sub_1000FF5CC(v72, v74);
      if (!v110)
      {
        goto LABEL_191;
      }
    }
  }

  v111 = [v2 buttonModes];
  if (v111)
  {

    v112 = [v2 buttonModes];
    if (!v112)
    {
      goto LABEL_191;
    }

    v113 = v112;
    v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v116 = v115;

    v117 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord(0) + 60));
    if (v114 == *v117 && v116 == v117[1])
    {
    }

    else
    {
      v118 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v118 & 1) == 0)
      {
        goto LABEL_191;
      }
    }
  }

  v119 = [v2 color];
  if (v119)
  {

    v120 = [v2 color];
    if (!v120)
    {
      goto LABEL_191;
    }

    v121 = v120;
    v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v124 = v123;

    v125 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord(0) + 64));
    if (v122 == *v125 && v124 == v125[1])
    {
    }

    else
    {
      v126 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v126 & 1) == 0)
      {
        goto LABEL_191;
      }
    }
  }

  v127 = [v2 deviceIDFeatureBitsV1];
  if (v127)
  {

    v128 = [v2 deviceIDFeatureBitsV1];
    if (!v128)
    {
      goto LABEL_191;
    }

    v129 = v128;
    v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v132 = v131;

    v133 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord(0) + 68));
    if (v130 == *v133 && v132 == v133[1])
    {
    }

    else
    {
      v134 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v134 & 1) == 0)
      {
        goto LABEL_191;
      }
    }
  }

  v135 = [v2 deviceIDFeatureBitsV2];
  if (v135)
  {

    v136 = [v2 deviceIDFeatureBitsV2];
    if (!v136)
    {
      goto LABEL_191;
    }

    v137 = v136;
    v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v140 = v139;

    v141 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord(0) + 72));
    if (v138 == *v141 && v140 == v141[1])
    {
    }

    else
    {
      v142 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v142 & 1) == 0)
      {
        goto LABEL_191;
      }
    }
  }

  v143 = [v2 encryptionKey];
  if (v143)
  {
    v144 = v143;
    v145 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v147 = v146;

    sub_1000EF870(v145, v147);
    v148 = [v2 encryptionKey];
    if (v148)
    {
      v149 = v148;
      v72 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v150;
    }

    else
    {
      v72 = 0;
      v74 = 0xF000000000000000;
    }

    v151 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord(0) + 48));
    v76 = *v151;
    v77 = v151[1];
    sub_1000EE9F4(*v151, v77);
    if (v74 >> 60 == 15)
    {
      if (v77 >> 60 != 15)
      {
        goto LABEL_79;
      }

      sub_1000FF5CC(v72, v74);
    }

    else
    {
      if (v77 >> 60 == 15)
      {
        goto LABEL_79;
      }

      sub_1000EE9F4(v76, v77);
      sub_1000FF5B8(v72, v74);
      v152 = sub_100121564(v72, v74, v76, v77);
      sub_1000EF870(v76, v77);
      sub_1000FF5CC(v72, v74);
      sub_1000FF5CC(v76, v77);
      sub_1000FF5CC(v72, v74);
      if (!v152)
      {
        goto LABEL_191;
      }
    }
  }

  v153 = [v2 irk];
  if (!v153)
  {
    goto LABEL_124;
  }

  v154 = v153;
  v155 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v157 = v156;

  sub_1000EF870(v155, v157);
  v158 = [v2 irk];
  if (v158)
  {
    v159 = v158;
    v72 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v160;
  }

  else
  {
    v72 = 0;
    v74 = 0xF000000000000000;
  }

  v161 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord(0) + 44));
  v76 = *v161;
  v77 = v161[1];
  sub_1000EE9F4(*v161, v77);
  if (v74 >> 60 == 15)
  {
    if (v77 >> 60 == 15)
    {
      sub_1000FF5CC(v72, v74);
      goto LABEL_124;
    }

LABEL_79:

    sub_1000FF5CC(v72, v74);
    v108 = v76;
    v109 = v77;
    goto LABEL_80;
  }

  if (v77 >> 60 == 15)
  {
    goto LABEL_79;
  }

  sub_1000EE9F4(v76, v77);
  sub_1000FF5B8(v72, v74);
  v162 = sub_100121564(v72, v74, v76, v77);
  sub_1000EF870(v76, v77);
  sub_1000FF5CC(v72, v74);
  sub_1000FF5CC(v76, v77);
  sub_1000FF5CC(v72, v74);
  if (!v162)
  {
    goto LABEL_191;
  }

LABEL_124:
  v163 = [v2 listeningServices];
  if (v163 || (v163 = [v2 listeningServicesV2]) != 0)
  {

    if (v14)
    {
      goto LABEL_191;
    }
  }

  v164 = [v2 spatialAudio];
  if (v164)
  {

    v165 = [v2 spatialAudio];
    if (!v165)
    {
      goto LABEL_191;
    }

    v166 = v165;
    v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v169 = v168;

    v170 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord(0) + 84));
    if (v167 == *v170 && v169 == v170[1])
    {
    }

    else
    {
      v171 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v171 & 1) == 0)
      {
        goto LABEL_191;
      }
    }
  }

  v172 = [v2 optimizedBatteryCharging];
  if (v172)
  {

    v173 = [v2 optimizedBatteryCharging];
    if (!v173)
    {
      goto LABEL_191;
    }

    v174 = v173;
    v175 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v177 = v176;

    v178 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord(0) + 88));
    if (v175 == *v178 && v177 == v178[1])
    {
    }

    else
    {
      v179 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v179 & 1) == 0)
      {
        goto LABEL_191;
      }
    }
  }

  v180 = [v2 optimizedBatteryFullChargeDeadline];
  if (v180)
  {

    v181 = [v2 optimizedBatteryFullChargeDeadline];
    if (!v181)
    {
      goto LABEL_191;
    }

    v182 = v181;
    v183 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v185 = v184;

    v186 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord(0) + 92));
    if (v183 == *v186 && v185 == v186[1])
    {
    }

    else
    {
      v187 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v187 & 1) == 0)
      {
        goto LABEL_191;
      }
    }
  }

  v188 = [v2 ratchet];
  if (!v188)
  {
    goto LABEL_162;
  }

  result = [v2 ratchet];
  if (!result)
  {
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
    goto LABEL_197;
  }

  v190 = result;
  v191 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v193 = v192;

  v194 = sub_10011EDEC(v191, v193);
  if (v195)
  {
    v196 = 0;
  }

  else
  {
    v196 = v194;
  }

  v197 = type metadata accessor for MagicPairingSettingsRecord(0);
  v198 = (v1 + *(v197 + 96));
  v199 = *v198;
  v200 = v198[1];

  v201 = sub_10011EDEC(v199, v200);
  if (v202)
  {
    if (v196 < 1)
    {
      goto LABEL_162;
    }
  }

  else if (v201 >= v196)
  {
    goto LABEL_162;
  }

  v203 = [v2 encryptionKey];
  if (!v203)
  {
    v205 = 0;
    v212 = (v1 + *(v197 + 48));
    v210 = *v212;
    v209 = v212[1];
    v207 = 0xF000000000000000;
    goto LABEL_159;
  }

  v204 = v203;
  v205 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v207 = v206;

  v208 = (v1 + *(v197 + 48));
  v210 = *v208;
  v209 = v208[1];
  if (v207 >> 60 == 15)
  {
LABEL_159:
    if (v209 >> 60 != 15)
    {
LABEL_161:
      v213 = v209;
      sub_1000EE9F4(v210, v209);
      sub_1000FF5CC(v205, v207);
      sub_1000FF5CC(v210, v213);
      goto LABEL_162;
    }

    sub_1000EE9F4(v210, v209);

    v108 = v205;
    v109 = v207;
LABEL_80:
    sub_1000FF5CC(v108, v109);
LABEL_192:
    v13 = 1;
    return (v13 & 1);
  }

  v211 = v208[1];
  if (v209 >> 60 == 15)
  {
    goto LABEL_161;
  }

  sub_1000EE9F4(v210, v209);
  sub_1000EE9F4(v210, v211);
  sub_1000FF5B8(v205, v207);
  v253 = sub_100121564(v205, v207, v210, v211);
  sub_1000FF5CC(v210, v211);
  sub_1000EF870(v210, v211);
  sub_1000FF5CC(v205, v207);
  sub_1000FF5CC(v205, v207);
  if (v253)
  {
    goto LABEL_191;
  }

LABEL_162:
  v214 = [v2 settingsMask];
  if (!v214)
  {
    goto LABEL_168;
  }

  v215 = [v2 settingsMask];
  if (!v215)
  {
    goto LABEL_191;
  }

  v216 = v215;
  v217 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v219 = v218;

  v220 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord(0) + 104));
  if (v217 == *v220 && v219 == v220[1])
  {

    goto LABEL_168;
  }

  v221 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v221 & 1) == 0)
  {
LABEL_191:

    goto LABEL_192;
  }

LABEL_168:
  v222 = [v2 supportedServices];
  if (!v222)
  {
    goto LABEL_176;
  }

  result = [v2 supportedServices];
  if (!result)
  {
    goto LABEL_195;
  }

  v223 = result;
  v224 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v226 = v225;

  v227 = HIBYTE(v226) & 0xF;
  if ((v226 & 0x2000000000000000) == 0)
  {
    v227 = v224 & 0xFFFFFFFFFFFFLL;
  }

  if (!v227)
  {
    goto LABEL_176;
  }

  result = [v2 supportedServices];
  if (!result)
  {
    goto LABEL_196;
  }

  v228 = result;
  v229 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v231 = v230;

  v232 = sub_10011EDEC(v229, v231);
  if ((v233 & 1) == 0 && !v232)
  {
    goto LABEL_176;
  }

  result = [v2 supportedServices];
  if (result)
  {
    v241 = result;
    v242 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v244 = v243;

    v245 = sub_10011EDEC(v242, v244);
    LOBYTE(v242) = v246;
    v247 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord(0) + 108));
    v248 = *v247;
    v249 = v247[1];

    v250 = sub_10011EDEC(v248, v249);
    if (v242)
    {
      if ((v251 & 1) == 0)
      {
        goto LABEL_191;
      }
    }

    else if ((v251 & 1) != 0 || v245 != v250)
    {
      goto LABEL_191;
    }

LABEL_176:
    v234 = [v2 version];
    if (!v234)
    {
LABEL_181:

      v13 = 0;
      return (v13 & 1);
    }

    v235 = [v2 version];
    if (v235)
    {
      v236 = v235;
      v237 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v239 = v238;

      v240 = (v1 + *(type metadata accessor for MagicPairingSettingsRecord(0) + 112));
      if (v237 != *v240 || v239 != v240[1])
      {
        v252 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v13 = v252 ^ 1;
        return (v13 & 1);
      }

      goto LABEL_181;
    }

    goto LABEL_191;
  }

LABEL_197:
  __break(1u);
  return result;
}

unint64_t sub_10011EAEC(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_1001204B4(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_10011EDEC(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_100120A38(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_10011F0EC(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x74654D64756F6C63;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x654B72657473616DLL;
      break;
    case 4:
      result = 0x694872657473616DLL;
      break;
    case 5:
    case 6:
      result = 0x726F737365636361;
      break;
    case 7:
      result = 7041641;
      break;
    case 8:
      result = 0x6974707972636E65;
      break;
    case 9:
      result = 0x49746375646F7270;
      break;
    case 10:
      result = 0x4449726F646E6576;
      break;
    case 11:
      result = 0x6F4D6E6F74747562;
      break;
    case 12:
      result = 0x726F6C6F63;
      break;
    case 13:
    case 14:
      result = 0xD000000000000015;
      break;
    case 15:
    case 23:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 0x416C616974617073;
      break;
    case 18:
      result = 0xD000000000000018;
      break;
    case 19:
      result = 0xD000000000000022;
      break;
    case 20:
      result = 0x74656863746172;
      break;
    case 21:
      result = 0x6465767265736572;
      break;
    case 22:
      result = 0x73676E6974746573;
      break;
    case 24:
      result = 0x6E6F6973726576;
      break;
    case 25:
      result = 0x6552746E65726170;
      break;
    case 26:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10011F3EC(void *a1)
{
  v3 = v1;
  v5 = sub_1000EE870(&unk_1002F8760, &qword_100228000);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  sub_1000EF78C(a1, a1[3]);
  sub_100121A68();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v27) = 0;
  type metadata accessor for UUID();
  sub_100121ABC(&qword_1002F8340, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for MagicPairingSettingsRecord(0);
    v10 = (v3 + v9[5]);
    v11 = v10[1];
    v27 = *v10;
    v28 = v11;
    v26 = 1;
    sub_1000EE9F4(v27, v11);
    sub_1000EF9D8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000EF870(v27, v28);
    LOBYTE(v27) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = (v3 + v9[7]);
    v14 = v13[1];
    v27 = *v13;
    v28 = v14;
    v26 = 3;
    sub_1000EE9F4(v27, v14);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000EF870(v27, v28);
    v15 = (v3 + v9[8]);
    v16 = v15[1];
    v27 = *v15;
    v28 = v16;
    v26 = 4;
    sub_1000EE9F4(v27, v16);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000EF870(v27, v28);
    v17 = (v3 + v9[9]);
    v18 = v17[1];
    v27 = *v17;
    v28 = v18;
    v26 = 5;
    sub_1000EE9F4(v27, v18);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000EF870(v27, v28);
    v19 = (v3 + v9[10]);
    v20 = v19[1];
    v27 = *v19;
    v28 = v20;
    v26 = 6;
    sub_1000EE9F4(v27, v20);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000EF870(v27, v28);
    v21 = (v3 + v9[11]);
    v22 = v21[1];
    v27 = *v21;
    v28 = v22;
    v26 = 7;
    sub_1000EE9F4(v27, v22);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000EF870(v27, v28);
    v23 = (v3 + v9[12]);
    v24 = v23[1];
    v27 = *v23;
    v28 = v24;
    v26 = 8;
    sub_1000EE9F4(v27, v24);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000EF870(v27, v28);
    LOBYTE(v27) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v27) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v27) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v27) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v27) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v27) = 14;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v27) = 15;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v27) = 16;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v27) = 17;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v27) = 18;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v27) = 19;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v27) = 20;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v27) = 21;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v27) = 22;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v27) = 23;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v27) = 24;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v27) = 25;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v27) = 26;
    type metadata accessor for Date();
    sub_100121ABC(&qword_1002F7DB0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10011FB98(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_100121ABC(&unk_1002F8350, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for MagicPairingSettingsRecord(0);
  Data.hash(into:)();
  String.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for Date();
  sub_100121ABC(&qword_1002F7DE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_10011FE70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001221EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10011FEA4(uint64_t a1)
{
  v2 = sub_100121A68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10011FEE0(uint64_t a1)
{
  v2 = sub_100121A68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10011FF40(uint64_t a1)
{
  v2 = v1 + *(a1 + 20);
  v3 = *v2;
  sub_1000EE9F4(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_10011FF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 120);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Swift::Int sub_10011FFF4()
{
  Hasher.init(_seed:)();
  sub_10011FB98(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100120038(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10011FB98(v2);
  return Hasher._finalize()();
}

uint64_t type metadata accessor for MagicPairingSettingsRecord(uint64_t a1)
{
  result = qword_1002F8670;
  if (!qword_1002F8670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001200F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_100120324(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1001214AC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1000EF870(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1001200F4(v13, a3, a4, &v12);
  v10 = v4;
  sub_1000EF870(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

unsigned __int8 *sub_1001204B4(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100120FC4(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_100120A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100120FC4(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100120FC4(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_100121044(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100121044(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10012119C(v9, 0), v12 = sub_100121210(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

void *sub_10012119C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000EE870(&unk_1002F8588, &qword_100227DB8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_100121210(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100121430(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100121430(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_100121430(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1001214AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_1001200F4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_100121564(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1000EE9F4(a3, a4);
          return sub_100120324(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1001216CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagicPairingSettingsRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100121730(uint64_t a1)
{
  v2 = type metadata accessor for MagicPairingSettingsRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100121790()
{
  result = qword_1002F8598;
  if (!qword_1002F8598)
  {
    result = swift_getWitnessTable(&unk_100227F70, &type metadata for MagicPairingSettingsRecord.MagicSettingsRecordError, v0, v1);
    atomic_store(result, &qword_1002F8598);
  }

  return result;
}

uint64_t sub_10012181C(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001218EC(uint64_t a1)
{
  *(a1 + 8) = sub_100121ABC(&qword_1002F8710, type metadata accessor for MagicPairingSettingsRecord, &unk_100227FB0);
  result = sub_100121ABC(&qword_1002F8718, type metadata accessor for MagicPairingSettingsRecord, &unk_100227F48);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1001219BC()
{
  result = qword_1002F8728;
  if (!qword_1002F8728)
  {
    result = swift_getWitnessTable(&unk_100227F20, &type metadata for MagicPairingSettingsRecord.MagicSettingsRecordError, v0, v1);
    atomic_store(result, &qword_1002F8728);
  }

  return result;
}

uint64_t sub_100121A10(uint64_t a1)
{
  result = sub_100121ABC(&qword_1002F8730, type metadata accessor for MagicPairingSettingsRecord, &unk_100227E34);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100121A68()
{
  result = qword_1002F8740;
  if (!qword_1002F8740)
  {
    result = swift_getWitnessTable(&unk_1002280CC, &type metadata for MagicPairingSettingsRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F8740);
  }

  return result;
}

uint64_t sub_100121ABC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100121B04(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MagicPairingSettingsRecord(0);
  if (!sub_100121564(*(a1 + v4[5]), *(a1 + v4[5] + 8), *(a2 + v4[5]), *(a2 + v4[5] + 8)))
  {
    return 0;
  }

  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (!sub_100121564(*(a1 + v4[7]), *(a1 + v4[7] + 8), *(a2 + v4[7]), *(a2 + v4[7] + 8)) || !sub_100121564(*(a1 + v4[8]), *(a1 + v4[8] + 8), *(a2 + v4[8]), *(a2 + v4[8] + 8)) || !sub_100121564(*(a1 + v4[9]), *(a1 + v4[9] + 8), *(a2 + v4[9]), *(a2 + v4[9] + 8)) || !sub_100121564(*(a1 + v4[10]), *(a1 + v4[10] + 8), *(a2 + v4[10]), *(a2 + v4[10] + 8)) || !sub_100121564(*(a1 + v4[11]), *(a1 + v4[11] + 8), *(a2 + v4[11]), *(a2 + v4[11] + 8)) || !sub_100121564(*(a1 + v4[12]), *(a1 + v4[12] + 8), *(a2 + v4[12]), *(a2 + v4[12] + 8)))
  {
    return 0;
  }

  v10 = v4[13];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  if ((v11 != *v13 || v12 != v13[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v14 = v4[14];
  v15 = *(a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  if ((v15 != *v17 || v16 != v17[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v18 = v4[15];
  v19 = *(a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  if ((v19 != *v21 || v20 != v21[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v22 = v4[16];
  v23 = *(a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  if ((v23 != *v25 || v24 != v25[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v26 = v4[17];
  v27 = *(a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  if ((v27 != *v29 || v28 != v29[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v30 = v4[18];
  v31 = *(a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  if ((v31 != *v33 || v32 != v33[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v34 = v4[19];
  v35 = *(a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  if ((v35 != *v37 || v36 != v37[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v38 = v4[20];
  v39 = *(a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  if ((v39 != *v41 || v40 != v41[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v42 = v4[21];
  v43 = *(a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  if ((v43 != *v45 || v44 != v45[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v46 = v4[22];
  v47 = *(a1 + v46);
  v48 = *(a1 + v46 + 8);
  v49 = (a2 + v46);
  if ((v47 != *v49 || v48 != v49[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v50 = v4[23];
  v51 = *(a1 + v50);
  v52 = *(a1 + v50 + 8);
  v53 = (a2 + v50);
  if ((v51 != *v53 || v52 != v53[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v54 = v4[24];
  v55 = *(a1 + v54);
  v56 = *(a1 + v54 + 8);
  v57 = (a2 + v54);
  if ((v55 != *v57 || v56 != v57[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v58 = v4[25];
  v59 = *(a1 + v58);
  v60 = *(a1 + v58 + 8);
  v61 = (a2 + v58);
  if ((v59 != *v61 || v60 != v61[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v62 = v4[26];
  v63 = *(a1 + v62);
  v64 = *(a1 + v62 + 8);
  v65 = (a2 + v62);
  if ((v63 != *v65 || v64 != v65[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v66 = v4[27];
  v67 = *(a1 + v66);
  v68 = *(a1 + v66 + 8);
  v69 = (a2 + v66);
  if ((v67 != *v69 || v68 != v69[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v70 = v4[28];
  v71 = *(a1 + v70);
  v72 = *(a1 + v70 + 8);
  v73 = (a2 + v70);
  if ((v71 != *v73 || v72 != v73[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v74 = v4[29];
  v75 = *(a1 + v74);
  v76 = *(a1 + v74 + 8);
  v77 = (a2 + v74);
  if ((v75 != *v77 || v76 != v77[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v78 = v4[30];

  return static Date.== infix(_:_:)(a1 + v78, a2 + v78);
}

uint64_t getEnumTagSinglePayload for MagicPairingSettingsRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MagicPairingSettingsRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001220E8()
{
  result = qword_1002F8770;
  if (!qword_1002F8770)
  {
    result = swift_getWitnessTable(&unk_1002280A4, &type metadata for MagicPairingSettingsRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F8770);
  }

  return result;
}

unint64_t sub_100122140()
{
  result = qword_1002F8778;
  if (!qword_1002F8778)
  {
    result = swift_getWitnessTable(&unk_100228014, &type metadata for MagicPairingSettingsRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F8778);
  }

  return result;
}

unint64_t sub_100122198()
{
  result = qword_1002F8780;
  if (!qword_1002F8780)
  {
    result = swift_getWitnessTable(&unk_10022803C, &type metadata for MagicPairingSettingsRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F8780);
  }

  return result;
}

uint64_t sub_1001221EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74654D64756F6C63 && a2 == 0xED00006174616461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100267080 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654B72657473616DLL && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x694872657473616DLL && a2 == 0xEA0000000000746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xEC00000079654B79 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED0000746E694879 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 7041641 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6974707972636E65 && a2 == 0xED000079654B6E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000044 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4449726F646E6576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6F4D6E6F74747562 && a2 == 0xEB00000000736564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000100269350 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000100269370 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100269390 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001002693B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x416C616974617073 && a2 == 0xEC0000006F696475 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001002693D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001002693F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x74656863746172 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x6465767265736572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x73676E6974746573 && a2 == 0xEC0000006B73614DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100269420 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x6552746E65726170 && a2 == 0xEC00000064726F63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001002672B0 == a2)
  {

    return 26;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 26;
    }

    else
    {
      return 27;
    }
  }
}

void *sub_100122A54()
{
  result = sub_100123520(0x3030304130, 0xE500000000000000, v1);
  if (*(&v1[0] + 1))
  {
    xmmword_100300BC0 = v1[0];
    xmmword_100300BD0 = v1[1];
    xmmword_100300BE0 = v1[2];
    xmmword_100300BF0 = v1[3];
    xmmword_100300C00 = v1[4];
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_100122AB4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100123520(*a1, a1[1], v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v5[4];
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_100122B04@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *sub_100122BC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];

  result = sub_100123520(v4, v3, &v10);
  v6 = v11;
  if (v11)
  {
    v7 = v10;

    *a2 = v7;
    *(a2 + 8) = v6;
    v8 = v13;
    *(a2 + 16) = v12;
    *(a2 + 32) = v8;
    v9 = v15;
    *(a2 + 48) = v14;
    *(a2 + 64) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100122C38(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1001233BC(v8, v9) & 1;
}

BOOL sub_100122C94(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_100122CF0(v8, v9);
}

BOOL sub_100122CF0(void *a1, void *a2)
{
  v2 = a2[2];
  v3 = a1[2];
  v4 = v2 < v3;
  if (v2 == v3)
  {
    if (a2[3] != a1[3] || a2[4] != a1[4])
    {
      v6 = a1;
      v7 = a2;
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v7;
      v9 = v8;
      a1 = v6;
      if ((v9 & 1) == 0)
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
        return (v16 & 1) == 0;
      }
    }

    v10 = a2[7];
    v11 = a1[7];
    v4 = v10 < v11;
    if (v10 == v11)
    {
      if (a2[9])
      {
        v12 = a2[8];
        v13 = a2[9];
        v14 = a1[9];
        if (v14)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v12 = 0;
        v13 = 0xE000000000000000;
        v14 = a1[9];
        if (v14)
        {
LABEL_10:
          v15 = v14;
          if (v12 != a1[8])
          {
            goto LABEL_20;
          }

LABEL_18:
          if (v13 == v15)
          {
            v16 = 0;
LABEL_21:

            return (v16 & 1) == 0;
          }

LABEL_20:
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_21;
        }
      }

      v15 = 0xE000000000000000;
      if (v12)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  v16 = v4;
  return (v16 & 1) == 0;
}

BOOL sub_100122E44(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_100122EA0(v8, v9);
}

BOOL sub_100122EA0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = v2 < v3;
  if (v2 == v3)
  {
    if (a1[3] != a2[3] || a1[4] != a2[4])
    {
      v6 = a1;
      v7 = a2;
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v7;
      v9 = v8;
      a1 = v6;
      if ((v9 & 1) == 0)
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
        return (v17 & 1) == 0;
      }
    }

    v10 = a1[7];
    v11 = a2[7];
    v4 = v10 < v11;
    if (v10 == v11)
    {
      v12 = a1[9];
      if (v12)
      {
        v13 = a1[8];
        v14 = v12;
        v15 = a2[9];
        if (v15)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v13 = 0;
        v14 = 0xE000000000000000;
        v15 = a2[9];
        if (v15)
        {
LABEL_10:
          v16 = v15;
          if (v13 != a2[8])
          {
            goto LABEL_20;
          }

LABEL_18:
          if (v14 == v16)
          {
            v17 = 0;
LABEL_21:

            return (v17 & 1) == 0;
          }

LABEL_20:
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_21;
        }
      }

      v16 = 0xE000000000000000;
      if (v13)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  v17 = v4;
  return (v17 & 1) == 0;
}

uint64_t sub_100122FF0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_10012304C(v8, v9) & 1;
}

uint64_t sub_10012304C(void *a1, void *a2)
{
  v2 = a2[2];
  v3 = a1[2];
  v4 = v2 < v3;
  if (v2 != v3)
  {
    goto LABEL_12;
  }

  v5 = a2[3] == a1[3] && a2[4] == a1[4];
  if (v5 || (v6 = a1, v7 = a2, v8 = _stringCompareWithSmolCheck(_:_:expecting:)(), a2 = v7, v9 = v8, a1 = v6, (v9 & 1) != 0))
  {
    v10 = a2[7];
    v11 = a1[7];
    v4 = v10 < v11;
    if (v10 == v11)
    {
      if (a2[9])
      {
        v12 = a2[8];
        v13 = a2[9];
        v14 = a1[9];
        if (v14)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v12 = 0;
        v13 = 0xE000000000000000;
        v14 = a1[9];
        if (v14)
        {
LABEL_10:
          v15 = v14;
          if (v12 != a1[8])
          {
            goto LABEL_22;
          }

LABEL_20:
          if (v13 == v15)
          {
            v16 = 0;
LABEL_23:

            return v16 & 1;
          }

LABEL_22:
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_23;
        }
      }

      v15 = 0xE000000000000000;
      if (v12)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

LABEL_12:
    v16 = v4;
    return v16 & 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1001231B4(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1001231E4()
{
  if (*(v0 + 48))
  {
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  else
  {
    v1 = dispatch thunk of CustomStringConvertible.description.getter();
    v2 = v3;
  }

  if (*(v0 + 72))
  {
    Character.write<A>(to:)();
  }

  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  Character.write<A>(to:)();
  v5._countAndFlagsBits = v1;
  v5._object = v2;
  String.append(_:)(v5);

  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  String.append(_:)(v7);

  return 0;
}

unint64_t sub_100123368()
{
  result = qword_1002F8790;
  if (!qword_1002F8790)
  {
    result = swift_getWitnessTable(&unk_100228148, &type metadata for SystemVersionNumber, v0, v1);
    atomic_store(result, &qword_1002F8790);
  }

  return result;
}

uint64_t sub_1001233BC(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = v2 < v3;
  if (v2 != v3)
  {
    goto LABEL_12;
  }

  v5 = a1[3] == a2[3] && a1[4] == a2[4];
  if (v5 || (v6 = a1, v7 = a2, v8 = _stringCompareWithSmolCheck(_:_:expecting:)(), a2 = v7, v9 = v8, a1 = v6, (v9 & 1) != 0))
  {
    v10 = a1[7];
    v11 = a2[7];
    v4 = v10 < v11;
    if (v10 == v11)
    {
      v12 = a1[9];
      if (v12)
      {
        v13 = a1[8];
        v14 = v12;
        v15 = a2[9];
        if (v15)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v13 = 0;
        v14 = 0xE000000000000000;
        v15 = a2[9];
        if (v15)
        {
LABEL_10:
          v16 = v15;
          if (v13 != a2[8])
          {
            goto LABEL_22;
          }

LABEL_20:
          if (v14 == v16)
          {
            v17 = 0;
LABEL_23:

            return v17 & 1;
          }

LABEL_22:
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_23;
        }
      }

      v16 = 0xE000000000000000;
      if (v13)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

LABEL_12:
    v17 = v4;
    return v17 & 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100123520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v42 = a3;
  v5 = type metadata accessor for NSScanner.NumberRepresentation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(NSScanner);
  v40 = a1;
  v41 = a2;
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithString:v10];

  v12 = enum case for NSScanner.NumberRepresentation.decimal(_:);
  v13 = *(v6 + 104);
  v13(v8, enum case for NSScanner.NumberRepresentation.decimal(_:), v5);
  v39 = NSScanner.scanInt(representation:)();
  v15 = v14;
  v16 = *(v6 + 8);
  v16(v8, v5);
  if (v15)
  {

LABEL_14:

    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    object = 0;
    goto LABEL_15;
  }

  v17 = NSScanner.scanCharacter()();
  object = v17.value._object;
  if (v17.value._object)
  {
    countAndFlagsBits = v17.value._countAndFlagsBits;
    v13(v8, v12, v5);
    v19 = NSScanner.scanInt(representation:)();
    v21 = v20;
    v16(v8, v5);
    if (v21)
    {
    }

    else
    {
      v27 = v19 / 0x3E8uLL;
      if (v19 < 1000)
      {
        v27 = 0;
      }

      v37 = v27;
      if (v19 >= 1000)
      {
        v28 = v19 % 0x3E8uLL;
      }

      else
      {
        v28 = v19;
      }

      v54 = v19 < 1000;
      v24 = v41;

      v29 = NSScanner.scanCharacter()();
      v30 = v29.value._countAndFlagsBits;
      v31 = v29.value._object;
      v23 = v40;
      NSScanner.currentIndex.getter();
      v32 = String.distance(from:to:)();

      if (!v32)
      {
        v44[0] = v23;
        v44[1] = v24;
        v25 = v39;
        v44[2] = v39;
        v44[3] = countAndFlagsBits;
        v33 = v37;
        v44[4] = v17.value._object;
        v44[5] = v37;
        LOBYTE(v45) = v54;
        *(&v45 + 1) = *v53;
        HIDWORD(v45) = *&v53[3];
        v46 = v28;
        v47 = v29;
        v34 = v45;
        v48[0] = v23;
        v48[1] = v24;
        v48[2] = v39;
        v48[3] = countAndFlagsBits;
        v48[4] = v17.value._object;
        v48[5] = v37;
        v49 = v54;
        *&v50[3] = *&v53[3];
        *v50 = *v53;
        v51 = v28;
        v52 = v29;
        sub_1001238A4(v44, &v43);
        result = sub_1001238DC(v48);
        v26 = countAndFlagsBits;
        goto LABEL_16;
      }
    }

    goto LABEL_14;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
LABEL_15:
  v33 = 0;
  v34 = 0;
  v28 = 0;
  v30 = 0;
  v31 = 0;
LABEL_16:
  v35 = v42;
  *v42 = v23;
  v35[1] = v24;
  v35[2] = v25;
  v35[3] = v26;
  v35[4] = object;
  v35[5] = v33;
  v35[6] = v34;
  v35[7] = v28;
  v35[8] = v30;
  v35[9] = v31;
  return result;
}

__n128 sub_10012390C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100123928(uint64_t a1, int a2)
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

uint64_t sub_100123970(uint64_t result, int a2, int a3)
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

unint64_t sub_1001239E4()
{
  result = qword_1002F8798;
  if (!qword_1002F8798)
  {
    result = swift_getWitnessTable(&unk_100228214, &type metadata for SystemVersionNumber, v0, v1);
    atomic_store(result, &qword_1002F8798);
  }

  return result;
}

unint64_t sub_100123A48()
{
  result = qword_1002F87A0;
  if (!qword_1002F87A0)
  {
    result = swift_getWitnessTable(&unk_10022824C, &type metadata for SystemVersionNumber, v0, v1);
    atomic_store(result, &qword_1002F87A0);
  }

  return result;
}

unint64_t sub_100123AA8()
{
  result = qword_1002F87A8;
  if (!qword_1002F87A8)
  {
    result = swift_getWitnessTable(&unk_10022831C, &type metadata for SystemVersionNumber, v0, v1);
    atomic_store(result, &qword_1002F87A8);
  }

  return result;
}

uint64_t sub_100123B00(uint64_t a1)
{
  v2 = v1;
  v19 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v19);
  v18[2] = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v10 - 8);
  v12 = v18 - v11;
  URL.init(string:)();
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v12, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v14 + 32))(v2 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_ckTokenBaseURL, v12, v13);
    (*(v14 + 16))(v2 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL, a1, v13);
    v18[1] = sub_100115C10();
    v16._countAndFlagsBits = URL.lastPathComponent.getter();
    v18[0] = a1;
    v20 = 0xD00000000000002FLL;
    v21 = 0x8000000100269930;
    String.append(_:)(v16);

    (*(v7 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
    static DispatchQoS.unspecified.getter();
    v20 = _swiftEmptyArrayStorage;
    sub_100126734(&unk_1002F93A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000EE870(&qword_1002F9710, &unk_100227B80);
    sub_10012677C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v17 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    (*(v14 + 8))(v18[0], v13);
    *(v2 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue) = v17;
    return v2;
  }

  return result;
}

uint64_t sub_100123EB4(uint64_t a1, uint64_t a2)
{
  v104 = a2;
  v4 = type metadata accessor for URLResourceValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v92 - v13;
  if (![objc_opt_self() isFirstUnlocked])
  {
    v25 = static os_log_type_t.error.getter();
    if (qword_1002F7AF0 != -1)
    {
      v90 = v25;
      swift_once();
      v25 = v90;
    }

    os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, qword_100300E40, "store call failed because in device is in beforeFirstUnlock state", 65, 2, _swiftEmptyArrayStorage);
    goto LABEL_21;
  }

  v101 = v7;
  v102 = v11;
  v98 = v5;
  v99 = objc_opt_self();
  v15 = [v99 defaultManager];
  v103 = a1;
  URL.path.getter();
  v16 = String._bridgeToObjectiveC()();

  v17 = [v15 fileExistsAtPath:v16];

  if (v17 && (static URL.== infix(_:_:)() & 1) != 0)
  {
    v18 = static os_log_type_t.info.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v19 = qword_100300E40;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100226100;
    v21 = URL.path.getter();
    v23 = v22;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_1000EE954();
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v19, "Skipping file already exists at: %@", 35, 2, v20);
  }

  URL.pathExtension.getter();
  v26 = String.count.getter();

  if (v26 < 1)
  {
    v64 = static os_log_type_t.error.getter();
    if (qword_1002F7AF0 != -1)
    {
      v91 = v64;
      swift_once();
      v64 = v91;
    }

    os_log(_:dso:log:_:_:)(v64, &_mh_execute_header, qword_100300E40, "Invalid filename, missing file extension", 40, 2, _swiftEmptyArrayStorage);
LABEL_21:
    sub_1001266E0();
    swift_allocError();
    *v65 = 0x8000000000000010;
    return swift_willThrow();
  }

  v92[2] = v2;
  v94 = v9;
  (*(v9 + 16))(v14, v103, v8);
  URL.deletingLastPathComponent()();
  v27 = static os_log_type_t.default.getter();
  if (qword_1002F7AF0 != -1)
  {
    swift_once();
  }

  v93 = v4;
  v97 = v14;
  v28 = qword_100300E40;
  v29 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v30 = swift_allocObject();
  v100 = xmmword_100226100;
  *(v30 + 16) = xmmword_100226100;
  v31 = URL.path.getter();
  v33 = v32;
  *(v30 + 56) = &type metadata for String;
  v34 = sub_1000EE954();
  *(v30 + 64) = v34;
  *(v30 + 32) = v31;
  *(v30 + 40) = v33;
  v96 = v28;
  os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v28, "Creating file directory: %@", 27, 2, v30);

  if (qword_1002F79C8 != -1)
  {
    swift_once();
  }

  sub_1000F0254();

  URLResourceValues.init()();
  URLResourceValues.isExcludedFromBackup.setter();
  v35 = static os_log_type_t.info.getter();
  v36 = swift_allocObject();
  *(v36 + 16) = v100;
  sub_100126734(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v37 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v36 + 56) = &type metadata for String;
  *(v36 + 64) = v34;
  *(v36 + 32) = v37;
  *(v36 + 40) = v38;
  v39 = v29;
  v40 = v96;
  os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, v96, "Moving asset from: %@", 21, 2, v36);

  v41 = static os_log_type_t.info.getter();
  v92[1] = v39;
  v42 = swift_allocObject();
  *(v42 + 16) = v100;
  v95 = v8;
  v43 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v42 + 56) = &type metadata for String;
  *(v42 + 64) = v34;
  *(v42 + 32) = v43;
  *(v42 + 40) = v44;
  os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, v40, "Moving asset to: %@", 19, 2, v42);

  v45 = v99;
  v46 = [v99 defaultManager];
  URL.path.getter();
  v47 = String._bridgeToObjectiveC()();

  v48 = [v46 fileExistsAtPath:v47];

  if (v48)
  {
    v49 = static os_log_type_t.info.getter();
    v50 = swift_allocObject();
    *(v50 + 16) = v100;
    v51 = URL.path.getter();
    *(v50 + 56) = &type metadata for String;
    *(v50 + 64) = v34;
    *(v50 + 32) = v51;
    *(v50 + 40) = v52;
    os_log(_:dso:log:_:_:)(v49, &_mh_execute_header, v96, "File already exists replace at: %@", 34, 2, v50);

    v53 = [v45 defaultManager];
    v54 = v97;
    URL._bridgeToObjectiveC()(v55);
    v57 = v56;
    URL._bridgeToObjectiveC()(v58);
    v60 = v59;
    v105 = 0;
    v61 = [v53 replaceItemAtURL:v57 withItemAtURL:v59 backupItemName:0 options:0 resultingItemURL:0 error:&v105];

    v62 = v105;
    v63 = v94;
    if (v61)
    {
      goto LABEL_23;
    }

LABEL_25:
    v85 = v62;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v98 + 8))(v101, v93);
    v86 = *(v63 + 8);
    v87 = v95;
    v86(v102, v95);
    return (v86)(v54, v87);
  }

  v66 = [v45 defaultManager];
  URL._bridgeToObjectiveC()(v67);
  v69 = v68;
  v54 = v97;
  URL._bridgeToObjectiveC()(v70);
  v72 = v71;
  v105 = 0;
  v73 = [v66 moveItemAtURL:v69 toURL:v71 error:&v105];

  v62 = v105;
  v63 = v94;
  if (!v73)
  {
    goto LABEL_25;
  }

LABEL_23:
  v74 = v62;
  sub_1000EE870(&qword_1002F8900, &qword_100228398);
  inited = swift_initStackObject();
  *(inited + 16) = v100;
  *(inited + 32) = NSFileProtectionKey;
  *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v76 = NSFileProtectionKey;
  v77 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v78 = sub_1000F97FC(inited);
  swift_setDeallocating();
  sub_1000EEE6C(inited + 32, &unk_1002F9D30, qword_1002283A0);
  v79 = [v99 defaultManager];
  sub_10018AA14(v78);

  type metadata accessor for FileAttributeKey(0);
  sub_100126734(&qword_1002F7DC8, type metadata accessor for FileAttributeKey, &unk_100226A90);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  URL.path.getter();
  v81 = String._bridgeToObjectiveC()();

  v105 = 0;
  LODWORD(inited) = [v79 setAttributes:isa ofItemAtPath:v81 error:&v105];

  v82 = v95;
  if (inited)
  {
    v83 = v105;
    v84 = v101;
    URL.setResourceValues(_:)();
    (*(v98 + 8))(v84, v93);
  }

  else
  {
    v88 = v105;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v98 + 8))(v101, v93);
  }

  v89 = *(v63 + 8);
  v89(v102, v82);
  return (v89)(v54, v82);
}

uint64_t sub_1001249E4@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v47 = a1;
  v48 = a2;
  v49 = a4;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v45 - v10;
  v12 = objc_autoreleasePoolPush();
  v45[1] = a3;
  URL.path.getter();
  v13 = v5;
  URL.appendingPathComponent(_:)();

  URL.appendingPathComponent(_:)();
  v14 = *(v6 + 8);
  v48 = v6 + 8;
  v14(v8, v13);
  objc_autoreleasePoolPop(v12);
  v15 = objc_opt_self();
  v16 = [v15 defaultManager];
  URL.path.getter();
  v17 = String._bridgeToObjectiveC()();

  LODWORD(a3) = [v16 fileExistsAtPath:v17];

  if (!a3)
  {
LABEL_6:
    v32 = 1;
    goto LABEL_10;
  }

  v18 = [v15 defaultManager];
  URL._bridgeToObjectiveC()(v19);
  v21 = v20;
  v50 = 0;
  v22 = [v18 removeItemAtURL:v20 error:&v50];

  if (v22)
  {
    v23 = v50;
    LODWORD(v47) = static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    v24 = qword_100300E40;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100226C80;
    sub_100126734(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    *(v25 + 56) = &type metadata for String;
    v29 = sub_1000EE954();
    *(v25 + 64) = v29;
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    v30 = URL.lastPathComponent.getter();
    *(v25 + 96) = &type metadata for String;
    *(v25 + 104) = v29;
    *(v25 + 72) = v30;
    *(v25 + 80) = v31;
    os_log(_:dso:log:_:_:)(v47, &_mh_execute_header, v24, "Deleted record %@ from %@", 25, 2, v25);

    goto LABEL_6;
  }

  v46 = v13;
  v47 = v11;
  v33 = v50;
  v34 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v35 = static os_log_type_t.default.getter();
  if (qword_1002F7AF0 != -1)
  {
    swift_once();
  }

  v36 = qword_100300E40;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100226C80;
  v50 = v34;
  swift_errorRetain();
  sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
  v38 = String.init<A>(describing:)();
  v40 = v39;
  *(v37 + 56) = &type metadata for String;
  v41 = sub_1000EE954();
  *(v37 + 64) = v41;
  *(v37 + 32) = v38;
  *(v37 + 40) = v40;
  v42 = URL.lastPathComponent.getter();
  *(v37 + 96) = &type metadata for String;
  *(v37 + 104) = v41;
  *(v37 + 72) = v42;
  *(v37 + 80) = v43;
  os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, v36, "Could not delete record %@ from %@", 34, 2, v37);

  v32 = 0;
  v13 = v46;
  v11 = v47;
LABEL_10:
  result = (v14)(v11, v13);
  *v49 = v32;
  return result;
}

uint64_t sub_100124EB4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_serialQueue);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5, v7);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    URL.path.getter();
    URL.appendingPathComponent(_:)();

    sub_1000F0768();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100125240()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = static os_log_type_t.default.getter();
  if (qword_1002F7AF0 != -1)
  {
    v11 = v4;
    swift_once();
    v4 = v11;
  }

  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, qword_100300E40, "Purging sound profile data", 26, 2, _swiftEmptyArrayStorage);
  if (qword_1002F79D8 != -1)
  {
    swift_once();
  }

  v5 = sub_1000EE91C(v0, qword_100300B50);
  v6 = *(v1 + 16);
  v6(v3, v5, v0);
  sub_1001250A8();
  v7 = *(v1 + 8);
  v7(v3, v0);
  if (qword_1002F79E0 != -1)
  {
    swift_once();
  }

  v8 = sub_1000EE91C(v0, qword_100300B68);
  v6(v3, v8, v0);
  v9 = sub_1001250A8();

  result = (v7)(v3, v0);
  if (v9)
  {
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100125484()
{
  v0 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v31 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = static os_log_type_t.default.getter();
  if (qword_1002F7AF0 != -1)
  {
    v29 = v4;
    v30 = v9;
    swift_once();
    v9 = v30;
    v4 = v29;
  }

  v36 = v2;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, qword_100300E40, "Purging local cache storage", 27, 2, _swiftEmptyArrayStorage);
  sub_1001250A8();
  if (qword_1002F79E8 != -1)
  {
    swift_once();
  }

  v10 = sub_1000EE91C(v3, qword_100300B80);
  v11 = *(v4 + 16);
  v11(v8, v10, v3);
  sub_1001250A8();

  v34 = v4;
  v12 = *(v4 + 8);
  v12(v8, v3);
  if (qword_1002F79C0 != -1)
  {
    swift_once();
  }

  v13 = sub_1000EE91C(v3, qword_100300AF0);
  v11(v8, v13, v3);
  sub_1001250A8();

  v12(v8, v3);
  if (qword_1002F7A68 != -1)
  {
    swift_once();
  }

  v14 = sub_1000EE91C(v3, qword_100300D48);
  v11(v8, v14, v3);
  sub_1001250A8();

  v12(v8, v3);
  if (qword_1002F7A70 != -1)
  {
    swift_once();
  }

  v15 = sub_1000EE91C(v3, qword_100300D60);
  v11(v8, v15, v3);
  sub_1001250A8();

  v12(v8, v3);
  if (qword_1002F7A00 != -1)
  {
    swift_once();
  }

  v16 = sub_1000EE91C(v3, qword_100300BA8);
  v11(v8, v16, v3);
  sub_1001250A8();

  v12(v8, v3);
  if (qword_1002F79D8 != -1)
  {
    swift_once();
  }

  v17 = sub_1000EE91C(v3, qword_100300B50);
  v11(v8, v17, v3);
  sub_1001250A8();

  v12(v8, v3);
  if (qword_1002F79E0 != -1)
  {
    swift_once();
  }

  v18 = sub_1000EE91C(v3, qword_100300B68);
  v33 = v11;
  v31 = v4 + 16;
  v11(v8, v18, v3);
  sub_1001250A8();

  v12(v8, v3);
  v19 = v36;
  URL.init(string:)();
  v20 = v34;
  result = (*(v34 + 48))(v19, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v22 = v32;
    (*(v20 + 32))(v32, v19, v3);
    sub_1001250A8();

    v12(v22, v3);
    v35[3] = &type metadata for AudioAccessoryFeatures;
    v35[4] = sub_1000F1874();
    v23 = isFeatureEnabled(_:)();
    sub_1000EF824(v35);
    if (v23)
    {
      v24 = v33;
      if (qword_1002F7AB8 != -1)
      {
        swift_once();
      }

      v25 = sub_1000EE91C(v3, qword_100300D88);
      v24(v8, v25, v3);
      sub_1001250A8();

      v12(v8, v3);
      if (qword_1002F79D0 != -1)
      {
        swift_once();
      }

      v26 = sub_1000EE91C(v3, qword_100300B10);
      v24(v8, v26, v3);
      sub_1001250A8();

      v12(v8, v3);
    }

    else
    {
      v24 = v33;
    }

    if (qword_1002F7A60 != -1)
    {
      swift_once();
    }

    v27 = sub_1000EE91C(v3, qword_100300C40);
    v24(v8, v27, v3);
    v28 = sub_1001250A8();

    result = (v12)(v8, v3);
    if (v28)
    {
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100125C54()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = static os_log_type_t.default.getter();
  if (qword_1002F7AF0 != -1)
  {
    v12 = v4;
    swift_once();
    v4 = v12;
  }

  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, qword_100300E40, "Purging Audio Accessory Zone data", 33, 2, _swiftEmptyArrayStorage);
  if (qword_1002F7AB8 != -1)
  {
    swift_once();
  }

  v5 = sub_1000EE91C(v0, qword_100300D88);
  v6 = *(v1 + 16);
  v6(v3, v5, v0);
  sub_1001250A8();
  v7 = *(v1 + 8);
  v7(v3, v0);
  if (qword_1002F79D0 != -1)
  {
    swift_once();
  }

  v8 = sub_1000EE91C(v0, qword_100300B10);
  v6(v3, v8, v0);
  sub_1001250A8();

  v7(v3, v0);
  if (qword_1002F7A60 != -1)
  {
    swift_once();
  }

  v9 = sub_1000EE91C(v0, qword_100300C40);
  v6(v3, v9, v0);
  v10 = sub_1001250A8();

  result = (v7)(v3, v0);
  if (v10)
  {
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100125F18()
{
  v0 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v42[-v1];
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v42[-v8];
  v10 = static os_log_type_t.default.getter();
  if (qword_1002F7AF0 != -1)
  {
    v41 = v10;
    swift_once();
    v10 = v41;
  }

  v11 = qword_100300E40;
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, qword_100300E40, "Obliterating all iCloud user's local storage", 44, 2, _swiftEmptyArrayStorage);
  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  type metadata accessor for DeviceStore(0);
  sub_100174350();
  v14 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  v15 = v4 + 8;
  v47 = *(v4 + 8);
  result = v47(v9, v3);
  v49 = v14;
  if (v14)
  {
    v48 = (v4 + 56);
    v45 = (v4 + 32);
    v46 = (v4 + 48);
    v44 = xmmword_100226100;
    while (1)
    {
      if ([v49 nextObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v50 = 0u;
        v51 = 0u;
      }

      v52[0] = v50;
      v52[1] = v51;
      if (!*(&v51 + 1))
      {

        sub_1000EEE6C(v52, &unk_1002F9C10, &qword_100228390);
        (*v48)(v2, 1, 1, v3);
        return sub_1000EEE6C(v2, &unk_1002F7BA0, &unk_1002270E0);
      }

      v23 = swift_dynamicCast();
      (*v48)(v2, v23 ^ 1u, 1, v3);
      if ((*v46)(v2, 1, v3) == 1)
      {
        break;
      }

      (*v45)(v6, v2, v3);
      v24 = [v12 defaultManager];
      URL._bridgeToObjectiveC()(v25);
      v27 = v26;
      *&v52[0] = 0;
      v28 = [v24 removeItemAtURL:v26 error:v52];

      if (v28)
      {
        v17 = *&v52[0];
        v18 = static os_log_type_t.default.getter();
        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v19 = swift_allocObject();
        *(v19 + 16) = v44;
        sub_100126734(&unk_1002F9C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v20 = dispatch thunk of CustomStringConvertible.description.getter();
        v22 = v21;
        *(v19 + 56) = &type metadata for String;
        *(v19 + 64) = sub_1000EE954();
        *(v19 + 32) = v20;
        *(v19 + 40) = v22;
        os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v11, "Deleted iCloud user files: %@", 29, 2, v19);
      }

      else
      {
        v29 = *&v52[0];
        v30 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v43 = static os_log_type_t.default.getter();
        sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
        v31 = swift_allocObject();
        *(v31 + 16) = v44;
        *&v52[0] = v30;
        swift_errorRetain();
        sub_1000EE870(&qword_1002F92F0, &qword_100227B70);
        v32 = String.init<A>(describing:)();
        v33 = v3;
        v34 = v2;
        v35 = v6;
        v36 = v12;
        v37 = v11;
        v38 = v15;
        v40 = v39;
        *(v31 + 56) = &type metadata for String;
        *(v31 + 64) = sub_1000EE954();
        *(v31 + 32) = v32;
        *(v31 + 40) = v40;
        v15 = v38;
        v11 = v37;
        v12 = v36;
        v6 = v35;
        v2 = v34;
        v3 = v33;
        os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, v11, "Could not delete iCloud user files: %@", 38, 2, v31);
      }

      v47(v6, v3);
    }

    return sub_1000EEE6C(v2, &unk_1002F7BA0, &unk_1002270E0);
  }

  return result;
}

uint64_t sub_100126510()
{
  v1 = OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_directoryURL;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  v3(v0 + OBJC_IVAR____TtC15audioaccessoryd17RecordFileManager_ckTokenBaseURL, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecordFileManager(uint64_t a1)
{
  result = qword_1002F87D8;
  if (!qword_1002F87D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100126640(uint64_t a1)
{
  result = type metadata accessor for URL();
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

unint64_t sub_1001266E0()
{
  result = qword_1002F88F8;
  if (!qword_1002F88F8)
  {
    result = swift_getWitnessTable(&unk_100229BC4, &type metadata for DeviceStore.DeviceStoreError, v0, v1);
    atomic_store(result, &qword_1002F88F8);
  }

  return result;
}

uint64_t sub_100126734(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10012677C()
{
  result = qword_1002F93B0;
  if (!qword_1002F93B0)
  {
    v3 = sub_1000F2B2C(&qword_1002F9710, &unk_100227B80);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1002F93B0);
  }

  return result;
}

uint64_t type metadata accessor for CloudCoordinatorConfiguration(uint64_t a1)
{
  result = qword_1002F8960;
  if (!qword_1002F8960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100126854(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100126948(319, &qword_1002F8970, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      type metadata accessor for URL();
      if (v3 <= 0x3F)
      {
        sub_100126948(319, &unk_1002F8978, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100126948(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for String);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10012699C()
{
  v0 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  sub_1000EE8B8(v3, qword_100300C28);
  v4 = sub_1000EE91C(v3, qword_100300C28);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100126AD4()
{
  _StringGuts.grow(_:)(67);
  v1._object = 0x8000000100269980;
  v1._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v1);
  v2 = *(v0 + *(type metadata accessor for CloudCoordinatorConfiguration(0) + 24));
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x4449656E6F7A202CLL;
  v3._object = 0xEB00000000203A73;
  String.append(_:)(v3);
  v4._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v4);

  return 0;
}

uint64_t sub_100126BB0(void *a1)
{
  v3 = v1;
  v5 = sub_1000EE870(&qword_1002F89E0, &unk_1002284F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000EF78C(a1, a1[3]);
  sub_100127810();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  type metadata accessor for UUID();
  sub_100127924(&qword_1002F8340, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for CloudCoordinatorConfiguration(0);
    v15 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = 3;
    type metadata accessor for URL();
    sub_100127924(&qword_1002F8128, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + *(v9 + 32));
    v11[15] = 4;
    sub_1000EE870(&qword_1002F7F00, &qword_1002284F0);
    sub_10012796C(&qword_1002F89E8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100126E90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = type metadata accessor for URL();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000EE870(&qword_1002F89C8, &unk_1002284E0);
  v32 = *(v10 - 8);
  v33 = v10;
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  v13 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  __chkstk_darwin(v13 - 8);
  v15 = &v29 - v14;
  v37 = type metadata accessor for CloudCoordinatorConfiguration(0);
  __chkstk_darwin(v37);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();
  result = (*(v7 + 48))(v15, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 32))(v17, v15, v6);
    v19 = a1[3];
    v36 = a1;
    sub_1000EF78C(a1, v19);
    sub_100127810();
    dispatch thunk of Decoder.container<A>(keyedBy:)();
    if (v2)
    {
      sub_1000EF824(v36);
      return (*(v7 + 8))(v17, v6);
    }

    else
    {
      v43 = 0;
      sub_100127924(&unk_1002F8750, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v20 = v33;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v7 + 40))(v17, v9, v6);
      v42 = 1;
      v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v22 = v37;
      v23 = &v17[*(v37 + 20)];
      *v23 = v21;
      v23[1] = v24;
      v41 = 2;
      v25 = KeyedDecodingContainer.decode(_:forKey:)();
      v26 = &v17[v22[6]];
      *v26 = v25;
      v26[1] = v27;
      v40 = 3;
      sub_100127924(&qword_1002F8138, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v28 = v35;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v34 + 32))(&v17[v22[7]], v31, v28);
      sub_1000EE870(&qword_1002F7F00, &qword_1002284F0);
      v39 = 4;
      sub_10012796C(&qword_1002F89D8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v32 + 8))(v12, v20);
      *&v17[v22[8]] = v38;
      sub_100127864(v17, v30);
      sub_1000EF824(v36);
      return sub_1001278C8(v17);
    }
  }

  return result;
}

unint64_t sub_100127524()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000013;
  v4 = 0x726F746365726964;
  if (v1 != 3)
  {
    v4 = 0x734449656E6F7ALL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001275D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100127AF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10012760C(uint64_t a1)
{
  v2 = sub_100127810();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100127648(uint64_t a1)
{
  v2 = sub_100127810();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100127688(uint64_t a1)
{
  _StringGuts.grow(_:)(67);
  v3._object = 0x8000000100269980;
  v3._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v3);
  String.append(_:)(*(v1 + *(a1 + 24)));
  v4._countAndFlagsBits = 0x4449656E6F7A202CLL;
  v4._object = 0xEB00000000203A73;
  String.append(_:)(v4);
  v5._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v5);

  return 0;
}

uint64_t sub_10012778C(uint64_t a1)
{
  *(a1 + 8) = sub_100127924(&qword_1002F89B8, type metadata accessor for CloudCoordinatorConfiguration, &unk_100228448);
  result = sub_100127924(&qword_1002F89C0, type metadata accessor for CloudCoordinatorConfiguration, &unk_100228420);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100127810()
{
  result = qword_1002F89D0;
  if (!qword_1002F89D0)
  {
    result = swift_getWitnessTable(&unk_1002285CC, &type metadata for CloudCoordinatorConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F89D0);
  }

  return result;
}

uint64_t sub_100127864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudCoordinatorConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001278C8(uint64_t a1)
{
  v2 = type metadata accessor for CloudCoordinatorConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100127924(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10012796C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_1000F2B2C(&qword_1002F7F00, &qword_1002284F0);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001279EC()
{
  result = qword_1002F89F0;
  if (!qword_1002F89F0)
  {
    result = swift_getWitnessTable(&unk_1002285A4, &type metadata for CloudCoordinatorConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F89F0);
  }

  return result;
}

unint64_t sub_100127A44()
{
  result = qword_1002F89F8;
  if (!qword_1002F89F8)
  {
    result = swift_getWitnessTable(&unk_100228514, &type metadata for CloudCoordinatorConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F89F8);
  }

  return result;
}

unint64_t sub_100127A9C()
{
  result = qword_1002F8A00;
  if (!qword_1002F8A00)
  {
    result = swift_getWitnessTable(&unk_10022853C, &type metadata for CloudCoordinatorConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002F8A00);
  }

  return result;
}

uint64_t sub_100127AF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001002699F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100269A10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F746365726964 && a2 == 0xEC0000004C525579 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x734449656E6F7ALL && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

os_activity_t _BTActivityCreate(_:dso:)(char *description, int a2, char a3, void *dso)
{
  if ((a3 & 1) == 0)
  {
    if (description)
    {
      if (dso)
      {
        if (qword_1002F7A18 == -1)
        {
LABEL_5:
          v5 = qword_1002F8A08;

          return _os_activity_create(dso, description, v5, OS_ACTIVITY_FLAG_DEFAULT);
        }

LABEL_19:
        v14 = dso;
        swift_once();
        dso = v14;
        goto LABEL_5;
      }

LABEL_28:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (description >> 32)
  {
    goto LABEL_18;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
  }

  else if (description <= 0x7F)
  {
    v7 = description + 1;
    goto LABEL_13;
  }

  v8 = (description & 0x3F) << 8;
  v9 = (description >> 6) + v8 + 33217;
  v10 = (v8 | (description >> 6) & 0x3F) << 8;
  v11 = (description >> 18) + ((v10 | (description >> 12) & 0x3F) << 8) - 2122219023;
  v12 = (description >> 12) + v10 + 8487393;
  if (description >> 16)
  {
    v7 = v11;
  }

  else
  {
    v7 = v12;
  }

  if (description < 0x800)
  {
    v7 = v9;
  }

LABEL_13:
  *descriptiona = (v7 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v7) & 0x18)));
  if (!dso)
  {
    goto LABEL_28;
  }

  if (qword_1002F7A18 != -1)
  {
    v13 = dso;
    swift_once();
    dso = v13;
  }

  return _os_activity_create(dso, descriptiona, qword_1002F8A08, OS_ACTIVITY_FLAG_DEFAULT);
}

id sub_100128290(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_1001282E0(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, "init");
}

id sub_10012833C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100128378()
{
  qword_1002F8A08 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

uint64_t sub_1001285C0()
{
  v0 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EE8B8(v7, qword_100300C40);
  sub_1000EE91C(v3, qword_100300C40);
  URL.init(string:)();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t HMDeviceCloudRecord.description.getter()
{
  v1 = v0;
  v166 = type metadata accessor for Date();
  v164 = *(v166 - 8);
  __chkstk_darwin(v166 - 8);
  v165 = &v153 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v157);
  v161 = &v153 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v153 - v5;
  __chkstk_darwin(v7);
  v158 = &v153 - v8;
  __chkstk_darwin(v9);
  v159 = &v153 - v10;
  __chkstk_darwin(v11);
  v156 = &v153 - v12;
  v13 = objc_autoreleasePoolPush();
  isa = sub_100169D38(*(v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata), *(v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata + 8));
  v162 = v6;
  if (!isa)
  {
    isa = sub_1000F8660().super.isa;
  }

  v163 = isa;
  v170._countAndFlagsBits = isa;
  sub_10012F138(&v170);
  objc_autoreleasePoolPop(v13);
  v170._countAndFlagsBits = 0;
  v170._object = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v170._countAndFlagsBits = 0xD000000000000014;
  v170._object = 0x8000000100269C40;
  type metadata accessor for UUID();
  sub_10013353C(&unk_1002F7BC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 2108704;
  v16._object = 0xE300000000000000;
  String.append(_:)(v16);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress));
  v17._countAndFlagsBits = 8236;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v171 = v170;
  v170._countAndFlagsBits = 0;
  v170._object = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v170._countAndFlagsBits = 0xD000000000000010;
  v170._object = 0x8000000100269C60;
  LOBYTE(v169._countAndFlagsBits) = *(v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatus);
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 8236;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  String.append(_:)(v170);

  v170._countAndFlagsBits = 0;
  v170._object = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v170._countAndFlagsBits = 0xD000000000000012;
  v170._object = 0x8000000100269C80;
  LOBYTE(v169._countAndFlagsBits) = *(v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatusV2);
  v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v20);

  v21._countAndFlagsBits = 2108457;
  v21._object = 0xE300000000000000;
  String.append(_:)(v21);
  String.append(_:)(v170);

  v170._countAndFlagsBits = 0;
  v170._object = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v170._countAndFlagsBits = 0xD000000000000013;
  v170._object = 0x8000000100269CA0;
  LOBYTE(v169._countAndFlagsBits) = *(v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpPPERegionStatus);
  v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v22);

  v23._countAndFlagsBits = 2108457;
  v23._object = 0xE300000000000000;
  String.append(_:)(v23);
  String.append(_:)(v170);

  v170._countAndFlagsBits = 0;
  v170._object = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v160 = 0xD000000000000010;
  v170._countAndFlagsBits = 0xD000000000000010;
  v170._object = 0x8000000100269CC0;
  LOBYTE(v169._countAndFlagsBits) = *(v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpRegionStatus);
  v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v24);

  v25._countAndFlagsBits = 8236;
  v25._object = 0xE200000000000000;
  String.append(_:)(v25);
  String.append(_:)(v170);

  v170._countAndFlagsBits = 0;
  v170._object = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v170._countAndFlagsBits = 0xD000000000000014;
  v170._object = 0x8000000100269CE0;
  LOBYTE(v169._countAndFlagsBits) = *(v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_mediaAssistEnabled);
  v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v26);

  v27._countAndFlagsBits = 8236;
  v27._object = 0xE200000000000000;
  String.append(_:)(v27);
  String.append(_:)(v170);

  v170._countAndFlagsBits = 0;
  v170._object = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v170._countAndFlagsBits = 0xD000000000000011;
  v170._object = 0x8000000100269D00;
  LOBYTE(v169._countAndFlagsBits) = *(v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeMediaEnabled);
  v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v28);

  v29._countAndFlagsBits = 8236;
  v29._object = 0xE200000000000000;
  String.append(_:)(v29);
  String.append(_:)(v170);

  v170._countAndFlagsBits = 0;
  v170._object = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v170._countAndFlagsBits = 0xD000000000000011;
  v170._object = 0x8000000100269D20;
  LOBYTE(v169._countAndFlagsBits) = *(v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeVoiceEnabled);
  v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v30);

  v31._countAndFlagsBits = 8236;
  v31._object = 0xE200000000000000;
  String.append(_:)(v31);
  String.append(_:)(v170);

  v170._countAndFlagsBits = 0;
  v170._object = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v170._countAndFlagsBits = 0xD000000000000012;
  v170._object = 0x8000000100269D40;
  LOBYTE(v169._countAndFlagsBits) = *(v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_swipeGainEnabled);
  v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v32);

  v33._countAndFlagsBits = 8236;
  v33._object = 0xE200000000000000;
  String.append(_:)(v33);
  String.append(_:)(v170);

  v170._countAndFlagsBits = 0;
  v170._object = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v170._countAndFlagsBits = 0xD000000000000019;
  v170._object = 0x8000000100269D60;
  v34 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft + 4);
  LODWORD(v169._countAndFlagsBits) = *(v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft);
  BYTE4(v169._countAndFlagsBits) = v34;
  sub_1000EE870(&unk_1002F8A80, &qword_100228688);
  v35._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v35);

  v36._countAndFlagsBits = 8236;
  v36._object = 0xE200000000000000;
  String.append(_:)(v36);
  String.append(_:)(v170);

  v170._countAndFlagsBits = 0;
  v170._object = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  v170._countAndFlagsBits = 0xD00000000000001ALL;
  v170._object = 0x8000000100269D80;
  v37 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight + 4);
  LODWORD(v169._countAndFlagsBits) = *(v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight);
  BYTE4(v169._countAndFlagsBits) = v37;
  v38._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v38);

  v39._countAndFlagsBits = 8236;
  v39._object = 0xE200000000000000;
  String.append(_:)(v39);
  String.append(_:)(v170);

  v170._countAndFlagsBits = 0;
  v170._object = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v170._countAndFlagsBits = 0xD00000000000001DLL;
  v170._object = 0x8000000100269DA0;
  v40 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount + 4);
  LODWORD(v169._countAndFlagsBits) = *(v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount);
  BYTE4(v169._countAndFlagsBits) = v40;
  v41._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v41);

  v42._countAndFlagsBits = 8236;
  v42._object = 0xE200000000000000;
  String.append(_:)(v42);
  String.append(_:)(v170);

  v170._countAndFlagsBits = 0;
  v170._object = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v170._countAndFlagsBits = 0xD00000000000001CLL;
  v170._object = 0x8000000100269DC0;
  v43 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft + 4);
  LODWORD(v169._countAndFlagsBits) = *(v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft);
  BYTE4(v169._countAndFlagsBits) = v43;
  v44._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v44);

  v45._countAndFlagsBits = 8236;
  v45._object = 0xE200000000000000;
  String.append(_:)(v45);
  String.append(_:)(v170);

  v170._countAndFlagsBits = 0;
  v170._object = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v170._countAndFlagsBits = 0xD00000000000001DLL;
  v170._object = 0x8000000100269DE0;
  v46 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight + 4);
  LODWORD(v169._countAndFlagsBits) = *(v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight);
  BYTE4(v169._countAndFlagsBits) = v46;
  v47._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v47);

  v48._countAndFlagsBits = 8236;
  v48._object = 0xE200000000000000;
  String.append(_:)(v48);
  String.append(_:)(v170);

  v170._countAndFlagsBits = 0;
  v170._object = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v170._countAndFlagsBits = 0xD000000000000019;
  v170._object = 0x8000000100269E00;
  v49 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft + 4);
  LODWORD(v169._countAndFlagsBits) = *(v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft);
  BYTE4(v169._countAndFlagsBits) = v49;
  v50._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v50);

  v51._countAndFlagsBits = 8236;
  v51._object = 0xE200000000000000;
  String.append(_:)(v51);
  String.append(_:)(v170);

  v170._countAndFlagsBits = 0;
  v170._object = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  v170._countAndFlagsBits = 0xD00000000000001ALL;
  v170._object = 0x8000000100269E20;
  v52 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight + 4);
  LODWORD(v169._countAndFlagsBits) = *(v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight);
  BYTE4(v169._countAndFlagsBits) = v52;
  v53._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v53);

  v54._countAndFlagsBits = 8236;
  v54._object = 0xE200000000000000;
  String.append(_:)(v54);
  String.append(_:)(v170);

  v170._countAndFlagsBits = 0;
  v170._object = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v170._countAndFlagsBits = 0xD000000000000018;
  v170._object = 0x8000000100269E40;
  v55 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft + 4);
  LODWORD(v169._countAndFlagsBits) = *(v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft);
  BYTE4(v169._countAndFlagsBits) = v55;
  v56._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v56);

  v57._countAndFlagsBits = 8236;
  v57._object = 0xE200000000000000;
  String.append(_:)(v57);
  String.append(_:)(v170);

  v170._countAndFlagsBits = 0;
  v170._object = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v170._countAndFlagsBits = 0xD000000000000019;
  v170._object = 0x8000000100269E60;
  v58 = *(v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight + 4);
  LODWORD(v169._countAndFlagsBits) = *(v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight);
  BYTE4(v169._countAndFlagsBits) = v58;
  v59._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v59);

  v60._countAndFlagsBits = 8236;
  v60._object = 0xE200000000000000;
  String.append(_:)(v60);
  String.append(_:)(v170);

  v170._countAndFlagsBits = 0;
  v170._object = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v169._countAndFlagsBits = 0xD00000000000001FLL;
  v169._object = 0x8000000100269E80;
  v61 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampLeft;
  swift_beginAccess();
  v62 = v156;
  sub_10013250C(v1 + v61, v156);
  v63._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v63);

  v64._countAndFlagsBits = 8236;
  v64._object = 0xE200000000000000;
  String.append(_:)(v64);
  String.append(_:)(v169);

  v169._countAndFlagsBits = 0;
  v169._object = 0xE000000000000000;
  _StringGuts.grow(_:)(36);

  v167._countAndFlagsBits = 0xD000000000000020;
  v167._object = 0x8000000100269EA0;
  v65 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampRight;
  swift_beginAccess();
  sub_10013250C(v1 + v65, v62);
  v66._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v66);

  v67._countAndFlagsBits = 8236;
  v67._object = 0xE200000000000000;
  String.append(_:)(v67);
  String.append(_:)(v167);

  v167._countAndFlagsBits = 0;
  v167._object = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v167._countAndFlagsBits = 0xD000000000000018;
  v167._object = 0x8000000100269ED0;
  v68 = *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft + 4);
  LODWORD(v168._countAndFlagsBits) = *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft);
  BYTE4(v168._countAndFlagsBits) = v68;
  v69._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v69);

  v70._countAndFlagsBits = 8236;
  v70._object = 0xE200000000000000;
  String.append(_:)(v70);
  String.append(_:)(v167);

  v167._countAndFlagsBits = 0;
  v167._object = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v167._countAndFlagsBits = 0xD000000000000019;
  v167._object = 0x8000000100269EF0;
  v71 = *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight + 4);
  LODWORD(v168._countAndFlagsBits) = *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight);
  BYTE4(v168._countAndFlagsBits) = v71;
  v72._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v72);

  v73._countAndFlagsBits = 8236;
  v73._object = 0xE200000000000000;
  String.append(_:)(v73);
  String.append(_:)(v167);

  v167._countAndFlagsBits = 0;
  v167._object = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v167._countAndFlagsBits = 0xD000000000000017;
  v167._object = 0x8000000100269F10;
  v74 = *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft + 4);
  LODWORD(v168._countAndFlagsBits) = *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft);
  BYTE4(v168._countAndFlagsBits) = v74;
  v75._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v75);

  v76._countAndFlagsBits = 8236;
  v76._object = 0xE200000000000000;
  String.append(_:)(v76);
  String.append(_:)(v167);

  v167._countAndFlagsBits = 0;
  v167._object = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v167._countAndFlagsBits = 0xD000000000000018;
  v167._object = 0x8000000100269F30;
  v77 = v163;
  v78 = *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight + 4);
  LODWORD(v168._countAndFlagsBits) = *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight);
  BYTE4(v168._countAndFlagsBits) = v78;
  v79._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v79);

  v80._countAndFlagsBits = 8236;
  v80._object = 0xE200000000000000;
  String.append(_:)(v80);
  String.append(_:)(v167);

  v167._countAndFlagsBits = 0;
  v167._object = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v156 = 0xD000000000000016;
  v167._countAndFlagsBits = 0xD000000000000016;
  v167._object = 0x8000000100269F50;
  v81 = *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft + 4);
  LODWORD(v168._countAndFlagsBits) = *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft);
  BYTE4(v168._countAndFlagsBits) = v81;
  v82._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v82);

  v83._countAndFlagsBits = 8236;
  v83._object = 0xE200000000000000;
  String.append(_:)(v83);
  String.append(_:)(v167);

  v167._countAndFlagsBits = 0;
  v167._object = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v157 = 0xD000000000000017;
  v167._countAndFlagsBits = 0xD000000000000017;
  v167._object = 0x8000000100269F70;
  v84 = *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight + 4);
  LODWORD(v168._countAndFlagsBits) = *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight);
  BYTE4(v168._countAndFlagsBits) = v84;
  v85._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v85);

  v86._countAndFlagsBits = 8236;
  v86._object = 0xE200000000000000;
  String.append(_:)(v86);
  String.append(_:)(v167);

  v167._countAndFlagsBits = 0;
  v167._object = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  v167._countAndFlagsBits = 0xD000000000000027;
  v167._object = 0x8000000100269F90;
  v87 = *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft + 4);
  LODWORD(v168._countAndFlagsBits) = *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft);
  BYTE4(v168._countAndFlagsBits) = v87;
  v88._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v88);

  v89._countAndFlagsBits = 8236;
  v89._object = 0xE200000000000000;
  String.append(_:)(v89);
  String.append(_:)(v167);

  v167._countAndFlagsBits = 0;
  v167._object = 0xE000000000000000;
  _StringGuts.grow(_:)(44);

  v167._countAndFlagsBits = 0xD000000000000028;
  v167._object = 0x8000000100269FC0;
  v90 = *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight + 4);
  LODWORD(v168._countAndFlagsBits) = *(v1 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight);
  BYTE4(v168._countAndFlagsBits) = v90;
  v91._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v91);

  v92._countAndFlagsBits = 8236;
  v92._object = 0xE200000000000000;
  String.append(_:)(v92);
  String.append(_:)(v167);

  v167._countAndFlagsBits = 0;
  v167._object = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v168._countAndFlagsBits = 0xD000000000000012;
  v168._object = 0x8000000100269FF0;
  v93 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_lastModifiedDate;
  swift_beginAccess();
  v94 = v165;
  v95 = v1 + v93;
  v96 = v164;
  v97 = v166;
  v154 = v164[2];
  v154(v165, v95, v166);
  sub_10013353C(&qword_1002F9560, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v98._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v98);

  v155 = v96[1];
  v155(v94, v97);
  v99._countAndFlagsBits = 8236;
  v99._object = 0xE200000000000000;
  String.append(_:)(v99);
  String.append(_:)(v168);

  v168._countAndFlagsBits = 0;
  v168._object = 0xE000000000000000;
  _StringGuts.grow(_:)(102);
  v100._countAndFlagsBits = 0xD000000000000021;
  v100._object = 0x800000010026A010;
  String.append(_:)(v100);
  v101 = [v77 creationDate];
  if (v101)
  {
    v102 = v158;
    v103 = v101;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v104 = 0;
    v105 = v159;
  }

  else
  {
    v104 = 1;
    v105 = v159;
    v102 = v158;
  }

  v106 = v96[7];
  v107 = v166;
  v106(v102, v104, 1, v166);
  sub_1000EED5C(v102, v105);
  v110 = v96[6];
  v109 = v96 + 6;
  v108 = v110;
  if (v110(v105, 1, v107))
  {
    sub_1000EEE6C(v105, &qword_1002F7EF0, &unk_100226C90);
    v111 = 0xE200000000000000;
    v112 = 15932;
  }

  else
  {
    v113 = v165;
    v154(v165, v105, v107);
    sub_1000EEE6C(v105, &qword_1002F7EF0, &unk_100226C90);
    v114 = objc_opt_self();
    v164 = v109;
    v115 = v107;
    v116 = Date._bridgeToObjectiveC()().super.isa;
    v117 = [v114 localizedStringFromDate:v116 dateStyle:2 timeStyle:2];

    v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v111 = v119;

    v77 = v163;
    v155(v113, v115);
    v112 = v118;
  }

  v120 = v111;
  String.append(_:)(*&v112);

  v121._object = 0x800000010026A040;
  v121._countAndFlagsBits = v156;
  String.append(_:)(v121);
  v122 = [v77 modificationDate];
  if (v122)
  {
    v123 = v161;
    v124 = v122;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v125 = 0;
  }

  else
  {
    v125 = 1;
    v123 = v161;
  }

  v126 = v166;
  v106(v123, v125, 1, v166);
  v127 = v162;
  sub_1000EED5C(v123, v162);
  if (v108(v127, 1, v126))
  {
    sub_1000EEE6C(v127, &qword_1002F7EF0, &unk_100226C90);
    v128 = 0xE200000000000000;
    v129 = 15932;
  }

  else
  {
    v130 = v165;
    v154(v165, v127, v126);
    sub_1000EEE6C(v127, &qword_1002F7EF0, &unk_100226C90);
    v131 = objc_opt_self();
    v132 = v126;
    v133 = Date._bridgeToObjectiveC()().super.isa;
    v134 = [v131 localizedStringFromDate:v133 dateStyle:2 timeStyle:2];

    v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v128 = v136;

    v155(v130, v132);
    v129 = v135;
  }

  v137 = v128;
  String.append(_:)(*&v129);

  v138._object = 0x800000010026A060;
  v138._countAndFlagsBits = v157;
  String.append(_:)(v138);
  v139 = [v77 modifiedByDevice];
  if (v139)
  {
    v140 = v139;
    v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v143 = v142;
  }

  else
  {
    v143 = 0xE200000000000000;
    v141 = 15932;
  }

  v144._countAndFlagsBits = v141;
  v144._object = v143;
  String.append(_:)(v144);

  v145._object = 0x800000010026A080;
  v145._countAndFlagsBits = v160;
  String.append(_:)(v145);
  v146 = [v77 recordChangeTag];
  if (v146)
  {
    v147 = v146;
    v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v150 = v149;
  }

  else
  {
    v150 = 0xE200000000000000;
    v148 = 15932;
  }

  v151._countAndFlagsBits = v148;
  v151._object = v150;
  String.append(_:)(v151);

  String.append(_:)(v168);

  return v171._countAndFlagsBits;
}

void *sub_100129F78(id a1)
{
  v3 = v1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v240 = v235 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v259 = v235 - v9;
  v10 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v10 - 8);
  v239 = v235 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v260 = v235 - v13;
  __chkstk_darwin(v14);
  v252 = v235 - v15;
  __chkstk_darwin(v16);
  v250 = v235 - v17;
  v18 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  __chkstk_darwin(v18 - 8);
  v20 = v235 - v19;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v265 = v21;
  v266 = v22;
  v23 = __chkstk_darwin(v21);
  v262 = v235 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft];
  *v25 = 0;
  v241 = v25;
  v25[4] = 1;
  v26 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight];
  *v26 = 0;
  v242 = v26;
  v26[4] = 1;
  v27 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount];
  *v27 = 0;
  v243 = v27;
  v27[4] = 1;
  v28 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft];
  *v28 = 0;
  v244 = v28;
  v28[4] = 1;
  v29 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight];
  *v29 = 0;
  v245 = v29;
  v29[4] = 1;
  v30 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft];
  *v30 = 0;
  v246 = v30;
  v30[4] = 1;
  v31 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight];
  *v31 = 0;
  v247 = v31;
  v31[4] = 1;
  v32 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft];
  *v32 = 0;
  v248 = v32;
  v32[4] = 1;
  v33 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight];
  *v33 = 0;
  v249 = v33;
  v33[4] = 1;
  v34 = *(v6 + 56);
  v267 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampLeft;
  (v34)(&v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampLeft], 1, 1, v5, v23);
  v268 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampRight;
  v263 = v5;
  v264 = v6 + 56;
  v261 = v34;
  v34(&v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampRight], 1, 1, v5);
  v35 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft];
  *v35 = 0;
  v251 = v35;
  v35[4] = 1;
  v36 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight];
  *v36 = 0;
  v253 = v36;
  v36[4] = 1;
  v37 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft];
  *v37 = 0;
  v254 = v37;
  v37[4] = 1;
  v38 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight];
  *v38 = 0;
  v255 = v38;
  v38[4] = 1;
  v39 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft];
  *v39 = 0;
  v256 = v39;
  v39[4] = 1;
  v40 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight];
  *v40 = 0;
  v257 = v40;
  v40[4] = 1;
  v41 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft];
  *v41 = 0;
  v258 = v41;
  v41[4] = 1;
  v42 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight];
  *v42 = 0;
  v42[4] = 1;
  if (CKRecord.recordType.getter() == 0xD000000000000013 && 0x8000000100228720 == v43)
  {
  }

  else
  {
    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v44 & 1) == 0)
    {
      sub_1001334E8();
      swift_allocError();
      *v59 = 0;
      swift_willThrow();

LABEL_13:
      sub_1000EEE6C(&v3[v267], &qword_1002F7EF0, &unk_100226C90);
      sub_1000EEE6C(&v3[v268], &qword_1002F7EF0, &unk_100226C90);
      type metadata accessor for HMDeviceCloudRecord(0);
      swift_deallocPartialClassInstance();
      return v3;
    }
  }

  v237 = v42;
  v238 = v6;
  v45 = [a1 encryptedValues];
  v46 = String._bridgeToObjectiveC()();
  v47 = [v45 objectForKeyedSubscript:v46];

  if (!v47 || (v273 = v47, v269 = sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_9:
    v54 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v55 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_100226100;
    *(v56 + 56) = sub_1000EEE20();
    *(v56 + 64) = sub_10013353C(&qword_1002F7BE0, sub_1000EEE20, &protocol conformance descriptor for NSObject);
    *(v56 + 32) = a1;
    v57 = a1;
    os_log(_:dso:log:_:_:)(v54, &_mh_execute_header, v55, "Invalid HMDeviceCloudRecord - %@", 32, 2, v56);

    sub_1001334E8();
    swift_allocError();
    *v58 = 4;
    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_13;
  }

  v235[1] = 0xD000000000000010;
  v49 = v271;
  v48 = v272;
  v236 = a1;
  v50 = [a1 recordID];
  v51 = [v50 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v53 = v265;
  v52 = v266;
  if ((*(v266 + 48))(v20, 1, v265) == 1)
  {

    sub_1000EEE6C(v20, &qword_1002F8000, &unk_1002262C0);
    a1 = v236;
    goto LABEL_9;
  }

  v61 = v49;
  v62 = v45;
  v63 = v262;
  (*(v52 + 32))(v262, v20, v53);
  (*(v52 + 16))(&v3[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_identifier], v63, v53);
  v64 = &v3[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress];
  *v64 = v61;
  v64[1] = v48;
  v65 = String._bridgeToObjectiveC()();
  v66 = [v62 objectForKeyedSubscript:v65];

  v67 = v261;
  if (v66 && (v271 = v66, swift_dynamicCast()))
  {
    v68 = v273;
  }

  else
  {
    if (qword_1002F7A20 != -1)
    {
      swift_once();
    }

    v68 = byte_1002F8A60;
  }

  v3[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatus] = v68;
  v69 = String._bridgeToObjectiveC()();
  v70 = [v62 objectForKeyedSubscript:v69];

  if (v70 && (v271 = v70, swift_dynamicCast()))
  {
    v71 = v273;
  }

  else
  {
    if (qword_1002F7A28 != -1)
    {
      swift_once();
    }

    v71 = byte_1002F8A61;
  }

  v3[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatusV2] = v71;
  v72 = String._bridgeToObjectiveC()();
  v73 = [v62 objectForKeyedSubscript:v72];

  if (v73 && (v271 = v73, swift_dynamicCast()))
  {
    v74 = v273;
  }

  else
  {
    if (qword_1002F7A30 != -1)
    {
      swift_once();
    }

    v74 = byte_1002F8A62;
  }

  v3[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpPPERegionStatus] = v74;
  v75 = String._bridgeToObjectiveC()();
  v76 = [v62 objectForKeyedSubscript:v75];

  if (v76 && (v271 = v76, swift_dynamicCast()))
  {
    v77 = v273;
  }

  else
  {
    if (qword_1002F7A38 != -1)
    {
      swift_once();
    }

    v77 = byte_1002F8A63;
  }

  v3[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpRegionStatus] = v77;
  v78 = String._bridgeToObjectiveC()();
  v79 = [v62 objectForKeyedSubscript:v78];

  if (v79 && (v271 = v79, swift_dynamicCast()))
  {
    v80 = v273;
  }

  else
  {
    if (qword_1002F7A40 != -1)
    {
      swift_once();
    }

    v80 = byte_1002F8A64;
  }

  v3[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_mediaAssistEnabled] = v80;
  v81 = String._bridgeToObjectiveC()();
  v82 = [v62 objectForKeyedSubscript:v81];

  if (v82 && (v271 = v82, swift_dynamicCast()))
  {
    v83 = v273;
    v84 = v263;
  }

  else
  {
    v84 = v263;
    if (qword_1002F7A48 != -1)
    {
      swift_once();
    }

    v83 = byte_1002F8A65;
  }

  v3[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeMediaEnabled] = v83;
  v85 = String._bridgeToObjectiveC()();
  v86 = [v62 objectForKeyedSubscript:v85];

  if (v86 && (v271 = v86, swift_dynamicCast()))
  {
    v87 = v273;
  }

  else
  {
    if (qword_1002F7A50 != -1)
    {
      swift_once();
    }

    v87 = byte_1002F8A66;
  }

  v3[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeVoiceEnabled] = v87;
  v88 = String._bridgeToObjectiveC()();
  v89 = [v62 objectForKeyedSubscript:v88];

  if (v89 && (v271 = v89, swift_dynamicCast()))
  {
    v90 = v273;
  }

  else
  {
    if (qword_1002F7A58 != -1)
    {
      swift_once();
    }

    v90 = byte_1002F8A67;
  }

  v3[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_swipeGainEnabled] = v90;
  v91 = String._bridgeToObjectiveC()();
  v92 = [v62 objectForKeyedSubscript:v91];

  if (v92)
  {
    v271 = v92;
    v93 = swift_dynamicCast();
    v94 = v273;
    if (!v93)
    {
      v94 = 0;
    }

    v95 = v93 ^ 1;
  }

  else
  {
    v94 = 0;
    v95 = 1;
  }

  v96 = v241;
  *v241 = v94;
  *(v96 + 4) = v95;
  v97 = String._bridgeToObjectiveC()();
  v98 = [v62 objectForKeyedSubscript:v97];

  if (v98)
  {
    v271 = v98;
    v99 = swift_dynamicCast();
    v100 = v273;
    if (!v99)
    {
      v100 = 0;
    }

    v101 = v99 ^ 1;
  }

  else
  {
    v100 = 0;
    v101 = 1;
  }

  v102 = v242;
  *v242 = v100;
  *(v102 + 4) = v101;
  v103 = String._bridgeToObjectiveC()();
  v104 = [v62 objectForKeyedSubscript:v103];

  if (v104)
  {
    v271 = v104;
    v105 = swift_dynamicCast();
    v106 = v273;
    if (!v105)
    {
      v106 = 0;
    }

    v107 = v105 ^ 1;
  }

  else
  {
    v106 = 0;
    v107 = 1;
  }

  v108 = v243;
  *v243 = v106;
  *(v108 + 4) = v107;
  v109 = String._bridgeToObjectiveC()();
  v110 = [v62 objectForKeyedSubscript:v109];

  if (v110)
  {
    v271 = v110;
    v111 = swift_dynamicCast();
    v112 = v273;
    if (!v111)
    {
      v112 = 0;
    }

    v113 = v111 ^ 1;
  }

  else
  {
    v112 = 0;
    v113 = 1;
  }

  v114 = v244;
  *v244 = v112;
  *(v114 + 4) = v113;
  v115 = String._bridgeToObjectiveC()();
  v116 = [v62 objectForKeyedSubscript:v115];

  if (v116)
  {
    v271 = v116;
    v117 = swift_dynamicCast();
    v118 = v273;
    if (!v117)
    {
      v118 = 0;
    }

    v119 = v117 ^ 1;
  }

  else
  {
    v118 = 0;
    v119 = 1;
  }

  v120 = v245;
  *v245 = v118;
  *(v120 + 4) = v119;
  v121 = String._bridgeToObjectiveC()();
  v122 = [v62 objectForKeyedSubscript:v121];

  if (v122)
  {
    v271 = v122;
    v123 = swift_dynamicCast();
    v124 = v273;
    if (!v123)
    {
      v124 = 0;
    }

    v125 = v123 ^ 1;
  }

  else
  {
    v124 = 0;
    v125 = 1;
  }

  v126 = v246;
  *v246 = v124;
  *(v126 + 4) = v125;
  v127 = String._bridgeToObjectiveC()();
  v128 = [v62 objectForKeyedSubscript:v127];

  v235[0] = v2;
  if (v128)
  {
    v271 = v128;
    v129 = swift_dynamicCast();
    v130 = v273;
    if (!v129)
    {
      v130 = 0;
    }

    v131 = v129 ^ 1;
  }

  else
  {
    v130 = 0;
    v131 = 1;
  }

  v132 = v247;
  *v247 = v130;
  *(v132 + 4) = v131;
  v133 = String._bridgeToObjectiveC()();
  v134 = [v62 objectForKeyedSubscript:v133];

  if (v134)
  {
    v271 = v134;
    v135 = swift_dynamicCast();
    v136 = v273;
    if (!v135)
    {
      v136 = 0;
    }

    v137 = v135 ^ 1;
  }

  else
  {
    v136 = 0;
    v137 = 1;
  }

  v138 = v248;
  *v248 = v136;
  *(v138 + 4) = v137;
  v139 = String._bridgeToObjectiveC()();
  v140 = [v62 objectForKeyedSubscript:v139];

  if (v140)
  {
    v271 = v140;
    v141 = swift_dynamicCast();
    v142 = v273;
    if (!v141)
    {
      v142 = 0;
    }

    v143 = v141 ^ 1;
  }

  else
  {
    v142 = 0;
    v143 = 1;
  }

  v144 = v249;
  *v249 = v142;
  *(v144 + 4) = v143;
  v145 = String._bridgeToObjectiveC()();
  v146 = [v62 objectForKeyedSubscript:v145];

  if (v146)
  {
    v271 = v146;
    v147 = v250;
    v148 = swift_dynamicCast() ^ 1;
    v149 = v147;
  }

  else
  {
    v147 = v250;
    v149 = v250;
    v148 = 1;
  }

  v67(v149, v148, 1, v84);
  v150 = v267;
  swift_beginAccess();
  sub_10013261C(v147, &v3[v150]);
  swift_endAccess();
  v151 = String._bridgeToObjectiveC()();
  v152 = [v62 objectForKeyedSubscript:v151];

  if (v152)
  {
    v271 = v152;
    v153 = v252;
    v154 = swift_dynamicCast() ^ 1;
    v155 = v153;
  }

  else
  {
    v153 = v252;
    v155 = v252;
    v154 = 1;
  }

  v67(v155, v154, 1, v84);
  v156 = v268;
  swift_beginAccess();
  sub_10013261C(v153, &v3[v156]);
  swift_endAccess();
  v157 = String._bridgeToObjectiveC()();
  v158 = [v62 objectForKeyedSubscript:v157];

  if (v158)
  {
    v271 = v158;
    v159 = swift_dynamicCast();
    v160 = v273;
    if (!v159)
    {
      v160 = 0;
    }

    v161 = v159 ^ 1;
  }

  else
  {
    v160 = 0;
    v161 = 1;
  }

  v162 = v251;
  *v251 = v160;
  *(v162 + 4) = v161;
  v163 = String._bridgeToObjectiveC()();
  v164 = [v62 objectForKeyedSubscript:v163];

  if (v164)
  {
    v271 = v164;
    v165 = swift_dynamicCast();
    v166 = v273;
    if (!v165)
    {
      v166 = 0;
    }

    v167 = v165 ^ 1;
  }

  else
  {
    v166 = 0;
    v167 = 1;
  }

  v168 = v253;
  *v253 = v166;
  *(v168 + 4) = v167;
  v169 = String._bridgeToObjectiveC()();
  v170 = [v62 objectForKeyedSubscript:v169];

  if (v170)
  {
    v271 = v170;
    v171 = swift_dynamicCast();
    v172 = v273;
    if (!v171)
    {
      v172 = 0;
    }

    v173 = v171 ^ 1;
  }

  else
  {
    v172 = 0;
    v173 = 1;
  }

  v174 = v254;
  *v254 = v172;
  *(v174 + 4) = v173;
  v175 = String._bridgeToObjectiveC()();
  v176 = [v62 objectForKeyedSubscript:v175];

  if (v176)
  {
    v271 = v176;
    v177 = swift_dynamicCast();
    v178 = v273;
    if (!v177)
    {
      v178 = 0;
    }

    v179 = v177 ^ 1;
  }

  else
  {
    v178 = 0;
    v179 = 1;
  }

  v180 = v260;
  v181 = v255;
  *v255 = v178;
  *(v181 + 4) = v179;
  v182 = String._bridgeToObjectiveC()();
  v183 = [v62 objectForKeyedSubscript:v182];

  if (v183)
  {
    v271 = v183;
    v184 = swift_dynamicCast();
    v185 = v273;
    if (!v184)
    {
      v185 = 0;
    }

    v186 = v184 ^ 1;
  }

  else
  {
    v185 = 0;
    v186 = 1;
  }

  v187 = v256;
  *v256 = v185;
  *(v187 + 4) = v186;
  v188 = String._bridgeToObjectiveC()();
  v189 = [v62 objectForKeyedSubscript:v188];

  if (v189)
  {
    v271 = v189;
    v190 = swift_dynamicCast();
    v191 = v273;
    if (!v190)
    {
      v191 = 0;
    }

    v192 = v190 ^ 1;
  }

  else
  {
    v191 = 0;
    v192 = 1;
  }

  v193 = v257;
  *v257 = v191;
  *(v193 + 4) = v192;
  v194 = String._bridgeToObjectiveC()();
  v195 = [v62 objectForKeyedSubscript:v194];

  if (v195)
  {
    v271 = v195;
    v196 = swift_dynamicCast();
    v197 = v273;
    if (!v196)
    {
      v197 = 0;
    }

    v198 = v196 ^ 1;
  }

  else
  {
    v197 = 0;
    v198 = 1;
  }

  v199 = v258;
  *v258 = v197;
  *(v199 + 4) = v198;
  v200 = String._bridgeToObjectiveC()();
  v201 = [v62 objectForKeyedSubscript:v200];

  if (v201)
  {
    v271 = v201;
    v202 = swift_dynamicCast();
    v203 = v273;
    if (!v202)
    {
      v203 = 0;
    }

    v204 = v202 ^ 1;
  }

  else
  {
    v203 = 0;
    v204 = 1;
  }

  v205 = v237;
  *v237 = v203;
  *(v205 + 4) = v204;
  v206 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [v236 encodeSystemFieldsWithCoder:v206];
  [v206 finishEncoding];
  v207 = [v206 encodedData];
  v208 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v210 = v209;

  v211 = &v3[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata];
  *v211 = v208;
  v211[1] = v210;
  v212 = v236;
  v213 = [v236 modificationDate];
  if (v213)
  {
    v214 = v240;
    v215 = v213;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    swift_unknownObjectRelease();
    (*(v266 + 8))(v262, v265);
    v216 = v238;
    v217 = *(v238 + 32);
    v218 = v214;
    v219 = v263;
    v217(v180, v218, v263);
    v261(v180, 0, 1, v219);
    v220 = v259;
    v217(v259, v180, v219);
  }

  else
  {
    v221 = v180;
    v219 = v263;
    v222 = v261;
    v261(v221, 1, 1, v263);
    v223 = [v212 creationDate];
    v220 = v259;
    if (v223)
    {
      v224 = v240;
      v225 = v223;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      swift_unknownObjectRelease();
      (*(v266 + 8))(v262, v265);
      v226 = v238;
      v227 = *(v238 + 32);
      v228 = v239;
      v229 = v224;
      v212 = v236;
      v227(v239, v229, v219);
      v222(v228, 0, 1, v219);
      v227(v220, v228, v219);
      v230 = *(v226 + 48);
    }

    else
    {
      v231 = v239;
      v222(v239, 1, 1, v219);
      static Date.now.getter();
      swift_unknownObjectRelease();
      (*(v266 + 8))(v262, v265);
      v230 = *(v238 + 48);
      if (v230(v231, 1, v219) != 1)
      {
        sub_1000EEE6C(v231, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    v232 = v260;
    v233 = v230(v260, 1, v219);
    v216 = v238;
    if (v233 != 1)
    {
      sub_1000EEE6C(v232, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  (*(v216 + 32))(&v3[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_lastModifiedDate], v220, v219);
  v234 = type metadata accessor for HMDeviceCloudRecord(0);
  v270.receiver = v3;
  v270.super_class = v234;
  v3 = objc_msgSendSuper2(&v270, "init");

  return v3;
}

uint64_t *sub_10012BD48(uint64_t a1, void *a2)
{
  v5 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v5 - 8);
  v190 = &v164 - v6;
  v7 = type metadata accessor for Date();
  __chkstk_darwin(v7);
  v186 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v178 = &v164 - v10;
  __chkstk_darwin(v11);
  v177 = &v164 - v12;
  __chkstk_darwin(v13);
  v175 = &v164 - v14;
  v16 = __chkstk_darwin(v15);
  v174 = &v164 - v17;
  v18 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft];
  *v18 = 0;
  v165 = v18;
  *(v18 + 4) = 1;
  v19 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight];
  *v19 = 0;
  v166 = v19;
  *(v19 + 4) = 1;
  v20 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount];
  *v20 = 0;
  v167 = v20;
  *(v20 + 4) = 1;
  v21 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft];
  *v21 = 0;
  v168 = v21;
  *(v21 + 4) = 1;
  v22 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight];
  *v22 = 0;
  v169 = v22;
  *(v22 + 4) = 1;
  v23 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft];
  *v23 = 0;
  v170 = v23;
  *(v23 + 4) = 1;
  v24 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight];
  *v24 = 0;
  v171 = v24;
  *(v24 + 4) = 1;
  v25 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft];
  *v25 = 0;
  v172 = v25;
  *(v25 + 4) = 1;
  v26 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight];
  *v26 = 0;
  v173 = v26;
  *(v26 + 4) = 1;
  v187 = v27;
  v28 = v27 + 56;
  v29 = *(v27 + 56);
  v192 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampLeft;
  v29(&v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampLeft], 1, 1, v7, v16);
  v193 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampRight;
  v191 = v7;
  v188 = v29;
  v189 = v28;
  (v29)(&v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampRight], 1, 1, v7);
  v30 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft];
  *v30 = 0;
  v176 = v30;
  *(v30 + 4) = 1;
  v31 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight];
  *v31 = 0;
  v179 = v31;
  *(v31 + 4) = 1;
  v32 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft];
  *v32 = 0;
  v180 = v32;
  *(v32 + 4) = 1;
  v33 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight];
  *v33 = 0;
  v181 = v33;
  *(v33 + 4) = 1;
  v34 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft];
  *v34 = 0;
  v182 = v34;
  *(v34 + 4) = 1;
  v35 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight];
  *v35 = 0;
  v183 = v35;
  *(v35 + 4) = 1;
  v36 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft];
  *v36 = 0;
  v184 = v36;
  *(v36 + 4) = 1;
  v37 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight];
  *v37 = 0;
  v185 = v37;
  *(v37 + 4) = 1;
  v38 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata];
  *&v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata] = xmmword_100227DA0;
  v39 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_identifier;
  v40 = type metadata accessor for UUID();
  v41 = *(v40 - 8);
  v194 = a1;
  v195 = v41;
  v42 = *(v41 + 16);
  v197 = v40;
  v42(&v2[v39], a1);
  v43 = [a2 bluetoothAddress];
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  v47 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v47 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (!v47)
  {
    goto LABEL_8;
  }

  v48 = [a2 bluetoothAddress];
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  if (v49 == 0xD000000000000011 && 0x8000000100267AA0 == v51)
  {

LABEL_8:
    sub_1001334E8();
    swift_allocError();
    *v53 = 3;
    swift_willThrow();

    v54 = *(v195 + 8);
    v55 = v197;
    v54(v194, v197);
    sub_1000EF870(*v38, *(v38 + 1));
    v54(&v2[v39], v55);
    v56 = &qword_1002F7EF0;
    sub_1000EEE6C(&v2[v192], &qword_1002F7EF0, &unk_100226C90);
    sub_1000EEE6C(&v2[v193], &qword_1002F7EF0, &unk_100226C90);
    type metadata accessor for HMDeviceCloudRecord(0);
    swift_deallocPartialClassInstance();
    return v56;
  }

  v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v52)
  {
    goto LABEL_8;
  }

  v58 = [a2 haRegionStatus];
  v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatus] = v58;
  v59 = [a2 haRegionStatusV2];
  v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatusV2] = v59;
  v60 = [a2 hpPPERegionStatus];
  v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpPPERegionStatus] = v60;
  v61 = [a2 hpRegionStatus];
  v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpRegionStatus] = v61;
  v62 = [a2 mediaAssistEnabled];
  v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_mediaAssistEnabled] = v62;
  v63 = [a2 pmeMediaEnabled];
  v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeMediaEnabled] = v63;
  v64 = [a2 pmeVoiceEnabled];
  v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeVoiceEnabled] = v64;
  v65 = [a2 swipeGainEnabled];
  v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_swipeGainEnabled] = v65;
  v66 = [a2 bluetoothAddress];
  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v164 = a2;
  v69 = v68;

  v70 = &v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress];
  *v70 = v67;
  v70[1] = v69;
  v71 = v164;
  v72 = [v164 bottomMicFaultCountLeft];
  if (v72)
  {
    v73 = v72;
    v74 = [v72 unsignedIntValue];

    v75 = v165;
    *v165 = v74;
    *(v75 + 4) = 0;
  }

  v76 = [v71 bottomMicFaultCountRight];
  if (v76)
  {
    v77 = v76;
    v78 = [v76 unsignedIntValue];

    v79 = v166;
    *v166 = v78;
    *(v79 + 4) = 0;
  }

  v80 = [v71 diagnosticMeasurementsCount];
  if (v80)
  {
    v81 = v80;
    v82 = [v80 unsignedIntValue];

    v83 = v167;
    *v167 = v82;
    *(v83 + 4) = 0;
  }

  v84 = [v71 freqAccuracyFaultCountLeft];
  if (v84)
  {
    v85 = v84;
    v86 = [v84 unsignedIntValue];

    v87 = v168;
    *v168 = v86;
    *(v87 + 4) = 0;
  }

  v88 = [v71 freqAccuracyFaultCountRight];
  if (v88)
  {
    v89 = v88;
    v90 = [v88 unsignedIntValue];

    v91 = v169;
    *v169 = v90;
    *(v91 + 4) = 0;
  }

  v92 = [v71 frontVentFaultCountLeft];
  if (v92)
  {
    v93 = v92;
    v94 = [v92 unsignedIntValue];

    v95 = v170;
    *v170 = v94;
    *(v95 + 4) = 0;
  }

  v96 = [v71 frontVentFaultCountRight];
  if (v96)
  {
    v97 = v96;
    v98 = [v96 unsignedIntValue];

    v99 = v171;
    *v171 = v98;
    *(v99 + 4) = 0;
  }

  v100 = [v71 innerMicFaultCountLeft];
  if (v100)
  {
    v101 = v100;
    v102 = [v100 unsignedIntValue];

    v103 = v172;
    *v172 = v102;
    *(v103 + 4) = 0;
  }

  v104 = [v71 innerMicFaultCountRight];
  if (v104)
  {
    v105 = v104;
    v106 = [v104 unsignedIntValue];

    v107 = v173;
    *v173 = v106;
    *(v107 + 4) = 0;
  }

  v108 = [v71 latestDiagnosticTimestampLeft];
  v109 = v187;
  if (v108)
  {
    v110 = v175;
    v111 = v108;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v112 = *(v109 + 32);
    v113 = v109;
    v114 = v174;
    v115 = v110;
    v116 = v191;
    v112(v174, v115, v191);
    v117 = v190;
    v118 = v114;
    v109 = v113;
    v112(v190, v118, v116);
    v188(v117, 0, 1, v116);
    v119 = v192;
    swift_beginAccess();
    v71 = v164;
    sub_10013261C(v117, &v2[v119]);
    swift_endAccess();
  }

  v120 = [v71 latestDiagnosticTimestampRight];
  if (v120)
  {
    v121 = v178;
    v122 = v120;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v123 = *(v109 + 32);
    v124 = v109;
    v125 = v177;
    v126 = v191;
    v123(v177, v121, v191);
    v127 = v190;
    v128 = v125;
    v109 = v124;
    v123(v190, v128, v126);
    v188(v127, 0, 1, v126);
    v129 = v193;
    swift_beginAccess();
    v71 = v164;
    sub_10013261C(v127, &v2[v129]);
    swift_endAccess();
  }

  v130 = [v71 rearVentFaultCountLeft];
  if (v130)
  {
    v131 = v130;
    v132 = [v130 unsignedIntValue];

    v133 = v176;
    *v176 = v132;
    *(v133 + 4) = 0;
  }

  v134 = [v71 rearVentFaultCountRight];
  if (v134)
  {
    v135 = v134;
    v136 = [v134 unsignedIntValue];

    v137 = v179;
    *v179 = v136;
    *(v137 + 4) = 0;
  }

  v138 = [v71 speakerFaultCountLeft];
  if (v138)
  {
    v139 = v138;
    v140 = [v138 unsignedIntValue];

    v141 = v180;
    *v180 = v140;
    *(v141 + 4) = 0;
  }

  v142 = [v71 speakerFaultCountRight];
  if (v142)
  {
    v143 = v142;
    v144 = [v142 unsignedIntValue];

    v145 = v181;
    *v181 = v144;
    *(v145 + 4) = 0;
  }

  v146 = [v71 topMicFaultCountLeft];
  if (v146)
  {
    v147 = v146;
    v148 = [v146 unsignedIntValue];

    v149 = v182;
    *v182 = v148;
    *(v149 + 4) = 0;
  }

  v150 = [v71 topMicFaultCountRight];
  if (v150)
  {
    v151 = v150;
    v152 = [v150 unsignedIntValue];

    v153 = v183;
    *v183 = v152;
    *(v153 + 4) = 0;
  }

  v154 = [v71 totalHarmonicDistortionFaultCountLeft];
  if (v154)
  {
    v155 = v154;
    v156 = [v154 unsignedIntValue];

    v157 = v184;
    *v184 = v156;
    *(v157 + 4) = 0;
  }

  v158 = [v71 totalHarmonicDistortionFaultCountRight];
  if (v158)
  {
    v159 = v158;
    v160 = [v158 unsignedIntValue];

    v161 = v185;
    *v185 = v160;
    *(v161 + 4) = 0;
  }

  v162 = v186;
  static Date.now.getter();
  (*(v109 + 32))(&v2[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_lastModifiedDate], v162, v191);
  v163 = type metadata accessor for HMDeviceCloudRecord(0);
  v196.receiver = v2;
  v196.super_class = v163;
  v56 = objc_msgSendSuper2(&v196, "init");

  (*(v195 + 8))(v194, v197);
  return v56;
}

void *HMDeviceCloudRecord.init(from:)(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v140 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v135 = &v117 - v7;
  v8 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v8 - 8);
  v136 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v137 = &v117 - v11;
  __chkstk_darwin(v12);
  v139 = &v117 - v13;
  __chkstk_darwin(v14);
  v133 = &v117 - v15;
  __chkstk_darwin(v16);
  v132 = &v117 - v17;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v146 = v18;
  v147 = v19;
  __chkstk_darwin(v18);
  v148 = &v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000EE870(&qword_1002F8A90, &qword_100228690);
  v149 = *(v21 - 8);
  v150 = v21;
  v22 = __chkstk_darwin(v21);
  v154 = &v117 - v23;
  v24 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft];
  *v24 = 0;
  v145 = v24;
  v24[4] = 1;
  v25 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight];
  *v25 = 0;
  v144 = v25;
  v25[4] = 1;
  v26 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount];
  *v26 = 0;
  v143 = v26;
  v26[4] = 1;
  v27 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft];
  *v27 = 0;
  v142 = v27;
  v27[4] = 1;
  v28 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight];
  *v28 = 0;
  v122 = v28;
  v28[4] = 1;
  v29 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft];
  *v29 = 0;
  v123 = v29;
  v29[4] = 1;
  v30 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight];
  *v30 = 0;
  v124 = v30;
  v30[4] = 1;
  v31 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft];
  *v31 = 0;
  v125 = v31;
  v31[4] = 1;
  v32 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight];
  *v32 = 0;
  v126 = v32;
  v32[4] = 1;
  v138 = v4;
  v34 = *(v4 + 56);
  v33 = v4 + 56;
  v127 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampLeft;
  v34(&v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampLeft], 1, 1, v3, v22);
  v128 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampRight;
  v141 = v3;
  v134 = v34;
  (v34)(&v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampRight], 1, 1, v3);
  v35 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft];
  *v35 = 0;
  v129 = v35;
  v35[4] = 1;
  v36 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight];
  *v36 = 0;
  v130 = v36;
  v36[4] = 1;
  v37 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft];
  *v37 = 0;
  v131 = v37;
  v37[4] = 1;
  v38 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight];
  *v38 = 0;
  v38[4] = 1;
  v39 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft];
  *v39 = 0;
  v39[4] = 1;
  v40 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight];
  *v40 = 0;
  v40[4] = 1;
  v41 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft];
  *v41 = 0;
  v41[4] = 1;
  v42 = &v1[OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight];
  *v42 = 0;
  v42[4] = 1;
  v43 = a1;
  v44 = a1[3];
  v152 = v43;
  v153 = v1;
  sub_1000EF78C(v43, v44);
  sub_10013257C();
  v45 = v151;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v45)
  {
    v47 = v153;
    sub_1000EF824(v152);
    sub_1000EEE6C(v47 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampLeft, &qword_1002F7EF0, &unk_100226C90);
    sub_1000EEE6C(v47 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampRight, &qword_1002F7EF0, &unk_100226C90);
    type metadata accessor for HMDeviceCloudRecord(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v46 = v148;
    v117 = v38;
    v118 = v39;
    v119 = v40;
    v120 = v41;
    v121 = v42;
    v151 = v33;
    v157 = 0;
    sub_1000EF8C4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v49 = v153;
    *(v153 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata) = v156;
    LOBYTE(v156) = 1;
    sub_10013353C(&unk_1002F8750, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v50 = v146;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v147 + 32))(v49 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_identifier, v46, v50);
    LOBYTE(v156) = 2;
    v51 = KeyedDecodingContainer.decode(_:forKey:)();
    v53 = (v49 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress);
    *v53 = v51;
    v53[1] = v52;
    LOBYTE(v156) = 3;
    *(v49 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatus) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v156) = 4;
    v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if ((v54 & 0x100) != 0)
    {
      if (qword_1002F7A28 != -1)
      {
        swift_once();
      }

      LOBYTE(v54) = byte_1002F8A61;
    }

    *(v49 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatusV2) = v54;
    LOBYTE(v156) = 5;
    v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if ((v55 & 0x100) != 0)
    {
      if (qword_1002F7A30 != -1)
      {
        swift_once();
      }

      LOBYTE(v55) = byte_1002F8A62;
    }

    *(v49 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpPPERegionStatus) = v55;
    LOBYTE(v156) = 6;
    *(v49 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpRegionStatus) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v156) = 7;
    *(v49 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_mediaAssistEnabled) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v156) = 8;
    *(v49 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeMediaEnabled) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v156) = 9;
    *(v153 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeVoiceEnabled) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v156) = 10;
    *(v153 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_swipeGainEnabled) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v156) = 11;
    v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v57 = v145;
    *v145 = v56;
    *(v57 + 4) = BYTE4(v56) & 1;
    LOBYTE(v156) = 12;
    v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v59 = v144;
    *v144 = v58;
    *(v59 + 4) = BYTE4(v58) & 1;
    LOBYTE(v156) = 13;
    v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v61 = v143;
    *v143 = v60;
    *(v61 + 4) = BYTE4(v60) & 1;
    LOBYTE(v156) = 14;
    v62 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v63 = v142;
    *v142 = v62;
    *(v63 + 4) = BYTE4(v62) & 1;
    LOBYTE(v156) = 15;
    v64 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v65 = v122;
    *v122 = v64;
    *(v65 + 4) = BYTE4(v64) & 1;
    LOBYTE(v156) = 16;
    v66 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v67 = v123;
    *v123 = v66;
    *(v67 + 4) = BYTE4(v66) & 1;
    LOBYTE(v156) = 17;
    v68 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v69 = v124;
    *v124 = v68;
    *(v69 + 4) = BYTE4(v68) & 1;
    LOBYTE(v156) = 18;
    v70 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v71 = v125;
    *v125 = v70;
    *(v71 + 4) = BYTE4(v70) & 1;
    LOBYTE(v156) = 19;
    v72 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v73 = v126;
    *v126 = v72;
    *(v73 + 4) = BYTE4(v72) & 1;
    LOBYTE(v156) = 20;
    sub_10013353C(&qword_1002F7D90, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v74 = v153;
    v75 = v127;
    swift_beginAccess();
    sub_10013261C(v132, v74 + v75);
    swift_endAccess();
    LOBYTE(v156) = 21;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v76 = v153;
    v77 = v128;
    swift_beginAccess();
    sub_10013261C(v133, v76 + v77);
    swift_endAccess();
    LOBYTE(v156) = 22;
    v78 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v79 = v129;
    *v129 = v78;
    *(v79 + 4) = BYTE4(v78) & 1;
    LOBYTE(v156) = 23;
    v80 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v81 = v130;
    *v130 = v80;
    *(v81 + 4) = BYTE4(v80) & 1;
    LOBYTE(v156) = 24;
    v82 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v83 = v131;
    *v131 = v82;
    *(v83 + 4) = BYTE4(v82) & 1;
    LOBYTE(v156) = 25;
    v84 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v85 = v117;
    *v117 = v84;
    *(v85 + 4) = BYTE4(v84) & 1;
    LOBYTE(v156) = 26;
    v86 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v87 = v118;
    *v118 = v86;
    *(v87 + 4) = BYTE4(v86) & 1;
    LOBYTE(v156) = 27;
    v88 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v89 = v119;
    *v119 = v88;
    *(v89 + 4) = BYTE4(v88) & 1;
    LOBYTE(v156) = 28;
    v90 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v91 = v120;
    *v120 = v90;
    *(v91 + 4) = BYTE4(v90) & 1;
    LOBYTE(v156) = 29;
    v92 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v93 = v121;
    *v121 = v92;
    *(v93 + 4) = BYTE4(v92) & 1;
    v94 = v135;
    static Date.now.getter();
    v95 = v153;
    v96 = *(v138 + 32);
    v96(v153 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_lastModifiedDate, v94, v141);
    v97 = type metadata accessor for HMDeviceCloudRecord(0);
    v155.receiver = v95;
    v155.super_class = v97;
    v47 = objc_msgSendSuper2(&v155, "init");
    LOBYTE(v156) = 30;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v153 = *(v138 + 48);
    if ((v153)(v139, 1, v141) == 1)
    {
      v98 = v47;
      v148 = objc_autoreleasePoolPush();
      v99 = v98 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata;
      isa = sub_100169D38(*(v98 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata), *(v98 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata + 8));
      if (!isa)
      {
        isa = sub_1000F8660().super.isa;
      }

      v101 = isa;
      *&v156 = isa;
      sub_10012F138(&v156);
      objc_autoreleasePoolPop(v148);
      v102 = [v101 modificationDate];

      if (v102)
      {
        v103 = v135;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v149 + 8))(v154, v150);
        v104 = v137;
        v105 = v141;
        v96(v137, v103, v141);
        (v134)(v104, 0, 1, v105);
        v96(v140, v104, v105);
      }

      else
      {
        (v134)(v137, 1, 1, v141);
        v148 = objc_autoreleasePoolPush();
        v108 = sub_100169D38(*v99, *(v99 + 1));
        if (!v108)
        {
          v108 = sub_1000F8660().super.isa;
        }

        v109 = v108;
        *&v156 = v108;
        sub_10012F138(&v156);
        objc_autoreleasePoolPop(v148);
        v110 = [v109 creationDate];

        if (v110)
        {
          v111 = v135;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v149 + 8))(v154, v150);
          v112 = v136;
          v113 = v141;
          v96(v136, v111, v141);
          (v134)(v112, 0, 1, v113);
          v96(v140, v112, v113);
        }

        else
        {
          v114 = v136;
          v115 = v141;
          (v134)(v136, 1, 1, v141);
          static Date.now.getter();
          (*(v149 + 8))(v154, v150);
          if ((v153)(v114, 1, v115) != 1)
          {
            sub_1000EEE6C(v136, &qword_1002F7EF0, &unk_100226C90);
          }
        }

        if ((v153)(v137, 1, v141) != 1)
        {
          sub_1000EEE6C(v137, &qword_1002F7EF0, &unk_100226C90);
        }
      }

      if ((v153)(v139, 1, v141) != 1)
      {
        sub_1000EEE6C(v139, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    else
    {
      v106 = *(v149 + 8);
      v107 = v47;
      v106(v154, v150);
      v96(v140, v139, v141);
    }

    v116 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_lastModifiedDate;
    swift_beginAccess();
    (*(v138 + 40))(v47 + v116, v140, v141);
    swift_endAccess();
    sub_1000EF824(v152);
  }

  return v47;
}

unint64_t sub_10012DF90(char a1)
{
  result = 0x74654D64756F6C63;
  switch(a1)
  {
    case 1:
      return 0x696669746E656469;
    case 2:
      return 0xD000000000000010;
    case 3:
      return 0x6E6F696765526168;
    case 4:
      return 0xD000000000000010;
    case 5:
      return 0xD000000000000011;
    case 6:
      return 0x6E6F696765527068;
    case 7:
      return 0xD000000000000012;
    case 8:
      return 0x616964654D656D70;
    case 9:
      return 0x6563696F56656D70;
    case 10:
      return 0xD000000000000010;
    case 11:
    case 16:
    case 19:
    case 23:
      return 0xD000000000000017;
    case 12:
    case 17:
      return 0xD000000000000018;
    case 13:
    case 15:
      v3 = 11;
      goto LABEL_15;
    case 14:
      v3 = 10;
      goto LABEL_15;
    case 18:
    case 22:
    case 25:
      return 0xD000000000000016;
    case 20:
      v3 = 13;
      goto LABEL_15;
    case 21:
      return 0xD00000000000001ELL;
    case 24:
    case 27:
      v3 = 5;
LABEL_15:
      result = v3 | 0xD000000000000010;
      break;
    case 26:
      result = 0xD000000000000014;
      break;
    case 28:
      result = 0xD000000000000025;
      break;
    case 29:
      result = 0xD000000000000026;
      break;
    case 30:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10012E2B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100132B88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10012E2E8(uint64_t a1)
{
  v2 = sub_10013257C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10012E324(uint64_t a1)
{
  v2 = sub_10013257C();

  return CodingKey.debugDescription.getter(a1, v2);
}

id HMDeviceCloudRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMDeviceCloudRecord(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t HMDeviceCloudRecord.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v46 = *(v4 - 8);
  v47 = v4;
  __chkstk_darwin(v4);
  v45 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v6 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v44 - v10;
  v12 = sub_1000EE870(&unk_1002F8AA8, &qword_100228698);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v44 - v14;
  sub_1000EF78C(a1, a1[3]);
  sub_10013257C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v48 = v2;
  v16 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata + 8);
  v53 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata);
  v54 = v16;
  v52 = 0;
  sub_1000EE9F4(v53, v16);
  sub_1000EF9D8();
  v50 = v12;
  v17 = v49;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v17)
  {
    sub_1000EF870(v53, v54);
    return (*(v13 + 8))(v15, v50);
  }

  else
  {
    v44 = v11;
    v49 = v8;
    v19 = v46;
    v20 = v47;
    sub_1000EF870(v53, v54);
    LOBYTE(v53) = 1;
    type metadata accessor for UUID();
    sub_10013353C(&qword_1002F8340, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v53) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v53) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v53) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v53) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v53) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v53) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v53) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v53) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v53) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = *(v48 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft + 4);
    LOBYTE(v53) = 11;
    v52 = v21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = *(v48 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight + 4);
    LOBYTE(v53) = 12;
    v52 = v22;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = *(v48 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount + 4);
    LOBYTE(v53) = 13;
    v52 = v23;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = *(v48 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft + 4);
    LOBYTE(v53) = 14;
    v52 = v24;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = *(v48 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight + 4);
    LOBYTE(v53) = 15;
    v52 = v25;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v26 = *(v48 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft + 4);
    LOBYTE(v53) = 16;
    v52 = v26;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = *(v48 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight + 4);
    LOBYTE(v53) = 17;
    v52 = v27;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v28 = *(v48 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft + 4);
    LOBYTE(v53) = 18;
    v52 = v28;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v29 = *(v48 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight + 4);
    LOBYTE(v53) = 19;
    v52 = v29;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v30 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampLeft;
    v31 = v48;
    swift_beginAccess();
    sub_10013250C(v31 + v30, v44);
    v52 = 20;
    sub_10013353C(&qword_1002F7DB0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000EEE6C(v44, &qword_1002F7EF0, &unk_100226C90);
    v32 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampRight;
    v33 = v48;
    swift_beginAccess();
    sub_10013250C(v33 + v32, v49);
    v51 = 21;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000EEE6C(v49, &qword_1002F7EF0, &unk_100226C90);
    v34 = *(v48 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft + 4);
    v51 = 22;
    v55[0] = v34;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v35 = *(v48 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight + 4);
    v51 = 23;
    v55[0] = v35;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v36 = *(v48 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft + 4);
    v51 = 24;
    v55[0] = v36;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v37 = *(v48 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight + 4);
    v51 = 25;
    v55[0] = v37;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v38 = *(v48 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft + 4);
    v51 = 26;
    v55[0] = v38;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v39 = *(v48 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight + 4);
    v51 = 27;
    v55[0] = v39;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v40 = *(v48 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft + 4);
    v51 = 28;
    v55[0] = v40;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v41 = *(v48 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight + 4);
    v51 = 29;
    v55[0] = v41;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v42 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_lastModifiedDate;
    v43 = v48;
    swift_beginAccess();
    (*(v19 + 16))(v45, v43 + v42, v20);
    v55[0] = 30;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v19 + 8))(v45, v20);
    return (*(v13 + 8))(0, v50);
  }
}

uint64_t sub_10012F044()
{
  v1 = *v0 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_cloudMetadata;
  v2 = *v1;
  sub_1000EE9F4(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_10012F088@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_lastModifiedDate;
  swift_beginAccess();
  v5 = type metadata accessor for Date();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_10012F138(id *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v96 = v4;
  v97 = v5;
  __chkstk_darwin(v4);
  v86 = &v83[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v95 = sub_1000EE870(&qword_1002F8B30, &unk_1002288C0);
  __chkstk_darwin(v95);
  v92 = &v83[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v91 = &v83[-v9];
  v10 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v10 - 8);
  v89 = &v83[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v90 = &v83[-v13];
  __chkstk_darwin(v14);
  v94 = &v83[-v15];
  __chkstk_darwin(v16);
  v88 = &v83[-v17];
  __chkstk_darwin(v18);
  v85 = &v83[-v19];
  __chkstk_darwin(v20);
  v93 = &v83[-v21];
  v22 = static os_log_type_t.debug.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v23 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100226100;
  v25 = *a1;
  v26 = [v25 description];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = sub_1000EE954();
  *(v24 + 32) = v27;
  *(v24 + 40) = v29;
  os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "Updating HMDeviceCloudRecord: %@", 32, 2, v24);

  [v25 encryptedValues];
  swift_getObjectType();
  v98 = 0xD000000000000010;
  CKRecordKeyValueSetting.subscript.getter();
  v31 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress);
  v30 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bluetoothAddress + 8);
  if (!*(&v99 + 1))
  {
    goto LABEL_7;
  }

  if (v99 != __PAIR128__(v30, v31))
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v32)
    {
      goto LABEL_8;
    }

LABEL_7:
    *(&v100 + 1) = &type metadata for String;
    v101 = &protocol witness table for String;
    *&v99 = v31;
    *(&v99 + 1) = v30;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_8;
  }

LABEL_8:
  CKRecordKeyValueSetting.subscript.getter();
  v33 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatus);
  if ((BYTE1(v99) & 1) != 0 || v99 != v33)
  {
    *(&v100 + 1) = &type metadata for UInt8;
    v101 = &protocol witness table for UInt8;
    LOBYTE(v99) = v33;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v34 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_haRegionStatusV2);
  if ((BYTE1(v99) & 1) != 0 || v99 != v34)
  {
    *(&v100 + 1) = &type metadata for UInt8;
    v101 = &protocol witness table for UInt8;
    LOBYTE(v99) = v34;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v35 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpPPERegionStatus);
  if ((BYTE1(v99) & 1) != 0 || v99 != v35)
  {
    *(&v100 + 1) = &type metadata for UInt8;
    v101 = &protocol witness table for UInt8;
    LOBYTE(v99) = v35;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v36 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_hpRegionStatus);
  if ((BYTE1(v99) & 1) != 0 || v99 != v36)
  {
    *(&v100 + 1) = &type metadata for UInt8;
    v101 = &protocol witness table for UInt8;
    LOBYTE(v99) = v36;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v37 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_mediaAssistEnabled);
  if ((BYTE1(v99) & 1) != 0 || v99 != v37)
  {
    *(&v100 + 1) = &type metadata for Int8;
    v101 = &protocol witness table for Int8;
    LOBYTE(v99) = v37;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v38 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeMediaEnabled);
  if ((BYTE1(v99) & 1) != 0 || v99 != v38)
  {
    *(&v100 + 1) = &type metadata for Int8;
    v101 = &protocol witness table for Int8;
    LOBYTE(v99) = v38;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v39 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_pmeVoiceEnabled);
  if ((BYTE1(v99) & 1) != 0 || v99 != v39)
  {
    *(&v100 + 1) = &type metadata for Int8;
    v101 = &protocol witness table for Int8;
    LOBYTE(v99) = v39;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v40 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_swipeGainEnabled);
  if ((BYTE1(v99) & 1) != 0 || v99 != v40)
  {
    *(&v100 + 1) = &type metadata for Int8;
    v101 = &protocol witness table for Int8;
    LOBYTE(v99) = v40;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v41 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft);
  if ((BYTE4(v99) & 1) == 0)
  {
    v42 = v93;
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft + 4))
    {
      v101 = 0;
      v99 = 0u;
      v100 = 0u;
LABEL_39:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_40;
    }

    if (v99 == v41)
    {
      goto LABEL_40;
    }

LABEL_38:
    *(&v100 + 1) = &type metadata for UInt32;
    v101 = &protocol witness table for UInt32;
    LODWORD(v99) = v41;
    goto LABEL_39;
  }

  v42 = v93;
  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountLeft + 4) & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_40:
  CKRecordKeyValueSetting.subscript.getter();
  v43 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight);
  if ((BYTE4(v99) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight + 4))
    {
      v101 = 0;
      v99 = 0u;
      v100 = 0u;
LABEL_47:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_48;
    }

    if (v99 == v43)
    {
      goto LABEL_48;
    }

LABEL_46:
    *(&v100 + 1) = &type metadata for UInt32;
    v101 = &protocol witness table for UInt32;
    LODWORD(v99) = v43;
    goto LABEL_47;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_bottomMicFaultCountRight + 4) & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_48:
  CKRecordKeyValueSetting.subscript.getter();
  v44 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount);
  if ((BYTE4(v99) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount + 4))
    {
      v101 = 0;
      v99 = 0u;
      v100 = 0u;
LABEL_55:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_56;
    }

    if (v99 == v44)
    {
      goto LABEL_56;
    }

LABEL_54:
    *(&v100 + 1) = &type metadata for UInt32;
    v101 = &protocol witness table for UInt32;
    LODWORD(v99) = v44;
    goto LABEL_55;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_diagnosticMeasurementsCount + 4) & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_56:
  CKRecordKeyValueSetting.subscript.getter();
  v45 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft);
  if ((BYTE4(v99) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft + 4))
    {
      v101 = 0;
      v99 = 0u;
      v100 = 0u;
LABEL_63:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_64;
    }

    if (v99 == v45)
    {
      goto LABEL_64;
    }

LABEL_62:
    *(&v100 + 1) = &type metadata for UInt32;
    v101 = &protocol witness table for UInt32;
    LODWORD(v99) = v45;
    goto LABEL_63;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountLeft + 4) & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_64:
  CKRecordKeyValueSetting.subscript.getter();
  v46 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight);
  if ((BYTE4(v99) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight + 4))
    {
      v101 = 0;
      v99 = 0u;
      v100 = 0u;
LABEL_71:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_72;
    }

    if (v99 == v46)
    {
      goto LABEL_72;
    }

LABEL_70:
    *(&v100 + 1) = &type metadata for UInt32;
    v101 = &protocol witness table for UInt32;
    LODWORD(v99) = v46;
    goto LABEL_71;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_freqAccuracyFaultCountRight + 4) & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_72:
  CKRecordKeyValueSetting.subscript.getter();
  v47 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft);
  if ((BYTE4(v99) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft + 4))
    {
      v101 = 0;
      v99 = 0u;
      v100 = 0u;
LABEL_79:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_80;
    }

    if (v99 == v47)
    {
      goto LABEL_80;
    }

LABEL_78:
    *(&v100 + 1) = &type metadata for UInt32;
    v101 = &protocol witness table for UInt32;
    LODWORD(v99) = v47;
    goto LABEL_79;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountLeft + 4) & 1) == 0)
  {
    goto LABEL_78;
  }

LABEL_80:
  CKRecordKeyValueSetting.subscript.getter();
  v48 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight);
  if ((BYTE4(v99) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight + 4))
    {
      v101 = 0;
      v99 = 0u;
      v100 = 0u;
LABEL_87:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_88;
    }

    if (v99 == v48)
    {
      goto LABEL_88;
    }

LABEL_86:
    *(&v100 + 1) = &type metadata for UInt32;
    v101 = &protocol witness table for UInt32;
    LODWORD(v99) = v48;
    goto LABEL_87;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_frontVentFaultCountRight + 4) & 1) == 0)
  {
    goto LABEL_86;
  }

LABEL_88:
  v98 = 0xD000000000000016;
  CKRecordKeyValueSetting.subscript.getter();
  v49 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft);
  if ((BYTE4(v99) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft + 4))
    {
      v101 = 0;
      v99 = 0u;
      v100 = 0u;
LABEL_95:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_96;
    }

    if (v99 == v49)
    {
      goto LABEL_96;
    }

LABEL_94:
    *(&v100 + 1) = &type metadata for UInt32;
    v101 = &protocol witness table for UInt32;
    LODWORD(v99) = v49;
    goto LABEL_95;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountLeft + 4) & 1) == 0)
  {
    goto LABEL_94;
  }

LABEL_96:
  CKRecordKeyValueSetting.subscript.getter();
  v50 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight);
  if ((BYTE4(v99) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight + 4))
    {
      v101 = 0;
      v99 = 0u;
      v100 = 0u;
LABEL_103:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_104;
    }

    if (v99 == v50)
    {
      goto LABEL_104;
    }

LABEL_102:
    *(&v100 + 1) = &type metadata for UInt32;
    v101 = &protocol witness table for UInt32;
    LODWORD(v99) = v50;
    goto LABEL_103;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_innerMicFaultCountRight + 4) & 1) == 0)
  {
    goto LABEL_102;
  }

LABEL_104:
  v87 = "innerMicFaultCountRight";
  v51 = v96;
  CKRecordKeyValueSetting.subscript.getter();
  v52 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampLeft;
  swift_beginAccess();
  v53 = *(v95 + 48);
  v54 = v91;
  sub_10013250C(v42, v91);
  sub_10013250C(v2 + v52, &v54[v53]);
  v55 = *(v97 + 48);
  if (v55(v54, 1, v51) == 1)
  {
    sub_1000EEE6C(v42, &qword_1002F7EF0, &unk_100226C90);
    v56 = v55(&v54[v53], 1, v51);
    v57 = v94;
    if (v56 == 1)
    {
      sub_1000EEE6C(v54, &qword_1002F7EF0, &unk_100226C90);
      goto LABEL_114;
    }
  }

  else
  {
    v58 = v85;
    sub_10013250C(v54, v85);
    if (v55(&v54[v53], 1, v51) != 1)
    {
      v68 = &v54[v53];
      v69 = v86;
      (*(v97 + 32))(v86, v68, v51);
      sub_10013353C(&unk_1002F9600, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v84 = dispatch thunk of static Equatable.== infix(_:_:)();
      v70 = *(v97 + 8);
      v70(v69, v96);
      sub_1000EEE6C(v93, &qword_1002F7EF0, &unk_100226C90);
      v70(v58, v96);
      v51 = v96;
      sub_1000EEE6C(v91, &qword_1002F7EF0, &unk_100226C90);
      v57 = v94;
      if (v84)
      {
        goto LABEL_114;
      }

      goto LABEL_110;
    }

    sub_1000EEE6C(v93, &qword_1002F7EF0, &unk_100226C90);
    (*(v97 + 8))(v58, v51);
    v57 = v94;
  }

  sub_1000EEE6C(v54, &qword_1002F8B30, &unk_1002288C0);
LABEL_110:
  v59 = v88;
  sub_10013250C(v2 + v52, v88);
  if (v55(v59, 1, v51) == 1)
  {
    sub_1000EEE6C(v59, &qword_1002F7EF0, &unk_100226C90);
    v99 = 0u;
    v100 = 0u;
    v101 = 0;
  }

  else
  {
    *(&v100 + 1) = v51;
    v101 = &protocol witness table for Date;
    v60 = sub_100133584(&v99);
    (*(v97 + 32))(v60, v59, v51);
  }

  CKRecordKeyValueSetting.subscript.setter();
LABEL_114:
  v93 = "latestDiagnosticTimestampLeft";
  CKRecordKeyValueSetting.subscript.getter();
  v61 = OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_latestDiagnosticTimestampRight;
  swift_beginAccess();
  v62 = *(v95 + 48);
  v63 = v92;
  sub_10013250C(v57, v92);
  sub_10013250C(v2 + v61, &v63[v62]);
  if (v55(v63, 1, v51) == 1)
  {
    sub_1000EEE6C(v57, &qword_1002F7EF0, &unk_100226C90);
    if (v55(&v63[v62], 1, v51) == 1)
    {
      sub_1000EEE6C(v63, &qword_1002F7EF0, &unk_100226C90);
      goto LABEL_124;
    }
  }

  else
  {
    v64 = v90;
    sub_10013250C(v63, v90);
    if (v55(&v63[v62], 1, v51) != 1)
    {
      v71 = v63;
      v72 = v97;
      v73 = v86;
      (*(v97 + 32))(v86, &v71[v62], v51);
      sub_10013353C(&unk_1002F9600, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      LODWORD(v95) = dispatch thunk of static Equatable.== infix(_:_:)();
      v74 = *(v72 + 8);
      v74(v73, v96);
      sub_1000EEE6C(v94, &qword_1002F7EF0, &unk_100226C90);
      v74(v90, v96);
      v51 = v96;
      sub_1000EEE6C(v92, &qword_1002F7EF0, &unk_100226C90);
      if (v95)
      {
        goto LABEL_124;
      }

      goto LABEL_120;
    }

    sub_1000EEE6C(v94, &qword_1002F7EF0, &unk_100226C90);
    (*(v97 + 8))(v64, v51);
  }

  sub_1000EEE6C(v63, &qword_1002F8B30, &unk_1002288C0);
LABEL_120:
  v65 = v89;
  sub_10013250C(v2 + v61, v89);
  if (v55(v65, 1, v51) == 1)
  {
    sub_1000EEE6C(v65, &qword_1002F7EF0, &unk_100226C90);
    v99 = 0u;
    v100 = 0u;
    v101 = 0;
  }

  else
  {
    *(&v100 + 1) = v51;
    v101 = &protocol witness table for Date;
    v66 = sub_100133584(&v99);
    (*(v97 + 32))(v66, v65, v51);
  }

  CKRecordKeyValueSetting.subscript.setter();
LABEL_124:
  CKRecordKeyValueSetting.subscript.getter();
  v67 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft);
  if ((BYTE4(v99) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft + 4))
    {
      v101 = 0;
      v99 = 0u;
      v100 = 0u;
LABEL_135:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_136;
    }

    if (v99 == v67)
    {
      goto LABEL_136;
    }

LABEL_134:
    *(&v100 + 1) = &type metadata for UInt32;
    v101 = &protocol witness table for UInt32;
    LODWORD(v99) = v67;
    goto LABEL_135;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountLeft + 4) & 1) == 0)
  {
    goto LABEL_134;
  }

LABEL_136:
  CKRecordKeyValueSetting.subscript.getter();
  v75 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight);
  if ((BYTE4(v99) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight + 4))
    {
      v101 = 0;
      v99 = 0u;
      v100 = 0u;
LABEL_143:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_144;
    }

    if (v99 == v75)
    {
      goto LABEL_144;
    }

LABEL_142:
    *(&v100 + 1) = &type metadata for UInt32;
    v101 = &protocol witness table for UInt32;
    LODWORD(v99) = v75;
    goto LABEL_143;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_rearVentFaultCountRight + 4) & 1) == 0)
  {
    goto LABEL_142;
  }

LABEL_144:
  CKRecordKeyValueSetting.subscript.getter();
  v76 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft);
  if ((BYTE4(v99) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft + 4))
    {
      v101 = 0;
      v99 = 0u;
      v100 = 0u;
LABEL_151:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_152;
    }

    if (v99 == v76)
    {
      goto LABEL_152;
    }

LABEL_150:
    *(&v100 + 1) = &type metadata for UInt32;
    v101 = &protocol witness table for UInt32;
    LODWORD(v99) = v76;
    goto LABEL_151;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountLeft + 4) & 1) == 0)
  {
    goto LABEL_150;
  }

LABEL_152:
  CKRecordKeyValueSetting.subscript.getter();
  v77 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight);
  if ((BYTE4(v99) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight + 4))
    {
      v101 = 0;
      v99 = 0u;
      v100 = 0u;
LABEL_159:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_160;
    }

    if (v99 == v77)
    {
      goto LABEL_160;
    }

LABEL_158:
    *(&v100 + 1) = &type metadata for UInt32;
    v101 = &protocol witness table for UInt32;
    LODWORD(v99) = v77;
    goto LABEL_159;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_speakerFaultCountRight + 4) & 1) == 0)
  {
    goto LABEL_158;
  }

LABEL_160:
  CKRecordKeyValueSetting.subscript.getter();
  v78 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft);
  if ((BYTE4(v99) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft + 4))
    {
      v101 = 0;
      v99 = 0u;
      v100 = 0u;
LABEL_167:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_168;
    }

    if (v99 == v78)
    {
      goto LABEL_168;
    }

LABEL_166:
    *(&v100 + 1) = &type metadata for UInt32;
    v101 = &protocol witness table for UInt32;
    LODWORD(v99) = v78;
    goto LABEL_167;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountLeft + 4) & 1) == 0)
  {
    goto LABEL_166;
  }

LABEL_168:
  CKRecordKeyValueSetting.subscript.getter();
  v79 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight);
  if ((BYTE4(v99) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight + 4))
    {
      v101 = 0;
      v99 = 0u;
      v100 = 0u;
LABEL_175:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_176;
    }

    if (v99 == v79)
    {
      goto LABEL_176;
    }

LABEL_174:
    *(&v100 + 1) = &type metadata for UInt32;
    v101 = &protocol witness table for UInt32;
    LODWORD(v99) = v79;
    goto LABEL_175;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_topMicFaultCountRight + 4) & 1) == 0)
  {
    goto LABEL_174;
  }

LABEL_176:
  CKRecordKeyValueSetting.subscript.getter();
  v80 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft);
  if ((BYTE4(v99) & 1) == 0)
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft + 4))
    {
      v101 = 0;
      v99 = 0u;
      v100 = 0u;
LABEL_183:
      CKRecordKeyValueSetting.subscript.setter();
      goto LABEL_184;
    }

    if (v99 == v80)
    {
      goto LABEL_184;
    }

LABEL_182:
    *(&v100 + 1) = &type metadata for UInt32;
    v101 = &protocol witness table for UInt32;
    LODWORD(v99) = v80;
    goto LABEL_183;
  }

  if ((*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountLeft + 4) & 1) == 0)
  {
    goto LABEL_182;
  }

LABEL_184:
  CKRecordKeyValueSetting.subscript.getter();
  v81 = *(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight);
  if (BYTE4(v99))
  {
    if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight + 4))
    {
      return swift_unknownObjectRelease();
    }

    goto LABEL_190;
  }

  if (*(v2 + OBJC_IVAR____TtC15audioaccessoryd19HMDeviceCloudRecord_totalHarmonicDistortionFaultCountRight + 4))
  {
    v101 = 0;
    v99 = 0u;
    v100 = 0u;
LABEL_191:
    CKRecordKeyValueSetting.subscript.setter();
    return swift_unknownObjectRelease();
  }

  if (v99 != v81)
  {
LABEL_190:
    *(&v100 + 1) = &type metadata for UInt32;
    v101 = &protocol witness table for UInt32;
    LODWORD(v99) = v81;
    goto LABEL_191;
  }

  return swift_unknownObjectRelease();
}