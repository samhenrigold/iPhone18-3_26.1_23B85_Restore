@interface CSBeepCanceller
- (CSBeepCanceller)init;
- (CSBeepCancellerDelegate)delegate;
- (NSDictionary)metrics;
- (id).cxx_construct;
- (void)cancelBeepFromSamples:(id)samples timestamp:(unint64_t)timestamp;
- (void)reset;
- (void)willBeep;
@end

@implementation CSBeepCanceller

- (id).cxx_construct
{
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 1) = 0u;
  return self;
}

- (CSBeepCancellerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSDictionary)metrics
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8647;
  v10 = __Block_byref_object_dispose__8648;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__CSBeepCanceller_metrics__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __26__CSBeepCanceller_metrics__block_invoke(uint64_t a1)
{
  v27[9] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 16);
  v3 = v2[66];
  v4 = v2[67];
  v5 = v2[68];
  v6 = v2[69];
  v7 = v2[70];
  v8 = v2[71];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{v2[65], @"beepLocation"}];
  v27[0] = v9;
  v26[1] = @"statsComputed";
  v10 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v27[1] = v10;
  v26[2] = @"beepPower";
  LODWORD(v11) = v4;
  v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  v27[2] = v12;
  v26[3] = @"signalPower";
  LODWORD(v13) = v5;
  v14 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
  v27[3] = v14;
  v26[4] = @"originalPower";
  LODWORD(v15) = v6;
  v16 = [MEMORY[0x1E696AD98] numberWithFloat:v15];
  v27[4] = v16;
  v26[5] = @"absMaxVal";
  LODWORD(v17) = v7;
  v18 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
  v27[5] = v18;
  v26[6] = @"above95pcOfMax";
  LODWORD(v19) = v8;
  v20 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
  v27[6] = v20;
  v26[7] = @"totalInputSamples";
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(*(a1 + 32) + 96)];
  v27[7] = v21;
  v26[8] = @"totalOutputSamples";
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(*(a1 + 32) + 104)];
  v27[8] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:9];
  v24 = *(*(a1 + 40) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v23;
}

- (void)reset
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[CSBeepCanceller reset]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Reset beep cancellation", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__CSBeepCanceller_reset__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __24__CSBeepCanceller_reset__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  *(v1 + 260) = 0x1FFFFFFFFCLL;
  *(v1 + 284) = 0;
  *(v1 + 276) = 0;
  *(v1 + 268) = 0;
  BatchBeepCanceller::reset(*(*(a1 + 32) + 16));
}

- (void)willBeep
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[CSBeepCanceller willBeep]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s It will beep now", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__CSBeepCanceller_willBeep__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __27__CSBeepCanceller_willBeep__block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 16);
  if ((*(v1 + 228) & 1) == 0)
  {
    *(v1 + 260) = -3;
    *(v1 + 284) = 0;
    *(v1 + 276) = 0;
    *(v1 + 268) = 0;
  }

  *(v1 + 224) = 1;
  return result;
}

- (void)cancelBeepFromSamples:(id)samples timestamp:(unint64_t)timestamp
{
  samplesCopy = samples;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CSBeepCanceller_cancelBeepFromSamples_timestamp___block_invoke;
  block[3] = &unk_1E865C350;
  v10 = samplesCopy;
  selfCopy = self;
  timestampCopy = timestamp;
  v8 = samplesCopy;
  dispatch_async(queue, block);
}

