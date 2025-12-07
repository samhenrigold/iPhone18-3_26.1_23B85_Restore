@interface AVAudioPCMBuffer(STAdditions)
+ (_DWORD)_st_createAudioBufferListWithAllocator:()STAdditions serializedData:description:;
+ (id)st_deserializeData:()STAdditions withBufferAllocator:;
+ (uint64_t)_st_deserializedInstanceIsValid:()STAdditions;
- (__CFData)_st_serializeBufferWithAllocator:()STAdditions format:;
- (id)st_serializeWithBufferAllocator:()STAdditions;
@end

@implementation AVAudioPCMBuffer(STAdditions)

- (id)st_serializeWithBufferAllocator:()STAdditions
{
  v19[2] = *MEMORY[0x277D85DE8];
  format = [self format];
  v6 = [self _st_serializeBufferWithAllocator:a3 format:format];
  v7 = v6;
  if (v6)
  {
    v18[0] = @"AVAudioPCMBufferFormat";
    v18[1] = @"AVAudioPCMBufferData";
    v19[0] = format;
    v19[1] = v6;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v17 = 0;
    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v17];
    v10 = v17;
    v12 = v10;
    if (v9)
    {
      v13 = v10 == 0;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v15 = v9;
    }

    else
    {
      v14 = _LTOSLogSTMultiprocess(v10, v11);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [AVAudioPCMBuffer(STAdditions) st_serializeWithBufferAllocator:];
      }

      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)st_deserializeData:()STAdditions withBufferAllocator:
{
  v38[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CBEB98];
  v38[0] = objc_opt_class();
  v38[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  v9 = [v7 setWithArray:v8];

  v10 = MEMORY[0x277CCAAC8];
  v11 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v29 = 0;
  v12 = [v10 unarchivedDictionaryWithKeysOfClasses:v11 objectsOfClasses:v9 fromData:v6 error:&v29];
  v13 = v29;

  if (!v12 || v13)
  {
    v24 = _LTOSLogSTMultiprocess(v14, v15);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      +[AVAudioPCMBuffer(STAdditions) st_deserializeData:withBufferAllocator:];
    }

    goto LABEL_11;
  }

  if (![self _st_deserializedInstanceIsValid:v12])
  {
LABEL_11:
    v22 = 0;
    goto LABEL_14;
  }

  v16 = [v12 objectForKeyedSubscript:@"AVAudioPCMBufferFormat"];
  v17 = [v12 objectForKeyedSubscript:@"AVAudioPCMBufferData"];
  v18 = [self _st_createAudioBufferListWithAllocator:a4 serializedData:v17 description:{objc_msgSend(v16, "streamDescription")}];
  if (v18)
  {
    v19 = v18;
    v20 = [self alloc];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __72__AVAudioPCMBuffer_STAdditions__st_deserializeData_withBufferAllocator___block_invoke;
    v28[3] = &__block_descriptor_48_e49_v16__0r__AudioBufferList_I_1_AudioBuffer_II_v___8l;
    v28[4] = a4;
    v28[5] = v19;
    v22 = [v20 initWithPCMFormat:v16 bufferListNoCopy:v19 deallocator:v28];
    if (!v22)
    {
      v23 = _LTOSLogSTMultiprocess(0, v21);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v26 = v23;
        v27 = STAudioUtilitiesFormatToString([v16 streamDescription]);
        *buf = 138544130;
        v31 = v16;
        v32 = 2114;
        v33 = v27;
        v34 = 2048;
        v35 = v19;
        v36 = 2114;
        v37 = v17;
        _os_log_error_impl(&dword_26B5BC000, v26, OS_LOG_TYPE_ERROR, "Failed to create PCM buffer with format: %{public}@ description: %{public}@ audioBufferList: %p serializedBufferData: %{public}@", buf, 0x2Au);
      }

      CFAllocatorDeallocate(a4, v19);
    }
  }

  else
  {
    v22 = 0;
  }

LABEL_14:

  return v22;
}

+ (uint64_t)_st_deserializedInstanceIsValid:()STAdditions
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"AVAudioPCMBufferFormat"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v3 objectForKeyedSubscript:@"AVAudioPCMBufferData"];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {

      v6 = 1;
    }

    else
    {

      v12 = _LTOSLogSTMultiprocess(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(AVAudioPCMBuffer(STAdditions) *)v3 _st_deserializedInstanceIsValid:v12];
      }

      v6 = 0;
    }
  }

  else
  {

    v9 = _LTOSLogSTMultiprocess(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(AVAudioPCMBuffer(STAdditions) *)v3 _st_deserializedInstanceIsValid:v9];
    }

    v6 = 0;
  }

  return v6;
}

