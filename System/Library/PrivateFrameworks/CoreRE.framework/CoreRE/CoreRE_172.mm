uint64_t re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 9);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    v6 = v5;
    if (v5 == *(a1 + 6))
    {
      v7 = *(a1 + 7);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v33, 0, 36);
          *&v33[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::init(v33, v9, v8);
          v11 = *v33;
          *v33 = *a1;
          *a1 = v11;
          v12 = *&v33[16];
          v13 = a1[2];
          *&v33[16] = v13;
          a1[2] = v12;
          v15 = *&v33[24];
          *&v33[24] = *(a1 + 3);
          v14 = *&v33[32];
          *(a1 + 3) = v15;
          ++*&v33[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 32);
            do
            {
              if ((*(v18 - 4) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::allocEntry(a1, v18[2] % *(a1 + 6), v18[2]);
                *(v19 + 4) = *(v18 - 14);
                v20 = v19 + 8;
                *(v19 + 32) = *v18;
                *(v19 + 40) = 0;
                if (v18 - 3 != (v19 + 8))
                {
                  v21 = v19;
                  re::FunctionBase<24ul,void ()(re::GpuTimingData const&)>::destroyCallable(v19 + 8);
                  v22 = v18[1];
                  if (*(v21 + 32) != *v18 || v18 - 3 == v22)
                  {
                    if (v22)
                    {
                      v24 = (*(*v22 + 40))(v22);
                      if (v24 >= 0x19)
                      {
                        v25 = v24;
                        v26 = *(v21 + 32);
                        if (v26)
                        {
                          v20 = (*(*v26 + 32))(v26, v25, 0);
                        }

                        else
                        {
                          v20 = 0;
                        }
                      }

                      *(v21 + 40) = v20;
                      (*(*v18[1] + 32))(v18[1], v20);
                      re::FunctionBase<24ul,void ()(re::GpuTimingData const&)>::destroyCallable((v18 - 3));
                    }
                  }

                  else
                  {
                    *(v21 + 40) = v22;
                    v18[1] = 0;
                  }
                }
              }

              ++v17;
              v18 += 7;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(v33);
        }
      }

      else
      {
        if (v8)
        {
          v29 = 2 * v7;
        }

        else
        {
          v29 = 3;
        }
      }

      a2 = a3 % *(a1 + 6);
      v6 = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    v27 = a1[2];
    v28 = *(v27 + 56 * v5);
  }

  else
  {
    v27 = a1[2];
    v28 = *(v27 + 56 * v5);
    *(a1 + 9) = v28 & 0x7FFFFFFF;
  }

  v30 = v27 + 56 * v5;
  *v30 = v28 | 0x80000000;
  v31 = a1[1];
  *v30 = *(v31 + 4 * a2) | 0x80000000;
  *(v31 + 4 * a2) = v5;
  *(v30 + 48) = a3;
  ++*(a1 + 7);
  return v27 + 56 * v5;
}

void re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = (v7 + 1);
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 56 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_23, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

uint64_t (***re::FunctionBase<24ul,void ()(re::GpuTimingData const&)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

double re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::FunctionBase<24ul,void ()(re::GpuTimingData const&)>::destroyCallable(v6 + v4 + 8);
          v3 = *(a1 + 8);
        }

        v4 += 56;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::FunctionBase<24ul,void ()(re::GpuTimingData const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::GpuTimingData const&)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

BOOL re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 56 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
      v9 = v8;
    }

    else
    {
      *(v6 + 56 * v5) = *(v6 + 56 * v5) & 0x80000000 | v7;
      v8 = v2;
      v9 = v2;
    }

    v10 = (v6 + 56 * v8);
    v11 = *v10;
    if (*v10 < 0)
    {
      *v10 = v11 & 0x7FFFFFFF;
      re::FunctionBase<24ul,void ()(re::GpuTimingData const&)>::destroyCallable((v10 + 2));
      v12 = a2[3];
      v6 = *(a1 + 16);
      v11 = *(v6 + 56 * v12);
      v9 = v12;
    }

    else
    {
      v12 = v9;
    }

    v13 = *(a1 + 40);
    *(v6 + 56 * v12) = *(a1 + 36) | v11 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v13 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

void re::PerfMTLCounterSampler::init(uint64_t a1, id *a2)
{
  if (*(a1 + 32) == 3)
  {
    v3 = re::ObjCObject::operator=((a1 + 24), a2);
    *(a1 + 16) = 0;
    re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::setCapacity((a1 + 40), 1uLL);
    v4 = 0;
    ++*(a1 + 64);
    *(a1 + 32) = 0;
    do
    {
      v5 = re::allSamplePoints(void)::samplePoints[v4];
      if ([*(a1 + 24) supportsCounterSampling:v5])
      {
        *(a1 + 192) |= 1 << v5;
      }

      ++v4;
    }

    while (v4 != 5);
  }

  else
  {
    v6 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_debug_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEBUG, "PerfMTLCounterSampler already initialized", v7, 2u);
    }
  }
}

void re::PerfMTLCounterSampler::createSampleBuffer(id *this)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(this + 36) == 1)
  {
    if (*(this + 8))
    {
      v2 = *re::graphicsLogObjects(this);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v3 = *(this + 8);
        *buf = 67109120;
        *&buf[4] = v3;
        _os_log_error_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_ERROR, "PerfMTLCounterSampler: Could not create sample buffer, wrong state: %i", buf, 8u);
      }
    }

    else
    {
      v4 = 4 * *this;
      v5 = 2 * *(this + 1);
      if (this[20])
      {
        v6 = *(this + 42);
        if (v4 > *(this + 41))
        {
          *(this + 41) = v4;
          v7 = this[12];
          if (v7)
          {
            v8 = this[14];
            v9 = 8 * v7;
            do
            {
              v10 = *v8++;
              re::SampleBufferObjectPool::initializeCounterSampleBuffer((this + 10), v4, v10, 1);
              v9 -= 8;
            }

            while (v9);
          }
        }

        if (v5 > v6)
        {
          *(this + 42) = v5;
          v11 = this[12];
          if (v11)
          {
            v12 = this[14];
            v13 = 8 * v11;
            do
            {
              v14 = *v12++;
              re::SampleBufferObjectPool::initializeCounterSampleBuffer((this + 10), v5, v14, 2);
              v13 -= 8;
            }

            while (v13);
          }
        }
      }

      else
      {
        v15 = this[3];
        v29 = v15;
        if ((this[20] & 1) == 0)
        {
          v16 = re::DynamicArray<float *>::setCapacity(this + 10, 2uLL);
          ++*(this + 26);
          re::DynamicArray<float *>::setCapacity(this + 15, 2uLL);
          ++*(this + 36);
          re::ObjCObject::operator=(this + 22, &v29);
          *(this + 41) = v4;
          re::mtl::Device::getCounterSet(this + 22, 1, buf);
          v17 = this[23];
          v18 = *buf;
          if (v17 == *buf)
          {
          }

          else
          {
            if (v17)
            {
            }

            this[23] = v18;
          }

          v19 = 2;
          do
          {
            v20 = re::globalAllocators(v17);
            v21 = (*(*v20[2] + 32))(v20[2], 32, 8);
            *v21 = 0u;
            v21[1] = 0u;
            *buf = v21;
            re::SampleBufferObjectPool::initializeCounterSampleBuffer((this + 10), v4, v21, 1);
            v17 = re::DynamicArray<re::RigDataValue *>::add((this + 10), buf);
            --v19;
          }

          while (v19);
          *(this + 160) = 1;
          v15 = v29;
        }

        *(this + 42) = v5;
        v22 = this[12];
        if (v22)
        {
          v23 = this[14];
          v24 = 8 * v22;
          do
          {
            v25 = *v23++;
            re::SampleBufferObjectPool::initializeCounterSampleBuffer((this + 10), v5, v25, 2);
            v24 -= 8;
          }

          while (v24);
        }
      }

      *this = 0;
      v26 = this[12];
      if (v26)
      {
        v27 = *(this[14] + v26 - 1);
        *buf = v27;
        this[12] = v26 - 1;
        ++*(this + 26);
        re::DynamicArray<re::RigDataValue *>::add((this + 15), buf);
      }

      else
      {
        v28 = *re::graphicsLogObjects(this);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_ERROR, "PerfMTLCounterSampler: Error could not acquire SampleBufferObject", buf, 2u);
        }

        v27 = 0;
      }

      this[1] = 0;
      this[2] = v27;
      *(this + 8) = 1;
    }
  }
}

void re::PerfMTLCounterSampler::freezeAndReadSamples(uint64_t a1, void **a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 36) == 1)
  {
    *(a1 + 32) = 2;
    v3 = *(a1 + 16);
    if (v3)
    {
      v5 = *(a1 + 8);
      v6 = re::profilerThreadContext(a1);
      v7 = *(v6 + 80);
      if (*(v6 + 72) == v7)
      {
        v8 = -1;
      }

      else
      {
        v8 = *(v7 - 56);
      }

      *&v12 = v3;
      *(&v12 + 1) = v5;
      v10 = re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::DynamicArray(&v13, (a1 + 40));
      v18 = v8;
      v20 = re::globalAllocators(v10)[2];
      v11 = (*(*v20 + 32))(v20, 72, 0);
      *v11 = &unk_1F5D03988;
      *(v11 + 8) = v12;
      *(v11 + 48) = 0;
      *(v11 + 24) = v13;
      *(v11 + 32) = v14;
      *(v11 + 40) = 0;
      *(v11 + 40) = v15;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      *(v11 + 56) = v17;
      v17 = 0;
      ++v16;
      *(v11 + 48) = 1;
      *(v11 + 64) = v18;
      v21 = v11;
      re::mtl::CommandBuffer::addCompletionHandler(a2, v19);
      re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v19);
      re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::deinit(&v13);
    }

    else
    {
      v9 = *re::graphicsLogObjects(a1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v12) = 0;
        _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "PerfMTLCounterSampler: Could not read samples, currentSampleBufferObject null", &v12, 2u);
      }
    }
  }
}

_DWORD *re::PerfMTLCounterSampler::enableSamplingOnRenderPassDescriptor(_DWORD *result, id *a2)
{
  if (*(result + 36) == 1)
  {
    v2 = result;
    ++*result;
    if (result[8] == 1 && (result[2] + 4) <= result[41] && *(result + 2))
    {
      v3 = [objc_msgSend(*a2 sampleBufferAttachments)];
      [v3 setSampleBuffer_];
      ++v2[2];
      [v3 setStartOfVertexSampleIndex_];
      ++v2[2];
      [v3 setEndOfVertexSampleIndex_];
      ++v2[2];
      [v3 setStartOfFragmentSampleIndex_];
      ++v2[2];

      return [v3 setEndOfFragmentSampleIndex_];
    }
  }

  return result;
}

void re::PerfMTLCounterSampler::makeComputeCommandEncoderWithSampling(uint64_t a1@<X0>, id *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  ++*(a1 + 4);
  if (*(a1 + 36) == 1 && *(a1 + 32) == 1 && (*(a1 + 12) + 2) <= *(a1 + 168) && *(a1 + 16))
  {
    v8 = [objc_msgSend(MEMORY[0x1E6974028] alloc)];
    [v8 setDispatchType_];
    v9 = [objc_msgSend(v8 sampleBufferAttachments)];
    [v9 setSampleBuffer_];
    ++*(a1 + 12);
    [v9 setStartOfEncoderSampleIndex_];
    v10 = *(a1 + 12);
    *(a1 + 12) = v10 + 1;
    [v9 setEndOfEncoderSampleIndex_];
  }

  else
  {
    v8 = [objc_msgSend(MEMORY[0x1E6974028] alloc)];
    [v8 setDispatchType_];
  }

  re::mtl::CommandBuffer::makeComputeCommandEncoder(a2, v8, a4);
  if (v8)
  {
  }
}

re *re::PerfMTLCounterSampler::finishSampling(re *this, void **a2)
{
  v6[5] = *MEMORY[0x1E69E9840];
  if (*(this + 36) == 1)
  {
    v3 = this;
    v4 = *(this + 2);
    v5 = re::globalAllocators(this)[2];
    v6[2] = v4;
    v6[3] = v5;
    v6[0] = &unk_1F5D039E0;
    v6[1] = v3;
    v6[4] = v6;
    re::mtl::CommandBuffer::addCompletionHandler(a2, v6);
    this = re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v6);
    *(v3 + 2) = 0;
    *(v3 + 8) = 0;
  }

  return this;
}

void re::SampleBufferObjectPool::initializeCounterSampleBuffer(uint64_t a1, unsigned int a2, uint64_t a3, char a4)
{
  if (a2 && *(a1 + 104))
  {
    v8 = [objc_msgSend(MEMORY[0x1E6974048] alloc)];
    [v8 setStorageMode_];
    [v8 setSampleCount_];
    [v8 setCounterSet_];
    if (a4)
    {
      *(a3 + 20) = a2;
      [v8 setLabel_];
      v10 = v8;
      re::mtl::Device::newCounterSampleBufferWithDescriptor((a1 + 96), &v10, &v11);
      NS::SharedPtr<MTL::Texture>::operator=(a3, &v11);
      if (v11)
      {

        v11 = 0;
      }

      if (v10)
      {

        v10 = 0;
      }
    }

    if ((a4 & 2) != 0)
    {
      *(a3 + 24) = a2;
      [v8 setLabel_];
      v9 = v8;
      re::mtl::Device::newCounterSampleBufferWithDescriptor((a1 + 96), &v9, &v11);
      NS::SharedPtr<MTL::Texture>::operator=((a3 + 8), &v11);
      if (v11)
      {

        v11 = 0;
      }

      if (v9)
      {

        v9 = 0;
      }
    }

    *(a3 + 16) |= 1u;
    if (v8)
    {
    }
  }
}

void re::SampleBufferObjectPool::~SampleBufferObjectPool(re::SampleBufferObjectPool *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(this + 4);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      re::internal::destroyPersistent<re::SampleBufferObject>("~SampleBufferObjectPool", 323, v5);
      v4 -= 8;
    }

    while (v4);
  }

  v6 = *(this + 7);
  if (v6)
  {
    v7 = *(this + 9);
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      re::internal::destroyPersistent<re::SampleBufferObject>("~SampleBufferObjectPool", 326, v9);
      v8 -= 8;
    }

    while (v8);
  }

  v10 = *(this + 13);
  if (v10)
  {

    *(this + 13) = 0;
  }

  re::DynamicArray<unsigned long>::deinit(this + 40);
  re::DynamicArray<unsigned long>::deinit(this);
}

re *re::internal::destroyPersistent<re::SampleBufferObject>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    v5 = *(a3 + 8);
    if (v5)
    {

      *(a3 + 8) = 0;
    }

    if (*a3)
    {

      *a3 = 0;
    }

    v6 = *(*v4 + 40);

    return v6(v4, a3);
  }

  return result;
}

void re::SampleBufferObjectPool::release(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v17 = a2;
  v4 = *(a1 + 72);
  v5 = *(a1 + 56);
  v6 = v4;
  if (v5)
  {
    v7 = 8 * v5;
    v6 = *(a1 + 72);
    while (*v6 != a2)
    {
      v6 += 8;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_15;
      }
    }
  }

  v8 = &v4[8 * v5];
  if (v6 == v8)
  {
LABEL_15:
    v14 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "PerfMTLCounterSampler: Error could not release SampleBufferObject", buf, 2u);
    }
  }

  else
  {
    v9 = v6 - v4;
    v10 = v9 >> 3;
    if (v5 <= v9 >> 3)
    {
      v18 = 0;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      *buf = 0u;
      v15 = MEMORY[0x1E69E9C10];
      v19 = 136315906;
      v20 = "removeAt";
      v21 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      v22 = 931;
      v23 = 2048;
      v24 = v10;
      v25 = 2048;
      v26 = v5;
      _os_log_send_and_compose_impl(v16, &v18, buf, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
      _os_crash_msg();
      __break(1u);
    }

    if (v5 - 1 > v10)
    {
      *&v4[v9] = *(v8 - 1);
    }

    *(a1 + 56) = v5 - 1;
    ++*(a1 + 64);
    v11 = *(a2 + 20);
    v12 = *(a1 + 84);
    if (v11 != v12)
    {
      re::SampleBufferObjectPool::initializeCounterSampleBuffer(a1, v12, a2, 1);
    }

    v13 = *(a1 + 88);
    if (*(a2 + 24) != v13)
    {
      re::SampleBufferObjectPool::initializeCounterSampleBuffer(a1, v13, a2, 2);
    }

    re::DynamicArray<re::RigDataValue *>::add(a1, &v17);
  }
}

void *re::internal::Callable<re::PerfMTLCounterSampler::freezeAndReadSamples(re::mtl::CommandBuffer)::$_0,void ()(re::mtl::CommandBuffer const&)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D03988;
  re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::deinit((a1 + 3));
  return a1;
}

void re::internal::Callable<re::PerfMTLCounterSampler::freezeAndReadSamples(re::mtl::CommandBuffer)::$_0,void ()(re::mtl::CommandBuffer const&)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D03988;
  re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::deinit((a1 + 3));

  JUMPOUT(0x1E6906520);
}

void re::internal::Callable<re::PerfMTLCounterSampler::freezeAndReadSamples(re::mtl::CommandBuffer)::$_0,void ()(re::mtl::CommandBuffer const&)>::operator()(uint64_t a1, id *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = **(a1 + 8);
  if (v4)
  {
    v5 = [objc_msgSend(v4 resolveCounterRange_];
    v7 = *(a1 + 16);
    if (v7 >= 4)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v5 + 16);
      while (v8 < v7)
      {
        v12 = v8 + 1;
        if (v12 >= v7)
        {
          goto LABEL_24;
        }

        v13 = v12 + 1;
        if (v13 >= v7)
        {
          goto LABEL_25;
        }

        v14 = v13 + 1;
        if (v14 >= v7)
        {
          goto LABEL_26;
        }

        v9 = v9 - *(v11 - 2) + *(v11 - 1);
        v15 = *v11;
        v16 = v11[1];
        v11 += 4;
        v10 = v10 - v15 + v16;
        v8 = v14 + 1;
        if (v7 - 3 <= v8)
        {
          goto LABEL_11;
        }
      }

LABEL_23:
      re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, (v7 + 3) & 0xFFFFFFFC, v7);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v30, v35);
      __break(1u);
LABEL_24:
      re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, (v7 + 2) & 0xFFFFFFFC | 1, v7);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v31, v36);
      __break(1u);
LABEL_25:
      re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, (v7 + 1) & 0xFFFFFFFC | 2, v7);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v32, v37);
      __break(1u);
LABEL_26:
      re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v7 | 3, v7);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v33, v38);
      __break(1u);
    }
  }

  v10 = 0;
  v9 = 0;
LABEL_11:
  v17 = *(*(a1 + 8) + 8);
  if (v17)
  {
    v18 = [objc_msgSend(v17 resolveCounterRange_];
    v20 = *(a1 + 20);
    if (v20 >= 1)
    {
      v21 = 0;
      v22 = v18 + 8;
      v23 = 1;
      while (v23 < v20)
      {
        v21 = v21 - *(v22 - 1) + *v22;
        v23 += 2;
        v22 += 2;
        if (v20 <= v23 - 1)
        {
          goto LABEL_18;
        }
      }

      re::internal::assertLog(6, v19, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v20 | 1, v20);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v29, v34);
      __break(1u);
      goto LABEL_23;
    }
  }

  v21 = 0;
LABEL_18:
  v24 = *(a1 + 40);
  if (v24)
  {
    v27 = a1 + 56;
    v25 = *(a1 + 56);
    v26 = *(v27 + 8);
    v28 = 40 * v24;
    do
    {
      v41 = *(v25 + 24);
      v42 = 0;
      re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::operator=<24ul>(v40, v25);
      v39[0] = v9;
      v39[1] = v10;
      v39[2] = v21;
      v39[3] = v26;
      (*(*v42 + 16))(v42, v39);
      re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::destroyCallable(v40);
      v25 += 40;
      v28 -= 40;
    }

    while (v28);
  }
}

uint64_t re::internal::Callable<re::PerfMTLCounterSampler::freezeAndReadSamples(re::mtl::CommandBuffer)::$_0,void ()(re::mtl::CommandBuffer const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D03988;
  *(a2 + 8) = *(a1 + 8);
  re::DynamicArray<re::Function<void ()(re::PerfMTLCounterSamplerResult)>>::DynamicArray(a2 + 24, (a1 + 24));
  *(a2 + 64) = *(a1 + 64);
  return a2;
}

uint64_t re::internal::Callable<re::PerfMTLCounterSampler::freezeAndReadSamples(re::mtl::CommandBuffer)::$_0,void ()(re::mtl::CommandBuffer const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D03988;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  v2 = *(a1 + 32);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = *(a2 + 40);
  *(a2 + 40) = *(a1 + 40);
  *(a1 + 40) = v3;
  v4 = *(a2 + 56);
  v5 = *(a1 + 64);
  *(a2 + 56) = *(a1 + 56);
  *(a1 + 56) = v4;
  ++*(a1 + 48);
  ++*(a2 + 48);
  *(a2 + 64) = v5;
  return a2;
}

void re::internal::Callable<re::PerfMTLCounterSampler::finishSampling(re::mtl::CommandBuffer const&)::$_0,void ()(re::mtl::CommandBuffer const&)>::operator()(uint64_t a1, id *a2)
{
  v3 = *a2;
  re::SampleBufferObjectPool::release(*(a1 + 8) + 80, *(a1 + 16));
}

uint64_t re::internal::Callable<re::PerfMTLCounterSampler::finishSampling(re::mtl::CommandBuffer const&)::$_0,void ()(re::mtl::CommandBuffer const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D039E0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::PerfMTLCounterSampler::finishSampling(re::mtl::CommandBuffer const&)::$_0,void ()(re::mtl::CommandBuffer const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D039E0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::ColorHelpers::getColorGamutFromCGColorSpaceName(const void *a1, char *a2)
{
  if (CFEqual(a1, *MEMORY[0x1E695F1B0]) || CFEqual(a1, *MEMORY[0x1E695F108]) || CFEqual(a1, *MEMORY[0x1E695F110]) || CFEqual(a1, *MEMORY[0x1E695F1C0]))
  {
    v4 = 0;
LABEL_6:
    *a2 = v4;
    return 1;
  }

  if (CFEqual(a1, *MEMORY[0x1E695F0B8]) || CFEqual(a1, *MEMORY[0x1E695F198]) || CFEqual(a1, *MEMORY[0x1E695F0D8]) || CFEqual(a1, *MEMORY[0x1E695F0F0]) || CFEqual(a1, *MEMORY[0x1E695F0C8]))
  {
    v4 = 1;
    goto LABEL_6;
  }

  if (CFEqual(a1, *MEMORY[0x1E695F098]))
  {
    v4 = 2;
    goto LABEL_6;
  }

  if (CFEqual(a1, *MEMORY[0x1E695F150]) || CFEqual(a1, *MEMORY[0x1E695F0E8]) || (result = CFEqual(a1, *MEMORY[0x1E695F100]), result))
  {
    v4 = 3;
    goto LABEL_6;
  }

  return result;
}

uint64_t re::ColorHelpers::getColorGamutFromCGStandardLinearColorSpace(CGColorSpace *a1, char *a2)
{
  Name = CGColorSpaceGetName(a1);
  if (CFEqual(Name, *MEMORY[0x1E695F1B0]) || CFEqual(Name, *MEMORY[0x1E695F108]))
  {
    v4 = 0;
LABEL_4:
    *a2 = v4;
    return 1;
  }

  if (CFEqual(Name, *MEMORY[0x1E695F0F0]))
  {
    v4 = 1;
    goto LABEL_4;
  }

  if (CFEqual(Name, *MEMORY[0x1E695F098]))
  {
    v4 = 2;
    goto LABEL_4;
  }

  result = CFEqual(Name, *MEMORY[0x1E695F100]);
  if (result)
  {
    v4 = 3;
    goto LABEL_4;
  }

  return result;
}

uint64_t re::ColorHelpers::getCGColorSpaceNameForGamut(unint64_t a1, int a2, int a3, int a4)
{
  if (a1 > 2)
  {
    if (a4 == 3)
    {
      if (a3)
      {
        v4 = MEMORY[0x1E695F100];
      }

      else if (a2)
      {
        v4 = MEMORY[0x1E695F168];
      }

      else
      {
        v4 = MEMORY[0x1E695F1A8];
      }

      return *v4;
    }

    if (a4 == 2)
    {
      v4 = MEMORY[0x1E695F098];
      return *v4;
    }

    if (a4 != 1)
    {
      if (a2)
      {
        v4 = MEMORY[0x1E695F1C0];
      }

      else if (a3)
      {
        v4 = MEMORY[0x1E695F108];
      }

      else
      {
        v4 = MEMORY[0x1E695F1B0];
      }

      return *v4;
    }

    if ((a2 & 1) == 0 && (a3 & 1) == 0)
    {
      v4 = MEMORY[0x1E695F198];
      return *v4;
    }

    v4 = MEMORY[0x1E695F0D8];
    if (!a3)
    {
      v4 = MEMORY[0x1E695F0B8];
    }

    v5 = MEMORY[0x1E695F0F0];
    v6 = a2 == 0;
  }

  else
  {
    if (a2)
    {
      v4 = MEMORY[0x1E695F0E0];
      v5 = MEMORY[0x1E695F128];
    }

    else
    {
      v4 = MEMORY[0x1E695F0F8];
      v5 = MEMORY[0x1E695F1A0];
    }

    v6 = a3 == 0;
  }

  if (v6)
  {
    v4 = v5;
  }

  return *v4;
}

uint64_t re::ColorHelpers::getCGColorSpaceNameForPixelFormat(int a1, int a2)
{
  MTLPixelFormatGetInfoForDevice();
  isHDR = re::isHDR(a1);
  return re::ColorHelpers::getCGColorSpaceNameForGamut(0, 0, isHDR, a2);
}

uint64_t re::ColorHelpers::getCGColorSpaceFromWorkingColorGamut(int a1)
{
  {
    v3 = a1;
    a1 = v3;
    if (v2)
    {
      re::ColorHelpers::getCGColorSpaceFromWorkingColorGamut(re::ColorGamut)::g_supportedColorSpaces[0] = CGColorSpaceCreateWithName(*MEMORY[0x1E695F108]);
      qword_1EE1C71A8 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0F0]);
      qword_1EE1C71B0 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F098]);
      qword_1EE1C71B8 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F100]);
      a1 = v3;
    }
  }

  return re::ColorHelpers::getCGColorSpaceFromWorkingColorGamut(re::ColorGamut)::g_supportedColorSpaces[a1];
}

uint64_t re::ColorHelpers::getCGColorSpaceForLDRFromColorGamut(unsigned int a1, int a2)
{
  if (!a2)
  {
    {
      v2 = &re::ColorHelpers::getCGColorSpaceForLDRFromColorGamut(re::ColorGamut,BOOL)::g_supportedLDRColorSpaces;
      return v2[a1];
    }

    v10 = a1;
    v2 = &re::ColorHelpers::getCGColorSpaceForLDRFromColorGamut(re::ColorGamut,BOOL)::g_supportedLDRColorSpaces;
    v9 = &re::ColorHelpers::getCGColorSpaceForLDRFromColorGamut(re::ColorGamut,BOOL)::g_supportedLDRColorSpaces;
    if (v7)
    {
      re::ColorHelpers::getCGColorSpaceForLDRFromColorGamut(re::ColorGamut,BOOL)::g_supportedLDRColorSpaces = CGColorSpaceCreateWithName(*MEMORY[0x1E695F108]);
      v8 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F198]);
      qword_1ECF1C6D0 = 0;
      unk_1ECF1C6D8 = 0;
      qword_1ECF1C6C8 = v8;
      goto LABEL_11;
    }

LABEL_12:
    a1 = v10;
    return v2[a1];
  }

  {
    v10 = a1;
    v2 = &re::ColorHelpers::getCGColorSpaceForLDRFromColorGamut(re::ColorGamut,BOOL)::g_supportedLDRColorSpaces;
    v9 = &re::ColorHelpers::getCGColorSpaceForLDRFromColorGamut(re::ColorGamut,BOOL)::g_supportedLDRColorSpaces;
    if (v4)
    {
      re::ColorHelpers::getCGColorSpaceForLDRFromColorGamut(re::ColorGamut,BOOL)::g_supportedLDRColorSpaces = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
      v5 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
      qword_1ECF1C6A8 = 0;
      unk_1ECF1C6B0 = 0;
      qword_1ECF1C6A0 = v5;
LABEL_11:
      __cxa_guard_release(v6);
      a1 = v10;
      v2 = v9;
      return v2[a1];
    }

    goto LABEL_12;
  }

  v2 = &re::ColorHelpers::getCGColorSpaceForLDRFromColorGamut(re::ColorGamut,BOOL)::g_supportedLDRColorSpaces;
  return v2[a1];
}

