@interface MPSMatrixSolveTriangular
- (MPSMatrixSolveTriangular)initWithDevice:(id)device right:(BOOL)right upper:(BOOL)upper transpose:(BOOL)transpose unit:(BOOL)unit order:(NSUInteger)order numberOfRightHandSides:(NSUInteger)numberOfRightHandSides alpha:(double)alpha;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer encoder:(id)encoder sourceMatrix:(id)matrix rightHandSideMatrix:(id)sideMatrix solutionMatrix:(id)solutionMatrix;
- (void)encodeToCommandBuffer:(id)commandBuffer sourceMatrix:(MPSMatrix *)sourceMatrix rightHandSideMatrix:(MPSMatrix *)rightHandSideMatrix solutionMatrix:(MPSMatrix *)solutionMatrix;
@end

@implementation MPSMatrixSolveTriangular

- (MPSMatrixSolveTriangular)initWithDevice:(id)device right:(BOOL)right upper:(BOOL)upper transpose:(BOOL)transpose unit:(BOOL)unit order:(NSUInteger)order numberOfRightHandSides:(NSUInteger)numberOfRightHandSides alpha:(double)alpha
{
  v41.receiver = self;
  v41.super_class = MPSMatrixSolveTriangular;
  v17 = [(MPSMatrixBinaryKernel *)&v41 initWithDevice:?];
  v19 = v17;
  if (v17)
  {
    v20 = (*(&v17->super.super.super.isa + *MEMORY[0x277CD7350]))[369];
    v38 = 0;
    v39 = 0;
    v40 = 0;
    objc_msgSend_setResultMatrixOrigin_(v17, v18, &v38);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    objc_msgSend_setPrimarySourceMatrixOrigin_(v19, v21, &v38);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    objc_msgSend_setSecondarySourceMatrixOrigin_(v19, v22, &v38);
    v19->_right = right;
    v19->_upper = upper;
    v19->_transpose = transpose;
    v19->_unit = unit;
    v19->_order = order;
    v19->_numberOfRightHandSides = numberOfRightHandSides;
    v19->_alpha = alpha;
    if ((v20 & 0x400) != 0)
    {
      v24 = 32;
    }

    else
    {
      v24 = 64;
    }

    if ((v20 & 0x400) != 0)
    {
      v25 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v23, numberOfRightHandSides + order, v24, 128, 268435488);
    }

    else
    {
      v25 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(MEMORY[0x277CD7258], v23, numberOfRightHandSides + order, v24, 256, 268435488);
    }

    v28 = v25;
    v29 = objc_msgSend_rows(v25, v26, v27);
    v32 = objc_msgSend_rowBytes(v28, v30, v31);
    v34 = objc_msgSend_newBufferWithLength_options_(device, v33, v32 * v29, 32);
    v35 = objc_alloc(MEMORY[0x277CD7250]);
    v19->_workspace = objc_msgSend_initWithBuffer_descriptor_(v35, v36, v34, v28);
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v59.receiver = self;
  v59.super_class = MPSMatrixSolveTriangular;
  v6 = [(MPSMatrixBinaryKernel *)&v59 copyWithZone:zone device:?];
  v9 = v6;
  if (v6)
  {
    if (self)
    {
      objc_msgSend_resultMatrixOrigin(self, v7, v8);
      v55 = v57;
      v56 = v58;
      objc_msgSend_setResultMatrixOrigin_(v9, v10, &v55);
      objc_msgSend_primarySourceMatrixOrigin(self, v11, v12);
      v55 = v53;
      v56 = v54;
      objc_msgSend_setPrimarySourceMatrixOrigin_(v9, v13, &v55);
      objc_msgSend_secondarySourceMatrixOrigin(self, v14, v15);
    }

    else
    {
      v57 = 0uLL;
      v58 = 0;
      v55 = 0uLL;
      v56 = 0;
      objc_msgSend_setResultMatrixOrigin_(v6, v7, &v55);
      v55 = 0uLL;
      v56 = 0;
      objc_msgSend_setPrimarySourceMatrixOrigin_(v9, v17, &v55);
      v52 = 0;
      v51 = 0uLL;
    }

    v55 = v51;
    v56 = v52;
    objc_msgSend_setSecondarySourceMatrixOrigin_(v9, v16, &v55, v51, v52);
    *(v9 + 176) = self->_right;
    *(v9 + 177) = self->_upper;
    *(v9 + 178) = self->_transpose;
    *(v9 + 179) = self->_unit;
    *(v9 + 23) = self->_order;
    *(v9 + 24) = self->_numberOfRightHandSides;
    *(v9 + 25) = *&self->_alpha;
    v20 = objc_msgSend_device(self, v18, v19);
    v23 = objc_msgSend_device(v9, v21, v22);
    if (self->_workspace)
    {
      if (objc_msgSend_isEqual_(v20, v24, v23))
      {
        *(v9 + 26) = self->_workspace;
      }

      else
      {
        v27 = MEMORY[0x277CD7258];
        v28 = objc_msgSend_rows(self->_workspace, v25, v26);
        v31 = objc_msgSend_columns(self->_workspace, v29, v30);
        v34 = objc_msgSend_rowBytes(self->_workspace, v32, v33);
        v37 = objc_msgSend_dataType(self->_workspace, v35, v36);
        v39 = objc_msgSend_matrixDescriptorWithRows_columns_rowBytes_dataType_(v27, v38, v28, v31, v34, v37);
        v42 = objc_msgSend_data(self->_workspace, v40, v41);
        v45 = objc_msgSend_length(v42, v43, v44);
        v47 = objc_msgSend_newBufferWithLength_options_(device, v46, v45, 32);
        v48 = objc_alloc(MEMORY[0x277CD7250]);
        *(v9 + 26) = objc_msgSend_initWithBuffer_descriptor_(v48, v49, v47, v39);
      }
    }
  }

  return v9;
}

