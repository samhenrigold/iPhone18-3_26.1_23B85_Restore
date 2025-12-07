@interface CRTableStructureRecognizer
+ (id)URLOfModelName:(id)name;
+ (id)loadCodemap;
- (BOOL)preheatWithError:(id *)error;
- (CRTableStructureRecognizer)initWithComputeDeviceType:(unint64_t)type metalDevice:(id)device;
- (CRTableStructureRecognizer)initWithEncoderName:(id)name decoderName:(id)decoderName computeDeviceType:(unint64_t)type metalDevice:(id)device;
- (CRTableStructureRecognizerInputFeatures)extractFeaturesFromImage:(SEL)image numConfigurationRegions:(id)regions lines:(int64_t)lines;
- (CRTableStructureRecognizerResultParsed)parseResult:(SEL)result;
- (id).cxx_construct;
- (id)_recognizeTableStructureBlock:(void *)block numConfigurationRegions:(int64_t)regions;
- (id)alignResult:(CRTableStructureRecognizerResultParsed *)result lines:(id)lines lineIndexMap:(vector<unsigned)long;
- (id)recognizeDetectedTableInRegion:(id)region filteredResults:(id)results tableIndex:(unint64_t)index image:(id)image;
- (id)recognizeTableStructure:(void *)structure numConfigurationRegions:(int64_t)regions;
- (id)tableGroupRegionFromResult:(id)result recognizedLines:(id)lines;
- (int)getEncoderEngine:(unint64_t)engine;
- (int64_t)getConfigurationNumRegions:(int64_t)regions;
- (vector<double,)readBinValuesStartingAtIndex:()vector<double tokenIndexes:(std:(SEL)indexes :(int *)a4 allocator<double>> *)self;
- (vector<float,)normalizedLineRegions:(CRTableStructureRecognizer *)self numConfigurationRegions:(SEL)regions usingMinMaxNorm:(id)norm;
- (void)reduceMemoryByResizing;
@end

@implementation CRTableStructureRecognizer

- (CRTableStructureRecognizer)initWithComputeDeviceType:(unint64_t)type metalDevice:(id)device
{
  deviceCopy = device;
  defaultEncoderModelName = [objc_opt_class() defaultEncoderModelName];
  defaultDecoderModelName = [objc_opt_class() defaultDecoderModelName];
  v9 = [(CRTableStructureRecognizer *)self initWithEncoderName:defaultEncoderModelName decoderName:defaultDecoderModelName computeDeviceType:type metalDevice:deviceCopy];

  return v9;
}

- (int)getEncoderEngine:(unint64_t)engine
{
  v11 = *MEMORY[0x1E69E9840];
  computeDeviceType = self->_computeDeviceType;
  if (computeDeviceType == 1)
  {
    v4 = 0;
    v5 = @"CPU";
  }

  else if (computeDeviceType == 2)
  {
    v4 = 5;
    v5 = @"MPS";
  }

  else
  {
    HasModernNeuralEngine = deviceHasModernNeuralEngine();
    if (HasModernNeuralEngine)
    {
      v5 = @"ANE";
    }

    else
    {
      v5 = @"MPS";
    }

    if (HasModernNeuralEngine)
    {
      v4 = 10007;
    }

    else
    {
      v4 = 5;
    }
  }

  v7 = CROSLogForCategory(5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_1B40D2000, v7, OS_LOG_TYPE_DEBUG, "Encoder running %@", &v9, 0xCu);
  }

  return v4;
}

- (CRTableStructureRecognizer)initWithEncoderName:(id)name decoderName:(id)decoderName computeDeviceType:(unint64_t)type metalDevice:(id)device
{
  nameCopy = name;
  decoderNameCopy = decoderName;
  deviceCopy = device;
  v19.receiver = self;
  v19.super_class = CRTableStructureRecognizer;
  v14 = [(CRTableStructureRecognizer *)&v19 init];
  v15 = v14;
  if (v14 && (objc_storeStrong(&v14->_encoderName, name), objc_storeStrong(&v15->_decoderName, decoderName), v15->_computeDeviceType = type, objc_storeStrong(&v15->_metalDevice, device), v16 = [(CRTableStructureRecognizer *)v15 loadModels], v15->_modelsLoaded = v16, v16))
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)URLOfModelName:(id)name
{
  nameCopy = name;
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 pathForResource:nameCopy ofType:@"bundle"];

  if (v5)
  {
    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5];
  }

  else
  {
    v7 = CROSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1B40D2000, v7, OS_LOG_TYPE_FAULT, "Failed to load ch_table_model", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)loadCodemap
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = MEMORY[0x1E695DEF0];
  v4 = [v2 pathForResource:@"tsr_codemap" ofType:@"json.lzfse"];
  v5 = [v3 dataWithContentsOfFile:v4];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [v2 pathForResource:@"tsr_codemap" ofType:@"json.lzfse.size"];
  v17 = 0;
  v8 = [v6 stringWithContentsOfFile:v7 encoding:4 error:&v17];
  v9 = v17;

  if (!v9)
  {
    v10 = uncompressDataOfSize(v5, [v8 integerValue]);
    if (v10)
    {
      v13 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v10 options:1 error:0];
      v14 = v13;
      if (v13)
      {
        v12 = [v13 objectForKeyedSubscript:@"codemap"];
LABEL_14:

        goto LABEL_15;
      }

      v15 = CROSLogForCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B40D2000, v15, OS_LOG_TYPE_FAULT, "Failed to parse the JSON table structure recognition codemap", buf, 2u);
      }

      v14 = 0;
    }

    else
    {
      v14 = CROSLogForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B40D2000, v14, OS_LOG_TYPE_FAULT, "Failed to load table structure recognition codemap", buf, 2u);
      }
    }

    v12 = 0;
    goto LABEL_14;
  }

  v10 = CROSLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    localizedDescription = [v9 localizedDescription];
    *buf = 138412290;
    v19 = localizedDescription;
    _os_log_impl(&dword_1B40D2000, v10, OS_LOG_TYPE_FAULT, "Failed to load table structure recognition codemap size: %@", buf, 0xCu);
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (int64_t)getConfigurationNumRegions:(int64_t)regions
{
  v14 = *MEMORY[0x1E69E9840];
  for (i = 0; i < [(NSArray *)self->_modelConfigurationsNumRegions count]; ++i)
  {
    v6 = [(NSArray *)self->_modelConfigurationsNumRegions objectAtIndexedSubscript:i];
    intValue = [v6 intValue];

    if (intValue >= regions)
    {
      break;
    }
  }

  if (i >= [(NSArray *)self->_modelConfigurationsNumRegions count])
  {
    v10 = CROSLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v12 = 134217984;
      regionsCopy = regions;
      _os_log_impl(&dword_1B40D2000, v10, OS_LOG_TYPE_FAULT, "Unexpected number of input regions %lu", &v12, 0xCu);
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = [(NSArray *)self->_modelConfigurationsNumRegions objectAtIndexedSubscript:i];
    intValue2 = [v8 intValue];
  }

  return intValue2;
}

- (CRTableStructureRecognizerInputFeatures)extractFeaturesFromImage:(SEL)image numConfigurationRegions:(id)regions lines:(int64_t)lines
{
  v25 = *MEMORY[0x1E69E9840];
  regionsCopy = regions;
  v11 = a6;
  v12 = [v11 count];
  v13 = CROSLogForCategory(5);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = v12;
    _os_log_impl(&dword_1B40D2000, v13, OS_LOG_TYPE_DEBUG, "Num Regions: %d", buf, 8u);
  }

  objc_msgSend_normalizedLineRegions_numConfigurationRegions_usingMinMaxNorm_(self);
  v14 = [regionsCopy imageByScalingToWidth:_modelImageSize height:_modelImageSize];
  v15 = v14;
  *buf = 0u;
  v24 = 0u;
  if (v14)
  {
    objc_msgSend_createFloatBuffer(v14);
  }

  v18 = 0;
  std::vector<float>::vector[abi:ne200100](&__b, lines, &v18);
  memset(__b, 1, 4 * v12);
  *&retstr->var0.var0 = 0u;
  *&retstr->var0.var2 = 0u;
  *&retstr->var1.var1 = 0u;
  if (&__p != retstr)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(retstr, __p, v22, (v22 - __p) >> 2);
  }

  if (&retstr->var1 != &__b)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&retstr->var1, __b, v20, (v20 - __b) >> 2);
  }

  v16 = v24;
  *&retstr->var2.data = *buf;
  *&retstr->var2.width = v16;
  if (__b)
  {
    v20 = __b;
    operator delete(__b);
  }

  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  return result;
}

- (BOOL)preheatWithError:(id *)error
{
  modelsLoaded = self->_modelsLoaded;
  if (error && !self->_modelsLoaded)
  {
    *error = [CRImageReader errorWithErrorCode:-8];
    return self->_modelsLoaded;
  }

  return modelsLoaded;
}

