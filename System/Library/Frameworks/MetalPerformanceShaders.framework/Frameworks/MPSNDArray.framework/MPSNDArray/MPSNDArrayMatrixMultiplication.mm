@interface MPSNDArrayMatrixMultiplication
- (BOOL)advanceAutoTuneIteration;
- (MPSNDArrayMatrixMultiplication)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayMatrixMultiplication)initWithDevice:(id)device sourceCount:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state;
- (id)encodePreProcessingToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceArrays:(id)arrays destinationArray:(id *)array kernelDAGObject:(id *)object;
- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state;
- (unint64_t)kernelDimensionalityForSourceArrays:(id)arrays destinationArrays:(id)destinationArrays kernelDAGObject:(id)object;
- (void)clearAutoTuningParameters;
- (void)dealloc;
- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceArrays:(id)arrays normScaleArray:(id)array resultState:(id)state destinationArray:(id)destinationArray kernelDAGObject:(id)object;
- (void)encodeWithCoder:(id)coder;
- (void)setAutoTuningParameters:(void *)parameters;
@end

@implementation MPSNDArrayMatrixMultiplication

- (unint64_t)kernelDimensionalityForSourceArrays:(id)arrays destinationArrays:(id)destinationArrays kernelDAGObject:(id)object
{
  objectCopy = object;
  if (!object || (v9 = [object graph], v10 = **(v9 + 64), (v11 = *(*(v9 + 64) + 8) - v10) == 0))
  {
LABEL_8:
    graph = [objectCopy graph];
    v15 = *(graph + 64);
    v16 = *v15;
    v17 = v15[1];
    if (*v15 == v17)
    {
      v21 = 0;
    }

    else
    {
      v18 = graph;
      destinationArraysCopy = destinationArrays;
      v198 = objectCopy;
      selfCopy = self;
      v20 = 0;
      v21 = -1;
      v22 = -1;
      v23 = -1;
      do
      {
        v24 = *v16;
        if (v24 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v18) + 32))
        {
          v21 = v20;
        }

        v25 = *v16;
        if (v25 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v18) + 32))
        {
          v23 = v20;
        }

        if (MPSKernelDAG::GetCoreOpNumberOfInputs(v18) == 3)
        {
          v26 = *v16;
          if (v26 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v18) + 32))
          {
            v22 = v20;
          }
        }

        ++v20;
        ++v16;
      }

      while (v16 != v17);
      if (v21 == -1)
      {
        v21 = 0;
        self = selfCopy;
        destinationArrays = destinationArraysCopy;
        objectCopy = v198;
        if (!MTLReportFailureTypeEnabled())
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      self = selfCopy;
      destinationArrays = destinationArraysCopy;
      objectCopy = v198;
      if (v23 != -1)
      {
        goto LABEL_26;
      }
    }

    if (!MTLReportFailureTypeEnabled())
    {
LABEL_25:
      v23 = 0;
      v22 = 0;
LABEL_26:
      v27 = [arrays objectAtIndexedSubscript:{v21, destinationArraysCopy, v198}];
      v28 = [arrays objectAtIndexedSubscript:v23];
      if (v22 == -1)
      {
        v29 = 0;
      }

      else
      {
        v29 = [arrays objectAtIndexedSubscript:v22];
      }

      v30 = [destinationArrays objectAtIndexedSubscript:0];
      v31 = *MEMORY[0x277CD7350];
      v32 = *(&self->super.super.super.super.isa + v31);
      v33 = MEMORY[0x277CD7410];
      v34 = *MEMORY[0x277CD7410];
      v35 = *(v30 + v34);
      v36 = *(v30 + v34 + 16);
      v37 = *(v30 + v34 + 48);
      v38 = MEMORY[0x277CD73D8];
      v39 = *MEMORY[0x277CD73D8];
      v40 = *(v30 + v39);
      v259 = *(v30 + v34 + 32);
      v260 = v37;
      v258[0] = v35;
      v258[1] = v36;
      v41 = *(v258 + (BYTE1(v40) & 0xF));
      v261[2] = v259;
      v261[3] = v37;
      v261[0] = v35;
      v261[1] = v36;
      v42 = *(v261 + (v40 & 0xF));
      v43 = v41 >> 10 > 6 || v42 >> 10 >= 7;
      if (v43 && ((v44 = *(v27 + v34 + 4 * (*(v27 + v39) & 0xF)), v44 != 18816) ? (v45 = v44 == 7168) : (v45 = 1), v45))
      {
        v46 = v41 >= 8;
      }

      else
      {
        v47 = *MEMORY[0x277CD73C8];
        v48 = *(v27 + v47);
        if (v48 == 268435488)
        {
          v45 = *(v28 + v47) == 268435488;
          v49 = 3;
          if (v45)
          {
            v49 = 4;
          }
        }

        else
        {
          v49 = 3;
        }

        v50 = 9;
        if (v42 * v41 * v49 < *(v32 + 1480) << 12)
        {
          v50 = 15;
        }

        if (*(v32 + 1472) > 10)
        {
          v54 = *(v28 + v34 + 4 * (WORD1(*(v28 + v39)) & 0xF));
          if (*(v27 + v39) <= BYTE1(*(v27 + v39)) && v54 == 1)
          {
            v56 = *(v27 + v34 + 4 * (WORD1(*(v27 + v39)) & 0xF));
          }

          else
          {
            v56 = 1;
          }

          v41 = v56 * v41;
          v57 = v42 * v54;
          if (*(v28 + v39) <= BYTE1(*(v28 + v39)))
          {
            v57 = *(v261 + (v40 & 0xF));
          }

          if (*(v27 + v34 + 4 * (WORD1(*(v27 + v39)) & 0xF)) == 1)
          {
            v42 = v57;
          }

          v53 = v50;
        }

        else
        {
          v51 = 15;
          if ((v42 & 3) == 0)
          {
            v51 = v50;
          }

          if (v41)
          {
            v52 = 15;
          }

          else
          {
            v52 = v50;
          }

          if (v48 == 268435472)
          {
            v50 = v52;
            v53 = 15;
          }

          else
          {
            v53 = v51;
          }
        }

        v58 = v41 > v50 && v42 > v53;
        v59 = *(v27 + v39 + 3) & 0xF;
        LODWORD(v60) = *(v27 + v34 + 4 * v59);
        v61 = (v28 + v34);
        v62 = *v61;
        v63 = v61[1];
        v64 = v61[2];
        v65 = v61[3];
        v257[3] = v65;
        v257[2] = v64;
        v257[1] = v63;
        v257[0] = v62;
        v66 = *(v257 + v59);
        v67 = !v58;
        if (v60 <= v66)
        {
          v60 = v66;
        }

        else
        {
          v60 = v60;
        }

        v68 = v41 * v60;
        if (v67 != 1 || v68 <= v50)
        {
LABEL_85:
          if (!v29 && (v67 & 1) != 0 || (*(v32 + 1472) - 11) < 0xD)
          {
            return 4;
          }

          v71 = v30;
          graph2 = [objectCopy graph];
          v73 = **(graph2 + 56);
          if (*(*(graph2 + 56) + 8) == v73)
          {
            std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
          }

          v75 = *(*v73 + 24);
          v74 = *v75;
          if (*(v75 + 8) == *v75)
          {
            std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
          }

          selfCopy2 = self;
          v77 = *v74;
          finalOp = [objectCopy finalOp];
          if ((*(*finalOp + 16))(finalOp) && *(v77 + 8) == 268435488)
          {
            v79 = *v33;
            v80 = *(v27 + v79);
            v81 = *(v27 + v79 + 16);
            v82 = *(v27 + v79 + 32);
            v83 = *(v27 + v79 + 48);
            v84 = *v38;
            v85 = *(v27 + v84);
            v86 = BYTE2(v85);
            v255[3] = v83;
            v255[2] = v82;
            v255[1] = v81;
            v255[0] = v80;
            v87 = *(v255 + (BYTE2(v85) & 0xF));
            v88 = BYTE3(v85);
            v254[3] = v83;
            v254[2] = v82;
            v254[1] = v81;
            v254[0] = v80;
            v89 = *(v254 + (BYTE3(v85) & 0xF));
            v90 = v87 != 1;
            if (v89 != 1)
            {
              v90 = 2;
            }

            v91 = *MEMORY[0x277CD73F0];
            v92 = *(v27 + v91);
            if (v92 < 5)
            {
              v94 = v71;
            }

            else
            {
              v93 = 4;
              v94 = v71;
              while (1)
              {
                v252 = v85;
                v253[0] = v80;
                v253[1] = v81;
                v253[2] = v82;
                v253[3] = v83;
                if (*(v253 + (*(&v252 | v93 & 0xF) & 0xF)) >= 2u)
                {
                  break;
                }

                if (v92 == ++v93)
                {
                  goto LABEL_104;
                }
              }

              v90 = 3;
            }

LABEL_104:
            v95 = *(v28 + v79);
            v96 = *(v28 + v79 + 16);
            v97 = *(v28 + v79 + 32);
            v98 = *(v28 + v79 + 48);
            v99 = *(v28 + v84);
            v100 = BYTE2(v99);
            v251[3] = v98;
            v251[2] = v97;
            v251[1] = v96;
            v251[0] = v95;
            v101 = *(v251 + (BYTE2(v99) & 0xF));
            v102 = BYTE3(v99);
            v250[3] = v98;
            v250[2] = v97;
            v250[1] = v96;
            v250[0] = v95;
            v103 = *(v250 + (BYTE3(v99) & 0xF));
            v104 = v101 != 1;
            if (v103 != 1)
            {
              v104 = 2;
            }

            v105 = *(v28 + v91);
            if (v105 >= 5)
            {
              v106 = 4;
              while (1)
              {
                v248 = v99;
                v249[0] = v95;
                v249[1] = v96;
                v249[2] = v97;
                v249[3] = v98;
                if (*(v249 + (*(&v248 | v106 & 0xF) & 0xF)) >= 2u)
                {
                  break;
                }

                if (v105 == ++v106)
                {
                  goto LABEL_112;
                }
              }

              v104 = 3;
            }

LABEL_112:
            v107 = *(v94 + v79);
            v108 = *(v94 + v79 + 16);
            v109 = *(v94 + v79 + 32);
            v110 = *(v94 + v79 + 48);
            v111 = *(v94 + v84 + 2);
            v247[3] = v110;
            v247[2] = v109;
            v247[1] = v108;
            v247[0] = v107;
            v112 = *(v247 + (v111 & 0xF));
            v113 = *(v94 + v84 + 3);
            v246[3] = v110;
            v246[2] = v109;
            result = 3;
            v246[1] = v108;
            v246[0] = v107;
            if (v90 != 2 || v104 != 2)
            {
              return result;
            }

            if (v86 == v100)
            {
              result = 3;
              if (v88 != v102)
              {
                return result;
              }

              if (v111 != v86)
              {
                return result;
              }

              if (v113 != v88)
              {
                return result;
              }

              if (v87 != v101)
              {
                return result;
              }

              if (v89 != v103)
              {
                return result;
              }

              v114 = *(v246 + (v113 & 0xF));
              v245[0] = v95;
              v245[1] = v96;
              result = 3;
              v245[2] = v97;
              v245[3] = v98;
              if (v87 != v112 || v89 != *(v245 + (v88 & 0xF)))
              {
                return result;
              }

              if (v88 + 1 == v86 || v86 + 1 == v88)
              {
                v115 = v86;
                if (v88 >= v86)
                {
                  v116 = v86;
                }

                else
                {
                  v116 = v88;
                }

                if (v86 <= v88)
                {
                  v115 = v88;
                }

                v117 = *MEMORY[0x277CD73D0];
                v118 = *(v27 + v117);
                v119 = *(v27 + v117 + 16);
                v120 = *(v27 + v117 + 32);
                v244 = *(v27 + v117 + 48);
                v243[2] = v120;
                v243[1] = v119;
                v243[0] = v118;
                v121 = *(v243 + (v86 & 0xF));
                v242[3] = v244;
                v242[2] = v120;
                v242[1] = v119;
                v242[0] = v118;
                result = 3;
                if (v87 != v121)
                {
                  return result;
                }

                if (v89 != *(v242 + (v88 & 0xF)))
                {
                  return result;
                }

                v122 = *(v28 + v117);
                v123 = *(v28 + v117 + 16);
                v124 = *(v28 + v117 + 32);
                v241 = *(v28 + v117 + 48);
                v240[2] = v124;
                v240[1] = v123;
                v240[0] = v122;
                v125 = *(v240 + (v86 & 0xF));
                v239[3] = v241;
                v239[2] = v124;
                v239[1] = v123;
                v239[0] = v122;
                result = 3;
                if (v87 != v125)
                {
                  return result;
                }

                if (v89 != *(v239 + (v88 & 0xF)))
                {
                  return result;
                }

                v126 = *(v94 + v117);
                v127 = *(v94 + v117 + 16);
                v128 = *(v94 + v117 + 32);
                v238 = *(v94 + v117 + 48);
                v237[2] = v128;
                v237[1] = v127;
                v237[0] = v126;
                v129 = *(v237 + (v86 & 0xF));
                v236[3] = v238;
                v236[2] = v128;
                v236[1] = v127;
                v236[0] = v126;
                result = 3;
                if (v87 != v129 || v114 != *(v236 + (v88 & 0xF)))
                {
                  return result;
                }

                v130 = *MEMORY[0x277CD7418];
                v131 = *(v27 + v130);
                v132 = *(v27 + v130 + 16);
                v133 = *(v27 + v130 + 32);
                v235 = *(v27 + v130 + 48);
                v234[2] = v133;
                v234[1] = v132;
                v234[0] = v131;
                v134 = *(v234 + (v86 & 0xF));
                v233[3] = v235;
                v233[2] = v133;
                v233[1] = v132;
                v233[0] = v131;
                if (!(v134 | *(v233 + (v88 & 0xF))))
                {
                  v135 = *(v28 + v130);
                  v136 = *(v28 + v130 + 16);
                  v137 = *(v28 + v130 + 32);
                  v232 = *(v28 + v130 + 48);
                  v231[2] = v137;
                  v231[1] = v136;
                  v231[0] = v135;
                  v138 = *(v231 + (v86 & 0xF));
                  v230[3] = v232;
                  v230[2] = v137;
                  v230[1] = v136;
                  v230[0] = v135;
                  if (!(v138 | *(v230 + (v88 & 0xF))))
                  {
                    v139 = (v94 + v130);
                    v140 = *v139;
                    v141 = v139[1];
                    v142 = v139[2];
                    v229 = v139[3];
                    v228[2] = v142;
                    v228[1] = v141;
                    v228[0] = v140;
                    LODWORD(v139) = *(v228 + (v86 & 0xF));
                    v227[3] = v229;
                    v227[2] = v142;
                    v227[1] = v141;
                    v227[0] = v140;
                    if (!(v139 | *(v227 + (v88 & 0xF))))
                    {
                      v143 = *MEMORY[0x277CD7428];
                      v144 = *(v27 + v143);
                      v145 = *(v27 + v143 + 16);
                      v146 = *(v27 + v143 + 32);
                      v147 = *(v27 + v143 + 48);
                      v148 = *(v27 + v143 + 64);
                      v149 = *(v27 + v143 + 80);
                      v150 = *(v27 + v143 + 96);
                      v225 = *(v27 + v143 + 112);
                      v224[6] = v150;
                      v224[5] = v149;
                      v224[4] = v148;
                      v224[3] = v147;
                      v224[2] = v146;
                      v224[1] = v145;
                      v224[0] = v144;
                      v151 = *(v224 + (v115 & 0xF));
                      v223[7] = v225;
                      v223[6] = v150;
                      v223[5] = v149;
                      v223[4] = v148;
                      v223[3] = v147;
                      v223[2] = v146;
                      v223[1] = v145;
                      v223[0] = v144;
                      v152 = v116 & 0xF;
                      v153 = *(v223 + v152);
                      v226[0] = v80;
                      v226[1] = v81;
                      v226[2] = v82;
                      v226[3] = v83;
                      if (v151 == v153 * *(v226 + v152))
                      {
                        v154 = *(v28 + v143);
                        v155 = *(v28 + v143 + 16);
                        v156 = *(v28 + v143 + 32);
                        v157 = *(v28 + v143 + 48);
                        v158 = *(v28 + v143 + 64);
                        v159 = *(v28 + v143 + 80);
                        v160 = *(v28 + v143 + 96);
                        v222 = *(v28 + v143 + 112);
                        v221[6] = v160;
                        v221[5] = v159;
                        v221[4] = v158;
                        v221[3] = v157;
                        v221[2] = v156;
                        v221[1] = v155;
                        v221[0] = v154;
                        v161 = *(v221 + (v115 & 0xF));
                        v220[7] = v222;
                        v220[6] = v160;
                        v220[5] = v159;
                        v220[4] = v158;
                        v220[3] = v157;
                        v220[2] = v156;
                        v220[1] = v155;
                        v220[0] = v154;
                        v162 = *(v220 + v152);
                        v219[0] = v95;
                        v219[1] = v96;
                        v219[2] = v97;
                        v219[3] = v98;
                        if (v161 == v162 * *(v219 + v152))
                        {
                          v163 = *(v71 + v143);
                          v164 = *(v71 + v143 + 16);
                          v165 = *(v71 + v143 + 32);
                          v166 = *(v71 + v143 + 48);
                          v167 = *(v71 + v143 + 64);
                          v168 = *(v71 + v143 + 80);
                          v169 = *(v71 + v143 + 112);
                          v217 = *(v71 + v143 + 96);
                          v218 = v169;
                          v216[4] = v167;
                          v216[5] = v168;
                          v216[2] = v165;
                          v216[3] = v166;
                          v216[0] = v163;
                          v216[1] = v164;
                          v170 = *(v216 + (v115 & 0xF));
                          v215[6] = v217;
                          v215[7] = v169;
                          v215[4] = v167;
                          v215[5] = v168;
                          v215[2] = v165;
                          v215[3] = v166;
                          v215[0] = v163;
                          v215[1] = v164;
                          v171 = *(v215 + (v116 & 0xF));
                          v214[0] = v107;
                          v214[1] = v108;
                          v214[2] = v109;
                          v214[3] = v110;
                          if (v170 == v171 * *(v214 + (v116 & 0xF)))
                          {
                            if (v86 && v88 || (v195 = *MEMORY[0x277CD73C8], v196 = *MEMORY[0x277CD7400], (*(v27 + v195) >> 3) * v118 == *(v27 + v196)) && (*(v28 + v195) >> 3) * v122 == *(v28 + v196) && (*(v71 + v195) >> 3) * v126 == *(v71 + v196))
                            {
                              if (!v29)
                              {
                                goto LABEL_157;
                              }

                              v172 = v29 + v84;
                              result = 3;
                              if (*(v172 + 2) != v86)
                              {
                                return result;
                              }

                              if (*(v172 + 3) != v88)
                              {
                                return result;
                              }

                              v173 = (v29 + v79);
                              v174 = *v173;
                              v175 = v173[1];
                              v176 = v173[2];
                              v177 = v173[3];
                              v213[2] = v176;
                              v213[3] = v177;
                              v213[0] = v174;
                              v213[1] = v175;
                              LODWORD(v173) = *(v213 + (v86 & 0xF));
                              v212[2] = v176;
                              v212[3] = v177;
                              v212[0] = v174;
                              v212[1] = v175;
                              result = 3;
                              if (v87 != v173)
                              {
                                return result;
                              }

                              if (v89 != *(v212 + (v88 & 0xF)))
                              {
                                return result;
                              }

                              v178 = *(v29 + v117);
                              v179 = *(v29 + v117 + 16);
                              v180 = *(v29 + v117 + 48);
                              v210 = *(v29 + v117 + 32);
                              v211 = v180;
                              v209[0] = v178;
                              v209[1] = v179;
                              v181 = *(v209 + (v86 & 0xF));
                              v208[2] = v210;
                              v208[3] = v180;
                              v208[0] = v178;
                              v208[1] = v179;
                              result = 3;
                              if (v87 != v181 || v89 != *(v208 + (v88 & 0xF)))
                              {
                                return result;
                              }

                              v182 = *(v29 + v130);
                              v183 = *(v29 + v130 + 16);
                              v184 = *(v29 + v130 + 48);
                              v206 = *(v29 + v130 + 32);
                              v207 = v184;
                              v205[0] = v182;
                              v205[1] = v183;
                              v185 = *(v205 + (v86 & 0xF));
                              v204[2] = v206;
                              v204[3] = v184;
                              v204[0] = v182;
                              v204[1] = v183;
                              if (!(v185 | *(v204 + (v88 & 0xF))))
                              {
                                v186 = *(v29 + v143);
                                v187 = *(v29 + v143 + 16);
                                v188 = *(v29 + v143 + 32);
                                v189 = *(v29 + v143 + 48);
                                v190 = *(v29 + v143 + 64);
                                v191 = *(v29 + v143 + 80);
                                v192 = *(v29 + v143 + 112);
                                v202 = *(v29 + v143 + 96);
                                v203 = v192;
                                v201[4] = v190;
                                v201[5] = v191;
                                v201[2] = v188;
                                v201[3] = v189;
                                v201[0] = v186;
                                v201[1] = v187;
                                v193 = *(v201 + (v115 & 0xF));
                                v200[6] = v202;
                                v200[7] = v192;
                                v200[4] = v190;
                                v200[5] = v191;
                                v200[2] = v188;
                                v200[3] = v189;
                                v200[0] = v186;
                                v200[1] = v187;
                                v194 = *(v200 + (v116 & 0xF));
                                v199[0] = v174;
                                v199[1] = v175;
                                v199[2] = v176;
                                v199[3] = v177;
                                if (v193 == v194 * *(v199 + (v116 & 0xF)) && (v86 && v88 || (*(v29 + *MEMORY[0x277CD73C8]) >> 3) * v178 == *(v29 + *MEMORY[0x277CD7400])))
                                {
LABEL_157:
                                  if ((*(&selfCopy2->super.super.super.super.isa + v31))[368] < 11)
                                  {
                                    return 3;
                                  }

                                  else
                                  {
                                    return 4;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          return 3;
        }

        v70 = *(v28 + v39);
        v256[0] = v62;
        v256[1] = v63;
        v256[2] = v64;
        v256[3] = v65;
        v46 = *(v256 + (v70 & 0xF)) >= 0x81u;
      }

      LOBYTE(v67) = !v46;
      goto LABEL_85;
    }

LABEL_24:
    MTLReportFailure();
    goto LABEL_25;
  }

  v12 = v11 >> 3;
  if (v12 <= 1)
  {
    v12 = 1;
  }

  result = 3;
  while (*(*v10 + 96) == 1)
  {
    v10 += 8;
    if (!--v12)
    {
      goto LABEL_8;
    }
  }

  return result;
}

- (MPSNDArrayMatrixMultiplication)initWithDevice:(id)device sourceCount:(unint64_t)count
{
  v16.receiver = self;
  v16.super_class = MPSNDArrayMatrixMultiplication;
  v5 = [(MPSNDArrayMultiaryKernel *)&v16 initWithDevice:device sourceCount:count];
  v6 = v5;
  if (!v5)
  {
    return v6;
  }

  v5->_alpha = 1.0;
  v5->_beta = 1.0;
  v5->super._encode = EncodeArrayMultiply;
  v5->super.super._encodeData = v5;
  v7 = *MEMORY[0x277CD7350];
  v8 = *(&v5->super.super.super.super.isa + v7);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZL19setParametersFromEVP30MPSNDArrayMatrixMultiplicationP9MPSDevice_block_invoke;
  block[3] = &unk_278B020E8;
  block[4] = v5;
  block[5] = v8;
  if (setParametersFromEV(MPSNDArrayMatrixMultiplication *,MPSDevice *)::setEVTileParams != -1)
  {
    dispatch_once(&setParametersFromEV(MPSNDArrayMatrixMultiplication *,MPSDevice *)::setEVTileParams, block);
    v15 = MPSIsReducedPrecision();
    v10 = MEMORY[0x277CD7378];
    if (!v15)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v9 = MPSIsReducedPrecision();
  v10 = MEMORY[0x277CD7378];
  if (v9)
  {
LABEL_4:
    *(&v6->super.super.super.super.isa + *v10) = (*(&v6->super.super.super.super.isa + *v10) | 2);
  }

LABEL_5:
  if (((*(&v6->super.super.super.super.isa + v7))[368] - 25) <= 0xFFFFFFF8)
  {
    v6->_mmul = [objc_alloc(MEMORY[0x277CD75E0]) initWithDevice:device transposeLeft:0 transposeRight:0 resultRows:0 resultColumns:0 interiorColumns:0 alpha:1.0 beta:1.0];
  }

  v11 = [[MPSNDArrayIdentity alloc] initWithDevice:device];
  v6->_identity = v11;
  *(&v11->super.super.super.super.super.isa + *v10) = (*(&v11->super.super.super.super.super.isa + *v10) | 1);
  v6->_normFusionDescriptor = 0;
  v6->_normScaleArray = 0;
  v12 = [MPSNDArrayStitchedReductionRMSNorm alloc];
  LODWORD(v13) = 897988541;
  v6->_rmsKernel = [(MPSNDArrayStitchedReductionRMSNorm *)v12 initWithDevice:device axis:0 epsilon:v13];
  v6->_softmaxKernel = [[MPSNDArrayStitchedReductionSoftmax alloc] initWithDevice:device axis:0];
  v6->_autoTuneIteration = -1;
  v6->_nextAutoTuneIteration = -1;
  v6->_logNextAutoTuneParams = 0;
  return v6;
}

- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state
{
  v107[16] = *MEMORY[0x277D85DE8];
  v5 = [arrays objectAtIndexedSubscript:{0, state}];
  v6 = [arrays objectAtIndexedSubscript:1];
  v7 = 0;
  v8 = *MEMORY[0x277CD73D8];
  v9 = v5 + v8;
  v10 = *(v5 + v8);
  v11 = (v6 + v8);
  v12 = *v11;
  if (v10 <= BYTE1(v10))
  {
    v13 = *MEMORY[0x277CD7410];
    v14 = (v5 + v13);
    v15 = *(v6 + v13 + 4);
    v16 = *v14 == 1 && v14[1] == v15;
    v7 = 4;
    if (v16)
    {
      v7 = 0;
    }
  }

  if (*v11 <= BYTE1(*v11))
  {
    v17 = *MEMORY[0x277CD7410];
    if (*(v6 + v17 + 4) == 1 && *(v6 + v17) == *(v5 + v17))
    {
      v18 = 1;
    }

    else
    {
      v18 = *(v6 + v17);
    }
  }

  else
  {
    v17 = *MEMORY[0x277CD7410];
    v18 = *(v6 + v17 + 4);
  }

  v107[0] = v18;
  v20 = (v5 + v17);
  v21 = *(v5 + v17 + v7);
  v78 = BYTE13(v10);
  v22 = BYTE12(v12);
  v23 = BYTE12(v10);
  v24 = BYTE11(v12);
  v25 = BYTE11(v10);
  v26 = BYTE10(v12);
  v27 = BYTE10(v10);
  v28 = BYTE9(v12);
  v29 = BYTE9(v10);
  v30 = BYTE8(v12);
  v31 = BYTE8(v10);
  v32 = BYTE7(v12);
  v33 = BYTE7(v10);
  v34 = BYTE6(v12);
  v35 = BYTE6(v10);
  v36 = BYTE5(v12);
  v37 = BYTE5(v10);
  v38 = BYTE4(v12);
  v39 = BYTE4(v10);
  v40 = BYTE3(v12);
  v41 = BYTE3(v10);
  v42 = BYTE2(v12);
  v43 = BYTE2(v10);
  v107[1] = v21;
  v44 = *v20;
  v45 = v20[1];
  v46 = v20[2];
  v47 = v20[3];
  v95[3] = v47;
  v95[2] = v46;
  v95[1] = v45;
  v95[0] = v44;
  LODWORD(v48) = *(v95 + (v43 & 0xF));
  v49 = (v6 + v17);
  v50 = *v49;
  v51 = v49[1];
  v52 = v49[2];
  v53 = v49[3];
  v94[2] = v52;
  v94[3] = v53;
  v94[0] = v50;
  v94[1] = v51;
  v54 = *(v94 + (v42 & 0xF));
  if (v48 <= v54)
  {
    v48 = v54;
  }

  else
  {
    v48 = v48;
  }

  v107[2] = v48;
  v96[3] = v47;
  v96[2] = v46;
  v96[1] = v45;
  v96[0] = v44;
  LODWORD(v48) = *(v96 + (v41 & 0xF));
  v93[2] = v52;
  v93[3] = v53;
  v93[0] = v50;
  v93[1] = v51;
  v55 = *(v93 + (v40 & 0xF));
  if (v48 <= v55)
  {
    v48 = v55;
  }

  else
  {
    v48 = v48;
  }

  v107[3] = v48;
  v97[3] = v47;
  v97[2] = v46;
  v97[1] = v45;
  v97[0] = v44;
  LODWORD(v48) = *(v97 + (v39 & 0xF));
  v92[2] = v52;
  v92[3] = v53;
  v92[0] = v50;
  v92[1] = v51;
  v56 = *(v92 + (v38 & 0xF));
  if (v48 <= v56)
  {
    v48 = v56;
  }

  else
  {
    v48 = v48;
  }

  v107[4] = v48;
  v98[3] = v47;
  v98[2] = v46;
  v98[1] = v45;
  v98[0] = v44;
  LODWORD(v48) = *(v98 + (v37 & 0xF));
  v91[2] = v52;
  v91[3] = v53;
  v91[0] = v50;
  v91[1] = v51;
  v57 = *(v91 + (v36 & 0xF));
  if (v48 <= v57)
  {
    v48 = v57;
  }

  else
  {
    v48 = v48;
  }

  v107[5] = v48;
  v99[3] = v47;
  v99[2] = v46;
  v99[1] = v45;
  v99[0] = v44;
  LODWORD(v48) = *(v99 + (v35 & 0xF));
  v90[2] = v52;
  v90[3] = v53;
  v90[0] = v50;
  v90[1] = v51;
  v58 = *(v90 + (v34 & 0xF));
  if (v48 <= v58)
  {
    v48 = v58;
  }

  else
  {
    v48 = v48;
  }

  v107[6] = v48;
  v100[3] = v47;
  v100[2] = v46;
  v100[1] = v45;
  v100[0] = v44;
  LODWORD(v48) = *(v100 + (v33 & 0xF));
  v89[2] = v52;
  v89[3] = v53;
  v89[0] = v50;
  v89[1] = v51;
  v59 = *(v89 + (v32 & 0xF));
  if (v48 <= v59)
  {
    v48 = v59;
  }

  else
  {
    v48 = v48;
  }

  v107[7] = v48;
  v101[3] = v47;
  v101[2] = v46;
  v101[1] = v45;
  v101[0] = v44;
  LODWORD(v48) = *(v101 + (v31 & 0xF));
  v88[2] = v52;
  v88[3] = v53;
  v88[0] = v50;
  v88[1] = v51;
  v60 = *(v88 + (v30 & 0xF));
  if (v48 <= v60)
  {
    v48 = v60;
  }

  else
  {
    v48 = v48;
  }

  v107[8] = v48;
  v102[3] = v47;
  v102[2] = v46;
  v102[1] = v45;
  v102[0] = v44;
  LODWORD(v48) = *(v102 + (v29 & 0xF));
  v87[2] = v52;
  v87[3] = v53;
  v87[0] = v50;
  v87[1] = v51;
  v61 = *(v87 + (v28 & 0xF));
  if (v48 <= v61)
  {
    v48 = v61;
  }

  else
  {
    v48 = v48;
  }

  v107[9] = v48;
  v103[3] = v47;
  v103[2] = v46;
  v103[1] = v45;
  v103[0] = v44;
  LODWORD(v48) = *(v103 + (v27 & 0xF));
  v86[2] = v52;
  v86[3] = v53;
  v86[0] = v50;
  v86[1] = v51;
  v62 = *(v86 + (v26 & 0xF));
  if (v48 <= v62)
  {
    v48 = v62;
  }

  else
  {
    v48 = v48;
  }

  v107[10] = v48;
  v104[3] = v47;
  v104[2] = v46;
  v104[1] = v45;
  v104[0] = v44;
  LODWORD(v48) = *(v104 + (v25 & 0xF));
  v85[2] = v52;
  v85[3] = v53;
  v85[0] = v50;
  v85[1] = v51;
  v63 = *(v85 + (v24 & 0xF));
  if (v48 <= v63)
  {
    v48 = v63;
  }

  else
  {
    v48 = v48;
  }

  v107[11] = v48;
  v105[3] = v47;
  v105[2] = v46;
  v105[1] = v45;
  v105[0] = v44;
  LODWORD(v48) = *(v105 + (v23 & 0xF));
  v84[2] = v52;
  v84[3] = v53;
  v84[0] = v50;
  v84[1] = v51;
  v64 = *(v84 + (v22 & 0xF));
  if (v48 <= v64)
  {
    v48 = v64;
  }

  else
  {
    v48 = v48;
  }

  v107[12] = v48;
  v106[3] = v47;
  v106[2] = v46;
  v106[1] = v45;
  v106[0] = v44;
  LODWORD(v48) = *(v106 + (v78 & 0xF));
  v65 = *(v11 + 13) & 0xF;
  v83[2] = v52;
  v83[3] = v53;
  v83[0] = v50;
  v83[1] = v51;
  v66 = *(v83 + v65);
  if (v48 <= v66)
  {
    v48 = v66;
  }

  else
  {
    v48 = v48;
  }

  v107[13] = v48;
  v67 = *(v9 + 14) & 0xF;
  v81[2] = v46;
  v81[3] = v47;
  v81[0] = v44;
  v81[1] = v45;
  LODWORD(v67) = *(v81 + v67);
  v68 = *(v11 + 14) & 0xF;
  v82[2] = v52;
  v82[3] = v53;
  v82[0] = v50;
  v82[1] = v51;
  v69 = *(v82 + v68);
  if (v67 <= v69)
  {
    v67 = v69;
  }

  else
  {
    v67 = v67;
  }

  v107[14] = v67;
  v70 = *(v9 + 15) & 0xF;
  v79[2] = v46;
  v79[3] = v47;
  v79[0] = v44;
  v79[1] = v45;
  v71 = *(v79 + v70);
  v72 = *(v11 + 15) & 0xF;
  v80[2] = v52;
  v80[3] = v53;
  v80[0] = v50;
  v80[1] = v51;
  LODWORD(v72) = *(v80 + v72);
  if (v71 <= v72)
  {
    v72 = v72;
  }

  else
  {
    v72 = v71;
  }

  v107[15] = v72;
  v73 = MEMORY[0x277CD7268];
  v74 = [arrays objectAtIndexedSubscript:0];
  v75 = *(v74 + *MEMORY[0x277CD73C8]);
  v76 = [arrays objectAtIndexedSubscript:0];
  return [v73 descriptorWithDataType:v75 dimensionCount:*(v76 + *MEMORY[0x277CD73F0]) dimensionSizes:v107];
}

- (MPSNDArrayMatrixMultiplication)initWithCoder:(id)coder device:(id)device
{
  v11.receiver = self;
  v11.super_class = MPSNDArrayMatrixMultiplication;
  v6 = [MPSNDArrayMultiaryKernel initWithCoder:sel_initWithCoder_device_ device:?];
  if (v6)
  {
    [coder decodeDoubleForKey:@"MPSNDArrayMatrixMultiplication.alpha"];
    v6->_alpha = v7;
    [coder decodeDoubleForKey:@"MPSNDArrayMatrixMultiplication.beta"];
    v6->_beta = v8;
    v6->super._encode = EncodeArrayMultiply;
    v6->super.super._encodeData = v6;
    v6->_mmul = [objc_alloc(MEMORY[0x277CD75E0]) initWithDevice:device transposeLeft:0 transposeRight:0 resultRows:0 resultColumns:0 interiorColumns:0 alpha:1.0 beta:1.0];
    v9 = [[MPSNDArrayIdentity alloc] initWithDevice:device];
    v6->_identity = v9;
    *(&v9->super.super.super.super.super.isa + *MEMORY[0x277CD7378]) = (*(&v9->super.super.super.super.super.isa + *MEMORY[0x277CD7378]) | 1);
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayMatrixMultiplication;
  [(MPSNDArrayMultiaryBase *)&v5 encodeWithCoder:?];
  [coder encodeDouble:@"MPSNDArrayMatrixMultiplication.alpha" forKey:self->_alpha];
  [coder encodeDouble:@"MPSNDArrayMatrixMultiplication.beta" forKey:self->_beta];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v10.receiver = self;
  v10.super_class = MPSNDArrayMatrixMultiplication;
  result = [MPSNDArrayMultiaryKernel copyWithZone:sel_copyWithZone_device_ device:?];
  if (result)
  {
    *(result + 32) = *&self->_alpha;
    *(result + 33) = *&self->_beta;
    self->super._encode = EncodeArrayMultiply;
    self->super.super._encodeData = self;
    v8 = result;
    *(result + 18) = [(MPSMatrixMultiplication *)self->_mmul copyWithZone:zone device:device];
    v9 = [(MPSNDArrayIdentity *)self->_identity copyWithZone:zone device:device];
    result = v8;
    v8[19] = v9;
  }

  return result;
}

- (void)dealloc
{
  autoTuningParams = self->_autoTuningParams;
  if (autoTuningParams)
  {
    free(autoTuningParams);
  }

  alphaBetaKernelDAGObject = self->_alphaBetaKernelDAGObject;
  if (alphaBetaKernelDAGObject)
  {
  }

  v5.receiver = self;
  v5.super_class = MPSNDArrayMatrixMultiplication;
  [(MPSNDArrayMultiaryBase *)&v5 dealloc];
}

- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state
{
  v68.receiver = self;
  v68.super_class = MPSNDArrayMatrixMultiplication;
  v9 = [(MPSNDArrayMultiaryBase *)&v68 workloadStatisticsForSourceArrays:arrays destArrays:destArrays sourceState:state];
  graph = [object graph];
  v11 = *(graph + 64);
  v12 = *v11;
  v13 = v11[1];
  if (*v11 == v13)
  {
    v16 = 0;
  }

  else
  {
    v14 = graph;
    v15 = 0;
    v16 = -1;
    v17 = -1;
    do
    {
      v18 = *v12;
      if (v18 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v14) + 32))
      {
        v16 = v15;
      }

      v19 = *v12;
      if (v19 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v14) + 32))
      {
        v17 = v15;
      }

      if (MPSKernelDAG::GetCoreOpNumberOfInputs(v14) == 3)
      {
        MPSKernelDAG::GetCoreOpInputAtIndex(v14);
      }

      ++v15;
      ++v12;
    }

    while (v12 != v13);
    if (v16 == -1)
    {
      v16 = 0;
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (v17 != -1)
    {
      goto LABEL_17;
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
LABEL_15:
    MTLReportFailure();
  }

LABEL_16:
  v17 = 0;
LABEL_17:
  v20 = [arrays objectAtIndexedSubscript:v16];
  v21 = [arrays objectAtIndexedSubscript:v17];
  v22 = *MEMORY[0x277CD73D8];
  v23 = *(v20 + v22);
  v24 = BYTE1(*(v20 + v22));
  v59 = *(v21 + v22);
  v25 = BYTE1(*(v21 + v22));
  v26 = *MEMORY[0x277CD7410];
  v27 = *(v20 + v26 + 4 * (WORD1(*(v20 + v22)) & 0xF));
  v28 = *(destArrays + v26);
  v29 = *(destArrays + v26 + 16);
  v30 = *(destArrays + v26 + 48);
  v31 = *(destArrays + v22);
  v65 = *(destArrays + v26 + 32);
  v66 = v30;
  v64[0] = v28;
  v64[1] = v29;
  v32 = *(v64 + (BYTE1(v31) & 0xF));
  v67[2] = v65;
  v67[3] = v30;
  v67[0] = v28;
  v67[1] = v29;
  v33 = *(v67 + (v31 & 0xF));
  if (v59 <= v25)
  {
    v34 = v23;
  }

  else
  {
    v34 = v24;
  }

  v35 = *(v21 + v26 + 4 * (v34 & 0xF));
  v60 = v32;
  v61 = v27;
  v36 = v32 * v27 * v33;
  v37 = (v36 * v35);
  if ((*(destArrays + *MEMORY[0x277CD73C8]) & 0xFFF8) == 0x20)
  {
    [v9 setFloat32Ops:v37];
    [v9 setFloat16Ops:0.0];
    if (*(kernel + 33) != 0.0)
    {
      [v9 float32Ops];
      [v9 setFloat32Ops:v38 + v36];
    }
  }

  else
  {
    [v9 setFloat16Ops:v37];
    [v9 setFloat32Ops:0.0];
    if (*(kernel + 33) != 0.0)
    {
      [v9 float16Ops];
      [v9 setFloat16Ops:v39 + v36];
    }
  }

  [v9 float32Ops];
  v41 = v40;
  [v9 float16Ops];
  v43 = v41 + v42;
  [v9 deviceMemoryBytesRead];
  v45 = v44;
  [v9 deviceMemoryBytesWrite];
  v47 = v43 / (v45 + v46);
  v48 = MPSGetDataTypeName();
  v49 = MPSGetDataTypeName();
  v50 = MPSGetDataTypeName();
  MPSKernel_LogInfo(kernel, 2uLL, "Matrix Multiply: M=%lu, N=%lu, K=%lu, Batch Size: %lu, transposeA=%d, transposeB=%d, A Datatype: %s, B Datatype: %s C Datatype: %s\t", v60, v33, v35, v61, v23 > v24, v59 > v25, v48, v49, v50);
  [v9 float16Ops];
  v52 = v51;
  [v9 float32Ops];
  v54 = v53;
  [v9 deviceMemoryBytesRead];
  v56 = v55;
  [v9 deviceMemoryBytesWrite];
  MPSKernel_LogInfo(kernel, 2uLL, "Matrix Multiply: f16Ops=%f, f32Ops=%f, BytesRead=%f, BytesWritten=%f, OpsPerByte=%f\n", v52, v54, v56, v57, v47);
  return v9;
}

- (id)encodePreProcessingToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceArrays:(id)arrays destinationArray:(id *)array kernelDAGObject:(id *)object
{
  v7 = MEMORY[0x28223BE20](self, a2, encoder, buffer, arrays, array, object);
  v301 = v8;
  v312 = v9;
  v306 = v10;
  v304 = v11;
  v12 = v7;
  v392[3] = *MEMORY[0x277D85DE8];
  v14 = *v13;
  CoreOpNumberOfInputs = MPSKernelDAG::GetCoreOpNumberOfInputs([*v13 graph]);
  finalOp = [v14 finalOp];
  v17 = (*(*finalOp + 16))(finalOp);
  v314 = v12;
  v309 = *MEMORY[0x277CD7350];
  v18 = [MPSNDArrayMatrixMultiplication supportsPostfixForDevice:*(v12 + v309)];
  if (CoreOpNumberOfInputs >= 3 && v17 != 0 && v18)
  {
    if (CoreOpNumberOfInputs != 3)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    operator new();
  }

  v303 = v17 ^ 1;
  graph = [v14 graph];
  v22 = graph;
  v23 = *(graph + 64);
  v24 = *v23;
  v25 = v23[1];
  if (*v23 == v25)
  {
    return v312;
  }

  v26 = 0;
  v27 = -1;
  v28 = -1;
  v29 = -1;
  do
  {
    v30 = *v24;
    if (v30 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v22) + 32))
    {
      v27 = v26;
    }

    v31 = *v24;
    if (v31 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v22) + 32))
    {
      v29 = v26;
    }

    if (MPSKernelDAG::GetCoreOpNumberOfInputs(v22) == 3)
    {
      v32 = *v24;
      if (v32 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v22) + 32))
      {
        v28 = v26;
      }
    }

    ++v26;
    ++v24;
  }

  while (v24 != v25);
  if (v27 == -1 || v29 == -1)
  {
    return v312;
  }

  v307 = [v312 objectAtIndexedSubscript:v27];
  v305 = [v312 objectAtIndexedSubscript:v29];
  if (v28 == -1)
  {
    v302 = 0;
  }

  else
  {
    v302 = [v312 objectAtIndexedSubscript:v28];
  }

  v313 = [MEMORY[0x277CBEB18] arrayWithArray:v312];
  v34 = *(v314 + 184);
  if (v34 && [v34 normFusionType])
  {
    v35 = *v301;
    v36 = *(v314 + v309);
    normFusionType = [*(v314 + 184) normFusionType];
    isLeftFused = [*(v314 + 184) isLeftFused];
    if (!v36 || (*(v36 + 1477) & 4) == 0 || *(v36 + 1472) < 11)
    {
      goto LABEL_35;
    }

    v233 = *(v314 + 200);
    v234 = *MEMORY[0x277CD7410];
    v235 = *(&v35->super.isa + v234);
    v236 = *(&v35[2].super.isa + v234);
    v237 = *(&v35[4].super.isa + v234);
    v238 = *MEMORY[0x277CD73D8];
    v239 = *(&v35->super.isa + v238);
    v385 = *(&v35[6].super.isa + v234);
    v384[2] = v237;
    v384[1] = v236;
    v384[0] = v235;
    v240 = *(v384 + (BYTE1(v239) & 0xF));
    v383[3] = v385;
    v383[2] = v237;
    v383[1] = v236;
    v383[0] = v235;
    v241 = *(v383 + (v239 & 0xF));
    if (v233 && (*(v233 + 30) & 1) != 0)
    {
      v242 = 1;
      goto LABEL_268;
    }

    v243 = v240 >> 10 > 6 || v241 >> 10 >= 7;
    if (v243 && ((v244 = *&v307[4 * (*&v307[v238] & 0xF) + v234], v244 != 18816) ? (v245 = v244 == 7168) : (v245 = 1), v245))
    {
      v246 = v240 >= 8;
    }

    else
    {
      v247 = *MEMORY[0x277CD73C8];
      if (*&v307[v247] == 268435488)
      {
        v248 = v305;
        v249 = 3;
        if (*&v305[v247] == 268435488)
        {
          v249 = 4;
        }
      }

      else
      {
        v249 = 3;
        v248 = v305;
      }

      v250 = 9;
      v251 = *&v307[v238];
      v252 = *&v248[v238];
      if (v241 * v240 * v249 < *(v36 + 1480) << 12)
      {
        v250 = 15;
      }

      v253 = *&v307[v234];
      v254 = *&v307[v234 + 16];
      v255 = *&v307[v234 + 32];
      v256 = *&v307[v234 + 48];
      v382[3] = v256;
      v382[2] = v255;
      v382[1] = v254;
      v382[0] = v253;
      v257 = *(v382 + (BYTE2(v251) & 0xF));
      v258 = *&v248[v234];
      v259 = *&v248[v234 + 16];
      v260 = *&v248[v234 + 32];
      v261 = *&v248[v234 + 48];
      v380[3] = v261;
      v380[2] = v260;
      v380[1] = v259;
      v380[0] = v258;
      if (v251 <= BYTE1(v251) && *(v380 + (BYTE2(v252) & 0xF)) == 1)
      {
        v263 = v257;
      }

      else
      {
        v263 = 1;
      }

      v264 = v252 > BYTE1(v252) && v257 == 1;
      v265 = v263 * v240;
      if (v264)
      {
        v266 = *(v380 + (BYTE2(v252) & 0xF));
      }

      else
      {
        v266 = 1;
      }

      v267 = v266 * v241;
      v268 = v265 > v250 && v267 > v250;
      v381[3] = v256;
      v381[2] = v255;
      v381[1] = v254;
      v381[0] = v253;
      v269 = BYTE3(v251) & 0xF;
      LODWORD(v270) = *(v381 + v269);
      v379[3] = v261;
      v379[2] = v260;
      v379[1] = v259;
      v379[0] = v258;
      v271 = *(v379 + v269);
      v242 = !v268;
      if (v270 <= v271)
      {
        v270 = v271;
      }

      else
      {
        v270 = v270;
      }

      v272 = v265 * v270;
      if (v242 != 1 || v272 <= v250)
      {
LABEL_268:
        if (!v302 && v242)
        {
          v274 = &v307[v238];
          v275 = *&v307[4 * (v307[v238 + 1] & 0xF) + v234];
          v276 = *&v305[v238];
          v277 = *&v305[4 * (v276 & 0xF) + v234];
          if (v275 < v277)
          {
            v277 = v275;
          }

          if (normFusionType == 1)
          {
            if (v277 == v241)
            {
              v278 = *v274 > BYTE1(*v274);
            }

            else
            {
              v278 = v276 <= BYTE1(v276);
            }

            v280 = isLeftFused == (v277 == v241) || v277 > 7;
            if (!v280 && v278)
            {
              goto LABEL_61;
            }
          }

          else
          {
            if (v277 == v241)
            {
              v279 = *v274 > BYTE1(*v274);
            }

            else
            {
              v279 = v276 <= BYTE1(v276);
            }

            v281 = v277 == v241;
            v282 = v277 < 8 && v279;
            if (isLeftFused != v281 && !v282)
            {
              goto LABEL_61;
            }
          }
        }

LABEL_35:
        if ([*(v314 + 184) isLeftFused])
        {
          v39 = v307;
        }

        else
        {
          v39 = v305;
        }

        if ([*(v314 + 184) hasScale])
        {
          v40 = *(v314 + 192);
          v391[0] = v39;
          v391[1] = v40;
          [MEMORY[0x277CBEA60] arrayWithObjects:v391 count:2];
          isLeftFused2 = [*(v314 + 184) isLeftFused];
          v42 = *([v14 graph] + 56);
          v43 = *v42;
          if (v42[1] != *v42)
          {
            v44 = isLeftFused2 ^ 1u;
            v46 = *(*v43 + 8);
            v45 = *v46;
            if (v44 < (v46[1] - *v46) >> 3)
            {
              v47 = *(*(v45 + 8 * v44) + 16);
              v49 = *v47;
              v48 = v47[1];
              memset(v392, 0, 24);
              if (v48 != v49)
              {
                if (((v48 - v49) & 0x8000000000000000) == 0)
                {
                  operator new();
                }

                std::vector<long>::__throw_length_error[abi:ne200100]();
              }

              objc_msgSend_getShapeVector([*(v314 + 192) descriptor]);
              v50 = v386;
              v388 = 0;
              v389 = 0;
              v387 = 0;
              v52 = *v386;
              v51 = *(v386 + 8);
              if (v51 != *v386)
              {
                if (((v51 - *v386) & 0x8000000000000000) == 0)
                {
                  operator new();
                }

                std::vector<long>::__throw_length_error[abi:ne200100]();
              }

              v386 = 0;
              if (v52)
              {
                *(v50 + 8) = v52;
                operator delete(v52);
              }

              MEMORY[0x23EE7C8C0](v50, 0x10C402FEFCB83);
              operator new();
            }

            std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
          }

          std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
        }

        v390 = v39;
        v53 = [MEMORY[0x277CBEA60] arrayWithObjects:&v390 count:1];
        descriptor = [v39 descriptor];
        v55 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v306 descriptor:descriptor];
        isLeftFused3 = [*(v314 + 184) isLeftFused];
        normFusionType2 = [*(v314 + 184) normFusionType];
        v58 = isLeftFused3 ^ 1u;
        if (normFusionType2 == 2)
        {
          v59 = (v314 + 240);
          [*(v314 + 240) setAxis:v58];
          [*(v314 + 184) epsilon];
          [*(v314 + 240) setEpsilon:?];
        }

        else
        {
          if (normFusionType2 != 1)
          {
LABEL_56:
            isLeftFused4 = [*(v314 + 184) isLeftFused];
            v61 = v305;
            if (!isLeftFused4)
            {
              v61 = v55;
            }

            v305 = v61;
            v62 = v307;
            if (isLeftFused4)
            {
              v62 = v55;
            }

            v307 = v62;
            goto LABEL_61;
          }

          v59 = (v314 + 248);
          [*(v314 + 248) setAxis:v58];
        }

        [*v59 encodeToMPSCommandEncoder:v304 commandBuffer:v306 sourceArrays:v53 resultState:0 destinationArray:v55 kernelDAGObject:0];
        goto LABEL_56;
      }

      v378[0] = v258;
      v378[1] = v259;
      v378[2] = v260;
      v378[3] = v261;
      v246 = *(v378 + (v252 & 0xF)) >= 0x81u;
    }

    v242 = !v246;
    goto LABEL_268;
  }

LABEL_61:
  v63 = *MEMORY[0x277CD73D8];
  v64 = *&v307[v63];
  if ((*(*(v314 + v309) + 1472) - 11) < 0xD)
  {
    v65 = *&v305[v63];
    if (BYTE1(*&v307[v63]))
    {
      v66 = *&v307[v63] != 0;
    }

    else
    {
      v66 = 0;
    }

    v67.i32[0] = v65;
    v67.i32[1] = BYTE1(v65);
    v68 = vtst_s32(v67, 0xFF000000FFLL);
    v69 = v68.i8[0] & v68.i8[4];
    if (v302)
    {
      v70 = 0;
      v71 = *&v302[v63];
      v72.i32[0] = v71;
      v72.i32[1] = BYTE1(v71);
      v73 = vtst_s32(v72, 0xFF000000FFLL);
      v74 = v73.i8[0] & v73.i8[4];
      goto LABEL_88;
    }

    goto LABEL_87;
  }

  v75 = BYTE2(v64) == 3 && BYTE3(v64) == 2;
  v66 = *&v307[v63] > 1u || BYTE1(*&v307[v63]) > 1u || v75;
  v77 = *&v305[v63];
  v78.i32[0] = v77;
  v78.i32[1] = BYTE1(v77);
  v79 = vcgt_u32(vand_s8(v78, 0xFF000000FFLL), 0x100000001);
  if (((v79.i32[0] | v79.i32[1]) & 1) == 0)
  {
    if (BYTE2(v77) == 3)
    {
      v69 = BYTE3(v77) == 2;
      if (v302)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v69 = 0;
      if (v302)
      {
        goto LABEL_78;
      }
    }

LABEL_87:
    v74 = 0;
    v70 = 1;
    goto LABEL_88;
  }

  v69 = 1;
  if (!v302)
  {
    goto LABEL_87;
  }

LABEL_78:
  v80 = *&v302[v63];
  v81.i32[0] = v80;
  v81.i32[1] = BYTE1(v80);
  v82 = vcgt_u32(vand_s8(v81, 0xFF000000FFLL), 0x100000001);
  v83 = BYTE3(v80) == 2;
  if (BYTE2(v80) != 3)
  {
    v83 = 0;
  }

  v70 = 0;
  v74 = ((v82.i8[0] | v82.i8[4]) & 1) != 0 || v83;
LABEL_88:
  [v313 setObject:v307 atIndexedSubscript:v27];
  [v313 setObject:v305 atIndexedSubscript:v29];
  if ((v70 & 1) == 0)
  {
    [v313 setObject:v302 atIndexedSubscript:v28];
  }

  if (v66)
  {
    v84 = *(v314 + 152);
    v85 = *&v307[*MEMORY[0x277CD73D8]];
    if ((*(*(v314 + v309) + 1472) - 11) > 0xC)
    {
      if (*&v307[*MEMORY[0x277CD73D8]] <= 1u && BYTE1(*&v307[*MEMORY[0x277CD73D8]]) <= 1u && (BYTE2(v85) != 3 || BYTE3(v85) != 2))
      {
        goto LABEL_100;
      }
    }

    else if (!*&v307[*MEMORY[0x277CD73D8]] || !BYTE1(*&v307[*MEMORY[0x277CD73D8]]))
    {
LABEL_100:
      v88 = v307;
      goto LABEL_101;
    }

    v86 = [objc_msgSend(v307 "descriptor")];
    v87 = [MEMORY[0x277CD7268] descriptorWithDataType:*&v307[*MEMORY[0x277CD73C8]] shape:v86];
    v88 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v306 descriptor:v87];
    v392[0] = v307;
    [v84 encodeToMPSCommandEncoder:v304 commandBuffer:v306 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:v392 kernelDAGObject:{1), 0, v88, 0}];
LABEL_101:
    [v313 setObject:v88 atIndexedSubscript:v27];
  }

  if ((v69 & 1) == 0)
  {
    goto LABEL_114;
  }

  v89 = *(v314 + 152);
  v90 = *&v305[*MEMORY[0x277CD73D8]];
  if ((*(*(v314 + v309) + 1472) - 11) > 0xC)
  {
    if (*&v305[*MEMORY[0x277CD73D8]] <= 1u && BYTE1(*&v305[*MEMORY[0x277CD73D8]]) <= 1u && (BYTE2(v90) != 3 || BYTE3(v90) != 2))
    {
      goto LABEL_112;
    }
  }

  else if (!*&v305[*MEMORY[0x277CD73D8]] || !BYTE1(*&v305[*MEMORY[0x277CD73D8]]))
  {
LABEL_112:
    v93 = v305;
    goto LABEL_113;
  }

  v91 = [objc_msgSend(v305 "descriptor")];
  v92 = [MEMORY[0x277CD7268] descriptorWithDataType:*&v305[*MEMORY[0x277CD73C8]] shape:v91];
  v93 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v306 descriptor:v92];
  v392[0] = v305;
  [v89 encodeToMPSCommandEncoder:v304 commandBuffer:v306 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:v392 kernelDAGObject:{1), 0, v93, 0}];
LABEL_113:
  [v313 setObject:v93 atIndexedSubscript:v29];
LABEL_114:
  if ((v74 & 1) == 0)
  {
    goto LABEL_126;
  }

  v94 = *(v314 + 152);
  v95 = *&v302[*MEMORY[0x277CD73D8]];
  if ((*(*(v314 + v309) + 1472) - 11) > 0xC)
  {
    if (*&v302[*MEMORY[0x277CD73D8]] <= 1u && BYTE1(*&v302[*MEMORY[0x277CD73D8]]) <= 1u && (BYTE2(v95) != 3 || BYTE3(v95) != 2))
    {
      goto LABEL_124;
    }
  }

  else if (!*&v302[*MEMORY[0x277CD73D8]] || !BYTE1(*&v302[*MEMORY[0x277CD73D8]]))
  {
LABEL_124:
    v98 = v302;
    goto LABEL_125;
  }

  v96 = [objc_msgSend(v302 "descriptor")];
  v97 = [MEMORY[0x277CD7268] descriptorWithDataType:*&v302[*MEMORY[0x277CD73C8]] shape:v96];
  v98 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v306 descriptor:v97];
  v392[0] = v302;
  [v94 encodeToMPSCommandEncoder:v304 commandBuffer:v306 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:v392 kernelDAGObject:{1), 0, v98, 0}];
