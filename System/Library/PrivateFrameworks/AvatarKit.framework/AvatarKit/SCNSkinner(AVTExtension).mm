@interface SCNSkinner(AVTExtension)
+ (id)avt_skinnerByInterpolatingFromSkinner:()AVTExtension toSkinner:factor:skeleton:;
@end

@implementation SCNSkinner(AVTExtension)

+ (id)avt_skinnerByInterpolatingFromSkinner:()AVTExtension toSkinner:factor:skeleton:
{
  selfCopy = self;
  v243 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = a6;
  v11 = selfCopy.n128_f32[0];
  v12 = v10;
  if (!v10)
  {
    v13 = avt_default_log(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(SCNSkinner(AVTExtension) *)v13 avt_skinnerByInterpolatingFromSkinner:v14 toSkinner:v15 factor:v16 skeleton:v17, v18, v19, v20];
    }

    v11 = selfCopy.n128_f32[0];
  }

  if (v11 == 0.0)
  {
    [v8 setSkeleton:?];
    v21 = v8;
LABEL_9:
    v22 = v21;
    goto LABEL_10;
  }

  if (v11 == 1.0)
  {
    [v9 setSkeleton:?];
    v21 = v9;
    goto LABEL_9;
  }

  v217 = v12;
  bones = [v8 bones];
  bones2 = [v9 bones];
  boneInverseBindTransforms = [v8 boneInverseBindTransforms];
  boneInverseBindTransforms2 = [v9 boneInverseBindTransforms];
  v26 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v239 = 0u;
  v240 = 0u;
  v241 = 0u;
  v242 = 0u;
  v219 = bones;
  v27 = [v219 countByEnumeratingWithState:? objects:? count:?];
  if (v27)
  {
    v28 = v27;
    v29 = *v240;
    do
    {
      for (i = 0; i != v28; i = (i + 1))
      {
        if (*v240 != v29)
        {
          objc_enumerationMutation(v219);
        }

        name = [*(*(&v239 + 1) + 8 * i) name];
        [v26 addObject:?];
      }

      v28 = [v219 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v28);
  }

  v199 = v8;

  v237 = 0u;
  v238 = 0u;
  v235 = 0u;
  v236 = 0u;
  v218 = bones2;
  v32 = [v218 countByEnumeratingWithState:? objects:? count:?];
  if (v32)
  {
    v33 = v32;
    v34 = *v236;
    do
    {
      for (j = 0; j != v33; j = (j + 1))
      {
        if (*v236 != v34)
        {
          objc_enumerationMutation(v218);
        }

        name2 = [*(*(&v235 + 1) + 8 * j) name];
        [v26 addObject:?];
      }

      v33 = [v218 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v33);
  }

  v198 = v9;
  v37 = v218;

  [v26 count];
  v38 = [v219 count];
  v197 = &v190;
  MEMORY[0x1EEE9AC00](v38);
  v206 = &v190 - v39;
  v40 = [v37 count];
  MEMORY[0x1EEE9AC00](v40);
  v205 = &v190 - v41;
  v220 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:?];
  v216 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:?];
  v231 = 0u;
  v232 = 0u;
  v233 = 0u;
  v234 = 0u;
  v202 = v26;
  v42 = [v202 countByEnumeratingWithState:? objects:? count:?];
  if (v42)
  {
    v44 = v42;
    *&v215 = *v232;
    *v43.i32 = 1.0 - selfCopy.n128_f32[0];
    v200 = vdupq_lane_s32(v43, 0);
    do
    {
      for (k = 0; k != v44; k = (k + 1))
      {
        if (*v232 != v215)
        {
          objc_enumerationMutation(v202);
        }

        v46 = *(*(&v231 + 1) + 8 * k);
        v226 = MEMORY[0x1E69E9820];
        v227 = 3221225472;
        v228 = __92__SCNSkinner_AVTExtension__avt_skinnerByInterpolatingFromSkinner_toSkinner_factor_skeleton___block_invoke;
        v229 = &unk_1E7F49A88;
        v230 = v46;
        v47 = [v219 indexOfObjectPassingTest:?];
        v221 = MEMORY[0x1E69E9820];
        v222 = 3221225472;
        v223 = __92__SCNSkinner_AVTExtension__avt_skinnerByInterpolatingFromSkinner_toSkinner_factor_skeleton___block_invoke_2;
        v224 = &unk_1E7F49A88;
        v225 = v46;
        v48 = [v218 indexOfObjectPassingTest:?];
        v49 = [v220 count];
        if (v47 == 0x7FFFFFFFFFFFFFFFLL || v48 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v47 == 0x7FFFFFFFFFFFFFFFLL)
          {
            *&v205[8 * v48] = v49;
            v62 = boneInverseBindTransforms2;
          }

          else
          {
            *&v206[8 * v47] = v49;
            v62 = boneInverseBindTransforms;
          }

          v61 = [v62 objectAtIndexedSubscript:?];
        }

        else
        {
          v50 = v205;
          *&v206[8 * v47] = v49;
          *&v50[8 * v48] = v49;
          v51 = [boneInverseBindTransforms objectAtIndexedSubscript:?];
          [v51 avt_float4x4Value];
          v211 = v52;
          v212 = v53;
          v213 = v54;
          v214 = v55;

          v56 = [boneInverseBindTransforms2 objectAtIndexedSubscript:?];
          [v56 avt_float4x4Value];
          v207 = v57;
          v208 = v58;
          v209 = v59;
          v210 = v60;

          v61 = [MEMORY[0x1E696B098] avt_valueWithFloat4x4:?];
        }

        v63 = v61;
        [v216 addObject:?];

        v64 = [v217 childNodeWithName:? recursively:?];
        [v220 addObject:?];
      }

      v44 = [v202 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v44);
  }

  v65 = v199;
  boneWeights = [v199 boneWeights];
  *&v210 = [boneWeights bytesPerComponent];
  data = [boneWeights data];
  *&v209 = [data bytes];

  *&v212 = [boneWeights componentsPerVector];
  boneIndices = [v65 boneIndices];
  *&v208 = [boneIndices bytesPerComponent];
  data2 = [boneIndices data];
  *&v207 = [data2 bytes];

  if (boneWeights)
  {
    _ZF = boneIndices == 0;
  }

  else
  {
    _ZF = 1;
  }

  v71 = _ZF;
  v200.i64[0] = boneIndices;
  if (_ZF)
  {
    v72 = [v219 count];
    v73 = v198;
    if (v72 == 1)
    {
      v74 = v198;
      *&v212 = 1;
    }

    else
    {
      v75 = avt_default_log(v72);
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        [(SCNSkinner(AVTExtension) *)v75 avt_skinnerByInterpolatingFromSkinner:v76 toSkinner:v77 factor:v78 skeleton:v79, v80, v81, v82];
      }

      *&v212 = 1;
      v74 = v73;
    }
  }

  else
  {
    v74 = v198;
  }

  boneWeights2 = [v74 boneWeights];
  bytesPerComponent = [boneWeights2 bytesPerComponent];
  data3 = [boneWeights2 data];
  *&v215 = [data3 bytes];

  componentsPerVector = [boneWeights2 componentsPerVector];
  boneIndices2 = [v74 boneIndices];
  bytesPerComponent2 = [boneIndices2 bytesPerComponent];
  data4 = [boneIndices2 data];
  *&v214 = [data4 bytes];

  v195 = boneIndices2;
  v196 = boneWeights2;
  if (boneWeights2)
  {
    v90 = boneIndices2 == 0;
  }

  else
  {
    v90 = 1;
  }

  v91 = v90;
  if (v90)
  {
    v92 = [v218 count];
    if (v92 != 1)
    {
      v93 = avt_default_log(v92);
      if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
      {
        [(SCNSkinner(AVTExtension) *)v93 avt_skinnerByInterpolatingFromSkinner:v94 toSkinner:v95 factor:v96 skeleton:v97, v98, v99, v100];
      }
    }

    componentsPerVector = 1;
  }

  vectorCount = [boneWeights vectorCount];
  v102 = MEMORY[0x1EEE9AC00](vectorCount);
  v106 = &v190 - v105;
  v107 = 0;
  *&v213 = v102;
  if (v102)
  {
    v109 = v205;
    v108 = v206;
    v110 = v210;
    v111 = v209;
    v112 = v208;
    v113 = v207;
    if (v103)
    {
      v114 = 0;
      v107 = 0;
      v115 = 0;
      while (1)
      {
        v116 = 0;
        if (v104)
        {
          v117 = v114;
          do
          {
            if (v71)
            {
              v118 = 0;
            }

            else
            {
              switch(v110)
              {
                case 8:
                  _S0 = *(v111 + 8 * v117);
                  break;
                case 4:
                  _S0 = *(v111 + 4 * v117);
                  break;
                case 2:
                  _H0 = *(v111 + 2 * v117);
                  __asm { FCVT            S0, H0 }

                  break;
                default:
                  +[SCNSkinner(AVTExtension) avt_skinnerByInterpolatingFromSkinner:toSkinner:factor:skeleton:];
              }

              if (_S0 <= 0.0)
              {
                goto LABEL_86;
              }

              switch(v112)
              {
                case 4:
                  v118 = *(v113 + 4 * v117);
                  break;
                case 2:
                  v118 = *(v113 + 2 * v117);
                  break;
                case 1:
                  v118 = *(v113 + v117);
                  break;
                default:
                  +[SCNSkinner(AVTExtension) avt_skinnerByInterpolatingFromSkinner:toSkinner:factor:skeleton:];
              }
            }

            v119 = v116++;
            *&v106[4 * v119] = *&v108[8 * v118];
LABEL_86:
            ++v117;
            --v104;
          }

          while (v104);
        }

        if (componentsPerVector)
        {
          break;
        }

LABEL_116:
        if (v107 <= v116)
        {
          v135 = v116;
        }

        else
        {
          v135 = v107;
        }

        if (++v115 >= v213)
        {
          v107 = v135;
          goto LABEL_123;
        }

        v104 = v212;
        v114 += v212;
        v107 = v135;
        if (v135 >= v103)
        {
          goto LABEL_123;
        }
      }

      v125 = 0;
      while ((v91 & 1) == 0)
      {
        v132 = v125 + v115 * componentsPerVector;
        if (bytesPerComponent == 8)
        {
          _S0 = *(v215 + 8 * v132);
        }

        else if (bytesPerComponent == 4)
        {
          _S0 = *(v215 + 4 * v132);
        }

        else
        {
          if (bytesPerComponent != 2)
          {
            +[SCNSkinner(AVTExtension) avt_skinnerByInterpolatingFromSkinner:toSkinner:factor:skeleton:];
          }

          _H0 = *(v215 + 2 * v132);
          __asm { FCVT            S0, H0 }
        }

        if (_S0 > 0.0)
        {
          if (bytesPerComponent2 == 4)
          {
            v126 = *(v214 + 4 * v132);
          }

          else if (bytesPerComponent2 == 2)
          {
            v126 = *(v214 + 2 * v132);
          }

          else
          {
            if (bytesPerComponent2 != 1)
            {
              +[SCNSkinner(AVTExtension) avt_skinnerByInterpolatingFromSkinner:toSkinner:factor:skeleton:];
            }

            v126 = *(v214 + v132);
          }

LABEL_94:
          v127 = *&v109[8 * v126];
          if (v116)
          {
            v128 = v116;
            v129 = v116;
            v130 = v106;
            while (1)
            {
              v131 = *v130++;
              if (v131 == v127)
              {
                break;
              }

              if (!--v129)
              {
                goto LABEL_104;
              }
            }
          }

          else
          {
            v128 = 0;
LABEL_104:
            ++v116;
            *&v106[4 * v128] = v127;
          }
        }

        if (++v125 == componentsPerVector)
        {
          goto LABEL_116;
        }
      }

      v126 = 0;
      goto LABEL_94;
    }
  }