- (void)encodeToCommandBuffer:(id)buffer encoder:(id)encoder sourceMatrix:(id)matrix rightHandSideMatrix:(id)sideMatrix solutionMatrix:(id)solutionMatrix
{
  selfCopy = self;
  right = self->_right;
  upper = self->_upper;
  transpose = self->_transpose;
  v1848 = objc_msgSend_workspace(self, a2, buffer);
  v1817 = (*(&selfCopy->super.super.super.isa + *MEMORY[0x277CD7350]))[369];
  if ((v1817 & 0x400) != 0)
  {
    v15 = 32;
  }

  else
  {
    v15 = 64;
  }

  v16 = objc_msgSend_order(selfCopy, v13, v14);
  matrixCopy = matrix;
  v1846 = v15;
  v1840 = selfCopy;
  sideMatrixCopy = sideMatrix;
  if (!right)
  {
    if (upper)
    {
      if (transpose)
      {
        if (v16 && objc_msgSend_numberOfRightHandSides(selfCopy, v17, v18))
        {
          ComputeState = MPSLibrary::GetComputeState();
          v1827 = MPSLibrary::GetComputeState();
          objc_msgSend_unit(selfCopy, v147, v148);
          v1745 = MPSLibrary::GetComputeState();
          v1784 = objc_msgSend_numberOfRightHandSides(selfCopy, v149, v150);
          *v1859 = v1784;
          *&v1859[4] = v15;
          *&v1859[12] = objc_msgSend_rowBytes(solutionMatrix, v151, v152);
          *&v1859[16] = objc_msgSend_rowBytes(matrix, v153, v154);
          *&v1859[20] = objc_msgSend_rowBytes(sideMatrix, v155, v156);
          *&v1859[24] = 4 * objc_msgSend_numberOfRightHandSides(selfCopy, v157, v158);
          *&v1859[28] = -1082130432;
          objc_msgSend_alpha(selfCopy, v159, v160);
          *&v161 = v161;
          *&v1859[32] = LODWORD(v161);
          v1856 = *&v1848[*MEMORY[0x277CD7390]];
          v1857 = *&v1848[*MEMORY[0x277CD73B8]];
          v162 = MEMORY[0x277CD73B0];
          v1858 = *&v1848[*MEMORY[0x277CD73B0]];
          v1853 = objc_msgSend_numberOfRightHandSides(selfCopy, v163, v164);
          v1854 = v15;
          v1855 = 4 * objc_msgSend_numberOfRightHandSides(selfCopy, v165, v166);
          v1850 = objc_msgSend_columns(solutionMatrix, v167, v168);
          v1851 = objc_msgSend_rows(solutionMatrix, v169, v170);
          v1852 = objc_msgSend_rowBytes(solutionMatrix, v171, v172);
          v1800 = objc_msgSend_numberOfRightHandSides(selfCopy, v173, v174);
          v1773 = *&v1848[*v162];
          v1764 = objc_msgSend_order(selfCopy, v175, v176);
          objc_msgSend_primarySourceMatrixOrigin(selfCopy, v177, v178);
          v181 = objc_msgSend_rowBytes(matrix, v179, v180);
          objc_msgSend_primarySourceMatrixOrigin(selfCopy, v182, v183);
          v186 = objc_msgSend_dataType(matrix, v184, v185);
          v187 = selfCopy;
          v188 = MEMORY[0x277CD73A8];
          v189 = *(matrix + *MEMORY[0x277CD73A8]) + v181 * *v1861 + *&v1860[8] * (v186 >> 3);
          objc_msgSend_secondarySourceMatrixOrigin(v187, v190, v191);
          v1712 = objc_msgSend_rowBytes(sideMatrix, v192, v193);
          objc_msgSend_secondarySourceMatrixOrigin(v187, v194, v195);
          v1696 = objc_msgSend_dataType(sideMatrix, v196, v197);
          v1690 = *(sideMatrix + *v188);
          objc_msgSend_resultMatrixOrigin(v187, v198, v199);
          v1685 = *v1861;
          v1681 = objc_msgSend_rowBytes(solutionMatrix, v200, v201);
          objc_msgSend_resultMatrixOrigin(v187, v202, v203);
          v206 = objc_msgSend_dataType(solutionMatrix, v204, v205);
          v207 = *(solutionMatrix + *v188);
          v210 = objc_msgSend_order(v187, v208, v209);
          objc_msgSend_setComputePipelineState_(encoder, v211, v1745);
          *v1865 = v210;
          *&v1865[4] = v210;
          *&v1865[8] = objc_msgSend_rowBytes(matrix, v212, v213);
          v1862 = v1846;
          v1863 = v210;
          v1864 = objc_msgSend_rowBytes(v1848, v214, v215);
          v218 = objc_msgSend_data(matrix, v216, v217);
          v1737 = v189;
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v219, v218, v189, 0);
          v222 = objc_msgSend_data(v1848, v220, v221);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v223, v222, 0, 1);
          objc_msgSend_setBytes_length_atIndex_(encoder, v224, v1865, 12, 2);
          objc_msgSend_setBytes_length_atIndex_(encoder, v225, &v1862, 12, 3);
          v227 = v1846 + v210 - 1;
          v228 = (v1817 & 0x400) == 0;
          v229 = 4;
          if ((v1817 & 0x400) != 0)
          {
            v230 = 4;
          }

          else
          {
            v230 = 64;
          }

          if ((v1817 & 0x400) != 0)
          {
            v231 = 8;
          }

          else
          {
            v231 = 4;
          }

          v1818 = v231;
          v232 = v231 >> 2;
          v1791 = v230;
          v233 = 4 * v230 + v1784 + 1;
          if (v228)
          {
            v229 = 8;
          }

          v1785 = v233 >> v229;
          v1727 = (32 * (v232 & 3)) | 1;
          v234 = 5;
          if (v228)
          {
            v235 = 5;
          }

          else
          {
            v235 = 6;
          }

          v1719 = v235;
          v236 = v1764 * v1773;
          v237 = v1690 + v1712 * *v1861 + *&v1860[8] * (v1696 >> 3);
          if (v228)
          {
            v234 = 6;
          }

          *v1861 = v227 >> v234;
          *&v1861[8] = vdupq_n_s64(1uLL);
          v238 = v207 + v1681 * v1685 + *&v1860[8] * (v206 >> 3);
          *v1860 = v1846;
          *&v1860[8] = *&v1861[8];
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v226, v1861, v1860);
          v243 = 0;
          if (objc_msgSend_order(v187, v239, v240) >= v1846)
          {
            v243 = 0;
            v1755 = vdupq_n_s64(1uLL);
            v244 = v1737;
            do
            {
              *&v1859[8] = v243;
              objc_msgSend_setComputePipelineState_(encoder, v241, ComputeState);
              v247 = objc_msgSend_data(solutionMatrix, v245, v246);
              objc_msgSend_rowBytes(solutionMatrix, v248, v249);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v250, v247, v238, 0);
              v253 = objc_msgSend_data(matrixCopy, v251, v252);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v254, v253, v244, 1);
              v257 = objc_msgSend_data(sideMatrix, v255, v256);
              v260 = objc_msgSend_rowBytes(sideMatrix, v258, v259);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v261, v257, v237 + v260 * v243, 2);
              v264 = objc_msgSend_data(v1848, v262, v263);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v265, v264, v236, 3);
              objc_msgSend_setBytes_length_atIndex_(encoder, v266, v1859, 36, 4);
              *v1861 = v1785;
              *&v1861[8] = (v1727 + v1846) >> v1719;
              *&v1861[16] = 1;
              *v1860 = v1791;
              *&v1860[8] = v1818;
              *&v1860[16] = 1;
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v267, v1861, v1860);
              objc_msgSend_setComputePipelineState_(encoder, v268, v1827);
              v271 = objc_msgSend_data(v1848, v269, v270);
              v274 = objc_msgSend_rowBytes(v1848, v272, v273);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v275, v271, v274 * v243, 0);
              v278 = objc_msgSend_data(v1848, v276, v277);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v279, v278, v236, 1);
              v282 = objc_msgSend_data(solutionMatrix, v280, v281);
              v285 = objc_msgSend_rowBytes(solutionMatrix, v283, v284);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v286, v282, v238 + v285 * v243, 2);
              objc_msgSend_setBytes_length_atIndex_(encoder, v287, &v1856, 12, 3);
              objc_msgSend_setBytes_length_atIndex_(encoder, v288, &v1853, 12, 4);
              objc_msgSend_setBytes_length_atIndex_(encoder, v289, &v1850, 12, 5);
              *v1861 = v1800;
              *&v1861[8] = v1755;
              *v1860 = v1846;
              *&v1860[8] = v1755;
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v290, v1861, v1860);
              v243 += v1846;
              v244 += 4 * v1846;
            }

            while (v1846 + v243 <= objc_msgSend_order(v1840, v291, v292));
          }

          if (v243 < objc_msgSend_order(v1840, v241, v242))
          {
            v295 = objc_msgSend_order(v1840, v293, v294);
            *&v1859[4] = v295 - v243;
            *&v1859[8] = v243;
            v1841 = (v295 - v243 + v1727) >> v1719;
            v1856 = v295 - v243;
            v1854 = v295 - v243;
            objc_msgSend_setComputePipelineState_(encoder, v296, ComputeState);
            v299 = objc_msgSend_data(solutionMatrix, v297, v298);
            objc_msgSend_rowBytes(solutionMatrix, v300, v301);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v302, v299, v238, 0);
            v305 = objc_msgSend_data(matrixCopy, v303, v304);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v306, v305, v1737 + 4 * v243, 1);
            v309 = objc_msgSend_data(sideMatrix, v307, v308);
            v312 = objc_msgSend_rowBytes(sideMatrix, v310, v311);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v313, v309, v237 + v312 * v243, 2);
            v316 = objc_msgSend_data(v1848, v314, v315);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v317, v316, v236, 3);
            objc_msgSend_setBytes_length_atIndex_(encoder, v318, v1859, 36, 4);
            *v1861 = v1785;
            *&v1861[8] = v1841;
            *&v1861[16] = 1;
            *v1860 = v1791;
            *&v1860[8] = v1818;
            *&v1860[16] = 1;
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v319, v1861, v1860);
            objc_msgSend_setComputePipelineState_(encoder, v320, v1827);
            v323 = objc_msgSend_data(v1848, v321, v322);
            v326 = objc_msgSend_rowBytes(v1848, v324, v325);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v327, v323, v326 * v243, 0);
            v330 = objc_msgSend_data(v1848, v328, v329);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v331, v330, v236, 1);
            v334 = objc_msgSend_data(solutionMatrix, v332, v333);
            v337 = objc_msgSend_rowBytes(solutionMatrix, v335, v336);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v338, v334, v238 + v337 * v243, 2);
            objc_msgSend_setBytes_length_atIndex_(encoder, v339, &v1856, 12, 3);
            objc_msgSend_setBytes_length_atIndex_(encoder, v340, &v1853, 12, 4);
            objc_msgSend_setBytes_length_atIndex_(encoder, v341, &v1850, 12, 5);
            *v1861 = v1800;
            *&v1861[8] = vdupq_n_s64(1uLL);
            *v1860 = v1846;
            *&v1860[8] = *&v1861[8];
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v342, v1861, v1860);
          }

          MPSLibrary::ReleaseComputeState();
          MPSLibrary::ReleaseComputeState();
          goto LABEL_146;
        }
      }

      else if (v16 && objc_msgSend_numberOfRightHandSides(selfCopy, v17, v18))
      {
        v1768 = MPSLibrary::GetComputeState();
        v1804 = MPSLibrary::GetComputeState();
        v1715 = MPSLibrary::GetComputeState();
        objc_msgSend_unit(selfCopy, v1026, v1027);
        v1700 = MPSLibrary::GetComputeState();
        v1862 = objc_msgSend_columns(solutionMatrix, v1028, v1029);
        v1863 = objc_msgSend_rows(solutionMatrix, v1030, v1031);
        v1864 = objc_msgSend_rowBytes(solutionMatrix, v1032, v1033);
        v1796 = objc_msgSend_numberOfRightHandSides(selfCopy, v1034, v1035);
        v1833 = *&v1848[*MEMORY[0x277CD73B0]];
        v1813 = objc_msgSend_order(selfCopy, v1036, v1037);
        objc_msgSend_primarySourceMatrixOrigin(selfCopy, v1038, v1039);
        v1042 = v15;
        matrixCopy2 = matrix;
        v1044 = objc_msgSend_rowBytes(matrix, v1040, v1041);
        objc_msgSend_primarySourceMatrixOrigin(selfCopy, v1045, v1046);
        v1047 = *&v1861[8];
        v1050 = objc_msgSend_dataType(matrixCopy2, v1048, v1049);
        v1051 = MEMORY[0x277CD73A8];
        v1052 = *&matrixCopy2[*MEMORY[0x277CD73A8]] + v1044 * *v1859 + v1047 * (v1050 >> 3);
        objc_msgSend_secondarySourceMatrixOrigin(selfCopy, v1053, v1054);
        v1779 = objc_msgSend_rowBytes(sideMatrix, v1055, v1056);
        objc_msgSend_secondarySourceMatrixOrigin(selfCopy, v1057, v1058);
        v1741 = *&v1861[8];
        v1732 = objc_msgSend_dataType(sideMatrix, v1059, v1060);
        v1723 = *(sideMatrix + *v1051);
        objc_msgSend_resultMatrixOrigin(selfCopy, v1061, v1062);
        v1707 = *v1859;
        v1688 = objc_msgSend_rowBytes(solutionMatrix, v1063, v1064);
        objc_msgSend_resultMatrixOrigin(selfCopy, v1065, v1066);
        v1693 = *&v1861[8];
        v1684 = objc_msgSend_dataType(solutionMatrix, v1067, v1068);
        v1069 = *(solutionMatrix + *v1051);
        v1072 = objc_msgSend_order(selfCopy, v1070, v1071);
        objc_msgSend_setComputePipelineState_(encoder, v1073, v1700);
        *v1860 = v1072;
        *&v1860[4] = v1072;
        *&v1860[8] = objc_msgSend_rowBytes(matrixCopy2, v1074, v1075);
        *v1865 = v1042;
        *&v1865[4] = v1072;
        *&v1865[8] = objc_msgSend_rowBytes(v1848, v1076, v1077);
        v1080 = objc_msgSend_data(matrixCopy2, v1078, v1079);
        v1750 = v1052;
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v1081, v1080, v1052, 0);
        v1084 = objc_msgSend_data(v1848, v1082, v1083);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v1085, v1084, 0, 1);
        objc_msgSend_setBytes_length_atIndex_(encoder, v1086, v1860, 12, 2);
        objc_msgSend_setBytes_length_atIndex_(encoder, v1087, v1865, 12, 3);
        v1089 = v1042 - 1;
        v1090 = 4;
        if ((v1817 & 0x400) == 0)
        {
          v1090 = 32;
        }

        v1759 = v1090;
        v1091 = v1813 * v1833;
        v1092 = v1723 + v1779 * *v1859 + v1741 * (v1732 >> 3);
        v1093 = 5;
        if ((v1817 & 0x400) == 0)
        {
          v1093 = 6;
        }

        *v1859 = (v1072 + v1089) >> v1093;
        *&v1859[8] = vdupq_n_s64(1uLL);
        v1094 = v1069 + v1688 * v1707 + v1693 * (v1684 >> 3);
        *v1861 = v1042;
        *&v1861[8] = *&v1859[8];
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v1088, v1859, v1861);
        v1097 = objc_msgSend_order(selfCopy, v1095, v1096) & v1089;
        v1102 = objc_msgSend_order(selfCopy, v1098, v1099) - v1097;
        v1834 = v1094;
        if (v1097)
        {
          v1103 = objc_msgSend_numberOfRightHandSides(selfCopy, v1100, v1101);
          *v1860 = v1103;
          *&v1860[4] = v1097;
          *&v1860[8] = objc_msgSend_rowBytes(sideMatrixCopy, v1104, v1105);
          *&v1860[12] = 4 * objc_msgSend_numberOfRightHandSides(selfCopy, v1106, v1107);
          objc_msgSend_alpha(selfCopy, v1108, v1109);
          *&v1110 = v1110;
          *&v1860[16] = LODWORD(v1110);
          v1111 = (v1103 + 15) >> 4;
          objc_msgSend_setComputePipelineState_(encoder, v1112, v1715);
          v1115 = objc_msgSend_data(sideMatrixCopy, v1113, v1114);
          v1118 = objc_msgSend_rowBytes(sideMatrixCopy, v1116, v1117);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v1119, v1115, v1092 + v1118 * v1102, 0);
          v1122 = objc_msgSend_data(v1848, v1120, v1121);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v1123, v1122, v1091, 1);
          objc_msgSend_setBytes_length_atIndex_(encoder, v1124, v1860, 20, 2);
          *v1859 = v1111;
          *&v1859[8] = (v1097 + 31) >> 5;
          *&v1859[16] = 1;
          *v1861 = vdupq_n_s64(8uLL);
          *&v1861[16] = 1;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v1125, v1859, v1861);
          *v1865 = v1097;
          *&v1865[4] = *&v1848[*MEMORY[0x277CD73B8]];
          *&v1865[8] = *&v1848[*MEMORY[0x277CD73B0]];
          v1856 = objc_msgSend_numberOfRightHandSides(selfCopy, v1126, v1127);
          v1857 = v1097;
          v1858 = 4 * objc_msgSend_numberOfRightHandSides(selfCopy, v1128, v1129);
          objc_msgSend_setComputePipelineState_(encoder, v1130, v1804);
          v1133 = objc_msgSend_data(v1848, v1131, v1132);
          v1136 = objc_msgSend_rowBytes(v1848, v1134, v1135);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v1137, v1133, v1136 * v1102, 0);
          v1140 = objc_msgSend_data(v1848, v1138, v1139);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v1141, v1140, v1091, 1);
          v1144 = objc_msgSend_data(solutionMatrix, v1142, v1143);
          v1147 = objc_msgSend_rowBytes(solutionMatrix, v1145, v1146);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v1148, v1144, v1094 + v1147 * v1102, 2);
          objc_msgSend_setBytes_length_atIndex_(encoder, v1149, v1865, 12, 3);
          objc_msgSend_setBytes_length_atIndex_(encoder, v1150, &v1856, 12, 4);
          objc_msgSend_setBytes_length_atIndex_(encoder, v1151, &v1862, 12, 5);
          *v1859 = v1796;
          *&v1859[8] = vdupq_n_s64(1uLL);
          *v1861 = v1846;
          *&v1861[8] = *&v1859[8];
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v1152, v1859, v1861);
        }

        if (v1102)
        {
          v1153 = 4;
          v1708 = vdupq_n_s64(8uLL);
          if ((v1817 & 0x400) == 0)
          {
            v1153 = 7;
          }

          v1742 = v1153;
          v1780 = v1092;
          do
          {
            v1207 = objc_msgSend_order(selfCopy, v1100, v1101);
            v1210 = v1207 - v1102;
            if (v1207 == v1102)
            {
              memset(v1860, 0, 20);
              *v1860 = objc_msgSend_numberOfRightHandSides(selfCopy, v1208, v1209);
              *&v1860[4] = v1846;
              *&v1860[8] = objc_msgSend_rowBytes(sideMatrixCopy, v1154, v1155);
              *&v1860[12] = 4 * objc_msgSend_numberOfRightHandSides(selfCopy, v1156, v1157);
              objc_msgSend_alpha(selfCopy, v1158, v1159);
              *&v1160 = v1160;
              *&v1860[16] = LODWORD(v1160);
              v1161 = (*v1860 + 15) >> 4;
              v1162 = (*&v1860[4] + 31) >> 5;
              objc_msgSend_setComputePipelineState_(encoder, v1163, v1715);
              v1166 = objc_msgSend_data(sideMatrixCopy, v1164, v1165);
              v1102 -= v1846;
              v1169 = objc_msgSend_rowBytes(sideMatrixCopy, v1167, v1168);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v1170, v1166, v1780 + v1169 * v1102, 0);
              v1171 = v1848;
              v1174 = objc_msgSend_data(v1848, v1172, v1173);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v1175, v1174, v1091, 1);
              objc_msgSend_setBytes_length_atIndex_(encoder, v1176, v1860, 20, 2);
              *v1859 = v1161;
              *&v1859[8] = v1162;
              v1177 = v1091;
              *&v1859[16] = 1;
              *v1861 = v1708;
              *&v1861[16] = 1;
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v1178, v1859, v1861);
              v1181 = v1804;
            }

            else
            {
              memset(v1859, 0, sizeof(v1859));
              *v1859 = objc_msgSend_numberOfRightHandSides(selfCopy, v1208, v1209);
              *&v1859[4] = v1846;
              *&v1859[8] = v1210;
              *&v1859[12] = objc_msgSend_rowBytes(solutionMatrix, v1211, v1212);
              *&v1859[16] = objc_msgSend_rowBytes(matrixCopy, v1213, v1214);
              *&v1859[20] = objc_msgSend_rowBytes(sideMatrixCopy, v1215, v1216);
              *&v1859[24] = 4 * objc_msgSend_numberOfRightHandSides(selfCopy, v1217, v1218);
              *&v1859[28] = -1082130432;
              objc_msgSend_alpha(selfCopy, v1219, v1220);
              *&v1221 = v1221;
              *&v1859[32] = LODWORD(v1221);
              v1814 = (*&v1859[4] + 65) >> 6;
              v1823 = (((4 * v1759) | 1) + *v1859) >> v1742;
              objc_msgSend_setComputePipelineState_(encoder, v1222, v1768);
              v1225 = objc_msgSend_data(solutionMatrix, v1223, v1224);
              v1228 = objc_msgSend_rowBytes(solutionMatrix, v1226, v1227);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v1229, v1225, v1834 + v1228 * v1102, 0);
              v1232 = objc_msgSend_data(matrixCopy, v1230, v1231);
              v1235 = objc_msgSend_dataType(matrixCopy, v1233, v1234) >> 3;
              v1181 = v1804;
              v1238 = objc_msgSend_rowBytes(matrixCopy, v1236, v1237);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v1239, v1232, v1750 + v1238 * (v1102 - v1846) + v1102 * v1235, 1);
              v1242 = objc_msgSend_data(sideMatrixCopy, v1240, v1241);
              v1245 = objc_msgSend_rowBytes(sideMatrixCopy, v1243, v1244);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v1246, v1242, v1780 + v1245 * (v1102 - v1846), 2);
              v1171 = v1848;
              v1249 = objc_msgSend_data(v1848, v1247, v1248);
              v1177 = v1091;
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v1250, v1249, v1091, 3);
              objc_msgSend_setBytes_length_atIndex_(encoder, v1251, v1859, 36, 4);
              *v1861 = v1823;
              *&v1861[8] = v1814;
              *&v1861[16] = 1;
              *v1860 = v1759;
              *&v1860[8] = xmmword_2399EE7D0;
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v1252, v1861, v1860);
              v1102 -= v1846;
              selfCopy = v1840;
            }

            *v1860 = v1846;
            *&v1860[4] = *&v1171[*MEMORY[0x277CD73B8]];
            *&v1860[8] = *&v1171[*MEMORY[0x277CD73B0]];
            *&v1865[8] = 0;
            *v1865 = 0;
            *v1865 = objc_msgSend_numberOfRightHandSides(selfCopy, v1179, v1180);
            *&v1865[4] = v1846;
            *&v1865[8] = 4 * objc_msgSend_numberOfRightHandSides(selfCopy, v1182, v1183);
            objc_msgSend_setComputePipelineState_(encoder, v1184, v1181);
            v1187 = objc_msgSend_data(v1171, v1185, v1186);
            v1190 = objc_msgSend_rowBytes(v1171, v1188, v1189);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v1191, v1187, v1190 * v1102, 0);
            v1194 = objc_msgSend_data(v1171, v1192, v1193);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v1195, v1194, v1177, 1);
            v1198 = objc_msgSend_data(solutionMatrix, v1196, v1197);
            v1201 = objc_msgSend_rowBytes(solutionMatrix, v1199, v1200);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v1202, v1198, v1834 + v1201 * v1102, 2);
            objc_msgSend_setBytes_length_atIndex_(encoder, v1203, v1860, 12, 3);
            objc_msgSend_setBytes_length_atIndex_(encoder, v1204, v1865, 12, 4);
            objc_msgSend_setBytes_length_atIndex_(encoder, v1205, &v1862, 12, 5);
            *v1859 = v1796;
            *&v1859[8] = vdupq_n_s64(1uLL);
            *v1861 = v1846;
            *&v1861[8] = *&v1859[8];
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v1206, v1859, v1861);
          }

          while (v1102);
        }

        goto LABEL_144;
      }

      return;
    }

    if (transpose)
    {
      if (v16 && objc_msgSend_numberOfRightHandSides(selfCopy, v17, v18))
      {
        v1766 = MPSLibrary::GetComputeState();
        v1811 = MPSLibrary::GetComputeState();
        v1698 = MPSLibrary::GetComputeState();
        objc_msgSend_unit(selfCopy, v619, v620);
        v1691 = MPSLibrary::GetComputeState();
        v1862 = objc_msgSend_columns(solutionMatrix, v621, v622);
        v1863 = objc_msgSend_rows(solutionMatrix, v623, v624);
        v1864 = objc_msgSend_rowBytes(solutionMatrix, v625, v626);
        v1802 = objc_msgSend_numberOfRightHandSides(selfCopy, v627, v628);
        v1830 = *&v1848[*MEMORY[0x277CD73B0]];
        v1793 = objc_msgSend_order(selfCopy, v629, v630);
        objc_msgSend_primarySourceMatrixOrigin(selfCopy, v631, v632);
        v635 = v15;
        matrixCopy3 = matrix;
        v637 = objc_msgSend_rowBytes(matrix, v633, v634);
        objc_msgSend_primarySourceMatrixOrigin(selfCopy, v638, v639);
        v640 = *&v1861[8];
        v643 = objc_msgSend_dataType(matrixCopy3, v641, v642);
        v644 = MEMORY[0x277CD73A8];
        v645 = *&matrixCopy3[*MEMORY[0x277CD73A8]] + v637 * *v1859 + v640 * (v643 >> 3);
        objc_msgSend_secondarySourceMatrixOrigin(selfCopy, v646, v647);
        v1787 = *v1859;
        v1776 = objc_msgSend_rowBytes(sideMatrix, v648, v649);
        objc_msgSend_secondarySourceMatrixOrigin(selfCopy, v650, v651);
        v1729 = *&v1861[8];
        v1720 = objc_msgSend_dataType(sideMatrix, v652, v653);
        v1714 = *(sideMatrix + *v644);
        objc_msgSend_resultMatrixOrigin(selfCopy, v654, v655);
        v1705 = *v1859;
        v1683 = objc_msgSend_rowBytes(solutionMatrix, v656, v657);
        objc_msgSend_resultMatrixOrigin(selfCopy, v658, v659);
        v1686 = *&v1861[8];
        v1682 = objc_msgSend_dataType(solutionMatrix, v660, v661);
        v662 = *(solutionMatrix + *v644);
        v665 = objc_msgSend_order(selfCopy, v663, v664);
        objc_msgSend_setComputePipelineState_(encoder, v666, v1691);
        *v1860 = v665;
        *&v1860[4] = v665;
        *&v1860[8] = objc_msgSend_rowBytes(matrixCopy3, v667, v668);
        *v1865 = v635;
        *&v1865[4] = v665;
        *&v1865[8] = objc_msgSend_rowBytes(v1848, v669, v670);
        v673 = objc_msgSend_data(matrixCopy3, v671, v672);
        v1739 = v645;
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v674, v673, v645, 0);
        v677 = objc_msgSend_data(v1848, v675, v676);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v678, v677, 0, 1);
        objc_msgSend_setBytes_length_atIndex_(encoder, v679, v1860, 12, 2);
        objc_msgSend_setBytes_length_atIndex_(encoder, v680, v1865, 12, 3);
        v682 = v635 - 1;
        v683 = 4;
        v684 = 64;
        if ((v1817 & 0x400) != 0)
        {
          v684 = 4;
        }

        v1758 = v684;
        if ((v1817 & 0x400) != 0)
        {
          v683 = 8;
        }

        v1747 = v683;
        v685 = v1793 * v1830;
        v686 = 5;
        if ((v1817 & 0x400) == 0)
        {
          v686 = 6;
        }

        *v1859 = (v665 + v682) >> v686;
        *&v1859[8] = vdupq_n_s64(1uLL);
        v687 = v662 + v1683 * v1705 + v1686 * (v1682 >> 3);
        *v1861 = v635;
        *&v1861[8] = *&v1859[8];
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v681, v1859, v1861);
        v690 = objc_msgSend_order(selfCopy, v688, v689) & v682;
        v695 = objc_msgSend_order(selfCopy, v691, v692) - v690;
        v1794 = v687;
        if (v690)
        {
          v696 = objc_msgSend_numberOfRightHandSides(selfCopy, v693, v694);
          *v1860 = v696;
          *&v1860[4] = v690;
          *&v1860[8] = objc_msgSend_rowBytes(sideMatrixCopy, v697, v698);
          *&v1860[12] = 4 * objc_msgSend_numberOfRightHandSides(selfCopy, v699, v700);
          objc_msgSend_alpha(selfCopy, v701, v702);
          *&v703 = v703;
          *&v1860[16] = LODWORD(v703);
          v704 = (v696 + 15) >> 4;
          objc_msgSend_setComputePipelineState_(encoder, v705, v1698);
          v708 = objc_msgSend_data(sideMatrixCopy, v706, v707);
          v711 = objc_msgSend_rowBytes(sideMatrixCopy, v709, v710);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v712, v708, v1714 + v1776 * v1787 + v1729 * (v1720 >> 3) + v711 * v695, 0);
          v715 = objc_msgSend_data(v1848, v713, v714);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v716, v715, v685, 1);
          objc_msgSend_setBytes_length_atIndex_(encoder, v717, v1860, 20, 2);
          *v1859 = v704;
          *&v1859[8] = (v690 + 31) >> 5;
          *&v1859[16] = 1;
          *v1861 = vdupq_n_s64(8uLL);
          *&v1861[16] = 1;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v718, v1859, v1861);
          *v1865 = v690;
          *&v1865[4] = *&v1848[*MEMORY[0x277CD73B8]];
          *&v1865[8] = *&v1848[*MEMORY[0x277CD73B0]];
          v1856 = objc_msgSend_numberOfRightHandSides(selfCopy, v719, v720);
          v1857 = v690;
          v1858 = 4 * objc_msgSend_numberOfRightHandSides(selfCopy, v721, v722);
          objc_msgSend_setComputePipelineState_(encoder, v723, v1811);
          v726 = objc_msgSend_data(v1848, v724, v725);
          v729 = objc_msgSend_rowBytes(v1848, v727, v728);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v730, v726, v729 * v695, 0);
          v733 = objc_msgSend_data(v1848, v731, v732);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v734, v733, v685, 1);
          v737 = objc_msgSend_data(solutionMatrix, v735, v736);
          v740 = objc_msgSend_rowBytes(solutionMatrix, v738, v739);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v741, v737, v687 + v740 * v695, 2);
          objc_msgSend_setBytes_length_atIndex_(encoder, v742, v1865, 12, 3);
          objc_msgSend_setBytes_length_atIndex_(encoder, v743, &v1856, 12, 4);
          objc_msgSend_setBytes_length_atIndex_(encoder, v744, &v1862, 12, 5);
          *v1859 = v1802;
          *&v1859[8] = vdupq_n_s64(1uLL);
          *v1861 = v1846;
          *&v1861[8] = *&v1859[8];
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v745, v1859, v1861);
        }

        v1777 = v1714 + v1776 * v1787 + v1729 * (v1720 >> 3);
        if (v695)
        {
          if ((v1817 & 0x400) != 0)
          {
            v746 = 4;
          }

          else
          {
            v746 = 8;
          }

          v747 = 5;
          if ((v1817 & 0x400) != 0)
          {
            v747 = 6;
          }

          v1721 = v747;
          v1730 = v746;
          do
          {
            v803 = objc_msgSend_order(selfCopy, v693, v694);
            v806 = v803 - v695;
            if (v803 == v695)
            {
              memset(v1860, 0, 20);
              v748 = v1846;
              *v1860 = objc_msgSend_numberOfRightHandSides(selfCopy, v804, v805);
              *&v1860[4] = v1846;
              *&v1860[8] = objc_msgSend_rowBytes(sideMatrixCopy, v749, v750);
              *&v1860[12] = 4 * objc_msgSend_numberOfRightHandSides(selfCopy, v751, v752);
              objc_msgSend_alpha(selfCopy, v753, v754);
              *&v755 = v755;
              *&v1860[16] = LODWORD(v755);
              v756 = (*v1860 + 15) >> 4;
              v757 = (*&v1860[4] + 31) >> 5;
              objc_msgSend_setComputePipelineState_(encoder, v758, v1698);
              v761 = objc_msgSend_data(sideMatrixCopy, v759, v760);
              v695 -= v1846;
              v764 = objc_msgSend_rowBytes(sideMatrixCopy, v762, v763);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v765, v761, v1777 + v764 * v695, 0);
              v766 = v1848;
              v769 = objc_msgSend_data(v1848, v767, v768);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v770, v769, v685, 1);
              objc_msgSend_setBytes_length_atIndex_(encoder, v771, v1860, 20, 2);
              *v1859 = v756;
              *&v1859[8] = v757;
              v772 = v685;
              *&v1859[16] = 1;
              *v1861 = vdupq_n_s64(8uLL);
              *&v1861[16] = 1;
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v773, v1859, v1861);
              v776 = v1794;
              v777 = v1811;
            }

            else
            {
              memset(v1859, 0, sizeof(v1859));
              v748 = v1846;
              *v1859 = objc_msgSend_numberOfRightHandSides(selfCopy, v804, v805);
              *&v1859[4] = v1846;
              *&v1859[8] = v806;
              *&v1859[12] = objc_msgSend_rowBytes(solutionMatrix, v807, v808);
              *&v1859[16] = objc_msgSend_rowBytes(matrixCopy, v809, v810);
              *&v1859[20] = objc_msgSend_rowBytes(sideMatrixCopy, v811, v812);
              *&v1859[24] = 4 * objc_msgSend_numberOfRightHandSides(selfCopy, v813, v814);
              *&v1859[28] = -1082130432;
              objc_msgSend_alpha(selfCopy, v815, v816);
              *&v817 = v817;
              *&v1859[32] = LODWORD(v817);
              v1821 = (((8 * v1747) | 1) + *&v1859[4]) >> v1721;
              v1831 = (((4 * v1758) | 1) + *v1859) >> v1730;
              objc_msgSend_setComputePipelineState_(encoder, v818, v1766);
              v821 = objc_msgSend_data(solutionMatrix, v819, v820);
              v824 = objc_msgSend_rowBytes(solutionMatrix, v822, v823);
              v776 = v1794;
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v825, v821, v1794 + v824 * v695, 0);
              v828 = objc_msgSend_data(matrixCopy, v826, v827);
              v831 = objc_msgSend_dataType(solutionMatrix, v829, v830) >> 3;
              v834 = objc_msgSend_rowBytes(matrixCopy, v832, v833);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v835, v828, v1739 + v834 * v695 + (v695 - v1846) * v831, 1);
              v838 = objc_msgSend_data(sideMatrixCopy, v836, v837);
              v841 = objc_msgSend_rowBytes(sideMatrixCopy, v839, v840);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v842, v838, v1777 + v841 * (v695 - v1846), 2);
              v766 = v1848;
              v845 = objc_msgSend_data(v1848, v843, v844);
              v772 = v685;
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v846, v845, v685, 3);
              objc_msgSend_setBytes_length_atIndex_(encoder, v847, v1859, 36, 4);
              *v1861 = v1831;
              *&v1861[8] = v1821;
              v777 = v1811;
              *&v1861[16] = 1;
              *v1860 = v1758;
              *&v1860[8] = v1747;
              *&v1860[16] = 1;
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v848, v1861, v1860);
              v695 -= v1846;
              selfCopy = v1840;
            }

            *v1860 = v748;
            *&v1860[4] = *&v766[*MEMORY[0x277CD73B8]];
            *&v1860[8] = *&v766[*MEMORY[0x277CD73B0]];
            *&v1865[8] = 0;
            *v1865 = 0;
            *v1865 = objc_msgSend_numberOfRightHandSides(selfCopy, v774, v775);
            *&v1865[4] = v748;
            *&v1865[8] = 4 * objc_msgSend_numberOfRightHandSides(selfCopy, v778, v779);
            objc_msgSend_setComputePipelineState_(encoder, v780, v777);
            v783 = objc_msgSend_data(v766, v781, v782);
            v786 = objc_msgSend_rowBytes(v766, v784, v785);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v787, v783, v786 * v695, 0);
            v790 = objc_msgSend_data(v766, v788, v789);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v791, v790, v772, 1);
            v794 = objc_msgSend_data(solutionMatrix, v792, v793);
            v797 = objc_msgSend_rowBytes(solutionMatrix, v795, v796);
            objc_msgSend_setBuffer_offset_atIndex_(encoder, v798, v794, v776 + v797 * v695, 2);
            objc_msgSend_setBytes_length_atIndex_(encoder, v799, v1860, 12, 3);
            objc_msgSend_setBytes_length_atIndex_(encoder, v800, v1865, 12, 4);
            objc_msgSend_setBytes_length_atIndex_(encoder, v801, &v1862, 12, 5);
            *v1859 = v1802;
            *&v1859[8] = vdupq_n_s64(1uLL);
            *v1861 = v748;
            *&v1861[8] = *&v1859[8];
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v802, v1859, v1861);
          }

          while (v695);
        }

        goto LABEL_144;
      }

      return;
    }

    if (!v16 || !objc_msgSend_numberOfRightHandSides(selfCopy, v17, v18))
    {
      return;
    }

    v1816 = MPSLibrary::GetComputeState();
    v1807 = MPSLibrary::GetComputeState();
    objc_msgSend_unit(selfCopy, v1479, v1480);
    v1753 = MPSLibrary::GetComputeState();
    v1483 = objc_msgSend_numberOfRightHandSides(selfCopy, v1481, v1482);
    *v1859 = v1483;
    *&v1859[4] = v15;
    *&v1859[12] = objc_msgSend_rowBytes(solutionMatrix, v1484, v1485);
    *&v1859[16] = objc_msgSend_rowBytes(matrix, v1486, v1487);
    *&v1859[20] = objc_msgSend_rowBytes(sideMatrix, v1488, v1489);
    *&v1859[24] = 4 * objc_msgSend_numberOfRightHandSides(selfCopy, v1490, v1491);
    *&v1859[28] = -1082130432;
    objc_msgSend_alpha(selfCopy, v1492, v1493);
    *&v1494 = v1494;
    *&v1859[32] = LODWORD(v1494);
    v1856 = *&v1848[*MEMORY[0x277CD7390]];
    v1857 = *&v1848[*MEMORY[0x277CD73B8]];
    v1495 = MEMORY[0x277CD73B0];
    v1858 = *&v1848[*MEMORY[0x277CD73B0]];
    v1853 = objc_msgSend_numberOfRightHandSides(selfCopy, v1496, v1497);
    v1854 = v15;
    v1855 = 4 * objc_msgSend_numberOfRightHandSides(selfCopy, v1498, v1499);
    v1850 = objc_msgSend_columns(solutionMatrix, v1500, v1501);
    v1851 = objc_msgSend_rows(solutionMatrix, v1502, v1503);
    v1852 = objc_msgSend_rowBytes(solutionMatrix, v1504, v1505);
    v1789 = objc_msgSend_numberOfRightHandSides(selfCopy, v1506, v1507);
    v1837 = *&v1848[*v1495];
    v1782 = objc_msgSend_order(selfCopy, v1508, v1509);
    objc_msgSend_primarySourceMatrixOrigin(selfCopy, v1510, v1511);
    v1514 = objc_msgSend_rowBytes(matrix, v1512, v1513);
    objc_msgSend_primarySourceMatrixOrigin(selfCopy, v1515, v1516);
    v1519 = objc_msgSend_dataType(matrix, v1517, v1518);
    matrixCopy4 = matrix;
    v1521 = MEMORY[0x277CD73A8];
    v1522 = *&matrixCopy4[*MEMORY[0x277CD73A8]] + v1514 * *v1861 + *&v1860[8] * (v1519 >> 3);
    objc_msgSend_secondarySourceMatrixOrigin(selfCopy, v1523, v1524);
    v1761 = objc_msgSend_rowBytes(sideMatrix, v1525, v1526);
    objc_msgSend_secondarySourceMatrixOrigin(selfCopy, v1527, v1528);
    v1734 = objc_msgSend_dataType(sideMatrix, v1529, v1530);
    v1725 = *(sideMatrix + *v1521);
    objc_msgSend_resultMatrixOrigin(selfCopy, v1531, v1532);
    v1702 = objc_msgSend_rowBytes(solutionMatrix, v1533, v1534);
    objc_msgSend_resultMatrixOrigin(selfCopy, v1535, v1536);
    v1539 = objc_msgSend_dataType(solutionMatrix, v1537, v1538);
    v1540 = *(solutionMatrix + *v1521);
    v1543 = objc_msgSend_order(selfCopy, v1541, v1542);
    objc_msgSend_setComputePipelineState_(encoder, v1544, v1753);
    *v1865 = v1543;
    *&v1865[4] = v1543;
    *&v1865[8] = objc_msgSend_rowBytes(matrixCopy4, v1545, v1546);
    v1862 = v1846;
    v1863 = v1543;
    v1864 = objc_msgSend_rowBytes(v1848, v1547, v1548);
    v1551 = objc_msgSend_data(matrixCopy4, v1549, v1550);
    v1798 = v1522;
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v1552, v1551, v1522, 0);
    v1555 = objc_msgSend_data(v1848, v1553, v1554);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v1556, v1555, 0, 1);
    objc_msgSend_setBytes_length_atIndex_(encoder, v1557, v1865, 12, 2);
    objc_msgSend_setBytes_length_atIndex_(encoder, v1558, &v1862, 12, 3);
    v1560 = v1846 + v1543 - 1;
    v1561 = 4;
    if ((v1817 & 0x400) != 0)
    {
      v1562 = 4;
    }

    else
    {
      v1562 = 32;
    }

    if ((v1817 & 0x400) == 0)
    {
      v1561 = 7;
    }

    v1563 = (4 * v1562 + v1483 + 1) >> v1561;
    v1564 = v1782 * v1837;
    v1565 = v1725 + v1761 * *v1861 + *&v1860[8] * (v1734 >> 3);
    v1566 = v1540 + v1702 * *v1861;
    v1567 = selfCopy;
    v1568 = 5;
    if ((v1817 & 0x400) == 0)
    {
      v1568 = 6;
    }

    *v1861 = v1560 >> v1568;
    *&v1861[8] = vdupq_n_s64(1uLL);
    v1838 = v1566 + *&v1860[8] * (v1539 >> 3);
    *v1860 = v1846;
    *&v1860[8] = *&v1861[8];
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v1559, v1861, v1860);
    v1571 = objc_msgSend_order(selfCopy, v1569, v1570);
    v1574 = 0;
    if (v1571 >= v1846)
    {
      v1574 = 0;
      v1762 = vdupq_n_s64(1uLL);
      do
      {
        *&v1859[8] = v1574;
        objc_msgSend_setComputePipelineState_(encoder, v1572, v1816);
        v1577 = objc_msgSend_data(solutionMatrix, v1575, v1576);
        objc_msgSend_rowBytes(solutionMatrix, v1578, v1579);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v1580, v1577, v1838, 0);
        v1583 = objc_msgSend_data(matrixCopy, v1581, v1582);
        v1586 = objc_msgSend_rowBytes(matrixCopy, v1584, v1585);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v1587, v1583, v1798 + v1586 * v1574, 1);
        v1590 = objc_msgSend_data(sideMatrix, v1588, v1589);
        v1593 = objc_msgSend_rowBytes(sideMatrix, v1591, v1592);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v1594, v1590, v1565 + v1593 * v1574, 2);
        v1597 = objc_msgSend_data(v1848, v1595, v1596);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v1598, v1597, v1564, 3);
        objc_msgSend_setBytes_length_atIndex_(encoder, v1599, v1859, 36, 4);
        *v1861 = v1563;
        *&v1861[8] = (v1846 + 65) >> 6;
        *&v1861[16] = 1;
        *v1860 = v1562;
        *&v1860[8] = xmmword_2399EE7D0;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v1600, v1861, v1860);
        objc_msgSend_setComputePipelineState_(encoder, v1601, v1807);
        v1604 = objc_msgSend_data(v1848, v1602, v1603);
        v1607 = objc_msgSend_rowBytes(v1848, v1605, v1606);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v1608, v1604, v1607 * v1574, 0);
        v1611 = objc_msgSend_data(v1848, v1609, v1610);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v1612, v1611, v1564, 1);
        v1615 = objc_msgSend_data(solutionMatrix, v1613, v1614);
        v1618 = objc_msgSend_rowBytes(solutionMatrix, v1616, v1617);
        v1619 = v1615;
        v1567 = v1840;
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v1620, v1619, v1838 + v1618 * v1574, 2);
        objc_msgSend_setBytes_length_atIndex_(encoder, v1621, &v1856, 12, 3);
        objc_msgSend_setBytes_length_atIndex_(encoder, v1622, &v1853, 12, 4);
        objc_msgSend_setBytes_length_atIndex_(encoder, v1623, &v1850, 12, 5);
        *v1861 = v1789;
        *&v1861[8] = v1762;
        *v1860 = v1846;
        *&v1860[8] = v1762;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v1624, v1861, v1860);
        v1574 += v1846;
      }

      while (v1846 + v1574 <= objc_msgSend_order(v1840, v1625, v1626));
    }

    v1770 = v1563;
    v1627 = v1564;
    if (v1574 < objc_msgSend_order(v1567, v1572, v1573))
    {
      v1630 = objc_msgSend_order(v1567, v1628, v1629);
      *&v1859[4] = v1630 - v1574;
      *&v1859[8] = v1574;
      v1844 = (v1630 - v1574 + 65) >> 6;
      v1856 = v1630 - v1574;
      v1854 = v1630 - v1574;
      objc_msgSend_setComputePipelineState_(encoder, v1631, v1816);
      v1634 = objc_msgSend_data(solutionMatrix, v1632, v1633);
      objc_msgSend_rowBytes(solutionMatrix, v1635, v1636);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v1637, v1634, v1838, 0);
      v1640 = objc_msgSend_data(matrixCopy, v1638, v1639);
      v1643 = objc_msgSend_rowBytes(matrixCopy, v1641, v1642);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v1644, v1640, v1798 + v1643 * v1574, 1);
      v1647 = objc_msgSend_data(sideMatrix, v1645, v1646);
      v1650 = objc_msgSend_rowBytes(sideMatrix, v1648, v1649);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v1651, v1647, v1565 + v1650 * v1574, 2);
      v1654 = objc_msgSend_data(v1848, v1652, v1653);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v1655, v1654, v1627, 3);
      objc_msgSend_setBytes_length_atIndex_(encoder, v1656, v1859, 36, 4);
      *v1861 = v1770;
      *&v1861[8] = v1844;
      *&v1861[16] = 1;
      *v1860 = v1562;
      *&v1860[8] = xmmword_2399EE7D0;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v1657, v1861, v1860);
      objc_msgSend_setComputePipelineState_(encoder, v1658, v1807);
      v1661 = objc_msgSend_data(v1848, v1659, v1660);
      v1664 = objc_msgSend_rowBytes(v1848, v1662, v1663);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v1665, v1661, v1664 * v1574, 0);
      v1668 = objc_msgSend_data(v1848, v1666, v1667);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v1669, v1668, v1627, 1);
      v1672 = objc_msgSend_data(solutionMatrix, v1670, v1671);
      v1675 = objc_msgSend_rowBytes(solutionMatrix, v1673, v1674);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v1676, v1672, v1838 + v1675 * v1574, 2);
      objc_msgSend_setBytes_length_atIndex_(encoder, v1677, &v1856, 12, 3);
      objc_msgSend_setBytes_length_atIndex_(encoder, v1678, &v1853, 12, 4);
      objc_msgSend_setBytes_length_atIndex_(encoder, v1679, &v1850, 12, 5);
      *v1861 = v1789;
      *&v1861[8] = vdupq_n_s64(1uLL);
      *v1860 = v1846;
      *&v1860[8] = *&v1861[8];
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v1680, v1861, v1860);
    }

    goto LABEL_96;
  }

  if (upper)
  {
    if (transpose)
    {
      if (v16 && objc_msgSend_numberOfRightHandSides(selfCopy, v17, v18))
      {
        v1763 = MPSLibrary::GetComputeState();
        v1808 = MPSLibrary::GetComputeState();
        v1718 = MPSLibrary::GetComputeState();
        objc_msgSend_unit(selfCopy, v19, v20);
        v1703 = MPSLibrary::GetComputeState();
        solutionMatrixCopy3 = solutionMatrix;
        v1862 = objc_msgSend_columns(solutionMatrix, v22, v23);
        v1863 = objc_msgSend_rows(solutionMatrix, v24, v25);
        v1864 = objc_msgSend_rowBytes(solutionMatrix, v26, v27);
        v1790 = objc_msgSend_numberOfRightHandSides(selfCopy, v28, v29);
        v1825 = *&v1848[*MEMORY[0x277CD73B0]];
        v1799 = objc_msgSend_order(selfCopy, v30, v31);
        objc_msgSend_primarySourceMatrixOrigin(selfCopy, v32, v33);
        matrixCopy5 = matrix;
        v37 = objc_msgSend_rowBytes(matrix, v34, v35);
        objc_msgSend_primarySourceMatrixOrigin(selfCopy, v38, v39);
        v40 = *&v1861[8];
        v43 = objc_msgSend_dataType(matrixCopy5, v41, v42);
        v44 = MEMORY[0x277CD73A8];
        v45 = *&matrixCopy5[*MEMORY[0x277CD73A8]] + v37 * *v1859 + v40 * (v43 >> 3);
        objc_msgSend_secondarySourceMatrixOrigin(selfCopy, v46, v47);
        v1771 = objc_msgSend_rowBytes(sideMatrix, v48, v49);
        objc_msgSend_secondarySourceMatrixOrigin(selfCopy, v50, v51);
        v1735 = *&v1861[8];
        v1726 = objc_msgSend_dataType(sideMatrix, v52, v53);
        v1710 = *(sideMatrix + *v44);
        objc_msgSend_resultMatrixOrigin(selfCopy, v54, v55);
        v56 = selfCopy;
        v57 = *v1859;
        v1695 = objc_msgSend_rowBytes(solutionMatrix, v58, v59);
        objc_msgSend_resultMatrixOrigin(v56, v60, v61);
        v62 = *&v1861[8];
        v1689 = objc_msgSend_dataType(solutionMatrix, v63, v64);
        v65 = *(solutionMatrix + *v44);
        v68 = objc_msgSend_order(v56, v66, v67);
        objc_msgSend_setComputePipelineState_(encoder, v69, v1703);
        *v1860 = v68;
        *&v1860[4] = v68;
        *&v1860[8] = objc_msgSend_rowBytes(matrixCopy5, v70, v71);
        *v1865 = v1846;
        *&v1865[4] = v68;
        *&v1865[8] = objc_msgSend_rowBytes(v1848, v72, v73);
        v74 = matrixCopy5;
        v75 = v1846;
        v78 = objc_msgSend_data(v74, v76, v77);
        v1744 = v45;
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v79, v78, v45, 0);
        v82 = objc_msgSend_data(v1848, v80, v81);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v83, v82, 0, 1);
        objc_msgSend_setBytes_length_atIndex_(encoder, v84, v1860, 12, 2);
        objc_msgSend_setBytes_length_atIndex_(encoder, v85, v1865, 12, 3);
        v87 = v1846 - 1;
        v88 = 8;
        if ((v1817 & 0x400) == 0)
        {
          v88 = 32;
        }

        v1754 = v88;
        v89 = v1799 * v1825;
        v1783 = v1710 + v1771 * *v1859 + v1735 * (v1726 >> 3);
        v90 = 5;
        if ((v1817 & 0x400) == 0)
        {
          v90 = 6;
        }

        *v1859 = (v68 + v87) >> v90;
        *&v1859[8] = vdupq_n_s64(1uLL);
        v91 = v65 + v1695 * v57 + v62 * (v1689 >> 3);
        *v1861 = v1846;
        *&v1861[8] = *&v1859[8];
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v86, v1859, v1861);
        v94 = objc_msgSend_order(v56, v92, v93) & v87;
        v99 = objc_msgSend_order(v56, v95, v96) - v94;
        v1772 = v91;
        if (v94)
        {
          *v1860 = v94;
          v100 = objc_msgSend_numberOfRightHandSides(v56, v97, v98);
          *&v1860[4] = v100;
          *&v1860[8] = objc_msgSend_rowBytes(sideMatrixCopy, v101, v102);
          *&v1860[12] = *&v1848[*MEMORY[0x277CD73B0]];
          objc_msgSend_alpha(v56, v103, v104);
          *&v105 = v105;
          *&v1860[16] = LODWORD(v105);
          v1826 = (v100 + 31) >> 5;
          objc_msgSend_setComputePipelineState_(encoder, v106, v1718);
          v109 = objc_msgSend_data(sideMatrixCopy, v107, v108);
          v112 = objc_msgSend_dataType(sideMatrixCopy, v110, v111);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v113, v109, v1783 + v99 * (v112 >> 3), 0);
          v116 = objc_msgSend_data(v1848, v114, v115);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v117, v116, v89, 1);
          objc_msgSend_setBytes_length_atIndex_(encoder, v118, v1860, 20, 2);
          *v1859 = (v94 + 15) >> 4;
          *&v1859[8] = v1826;
          *&v1859[16] = 1;
          *v1861 = vdupq_n_s64(8uLL);
          *&v1861[16] = 1;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v119, v1859, v1861);
          *v1865 = v94;
          *&v1865[4] = *&v1848[*MEMORY[0x277CD73B8]];
          v120 = MEMORY[0x277CD73B0];
          *&v1865[8] = *&v1848[*MEMORY[0x277CD73B0]];
          v1856 = v94;
          v1857 = objc_msgSend_numberOfRightHandSides(v56, v121, v122);
          v1858 = *&v1848[*v120];
          objc_msgSend_setComputePipelineState_(encoder, v123, v1808);
          v126 = objc_msgSend_data(v1848, v124, v125);
          v129 = objc_msgSend_rowBytes(v1848, v127, v128);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v130, v126, v129 * v99, 0);
          v133 = objc_msgSend_data(v1848, v131, v132);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v134, v133, v89, 1);
          v137 = objc_msgSend_data(solutionMatrix, v135, v136);
          v140 = objc_msgSend_dataType(solutionMatrix, v138, v139);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v141, v137, v91 + v99 * (v140 >> 3), 2);
          objc_msgSend_setBytes_length_atIndex_(encoder, v142, v1865, 12, 3);
          objc_msgSend_setBytes_length_atIndex_(encoder, v143, &v1856, 12, 4);
          objc_msgSend_setBytes_length_atIndex_(encoder, v144, &v1862, 12, 5);
          *v1859 = v1790;
          *&v1859[8] = vdupq_n_s64(1uLL);
          *v1861 = v1846;
          *&v1861[8] = *&v1859[8];
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v145, v1859, v1861);
        }

        if (v99)
        {
          v146 = 5;
          if ((v1817 & 0x400) == 0)
          {
            v146 = 7;
          }

          v1736 = v146;
          v1711 = vdupq_n_s64(8uLL);
          do
          {
            v393 = objc_msgSend_order(v56, v97, v98);
            v396 = v393 - v99;
            v397 = MEMORY[0x277CD73B0];
            if (v393 == v99)
            {
              *&v1860[12] = 0;
              *&v1860[4] = 0;
              *v1860 = v75;
              *&v1860[4] = objc_msgSend_numberOfRightHandSides(v56, v394, v395);
              *&v1860[8] = objc_msgSend_rowBytes(sideMatrixCopy, v343, v344);
              *&v1860[12] = *&v1848[*v397];
              objc_msgSend_alpha(v56, v345, v346);
              *&v347 = v347;
              *&v1860[16] = LODWORD(v347);
              v348 = (*v1860 + 15) >> 4;
              v349 = (*&v1860[4] + 31) >> 5;
              encoderCopy2 = encoder;
              objc_msgSend_setComputePipelineState_(encoder, v351, v1718);
              v354 = objc_msgSend_data(sideMatrixCopy, v352, v353);
              v99 -= v75;
              v357 = objc_msgSend_dataType(sideMatrixCopy, v355, v356);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v358, v354, v1783 + v99 * (v357 >> 3), 0);
              v361 = objc_msgSend_data(v1848, v359, v360);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v362, v361, v89, 1);
              objc_msgSend_setBytes_length_atIndex_(encoder, v363, v1860, 20, 2);
              *v1859 = v348;
              *&v1859[8] = v349;
              v364 = v89;
              solutionMatrixCopy3 = solutionMatrix;
              *&v1859[16] = 1;
              *v1861 = v1711;
              *&v1861[16] = 1;
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v365, v1859, v1861);
              v368 = v1772;
            }

            else
            {
              memset(&v1859[4], 0, 32);
              *v1859 = v75;
              *&v1859[4] = objc_msgSend_numberOfRightHandSides(v56, v394, v395);
              *&v1859[8] = v396;
              *&v1859[12] = objc_msgSend_rowBytes(matrixCopy, v398, v399);
              *&v1859[16] = objc_msgSend_rowBytes(solutionMatrixCopy3, v400, v401);
              *&v1859[20] = objc_msgSend_rowBytes(sideMatrixCopy, v402, v403);
              *&v1859[24] = *&v1848[*v397];
              *&v1859[28] = -1082130432;
              objc_msgSend_alpha(v56, v404, v405);
              *&v406 = v406;
              *&v1859[32] = LODWORD(v406);
              v1819 = (((4 * v1754) | 1) + *&v1859[4]) >> v1736;
              v1828 = (*v1859 + 33) >> 5;
              encoderCopy2 = encoder;
              objc_msgSend_setComputePipelineState_(encoder, v407, v1763);
              v410 = objc_msgSend_data(matrixCopy, v408, v409);
              v413 = v1744 + objc_msgSend_rowBytes(matrixCopy, v411, v412) * (v99 - v1846);
              v75 = v1846;
              v416 = v413 + v99 * (objc_msgSend_dataType(matrixCopy, v414, v415) >> 3);
              solutionMatrixCopy3 = solutionMatrix;
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v417, v410, v416, 0);
              v420 = objc_msgSend_data(solutionMatrix, v418, v419);
              v423 = objc_msgSend_dataType(solutionMatrix, v421, v422);
              v368 = v1772;
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v424, v420, v1772 + v99 * (v423 >> 3), 1);
              v427 = objc_msgSend_data(sideMatrixCopy, v425, v426);
              v430 = objc_msgSend_dataType(sideMatrixCopy, v428, v429);
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v431, v427, v1783 + (v99 - v1846) * (v430 >> 3), 2);
              v434 = objc_msgSend_data(v1848, v432, v433);
              v364 = v89;
              objc_msgSend_setBuffer_offset_atIndex_(encoder, v435, v434, v89, 3);
              objc_msgSend_setBytes_length_atIndex_(encoder, v436, v1859, 36, 4);
              *v1861 = v1828;
              *&v1861[8] = v1819;
              *&v1861[16] = 1;
              *v1860 = 8;
              *&v1860[8] = v1754;
              *&v1860[16] = 1;
              objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v437, v1861, v1860);
              v99 -= v1846;
            }

            *v1860 = v75;
            *&v1860[4] = *&v1848[*MEMORY[0x277CD73B8]];
            v369 = MEMORY[0x277CD73B0];
            *&v1860[8] = *&v1848[*MEMORY[0x277CD73B0]];
            *&v1865[4] = 0;
            *v1865 = v75;
            *&v1865[4] = objc_msgSend_numberOfRightHandSides(v1840, v366, v367);
            *&v1865[8] = *&v1848[*v369];
            objc_msgSend_setComputePipelineState_(encoderCopy2, v370, v1808);
            v373 = objc_msgSend_data(v1848, v371, v372);
            v376 = objc_msgSend_rowBytes(v1848, v374, v375);
            objc_msgSend_setBuffer_offset_atIndex_(encoderCopy2, v377, v373, v376 * v99, 0);
            v380 = objc_msgSend_data(v1848, v378, v379);
            objc_msgSend_setBuffer_offset_atIndex_(encoderCopy2, v381, v380, v364, 1);
            v384 = objc_msgSend_data(solutionMatrixCopy3, v382, v383);
            v387 = objc_msgSend_dataType(solutionMatrixCopy3, v385, v386);
            objc_msgSend_setBuffer_offset_atIndex_(encoderCopy2, v388, v384, v368 + v99 * (v387 >> 3), 2);
            objc_msgSend_setBytes_length_atIndex_(encoderCopy2, v389, v1860, 12, 3);
            objc_msgSend_setBytes_length_atIndex_(encoderCopy2, v390, v1865, 12, 4);
            objc_msgSend_setBytes_length_atIndex_(encoderCopy2, v391, &v1862, 12, 5);
            *v1859 = v1790;
            *&v1859[8] = vdupq_n_s64(1uLL);
            *v1861 = v75;
            *&v1861[8] = *&v1859[8];
            objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoderCopy2, v392, v1859, v1861);
            v56 = v1840;
          }

          while (v99);
        }

