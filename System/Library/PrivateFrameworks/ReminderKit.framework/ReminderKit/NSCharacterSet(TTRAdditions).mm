@interface NSCharacterSet(TTRAdditions)
+ (id)hashtagTokenAllowedCharacters;
+ (id)makeFormatCharacters;
+ (void)subtractOtherPunctuationCharactersFrom:()TTRAdditions;
@end

@implementation NSCharacterSet(TTRAdditions)

+ (id)hashtagTokenAllowedCharacters
{
  alphanumericCharacterSet = [MEMORY[0x1E696AD48] alphanumericCharacterSet];
  emojis = [MEMORY[0x1E696AB08] emojis];
  [alphanumericCharacterSet formUnionWithCharacterSet:emojis];

  v2 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"-_"];
  [alphanumericCharacterSet formUnionWithCharacterSet:v2];

  makeFormatCharacters = [MEMORY[0x1E696AB08] makeFormatCharacters];
  [alphanumericCharacterSet formUnionWithCharacterSet:makeFormatCharacters];

  symbolCharacterSet = [MEMORY[0x1E696AB08] symbolCharacterSet];
  [alphanumericCharacterSet formUnionWithCharacterSet:symbolCharacterSet];

  punctuationCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  [alphanumericCharacterSet formUnionWithCharacterSet:punctuationCharacterSet];

  [MEMORY[0x1E696AB08] subtractOtherPunctuationCharactersFrom:alphanumericCharacterSet];

  return alphanumericCharacterSet;
}

+ (id)makeFormatCharacters
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = xmmword_19A2303D0;
  v4 = xmmword_19A2303E0;
  v5 = xmmword_19A2303F0;
  v6 = xmmword_19A230400;
  v7 = xmmword_19A230410;
  v8 = xmmword_19A230420;
  v9 = xmmword_19A230430;
  v10 = xmmword_19A230440;
  v11 = xmmword_19A230450;
  v12 = xmmword_19A230460;
  v13 = xmmword_19A230470;
  v14 = xmmword_19A230480;
  v15 = xmmword_19A230490;
  v16 = xmmword_19A2304A0;
  v17 = xmmword_19A2304B0;
  v18 = xmmword_19A2304C0;
  v19 = xmmword_19A2304D0;
  v20 = xmmword_19A2304E0;
  v21 = xmmword_19A2304F0;
  v22 = xmmword_19A230500;
  v0 = objc_alloc_init(MEMORY[0x1E696AD48]);
  for (i = 0; i != 320; i += 16)
  {
    [v0 addCharactersInRange:{*(&v3 + i), *(&v3 + i + 8), v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22}];
  }

  return v0;
}

