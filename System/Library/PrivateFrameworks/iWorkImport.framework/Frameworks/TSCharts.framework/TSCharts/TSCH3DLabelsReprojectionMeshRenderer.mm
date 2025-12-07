@interface TSCH3DLabelsReprojectionMeshRenderer
- (void)renderWithMeshRenderLabelInfo:(id)info;
@end

@implementation TSCH3DLabelsReprojectionMeshRenderer

- (void)renderWithMeshRenderLabelInfo:(id)info
{
  infoCopy = info;
  v8 = objc_msgSend_renderer(infoCopy, v4, v5, v6, v7);
  v13 = objc_msgSend_pipeline(v8, v9, v10, v11, v12);
  v244 = objc_msgSend_processor(v13, v14, v15, v16, v17);
  v22 = objc_msgSend_labelCamera(v8, v18, v19, v20, v21);
  v27 = v22;
  if (v22)
  {
    objc_msgSend_normalizedProjection(v22, v23, v24, v25);
    if (infoCopy)
    {
LABEL_3:
      objc_msgSend_translation(infoCopy, v28, v24, v25);
      v29 = v278;
      v30 = v279;
      goto LABEL_6;
    }
  }

  else
  {
    v28 = 0.0;
    v292 = 0u;
    v293 = 0u;
    v290 = 0u;
    v291 = 0u;
    if (infoCopy)
    {
      goto LABEL_3;
    }
  }

  v279 = 0.0;
  v278 = 0;
  v29 = 0;
  v30 = 0.0;
LABEL_6:
  v282 = 0;
  v281 = 0;
  v280 = 1065353216;
  v283 = 1065353216;
  v284 = 0;
  v285 = 0;
  v31 = vmul_f32(v29, 0);
  v32 = vrev64_s32(v31);
  v31.f32[0] = vaddv_f32(v31);
  *v26.i32 = v30 * 0.0;
  v286 = 1065353216;
  v287 = vadd_f32(vadd_f32(vadd_f32(v29, v32), vdup_lane_s32(v26, 0)), 0);
  v288 = (v30 + v31.f32[0]) + 0.0;
  v289 = (v31.f32[0] + (v30 * 0.0)) + 1.0;
  *&v33 = sub_2761558A0(&v290, &v280, &v294).u64[0];
  if (infoCopy)
  {
    objc_msgSend_offset(infoCopy, v33, v34, v35);
    v36 = v267;
  }

  else
  {
    v267 = 0;
    v36 = 0;
  }

  v270 = 0;
  v269 = 0;
  v268 = 1065353216;
  v271 = 1065353216;
  v272 = 0;
  v273 = 0;
  v37 = vmul_f32(v36, 0);
  v274 = 1065353216;
  v275 = vadd_f32(vadd_f32(v36, vrev64_s32(v37)), 0);
  v276 = vaddv_f32(v37) + 0.0;
  v277 = v276 + 1.0;
  *&v38 = sub_2761558A0(&v294, &v268, v295).u64[0];
  objc_msgSend_rotation(infoCopy, v38, v39, v40);
  v42 = __sincosf_stret(v41 * 0.017453);
  v43 = (1.0 - v42.__cosval) * 0.0;
  v44 = v42.__cosval + (v43 * 0.0);
  v45 = (v43 * 0.0) + 0.0;
  v46 = v42.__sinval + v45;
  v47 = v43 + 0.0;
  v48 = v47 - (v42.__sinval * 0.0);
  v49 = v45 - v42.__sinval;
  v50 = v47 + (v42.__sinval * 0.0);
  v51 = ((1.0 - v42.__cosval) * 0.0) + 0.0;
  v52 = v51 + (v42.__sinval * 0.0);
  v53 = v51 - (v42.__sinval * 0.0);
  v54 = v42.__cosval + (1.0 - v42.__cosval);
  v55 = (v44 * 0.0) + (v46 * 0.0);
  v265[0] = (v48 * 0.0) + (v44 + (v46 * 0.0));
  v265[1] = ((v44 * 0.0) + v46) + (v48 * 0.0);
  v265[2] = v48 + v55;
  v265[3] = (v48 * 0.0) + v55;
  v56 = (v44 * 0.0) + (v49 * 0.0);
  v265[4] = ((v44 * 0.0) + v49) + (v50 * 0.0);
  v265[5] = (v50 * 0.0) + (v44 + (v49 * 0.0));
  v265[6] = v50 + v56;
  v265[7] = (v50 * 0.0) + v56;
  v57 = (v52 * 0.0) + (v53 * 0.0);
  v265[8] = (v54 * 0.0) + (v52 + (v53 * 0.0));
  v265[9] = (v54 * 0.0) + (v53 + (v52 * 0.0));
  v265[10] = v54 + v57;
  v265[11] = (v54 * 0.0) + v57;
  v266 = xmmword_2764D5F20;
  *&v58 = sub_2761558A0(v295, v265, __p).u64[0];
  if (infoCopy)
  {
    objc_msgSend_alignmentOffset(infoCopy, v58, v59, v60);
    v61 = v254;
  }

  else
  {
    v254 = 0;
    v61 = 0;
  }

  v62 = vmul_f32(v61, 0);
  v255 = 1065353216;
  v257 = 0;
  v256 = 0;
  v258 = 1065353216;
  v259 = 0;
  v260 = 0;
  v261 = 1065353216;
  v262 = vadd_f32(vadd_f32(v61, vrev64_s32(v62)), 0);
  v263 = vaddv_f32(v62) + 0.0;
  v264 = v263 + 1.0;
  *&v63 = sub_2761558A0(__p, &v255, &v305).u64[0];
  if (infoCopy)
  {
    objc_msgSend_scale(infoCopy, v63, *v64.i64, v65);
    v64.i32[0] = v247;
    v66 = v248;
  }

  else
  {
    v66 = 0;
    v64.i32[0] = 0;
  }

  v249[0] = v64.i32[0];
  *&v249[1] = *v64.i32 * 0.0;
  *&v249[2] = *v64.i32 * 0.0;
  *&v249[3] = *v64.i32 * 0.0;
  *v64.i8 = vmul_f32(v66, 0);
  v250 = vzip1_s32(*v64.i8, v66);
  v251 = vzip1q_s32(v64, v64);
  v252 = vzip2_s32(v66, *v64.i8);
  v253 = xmmword_2764D5F20;
  sub_2761558A0(&v305, v249, &v309);

  v70 = 0;
  v294 = xmmword_2764D5EE0;
  do
  {
    v305 = xmmword_2764D5ED0;
    sub_2761FF824(v305.f32, v70, __p, 0.0, v67, v68, v69);
    *v71.i32 = v315 + (((*&__p[4] * v311) + (v309.f32[3] * *__p)) + (v313 * 0.0));
    *v305.f32 = vdiv_f32(vadd_f32(v314, vmla_f32(vmla_n_f32(vmul_n_f32(v310, *&__p[4]), *v309.f32, *__p), 0, v312)), vdup_lane_s32(v71, 0));
    *&v73 = sub_276152BD8(&v294, &v305);
    ++v70;
  }

  while (v70 != 4);
  v75 = objc_msgSend_camera(v13, *&v72, v73, v67, v68);
  if (infoCopy)
  {
    objc_msgSend_position(infoCopy, v76, v77, v78);
  }

  else
  {
    v305.i32[2] = 0;
    v305.i64[0] = 0;
  }

  v79 = objc_msgSend_unitToWorld(v8, v74, v76, v77, v78);
  *&v82 = sub_276154744(v305.f32, v79, &v290, v80);
  if (v75)
  {
    objc_msgSend_transform(v75, v82, v83, v84);
    v88 = *(&v307 + 1);
    v87 = *&v307;
    v89 = *(&v307 + 2);
    v91 = *(&v308 + 1);
    v90 = *&v308;
    v245 = *(&v308 + 2);
  }

  else
  {
    v307 = 0u;
    v308 = 0u;
    v305 = 0u;
    v306 = 0u;
    HIDWORD(v86) = 0;
    v245 = 0.0;
    v91 = 0.0;
    v90 = 0.0;
    v89 = 0.0;
    v88 = 0.0;
    v87 = 0.0;
  }

  LODWORD(v83) = v294.i32[1];
  LODWORD(v86) = v294.i32[0];
  LODWORD(v85) = v294.i32[3];
  LODWORD(v84) = v294.i32[2];
  if (v294.f32[3] < v294.f32[1] || v294.f32[2] < v294.f32[0])
  {
    v93 = 0;
  }

  else
  {
    v93 = 4;
  }

  v94 = v290.f32[1];
  v95 = v290.f32[0];
  v96 = v290.f32[2];
  v97 = objc_msgSend_mesh(v8, v81, v86, v83, v84, v85);

  if (!v97)
  {
    v102 = objc_msgSend_bufferWithCapacity_(TSCH3Dvec3DataBuffer, v98, v99, v100, v101, v93);
    v107 = objc_msgSend_resourceWithBuffer_(TSCH3DDataBufferResource, v103, v104, v105, v106, v102);
    objc_msgSend_setMesh_(v8, v108, v109, v110, v111, v107);
  }

  v112 = objc_msgSend_mesh(v8, v98, v99, v100, v101);
  v113 = sub_27618C648(v112);

  sub_2761EDA00(v113, v93);
  sub_2761F27A8(v295, v93);
  *&v118 = 1.0 / sqrtf(((v88 * v88) + (v87 * v87)) + (v89 * v89));
  *&v116 = -(v88 * *&v118);
  *&v117 = -(v87 * *&v118);
  *&v118 = -(v89 * *&v118);
  *&v115 = (v91 * *&v116) + (*&v117 * v90);
  *&v116 = (v94 * *&v116) + (v95 * *&v117);
  *&v117 = *&v115 + (*&v118 * v245);
  *&v118 = *&v116 + (v96 * *&v118);
  v119 = *&v118 - *&v117;
  if (v93)
  {
    v120 = 0;
    for (i = 0; i != v93; ++i)
    {
      *&v123 = sub_2761FF824(v294.f32, i, &v280, v118, v116, v117, v115);
      if (v75)
      {
        *&v123 = v119;
        objc_msgSend_projectNormalizedPoint_planeDistance_(v75, v123, v124, v125);
      }

      else
      {
        memset(__p, 0, sizeof(__p));
      }

      v126 = objc_msgSend_worldToStage(v8, v122, v123, v124, v125);
      sub_276154744(__p, v126, &v280, v127);
      v128 = &(*v113)[v120];
      *v128 = v280;
      *(v128 + 1) = v281;
      v129 = v295[0].i64[0] + v120 * 4;
      *v129 = *__p;
      LODWORD(v118) = *&__p[8];
      *(v129 + 8) = *&__p[8];
      v120 += 3;
    }
  }

  if (v75)
  {
    objc_msgSend_modelViewNormalizedProjection(v75, v118, v116, v117);
    v130 = *__p;
    v131 = *(&v297 + 1);
    LODWORD(v117) = v298;
    v132 = *&v300;
    v234 = *&v298;
    v235 = *(&v300 + 1);
    v133 = *(&v302 + 1);
    v236 = *&v303;
    v237 = *&__p[4];
    v238 = *&__p[8];
    v242 = *&v297;
    v239 = *(&v299 + 1);
    LODWORD(v116) = v299;
    v231 = *&v299;
    v232 = *&v301;
    v240 = *&v302;
    v233 = *(&v303 + 1);
    LODWORD(v134) = v304;
    v246 = *&v304;
  }

  else
  {
    v134 = 0.0;
    v246 = 0.0;
    v240 = 0.0;
    v239 = 0.0;
    v242 = 0.0;
    v232 = 0.0;
    v233 = 0.0;
    v231 = 0.0;
    v237 = 0.0;
    v238 = 0.0;
    v235 = 0.0;
    v236 = 0.0;
    v234 = 0.0;
    v133 = 0.0;
    v132 = 0.0;
    v131 = 0.0;
    v130 = 0.0;
  }

  if (byte_280A46430 == 1)
  {
    v135 = v290.i64[0];
    v136 = v290.f32[2];
    v137 = objc_msgSend_label(v8, v114, v134, v116, v117);
    v229 = v13;
    v230 = infoCopy;
    v142 = objc_msgSend_attributes(v137, v138, v139, v140, v141);
    v147 = objc_msgSend_string(v142, v143, v144, v145, v146);
    v148 = MEMORY[0x277CCACA8];
    sub_276152EB4(v294.f32, __p);
    if (v298 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v148, v149, v150, v151, v152, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v148, v149, v150, v151, v152, *__p);
    }
    v153 = ;
    v154 = v246 + (((*(&v135 + 1) * v239) + (v242 * *&v135)) + (v240 * v136));
    v155 = (v133 + (((*(&v135 + 1) * v131) + (v130 * *&v135)) + (v132 * v136))) / v154;
    v156 = (v236 + (((*(&v135 + 1) * v234) + (v237 * *&v135)) + (v235 * v136))) / v154;
    v157 = (v233 + (((*(&v135 + 1) * v231) + (v238 * *&v135)) + (v232 * v136))) / v154;
    if (SHIBYTE(v298) < 0)
    {
      operator delete(*__p);
    }

    v158 = MEMORY[0x277CCACA8];
    sub_276152FD4(__p, "vec3(%f, %f, %f)", v155, v156, v157);
    if (v298 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v158, v159, v160, v161, v162, __p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v158, v159, v160, v161, v162, *__p);
    }
    v163 = ;
    if (SHIBYTE(v298) < 0)
    {
      operator delete(*__p);
    }

    NSLog(&cfstr_LabelboundsDis.isa, v147, v153, v119, v163);

    v13 = v229;
    infoCopy = v230;
    if (byte_280A46430)
    {
      v164 = MEMORY[0x277CCACA8];
      sub_276152FD4(__p, "vec3(%f, %f, %f)", *v295[0].i64[0], *(v295[0].i64[0] + 4), *(v295[0].i64[0] + 8));
      if (v298 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v164, v165, v166, v167, v168, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v164, v165, v166, v167, v168, *__p);
      }
      v169 = ;
      if (SHIBYTE(v298) < 0)
      {
        operator delete(*__p);
      }

      v170 = MEMORY[0x277CCACA8];
      sub_276152FD4(__p, "vec3(%f, %f, %f)", *(v295[0].i64[0] + 12), *(v295[0].i64[0] + 16), *(v295[0].i64[0] + 20));
      if (v298 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v170, v171, v172, v173, v174, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v170, v171, v172, v173, v174, *__p);
      }
      v243 = ;
      if (SHIBYTE(v298) < 0)
      {
        operator delete(*__p);
      }

      v175 = MEMORY[0x277CCACA8];
      sub_276152FD4(__p, "vec3(%f, %f, %f)", *(v295[0].i64[0] + 24), *(v295[0].i64[0] + 28), *(v295[0].i64[0] + 32));
      if (v298 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v175, v176, v177, v178, v179, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v175, v176, v177, v178, v179, *__p);
      }
      v180 = ;
      if (SHIBYTE(v298) < 0)
      {
        operator delete(*__p);
      }

      v181 = MEMORY[0x277CCACA8];
      v241 = v180;
      sub_276152FD4(__p, "vec3(%f, %f, %f)", *(v295[0].i64[0] + 36), *(v295[0].i64[0] + 40), *(v295[0].i64[0] + 44));
      if (v298 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v181, v182, v183, v184, v185, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v181, v182, v183, v184, v185, *__p);
      }
      v186 = ;
      if (SHIBYTE(v298) < 0)
      {
        operator delete(*__p);
      }

      v187 = MEMORY[0x277CCACA8];
      sub_276152FD4(__p, "vec3(%f, %f, %f)", **v113, (*v113)[1], (*v113)[2]);
      if (v298 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v187, v188, v189, v190, v191, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v187, v188, v189, v190, v191, *__p);
      }
      v192 = ;
      if (SHIBYTE(v298) < 0)
      {
        operator delete(*__p);
      }

      v193 = MEMORY[0x277CCACA8];
      sub_276152FD4(__p, "vec3(%f, %f, %f)", (*v113)[3], (*v113)[4], (*v113)[5]);
      if (v298 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v193, v194, v195, v196, v197, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v193, v194, v195, v196, v197, *__p);
      }
      v198 = ;
      if (SHIBYTE(v298) < 0)
      {
        operator delete(*__p);
      }

      v199 = MEMORY[0x277CCACA8];
      sub_276152FD4(__p, "vec3(%f, %f, %f)", (*v113)[6], (*v113)[7], (*v113)[8]);
      if (v298 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v199, v200, v201, v202, v203, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v199, v200, v201, v202, v203, *__p);
      }
      v204 = ;
      if (SHIBYTE(v298) < 0)
      {
        operator delete(*__p);
      }

      v205 = MEMORY[0x277CCACA8];
      sub_276152FD4(__p, "vec3(%f, %f, %f)", (*v113)[9], (*v113)[10], (*v113)[11]);
      if (v298 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v205, v206, v207, v208, v209, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v205, v206, v207, v208, v209, *__p);
      }
      v210 = ;
      if (SHIBYTE(v298) < 0)
      {
        operator delete(*__p);
      }

      NSLog(&cfstr_PlaneInverse.isa, v169, v243, v241, v186, v192, v198, v204, v210);

      v13 = v229;
      infoCopy = v230;
    }
  }

  v297 = 0;
  *&__p[4] = 0;
  *__p = 1065353216;
  *&v298 = 1.0;
  v300 = 0;
  v299 = 0;
  v303 = 0;
  v302 = 0;
  *&v301 = 1.0;
  *&v304 = 1.0;
  objc_msgSend_replace_(v244, v114, v134, v116, v117, __p);
  v215 = objc_msgSend_mesh(v8, v211, v212, v213, v214);
  objc_msgSend_geometry_(v244, v216, v217, v218, v219, v215);

  v224 = objc_msgSend_infoWithType_(TSCH3DPrimitiveInfo, v220, v221, v222, v223, 5);
  objc_msgSend_submit_(v244, v225, v226, v227, v228, v224);

  if (v295[0].i64[0])
  {
    v295[0].i64[1] = v295[0].i64[0];
    operator delete(v295[0].i64[0]);
  }
}

@end