LABEL_144:
        MPSLibrary::ReleaseComputeState();
        MPSLibrary::ReleaseComputeState();
        goto LABEL_145;
      }

      return;
    }

    if (!v16 || !objc_msgSend_numberOfRightHandSides(selfCopy, v17, v18))
    {
      return;
    }

    v1832 = MPSLibrary::GetComputeState();
    v1812 = MPSLibrary::GetComputeState();
    objc_msgSend_unit(selfCopy, v849, v850);
    v1740 = MPSLibrary::GetComputeState();
    *v1859 = v15;
    DWORD2(v1778) = objc_msgSend_numberOfRightHandSides(selfCopy, v851, v852);
    *&v1859[4] = DWORD2(v1778);
    *&v1859[12] = objc_msgSend_rowBytes(matrix, v853, v854);
    *&v1859[16] = objc_msgSend_rowBytes(solutionMatrix, v855, v856);
    *&v1859[20] = objc_msgSend_rowBytes(sideMatrix, v857, v858);
    v859 = MEMORY[0x277CD73B0];
    *&v1859[24] = *&v1848[*MEMORY[0x277CD73B0]];
    *&v1859[28] = -1082130432;
    objc_msgSend_alpha(selfCopy, v860, v861);
    *&v862 = v862;
    *&v1859[32] = LODWORD(v862);
    v1856 = *&v1848[*MEMORY[0x277CD7390]];
    v1857 = *&v1848[*MEMORY[0x277CD73B8]];
    v1858 = *&v1848[*v859];
    v1853 = v15;
    v1854 = objc_msgSend_numberOfRightHandSides(selfCopy, v863, v864);
    v1855 = *&v1848[*v859];
    v1850 = objc_msgSend_columns(solutionMatrix, v865, v866);
    v1851 = objc_msgSend_rows(solutionMatrix, v867, v868);
    v1852 = objc_msgSend_rowBytes(solutionMatrix, v869, v870);
    v1795 = objc_msgSend_numberOfRightHandSides(selfCopy, v871, v872);
    *&v1778 = *&v1848[*v859];
    v1767 = objc_msgSend_order(selfCopy, v873, v874);
    objc_msgSend_primarySourceMatrixOrigin(selfCopy, v875, v876);
    v879 = objc_msgSend_rowBytes(matrix, v877, v878);
    objc_msgSend_primarySourceMatrixOrigin(selfCopy, v880, v881);
    v884 = objc_msgSend_dataType(matrix, v882, v883);
    v885 = MEMORY[0x277CD73A8];
    v886 = *&matrixCopy[*MEMORY[0x277CD73A8]] + v879 * *v1861 + *&v1860[8] * (v884 >> 3);
    objc_msgSend_secondarySourceMatrixOrigin(selfCopy, v887, v888);
    v1748 = objc_msgSend_rowBytes(sideMatrix, v889, v890);
    objc_msgSend_secondarySourceMatrixOrigin(selfCopy, v891, v892);
    v1706 = objc_msgSend_dataType(sideMatrix, v893, v894);
    v1699 = *(sideMatrix + *v885);
    objc_msgSend_resultMatrixOrigin(selfCopy, v895, v896);
    v1692 = *v1861;
    v1687 = objc_msgSend_rowBytes(solutionMatrix, v897, v898);
    objc_msgSend_resultMatrixOrigin(selfCopy, v899, v900);
    v903 = objc_msgSend_dataType(solutionMatrix, v901, v902);
    v904 = *v885;
    v905 = selfCopy;
    v906 = matrixCopy;
    v907 = *(solutionMatrix + v904);
    v910 = objc_msgSend_order(v905, v908, v909);
    objc_msgSend_setComputePipelineState_(encoder, v911, v1740);
    *v1865 = v910;
    *&v1865[4] = v910;
    *&v1865[8] = objc_msgSend_rowBytes(matrixCopy, v912, v913);
    v1862 = v1846;
    v1863 = v910;
    v1864 = objc_msgSend_rowBytes(v1848, v914, v915);
    v918 = objc_msgSend_data(matrixCopy, v916, v917);
    v1803 = v886;
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v919, v918, v886, 0);
    v922 = objc_msgSend_data(v1848, v920, v921);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v923, v922, 0, 1);
    objc_msgSend_setBytes_length_atIndex_(encoder, v924, v1865, 12, 2);
    objc_msgSend_setBytes_length_atIndex_(encoder, v925, &v1862, 12, 3);
    v927 = v1846 + v910 - 1;
    v928 = (v1817 & 0x400) == 0;
    v929 = 4;
    v930 = 32;
    if ((v1817 & 0x400) != 0)
    {
      v930 = 4;
    }

    v1822 = v930;
    if (v928)
    {
      v929 = 7;
    }

    v1722 = v929;
    v1731 = (4 * v930) | 1;
    *(&v1778 + 1) = (DWORD2(v1778) + 65) >> 6;
    v931 = v1767 * v1778;
    v932 = v1699 + v1748 * *v1861 + *&v1860[8] * (v1706 >> 3);
    v933 = 5;
    if (v928)
    {
      v933 = 6;
    }

    *v1861 = v927 >> v933;
    *&v1861[8] = vdupq_n_s64(1uLL);
    v934 = v907 + v1687 * v1692 + *&v1860[8] * (v903 >> 3);
    v935 = v1846;
    *v1860 = v1846;
    *&v1860[8] = *&v1861[8];
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v926, v1861, v1860);
    v940 = 0;
    if (objc_msgSend_order(v905, v936, v937) >= v1846)
    {
      v941 = 0;
      v940 = 0;
      v1749 = vdupq_n_s64(1uLL);
      do
      {
        *&v1859[8] = v940;
        objc_msgSend_setComputePipelineState_(encoder, v938, v1832);
        v944 = objc_msgSend_data(v906, v942, v943);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v945, v944, v1803 + v941, 0);
        v948 = objc_msgSend_data(solutionMatrix, v946, v947);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v949, v948, v934, 1);
        v952 = objc_msgSend_data(sideMatrixCopy, v950, v951);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v953, v952, v932 + v941, 2);
        v956 = objc_msgSend_data(v1848, v954, v955);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v957, v956, v931, 3);
        objc_msgSend_setBytes_length_atIndex_(encoder, v958, v1859, 36, 4);
        *&v1778 = (v1731 | v1846) >> v1722;
        *v1861 = v1778;
        *&v1861[16] = 1;
        *v1860 = v1822;
        *&v1860[8] = xmmword_2399EE7D0;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v959, v1861, v1860);
        objc_msgSend_setComputePipelineState_(encoder, v960, v1812);
        v963 = v905;
        v964 = objc_msgSend_data(v1848, v961, v962);
        v967 = objc_msgSend_rowBytes(v1848, v965, v966);
        v968 = v964;
        v905 = v963;
        v906 = matrixCopy;
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v969, v968, v967 * v940, 0);
        v935 = v1846;
        v972 = objc_msgSend_data(v1848, v970, v971);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v973, v972, v931, 1);
        v976 = objc_msgSend_data(solutionMatrix, v974, v975);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v977, v976, v934 + v941, 2);
        objc_msgSend_setBytes_length_atIndex_(encoder, v978, &v1856, 12, 3);
        objc_msgSend_setBytes_length_atIndex_(encoder, v979, &v1853, 12, 4);
        objc_msgSend_setBytes_length_atIndex_(encoder, v980, &v1850, 12, 5);
        *v1861 = v1795;
        *&v1861[8] = v1749;
        *v1860 = v1846;
        *&v1860[8] = v1749;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v981, v1861, v1860);
        v940 += v1846;
        v941 += 4 * v1846;
      }

      while (v1846 + v940 <= objc_msgSend_order(v905, v982, v983));
    }

    if (v940 < objc_msgSend_order(v905, v938, v939))
    {
      v986 = objc_msgSend_order(v905, v984, v985);
      *v1859 = v986 - v940;
      *&v1859[8] = v940;
      v1843 = (v986 - v940 + v1731) >> v1722;
      v1856 = v986 - v940;
      v1853 = v986 - v940;
      objc_msgSend_setComputePipelineState_(encoder, v987, v1832);
      v990 = objc_msgSend_data(v906, v988, v989);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v991, v990, 4 * v940 + v1803, 0);
      v994 = objc_msgSend_data(solutionMatrix, v992, v993);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v995, v994, v934, 1);
      v998 = objc_msgSend_data(sideMatrixCopy, v996, v997);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v999, v998, 4 * v940 + v932, 2);
      v1002 = objc_msgSend_data(v1848, v1000, v1001);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v1003, v1002, v931, 3);
      objc_msgSend_setBytes_length_atIndex_(encoder, v1004, v1859, 36, 4);
      *v1861 = v1843;
      *&v1861[8] = *(&v1778 + 1);
      *&v1861[16] = 1;
      *v1860 = v1822;
      *&v1860[8] = xmmword_2399EE7D0;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v1005, v1861, v1860);
      objc_msgSend_setComputePipelineState_(encoder, v1006, v1812);
      v1009 = objc_msgSend_data(v1848, v1007, v1008);
      v1012 = objc_msgSend_rowBytes(v1848, v1010, v1011);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v1013, v1009, v1012 * v940, 0);
      v1016 = objc_msgSend_data(v1848, v1014, v1015);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v1017, v1016, v931, 1);
      v1020 = objc_msgSend_data(solutionMatrix, v1018, v1019);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v1021, v1020, 4 * v940 + v934, 2);
      objc_msgSend_setBytes_length_atIndex_(encoder, v1022, &v1856, 12, 3);
      objc_msgSend_setBytes_length_atIndex_(encoder, v1023, &v1853, 12, 4);
      objc_msgSend_setBytes_length_atIndex_(encoder, v1024, &v1850, 12, 5);
      *v1861 = v1795;
      *&v1861[8] = vdupq_n_s64(1uLL);
      *v1860 = v935;
      *&v1860[8] = *&v1861[8];
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v1025, v1861, v1860);
    }