LABEL_125:
  [v313 setObject:v98 atIndexedSubscript:v28];
LABEL_126:
  v312 = [MEMORY[0x277CBEA60] arrayWithArray:v313];
  graph2 = [v14 graph];
  v100 = **(graph2 + 56);
  if (*(*(graph2 + 56) + 8) == v100)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v102 = *(*v100 + 24);
  v101 = *v102;
  if (v102[1] == *v102)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  if ((v303 & 1) != 0 || *(*v101 + 8) != 268435488)
  {
    return v312;
  }

  v103 = *(*(v314 + v309) + 1472);
  v104 = *(v314 + 152);
  v105 = [v312 objectAtIndexedSubscript:v27];
  v106 = [v312 objectAtIndexedSubscript:v29];
  if (v28 == -1)
  {
    v107 = 0;
  }

  else
  {
    v107 = [v312 objectAtIndexedSubscript:v28];
  }

  v108 = *v301;
  v109 = *MEMORY[0x277CD7410];
  v110 = *&v105[v109];
  v111 = *&v105[v109 + 16];
  v112 = *&v105[v109 + 32];
  v113 = *&v105[v109 + 48];
  v114 = *MEMORY[0x277CD73D8];
  v115 = *&v105[v114];
  v116 = v115.u8[2];
  v377[3] = v113;
  v377[2] = v112;
  v377[1] = v111;
  v377[0] = v110;
  v117 = *(v377 + (v115.i8[2] & 0xF));
  v118 = v115.u8[3];
  v376[3] = v113;
  v376[2] = v112;
  v376[1] = v111;
  v376[0] = v110;
  v119 = *(v376 + (v115.i8[3] & 0xF));
  v120 = v117 != 1;
  if (v119 != 1)
  {
    v120 = 2;
  }

  v121 = *MEMORY[0x277CD73F0];
  v122 = *&v105[v121];
  if (v122 >= 5)
  {
    v123 = 4;
    while (1)
    {
      v374 = v115;
      v375[0] = v110;
      v375[1] = v111;
      v375[2] = v112;
      v375[3] = v113;
      if (*(v375 + (*(&v374 | v123 & 0xF) & 0xF)) >= 2u)
      {
        break;
      }

      if (v122 == ++v123)
      {
        goto LABEL_141;
      }
    }

    v120 = 3;
  }