- (id)recognizeDetectedTableInRegion:(id)region filteredResults:(id)results tableIndex:(unint64_t)index image:(id)image
{
  v183 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  resultsCopy = results;
  v120 = regionCopy;
  imageCopy = image;
  v11 = [CRNormalizedQuad alloc];
  tableRegions = [regionCopy tableRegions];
  v13 = [tableRegions objectAtIndexedSubscript:index];
  [v13 topLeft];
  v15 = v14;
  v17 = v16;
  tableRegions2 = [regionCopy tableRegions];
  v19 = [tableRegions2 objectAtIndexedSubscript:index];
  [v19 topRight];
  v21 = v20;
  v23 = v22;
  tableRegions3 = [regionCopy tableRegions];
  v25 = [tableRegions3 objectAtIndexedSubscript:index];
  [v25 bottomRight];
  v27 = v26;
  v29 = v28;
  tableRegions4 = [regionCopy tableRegions];
  v31 = [tableRegions4 objectAtIndexedSubscript:index];
  [v31 bottomLeft];
  v33 = v32;
  v35 = v34;
  [imageCopy size];
  v38 = [(CRNormalizedQuad *)v11 initWithNormalizedTopLeft:v15 topRight:v17 bottomRight:v21 bottomLeft:v23 size:v27, v29, v33, v35, v36, v37];

  v39 = [CRTableGroupRegion alloc];
  v119 = [(CRGroupRegion *)v39 initWithBoundingQuad:v38 layoutDirection:0 subregions:MEMORY[0x1E695E0F0]];
  v40 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(resultsCopy, "count")}];
  v41 = 0;
  __src = 0;
  v165 = 0;
  v166 = 0;
  while (v41 < [resultsCopy count])
  {
    v42 = [resultsCopy objectAtIndexedSubscript:v41];
    detectedLineRegion = [v42 detectedLineRegion];

    boundingQuad = [detectedLineRegion boundingQuad];
    [boundingQuad midPoint];
    v46 = v45;
    v48 = v47;

    if ([(CRNormalizedQuad *)v38 containsNormalizedPoint:v46, v48])
    {
      [v40 addObject:detectedLineRegion];
      v49 = v165;
      if (v165 >= v166)
      {
        v51 = __src;
        v52 = v165 - __src;
        v53 = (v165 - __src) >> 3;
        v54 = v53 + 1;
        if ((v53 + 1) >> 61)
        {
          std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
        }

        v55 = v166 - __src;
        if ((v166 - __src) >> 2 > v54)
        {
          v54 = v55 >> 2;
        }

        if (v55 >= 0x7FFFFFFFFFFFFFF8)
        {
          v56 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v56 = v54;
        }

        if (v56)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v56);
        }

        *(8 * v53) = v41;
        v50 = (8 * v53 + 8);
        memcpy(0, v51, v52);
        v57 = __src;
        __src = 0;
        v165 = v50;
        v166 = 0;
        if (v57)
        {
          operator delete(v57);
        }
      }

      else
      {
        *v165 = v41;
        v50 = v49 + 1;
      }

      v165 = v50;
    }

    ++v41;
  }

  if (![v40 count])
  {
    v59 = CROSLogForCategory(5);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1B40D2000, v59, OS_LOG_TYPE_DEBUG, "Rejecting table because it doesn't overlap with text.", buf, 2u);
    }

    goto LABEL_25;
  }

  v58 = -[CRTableStructureRecognizer getConfigurationNumRegions:](self, "getConfigurationNumRegions:", [v40 count]);
  if (v58 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v59 = CROSLogForCategory(5);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *&buf[4] = [v40 count];
      _os_log_impl(&dword_1B40D2000, v59, OS_LOG_TYPE_DEBUG, "Rejecting table because too many input lines: %lu", buf, 0xCu);
    }

LABEL_25:

    v60 = 0;
    goto LABEL_96;
  }

  boundingQuad2 = [(CRGroupRegion *)v119 boundingQuad];
  v117 = [imageCopy imageByRectifyingRegion:boundingQuad2 toColorSpace:0 homography:&v161];

  v62 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v40, "count")}];
  for (i = 0; [v40 count] > i; ++i)
  {
    v64 = [v40 objectAtIndexedSubscript:i];
    v65 = [v64 mutableCopy];

    v66 = [v40 objectAtIndexedSubscript:i];
    boundingQuad3 = [v66 boundingQuad];

    v68 = [CRNormalizedQuad alloc];
    v130 = v162;
    v122 = v161;
    v126 = v163;
    [boundingQuad3 topLeft];
    v71 = v69;
    v72 = v70;
    v74 = vaddq_f32(v126, vmlaq_n_f32(vmulq_n_f32(v122, v71), v130, v72));
    v73 = (v74.f32[0] / v74.f32[2]);
    *v74.i64 = (v74.f32[1] / v74.f32[2]);
    if (v74.f32[2] == 0.0)
    {
      v75 = v69;
    }

    else
    {
      v75 = v73;
    }

    if (v74.f32[2] == 0.0)
    {
      v76 = v70;
    }

    else
    {
      v76 = *v74.i64;
    }

    v131 = v162;
    v123 = v161;
    v127 = v163;
    [boundingQuad3 topRight];
    v78 = v77;
    v80 = v79;
    *&v77 = v77;
    *&v79 = v79;
    v81 = vaddq_f32(v127, vmlaq_n_f32(vmulq_n_f32(v123, *&v77), v131, *&v79));
    if (v81.f32[2] != 0.0)
    {
      v78 = (v81.f32[0] / v81.f32[2]);
      v80 = (v81.f32[1] / v81.f32[2]);
    }

    v132 = v162;
    v124 = v161;
    v128 = v163;
    [boundingQuad3 bottomRight];
    v83 = v82;
    v85 = v84;
    *&v82 = v82;
    *&v84 = v84;
    v86 = vaddq_f32(v128, vmlaq_n_f32(vmulq_n_f32(v124, *&v82), v132, *&v84));
    if (v86.f32[2] != 0.0)
    {
      v83 = (v86.f32[0] / v86.f32[2]);
      v85 = (v86.f32[1] / v86.f32[2]);
    }

    v133 = v162;
    v125 = v161;
    v129 = v163;
    [boundingQuad3 bottomLeft];
    v88 = v87;
    v90 = v89;
    *&v87 = v87;
    *&v89 = v89;
    v91 = vaddq_f32(v129, vmlaq_n_f32(vmulq_n_f32(v125, *&v87), v133, *&v89));
    if (v91.f32[2] != 0.0)
    {
      v88 = (v91.f32[0] / v91.f32[2]);
      v90 = (v91.f32[1] / v91.f32[2]);
    }

    [imageCopy size];
    v94 = [(CRNormalizedQuad *)v68 initWithNormalizedTopLeft:v75 topRight:v76 bottomRight:v78 bottomLeft:v80 size:v83, v85, v88, v90, v92, v93];
    [v65 setBoundingQuad:v94];

    [v62 addObject:v65];
  }

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v95 = CRSignpostLog_signPostOSLog;
  v96 = os_signpost_id_generate(v95);

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v97 = CRSignpostLog_signPostOSLog;
  v98 = v97;
  if (v96 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v97))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v98, OS_SIGNPOST_INTERVAL_BEGIN, v96, "OCRTableStructureInferenceTime", "", buf, 2u);
  }

  objc_msgSend_extractFeaturesFromImage_numConfigurationRegions_lines_(self);
  v99 = [(CRTableStructureRecognizer *)self recognizeTableStructure:&v160 numConfigurationRegions:v58];
  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v100 = CRSignpostLog_signPostOSLog;
  v101 = v100;
  if (v96 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v100))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v101, OS_SIGNPOST_INTERVAL_END, v96, "OCRTableStructureInferenceTime", "", buf, 2u);
  }

  if (!v99)
  {
    goto LABEL_80;
  }

  objc_msgSend_programTokenIdxs(v99);
  v102 = *&buf[8];
  v103 = *buf;
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  if (v102 == v103)
  {
LABEL_80:
    v113 = CROSLogForCategory(5);
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1B40D2000, v113, OS_LOG_TYPE_DEBUG, "Rejecting table because nil or empty program.", buf, 2u);
    }

    v60 = 0;
    goto LABEL_95;
  }

  objc_msgSend_programTokenIdxs(v99);
  v104 = **buf;
  noTableIndex = self->_noTableIndex;
  *&buf[8] = *buf;
  operator delete(*buf);
  if (noTableIndex == v104)
  {
    v106 = CROSLogForCategory(5);
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1B40D2000, v106, OS_LOG_TYPE_DEBUG, "<NO_Table>", buf, 2u);
    }
  }

  objc_msgSend_parseResult_(self);
  v107 = CROSLogForCategory(5);
  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
  {
    programString = [v99 programString];
    programTokens = [v99 programTokens];
    v109 = [programTokens count];
    v110 = *buf;
    v111 = *&buf[8];
    v112 = [v62 count];
    *v167 = 138413058;
    v168 = programString;
    v169 = 2048;
    v170 = v109;
    v171 = 2048;
    v172 = v111 * v110;
    v173 = 2048;
    v174 = v112;
    _os_log_impl(&dword_1B40D2000, v107, OS_LOG_TYPE_DEBUG, "Predicted program: %@, length: %lu, table-size: %lu - for table with %lu line regions", v167, 0x2Au);
  }

  if (v176)
  {
    if (*buf >= 2uLL && *&buf[8] > 1uLL)
    {
      v149 = *buf;
      v150 = v176;
      v152 = 0;
      v153 = 0;
      v151 = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v151, v177, v178, (v178 - v177) >> 3);
      v154 = 0;
      v155 = 0;
      v156 = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v154, v179, v180, (v180 - v179) >> 3);
      v157 = 0;
      v158 = 0;
      v159 = 0;
      std::vector<CRTableStructureMerge>::__init_with_size[abi:ne200100]<CRTableStructureMerge*,CRTableStructureMerge*>(&v157, v181, v182, (v182 - v181) >> 5);
      __p = 0;
      v147 = 0;
      v148 = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, __src, v165, (v165 - __src) >> 3);
      v60 = [(CRTableStructureRecognizer *)self alignResult:&v149 lines:v62 lineIndexMap:&__p];
      if (__p)
      {
        v147 = __p;
        operator delete(__p);
      }

      if (v157)
      {
        v158 = v157;
        operator delete(v157);
      }

      if (v154)
      {
        v155 = v154;
        operator delete(v154);
      }

      if (v151)
      {
        v152 = v151;
        operator delete(v151);
      }

      [v60 setProgram:v99];
      [v60 setTableQuad:v38];
      v135 = *buf;
      v136 = v176;
      v138 = 0;
      v139 = 0;
      v137 = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v137, v177, v178, (v178 - v177) >> 3);
      v140 = 0;
      v141 = 0;
      v142 = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v140, v179, v180, (v180 - v179) >> 3);
      v143 = 0;
      v144 = 0;
      v145 = 0;
      std::vector<CRTableStructureMerge>::__init_with_size[abi:ne200100]<CRTableStructureMerge*,CRTableStructureMerge*>(&v143, v181, v182, (v182 - v181) >> 5);
      [v60 setParsedProgram:&v135];
      if (v143)
      {
        v144 = v143;
        operator delete(v143);
      }

      if (v140)
      {
        v141 = v140;
        operator delete(v140);
      }

      if (v137)
      {
        v138 = v137;
        operator delete(v137);
      }

      goto LABEL_89;
    }

    v114 = CROSLogForCategory(5);
    if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
    {
      *v167 = 134218240;
      v168 = *buf;
      v169 = 2048;
      v170 = *&buf[8];
      _os_log_impl(&dword_1B40D2000, v114, OS_LOG_TYPE_DEBUG, "Rejecting table because invalid size: num_rows: %lu num_cols: %lu.", v167, 0x16u);
    }
  }

  else
  {
    v114 = CROSLogForCategory(5);
    if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
    {
      programString2 = [v99 programString];
      *v167 = 138412290;
      v168 = programString2;
      _os_log_impl(&dword_1B40D2000, v114, OS_LOG_TYPE_DEBUG, "Rejecting table because program is invalid %@", v167, 0xCu);
    }
  }

  v60 = 0;
