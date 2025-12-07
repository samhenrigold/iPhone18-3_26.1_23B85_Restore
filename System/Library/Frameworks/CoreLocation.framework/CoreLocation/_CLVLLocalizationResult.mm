@interface _CLVLLocalizationResult
- ($153C3A5BC4E016D58A1B9CA554FFC462)location;
- ($4ED12C4C7630B45462BF021B0F75306B)covariance;
- (_CLVLLocalizationResult)initWithCoder:(id)coder;
- (_CLVLLocalizationResult)initWithTimestamp:(double)timestamp localizationResult:(id)result;
- (__n128)setTransform:(__int128 *)transform;
- (__n128)transform;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setCovariance:(id *)covariance;
- (void)setLocation:(id)location;
@end

@implementation _CLVLLocalizationResult

- (_CLVLLocalizationResult)initWithTimestamp:(double)timestamp localizationResult:(id)result
{
  v52 = *MEMORY[0x1E69E9840];
  v42.receiver = self;
  v42.super_class = _CLVLLocalizationResult;
  v6 = [(_CLVLLocalizationResult *)&v42 init];
  v10 = v6;
  if (v6)
  {
    if (result)
    {
      v6->_timestamp = timestamp;
      objc_msgSend_location(result, v7, v8, v9);
      v12 = v44;
      v11 = v45;
      *v10->_anon_20 = v43;
      *&v10->_anon_20[16] = v12;
      *&v10->_anon_20[32] = v11;
      objc_msgSend_transform(result, v13, v14, v15);
      v16 = v48;
      *&v10->_anon_50[64] = v47;
      *&v10->_anon_50[80] = v16;
      v17 = v50;
      *&v10->_anon_50[96] = v49;
      *&v10->_anon_50[112] = v17;
      v18 = v44;
      *v10->_anon_50 = v43;
      *&v10->_anon_50[16] = v18;
      v19 = v46;
      *&v10->_anon_50[32] = v45;
      *&v10->_anon_50[48] = v19;
      objc_msgSend_confidence(result, v20, v21, v22);
      v10->_confidence = v23;
      objc_msgSend_covariance(result, v24, v25, v26);
      v27 = v50;
      *&v10->_covariance.v[4][0] = v49;
      *&v10->_covariance.v[4][4] = v27;
      *&v10->_covariance.v[5][2] = v51;
      v28 = v46;
      *&v10->_covariance.v[1][2] = v45;
      *&v10->_covariance.v[2][0] = v28;
      v29 = v48;
      *&v10->_covariance.v[2][4] = v47;
      *&v10->_covariance.v[3][2] = v29;
      v30 = v44;
      *&v10->_covariance.v[0][0] = v43;
      *&v10->_covariance.v[0][4] = v30;
      v10->_debugInfo = 0;
      if (objc_msgSend_debugInfo(result, v31, v32, v33))
      {
        v34 = [_CLVLLocalizationDebugInfo alloc];
        v38 = objc_msgSend_debugInfo(result, v35, v36, v37);
        v10->_debugInfo = objc_msgSend_initWithVLLocalizationDebugInfo_(v34, v39, v38, v40);
      }
    }

    else
    {

      return 0;
    }
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLVLLocalizationResult;
  [(_CLVLLocalizationResult *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_init(v8, v9, v10, v11);
  *(v12 + 16) = self->_timestamp;
  v13 = *self->_anon_20;
  v14 = *&self->_anon_20[32];
  *(v12 + 48) = *&self->_anon_20[16];
  *(v12 + 64) = v14;
  *(v12 + 32) = v13;
  v16 = *&self->_anon_50[64];
  v15 = *&self->_anon_50[80];
  v17 = *&self->_anon_50[112];
  *(v12 + 176) = *&self->_anon_50[96];
  *(v12 + 192) = v17;
  *(v12 + 144) = v16;
  *(v12 + 160) = v15;
  v18 = *&self->_anon_50[16];
  v19 = *&self->_anon_50[32];
  v20 = *&self->_anon_50[48];
  *(v12 + 80) = *self->_anon_50;
  *(v12 + 96) = v18;
  *(v12 + 112) = v19;
  *(v12 + 128) = v20;
  *(v12 + 208) = *&self->_covariance.v[0][0];
  v21 = *&self->_covariance.v[2][4];
  v23 = *&self->_covariance.v[0][4];
  v22 = *&self->_covariance.v[1][2];
  *(v12 + 256) = *&self->_covariance.v[2][0];
  *(v12 + 272) = v21;
  *(v12 + 224) = v23;
  *(v12 + 240) = v22;
  v24 = *&self->_covariance.v[5][2];
  v26 = *&self->_covariance.v[3][2];
  v25 = *&self->_covariance.v[4][0];
  *(v12 + 320) = *&self->_covariance.v[4][4];
  *(v12 + 336) = v24;
  *(v12 + 288) = v26;
  *(v12 + 304) = v25;
  *(v12 + 8) = self->_confidence;
  *(v12 + 24) = objc_msgSend_copyWithZone_(self->_debugInfo, v27, zone, v28);
  return v12;
}

- (_CLVLLocalizationResult)initWithCoder:(id)coder
{
  v40.receiver = self;
  v40.super_class = _CLVLLocalizationResult;
  v6 = [(_CLVLLocalizationResult *)&v40 init];
  if (v6)
  {
    objc_msgSend_decodeDoubleForKey_(coder, v4, @"timestamp", v5);
    v6->_timestamp = v7;
    v8 = objc_opt_class();
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v9, v8, @"location");
    if (v10 && (v14 = v10, objc_msgSend_length(v10, v11, v12, v13) == 48) && (objc_msgSend_getBytes_length_(v14, v15, v6->_anon_20, 48), v16 = objc_opt_class(), (v18 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v17, v16, @"transform")) != 0) && (v22 = v18, objc_msgSend_length(v18, v19, v20, v21) == 128) && (objc_msgSend_getBytes_length_(v22, v23, v6->_anon_50, 128), v24 = objc_opt_class(), (v26 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v25, v24, @"covariance")) != 0) && (v30 = v26, objc_msgSend_length(v26, v27, v28, v29) == 144))
    {
      objc_msgSend_getBytes_length_(v30, v31, &v6->_covariance, 144);
      objc_msgSend_decodeFloatForKey_(coder, v32, @"confidence", v33);
      v6->_confidence = v34;
      if (objc_msgSend_containsValueForKey_(coder, v35, @"debugInfo", v36))
      {
        v37 = objc_opt_class();
        v6->_debugInfo = objc_msgSend_decodeObjectOfClass_forKey_(coder, v38, v37, @"debugInfo");
      }

      else
      {
        v6->_debugInfo = 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeDouble_forKey_(coder, a2, @"timestamp", v3, self->_timestamp);
  v7 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v6, self->_anon_20, 48);
  objc_msgSend_encodeObject_forKey_(coder, v8, v7, @"location");
  v10 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v9, self->_anon_50, 128);
  objc_msgSend_encodeObject_forKey_(coder, v11, v10, @"transform");
  v13 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v12, &self->_covariance, 144);
  objc_msgSend_encodeObject_forKey_(coder, v14, v13, @"covariance");
  *&v15 = self->_confidence;
  objc_msgSend_encodeFloat_forKey_(coder, v16, @"confidence", v17, v15);
  debugInfo = self->_debugInfo;

  objc_msgSend_encodeObject_forKey_(coder, v18, debugInfo, @"debugInfo");
}

- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent
{
  v7 = objc_msgSend_stringByAppendingString_(indent, a2, @"\t", endIndent);
  v10 = objc_msgSend_stringByAppendingString_(endIndent, v8, @"\t", v9);
  v11 = MEMORY[0x1E696AEC0];
  objc_msgSend_timestamp(self, v12, v13, v14);
  v19 = v18;
  if (self)
  {
    objc_msgSend_location(self, v15, v16, v17);
    v235 = v280;
    objc_msgSend_location(self, v20, v21, v22);
    *(&v221 + 1) = v279;
    objc_msgSend_location(self, v23, v24, v25);
    v234 = v278;
    objc_msgSend_location(self, v26, v27, v28);
    v233 = v277;
    objc_msgSend_transform(self, v29, v30, v31);
    v232 = v276;
    objc_msgSend_transform(self, v32, v33, v34);
    v230 = v275;
    objc_msgSend_transform(self, v35, v36, v37);
    v231 = v274;
    objc_msgSend_transform(self, v38, v39, v40);
    v228 = v273;
    objc_msgSend_transform(self, v41, v42, v43);
    v229 = v272;
    objc_msgSend_transform(self, v44, v45, v46);
    v227 = v271;
    objc_msgSend_transform(self, v47, v48, v49);
    v223 = v270;
    objc_msgSend_transform(self, v50, v51, v52);
    v226 = v269;
    objc_msgSend_transform(self, v53, v54, v55);
    v219 = v268;
    objc_msgSend_transform(self, v56, v57, v58);
    v222 = v267;
    objc_msgSend_transform(self, v59, v60, v61);
    v218 = v266;
    objc_msgSend_transform(self, v62, v63, v64);
    v225 = v265;
    objc_msgSend_transform(self, v65, v66, v67);
    v217 = v264;
    objc_msgSend_transform(self, v68, v69, v70);
    v224 = v263;
    objc_msgSend_transform(self, v71, v72, v73);
    v236 = v262;
    objc_msgSend_transform(self, v74, v75, v76);
    v220 = v261;
    objc_msgSend_covariance(self, v77, v78, v79);
    objc_msgSend_covariance(self, v80, v81, v82);
    objc_msgSend_covariance(self, v83, v84, v85);
    objc_msgSend_covariance(self, v86, v87, v88);
    objc_msgSend_covariance(self, v89, v90, v91);
    objc_msgSend_covariance(self, v92, v93, v94);
    objc_msgSend_covariance(self, v95, v96, v97);
    objc_msgSend_covariance(self, v98, v99, v100);
    objc_msgSend_covariance(self, v101, v102, v103);
    objc_msgSend_covariance(self, v104, v105, v106);
    objc_msgSend_covariance(self, v107, v108, v109);
    objc_msgSend_covariance(self, v110, v111, v112);
    objc_msgSend_covariance(self, v113, v114, v115);
    objc_msgSend_covariance(self, v116, v117, v118);
    objc_msgSend_covariance(self, v119, v120, v121);
    objc_msgSend_covariance(self, v122, v123, v124);
    objc_msgSend_covariance(self, v125, v126, v127);
    objc_msgSend_covariance(self, v128, v129, v130);
    objc_msgSend_covariance(self, v131, v132, v133);
    objc_msgSend_covariance(self, v134, v135, v136);
    objc_msgSend_covariance(self, v137, v138, v139);
    objc_msgSend_covariance(self, v140, v141, v142);
    objc_msgSend_covariance(self, v143, v144, v145);
    objc_msgSend_covariance(self, v146, v147, v148);
    objc_msgSend_covariance(self, v149, v150, v151);
    objc_msgSend_covariance(self, v152, v153, v154);
    objc_msgSend_covariance(self, v155, v156, v157);
    objc_msgSend_covariance(self, v158, v159, v160);
    objc_msgSend_covariance(self, v161, v162, v163);
    objc_msgSend_covariance(self, v164, v165, v166);
    objc_msgSend_covariance(self, v167, v168, v169);
    objc_msgSend_covariance(self, v170, v171, v172);
    objc_msgSend_covariance(self, v173, v174, v175);
    objc_msgSend_covariance(self, v176, v177, v178);
    objc_msgSend_covariance(self, v179, v180, v181);
    objc_msgSend_covariance(self, v182, v183, v184);
    v214 = v260;
    v206 = v237;
    v196 = v238;
    v208 = v239;
    v185 = v240;
    v209 = v241;
    v186 = v242;
    v199 = v243;
    v187 = v244;
    v200 = v245;
    v198 = v246;
    v201 = v247;
    v197 = v248;
    v213 = v249;
    v205 = v250;
    v215 = v251;
    v204 = v252;
    v216 = v253;
    v203 = v254;
    v210 = v255;
    v202 = v256;
    v211 = v257;
    v207 = v258;
    v212 = v259;
  }

  else
  {
    v229 = 0u;
    v231 = 0u;
    v232 = 0u;
    v234 = 0;
    v235 = 0;
    v233 = 0;
    v230 = 0u;
    v228 = 0u;
    v227 = 0u;
    v225 = 0u;
    v226 = 0u;
    v224 = 0u;
    v220 = 0u;
    v216 = 0.0;
    v215 = 0.0;
    v209 = 0.0;
    v208 = 0.0;
    v206 = 0.0;
    v213 = 0.0;
    v201 = 0.0;
    v200 = 0.0;
    v199 = 0.0;
    v212 = 0.0;
    v211 = 0.0;
    v210 = 0.0;
    v221 = 0u;
    v222 = 0u;
    v207 = 0.0;
    v214 = 0.0;
    v217 = 0u;
    v218 = 0u;
    v219 = 0u;
    v223 = 0u;
    v198 = 0.0;
    v197 = 0.0;
    v205 = 0.0;
    v204 = 0.0;
    v203 = 0.0;
    v202 = 0.0;
    v196 = 0.0;
    v185 = 0.0;
    v186 = 0.0;
    v187 = 0.0;
    v236 = 0u;
  }

  objc_msgSend_confidence(self, v15, v16, v17);
  v191 = objc_msgSend_debugInfo(self, v188, v189, v190);
  objc_msgSend_descriptionWithMemberIndent_endIndent_(v191, v192, v7, v10);
  return objc_msgSend_stringWithFormat_(v11, v193, @"<_CLVLLocalizationResult: %p> {\n%@.timestamp = %f,\n%@.location = {\n%@.coordinate = [%f, %f, %f],\n%@.horizontalAccuracy = %f\n%@},\n%@.transform = [%f, %f, %f, %f;\n%@%f, %f, %f, %f;\n%@%f, %f, %f, %f;\n%@%f, %f, %f, %f],\n%@.covariance = [%f, %f, %f, %f, %f, %f;\n%@%f, %f, %f, %f, %f, %f;\n%@%f, %f, %f, %f, %f, %f;\n%@%f, %f, %f, %f, %f, %f;\n%@%f, %f, %f, %f, %f, %f;\n%@%f, %f, %f, %f, %f, %f],\n%@.confidence = %f\n%@.debugInfo = %@\n%@}", v194, self, indent, v19, indent, v7, v235, *(&v221 + 1), v234, v7, v233, v10, indent, vzip1q_s64(v232, v230), vzip1q_s64(v231, v228), v7, vzip2q_s64(v229, v227), vzip2q_s64(v223, v226), v7, vzip1q_s64(v219, v222), vzip1q_s64(v218, v225), v7, vzip2q_s64(v217, v224), vzip2q_s64(v236, v220), indent, *&v214, *&v212, *&v207, *&v211, *&v202, *&v210, v7, *&v203, *&v216, *&v204, *&v215, *&v205, *&v213, v7, *&v197, *&v201, *&v198, *&v200, *&v187, *&v199, v7, *&v186, *&v209, *&v185, *&v208, *&v196, *&v206);
}

