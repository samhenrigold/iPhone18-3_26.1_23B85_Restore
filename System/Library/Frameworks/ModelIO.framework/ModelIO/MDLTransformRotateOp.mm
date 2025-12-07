@interface MDLTransformRotateOp
- (MDLTransformRotateOp)initWithName:(id)name inverse:(BOOL)inverse order:(unint64_t)order data:(id)data;
- (void)double4x4AtTime:(float64x2_t *)time@<X8>;
- (void)float4x4AtTime:(uint64_t)time;
@end

@implementation MDLTransformRotateOp

- (MDLTransformRotateOp)initWithName:(id)name inverse:(BOOL)inverse order:(unint64_t)order data:(id)data
{
  nameCopy = name;
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = MDLTransformRotateOp;
  v13 = [(MDLTransformRotateOp *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_animatedValue, data);
    objc_storeStrong(&v14->_name, name);
    v14->_order = order;
    v14->_inverse = inverse;
    v15 = v14;
  }

  return v14;
}

- (void)float4x4AtTime:(uint64_t)time
{
  objc_msgSend_float3AtTime_(*(self + 24), a2, time, a4, a11, a12, a13, a14, a5, a6, a7, a8, a15.f64[0], a16.f64[0], a17.f64[0], a18.f64[0]);
  v246 = v42;
  *&STACK[0x5F0] = 0u;
  *&STACK[0x600] = 0u;
  *&STACK[0x5D0] = 0u;
  *&STACK[0x5E0] = 0u;
  *&STACK[0x5B0] = 0u;
  *&STACK[0x5C0] = 0u;
  *&STACK[0x590] = 0u;
  *&STACK[0x5A0] = 0u;
  v43.f64[0] = 0.0;
  sub_239ED2C10(&STACK[0x590], *&v42 * 0.0174532925, COERCE_UNSIGNED_INT64(1.0), 0.0, v43);
  v256 = 0u;
  *&STACK[0x580] = 0u;
  v254 = 0u;
  v255 = 0u;
  v252 = 0u;
  v253 = 0u;
  v250 = 0u;
  v251 = 0u;
  v44.f64[0] = 0.0;
  v45.f64[0] = 0.0;
  sub_239ED2C10(&v250, *(&v246 + 1) * 0.0174532925, v44, 1.0, v45);
  a41 = 0u;
  v249 = 0u;
  a39 = 0u;
  a40 = 0u;
  a37 = 0u;
  a38 = 0u;
  a35 = 0u;
  a36 = 0u;
  v46.f64[0] = 0.0;
  v47.f64[0] = 1.0;
  sub_239ED2C10(&a35, *(&v246 + 2) * 0.0174532925, v46, 0.0, v47);
  a33 = 0u;
  a34 = 0u;
  a31 = 0u;
  a32 = 0u;
  a29 = 0u;
  a30 = 0u;
  a27 = 0u;
  a28 = 0u;
  v48 = *(self + 32);
  if (v48 > 3)
  {
    switch(v48)
    {
      case 4:
        v145 = 0;
        v147 = *&STACK[0x590];
        v146 = *&STACK[0x5A0];
        v149 = *&STACK[0x5B0];
        v148 = *&STACK[0x5C0];
        v151 = *&STACK[0x5D0];
        v150 = *&STACK[0x5E0];
        v153 = *&STACK[0x5F0];
        v152 = *&STACK[0x600];
        v154 = a40;
        *&STACK[0x650] = a39;
        *&STACK[0x660] = v154;
        v155 = v249;
        *&STACK[0x670] = a41;
        *&STACK[0x680] = v155;
        v156 = a36;
        *&STACK[0x610] = a35;
        *&STACK[0x620] = v156;
        v157 = a38;
        *&STACK[0x630] = a37;
        *&STACK[0x640] = v157;
        a25 = 0u;
        a26 = 0u;
        a23 = 0u;
        a24 = 0u;
        a21 = 0u;
        a22 = 0u;
        a19 = 0u;
        a20 = 0u;
        do
        {
          v159 = *(&STACK[0x610] + v145);
          v158 = *(&STACK[0x610] + v145 + 16);
          v160 = (&a19 + v145);
          *v160 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v147, v159.f64[0]), v149, v159, 1), v151, v158.f64[0]), v153, v158, 1);
          v160[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v146, v159.f64[0]), v148, v159, 1), v150, v158.f64[0]), v152, v158, 1);
          v145 += 32;
        }

        while (v145 != 128);
        v161 = 0;
        a31 = a23;
        a32 = a24;
        a33 = a25;
        a34 = a26;
        a27 = a19;
        a28 = a20;
        a29 = a21;
        a30 = a22;
        v163 = a19;
        v162 = a20;
        v165 = a21;
        v164 = a22;
        v167 = a23;
        v166 = a24;
        v169 = a25;
        v168 = a26;
        v170 = v255;
        *&STACK[0x650] = v254;
        *&STACK[0x660] = v170;
        v171 = *&STACK[0x580];
        *&STACK[0x670] = v256;
        *&STACK[0x680] = v171;
        v172 = v251;
        *&STACK[0x610] = v250;
        *&STACK[0x620] = v172;
        v173 = v253;
        *&STACK[0x630] = v252;
        *&STACK[0x640] = v173;
        a25 = 0u;
        a26 = 0u;
        a23 = 0u;
        a24 = 0u;
        a21 = 0u;
        a22 = 0u;
        a19 = 0u;
        a20 = 0u;
        do
        {
          v175 = *(&STACK[0x610] + v161);
          v174 = *(&STACK[0x610] + v161 + 16);
          v176 = (&a19 + v161);
          *v176 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v163, v175.f64[0]), v165, v175, 1), v167, v174.f64[0]), v169, v174, 1);
          v176[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v162, v175.f64[0]), v164, v175, 1), v166, v174.f64[0]), v168, v174, 1);
          v161 += 32;
        }

        while (v161 != 128);
        goto LABEL_37;
      case 5:
        v209 = 0;
        v211 = v250;
        v210 = v251;
        v213 = v252;
        v212 = v253;
        v215 = v254;
        v214 = v255;
        v217 = v256;
        v216 = *&STACK[0x580];
        v218 = *&STACK[0x5E0];
        *&STACK[0x650] = *&STACK[0x5D0];
        *&STACK[0x660] = v218;
        v219 = *&STACK[0x600];
        *&STACK[0x670] = *&STACK[0x5F0];
        *&STACK[0x680] = v219;
        v220 = *&STACK[0x5A0];
        *&STACK[0x610] = *&STACK[0x590];
        *&STACK[0x620] = v220;
        v221 = *&STACK[0x5C0];
        *&STACK[0x630] = *&STACK[0x5B0];
        *&STACK[0x640] = v221;
        a25 = 0u;
        a26 = 0u;
        a23 = 0u;
        a24 = 0u;
        a21 = 0u;
        a22 = 0u;
        a19 = 0u;
        a20 = 0u;
        do
        {
          v223 = *(&STACK[0x610] + v209);
          v222 = *(&STACK[0x610] + v209 + 16);
          v224 = (&a19 + v209);
          *v224 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v211, v223.f64[0]), v213, v223, 1), v215, v222.f64[0]), v217, v222, 1);
          v224[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v210, v223.f64[0]), v212, v223, 1), v214, v222.f64[0]), v216, v222, 1);
          v209 += 32;
        }

        while (v209 != 128);
        v225 = 0;
        a31 = a23;
        a32 = a24;
        a33 = a25;
        a34 = a26;
        a27 = a19;
        a28 = a20;
        a29 = a21;
        a30 = a22;
        v227 = a19;
        v226 = a20;
        v229 = a21;
        v228 = a22;
        v231 = a23;
        v230 = a24;
        v233 = a25;
        v232 = a26;
        v234 = a40;
        *&STACK[0x650] = a39;
        *&STACK[0x660] = v234;
        v235 = v249;
        *&STACK[0x670] = a41;
        *&STACK[0x680] = v235;
        v236 = a36;
        *&STACK[0x610] = a35;
        *&STACK[0x620] = v236;
        v237 = a38;
        *&STACK[0x630] = a37;
        *&STACK[0x640] = v237;
        a25 = 0u;
        a26 = 0u;
        a23 = 0u;
        a24 = 0u;
        a21 = 0u;
        a22 = 0u;
        a19 = 0u;
        a20 = 0u;
        do
        {
          v239 = *(&STACK[0x610] + v225);
          v238 = *(&STACK[0x610] + v225 + 16);
          v240 = (&a19 + v225);
          *v240 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v227, v239.f64[0]), v229, v239, 1), v231, v238.f64[0]), v233, v238, 1);
          v240[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v226, v239.f64[0]), v228, v239, 1), v230, v238.f64[0]), v232, v238, 1);
          v225 += 32;
        }

        while (v225 != 128);
        goto LABEL_37;
      case 6:
        v81 = 0;
        v83 = *&STACK[0x590];
        v82 = *&STACK[0x5A0];
        v85 = *&STACK[0x5B0];
        v84 = *&STACK[0x5C0];
        v87 = *&STACK[0x5D0];
        v86 = *&STACK[0x5E0];
        v89 = *&STACK[0x5F0];
        v88 = *&STACK[0x600];
        v90 = v255;
        *&STACK[0x650] = v254;
        *&STACK[0x660] = v90;
        v91 = *&STACK[0x580];
        *&STACK[0x670] = v256;
        *&STACK[0x680] = v91;
        v92 = v251;
        *&STACK[0x610] = v250;
        *&STACK[0x620] = v92;
        v93 = v253;
        *&STACK[0x630] = v252;
        *&STACK[0x640] = v93;
        a25 = 0u;
        a26 = 0u;
        a23 = 0u;
        a24 = 0u;
        a21 = 0u;
        a22 = 0u;
        a19 = 0u;
        a20 = 0u;
        do
        {
          v95 = *(&STACK[0x610] + v81);
          v94 = *(&STACK[0x610] + v81 + 16);
          v96 = (&a19 + v81);
          *v96 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v83, v95.f64[0]), v85, v95, 1), v87, v94.f64[0]), v89, v94, 1);
          v96[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v82, v95.f64[0]), v84, v95, 1), v86, v94.f64[0]), v88, v94, 1);
          v81 += 32;
        }

        while (v81 != 128);
        v97 = 0;
        a31 = a23;
        a32 = a24;
        a33 = a25;
        a34 = a26;
        a27 = a19;
        a28 = a20;
        a29 = a21;
        a30 = a22;
        v99 = a19;
        v98 = a20;
        v101 = a21;
        v100 = a22;
        v103 = a23;
        v102 = a24;
        v105 = a25;
        v104 = a26;
        v106 = a40;
        *&STACK[0x650] = a39;
        *&STACK[0x660] = v106;
        v107 = v249;
        *&STACK[0x670] = a41;
        *&STACK[0x680] = v107;
        v108 = a36;
        *&STACK[0x610] = a35;
        *&STACK[0x620] = v108;
        v109 = a38;
        *&STACK[0x630] = a37;
        *&STACK[0x640] = v109;
        a25 = 0u;
        a26 = 0u;
        a23 = 0u;
        a24 = 0u;
        a21 = 0u;
        a22 = 0u;
        a19 = 0u;
        a20 = 0u;
        do
        {
          v111 = *(&STACK[0x610] + v97);
          v110 = *(&STACK[0x610] + v97 + 16);
          v112 = (&a19 + v97);
          *v112 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v99, v111.f64[0]), v101, v111, 1), v103, v110.f64[0]), v105, v110, 1);
          v112[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v98, v111.f64[0]), v100, v111, 1), v102, v110.f64[0]), v104, v110, 1);
          v97 += 32;
        }

        while (v97 != 128);
        goto LABEL_37;
    }
  }

  else
  {
    switch(v48)
    {
      case 1:
        v113 = 0;
        v115 = a35;
        v114 = a36;
        v117 = a37;
        v116 = a38;
        v119 = a39;
        v118 = a40;
        v121 = a41;
        v120 = v249;
        v122 = v255;
        *&STACK[0x650] = v254;
        *&STACK[0x660] = v122;
        v123 = *&STACK[0x580];
        *&STACK[0x670] = v256;
        *&STACK[0x680] = v123;
        v124 = v251;
        *&STACK[0x610] = v250;
        *&STACK[0x620] = v124;
        v125 = v253;
        *&STACK[0x630] = v252;
        *&STACK[0x640] = v125;
        a25 = 0u;
        a26 = 0u;
        a23 = 0u;
        a24 = 0u;
        a21 = 0u;
        a22 = 0u;
        a19 = 0u;
        a20 = 0u;
        do
        {
          v127 = *(&STACK[0x610] + v113);
          v126 = *(&STACK[0x610] + v113 + 16);
          v128 = (&a19 + v113);
          *v128 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v115, v127.f64[0]), v117, v127, 1), v119, v126.f64[0]), v121, v126, 1);
          v128[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v114, v127.f64[0]), v116, v127, 1), v118, v126.f64[0]), v120, v126, 1);
          v113 += 32;
        }

        while (v113 != 128);
        v129 = 0;
        a31 = a23;
        a32 = a24;
        a33 = a25;
        a34 = a26;
        a27 = a19;
        a28 = a20;
        a29 = a21;
        a30 = a22;
        v131 = a19;
        v130 = a20;
        v133 = a21;
        v132 = a22;
        v135 = a23;
        v134 = a24;
        v137 = a25;
        v136 = a26;
        v138 = *&STACK[0x5E0];
        *&STACK[0x650] = *&STACK[0x5D0];
        *&STACK[0x660] = v138;
        v139 = *&STACK[0x600];
        *&STACK[0x670] = *&STACK[0x5F0];
        *&STACK[0x680] = v139;
        v140 = *&STACK[0x5A0];
        *&STACK[0x610] = *&STACK[0x590];
        *&STACK[0x620] = v140;
        v141 = *&STACK[0x5C0];
        *&STACK[0x630] = *&STACK[0x5B0];
        *&STACK[0x640] = v141;
        a25 = 0u;
        a26 = 0u;
        a23 = 0u;
        a24 = 0u;
        a21 = 0u;
        a22 = 0u;
        a19 = 0u;
        a20 = 0u;
        do
        {
          v143 = *(&STACK[0x610] + v129);
          v142 = *(&STACK[0x610] + v129 + 16);
          v144 = (&a19 + v129);
          *v144 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v131, v143.f64[0]), v133, v143, 1), v135, v142.f64[0]), v137, v142, 1);
          v144[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v130, v143.f64[0]), v132, v143, 1), v134, v142.f64[0]), v136, v142, 1);
          v129 += 32;
        }

        while (v129 != 128);
        goto LABEL_37;
      case 2:
        v177 = 0;
        v179 = v250;
        v178 = v251;
        v181 = v252;
        v180 = v253;
        v183 = v254;
        v182 = v255;
        v185 = v256;
        v184 = *&STACK[0x580];
        v186 = a40;
        *&STACK[0x650] = a39;
        *&STACK[0x660] = v186;
        v187 = v249;
        *&STACK[0x670] = a41;
        *&STACK[0x680] = v187;
        v188 = a36;
        *&STACK[0x610] = a35;
        *&STACK[0x620] = v188;
        v189 = a38;
        *&STACK[0x630] = a37;
        *&STACK[0x640] = v189;
        a25 = 0u;
        a26 = 0u;
        a23 = 0u;
        a24 = 0u;
        a21 = 0u;
        a22 = 0u;
        a19 = 0u;
        a20 = 0u;
        do
        {
          v191 = *(&STACK[0x610] + v177);
          v190 = *(&STACK[0x610] + v177 + 16);
          v192 = (&a19 + v177);
          *v192 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v179, v191.f64[0]), v181, v191, 1), v183, v190.f64[0]), v185, v190, 1);
          v192[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v178, v191.f64[0]), v180, v191, 1), v182, v190.f64[0]), v184, v190, 1);
          v177 += 32;
        }

        while (v177 != 128);
        v193 = 0;
        a31 = a23;
        a32 = a24;
        a33 = a25;
        a34 = a26;
        a27 = a19;
        a28 = a20;
        a29 = a21;
        a30 = a22;
        v195 = a19;
        v194 = a20;
        v197 = a21;
        v196 = a22;
        v199 = a23;
        v198 = a24;
        v201 = a25;
        v200 = a26;
        v202 = *&STACK[0x5E0];
        *&STACK[0x650] = *&STACK[0x5D0];
        *&STACK[0x660] = v202;
        v203 = *&STACK[0x600];
        *&STACK[0x670] = *&STACK[0x5F0];
        *&STACK[0x680] = v203;
        v204 = *&STACK[0x5A0];
        *&STACK[0x610] = *&STACK[0x590];
        *&STACK[0x620] = v204;
        v205 = *&STACK[0x5C0];
        *&STACK[0x630] = *&STACK[0x5B0];
        *&STACK[0x640] = v205;
        a25 = 0u;
        a26 = 0u;
        a23 = 0u;
        a24 = 0u;
        a21 = 0u;
        a22 = 0u;
        a19 = 0u;
        a20 = 0u;
        do
        {
          v207 = *(&STACK[0x610] + v193);
          v206 = *(&STACK[0x610] + v193 + 16);
          v208 = (&a19 + v193);
          *v208 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v195, v207.f64[0]), v197, v207, 1), v199, v206.f64[0]), v201, v206, 1);
          v208[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v194, v207.f64[0]), v196, v207, 1), v198, v206.f64[0]), v200, v206, 1);
          v193 += 32;
        }

        while (v193 != 128);
        goto LABEL_37;
      case 3:
        v49 = 0;
        v51 = a35;
        v50 = a36;
        v53 = a37;
        v52 = a38;
        v55 = a39;
        v54 = a40;
        v57 = a41;
        v56 = v249;
        v58 = *&STACK[0x5E0];
        *&STACK[0x650] = *&STACK[0x5D0];
        *&STACK[0x660] = v58;
        v59 = *&STACK[0x600];
        *&STACK[0x670] = *&STACK[0x5F0];
        *&STACK[0x680] = v59;
        v60 = *&STACK[0x5A0];
        *&STACK[0x610] = *&STACK[0x590];
        *&STACK[0x620] = v60;
        v61 = *&STACK[0x5C0];
        *&STACK[0x630] = *&STACK[0x5B0];
        *&STACK[0x640] = v61;
        a25 = 0u;
        a26 = 0u;
        a23 = 0u;
        a24 = 0u;
        a21 = 0u;
        a22 = 0u;
        a19 = 0u;
        a20 = 0u;
        do
        {
          v63 = *(&STACK[0x610] + v49);
          v62 = *(&STACK[0x610] + v49 + 16);
          v64 = (&a19 + v49);
          *v64 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v51, v63.f64[0]), v53, v63, 1), v55, v62.f64[0]), v57, v62, 1);
          v64[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v50, v63.f64[0]), v52, v63, 1), v54, v62.f64[0]), v56, v62, 1);
          v49 += 32;
        }

        while (v49 != 128);
        v65 = 0;
        a31 = a23;
        a32 = a24;
        a33 = a25;
        a34 = a26;
        a27 = a19;
        a28 = a20;
        a29 = a21;
        a30 = a22;
        v67 = a19;
        v66 = a20;
        v69 = a21;
        v68 = a22;
        v71 = a23;
        v70 = a24;
        v73 = a25;
        v72 = a26;
        v74 = v255;
        *&STACK[0x650] = v254;
        *&STACK[0x660] = v74;
        v75 = *&STACK[0x580];
        *&STACK[0x670] = v256;
        *&STACK[0x680] = v75;
        v76 = v251;
        *&STACK[0x610] = v250;
        *&STACK[0x620] = v76;
        v77 = v253;
        *&STACK[0x630] = v252;
        *&STACK[0x640] = v77;
        a25 = 0u;
        a26 = 0u;
        a23 = 0u;
        a24 = 0u;
        a21 = 0u;
        a22 = 0u;
        a19 = 0u;
        a20 = 0u;
        do
        {
          v79 = *(&STACK[0x610] + v65);
          v78 = *(&STACK[0x610] + v65 + 16);
          v80 = (&a19 + v65);
          *v80 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v67, v79.f64[0]), v69, v79, 1), v71, v78.f64[0]), v73, v78, 1);
          v80[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v66, v79.f64[0]), v68, v79, 1), v70, v78.f64[0]), v72, v78, 1);
          v65 += 32;
        }

        while (v65 != 128);