LABEL_141:
  v124 = *&v106[v109];
  v125 = *&v106[v109 + 16];
  v126 = *&v106[v109 + 32];
  v127 = *&v106[v109 + 48];
  v128 = *&v106[v114];
  v373[3] = v127;
  v373[2] = v126;
  v373[1] = v125;
  v373[0] = v124;
  v129 = *(v373 + (v128.i8[2] & 0xF));
  v372[3] = v127;
  v372[2] = v126;
  v372[1] = v125;
  v372[0] = v124;
  v130 = *(v372 + (v128.i8[3] & 0xF));
  if (v130 == 1)
  {
    v131 = v129 != 1;
  }

  else
  {
    v131 = 2;
  }

  v132 = *&v106[v121];
  if (v132 >= 5)
  {
    v133 = 4;
    while (1)
    {
      v370 = v128;
      v371[0] = v124;
      v371[1] = v125;
      v371[2] = v126;
      v371[3] = v127;
      if (*(v371 + (*(&v370 | v133 & 0xF) & 0xF)) >= 2u)
      {
        break;
      }

      if (v132 == ++v133)
      {
        goto LABEL_150;
      }
    }

    v131 = 3;
  }

LABEL_150:
  v134 = *&v108[v109];
  v135 = *&v108[v109 + 16];
  v136 = *&v108[v114];
  v137 = *&v108[v109 + 32];
  v138 = *&v108[v109 + 48];
  v369[3] = v138;
  v369[2] = v137;
  v369[1] = v135;
  v369[0] = v134;
  v139 = *(v369 + (v136.i8[2] & 0xF));
  v140 = *&v108[v121];
  if (v140 < 5)
  {
LABEL_154:
    if (v120 == 3 || v131 == 3)
    {
      return v312;
    }

    if (v120 == 2 && v131 == 2)
    {
      if (v115.u8[2] != v128.u8[2])
      {
        return v312;
      }

      if (v115.u8[3] != v128.u8[3])
      {
        return v312;
      }

      if (v115.u8[2] != v136.u8[2])
      {
        return v312;
      }

      if (v115.u8[3] != v136.u8[3])
      {
        return v312;
      }

      if (v117 != v129)
      {
        return v312;
      }

      if (v119 != v130)
      {
        return v312;
      }

      v366[0] = v124;
      v366[1] = v125;
      v366[2] = v126;
      v366[3] = v127;
      if (v117 != v139 || v119 != *(v366 + (v115.i8[3] & 0xF)) || v115.u8[3] + 1 != v115.u8[2] && v115.u8[2] + 1 != v115.u8[3])
      {
        return v312;
      }

      v142 = v115.i8[2] & 0xF;
      v143 = v115.u8[2];
      v144 = v115.i8[3] & 0xF;
      v145 = v115.u8[3];
      v146 = v115.u8[3] >= v115.u8[2] ? v115.i8[2] : v115.i8[3];
      v365[0] = v110;
      v365[1] = v111;
      v365[2] = v112;
      v365[3] = v113;
      v147 = *(v365 + v142);
      v148 = *MEMORY[0x277CD73D0];
      v149 = *&v105[v148];
      v150 = *&v105[v148 + 16];
      v151 = *&v105[v148 + 32];
      v152 = *&v105[v148 + 48];
      v363[3] = v152;
      v363[2] = v151;
      v363[1] = v150;
      v363[0] = v149;
      v153 = *(v363 + v142);
      v364[0] = v110;
      v364[1] = v111;
      v364[2] = v112;
      v364[3] = v113;
      v154 = *(v364 + v144);
      v155 = v143 <= v145 ? v118 : v116;
      v362[3] = v152;
      v362[2] = v151;
      v362[1] = v150;
      v362[0] = v149;
      if (v147 != v153)
      {
        return v312;
      }

      if (v154 != *(v362 + v144))
      {
        return v312;
      }

      v361[0] = v124;
      v361[1] = v125;
      v361[2] = v126;
      v361[3] = v127;
      v156 = *(v361 + (v143 & 0xF));
      v157 = *&v106[v148];
      v158 = *&v106[v148 + 16];
      v159 = *&v106[v148 + 32];
      v360 = *&v106[v148 + 48];
      v359[2] = v159;
      v359[1] = v158;
      v359[0] = v157;
      v160 = *(v359 + (v143 & 0xF));
      v358[0] = v124;
      v358[1] = v125;
      v358[2] = v126;
      v358[3] = v127;
      v161 = *(v358 + (v145 & 0xF));
      v357[3] = v360;
      v357[2] = v159;
      v357[1] = v158;
      v357[0] = v157;
      if (v156 != v160)
      {
        return v312;
      }

      if (v161 != *(v357 + (v145 & 0xF)))
      {
        return v312;
      }

      v356[0] = v134;
      v356[1] = v135;
      v356[2] = v137;
      v356[3] = v138;
      v162 = *(v356 + (v143 & 0xF));
      v163 = *&v108[v148];
      v164 = *&v108[v148 + 16];
      v165 = *&v108[v148 + 32];
      v355 = *&v108[v148 + 48];
      v354[2] = v165;
      v354[1] = v164;
      v354[0] = v163;
      v166 = *(v354 + (v143 & 0xF));
      v353[0] = v134;
      v353[1] = v135;
      v353[2] = v137;
      v353[3] = v138;
      v167 = *(v353 + (v145 & 0xF));
      v352[3] = v355;
      v352[2] = v165;
      v352[1] = v164;
      v352[0] = v163;
      if (v162 != v166)
      {
        return v312;
      }

      if (v167 != *(v352 + (v145 & 0xF)))
      {
        return v312;
      }

      v168 = *MEMORY[0x277CD7418];
      v169 = *&v105[v168];
      v170 = *&v105[v168 + 16];
      v171 = *&v105[v168 + 32];
      v351 = *&v105[v168 + 48];
      v350[2] = v171;
      v350[1] = v170;
      v350[0] = v169;
      v172 = *(v350 + (v143 & 0xF));
      v349[3] = v351;
      v349[2] = v171;
      v349[1] = v170;
      v349[0] = v169;
      if (v172 | *(v349 + (v145 & 0xF)))
      {
        return v312;
      }

      v173 = *&v106[v168];
      v174 = *&v106[v168 + 16];
      v175 = *&v106[v168 + 32];
      v348 = *&v106[v168 + 48];
      v347[2] = v175;
      v347[1] = v174;
      v347[0] = v173;
      v176 = *(v347 + (v143 & 0xF));
      v346[3] = v348;
      v346[2] = v175;
      v346[1] = v174;
      v346[0] = v173;
      if (v176 | *(v346 + (v145 & 0xF)))
      {
        return v312;
      }

      v177 = *&v108[v168];
      v178 = *&v108[v168 + 16];
      v179 = *&v108[v168 + 32];
      v345 = *&v108[v168 + 48];
      v344[2] = v179;
      v344[1] = v178;
      v344[0] = v177;
      v180 = *(v344 + (v143 & 0xF));
      v343[3] = v345;
      v343[2] = v179;
      v343[1] = v178;
      v343[0] = v177;
      if (v180 | *(v343 + (v145 & 0xF)))
      {
        return v312;
      }

      v181 = *MEMORY[0x277CD7428];
      v182 = *&v105[v181];
      v183 = *&v105[v181 + 16];
      v184 = *&v105[v181 + 32];
      v185 = *&v105[v181 + 48];
      v186 = *&v105[v181 + 64];
      v187 = *&v105[v181 + 80];
      v188 = *&v105[v181 + 96];
      v341 = *&v105[v181 + 112];
      v340[6] = v188;
      v340[5] = v187;
      v340[4] = v186;
      v340[3] = v185;
      v340[2] = v184;
      v340[1] = v183;
      v340[0] = v182;
      v189 = *(v340 + (v155 & 0xF));
      v339[7] = v341;
      v339[6] = v188;
      v339[5] = v187;
      v339[4] = v186;
      v339[3] = v185;
      v339[2] = v184;
      v339[1] = v183;
      v339[0] = v182;
      v190 = v146 & 0xF;
      v191 = *(v339 + v190);
      v342[0] = v110;
      v342[1] = v111;
      v342[2] = v112;
      v342[3] = v113;
      if (v189 != v191 * *(v342 + v190))
      {
        return v312;
      }

      v192 = *&v106[v181];
      v193 = *&v106[v181 + 16];
      v194 = *&v106[v181 + 32];
      v195 = *&v106[v181 + 48];
      v196 = *&v106[v181 + 64];
      v197 = *&v106[v181 + 80];
      v198 = *&v106[v181 + 96];
      v338 = *&v106[v181 + 112];
      v337[6] = v198;
      v337[5] = v197;
      v337[4] = v196;
      v337[3] = v195;
      v337[2] = v194;
      v337[1] = v193;
      v337[0] = v192;
      v199 = *(v337 + (v155 & 0xF));
      v336[7] = v338;
      v336[6] = v198;
      v336[5] = v197;
      v336[4] = v196;
      v336[3] = v195;
      v336[2] = v194;
      v336[1] = v193;
      v336[0] = v192;
      v200 = *(v336 + v190);
      v335[0] = v124;
      v335[1] = v125;
      v335[2] = v126;
      v335[3] = v127;
      if (v199 != v200 * *(v335 + v190))
      {
        return v312;
      }

      v201 = *&v108[v181];
      v202 = *&v108[v181 + 16];
      v203 = *&v108[v181 + 32];
      v204 = *&v108[v181 + 48];
      v205 = *&v108[v181 + 64];
      v206 = *&v108[v181 + 80];
      v207 = *&v108[v181 + 96];
      v334 = *&v108[v181 + 112];
      v333[6] = v207;
      v333[5] = v206;
      v333[4] = v205;
      v333[3] = v204;
      v333[2] = v203;
      v333[0] = v201;
      v333[1] = v202;
      v208 = *(v333 + (v155 & 0xF));
      v332[6] = v207;
      v332[7] = v334;
      v332[4] = v205;
      v332[5] = v206;
      v332[2] = v203;
      v332[3] = v204;
      v332[0] = v201;
      v332[1] = v202;
      v209 = *(v332 + (v146 & 0xF));
      v331[0] = v134;
      v331[1] = v135;
      v331[2] = v137;
      v331[3] = v138;
      if (v208 != v209 * *(v331 + (v146 & 0xF)))
      {
        return v312;
      }

      if (!v116 || !v118)
      {
        v300 = *MEMORY[0x277CD7408];
        if (*&v105[v300] != v149 || *&v106[v300] != v157 || *&v108[v300] != v163)
        {
          return v312;
        }
      }

      if (!v107)
      {
        goto LABEL_199;
      }

      v210 = &v107[v114];
      if (v210[2] != v116)
      {
        return v312;
      }

      if (v210[3] != v118)
      {
        return v312;
      }

      v211 = *&v107[v109];
      v212 = *&v107[v109 + 16];
      v213 = *&v107[v109 + 32];
      v214 = *&v107[v109 + 48];
      v330[2] = v213;
      v330[3] = v214;
      v330[0] = v211;
      v330[1] = v212;
      v215 = *(v330 + (v116 & 0xF));
      v329[2] = v213;
      v329[3] = v214;
      v329[0] = v211;
      v329[1] = v212;
      if (v117 != v215)
      {
        return v312;
      }

      if (v119 != *(v329 + (v118 & 0xF)))
      {
        return v312;
      }

      v216 = *&v107[v148];
      v217 = *&v107[v148 + 16];
      v218 = *&v107[v148 + 48];
      v327 = *&v107[v148 + 32];
      v328 = v218;
      v326[0] = v216;
      v326[1] = v217;
      v219 = *(v326 + (v116 & 0xF));
      v325[2] = v327;
      v325[3] = v218;
      v325[0] = v216;
      v325[1] = v217;
      if (v117 != v219)
      {
        return v312;
      }

      if (v119 != *(v325 + (v118 & 0xF)))
      {
        return v312;
      }

      v220 = *&v107[v168];
      v221 = *&v107[v168 + 16];
      v222 = *&v107[v168 + 48];
      v323 = *&v107[v168 + 32];
      v324 = v222;
      v322[0] = v220;
      v322[1] = v221;
      v223 = *(v322 + (v116 & 0xF));
      v321[2] = v323;
      v321[3] = v222;
      v321[0] = v220;
      v321[1] = v221;
      if (v223 | *(v321 + (v118 & 0xF)))
      {
        return v312;
      }

      v224 = *&v107[v181];
      v225 = *&v107[v181 + 16];
      v226 = *&v107[v181 + 32];
      v227 = *&v107[v181 + 48];
      v228 = *&v107[v181 + 64];
      v229 = *&v107[v181 + 80];
      v230 = *&v107[v181 + 112];
      v319 = *&v107[v181 + 96];
      v320 = v230;
      v318[4] = v228;
      v318[5] = v229;
      v318[2] = v226;
      v318[3] = v227;
      v318[0] = v224;
      v318[1] = v225;
      v231 = *(v318 + (v155 & 0xF));
      v317[6] = v319;
      v317[7] = v230;
      v317[4] = v228;
      v317[5] = v229;
      v317[2] = v226;
      v317[3] = v227;
      v317[0] = v224;
      v317[1] = v225;
      v232 = *(v317 + (v146 & 0xF));
      v316[0] = v211;
      v316[1] = v212;
      v316[2] = v213;
      v316[3] = v214;
      if (v231 != v232 * *(v316 + (v146 & 0xF)))
      {
        return v312;
      }

      if (v116 && v118)
      {
LABEL_199:
        if (v103 < 11)
        {
          return v312;
        }
      }

      else if (v103 < 11 || *&v107[*MEMORY[0x277CD7408]] != v216)
      {
        return v312;
      }

      v308 = FlattenTo3D(v105, v104, v306, v304);
      v310 = FlattenTo3D(v106, v104, v306, v304);
      if (v107)
      {
        v315 = FlattenTo3D(v107, v104, v306, v304);
      }

      else
      {
        v315 = 0;
      }

      v287 = FlattenTo3D(v108, v104, v306, v304);
      v285 = v308;
    }

    else
    {
      if (!v131)
      {
        if (!v120)
        {
          return v312;
        }

        if (v120 == 2)
        {
          if (v115.u8[0] != 3 && v115.i8[0] || v136.i8[0] && v136.u8[0] != 3)
          {
            return v312;
          }
        }

        else if ((v115.i8[0] | 2) != 2 || (v136.i8[0] | 2) != 2)
        {
          return v312;
        }

        if ((vceqq_s8(v115, v136).i8[1] & 1) == 0 || v115.u8[2] != v136.u8[2] || v115.u8[3] != v136.u8[3])
        {
          return v312;
        }

        if (v107)
        {
          if (v120 == 2)
          {
            if (*&v107[v114] && *&v107[v114] != 3)
            {
              return v312;
            }
          }

          else if ((*&v107[v114] | 2) != 2)
          {
            return v312;
          }

          v286 = vceqq_s8(v115, *&v107[v114]);
          if ((v286.i8[1] & 1) == 0 || (v286.i8[2] & 1) == 0 || (v286.i8[3] & 1) == 0)
          {
            return v312;
          }

          v285 = FlattenTo2D(v105, v104, v306, 0);
          v315 = FlattenTo2D(v107, v104, v306, 0);
        }

        else
        {
          v285 = FlattenTo2D(v105, v104, v306, 0);
          v315 = 0;
        }

        v287 = FlattenTo2D(v108, v104, v306, 0);
        v288 = v106;
        goto LABEL_332;
      }

      if (v120)
      {
        return v312;
      }

      if (v131 == 2)
      {
        if (v128.i8[1] && v115.u8[1] != 3 || v136.i8[1] && v136.u8[1] != 3)
        {
          return v312;
        }
      }

      else if (v128.i8[1] && v115.u8[1] != 2 || (v136.i8[1] | 2) != 2)
      {
        return v312;
      }

      if ((vceqq_s8(v128, v136).u8[0] & 1) == 0 || v128.u8[2] != v136.u8[2] || v128.u8[3] != v136.u8[3])
      {
        return v312;
      }

      if (v107)
      {
        v284 = v107[v114 + 1];
        if (v131 == 2)
        {
          if (v107[v114 + 1] && v284 != 3)
          {
            return v312;
          }
        }

        else if ((v284 | 2) != 2)
        {
          return v312;
        }

        v289 = vceqq_s8(v128, *&v107[v114]);
        if ((v289.i8[0] & 1) == 0 || (v289.i8[2] & 1) == 0 || (v289.i8[3] & 1) == 0)
        {
          return v312;
        }

        v310 = FlattenTo2D(v106, v104, v306, 1);
        v315 = FlattenTo2D(v107, v104, v306, 1);
      }

      else
      {
        v310 = FlattenTo2D(v106, v104, v306, 1);
        v315 = 0;
      }

      v287 = FlattenTo2D(v108, v104, v306, 1);
      v285 = v105;
    }

    v288 = v310;
LABEL_332:
    if (v285 && v288 && v287)
    {
      if (!v107 || v315)
      {
        v311 = v288;
        v294 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v312, "count")}];
        if ([v312 count])
        {
          v295 = 0;
          do
          {
            [v294 setObject:objc_msgSend(v312 atIndexedSubscript:{"objectAtIndexedSubscript:", v295), v295}];
            ++v295;
          }

          while (v295 < [v312 count]);
        }

        [v294 setObject:v285 atIndexedSubscript:v27];
        [v294 setObject:v311 atIndexedSubscript:v29];
        if (v107)
        {
          [v294 setObject:v315 atIndexedSubscript:v28];
        }

        *v301 = v287;
        if ([v312 count])
        {
          v296 = [v294 objectAtIndexedSubscript:0];
          graph3 = [v14 graph];
          v298 = **(***(graph3 + 56) + 8);
          if ((*(*(***(graph3 + 56) + 8) + 8) - v298) >> 3)
          {
            reshapeTensor(*v298, v296);
          }

          std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
        }

        updateDAGDestShape(v14, *v301);
      }

      v315 = 0;
    }

    v290 = v285;
    if (v285)
    {
      if (v285 != v105)
      {
        v291 = v288;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v288 = v291;
        if (isKindOfClass)
        {
          --*(&v290->super.super.isa + *MEMORY[0x277CD7498]);
        }
      }
    }

    if (v288)
    {
      if (v288 != v106)
      {
        v293 = v288;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          --*&v293[*MEMORY[0x277CD7498]];
        }
      }
    }

    if (v287)
    {
      if (v287 != v108)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          --*(&v287->super.isa + *MEMORY[0x277CD7498]);
        }
      }
    }

    if (v315)
    {
      if (v315 != v107)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          --*&v315[*MEMORY[0x277CD7498]];
        }
      }
    }

    return v312;
  }

  v141 = 4;
  while (1)
  {
    v367 = v136;
    v368[0] = v134;
    v368[1] = v135;
    v368[2] = v137;
    v368[3] = v138;
    if (*(v368 + (*(&v367 | v141 & 0xF) & 0xF)) > 1u)
    {
      return v312;
    }

    if (v140 == ++v141)
    {
      goto LABEL_154;
    }
  }
}

