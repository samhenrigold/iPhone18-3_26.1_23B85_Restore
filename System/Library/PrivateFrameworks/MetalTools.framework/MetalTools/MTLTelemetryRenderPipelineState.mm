@interface MTLTelemetryRenderPipelineState
- (MTLTelemetryRenderPipelineState)initWithPipelineState:(id)state reflection:(id)reflection parent:(id)parent descriptor:(id)descriptor;
- (void)accumulateUsage;
- (void)dealloc;
@end

@implementation MTLTelemetryRenderPipelineState

- (void)accumulateUsage
{
  v3 = *&self->uniqueID;
  v9 = &self->super.super._externalReferences + 1;
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v3 + 272), &self->super.super._externalReferences + 1, &std::piecewise_construct, &v9);
  v5 = *&self->uniqueID;
  v9 = v4 + 5;
  v6 = std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v5 + 312), v4 + 5, &std::piecewise_construct, &v9);
  ++*(v6 + 8);
  v7 = *&self->uniqueID;
  v9 = v4 + 3;
  v8 = std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v7 + 312), v4 + 6, &std::piecewise_construct, &v9);
  ++*(v8 + 8);
  ++*(v4 + 7);
}

- (MTLTelemetryRenderPipelineState)initWithPipelineState:(id)state reflection:(id)reflection parent:(id)parent descriptor:(id)descriptor
{
  v46 = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = MTLTelemetryRenderPipelineState;
  v10 = [(MTLToolsRenderPipelineState *)&v43 initWithBaseObject:state parent:parent];
  if (v10 && [parent enableTelemetry])
  {
    *(&v10->super.super._externalReferences + 1) = +[MTLTelemetryRenderPipelineState generateUniqueID];
    *&v10->uniqueID = parent;
    performanceStatistics = [reflection performanceStatistics];
    v12 = [performanceStatistics objectForKey:*MEMORY[0x277CD6A20]];
    v13 = [performanceStatistics objectForKey:*MEMORY[0x277CD6A18]];
    v14 = [v12 objectForKey:@"Telemetry Statistics"];
    v15 = [v13 objectForKey:@"Telemetry Statistics"];
    v16 = *(parent + 91);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__MTLTelemetryRenderPipelineState_initWithPipelineState_reflection_parent_descriptor___block_invoke;
    block[3] = &unk_2787B4D48;
    block[4] = state;
    block[5] = v10;
    block[6] = v14;
    block[7] = v15;
    block[8] = descriptor;
    block[9] = parent;
    block[10] = reflection;
    dispatch_sync(v16, block);
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    constantSamplerDescriptors = [reflection constantSamplerDescriptors];
    v18 = [constantSamplerDescriptors countByEnumeratingWithState:&v38 objects:v45 count:16];
    if (!v18)
    {
      goto LABEL_13;
    }

    v19 = v18;
    v20 = *v39;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v39 != v20)
        {
          objc_enumerationMutation(constantSamplerDescriptors);
        }

        if ([*(*(&v38 + 1) + 8 * i) maxAnisotropy] >= 2)
        {
          LOBYTE(v10->device) = 1;
          goto LABEL_13;
        }
      }

      v19 = [constantSamplerDescriptors countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v19);
LABEL_13:
    v33 = v10;
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    fragmentArguments = [reflection fragmentArguments];
    v25 = [fragmentArguments countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (!v25)
    {
      goto LABEL_25;
    }

    v26 = v25;
    v27 = *v35;
LABEL_15:
    v28 = 0;
    while (1)
    {
      if (*v35 != v27)
      {
        objc_enumerationMutation(fragmentArguments);
      }

      v29 = *(*(&v34 + 1) + 8 * v28);
      if (![v29 isActive])
      {
        goto LABEL_23;
      }

      type = [v29 type];
      v31 = v22;
      if (type == 3)
      {
        goto LABEL_22;
      }

      if (type == 2)
      {
        break;
      }

LABEL_23:
      if (v26 == ++v28)
      {
        v26 = [fragmentArguments countByEnumeratingWithState:&v34 objects:v44 count:16];
        if (!v26)
        {
LABEL_25:
          v10 = v33;
          *&v33->hasAnisoConstantSampler = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v22];
          v33->activeFragmentSamplers = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v23];

          return v10;
        }

        goto LABEL_15;
      }
    }

    v31 = v23;
LABEL_22:
    [v31 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", objc_msgSend(v29, "index"))}];
    goto LABEL_23;
  }

  return v10;
}