LABEL_37:
        a31 = a23;
        a32 = a24;
        a33 = a25;
        a34 = a26;
        a27 = a19;
        a28 = a20;
        a29 = a21;
        a30 = a22;
        break;
    }
  }

  v241 = 0;
  *&STACK[0x630] = 0u;
  *&STACK[0x640] = 0u;
  *&STACK[0x610] = 0u;
  *&STACK[0x620] = 0u;
  do
  {
    v242 = 0;
    v243 = *(&a27 + 2 * v241);
    v244 = *(&STACK[0x610] + v241);
    do
    {
      vars0 = v243;
      v245 = *(&vars0 + (v242 & 3));
      v247 = v244;
      *(&v247 & 0xFFFFFFFFFFFFFFF3 | (4 * (v242 & 3))) = v245;
      v244 = v247;
      ++v242;
    }

    while (v242 != 4);
    *(&STACK[0x610] + v241++) = v247;
  }

  while (v241 != 4);
  if (*(self + 8))
  {
    v257.columns[0] = *&STACK[0x610];
    v257.columns[1] = *&STACK[0x620];
    v257.columns[2] = *&STACK[0x630];
    v257.columns[3] = *&STACK[0x640];
    __invert_f4(v257);
  }
}

- (void)double4x4AtTime:(float64x2_t *)time@<X8>
{
  v53 = *(self + 24);
  if (v53)
  {
    objc_msgSend_double3AtTime_(v53, v48, v49, v50, a4, a2, v42, v43, v44, v45, v46, v47);
    v54 = a41;
    *&v223 = vextq_s8(v54, v54, 8uLL).u64[0];
    v55 = a42;
  }

  else
  {
    v54.i64[0] = 0;
    v223 = 0.0;
    v55 = 0.0;
  }

  a39 = 0u;
  a40 = 0u;
  a37 = 0u;
  a38 = 0u;
  a35 = 0u;
  a36 = 0u;
  a33 = 0u;
  a34 = 0u;
  a4.f64[0] = 0.0;
  sub_239ED2C10(&a33, *v54.i64 * 0.0174532925, COERCE_UNSIGNED_INT64(1.0), 0.0, a4);
  a31 = 0u;
  a32 = 0u;
  a29 = 0u;
  a30 = 0u;
  a27 = 0u;
  a28 = 0u;
  a25 = 0u;
  a26 = 0u;
  v56.f64[0] = 0.0;
  sub_239ED2C10(&a25, v223 * 0.0174532925, 0, 1.0, v56);
  a23 = 0u;
  a24 = 0u;
  a21 = 0u;
  a22 = 0u;
  a19 = 0u;
  a20 = 0u;
  a17 = 0u;
  a18 = 0u;
  v57.f64[0] = 1.0;
  sub_239ED2C10(&a17, v55 * 0.0174532925, 0, 0.0, v57);
  v59 = *MEMORY[0x277D860A0];
  v58 = *(MEMORY[0x277D860A0] + 16);
  v61 = *(MEMORY[0x277D860A0] + 32);
  v60 = *(MEMORY[0x277D860A0] + 48);
  v63 = *(MEMORY[0x277D860A0] + 64);
  v62 = *(MEMORY[0x277D860A0] + 80);
  v65 = *(MEMORY[0x277D860A0] + 96);
  v64 = *(MEMORY[0x277D860A0] + 112);
  v66 = *(self + 32);
  if (v66 > 3)
  {
    switch(v66)
    {
      case 4:
        v145 = 0;
        v147 = a33;
        v146 = a34;
        v149 = a35;
        v148 = a36;
        v151 = a37;
        v150 = a38;
        v153 = a39;
        v152 = a40;
        v154 = a22;
        *&STACK[0x540] = a21;
        *&STACK[0x550] = v154;
        v155 = a24;
        *&STACK[0x560] = a23;
        *&STACK[0x570] = v155;
        v156 = a18;
        *&STACK[0x500] = a17;
        *&STACK[0x510] = v156;
        v157 = a20;
        *&STACK[0x520] = a19;
        *&STACK[0x530] = v157;
        v224 = 0u;
        vars0 = 0u;
        do
        {
          v159 = *(&STACK[0x500] + v145);
          v158 = *(&STACK[0x500] + v145 + 16);
          v160 = (&v224 + v145);
          *v160 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v147, v159.f64[0]), v149, v159, 1), v151, v158.f64[0]), v153, v158, 1);
          v160[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v146, v159.f64[0]), v148, v159, 1), v150, v158.f64[0]), v152, v158, 1);
          v145 += 32;
        }

        while (v145 != 128);
        v161 = 0;
        v163 = v224;
        v162 = vars0;
        v164 = a30;
        *&STACK[0x540] = a29;
        *&STACK[0x550] = v164;
        v165 = a32;
        *&STACK[0x560] = a31;
        *&STACK[0x570] = v165;
        v166 = a26;
        *&STACK[0x500] = a25;
        *&STACK[0x510] = v166;
        v167 = a28;
        *&STACK[0x520] = a27;
        *&STACK[0x530] = v167;
        v224 = 0u;
        vars0 = 0u;
        v226 = 0u;
        v227 = 0u;
        v228 = 0u;
        v229 = 0u;
        v230 = 0u;
        v231 = 0u;
        do
        {
          v169 = *(&STACK[0x500] + v161);
          v168 = *(&STACK[0x500] + v161 + 16);
          v170 = (&v224 + v161);
          *v170 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v163, v169.f64[0]), 0, v169, 1), 0, v168.f64[0]), 0, v168, 1);
          v170[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v162, v169.f64[0]), 0, v169, 1), 0, v168.f64[0]), 0, v168, 1);
          v161 += 32;
        }

        while (v161 != 128);
        break;
      case 5:
        v197 = 0;
        v199 = a25;
        v198 = a26;
        v201 = a27;
        v200 = a28;
        v203 = a29;
        v202 = a30;
        v205 = a31;
        v204 = a32;
        v206 = a38;
        *&STACK[0x540] = a37;
        *&STACK[0x550] = v206;
        v207 = a40;
        *&STACK[0x560] = a39;
        *&STACK[0x570] = v207;
        v208 = a34;
        *&STACK[0x500] = a33;
        *&STACK[0x510] = v208;
        v209 = a36;
        *&STACK[0x520] = a35;
        *&STACK[0x530] = v209;
        v224 = 0u;
        vars0 = 0u;
        do
        {
          v211 = *(&STACK[0x500] + v197);
          v210 = *(&STACK[0x500] + v197 + 16);
          v212 = (&v224 + v197);
          *v212 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v199, v211.f64[0]), v201, v211, 1), v203, v210.f64[0]), v205, v210, 1);
          v212[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v198, v211.f64[0]), v200, v211, 1), v202, v210.f64[0]), v204, v210, 1);
          v197 += 32;
        }

        while (v197 != 128);
        v213 = 0;
        v215 = v224;
        v214 = vars0;
        v216 = a22;
        *&STACK[0x540] = a21;
        *&STACK[0x550] = v216;
        v217 = a24;
        *&STACK[0x560] = a23;
        *&STACK[0x570] = v217;
        v218 = a18;
        *&STACK[0x500] = a17;
        *&STACK[0x510] = v218;
        v219 = a20;
        *&STACK[0x520] = a19;
        *&STACK[0x530] = v219;
        v224 = 0u;
        vars0 = 0u;
        v226 = 0u;
        v227 = 0u;
        v228 = 0u;
        v229 = 0u;
        v230 = 0u;
        v231 = 0u;
        do
        {
          v221 = *(&STACK[0x500] + v213);
          v220 = *(&STACK[0x500] + v213 + 16);
          v222 = (&v224 + v213);
          *v222 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v215, v221.f64[0]), 0, v221, 1), 0, v220.f64[0]), 0, v220, 1);
          v222[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v214, v221.f64[0]), 0, v221, 1), 0, v220.f64[0]), 0, v220, 1);
          v213 += 32;
        }

        while (v213 != 128);
        break;
      case 6:
        v93 = 0;
        v95 = a33;
        v94 = a34;
        v97 = a35;
        v96 = a36;
        v99 = a37;
        v98 = a38;
        v101 = a39;
        v100 = a40;
        v102 = a30;
        *&STACK[0x540] = a29;
        *&STACK[0x550] = v102;
        v103 = a32;
        *&STACK[0x560] = a31;
        *&STACK[0x570] = v103;
        v104 = a26;
        *&STACK[0x500] = a25;
        *&STACK[0x510] = v104;
        v105 = a28;
        *&STACK[0x520] = a27;
        *&STACK[0x530] = v105;
        v224 = 0u;
        vars0 = 0u;
        do
        {
          v107 = *(&STACK[0x500] + v93);
          v106 = *(&STACK[0x500] + v93 + 16);
          v108 = (&v224 + v93);
          *v108 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v95, v107.f64[0]), v97, v107, 1), v99, v106.f64[0]), v101, v106, 1);
          v108[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v94, v107.f64[0]), v96, v107, 1), v98, v106.f64[0]), v100, v106, 1);
          v93 += 32;
        }

        while (v93 != 128);
        v109 = 0;
        v111 = v224;
        v110 = vars0;
        v112 = a22;
        *&STACK[0x540] = a21;
        *&STACK[0x550] = v112;
        v113 = a24;
        *&STACK[0x560] = a23;
        *&STACK[0x570] = v113;
        v114 = a18;
        *&STACK[0x500] = a17;
        *&STACK[0x510] = v114;
        v115 = a20;
        *&STACK[0x520] = a19;
        *&STACK[0x530] = v115;
        v224 = 0u;
        vars0 = 0u;
        v226 = 0u;
        v227 = 0u;
        v228 = 0u;
        v229 = 0u;
        v230 = 0u;
        v231 = 0u;
        do
        {
          v117 = *(&STACK[0x500] + v109);
          v116 = *(&STACK[0x500] + v109 + 16);
          v118 = (&v224 + v109);
          *v118 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v111, v117.f64[0]), 0, v117, 1), 0, v116.f64[0]), 0, v116, 1);
          v118[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v110, v117.f64[0]), 0, v117, 1), 0, v116.f64[0]), 0, v116, 1);
          v109 += 32;
        }

        while (v109 != 128);
        break;
      default:
        goto LABEL_41;
    }
  }

  else
  {
    switch(v66)
    {
      case 1:
        v119 = 0;
        v121 = a17;
        v120 = a18;
        v123 = a19;
        v122 = a20;
        v125 = a21;
        v124 = a22;
        v127 = a23;
        v126 = a24;
        v128 = a30;
        *&STACK[0x540] = a29;
        *&STACK[0x550] = v128;
        v129 = a32;
        *&STACK[0x560] = a31;
        *&STACK[0x570] = v129;
        v130 = a26;
        *&STACK[0x500] = a25;
        *&STACK[0x510] = v130;
        v131 = a28;
        *&STACK[0x520] = a27;
        *&STACK[0x530] = v131;
        v224 = 0u;
        vars0 = 0u;
        do
        {
          v133 = *(&STACK[0x500] + v119);
          v132 = *(&STACK[0x500] + v119 + 16);
          v134 = (&v224 + v119);
          *v134 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v121, v133.f64[0]), v123, v133, 1), v125, v132.f64[0]), v127, v132, 1);
          v134[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v120, v133.f64[0]), v122, v133, 1), v124, v132.f64[0]), v126, v132, 1);
          v119 += 32;
        }

        while (v119 != 128);
        v135 = 0;
        v137 = v224;
        v136 = vars0;
        v138 = a38;
        *&STACK[0x540] = a37;
        *&STACK[0x550] = v138;
        v139 = a40;
        *&STACK[0x560] = a39;
        *&STACK[0x570] = v139;
        v140 = a34;
        *&STACK[0x500] = a33;
        *&STACK[0x510] = v140;
        v141 = a36;
        *&STACK[0x520] = a35;
        *&STACK[0x530] = v141;
        v224 = 0u;
        vars0 = 0u;
        v226 = 0u;
        v227 = 0u;
        v228 = 0u;
        v229 = 0u;
        v230 = 0u;
        v231 = 0u;
        do
        {
          v143 = *(&STACK[0x500] + v135);
          v142 = *(&STACK[0x500] + v135 + 16);
          v144 = (&v224 + v135);
          *v144 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v137, v143.f64[0]), 0, v143, 1), 0, v142.f64[0]), 0, v142, 1);
          v144[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v136, v143.f64[0]), 0, v143, 1), 0, v142.f64[0]), 0, v142, 1);
          v135 += 32;
        }

        while (v135 != 128);
        break;
      case 2:
        v171 = 0;
        v173 = a25;
        v172 = a26;
        v175 = a27;
        v174 = a28;
        v177 = a29;
        v176 = a30;
        v179 = a31;
        v178 = a32;
        v180 = a22;
        *&STACK[0x540] = a21;
        *&STACK[0x550] = v180;
        v181 = a24;
        *&STACK[0x560] = a23;
        *&STACK[0x570] = v181;
        v182 = a18;
        *&STACK[0x500] = a17;
        *&STACK[0x510] = v182;
        v183 = a20;
        *&STACK[0x520] = a19;
        *&STACK[0x530] = v183;
        v224 = 0u;
        vars0 = 0u;
        do
        {
          v185 = *(&STACK[0x500] + v171);
          v184 = *(&STACK[0x500] + v171 + 16);
          v186 = (&v224 + v171);
          *v186 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v173, v185.f64[0]), v175, v185, 1), v177, v184.f64[0]), v179, v184, 1);
          v186[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v172, v185.f64[0]), v174, v185, 1), v176, v184.f64[0]), v178, v184, 1);
          v171 += 32;
        }

        while (v171 != 128);
        v187 = 0;
        v189 = v224;
        v188 = vars0;
        v190 = a38;
        *&STACK[0x540] = a37;
        *&STACK[0x550] = v190;
        v191 = a40;
        *&STACK[0x560] = a39;
        *&STACK[0x570] = v191;
        v192 = a34;
        *&STACK[0x500] = a33;
        *&STACK[0x510] = v192;
        v193 = a36;
        *&STACK[0x520] = a35;
        *&STACK[0x530] = v193;
        v224 = 0u;
        vars0 = 0u;
        v226 = 0u;
        v227 = 0u;
        v228 = 0u;
        v229 = 0u;
        v230 = 0u;
        v231 = 0u;
        do
        {
          v195 = *(&STACK[0x500] + v187);
          v194 = *(&STACK[0x500] + v187 + 16);
          v196 = (&v224 + v187);
          *v196 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v189, v195.f64[0]), 0, v195, 1), 0, v194.f64[0]), 0, v194, 1);
          v196[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v188, v195.f64[0]), 0, v195, 1), 0, v194.f64[0]), 0, v194, 1);
          v187 += 32;
        }

        while (v187 != 128);
        break;
      case 3:
        v67 = 0;
        v69 = a17;
        v68 = a18;
        v71 = a19;
        v70 = a20;
        v73 = a21;
        v72 = a22;
        v75 = a23;
        v74 = a24;
        v76 = a38;
        *&STACK[0x540] = a37;
        *&STACK[0x550] = v76;
        v77 = a40;
        *&STACK[0x560] = a39;
        *&STACK[0x570] = v77;
        v78 = a34;
        *&STACK[0x500] = a33;
        *&STACK[0x510] = v78;
        v79 = a36;
        *&STACK[0x520] = a35;
        *&STACK[0x530] = v79;
        v224 = 0u;
        vars0 = 0u;
        do
        {
          v81 = *(&STACK[0x500] + v67);
          v80 = *(&STACK[0x500] + v67 + 16);
          v82 = (&v224 + v67);
          *v82 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v69, v81.f64[0]), v71, v81, 1), v73, v80.f64[0]), v75, v80, 1);
          v82[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v68, v81.f64[0]), v70, v81, 1), v72, v80.f64[0]), v74, v80, 1);
          v67 += 32;
        }

        while (v67 != 128);
        v83 = 0;
        v85 = v224;
        v84 = vars0;
        v86 = a30;
        *&STACK[0x540] = a29;
        *&STACK[0x550] = v86;
        v87 = a32;
        *&STACK[0x560] = a31;
        *&STACK[0x570] = v87;
        v88 = a26;
        *&STACK[0x500] = a25;
        *&STACK[0x510] = v88;
        v89 = a28;
        *&STACK[0x520] = a27;
        *&STACK[0x530] = v89;
        v224 = 0u;
        vars0 = 0u;
        v226 = 0u;
        v227 = 0u;
        v228 = 0u;
        v229 = 0u;
        v230 = 0u;
        v231 = 0u;
        do
        {
          v91 = *(&STACK[0x500] + v83);
          v90 = *(&STACK[0x500] + v83 + 16);
          v92 = (&v224 + v83);
          *v92 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v85, v91.f64[0]), 0, v91, 1), 0, v90.f64[0]), 0, v90, 1);
          v92[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v84, v91.f64[0]), 0, v91, 1), 0, v90.f64[0]), 0, v90, 1);
          v83 += 32;
        }

        while (v83 != 128);
        break;
      default:
        goto LABEL_41;
    }
  }

  v59 = v224;
  v58 = vars0;
  v61 = v226;
  v60 = v227;
  v63 = v228;
  v62 = v229;
  v65 = v230;
  v64 = v231;
LABEL_41:
  if (*(self + 8))
  {
    *&STACK[0x500] = v59;
    *&STACK[0x510] = v58;
    *&STACK[0x520] = v61;
    *&STACK[0x530] = v60;
    *&STACK[0x540] = v63;
    *&STACK[0x550] = v62;
    *&STACK[0x560] = v65;
    *&STACK[0x570] = v64;
    __invert_d4();
  }

  else
  {
    *time = v59;
    time[1] = v58;
    time[2] = v61;
    time[3] = v60;
    time[4] = v63;
    time[5] = v62;
    time[6] = v65;
    time[7] = v64;
  }
}

@end