uint64_t ___ZN2re12ColorHelpers26getCGColorTransformToGamutENS_10ColorGamutE_block_invoke()
{
  CGColorSpaceFromWorkingColorGamut = re::ColorHelpers::getCGColorSpaceFromWorkingColorGamut(0);
  re::ColorHelpers::getCGColorTransformToGamut(re::ColorGamut)::transforms[0] = MEMORY[0x1E6902490](CGColorSpaceFromWorkingColorGamut, 0);
  v1 = re::ColorHelpers::getCGColorSpaceFromWorkingColorGamut(3);
  qword_1EE1C7500 = MEMORY[0x1E6902490](v1, 0);
  v2 = re::ColorHelpers::getCGColorSpaceFromWorkingColorGamut(1);
  qword_1EE1C74F0 = MEMORY[0x1E6902490](v2, 0);
  v3 = re::ColorHelpers::getCGColorSpaceFromWorkingColorGamut(2);
  result = MEMORY[0x1E6902490](v3, 0);
  qword_1EE1C74F8 = result;
  return result;
}

__n128 re::ColorHelpers::computeGamutTransformMatrix@<Q0>(int a1@<W0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  {
    bzero(re::ColorHelpers::computeGamutTransformMatrix(re::ColorGamut,re::ColorGamut)::transforms, 0x300uLL);
  }

  if (re::ColorHelpers::computeGamutTransformMatrix(re::ColorGamut,re::ColorGamut)::onceToken != -1)
  {
    dispatch_once(&re::ColorHelpers::computeGamutTransformMatrix(re::ColorGamut,re::ColorGamut)::onceToken, &__block_literal_global_27);
  }

  v6 = &re::ColorHelpers::computeGamutTransformMatrix(re::ColorGamut,re::ColorGamut)::transforms[12 * a1 + 3 * a2];
  v7 = v6[1];
  *a3 = *v6;
  *(a3 + 16) = v7;
  result = v6[2];
  *(a3 + 32) = result;
  return result;
}

double ___ZN2re12ColorHelpers27computeGamutTransformMatrixENS_10ColorGamutES1__block_invoke()
{
  *&result = 1065353216;
  re::ColorHelpers::computeGamutTransformMatrix(re::ColorGamut,re::ColorGamut)::transforms[0] = xmmword_1E3047670;
  unk_1EE1C71E0 = xmmword_1E3047680;
  xmmword_1EE1C71F0 = xmmword_1E30476A0;
  unk_1EE1C7200 = xmmword_1E30A1C40;
  xmmword_1EE1C7210 = xmmword_1E30A1C50;
  unk_1EE1C7220 = xmmword_1E30A1C60;
  xmmword_1EE1C7230 = xmmword_1E30A1C70;
  unk_1EE1C7240 = xmmword_1E30A1C80;
  xmmword_1EE1C7250 = xmmword_1E30A1C90;
  unk_1EE1C7260 = xmmword_1E30A1CA0;
  xmmword_1EE1C7270 = xmmword_1E30A1CB0;
  unk_1EE1C7280 = xmmword_1E30A1CC0;
  xmmword_1EE1C7290 = xmmword_1E30A1CD0;
  unk_1EE1C72A0 = xmmword_1E30A1CE0;
  xmmword_1EE1C72B0 = xmmword_1E30A1CF0;
  unk_1EE1C72C0 = xmmword_1E3047670;
  xmmword_1EE1C72D0 = xmmword_1E3047680;
  unk_1EE1C72E0 = xmmword_1E30476A0;
  xmmword_1EE1C72F0 = xmmword_1E30A1D00;
  unk_1EE1C7300 = xmmword_1E30A1D10;
  xmmword_1EE1C7310 = xmmword_1E30A1D20;
  unk_1EE1C7320 = xmmword_1E30A1D30;
  xmmword_1EE1C7330 = xmmword_1E30A1D40;
  unk_1EE1C7340 = xmmword_1E30A1D50;
  xmmword_1EE1C7350 = xmmword_1E30A1D60;
  unk_1EE1C7360 = xmmword_1E30A1D70;
  xmmword_1EE1C7370 = xmmword_1E30A1D80;
  unk_1EE1C7380 = xmmword_1E30A1D90;
  xmmword_1EE1C7390 = xmmword_1E30A1DA0;
  unk_1EE1C73A0 = xmmword_1E30A1DB0;
  xmmword_1EE1C73B0 = xmmword_1E3047670;
  unk_1EE1C73C0 = xmmword_1E3047680;
  xmmword_1EE1C73D0 = xmmword_1E30476A0;
  unk_1EE1C73E0 = xmmword_1E30A1DC0;
  xmmword_1EE1C73F0 = xmmword_1E30A1DD0;
  unk_1EE1C7400 = xmmword_1E30A1DE0;
  xmmword_1EE1C7410 = xmmword_1E30A1DF0;
  unk_1EE1C7420 = xmmword_1E30A1E00;
  xmmword_1EE1C7430 = xmmword_1E30A1E10;
  unk_1EE1C7440 = xmmword_1E30A1E20;
  xmmword_1EE1C7450 = xmmword_1E30A1E30;
  unk_1EE1C7460 = xmmword_1E30A1E40;
  xmmword_1EE1C7470 = xmmword_1E30A1E50;
  unk_1EE1C7480 = xmmword_1E30A1E60;
  xmmword_1EE1C7490 = xmmword_1E30A1E70;
  unk_1EE1C74A0 = xmmword_1E3047670;
  xmmword_1EE1C74B0 = xmmword_1E3047680;
  unk_1EE1C74C0 = xmmword_1E30476A0;
  return result;
}

uint64_t *re::ColorHelpers::getColorGamutFromSerializationLiteral@<X0>(uint64_t *__return_ptr a1@<X8>, re::ColorHelpers *this@<X0>)
{
  result = strcmp(this, "srgb");
  if (result)
  {
    result = strcmp(this, "displayp3");
    if (result)
    {
      result = strcmp(this, "acescg");
      if (result)
      {
        result = strcmp(this, "itur2020");
        if (result)
        {
          *a1 = 0;
          return result;
        }

        v5 = 769;
      }

      else
      {
        v5 = 513;
      }
    }

    else
    {
      v5 = 257;
    }
  }

  else
  {
    v5 = 1;
  }

  *a1 = v5;
  return result;
}

void re::introspect_BlendShapeStorageMode(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B82F8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B8300, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8300))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B83E0, "BlendShapeStorageMode", 1, 1, 1, 1);
      qword_1EE1B83E0 = &unk_1F5D0C658;
      qword_1EE1B8420 = &re::introspect_BlendShapeStorageMode(BOOL)::enumTable;
      dword_1EE1B83F0 = 9;
      __cxa_guard_release(&qword_1EE1B8300);
    }

    if (_MergedGlobals_432)
    {
      break;
    }

    _MergedGlobals_432 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B83E0, a2);
    v35 = 0xB693A90FE7D74D5CLL;
    v36 = "BlendShapeStorageMode";
    v39 = 0x31CD534126;
    v40 = "uint8_t";
    v4 = v38[0];
    v5 = v38[1];
    if (v39)
    {
      if (v39)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B8420;
      v39 = v4;
      v40 = v5;
      re::TypeBuilder::beginEnumType(v38, &v35, 1, 1, &v39);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v37.var0 = 2 * v11;
            v37.var1 = v10;
            re::TypeBuilder::addEnumConstant(v38, v15, &v37);
            if (*&v37.var0)
            {
              if (*&v37.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v37.var0 = 2 * v20;
              v37.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v38, v24, &v37);
              if (*&v37.var0)
              {
                if (*&v37.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v38, v26);
      xmmword_1EE1B8400 = v37;
      if (v35)
      {
        if (v35)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v36);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v34);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1B82F8))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Invalid";
      qword_1EE1B8338 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Sparse";
      qword_1EE1B8340 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "Complete";
      qword_1EE1B8348 = v33;
      __cxa_guard_release(&qword_1EE1B82F8);
    }
  }
}

void *re::allocInfo_BlendShapeDefinition(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B8308, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8308))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B8428, "BlendShapeDefinition");
    __cxa_guard_release(&qword_1EE1B8308);
  }

  return &unk_1EE1B8428;
}

void re::initInfo_BlendShapeDefinition(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v32[0] = 0xE22E282D2A316C6;
  v32[1] = "BlendShapeDefinition";
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  *(this + 2) = v33;
  if ((atomic_load_explicit(&qword_1EE1B8310, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8310))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "name";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1B8370 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "indices";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x1000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B8378 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::FixedArray<float>>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "positionData";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2800000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B8380 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::IntrospectionInfo<re::FixedArray<float>>::get(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "normalData";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x4000000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1B8388 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::IntrospectionInfo<re::FixedArray<float>>::get(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "tangentData";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x5800000005;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1B8390 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::IntrospectionInfo<re::FixedArray<float>>::get(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "bitangentData";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x7000000006;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1B8398 = v30;
    __cxa_guard_release(&qword_1EE1B8310);
  }

  *(this + 2) = 0x8800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1B8370;
  *(this + 9) = re::internal::defaultConstruct<re::BlendShapeDefinition>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendShapeDefinition>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendShapeDefinition>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendShapeDefinition>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v31 = v33;
}

double re::internal::defaultConstruct<re::BlendShapeDefinition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0;
  return result;
}

void re::internal::defaultDestruct<re::BlendShapeDefinition>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::FixedArray<CoreIKTransform>::deinit(a3 + 14);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 11);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 8);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 2);

  re::StringID::destroyString(a3);
}

double re::internal::defaultConstructV2<re::BlendShapeDefinition>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = &str_67;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::BlendShapeDefinition>(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1 + 14);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 8);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 2);

  re::StringID::destroyString(a1);
}

void *re::allocInfo_BlendShapeGroupDefinition(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B8320, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8320))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B84B8, "BlendShapeGroupDefinition");
    __cxa_guard_release(&qword_1EE1B8320);
  }

  return &unk_1EE1B84B8;
}

void re::initInfo_BlendShapeGroupDefinition(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v21[0] = 0x6979C06139805244;
  v21[1] = "BlendShapeGroupDefinition";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE1B8328, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8328))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "blendShapeGroupName";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1B8350 = v10;
    v11 = re::introspectionAllocator();
    re::IntrospectionInfo<re::FixedArray<re::BlendShapeDefinition>>::get(v11);
    v12 = (*(*v11 + 32))(v11, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "blendShapeDefinitions";
    *(v12 + 16) = &qword_1EE1B83A0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x1000000002;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1B8358 = v12;
    v13 = re::introspectionAllocator();
    re::introspect_BlendShapeStorageMode(v13, v14);
    v15 = (*(*v13 + 32))(v13, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "storageMode";
    *(v15 + 16) = &qword_1EE1B83E0;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x2800000003;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1B8360 = v15;
    v16 = re::introspectionAllocator();
    v18 = re::introspect_uint32_t(1, v17);
    v19 = (*(*v16 + 32))(v16, 72, 8);
    *v19 = 1;
    *(v19 + 8) = "verticesPerBlendShape";
    *(v19 + 16) = v18;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x2C00000004;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    qword_1EE1B8368 = v19;
    __cxa_guard_release(&qword_1EE1B8328);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1B8350;
  *(this + 9) = re::internal::defaultConstruct<re::BlendShapeGroupDefinition>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BlendShapeGroupDefinition>;
  *(this + 13) = re::internal::defaultConstructV2<re::BlendShapeGroupDefinition>;
  *(this + 14) = re::internal::defaultDestructV2<re::BlendShapeGroupDefinition>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v20 = v22;
}

void re::IntrospectionInfo<re::FixedArray<re::BlendShapeDefinition>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1B8330, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1B8330);
    if (a1)
    {
      re::IntrospectionFixedArrayBase::IntrospectionFixedArrayBase(&qword_1EE1B83A0);
      qword_1EE1B83A0 = &unk_1F5D03A78;
      __cxa_guard_release(&qword_1EE1B8330);
    }
  }

  if ((byte_1EE1B82F1 & 1) == 0)
  {
    v1 = qword_1EE1B8318;
    if (qword_1EE1B8318 || (v1 = re::allocInfo_BlendShapeDefinition(a1), qword_1EE1B8318 = v1, re::initInfo_BlendShapeDefinition(v1, v2, v3, v4), (byte_1EE1B82F1 & 1) == 0))
    {
      byte_1EE1B82F1 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B83A0, 0);
      *&algn_1EE1B83A8[8] = 0x1800000004;
      *&algn_1EE1B83A8[16] = v5;
      *&algn_1EE1B83A8[20] = 0;
      *&xmmword_1EE1B83C0 = 0;
      *(&xmmword_1EE1B83C0 + 1) = 0xFFFFFFFFLL;
      *algn_1EE1B83D0 = v1;
      *&algn_1EE1B83D0[8] = 0;
      qword_1EE1B83A0 = &unk_1F5D03A78;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE1B83A0);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x18uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE1B83C0 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::BlendShapeGroupDefinition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 44) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  *(a3 + 40) = 0;
}

void re::internal::defaultDestruct<re::BlendShapeGroupDefinition>(uint64_t a1, uint64_t a2, re::StringID *a3)
{
  re::FixedArray<re::BlendShapeDefinition>::deinit(a3 + 2);

  re::StringID::destroyString(a3);
}

uint64_t re::internal::defaultConstructV2<re::BlendShapeGroupDefinition>(uint64_t result)
{
  *result = 0;
  *(result + 8) = &str_67;
  *(result + 44) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::BlendShapeGroupDefinition>(re::StringID *a1)
{
  re::FixedArray<re::BlendShapeDefinition>::deinit(a1 + 2);

  re::StringID::destroyString(a1);
}

void *re::IntrospectionFixedArray<re::BlendShapeDefinition>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<re::BlendShapeDefinition>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<re::BlendShapeDefinition>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

uint64_t re::IntrospectionFixedArray<re::BlendShapeDefinition>::init(uint64_t a1, uint64_t a2, re *a3, int a4, unint64_t a5)
{
  v27 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::BlendShapeDefinition>::init<>(a2, a3, a5);
  if (a5)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(a2 + 8);
      if (v13 <= v12)
      {
        v17 = 0;
        memset(v26, 0, sizeof(v26));
        v14 = MEMORY[0x1E69E9C10];
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v15 = 3;
        }

        else
        {
          v15 = 2;
        }

        v21 = 468;
        v22 = 2048;
        v23 = v12;
        v24 = 2048;
        v25 = v13;
        _os_log_send_and_compose_impl(v15, &v17, v26, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
        _os_crash_msg();
        __break(1u);
      }

      result = re::introspectionInitElement(a3, a4, *(a1 + 48), (*(a2 + 16) + v11));
      ++v12;
      v11 += 136;
    }

    while (a5 != v12);
  }

  return result;
}

unint64_t re::IntrospectionFixedArray<re::BlendShapeDefinition>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 468;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 136 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  if (v4 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 476;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 136 * a3;
}

void *re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

