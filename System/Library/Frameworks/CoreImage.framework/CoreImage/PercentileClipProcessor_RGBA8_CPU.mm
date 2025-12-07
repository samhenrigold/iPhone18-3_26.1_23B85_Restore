@interface PercentileClipProcessor_RGBA8_CPU
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGPoint)centerInImg:(id)img fromRect:(CGRect)rect toRect:(CGRect)toRect offset:(CGPoint)offset;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
+ (int)formatForInputAtIndex:(int)index;
@end

@implementation PercentileClipProcessor_RGBA8_CPU

+ (int)formatForInputAtIndex:(int)index
{
  if ((index - 1) < 2)
  {
    v3 = &kCIFormatRGBAh;
    return *v3;
  }

  if ((index - 3) < 2)
  {
    v3 = &kCIFormatR8;
    return *v3;
  }

  if (!index)
  {
    v3 = &kCIFormatBGRA8;
    return *v3;
  }

  return 0;
}

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  if ((input - 1) >= 2)
  {
    [objc_msgSend(arguments objectForKeyedSubscript:{@"roi", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, v5, v6), "CGRectValue"}];
  }

  else
  {
    v7 = 1.0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 1.0;
  }

  result.size.height = v10;
  result.size.width = v7;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

+ (CGPoint)centerInImg:(id)img fromRect:(CGRect)rect toRect:(CGRect)toRect offset:(CGPoint)offset
{
  height = toRect.size.height;
  y = toRect.origin.y;
  x = toRect.origin.x;
  v14 = *MEMORY[0x1E69E9840];
  *&src.height = xmmword_19CF23040;
  src.rowBytes = 8;
  dest.data = v13;
  *&dest.height = xmmword_19CF23040;
  dest.rowBytes = 16;
  src.data = [img baseAddress];
  vImageConvert_Planar16FtoPlanarF(&src, &dest, 0x10u);
  v9 = roundf(v13[0]) - v15 - x;
  v10 = height - (roundf(v13[1]) - v16 - y) + -1.0;
  result.y = v10;
  result.x = v9;
  return result;
}

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  v241 = *MEMORY[0x1E69E9840];
  v10 = [arguments objectForKeyedSubscript:@"threshold"];
  v197 = [arguments objectForKeyedSubscript:@"area"];
  v11 = [arguments objectForKeyedSubscript:@"centerOffsetLeft"];
  v12 = [arguments objectForKeyedSubscript:@"centerOffsetRight"];
  [objc_msgSend(arguments objectForKeyedSubscript:{@"interPeakMinRepair", "floatValue"}];
  v201 = v13;
  [objc_msgSend(arguments objectForKeyedSubscript:{@"abortMaxCenterDist", "floatValue"}];
  log = v14;
  [objc_msgSend(arguments objectForKeyedSubscript:{@"densityRadius", "floatValue"}];
  v202 = v15;
  [objc_msgSend(arguments objectForKeyedSubscript:{@"minDensity", "floatValue"}];
  v203 = v16;
  [objc_msgSend(arguments objectForKeyedSubscript:{@"maxRelDensity", "floatValue"}];
  v204 = v17;
  [objc_msgSend(arguments objectForKeyedSubscript:{@"minGobalLocalMeanDiff", "floatValue"}];
  v196 = v18;
  [objc_msgSend(arguments objectForKeyedSubscript:{@"percentileRepair", "floatValue"}];
  v200 = v19;
  [objc_msgSend(arguments objectForKeyedSubscript:{@"percentileSpecular", "floatValue"}];
  v199 = v20;
  [objc_msgSend(arguments objectForKeyedSubscript:{@"percentRepair", "floatValue"}];
  v198 = v21;
  [objc_msgSend(arguments objectForKeyedSubscript:{@"percentSpecular", "floatValue"}];
  v205 = v22;
  [objc_msgSend(arguments objectForKeyedSubscript:{@"centerExtentLeft", "CGRectValue"}];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [objc_msgSend(arguments objectForKeyedSubscript:{@"centerExtentRight", "CGRectValue"}];
  v222 = v32;
  v225 = v31;
  v217 = v34;
  v220 = v33;
  v35 = [inputs objectAtIndexedSubscript:0];
  [v35 format];
  [output format];
  [v35 region];
  v209 = v37;
  v211 = v36;
  baseAddress = [v35 baseAddress];
  bytesPerRow = [v35 bytesPerRow];
  clearOutput(output);
  v38 = [inputs objectAtIndexedSubscript:1];
  v39 = [inputs objectAtIndexedSubscript:2];
  if ([v38 format] == 2056)
  {
    [v39 format];
  }

  [v35 region];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  [v11 CGPointValue];
  [self centerInImg:v38 fromRect:v24 toRect:v26 offset:{v28, v30, v41, v43, v45, v47, v48, v49}];
  v51 = v50;
  v53 = v52;
  [v35 region];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  [v12 CGPointValue];
  [self centerInImg:v39 fromRect:v225 toRect:*&v222 offset:{v220, *&v217, v55, v57, v59, v61, v62, v63}];
  v65 = v64;
  v67 = v66;
  v68 = 0;
  [v35 region];
  v70 = v69 * 0.5;
  [v35 region];
  v72 = v71 * 0.5;
  v73 = v70;
  v74 = vabdd_f64(v51, v70);
  v75 = (v70 * 0.8);
  if (v74 > v75 || vabdd_f64(v53, v72) > (v72 * 0.8))
  {
    v76 = CI_LOG_DUALRED();
    if (v76)
    {
      v78 = ci_logger_api(v76, v77);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        +[PercentileClipProcessor_RGBA8_CPU processWithInputs:arguments:output:error:];
      }
    }

    v68 = 1;
  }

  if (vabdd_f64(v65, v73) > v75 || vabdd_f64(v67, v72) > (v72 * 0.8))
  {
    v79 = CI_LOG_DUALRED();
    if (v79)
    {
      v81 = ci_logger_api(v79, v80);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        +[PercentileClipProcessor_RGBA8_CPU processWithInputs:arguments:output:error:];
      }
    }

    return 1;
  }

  if (v68)
  {
    return 1;
  }

  v82 = v211;
  v83 = v209;
  v84 = [inputs objectAtIndexedSubscript:3];
  v85 = [inputs objectAtIndexedSubscript:4];
  if ([v84 format] == 261)
  {
    [v84 format];
  }

  v86 = (v53 - v67) / v83 * ((v53 - v67) / v83) + (v51 - v65) / v82 * ((v51 - v65) / v82);
  if (sqrtf(v86) > log)
  {
    v87 = CI_LOG_DUALRED();
    if (v87)
    {
      v89 = ci_logger_api(v87, v88);
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        +[PercentileClipProcessor_RGBA8_CPU processWithInputs:arguments:output:error:];
      }
    }

    return 1;
  }

  src.data = baseAddress;
  src.height = v209;
  src.width = v211;
  src.rowBytes = bytesPerRow;
  v92 = malloc_type_calloc(0x400uLL, 8uLL, 0x100004000313F17uLL);
  histogram[0] = v92;
  histogram[1] = v92 + 256;
  histogram[2] = v92 + 512;
  histogram[3] = v92 + 768;
  v93 = vImageHistogramCalculation_ARGB8888(&src, histogram, 0);
  v90 = v93 == 0;
  if (v93)
  {
    free(v92);
    return v90;
  }

  v221 = v84;
  v212 = v85;
  v95 = histogram[0];
  v94 = histogram[1];
  v223 = histogram[3];
  loga = histogram[2];
  v226 = (v198 * findPercentileNonZero(histogram[2], v200, 0xFFuLL, 0x100uLL));
  v96 = (v205 * findPercentileNonZero(v94, v199, 0xFFuLL, 0x100uLL));
  v218 = v95;
  v97 = v198 * findPercentileNonZero(v95, v200, 0xFFuLL, 0x100uLL);
  PercentileNonZero = findPercentileNonZero(v223, v199, 0xFFuLL, 0x100uLL);
  [v10 X];
  v100 = v226;
  if (v99 * 255.0 > v226)
  {
    [v10 X];
    v100 = v101 * 255.0;
  }

  v102 = v205 * PercentileNonZero;
  v103 = v97;
  [v10 Y];
  v105 = v96;
  if (v104 * 255.0 > v96)
  {
    [v10 Y];
    v105 = v106 * 255.0;
  }

  v210 = v105;
  v107 = v102;
  [v10 Z];
  v109 = v108 * 255.0;
  v110 = v103;
  if (v109 > v103)
  {
    [v10 Z];
    v110 = v111 * 255.0;
  }

  v227 = v100;
  v224 = v110;
  [v10 W];
  v113 = v107;
  if (v112 * 255.0 > v107)
  {
    [v10 W];
    v113 = v114 * 255.0;
  }

  v206 = v113;
  v115 = findPercentileNonZero(loga, 0.25, 0xFFuLL, 0x100uLL);
  v116 = findPercentileNonZero(v218, 0.25, 0xFFuLL, 0x100uLL);
  v219 = v227 - v115;
  v117 = v224 - v116;
  if ((v227 - v115) >= (v224 - v116))
  {
    v118 = (v224 - v116);
  }

  else
  {
    v118 = (v227 - v115);
  }

  v119 = (v201 * 255.0);
  if (v118 < v119)
  {
    v120 = CI_LOG_DUALRED();
    if (v120)
    {
      logc = ci_logger_api(v120, v121);
      if (os_log_type_enabled(logc, OS_LOG_TYPE_ERROR))
      {
        +[PercentileClipProcessor_RGBA8_CPU processWithInputs:arguments:output:error:];
      }
    }
  }

  free(v92);
  v122 = baseAddress;
  v123 = baseAddress[(v51 * 4.0 + v53 * bytesPerRow + 2.0)];
  v124 = v65 * 4.0 + v67 * bytesPerRow + 0.0;
  v125 = baseAddress[v124];
  v126 = v123;
  v127 = vcvts_n_f32_u32(v227, 1uLL);
  v128 = v125;
  v129 = vcvts_n_f32_u32(v224, 1uLL);
  if (v127 >= v123 || v129 >= v128)
  {
    v130 = CI_LOG_DUALRED();
    v122 = baseAddress;
    if (v130)
    {
      logb = ci_logger_api(v130, v131);
      v132 = os_log_type_enabled(logb, OS_LOG_TYPE_ERROR);
      v122 = baseAddress;
      if (v132)
      {
        *buf = 4.8756e-34;
        v231 = "+[PercentileClipProcessor_RGBA8_CPU processWithInputs:arguments:output:error:]";
        v232 = 1024;
        v233 = v123;
        v234 = 1024;
        v235 = v227;
        v236 = 1024;
        v237 = v125;
        v238 = 1024;
        v239 = v224;
        _os_log_error_impl(&dword_19CC36000, logb, OS_LOG_TYPE_ERROR, "%{public}s [abort] Center pixel failed: L = %hhu < %hhu | R = %hhu < %hhu", buf, 0x24u);
        v122 = baseAddress;
      }
    }
  }

  v134 = v129 >= v128 || v119 > v117;
  if (v82 >= v83)
  {
    v135 = v83;
  }

  else
  {
    v135 = v82;
  }

  v136 = (v202 * v135);
  *buf = 0.0;
  v228 = 0.0;
  v137 = 1;
  if (v119 > v219)
  {
    v140 = v203;
    v139 = v204;
  }

  else
  {
    v138 = v127 < v126;
    v140 = v203;
    v139 = v204;
    if (v138)
    {
      v242.x = v51;
      v242.y = v53;
      computeDensity(v122, 2u, v82, v83, bytesPerRow, v227, v242, v136, buf);
      v141 = CI_LOG_DUALRED();
      if (v141)
      {
        v143 = ci_logger_api(v141, v142);
        if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
        {
          +[PercentileClipProcessor_RGBA8_CPU processWithInputs:arguments:output:error:];
        }
      }

      if (*buf >= v203)
      {
        v137 = 0;
      }

      else
      {
        v144 = CI_LOG_DUALRED();
        if (v144)
        {
          v146 = ci_logger_api(v144, v145);
          if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
          {
            +[PercentileClipProcessor_RGBA8_CPU processWithInputs:arguments:output:error:];
          }
        }
      }

      v122 = baseAddress;
    }
  }

  if (v134)
  {
    v147 = 1;
    v148 = v221;
  }

  else
  {
    v243.x = v65;
    v243.y = v67;
    computeDensity(v122, 0, v82, v83, bytesPerRow, v224, v243, v136, &v228);
    v149 = CI_LOG_DUALRED();
    if (v149)
    {
      v151 = ci_logger_api(v149, v150);
      if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
      {
        +[PercentileClipProcessor_RGBA8_CPU processWithInputs:arguments:output:error:];
      }
    }

    v148 = v221;
    if (v228 >= v140)
    {
      v147 = 0;
    }

    else
    {
      v152 = CI_LOG_DUALRED();
      if (v152)
      {
        v154 = ci_logger_api(v152, v153);
        if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
        {
          +[PercentileClipProcessor_RGBA8_CPU processWithInputs:arguments:output:error:];
        }
      }

      v147 = 1;
    }
  }

  if (*buf > v139)
  {
    v155 = CI_LOG_DUALRED();
    if (v155)
    {
      v157 = ci_logger_api(v155, v156);
      if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
      {
        +[PercentileClipProcessor_RGBA8_CPU processWithInputs:arguments:output:error:];
      }
    }

    v137 = 1;
  }

  *&v124 = v228;
  if (v228 > v139)
  {
    v158 = CI_LOG_DUALRED();
    if (v158)
    {
      v160 = ci_logger_api(v158, v159);
      if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
      {
        +[PercentileClipProcessor_RGBA8_CPU processWithInputs:arguments:output:error:];
      }
    }

    v147 = 1;
  }

  if ((v137 & v147 & 1) == 0)
  {
    v161 = -1.0;
    v162 = -1.0;
    if ((v137 & 1) == 0)
    {
      sampleUnderCentroid(v148, v51, v53, 0.14);
      v162 = *&v124;
    }

    if ((v147 & 1) == 0)
    {
      sampleUnderCentroid(v212, v65, v67, 0.14);
      v161 = *&v124;
    }

    [objc_msgSend(arguments objectForKeyedSubscript:{@"minInterDispersion", v124), "floatValue"}];
    v164 = v163;
    if (v162 < v163)
    {
      v165 = CI_LOG_DUALRED();
      if (v165)
      {
        v167 = ci_logger_api(v165, v166);
        if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
        {
          [PercentileClipProcessor_RGBA8_CPU processWithInputs:v162 arguments:? output:? error:?];
        }
      }

      v137 = 1;
    }

    if (v161 < v164)
    {
      v168 = CI_LOG_DUALRED();
      if (v168)
      {
        v170 = ci_logger_api(v168, v169);
        if (os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
        {
          [PercentileClipProcessor_RGBA8_CPU processWithInputs:v161 arguments:? output:? error:?];
        }
      }

      v147 = 1;
    }

    [objc_msgSend(arguments objectForKeyedSubscript:{@"maxInterDispersion", "floatValue"}];
    v172 = vabds_f32(v162, v161);
    v173 = (v162 + v161);
    if (v173 < 0.000001)
    {
      v173 = 0.000001;
    }

    v174 = v172 / v173;
    if (v171 >= v174)
    {
      v175 = 1;
    }

    else
    {
      v175 = v137;
    }

    if ((v147 & 1) == 0 && (v175 & 1) == 0)
    {
      v176 = CI_LOG_DUALRED();
      if (v161 >= v162)
      {
        if (v176)
        {
          v191 = ci_logger_api(v176, v177);
          if (os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
          {
            [PercentileClipProcessor_RGBA8_CPU processWithInputs:v174 arguments:? output:? error:?];
          }
        }
      }

      else if (v176)
      {
        v178 = ci_logger_api(v176, v177);
        if (os_log_type_enabled(v178, OS_LOG_TYPE_ERROR))
        {
          [PercentileClipProcessor_RGBA8_CPU processWithInputs:v174 arguments:? output:? error:?];
        }
      }

      return v90;
    }

    if ((v147 | v137))
    {
      return v90;
    }

    [objc_msgSend(arguments objectForKeyedSubscript:{@"areaMaxRatio", "floatValue"}];
    v180 = v179;
    if (v179 > 0.0 || ([v197 Y], radialFillRGBA8(v35, output, 1, v210, v181, v51, v53) <= 8))
    {
      [v197 Y];
      radialFillRGBA8_circular(v35, output, 1, 0, v182, 0.2, v51, v53);
    }

    clipRepair(v35, output, 2, v227);
    calculateMeans(v148, output, 2, v51, v53);
    if (v183 < v196)
    {
      v192 = v183;
      v193 = CI_LOG_DUALRED();
      if (v193)
      {
        v195 = ci_logger_api(v193, v194);
        if (os_log_type_enabled(v195, OS_LOG_TYPE_ERROR))
        {
          [PercentileClipProcessor_RGBA8_CPU processWithInputs:v192 arguments:? output:? error:?];
        }
      }

      goto LABEL_132;
    }

    if (v180 > 0.0 || ([v197 W], radialFillRGBA8(v35, output, 3, v206, v184, v65, v67) <= 8))
    {
      [v197 W];
      radialFillRGBA8_circular(v35, output, 3, 0, v185, 0.2, v65, v67);
    }

    clipRepair(v35, output, 0, v224);
    calculateMeans(v212, output, 0, v65, v67);
    if (v186 < v196)
    {
      v187 = v186;
      v188 = CI_LOG_DUALRED();
      if (v188)
      {
        v190 = ci_logger_api(v188, v189);
        if (os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
        {
          [PercentileClipProcessor_RGBA8_CPU processWithInputs:v187 arguments:? output:? error:?];
        }
      }

LABEL_132:
      clearOutput(output);
    }
  }

  return v90;
}

+ (void)processWithInputs:arguments:output:error:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

+ (void)processWithInputs:arguments:output:error:.cold.4()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

+ (void)processWithInputs:arguments:output:error:.cold.5()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_0(v0);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

+ (void)processWithInputs:arguments:output:error:.cold.6()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_0(v0);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

+ (void)processWithInputs:arguments:output:error:.cold.7()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_0(v0);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

+ (void)processWithInputs:arguments:output:error:.cold.8()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_0(v0);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

+ (void)processWithInputs:arguments:output:error:.cold.9()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_0(v0);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

+ (void)processWithInputs:arguments:output:error:.cold.10()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_0(v0);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

+ (void)processWithInputs:(float)a1 arguments:output:error:.cold.11(float a1)
{
  OUTLINED_FUNCTION_10(*MEMORY[0x1E69E9840], a1);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

+ (void)processWithInputs:(float)a1 arguments:output:error:.cold.12(float a1)
{
  OUTLINED_FUNCTION_10(*MEMORY[0x1E69E9840], a1);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

+ (void)processWithInputs:(float)a1 arguments:output:error:.cold.13(float a1)
{
  OUTLINED_FUNCTION_10(*MEMORY[0x1E69E9840], a1);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

+ (void)processWithInputs:(float)a1 arguments:output:error:.cold.14(float a1)
{
  OUTLINED_FUNCTION_10(*MEMORY[0x1E69E9840], a1);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

+ (void)processWithInputs:(float)a1 arguments:output:error:.cold.15(float a1)
{
  OUTLINED_FUNCTION_8(*MEMORY[0x1E69E9840], a1);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

+ (void)processWithInputs:(float)a1 arguments:output:error:.cold.16(float a1)
{
  OUTLINED_FUNCTION_8(*MEMORY[0x1E69E9840], a1);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

+ (void)processWithInputs:arguments:output:error:.cold.17()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

+ (void)processWithInputs:arguments:output:error:.cold.18()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

@end