- ($153C3A5BC4E016D58A1B9CA554FFC462)location
{
  v3 = *&self->_anon_20[16];
  *v2 = *self->_anon_20;
  v2[1] = v3;
  v4 = *&self->_anon_20[32];
  v2[2] = v4;
  return v4;
}

- (void)setLocation:(id)location
{
  v4 = *v3;
  v5 = v3[2];
  *&self->_anon_20[16] = v3[1];
  *&self->_anon_20[32] = v5;
  *self->_anon_20 = v4;
}

- (__n128)transform
{
  v2 = *(self + 160);
  *(a2 + 64) = *(self + 144);
  *(a2 + 80) = v2;
  v3 = *(self + 192);
  *(a2 + 96) = *(self + 176);
  *(a2 + 112) = v3;
  v4 = *(self + 96);
  *a2 = *(self + 80);
  *(a2 + 16) = v4;
  result = *(self + 112);
  v6 = *(self + 128);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

- (__n128)setTransform:(__int128 *)transform
{
  v3 = *transform;
  v4 = transform[1];
  v5 = transform[3];
  *(self + 112) = transform[2];
  *(self + 128) = v5;
  *(self + 80) = v3;
  *(self + 96) = v4;
  result = transform[4];
  v7 = transform[5];
  v8 = transform[7];
  *(self + 176) = transform[6];
  *(self + 192) = v8;
  *(self + 144) = result;
  *(self + 160) = v7;
  return result;
}

- ($4ED12C4C7630B45462BF021B0F75306B)covariance
{
  v3 = *&self[2].var0[1][2];
  *&retstr->var0[4][0] = *&self[2].var0[0][4];
  *&retstr->var0[4][4] = v3;
  *&retstr->var0[5][2] = *&self[2].var0[2][0];
  v4 = *&self[1].var0[4][4];
  *&retstr->var0[1][2] = *&self[1].var0[4][0];
  *&retstr->var0[2][0] = v4;
  v5 = *&self[2].var0[0][0];
  *&retstr->var0[2][4] = *&self[1].var0[5][2];
  *&retstr->var0[3][2] = v5;
  v6 = *&self[1].var0[3][2];
  *&retstr->var0[0][0] = *&self[1].var0[2][4];
  *&retstr->var0[0][4] = v6;
  return self;
}

- (void)setCovariance:(id *)covariance
{
  *&self->_covariance.v[0][0] = *&covariance->var0[0][0];
  v3 = *&covariance->var0[0][4];
  v4 = *&covariance->var0[1][2];
  v5 = *&covariance->var0[2][4];
  *&self->_covariance.v[2][0] = *&covariance->var0[2][0];
  *&self->_covariance.v[2][4] = v5;
  *&self->_covariance.v[0][4] = v3;
  *&self->_covariance.v[1][2] = v4;
  v6 = *&covariance->var0[3][2];
  v7 = *&covariance->var0[4][0];
  v8 = *&covariance->var0[5][2];
  *&self->_covariance.v[4][4] = *&covariance->var0[4][4];
  *&self->_covariance.v[5][2] = v8;
  *&self->_covariance.v[3][2] = v6;
  *&self->_covariance.v[4][0] = v7;
}

@end