void *re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(void *a1)
{
  re::FixedArray<re::BlendShapeDefinition>::deinit(a1);

  return re::FixedArray<re::BlendShapeDefinition>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(void *a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  re::FixedArray<re::BlendShapeDefinition>::deinit(a1);
  v8 = re::FixedArray<re::BlendShapeDefinition>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
      v11 = 136 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 136;
        v11 -= 136;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 468;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + 136 * a2;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (v1 < v3)
  {
    a1[2] = ++v1;
  }

  if (v3 <= v1)
  {
    return 0;
  }

  else
  {
    return *(v2 + 16) + 136 * v1;
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::BlendShapeDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t re::fetchAllResources(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = 0;
  v29[1] = 0;
  v30 = 0;
  v28 = a1;
  v29[0] = 0;
  v31 = 0;
  v5 = re::DynamicArray<re::RigDataValue *>::add(v29, &v28);
  v6 = v30;
  if (v30)
  {
    while (1)
    {
      v7 = *(v32 + 8 * v6-- - 8);
      v30 = v6;
      ++v31;
      v8 = *(v7 + 18);
      if (v8 == 60)
      {
        if (!a3)
        {
          goto LABEL_34;
        }

        v19 = *v7;
        v20 = *(a3 + 8);
        v21 = *(a3 + 16);
        if (v21 >= v20)
        {
          v22 = v21 + 1;
          if (v20 < v21 + 1)
          {
            if (*a3)
            {
              if (v20)
              {
                v23 = 2 * v20;
              }

              else
              {
                v23 = 8;
              }

              if (v23 <= v22)
              {
                v24 = v21 + 1;
              }

              else
              {
                v24 = v23;
              }

              v5 = re::DynamicArray<float *>::setCapacity(a3, v24);
            }

            else
            {
              v5 = re::DynamicArray<float *>::setCapacity(a3, v22);
              ++*(a3 + 24);
            }
          }

          v21 = *(a3 + 16);
        }

        *(*(a3 + 32) + 8 * v21) = v19;
        ++*(a3 + 16);
        ++*(a3 + 24);
        if (!v6)
        {
          break;
        }
      }

      else
      {
        if (v8 == 58)
        {
          v12 = v7[16];
          v13 = *v7;
          v14 = *(a2 + 8);
          v15 = *(a2 + 16);
          if (v15 >= v14)
          {
            v16 = v15 + 1;
            if (v14 < v15 + 1)
            {
              if (*a2)
              {
                if (v14)
                {
                  v17 = 2 * v14;
                }

                else
                {
                  v17 = 8;
                }

                if (v17 <= v16)
                {
                  v18 = v15 + 1;
                }

                else
                {
                  v18 = v17;
                }

                v5 = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a2, v18);
              }

              else
              {
                v5 = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a2, v16);
                ++*(a2 + 24);
              }
            }

            v15 = *(a2 + 16);
          }

          v25 = *(a2 + 32) + 16 * v15;
          *v25 = v12;
          *(v25 + 8) = v13;
          ++*(a2 + 16);
          ++*(a2 + 24);
          goto LABEL_34;
        }

        if (v8 == 1 && (v9 = *(v7 + 6)) != 0)
        {
          v10 = *(v7 + 7);
          v11 = 80 * v9;
          do
          {
            v28 = v10;
            v5 = re::DynamicArray<re::RigDataValue *>::add(v29, &v28);
            v10 += 80;
            v11 -= 80;
          }

          while (v11);
          v6 = v30;
          if (!v30)
          {
            break;
          }
        }

        else
        {
LABEL_34:
          if (!v6)
          {
            break;
          }
        }
      }
    }
  }

  result = v29[0];
  if (v29[0] && v32)
  {
    v27 = *(*v29[0] + 40);

    return v27();
  }

  return result;
}

_anonymous_namespace_ *re::fillLinkedArgumentsWithReflection@<X0>(_anonymous_namespace_ *result@<X0>, os_unfair_lock_s *a2@<X1>, uint64_t a3@<X8>)
{
  v95 = *MEMORY[0x1E69E9840];
  v4 = *(result + 1);
  if (!v4)
  {
    goto LABEL_74;
  }

  v5 = *(result + 2);
  v74 = v5 + 200 * v4;
  while (1)
  {
    v79 = 0;
    v76[1] = 0;
    v77 = 0;
    v76[0] = 0;
    v78 = 0;
    if (*(v5 + 48))
    {
      v6 = 0uLL;
      *&v81.var0 = 0;
      v82 = 0u;
      v83 = 0u;
      *(&v84 + 1) = 0;
      memset(&v85[16], 0, 32);
      v81.var1 = &str_67;
      DWORD2(v82) = 0;
      LODWORD(v83) = 1;
      *&v84 = &str_67;
      *&v85[36] = 256;
      memset(v85, 0, 29);
      if (!*(v5 + 104))
      {
        goto LABEL_85;
      }

      v7 = *(v5 + 112);
      re::StringID::operator=(v7, &v81);
      *(v7 + 16) = v82;
      v8 = *(&v82 + 1);
      *(v7 + 32) = v83;
      *(v7 + 24) = v8;
      re::StringID::operator=((v7 + 40), &v83 + 1);
      v9 = DWORD2(v84);
      *(v7 + 60) = WORD6(v84);
      *(v7 + 56) = v9;
      re::FixedArray<re::MetalTypeInfo>::operator=((v7 + 64), v85);
      v10 = *&v85[24];
      *(v7 + 94) = *&v85[30];
      *(v7 + 88) = v10;
      *(v7 + 104) = v85[40];
      v11 = re::FixedArray<re::MetalTypeInfo>::deinit(v85);
      if (BYTE8(v83))
      {
        if (BYTE8(v83))
        {
        }
      }

      *(&v83 + 1) = 0;
      *&v84 = &str_67;
      if (*&v81.var0)
      {
        if (*&v81.var0)
        {
        }
      }

      CustomUniformsArgument = re::sg::CachedCompilationMaterial::getCustomUniformsArgument(*(v5 + 48));
      v3 = *(v5 + 104);
      if (v3 > 1)
      {
        v13 = CustomUniformsArgument;
        v3 = *(v5 + 112);
        re::StringID::operator=((v3 + 112), CustomUniformsArgument);
        *(v3 + 128) = *(v13 + 8);
        v14 = v13[3];
        *(v3 + 144) = *(v13 + 8);
        *(v3 + 136) = v14;
        re::StringID::operator=((v3 + 152), v13 + 5);
        v15 = *(v13 + 14);
        *(v3 + 172) = *(v13 + 30);
        *(v3 + 168) = v15;
        re::FixedArray<re::MetalTypeInfo>::operator=((v3 + 176), v13 + 8);
        v16 = v13[11];
        *(v3 + 206) = *(v13 + 94);
        *(v3 + 200) = v16;
        *(v3 + 216) = *(v13 + 104);
        goto LABEL_73;
      }

      goto LABEL_89;
    }

    CachedFunction = re::FunctionReflectionCache::tryGetCachedFunction(a2, (((*(v5 + 40) << 6) - 0x61C8864680B583E9 + (*(v5 + 40) >> 2) + (*(v5 + 24) >> 1)) ^ *(v5 + 40)) - 0x61C8864680B583E9);
    if (!CachedFunction)
    {
      re::DynamicString::format(&v81, "Unable to build provided material function (%s)", v18, *(v5 + 32));
      v59 = 80;
      goto LABEL_77;
    }

    v19 = CachedFunction;
    v20 = [*CachedFunction functionType];
    if (v20 != 5)
    {
      break;
    }

    if (v19[3])
    {
      v3 = 0;
      do
      {
        v22 = v19[5];
        *&v81.var0 = 0;
        v81.var1 = &str_67;
        LOWORD(v82) = 0;
        *(&v82 + 1) = 0;
        LODWORD(v83) = 1;
        *(&v83 + 1) = 0;
        *&v84 = &str_67;
        DWORD2(v84) = 0;
        WORD6(v84) = 0;
        *&v85[32] = 0;
        *&v85[36] = 256;
        memset(v85, 0, 29);
        v85[40] = 0;
        v23 = [objc_msgSend(v22[v3] name)];
        *v93 = 0;
        *&v93[8] = &str_67;
        v25 = *v93;
        v26 = *&v93[8];
        *v93 = 0;
        *&v93[8] = &str_67;
        var0 = v81.var0;
        var1 = v81.var1;
        *&v81.var0 = v25;
        v81.var1 = v26;
        if (var0)
        {
          if (v93[0])
          {
            if (v93[0])
            {
            }
          }
        }

        LOWORD(v82) = v3;
        if ([v22[v3] type] == 28)
        {
          v30 = v22[v3];
          v75 = v30;
          MetalTypeInfoForPointer = re::makeMetalTypeInfoForPointer(&v75, v93);
          *(&v82 + 1) = *v93;
          LODWORD(v83) = *&v93[8];
          v32 = *&v93[16];
          v33 = *&v93[24];
          *&v93[16] = 0;
          *&v93[24] = &str_67;
          v34 = BYTE8(v83);
          v35 = v84;
          *(&v83 + 1) = v32;
          *&v84 = v33;
          if (v34)
          {
          }

          DWORD2(v84) = *&v93[32];
          WORD6(v84) = *&v93[36];
          re::FixedArray<re::MetalTypeInfo>::operator=(v85, &v93[40]);
          *&v85[24] = *&v94[16];
          *&v85[30] = *&v94[22];
          v36 = re::FixedArray<re::MetalTypeInfo>::deinit(&v93[40]);
          if (v93[16])
          {
            if (v93[16])
            {
            }
          }

          *&v93[16] = 0;
          *&v93[24] = &str_67;
          if (v30)
          {

            v75 = 0;
          }

          v85[40] = 1;
        }

        else if ([v22[v3] type] == 29)
        {
          v37 = [objc_msgSend(objc_msgSend(v22[v3] dataTypeDescription)];
          *v93 = 0;
          *&v93[8] = 1;
          *&v93[16] = 0;
          *&v93[24] = &str_67;
          *&v93[32] = 0;
          *&v93[36] = 0;
          *&v94[24] = 0;
          *&v94[28] = 256;
          *v94 = 0;
          *&v94[8] = 0;
          *&v93[40] = 0;
          *&v94[13] = 0;
          *(&v82 + 1) = *v93;
          LODWORD(v83) = *&v93[8];
          v39 = *&v93[16];
          v40 = *&v93[24];
          *&v93[16] = 0;
          *&v93[24] = &str_67;
          v41 = BYTE8(v83);
          v42 = v84;
          *(&v83 + 1) = v39;
          *&v84 = v40;
          if (v41)
          {
          }

          DWORD2(v84) = *&v93[32];
          WORD6(v84) = *&v93[36];
          re::FixedArray<re::MetalTypeInfo>::operator=(v85, &v93[40]);
          *&v85[24] = *&v94[16];
          *&v85[30] = *&v94[22];
          v43 = re::FixedArray<re::MetalTypeInfo>::deinit(&v93[40]);
          if (v93[16])
          {
            if (v93[16])
            {
            }
          }

          WORD6(v84) = 1;
        }

        re::DynamicArray<re::TypedArgument>::add(v76, &v81);
        v20 = re::FixedArray<re::MetalTypeInfo>::deinit(v85);
        if (BYTE8(v83))
        {
          if (BYTE8(v83))
          {
          }
        }

        *(&v83 + 1) = 0;
        *&v84 = &str_67;
        if (*&v81.var0)
        {
          if (*&v81.var0)
          {
          }
        }

        ++v3;
      }

      while (v3 < v19[3]);
    }

    v44 = v77;
    v46 = xmmword_1E3049620;
    v45 = xmmword_1E3049640;
    if (!v77)
    {
      if (!*(v5 + 96))
      {
        goto LABEL_73;
      }

      v57 = 0;
      v58 = v79;
LABEL_71:
      if (*(v5 + 104) == v57)
      {
        std::__copy_impl::operator()[abi:nn200100]<re::TypedArgument const*,re::TypedArgument const*,re::TypedArgument*>(v58, &v58[14 * v57], *(v5 + 112));
        goto LABEL_73;
      }

LABEL_93:
      re::internal::assertLog(4, v21, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
      _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
      __break(1u);
    }

    v3 = 0;
    do
    {
      v47 = v77;
      if (v77 <= v3)
      {
        *v86 = 0;
        v84 = 0u;
        *v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v81 = 0;
        v61 = MEMORY[0x1E69E9C10];
        v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v93 = 136315906;
        *&v93[4] = "operator[]";
        *&v93[12] = 1024;
        if (v62)
        {
          v63 = 3;
        }

        else
        {
          v63 = 2;
        }

        *&v93[14] = 789;
        *&v93[18] = 2048;
        *&v93[20] = v3;
        *&v93[28] = 2048;
        *&v93[30] = v47;
        _os_log_send_and_compose_impl(v63, v86, &v81, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v93, 38, v70, v71);
        _os_crash_msg();
        __break(1u);
LABEL_85:
        v80 = 0;
        *v94 = v6;
        *&v94[16] = v6;
        *&v93[16] = v6;
        *&v93[32] = v6;
        *v93 = v6;
        v64 = MEMORY[0x1E69E9C10];
        v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v86 = 136315906;
        *&v86[4] = "operator[]";
        v87 = 1024;
        if (v65)
        {
          v66 = 3;
        }

        else
        {
          v66 = 2;
        }

        v88 = 468;
        v89 = 2048;
        v90 = 0;
        v91 = 2048;
        v92 = 0;
        _os_log_send_and_compose_impl(v66, &v80, v93, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v86, 38, v70, v71);
        _os_crash_msg();
        __break(1u);
LABEL_89:
        *v86 = 0;
        v84 = 0u;
        *v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v81 = 0;
        v67 = MEMORY[0x1E69E9C10];
        v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v93 = 136315906;
        *&v93[4] = "operator[]";
        *&v93[12] = 1024;
        if (v68)
        {
          v69 = 3;
        }

        else
        {
          v69 = 2;
        }

        *&v93[14] = 468;
        *&v93[18] = 2048;
        *&v93[20] = 1;
        *&v93[28] = 2048;
        *&v93[30] = v3;
        _os_log_send_and_compose_impl(v69, v86, &v81, 80, &dword_1E1C61000, v67, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v93, 38, v70, v71);
        _os_crash_msg();
        __break(1u);
        goto LABEL_93;
      }

      v48 = &v79[14 * v3];
      if (*(v48 + 100) == 1)
      {
        v49 = v48[9];
        if (v49)
        {
          v50 = 0;
          v51 = (80 * v49 - 80) / 0x50uLL;
          v52 = vdupq_n_s64(v51);
          v53 = (v48[10] + 232);
          do
          {
            v54 = vdupq_n_s64(v50);
            v55 = vmovn_s64(vcgeq_u64(v52, vorrq_s8(v54, v46)));
            if (vuzp1_s16(v55, *v52.i8).u8[0])
            {
              *(v53 - 40) = v50;
            }

            if (vuzp1_s16(v55, *&v52).i8[2])
            {
              *(v53 - 20) = v50 + 1;
            }

            if (vuzp1_s16(*&v52, vmovn_s64(vcgeq_u64(v52, vorrq_s8(v54, v45)))).i32[1])
            {
              *v53 = v50 + 2;
              v53[20] = v50 + 3;
            }

            v50 += 4;
            v53 += 80;
          }

          while (((v51 + 4) & 0x7FFFFFFFFFFFFFCLL) != v50);
        }
      }

      if (!*v48[1])
      {
        re::DynamicString::format(&v81, "$%hu", v21, *(v48 + 8));
        re::StringID::StringID(v93, &v81);
        v56 = re::StringID::operator=(v48, v93);
        if (v93[0])
        {
          if (v93[0])
          {
          }
        }

        *v93 = 0;
        *&v93[8] = &str_67;
        v20 = *&v81.var0;
        v46 = xmmword_1E3049620;
        v45 = xmmword_1E3049640;
        if (*&v81.var0 && (v81.var1 & 1) != 0)
        {
          v20 = (*(**&v81.var0 + 40))();
          v46 = xmmword_1E3049620;
          v45 = xmmword_1E3049640;
        }
      }

      ++v3;
    }

    while (v3 != v44);
    v57 = v77;
    v58 = v79;
    if (*(v5 + 96))
    {
      goto LABEL_71;
    }

    if (v77)
    {
      goto LABEL_71;
    }

LABEL_73:
    result = re::DynamicArray<re::TypedArgument>::deinit(v76);
    v5 += 200;
    if (v5 == v74)
    {
LABEL_74:
      *a3 = 0;
      return result;
    }
  }

  re::DynamicString::format(&v81, "Provided material function (%s) is NOT a visible or stitchable function", v21, *(v5 + 32));
  v59 = 60;
LABEL_77:
  re::makeMaterialBuilderErr(v93, v59, &v81);
  *a3 = 1;
  v60 = *v93;
  *v93 = 0;
  *(a3 + 8) = v60;
  if (*&v81.var0 && (v81.var1 & 1) != 0)
  {
    (*(**&v81.var0 + 40))();
  }

  return re::DynamicArray<re::TypedArgument>::deinit(v76);
}

void *re::DynamicArray<re::TypedArgument>::add(_anonymous_namespace_ *this, StringID *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::TypedArgument>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 112 * v4;
  re::StringID::StringID(v5, a2);
  *(v5 + 16) = a2[1].var0;
  var1 = a2[1].var1;
  *(v5 + 32) = a2[2].var0;
  *(v5 + 24) = var1;
  re::StringID::StringID((v5 + 40), (a2 + 40));
  v7 = a2[3].var1;
  *(v5 + 60) = WORD2(a2[3].var1);
  *(v5 + 56) = v7;
  result = re::FixedArray<re::MetalTypeInfo>::FixedArray((v5 + 64), &a2[4]);
  v9 = a2[5].var1;
  *(v5 + 94) = *(&a2[5].var1 + 6);
  *(v5 + 88) = v9;
  *(v5 + 104) = a2[6].var1;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_anonymous_namespace_ *re::collectLinkedArgumentReflection(_anonymous_namespace_ *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = *(result + 1);
  if (v4)
  {
    v5 = a4;
    v6 = *(result + 2);
    v47 = &v6[25 * v4];
    do
    {
      v7 = v6[13];
      v8 = v6[14];
      v49[1] = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      if (v7)
      {
        re::DynamicArray<re::TypedArgument>::setCapacity(v49, v7);
        ++v51;
        if (v50 == -1)
        {
          v53 = 0;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v54 = 0;
          v40 = MEMORY[0x1E69E9C10];
          v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v61 = 136315906;
          *&v61[4] = "copy";
          *&v61[12] = 1024;
          if (v41)
          {
            v42 = 3;
          }

          else
          {
            v42 = 2;
          }

          *&v61[14] = 643;
          *&v61[18] = 2048;
          *&v61[20] = 0;
          *&v61[28] = 2048;
          *&v61[30] = 0;
          _os_log_send_and_compose_impl(v42, &v53, &v54, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v61, 38, v43, a2);
          _os_crash_msg();
          __break(1u);
        }

        if (v50 >= v7)
        {
          std::__copy_impl::operator()[abi:nn200100]<re::TypedArgument const*,re::TypedArgument const*,re::TypedArgument*>(v8, &v8[14 * v7], v52);
        }

        else
        {
          re::DynamicArray<re::TypedArgument>::growCapacity(v49, v7);
          v9 = v50;
          v10 = &v8[14 * v50];
          std::__copy_impl::operator()[abi:nn200100]<re::TypedArgument const*,re::TypedArgument const*,re::TypedArgument*>(v8, v10, v52);
          if (v9 != v7)
          {
            v11 = 0;
            v12 = v52 + 112 * v50;
            v13 = 112 * v7 - 112 * v9;
            do
            {
              v14 = v12 + v11;
              re::StringID::StringID((v12 + v11), &v10[v11 / 8]);
              *(v14 + 16) = v10[v11 / 8 + 2];
              v15 = v10[v11 / 8 + 3];
              *(v14 + 32) = v10[v11 / 8 + 4];
              *(v14 + 24) = v15;
              re::StringID::StringID((v12 + v11 + 40), &v10[v11 / 8 + 5]);
              v16 = v10[v11 / 8 + 7];
              *(v14 + 60) = WORD2(v10[v11 / 8 + 7]);
              *(v14 + 56) = v16;
              re::FixedArray<re::MetalTypeInfo>::FixedArray((v12 + v11 + 64), &v10[v11 / 8 + 8]);
              v17 = v10[v11 / 8 + 11];
              *(v14 + 94) = *(&v10[v11 / 8 + 11] + 6);
              *(v14 + 88) = v17;
              *(v14 + 104) = v10[v11 / 8 + 13];
              v11 += 112;
            }

            while (v13 != v11);
          }

          v50 = v7;
          v5 = a4;
        }
      }

      else
      {
        re::DynamicArray<re::TypedArgument>::setCapacity(v49, 0);
      }

      ++v51;
      if (v6[5] == a3 && re::StringID::operator==(v6 + 3, v6 + 1))
      {
        v18 = *(a2 + 16);
        if (v18)
        {
          v19 = *(a2 + 32);
          v20 = 32 * v18;
          do
          {
            if (re::StringID::operator==(v19, v6 + 1))
            {
              *v61 = 0;
              *&v61[16] = 0;
              *&v61[24] = &str_67;
              *&v61[32] = 0;
              *&v63[16] = 0;
              *&v63[20] = 256;
              v62[1] = 0;
              *v63 = 0;
              v62[0] = 0;
              *&v63[5] = 0;
              *&v61[8] = 16;
              *&v61[36] = 1;
              *&v54.var0 = 0;
              v54.var1 = &str_67;
              LOWORD(v55) = 0;
              *(&v55 + 1) = 0;
              LODWORD(v56) = 1;
              *(&v56 + 1) = 0;
              *&v57 = &str_67;
              DWORD2(v57) = 0;
              WORD6(v57) = 0;
              *&v59[16] = 0;
              *&v59[20] = 256;
              *v59 = 0;
              v58 = 0uLL;
              *&v59[5] = 0;
              v60 = 0;
              re::StringID::operator=(&v54, v19);
              LOWORD(v55) = v19[2];
              *(&v55 + 1) = *v61;
              LODWORD(v56) = *&v61[8];
              re::StringID::operator=(&v56 + 1, &v61[16]);
              DWORD2(v57) = *&v61[32];
              WORD6(v57) = *&v61[36];
              re::FixedArray<re::MetalTypeInfo>::operator=(&v58, v62);
              *&v59[8] = *&v63[8];
              *&v59[14] = *&v63[14];
              re::DynamicArray<re::TypedArgument>::add(v49, &v54);
              v21 = re::FixedArray<re::MetalTypeInfo>::deinit(&v58);
              if (BYTE8(v56))
              {
                if (BYTE8(v56))
                {
                }
              }

              *(&v56 + 1) = 0;
              *&v57 = &str_67;
              if (*&v54.var0)
              {
                if (*&v54.var0)
                {
                }
              }

              v22 = re::FixedArray<re::MetalTypeInfo>::deinit(v62);
              if (v61[16])
              {
                if (v61[16])
                {
                }
              }
            }

            v19 += 4;
            v20 -= 32;
          }

          while (v20);
        }
      }

      re::StringID::StringID(v61, (v6 + 1));
      *&v54.var0 = 0;
      v54.var1 = 0;
      *&v55 = 0;
      v23 = re::HashTable<re::StringID,re::DynamicArray<re::TypedArgument>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v54, v5, v61);
      if (HIDWORD(v54.var1) == 0x7FFFFFFF)
      {
        v23 = re::HashTable<re::StringID,re::DynamicArray<re::TypedArgument>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v5, v54.var1, *&v54.var0);
        *(v23 + 8) = *v61;
        *(v23 + 16) = *&v61[8];
        *(v23 + 24) = 0;
        v24 = (v23 + 24);
        *v61 = 0;
        *&v61[8] = &str_67;
        *(v23 + 56) = 0;
        *(v23 + 32) = 0;
        *(v23 + 40) = 0;
        *(v23 + 48) = 0;
        if (v49[0])
        {
          v25 = v23;
          v26 = v50;
          *(v23 + 24) = v49[0];
          re::DynamicArray<re::TypedArgument>::setCapacity((v23 + 24), v26);
          ++*(v25 + 48);
          v27 = v50;
          v46 = v50;
          if (v50 >= *(v25 + 40))
          {
            re::DynamicArray<re::TypedArgument>::setCapacity(v24, v50);
            v23 = std::__copy_impl::operator()[abi:nn200100]<re::TypedArgument *,re::TypedArgument *,re::TypedArgument *>(&v53, v52, v52 + 112 * *(v25 + 40), *(v25 + 56));
            v31 = *(v25 + 40);
            if (v31 != v27)
            {
              v32 = v52;
              v33 = *(v25 + 56);
              v34 = 112 * v31;
              v35 = 112 * v46;
              do
              {
                v36 = v33 + v34;
                re::StringID::StringID((v33 + v34), (v32 + v34));
                *(v36 + 16) = *(v32 + v34 + 16);
                v37 = *(v32 + v34 + 24);
                *(v36 + 32) = *(v32 + v34 + 32);
                *(v36 + 24) = v37;
                re::StringID::StringID((v33 + v34 + 40), (v32 + v34 + 40));
                v38 = *(v32 + v34 + 56);
                *(v36 + 60) = *(v32 + v34 + 60);
                *(v36 + 56) = v38;
                v23 = re::FixedArray<re::MetalTypeInfo>::FixedArray((v33 + v34 + 64), (v32 + v34 + 64));
                v39 = *(v32 + v34 + 88);
                *(v36 + 94) = *(v32 + v34 + 94);
                *(v36 + 88) = v39;
                *(v36 + 104) = *(v32 + v34 + 104);
                v35 -= 112;
                v32 += 112;
                v33 += 112;
              }

              while (v34 != v35);
            }
          }

          else
          {
            v23 = std::__copy_impl::operator()[abi:nn200100]<re::TypedArgument *,re::TypedArgument *,re::TypedArgument *>(&v53, v52, v52 + 112 * v50, *(v25 + 56));
            v28 = *(v25 + 40);
            if (v27 != v28)
            {
              v29 = (*(v25 + 56) + 112 * v46);
              v30 = -112 * v46 + 112 * v28;
              do
              {
                re::FixedArray<re::MetalTypeInfo>::deinit(v29 + 8);
                re::StringID::destroyString((v29 + 5));
                re::StringID::destroyString(v29);
                v29 += 14;
                v30 -= 112;
              }

              while (v30);
            }
          }

          v5 = a4;
          *(v25 + 40) = v46;
        }

        ++*(v5 + 40);
      }

      if (v61[0])
      {
        if (v61[0])
        {
        }
      }

      result = re::DynamicArray<re::TypedArgument>::deinit(v49);
      v6 += 25;
    }

    while (v6 != v47);
  }

  return result;
}

uint64_t re::validateMaterialFunctionReflection@<X0>(id *this@<X1>, uint64_t a2@<X0>, int a3@<W2>, const char *a4@<X3>, const char *a5@<X4>, const char *a6@<X5>, uint64_t a7@<X8>)
{
  result = re::mtl::Device::needsArgumentBufferTextureEmulation(this);
  v14 = *(a2 + 8);
  if (v14)
  {
    v15 = result;
    v16 = *(a2 + 16);
    v17 = 200 * v14;
    while (1)
    {
      if (*v16 == a3 && !v16[6])
      {
        v18 = v16[13];
        if (!v18)
        {
          goto LABEL_20;
        }

        if (v18 >= 3)
        {
          re::DynamicString::format(&v24, "Provided material function (%s) has too many arguments", v13, v16[4]);
          goto LABEL_25;
        }

        v19 = v16[14];
        v20 = *(v19 + 48);
        if (*(v19 + 60) != 1 || (result = strcmp(*(v19 + 48), a4), result) && (result = strcmp(v20, a5), result) && (result = strcmp(v20, a6), result))
        {
          re::DynamicString::format(&v24, "Provided material function (%s) has invalid first argument type: %s. Should be %s.", v13, v16[4], v20, a4);
          goto LABEL_25;
        }

        if (v18 != 1)
        {
          if (!*(v19 + 216) || *(v19 + 172) != 1)
          {
            re::DynamicString::format(&v24, "Provided material function (%s) has invalid second argument type: %s. The custom uniforms argument should be a pointer to a user defined constant or argument buffer structure.", v13, v16[4], v20);
            goto LABEL_25;
          }

          if (v15)
          {
            v28 = 0;
            v25 = 0;
            v26 = 0;
            v24 = 0;
            v27 = 0;
            re::fetchAllResources(v19 + 136, &v24, 0);
            v21 = v26;
            result = v24;
            if (v24)
            {
              v13 = v28;
              if (v28)
              {
                result = (*(*v24 + 40))();
              }
            }

            if (v21)
            {
              break;
            }
          }
        }
      }

      v16 += 25;
      v17 -= 200;
      if (!v17)
      {
        goto LABEL_20;
      }
    }

    re::DynamicString::format(&v24, "Provided material function (%s) contains textures in its second argument. This feature requires support for tier 2 argument buffers, which the current device does not have.", v13, v16[4]);
LABEL_25:
    re::makeMaterialBuilderErr(&v29, 0x50, &v24);
    result = v24;
    *a7 = 1;
    v22 = v29;
    v29 = 0;
    *(a7 + 8) = v22;
    if (result)
    {
      if (v25)
      {
        return (*(*result + 40))(result, v26);
      }
    }
  }

  else
  {
LABEL_20:
    *a7 = 0;
  }

  return result;
}

void re::forwardLinkedArguments(id *this@<X6>, uint64_t a2@<X0>, uint64_t a3@<X1>, _anonymous_namespace_ *a4@<X2>, _anonymous_namespace_ *a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, unsigned int a8@<W7>, uint64_t a9@<X8>)
{
  v95 = *MEMORY[0x1E69E9840];
  v12 = re::mtl::Device::needsArgumentBufferTextureEmulation(this);
  v53 = *(a3 + 16);
  if (!v53)
  {
    goto LABEL_63;
  }

  v13 = a3;
  v14 = v12;
  v15 = 0;
  v52 = a3;
  v54 = a2;
  while (1)
  {
    v16 = *(v13 + 16);
    if (v16 <= v15)
    {
      v74[0] = 0;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0;
      v48 = MEMORY[0x1E69E9C10];
      v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v88 = 136315906;
      *&v88[4] = "operator[]";
      v89 = 1024;
      if (v49)
      {
        v50 = 3;
      }

      else
      {
        v50 = 2;
      }

      v90 = 789;
      v91 = 2048;
      v92 = v15;
      v93 = 2048;
      v94 = v16;
      _os_log_send_and_compose_impl(v50, v74, &v80, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v88, 38, v51, v52);
      _os_crash_msg();
      __break(1u);
    }

    v17 = *(v13 + 32) + 32 * v15;
    re::StringID::StringID(&v76, v17);
    v18 = *(v17 + 16);
    v79 = *(v17 + 24);
    v78 = v18;
    v19 = re::HashTable<re::StringID,re::DynamicArray<re::TypedArgument>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v80, v54, &v76);
    if (HIDWORD(v80.var1) == 0x7FFFFFFF)
    {
      break;
    }

    v21 = *(v54 + 16) + (HIDWORD(v80.var1) << 6);
    v22 = *(v21 + 40);
    if (!v22)
    {
      goto LABEL_64;
    }

    v55 = v15;
    v62 = 0;
    v23 = *(v21 + 56);
    v24 = v23 + 112 * v22;
    v63 = v24;
    do
    {
      if (v78 != *(v23 + 16))
      {
        goto LABEL_57;
      }

      re::StringID::StringID(&v80, v23);
      LOWORD(v81) = *(v23 + 16);
      v25 = *(v23 + 32);
      *(&v81 + 1) = *(v23 + 24);
      LODWORD(v82) = v25;
      re::StringID::StringID((&v82 + 8), (v23 + 40));
      v26 = *(v23 + 56);
      WORD6(v83) = *(v23 + 60);
      DWORD2(v83) = v26;
      re::FixedArray<re::MetalTypeInfo>::FixedArray(&v84, (v23 + 64));
      v27 = *(v23 + 88);
      *&v86[6] = *(v23 + 94);
      *v86 = v27;
      v87 = *(v23 + 104);
      LOWORD(v81) = v79;
      if (*(&v84 + 1))
      {
        v28 = (v85 + 32);
        v29 = 80 * *(&v84 + 1);
        do
        {
          v30 = strlen(v80.var1);
          v69[0] = v80.var1;
          v69[1] = v30;
          v71 = 0;
          v72 = 0;
          v73 = 0;
          if (v30)
          {
            v31 = v30 + 1;
          }

          else
          {
            v31 = 0;
          }

          re::DynamicString::setCapacity(&v70, v31);
          re::DynamicString::operator=(&v70, v69);
          re::DynamicString::operator+(v74, &v70, ".");
          v32 = strlen(*(v28 - 1));
          v64[0] = *(v28 - 1);
          v64[1] = v32;
          v66 = 0;
          v67 = 0;
          v68 = 0;
          if (v32)
          {
            v33 = v32 + 1;
          }

          else
          {
            v33 = 0;
          }

          re::DynamicString::setCapacity(&v65, v33);
          re::DynamicString::operator=(&v65, v64);
          re::DynamicString::operator+(v88, v74, &v65);
          if (v65 && (v66 & 1) != 0)
          {
            (*(*v65 + 40))();
          }

          if (v74[0])
          {
            if (v74[1])
            {
              (*(*v74[0] + 40))();
            }

            *v74 = 0u;
            v75 = 0u;
          }

          if (v70 && (v71 & 1) != 0)
          {
            (*(*v70 + 40))();
          }

          re::StringID::StringID(v74, v88);
          v34 = re::StringID::operator=((v28 - 4), v74);
          if (v74[0])
          {
            if (v74[0])
            {
            }
          }

          if (v14 && *(v28 + 2) == 58)
          {
            v35 = *(a7 + 16);
            if (v35 >= *(a7 + 8))
            {
              re::DynamicArray<re::MetalTypeInfo>::growCapacity(a7, v35 + 1);
              v35 = *(a7 + 16);
            }

            v36 = *(a7 + 32) + 80 * v35;
            v37 = *(v28 - 4);
            *(v36 + 8) = *(v28 - 6);
            *v36 = v37;
            re::StringID::StringID((v36 + 16), v28 - 1);
            v38 = *v28;
            *(v36 + 36) = *(v28 + 2);
            *(v36 + 32) = v38;
            re::FixedArray<re::MetalTypeInfo>::FixedArray((v36 + 40), v28 + 1);
            v39 = *(v28 + 4);
            *(v36 + 70) = *(v28 + 38);
            *(v36 + 64) = v39;
            ++*(a7 + 16);
            ++*(a7 + 24);
          }

          if (*v88 && (v88[8] & 1) != 0)
          {
            (*(**v88 + 40))();
          }

          v28 += 20;
          v29 -= 80;
        }

        while (v29);
      }

      if ((v86[12] & 1) == 0)
      {
        re::DynamicArray<re::TypedArgument>::add(a4, &v80);
LABEL_45:
        v62 = 1;
        v44 = 1;
        goto LABEL_50;
      }

      re::DynamicArray<re::TypedArgument>::add(a5, &v80);
      ArgumentEncoderForBindlessArgument = re::createArgumentEncoderForBindlessArgument(v74, &v80, this, a8);
      if (LOBYTE(v74[0]) == 1)
      {
        v41 = *(a6 + 16);
        if (v41 >= *(a6 + 8))
        {
          re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::growCapacity(a6, v41 + 1);
          v41 = *(a6 + 16);
        }

        v42 = *(a6 + 32);
        v43 = v74[1];
        *(v42 + 8 * v41) = v74[1];
        ++*(a6 + 16);
        ++*(a6 + 24);
        if (v43)
        {
        }

        goto LABEL_45;
      }

      re::makeMaterialBuilderErr(&v70, 0xA, v88);
      *a9 = 1;
      v45 = v70;
      v70 = 0;
      *(a9 + 8) = v45;
      if (*v88 && (v88[8] & 1) != 0)
      {
        (*(**v88 + 40))();
      }

      v44 = 0;
LABEL_50:
      v24 = v63;
      v19 = re::FixedArray<re::MetalTypeInfo>::deinit(&v84);
      if (BYTE8(v82))
      {
        if (BYTE8(v82))
        {
        }
      }

      *(&v82 + 1) = 0;
      *&v83 = &str_67;
      if (*&v80.var0)
      {
        if (*&v80.var0)
        {
        }
      }

      if (!v44)
      {
        goto LABEL_69;
      }

LABEL_57:
      v23 += 112;
    }

    while (v23 != v24);
    if ((v62 & 1) == 0)
    {
LABEL_64:
      re::DynamicString::format(&v80, "Failed to resolve forwarded buffer at binding index %u. Unable to find argument at index %zu of type source function %s", v20, v79, v78, v77);
      v46 = 30;
      goto LABEL_66;
    }

    if (v76)
    {
      if (v76)
      {
      }
    }

    v15 = v55 + 1;
    v13 = a3;
    if (v55 + 1 == v53)
    {
LABEL_63:
      *a9 = 0;
      return;
    }
  }

  re::DynamicString::format(&v80, "Failed to resolve forwarded buffer at binding index %u. Unable to find type source function %s", v20, v79, v77);
  v46 = 20;
LABEL_66:
  re::makeMaterialBuilderErr(v88, v46, &v80);
  *a9 = 1;
  v47 = *v88;
  *v88 = 0;
  *(a9 + 8) = v47;
  v19 = *&v80.var0;
  if (*&v80.var0 && (v80.var1 & 1) != 0)
  {
    v19 = (*(**&v80.var0 + 40))();
  }

LABEL_69:
  if (v76)
  {
    if (v76)
    {
    }
  }
}

uint64_t re::completeLinkedFunctions(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v4 = result;
  v60 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  v5 = *(result + 8);
  if (v5)
  {
    v6 = *(result + 16);
    v7 = v6 + 200 * v5;
    v8 = v6 + 160;
    do
    {
      v10 = v8 - 160;
      v9 = *(v8 - 160);
      result = *(v8 - 112);
      v12 = v9 == 1 || v9 == 3;
      if (!result)
      {
        v12 = 0;
      }

      if (v9 == 3 || v12)
      {
        if ((*(v8 - 104) & 0x10) != 0)
        {
          re::StringID::destroyString((v8 - 152));
          result = re::internal::compileTimeHornerHash<15ul>(31, "geometryModifierUIWithCustomParams", 0, 0, 34);
          *(v8 - 152) = 2 * result;
          *(v8 - 144) = "geometryModifierUIWithCustomParams";
        }

        else
        {
          if (v12)
          {
            re::sg::CachedCompilationMaterial::getMaterial(&v44, result);
            v14 = [v44 hasGeometryModifierUniforms];
          }

          else
          {
            v14 = *(v8 - 56) == 2;
          }

          v44 = 0u;
          v45 = 0u;
          re::DynamicString::setCapacity(&v44, 0);
          *(&v46[6] + 4) = 0u;
          *(&v46[4] + 4) = 0u;
          *(&v46[2] + 4) = 0u;
          *(v46 + 4) = 0u;
          *&v55 = "EnableGeometryModifierWithCustomParams";
          *(&v55 + 1) = 38;
          re::DynamicString::operator=(&v44, &v55);
          *(&v46[6] + 4) = 0u;
          *(&v46[4] + 4) = 0u;
          *(&v46[2] + 4) = 0u;
          *(v46 + 4) = 0u;
          BYTE4(v46[0]) = v14;
          LODWORD(v46[0]) = 5177397;
          re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a2, &v44, &v44);
          re::StringID::destroyString((v8 - 152));
          if (v14)
          {
            *(v8 - 152) = 2 * re::internal::compileTimeHornerHash<15ul>(31, "geometryModifierWithCustomParams", 0, 0, 32);
            *(v8 - 144) = "geometryModifierWithCustomParams";
            v15 = *(v8 - 56);
            if (v15 <= 1)
            {
              goto LABEL_67;
            }

            re::fetchAllResources(*(v8 - 48) + 136, v8 - 40, v8);
          }

          else
          {
            *(v8 - 152) = 2 * re::internal::compileTimeHornerHash<15ul>(31, "geometryModifier", 0, 0, 16);
            *(v8 - 144) = "geometryModifier";
          }

          result = v44;
          if (v44 && (BYTE8(v44) & 1) != 0)
          {
            result = (*(*v44 + 40))();
          }
        }
      }

      v8 += 200;
    }

    while (v10 + 200 != v7);
  }

  v16 = *(v4 + 32);
  if (v16)
  {
    v17 = 0;
    v15 = &v44;
    v18 = 200 * v16;
    v19 = *(v4 + 40);
    do
    {
      v20 = v19 + v17;
      v21 = *(v19 + v17);
      result = *(v19 + v17 + 48);
      if (result)
      {
        if (v21 != 4 && v21 != 2)
        {
          goto LABEL_61;
        }

        re::sg::CachedCompilationMaterial::getMaterial(&v44, result);
        v23 = [v44 hasConnectedLightSpillNodes];

        if (v23)
        {
          v44 = 0u;
          v45 = 0u;
          re::DynamicString::setCapacity(&v44, 0);
          *(&v46[6] + 4) = 0u;
          *(&v46[4] + 4) = 0u;
          *(&v46[2] + 4) = 0u;
          *(v46 + 4) = 0u;
          *&v55 = "EnableSurfaceShaderVideo";
          *(&v55 + 1) = 24;
          re::DynamicString::operator=(&v44, &v55);
          memset(&v46[1], 0, 60);
          v46[0] = 0x100750035;
          v25 = re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a2, &v44, &v44);
          if (v44)
          {
            if (BYTE8(v44))
            {
              (*(*v44 + 40))(v25);
            }
          }
        }

        re::sg::CachedCompilationMaterial::getMaterial(&v44, *(v20 + 48));
        v26 = [v44 hasPremultipliedAlpha];

        if (v26)
        {
          v44 = 0u;
          v45 = 0u;
          re::DynamicString::setCapacity(&v44, 0);
          *(&v46[6] + 4) = 0u;
          *(&v46[4] + 4) = 0u;
          *(&v46[2] + 4) = 0u;
          *(v46 + 4) = 0u;
          *&v55 = "EnableSurfaceShaderPremultipliedOutput";
          *(&v55 + 1) = 38;
          re::DynamicString::operator=(&v44, &v55);
          memset(&v46[1], 0, 60);
          v46[0] = 0x100540035;
          v28 = re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a2, &v44, &v44);
          if (v44)
          {
            if (BYTE8(v44))
            {
              (*(*v44 + 40))(v28);
            }
          }
        }

        re::sg::CachedCompilationMaterial::getMaterial(&v44, *(v20 + 48));
        v29 = [v44 matchUnlitColor];

        if (v29)
        {
          v44 = 0u;
          v45 = 0u;
          re::DynamicString::setCapacity(&v44, 0);
          *(&v46[6] + 4) = 0u;
          *(&v46[4] + 4) = 0u;
          *(&v46[2] + 4) = 0u;
          *(v46 + 4) = 0u;
          *&v55 = "MatchUnlitColor";
          *(&v55 + 1) = 15;
          re::DynamicString::operator=(&v44, &v55);
          memset(&v46[1], 0, 60);
          v46[0] = 0x1006C0035;
          v31 = re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a2, &v44, &v44);
          if (v44)
          {
            if (BYTE8(v44))
            {
              (*(*v44 + 40))(v31);
            }
          }
        }

        if ((*(v19 + v17 + 56) & 0x20) != 0)
        {
LABEL_56:
          v35 = v19 + v17;
          re::StringID::destroyString((v19 + v17 + 8));
          result = re::internal::compileTimeHornerHash<15ul>(31, "surfaceShaderUIWithCustomParams", 0, 0, 31);
          *(v35 + 8) = 2 * result;
          *(v35 + 16) = "surfaceShaderUIWithCustomParams";
          goto LABEL_61;
        }

        re::sg::CachedCompilationMaterial::getMaterial(&v44, *(v20 + 48));
        v32 = [v44 hasSurfaceShaderUniforms];
      }

      else
      {
        if (v21 != 4)
        {
          goto LABEL_61;
        }

        if ((*(v19 + v17 + 56) & 0x20) != 0)
        {
          goto LABEL_56;
        }

        v32 = *(v19 + v17 + 104) == 2;
      }

      v44 = 0u;
      v45 = 0u;
      re::DynamicString::setCapacity(&v44, 0);
      *(&v46[6] + 4) = 0u;
      *(&v46[4] + 4) = 0u;
      *(&v46[2] + 4) = 0u;
      *(v46 + 4) = 0u;
      *&v55 = "EnableSurfaceShaderWithCustomParams";
      *(&v55 + 1) = 35;
      re::DynamicString::operator=(&v44, &v55);
      *(&v46[6] + 4) = 0u;
      *(&v46[4] + 4) = 0u;
      *(&v46[2] + 4) = 0u;
      *(v46 + 4) = 0u;
      BYTE4(v46[0]) = v32;
      LODWORD(v46[0]) = 5111861;
      re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a2, &v44, &v44);
      v33 = (v19 + v17);
      re::StringID::destroyString((v19 + v17 + 8));
      if (v32)
      {
        v33[1] = 2 * re::internal::compileTimeHornerHash<15ul>(31, "surfaceShaderWithCustomParams", 0, 0, 29);
        v33[2] = "surfaceShaderWithCustomParams";
        v34 = v33[13];
        if (v34 <= 1)
        {
          v43 = 0;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v55 = 0u;
          v36 = MEMORY[0x1E69E9C10];
          v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v47 = 136315906;
          v48 = "operator[]";
          v49 = 1024;
          if (v37)
          {
            v38 = 3;
          }

          else
          {
            v38 = 2;
          }

          v50 = 468;
          v51 = 2048;
          v52 = 1;
          v53 = 2048;
          v54 = v34;
          _os_log_send_and_compose_impl(v38, &v43, &v55, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v42);
          _os_crash_msg();
          __break(1u);
LABEL_67:
          v43 = 0;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v55 = 0u;
          v39 = MEMORY[0x1E69E9C10];
          v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v47 = 136315906;
          v48 = "operator[]";
          v49 = 1024;
          if (v40)
          {
            v41 = 3;
          }

          else
          {
            v41 = 2;
          }

          v50 = 468;
          v51 = 2048;
          v52 = 1;
          v53 = 2048;
          v54 = v15;
          _os_log_send_and_compose_impl(v41, &v43, &v55, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v42);
          _os_crash_msg();
          __break(1u);
        }

        re::fetchAllResources(*(v19 + v17 + 112) + 136, v19 + v17 + 120, v19 + v17 + 160);
      }

      else
      {
        v33[1] = 2 * re::internal::compileTimeHornerHash<15ul>(31, "surfaceShader", 0, 0, 13);
        v33[2] = "surfaceShader";
      }

      result = v44;
      if (v44)
      {
        if (BYTE8(v44))
        {
          result = (*(*v44 + 40))();
        }
      }