void *__86__MTLTelemetryRenderPipelineState_initWithPipelineState_reflection_parent_descriptor___block_invoke(void *a1)
{
  v1 = a1;
  v64 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = [v2 getVertexShaderTelemetryID];
  v59 = v3;
  LODWORD(v2) = [v2 getFragmentShaderTelemetryID];
  v46 = v1;
  v4 = v1[5];
  v1 += 5;
  v5 = *(v4 + 40);
  v58 = v2;
  __p[0] = (v4 + 36);
  v6 = std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v5 + 272), (v4 + 36), &std::piecewise_construct, __p);
  *(v6 + 5) = v3;
  *(v6 + 6) = v2;
  *(v6 + 7) = 0;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v46[6]];
  v8 = *(*v1 + 40);
  __p[0] = &v59;
  v9 = std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v8 + 312), &v59, &std::piecewise_construct, __p);
  v9[3] = 1;
  *(v9 + 8) = 0;
  v9[5] = v7;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v46[7]];
  v11 = *(*v1 + 40);
  __p[0] = &v58;
  v12 = std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v11 + 312), &v58, &std::piecewise_construct, __p);
  v12[3] = 2;
  *(v12 + 8) = 0;
  v12[5] = v10;
  v13 = *(*v1 + 40);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v14 = v46[6];
  v15 = [v14 countByEnumeratingWithState:&v54 objects:v63 count:16];
  if (v15)
  {
    v16 = *v55;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v55 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v54 + 1) + 8 * i);
        std::string::basic_string[abi:ne200100]<0>(__p, [v18 UTF8String]);
        v19 = [objc_msgSend(v46[6] objectForKey:{v18), "unsignedIntValue"}];
        v61 = __p;
        v20 = std::__hash_table<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v13 + 360), __p, &std::piecewise_construct, &v61, &v60);
        if (v19)
        {
          v21 = *(v20 + 14);
          if (v21)
          {
            if (v19 > *(v20 + 11))
            {
              *(v20 + 11) = v19;
            }

            if (v19 >= *(v20 + 10))
            {
              goto LABEL_14;
            }
          }

          else
          {
            *(v20 + 11) = v19;
          }

          *(v20 + 10) = v19;
LABEL_14:
          v20[6] = v20[6] + v19;
          *(v20 + 14) = v21 + 1;
        }

        if (v53 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v54 objects:v63 count:16];
    }

    while (v15);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v22 = v46[7];
  v23 = [v22 countByEnumeratingWithState:&v48 objects:v62 count:16];
  if (v23)
  {
    v24 = *v49;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v49 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v48 + 1) + 8 * j);
        std::string::basic_string[abi:ne200100]<0>(__p, [v26 UTF8String]);
        v27 = [objc_msgSend(v46[7] objectForKey:{v26), "unsignedIntValue"}];
        v61 = __p;
        v28 = std::__hash_table<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v13 + 400), __p, &std::piecewise_construct, &v61, &v60);
        if (v27)
        {
          v29 = *(v28 + 14);
          if (v29)
          {
            if (v27 > *(v28 + 11))
            {
              *(v28 + 11) = v27;
            }

            if (v27 >= *(v28 + 10))
            {
              goto LABEL_32;
            }
          }

          else
          {
            *(v28 + 11) = v27;
          }

          *(v28 + 10) = v27;
LABEL_32:
          v28[6] = v28[6] + v27;
          *(v28 + 14) = v29 + 1;
        }

        if (v53 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v23 = [v22 countByEnumeratingWithState:&v48 objects:v62 count:16];
    }

    while (v23);
  }

  v30 = 0;
  v31 = v46;
  do
  {
    v32 = [objc_msgSend(objc_msgSend(v31[8] "colorAttachments")];
    v31 = v46;
    if (v32)
    {
      ++*(*(v46[9] + 352) + 4 * v30);
    }

    ++v30;
  }

  while (v30 != 8);
  v33 = v46 + 9;
  *(*(v46[9] + 352) + 32) += [v46[8] isAlphaTestEnabled];
  *(*(*v33 + 352) + 36) += [v46[8] isAlphaToOneEnabled];
  *(*(*v33 + 352) + 40) += [v46[8] isAlphaToCoverageEnabled];
  v34 = [v46[8] rasterSampleCount];
  if (v34)
  {
    v35 = *(v46[9] + 352);
    if (v35[22])
    {
      if (v35[19] < v34)
      {
        v35[19] = v34;
        v35 = *(v46[9] + 352);
      }

      v37 = v35[18];
      v36 = v35 + 18;
      if (v37 <= v34)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v35[19] = v34;
      v36 = (*(v46[9] + 352) + 72);
    }

    *v36 = v34;
LABEL_49:
    *(*(v46[9] + 352) + 80) += v34;
    ++*(*(v46[9] + 352) + 88);
  }

  v38 = [v46[8] colorSampleCount];
  if (v38)
  {
    v39 = *(v46[9] + 352);
    if (v39[16])
    {
      if (v39[13] < v38)
      {
        v39[13] = v38;
        v39 = *(v46[9] + 352);
      }

      v41 = v39[12];
      v40 = v39 + 12;
      if (v41 <= v38)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v39[13] = v38;
      v40 = (*(v46[9] + 352) + 48);
    }

    *v40 = v38;
LABEL_58:
    *(*(v46[9] + 352) + 56) += v38;
    ++*(*(v46[9] + 352) + 64);
  }

  v42 = (v46 + 10);
  v43 = [v46[10] usageFlags];
  v44 = v46[9];
  v47 = v46 + 9;
  *(*(v44 + 352) + 96) += v43 & 1;
  *(*(*v47 + 352) + 100) += ([*v42 usageFlags] >> 1) & 1;
  *(*(*v47 + 352) + 104) += ([*v42 usageFlags] >> 2) & 1;
  *(*(*v47 + 352) + 108) += ([*v42 usageFlags] >> 3) & 1;
  *(*(*v47 + 352) + 112) += ([*v42 usageFlags] >> 4) & 1;
  result = [*v42 usageFlags];
  *(*(*v47 + 352) + 116) += (result >> 5) & 1;
  ++*(*(*v47 + 352) + 120);
  return result;
}

- (void)dealloc
{
  if ([*&self->uniqueID enableTelemetry])
  {
  }

  v3.receiver = self;
  v3.super_class = MTLTelemetryRenderPipelineState;
  [(MTLToolsRenderPipelineState *)&v3 dealloc];
}

@end