LABEL_89:
  if (v181)
  {
    v182 = v181;
    operator delete(v181);
  }

  if (v179)
  {
    v180 = v179;
    operator delete(v179);
  }

  if (v177)
  {
    v178 = v177;
    operator delete(v177);
  }

LABEL_95:
  CRTableStructureRecognizerInputFeatures::~CRTableStructureRecognizerInputFeatures(&v160);

LABEL_96:
  if (__src)
  {
    v165 = __src;
    operator delete(__src);
  }

  return v60;
}

- (id)recognizeTableStructure:(void *)structure numConfigurationRegions:(int64_t)regions
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  v13 = 0;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__CRTableStructureRecognizer_recognizeTableStructure_numConfigurationRegions___block_invoke;
  v7[3] = &unk_1E7BC2698;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = structure;
  v7[7] = regions;
  dispatch_sync(queue, v7);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __78__CRTableStructureRecognizer_recognizeTableStructure_numConfigurationRegions___block_invoke(uint64_t a1)
{
  ++*(*(a1 + 32) + 72);
  v2 = [*(a1 + 32) _recognizeTableStructureBlock:*(a1 + 48) numConfigurationRegions:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_recognizeTableStructureBlock:(void *)block numConfigurationRegions:(int64_t)regions
{
  v107[17] = *MEMORY[0x1E69E9840];
  v83 = [(CRTableStructureRecognizer *)self getConfigurationStringForNumRegions:regions];
  ptr = self->_encoderModel.__ptr_;
  std::string::basic_string[abi:ne200100]<0>(&__p, [v83 UTF8String]);
  v7 = CoreRecognition::EspressoModelWrapper::selectConfiguration(ptr, &__p);
  v8 = v7;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v8)
    {
      goto LABEL_8;
    }
  }

  else if (v7)
  {
    goto LABEL_8;
  }

  v9 = CROSLogForCategory(5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_1B40D2000, v9, OS_LOG_TYPE_ERROR, "Error selecting encoder espresso configuration", &__p, 2u);
  }

LABEL_8:
  v10 = self->_decoderModel.__ptr_;
  v11 = v83;
  std::string::basic_string[abi:ne200100]<0>(&__p, [v83 UTF8String]);
  v12 = CoreRecognition::EspressoModelWrapper::selectConfiguration(v10, &__p);
  v13 = v12;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v13)
    {
      goto LABEL_15;
    }
  }

  else if (v12)
  {
    goto LABEL_15;
  }

  v14 = CROSLogForCategory(5);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_1B40D2000, v14, OS_LOG_TYPE_ERROR, "Error selecting decoder espresso configuration", &__p, 2u);
  }

LABEL_15:
  v15 = self->_encoderModel.__ptr_;
  v16 = *block;
  *&__p.__r_.__value_.__l.__data_ = vdupq_n_s64(1uLL);
  __p.__r_.__value_.__r.__words[2] = regions;
  regionsCopy = _numRegionFeatures;
  v102 = 0;
  v100 = 0;
  v101 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v100, &__p, v107, 4uLL);
  v17 = CoreRecognition::EspressoModelWrapper::bindInput(v15, v16, "line_regions", &v100);
  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  if (!v17)
  {
    goto LABEL_24;
  }

  v18 = self->_encoderModel.__ptr_;
  v19 = *(block + 6);
  __p.__r_.__value_.__r.__words[0] = 1;
  *&__p.__r_.__value_.__r.__words[1] = __PAIR128__(_modelImageSize, _numChannels);
  regionsCopy = _modelImageSize;
  v102 = 0;
  v100 = 0;
  v101 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v100, &__p, v107, 4uLL);
  v20 = CoreRecognition::EspressoModelWrapper::bindInput(v18, v19, "image", &v100);
  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  if (!v20)
  {
    goto LABEL_24;
  }

  v21 = self->_encoderModel.__ptr_;
  v22 = *(block + 3);
  *&__p.__r_.__value_.__l.__data_ = vdupq_n_s64(1uLL);
  __p.__r_.__value_.__r.__words[2] = 1;
  regionsCopy = regions;
  v102 = 0;
  v100 = 0;
  v101 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v100, &__p, v107, 4uLL);
  v23 = CoreRecognition::EspressoModelWrapper::bindInput(v21, v22, "mask", &v100);
  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  if ((v23 & 1) == 0)
  {
LABEL_24:
    v24 = CROSLogForCategory(5);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_1B40D2000, v24, OS_LOG_TYPE_ERROR, "Error binding encoder inputs", &__p, 2u);
    }
  }

  if (!CoreRecognition::EspressoModelWrapper::bindOutput(self->_encoderModel.__ptr_, &__p, "encoded_regions", 1) || !CoreRecognition::EspressoModelWrapper::bindOutput(self->_encoderModel.__ptr_, &v100, "encoded_regions_projected", 1) || !CoreRecognition::EspressoModelWrapper::bindOutput(self->_encoderModel.__ptr_, v99, "decoder_state_h", 1) || !CoreRecognition::EspressoModelWrapper::bindOutput(self->_encoderModel.__ptr_, v98, "decoder_state_c", 1) || (CoreRecognition::EspressoModelWrapper::bindOutput(self->_encoderModel.__ptr_, __A, "y", 1) & 1) == 0)
  {
    v25 = CROSLogForCategory(5);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      buf.i16[0] = 0;
      _os_log_impl(&dword_1B40D2000, v25, OS_LOG_TYPE_ERROR, "Error binding encoder outputs", &buf, 2u);
    }
  }

  if (!CoreRecognition::EspressoModelWrapper::execute(self->_encoderModel.__ptr_))
  {
    v26 = CROSLogForCategory(5);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      buf.i16[0] = 0;
      _os_log_impl(&dword_1B40D2000, v26, OS_LOG_TYPE_ERROR, "ENCODER PREDICTION ERROR", &buf, 2u);
    }
  }

  v27 = *(block + 6);
  if (v27)
  {
    free(v27);
    *(block + 6) = 0;
  }

  __src = 0;
  v95 = 0;
  v96 = 0;
  v81 = objc_alloc_init(CRTableStructureRecognizerResultProgram);
  if (_maxDecodingSteps)
  {
    if (!(_maxDecodingSteps >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, _maxDecodingSteps);
    }

    std::vector<PixelPosition>::__throw_length_error[abi:ne200100]();
  }

  v84 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  if (_maxDecodingSteps)
  {
    v28 = 0;
    v85 = vdupq_n_s64(1uLL);
    while (1)
    {
      v29 = objc_autoreleasePoolPush();
      v30 = self->_decoderModel.__ptr_;
      v31 = __A[0];
      buf = v85;
      codemapSize = self->_codemapSize;
      *&v104 = 1;
      *(&v104 + 1) = codemapSize;
      v92 = 0;
      v93 = 0;
      v91 = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v91, buf.i64, &__p, 4uLL);
      v33 = CoreRecognition::EspressoModelWrapper::bindInput(v30, v31, "y_prev", &v91);
      if (v91)
      {
        v92 = v91;
        operator delete(v91);
      }

      if (!v33)
      {
        goto LABEL_64;
      }

      v34 = self->_decoderModel.__ptr_;
      v35 = v99[0];
      buf = xmmword_1B42AF290;
      v104 = unk_1B42AF2A0;
      v92 = 0;
      v93 = 0;
      v91 = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v91, buf.i64, &__p, 4uLL);
      v36 = CoreRecognition::EspressoModelWrapper::bindInput(v34, v35, "decoder_state_h", &v91);
      if (v91)
      {
        v92 = v91;
        operator delete(v91);
      }

      if (!v36)
      {
        goto LABEL_64;
      }

      v37 = self->_decoderModel.__ptr_;
      v38 = v98[0];
      buf = xmmword_1B42AF290;
      v104 = unk_1B42AF2A0;
      v92 = 0;
      v93 = 0;
      v91 = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v91, buf.i64, &__p, 4uLL);
      v39 = CoreRecognition::EspressoModelWrapper::bindInput(v37, v38, "decoder_state_c", &v91);
      if (v91)
      {
        v92 = v91;
        operator delete(v91);
      }

      if (!v39)
      {
        goto LABEL_64;
      }

      v40 = self->_decoderModel.__ptr_;
      v41 = v100;
      buf = vdupq_n_s64(1uLL);
      *&v104 = regions;
      *(&v104 + 1) = 256;
      v92 = 0;
      v93 = 0;
      v91 = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v91, buf.i64, &__p, 4uLL);
      v42 = CoreRecognition::EspressoModelWrapper::bindInput(v40, v41, "encoded_regions_projected", &v91);
      if (v91)
      {
        v92 = v91;
        operator delete(v91);
      }

      if (!v42)
      {
        goto LABEL_64;
      }

      v43 = self->_decoderModel.__ptr_;
      v44 = __p.__r_.__value_.__r.__words[0];
      buf = vdupq_n_s64(1uLL);
      *&v104 = regions;
      *(&v104 + 1) = 32;
      v92 = 0;
      v93 = 0;
      v91 = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v91, buf.i64, &__p, 4uLL);
      v45 = CoreRecognition::EspressoModelWrapper::bindInput(v43, v44, "encoded_regions", &v91);
      if (v91)
      {
        v92 = v91;
        operator delete(v91);
      }

      if (!v45)
      {
        goto LABEL_64;
      }

      v46 = self->_decoderModel.__ptr_;
      v47 = *(block + 3);
      buf = vdupq_n_s64(1uLL);
      *&v104 = 1;
      *(&v104 + 1) = regions;
      v92 = 0;
      v93 = 0;
      v91 = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v91, buf.i64, &__p, 4uLL);
      v48 = CoreRecognition::EspressoModelWrapper::bindInput(v46, v47, "mask", &v91);
      if (v91)
      {
        v92 = v91;
        operator delete(v91);
      }

      if ((v48 & 1) == 0)
      {
LABEL_64:
        v49 = CROSLogForCategory(5);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          buf.i16[0] = 0;
          _os_log_impl(&dword_1B40D2000, v49, OS_LOG_TYPE_ERROR, "Error binding decoder outputs", &buf, 2u);
        }
      }

      if (!CoreRecognition::EspressoModelWrapper::bindOutput(self->_decoderModel.__ptr_, v99, "new_decoder_state_h", 1) || !CoreRecognition::EspressoModelWrapper::bindOutput(self->_decoderModel.__ptr_, v98, "new_decoder_state_c", 1) || (CoreRecognition::EspressoModelWrapper::bindOutput(self->_decoderModel.__ptr_, __A, "y", 1) & 1) == 0)
      {
        v50 = CROSLogForCategory(5);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          buf.i16[0] = 0;
          _os_log_impl(&dword_1B40D2000, v50, OS_LOG_TYPE_ERROR, "Error binding decoder outputs", &buf, 2u);
        }
      }

      if (!CoreRecognition::EspressoModelWrapper::execute(self->_decoderModel.__ptr_))
      {
        v51 = CROSLogForCategory(5);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          buf.i16[0] = 0;
          _os_log_impl(&dword_1B40D2000, v51, OS_LOG_TYPE_ERROR, "DECODER PREDICTION ERROR", &buf, 2u);
        }
      }

      buf.i64[0] = 0;
      LODWORD(v91) = -8388609;
      vDSP_maxmgvi(__A[0], 1, &v91, &buf, self->_codemapSize);
      if (buf.i64[0] == -1)
      {
        break;
      }

      blockCopy = block;
      v53 = [(NSArray *)self->_codemap objectAtIndexedSubscript:?];
      v54 = v95;
      if (v95 >= v96)
      {
        v56 = __src;
        v57 = v95 - __src;
        v58 = (v95 - __src) >> 2;
        v59 = v58 + 1;
        if ((v58 + 1) >> 62)
        {
          std::vector<PixelPosition>::__throw_length_error[abi:ne200100]();
        }

        v60 = v96 - __src;
        if ((v96 - __src) >> 1 > v59)
        {
          v59 = v60 >> 1;
        }

        v61 = v60 >= 0x7FFFFFFFFFFFFFFCLL;
        v62 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v61)
        {
          v62 = v59;
        }

        if (v62)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v62);
        }

        *(4 * v58) = buf.i32[0];
        v55 = (4 * v58 + 4);
        memcpy(0, v56, v57);
        v63 = __src;
        __src = 0;
        v95 = v55;
        v96 = 0;
        if (v63)
        {
          operator delete(v63);
        }
      }

      else
      {
        *v95 = buf.i32[0];
        v55 = v54 + 1;
      }

      v95 = v55;
      [v84 addObject:v53];
      block = blockCopy;
      if (buf.i64[0] == self->_eopIndex)
      {
        v64 = 0;
        goto LABEL_96;
      }

      if (buf.i64[0] == self->_noTableIndex)
      {
        goto LABEL_94;
      }

      bzero(__A[0], 4 * self->_codemapSize);
      __A[0][buf.i64[0]] = 1.0;
      v64 = 1;