LABEL_61:
      v17 += 200;
    }

    while (v18 != v17);
  }

  return result;
}

uint64_t re::fillTablesWithLinkedFunctionParameterDefaults(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v76 = *MEMORY[0x1E69E9840];
  v3 = *(result + 8);
  if (v3)
  {
    v4 = a3;
    v6 = *(result + 16);
    v7 = &v6[200 * v3];
    do
    {
      if (*v6 - 3 <= 1 && *(v6 + 13) >= 2uLL)
      {
        v8 = *(v6 + 14);
        v9 = v8[23];
        if (v9)
        {
          v10 = v8[24];
          v11 = v10 + 80 * v9;
          do
          {
            if (*(v10 + 77) == 1)
            {
              re::DynamicString::format(&v69, "%s.%s", a2, v8[15], *(v10 + 24));
              if (v70)
              {
                v12 = v72;
              }

              else
              {
                v12 = v71;
              }

              if (v12)
              {
                v13 = *v12;
                if (v13)
                {
                  if (v70)
                  {
                    v14 = v72 + 1;
                  }

                  else
                  {
                    v14 = &v71[1];
                  }

                  v15 = *v14;
                  if (*v14)
                  {
                    v16 = v14 + 1;
                    do
                    {
                      v13 = 31 * v13 + v15;
                      v17 = *v16++;
                      v15 = v17;
                    }

                    while (v17);
                  }

                  v13 &= ~0x8000000000000000;
                }
              }

              else
              {
                v13 = 0x7FFFFFFFFFFFFFFFLL;
              }

              v68 = v13;
              v18 = *(v10 + 36);
              if (v18 > 0x34)
              {
                switch(v18)
                {
                  case '5':
                    v54 = v13;
                    LOBYTE(v73) = 0;
                    *buf = v13;
                    v43 = re::ShaderParameterTable::containsConstantKey(a2, buf);
                    *buf = 0;
                    if (!v43)
                    {
                      *&v55 = &v73;
                      *(&v55 + 1) = 1;
                      re::ConstantTable::setConstant((a2 + 128), &v54, &v55, 2);
                    }

                    v54 = 0;
                    break;
                  case '<':
                    v66 = v13;
                    v40 = re::ShaderParameterTable::containsBufferKey(a2, &v66);
                    v66 = 0;
                    if (!v40)
                    {
                      v41 = re::StringID::invalid(&v55);
                      if (v55)
                      {
                        if (v55)
                        {
                        }
                      }

                      v42 = re::StringID::invalid(&v55);
                      if (v55)
                      {
                        if (v55)
                        {
                        }
                      }
                    }

                    break;
                  case ':':
                    v67 = v13;
                    v20 = re::TextureParameterTable::containsTextureKey(v4, &v67);
                    v67 = 0;
                    if (!v20)
                    {
                      v21 = *(v10 + 64);
                      v22 = v68;
                      v23 = re::StringID::invalid(buf);
                      if (buf[0])
                      {
                        if (buf[0])
                        {
                        }
                      }

                      v24 = re::StringID::invalid(buf);
                      if (buf[0])
                      {
                        if (buf[0])
                        {
                        }
                      }

                      if (v21 < 0xA && ((0x2EFu >> v21) & 1) != 0)
                      {
                        v25 = qword_1E30A1EC0[v21];
                        LOBYTE(v55) = 1;
                        DWORD2(v55) = 1;
                        *&v56 = v22;
                        BYTE8(v56) = 0;
                        *&v57 = v25;
                        if (re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a3, &v68) == -1)
                        {
                          re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::internalAdd(a3, &v68, &v55 + 8);
                        }
                      }

                      else
                      {
                        v44 = *re::graphicsLogObjects(v24);
                        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 67109120;
                          *&buf[4] = v21;
                          _os_log_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_DEFAULT, "Texture type %u not supported", buf, 8u);
                        }
                      }

                      v4 = a3;
                    }

                    break;
                }
              }

              else
              {
                switch(*(v10 + 36))
                {
                  case 3:
                    v65 = v13;
                    LODWORD(v73) = 0;
                    *buf = v13;
                    v19 = re::ShaderParameterTable::containsConstantKey(a2, buf);
                    *buf = 0;
                    if (!v19)
                    {
                      *&v55 = &v73;
                      *(&v55 + 1) = 4;
                      re::ConstantTable::setConstant((a2 + 128), &v65, &v55, 1);
                    }

                    v65 = 0;
                    break;
                  case 4:
                    v64 = v13;
                    v73 = v13;
                    *buf = 0;
                    v35 = re::ShaderParameterTable::containsConstantKey(a2, &v73);
                    v73 = 0;
                    if (!v35)
                    {
                      *&v55 = buf;
                      *(&v55 + 1) = 8;
                      re::ConstantTable::setConstant((a2 + 128), &v64, &v55, 32);
                    }

                    v64 = 0;
                    break;
                  case 5:
                    v63 = v13;
                    v55 = 0uLL;
                    v73 = v13;
                    v33 = re::ShaderParameterTable::containsConstantKey(a2, &v73);
                    v73 = 0;
                    if (!v33)
                    {
                      *buf = &v55;
                      v75 = 16;
                      re::ConstantTable::setConstant((a2 + 128), &v63, buf, 33);
                    }

                    v63 = 0;
                    break;
                  case 6:
                    v62 = v13;
                    v55 = 0uLL;
                    v73 = v13;
                    v37 = re::ShaderParameterTable::containsConstantKey(a2, &v73);
                    v73 = 0;
                    if (!v37)
                    {
                      *buf = &v55;
                      v75 = 16;
                      re::ConstantTable::setConstant((a2 + 128), &v62, buf, 34);
                    }

                    v62 = 0;
                    break;
                  case 7:
                    v61 = v13;
                    v55 = xmmword_1E3060D30;
                    v73 = v13;
                    v34 = re::ShaderParameterTable::containsConstantKey(a2, &v73);
                    v73 = 0;
                    if (!v34)
                    {
                      *buf = &v55;
                      v75 = 16;
                      re::ConstantTable::setConstant((a2 + 128), &v61, buf, 48);
                    }

                    v61 = 0;
                    break;
                  case 0xB:
                    v60 = v13;
                    v55 = xmmword_1E3047670;
                    v56 = xmmword_1E3047680;
                    v57 = xmmword_1E30476A0;
                    v73 = v13;
                    v32 = re::ShaderParameterTable::containsConstantKey(a2, &v73);
                    v73 = 0;
                    if (!v32)
                    {
                      *buf = &v55;
                      v75 = 48;
                      re::ConstantTable::setConstant((a2 + 128), &v60, buf, 49);
                    }

                    v60 = 0;
                    break;
                  case 0xF:
                    v59 = v13;
                    v55 = xmmword_1E3047670;
                    v56 = xmmword_1E3047680;
                    v57 = xmmword_1E30476A0;
                    v58 = xmmword_1E30474D0;
                    v73 = v13;
                    v30 = re::ShaderParameterTable::containsConstantKey(a2, &v73);
                    v73 = 0;
                    if (!v30)
                    {
                      *buf = &v55;
                      v75 = 64;
                      re::ConstantTable::setConstant((a2 + 128), &v59, buf, 50);
                    }

                    v59 = 0;
                    break;
                  case 0x1D:
                    v53 = v13;
                    LODWORD(v73) = 0;
                    *buf = v13;
                    v31 = re::ShaderParameterTable::containsConstantKey(a2, buf);
                    *buf = 0;
                    if (!v31)
                    {
                      *&v55 = &v73;
                      *(&v55 + 1) = 4;
                      re::ConstantTable::setConstant((a2 + 128), &v53, &v55, 3);
                    }

                    v53 = 0;
                    break;
                  case 0x1E:
                    v52 = v13;
                    v73 = v13;
                    *buf = 0;
                    v29 = re::ShaderParameterTable::containsConstantKey(a2, &v73);
                    v73 = 0;
                    if (!v29)
                    {
                      *&v55 = buf;
                      *(&v55 + 1) = 8;
                      re::ConstantTable::setConstant((a2 + 128), &v52, &v55, 4);
                    }

                    v52 = 0;
                    break;
                  case 0x1F:
                    v51 = v13;
                    v55 = 0uLL;
                    v73 = v13;
                    v26 = re::ShaderParameterTable::containsConstantKey(a2, &v73);
                    v73 = 0;
                    if (!v26)
                    {
                      *buf = &v55;
                      v75 = 16;
                      re::ConstantTable::setConstant((a2 + 128), &v51, buf, 5);
                    }

                    v51 = 0;
                    break;
                  case 0x20:
                    v50 = v13;
                    v55 = 0uLL;
                    v73 = v13;
                    v39 = re::ShaderParameterTable::containsConstantKey(a2, &v73);
                    v73 = 0;
                    if (!v39)
                    {
                      *buf = &v55;
                      v75 = 16;
                      re::ConstantTable::setConstant((a2 + 128), &v50, buf, 6);
                    }

                    v50 = 0;
                    break;
                  case 0x21:
                    v49 = v13;
                    LODWORD(v73) = 0;
                    *buf = v13;
                    v28 = re::ShaderParameterTable::containsConstantKey(a2, buf);
                    *buf = 0;
                    if (!v28)
                    {
                      *&v55 = &v73;
                      *(&v55 + 1) = 4;
                      re::ConstantTable::setConstant((a2 + 128), &v49, &v55, 7);
                    }

                    v49 = 0;
                    break;
                  case 0x22:
                    v48 = v13;
                    v73 = v13;
                    *buf = 0;
                    v38 = re::ShaderParameterTable::containsConstantKey(a2, &v73);
                    v73 = 0;
                    if (!v38)
                    {
                      *&v55 = buf;
                      *(&v55 + 1) = 8;
                      re::ConstantTable::setConstant((a2 + 128), &v48, &v55, 8);
                    }

                    v48 = 0;
                    break;
                  case 0x23:
                    v47 = v13;
                    v55 = 0uLL;
                    v73 = v13;
                    v27 = re::ShaderParameterTable::containsConstantKey(a2, &v73);
                    v73 = 0;
                    if (!v27)
                    {
                      *buf = &v55;
                      v75 = 16;
                      re::ConstantTable::setConstant((a2 + 128), &v47, buf, 9);
                    }

                    v47 = 0;
                    break;
                  case 0x24:
                    v46 = v13;
                    v55 = 0uLL;
                    v73 = v13;
                    v36 = re::ShaderParameterTable::containsConstantKey(a2, &v73);
                    v73 = 0;
                    if (!v36)
                    {
                      *buf = &v55;
                      v75 = 16;
                      re::ConstantTable::setConstant((a2 + 128), &v46, buf, 10);
                    }

                    v46 = 0;
                    break;
                  default:
                    break;
                }
              }

              result = v69;
              if (v69)
              {
                if (v70)
                {
                  result = (*(*v69 + 40))();
                }
              }
            }

            v10 += 80;
          }

          while (v10 != v11);
        }
      }

      v6 += 200;
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t *re::FixedArray<re::MetalTypeInfo>::operator=(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      *result = v5;
      *a2 = v4;
      v7 = result[1];
      v8 = result[2];
      v9 = a2[2];
      result[1] = a2[1];
      result[2] = v9;
      a2[1] = v7;
      a2[2] = v8;
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296, v2, v3);
      result = _os_crash("assertion failure: (!isInitialized() || m_allocator == other.m_allocator) ");
      __break(1u);
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::TypedArgument>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 112 * v4;
        do
        {
          re::FixedArray<re::MetalTypeInfo>::deinit(v3 + 8);
          re::StringID::destroyString((v3 + 5));
          re::StringID::destroyString(v3);
          v3 += 14;
          v5 -= 112;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::TypedArgument>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::TypedArgument>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::TypedArgument>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::TypedArgument>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::TypedArgument>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x70uLL))
        {
          v2 = 112 * a2;
          result = (*(*result + 32))(result, 112 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 112, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v16, v18);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v17, v19);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = &v8[14 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          *(v11 + 8) = *(v8 + 8);
          LODWORD(v12) = *(v8 + 8);
          v11[3] = v8[3];
          *(v11 + 8) = v12;
          LOBYTE(v12) = v8[5];
          v11[5] = v11[5] & 0xFFFFFFFFFFFFFFFELL | v8[5] & 1;
          v11[5] = v8[5] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[6] = v8[6];
          v8[6] = &str_67;
          v8[5] = 0;
          LODWORD(v12) = *(v8 + 14);
          *(v11 + 30) = *(v8 + 30);
          *(v11 + 14) = v12;
          v11[9] = 0;
          v11[10] = 0;
          v11[8] = 0;
          v11[8] = v8[8];
          v8[8] = 0;
          v13 = v11[10];
          v14 = v8[10];
          v11[9] = v8[9];
          v11[10] = v14;
          v8[9] = 0;
          v8[10] = v13;
          v15 = v8[11];
          *(v11 + 94) = *(v8 + 94);
          v11[11] = v15;
          *(v11 + 104) = *(v8 + 104);
          re::FixedArray<re::MetalTypeInfo>::deinit(v8 + 8);
          re::StringID::destroyString((v8 + 5));
          re::StringID::destroyString(v8);
          v11 += 14;
          v8 += 14;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t *std::__copy_impl::operator()[abi:nn200100]<re::TypedArgument const*,re::TypedArgument const*,re::TypedArgument*>(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = a3 + v6 * 8;
      re::StringID::operator=((a3 + v6 * 8), &v5[v6]);
      *(v7 + 16) = v5[v6 + 2];
      v8 = v5[v6 + 3];
      *(v7 + 32) = v5[v6 + 4];
      *(v7 + 24) = v8;
      re::StringID::operator=((a3 + v6 * 8 + 40), &v5[v6 + 5]);
      v9 = v5[v6 + 7];
      *(v7 + 60) = WORD2(v5[v6 + 7]);
      *(v7 + 56) = v9;
      result = re::FixedArray<re::MetalTypeInfo>::operator=((a3 + v6 * 8 + 64), &v5[v6 + 8]);
      v10 = v5[v6 + 11];
      *(v7 + 94) = *(&v5[v6 + 11] + 6);
      *(v7 + 88) = v10;
      *(v7 + 104) = v5[v6 + 13];
      v6 += 14;
    }

    while (&v5[v6] != a2);
  }

  return result;
}

BOOL re::HashTable<re::StringID,re::DynamicArray<re::TypedArgument>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(_BOOL8 result, uint64_t a2, void *a3)
{
  v3 = result;
  v4 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
  LODWORD(v6) = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    LODWORD(v8) = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v7 = v5 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v10 = *(a2 + 16);
  result = re::StringID::operator==((v10 + (v8 << 6) + 8), a3);
  if (result)
  {
    LODWORD(v6) = v8;
LABEL_5:
    LODWORD(v8) = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v11 = *(v10 + (v8 << 6));
  v6 = v11 & 0x7FFFFFFF;
  if ((v11 & 0x7FFFFFFF) == 0x7FFFFFFF)
  {
    LODWORD(v6) = 0x7FFFFFFF;
  }

  else
  {
    result = re::StringID::operator==((v10 + (v6 << 6) + 8), a3);
    if (!result)
    {
      LODWORD(v12) = v6;
      while (1)
      {
        LODWORD(v8) = v12;
        v13 = *(v10 + (v6 << 6));
        v12 = v13 & 0x7FFFFFFF;
        LODWORD(v6) = 0x7FFFFFFF;
        if ((v13 & 0x7FFFFFFF) == 0x7FFFFFFF)
        {
          break;
        }

        result = re::StringID::operator==((v10 + (v12 << 6) + 8), a3);
        v6 = v12;
        if (result)
        {
          LODWORD(v6) = v12;
          break;
        }
      }
    }
  }

LABEL_7:
  *v3 = v5;
  *(v3 + 8) = v7;
  *(v3 + 12) = v6;
  *(v3 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::StringID,re::DynamicArray<re::TypedArgument>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v34, 0, 36);
          *&v34[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v34, v9, v8);
          v11 = *v34;
          *v34 = *a1;
          *a1 = v11;
          v12 = *&v34[16];
          v13 = *(a1 + 16);
          *&v34[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v34[24];
          *&v34[24] = *(a1 + 24);
          v14 = *&v34[32];
          *(a1 + 24) = v15;
          ++*&v34[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = v13 + v17;
                v20 = 0xBF58476D1CE4E5B9 * ((*(v13 + v17 + 8) >> 31) ^ (*(v13 + v17 + 8) >> 1));
                v21 = (0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) ^ ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) >> 31);
                v22 = re::HashTable<re::StringID,re::DynamicArray<re::TypedArgument>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v21 % *(a1 + 24), v21);
                v23 = *(v19 + 8);
                *(v22 + 8) = *(v22 + 8) & 0xFFFFFFFFFFFFFFFELL | v23 & 1;
                *(v22 + 8) = *(v19 + 8) & 0xFFFFFFFFFFFFFFFELL | v23 & 1;
                *(v22 + 16) = *(v19 + 16);
                *(v19 + 8) = 0;
                *(v19 + 16) = &str_67;
                v13 = *&v34[16];
                v24 = *&v34[16] + v17;
                *(v22 + 56) = 0;
                *(v22 + 48) = 0;
                *(v22 + 32) = 0;
                *(v22 + 40) = 0;
                *(v22 + 24) = 0;
                v25 = *(v24 + 32);
                *(v22 + 24) = *(v24 + 24);
                *(v22 + 32) = v25;
                *(v24 + 24) = 0;
                *(v24 + 32) = 0;
                v26 = *(v22 + 40);
                *(v22 + 40) = *(v24 + 40);
                *(v24 + 40) = v26;
                v27 = *(v22 + 56);
                *(v22 + 56) = *(v24 + 56);
                *(v24 + 56) = v27;
                ++*(v24 + 48);
                ++*(v22 + 48);
                v16 = *&v34[32];
              }

              ++v18;
              v17 += 64;
            }

            while (v18 < v16);
          }

          re::HashTable<re::StringID,re::DynamicArray<re::TypedArgument>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v34);
        }
      }

      else
      {
        if (v8)
        {
          v30 = 2 * v7;
        }

        else
        {
          v30 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v28 = *(a1 + 16);
    v29 = *(v28 + (v4 << 6));
  }

  else
  {
    v28 = *(a1 + 16);
    v29 = *(v28 + (v4 << 6));
    *(a1 + 36) = v29 & 0x7FFFFFFF;
  }

  v31 = v4 << 6;
  *(v28 + v31) = v29 | 0x80000000;
  v32 = *(a1 + 8);
  *(v28 + v31) = *(v32 + 4 * a2) | 0x80000000;
  *(v32 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v28 + (v4 << 6);
}

double re::HashTable<re::StringID,re::DynamicArray<re::TypedArgument>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::StringID,re::DynamicArray<re::TypedArgument>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 64;
      }

      while (v4 < *(a1 + 8));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

