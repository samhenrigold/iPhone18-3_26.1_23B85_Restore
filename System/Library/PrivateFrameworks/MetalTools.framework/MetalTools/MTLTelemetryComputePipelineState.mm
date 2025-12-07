@interface MTLTelemetryComputePipelineState
- (MTLTelemetryComputePipelineState)initWithComputePipelineState:(id)state reflection:(id)reflection parent:(id)parent descriptor:(id)descriptor;
- (void)accumulateUsage;
@end

@implementation MTLTelemetryComputePipelineState

- (void)accumulateUsage
{
  queue = self->device->queue;
  if (queue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__MTLTelemetryComputePipelineState_accumulateUsage__block_invoke;
    block[3] = &unk_2787B4A48;
    block[4] = self;
    dispatch_sync(queue, block);
  }
}

uint64_t *__51__MTLTelemetryComputePipelineState_accumulateUsage__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  v7 = (v2 + 52);
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v3 + 472), (v2 + 52), &std::piecewise_construct, &v7);
  v5 = *(*(a1 + 32) + 56);
  v7 = v4 + 5;
  result = std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v5 + 512), v4 + 5, &std::piecewise_construct, &v7);
  ++*(result + 6);
  ++*(v4 + 6);
  return result;
}

- (MTLTelemetryComputePipelineState)initWithComputePipelineState:(id)state reflection:(id)reflection parent:(id)parent descriptor:(id)descriptor
{
  v14.receiver = self;
  v14.super_class = MTLTelemetryComputePipelineState;
  v9 = [(MTLToolsObject *)&v14 initWithBaseObject:state parent:parent];
  if (v9)
  {
    if ([parent enableTelemetry])
    {
      v9->device = parent;
      *(&v9->uniqueID + 1) = +[MTLTelemetryComputePipelineState generateUniqueID];
      v10 = [objc_msgSend(reflection "performanceStatistics")];
      v11 = *(parent + 91);
      if (v11)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __94__MTLTelemetryComputePipelineState_initWithComputePipelineState_reflection_parent_descriptor___block_invoke;
        block[3] = &unk_2787B4A70;
        block[4] = state;
        block[5] = v9;
        block[6] = v10;
        block[7] = parent;
        block[8] = reflection;
        dispatch_sync(v11, block);
      }
    }
  }

  return v9;
}

void *__94__MTLTelemetryComputePipelineState_initWithComputePipelineState_reflection_parent_descriptor___block_invoke(uint64_t a1)
{
  v1 = a1;
  v37 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) getComputeKernelTelemetryID];
  v25 = v1;
  v3 = v1[5];
  v1 += 5;
  v4 = *(v3 + 56);
  v33 = v2;
  __dst = (v3 + 52);
  v5 = std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v4 + 472), (v3 + 52), &std::piecewise_construct, &__dst);
  *(v5 + 5) = v2;
  *(v5 + 6) = 0;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v25[6]];
  v7 = *(*v1 + 56);
  __dst = &v33;
  v8 = std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v7 + 512), &v33, &std::piecewise_construct, &__dst);
  *(v8 + 6) = 0;
  v8[4] = v6;
  v9 = *(*v1 + 56);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v25[6];
  v10 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v10)
  {
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        v14 = [v13 UTF8String];
        v15 = strlen(v14);
        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v16 = v15;
        if (v15 >= 0x17)
        {
          operator new();
        }

        v28 = v15;
        if (v15)
        {
          memmove(&__dst, v14, v15);
        }

        *(&__dst + v16) = 0;
        v17 = [objc_msgSend(v25[6] objectForKey:{v13), "unsignedIntValue"}];
        p_dst = &__dst;
        v18 = std::__hash_table<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v9 + 560), &__dst, &std::piecewise_construct, &p_dst, &v34);
        if (v17)
        {
          v19 = *(v18 + 14);
          if (v19)
          {
            if (v17 > *(v18 + 11))
            {
              *(v18 + 11) = v17;
            }

            if (v17 >= *(v18 + 10))
            {
              goto LABEL_20;
            }
          }

          else
          {
            *(v18 + 11) = v17;
          }

          *(v18 + 10) = v17;
LABEL_20:
          v18[6] = v18[6] + v17;
          *(v18 + 14) = v19 + 1;
        }

        if (v28 < 0)
        {
          operator delete(__dst);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v10);
  }

  v20 = (v25 + 8);
  v21 = [v25[8] usageFlags];
  v22 = v25[7];
  v26 = v25 + 7;
  *(*(v22 + 552) + 4) += v21 & 1;
  *(*(*v26 + 552) + 8) += ([*v20 usageFlags] >> 1) & 1;
  *(*(*v26 + 552) + 12) += ([*v20 usageFlags] >> 2) & 1;
  result = [*v20 usageFlags];
  *(*(*v26 + 552) + 16) += (result >> 3) & 1;
  ++**(*v26 + 552);
  return result;
}

@end