LABEL_96:

      objc_autoreleasePoolPop(v29);
      if ((v64 & 1) != 0 && ++v28 < _maxDecodingSteps)
      {
        continue;
      }

      goto LABEL_98;
    }

    v53 = CROSLogForCategory(0);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
    {
      *v90 = 0;
      _os_log_impl(&dword_1B40D2000, v53, OS_LOG_TYPE_FAULT, "Unexpected TSR decoder output", v90, 2u);
    }

LABEL_94:
    v64 = 0;
    goto LABEL_96;
  }

LABEL_98:
  v65 = __src;
  v66 = v95;
  v67 = v95 - __src;
  if (v95 != __src)
  {
    eopIndex = self->_eopIndex;
    if (eopIndex != *(v95 - 1))
    {
      if (v95 >= v96)
      {
        v70 = v67 >> 2;
        v71 = (v67 >> 2) + 1;
        if (v71 >> 62)
        {
          std::vector<PixelPosition>::__throw_length_error[abi:ne200100]();
        }

        v72 = v96 - __src;
        if ((v96 - __src) >> 1 > v71)
        {
          v71 = v72 >> 1;
        }

        v61 = v72 >= 0x7FFFFFFFFFFFFFFCLL;
        v73 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v61)
        {
          v73 = v71;
        }

        if (v73)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v73);
        }

        *(4 * v70) = eopIndex;
        v69 = (4 * v70 + 4);
        memcpy(0, v65, v67);
        v74 = __src;
        __src = 0;
        v95 = v69;
        v96 = 0;
        if (v74)
        {
          operator delete(v74);
        }
      }

      else
      {
        *v95 = eopIndex;
        v69 = v66 + 1;
      }

      v95 = v69;
      v75 = [(NSArray *)self->_codemap objectAtIndexedSubscript:self->_eopIndex];
      [v84 addObject:v75];
    }
  }

  [(CRTableStructureRecognizerResultProgram *)v81 setProgramTokens:v84];
  v87 = 0;
  v88 = 0;
  v89 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v87, __src, v95, (v95 - __src) >> 2);
  [(CRTableStructureRecognizerResultProgram *)v81 setProgramTokenIdxs:&v87];
  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  inferenceCount = self->_inferenceCount;
  v77 = dispatch_time(0, 2000000000);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__CRTableStructureRecognizer__recognizeTableStructureBlock_numConfigurationRegions___block_invoke;
  block[3] = &unk_1E7BC26C0;
  block[4] = self;
  block[5] = inferenceCount;
  dispatch_after(v77, queue, block);
  v79 = v81;

  if (__src)
  {
    v95 = __src;
    operator delete(__src);
  }

  return v79;
}

void *__84__CRTableStructureRecognizer__recognizeTableStructureBlock_numConfigurationRegions___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  result = *(a1 + 32);
  if (*(v2 + 8) == result[9])
  {
    return [result reduceMemoryByResizing];
  }

  return result;
}

- (vector<double,)readBinValuesStartingAtIndex:()vector<double tokenIndexes:(std:(SEL)indexes :(int *)a4 allocator<double>> *)self
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v6 = *a4;
  begin = a5->__begin_;
  end = a5->__end_;
  v9 = end - a5->__begin_;
  if (v9 <= *a4)
  {
    return self;
  }

  selfCopy = self;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = v6;
  do
  {
    v17 = begin[v16];
    v18 = selfCopy[5].__begin_;
    v19 = v17 - v18;
    if (v17 < v18)
    {
      break;
    }

    cap = selfCopy[5].__cap_;
    if (cap < v17)
    {
      break;
    }

    if (v14 > v19)
    {
      return self;
    }

    if (v14 != v19)
    {
      v14 = v19;
LABEL_11:
      v21 = retstr->__cap_;
      if (v13 >= v21)
      {
        v22 = retstr->__begin_;
        v23 = v13 - retstr->__begin_;
        v24 = v23 >> 3;
        v25 = (v23 >> 3) + 1;
        if (v25 >> 61)
        {
          std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
        }

        v26 = v21 - v22;
        if (v26 >> 2 > v25)
        {
          v25 = v26 >> 2;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFF8)
        {
          v27 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(retstr, v27);
        }

        *(8 * v24) = v14;
        v13 = (8 * v24 + 8);
        memcpy(0, v22, v23);
        self = retstr->__begin_;
        retstr->__begin_ = 0;
        retstr->__end_ = v13;
        retstr->__cap_ = 0;
        if (self)
        {
          operator delete(self);
        }
      }

      else
      {
        *v13++ = v14;
      }

      retstr->__end_ = v13;
      v6 = *a4;
      begin = a5->__begin_;
      end = a5->__end_;
      goto LABEL_26;
    }

    if (v15)
    {
      return self;
    }

    if (v14 != cap)
    {
      if (v9 - 1 == v16)
      {
        v15 = 1;
        v14 = selfCopy[5].__cap_;
      }

      else
      {
        v14 += (begin[v6 + 1] - v17) >> 1;
        v15 = 1;
      }

      goto LABEL_11;
    }

    v15 = 1;
LABEL_26:
    *a4 = ++v6;
    v16 = v6;
    v9 = end - begin;
  }

  while (v9 > v6);
  if (retstr->__begin_ != v13 && *(v13 - 1) < selfCopy[5].__cap_ * 0.9)
  {
    retstr->__end_ = retstr->__begin_;
  }

  return self;
}

