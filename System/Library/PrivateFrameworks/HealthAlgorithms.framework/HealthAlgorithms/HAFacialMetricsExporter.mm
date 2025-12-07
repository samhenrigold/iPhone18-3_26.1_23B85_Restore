@interface HAFacialMetricsExporter
- (HAFacialMetricsExporter)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (id)sr_dictionaryRepresentation;
@end

@implementation HAFacialMetricsExporter

- (HAFacialMetricsExporter)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  v20 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v18.receiver = self;
  v18.super_class = HAFacialMetricsExporter;
  v8 = [(HAFacialMetricsExporter *)&v18 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_15;
  }

  objc_storeStrong(&v8->_packet, representation);
  v10 = [representationCopy length];
  if (v10 <= 3)
  {
    v11 = ha_get_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [HAFacialMetricsExporter initWithBinarySampleRepresentation:v11 metadata:? timestamp:?];
    }

LABEL_5:

LABEL_15:
    v15 = 0;
    goto LABEL_16;
  }

  [representationCopy getBytes:&v9->_packetType length:4];
  packetType = [(HAFacialMetricsExporter *)v9 packetType];
  if (packetType >= 6)
  {
    v11 = ha_get_log(packetType);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [HAFacialMetricsExporter initWithBinarySampleRepresentation:buf metadata:[(HAFacialMetricsExporter *)v9 packetType] timestamp:v11];
    }

    goto LABEL_5;
  }

  v13 = qword_2512C81E8[packetType];
  v14 = [representationCopy length];
  if (v14 != v13)
  {
    v16 = ha_get_log(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      -[HAFacialMetricsExporter initWithBinarySampleRepresentation:metadata:timestamp:].cold.2(buf, v13, [representationCopy length], v16);
    }

    goto LABEL_15;
  }

  v15 = v9;
LABEL_16:

  return v15;
}