_DWORD *re::HashTable<re::StringID,re::DynamicArray<re::TypedArgument>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(_DWORD *result)
{
  if ((*result & 0x80000000) != 0)
  {
    *result &= ~0x80000000;
    v2 = result + 6;
    re::StringID::destroyString((result + 2));

    return re::DynamicArray<re::TypedArgument>::deinit(v2);
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::MetalTypeInfo>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::MetalTypeInfo>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MetalTypeInfo>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::MetalTypeInfo>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::MetalTypeInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x50uLL))
        {
          v2 = 80 * a2;
          result = (*(*result + 32))(result, 80 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 80, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v19, v21);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v20, v22);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = &v8[10 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *(v11 + 2) = *(v8 + 2);
          *v11 = v12;
          v13 = (v8 + 2);
          LOBYTE(v12) = v8[2];
          v11[2] = v11[2] & 0xFFFFFFFFFFFFFFFELL | v8[2] & 1;
          v11[2] = v8[2] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[3] = v8[3];
          v8[3] = &str_67;
          v8[2] = 0;
          LODWORD(v12) = *(v8 + 8);
          *(v11 + 18) = *(v8 + 18);
          *(v11 + 8) = v12;
          v11[6] = 0;
          v11[7] = 0;
          v11[5] = 0;
          v15 = v8[5];
          v14 = v8 + 5;
          v11[5] = v15;
          *v14 = 0;
          v16 = v11[7];
          v17 = v14[2];
          v11[6] = v14[1];
          v11[7] = v17;
          v14[1] = 0;
          v14[2] = v16;
          v18 = v14[3];
          *(v11 + 70) = *(v14 + 30);
          v11[8] = v18;
          re::FixedArray<re::MetalTypeInfo>::deinit(v14);
          re::StringID::destroyString(v13);
          v11 += 10;
          v8 = v14 + 5;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t makeValidInternal(uint64_t a1, id *a2, uint64_t a3, double a4)
{
  result = *a2;
  if (!*a2 || (*a1 | 2) != 2)
  {
    return result;
  }

  if (!*(a1 + 4))
  {
    *(a1 + 4) = [result pixelFormat];
  }

  if (*(a1 + 12) == -1)
  {
    *&a4 = fmaxf(*(a1 + 44) * [*a2 width], 0.0);
    v8 = *(a1 + 52);
    if (v8 == 2)
    {
      *&a4 = ceilf(*&a4);
    }

    else if (v8 == 1)
    {
      *&a4 = roundf(*&a4);
    }

    else
    {
      if (v8)
      {
        goto LABEL_13;
      }

      *&a4 = floorf(*&a4);
    }

    *(a1 + 12) = *&a4;
  }

LABEL_13:
  if (*(a1 + 16) != -1)
  {
    goto LABEL_21;
  }

  *&a4 = fmaxf(*(a1 + 48) * [*a2 height], 0.0);
  v9 = *(a1 + 56);
  if (v9 == 2)
  {
    *&a4 = ceilf(*&a4);
  }

  else if (v9 == 1)
  {
    *&a4 = roundf(*&a4);
  }

  else
  {
    if (v9)
    {
      goto LABEL_21;
    }

    *&a4 = floorf(*&a4);
  }

  *(a1 + 16) = *&a4;
LABEL_21:
  result = *(a1 + 20);
  if (result == -1)
  {
    result = [*a2 sampleCount];
    *(a1 + 20) = result;
  }

  if (*(a1 + 24) == -1)
  {
    v11 = [*a2 arrayLength];
    *(a1 + 24) = v11;
    result = *(a1 + 20);
    v10 = v11 == -1;
  }

  else
  {
    v10 = 0;
  }

  if (result < 2)
  {
    v14 = *(a1 + 12) == -1 || *(a1 + 16) == -1;
    if (!v14 && !v10)
    {
      result = [*a2 textureType];
      *(a1 + 8) = result;
    }

    v15 = *(a1 + 28);
    if (v15 == -2)
    {
      v12 = 32 - __clz(*(a1 + 12));
      v17 = 32 - __clz(*(a1 + 16));
      if (v12 <= v17)
      {
        v12 = v17;
      }
    }

    else
    {
      if (v15 != -1)
      {
        goto LABEL_45;
      }

      result = [*a2 mipmapLevelCount];
      *(a1 + 28) = result;
      v12 = 32 - __clz(*(a1 + 12));
      v16 = 32 - __clz(*(a1 + 16));
      if (v12 <= v16)
      {
        v12 = v16;
      }

      if (v12 >= result)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  *(a1 + 28) = v12;
LABEL_45:
  if (*(a1 + 32) == -1)
  {
    *(a1 + 32) = 0;
  }

  if (*(a1 + 88) == -1)
  {
    result = [*a2 protectionOptions];
    *(a1 + 88) = result & a3;
  }

  return result;
}

void re::RenderGraphTargetDescription::makeValid(uint64_t a1, id *a2, uint64_t a3)
{
  v5 = *a2;
  v7 = v5;
  makeValidInternal(a1, &v7, a3, v6);
  if (v5)
  {
  }
}

uint64_t re::RenderGraphTargetDescription::copySetProperties(uint64_t result, uint64_t a2)
{
  if (!*(result + 4))
  {
    *(result + 4) = *(a2 + 4);
  }

  v2 = *(result + 12);
  if (v2 == -1)
  {
    v2 = *(a2 + 12);
    *(result + 12) = v2;
  }

  v3 = *(result + 16);
  if (v3 == -1)
  {
    v3 = *(a2 + 16);
    *(result + 16) = v3;
  }

  v4 = *(result + 20);
  if (v4 == -1)
  {
    v4 = *(a2 + 20);
    *(result + 20) = v4;
  }

  v5 = *(result + 24);
  if (v5 == -1)
  {
    v5 = *(a2 + 24);
    *(result + 24) = v5;
  }

  if (v2 != -1 && v3 != -1 && v4 != -1 && v5 != -1)
  {
    if (v4 >= 2 && v5 > 1)
    {
      v6 = 8;
LABEL_29:
      *(result + 8) = v6;
      goto LABEL_30;
    }

    if (v5 < 2)
    {
      if (v5 == 1)
      {
        if (v4 > 1)
        {
          v6 = 4;
          goto LABEL_29;
        }

        if (v3 >= 2 && v2 >= 2 && v4 == 1)
        {
          v6 = 2;
          goto LABEL_29;
        }
      }
    }

    else if (v4 == 1)
    {
      v6 = 3;
      goto LABEL_29;
    }

    v6 = *(a2 + 8);
    goto LABEL_29;
  }

LABEL_30:
  v7 = *(result + 28);
  if (v7 == -1)
  {
    v7 = *(a2 + 28);
    *(result + 28) = v7;
  }

  if (*(result + 32) == -1)
  {
    *(result + 32) = *(a2 + 32);
  }

  if (*(result + 88) == -1)
  {
    *(result + 88) = *(a2 + 88);
  }

  if (v2 != -1 && v7 == -2 && v3 != -1)
  {
    v8 = 32 - __clz(v2);
    v9 = 32 - __clz(v3);
    if (v8 <= v9)
    {
      v8 = v9;
    }

    *(result + 28) = v8;
  }

  return result;
}

void *re::RenderGraphTargetDescription::valuesToString@<X0>(re::RenderGraphTargetDescription *this@<X0>, re::DynamicString *a2@<X8>)
{
  *(a2 + 1) = 0;
  v4 = (a2 + 8);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  re::DynamicString::setCapacity(a2, 0);
  if (*v4)
  {
    *v4 = 1;
    v5 = *(a2 + 2);
  }

  else
  {
    *v4 = 0;
    v5 = a2 + 9;
  }

  *v5 = 0;
  re::DynamicString::setCapacity(a2, 0x400uLL);
  re::DynamicString::format(&v7, "type: %d format: %d textureType: %d width: %u height: %u sampleCount: %u arrayLength: %u mipLevelCount: %u tonemapInPlace: %u widthMultiplier: %f heightMultiplier: %f widthRoundingMode: %d heightRoundingMode: %d initialUsageFlags: %d initialOptions: %d protectionOptions: %llu isMemoryless: %d", *(this + 7), *this, *(this + 1), *(this + 2), *(this + 3), *(this + 4), *(this + 5), *(this + 6), *(this + 7), *(this + 8), *(this + 11), *(this + 12), *(this + 13), *(this + 14), *(this + 17), *(this + 18), *(this + 11), (*(this + 18) & 0x70) == 48);
  re::DynamicString::operator=(a2, &v7);
  if (v7 && (v8 & 1) != 0)
  {
    (*(*v7 + 40))();
  }

  return re::DynamicString::trimExcess(a2);
}

uint64_t re::RenderGraphTargetHandle::introspectionSerialize(uint64_t a1, const char *a2, void *a3, re::DynamicString *a4)
{
  re::DynamicString::format(&v6, "%llu", a2, *a3);
  re::DynamicString::operator=(a4, &v6);
  if (v6 && (v7 & 1) != 0)
  {
    (*(*v6 + 40))();
  }

  return 1;
}

uint64_t re::RenderGraphTargetHandle::introspectionDeserialize(int a1, int a2, int a3, unint64_t *a4, char *__str)
{
  v5 = __str;
  do
  {
    v7 = *v5++;
    v6 = v7;
    if (!v7)
    {
      __endptr = 0;
      *a4 = strtoull(__str, &__endptr, 10);
      return 1;
    }
  }

  while ((v6 & 0x80) == 0 && (*(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x400) != 0);
  v8 = *__str;
  if (*__str)
  {
    v9 = __str[1];
    if (v9)
    {
      v10 = __str + 2;
      do
      {
        v8 = 31 * v8 + v9;
        v11 = *v10++;
        v9 = v11;
      }

      while (v11);
    }

    v8 &= ~0x8000000000000000;
  }

  *a4 = v8;
  return 1;
}

void *re::introspect_RenderGraphTargetDimensionRoundingMode(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "Floor";
    re::introspect_RenderGraphTargetDimensionRoundingMode(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "Round";
    qword_1EE1C5D08 = v12;
    v13 = re::introspectionAllocator();
    v14 = (*(*v13 + 32))(v13, 24, 8);
    *v14 = 1;
    *(v14 + 8) = 2;
    *(v14 + 16) = "Ceil";
    qword_1EE1C5D10 = v14;
  }

  {
    v15 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_RenderGraphTargetDimensionRoundingMode(BOOL)::info, "RenderGraphTargetDimensionRoundingMode", 4, 4, 1, 1);
    *v15 = &unk_1F5D0C658;
    *(v15 + 8) = &re::introspect_RenderGraphTargetDimensionRoundingMode(BOOL)::enumTable;
    *(v15 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_RenderGraphTargetDimensionRoundingMode(BOOL)::isInitialized)
    {
      return &re::introspect_RenderGraphTargetDimensionRoundingMode(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v17);
    v3 = re::introspect_RenderGraphTargetDimensionRoundingMode(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v17);
    if (v3)
    {
      return &re::introspect_RenderGraphTargetDimensionRoundingMode(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_RenderGraphTargetDimensionRoundingMode(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_RenderGraphTargetDimensionRoundingMode(BOOL)::info;
    }
  }

  re::introspect_RenderGraphTargetDimensionRoundingMode(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_RenderGraphTargetDimensionRoundingMode(BOOL)::info, a2);
  v16[0] = 0xE1B9E1AD2F7284E8;
  v16[1] = "RenderGraphTargetDimensionRoundingMode";
  xmmword_1EE1C5CD8 = v17;
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::introspect_RenderGraphTargetDimensionRoundingMode(BOOL)::info;
}

uint64_t *re::introspect_RenderGraphTargetHandle(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1B8550, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8550))
  {
    re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B8558, "RenderGraphTargetHandle", 16, 8, 0, 0);
    qword_1EE1B8558 = &unk_1F5D0C698;
    qword_1EE1B8598 = re::internal::defaultConstruct<re::RenderGraphTargetHandle>;
    qword_1EE1B85A0 = re::RenderGraphTargetHandle::introspectionSerialize;
    qword_1EE1B85A8 = re::RenderGraphTargetHandle::introspectionDeserialize;
    qword_1EE1B85B8 = 0;
    unk_1EE1B85C0 = 0;
    qword_1EE1B85B0 = re::RenderGraphTargetHandle::introspectionDeepCopy;
    dword_1EE1B8568 = 11;
    __cxa_guard_release(&qword_1EE1B8550);
  }

  if (v2)
  {
    if (_MergedGlobals_433)
    {
      return &qword_1EE1B8558;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v10);
    v3 = _MergedGlobals_433;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v10);
    if (v3)
    {
      return &qword_1EE1B8558;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (_MergedGlobals_433)
    {
LABEL_11:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &qword_1EE1B8558;
    }
  }

  _MergedGlobals_433 = 1;
  re::IntrospectionRegistry::add(&qword_1EE1B8558, a2);
  v9[0] = 0xAF79EE31A5FB40E2;
  v9[1] = "RenderGraphTargetHandle";
  xmmword_1EE1B8578 = v10;
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &qword_1EE1B8558;
}

double re::internal::defaultConstruct<re::RenderGraphTargetHandle>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  result = NAN;
  a3[1] = -1;
  return result;
}

double re::internal::defaultConstructV2<re::RenderGraphTargetHandle>(void *a1)
{
  *a1 = 0;
  result = NAN;
  a1[1] = -1;
  return result;
}

void textureDescFromTargetDesc(uint64_t a1@<X0>, void *a2@<X8>)
{
  re::mtl::makeDefaultDevice(&v15);
  v4 = *(a1 + 68);
  v6 = *(a1 + 4);
  v5 = *(a1 + 8);
  v13 = v6;
  v14 = v4;
  v7 = *(a1 + 36);
  v11 = v7;
  v12 = v5;
  TextureCompressionType = re::mtl::getTextureCompressionType(&v15, &v11, &v13, &v14, &v12);
  v9 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  *a2 = v9;
  if (([v9 respondsToSelector_] & 1) != 0 || objc_msgSend(v9, sel_methodSignatureForSelector_, sel_setCompressionType_))
  {
    [v9 setCompressionType_];
  }

  [v9 setStorageMode_];
  [v9 setPixelFormat_];
  [v9 setWidth_];
  [v9 setHeight_];
  [v9 setTextureType_];
  if (*(a1 + 20) >= 2u)
  {
    [v9 setSampleCount_];
  }

  if (*(a1 + 24) != -1 && *(a1 + 8) <= 9u)
  {
    [v9 setArrayLength_];
  }

  if (*(a1 + 28) != -1)
  {
    [v9 setMipmapLevelCount_];
  }

  [v9 setUsage_];
  v10 = *(a1 + 72);
  if (v10 == 0xFFFF)
  {
    v10 = 0;
  }

  [v9 setResourceOptions_];
  [v9 setProtectionOptions_];
}

void re::RenderGraphCachingErrorCategoryImpl::~RenderGraphCachingErrorCategoryImpl(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x1E6906520);
}

void *re::RenderGraphCachingErrorCategoryImpl::message@<X0>(int a1@<W1>, void *a2@<X8>)
{
  if (a1 <= 2999)
  {
    if (a1 > 2000)
    {
      switch(a1)
      {
        case 2001:
          v2 = "Created a target outside of a provide() callback";
          return std::string::basic_string[abi:nn200100]<0>(a2, v2);
        case 2002:
          v2 = "Registered an external texture inside of a provide() callback";
          return std::string::basic_string[abi:nn200100]<0>(a2, v2);
        case 2003:
          v2 = "Accessed an input target outside of a provide() callback";
          return std::string::basic_string[abi:nn200100]<0>(a2, v2);
      }
    }

    else
    {
      switch(a1)
      {
        case 1000:
          v2 = "Used an incompatible graph feature";
          return std::string::basic_string[abi:nn200100]<0>(a2, v2);
        case 1001:
          v2 = "Created a graph outside of a provide() callback";
          return std::string::basic_string[abi:nn200100]<0>(a2, v2);
        case 2000:
          v2 = "Used an incompatible target feature";
          return std::string::basic_string[abi:nn200100]<0>(a2, v2);
      }
    }

LABEL_28:
    v2 = "Unknown RERenderGraph error";
    return std::string::basic_string[abi:nn200100]<0>(a2, v2);
  }

  if (a1 > 3002)
  {
    switch(a1)
    {
      case 3003:
        v2 = "Accessed an input buffer outside of a provide() callback";
        return std::string::basic_string[abi:nn200100]<0>(a2, v2);
      case 4000:
        v2 = "Created an unsupported node";
        return std::string::basic_string[abi:nn200100]<0>(a2, v2);
      case 4001:
        v2 = "Called an unsupported node function";
        return std::string::basic_string[abi:nn200100]<0>(a2, v2);
    }

    goto LABEL_28;
  }

  if (a1 == 3000)
  {
    v2 = "Used an incompatible buffer feature";
  }

  else if (a1 == 3001)
  {
    v2 = "Created a buffer outside of a provide() callback";
  }

  else
  {
    v2 = "Registered an external buffer inside of a provide() callback";
  }

  return std::string::basic_string[abi:nn200100]<0>(a2, v2);
}

Class re::getVFXSceneClass(re *this)
{
  result = qword_1EE1B85D0;
  if (!qword_1EE1B85D0)
  {
    if (qword_1EE1B8660 != -1)
    {
      dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
    }

    v2 = atomic_load(&_MergedGlobals_434);
    if (v2)
    {
      result = objc_getClass("VFX.VFXScene");
      if (result)
      {
        qword_1EE1B85D0 = result;
        return result;
      }

      v3 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Unable to find VFX class VFX.VFXScene", v4, 2u);
      }
    }

    return 0;
  }

  return result;
}

Class re::getVFXMemorySerializationClass(re *this)
{
  result = qword_1EE1B85D8;
  if (!qword_1EE1B85D8)
  {
    if (qword_1EE1B8660 != -1)
    {
      dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
    }

    v2 = atomic_load(&_MergedGlobals_434);
    if (v2)
    {
      result = objc_getClass("VFXMemorySerialization");
      if (result)
      {
        qword_1EE1B85D8 = result;
        return result;
      }

      v3 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Unable to find VFX class VFXMemorySerialization", v4, 2u);
      }
    }

    return 0;
  }

  return result;
}

Class re::getVFXSceneLoadOptionsClass(re *this)
{
  result = qword_1EE1B85E0;
  if (!qword_1EE1B85E0)
  {
    if (qword_1EE1B8660 != -1)
    {
      dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
    }

    v2 = atomic_load(&_MergedGlobals_434);
    if (v2)
    {
      result = objc_getClass("VFXSceneLoadOptions");
      if (result)
      {
        qword_1EE1B85E0 = result;
        return result;
      }

      v3 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Unable to find VFX class VFXSceneLoadOptions", v4, 2u);
      }
    }

    return 0;
  }

  return result;
}

Class re::getVFXWorldClass(re *this)
{
  result = qword_1EE1B85E8;
  if (!qword_1EE1B85E8)
  {
    if (qword_1EE1B8660 != -1)
    {
      dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
    }

    v2 = atomic_load(&_MergedGlobals_434);
    if (v2)
    {
      result = objc_getClass("VFXWorld");
      if (result)
      {
        qword_1EE1B85E8 = result;
        return result;
      }

      v3 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Unable to find VFX class VFXWorld", v4, 2u);
      }
    }

    return 0;
  }

  return result;
}

Class re::getVFXNodeClass(re *this)
{
  result = qword_1EE1B85F0;
  if (!qword_1EE1B85F0)
  {
    if (qword_1EE1B8660 != -1)
    {
      dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
    }

    v2 = atomic_load(&_MergedGlobals_434);
    if (v2)
    {
      result = objc_getClass("VFXNode");
      if (result)
      {
        qword_1EE1B85F0 = result;
        return result;
      }

      v3 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Unable to find VFX class VFXNode", v4, 2u);
      }
    }

    return 0;
  }

  return result;
}

Class re::getVFXAssetNodeClass(re *this)
{
  result = qword_1EE1B85F8;
  if (!qword_1EE1B85F8)
  {
    if (qword_1EE1B8660 != -1)
    {
      dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
    }

    v2 = atomic_load(&_MergedGlobals_434);
    if (v2)
    {
      result = objc_getClass("VFXAssetNode");
      if (result)
      {
        qword_1EE1B85F8 = result;
        return result;
      }

      v3 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Unable to find VFX class VFXAssetNode", v4, 2u);
      }
    }

    return 0;
  }

  return result;
}

Class re::getVFXRendererClass(re *this)
{
  result = qword_1EE1B8600;
  if (!qword_1EE1B8600)
  {
    if (qword_1EE1B8660 != -1)
    {
      dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
    }

    v2 = atomic_load(&_MergedGlobals_434);
    if (v2)
    {
      result = objc_getClass("VFXRenderer");
      if (result)
      {
        qword_1EE1B8600 = result;
        return result;
      }

      v3 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Unable to find VFX class VFXRenderer", v4, 2u);
      }
    }

    return 0;
  }

  return result;
}

Class re::getVFXREWorldSimulationClass(re *this)
{
  result = qword_1EE1B8608;
  if (!qword_1EE1B8608)
  {
    if (qword_1EE1B8660 != -1)
    {
      dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
    }

    v2 = atomic_load(&_MergedGlobals_434);
    if (v2)
    {
      result = objc_getClass("VFXREWorldSimulation");
      if (result)
      {
        qword_1EE1B8608 = result;
        return result;
      }

      v3 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Unable to find VFX class VFXREWorldSimulation", v4, 2u);
      }
    }

    return 0;
  }

  return result;
}

Class re::getVFXClientTextureAssetClass(re *this)
{
  result = qword_1EE1B8610;
  if (!qword_1EE1B8610)
  {
    if (qword_1EE1B8660 != -1)
    {
      dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
    }

    v2 = atomic_load(&_MergedGlobals_434);
    if (v2)
    {
      result = objc_getClass("VFXClientTextureAsset");
      if (result)
      {
        qword_1EE1B8610 = result;
        return result;
      }

      v3 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Unable to find VFX class VFXClientTextureAsset", v4, 2u);
      }
    }

    return 0;
  }

  return result;
}

Class re::getVFXTransactionClass(re *this)
{
  result = qword_1EE1B8618;
  if (!qword_1EE1B8618)
  {
    if (qword_1EE1B8660 != -1)
    {
      dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
    }

    v2 = atomic_load(&_MergedGlobals_434);
    if (v2)
    {
      result = objc_getClass("VFXTransaction");
      if (result)
      {
        qword_1EE1B8618 = result;
        return result;
      }

      v3 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Unable to find VFX class VFXTransaction", v4, 2u);
      }
    }

    return 0;
  }

  return result;
}

id re::getVFXWorldInitOptionForREOptionKey(re *this)
{
  v1 = qword_1EE1B8620;
  if (qword_1EE1B8620)
  {
    goto LABEL_6;
  }

  if (qword_1EE1B8660 != -1)
  {
    dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
  }

  atomic_load(&_MergedGlobals_434);
  v1 = dlsym(qword_1EE1B8628, "VFXWorldInitOptionForRE");
  if (v1)
  {
    qword_1EE1B8620 = v1;
LABEL_6:
    v2 = *v1;
    goto LABEL_7;
  }

  v4 = *re::graphicsLogObjects(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Unable to find VFX pointer VFXWorldInitOptionForRE", v5, 2u);
  }

  v2 = 0;
LABEL_7:

  return v2;
}

id re::getVFXRendererInitOptionForREOptionKey(re *this)
{
  v1 = qword_1EE1B8630;
  if (qword_1EE1B8630)
  {
    goto LABEL_6;
  }

  if (qword_1EE1B8660 != -1)
  {
    dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
  }

  atomic_load(&_MergedGlobals_434);
  v1 = dlsym(qword_1EE1B8628, "VFXRendererInitOptionForRE");
  if (v1)
  {
    qword_1EE1B8630 = v1;
LABEL_6:
    v2 = *v1;
    goto LABEL_7;
  }

  v4 = *re::graphicsLogObjects(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Unable to find VFX pointer VFXRendererInitOptionForRE", v5, 2u);
  }

  v2 = 0;
LABEL_7:

  return v2;
}

Class re::getVFXRESceneClass(re *this)
{
  result = qword_1EE1B8638;
  if (!qword_1EE1B8638)
  {
    if (qword_1EE1B8660 != -1)
    {
      dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
    }

    v2 = atomic_load(&_MergedGlobals_434);
    if (v2)
    {
      result = objc_getClass("VFXREScene");
      if (result)
      {
        qword_1EE1B8638 = result;
        return result;
      }

      v3 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Unable to find VFX class VFXREScene", v4, 2u);
      }
    }

    return 0;
  }

  return result;
}

Class re::getVFXREDrawCallClass(re *this)
{
  result = qword_1EE1B8640;
  if (!qword_1EE1B8640)
  {
    if (qword_1EE1B8660 != -1)
    {
      dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
    }

    v2 = atomic_load(&_MergedGlobals_434);
    if (v2)
    {
      result = objc_getClass("VFXREDrawCall");
      if (result)
      {
        qword_1EE1B8640 = result;
        return result;
      }

      v3 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Unable to find VFX class VFXREDrawCall", v4, 2u);
      }
    }

    return 0;
  }

  return result;
}

void *re::getVFXREForEachDrawCallFct(re *this)
{
  v1 = qword_1EE1B8648;
  if (!qword_1EE1B8648)
  {
    if (qword_1EE1B8660 != -1)
    {
      dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
    }

    v2 = atomic_load(&_MergedGlobals_434);
    if (v2)
    {
      v1 = dlsym(qword_1EE1B8628, "VFXREForEachDrawCall");
      if (!v1)
      {
        v3 = *re::graphicsLogObjects(0);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          *v5 = 0;
          _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Unable to find function VFXREForEachDrawCall", v5, 2u);
        }
      }

      qword_1EE1B8648 = v1;
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t re::loadVFXFramework(re *this)
{
  if (qword_1EE1B8660 != -1)
  {
    dispatch_once(&qword_1EE1B8660, &__block_literal_global_576);
  }

  v1 = atomic_load(&_MergedGlobals_434);
  return v1 & 1;
}

uint64_t re::loadVFXAssetsFramework(re *this)
{
  if (qword_1EE1B8668 != -1)
  {
    dispatch_once(&qword_1EE1B8668, &__block_literal_global_580);
  }

  v1 = atomic_load(byte_1EE1B85C9);
  return v1 & 1;
}

uint64_t *re::BufferTableReference::getBuffer@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, uint64_t a3@<X1>)
{
  v5 = this[1];
  if (v5 <= a3)
  {
    re::internal::assertLog(6, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a3, v5, v3, v4);
    this = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v10, v11);
    __break(1u);
  }

  else
  {
    v6 = *this + 24 * a3;
    v7 = *(v6 + 16);
    if (this[3] <= a3)
    {
      v9 = 0;
      v8 = *(v6 + 20);
    }

    else
    {
      v8 = *(this[2] + 4 * a3);
      v9 = *(this + 8) * v8;
    }

    *a1 = *v6;
    *(a1 + 2) = 0;
    *(a1 + 4) = v9 + v7;
    *(a1 + 5) = v8;
  }

  return this;
}

uint64_t anonymous namespace::renderOptionsForConstants(void *a1)
{
  if ((atomic_load_explicit(&qword_1EE1B8680, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8680))
  {
    qword_1EE1B8678 = re::hashString("EnableDepthMitigation", v4);
    __cxa_guard_release(&qword_1EE1B8680);
  }

  v5 = qword_1EE1B8678;
  v2 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, &v5);
  if (v2 == -1)
  {
    return 0;
  }

  else
  {
    return 16 * (*(a1[1] + 16 * v2 + 8) == 1);
  }
}

uint64_t re::EncoderState::setCullMode(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = a2;
  v4 = result;
  if ((*result & 1) == 0 || *(result + 2) != a2)
  {
    result = (*(*(a3 + 8) + 64))(**(a3 + 8), sel_setCullMode_, a2);
    *(v4 + 2) = v3;
    *v4 |= 1u;
  }

  return result;
}

uint64_t re::EncoderState::setTriangleFillMode(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = a2;
  v4 = result;
  if ((*result & 2) == 0 || *(result + 3) != a2)
  {
    result = (*(*(a3 + 8) + 176))(**(a3 + 8), sel_setTriangleFillMode_, a2);
    *(v4 + 3) = v3;
    *v4 |= 2u;
  }

  return result;
}

uint64_t re::EncoderState::setStencilReferenceValues(uint64_t this, uint64_t a2, uint64_t a3, RenderCommandEncoder *a4)
{
  v4 = a3;
  v5 = a2;
  v6 = this;
  if ((*this & 4) == 0 || __PAIR64__(*(this + 5), *(this + 4)) != __PAIR64__(a3, a2))
  {
    this = (*(a4->var0 + 16))(*a4->var0, sel_setStencilFrontReferenceValue_backReferenceValue_, a2, a3);
    *(v6 + 4) = v5;
    *(v6 + 5) = v4;
    *v6 |= 4u;
  }

  return this;
}

void **re::EncoderState::setDepthStencilState(void **result, void **a2, uint64_t a3)
{
  v5 = result;
  v6 = *a2;
  if ((*result & 0x80) == 0 || result[3] != v6)
  {
    (*(*(a3 + 8) + 112))(**(a3 + 8), sel_setDepthStencilState_, v6);
    result = NS::SharedPtr<MTL::Buffer>::operator=(v5 + 3, a2);
    *v5 |= 0x80u;
  }

  return result;
}

void **re::EncoderState::setRenderPipelineState(void **result, void **a2, uint64_t a3)
{
  v5 = result;
  v6 = *a2;
  if ((*result & 0x100) == 0 || result[4] != v6)
  {
    (*(*(a3 + 8) + 56))(**(a3 + 8), sel_setRenderPipelineState_, v6);
    result = NS::SharedPtr<MTL::Buffer>::operator=(v5 + 4, a2);
    *v5 |= 0x100u;
  }

  return result;
}

void ___ZL13VFXLoadBridgev_block_invoke()
{
  if (dlsym(0xFFFFFFFFFFFFFFFELL, "VFXREVersionCheckBridgeVersion"))
  {
    qword_1EE1B8628 = -2;
  }

  else if (!qword_1EE1B8628)
  {
    qword_1EE1B8628 = dlopen("/System/Library/PrivateFrameworks/VFX.framework/VFX", 1);
    if (!qword_1EE1B8628)
    {
      v0 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v0, OS_LOG_TYPE_ERROR, "[VFX] VFX.framework failed loading", buf, 2u);
      }
    }
  }

  if (qword_1EE1B8668 != -1)
  {
    dispatch_once(&qword_1EE1B8668, &__block_literal_global_580);
  }

  atomic_load(byte_1EE1B85C9);
  if (qword_1EE1B8628)
  {
    v1 = dlsym(qword_1EE1B8628, "VFXREVersionCheckBridgeVersion");
    if (v1)
    {
      v1 = v1(0x2540BE40BLL, 0xFFFFLL);
    }

    atomic_store(v1, &_MergedGlobals_434);
    v2 = atomic_load(&_MergedGlobals_434);
    if ((v2 & 1) == 0)
    {
      v3 = *re::graphicsLogObjects(v1);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "[VFX] Version missmatch between RE bridge and VFX framework", v4, 2u);
      }
    }
  }
}

void ___ZL14_loadVFXAssetsv_block_invoke()
{
  if (dlsym(0xFFFFFFFFFFFFFFFELL, "__vfx_get_effect_class_comAppleVfxConfetti"))
  {
    qword_1EE1B8670 = -2;
LABEL_4:
    v0 = 1;
    goto LABEL_5;
  }

  if (qword_1EE1B8670)
  {
    goto LABEL_4;
  }

  v0 = 1;
  qword_1EE1B8670 = dlopen("/System/Library/PrivateFrameworks/VFXAssets.framework/VFXAssets", 1);
  if (!qword_1EE1B8670)
  {
    v1 = *re::graphicsLogObjects(0);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *v2 = 0;
      _os_log_error_impl(&dword_1E1C61000, v1, OS_LOG_TYPE_ERROR, "[VFX] VFXAssets.framework failed loading", v2, 2u);
    }

    v0 = qword_1EE1B8670 != 0;
  }

LABEL_5:
  atomic_store(v0, byte_1EE1B85C9);
}

void re::makeMaterialBuilderErr(uint64_t *__return_ptr a1@<X8>, __CFString *a2@<X0>, uint64_t a3@<X1>)
{
  if (*(a3 + 8))
  {
    v3 = *(a3 + 16);
  }

  else
  {
    v3 = a3 + 9;
  }

  re::WrappedError::make(a1, @"REMaterialBuilderErrorDomain", a2, v3);
}

void *re::ShaderParameterTableBuilder::addConstant(uint64_t a1, const re::DynamicString *a2, uint64_t a3, char a4)
{
  for (i = *(a1 + 112); (i & 3) != 0; i = *(a1 + 112))
  {
    v15 = 0;
    re::DynamicArray<unsigned char>::add((a1 + 96), &v15);
  }

  LOWORD(v14) = i;
  BYTE2(v14) = *(a3 + 8);
  HIBYTE(v14) = a4;
  result = re::HashTable<re::DynamicString,re::ConstantLocation,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(a1 + 176, a2, &v14);
  v10 = *(a3 + 8);
  if (v10)
  {
    v11 = *a3;
    do
    {
      v12 = *v11++;
      v13 = v12;
      result = re::DynamicArray<unsigned char>::add((a1 + 96), &v13);
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::ConstantLocation,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, const re::DynamicString *a2, _DWORD *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v13, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, v6, &v10, a2);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 56 * HIDWORD(v11) + 40;
  }

  v7 = re::HashTable<re::DynamicString,re::ConstantLocation,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v11, v10);
  re::DynamicString::DynamicString((v7 + 8), a2);
  *(v7 + 40) = *a3;
  v8 = v7 + 40;
  ++*(a1 + 40);
  return v8;
}

uint64_t re::ShaderParameterTableBuilder::addOriginalColorConstant(uint64_t a1, uint64_t a2, __int128 *a3, char a4)
{
  if (*(a2 + 8))
  {
    v4 = *(a2 + 16);
  }

  else
  {
    v4 = (a2 + 9);
  }

  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      v6 = v4[1];
      if (v6)
      {
        v7 = (v4 + 2);
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }

      v5 &= ~0x8000000000000000;
    }
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = v5;
  v10 = *a3;
  v11 = *(a3 + 16);
  v12 = a4;
  return re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::add(a1 + 272, &v13, &v10);
}

uint64_t re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::add(uint64_t a1, void *a2, __int128 *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 40 * HIDWORD(v11) + 16;
  }

  v7 = re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(a1, v11, v10);
  *(v7 + 8) = *a2;
  result = v7 + 16;
  v9 = *a3;
  *(v7 + 32) = *(a3 + 2);
  *(v7 + 16) = v9;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, const re::DynamicString *a2, _DWORD *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v13, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, v6, &v10, a2);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 56 * HIDWORD(v11) + 40;
  }

  v7 = re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v11, v10);
  re::DynamicString::DynamicString((v7 + 8), a2);
  *(v7 + 40) = *a3;
  v8 = v7 + 40;
  ++*(a1 + 40);
  return v8;
}