- (__CFData)_st_serializeBufferWithAllocator:()STAdditions format:
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a4;
  audioBufferList = [self audioBufferList];
  v9 = audioBufferList;
  v10 = *audioBufferList;
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = 0;
  v12 = 3;
  do
  {
    v11 += audioBufferList[v12];
    v12 += 4;
    --v10;
  }

  while (v10);
  if (!v11)
  {
LABEL_11:
    v22 = _LTOSLogSTMultiprocess(audioBufferList, v8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v28 = *v9;
      v29 = v22;
      v30 = STAudioUtilitiesFormatToString([v6 streamDescription]);
      v31 = 138544130;
      selfCopy2 = self;
      v33 = 2048;
      *v34 = 0;
      *&v34[8] = 1024;
      *&v34[10] = v28;
      *&v34[14] = 2114;
      *&v34[16] = v30;
      _os_log_error_impl(&dword_26B5BC000, v29, OS_LOG_TYPE_ERROR, "Aborting serialization because this buffer: %{public}@ is empty dataSize: %zu numberBuffers: %u description: %{public}@", &v31, 0x26u);
    }

    goto LABEL_13;
  }

  Mutable = CFDataCreateMutable(a3, v11);
  if (!Mutable)
  {
    v24 = _LTOSLogSTMultiprocess(0, v14);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = *v9;
      v26 = v24;
      v27 = STAudioUtilitiesFormatToString([v6 streamDescription]);
      v31 = 134219010;
      selfCopy2 = v11;
      v33 = 2114;
      *v34 = a3;
      *&v34[8] = 2114;
      *&v34[10] = self;
      *&v34[18] = 1024;
      *&v34[20] = v25;
      v35 = 2114;
      v36 = v27;
      _os_log_error_impl(&dword_26B5BC000, v26, OS_LOG_TYPE_ERROR, "Failed to allocate dataSize: %zu from allocator: %{public}@ buffer: %{public}@ numberBuffers: %u description: %{public}@", &v31, 0x30u);
    }

LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  v15 = Mutable;
  if (*v9)
  {
    v16 = 0;
    v17 = (v9 + 4);
    do
    {
      CFDataAppendBytes(v15, *v17, *(v17 - 1));
      ++v16;
      v17 += 2;
    }

    while (v16 < *v9);
  }

  v18 = _LTOSLogSTMultiprocess(Mutable, v14);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = *v9;
    v20 = v18;
    v21 = STAudioUtilitiesFormatToString([v6 streamDescription]);
    v31 = 138544386;
    selfCopy2 = self;
    v33 = 1024;
    *v34 = v19;
    *&v34[4] = 2048;
    *&v34[6] = v11;
    *&v34[14] = 2114;
    *&v34[16] = v21;
    v35 = 2114;
    v36 = v15;
    _os_log_debug_impl(&dword_26B5BC000, v20, OS_LOG_TYPE_DEBUG, "Serializing buffer: %{public}@ with numberBuffers: %u dataSize: %zu description: %{public}@ data: %{public}@", &v31, 0x30u);
  }

LABEL_14:

  return v15;
}

+ (_DWORD)_st_createAudioBufferListWithAllocator:()STAdditions serializedData:description:
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [v7 length];
  v9 = v8;
  if ((*(a5 + 12) & 0x20) != 0)
  {
    v10 = *(a5 + 28);
  }

  else
  {
    v10 = 1;
  }

  v11 = 16 * (v10 - 1) + 24;
  v12 = MEMORY[0x26D67B490](a3, v11 + v8, 3471998901, 0);
  v14 = v12;
  if (v12)
  {
    v15 = v10;
    v16 = v9 / v10;
    if ((*(a5 + 12) & 0x20) != 0)
    {
      v17 = 1;
    }

    else
    {
      v17 = *(a5 + 28);
    }

    v19 = v12 + v11;
    v20 = [v7 getBytes:v12 + v11 length:v9];
    *v14 = v10;
    if (v10)
    {
      v22 = (v14 + 4);
      do
      {
        *v22 = v19;
        v19 += v16;
        *(v22 - 2) = v17;
        *(v22 - 1) = v16;
        v22 += 2;
        --v15;
      }

      while (v15);
    }

    v23 = _LTOSLogSTMultiprocess(v20, v21);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v25 = v23;
      v26 = STAudioUtilitiesFormatToString(a5);
      v27[0] = 67110402;
      v27[1] = v10;
      v28 = 2048;
      v29 = v9;
      v30 = 1024;
      v31 = v9 / v10;
      v32 = 1024;
      v33 = v17;
      v34 = 2114;
      v35 = v26;
      v36 = 2114;
      v37 = v7;
      _os_log_debug_impl(&dword_26B5BC000, v25, OS_LOG_TYPE_DEBUG, "bufferList created with numberOfBuffers: %u byteCount: %lu bytesPerPacket: %u channelsPerBuffer: %u description: %{public}@ data: %{public}@", v27, 0x32u);
    }
  }

  else
  {
    v18 = _LTOSLogSTMultiprocess(0, v13);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [AVAudioPCMBuffer(STAdditions) _st_createAudioBufferListWithAllocator:a3 serializedData:v11 + v9 description:v18];
    }
  }

  return v14;
}

+ (void)_st_deserializedInstanceIsValid:()STAdditions .cold.1(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 objectForKeyedSubscript:@"AVAudioPCMBufferData"];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_26B5BC000, v5, v6, "Failed to receive valid deserializedInstance: %{public}@ missing serializedBufferData: %{public}@", v7, v8, v9, v10);
}

+ (void)_st_deserializedInstanceIsValid:()STAdditions .cold.2(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 objectForKeyedSubscript:@"AVAudioPCMBufferFormat"];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_26B5BC000, v5, v6, "Failed to receive valid deserializedInstance: %{public}@ missing format: %{public}@", v7, v8, v9, v10);
}

+ (void)_st_createAudioBufferListWithAllocator:()STAdditions serializedData:description:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2048;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_0(&dword_26B5BC000, a2, a3, "Failed to allocate audioBufferList with allocator: %{public}@ size: %zu", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end