- (CRTableStructureRecognizerResultParsed)parseResult:(SEL)result
{
  v88 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  *&retstr->rowHeights.__begin_ = 0u;
  *&retstr->rowHeights.__cap_ = 0u;
  *&retstr->columnWidths.__end_ = 0u;
  *&retstr->merges.__begin_ = 0u;
  retstr->merges.__cap_ = 0;
  retstr->numRows = 0;
  retstr->numColumns = 0;
  retstr->valid = 0;
  if (!v6)
  {
    goto LABEL_114;
  }

  objc_msgSend_programTokenIdxs(v6);
  v8 = *buf;
  if (*&buf[8] != *buf)
  {
    objc_msgSend_programTokenIdxs(v7);
    v9 = *__p;
    rowsIndex = self->_rowsIndex;
    v82 = __p;
    operator delete(__p);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    if (rowsIndex != v9)
    {
      goto LABEL_114;
    }

    v80 = 1;
    objc_msgSend_programTokenIdxs(v7);
    v11 = *buf;
    if (*&buf[8] - *buf < 5uLL)
    {
      v12 = 0;
      if (!*buf)
      {
        goto LABEL_13;
      }
    }

    else
    {
      objc_msgSend_programTokenIdxs(v7);
      v12 = self->_rowsIndex == *(__p + v80);
      v82 = __p;
      operator delete(__p);
      v11 = *buf;
      if (!*buf)
      {
LABEL_13:
        if (v12)
        {
          ++v80;
        }

        objc_msgSend_programTokenIdxs(v7);
        objc_msgSend_readBinValuesStartingAtIndex_tokenIndexes_(self);
        if (v78)
        {
          v79 = v78;
          operator delete(v78);
        }

        v8 = __p;
        if (__p == v82)
        {
          goto LABEL_111;
        }

        objc_msgSend_programTokenIdxs(v7);
        v13 = *buf;
        if (v80 >= ((*&buf[8] - *buf) >> 2))
        {
          v14 = 1;
          if (!*buf)
          {
LABEL_23:
            if (v14)
            {
              goto LABEL_110;
            }

            v15 = ++v80;
            objc_msgSend_programTokenIdxs(v7);
            v16 = *buf;
            if (v15 >= (*&buf[8] - *buf) >> 2)
            {
              v17 = 0;
            }

            else
            {
              objc_msgSend_programTokenIdxs(v7);
              v17 = self->_colsIndex == *(v76 + v80);
              v77 = v76;
              operator delete(v76);
              v16 = *buf;
            }

            if (v16)
            {
              *&buf[8] = v16;
              operator delete(v16);
            }

            if (v17)
            {
              ++v80;
            }

            objc_msgSend_programTokenIdxs(v7);
            objc_msgSend_readBinValuesStartingAtIndex_tokenIndexes_(self);
            if (v74)
            {
              v75 = v74;
              operator delete(v74);
            }

            v18 = v76;
            v19 = v77;
            if (v76 == v77)
            {
              goto LABEL_108;
            }

            if (&retstr->rowHeights != &__p)
            {
              std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&retstr->rowHeights, __p, v82, (v82 - __p) >> 3);
              v18 = v76;
              v19 = v77;
            }

            if (&retstr->columnWidths != &v76)
            {
              std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&retstr->columnWidths, v18, v19, (v19 - v18) >> 3);
              v18 = v76;
              v19 = v77;
            }

            retstr->numRows = (v82 - __p) >> 3;
            retstr->numColumns = (v19 - v18) >> 3;
            v20 = v80;
            objc_msgSend_programTokenIdxs(v7);
            v22 = *buf;
            if (v20 >= (*&buf[8] - *buf) >> 2)
            {
              v23 = 0;
            }

            else
            {
              objc_msgSend_programTokenIdxs(v7);
              v23 = self->_eopIndex == *(v71 + v80);
              v72 = v71;
              operator delete(v71);
              v22 = *buf;
            }

            if (v22)
            {
              *&buf[8] = v22;
              operator delete(v22);
            }

            if (v23)
            {
              retstr->valid = 1;
              goto LABEL_107;
            }

            v71 = 0;
            v72 = 0;
            v24 = &off_1EB894000;
            v73 = 0;
            v25 = v80;
            *&v21 = 134218752;
            v69 = v21;
            while (1)
            {
              objc_msgSend_programTokenIdxs(v7, v69);
              if (v25 >= ((*&buf[8] - *buf) >> 2))
              {
                if (*buf)
                {
                  *&buf[8] = *buf;
                  operator delete(*buf);
                }

LABEL_96:
                if (&retstr->merges != &v71)
                {
                  std::vector<CRTableStructureMerge>::__assign_with_size[abi:ne200100]<CRTableStructureMerge*,CRTableStructureMerge*>(&retstr->merges, v71, v72, (v72 - v71) >> 5);
                }

                v65 = v80;
                objc_msgSend_programTokenIdxs(v7);
                if (v65 >= (*&buf[8] - *buf) >> 2)
                {
                  if (*buf)
                  {
                    *&buf[8] = *buf;
                    operator delete(*buf);
                  }
                }

                else
                {
                  objc_msgSend_programTokenIdxs(v7);
                  v66 = v70[v80];
                  eopIndex = self->_eopIndex;
                  operator delete(v70);
                  if (*buf)
                  {
                    *&buf[8] = *buf;
                    operator delete(*buf);
                  }

                  if (eopIndex == v66)
                  {
LABEL_102:
                    retstr->valid = 1;
                  }
                }

                if (v71)
                {
                  v72 = v71;
                  operator delete(v71);
                }

LABEL_107:
                v18 = v76;
LABEL_108:
                if (v18)
                {
                  v77 = v18;
                  operator delete(v18);
                }

LABEL_110:
                v8 = __p;
LABEL_111:
                if (v8)
                {
                  v82 = v8;
LABEL_113:
                  operator delete(v8);
                }

                goto LABEL_114;
              }

              objc_msgSend_programTokenIdxs(v7);
              v26 = v70[v80];
              mergeIndex = self->_mergeIndex;
              operator delete(v70);
              if (*buf)
              {
                *&buf[8] = *buf;
                operator delete(*buf);
              }

              if (mergeIndex != v26)
              {
                goto LABEL_96;
              }

              v28 = v80;
              v29 = v24[363];
              objc_msgSend_programTokenIdxs(v7);
              v30 = *buf;
              v31 = *&buf[8];
              if (*buf)
              {
                *&buf[8] = *buf;
                operator delete(*buf);
              }

              if (&v29[v28] >= (v31 - v30) >> 2)
              {
                goto LABEL_102;
              }

              ++v80;
              if (v24[363])
              {
                v32 = 0;
                while (1)
                {
                  p_numColumns = &retstr->numColumns;
                  if ((v32 & 1) == 0)
                  {
                    p_numColumns = retstr;
                  }

                  numRows = p_numColumns->numRows;
                  objc_msgSend_programTokenIdxs(v7);
                  if (self->_lowestNumberIndex > *(*buf + 4 * (v32 + v80)))
                  {
                    break;
                  }

                  objc_msgSend_programTokenIdxs(v7);
                  v35 = v70[v32 + v80];
                  operator delete(v70);
                  if (*buf)
                  {
                    *&buf[8] = *buf;
                    operator delete(*buf);
                  }

                  if (numRows < v35)
                  {
                    goto LABEL_84;
                  }

                  if (v24[363] <= ++v32)
                  {
                    goto LABEL_62;
                  }
                }

                *&buf[8] = *buf;
                operator delete(*buf);
LABEL_84:
                objc_msgSend_programTokenIdxs(v7);
                v59 = *(*buf + 4 * (v80 + v32));
                v60 = self->_mergeIndex;
                *&buf[8] = *buf;
                operator delete(*buf);
                if (v60 == v59)
                {
                  v25 = v80 + 1;
                  goto LABEL_93;
                }
              }

              else
              {
LABEL_62:
                objc_msgSend_programTokenIdxs(v7);
                v36 = *(*buf + 4 * v80);
                lowestNumberIndex = self->_lowestNumberIndex;
                *&buf[8] = *buf;
                operator delete(*buf);
                objc_msgSend_programTokenIdxs(v7);
                v38 = *(*buf + 4 * v80 + 4);
                v39 = self->_lowestNumberIndex;
                *&buf[8] = *buf;
                operator delete(*buf);
                objc_msgSend_programTokenIdxs(v7);
                v40 = *(*buf + 4 * v80 + 12);
                v41 = self->_lowestNumberIndex;
                *&buf[8] = *buf;
                operator delete(*buf);
                objc_msgSend_programTokenIdxs(v7);
                v42 = v36 - lowestNumberIndex;
                v43 = v38 - v39;
                v44 = v40 - v41;
                v45 = *(*buf + 4 * v80 + 8) - self->_lowestNumberIndex;
                *&buf[8] = *buf;
                operator delete(*buf);
                v46 = v71;
                v47 = v72;
                if (v71 == v72)
                {
LABEL_74:
                  if (v72 >= v73)
                  {
                    v55 = v72 - v71;
                    v56 = (v72 - v71) >> 5;
                    v57 = v56 + 1;
                    if ((v56 + 1) >> 59)
                    {
                      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
                    }

                    v58 = v73 - v71;
                    if ((v73 - v71) >> 4 > v57)
                    {
                      v57 = v58 >> 4;
                    }

                    if (v58 >= 0x7FFFFFFFFFFFFFE0)
                    {
                      v57 = 0x7FFFFFFFFFFFFFFLL;
                    }

                    if (v57)
                    {
                      std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(&v71, v57);
                    }

                    v63 = (32 * v56);
                    *v63 = v42;
                    v63[1] = v44;
                    v63[2] = v43;
                    v63[3] = v45;
                    v54 = (32 * v56 + 32);
                    memcpy(0, v46, v55);
                    v64 = v71;
                    v71 = 0;
                    v72 = v54;
                    v73 = 0;
                    if (v64)
                    {
                      operator delete(v64);
                    }
                  }

                  else
                  {
                    *v72 = v42;
                    *(v47 + 1) = v44;
                    v54 = v47 + 32;
                    *(v47 + 2) = v43;
                    *(v47 + 3) = v45;
                  }

                  v24 = &off_1EB894000;
                  v72 = v54;
                }

                else
                {
                  v48 = (v71 + 16);
                  while (1)
                  {
                    v50 = *(v48 - 2);
                    v49 = v48 - 2;
                    v52 = v42 >= v50;
                    v51 = v42 - v50;
                    v52 = !v52 || v51 >= *(v48 - 1);
                    if (!v52 && v43 >= *v48 && v43 - *v48 < v48[1])
                    {
                      break;
                    }

                    v48 += 4;
                    if (v49 + 4 == v72)
                    {
                      goto LABEL_74;
                    }
                  }

                  v61 = CROSLogForCategory(5);
                  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = v69;
                    *&buf[4] = v42;
                    *&buf[12] = 2048;
                    *&buf[14] = v43;
                    v84 = 2048;
                    v85 = v40 - v41;
                    v86 = 2048;
                    v87 = v45;
                    _os_log_impl(&dword_1B40D2000, v61, OS_LOG_TYPE_DEBUG, "Cell %li %li was previously merged - dropping current merge: %li %li", buf, 0x2Au);
                  }

                  v24 = &off_1EB894000;
                }
              }

              v25 = v80 + *(v24 + 726);
LABEL_93:
              v80 = v25;
            }
          }
        }

        else
        {
          objc_msgSend_programTokenIdxs(v7);
          v14 = self->_colsIndex != *(v76 + v80);
          v77 = v76;
          operator delete(v76);
          v13 = *buf;
          if (!*buf)
          {
            goto LABEL_23;
          }
        }

        *&buf[8] = v13;
        operator delete(v13);
        goto LABEL_23;
      }
    }

    *&buf[8] = v11;
    operator delete(v11);
    goto LABEL_13;
  }

  if (*&buf[8])
  {
    *&buf[8] = *buf;
    goto LABEL_113;
  }