- (id)sr_dictionaryRepresentation
{
  v230[8] = *MEMORY[0x277D85DE8];
  v208 = objc_opt_new();
  v229[0] = @"lock_session_id";
  v206 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(self + 40)];
  v230[0] = v206;
  v229[1] = @"lock_session_relative_timestamp";
  v204 = [MEMORY[0x277CCABB0] numberWithDouble:*(self + 48)];
  v230[1] = v204;
  v229[2] = @"messages_session_id";
  v202 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(self + 56)];
  v230[2] = v202;
  v229[3] = @"message_session_relative_timestamp";
  v200 = [MEMORY[0x277CCABB0] numberWithDouble:*(self + 64)];
  v230[3] = v200;
  v229[4] = @"pose";
  v227[0] = @"rotation";
  LODWORD(v2) = *(self + 72);
  v198 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  v225[0] = v198;
  LODWORD(v3) = *(self + 76);
  v196 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
  v225[1] = v196;
  LODWORD(v4) = *(self + 80);
  v194 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v225[2] = v194;
  v193 = [MEMORY[0x277CBEA60] arrayWithObjects:v225 count:3];
  v226[0] = v193;
  LODWORD(v5) = *(self + 84);
  v192 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v224[0] = v192;
  LODWORD(v6) = *(self + 88);
  v191 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v224[1] = v191;
  LODWORD(v7) = *(self + 92);
  v190 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v224[2] = v190;
  v189 = [MEMORY[0x277CBEA60] arrayWithObjects:v224 count:3];
  v226[1] = v189;
  LODWORD(v8) = *(self + 96);
  v188 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v223[0] = v188;
  LODWORD(v9) = *(self + 100);
  v187 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v223[1] = v187;
  LODWORD(v10) = *(self + 104);
  v186 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  v223[2] = v186;
  v185 = [MEMORY[0x277CBEA60] arrayWithObjects:v223 count:3];
  v226[2] = v185;
  v184 = [MEMORY[0x277CBEA60] arrayWithObjects:v226 count:3];
  v227[1] = @"translation";
  v228[0] = v184;
  LODWORD(v11) = *(self + 108);
  v183 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v222[0] = v183;
  LODWORD(v12) = *(self + 112);
  v182 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  v222[1] = v182;
  LODWORD(v13) = *(self + 116);
  v181 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  v222[2] = v181;
  v180 = [MEMORY[0x277CBEA60] arrayWithObjects:v222 count:3];
  v228[1] = v180;
  v179 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v228 forKeys:v227 count:2];
  v230[4] = v179;
  v229[5] = @"gaze";
  LODWORD(v14) = *(self + 160);
  v178 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  v221[0] = v178;
  LODWORD(v15) = *(self + 164);
  v177 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  v221[1] = v177;
  LODWORD(v16) = *(self + 168);
  v176 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  v221[2] = v176;
  v175 = [MEMORY[0x277CBEA60] arrayWithObjects:v221 count:3];
  v230[5] = v175;
  v229[6] = @"blendshapes";
  v219[0] = @"eye_blink_left";
  LODWORD(v17) = *(self + 172);
  v174 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
  v220[0] = v174;
  v219[1] = @"eye_blink_right";
  LODWORD(v18) = *(self + 176);
  v173 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
  v220[1] = v173;
  v219[2] = @"eye_squint_left";
  LODWORD(v19) = *(self + 180);
  v172 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v220[2] = v172;
  v219[3] = @"eye_squint_right";
  LODWORD(v20) = *(self + 184);
  v171 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
  v220[3] = v171;
  v219[4] = @"eye_look_down_left";
  LODWORD(v21) = *(self + 188);
  v170 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  v220[4] = v170;
  v219[5] = @"eye_look_down_right";
  LODWORD(v22) = *(self + 192);
  v169 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
  v220[5] = v169;
  v219[6] = @"eye_look_in_left";
  LODWORD(v23) = *(self + 196);
  v168 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
  v220[6] = v168;
  v219[7] = @"eye_look_in_right";
  LODWORD(v24) = *(self + 200);
  v167 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
  v220[7] = v167;
  v219[8] = @"eye_wide_left";
  LODWORD(v25) = *(self + 204);
  v166 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
  v220[8] = v166;
  v219[9] = @"eye_wide_right";
  LODWORD(v26) = *(self + 208);
  v165 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
  v220[9] = v165;
  v219[10] = @"eye_look_out_left";
  LODWORD(v27) = *(self + 212);
  v164 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
  v220[10] = v164;
  v219[11] = @"eye_look_out_right";
  LODWORD(v28) = *(self + 216);
  v163 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
  v220[11] = v163;
  v219[12] = @"eye_look_up_left";
  LODWORD(v29) = *(self + 220);
  v162 = [MEMORY[0x277CCABB0] numberWithFloat:v29];
  v220[12] = v162;
  v219[13] = @"eye_look_up_right";
  LODWORD(v30) = *(self + 224);
  v161 = [MEMORY[0x277CCABB0] numberWithFloat:v30];
  v220[13] = v161;
  v219[14] = @"brow_down_left";
  LODWORD(v31) = *(self + 228);
  v160 = [MEMORY[0x277CCABB0] numberWithFloat:v31];
  v220[14] = v160;
  v219[15] = @"brow_down_right";
  LODWORD(v32) = *(self + 232);
  v159 = [MEMORY[0x277CCABB0] numberWithFloat:v32];
  v220[15] = v159;
  v219[16] = @"brow_inner_up";
  LODWORD(v33) = *(self + 236);
  v158 = [MEMORY[0x277CCABB0] numberWithFloat:v33];
  v220[16] = v158;
  v219[17] = @"brow_outer_up_left";
  LODWORD(v34) = *(self + 240);
  v157 = [MEMORY[0x277CCABB0] numberWithFloat:v34];
  v220[17] = v157;
  v219[18] = @"brow_outer_up_right";
  LODWORD(v35) = *(self + 244);
  v156 = [MEMORY[0x277CCABB0] numberWithFloat:v35];
  v220[18] = v156;
  v219[19] = @"jaw_open";
  LODWORD(v36) = *(self + 248);
  v155 = [MEMORY[0x277CCABB0] numberWithFloat:v36];
  v220[19] = v155;
  v219[20] = @"mouth_close";
  LODWORD(v37) = *(self + 252);
  v154 = [MEMORY[0x277CCABB0] numberWithFloat:v37];
  v220[20] = v154;
  v219[21] = @"jaw_left";
  LODWORD(v38) = *(self + 256);
  v153 = [MEMORY[0x277CCABB0] numberWithFloat:v38];
  v220[21] = v153;
  v219[22] = @"jaw_right";
  LODWORD(v39) = *(self + 260);
  v152 = [MEMORY[0x277CCABB0] numberWithFloat:v39];
  v220[22] = v152;
  v219[23] = @"jaw_forward";
  LODWORD(v40) = *(self + 264);
  v151 = [MEMORY[0x277CCABB0] numberWithFloat:v40];
  v220[23] = v151;
  v219[24] = @"mouth_upper_up_left";
  LODWORD(v41) = *(self + 268);
  v150 = [MEMORY[0x277CCABB0] numberWithFloat:v41];
  v220[24] = v150;
  v219[25] = @"mouth_upper_up_right";
  LODWORD(v42) = *(self + 272);
  v149 = [MEMORY[0x277CCABB0] numberWithFloat:v42];
  v220[25] = v149;
  v219[26] = @"mouth_lower_down_left";
  LODWORD(v43) = *(self + 276);
  v148 = [MEMORY[0x277CCABB0] numberWithFloat:v43];
  v220[26] = v148;
  v219[27] = @"mouth_lower_down_right";
  LODWORD(v44) = *(self + 280);
  v147 = [MEMORY[0x277CCABB0] numberWithFloat:v44];
  v220[27] = v147;
  v219[28] = @"mouth_roll_upper";
  LODWORD(v45) = *(self + 284);
  v146 = [MEMORY[0x277CCABB0] numberWithFloat:v45];
  v220[28] = v146;
  v219[29] = @"mouth_roll_lower";
  LODWORD(v46) = *(self + 288);
  v145 = [MEMORY[0x277CCABB0] numberWithFloat:v46];
  v220[29] = v145;
  v219[30] = @"mouth_smile_left";
  LODWORD(v47) = *(self + 292);
  v144 = [MEMORY[0x277CCABB0] numberWithFloat:v47];
  v220[30] = v144;
  v219[31] = @"mouth_smile_right";
  LODWORD(v48) = *(self + 296);
  v143 = [MEMORY[0x277CCABB0] numberWithFloat:v48];
  v220[31] = v143;
  v219[32] = @"mouth_dimple_left";
  LODWORD(v49) = *(self + 300);
  v142 = [MEMORY[0x277CCABB0] numberWithFloat:v49];
  v220[32] = v142;
  v219[33] = @"mouth_dimple_right";
  LODWORD(v50) = *(self + 304);
  v141 = [MEMORY[0x277CCABB0] numberWithFloat:v50];
  v220[33] = v141;
  v219[34] = @"mouth_stretch_left";
  LODWORD(v51) = *(self + 308);
  v140 = [MEMORY[0x277CCABB0] numberWithFloat:v51];
  v220[34] = v140;
  v219[35] = @"mouth_stretch_right";
  LODWORD(v52) = *(self + 312);
  v139 = [MEMORY[0x277CCABB0] numberWithFloat:v52];
  v220[35] = v139;
  v219[36] = @"mouth_frown_left";
  LODWORD(v53) = *(self + 316);
  v138 = [MEMORY[0x277CCABB0] numberWithFloat:v53];
  v220[36] = v138;
  v219[37] = @"mouth_frown_right";
  LODWORD(v54) = *(self + 320);
  v137 = [MEMORY[0x277CCABB0] numberWithFloat:v54];
  v220[37] = v137;
  v219[38] = @"mouth_press_left";
  LODWORD(v55) = *(self + 324);
  v136 = [MEMORY[0x277CCABB0] numberWithFloat:v55];
  v220[38] = v136;
  v219[39] = @"mouth_press_right";
  LODWORD(v56) = *(self + 328);
  v135 = [MEMORY[0x277CCABB0] numberWithFloat:v56];
  v220[39] = v135;
  v219[40] = @"mouth_pucker";
  LODWORD(v57) = *(self + 332);
  v134 = [MEMORY[0x277CCABB0] numberWithFloat:v57];
  v220[40] = v134;
  v219[41] = @"mouth_funnel";
  LODWORD(v58) = *(self + 336);
  v133 = [MEMORY[0x277CCABB0] numberWithFloat:v58];
  v220[41] = v133;
  v219[42] = @"mouth_left";
  LODWORD(v59) = *(self + 340);
  v132 = [MEMORY[0x277CCABB0] numberWithFloat:v59];
  v220[42] = v132;
  v219[43] = @"mouth_right";
  LODWORD(v60) = *(self + 344);
  v131 = [MEMORY[0x277CCABB0] numberWithFloat:v60];
  v220[43] = v131;
  v219[44] = @"mouth_shrug_lower";
  LODWORD(v61) = *(self + 348);
  v130 = [MEMORY[0x277CCABB0] numberWithFloat:v61];
  v220[44] = v130;
  v219[45] = @"mouth_shrug_upper";
  LODWORD(v62) = *(self + 352);
  v129 = [MEMORY[0x277CCABB0] numberWithFloat:v62];
  v220[45] = v129;
  v219[46] = @"nose_sneer_left";
  LODWORD(v63) = *(self + 356);
  v128 = [MEMORY[0x277CCABB0] numberWithFloat:v63];
  v220[46] = v128;
  v219[47] = @"nose_sneer_right";
  LODWORD(v64) = *(self + 360);
  v127 = [MEMORY[0x277CCABB0] numberWithFloat:v64];
  v220[47] = v127;
  v219[48] = @"cheek_puff";
  LODWORD(v65) = *(self + 364);
  v126 = [MEMORY[0x277CCABB0] numberWithFloat:v65];
  v220[48] = v126;
  v219[49] = @"cheek_squint_left";
  LODWORD(v66) = *(self + 368);
  v125 = [MEMORY[0x277CCABB0] numberWithFloat:v66];
  v220[49] = v125;
  v219[50] = @"cheek_squint_right";
  LODWORD(v67) = *(self + 372);
  v124 = [MEMORY[0x277CCABB0] numberWithFloat:v67];
  v220[50] = v124;
  v123 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v220 forKeys:v219 count:51];
  v230[6] = v123;
  v229[7] = @"face_positions";
  v217[0] = @"expressions";
  v215[0] = @"brow_furrow_and_eyes_wide_and_mouth_pressed_tight";
  LODWORD(v68) = *(self + 376);
  v122 = [MEMORY[0x277CCABB0] numberWithFloat:v68];
  v216[0] = v122;
  v215[1] = @"baseline";
  LODWORD(v69) = *(self + 380);
  v121 = [MEMORY[0x277CCABB0] numberWithFloat:v69];
  v216[1] = v121;
  v215[2] = @"nose_wrinkle_or_upper_lip_raise";
  LODWORD(v70) = *(self + 384);
  v120 = [MEMORY[0x277CCABB0] numberWithFloat:v70];
  v216[2] = v120;
  v215[3] = @"brow_raise_with_furrow_and_eye_widen_and_mouth_stretch";
  LODWORD(v71) = *(self + 388);
  v119 = [MEMORY[0x277CCABB0] numberWithFloat:v71];
  v216[3] = v119;
  v215[4] = @"lip_raise_and_cheek_raise";
  LODWORD(v72) = *(self + 392);
  v118 = [MEMORY[0x277CCABB0] numberWithFloat:v72];
  v216[4] = v118;
  v215[5] = @"inner_brow_raise_and_mouth_corner_depress";
  LODWORD(v73) = *(self + 396);
  v117 = [MEMORY[0x277CCABB0] numberWithFloat:v73];
  v216[5] = v117;
  v215[6] = @"brow_raise_without_furrow_and_eye_widen_and_jaw_drop";
  LODWORD(v74) = *(self + 400);
  v116 = [MEMORY[0x277CCABB0] numberWithFloat:v74];
  v216[6] = v116;
  v115 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v216 forKeys:v215 count:7];
  v218[0] = v115;
  v217[1] = @"key_actions";
  v213[0] = @"inner_brow_raise";
  LODWORD(v75) = *(self + 404);
  v114 = [MEMORY[0x277CCABB0] numberWithFloat:v75];
  v214[0] = v114;
  v213[1] = @"brow_raise_with_furrow";
  LODWORD(v76) = *(self + 408);
  v113 = [MEMORY[0x277CCABB0] numberWithFloat:v76];
  v214[1] = v113;
  v213[2] = @"brow_raise_without_furrow";
  LODWORD(v77) = *(self + 412);
  v112 = [MEMORY[0x277CCABB0] numberWithFloat:v77];
  v214[2] = v112;
  v213[3] = @"brow_furrow";
  LODWORD(v78) = *(self + 416);
  v79 = [MEMORY[0x277CCABB0] numberWithFloat:v78];
  v214[3] = v79;
  v213[4] = @"mouth_corner_depress";
  LODWORD(v80) = *(self + 420);
  v81 = [MEMORY[0x277CCABB0] numberWithFloat:v80];
  v214[4] = v81;
  v213[5] = @"mouth_stretch";
  LODWORD(v82) = *(self + 424);
  v83 = [MEMORY[0x277CCABB0] numberWithFloat:v82];
  v214[5] = v83;
  v213[6] = @"mouth_pressed_or_tight";
  LODWORD(v84) = *(self + 428);
  v85 = [MEMORY[0x277CCABB0] numberWithFloat:v84];
  v214[6] = v85;
  v213[7] = @"nose_wrinkle";
  LODWORD(v86) = *(self + 432);
  v87 = [MEMORY[0x277CCABB0] numberWithFloat:v86];
  v214[7] = v87;
  v88 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v214 forKeys:v213 count:8];
  v218[1] = v88;
  v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v218 forKeys:v217 count:2];
  v230[7] = v89;
  v90 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v230 forKeys:v229 count:8];
  [v208 addEntriesFromDictionary:v90];

  v211[0] = @"session_id";
  v207 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(self + 24)];
  v212[0] = v207;
  v211[1] = @"session_flags_enum";
  v205 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(self + 32)];
  v212[1] = v205;
  v211[2] = @"geometry_left_eye";
  LODWORD(v91) = *(self + 120);
  v203 = [MEMORY[0x277CCABB0] numberWithFloat:v91];
  v210[0] = v203;
  LODWORD(v92) = *(self + 124);
  v201 = [MEMORY[0x277CCABB0] numberWithFloat:v92];
  v210[1] = v201;
  LODWORD(v93) = *(self + 128);
  v199 = [MEMORY[0x277CCABB0] numberWithFloat:v93];
  v210[2] = v199;
  v197 = [MEMORY[0x277CBEA60] arrayWithObjects:v210 count:3];
  v212[2] = v197;
  v211[3] = @"geometry_right_eye";
  LODWORD(v94) = *(self + 132);
  v195 = [MEMORY[0x277CCABB0] numberWithFloat:v94];
  v209[0] = v195;
  LODWORD(v95) = *(self + 136);
  v96 = [MEMORY[0x277CCABB0] numberWithFloat:v95];
  v209[1] = v96;
  LODWORD(v97) = *(self + 140);
  v98 = [MEMORY[0x277CCABB0] numberWithFloat:v97];
  v209[2] = v98;
  v99 = [MEMORY[0x277CBEA60] arrayWithObjects:v209 count:3];
  v212[3] = v99;
  v211[4] = @"left_eye_pitch";
  LODWORD(v100) = *(self + 144);
  v101 = [MEMORY[0x277CCABB0] numberWithFloat:v100];
  v212[4] = v101;
  v211[5] = @"left_eye_yaw";
  LODWORD(v102) = *(self + 148);
  v103 = [MEMORY[0x277CCABB0] numberWithFloat:v102];
  v212[5] = v103;
  v211[6] = @"right_eye_pitch";
  LODWORD(v104) = *(self + 152);
  v105 = [MEMORY[0x277CCABB0] numberWithFloat:v104];
  v212[6] = v105;
  v211[7] = @"right_eye_yaw";
  LODWORD(v106) = *(self + 156);
  v107 = [MEMORY[0x277CCABB0] numberWithFloat:v106];
  v212[7] = v107;
  v108 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v212 forKeys:v211 count:8];
  [v208 addEntriesFromDictionary:v108];

  v109 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:self + 4];
  uUIDString = [v109 UUIDString];
  [v208 setObject:uUIDString forKeyedSubscript:@"track_index"];

  return v208;
}

- (void)initWithBinarySampleRepresentation:(uint8_t *)buf metadata:(int)a2 timestamp:(os_log_t)log .cold.1(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_fault_impl(&dword_251282000, log, OS_LOG_TYPE_FAULT, "unrecognized facial metrics packet type (%u)", buf, 8u);
}

- (void)initWithBinarySampleRepresentation:(uint64_t)a3 metadata:(os_log_t)log timestamp:.cold.2(uint8_t *buf, uint64_t a2, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_fault_impl(&dword_251282000, log, OS_LOG_TYPE_FAULT, "invalid packet length: expected %zu, got %zu", buf, 0x16u);
}

@end