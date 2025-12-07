@interface PDSpotFinder
+ (BOOL)findSpotsInImage:(__CVBuffer *)image andUpdateCalib:(void *)calib forPreset:(int)preset distance:(float)distance isSphere:(BOOL)sphere outputFoMs:(id *)ms;
@end

@implementation PDSpotFinder

+ (BOOL)findSpotsInImage:(__CVBuffer *)image andUpdateCalib:(void *)calib forPreset:(int)preset distance:(float)distance isSphere:(BOOL)sphere outputFoMs:(id *)ms
{
  v274 = *MEMORY[0x277D85DE8];
  if (CVPixelBufferGetWidth(image) != 84 || CVPixelBufferGetHeight(image) != 864 || CVPixelBufferGetPixelFormatType(image) != 1278226534)
  {
    peridot_depth_log("image must be of width %zu, height %zu, and pixel format 'L00f'");
    return 0;
  }

  MutableBytePtr = CFDataGetMutableBytePtr(calib);
  if (preset)
  {
    peridot_depth_log("spot finder currently only supports NormalRange preset");
    return 0;
  }

  v16 = MutableBytePtr;
  CVPixelBufferLockBaseAddress(image, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(image);
  BytesPerRow = CVPixelBufferGetBytesPerRow(image);
  __dst[0] = 0;
  __dst[1] = 0;
  v45 = 0;
  v46 = 0x11B8000000001;
  coder::array_base<float,int,2>::ensureCapacity(__dst, 72576);
  v19 = v16 + 344064;
  v20 = __dst[0];
  v21 = 864;
  do
  {
    memcpy(v20, BaseAddress, 0x150uLL);
    v20 += 336;
    BaseAddress += BytesPerRow;
    --v21;
  }

  while (v21);
  CVPixelBufferUnlockBaseAddress(image, 1uLL);
  v273 = 0x800000001;
  rep = std::chrono::steady_clock::now().__d_.__rep_;
  memcpy(&state, &uv, 0x9C4uLL);
  isInitialized_spot_finder_peridot[0] = 1;
  spot_finder_peridot(__dst, distance, &unk_2247B94A8);
  isInitialized_spot_finder_peridot[0] = 0;
  v23.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  peridot_depth_log("Ran spot finder in %f ms", ((v23.__d_.__rep_ - rep) / 1000) * 0.001);
  *(v19 + 307) = distance;
  v19[1232] = sphere;
  *(v19 + 83) = v49;
  *(v19 + 84) = v161;
  *(v19 + 85) = v50;
  *(v19 + 86) = v162;
  *(v19 + 87) = v51;
  *(v19 + 88) = v163;
  *(v19 + 89) = v52;
  *(v19 + 90) = v164;
  *(v19 + 91) = v53;
  *(v19 + 92) = v165;
  *(v19 + 93) = v54;
  *(v19 + 94) = v166;
  *(v19 + 95) = v55;
  *(v19 + 96) = v167;
  *(v19 + 97) = v56;
  *(v19 + 98) = v168;
  *(v19 + 99) = v57;
  *(v19 + 100) = v169;
  *(v19 + 101) = v58;
  *(v19 + 102) = v170;
  *(v19 + 103) = v59;
  *(v19 + 104) = v171;
  *(v19 + 105) = v60;
  *(v19 + 106) = v172;
  *(v19 + 107) = v61;
  *(v19 + 108) = v173;
  *(v19 + 109) = v62;
  *(v19 + 110) = v174;
  *(v19 + 111) = v63;
  *(v19 + 112) = v175;
  *(v19 + 113) = v64;
  *(v19 + 114) = v176;
  *(v19 + 115) = v65;
  *(v19 + 116) = v177;
  *(v19 + 117) = v66;
  *(v19 + 118) = v178;
  *(v19 + 119) = v67;
  *(v19 + 120) = v179;
  *(v19 + 121) = v68;
  *(v19 + 122) = v180;
  *(v19 + 123) = v69;
  *(v19 + 124) = v181;
  *(v19 + 125) = v70;
  *(v19 + 126) = v182;
  *(v19 + 127) = v71;
  *(v19 + 128) = v183;
  *(v19 + 129) = v72;
  *(v19 + 130) = v184;
  *(v19 + 131) = v73;
  *(v19 + 132) = v185;
  *(v19 + 133) = v74;
  *(v19 + 134) = v186;
  *(v19 + 135) = v75;
  *(v19 + 136) = v187;
  *(v19 + 137) = v76;
  *(v19 + 138) = v188;
  *(v19 + 139) = v77;
  *(v19 + 140) = v189;
  *(v19 + 141) = v78;
  *(v19 + 142) = v190;
  *(v19 + 143) = v79;
  *(v19 + 144) = v191;
  *(v19 + 145) = v80;
  *(v19 + 146) = v192;
  *(v19 + 147) = v81;
  *(v19 + 148) = v193;
  *(v19 + 149) = v82;
  *(v19 + 150) = v194;
  *(v19 + 151) = v83;
  *(v19 + 152) = v195;
  *(v19 + 153) = v84;
  *(v19 + 154) = v196;
  *(v19 + 155) = v85;
  *(v19 + 156) = v197;
  *(v19 + 157) = v86;
  *(v19 + 158) = v198;
  *(v19 + 159) = v87;
  *(v19 + 160) = v199;
  *(v19 + 161) = v88;
  *(v19 + 162) = v200;
  *(v19 + 163) = v89;
  *(v19 + 164) = v201;
  *(v19 + 165) = v90;
  *(v19 + 166) = v202;
  *(v19 + 167) = v91;
  *(v19 + 168) = v203;
  *(v19 + 169) = v92;
  *(v19 + 170) = v204;
  *(v19 + 171) = v93;
  *(v19 + 172) = v205;
  *(v19 + 173) = v94;
  *(v19 + 174) = v206;
  *(v19 + 175) = v95;
  *(v19 + 176) = v207;
  *(v19 + 177) = v96;
  *(v19 + 178) = v208;
  *(v19 + 179) = v97;
  *(v19 + 180) = v209;
  *(v19 + 181) = v98;
  *(v19 + 182) = v210;
  *(v19 + 183) = v99;
  *(v19 + 184) = v211;
  *(v19 + 185) = v100;
  *(v19 + 186) = v212;
  *(v19 + 187) = v101;
  *(v19 + 188) = v213;
  *(v19 + 189) = v102;
  *(v19 + 190) = v214;
  *(v19 + 191) = v103;
  *(v19 + 192) = v215;
  *(v19 + 193) = v104;
  *(v19 + 194) = v216;
  *(v19 + 195) = v105;
  *(v19 + 196) = v217;
  *(v19 + 197) = v106;
  *(v19 + 198) = v218;
  *(v19 + 199) = v107;
  *(v19 + 200) = v219;
  *(v19 + 201) = v108;
  *(v19 + 202) = v220;
  *(v19 + 203) = v109;
  *(v19 + 204) = v221;
  *(v19 + 205) = v110;
  *(v19 + 206) = v222;
  *(v19 + 207) = v111;
  *(v19 + 208) = v223;
  *(v19 + 209) = v112;
  *(v19 + 210) = v224;
  *(v19 + 211) = v113;
  *(v19 + 212) = v225;
  *(v19 + 213) = v114;
  *(v19 + 214) = v226;
  *(v19 + 215) = v115;
  *(v19 + 216) = v227;
  *(v19 + 217) = v116;
  *(v19 + 218) = v228;
  *(v19 + 219) = v117;
  *(v19 + 220) = v229;
  *(v19 + 221) = v118;
  *(v19 + 222) = v230;
  *(v19 + 223) = v119;
  *(v19 + 224) = v231;
  *(v19 + 225) = v120;
  *(v19 + 226) = v232;
  *(v19 + 227) = v121;
  *(v19 + 228) = v233;
  *(v19 + 229) = v122;
  *(v19 + 230) = v234;
  *(v19 + 231) = v123;
  *(v19 + 232) = v235;
  *(v19 + 233) = v124;
  *(v19 + 234) = v236;
  *(v19 + 235) = v125;
  *(v19 + 236) = v237;
  *(v19 + 237) = v126;
  *(v19 + 238) = v238;
  *(v19 + 239) = v127;
  *(v19 + 240) = v239;
  *(v19 + 241) = v128;
  *(v19 + 242) = v240;
  *(v19 + 243) = v129;
  *(v19 + 244) = v241;
  *(v19 + 245) = v130;
  *(v19 + 246) = v242;
  *(v19 + 247) = v131;
  *(v19 + 248) = v243;
  *(v19 + 249) = v132;
  *(v19 + 250) = v244;
  *(v19 + 251) = v133;
  *(v19 + 252) = v245;
  *(v19 + 253) = v134;
  *(v19 + 254) = v246;
  *(v19 + 255) = v135;
  *(v19 + 256) = v247;
  *(v19 + 257) = v136;
  *(v19 + 258) = v248;
  *(v19 + 259) = v137;
  *(v19 + 260) = v249;
  *(v19 + 261) = v138;
  *(v19 + 262) = v250;
  *(v19 + 263) = v139;
  *(v19 + 264) = v251;
  *(v19 + 265) = v140;
  *(v19 + 266) = v252;
  *(v19 + 267) = v141;
  *(v19 + 268) = v253;
  *(v19 + 269) = v142;
  *(v19 + 270) = v254;
  *(v19 + 271) = v143;
  *(v19 + 272) = v255;
  *(v19 + 273) = v144;
  *(v19 + 274) = v256;
  *(v19 + 275) = v145;
  *(v19 + 276) = v257;
  *(v19 + 277) = v146;
  *(v19 + 278) = v258;
  *(v19 + 279) = v147;
  *(v19 + 280) = v259;
  *(v19 + 281) = v148;
  *(v19 + 282) = v260;
  *(v19 + 283) = v149;
  *(v19 + 284) = v261;
  *(v19 + 285) = v150;
  *(v19 + 286) = v262;
  *(v19 + 287) = v151;
  *(v19 + 288) = v263;
  *(v19 + 289) = v152;
  *(v19 + 290) = v264;
  *(v19 + 291) = v153;
  *(v19 + 292) = v265;
  *(v19 + 293) = v154;
  *(v19 + 294) = v266;
  *(v19 + 295) = v155;
  *(v19 + 296) = v267;
  *(v19 + 297) = v156;
  *(v19 + 298) = v268;
  *(v19 + 299) = v157;
  *(v19 + 300) = v269;
  *(v19 + 301) = v158;
  *(v19 + 302) = v270;
  *(v19 + 303) = v159;
  *(v19 + 304) = v271;
  *(v19 + 305) = v160;
  *(v19 + 306) = v272;
  if (ms)
  {
    v47[0] = @"SF_Spots99pDistToNominal";
    v33 = [MEMORY[0x277CCABB0] numberWithDouble:v34];
    v48[0] = v33;
    v47[1] = @"SF_numSpotsOutTol";
    v24 = [MEMORY[0x277CCABB0] numberWithDouble:v35];
    v48[1] = v24;
    v47[2] = @"SF_missing_spots";
    v25 = [MEMORY[0x277CCABB0] numberWithDouble:v36];
    v48[2] = v25;
    v47[3] = @"SF_Rx_mrad";
    v26 = [MEMORY[0x277CCABB0] numberWithDouble:v38];
    v48[3] = v26;
    v47[4] = @"SF_Ry_mrad";
    v27 = [MEMORY[0x277CCABB0] numberWithDouble:v39];
    v48[4] = v27;
    v47[5] = @"SF_Rz_mrad";
    v28 = [MEMORY[0x277CCABB0] numberWithDouble:v40];
    v48[5] = v28;
    v47[6] = @"SF_Tx_mm";
    v29 = [MEMORY[0x277CCABB0] numberWithDouble:v41];
    v48[6] = v29;
    v47[7] = @"SF_Ty_mm";
    v30 = [MEMORY[0x277CCABB0] numberWithDouble:v42];
    v48[7] = v30;
    v47[8] = @"SF_Tz_mm";
    v31 = [MEMORY[0x277CCABB0] numberWithDouble:v37];
    v48[8] = v31;
    v47[9] = @"SF_Rz_center_region_mrads";
    v32 = [MEMORY[0x277CCABB0] numberWithDouble:v43];
    v48[9] = v32;
    *ms = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:10];
  }

  if (v45 == 1)
  {
    if (__dst[0])
    {
      MEMORY[0x22AA53170](__dst[0], 0x1000C8052888210);
    }
  }

  return 1;
}

@end