LABEL_114:

  return result;
}

- (id)alignResult:(CRTableStructureRecognizerResultParsed *)result lines:(id)lines lineIndexMap:(vector<unsigned)long
{
  linesCopy = lines;
  v157 = objc_alloc_init(CRTableStructureRecognizerResult);
  __C = 0;
  vDSP_sveD(result->columnWidths.__begin_, 1, &__C, result->columnWidths.__end_ - result->columnWidths.__begin_);
  v187 = 0;
  v188 = 0;
  v189 = 0;
  begin = result->columnWidths.__begin_;
  end = result->columnWidths.__end_;
  if (begin != end)
  {
    v8 = 0;
    v9 = *(end - 1);
    v10 = 0.0;
    do
    {
      v11 = *begin / v9 - v10;
      if (v8 >= v189)
      {
        v12 = v187;
        v13 = v8 - v187;
        v14 = (v8 - v187) >> 5;
        v15 = v14 + 1;
        if ((v14 + 1) >> 59)
        {
          std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
        }

        v16 = v189 - v187;
        if ((v189 - v187) >> 4 > v15)
        {
          v15 = v16 >> 4;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFE0)
        {
          v17 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(&v187, v17);
        }

        v18 = (v8 - v187) >> 5;
        v19 = 32 * v14;
        *v19 = v10;
        *(v19 + 8) = 0;
        *(v19 + 16) = v11;
        *(v19 + 24) = 0x3FF0000000000000;
        v8 = 32 * v14 + 32;
        v20 = (32 * v14 - 32 * v18);
        memcpy((v19 - 32 * v18), v12, v13);
        v21 = v187;
        v187 = v20;
        v188 = v8;
        v189 = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v8 = v10;
        *(v8 + 8) = 0;
        *(v8 + 16) = v11;
        *(v8 + 24) = 0x3FF0000000000000;
        v8 += 32;
      }

      v188 = v8;
      v10 = v10 + v11;
      ++begin;
    }

    while (begin != end);
  }

  [(CRTableStructureRecognizerResult *)v157 setColumns:&v187];
  if (v187)
  {
    v188 = v187;
    operator delete(v187);
  }

  __C = 0;
  vDSP_sveD(result->rowHeights.__begin_, 1, &__C, result->rowHeights.__end_ - result->rowHeights.__begin_);
  v184 = 0;
  v185 = 0;
  v186 = 0;
  v23 = result->rowHeights.__begin_;
  v22 = result->rowHeights.__end_;
  if (v23 != v22)
  {
    v24 = 0;
    v25 = *(v22 - 1);
    v26 = 0.0;
    do
    {
      v27 = *v23 / v25 - v26;
      if (v24 >= v186)
      {
        v28 = v184;
        v29 = v24 - v184;
        v30 = (v24 - v184) >> 5;
        v31 = v30 + 1;
        if ((v30 + 1) >> 59)
        {
          std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
        }

        v32 = v186 - v184;
        if ((v186 - v184) >> 4 > v31)
        {
          v31 = v32 >> 4;
        }

        if (v32 >= 0x7FFFFFFFFFFFFFE0)
        {
          v33 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v33 = v31;
        }

        if (v33)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(&v184, v33);
        }

        v34 = (v24 - v184) >> 5;
        v35 = 32 * v30;
        *v35 = 0;
        *(v35 + 8) = v26;
        *(v35 + 16) = 0x3FF0000000000000;
        *(v35 + 24) = v27;
        v24 = 32 * v30 + 32;
        v36 = (32 * v30 - 32 * v34);
        memcpy((v35 - 32 * v34), v28, v29);
        v37 = v184;
        v184 = v36;
        v185 = v24;
        v186 = 0;
        if (v37)
        {
          operator delete(v37);
        }
      }

      else
      {
        *v24 = 0;
        *(v24 + 8) = v26;
        *(v24 + 16) = 0x3FF0000000000000;
        *(v24 + 24) = v27;
        v24 += 32;
      }

      v185 = v24;
      v26 = v26 + v27;
      ++v23;
    }

    while (v23 != v22);
  }

  [(CRTableStructureRecognizerResult *)v157 setRows:&v184];
  if (v184)
  {
    v185 = v184;
    operator delete(v184);
  }

  v181 = 0;
  v182 = 0;
  v183 = 0;
  std::vector<CRTableStructureMerge>::__init_with_size[abi:ne200100]<CRTableStructureMerge*,CRTableStructureMerge*>(&v181, result->merges.__begin_, result->merges.__end_, (result->merges.__end_ - result->merges.__begin_) >> 5);
  [(CRTableStructureRecognizerResult *)v157 setMerges:&v181];
  if (v181)
  {
    v182 = v181;
    operator delete(v181);
  }

  if (v157)
  {
    objc_msgSend_rows(v157);
    v38 = __C;
    v144 = v180;
    if (__C)
    {
      v180 = __C;
      operator delete(__C);
    }

    objc_msgSend_columns(v157);
    v39 = v144 - v38;
    v40 = __C;
    v148 = v180;
    v41 = v180 - __C;
    if (__C)
    {
      v180 = __C;
      operator delete(__C);
    }
  }

  else
  {
    v41 = 0;
    v40 = 0;
    v148 = 0;
    v39 = 0;
    v38 = 0;
    v144 = 0;
  }

  v159 = v39;
  v141 = v39 * v41;
  std::vector<CGRect>::vector[abi:ne200100](&__C, v39 * v41);
  std::vector<_NSRange>::vector[abi:ne200100](&v177, v180 - __C);
  v147 = v40;
  std::vector<_NSRange>::vector[abi:ne200100](&v175, v180 - __C);
  v158 = v41;
  v152 = 16 * v41;
  v154 = 32 * v41;
  v143 = v38;
  if (v144 != v38)
  {
    v42 = 0;
    v43 = 0;
    if (v158 <= 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = v158;
    }

    if (v39 <= 1)
    {
      v39 = 1;
    }

    v45 = 8;
    do
    {
      if (v148 != v147)
      {
        v46 = 0;
        v47 = 0;
        v48 = v45;
        do
        {
          objc_msgSend_columns(v157, v141);
          v49 = *(v173 + v46);
          v50 = *(v173 + v46 + 8);
          v51 = *(v173 + v46 + 16);
          v52 = *(v173 + v46 + 24);
          objc_msgSend_rows(v157);
          v194.origin.x = v49;
          v194.origin.y = v50;
          v194.size.width = v51;
          v194.size.height = v52;
          v195 = CGRectIntersection(v194, *(__p + v43));
          *(__C + v42 + v46) = v195;
          if (__p)
          {
            v172 = __p;
            operator delete(__p);
          }

          if (v173)
          {
            v174 = v173;
            operator delete(v173);
          }

          v53 = v177 + v48;
          *(v53 - 1) = v43;
          *v53 = 1;
          v54 = v175 + v48;
          *(v54 - 1) = v47;
          *v54 = 1;
          ++v47;
          v48 += 16;
          v46 += 32;
        }

        while (v44 != v47);
      }

      ++v43;
      v45 += v152;
      v42 += v154;
    }

    while (v43 != v39);
  }

  if (v157)
  {
    for (i = 0; ; i = v145 + 1)
    {
      v56 = v158;
      objc_msgSend_merges(v157, v141);
      v57 = (v174 - v173) >> 5;
      if (v173)
      {
        v174 = v173;
        operator delete(v173);
      }

      if (i >= v57)
      {
        break;
      }

      objc_msgSend_merges(v157);
      v145 = i;
      v58 = (v173 + 32 * i);
      v59 = v58[1];
      v149 = *v58;
      v61 = v58[2];
      v60 = v58[3];
      v174 = v173;
      operator delete(v173);
      v150 = v59;
      if (v59)
      {
        v62 = 0;
        v63 = v61 + v149 * v158;
        v155 = 16 * v63;
        v64 = 32 * v63;
        do
        {
          if (v60)
          {
            v65 = 0;
            v66 = v64;
            v67 = v155;
            do
            {
              if (v65 | v62 && v62 + v149 < v159 && v61 + v65 < v158)
              {
                v196 = CGRectUnion(__C[v63], *(__C + v66));
                __C[v63] = v196;
                v191.location = v62 + v149;
                v191.length = 1;
                v68 = NSUnionRange(*(v177 + v63), v191);
                *(v177 + v63) = v68;
                v192.location = v61 + v65;
                v192.length = 1;
                v69 = NSUnionRange(*(v175 + v63), v192);
                v70 = v175;
                *(v175 + v63) = v69;
                v71 = (&__C->origin.x + v66);
                v72 = *(MEMORY[0x1E695F058] + 16);
                *v71 = *MEMORY[0x1E695F058];
                v71[1] = v72;
                v73 = v177 + v67;
                v74 = &v70[v67];
                *v73 = 0;
                v73[1] = 0;
                *v74 = 0;
                *(v74 + 1) = 0;
              }

              ++v65;
              v67 += 16;
              v66 += 32;
            }

            while (v60 != v65);
          }

          ++v62;
          v155 += v152;
          v64 += v154;
        }

        while (v62 != v150);
      }
    }
  }

  else
  {
    v56 = v158;
  }

  v168 = 0;
  v169 = 0;
  v170 = 0;
  std::vector<CGRect>::__init_with_size[abi:ne200100]<CGRect*,CGRect*>(&v168, __C, v180, v180 - __C);
  [(CRTableStructureRecognizerResult *)v157 setRectForCells:&v168];
  if (v168)
  {
    v169 = v168;
    operator delete(v168);
  }

  v165 = 0;
  v166 = 0;
  v167 = 0;
  std::vector<_NSRange>::__init_with_size[abi:ne200100]<_NSRange*,_NSRange*>(&v165, v177, v178, (v178 - v177) >> 4);
  [(CRTableStructureRecognizerResult *)v157 setRowsForCells:&v165];
  if (v165)
  {
    v166 = v165;
    operator delete(v165);
  }

  v162 = 0;
  v163 = 0;
  v164 = 0;
  std::vector<_NSRange>::__init_with_size[abi:ne200100]<_NSRange*,_NSRange*>(&v162, v175, v176, (v176 - v175) >> 4);
  [(CRTableStructureRecognizerResult *)v157 setColumnsForCells:&v162];
  if (v162)
  {
    v163 = v162;
    operator delete(v162);
  }

  std::vector<std::vector<unsigned long>>::vector[abi:ne200100](&v173, v141);
  v75 = 0;
  if (v56 <= 1)
  {
    v76 = 1;
  }

  else
  {
    v76 = v56;
  }

  v156 = v76;
  if (v159 <= 1)
  {
    v77 = 1;
  }

  else
  {
    v77 = v159;
  }

  v151 = 24 * v56;
  v153 = v77;
  v78 = MEMORY[0x1E695F060];
  while (v75 < [linesCopy count])
  {
    v160 = v75;
    v79 = [linesCopy objectAtIndexedSubscript:v75];
    boundingQuad = [v79 boundingQuad];
    [boundingQuad midPoint];
    v82 = v81;
    v84 = v83;

    if (v144 == v143)
    {
      v89 = -1;
LABEL_115:
      v121 = CROSLogForCategory(5);
      if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(__p) = 0;
        _os_log_impl(&dword_1B40D2000, v121, OS_LOG_TYPE_DEBUG, "Mid-point of line region not within any table cell, assign to closest cell.", &__p, 2u);
      }

      v111 = (v173 + 24 * v89);
      v113 = v111[1];
      v122 = v111[2];
      if (v113 < v122)
      {
LABEL_118:
        *v113 = v160;
        v123 = v113 + 1;
        goto LABEL_128;
      }

      v114 = *v111;
      v115 = v113 - *v111;
      v116 = v115 >> 3;
      v124 = (v115 >> 3) + 1;
      if (v124 >> 61)
      {
        std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
      }

      v125 = v122 - v114;
      if (v125 >> 2 > v124)
      {
        v124 = v125 >> 2;
      }

      v119 = v125 >= 0x7FFFFFFFFFFFFFF8;
      v120 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v119)
      {
        v120 = v124;
      }

      if (v120)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v173 + 24 * v89, v120);
      }
    }

    else
    {
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v88 = 0;
      v89 = -1;
      v90 = 1.79769313e308;
      while (1)
      {
        v91 = v85;
        v92 = v86;
        v93 = v87;
        v94 = v156;
        if (v148 != v147)
        {
          break;
        }

LABEL_104:
        ++v88;
        v87 += v154;
        v86 += v151;
        v85 += v158;
        if (v88 == v153)
        {
          goto LABEL_115;
        }
      }

      while (1)
      {
        objc_msgSend_rectForCells(v157);
        v95 = *(__p + v93);
        v96 = *(__p + v93 + 8);
        v97 = *(__p + v93 + 16);
        v98 = *(__p + v93 + 24);
        v172 = __p;
        operator delete(__p);
        v197.origin.x = v95;
        v197.origin.y = v96;
        v197.size.width = v97;
        v197.size.height = v98;
        v193.x = v82;
        v193.y = v84;
        if (CGRectContainsPoint(v197, v193))
        {
          break;
        }

        v198.origin.x = v95;
        v198.origin.y = v96;
        v198.size.width = v97;
        v198.size.height = v98;
        MidX = CGRectGetMidX(v198);
        v199.origin.x = v95;
        v199.origin.y = v96;
        v199.size.width = v97;
        v199.size.height = v98;
        MidY = CGRectGetMidY(v199);
        v101 = *v78;
        if (*v78 <= 0.0)
        {
          v108 = v82;
          v109 = v84;
        }

        else
        {
          v102 = v78[1];
          v103 = v102 <= 0.0;
          v104 = v82 * v101;
          v105 = v84 * v102;
          v106 = MidX * v101;
          v107 = MidY * v102;
          if (v103)
          {
            v108 = v82;
          }

          else
          {
            MidX = v106;
            MidY = v107;
            v108 = v104;
          }

          if (v103)
          {
            v109 = v84;
          }

          else
          {
            v109 = v105;
          }
        }

        v110 = (v109 - MidY) * (v109 - MidY) + (v108 - MidX) * (v108 - MidX);
        if (v110 < v90)
        {
          v89 = v91;
          v90 = v110;
        }

        v93 += 32;
        v92 += 24;
        ++v91;
        if (!--v94)
        {
          goto LABEL_104;
        }
      }

      v111 = (v173 + v92);
      v113 = *(v173 + v92 + 8);
      v112 = v111[2];
      if (v113 < v112)
      {
        goto LABEL_118;
      }

      v114 = *v111;
      v115 = v113 - *v111;
      v116 = v115 >> 3;
      v117 = (v115 >> 3) + 1;
      if (v117 >> 61)
      {
        std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
      }

      v118 = v112 - v114;
      if (v118 >> 2 > v117)
      {
        v117 = v118 >> 2;
      }

      v119 = v118 >= 0x7FFFFFFFFFFFFFF8;
      v120 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v119)
      {
        v120 = v117;
      }

      if (v120)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v111, v120);
      }
    }

    v126 = v116;
    v127 = (8 * v116);
    v128 = 8 * v120;
    v129 = &v127[-v126];
    *v127 = v160;
    v123 = v127 + 1;
    memcpy(v129, v114, v115);
    v130 = *v111;
    *v111 = v129;
    v111[1] = v123;
    v111[2] = v128;
    if (v130)
    {
      operator delete(v130);
    }