LABEL_96:
    MPSLibrary::ReleaseComputeState();
LABEL_145:
    MPSLibrary::ReleaseComputeState();
LABEL_146:
    MPSLibrary::ReleaseComputeState();
    return;
  }

  if (transpose)
  {
    if (!v16 || !objc_msgSend_numberOfRightHandSides(selfCopy, v17, v18))
    {
      return;
    }

    v1829 = MPSLibrary::GetComputeState();
    v1810 = MPSLibrary::GetComputeState();
    objc_msgSend_unit(selfCopy, v438, v439);
    v1746 = MPSLibrary::GetComputeState();
    *v1859 = v15;
    v1774 = objc_msgSend_numberOfRightHandSides(selfCopy, v440, v441);
    *&v1859[4] = v1774;
    *&v1859[12] = objc_msgSend_rowBytes(matrix, v442, v443);
    *&v1859[16] = objc_msgSend_rowBytes(solutionMatrix, v444, v445);
    *&v1859[20] = objc_msgSend_rowBytes(sideMatrix, v446, v447);
    v448 = MEMORY[0x277CD73B0];
    *&v1859[24] = *&v1848[*MEMORY[0x277CD73B0]];
    *&v1859[28] = -1082130432;
    objc_msgSend_alpha(selfCopy, v449, v450);
    *&v451 = v451;
    *&v1859[32] = LODWORD(v451);
    v1856 = *&v1848[*MEMORY[0x277CD7390]];
    v1857 = *&v1848[*MEMORY[0x277CD73B8]];
    v1858 = *&v1848[*v448];
    v1853 = v15;
    v1854 = objc_msgSend_numberOfRightHandSides(selfCopy, v452, v453);
    v1855 = *&v1848[*v448];
    v1850 = objc_msgSend_columns(solutionMatrix, v454, v455);
    v1851 = objc_msgSend_rows(solutionMatrix, v456, v457);
    v1852 = objc_msgSend_rowBytes(solutionMatrix, v458, v459);
    v1792 = objc_msgSend_numberOfRightHandSides(selfCopy, v460, v461);
    v1765 = *&v1848[*v448];
    v1756 = objc_msgSend_order(selfCopy, v462, v463);
    objc_msgSend_primarySourceMatrixOrigin(selfCopy, v464, v465);
    v468 = objc_msgSend_rowBytes(matrix, v466, v467);
    objc_msgSend_primarySourceMatrixOrigin(selfCopy, v469, v470);
    v473 = objc_msgSend_dataType(matrix, v471, v472);
    matrixCopy6 = matrix;
    v475 = MEMORY[0x277CD73A8];
    v476 = *&matrixCopy6[*MEMORY[0x277CD73A8]] + v468 * *v1861 + *&v1860[8] * (v473 >> 3);
    objc_msgSend_secondarySourceMatrixOrigin(selfCopy, v477, v478);
    v1728 = objc_msgSend_rowBytes(sideMatrix, v479, v480);
    objc_msgSend_secondarySourceMatrixOrigin(selfCopy, v481, v482);
    v1713 = objc_msgSend_dataType(sideMatrix, v483, v484);
    v1704 = *(sideMatrix + *v475);
    objc_msgSend_resultMatrixOrigin(selfCopy, v485, v486);
    v1697 = *v1861;
    v489 = objc_msgSend_rowBytes(solutionMatrix, v487, v488);
    objc_msgSend_resultMatrixOrigin(selfCopy, v490, v491);
    v494 = objc_msgSend_dataType(solutionMatrix, v492, v493);
    v495 = *(solutionMatrix + *v475);
    v498 = objc_msgSend_order(v1840, v496, v497);
    objc_msgSend_setComputePipelineState_(encoder, v499, v1746);
    *v1865 = v498;
    *&v1865[4] = v498;
    *&v1865[8] = objc_msgSend_rowBytes(matrixCopy6, v500, v501);
    v1862 = v1846;
    v1863 = v498;
    v1864 = objc_msgSend_rowBytes(v1848, v502, v503);
    v506 = objc_msgSend_data(matrixCopy6, v504, v505);
    v1801 = v476;
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v507, v506, v476, 0);
    v510 = objc_msgSend_data(v1848, v508, v509);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v511, v510, 0, 1);
    objc_msgSend_setBytes_length_atIndex_(encoder, v512, v1865, 12, 2);
    objc_msgSend_setBytes_length_atIndex_(encoder, v513, &v1862, 12, 3);
    v515 = 8;
    if ((v1817 & 0x400) == 0)
    {
      v515 = 32;
    }

    v1786 = v515;
    v516 = 4 * v515 + v1774 + 1;
    v517 = 5;
    v518 = 7;
    if ((v1817 & 0x400) != 0)
    {
      v518 = 5;
    }

    v1775 = v516 >> v518;
    v519 = v1756 * v1765;
    v1738 = v1704 + v1728 * *v1861 + *&v1860[8] * (v1713 >> 3);
    v520 = v494 >> 3;
    v521 = v1840;
    if ((v1817 & 0x400) == 0)
    {
      v517 = 6;
    }

    *v1861 = (v1846 + v498 - 1) >> v517;
    *&v1861[8] = vdupq_n_s64(1uLL);
    v1820 = v495 + v489 * v1697 + *&v1860[8] * v520;
    *v1860 = v1846;
    *&v1860[8] = *&v1861[8];
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v514, v1861, v1860);
    v526 = 0;
    if (objc_msgSend_order(v1840, v522, v523) >= v1846)
    {
      v526 = 0;
      v527 = 4 * v1846;
      v1757 = vdupq_n_s64(1uLL);
      v528 = v1738;
      v529 = v1820;
      do
      {
        *&v1859[8] = v526;
        objc_msgSend_setComputePipelineState_(encoder, v524, v1829);
        v532 = objc_msgSend_data(matrixCopy, v530, v531);
        v535 = objc_msgSend_rowBytes(matrixCopy, v533, v534);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v536, v532, v1801 + v535 * v526, 0);
        v539 = objc_msgSend_data(solutionMatrix, v537, v538);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v540, v539, v1820, 1);
        v543 = objc_msgSend_data(sideMatrixCopy, v541, v542);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v544, v543, v528, 2);
        v547 = objc_msgSend_data(v1848, v545, v546);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v548, v547, v519, 3);
        objc_msgSend_setBytes_length_atIndex_(encoder, v549, v1859, 36, 4);
        *v1861 = (v1846 + 33) >> 5;
        *&v1861[8] = v1775;
        *&v1861[16] = 1;
        *v1860 = 8;
        *&v1860[8] = v1786;
        *&v1860[16] = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v550, v1861, v1860);
        objc_msgSend_setComputePipelineState_(encoder, v551, v1810);
        v554 = objc_msgSend_data(v1848, v552, v553);
        v557 = objc_msgSend_rowBytes(v1848, v555, v556);
        v558 = v554;
        v521 = v1840;
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v559, v558, v557 * v526, 0);
        v562 = objc_msgSend_data(v1848, v560, v561);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v563, v562, v519, 1);
        v566 = objc_msgSend_data(solutionMatrix, v564, v565);
        objc_msgSend_setBuffer_offset_atIndex_(encoder, v567, v566, v529, 2);
        objc_msgSend_setBytes_length_atIndex_(encoder, v568, &v1856, 12, 3);
        objc_msgSend_setBytes_length_atIndex_(encoder, v569, &v1853, 12, 4);
        objc_msgSend_setBytes_length_atIndex_(encoder, v570, &v1850, 12, 5);
        *v1861 = v1792;
        *&v1861[8] = v1757;
        *v1860 = v1846;
        *&v1860[8] = v1757;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v571, v1861, v1860);
        v526 += v1846;
        v529 += v527;
        v528 += v527;
      }

      while (v1846 + v526 <= objc_msgSend_order(v1840, v572, v573));
    }

    if (v526 < objc_msgSend_order(v521, v524, v525))
    {
      v576 = objc_msgSend_order(v521, v574, v575);
      *v1859 = v576 - v526;
      *&v1859[8] = v526;
      v1842 = (v576 - v526 + 33) >> 5;
      v1856 = v576 - v526;
      v1853 = v576 - v526;
      objc_msgSend_setComputePipelineState_(encoder, v577, v1829);
      v580 = objc_msgSend_data(matrixCopy, v578, v579);
      v583 = objc_msgSend_rowBytes(matrixCopy, v581, v582);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v584, v580, v1801 + v583 * v526, 0);
      v587 = objc_msgSend_data(solutionMatrix, v585, v586);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v588, v587, v1820, 1);
      v591 = objc_msgSend_data(sideMatrixCopy, v589, v590);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v592, v591, 4 * v526 + v1738, 2);
      v595 = objc_msgSend_data(v1848, v593, v594);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v596, v595, v519, 3);
      objc_msgSend_setBytes_length_atIndex_(encoder, v597, v1859, 36, 4);
      *v1861 = v1842;
      *&v1861[8] = v1775;
      *&v1861[16] = 1;
      *v1860 = 8;
      *&v1860[8] = v1786;
      *&v1860[16] = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v598, v1861, v1860);
      objc_msgSend_setComputePipelineState_(encoder, v599, v1810);
      v602 = objc_msgSend_data(v1848, v600, v601);
      v605 = objc_msgSend_rowBytes(v1848, v603, v604);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v606, v602, v605 * v526, 0);
      v609 = objc_msgSend_data(v1848, v607, v608);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v610, v609, v519, 1);
      v613 = objc_msgSend_data(solutionMatrix, v611, v612);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v614, v613, 4 * v526 + v1820, 2);
      objc_msgSend_setBytes_length_atIndex_(encoder, v615, &v1856, 12, 3);
      objc_msgSend_setBytes_length_atIndex_(encoder, v616, &v1853, 12, 4);
      objc_msgSend_setBytes_length_atIndex_(encoder, v617, &v1850, 12, 5);
      *v1861 = v1792;
      *&v1861[8] = vdupq_n_s64(1uLL);
      *v1860 = v1846;
      *&v1860[8] = *&v1861[8];
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v618, v1861, v1860);
    }

    goto LABEL_96;
  }

  if (v16 && objc_msgSend_numberOfRightHandSides(selfCopy, v17, v18))
  {
    v1781 = MPSLibrary::GetComputeState();
    v1815 = MPSLibrary::GetComputeState();
    v1724 = MPSLibrary::GetComputeState();
    objc_msgSend_unit(selfCopy, v1253, v1254);
    v1709 = MPSLibrary::GetComputeState();
    v1862 = objc_msgSend_columns(solutionMatrix, v1255, v1256);
    v1863 = objc_msgSend_rows(solutionMatrix, v1257, v1258);
    v1864 = objc_msgSend_rowBytes(solutionMatrix, v1259, v1260);
    v1797 = objc_msgSend_numberOfRightHandSides(selfCopy, v1261, v1262);
    v1835 = *&v1848[*MEMORY[0x277CD73B0]];
    v1805 = objc_msgSend_order(selfCopy, v1263, v1264);
    objc_msgSend_primarySourceMatrixOrigin(selfCopy, v1265, v1266);
    matrixCopy7 = matrix;
    v1270 = objc_msgSend_rowBytes(matrix, v1267, v1268);
    objc_msgSend_primarySourceMatrixOrigin(selfCopy, v1271, v1272);
    v1273 = *&v1861[8];
    v1276 = objc_msgSend_dataType(matrixCopy7, v1274, v1275);
    v1277 = MEMORY[0x277CD73A8];
    v1278 = *&matrixCopy7[*MEMORY[0x277CD73A8]] + v1270 * *v1859 + v1273 * (v1276 >> 3);
    objc_msgSend_secondarySourceMatrixOrigin(selfCopy, v1279, v1280);
    v1751 = objc_msgSend_rowBytes(sideMatrix, v1281, v1282);
    objc_msgSend_secondarySourceMatrixOrigin(selfCopy, v1283, v1284);
    v1743 = *&v1861[8];
    v1733 = objc_msgSend_dataType(sideMatrix, v1285, v1286);
    v1716 = *(sideMatrix + *v1277);
    objc_msgSend_resultMatrixOrigin(selfCopy, v1287, v1288);
    v1289 = *v1859;
    v1701 = objc_msgSend_rowBytes(solutionMatrix, v1290, v1291);
    objc_msgSend_resultMatrixOrigin(selfCopy, v1292, v1293);
    v1294 = *&v1861[8];
    v1694 = objc_msgSend_dataType(solutionMatrix, v1295, v1296);
    v1297 = *(solutionMatrix + *v1277);
    v1300 = objc_msgSend_order(selfCopy, v1298, v1299);
    objc_msgSend_setComputePipelineState_(encoder, v1301, v1709);
    *v1860 = v1300;
    *&v1860[4] = v1300;
    *&v1860[8] = objc_msgSend_rowBytes(matrixCopy7, v1302, v1303);
    *v1865 = v1846;
    *&v1865[4] = v1300;
    *&v1865[8] = objc_msgSend_rowBytes(v1848, v1304, v1305);
    v1308 = objc_msgSend_data(matrixCopy7, v1306, v1307);
    v1760 = v1278;
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v1309, v1308, v1278, 0);
    v1312 = objc_msgSend_data(v1848, v1310, v1311);
    objc_msgSend_setBuffer_offset_atIndex_(encoder, v1313, v1312, 0, 1);
    objc_msgSend_setBytes_length_atIndex_(encoder, v1314, v1860, 12, 2);
    objc_msgSend_setBytes_length_atIndex_(encoder, v1315, v1865, 12, 3);
    v1317 = v1846 - 1;
    v1318 = 4;
    if ((v1817 & 0x400) == 0)
    {
      v1318 = 32;
    }

    v1769 = v1318;
    v1319 = v1805 * v1835;
    v1788 = v1716 + v1751 * *v1859 + v1743 * (v1733 >> 3);
    v1320 = 5;
    if ((v1817 & 0x400) == 0)
    {
      v1320 = 6;
    }

    *v1859 = (v1300 + v1317) >> v1320;
    *&v1859[8] = vdupq_n_s64(1uLL);
    v1321 = v1297 + v1701 * v1289 + v1294 * (v1694 >> 3);
    v1322 = v1846;
    *v1861 = v1846;
    *&v1861[8] = *&v1859[8];
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v1316, v1859, v1861);
    v1325 = objc_msgSend_order(selfCopy, v1323, v1324) & v1317;
    v1330 = objc_msgSend_order(selfCopy, v1326, v1327) - v1325;
    v1806 = v1805 * v1835;
    v1836 = v1321;
    if (v1325)
    {
      *v1860 = v1325;
      v1331 = objc_msgSend_numberOfRightHandSides(selfCopy, v1328, v1329);
      *&v1860[4] = v1331;
      *&v1860[8] = objc_msgSend_rowBytes(sideMatrixCopy, v1332, v1333);
      *&v1860[12] = *&v1848[*MEMORY[0x277CD73B0]];
      objc_msgSend_alpha(selfCopy, v1334, v1335);
      *&v1336 = v1336;
      *&v1860[16] = LODWORD(v1336);
      v1337 = (v1331 + 31) >> 5;
      objc_msgSend_setComputePipelineState_(encoder, v1338, v1724);
      v1341 = objc_msgSend_data(sideMatrixCopy, v1339, v1340);
      v1344 = objc_msgSend_dataType(sideMatrixCopy, v1342, v1343);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v1345, v1341, v1788 + v1330 * (v1344 >> 3), 0);
      v1348 = objc_msgSend_data(v1848, v1346, v1347);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v1349, v1348, v1319, 1);
      objc_msgSend_setBytes_length_atIndex_(encoder, v1350, v1860, 20, 2);
      *v1859 = (v1325 + 15) >> 4;
      *&v1859[8] = v1337;
      *&v1859[16] = 1;
      *v1861 = vdupq_n_s64(8uLL);
      *&v1861[16] = 1;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v1351, v1859, v1861);
      *v1865 = v1325;
      *&v1865[4] = *&v1848[*MEMORY[0x277CD73B8]];
      v1352 = MEMORY[0x277CD73B0];
      *&v1865[8] = *&v1848[*MEMORY[0x277CD73B0]];
      v1856 = v1325;
      v1857 = objc_msgSend_numberOfRightHandSides(selfCopy, v1353, v1354);
      v1858 = *&v1848[*v1352];
      objc_msgSend_setComputePipelineState_(encoder, v1355, v1815);
      v1358 = objc_msgSend_data(v1848, v1356, v1357);
      v1361 = objc_msgSend_rowBytes(v1848, v1359, v1360);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v1362, v1358, v1361 * v1330, 0);
      v1365 = objc_msgSend_data(v1848, v1363, v1364);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v1366, v1365, v1319, 1);
      v1369 = objc_msgSend_data(solutionMatrix, v1367, v1368);
      v1372 = objc_msgSend_dataType(solutionMatrix, v1370, v1371);
      objc_msgSend_setBuffer_offset_atIndex_(encoder, v1373, v1369, v1321 + v1330 * (v1372 >> 3), 2);
      objc_msgSend_setBytes_length_atIndex_(encoder, v1374, v1865, 12, 3);
      objc_msgSend_setBytes_length_atIndex_(encoder, v1375, &v1856, 12, 4);
      objc_msgSend_setBytes_length_atIndex_(encoder, v1376, &v1862, 12, 5);
      *v1859 = v1797;
      v1322 = v1846;
      *&v1859[8] = vdupq_n_s64(1uLL);
      *v1861 = v1846;
      *&v1861[8] = *&v1859[8];
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v1377, v1859, v1861);
    }

    solutionMatrixCopy6 = solutionMatrix;
    if (v1330)
    {
      v1379 = v1330;
      v1380 = 4;
      if ((v1817 & 0x400) == 0)
      {
        v1380 = 7;
      }

      v1752 = v1380;
      v1717 = vdupq_n_s64(8uLL);
      do
      {
        v1433 = objc_msgSend_order(selfCopy, v1328, v1329);
        v1436 = v1433 - v1379;
        v1437 = MEMORY[0x277CD73B0];
        if (v1433 == v1379)
        {
          *&v1860[12] = 0;
          *&v1860[4] = 0;
          *v1860 = v1322;
          *&v1860[4] = objc_msgSend_numberOfRightHandSides(selfCopy, v1434, v1435);
          *&v1860[8] = objc_msgSend_rowBytes(sideMatrixCopy, v1381, v1382);
          *&v1860[12] = *&v1848[*v1437];
          objc_msgSend_alpha(selfCopy, v1383, v1384);
          *&v1385 = v1385;
          *&v1860[16] = LODWORD(v1385);
          v1386 = (*v1860 + 15) >> 4;
          v1387 = (*&v1860[4] + 31) >> 5;
          encoderCopy4 = encoder;
          objc_msgSend_setComputePipelineState_(encoder, v1389, v1724);
          v1392 = objc_msgSend_data(sideMatrixCopy, v1390, v1391);
          v1379 -= v1322;
          v1393 = v1848;
          v1396 = objc_msgSend_dataType(sideMatrixCopy, v1394, v1395);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v1397, v1392, v1788 + v1379 * (v1396 >> 3), 0);
          v1400 = objc_msgSend_data(v1848, v1398, v1399);
          v1401 = v1806;
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v1402, v1400, v1806, 1);
          objc_msgSend_setBytes_length_atIndex_(encoder, v1403, v1860, 20, 2);
          *v1859 = v1386;
          *&v1859[8] = v1387;
          solutionMatrixCopy6 = solutionMatrix;
          *&v1859[16] = 1;
          *v1861 = v1717;
          *&v1861[16] = 1;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v1404, v1859, v1861);
          v1407 = v1815;
          v1408 = selfCopy;
        }

        else
        {
          memset(&v1859[4], 0, 32);
          *v1859 = v1322;
          *&v1859[4] = objc_msgSend_numberOfRightHandSides(selfCopy, v1434, v1435);
          *&v1859[8] = v1436;
          *&v1859[12] = objc_msgSend_rowBytes(matrixCopy, v1438, v1439);
          *&v1859[16] = objc_msgSend_rowBytes(solutionMatrixCopy6, v1440, v1441);
          *&v1859[20] = objc_msgSend_rowBytes(sideMatrixCopy, v1442, v1443);
          *&v1859[24] = *&v1848[*v1437];
          *&v1859[28] = -1082130432;
          objc_msgSend_alpha(selfCopy, v1444, v1445);
          *&v1446 = v1446;
          *&v1859[32] = LODWORD(v1446);
          v1447 = (((4 * v1769) | 1) + *v1859) >> v1752;
          v1824 = (*&v1859[4] + 65) >> 6;
          encoderCopy4 = encoder;
          objc_msgSend_setComputePipelineState_(encoder, v1448, v1781);
          v1451 = objc_msgSend_data(matrixCopy, v1449, v1450);
          v1454 = objc_msgSend_dataType(matrixCopy, v1452, v1453) >> 3;
          v1457 = v1760 + objc_msgSend_rowBytes(matrixCopy, v1455, v1456) * v1379 + (v1379 - v1322) * v1454;
          solutionMatrixCopy6 = solutionMatrix;
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v1458, v1451, v1457, 0);
          v1461 = objc_msgSend_data(solutionMatrix, v1459, v1460);
          v1464 = objc_msgSend_dataType(solutionMatrix, v1462, v1463);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v1465, v1461, v1836 + v1379 * (v1464 >> 3), 1);
          v1468 = objc_msgSend_data(sideMatrixCopy, v1466, v1467);
          v1393 = v1848;
          v1471 = objc_msgSend_dataType(sideMatrixCopy, v1469, v1470);
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v1472, v1468, v1788 + (v1379 - v1322) * (v1471 >> 3), 2);
          v1475 = objc_msgSend_data(v1848, v1473, v1474);
          v1401 = v1806;
          objc_msgSend_setBuffer_offset_atIndex_(encoder, v1476, v1475, v1806, 3);
          objc_msgSend_setBytes_length_atIndex_(encoder, v1477, v1859, 36, 4);
          v1407 = v1815;
          *v1861 = v1447;
          *&v1861[8] = v1824;
          *&v1861[16] = 1;
          *v1860 = v1769;
          *&v1860[8] = xmmword_2399EE7D0;
          objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoder, v1478, v1861, v1860);
          v1379 -= v1322;
          v1408 = v1840;
        }

        *v1860 = v1322;
        *&v1860[4] = *&v1393[*MEMORY[0x277CD73B8]];
        v1409 = MEMORY[0x277CD73B0];
        *&v1860[8] = *&v1393[*MEMORY[0x277CD73B0]];
        *&v1865[4] = 0;
        *v1865 = v1322;
        *&v1865[4] = objc_msgSend_numberOfRightHandSides(v1408, v1405, v1406);
        *&v1865[8] = *&v1393[*v1409];
        objc_msgSend_setComputePipelineState_(encoderCopy4, v1410, v1407);
        v1413 = objc_msgSend_data(v1393, v1411, v1412);
        v1416 = objc_msgSend_rowBytes(v1393, v1414, v1415);
        objc_msgSend_setBuffer_offset_atIndex_(encoderCopy4, v1417, v1413, v1416 * v1379, 0);
        v1420 = objc_msgSend_data(v1393, v1418, v1419);
        objc_msgSend_setBuffer_offset_atIndex_(encoderCopy4, v1421, v1420, v1401, 1);
        v1424 = objc_msgSend_data(solutionMatrixCopy6, v1422, v1423);
        v1427 = objc_msgSend_dataType(solutionMatrixCopy6, v1425, v1426);
        objc_msgSend_setBuffer_offset_atIndex_(encoderCopy4, v1428, v1424, v1836 + v1379 * (v1427 >> 3), 2);
        objc_msgSend_setBytes_length_atIndex_(encoderCopy4, v1429, v1860, 12, 3);
        objc_msgSend_setBytes_length_atIndex_(encoderCopy4, v1430, v1865, 12, 4);
        objc_msgSend_setBytes_length_atIndex_(encoderCopy4, v1431, &v1862, 12, 5);
        *v1859 = v1797;
        *&v1859[8] = vdupq_n_s64(1uLL);
        *v1861 = v1322;
        *&v1861[8] = *&v1859[8];
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(encoderCopy4, v1432, v1859, v1861);
        selfCopy = v1408;
      }

      while (v1379);
    }

    goto LABEL_144;
  }
}