uint64_t re::DynamicArray<re::BufferSlice>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::BufferSlice>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 40 * v4;
  *v5 = 0;
  *(v5 + 24) = -1;
  result = std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v5, a2);
  *(v5 + 32) = *(a2 + 32);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

BOOL re::TextureParameterTableBuilder::bindTextureToSampler(re::TextureParameterTableBuilder *this, const re::DynamicString *a2, const re::DynamicString *a3, uint64_t a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v9 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(this + 224, a3);
  if (v9)
  {
    re::DynamicString::format(&v36, "%llu", v8, a4);
    v10 = v38;
    if (v37)
    {
      v10 = v39;
    }

    if (v10)
    {
      v11 = *v10;
      if (v11)
      {
        if (v37)
        {
          v12 = v39 + 1;
        }

        else
        {
          v12 = &v38[1];
        }

        v13 = *v12;
        if (*v12)
        {
          v14 = v12 + 1;
          do
          {
            v11 = 31 * v11 + v13;
            v15 = *v14++;
            v13 = v15;
          }

          while (v15);
        }

        v16 = v11 & 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v20 = re::Hash<re::DynamicString>::operator()(buf, &v36);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(this + 224, v20, buf, &v36);
    v21 = *&buf[12];
    v22 = re::Hash<re::DynamicString>::operator()(buf, a2);
    v23 = v22;
    if (*(this + 34))
    {
      v24 = v22 % *(this + 74);
      v25 = *(*(this + 35) + 4 * v24);
      if (v25 != 0x7FFFFFFF)
      {
        v35 = v16;
        v26 = *(this + 36);
        if (re::DynamicString::operator==(v26 + 56 * v25 + 8, a2))
        {
LABEL_28:
          ++*(this + 78);
          *(v26 + 56 * v25 + 40) = v16;
LABEL_31:
          if (v21 == 0x7FFFFFFF)
          {
            v29 = *v9;
            *buf = *(this + 19);
            re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(this + 224, &v36, buf);
            v30 = *(this + 19);
            if (v30 <= v29)
            {
              v40 = 0;
              v51 = 0u;
              v52 = 0u;
              v50 = 0u;
              memset(buf, 0, sizeof(buf));
              v32 = MEMORY[0x1E69E9C10];
              v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v41 = 136315906;
              v42 = "operator[]";
              v43 = 1024;
              if (v33)
              {
                v34 = 3;
              }

              else
              {
                v34 = 2;
              }

              v44 = 789;
              v45 = 2048;
              v46 = v29;
              v47 = 2048;
              v48 = v30;
              _os_log_send_and_compose_impl(v34, &v40, buf, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v41, 38, v35, v36);
              _os_crash_msg();
              __break(1u);
            }

            *buf = *(*(this + 21) + 8 * v29);
            re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((this + 136), buf);
            if (*buf)
            {
            }
          }

          if (v36 && (v37 & 1) != 0)
          {
            (*(*v36 + 40))();
          }

          return v9 != 0;
        }

        while (1)
        {
          v27 = *(v26 + 56 * v25);
          v25 = v27 & 0x7FFFFFFF;
          if ((v27 & 0x7FFFFFFF) == 0x7FFFFFFF)
          {
            break;
          }

          if (re::DynamicString::operator==(v26 + 56 * v25 + 8, a2))
          {
            goto LABEL_28;
          }
        }
      }
    }

    else
    {
      LODWORD(v24) = 0;
    }

    v28 = re::HashTable<re::DynamicString,re::WeakStringID,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(this + 272, v24, v23);
    re::DynamicString::DynamicString((v28 + 8), a2);
    *(v28 + 40) = v16;
    ++*(this + 78);
    goto LABEL_31;
  }

  v17 = *re::graphicsLogObjects(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 1))
    {
      v18 = *(a2 + 2);
    }

    else
    {
      v18 = a2 + 9;
    }

    if (*(a3 + 1))
    {
      v19 = *(a3 + 2);
    }

    else
    {
      v19 = a3 + 9;
    }

    *buf = 136315394;
    *&buf[4] = v18;
    *&buf[12] = 2080;
    *&buf[14] = v19;
    _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "Attempting to bind texture %s to non-existent sampler %s, skipping binding.", buf, 0x16u);
  }

  return v9 != 0;
}

uint64_t re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, _DWORD *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v15, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, v6, &v12, a2);
  v7 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v13, v12);
    re::DynamicString::DynamicString((v8 + 8), a2);
    *(v8 + 40) = *a3;
    v9 = v8 + 40;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 56 * v7;
    *(v10 + 40) = *a3;
    return v10 + 40;
  }

  return v9;
}

void re::MaterialParameterTableBuilder::buildFromParameterBlockArray(re::Allocator *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v118 = a1;
  v140 = *MEMORY[0x1E69E9840];
  v115 = a3;
  if (a3)
  {
    v5 = a3;
    a3 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 8 * v5;
    v17 = a2;
    do
    {
      v18 = *v17++;
      a3 += v18[58];
      v6 += v18[66];
      v7 += v18[74];
      v8 += v18[82];
      v9 += v18[5];
      v10 += v18[26];
      v11 += v18[15];
      v12 += v18[10];
      v13 += v18[20];
      v14 += v18[90];
      v15 += v18[98];
      v16 -= 8;
    }

    while (v16);
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
    LODWORD(v10) = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
  }

  v117 = v15;
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::init((a4 + 24), a1, a3);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::init((v4 + 88), v118, v6);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::init((v4 + 552), v118, v7);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::init((v4 + 616), v118, v8);
  re::ConstantTable::init((v4 + 152), v118, v9, v10);
  re::BufferTable::init((v4 + 264), v118, v11);
  *(v4 + 752) = v118;
  re::DynamicArray<re::TextureViews<re::TextureHandle>>::setCapacity((v4 + 752), v12);
  ++*(v4 + 776);
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init((v4 + 688), v118, v12);
  *(v4 + 856) = v118;
  re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity((v4 + 856), v13);
  ++*(v4 + 880);
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init((v4 + 792), v118, v13);
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init((v4 + 904), v118, v14);
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init((v4 + 968), v118, v117);
  if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
  {
    goto LABEL_126;
  }

  while (1)
  {
    re::MaterialParameterTable::initPassTechniqueMappings(v4, v118, 1, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
    v19 = a2;
    if (!v115)
    {
      break;
    }

    v20 = (v4 + 1096);
    v118 = 0x8040201008040201;
    while (1)
    {
      v21 = v19;
      v22 = *v19;
      if (*(*v19 + 464))
      {
        v135 = (v22 + 440);
        v23 = *(v22 + 456);
        if (v23 >= 0x10)
        {
          v24 = 0;
          v25 = *(v22 + 440);
          v26 = v23 >> 4;
          while (1)
          {
            v27 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v25), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            *(&v135 + 1) = v27 ^ 0xFFFFLL;
            if (v27 != 0xFFFFLL)
            {
              break;
            }

            v24 -= 16;
            ++v25;
            if (!--v26)
            {
              goto LABEL_17;
            }
          }

          v28 = __clz(__rbit64(v27 ^ 0xFFFFLL));
          v29 = v28 - v24;
          *&v136 = v28 - v24;
          if (v28 + 1 != v24)
          {
            do
            {
              re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addOrReplace((v4 + 24), (*(v135 + 8) + 40 * v29), *(v135 + 8) + 40 * v29 + 8);
              re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v135);
              v29 = v136;
            }

            while (v136 != -1);
          }
        }
      }

LABEL_17:
      if (*(v22 + 528))
      {
        v135 = (v22 + 504);
        v30 = *(v22 + 520);
        if (v30 >= 0x10)
        {
          v31 = 0;
          v32 = *(v22 + 504);
          v33 = v30 >> 4;
          while (1)
          {
            v34 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v32), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            *(&v135 + 1) = v34 ^ 0xFFFFLL;
            if (v34 != 0xFFFFLL)
            {
              break;
            }

            v31 -= 16;
            ++v32;
            if (!--v33)
            {
              goto LABEL_25;
            }
          }

          v35 = __clz(__rbit64(v34 ^ 0xFFFFLL));
          v36 = v35 - v31;
          *&v136 = v35 - v31;
          if (v35 + 1 != v31)
          {
            do
            {
              re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addOrReplace((v4 + 88), (*(v135 + 8) + 40 * v36), *(v135 + 8) + 40 * v36 + 8);
              re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v135);
              v36 = v136;
            }

            while (v136 != -1);
          }
        }
      }

LABEL_25:
      if (*(v22 + 592))
      {
        v135 = (v22 + 568);
        v37 = *(v22 + 584);
        if (v37 >= 0x10)
        {
          v38 = 0;
          v39 = *(v22 + 568);
          v40 = v37 >> 4;
          while (1)
          {
            v41 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v39), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            *(&v135 + 1) = v41 ^ 0xFFFFLL;
            if (v41 != 0xFFFFLL)
            {
              break;
            }

            v38 -= 16;
            ++v39;
            if (!--v40)
            {
              goto LABEL_33;
            }
          }

          v42 = __clz(__rbit64(v41 ^ 0xFFFFLL));
          v43 = v42 - v38;
          *&v136 = v42 - v38;
          if (v42 + 1 != v38)
          {
            do
            {
              re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addOrReplace((v4 + 552), (*(v135 + 8) + 40 * v43), *(v135 + 8) + 40 * v43 + 8);
              re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v135);
              v43 = v136;
            }

            while (v136 != -1);
          }
        }
      }

LABEL_33:
      if (*(v22 + 656))
      {
        v135 = (v22 + 632);
        v44 = *(v22 + 648);
        if (v44 >= 0x10)
        {
          v45 = 0;
          v46 = *(v22 + 632);
          v47 = v44 >> 4;
          while (1)
          {
            v48 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v46), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            *(&v135 + 1) = v48 ^ 0xFFFFLL;
            if (v48 != 0xFFFFLL)
            {
              break;
            }

            v45 -= 16;
            ++v46;
            if (!--v47)
            {
              goto LABEL_41;
            }
          }

          v49 = __clz(__rbit64(v48 ^ 0xFFFFLL));
          v50 = v49 - v45;
          *&v136 = v49 - v45;
          if (v49 + 1 != v45)
          {
            do
            {
              re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addOrReplace((v4 + 616), (*(v135 + 8) + 40 * v50), *(v135 + 8) + 40 * v50 + 8);
              re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v135);
              v50 = v136;
            }

            while (v136 != -1);
          }
        }
      }

LABEL_41:
      v51 = *(v22 + 40);
      if (v51)
      {
        memcpy(*(v4 + 192), *(v22 + 56), v51);
        v135 = (v22 + 184);
        v52 = *(v22 + 200);
        if (v52 >= 0x10)
        {
          v53 = 0;
          v54 = *(v22 + 184);
          v55 = v52 >> 4;
          while (1)
          {
            v56 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v54), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            *(&v135 + 1) = v56 ^ 0xFFFFLL;
            if (v56 != 0xFFFFLL)
            {
              break;
            }

            v53 -= 16;
            ++v54;
            if (!--v55)
            {
              goto LABEL_52;
            }
          }

          v57 = __clz(__rbit64(v56 ^ 0xFFFFLL));
          v58 = v57 - v53;
          *&v136 = v57 - v53;
          if (v57 + 1 != v53)
          {
            do
            {
              v59 = *(v135 + 8) + 16 * v58;
              v60 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 200), v59);
              if (v60 == -1)
              {
                re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::internalAdd((v4 + 200), v59, (v59 + 8));
              }

              else
              {
                v61 = v60;
                re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::updateKvpsHash(v4 + 200, *(v4 + 208) + 16 * v60);
                *(*(v4 + 208) + 16 * v61 + 8) = *(v59 + 8);
                re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::updateKvpsHash(v4 + 200, *(v4 + 208) + 16 * v61);
              }

              re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v135);
              v58 = v136;
            }

            while (v136 != -1);
          }
        }
      }

LABEL_52:
      if (*(v22 + 120))
      {
        v123 = v22 + 248;
        v124 = 0;
        v62 = *(v22 + 264);
        if (v62 >= 0x10)
        {
          v63 = 0;
          v64 = *(v22 + 248);
          v65 = v62 >> 4;
          while (1)
          {
            v66 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v64), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            v124 = v66 ^ 0xFFFFLL;
            if (v66 != 0xFFFFLL)
            {
              break;
            }

            v63 -= 16;
            ++v64;
            if (!--v65)
            {
              goto LABEL_63;
            }
          }

          v67 = __clz(__rbit64(v66 ^ 0xFFFFLL));
          v68 = v67 - v63;
          v125 = v67 - v63;
          if (v67 + 1 != v63)
          {
            while (1)
            {
              v69 = *(v123 + 8) + 16 * v68;
              v70 = *(v69 + 8);
              LOBYTE(v135) = v70;
              re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew((v4 + 264), v69, &v135);
              if (*(v4 + 544) <= v70)
              {
                *(v4 + 544) = v70 + 1;
              }

              v71 = *(v69 + 8);
              v72 = *(v22 + 120);
              if (v72 <= v71)
              {
                break;
              }

              re::BufferTable::setBuffer((v4 + 264), v71, (*(v22 + 136) + 40 * v71));
              re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v123);
              v68 = v125;
              if (v125 == -1)
              {
                goto LABEL_63;
              }
            }

            v126 = 0;
            v138 = 0u;
            v139 = 0u;
            v136 = 0u;
            v137 = 0u;
            v135 = 0u;
            v106 = MEMORY[0x1E69E9C10];
            v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v127 = 136315906;
            v128 = "operator[]";
            v129 = 1024;
            if (v107)
            {
              v108 = 3;
            }

            else
            {
              v108 = 2;
            }

            v130 = 789;
            v131 = 2048;
            v132 = v71;
            v133 = 2048;
            v134 = v72;
            _os_log_send_and_compose_impl(v108, &v126, &v135, 80, &dword_1E1C61000, v106, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v127, 38, v114, v115);
            _os_crash_msg();
            __break(1u);
            goto LABEL_118;
          }
        }
      }

LABEL_63:
      if (*(v22 + 80))
      {
        v123 = v22 + 312;
        v124 = 0;
        v73 = *(v22 + 328);
        if (v73 >= 0x10)
        {
          v74 = 0;
          v75 = *(v22 + 312);
          v76 = v73 >> 4;
          while (1)
          {
            v77 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v75), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            v124 = v77 ^ 0xFFFFLL;
            if (v77 != 0xFFFFLL)
            {
              break;
            }

            v74 -= 16;
            ++v75;
            if (!--v76)
            {
              goto LABEL_75;
            }
          }

          v78 = __clz(__rbit64(v77 ^ 0xFFFFLL));
          v79 = v78 - v74;
          v125 = v78 - v74;
          if (v78 + 1 != v74)
          {
            while (1)
            {
              v80 = *(v123 + 8) + 16 * v79;
              v71 = *(v80 + 8);
              v72 = *(v22 + 80);
              if (v72 <= v71)
              {
                break;
              }

              v81 = (*(v22 + 96) + 16 * v71);
              if (*(v81 + 1) && *v81)
              {
                v122 = *v80;
                re::TextureHandle::TextureHandle(v121, v81);
                re::TextureHandleTable::setTexture((v4 + 680), &v122, v121);
                re::TextureHandle::invalidate(v121);
                v122 = 0;
              }

              re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v123);
              v79 = v125;
              if (v125 == -1)
              {
                goto LABEL_75;
              }
            }

LABEL_118:
            v126 = 0;
            v138 = 0u;
            v139 = 0u;
            v136 = 0u;
            v137 = 0u;
            v135 = 0u;
            v109 = MEMORY[0x1E69E9C10];
            v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v127 = 136315906;
            v128 = "operator[]";
            v129 = 1024;
            if (v110)
            {
              v111 = 3;
            }

            else
            {
              v111 = 2;
            }

            v130 = 789;
            v131 = 2048;
            v132 = v71;
            v133 = 2048;
            v134 = v72;
            _os_log_send_and_compose_impl(v111, &v126, &v135, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v127, 38, v114, v115);
            _os_crash_msg();
            __break(1u);
            goto LABEL_122;
          }
        }
      }

LABEL_75:
      if (*(v22 + 160))
      {
        v123 = v22 + 376;
        v124 = 0;
        v82 = *(v22 + 392);
        if (v82 >= 0x10)
        {
          v83 = 0;
          v84 = *(v22 + 376);
          v85 = v82 >> 4;
          while (1)
          {
            v86 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v84), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            v124 = v86 ^ 0xFFFFLL;
            if (v86 != 0xFFFFLL)
            {
              break;
            }

            v83 -= 16;
            ++v84;
            if (!--v85)
            {
              goto LABEL_86;
            }
          }

          v87 = __clz(__rbit64(v86 ^ 0xFFFFLL));
          v88 = v87 - v83;
          v125 = v87 - v83;
          if (v87 + 1 != v83)
          {
            break;
          }
        }
      }

LABEL_86:
      if (*(v22 + 720))
      {
        v135 = (v22 + 696);
        v90 = *(v22 + 712);
        if (v90 >= 0x10)
        {
          v91 = 0;
          v92 = *(v22 + 696);
          v93 = v90 >> 4;
          while (1)
          {
            v94 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v92), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            *(&v135 + 1) = v94 ^ 0xFFFFLL;
            if (v94 != 0xFFFFLL)
            {
              break;
            }

            v91 -= 16;
            ++v92;
            if (!--v93)
            {
              goto LABEL_94;
            }
          }

          v95 = __clz(__rbit64(v94 ^ 0xFFFFLL));
          v96 = v95 - v91;
          *&v136 = v95 - v91;
          if (v95 + 1 != v91)
          {
            do
            {
              re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::addNew((v4 + 904), (*(v135 + 8) + 16 * v96), (*(v135 + 8) + 16 * v96 + 8));
              re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v135);
              v96 = v136;
            }

            while (v136 != -1);
          }
        }
      }

LABEL_94:
      if (*(v22 + 784))
      {
        v135 = (v22 + 760);
        v97 = *(v22 + 776);
        if (v97 >= 0x10)
        {
          v98 = 0;
          v99 = *(v22 + 760);
          v100 = v97 >> 4;
          while (1)
          {
            v101 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v99), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            *(&v135 + 1) = v101 ^ 0xFFFFLL;
            if (v101 != 0xFFFFLL)
            {
              break;
            }

            v98 -= 16;
            ++v99;
            if (!--v100)
            {
              goto LABEL_102;
            }
          }

          v102 = __clz(__rbit64(v101 ^ 0xFFFFLL));
          v103 = v102 - v98;
          *&v136 = v102 - v98;
          if (v102 + 1 != v98)
          {
            do
            {
              re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::addNew((v4 + 968), (*(v135 + 8) + 16 * v103), (*(v135 + 8) + 16 * v103 + 8));
              re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v135);
              v103 = v136;
            }

            while (v136 != -1);
          }
        }
      }

LABEL_102:
      if (*(v22 + 916))
      {
        re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator=(v4 + 1032, v22 + 888);
      }

      if (*(v22 + 936) == 1)
      {
        v104 = *(v22 + 937);
        if ((*(v4 + 1080) & 1) == 0)
        {
          *(v4 + 1080) = 1;
        }

        *(v4 + 1081) = v104;
      }

      if (*(v22 + 948) == 1)
      {
        *(&v135 + 3) = *(v22 + 952);
        *(&v135 + 11) = *(v22 + 960);
        if (*(v4 + 1092))
        {
          v105 = *(v22 + 952);
          *(v4 + 1104) = *(v22 + 960);
          *v20 = v105;
        }

        else
        {
          *(v4 + 1092) = 1;
          *v20 = *(&v135 + 3);
          *(v4 + 1104) = *(&v135 + 11);
        }
      }

      v19 = v21 + 1;
      if (v21 + 1 == &a2[v115])
      {
        return;
      }
    }

    while (1)
    {
      v89 = *(v123 + 8) + 16 * v88;
      v120 = *v89;
      v71 = *(v89 + 8);
      v72 = *(v22 + 160);
      if (v72 <= v71)
      {
        break;
      }

      v119 = *(*(v22 + 176) + 8 * v71);
      re::SamplerTable::setSampler((v4 + 792), &v120, &v119);
      if (v119)
      {

        v119 = 0;
      }

      v120 = 0;
      re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v123);
      v88 = v125;
      if (v125 == -1)
      {
        goto LABEL_86;
      }
    }

LABEL_122:
    v126 = 0;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v135 = 0u;
    v4 = MEMORY[0x1E69E9C10];
    v112 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v127 = 136315906;
    v128 = "operator[]";
    v129 = 1024;
    if (v112)
    {
      v113 = 3;
    }

    else
    {
      v113 = 2;
    }

    v130 = 789;
    v131 = 2048;
    v132 = v71;
    v133 = 2048;
    v134 = v72;
    _os_log_send_and_compose_impl(v113, &v126, &v135, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v127, 38, v114, v115);
    _os_crash_msg();
    __break(1u);
LABEL_126:
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }
}

void *re::ConstantTable::init(re::ConstantTable *this, re::Allocator *a2, unint64_t a3, unsigned int a4)
{
  *(this + 1) = a2;
  v7 = this + 8;
  re::DynamicArray<BOOL>::setCapacity(this + 1, a3);
  ++*(v7 + 6);
  re::DynamicArray<unsigned char>::resizeUninitialized(v7, a3);

  return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v7 + 5, a2, a4);
}

void re::BufferTable::init(re::BufferTable *this, re::Allocator *a2, unint64_t a3)
{
  *(this + 8) = a2;
  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(this + 8, a3);
  ++*(this + 22);
  re::BucketArray<re::BufferSlice,8ul>::init(this + 144, a2, a3);
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(this, a2, a3);
  *(this + 25) = a2;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(this + 25, a3);
  ++*(this + 56);
  *(this + 30) = a2;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(this + 30, a3);
  ++*(this + 66);

  re::BufferTable::resize(this, a3);
}

uint64_t re::BufferTable::setBuffer(re::BufferTable *this, unint64_t a2, const re::BufferSlice *a3)
{
  if (*(this + 70) <= a2)
  {
    *(this + 70) = a2 + 1;
  }

  re::BufferTable::setBufferRef(this, a2, a3);
  v6 = re::BucketArray<re::BufferSlice,8ul>::operator[](this + 144, a2);
  v13[2] = *(a3 + 4);
  v7 = *(v6 + 24);
  if (v7 == -1)
  {
    v10 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::addNew(v10, v11, v12);
  }

  else
  {
    v15 = &v14;
    v13[0] = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_10BufferViewC1ERKNS6_11BufferSliceEmmE3__0ZNS9_C1ESC_mmE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v7])(&v15, v6);
    v13[1] = v8;
    re::BufferTable::setBufferView(this, a2, v13);
    return re::BufferTable::setBufferIndirectResources(this, a2, 0, 0);
  }
}

unint64_t re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::addNew(uint64_t *a1, void *a2, void *a3)
{
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (result == -1)
  {

    return re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::internalAdd(a1, a2, a3);
  }

  return result;
}

void re::MaterialParameterTableBuilder::build(re::MaterialParameterTableBuilder *this, re::Allocator *a2, const re::MaterialParameterBlock *a3, re::MaterialParameterTable *a4)
{
  v4 = a3;
  v96 = *MEMORY[0x1E69E9840];
  *(a3 + 1121) = 0;
  v7 = (a3 + 24);
  v8 = (a2 + 440);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::init(a3 + 3, this, *(a2 + 116));
  v9 = v4 + 88;
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::init(v4 + 11, this, *(a2 + 132));
  v10 = (v4 + 552);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::init(v4 + 69, this, *(a2 + 148));
  v11 = v4 + 616;
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::init(v4 + 77, this, *(a2 + 164));
  re::ConstantTable::init((v4 + 152), this, *(a2 + 5), *(a2 + 26));
  re::BufferTable::init((v4 + 264), this, *(a2 + 15));
  v12 = *(a2 + 10);
  *(v4 + 94) = this;
  re::DynamicArray<re::TextureViews<re::TextureHandle>>::setCapacity(v4 + 94, v12);
  ++*(v4 + 194);
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v4 + 86, this, v12);
  v13 = *(a2 + 20);
  *(v4 + 107) = this;
  re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v4 + 107, v13);
  ++*(v4 + 220);
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v4 + 99, this, v13);
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v4 + 113, this, *(a2 + 90));
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v4 + 121, this, *(a2 + 98));
  if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
  {
    goto LABEL_96;
  }

  while (1)
  {
    re::MaterialParameterTable::initPassTechniqueMappings(v4, this, 1, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
    if (v7 != v8 && *(a2 + 58))
    {
      re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::copy(v7, v8);
    }

    v7 = (a2 + 568);
    if (v9 != (a2 + 504) && *(a2 + 66))
    {
      re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::copy(v9, a2 + 504);
    }

    if (v10 != v7 && *(a2 + 74))
    {
      re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::copy(v10, a2 + 568);
    }

    if (v11 != (a2 + 632) && *(a2 + 82))
    {
      re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::copy(v11, a2 + 632);
    }

    v14 = *(a2 + 5);
    if (v14)
    {
      memcpy(*(v4 + 24), *(a2 + 7), v14);
      v91 = a2 + 184;
      v15 = *(a2 + 25);
      if (v15 >= 0x10)
      {
        v16 = 0;
        v17 = *(a2 + 23);
        v18 = v15 >> 4;
        while (1)
        {
          v19 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v17), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          *(&v91 + 1) = v19 ^ 0xFFFFLL;
          if (v19 != 0xFFFFLL)
          {
            break;
          }

          v16 -= 16;
          ++v17;
          if (!--v18)
          {
            goto LABEL_22;
          }
        }

        v20 = __clz(__rbit64(v19 ^ 0xFFFFLL));
        v21 = v20 - v16;
        *&v92 = v20 - v16;
        if (v20 + 1 != v16)
        {
          do
          {
            v22 = *(v91 + 8) + 16 * v21;
            *v86 = *v22;
            *&v86[8] = *(v22 + 8);
            re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::addNew(v4 + 25, v86, &v86[8]);
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v91);
            v21 = v92;
          }

          while (v92 != -1);
        }
      }
    }

LABEL_22:
    v10 = &v91;
    if (*(a2 + 15))
    {
      v82 = a2 + 248;
      v83 = 0;
      v23 = *(a2 + 33);
      if (v23 >= 0x10)
      {
        v24 = 0;
        v25 = *(a2 + 31);
        v26 = v23 >> 4;
        while (1)
        {
          v27 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v25), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v83 = v27 ^ 0xFFFFLL;
          if (v27 != 0xFFFFLL)
          {
            break;
          }

          v24 -= 16;
          ++v25;
          if (!--v26)
          {
            goto LABEL_34;
          }
        }

        v28 = __clz(__rbit64(v27 ^ 0xFFFFLL));
        v29 = v28 - v24;
        v84 = v28 - v24;
        if (v28 + 1 != v24)
        {
          v9 = 40;
          while (1)
          {
            v30 = *(v82 + 1) + 16 * v29;
            v80 = *v30;
            v31 = *(v30 + 8);
            v81 = v31;
            LOBYTE(v91) = v31;
            re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v4 + 33, &v80, &v91);
            if (*(v4 + 136) <= v31)
            {
              *(v4 + 136) = v31 + 1;
            }

            v11 = v81;
            v7 = *(a2 + 15);
            if (v7 <= v81)
            {
              break;
            }

            re::BufferTable::setBuffer((v4 + 264), v81, (*(a2 + 17) + 40 * v81));
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v82);
            v29 = v84;
            if (v84 == -1)
            {
              goto LABEL_34;
            }
          }

          v85 = 0;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v91 = 0u;
          v67 = MEMORY[0x1E69E9C10];
          v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v86 = 136315906;
          *&v86[4] = "operator[]";
          *&v86[12] = 1024;
          if (v68)
          {
            v69 = 3;
          }

          else
          {
            v69 = 2;
          }

          *&v86[14] = 797;
          v87 = 2048;
          v88 = v11;
          v89 = 2048;
          v90 = v7;
          _os_log_send_and_compose_impl(v69, &v85, &v91, 80, &dword_1E1C61000, v67, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v86, 38, v75, v76);
          _os_crash_msg();
          __break(1u);
          goto LABEL_88;
        }
      }
    }