LABEL_128:
    v111[1] = v123;
    v75 = v160 + 1;
  }

  v131 = v173;
  v132 = v174;
  v133 = 0xAAAAAAAAAAAAAAABLL * ((v174 - v173) >> 3);
  if (v174 != v173)
  {
    v134 = 0;
    if (v133 <= 1)
    {
      v135 = 1;
    }

    else
    {
      v135 = 0xAAAAAAAAAAAAAAABLL * ((v174 - v173) >> 3);
    }

    do
    {
      v136 = v131[3 * v134];
      v137 = v131[3 * v134 + 1] - v136;
      if (v137)
      {
        v138 = v137 >> 3;
        v139 = a5->__begin_;
        if (v138 <= 1)
        {
          v138 = 1;
        }

        do
        {
          *v136 = v139[*v136];
          ++v136;
          --v138;
        }

        while (v138);
      }

      ++v134;
    }

    while (v134 != v135);
  }

  memset(v161, 0, sizeof(v161));
  std::vector<std::vector<unsigned long>>::__init_with_size[abi:ne200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(v161, v131, v132, v133);
  [(CRTableStructureRecognizerResult *)v157 setTextLineIndexesForCells:v161];
  __p = v161;
  std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &v173;
  std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v175)
  {
    v176 = v175;
    operator delete(v175);
  }

  if (v177)
  {
    v178 = v177;
    operator delete(v177);
  }

  if (__C)
  {
    v180 = __C;
    operator delete(__C);
  }

  return v157;
}