- (void)encodeToCommandBuffer:(id)commandBuffer sourceMatrix:(MPSMatrix *)sourceMatrix rightHandSideMatrix:(MPSMatrix *)rightHandSideMatrix solutionMatrix:(MPSMatrix *)solutionMatrix
{
  if (objc_msgSend_options(self, a2, commandBuffer))
  {
    goto LABEL_31;
  }

  if (!commandBuffer && MTLReportFailureTypeEnabled())
  {
    v127 = objc_opt_class();
    v134 = NSStringFromClass(v127);
    MTLReportFailure();
  }

  if (!sourceMatrix && MTLReportFailureTypeEnabled())
  {
    v128 = objc_opt_class();
    v134 = NSStringFromClass(v128);
    MTLReportFailure();
  }

  if (!rightHandSideMatrix && MTLReportFailureTypeEnabled())
  {
    v129 = objc_opt_class();
    v134 = NSStringFromClass(v129);
    MTLReportFailure();
  }

  if (!solutionMatrix && MTLReportFailureTypeEnabled())
  {
    v130 = objc_opt_class();
    v134 = NSStringFromClass(v130);
    MTLReportFailure();
  }

  if (self)
  {
    objc_msgSend_primarySourceMatrixOrigin(self, v11, v12);
    objc_msgSend_primarySourceMatrixOrigin(self, v13, v14);
    if (v138 && MTLReportFailureTypeEnabled())
    {
      v131 = objc_opt_class();
      v134 = NSStringFromClass(v131);
      MTLReportFailure();
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v15, v16, v134);
    objc_msgSend_secondarySourceMatrixOrigin(self, v17, v18);
    if (v138 && MTLReportFailureTypeEnabled())
    {
      v132 = objc_opt_class();
      v135 = NSStringFromClass(v132);
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v19, v20, v135);
    objc_msgSend_resultMatrixOrigin(self, v21, v22);
    if (v138 && MTLReportFailureTypeEnabled())
    {
      v133 = objc_opt_class();
      v134 = NSStringFromClass(v133);
      MTLReportFailure();
    }
  }

  if (self->_right)
  {
    objc_msgSend_resultMatrixOrigin(self, v11, v12);
    objc_msgSend_rows(solutionMatrix, v23, v24);
    objc_msgSend_resultMatrixOrigin(self, v25, v26);
    v27 = self->_numberOfRightHandSides + v136;
    if (v27 > objc_msgSend_rows(solutionMatrix, v28, v29) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v30, v31, v134);
    objc_msgSend_columns(solutionMatrix, v32, v33);
    objc_msgSend_resultMatrixOrigin(self, v34, v35);
    v36 = self->_order + v137;
    if (v36 > objc_msgSend_columns(solutionMatrix, v37, v38) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v39, v40);
    objc_msgSend_rows(rightHandSideMatrix, v41, v42);
    objc_msgSend_secondarySourceMatrixOrigin(self, v43, v44);
    v45 = self->_numberOfRightHandSides + v136;
    if (v45 > objc_msgSend_rows(rightHandSideMatrix, v46, v47) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v48, v49);
    objc_msgSend_columns(rightHandSideMatrix, v50, v51);
    objc_msgSend_secondarySourceMatrixOrigin(self, v52, v53);
    v54 = self->_order + v137;
    if (v54 <= objc_msgSend_columns(rightHandSideMatrix, v55, v56) || !MTLReportFailureTypeEnabled())
    {
      goto LABEL_21;
    }
  }

  else
  {
    objc_msgSend_resultMatrixOrigin(self, v11, v12);
    objc_msgSend_rows(solutionMatrix, v59, v60);
    objc_msgSend_resultMatrixOrigin(self, v61, v62);
    v63 = self->_order + v136;
    if (v63 > objc_msgSend_rows(solutionMatrix, v64, v65) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_resultMatrixOrigin(self, v66, v67, v134);
    objc_msgSend_columns(solutionMatrix, v68, v69);
    objc_msgSend_resultMatrixOrigin(self, v70, v71);
    v72 = self->_numberOfRightHandSides + v137;
    if (v72 > objc_msgSend_columns(solutionMatrix, v73, v74) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v75, v76);
    objc_msgSend_rows(rightHandSideMatrix, v77, v78);
    objc_msgSend_secondarySourceMatrixOrigin(self, v79, v80);
    v81 = self->_order + v136;
    if (v81 > objc_msgSend_rows(rightHandSideMatrix, v82, v83) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    objc_msgSend_secondarySourceMatrixOrigin(self, v84, v85);
    objc_msgSend_columns(rightHandSideMatrix, v86, v87);
    objc_msgSend_secondarySourceMatrixOrigin(self, v88, v89);
    v90 = self->_numberOfRightHandSides + v137;
    if (v90 <= objc_msgSend_columns(rightHandSideMatrix, v91, v92) || !MTLReportFailureTypeEnabled())
    {
      goto LABEL_21;
    }
  }

  MTLReportFailure();
LABEL_21:
  if (objc_msgSend_dataType(sourceMatrix, v57, v58) == 268435488 && objc_msgSend_dataType(rightHandSideMatrix, v93, v94) == 268435488)
  {
    objc_msgSend_dataType(solutionMatrix, v93, v94);
  }

  if ((objc_msgSend_dataType(sourceMatrix, v93, v94) != 268435488 || objc_msgSend_dataType(rightHandSideMatrix, v95, v96) != 268435488 || objc_msgSend_dataType(solutionMatrix, v97, v98) != 268435488) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_primarySourceMatrixOrigin(self, v99, v100);
  objc_msgSend_rows(sourceMatrix, v101, v102);
  objc_msgSend_primarySourceMatrixOrigin(self, v103, v104);
  v105 = self->_order + v136;
  if (v105 > objc_msgSend_rows(sourceMatrix, v106, v107) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  objc_msgSend_primarySourceMatrixOrigin(self, v108, v109);
  objc_msgSend_columns(sourceMatrix, v110, v111);
  objc_msgSend_primarySourceMatrixOrigin(self, v112, v113);
  v114 = self->_order + v137;
  if (v114 > objc_msgSend_columns(sourceMatrix, v115, v116) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_31:
  v117 = objc_alloc(MEMORY[0x277CD7210]);
  v120 = objc_msgSend_initWithCommandBuffer_withDispatchType_(v117, v118, commandBuffer, 0);
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x18) != 0)
  {
    v121 = *(&self->super.super.super.isa + *MEMORY[0x277CD7360]);
    if (v121 || (v122 = objc_opt_class(), v123 = NSStringFromClass(v122), objc_msgSend_setLabel_(self, v124, v123), (v121 = v123) != 0))
    {
      objc_msgSend_setLabel_(v120, v119, v121);
    }
  }

  objc_msgSend_encodeToCommandBuffer_encoder_sourceMatrix_rightHandSideMatrix_solutionMatrix_(self, v119, commandBuffer, v120, sourceMatrix, rightHandSideMatrix, solutionMatrix);
  objc_msgSend_endEncoding(v120, v125, v126);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSMatrixSolveTriangular;
  [(MPSKernel *)&v3 dealloc];
}

@end