void __51__CSBeepCanceller_cancelBeepFromSamples_timestamp___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) length];
  v3 = [CSFLPCMTypeConverter convertToFloatLPCMBufFromShortLPCMBuf:*(a1 + 32)];
  v4 = [v3 bytes];
  v5 = v2 >> 1;

  v6 = (v2 >> 1);
  if (v6)
  {
    memmove(*(*(a1 + 40) + 48), v4, 4 * v6);
  }

  *(*(a1 + 40) + 96) += v6;
  v15 = 0;
  v7 = BatchBeepCanceller::feedFloat(*(*(a1 + 40) + 16), *(*(a1 + 40) + 48), v5, &v15);
  v14 = [MEMORY[0x1E695DEF0] dataWithBytes:v15 length:4 * v7];
  v8 = [CSFLPCMTypeConverter convertToShortLPCMBufFromFloatLPCMBuf:?];
  v9 = [v8 bytes];

  if (v7)
  {
    v10 = 2 * v7;
    memmove(*(*(a1 + 40) + 72), v9, v10);
    *(*(a1 + 40) + 104) += v7;
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 112));
    v12 = *(a1 + 40);
    v13 = [MEMORY[0x1E695DEF0] dataWithBytes:*(v12 + 72) length:v10];
    [WeakRetained beepCancellerDidCancelSamples:v12 buffer:v13 timestamp:*(a1 + 48)];
  }
}

- (CSBeepCanceller)init
{
  v41 = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = CSBeepCanceller;
  v2 = [(CSBeepCanceller *)&v36 init];
  if (v2)
  {
    v3 = [objc_opt_class() description];
    v4 = v3;
    v5 = dispatch_queue_create([v3 UTF8String], 0);
    v6 = *(v2 + 1);
    *(v2 + 1) = v5;

    v7 = +[CSAsset fallBackAssetResourcePath];
    v8 = [v7 stringByAppendingPathComponent:@"jbl_begin.bin"];
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v38 = "[CSBeepCanceller init]";
      v39 = 2114;
      v40 = v8;
      _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s BeepCanceller asset file loading from : %{public}@", buf, 0x16u);
    }

    v35 = 0;
    v10 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v8 options:8 error:&v35];
    v11 = v35;
    v12 = v11;
    if (v10 && !v11)
    {
      v13 = v10;
      bytes = [v10 bytes];
      v15 = [v10 length];
      v16 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      v17 = v2 + 24;
      v18 = *(v2 + 3);
      v19 = v15 >> 2;
      v20 = *(v2 + 5);
      if (v15 >> 2 > ((v20 - v18) >> 2))
      {
        if (v18)
        {
          *(v2 + 4) = v18;
          operator delete(v18);
          v20 = 0;
          *v17 = 0;
          *(v2 + 4) = 0;
          *(v2 + 5) = 0;
        }

        if (!(v19 >> 62))
        {
          v21 = v20 >> 1;
          if (v20 >> 1 <= v19)
          {
            v21 = v19;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v22 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v21;
          }

          std::vector<float>::__vallocate[abi:ne200100](v2 + 3, v22);
        }

        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v24 = *(v2 + 4);
      v25 = v24 - v18;
      if (v19 <= (v24 - v18) >> 2)
      {
        if (v15 >= 4)
        {
          memmove(v18, bytes, v16);
        }

        v26 = &v18[v16];
      }

      else
      {
        if (v24 != v18)
        {
          memmove(v18, bytes, v24 - v18);
        }

        v27 = *(v2 + 4);
        if (v25 != v16)
        {
          v28 = &bytes[v25];
          v29 = (&v18[v16] - v24);
          v27 = *(v2 + 4);
          do
          {
            v30 = *v28;
            v28 += 4;
            *v27 = v30;
            v27 += 4;
            v29 -= 4;
          }

          while (v29);
        }

        v26 = v27;
      }

      *(v2 + 4) = v26;
      v31 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        v32 = &v26[-*v17] >> 2;
        *buf = 136315394;
        v38 = "[CSBeepCanceller init]";
        v39 = 2050;
        v40 = v32;
        _os_log_impl(&dword_1DDA4B000, v31, OS_LOG_TYPE_DEFAULT, "%s beepVector Size = %{public}lu", buf, 0x16u);
      }

      operator new();
    }

    v23 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v38 = "[CSBeepCanceller init]";
      v39 = 2112;
      v40 = v8;
      _os_log_error_impl(&dword_1DDA4B000, v23, OS_LOG_TYPE_ERROR, "%s Could not read beep file: %@", buf, 0x16u);
    }

    v33 = 0;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

@end