- (void)setAutoTuningParameters:(void *)parameters
{
  free(self->_autoTuningParams);
  autoTuningTarget = self->_autoTuningTarget;
  if (autoTuningTarget)
  {
    if (autoTuningTarget <= 4)
    {
      goto LABEL_3;
    }

LABEL_10:
    if (autoTuningTarget == 5)
    {
      v14 = malloc_type_malloc(0x3CuLL, 0x1000040C2DCA394uLL);
      self->_autoTuningParams = v14;
      v16 = *(parameters + 1);
      v15 = *(parameters + 2);
      v17 = *parameters;
      *(v14 + 44) = *(parameters + 44);
      v14[1] = v16;
      v14[2] = v15;
      *v14 = v17;
      return;
    }

    if (autoTuningTarget == 6)
    {
      v10 = malloc_type_malloc(0x2CuLL, 0x1000040D4159EFEuLL);
      self->_autoTuningParams = v10;
      v11 = *(parameters + 28);
      v12 = *(parameters + 1);
      *v10 = *parameters;
      v10[1] = v12;
      *(v10 + 28) = v11;
      return;
    }

    goto LABEL_13;
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  autoTuningTarget = self->_autoTuningTarget;
  if (autoTuningTarget > 4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (!autoTuningTarget)
  {
    return;
  }

  if (autoTuningTarget != 4)
  {
LABEL_13:
    v13 = malloc_type_malloc(0x20uLL, 0x1000040C2192D5FuLL);
    self->_autoTuningParams = v13;
    *v13 = *parameters;
    *(v13 + 2) = *(parameters + 2);
    *(v13 + 6) = *(parameters + 6);
    *(v13 + 28) = *(parameters + 28);
    *(v13 + 29) = *(parameters + 29);
    return;
  }

  v6 = malloc_type_malloc(0x44uLL, 0x100004069DB8102uLL);
  self->_autoTuningParams = v6;
  *v6 = *parameters;
  v8 = *(parameters + 2);
  v7 = *(parameters + 3);
  v9 = *(parameters + 1);
  *(v6 + 16) = *(parameters + 16);
  v6[2] = v8;
  v6[3] = v7;
  v6[1] = v9;
}

- (void)clearAutoTuningParameters
{
  autoTuningParams = self->_autoTuningParams;
  if (autoTuningParams)
  {
    free(autoTuningParams);
  }

  self->_autoTuningParams = 0;
  self->_autoTuningTarget = 0;
}

- (BOOL)advanceAutoTuneIteration
{
  nextAutoTuneIteration = self->_nextAutoTuneIteration;
  self->_autoTuneIteration = nextAutoTuneIteration;
  return nextAutoTuneIteration > 0;
}

- (void)encodeToCommandEncoder:(id)encoder commandBuffer:(id)buffer sourceArrays:(id)arrays normScaleArray:(id)array resultState:(id)state destinationArray:(id)destinationArray kernelDAGObject:(id)object
{
  self->_normScaleArray = array;
  if (array)
  {
    arraysCopy = arrays;
    bufferCopy = buffer;
    encoderCopy = encoder;
    [array dataType];
    dataType = [(MPSNDArray *)self->_normScaleArray dataType];
    encoder = encoderCopy;
    buffer = bufferCopy;
    arrays = arraysCopy;
    if (dataType != MPSDataTypeFloat16)
    {
      v16 = MTLReportFailureTypeEnabled();
      encoder = encoderCopy;
      buffer = bufferCopy;
      arrays = arraysCopy;
      if (v16)
      {
        MTLReportFailure();
        encoder = encoderCopy;
        buffer = bufferCopy;
        arrays = arraysCopy;
      }
    }
  }

  [(MPSNDArrayMultiaryKernel *)self encodeToCommandEncoder:encoder commandBuffer:buffer sourceArrays:arrays resultState:state destinationArray:destinationArray kernelDAGObject:object];
}

@end