LABEL_123:
  v191 = bytesPerComponent2;
  v194 = boneWeights;
  v136 = v107 * v213;
  v192 = 4 * v107 * v213;
  v137 = malloc_type_malloc(v192, 0xBADA6A49uLL);
  v193 = v136;
  v138 = malloc_type_malloc(v136, 0x89F46CF1uLL);
  *&v211 = 4 * v107;
  if (v213)
  {
    v141 = v107;
    v142 = 0;
    v143 = 0;
    v144 = selfCopy.n128_f32[0];
    *&v140 = 1.0 - selfCopy.n128_f32[0];
    v145 = v137;
    v147 = v205;
    v146 = v206;
    v148 = v210;
    v149 = v209;
    v150 = v208;
    v151 = v207;
    v152 = v212;
    v153 = v191;
    while (1)
    {
      if (v152)
      {
        v154 = v152;
        LODWORD(v152) = 0;
        v155 = v142;
        do
        {
          if (v71)
          {
            v156 = 0;
            _S0 = 1.0;
          }

          else
          {
            switch(v148)
            {
              case 8:
                _S0 = *(v149 + 8 * v155);
                break;
              case 4:
                _S0 = *(v149 + 4 * v155);
                break;
              case 2:
                _H0 = *(v149 + 2 * v155);
                __asm { FCVT            S0, H0 }

                break;
              default:
                +[SCNSkinner(AVTExtension) avt_skinnerByInterpolatingFromSkinner:toSkinner:factor:skeleton:];
            }

            if (_S0 <= 0.0)
            {
              goto LABEL_141;
            }

            switch(v150)
            {
              case 4:
                v156 = *(v151 + 4 * v155);
                break;
              case 2:
                v156 = *(v151 + 2 * v155);
                break;
              case 1:
                v156 = *(v151 + v155);
                break;
              default:
                +[SCNSkinner(AVTExtension) avt_skinnerByInterpolatingFromSkinner:toSkinner:factor:skeleton:];
            }
          }

          v158 = *&v146[8 * v156];
          v159 = v143 * v141 + v152;
          v137[v159] = *&v140 * _S0;
          v160 = v152;
          v138[v159] = v158;
          LODWORD(v152) = v152 + 1;
          *&v106[4 * v160] = v158;
LABEL_141:
          ++v155;
          --v154;
        }

        while (v154);
      }

      if (componentsPerVector)
      {
        break;
      }

LABEL_172:
      if (v141 > v152)
      {
        v174 = v152;
        do
        {
          v175 = v174 + v143 * v141;
          v137[v175] = 0.0;
          v138[v175] = 0;
          LODWORD(v152) = v152 + 1;
          v174 = v152;
        }

        while (v141 > v152);
      }

      ++v143;
      v152 = v212;
      v142 += v212;
      v145 = (v145 + v211);
      if (v143 == v213)
      {
        v215 = v140;
        goto LABEL_178;
      }
    }

    v162 = 0;
    v163 = v143 * v141;
    while ((v91 & 1) == 0)
    {
      v172 = v162 + v143 * componentsPerVector;
      if (bytesPerComponent == 8)
      {
        _S0 = *(v215 + 8 * v172);
      }

      else if (bytesPerComponent == 4)
      {
        _S0 = *(v215 + 4 * v172);
      }

      else
      {
        if (bytesPerComponent != 2)
        {
          +[SCNSkinner(AVTExtension) avt_skinnerByInterpolatingFromSkinner:toSkinner:factor:skeleton:];
        }

        _H0 = *(v215 + 2 * v172);
        __asm { FCVT            S0, H0 }
      }

      if (_S0 > 0.0)
      {
        if (v153 == 4)
        {
          v164 = *(v214 + 4 * v172);
        }

        else if (v153 == 2)
        {
          v164 = *(v214 + 2 * v172);
        }

        else
        {
          if (v153 != 1)
          {
            +[SCNSkinner(AVTExtension) avt_skinnerByInterpolatingFromSkinner:toSkinner:factor:skeleton:];
          }

          v164 = *(v214 + v172);
        }

LABEL_149:
        v166 = *&v147[8 * v164];
        if (v152)
        {
          v167 = v152;
          v168 = v152;
          v169 = v106;
          v170 = v145;
          while (1)
          {
            v171 = *v169++;
            if (v171 == v166)
            {
              break;
            }

            ++v170;
            if (!--v168)
            {
              v141 = v107;
              goto LABEL_159;
            }
          }

          *v170 = *v170 + (v144 * _S0);
          v141 = v107;
        }

        else
        {
          v167 = 0;
LABEL_159:
          v137[v163 + v167] = _S0 * v144;
          v138[v163 + v167] = v166;
          LODWORD(v152) = v152 + 1;
          *&v106[4 * v167] = v166;
        }
      }

      if (++v162 == componentsPerVector)
      {
        goto LABEL_172;
      }
    }

    v164 = 0;
    _S0 = 1.0;
    goto LABEL_149;
  }

  *&v139 = 1.0 - selfCopy.n128_f32[0];
  v215 = v139;