- (id)tableGroupRegionFromResult:(id)result recognizedLines:(id)lines
{
  v101 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  linesCopy = lines;
  tableQuad = [resultCopy tableQuad];
  v97[0] = 0;
  v97[1] = 0;
  __asm { FMOV            V1.2D, #1.0 }

  v98 = xmmword_1B42AF250;
  v99 = _Q1;
  v100 = xmmword_1B42AF260;
  [tableQuad topLeft];
  v89 = v13;
  v90 = v14;
  [tableQuad topRight];
  v91 = v15;
  v92 = v16;
  [tableQuad bottomRight];
  v93 = v17;
  v94 = v18;
  [tableQuad bottomLeft];
  v95 = v19;
  v96 = v20;
  *v21.f32 = computeHomographyMatrix(v97);
  v80 = v22;
  v82 = v21;
  v78 = v23;
  v24 = MEMORY[0x1E695DF70];
  if (resultCopy)
  {
    objc_msgSend_rows(resultCopy);
    v25 = (v87 - __p) >> 5;
  }

  else
  {
    v25 = 0;
    __p = 0;
    v87 = 0;
    v88 = 0;
  }

  v77 = [v24 arrayWithCapacity:v25];
  if (__p)
  {
    v87 = __p;
    operator delete(__p);
  }

  v26 = v82;
  v26.i32[3] = 0;
  v83 = v26;
  v27 = v80;
  v27.i32[3] = 0;
  v81 = v27;
  v28 = v78;
  v28.i32[3] = 0;
  v79 = v28;
  if (resultCopy)
  {
    objc_msgSend_rows(resultCopy);
    v29 = __p;
    if (__p != v87)
    {
      do
      {
        v30 = *v29;
        v31 = v29[1];
        v32 = v29[2];
        v33 = v29[3];
        [tableQuad normalizationSize];
        v103.width = v34;
        v103.height = v35;
        v72.columns[1] = v81;
        v72.columns[2] = v79;
        v72.columns[0] = v83;
        v106.origin.x = v30;
        v106.origin.y = v31;
        v106.size.width = v32;
        v106.size.height = v33;
        v36 = transformRectWithHomography(v106, v103, v72);
        [v77 addObject:v36];

        v29 += 4;
      }

      while (v29 != v87);
      v29 = __p;
    }

    if (v29)
    {
      v87 = v29;
      operator delete(v29);
    }

    v37 = MEMORY[0x1E695DF70];
    objc_msgSend_columns(resultCopy);
    v38 = (v87 - __p) >> 5;
  }

  else
  {
    v38 = 0;
    v37 = MEMORY[0x1E695DF70];
    __p = 0;
    v87 = 0;
    v88 = 0;
  }

  v76 = [v37 arrayWithCapacity:v38];
  if (__p)
  {
    v87 = __p;
    operator delete(__p);
  }

  if (resultCopy)
  {
    objc_msgSend_columns(resultCopy);
    v39 = __p;
    if (__p != v87)
    {
      do
      {
        v40 = *v39;
        v41 = v39[1];
        v42 = v39[2];
        v43 = v39[3];
        [tableQuad normalizationSize];
        v104.width = v44;
        v104.height = v45;
        v73.columns[1] = v81;
        v73.columns[2] = v79;
        v73.columns[0] = v83;
        v107.origin.x = v40;
        v107.origin.y = v41;
        v107.size.width = v42;
        v107.size.height = v43;
        v46 = transformRectWithHomography(v107, v104, v73);
        [v76 addObject:v46];

        v39 += 4;
      }

      while (v39 != v87);
      v39 = __p;
    }

    if (v39)
    {
      v87 = v39;
      operator delete(v39);
    }

    v47 = MEMORY[0x1E695DF70];
    objc_msgSend_rectForCells(resultCopy);
    v48 = (v87 - __p) >> 5;
  }

  else
  {
    v48 = 0;
    v47 = MEMORY[0x1E695DF70];
    __p = 0;
    v87 = 0;
    v88 = 0;
  }

  v75 = [v47 arrayWithCapacity:v48];
  if (__p)
  {
    v87 = __p;
    operator delete(__p);
  }

  v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (resultCopy)
  {
    for (i = 0; ; ++i)
    {
      objc_msgSend_rectForCells(resultCopy);
      v51 = (v87 - __p) >> 5;
      if (__p)
      {
        v87 = __p;
        operator delete(__p);
      }

      if (v51 <= i)
      {
        break;
      }

      objc_msgSend_rectForCells(resultCopy);
      v52 = (__p + 32 * i);
      v53 = *v52;
      v54 = v52[1];
      v55 = v52[2];
      v56 = v52[3];
      v87 = __p;
      operator delete(__p);
      v108.origin.x = v53;
      v108.origin.y = v54;
      v108.size.width = v55;
      v108.size.height = v56;
      if (!CGRectIsEmpty(v108))
      {
        [tableQuad normalizationSize];
        v105.width = v57;
        v105.height = v58;
        v74.columns[1] = v81;
        v74.columns[2] = v79;
        v74.columns[0] = v83;
        v109.origin.x = v53;
        v109.origin.y = v54;
        v109.size.width = v55;
        v109.size.height = v56;
        v59 = transformRectWithHomography(v109, v105, v74);
        array = [MEMORY[0x1E695DF70] array];
        objc_msgSend_textLineIndexesForCells(resultCopy);
        v61 = __p + 24 * i;
        v62 = *v61;
        v63 = v61[1];
        while (v62 != v63)
        {
          v64 = [linesCopy objectAtIndexedSubscript:*v62];
          [array addObject:v64];
          [v49 addObject:v64];

          ++v62;
        }

        v65 = [CRTableCellGroupRegion alloc];
        objc_msgSend_rowsForCells(resultCopy);
        v66 = (v85[0] + 16 * i);
        v67 = *v66;
        v68 = v66[1];
        objc_msgSend_columnsForCells(resultCopy);
        v69 = [(CRTableCellGroupRegion *)v65 initWithBoundingQuad:v59 layoutDirection:0 subregions:array rows:v67 columns:v68, v84[2 * i], v84[2 * i + 1]];
        [v75 addObject:v69];

        if (v84)
        {
          operator delete(v84);
        }

        if (v85[0])
        {
          v85[1] = v85[0];
          operator delete(v85[0]);
        }

        v85[0] = &__p;
        std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](v85);
      }
    }
  }

  v70 = [[CRTableGroupRegion alloc] initWithBoundingQuad:tableQuad layoutDirection:0 cells:v75 lineRegions:v49 rowQuads:v77 columnQuads:v76];

  return v70;
}

- (void)reduceMemoryByResizing
{
  ptr = self->_encoderModel.__ptr_;
  std::string::basic_string[abi:ne200100]<0>(&__p, -[NSString UTF8String](self->_modelSmallestConfig, "UTF8String"));
  v4 = CoreRecognition::EspressoModelWrapper::selectConfiguration(ptr, &__p);
  v5 = v4;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else if (!v4)
  {
    goto LABEL_9;
  }

  v6 = self->_decoderModel.__ptr_;
  std::string::basic_string[abi:ne200100]<0>(&__p, -[NSString UTF8String](self->_modelSmallestConfig, "UTF8String"));
  v7 = CoreRecognition::EspressoModelWrapper::selectConfiguration(v6, &__p);
  v8 = v7;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v8)
    {
      return;
    }
  }

  else if (v7)
  {
    return;
  }

LABEL_9:
  v9 = CROSLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_1B40D2000, v9, OS_LOG_TYPE_FAULT, "Error selecting smallest configuration for TSR model", &__p, 2u);
  }
}

- (vector<float,)normalizedLineRegions:(CRTableStructureRecognizer *)self numConfigurationRegions:(SEL)regions usingMinMaxNorm:(id)norm
{
  v6 = a6;
  v70 = *MEMORY[0x1E69E9840];
  normCopy = norm;
  v60 = [normCopy count];
  v68 = 0;
  std::vector<float>::vector[abi:ne200100](retstr, 8 * a5, &v68);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v10 = normCopy;
  v11 = [v10 countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v11)
  {
    v13 = 0;
    v14 = *v65;
    v62 = -1.0;
    LODWORD(v12) = 2.0;
    v63 = v12;
    LODWORD(v12) = 2.0;
    v61 = v12;
    v15 = -1.0;
    do
    {
      v16 = 0;
      v17 = v13;
      v18 = v13;
      do
      {
        if (*v65 != v14)
        {
          objc_enumerationMutation(v10);
        }

        boundingQuad = [*(*(&v64 + 1) + v16) boundingQuad];
        [boundingQuad boundingBox];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        [boundingQuad topLeft];
        *&v28 = v28;
        retstr->var0[v18 + v16] = *&v28;
        [boundingQuad topLeft];
        v30 = v29;
        retstr->var0[v18 + 1 + v16] = v30;
        [boundingQuad topRight];
        *&v31 = v31;
        retstr->var0[v18 + 2 + v16] = *&v31;
        [boundingQuad topRight];
        v33 = v32;
        retstr->var0[v18 + 3 + v16] = v33;
        [boundingQuad bottomRight];
        *&v34 = v34;
        retstr->var0[v18 + 4 + v16] = *&v34;
        [boundingQuad bottomRight];
        v36 = v35;
        retstr->var0[v18 + 5 + v16] = v36;
        [boundingQuad bottomLeft];
        *&v37 = v37;
        retstr->var0[v18 + 6 + v16] = *&v37;
        [boundingQuad bottomLeft];
        v39 = v38;
        retstr->var0[v18 + 7 + v16] = v39;
        if (v6)
        {
          v73.origin.x = v21;
          v73.origin.y = v23;
          v73.size.width = v25;
          v73.size.height = v27;
          MinX = CGRectGetMinX(v73);
          v74.origin.x = v21;
          v74.origin.y = v23;
          v74.size.width = v25;
          v74.size.height = v27;
          MinY = CGRectGetMinY(v74);
          v75.origin.x = v21;
          v75.origin.y = v23;
          v75.size.width = v25;
          v75.size.height = v27;
          MaxX = CGRectGetMaxX(v75);
          v76.origin.x = v21;
          v76.origin.y = v23;
          v76.size.width = v25;
          v76.size.height = v27;
          MaxY = CGRectGetMaxY(v76);
          v44 = MinX;
          v47 = MaxY;
          v48 = v61;
          if (*&v61 >= v44)
          {
            *&v48 = MinX;
          }

          v61 = v48;
          v46 = MaxX;
          if (v15 <= v46)
          {
            v15 = MaxX;
          }

          v49 = v63;
          v45 = MinY;
          if (*&v63 >= v45)
          {
            *&v49 = MinY;
          }

          v63 = v49;
          v50 = v62;
          if (v62 <= v47)
          {
            v50 = v47;
          }

          v62 = v50;
        }

        v16 += 8;
        --v11;
      }

      while (v11);
      v11 = [v10 countByEnumeratingWithState:&v64 objects:v69 count:16];
      v13 = v17 + v16;
    }

    while (v11);
  }

  else
  {
    v62 = -1.0;
    LODWORD(v12) = 2.0;
    *&v63 = v12;
    LODWORD(v12) = 2.0;
    *&v61 = v12;
    v15 = -1.0;
  }

  if (v6)
  {
    v53 = 4 * v60;
    if (4 * v60 >= 1)
    {
      *v52.i32 = v62 - *&v63;
      *v51.i32 = v15 - *&v61;
      var0 = retstr->var0;
      v55 = vdupq_lane_s32(*&v61, 0);
      v56 = vdupq_lane_s32(v51, 0);
      v57 = vdupq_lane_s32(*&v63, 0);
      v58 = vdupq_lane_s32(v52, 0);
      do
      {
        v71 = vld2q_f32(var0);
        v72.val[0] = vdivq_f32(vsubq_f32(v71.val[0], v55), v56);
        v72.val[1] = vdivq_f32(vsubq_f32(v71.val[1], v57), v58);
        vst2q_f32(var0, v72);
        var0 += 8;
        v53 -= 4;
      }

      while (v53);
    }
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end