LABEL_34:
    if (!*(a2 + 10))
    {
      break;
    }

    v82 = a2 + 312;
    v83 = 0;
    v32 = *(a2 + 41);
    if (v32 < 0x10)
    {
      break;
    }

    v33 = 0;
    v34 = *(a2 + 39);
    v35 = v32 >> 4;
    while (1)
    {
      v36 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v34), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v83 = v36 ^ 0xFFFFLL;
      if (v36 != 0xFFFFLL)
      {
        break;
      }

      v33 -= 16;
      ++v34;
      if (!--v35)
      {
        goto LABEL_46;
      }
    }

    v37 = __clz(__rbit64(v36 ^ 0xFFFFLL));
    v38 = v37 - v33;
    v84 = v37 - v33;
    if (v37 + 1 == v33)
    {
      break;
    }

    while (1)
    {
      v39 = *(v82 + 1) + 16 * v38;
      v11 = *(v39 + 8);
      v9 = *(a2 + 10);
      if (v9 <= v11)
      {
        break;
      }

      v40 = (*(a2 + 12) + 16 * v11);
      if (*(v40 + 1) && *v40)
      {
        v79 = *v39;
        re::TextureHandle::TextureHandle(v78, v40);
        re::TextureHandleTable::setTexture(v4 + 85, &v79, v78);
        re::TextureHandle::invalidate(v78);
        v79 = 0;
      }

      re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v82);
      v38 = v84;
      if (v84 == -1)
      {
        goto LABEL_46;
      }
    }

LABEL_88:
    v80 = 0;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v91 = 0u;
    v70 = MEMORY[0x1E69E9C10];
    v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v86 = 136315906;
    *&v86[4] = "operator[]";
    *&v86[12] = 1024;
    if (v71)
    {
      v72 = 3;
    }

    else
    {
      v72 = 2;
    }

    *&v86[14] = 797;
    v87 = 2048;
    v88 = v11;
    v89 = 2048;
    v90 = v9;
    _os_log_send_and_compose_impl(v72, &v80, &v91, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v86, 38, v75, v76);
    _os_crash_msg();
    __break(1u);
LABEL_92:
    v80 = 0;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v91 = 0u;
    v4 = MEMORY[0x1E69E9C10];
    v73 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v86 = 136315906;
    *&v86[4] = "operator[]";
    *&v86[12] = 1024;
    if (v73)
    {
      v74 = 3;
    }

    else
    {
      v74 = 2;
    }

    *&v86[14] = 797;
    v87 = 2048;
    v88 = v11;
    v89 = 2048;
    v90 = v9;
    _os_log_send_and_compose_impl(v74, &v80, &v91, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v86, 38, v75, v76);
    _os_crash_msg();
    __break(1u);
LABEL_96:
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

LABEL_46:
  if (*(a2 + 20))
  {
    v82 = a2 + 376;
    v83 = 0;
    v41 = *(a2 + 49);
    if (v41 >= 0x10)
    {
      v42 = 0;
      v43 = *(a2 + 47);
      v44 = v41 >> 4;
      while (1)
      {
        v45 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v43), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
        v83 = v45 ^ 0xFFFFLL;
        if (v45 != 0xFFFFLL)
        {
          break;
        }

        v42 -= 16;
        ++v43;
        if (!--v44)
        {
          goto LABEL_57;
        }
      }

      v46 = __clz(__rbit64(v45 ^ 0xFFFFLL));
      v47 = v46 - v42;
      v84 = v46 - v42;
      if (v46 + 1 != v42)
      {
        do
        {
          v48 = *(v82 + 1) + 16 * v47;
          v11 = *(v48 + 8);
          v77 = *v48;
          v9 = *(a2 + 20);
          if (v9 <= v11)
          {
            goto LABEL_92;
          }

          v76 = *(*(a2 + 22) + 8 * v11);
          re::SamplerTable::setSampler(v4 + 99, &v77, &v76);
          if (v76)
          {

            v76 = 0;
          }

          v77 = 0;
          re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v82);
          v47 = v84;
        }

        while (v84 != -1);
      }
    }
  }

LABEL_57:
  if (*(a2 + 90))
  {
    *&v91 = a2 + 696;
    v49 = *(a2 + 89);
    if (v49 >= 0x10)
    {
      v50 = 0;
      v51 = *(a2 + 87);
      v52 = v49 >> 4;
      while (1)
      {
        v53 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v51), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
        *(&v91 + 1) = v53 ^ 0xFFFFLL;
        if (v53 != 0xFFFFLL)
        {
          break;
        }

        v50 -= 16;
        ++v51;
        if (!--v52)
        {
          goto LABEL_65;
        }
      }

      v54 = __clz(__rbit64(v53 ^ 0xFFFFLL));
      v55 = v54 - v50;
      *&v92 = v54 - v50;
      if (v54 + 1 != v50)
      {
        do
        {
          v56 = (*(v91 + 8) + 16 * v55);
          *v86 = *v56;
          *&v86[8] = v56[1];
          re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::addNew(v4 + 113, v86, &v86[8]);
          re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v91);
          v55 = v92;
        }

        while (v92 != -1);
      }
    }
  }

LABEL_65:
  if (*(a2 + 98))
  {
    *&v91 = a2 + 760;
    v57 = *(a2 + 97);
    if (v57 >= 0x10)
    {
      v58 = 0;
      v59 = *(a2 + 95);
      v60 = v57 >> 4;
      while (1)
      {
        v61 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v59), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
        *(&v91 + 1) = v61 ^ 0xFFFFLL;
        if (v61 != 0xFFFFLL)
        {
          break;
        }

        v58 -= 16;
        ++v59;
        if (!--v60)
        {
          goto LABEL_73;
        }
      }

      v62 = __clz(__rbit64(v61 ^ 0xFFFFLL));
      v63 = v62 - v58;
      *&v92 = v62 - v58;
      if (v62 + 1 != v58)
      {
        do
        {
          v64 = *(v91 + 8) + 16 * v63;
          *v86 = *v64;
          *&v86[8] = *(v64 + 8);
          re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::addNew(v4 + 121, v86, &v86[8]);
          re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v91);
          v63 = v92;
        }

        while (v92 != -1);
      }
    }
  }

LABEL_73:
  if (*(a2 + 229))
  {
    re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator=(v4 + 1032, a2 + 888);
  }

  if (*(a2 + 936) == 1)
  {
    v65 = *(a2 + 937);
    if ((*(v4 + 1080) & 1) == 0)
    {
      *(v4 + 1080) = 1;
    }

    *(v4 + 1081) = v65;
  }

  if (*(a2 + 948) == 1)
  {
    *(&v91 + 3) = *(a2 + 119);
    *(&v91 + 11) = *(a2 + 240);
    if (*(v4 + 1092))
    {
      v66 = *(a2 + 119);
      *(v4 + 276) = *(a2 + 240);
      *(v4 + 137) = v66;
    }

    else
    {
      *(v4 + 1092) = 1;
      *(v4 + 137) = *(&v91 + 3);
      *(v4 + 276) = *(&v91 + 11);
    }
  }
}

void re::ShaderParameterTableBuilder::build(int **this, void **a2)
{
  v3 = this;
  v81 = *MEMORY[0x1E69E9840];
  v4 = *(this + 8);
  if (v4)
  {
    v5 = 0;
    v6 = this[2];
    while (1)
    {
      v7 = *v6;
      v6 += 22;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(this + 8);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  while (v5 != v4)
  {
    v8 = &v3[2][22 * v5];
    v9 = *(v8 + 16);
    if (v9)
    {
      v11 = *(v8 + 24);
      if (!v11)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_19;
      }

      LOBYTE(v12) = *v11;
    }

    else
    {
      v10 = v9 >> 8;
      v11 = (v8 + 17);
      LOBYTE(v12) = v10;
    }

    if (v12)
    {
      v12 = v12;
      v13 = v11[1];
      if (v13)
      {
        v14 = v11 + 2;
        do
        {
          v12 = 31 * v12 + v13;
          v15 = *v14++;
          v13 = v15;
        }

        while (v15);
      }

      v16 = v12 & 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = 0;
    }

LABEL_19:
    *v69 = v16;
    LODWORD(v76) = *(v8 + 40);
    *(&v76 + 1) = *(v8 + 48);
    LOBYTE(v77) = *(v8 + 56);
    *(&v77 + 1) = *(v8 + 64) >> 1;
    this = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addNew(a2, v69, &v76);
    v17 = *(v3 + 8);
    if (v17 <= v5 + 1)
    {
      v17 = v5 + 1;
    }

    while (v17 - 1 != v5)
    {
      LODWORD(v5) = v5 + 1;
      if (v3[2][22 * v5] < 0)
      {
        goto LABEL_25;
      }
    }

    LODWORD(v5) = v17;
LABEL_25:
    ;
  }

  v18 = *(v3 + 20);
  if (v18)
  {
    v19 = 0;
    v20 = v3[8];
    while (1)
    {
      v21 = *v20;
      v20 += 22;
      if (v21 < 0)
      {
        break;
      }

      if (v18 == ++v19)
      {
        LODWORD(v19) = *(v3 + 20);
        break;
      }
    }
  }

  else
  {
    LODWORD(v19) = 0;
  }

  while (v19 != v18)
  {
    v22 = &v3[8][22 * v19];
    v23 = *(v22 + 16);
    if (v23)
    {
      v25 = *(v22 + 24);
      if (!v25)
      {
        v30 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_44;
      }

      LOBYTE(v26) = *v25;
    }

    else
    {
      v24 = v23 >> 8;
      v25 = (v22 + 17);
      LOBYTE(v26) = v24;
    }

    if (v26)
    {
      v26 = v26;
      v27 = v25[1];
      if (v27)
      {
        v28 = v25 + 2;
        do
        {
          v26 = 31 * v26 + v27;
          v29 = *v28++;
          v27 = v29;
        }

        while (v29);
      }

      v30 = v26 & 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v30 = 0;
    }

LABEL_44:
    *v69 = v30;
    LODWORD(v76) = *(v22 + 40);
    *(&v76 + 1) = *(v22 + 48);
    LOBYTE(v77) = *(v22 + 56);
    *(&v77 + 1) = *(v22 + 64) >> 1;
    this = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addNew(a2 + 8, v69, &v76);
    v31 = *(v3 + 20);
    if (v31 <= v19 + 1)
    {
      v31 = v19 + 1;
    }

    while (v31 - 1 != v19)
    {
      LODWORD(v19) = v19 + 1;
      if (v3[8][22 * v19] < 0)
      {
        goto LABEL_50;
      }
    }

    LODWORD(v19) = v31;
LABEL_50:
    ;
  }

  v32 = memcpy(a2[21], v3[16], v3[14]);
  v33 = *(v3 + 52);
  if (v33)
  {
    v34 = 0;
    v35 = v3[24];
    while (1)
    {
      v36 = *v35;
      v35 += 14;
      if (v36 < 0)
      {
        break;
      }

      if (v33 == ++v34)
      {
        LODWORD(v34) = *(v3 + 52);
        break;
      }
    }
  }

  else
  {
    LODWORD(v34) = 0;
  }

  while (v34 != v33)
  {
    v37 = &v3[24][14 * v34];
    v38 = *(v37 + 16);
    if (v38)
    {
      v40 = *(v37 + 24);
      if (!v40)
      {
        v45 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_69;
      }

      LOBYTE(v41) = *v40;
    }

    else
    {
      v39 = v38 >> 8;
      v40 = (v37 + 17);
      LOBYTE(v41) = v39;
    }

    if (v41)
    {
      v41 = v41;
      v42 = v40[1];
      if (v42)
      {
        v43 = v40 + 2;
        do
        {
          v41 = 31 * v41 + v42;
          v44 = *v43++;
          v42 = v44;
        }

        while (v44);
      }

      v45 = v41 & 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v45 = 0;
    }

LABEL_69:
    *&v76 = v45;
    v32 = re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::addNew(a2 + 22, &v76, (v37 + 40));
    v46 = *(v3 + 52);
    if (v46 <= v34 + 1)
    {
      v46 = v34 + 1;
    }

    while (v46 - 1 != v34)
    {
      LODWORD(v34) = v34 + 1;
      if (v3[24][14 * v34] < 0)
      {
        goto LABEL_75;
      }
    }

    LODWORD(v34) = v46;
LABEL_75:
    ;
  }

  v47 = *(v3 + 64);
  if (v47)
  {
    v48 = 0;
    v49 = v3[30];
    while (1)
    {
      v50 = *v49;
      v49 += 14;
      if (v50 < 0)
      {
        break;
      }

      if (v47 == ++v48)
      {
        LODWORD(v48) = *(v3 + 64);
        break;
      }
    }
  }

  else
  {
    LODWORD(v48) = 0;
  }

  while (v48 != v47)
  {
    v51 = &v3[30][14 * v48];
    v52 = *(v51 + 16);
    if (v52)
    {
      v54 = *(v51 + 24);
      if (!v54)
      {
        v59 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_94;
      }

      LOBYTE(v55) = *v54;
    }

    else
    {
      v53 = v52 >> 8;
      v54 = (v51 + 17);
      LOBYTE(v55) = v53;
    }

    if (v55)
    {
      v55 = v55;
      v56 = v54[1];
      if (v56)
      {
        v57 = v54 + 2;
        do
        {
          v55 = 31 * v55 + v56;
          v58 = *v57++;
          v56 = v58;
        }

        while (v58);
      }

      v59 = v55 & 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v59 = 0;
    }

LABEL_94:
    *&v76 = v59;
    v60 = *(v51 + 40);
    v69[0] = v60;
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(a2 + 30, &v76, v69);
    if (*(a2 + 130) <= v60)
    {
      *(a2 + 130) = v60 + 1;
    }

    v61 = *(v51 + 40);
    v62 = v3[19];
    if (v62 <= v61)
    {
      v68 = 0;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v76 = 0u;
      v64 = MEMORY[0x1E69E9C10];
      v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v69 = 136315906;
      *&v69[4] = "operator[]";
      v70 = 1024;
      if (v65)
      {
        v66 = 3;
      }

      else
      {
        v66 = 2;
      }

      v71 = 797;
      v72 = 2048;
      v73 = v61;
      v74 = 2048;
      v75 = v62;
      _os_log_send_and_compose_impl(v66, &v68, &v76, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v69, 38, v67);
      _os_crash_msg();
      __break(1u);
    }

    re::BufferTable::setBuffer((a2 + 30), v61, &v3[21][10 * v61]);
    v63 = *(v3 + 64);
    if (v63 <= v48 + 1)
    {
      v63 = v48 + 1;
    }

    while (v63 - 1 != v48)
    {
      LODWORD(v48) = v48 + 1;
      if (v3[30][14 * v48] < 0)
      {
        goto LABEL_103;
      }
    }

    LODWORD(v48) = v63;
LABEL_103:
    ;
  }
}

uint64_t re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addNew(uint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::find(a1, a2);
  if (v6 != -1)
  {
    return a1[1] + 40 * v6 + 8;
  }

  return re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::internalAdd(a1, a2, a3);
}

void re::TextureParameterTableBuilder::build(int **this, re::TextureParameterTable *a2)
{
  v3 = this;
  v109 = *MEMORY[0x1E69E9840];
  v4 = *(this + 8);
  if (v4)
  {
    v5 = 0;
    v6 = this[2];
    while (1)
    {
      v7 = *v6;
      v6 += 22;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(this + 8);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  while (v5 != v4)
  {
    v8 = &v3[2][22 * v5];
    v9 = *(v8 + 16);
    if (v9)
    {
      v11 = *(v8 + 24);
      if (!v11)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_19;
      }

      LOBYTE(v12) = *v11;
    }

    else
    {
      v10 = v9 >> 8;
      v11 = (v8 + 17);
      LOBYTE(v12) = v10;
    }

    if (v12)
    {
      v12 = v12;
      v13 = v11[1];
      if (v13)
      {
        v14 = v11 + 2;
        do
        {
          v12 = 31 * v12 + v13;
          v15 = *v14++;
          v13 = v15;
        }

        while (v15);
      }

      v16 = v12 & 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = 0;
    }

LABEL_19:
    *v97 = v16;
    LODWORD(v104) = *(v8 + 40);
    *(&v104 + 1) = *(v8 + 48);
    LOBYTE(v105) = *(v8 + 56);
    *(&v105 + 1) = *(v8 + 64) >> 1;
    this = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addNew(a2, v97, &v104);
    v17 = *(v3 + 8);
    if (v17 <= v5 + 1)
    {
      v17 = v5 + 1;
    }

    while (v17 - 1 != v5)
    {
      LODWORD(v5) = v5 + 1;
      if (v3[2][22 * v5] < 0)
      {
        goto LABEL_25;
      }
    }

    LODWORD(v5) = v17;
LABEL_25:
    ;
  }

  v18 = *(v3 + 20);
  if (v18)
  {
    v19 = 0;
    v20 = v3[8];
    while (1)
    {
      v21 = *v20;
      v20 += 22;
      if (v21 < 0)
      {
        break;
      }

      if (v18 == ++v19)
      {
        LODWORD(v19) = *(v3 + 20);
        break;
      }
    }
  }

  else
  {
    LODWORD(v19) = 0;
  }

  while (v19 != v18)
  {
    v22 = &v3[8][22 * v19];
    v23 = *(v22 + 16);
    if (v23)
    {
      v25 = *(v22 + 24);
      if (!v25)
      {
        v30 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_44;
      }

      LOBYTE(v26) = *v25;
    }

    else
    {
      v24 = v23 >> 8;
      v25 = (v22 + 17);
      LOBYTE(v26) = v24;
    }

    if (v26)
    {
      v26 = v26;
      v27 = v25[1];
      if (v27)
      {
        v28 = v25 + 2;
        do
        {
          v26 = 31 * v26 + v27;
          v29 = *v28++;
          v27 = v29;
        }

        while (v29);
      }

      v30 = v26 & 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v30 = 0;
    }

LABEL_44:
    *v97 = v30;
    LODWORD(v104) = *(v22 + 40);
    *(&v104 + 1) = *(v22 + 48);
    LOBYTE(v105) = *(v22 + 56);
    *(&v105 + 1) = *(v22 + 64) >> 1;
    this = re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addNew(a2 + 8, v97, &v104);
    v31 = *(v3 + 20);
    if (v31 <= v19 + 1)
    {
      v31 = v19 + 1;
    }

    while (v31 - 1 != v19)
    {
      LODWORD(v19) = v19 + 1;
      if (v3[8][22 * v19] < 0)
      {
        goto LABEL_50;
      }
    }

    LODWORD(v19) = v31;
LABEL_50:
    ;
  }

  v32 = v3[14];
  re::DynamicArray<re::TextureViews<re::TextureHandle>>::setCapacity(a2 + 25, v32);
  ++*(a2 + 56);
  v33 = *(v3 + 52);
  if (v33)
  {
    v34 = 0;
    v35 = v3[24];
    while (1)
    {
      v36 = *v35;
      v35 += 14;
      if (v36 < 0)
      {
        break;
      }

      if (v33 == ++v34)
      {
        LODWORD(v34) = *(v3 + 52);
        break;
      }
    }
  }

  else
  {
    LODWORD(v34) = 0;
  }

  if (v34 != v33)
  {
    v37 = a2 + 128;
    while (1)
    {
      v38 = &v3[24][14 * v34];
      v39 = (*(v38 + 16) & 1) != 0 ? *(v38 + 24) : (v38 + 17);
      v40 = *(v38 + 40);
      v41 = v3[14];
      if (v41 <= v40)
      {
        break;
      }

      re::TextureHandle::TextureHandle(v95, &v3[16][4 * v40]);
      if (v39)
      {
        v42 = *v39;
        if (*v39)
        {
          v43 = v39[1];
          if (v43)
          {
            v44 = (v39 + 2);
            do
            {
              v42 = 31 * v42 + v43;
              v45 = *v44++;
              v43 = v45;
            }

            while (v45);
          }

          v42 &= ~0x8000000000000000;
        }
      }

      else
      {
        v42 = 0x7FFFFFFFFFFFFFFFLL;
      }

      *v97 = v42;
      re::TextureHandle::TextureHandle(&v104, v95);
      re::TextureHandleTable::setTexture(v37, v97, &v104);
      re::TextureHandle::invalidate(&v104);
      re::TextureHandle::invalidate(v95);
      v46 = *(v3 + 52);
      if (v46 <= v34 + 1)
      {
        v46 = v34 + 1;
      }

      while (v46 - 1 != v34)
      {
        LODWORD(v34) = v34 + 1;
        if (v3[24][14 * v34] < 0)
        {
          goto LABEL_76;
        }
      }

      LODWORD(v34) = v46;
LABEL_76:
      if (v34 == v33)
      {
        goto LABEL_77;
      }
    }

    v96 = 0;
    v108 = 0u;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v88 = MEMORY[0x1E69E9C10];
    v89 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v97 = 136315906;
    *&v97[4] = "operator[]";
    v98 = 1024;
    if (v89)
    {
      v90 = 3;
    }

    else
    {
      v90 = 2;
    }

    v99 = 797;
    v100 = 2048;
    v101 = v40;
    v102 = 2048;
    v103 = v41;
    _os_log_send_and_compose_impl(v90, &v96, &v104, 80, &dword_1E1C61000, v88, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v97, 38, v94, v95[0]);
    _os_crash_msg();
    __break(1u);
LABEL_161:
    v96 = 0;
    v108 = 0u;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v91 = MEMORY[0x1E69E9C10];
    v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v97 = 136315906;
    *&v97[4] = "operator[]";
    v98 = 1024;
    if (v92)
    {
      v93 = 3;
    }

    else
    {
      v93 = 2;
    }

    v99 = 797;
    v100 = 2048;
    v101 = v37;
    v102 = 2048;
    v103 = v40;
    _os_log_send_and_compose_impl(v93, &v96, &v104, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v97, 38, v94, v95[0]);
    _os_crash_msg();
    __break(1u);
  }

LABEL_77:
  re::SamplerTable::init((a2 + 240), v3[19]);
  v47 = *(v3 + 64);
  if (v47)
  {
    v48 = 0;
    v49 = v3[30];
    while (1)
    {
      v50 = *v49;
      v49 += 14;
      if (v50 < 0)
      {
        break;
      }

      if (v47 == ++v48)
      {
        LODWORD(v48) = *(v3 + 64);
        break;
      }
    }
  }

  else
  {
    LODWORD(v48) = 0;
  }

  while (v48 != v47)
  {
    v51 = &v3[30][14 * v48];
    v52 = (*(v51 + 16) & 1) != 0 ? *(v51 + 24) : (v51 + 17);
    v37 = *(v51 + 40);
    v40 = v3[19];
    if (v40 <= v37)
    {
      goto LABEL_161;
    }

    v53 = *&v3[21][2 * v37];
    v54 = v53;
    if (v52)
    {
      v55 = *v52;
      if (*v52)
      {
        v56 = v52[1];
        if (v56)
        {
          v57 = (v52 + 2);
          do
          {
            v55 = 31 * v55 + v56;
            v58 = *v57++;
            v56 = v58;
          }

          while (v58);
        }

        v55 &= ~0x8000000000000000;
      }
    }

    else
    {
      v55 = 0x7FFFFFFFFFFFFFFFLL;
    }

    *&v104 = v55;
    *v97 = v53;
    re::SamplerTable::setSampler(a2 + 30, &v104, v97);
    if (*v97)
    {
    }

    if (v54)
    {
    }

    v59 = *(v3 + 64);
    if (v59 <= v48 + 1)
    {
      v59 = v48 + 1;
    }

    while (v59 - 1 != v48)
    {
      LODWORD(v48) = v48 + 1;
      if (v3[30][14 * v48] < 0)
      {
        goto LABEL_105;
      }
    }

    LODWORD(v48) = v59;
LABEL_105:
    ;
  }

  v60 = *(v3 + 76);
  if (v60)
  {
    v61 = 0;
    v62 = v3[36];
    while (1)
    {
      v63 = *v62;
      v62 += 14;
      if (v63 < 0)
      {
        break;
      }

      if (v60 == ++v61)
      {
        LODWORD(v61) = *(v3 + 76);
        break;
      }
    }
  }

  else
  {
    LODWORD(v61) = 0;
  }

  while (v61 != v60)
  {
    v64 = &v3[36][14 * v61];
    v65 = *(v64 + 2);
    if (v65)
    {
      v67 = *(v64 + 3);
      if (!v67)
      {
        v72 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_124;
      }

      LOBYTE(v68) = *v67;
    }

    else
    {
      v66 = v65 >> 8;
      v67 = v64 + 17;
      LOBYTE(v68) = v66;
    }

    if (v68)
    {
      v68 = v68;
      v69 = v67[1];
      if (v69)
      {
        v70 = v67 + 2;
        do
        {
          v68 = 31 * v68 + v69;
          v71 = *v70++;
          v69 = v71;
        }

        while (v71);
      }

      v72 = v68 & 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v72 = 0;
    }

LABEL_124:
    *&v104 = v72;
    re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::addNew(a2 + 44, &v104, v64 + 5);
    v73 = *(v3 + 76);
    if (v73 <= v61 + 1)
    {
      v73 = v61 + 1;
    }

    while (v73 - 1 != v61)
    {
      LODWORD(v61) = v61 + 1;
      if (v3[36][14 * v61] < 0)
      {
        goto LABEL_130;
      }
    }

    LODWORD(v61) = v73;
LABEL_130:
    ;
  }

  v74 = *(v3 + 88);
  if (v74)
  {
    v75 = 0;
    v76 = v3[42];
    while (1)
    {
      v77 = *v76;
      v76 += 14;
      if (v77 < 0)
      {
        break;
      }

      if (v74 == ++v75)
      {
        LODWORD(v75) = *(v3 + 88);
        break;
      }
    }
  }

  else
  {
    LODWORD(v75) = 0;
  }

  while (v75 != v74)
  {
    v78 = &v3[42][14 * v75];
    v79 = *(v78 + 16);
    if (v79)
    {
      v81 = *(v78 + 24);
      if (!v81)
      {
        v86 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_149;
      }

      LOBYTE(v82) = *v81;
    }

    else
    {
      v80 = v79 >> 8;
      v81 = (v78 + 17);
      LOBYTE(v82) = v80;
    }

    if (v82)
    {
      v82 = v82;
      v83 = v81[1];
      if (v83)
      {
        v84 = v81 + 2;
        do
        {
          v82 = 31 * v82 + v83;
          v85 = *v84++;
          v83 = v85;
        }

        while (v85);
      }

      v86 = v82 & 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v86 = 0;
    }

LABEL_149:
    *&v104 = v86;
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::addNew(a2 + 52, &v104, (v78 + 40));
    v87 = *(v3 + 88);
    if (v87 <= v75 + 1)
    {
      v87 = v75 + 1;
    }

    while (v87 - 1 != v75)
    {
      LODWORD(v75) = v75 + 1;
      if (v3[42][14 * v75] < 0)
      {
        goto LABEL_155;
      }
    }

    LODWORD(v75) = v87;
LABEL_155:
    ;
  }
}

uint64_t re::makeStage@<X0>(re *a1@<X0>, id *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, _anonymous_namespace_ *a10, uint64_t a11, uint64_t a12)
{
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v17 = a1;
  v278 = *MEMORY[0x1E69E9840];
  v19 = re::globalAllocators(a1);
  v20 = (*(*v19[2] + 32))(v19[2], 336, 8);
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0u;
  *(v20 + 48) = 0u;
  *(v20 + 64) = 0u;
  *(v20 + 80) = 0u;
  *(v20 + 96) = 0u;
  *(v20 + 112) = 0u;
  *(v20 + 128) = 0u;
  *(v20 + 144) = 0u;
  *(v20 + 160) = 0u;
  *(v20 + 176) = 0u;
  *(v20 + 208) = 0u;
  *(v20 + 224) = 0u;
  *(v20 + 240) = 0u;
  *(v20 + 256) = 0u;
  *(v20 + 272) = 0u;
  *(v20 + 288) = 0u;
  *(v20 + 304) = 0u;
  *(v20 + 320) = 0u;
  *(v20 + 192) = 0u;
  *(v20 + 180) = 0x7FFFFFFF;
  *(v20 + 192) = 0u;
  *(v20 + 208) = 0u;
  *(v20 + 224) = 0u;
  *(v20 + 240) = 0u;
  *(v20 + 256) = 0u;
  *(v20 + 272) = 0u;
  *(v20 + 288) = 0u;
  *(v20 + 304) = 0u;
  *(v20 + 317) = 0u;
  *v20 = v17;
  v21 = strlen(a3);
  v22 = re::globalAllocators(v21);
  v23 = (*(*v22[2] + 32))(v22[2], v21 + 1, 0);
  memcpy(v23, a3, v21 + 1);
  *(v20 + 8) = v23;
  v265 = 0;
  v263 = 0;
  v261 = 0;
  v262[0] = 0;
  v262[1] = 0;
  v264 = 0;
  v258[1] = 0;
  v259 = 0;
  v257 = 0;
  v258[0] = 0;
  v260 = 0;
  v254[1] = 0;
  v255 = 0;
  v253 = 0;
  v254[0] = 0;
  v256 = 0;
  v250[1] = 0;
  v251 = 0;
  v249 = 0;
  v250[0] = 0;
  v252 = 0;
  v246[1] = 0;
  v247 = 0;
  v245 = 0;
  v246[0] = 0;
  v248 = 0;
  v242[1] = 0;
  v243 = 0;
  v241 = 0;
  v242[0] = 0;
  v244 = 0;
  v238 = 0;
  v239 = 0;
  v236 = 0;
  v237 = 0;
  v240 = 0;
  v233[1] = 0;
  v234 = 0;
  v233[0] = 0;
  if (*(a10 + 1))
  {
    v24 = v242;
  }

  else
  {
    v24 = 0;
  }

  v235 = 0;
  v206 = 0;
  re::collectArguments(v262, v258, v254, v250, v246, v24, v15, v14, &v231, a8);
  if (v231 == 1)
  {
    v27 = re::globalAllocators(v25)[2];
    re::TechniqueStage::~TechniqueStage(v20);
    (*(*v27 + 40))(v27, v20);
    v28 = v232;
    *a9 = 0;
    *(a9 + 8) = v28;
    goto LABEL_171;
  }

  v220 = a9;
  if (v14)
  {
    v29 = *(a8 + 16);
    if (!v29)
    {
      goto LABEL_20;
    }

    v30 = 0;
    v31 = *(a8 + 32);
    v32 = 8 * v29;
    do
    {
      v30 += re::validateArgumentMatchesStandardResource(v31++);
      v32 -= 8;
    }

    while (v32);
    v33 = v30 == 4;
    a9 = v220;
    if (!v33)
    {
LABEL_20:
      re::DynamicString::format(&v273, "Shader is flagged to use StandardEngineResources but does not declare all required arguments.", v26);
      if (BYTE8(v273))
      {
        v38 = v274;
      }

      else
      {
        v38 = &v273 + 9;
      }

      re::WrappedError::make(v267, @"REMaterialBuilderErrorDomain", 0x64, v38);
      v39 = *v267;
      *v267 = 0;
      *a9 = 0;
      *(a9 + 8) = v39;

      v40 = v273;
      if (v273 && (BYTE8(v273) & 1) != 0)
      {
        v41 = v274;
LABEL_170:
        (*(*v40 + 40))(v40, v41);
        goto LABEL_171;
      }

      goto LABEL_171;
    }
  }

  re::validateArgumentsCount(v262, v258, v250, v246, v13, &v226);
  if (v226 == 1)
  {
    re::internal::destroyPersistent<re::TechniqueStage>("makeStage", 551, v20);
    if (v228)
    {
      v35 = v230;
    }

    else
    {
      v35 = v229;
    }

    re::DynamicString::format(&v273, "Program %s failed due to invalid argument numbers. %s", v34, a3, v35);
    if (BYTE8(v273))
    {
      v36 = v274;
    }

    else
    {
      v36 = &v273 + 9;
    }

    re::WrappedError::make(v267, @"REMaterialBuilderErrorDomain", 0x32, v36);
    v37 = *v267;
    *v267 = 0;
    *a9 = 0;
    *(a9 + 8) = v37;
    goto LABEL_45;
  }

  v213 = v14;
  v215 = a8;
  if (!*(v20 + 64))
  {
    goto LABEL_34;
  }

  *&v273 = [*a2 device];
  v43 = re::mtl::Device::supportsArgumentBuffers(&v273, v42);

  if (v43)
  {
    if (*(v20 + 64))
    {
      v45 = 0;
      v46 = 2;
      while (1)
      {
        v47 = v255;
        if (v255 <= v45)
        {
          break;
        }

        v48 = [*a2 newArgumentEncoderWithBufferIndex_];
        v49 = v239;
        if (v239 >= v238)
        {
          re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::growCapacity(&v237, v239 + 1);
          v49 = v239;
        }

        v241[v49] = v48;
        v239 = v49 + 1;
        ++v240;
        ++v45;
        v46 += 14;
        if (*(v20 + 64) <= v45)
        {
          goto LABEL_34;
        }
      }

      *&v223[0] = 0;
      v276 = 0u;
      v277 = 0u;
      v274 = 0u;
      v275 = 0u;
      v273 = 0u;
      v194 = MEMORY[0x1E69E9C10];
      v195 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v267 = 136315906;
      *&v267[4] = "operator[]";
      *&v267[12] = 1024;
      if (v195)
      {
        v196 = 3;
      }

      else
      {
        v196 = 2;
      }

      *&v267[14] = 789;
      *&v267[18] = 2048;
      *&v267[20] = v45;
      *&v267[28] = 2048;
      *&v267[30] = v47;
      _os_log_send_and_compose_impl(v196, v223, &v273, 80, &dword_1E1C61000, v194, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v267, 38, v207, v208);
      _os_crash_msg();
      __break(1u);
LABEL_217:
      v266 = 0;
      v276 = 0u;
      v277 = 0u;
      v274 = 0u;
      v275 = 0u;
      v273 = 0u;
      v197 = MEMORY[0x1E69E9C10];
      v198 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v268 = 136315906;
      *&v268[4] = "operator[]";
      *&v268[12] = 1024;
      if (v198)
      {
        v199 = 3;
      }

      else
      {
        v199 = 2;
      }

      *&v268[14] = 789;
      v269 = 2048;
      v270 = v45;
      v271 = 2048;
      v272 = v47;
      _os_log_send_and_compose_impl(v199, &v266, &v273, 80, &dword_1E1C61000, v197, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v268, 38, v207, v209);
      _os_crash_msg();
      __break(1u);
LABEL_221:
      v266 = 0;
      v276 = 0u;
      v277 = 0u;
      v274 = 0u;
      v275 = 0u;
      v273 = 0u;
      v200 = MEMORY[0x1E69E9C10];
      v201 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v268 = 136315906;
      *&v268[4] = "operator[]";
      *&v268[12] = 1024;
      if (v201)
      {
        v202 = 3;
      }

      else
      {
        v202 = 2;
      }

      *&v268[14] = 468;
      v269 = 2048;
      v270 = v45;
      v271 = 2048;
      v272 = v47;
      _os_log_send_and_compose_impl(v202, &v266, &v273, 80, &dword_1E1C61000, v200, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v268, 38, v207, v209);
      _os_crash_msg();
      __break(1u);
LABEL_225:
      v266 = 0;
      v276 = 0u;
      v277 = 0u;
      v274 = 0u;
      v275 = 0u;
      v273 = 0u;
      v203 = MEMORY[0x1E69E9C10];
      v204 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v268 = 136315906;
      *&v268[4] = "operator[]";
      *&v268[12] = 1024;
      if (v204)
      {
        v205 = 3;
      }

      else
      {
        v205 = 2;
      }

      *&v268[14] = 468;
      v269 = 2048;
      v270 = v45;
      v271 = 2048;
      v272 = v45;
      _os_log_send_and_compose_impl(v205, &v266, &v273, 80, &dword_1E1C61000, v203, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v268, 38, v207, v209);
      _os_crash_msg();
      __break(1u);
    }

LABEL_34:
    memset(v267, 0, 36);
    *&v267[36] = 0x7FFFFFFFLL;
    re::collectLinkedArgumentReflection(a10, v242, a4, v267);
    v50 = *(a10 + 1);
    if (v50)
    {
      LOBYTE(v51) = 0;
      v52 = 200 * v50;
      v53 = (*(a10 + 2) + 48);
      do
      {
        v51 = (v51 & 1) != 0 || *v53 != 0;
        v53 += 25;
        v52 -= 200;
      }

      while (v52);
    }

    else
    {
      v51 = 0;
    }

    if (!*&v267[28])
    {
      goto LABEL_60;
    }

    *&v223[0] = [*a2 &selRef_frameLength];
    re::forwardLinkedArguments(v223, v267, v242, v258, v254, &v237, v233, v51, &v273);
    if (v231)
    {
      if (v273)
      {
        v56 = *(&v273 + 1);
        *(&v273 + 1) = 0;
        v57 = v232;
        v232 = v56;
      }

      else
      {

        LOBYTE(v231) = 0;
      }
    }

    else if (v273)
    {
      LOBYTE(v231) = 1;
      v58 = *(&v273 + 1);
      *(&v273 + 1) = 0;
      v232 = v58;
    }

    if (v273 == 1)
    {
    }

    if (v231 == 1)
    {
      re::internal::destroyPersistent<re::TechniqueStage>("makeStage", 591, v20);
      v59 = v232;
      *v220 = 0;
      *(v220 + 8) = v59;
    }

    else
    {
LABEL_60:
      v224 = 0;
      memset(v223, 0, sizeof(v223));
      v225 = 0x7FFFFFFFLL;
      *&v273 = [*a2 &selRef_frameLength];
      v60 = re::mtl::Device::needsArgumentBufferTextureEmulation(&v273);

      if (v60 && v234)
      {
        v63 = 0;
        v64 = 80 * v234;
        v65 = v236 + 4;
        while (1)
        {
          if (*&v65->var0 != 2)
          {
            v148 = "Attempting to load a shader graph with non-2D textures, which is not supported on devices with tier 1 argument buffer support.";
            goto LABEL_136;
          }

          if (v63 == 16)
          {
            break;
          }

          re::DynamicString::format(&v273, "textureCustomArray[%d]", v62, v63, v206);
          re::StringID::StringID(v268, &v273);
          if (v273 && (BYTE8(v273) & 1) != 0)
          {
            (*(*v273 + 40))();
          }

          v61 = re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v223, v268, v65 - 3);
          if (v268[0])
          {
            if (v268[0])
            {
            }
          }

          v65 += 5;
          v63 = (v63 + 1);
          v64 -= 80;
          if (!v64)
          {
            goto LABEL_72;
          }
        }

        v148 = "Attempting to load a shader graph with more than 16 textures, which is not supported on devices with tier 1 argument buffer support.";
LABEL_136:
        if (BYTE8(v273))
        {
          v149 = v274;
        }

        else
        {
          v149 = &v273 + 9;
        }

        re::WrappedError::make(v268, @"REMaterialBuilderErrorDomain", 0x5A, v149);
        v150 = *v268;
        *v268 = 0;
        *v220 = 0;
        *(v220 + 8) = v150;

        if (v273 && (BYTE8(v273) & 1) != 0)
        {
          (*(*v273 + 40))();
        }
      }

      else
      {
LABEL_72:
        *(v20 + 16) = a4;
        v66 = v263;
        v68 = v259;
        v70 = v255;
        v72 = v255;
        v73 = v251;
        v76 = v247;
        re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=((v20 + 144), v223);
        if (v263)
        {
          v78 = v265;
          v79 = (v265 + 24 * v263);
          v80 = *(v20 + 248);
          do
          {
            v81 = *v78;
            *v80 = *v80 & 0xFFFFFFFFFFFFFFFELL | *v78 & 1;
            *v80 = *v78 & 0xFFFFFFFFFFFFFFFELL | v81 & 1;
            v80[1] = *(v78 + 1);
            *v78 = 0;
            *(v78 + 1) = &str_67;
            v80[2] = *(v78 + 2);
            re::StringID::destroyString(v78);
            v78 = (v78 + 24);
            v80 += 3;
          }

          while (v78 != v79);
        }

        if (v259)
        {
          v82 = v261;
          v83 = &v261[14 * v259];
          v84 = *(v20 + 40);
          do
          {
            v85 = *v82;
            *v84 = *v84 & 0xFFFFFFFFFFFFFFFELL | *v82 & 1;
            *v84 = *v82 & 0xFFFFFFFFFFFFFFFELL | v85 & 1;
            *(v84 + 8) = v82[1];
            *v82 = 0;
            v82[1] = &str_67;
            *(v84 + 16) = *(v82 + 8);
            LODWORD(v85) = *(v82 + 8);
            *(v84 + 24) = v82[3];
            *(v84 + 32) = v85;
            LOBYTE(v85) = v82[5];
            *(v84 + 40) = *(v84 + 40) & 0xFFFFFFFFFFFFFFFELL | v82[5] & 1;
            *(v84 + 40) = v82[5] & 0xFFFFFFFFFFFFFFFELL | v85 & 1;
            *(v84 + 48) = v82[6];
            v82[6] = &str_67;
            v82[5] = 0;
            LODWORD(v85) = *(v82 + 14);
            *(v84 + 60) = *(v82 + 30);
            *(v84 + 56) = v85;
            *(v84 + 72) = 0;
            *(v84 + 80) = 0;
            *(v84 + 64) = 0;
            *(v84 + 64) = v82[8];
            v82[8] = 0;
            *(v84 + 72) = v82[9];
            v82[9] = 0;
            v86 = *(v84 + 80);
            *(v84 + 80) = v82[10];
            v82[10] = v86;
            v87 = v82[11];
            *(v84 + 94) = *(v82 + 94);
            *(v84 + 88) = v87;
            *(v84 + 104) = *(v82 + 104);
            re::FixedArray<re::MetalTypeInfo>::deinit(v82 + 8);
            re::StringID::destroyString((v82 + 5));
            re::StringID::destroyString(v82);
            v84 += 112;
            v82 += 14;
          }

          while (v82 != v83);
        }

        if (v255)
        {
          v88 = v257;
          v89 = &v257[14 * v255];
          v90 = *(v20 + 72);
          do
          {
            v91 = *v88;
            *v90 = *v90 & 0xFFFFFFFFFFFFFFFELL | *v88 & 1;
            *v90 = *v88 & 0xFFFFFFFFFFFFFFFELL | v91 & 1;
            *(v90 + 8) = v88[1];
            *v88 = 0;
            v88[1] = &str_67;
            *(v90 + 16) = *(v88 + 8);
            LODWORD(v91) = *(v88 + 8);
            *(v90 + 24) = v88[3];
            *(v90 + 32) = v91;
            LOBYTE(v91) = v88[5];
            *(v90 + 40) = *(v90 + 40) & 0xFFFFFFFFFFFFFFFELL | v88[5] & 1;
            *(v90 + 40) = v88[5] & 0xFFFFFFFFFFFFFFFELL | v91 & 1;
            *(v90 + 48) = v88[6];
            v88[6] = &str_67;
            v88[5] = 0;
            LODWORD(v91) = *(v88 + 14);
            *(v90 + 60) = *(v88 + 30);
            *(v90 + 56) = v91;
            *(v90 + 72) = 0;
            *(v90 + 80) = 0;
            *(v90 + 64) = 0;
            *(v90 + 64) = v88[8];
            v88[8] = 0;
            *(v90 + 72) = v88[9];
            v88[9] = 0;
            v92 = *(v90 + 80);
            *(v90 + 80) = v88[10];
            v88[10] = v92;
            v93 = v88[11];
            *(v90 + 94) = *(v88 + 94);
            *(v90 + 88) = v93;
            *(v90 + 104) = *(v88 + 104);
            re::FixedArray<re::MetalTypeInfo>::deinit(v88 + 8);
            re::StringID::destroyString((v88 + 5));
            re::StringID::destroyString(v88);
            v90 += 112;
            v88 += 14;
          }

          while (v88 != v89);
        }

        if (v251)
        {
          v94 = v253;
          v95 = (v253 + 32 * v251);
          v96 = *(v20 + 128);
          do
          {
            v97 = *v94;
            *v96 = *v96 & 0xFFFFFFFFFFFFFFFELL | *v94 & 1;
            *v96 = *v94 & 0xFFFFFFFFFFFFFFFELL | v97 & 1;
            *(v96 + 8) = *(v94 + 1);
            *v94 = 0;
            *(v94 + 1) = &str_67;
            *(v96 + 16) = *(v94 + 1);
            re::StringID::destroyString(v94);
            v94 = (v94 + 32);
            v96 += 32;
          }

          while (v94 != v95);
        }

        if (v247)
        {
          v98 = v249;
          v99 = (v249 + 24 * v247);
          v100 = *(v20 + 216);
          do
          {
            v101 = *v98;
            *v100 = *v100 & 0xFFFFFFFFFFFFFFFELL | *v98 & 1;
            *v100 = *v98 & 0xFFFFFFFFFFFFFFFELL | v101 & 1;
            *(v100 + 8) = *(v98 + 1);
            *v98 = 0;
            *(v98 + 1) = &str_67;
            LOWORD(v101) = *(v98 + 8);
            *(v100 + 18) = *(v98 + 18);
            *(v100 + 16) = v101;
            re::StringID::destroyString(v98);
            v98 = (v98 + 24);
            v100 += 24;
          }

          while (v98 != v99);
        }

        if (v239)
        {
          v102 = v241;
          v103 = *(v20 + 96);
          v104 = 8 * v239;
          do
          {
            *v103++ = *v102;
            *v102++ = 0;
            v104 -= 8;
          }

          while (v104);
        }

        v221 = 0u;
        v222 = 0u;
        if (v213)
        {
          *&v221 = 30;
        }

        v105 = *(v20 + 240);
        if (v105)
        {
          v106 = 0;
          v107 = (*(v20 + 248) + 16);
          v108 = 24 * v105;
          do
          {
            v109 = *v107;
            v110 = 1 << v109;
            v111 = re::Bitset<256>::toWordIndex(v109, v77);
            *(&v221 + v111) |= v110;
            v112 = *(v107 - 2);
            v113 = *v107;
            v107 += 12;
            v114 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v112 >> 31) ^ (v112 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v112 >> 31) ^ (v112 >> 1))) >> 27));
            v115 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v113) ^ ((0xBF58476D1CE4E5B9 * v113) >> 27));
            v106 ^= (v106 << 6) - 0x61C8864680B583E9 + (v106 >> 2) + (((v115 ^ (v115 >> 31)) - 0x61C8864680B583E9 + ((v114 ^ (v114 >> 31)) << 6) + ((v114 ^ (v114 >> 31)) >> 2)) ^ v114 ^ (v114 >> 31));
            v108 -= 24;
          }

          while (v108);
        }

        else
        {
          v106 = 0;
        }

        v116 = *(v20 + 120);
        if (v116)
        {
          v117 = 0;
          v118 = 0;
          v119 = (*(v20 + 128) + 16);
          v120 = 32 * v116;
          do
          {
            v121 = *v119;
            if (v118 <= v121)
            {
              v118 = *v119;
            }

            v122 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(v119 - 2) >> 31) ^ (*(v119 - 2) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(v119 - 2) >> 31) ^ (*(v119 - 2) >> 1))) >> 27));
            v123 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v121) ^ ((0xBF58476D1CE4E5B9 * v121) >> 27));
            v117 ^= (v117 << 6) - 0x61C8864680B583E9 + (v117 >> 2) + (((v123 ^ (v123 >> 31)) - 0x61C8864680B583E9 + ((v122 ^ (v122 >> 31)) << 6) + ((v122 ^ (v122 >> 31)) >> 2)) ^ v122 ^ (v122 >> 31));
            v119 += 16;
            v120 -= 32;
          }

          while (v120);
        }

        else
        {
          v118 = 0;
          v117 = 0;
        }

        v124 = *(v20 + 176);
        if (v124)
        {
          v125 = 0;
          v126 = *(v20 + 160);
          while (1)
          {
            v127 = *v126;
            v126 += 10;
            if (v127 < 0)
            {
              break;
            }

            if (v124 == ++v125)
            {
              LODWORD(v125) = *(v20 + 176);
              break;
            }
          }
        }

        else
        {
          LODWORD(v125) = 0;
        }

        v212 = v118;
        v214 = v117;
        if (v125 == v124)
        {
          v128 = 0;
        }

        else
        {
          v128 = 0;
          v129 = *(v20 + 160);
          do
          {
            v130 = v129 + 40 * v125;
            v128 ^= (v128 << 6) - 0x61C8864680B583E9 + (v128 >> 2) + (((*(v130 + 8) >> 3) - 0x61C8864680B583E9 + (*(v130 + 24) >> 1) + (*(v130 + 8) >> 1 << 6)) ^ (*(v130 + 8) >> 1));
            if (v124 <= v125 + 1)
            {
              v131 = v125 + 1;
            }

            else
            {
              v131 = *(v20 + 176);
            }

            while (v131 - 1 != v125)
            {
              LODWORD(v125) = v125 + 1;
              if ((*(v129 + 40 * v125) & 0x80000000) != 0)
              {
                goto LABEL_120;
              }
            }

            LODWORD(v125) = v131;
LABEL_120:
            ;
          }

          while (v125 != v124);
        }

        v211 = v128;
        v132 = *(v20 + 208);
        if (v132)
        {
          v133 = 0;
          v134 = (*(v20 + 216) + 16);
          v135 = 24 * v132;
          do
          {
            v136 = *v134;
            v137 = 1 << v136;
            v138 = re::Bitset<256>::toWordIndex(v136, v77);
            *(&v221 + v138) |= v137;
            v139 = *(v134 - 2);
            v140 = *v134;
            v134 += 12;
            v141 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v139 >> 31) ^ (v139 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v139 >> 31) ^ (v139 >> 1))) >> 27));
            v142 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v140) ^ ((0xBF58476D1CE4E5B9 * v140) >> 27));
            v133 ^= (v133 << 6) - 0x61C8864680B583E9 + (v133 >> 2) + (((v142 ^ (v142 >> 31)) - 0x61C8864680B583E9 + ((v141 ^ (v141 >> 31)) << 6) + ((v141 ^ (v141 >> 31)) >> 2)) ^ v141 ^ (v141 >> 31));
            v135 -= 24;
          }

          while (v135);
        }

        else
        {
          v133 = 0;
        }

        v218 = v106;
        v143 = *(v215 + 16);
        if (v143)
        {
          v144 = *(v215 + 32);
          v145 = 8 * v143;
          v146 = v220;
          while (1)
          {
            v147 = *v144;
            if ([*v144 type] == 3 && objc_msgSend(v147, sel_arrayLength) >= 2 && !strcmp("dynamicSamplers", objc_msgSend(objc_msgSend(v147, sel_name), sel_UTF8String)))
            {
              break;
            }

            ++v144;
            v145 -= 8;
            if (!v145)
            {
              v216 = 0;
              v210 = 0;
              goto LABEL_143;
            }
          }

          v216 = [v147 arrayLength];
          v210 = [v147 index];
        }

        else
        {
          v216 = 0;
          v210 = 0;
          v146 = v220;
        }