+ (void)subtractOtherPunctuationCharactersFrom:()TTRAdditions
{
  v4 = 0;
  v189 = *MEMORY[0x1E69E9840];
  v6 = xmmword_19A230510;
  v7 = xmmword_19A230520;
  v8 = xmmword_19A230530;
  v9 = xmmword_19A230540;
  v10 = xmmword_19A230550;
  v11 = xmmword_19A230560;
  v12 = xmmword_19A230570;
  v13 = xmmword_19A230580;
  v14 = xmmword_19A230590;
  v15 = xmmword_19A2305A0;
  v16 = xmmword_19A2305B0;
  v17 = xmmword_19A2305C0;
  v18 = xmmword_19A2305D0;
  v19 = xmmword_19A2305E0;
  v20 = xmmword_19A2305F0;
  v21 = xmmword_19A230600;
  v22 = xmmword_19A230610;
  v23 = xmmword_19A230620;
  v24 = xmmword_19A230630;
  v25 = xmmword_19A230640;
  v26 = xmmword_19A230650;
  v27 = xmmword_19A230660;
  v28 = xmmword_19A230670;
  v29 = xmmword_19A230680;
  v30 = xmmword_19A230690;
  v31 = xmmword_19A2306A0;
  v32 = xmmword_19A2306B0;
  v33 = xmmword_19A2306C0;
  v34 = xmmword_19A2306D0;
  v35 = xmmword_19A2306E0;
  v36 = xmmword_19A2306F0;
  v37 = xmmword_19A230700;
  v38 = xmmword_19A230710;
  v39 = xmmword_19A230720;
  v40 = xmmword_19A230730;
  v41 = xmmword_19A230740;
  v42 = xmmword_19A230750;
  v43 = xmmword_19A230760;
  v44 = xmmword_19A230770;
  v45 = xmmword_19A230780;
  v46 = xmmword_19A230790;
  v47 = xmmword_19A2307A0;
  v48 = xmmword_19A2307B0;
  v49 = xmmword_19A2307C0;
  v50 = xmmword_19A2307D0;
  v51 = xmmword_19A2307E0;
  v52 = xmmword_19A2307F0;
  v53 = xmmword_19A230800;
  v54 = xmmword_19A230810;
  v55 = xmmword_19A230820;
  v56 = xmmword_19A230830;
  v57 = xmmword_19A230840;
  v58 = xmmword_19A230850;
  v59 = xmmword_19A230860;
  v60 = xmmword_19A230870;
  v61 = xmmword_19A230880;
  v62 = xmmword_19A230890;
  v63 = xmmword_19A2308A0;
  v64 = xmmword_19A2308B0;
  v65 = xmmword_19A2308C0;
  v66 = xmmword_19A2308D0;
  v67 = xmmword_19A2308E0;
  v68 = xmmword_19A2308F0;
  v69 = xmmword_19A230900;
  v70 = xmmword_19A230910;
  v71 = xmmword_19A230920;
  v72 = xmmword_19A230930;
  v73 = xmmword_19A230940;
  v74 = xmmword_19A230950;
  v75 = xmmword_19A230960;
  v76 = xmmword_19A230970;
  v77 = xmmword_19A230980;
  v78 = xmmword_19A230990;
  v79 = xmmword_19A2309A0;
  v80 = xmmword_19A2309B0;
  v81 = xmmword_19A2309C0;
  v82 = xmmword_19A2309D0;
  v83 = xmmword_19A2309E0;
  v84 = xmmword_19A2309F0;
  v85 = xmmword_19A230A00;
  v86 = xmmword_19A230A10;
  v87 = xmmword_19A230A20;
  v88 = xmmword_19A230A30;
  v89 = xmmword_19A230A40;
  v90 = xmmword_19A230A50;
  v91 = xmmword_19A230A60;
  v92 = xmmword_19A230A70;
  v93 = xmmword_19A230A80;
  v94 = xmmword_19A230A90;
  v95 = xmmword_19A230AA0;
  v96 = xmmword_19A230AB0;
  v97 = xmmword_19A230AC0;
  v98 = xmmword_19A230AD0;
  v99 = xmmword_19A230AE0;
  v100 = xmmword_19A230AF0;
  v101 = xmmword_19A230B00;
  v102 = xmmword_19A230B10;
  v103 = xmmword_19A230B20;
  v104 = xmmword_19A230B30;
  v105 = xmmword_19A230B40;
  v106 = xmmword_19A230B50;
  v107 = xmmword_19A230B60;
  v108 = xmmword_19A230B70;
  v109 = xmmword_19A230B80;
  v110 = xmmword_19A230B90;
  v111 = xmmword_19A230BA0;
  v112 = xmmword_19A230BB0;
  v113 = xmmword_19A230BC0;
  v114 = xmmword_19A230BD0;
  v115 = xmmword_19A230BE0;
  v116 = xmmword_19A230BF0;
  v117 = xmmword_19A230C00;
  v118 = xmmword_19A230C10;
  v119 = xmmword_19A230C20;
  v120 = xmmword_19A230C30;
  v121 = xmmword_19A230C40;
  v122 = xmmword_19A230C50;
  v123 = xmmword_19A230C60;
  v124 = xmmword_19A230C70;
  v125 = xmmword_19A230C80;
  v126 = xmmword_19A230C90;
  v127 = xmmword_19A230CA0;
  v128 = xmmword_19A230CB0;
  v129 = xmmword_19A230CC0;
  v130 = xmmword_19A230CD0;
  v131 = xmmword_19A230CE0;
  v132 = xmmword_19A230CF0;
  v133 = xmmword_19A230D00;
  v134 = xmmword_19A230D10;
  v135 = xmmword_19A230D20;
  v136 = xmmword_19A230D30;
  v137 = xmmword_19A230D40;
  v138 = xmmword_19A230D50;
  v139 = xmmword_19A230D60;
  v140 = xmmword_19A230D70;
  v141 = xmmword_19A230D80;
  v142 = xmmword_19A230D90;
  v143 = xmmword_19A230DA0;
  v144 = xmmword_19A230DB0;
  v145 = xmmword_19A230DC0;
  v146 = xmmword_19A230DD0;
  v147 = xmmword_19A230DE0;
  v148 = xmmword_19A230DF0;
  v149 = xmmword_19A230E00;
  v150 = xmmword_19A230E10;
  v151 = xmmword_19A230E20;
  v152 = xmmword_19A230E30;
  v153 = xmmword_19A230E40;
  v154 = xmmword_19A230E50;
  v155 = xmmword_19A230E60;
  v156 = xmmword_19A230E70;
  v157 = xmmword_19A230E80;
  v158 = xmmword_19A230E90;
  v159 = xmmword_19A230EA0;
  v160 = xmmword_19A230EB0;
  v161 = xmmword_19A230EC0;
  v162 = xmmword_19A230ED0;
  v163 = xmmword_19A230EE0;
  v164 = xmmword_19A230EF0;
  v165 = xmmword_19A230F00;
  v166 = xmmword_19A230F10;
  v167 = xmmword_19A230F20;
  v168 = xmmword_19A230F30;
  v169 = xmmword_19A230F40;
  v170 = xmmword_19A230F50;
  v171 = xmmword_19A230F60;
  v172 = xmmword_19A230F70;
  v173 = xmmword_19A230F80;
  v174 = xmmword_19A230F90;
  v175 = xmmword_19A230FA0;
  v176 = xmmword_19A230FB0;
  v177 = xmmword_19A230FC0;
  v178 = xmmword_19A230FD0;
  v179 = xmmword_19A230FE0;
  v180 = xmmword_19A230FF0;
  v181 = xmmword_19A231000;
  v182 = xmmword_19A231010;
  v183 = xmmword_19A231020;
  v184 = xmmword_19A231030;
  v185 = xmmword_19A231040;
  v186 = xmmword_19A231050;
  v187 = xmmword_19A231060;
  v188 = xmmword_19A231070;
  do
  {
    result = [a3 removeCharactersInRange:{*(&v6 + v4), *(&v6 + v4 + 8), v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35}];
    v4 += 16;
  }

  while (v4 != 2928);
  return result;
}

@end