LABEL_178:
  v176 = MEMORY[0x1E697A878];
  v177 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:? length:?];
  v178 = [v176 geometrySourceWithData:0 semantic:v211 vectorCount:? floatComponents:? componentsPerVector:? bytesPerComponent:? dataOffset:? dataStride:?];

  v179 = MEMORY[0x1E697A878];
  v180 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:? length:?];
  v181 = [v179 geometrySourceWithData:0 semantic:v107 vectorCount:? floatComponents:? componentsPerVector:? bytesPerComponent:? dataOffset:? dataStride:?];

  v182 = MEMORY[0x1E697A8D0];
  v8 = v199;
  baseGeometry = [v199 baseGeometry];
  v184 = v220;
  v185 = v216;
  v22 = [v182 skinnerWithBaseGeometry:? bones:? boneInverseBindTransforms:? boneWeights:? boneIndices:?];

  [v8 avt_simdBaseGeometryBindTransform];
  v211 = v186;
  v212 = v187;
  v213 = v188;
  v214 = v189;
  v9 = v198;
  [v198 avt_simdBaseGeometryBindTransform];
  [v22 avt_setSimdBaseGeometryBindTransform:?];
  v12 = v217;
  [v22 setSkeleton:?];

LABEL_10:

  return v22;
}

+ (void)avt_skinnerByInterpolatingFromSkinner:()AVTExtension toSkinner:factor:skeleton:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "skeleton";
}

+ (void)avt_skinnerByInterpolatingFromSkinner:()AVTExtension toSkinner:factor:skeleton:.cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "originalBones.count == 1";
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Missing index or weight source for skinner with multiple bones", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)avt_skinnerByInterpolatingFromSkinner:()AVTExtension toSkinner:factor:skeleton:.cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "variantBones.count == 1";
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Missing index or weight source for skinner with multiple bones", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end