LABEL_143:
        v151 = *(v20 + 32);
        if (v151)
        {
          v152 = 0;
          v153 = *(v20 + 40);
          v154 = 112 * v151;
          do
          {
            v155 = v153[8];
            v156 = 1 << v155;
            v157 = re::Bitset<256>::toWordIndex(v155, v77);
            *(&v221 + v157) |= v156;
            v152 ^= (v152 << 6) - 0x61C8864680B583E9 + (v152 >> 2) + re::TypedArgument::resolutionHash(v153);
            v153 += 56;
            v154 -= 112;
          }

          while (v154);
        }

        else
        {
          v152 = 0;
        }

        v158 = *(v20 + 64);
        if (v158)
        {
          v159 = 0;
          v160 = *(v20 + 72);
          v161 = 112 * v158;
          do
          {
            v162 = v160[8];
            v163 = 1 << v162;
            v164 = re::Bitset<256>::toWordIndex(v162, v77);
            *(&v221 + v164) |= v163;
            v159 ^= (v159 << 6) - 0x61C8864680B583E9 + (v159 >> 2) + re::TypedArgument::resolutionHash(v160);
            v160 += 56;
            v161 -= 112;
          }

          while (v161);
        }

        else
        {
          v159 = 0;
        }

        v165 = MurmurHash3_x64_128(&v221, 0x20uLL, 0, &v273);
        v166 = (*(&v273 + 1) - 0x61C8864680B583E9 + (v273 << 6) + (v273 >> 2)) ^ v273;
        v167 = *(a12 + 16);
        if (v167)
        {
          v168 = v167;
          if (v168)
          {
            v209 = v133;
            v45 = 0;
            v169 = 16;
            do
            {
              v47 = *(a12 + 16);
              if (v47 <= v45)
              {
                goto LABEL_217;
              }

              v47 = *(v20 + 272);
              if (v47 <= v45)
              {
                goto LABEL_221;
              }

              v170 = (*(a12 + 32) + v169);
              v171 = (*(v20 + 280) + v169);
              re::StringID::operator=((v171 - 4), v170 - 2);
              *v171 = *v170;
              v146 = v220;
              ++v45;
              v169 += 24;
            }

            while (v168 != v45);
            v45 = *(v20 + 272);
            if (v45 <= v168 - 1)
            {
              goto LABEL_225;
            }

            v172 = (*(v20 + 280) + 18);
            do
            {
              v173 = 0xBF58476D1CE4E5B9 * ((*(v172 - 9) >> 31) ^ (*(v172 - 9) >> 1));
              v174 = (0x94D049BB133111EBLL * (v173 ^ (v173 >> 27))) ^ ((0x94D049BB133111EBLL * (v173 ^ (v173 >> 27))) >> 31);
              v175 = *(v172 - 1);
              v176 = *v172;
              v172 += 12;
              v177 = 0xBF58476D1CE4E5B9 * ((v176 | (v175 << 32)) ^ (4 * v175));
              v166 ^= (v166 << 6) - 0x61C8864680B583E9 + (v166 >> 2) + (((v174 << 6) - 0x61C8864680B583E9 + (v174 >> 2) + ((0x94D049BB133111EBLL * (v177 ^ (v177 >> 27))) ^ ((0x94D049BB133111EBLL * (v177 ^ (v177 >> 27))) >> 31))) ^ v174);
              --v168;
            }

            while (v168);
          }

          re::DynamicArray<re::MeshAssetSmoothDeformerData>::clear(a12);
        }

        v178 = v222;
        *(v20 + 296) = v221;
        *(v20 + 312) = v178;
        *(v20 + 328) = v212;
        *(v20 + 330) = v210;
        *(v20 + 332) = v216;
        *(v20 + 256) = v218;
        *(v20 + 136) = v214;
        *(v20 + 192) = v211;
        *(v20 + 224) = v133;
        *(v20 + 48) = v152;
        *(v20 + 104) = v159;
        *(v20 + 288) = v166;
        *v146 = 1;
        *(v146 + 8) = v20;
      }

      re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v223);
    }

    re::HashTable<re::StringID,re::DynamicArray<re::TypedArgument>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v267);
    goto LABEL_166;
  }

  if (BYTE8(v273))
  {
    v54 = v274;
  }

  else
  {
    v54 = &v273 + 9;
  }

  re::WrappedError::make(v267, @"REMaterialBuilderErrorDomain", 0xA, v54);
  v55 = *v267;
  *v267 = 0;
  *v220 = 0;
  *(v220 + 8) = v55;
LABEL_45:

  if (v273 && (BYTE8(v273) & 1) != 0)
  {
    (*(*v273 + 40))();
  }

LABEL_166:
  if (v226 == 1)
  {
    v40 = v227;
    if (v227)
    {
      if (v228)
      {
        v41 = v230;
        goto LABEL_170;
      }
    }
  }

LABEL_171:
  if (v231 == 1)
  {
  }

  re::DynamicArray<re::MetalTypeInfo>::deinit(v233);
  v179 = v237;
  if (v237)
  {
    v180 = v241;
    if (v241)
    {
      if (v239)
      {
        v181 = 8 * v239;
        do
        {
          if (*v180)
          {

            *v180 = 0;
          }

          ++v180;
          v181 -= 8;
        }

        while (v181);
        v179 = v237;
        v180 = v241;
      }

      (*(*v179 + 40))(v179, v180);
    }
  }

  v182 = v242[0];
  if (v242[0])
  {
    v183 = v245;
    if (v245)
    {
      if (v243)
      {
        v184 = 32 * v243;
        do
        {
          re::StringID::destroyString(v183);
          v183 = (v183 + 32);
          v184 -= 32;
        }

        while (v184);
        v182 = v242[0];
        v183 = v245;
      }

      (*(*v182 + 40))(v182, v183);
    }
  }

  v185 = v246[0];
  if (v246[0])
  {
    v186 = v249;
    if (v249)
    {
      if (v247)
      {
        v187 = 24 * v247;
        do
        {
          re::StringID::destroyString(v186);
          v186 = (v186 + 24);
          v187 -= 24;
        }

        while (v187);
        v185 = v246[0];
        v186 = v249;
      }

      (*(*v185 + 40))(v185, v186);
    }

    v249 = 0;
  }

  v188 = v250[0];
  if (v250[0])
  {
    v189 = v253;
    if (v253)
    {
      if (v251)
      {
        v190 = 32 * v251;
        do
        {
          re::StringID::destroyString(v189);
          v189 = (v189 + 32);
          v190 -= 32;
        }

        while (v190);
        v188 = v250[0];
        v189 = v253;
      }

      (*(*v188 + 40))(v188, v189);
    }

    v253 = 0;
  }

  re::DynamicArray<re::TypedArgument>::deinit(v254);
  re::DynamicArray<re::TypedArgument>::deinit(v258);
  result = v262[0];
  if (v262[0])
  {
    v192 = v265;
    if (v265)
    {
      if (v263)
      {
        v193 = 24 * v263;
        do
        {
          re::StringID::destroyString(v192);
          v192 = (v192 + 24);
          v193 -= 24;
        }

        while (v193);
        result = v262[0];
        v192 = v265;
      }

      return (*(*result + 40))(result, v192);
    }
  }

  return result;
}