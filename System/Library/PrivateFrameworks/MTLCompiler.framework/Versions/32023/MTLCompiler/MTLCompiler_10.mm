uint64_t *std::vector<flatbuffers::Offset<Air::FragmentColorAttachmentDescriptor>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_257A533A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::CloneFragmentColorAttachmentDescriptor<Air::FragmentColorAttachmentDescriptor>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v4 = (a2 - *a2);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = *(a2 + v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = Air::ClonePixelFormat<Air::PixelFormat>(v6);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 4, v10, 0);
  v11 = (a2 - *a2);
  if (*v11 >= 0x15u && (v12 = v11[10]) != 0)
  {
    v13 = *(a2 + v12);
    if (v13 >= 0x14)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v13 = 1;
  }

  v14 = 1;
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, v13, 1);
  v15 = (a2 - *a2);
  if (*v15 >= 0x13u)
  {
    v16 = v15[9];
    if (v16)
    {
      v14 = *(a2 + v16);
      if (v14 >= 0x14)
      {
LABEL_36:
        abort();
      }
    }
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 18, v14, 1);
  v17 = (a2 - *a2);
  if (*v17 >= 0x11u && (v18 = v17[8]) != 0)
  {
    v19 = *(a2 + v18);
    if (v19 >= 0x14)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v19 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 16, v19, 0);
  v20 = (a2 - *a2);
  if (*v20 >= 0xFu && (v21 = v20[7]) != 0)
  {
    v22 = *(a2 + v21);
    if (v22 >= 0x14)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v22 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 14, v22, 0);
  v23 = (a2 - *a2);
  if (*v23 >= 0xDu && (v24 = v23[6]) != 0)
  {
    v25 = *(a2 + v24);
    if (v25 >= 6)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v25 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 12, v25, 0);
  v26 = (a2 - *a2);
  if (*v26 >= 0xBu && (v27 = v26[5]) != 0)
  {
    v28 = *(a2 + v27);
    if (v28 >= 6)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v28 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, v28, 0);
  v29 = (a2 - *a2);
  if (*v29 >= 9u && (v30 = v29[4]) != 0)
  {
    v31 = *(a2 + v30);
    if (v31 >= 3)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v31 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, v31, 0);
  v32 = (a2 - *a2);
  if (*v32 >= 7u && (v33 = v32[3]) != 0)
  {
    v34 = *(a2 + v33);
  }

  else
  {
    v34 = 15;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 6, v34, 15);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v9 - v8 + v7);
}

char *flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(char *result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = result;
  if (a3 != a4 || result[80] == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned short>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned short>(uint64_t a1, __int16 a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 2uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 1)
  {
    flatbuffers::vector_downward::reallocate(a1, 2uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 2) = a2;
  v5 = v4 - 2;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

char *flatbuffers::FlatBufferBuilder::AddElement<float>(char *result, uint64_t a2, float a3, float a4)
{
  v5 = result;
  if (a3 != a4 || result[80] == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<float>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<float>(uint64_t a1, float a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 3)
  {
    flatbuffers::vector_downward::reallocate(a1, 4uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 4) = a2;
  v5 = v4 - 4;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Air30CloneComputeFunctionDescriptorINS2_25ComputeFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_40ComputeFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, uint64_t a3)
{
  std::vector<unsigned long long>::vector[abi:ne200100](&__p, a2);
  v6 = __p;
  if (a2)
  {
    v7 = 0;
    do
    {
      *&v6[8 * v7] = *(a3 + 4 + 8 * v7);
      ++v7;
    }

    while (a2 != v7);
  }

  if (v12 == v6)
  {
    v8 = &flatbuffers::data<unsigned long long,std::allocator<unsigned long long>>(std::vector<unsigned long long> const&)::t;
  }

  else
  {
    v8 = v6;
  }

  v9 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(a1, v8, (v12 - v6) >> 3);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_257A5389C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_30CloneComputeFunctionDescriptorINS3_25ComputeFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_40ComputeFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::ClonePipelineBufferDescriptor<Air::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Air::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_257A5397C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::CloneStageInputOutputDescriptor<Air::StageInputOutputDescriptor>(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = -v4;
  v6 = (a2 - v4);
  if (*v6 >= 7u && (v7 = v6[3]) != 0)
  {
    v20 = a2 + v7 + *(a2 + v7);
    v8 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air22BufferLayoutDescriptorEEEZNS3_31CloneStageInputOutputDescriptorINS3_26StageInputOutputDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41StageInputOutputDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v20, &v20, a1);
    v5 = -*a2;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + v5) >= 5u && *(a2 + v5 + 4))
  {
    v20 = a2 + *(a2 + v5 + 4) + *(a2 + *(a2 + v5 + 4));
    v9 = _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air19AttributeDescriptorEEEZNS3_31CloneStageInputOutputDescriptorINS3_26StageInputOutputDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41StageInputOutputDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(a1, *v20, &v20, a1);
    v5 = -*a2;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 70) = 1;
  v10 = (a2 + v5);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = *(a2 + v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 8, v12, 0);
  if (v8)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v8);
  }

  if (v9)
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, v9);
  }

  v16 = (a2 - *a2);
  if (*v16 >= 0xBu && (v17 = v16[5]) != 0)
  {
    v18 = *(a2 + v17);
    if (v18 >= 2)
    {
      abort();
    }
  }

  else
  {
    v18 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, v18, 0);
  return flatbuffers::FlatBufferBuilder::EndTable(a1, v15 - v14 + v13);
}

uint64_t *std::vector<unsigned long long>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_257A53BA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(flatbuffers::FlatBufferBuilder *a1, const unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  *(a1 + 70) = 1;
  v6 = 8 * a3;
  flatbuffers::FlatBufferBuilder::PreAlign(a1, 8 * a3, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign(a1, v6, 8uLL);
  flatbuffers::vector_downward::push(a1, a2, v6);
  *(a1 + 70) = 0;

  return flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, v3);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air22BufferLayoutDescriptorEEEZNS3_31CloneStageInputOutputDescriptorINS3_26StageInputOutputDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41StageInputOutputDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::BufferLayoutDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::CloneBufferLayoutDescriptor<Air::BufferLayoutDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::BufferLayoutDescriptor>,std::allocator<flatbuffers::Offset<Air::BufferLayoutDescriptor>>>(std::vector<flatbuffers::Offset<Air::BufferLayoutDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_257A53D0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air19AttributeDescriptorEEEZNS3_31CloneStageInputOutputDescriptorINS3_26StageInputOutputDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_41StageInputOutputDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::AttributeDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::CloneAttributeDescriptor<Air::AttributeDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::AttributeDescriptor>,std::allocator<flatbuffers::Offset<Air::AttributeDescriptor>>>(std::vector<flatbuffers::Offset<Air::AttributeDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_257A53DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Air27CloneTileFunctionDescriptorINS2_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, uint64_t a3)
{
  std::vector<unsigned long long>::vector[abi:ne200100](&__p, a2);
  v6 = __p;
  if (a2)
  {
    v7 = 0;
    do
    {
      *&v6[8 * v7] = *(a3 + 4 + 8 * v7);
      ++v7;
    }

    while (a2 != v7);
  }

  if (v12 == v6)
  {
    v8 = &flatbuffers::data<unsigned long long,std::allocator<unsigned long long>>(std::vector<unsigned long long> const&)::t;
  }

  else
  {
    v8 = v6;
  }

  v9 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(a1, v8, (v12 - v6) >> 3);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_257A53EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_27CloneTileFunctionDescriptorINS3_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::ClonePipelineBufferDescriptor<Air::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Air::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_257A53F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air29TileColorAttachmentDescriptorEEEZNS3_27CloneTileFunctionDescriptorINS3_22TileFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_37TileFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE1_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::TileColorAttachmentDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::CloneTileColorAttachmentDescriptor<Air::TileColorAttachmentDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::TileColorAttachmentDescriptor>,std::allocator<flatbuffers::Offset<Air::TileColorAttachmentDescriptor>>>(std::vector<flatbuffers::Offset<Air::TileColorAttachmentDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_257A54070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<flatbuffers::Offset<Air::TileColorAttachmentDescriptor>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_257A540EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Air::CloneTileColorAttachmentDescriptor<Air::TileColorAttachmentDescriptor>(uint64_t a1, int *a2)
{
  *(a1 + 70) = 1;
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = (a2 - *a2);
  if (*v6 >= 5u && (v7 = v6[2]) != 0)
  {
    v8 = *(a2 + v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 - v3;
  v10 = Air::ClonePixelFormat<Air::PixelFormat>(v8);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 4, v10, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v9 + v4);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Air29CloneObjectFunctionDescriptorINS2_24ObjectFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_39ObjectFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, uint64_t a3)
{
  std::vector<unsigned long long>::vector[abi:ne200100](&__p, a2);
  v6 = __p;
  if (a2)
  {
    v7 = 0;
    do
    {
      *&v6[8 * v7] = *(a3 + 4 + 8 * v7);
      ++v7;
    }

    while (a2 != v7);
  }

  if (v12 == v6)
  {
    v8 = &flatbuffers::data<unsigned long long,std::allocator<unsigned long long>>(std::vector<unsigned long long> const&)::t;
  }

  else
  {
    v8 = v6;
  }

  v9 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(a1, v8, (v12 - v6) >> 3);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_257A54238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_29CloneObjectFunctionDescriptorINS3_24ObjectFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_39ObjectFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::ClonePipelineBufferDescriptor<Air::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Air::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_257A54318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorIyZN3Air27CloneMeshFunctionDescriptorINS2_22MeshFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS2_37MeshFunctionDescriptorCloneCompatibleET_EE5valueENS_6OffsetIS4_EEE4typeERS0_PKS8_EUlmPvE_vEENS9_INS_6VectorIS8_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, uint64_t a3)
{
  std::vector<unsigned long long>::vector[abi:ne200100](&__p, a2);
  v6 = __p;
  if (a2)
  {
    v7 = 0;
    do
    {
      *&v6[8 * v7] = *(a3 + 4 + 8 * v7);
      ++v7;
    }

    while (a2 != v7);
  }

  if (v12 == v6)
  {
    v8 = &flatbuffers::data<unsigned long long,std::allocator<unsigned long long>>(std::vector<unsigned long long> const&)::t;
  }

  else
  {
    v8 = v6;
  }

  v9 = flatbuffers::FlatBufferBuilder::CreateVector<unsigned long long>(a1, v8, (v12 - v6) >> 3);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_257A543D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN11flatbuffers17FlatBufferBuilder12CreateVectorINS_6OffsetIN3Air24PipelineBufferDescriptorEEEZNS3_27CloneMeshFunctionDescriptorINS3_22MeshFunctionDescriptorEEENSt3__19enable_ifIXsr11flatbuffers11is_detectedINS3_37MeshFunctionDescriptorCloneCompatibleET_EE5valueENS2_IS7_EEE4typeERS0_PKSB_EUlmPvE0_vEENS2_INS_6VectorISB_EEEEmT0_PT1_(flatbuffers::FlatBufferBuilder *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>>::vector[abi:ne200100](&__p, a2);
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = Air::ClonePipelineBufferDescriptor<Air::PipelineBufferDescriptor>(a4, (*a3 + (v8 & 0x3FFFFFFFCLL) + 4 + *(*a3 + (v8 & 0x3FFFFFFFCLL) + 4)));
      v10 = __p;
      *(__p + v8) = v9;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = __p;
  }

  if (v15 == v10)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<Air::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Air::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v11 = v10;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v11, (v15 - v10) >> 2);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

void sub_257A544B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::__hash_table<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::__unordered_map_hasher<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::hash<CompilerOutputType>,std::equal_to<CompilerOutputType>,true>,std::__unordered_map_equal<CompilerOutputType,std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>,std::equal_to<CompilerOutputType>,std::hash<CompilerOutputType>,true>,std::allocator<std::__hash_value_type<CompilerOutputType,CompilerOutputBlock>>>::__emplace_unique_key_args<CompilerOutputType,CompilerOutputType,CompilerOutputBlock>(void *a1, char *a2, _BYTE *a3, _OWORD *a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 16) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t std::__function::__value_func<void ()(llvm::Module &,llvm::StringSet<llvm::MallocAllocator> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void __cxx_global_array_dtor()
{
  v0 = &byte_28153FB5F;
  v1 = -48;
  v2 = &byte_28153FB5F;
  do
  {
    v3 = *v2;
    v2 -= 24;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 24;
  }

  while (v1);
}

void __cxx_global_array_dtor_147()
{
  v0 = &byte_28153FB2F;
  v1 = -48;
  v2 = &byte_28153FB2F;
  do
  {
    v3 = *v2;
    v2 -= 24;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 24;
  }

  while (v1);
}

void MTLArgumentRewritePass::~MTLArgumentRewritePass(MTLArgumentRewritePass *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2868EB908;
  v5 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v6, v7, v8);

  llvm::Pass::~Pass(this);
}

{
  *this = &unk_2868EB908;
  v5 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v6, v7, v8);
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

BOOL MTLArgumentRewritePass::runOnModule(MTLArgumentRewritePass *this, llvm::Module *a2)
{
  MetalModulePass::runOnModule(this, a2);
  isLibraryModule = MTLBoundsCheck::isLibraryModule(a2, v4);
  if (!isLibraryModule)
  {
    v6 = a2 + 24;
    for (i = *(a2 + 4); i != v6; i = *(i + 8))
    {
      if (i)
      {
        v8 = (i - 56);
      }

      else
      {
        v8 = 0;
      }

      if ((llvm::GlobalValue::isDeclaration(v8) & 1) == 0)
      {
        v9 = *(v8 + 3);
        v10 = *(v9 + 12);
        if (v10 != 1)
        {
          v11 = *(v9 + 16) + 8;
          v12 = 8 * v10 - 8;
          while (1)
          {
            v13 = *(*v11 + 8);
            if (v13 == 15)
            {
              v14 = *(*(this + 4) + 23);
              v15 = (v13 & 0xFFFFFF00) == 768;
              if (MTLBoundsCheck::checkAddressSpace((v13 >> 8)) || (v14 & v15 & 1) != 0)
              {
                break;
              }
            }

            v11 += 8;
            v12 -= 8;
            if (!v12)
            {
              goto LABEL_20;
            }
          }

          if ((*(*(this + 4) + 20) & 2) != 0)
          {
            if (llvm::Function::hasFnAttribute())
            {
              llvm::Function::removeFnAttr();
            }

            if (llvm::Function::hasFnAttribute())
            {
              llvm::Function::removeFnAttr();
            }
          }
        }
      }

LABEL_20:
      ;
    }

    MTLArgumentRewritePass::stripDeadArguments(this);
    EntryFunction = MetalModulePass::getEntryFunction(this);
    MTLArgumentRewritePass::instrumentMainFunction(this, EntryFunction, *(this + 16));
  }

  return !isLibraryModule;
}

void MTLArgumentRewritePass::stripDeadArguments(MTLArgumentRewritePass *this)
{
  v44[4] = *MEMORY[0x277D85DE8];
  v26 = *(this + 5);
  v27 = v29;
  v28 = 0;
  EntryFunction = MetalModulePass::getEntryFunction(this);
  v3 = *(EntryFunction + 24);
  v25[1] = *(EntryFunction + 112);
  v42 = v44;
  v43 = 0x400000000;
  v39 = v41;
  v40 = 0x400000000;
  v37[0] = v38;
  v37[1] = 0x400000000;
  v34 = v36;
  v35 = 0x400000000;
  LODWORD(v25[0]) = 0;
  if (*(v3 + 12) != 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(this + 16) - 8 * *(*(this + 16) + 8) + 16);
      v6 = *(v5 - 8 * *(v5 + 8) + 8 * v4);
      Impl = v6;
      v29[0] = *(*(v3 + 16) + 8 * (v4 + 1));
      if (*(EntryFunction + 18))
      {
        llvm::Function::BuildLazyArguments(EntryFunction);
        v4 = v25[0];
        v6 = Impl;
      }

      v7 = *(EntryFunction + 88);
      String = llvm::MDString::getString(*&v6[-2 * v6[2] + 2]);
      v10 = v9;
      hasNUsesOrMore = llvm::Value::hasNUsesOrMore((v7 + 40 * v4));
      v14 = v10 != 14 || *String != 0x67616D692E726961 || *(String + 6) != 0x6B636F6C62656761;
      if ((v14 & (hasNUsesOrMore ^ 1) & 1) == 0)
      {
        MTLMDBuilder::getMetadata<unsigned int>(&v26, v43, v12);
        llvm::MDNode::replaceOperandWith();
        v15 = *(Impl + *(Impl + 2) - 1 - *(Impl + 2));
        if (!*v15)
        {
          v16 = llvm::MDString::getString(v15);
          if (v17 == 14 && *v16 == 0x5F6772612E726961 && *(v16 + 6) == 0x646573756E755F67)
          {
            llvm::SmallVector<llvm::Metadata *,8u>::SmallVector<llvm::MDOperand const*,void>(&v31, Impl - 8 * *(Impl + 2), Impl - 8);
            Impl = llvm::MDTuple::getImpl();
            if (v31 != &v32)
            {
              free(v31);
            }
          }
        }

        llvm::SmallVectorImpl<unsigned int>::emplace_back<unsigned int &>(v37, v25);
        llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v42, &Impl);
        llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v39, v29);
      }

      v4 = LODWORD(v25[0]) + 1;
      LODWORD(v25[0]) = v4;
      v19 = *(v3 + 12) - 1;
    }

    while (v4 < v19);
    if (v40 != v19)
    {
      v20 = llvm::FunctionType::get();
      v21 = *(EntryFunction + 32);
      v33 = 257;
      v22 = llvm::Function::Create(v20, v21 & 0xF, &v31, *(this + 6));
      v23 = *(this + 5);
      v33 = 257;
      llvm::BasicBlock::Create(v23, &v31, v22, 0, v24);
    }
  }

  if (v34 != v36)
  {
    free(v34);
  }

  if (v37[0] != v38)
  {
    free(v37[0]);
  }

  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  if (v27 != v29)
  {
    free(v27);
  }
}

void sub_257A552A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59)
{
  if (a26 != v59)
  {
    free(a26);
  }

  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a36);
  if (a59 != a11)
  {
    free(a59);
  }

  v62 = *(v60 - 224);
  if (v62 != a12)
  {
    free(v62);
  }

  v63 = *(v60 - 192);
  if (v63 != a13)
  {
    free(v63);
  }

  v64 = *(v60 - 144);
  if (v64 != a14)
  {
    free(v64);
  }

  if (a19 != a15)
  {
    free(a19);
  }

  _Unwind_Resume(a1);
}

void MTLArgumentRewritePass::instrumentMainFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69[8] = *MEMORY[0x277D85DE8];
  v5 = *(a3 - 8 * *(a3 + 8) + 16);
  v62[0] = &v5[-2 * v5[2]];
  v62[1] = v5;
  llvm::SmallVector<llvm::Metadata *,8u>::SmallVector<llvm::MDOperand const*>(&v67, v62);
  v59 = 0;
  v6 = *(a2 + 80);
  if (v6)
  {
    v7 = (v6 - 24);
  }

  else
  {
    v7 = 0;
  }

  FirstNonPHIOrDbg = llvm::BasicBlock::getFirstNonPHIOrDbg(v7);
  for (i = *(FirstNonPHIOrDbg + 16); i == 59; i = *(v13 + 16))
  {
    v10 = *(FirstNonPHIOrDbg + 32);
    v11 = *(FirstNonPHIOrDbg + 40) + 40;
    FirstNonPHIOrDbg = v10 - 24;
    if (v10)
    {
      v12 = v10 == v11;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v10 - 24;
    }
  }

  v64 = 257;
  llvm::SplitBlock();
  v59 = v7;
  v62[0] = "instrumentBlock";
  v64 = 259;
  llvm::Value::setName();
  MTLIRBuilder::MTLIRBuilder<llvm::BasicBlock *&>(v62, &v59);
  FirstNonPHI = llvm::BasicBlock::getFirstNonPHI(v59);
  llvm::IRBuilderBase::SetInsertPoint(v62, FirstNonPHI);
  if (*(*(a1 + 32) + 4) != 1)
  {
    v16 = 0;
    goto LABEL_62;
  }

  v16 = v68;
  if (v68)
  {
    v47 = 0;
    v17 = 8 * v68;
    v18 = v67;
    while (1)
    {
      v19 = *v18;
      v20 = (*v18 - 8 * *(*v18 + 8));
      v21 = *(*v20 + 128);
      v22 = (v21 + 24);
      if (*(v21 + 32) >= 0x41u)
      {
        v22 = *v22;
      }

      v23 = v20[1];
      v24 = *v22;
      if (*(a2 + 18))
      {
        llvm::Function::BuildLazyArguments(a2);
      }

      v25 = *(a2 + 88);
      String = llvm::MDString::getString(v23);
      v28 = v27;
      v29 = (v25 + 40 * v24);
      hasNUsesOrMore = llvm::Value::hasNUsesOrMore(v29);
      if ((hasNUsesOrMore & 1) == 0)
      {
        goto LABEL_59;
      }

      switch(v28)
      {
        case 19:
          hasNUsesOrMore = memcmp(String, "air.indirect_buffer", 0x13uLL);
          if (hasNUsesOrMore)
          {
            goto LABEL_49;
          }

          v42 = *v29;
          if (*(*v29 + 8) == 15)
          {
            v53 = 0;
            ParamDereferenceableBytes = 0;
            LOBYTE(v55) = 0;
            v56 = 0;
            v57 = 256;
            v58 = 1;
            MetalModulePass::cacheStaticBoundsInfo(a1, v29, &v53);
            v43 = MTLArgumentRewritePass::computeArgumentCount(a1, **(v42 + 16));
            hasNUsesOrMore = MTLBoundsCheck::getLocationIndex(v19);
            if ((*(*(a1 + 32) + 22) & 0x80) == 0)
            {
              v44 = hasNUsesOrMore;
              v60.n128_u64[0] = "air.read_write";
              v60.n128_u64[1] = 14;
              v61 = 1;
              MTLBoundsCheck::getArgAccessType(v19, &v60, &v48);
              v60 = v48;
              v45 = 2 * v44;
              if (llvm::StringRef::find() != -1)
              {
                *(*(*(a1 + 64) + 64) + 640) |= 1 << v45;
              }

              hasNUsesOrMore = llvm::StringRef::find();
              if (hasNUsesOrMore != -1)
              {
                *(*(*(a1 + 64) + 64) + 640) |= 2 << v45;
              }
            }

            v40 = v43 + v47;
            goto LABEL_58;
          }

          break;
        case 11:
          hasNUsesOrMore = memcmp(String, "air.texture", 0xBuLL);
          if (hasNUsesOrMore)
          {
            if (*String != 0x706D61732E726961 || *(String + 3) != 0x72656C706D61732ELL)
            {
LABEL_49:
              if (*(*v29 + 8) == 15)
              {
                v48.n128_u32[2] = 0;
                v48.n128_u8[12] = 0;
                v49 = 0;
                v51 = 0;
                v50 = 1;
                v48.n128_u64[0] = v29;
                MetalModulePass::cacheStaticBoundsInfo(a1, v29, &v48);
              }
            }
          }

          break;
        case 10:
          if (*String != 0x666675622E726961 || *(String + 4) != 29285)
          {
            goto LABEL_49;
          }

          hasNUsesOrMore = MTLBoundsCheck::checkAddressSpace(v29);
          if (hasNUsesOrMore)
          {
            LocationIndex = MTLBoundsCheck::getLocationIndex(v19);
            v53 = 0;
            v58 = 0;
            v57 = 256;
            v56 = 1;
            ParamDereferenceableBytes = 0;
            v55 = LocationIndex;
            if ((*(*(a1 + 32) + 20) & 0x40) != 0 && llvm::Function::hasParamAttribute())
            {
              ParamDereferenceableBytes = llvm::AttributeList::getParamDereferenceableBytes((a2 + 112));
            }

            v32 = LocationIndex;
            if ((*(*(a1 + 32) + 20) & 4) != 0)
            {
              v33 = llvm::ConstantInt::get();
              v34 = *(a1 + 72);
              v52 = 257;
              Cast = llvm::IRBuilderBase::CreateCast(v62, 47, v29, v34, &v48);
              v52 = 257;
              v36 = llvm::IRBuilderBase::CreateOr(v62, Cast, v33, &v48);
              v37 = *v29;
              v52 = 257;
              v38 = llvm::IRBuilderBase::CreateCast(v62, 48, v36, v37, &v48);
              llvm::Value::replaceUsesOutsideBlock();
              v29 = v38;
            }

            v53 = v29;
            MetalModulePass::cacheStaticBoundsInfo(a1, v29, &v53);
            if ((*(*(a1 + 32) + 22) & 0x80) == 0)
            {
              v60.n128_u64[0] = "air.read_write";
              v60.n128_u64[1] = 14;
              v61 = 1;
              MTLBoundsCheck::getArgAccessType(v19, &v60, &v48);
              v60 = v48;
              v39 = 2 * v32;
              if (llvm::StringRef::find() != -1)
              {
                *(*(*(a1 + 64) + 64) + 640) |= 1 << v39;
              }

              hasNUsesOrMore = llvm::StringRef::find();
              if (hasNUsesOrMore != -1)
              {
                *(*(*(a1 + 64) + 64) + 640) |= 2 << v39;
              }
            }

            v40 = v47 + 1;
LABEL_58:
            v47 = v40;
          }

          break;
        default:
          goto LABEL_49;
      }

LABEL_59:
      ++v18;
      v17 -= 8;
      if (!v17)
      {
        v16 = v47 > 0x5B;
        break;
      }
    }
  }

LABEL_62:
  if (!*(a1 + 120) && *(**(*(a2 + 24) + 16) + 8) != 7)
  {
    *(*(*(a1 + 64) + 64) + 640) &= 0x5555555555555555uLL;
  }

  if ((*(*(a1 + 32) + 22) & 1) == 0 && v16)
  {
    *(*(*(a1 + 64) + 64) + 648) |= 1u;
    *(*(*(a1 + 64) + 64) + 651) = 1;
    v46 = llvm::dbgs(hasNUsesOrMore);
    llvm::raw_ostream::operator<<(v46, "Instrumentation failure: argumentLimits\n", 0x28uLL);
  }

  llvm::MDTuple::getImpl();
  llvm::MDNode::replaceOperandWith();
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(&v66);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v65);
  if (v62[0] != &v63)
  {
    free(v62[0]);
  }

  if (v67 != v69)
  {
    free(v67);
  }
}

void sub_257A55AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  v25 = *(v23 - 176);
  if (v25 != (v23 - 160))
  {
    free(v25);
  }

  _Unwind_Resume(a1);
}

void *llvm::SmallVector<llvm::Metadata *,8u>::SmallVector<llvm::MDOperand const*,void>(void *a1, char *a2, char *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x800000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::MDOperand const*,void>(a1, a2, a3);
  return a1;
}

void sub_257A55B6C(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::MDOperand const*,void>(uint64_t result, char *a2, char *a3)
{
  v3 = a2;
  v4 = *(result + 8);
  if (v4 + ((a3 - a2) >> 3) > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a2 != a3)
  {
    v5 = (*result + 8 * v4);
    do
    {
      v6 = *v3;
      v3 += 8;
      *v5++ = v6;
    }

    while (v3 != a3);
  }

  *(result + 8) = v4 + ((a3 - a2) >> 3);
  return result;
}

uint64_t MTLArgumentRewritePass::computeArgumentCount(MTLArgumentRewritePass *this, llvm::Type *a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (a2 && v4 == 16)
  {
    v5 = 1;
LABEL_13:
    if (!isSpecialStructType(v2))
    {
      v8 = *(v2 + 3);
      if (v8)
      {
        v9 = 0;
        v10 = *(v2 + 2);
        v11 = 8 * v8;
        do
        {
          v12 = *v10++;
          v9 += MTLArgumentRewritePass::computeArgumentCount(this, v12);
          v11 -= 8;
        }

        while (v11);
        return (v9 * v5);
      }
    }

LABEL_22:
    v9 = 0;
    return (v9 * v5);
  }

  v5 = 1;
  v6 = *(a2 + 8);
  while (v2 && v6 == 17)
  {
    if (v4 == 17)
    {
      v7 = 1;
      do
      {
        v7 *= *(v2 + 8);
        v2 = *(v2 + 3);
        v4 = *(v2 + 8);
      }

      while (v4 == 17);
    }

    else
    {
      v7 = 1;
    }

    v5 *= v7;
    v6 = v4;
    if (v4 == 16)
    {
      goto LABEL_13;
    }
  }

  v9 = 0;
  if (v2 && v6 == 15)
  {
    v13 = **(v2 + 2);
    if (*(v13 + 8) != 16 || !isSpecialStructType(v13))
    {
      v9 = 1;
      return (v9 * v5);
    }

    goto LABEL_22;
  }

  return (v9 * v5);
}

void *llvm::SmallVector<llvm::Metadata *,8u>::SmallVector<llvm::MDOperand const*>(void *a1, char **a2)
{
  *a1 = a1 + 2;
  a1[1] = 0x800000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::MDOperand const*,void>(a1, *a2, a2[1]);
  return a1;
}

void sub_257A55D6C(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MTLGlobalTLSArgumentPass::~MTLGlobalTLSArgumentPass(MTLGlobalTLSArgumentPass *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2868EB908;
  v5 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v6, v7, v8);

  llvm::Pass::~Pass(this);
}

{
  *this = &unk_2868EB908;
  v5 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v6, v7, v8);
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

uint64_t MTLGlobalTLSArgumentPass::runOnModule(llvm::BasicBlock **this, llvm::Module *a2)
{
  v28[20] = *MEMORY[0x277D85DE8];
  MetalModulePass::runOnModule(this, a2);
  if (!MTLBoundsCheck::isLibraryModule(a2, v4))
  {
    v26 = v28;
    v27 = 0x400000000;
    v5 = *(a2 + 2);
    if (v5 != (a2 + 8))
    {
      do
      {
        if (v5)
        {
          v6 = v5 - 7;
        }

        else
        {
          v6 = 0;
        }

        if ((v6[33] & 0x1C) != 0 && *(*v6 + 8) == 15)
        {
          Metadata = llvm::Value::getMetadata();
          if (Metadata)
          {
            llvm::Value::setMetadata();
            LOBYTE(String) = 0;
            LOBYTE(v24) = 0;
            *&v21 = v6;
            v8 = (Metadata - 8 * *(Metadata + 8));
            *(&v21 + 1) = *v8;
            v9 = v8[1];
            if (v9)
            {
              String = llvm::MDString::getString(v9);
              v23 = v10;
              if ((v24 & 1) == 0)
              {
                LOBYTE(v24) = 1;
              }
            }

            llvm::SmallVectorImpl<MTLGlobalTLSArgumentPass::runOnModule(llvm::Module &)::GVInfo>::emplace_back<MTLGlobalTLSArgumentPass::runOnModule(llvm::Module &)::GVInfo&>(&v26, &v21);
          }
        }

        v5 = v5[1];
      }

      while (v5 != (a2 + 8));
      if (v27)
      {
        EntryFunction = MetalModulePass::getEntryFunction(this);
        v12 = EntryFunction;
        if (EntryFunction)
        {
          llvm::SmallVector<llvm::Type *,8u>::SmallVector<llvm::Type * const*,void>(&v25, (*(*(EntryFunction + 24) + 16) + 8), (*(*(EntryFunction + 24) + 16) + 8 * *(*(EntryFunction + 24) + 12)));
          if (v27)
          {
            v13 = v26;
            v14 = 40 * v27;
            do
            {
              *&v21 = *(*v13 + 24);
              if (*(v21 + 8) != 15)
              {
                *&v21 = llvm::PointerType::get();
              }

              llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v25, &v21);
              v13 += 40;
              v14 -= 40;
            }

            while (v14);
          }

          v15 = llvm::FunctionType::get();
          v16 = *(v12 + 32);
          v24 = 257;
          v17 = llvm::Function::Create(v15, v16 & 0xF, &v21, *(v12 + 40));
          *(v17 + 14) = *(v12 + 112);
          llvm::Value::takeName();
          llvm::Function::addFnAttr();
          *(v12 + 32) = *(v12 + 32) & 0xFFFFBFC0 | 0x4007;
          v18 = this[5];
          v24 = 257;
          llvm::BasicBlock::Create(v18, &v21, v17, 0, v19);
        }
      }
    }

    if (v26 != v28)
    {
      free(v26);
    }
  }

  return 0;
}

void sub_257A5671C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (STACK[0x258] != a10)
  {
    free(STACK[0x258]);
  }

  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&STACK[0x2A8]);
  if (STACK[0x330] != &STACK[0x340])
  {
    free(STACK[0x330]);
  }

  if (STACK[0x380] != a11)
  {
    free(STACK[0x380]);
  }

  _Unwind_Resume(a1);
}

uint64_t llvm::SmallVectorImpl<MTLGlobalTLSArgumentPass::runOnModule(llvm::Module &)::GVInfo>::emplace_back<MTLGlobalTLSArgumentPass::runOnModule(llvm::Module &)::GVInfo&>(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<MTLGlobalTLSArgumentPass::runOnModule(llvm::Module &)::GVInfo,true>::growAndEmplaceBack<MTLGlobalTLSArgumentPass::runOnModule(llvm::Module &)::GVInfo&>(a1, a2);
  }

  v3 = *a1 + 40 * v2;
  v4 = *a2;
  v5 = a2[1];
  *(v3 + 32) = *(a2 + 4);
  *v3 = v4;
  *(v3 + 16) = v5;
  LODWORD(v3) = *(a1 + 8) + 1;
  *(a1 + 8) = v3;
  return *a1 + 40 * v3 - 40;
}

uint64_t llvm::SmallVectorTemplateBase<MTLGlobalTLSArgumentPass::runOnModule(llvm::Module &)::GVInfo,true>::growAndEmplaceBack<MTLGlobalTLSArgumentPass::runOnModule(llvm::Module &)::GVInfo&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v3;
  v10 = *(a2 + 32);
  v4 = llvm::SmallVectorTemplateCommon<MTLGlobalTLSArgumentPass::runOnModule(llvm::Module &)::GVInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<MTLGlobalTLSArgumentPass::runOnModule(llvm::Module &)::GVInfo,true>>(a1, v9, 1);
  v5 = *a1 + 40 * *(a1 + 8);
  v6 = *(v4 + 32);
  v7 = *(v4 + 16);
  *v5 = *v4;
  *(v5 + 16) = v7;
  *(v5 + 32) = v6;
  LODWORD(v5) = *(a1 + 8) + 1;
  *(a1 + 8) = v5;
  return *a1 + 40 * v5 - 40;
}

unint64_t llvm::SmallVectorTemplateCommon<MTLGlobalTLSArgumentPass::runOnModule(llvm::Module &)::GVInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<MTLGlobalTLSArgumentPass::runOnModule(llvm::Module &)::GVInfo,true>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3 + a3 > *(a1 + 12))
  {
    v5 = *a1 + 40 * v3;
    if (*a1 > a2 || v5 <= a2)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  return a2;
}

uint64_t llvm::SmallVector<llvm::Type *,8u>::SmallVector<llvm::Type * const*,void>(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 0x800000000;
  llvm::SmallVectorImpl<llvm::Metadata *>::append<llvm::Metadata * const*,void>(a1, a2, a3);
  return a1;
}

void sub_257A569D0(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

void NullTextureCheckPass::~NullTextureCheckPass(NullTextureCheckPass *this)
{
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

BOOL NullTextureCheckPass::runOnModule(NullTextureCheckPass *this, llvm::Module *a2)
{
  v27[8] = *MEMORY[0x277D85DE8];
  if (*(*(*(this + 4) + 64) + 651))
  {
    return 0;
  }

  MDKindID = llvm::Module::getMDKindID();
  *(this + 7) = MDKindID;
  v25 = v27;
  v26 = 0x800000000;
  v22 = &v25;
  v23 = MDKindID;
  llvm::InstVisitor<NullTextureCheckPass::runOnModule(llvm::Module &)::OpVisitor,void>::visit<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>>(&v22, *(a2 + 4), a2 + 24);
  llvm::Type::getInt32Ty(*a2, v6);
  v7 = v25;
  if (v26)
  {
    v8 = (v25 + 8 * v26);
    do
    {
      v9 = *v7;
      MTLBoundsCheck::SharedPassData::indexForInstruction(*(this + 4), *v7);
      v10 = llvm::ConstantInt::get();
      v11 = *(v9 - 4);
      if (!v11 || *(v11 + 16) || *(v11 + 24) != *(v9 + 9))
      {
        v11 = 0;
      }

      CheckedTextureFunction = NullTextureCheckPass::getCheckedTextureFunction(this, v11);
      NumArgOperands = llvm::compat::getNumArgOperands(v9);
      v20[0] = 0;
      llvm::SmallVector<llvm::Value *,8u>::SmallVector(&v22, (NumArgOperands + 1), v20);
      v14 = 0;
      v15 = v9;
      while (v14 < llvm::compat::getNumArgOperands(v9))
      {
        *(v22 + v14++) = *(v15 - 4 * (*(v9 + 5) & 0x7FFFFFF));
        v15 = (v15 + 32);
      }

      *(v22 + v14) = v10;
      if (CheckedTextureFunction)
      {
        v16 = *(CheckedTextureFunction + 24);
      }

      else
      {
        v16 = 0;
      }

      v21 = 257;
      v17 = llvm::CallInst::Create(v16, CheckedTextureFunction, v22, v23, 0, 0, v20, 0);
      llvm::ReplaceInstWithInst(v9, v17, v18);
      if (v22 != &v24)
      {
        free(v22);
      }

      ++v7;
    }

    while (v7 != v8);
    v7 = v25;
    v2 = v26 != 0;
  }

  else
  {
    v2 = 0;
  }

  if (v7 != v27)
  {
    free(v7);
  }

  return v2;
}

void sub_257A56CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (a25 != v25)
  {
    free(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NullTextureCheckPass::getCheckedTextureFunction(NullTextureCheckPass *this, llvm::Function *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 5);
  Name = llvm::Value::getName(a2);
  v21 = v5;
  v6 = *(a2 + 3);
  *(&__p.__r_.__value_.__s + 23) = 12;
  strcpy(&__p, "mtl.checked.");
  v7 = std::string::append[abi:ne200100]<unsigned char const*,0>(&__p, (Name + 4), (Name + v5));
  if (SHIBYTE(v7->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, v7->__r_.__value_.__l.__data_, v7->__r_.__value_.__l.__size_);
  }

  else
  {
    v8 = *&v7->__r_.__value_.__l.__data_;
    v19.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v19.__r_.__value_.__l.__data_ = v8;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  Function = llvm::Module::getFunction();
  if (!Function)
  {
    llvm::Type::getInt8Ty(*v4, v9);
    Int32Ty = llvm::Type::getInt32Ty(*v4, v11);
    llvm::Type::getInt64Ty(*v4, v12);
    v17 = 0;
    llvm::SmallVector<llvm::Type *,8u>::SmallVector<llvm::Type * const*,void>(&__p, (*(v6 + 16) + 8), (*(v6 + 16) + 8 * *(v6 + 12)));
    llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&__p, &Int32Ty);
    v17 = llvm::FunctionType::get();
    if (__p.__r_.__value_.__l.__data_ != &__p.__r_.__value_.__r.__words[2])
    {
      free(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = *(a2 + 14);
    v13 = getOrInsertFunction<std::string const&,llvm::FunctionType *&,llvm::AttributeList>(v4, &v19, &v17, &__p);
    llvm::Function::addFnAttr();
    *(v13 + 8) = *(v13 + 8) & 0xFFFFBFC0 | 0x4007;
    if ((*(*(*(this + 4) + 72) + 20) & 2) != 0 && ((llvm::Function::hasFnAttribute() & 1) != 0 || llvm::Function::hasFnAttribute()))
    {
      llvm::Function::removeFnAttr();
    }

    v15 = *v4;
    __p.__r_.__value_.__r.__words[0] = "checkBlock";
    v23 = 259;
    llvm::BasicBlock::Create(v15, &__p, v13, 0, v14);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  return Function;
}

void sub_257A57794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a45 != a21)
  {
    free(a45);
  }

  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a55);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t llvm::InstVisitor<NullTextureCheckPass::runOnModule(llvm::Module &)::OpVisitor,void>::visit<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Function,false,false,void>,false,false>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = result;
    do
    {
      v5 = *(a2 + 8);
      if (a2)
      {
        v6 = a2 - 56;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v6 + 80);
      v8 = v6 + 72;
      if (v7 != v6 + 72)
      {
        do
        {
          v9 = *(v7 + 8);
          if (v7)
          {
            v10 = v7 - 24;
          }

          else
          {
            v10 = 0;
          }

          result = llvm::InstVisitor<NullTextureCheckPass::runOnModule(llvm::Module &)::OpVisitor,void>::visit(v4, v10);
          v7 = v9;
        }

        while (v9 != v8);
      }

      a2 = v5;
    }

    while (v5 != a3);
  }

  return result;
}

uint64_t llvm::InstVisitor<NullTextureCheckPass::runOnModule(llvm::Module &)::OpVisitor,void>::visit(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = a2 + 40;
  if (v2 != a2 + 40)
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 8);
      v6 = (v2 - 24);
      if (v2)
      {
        v7 = v2 - 24;
      }

      else
      {
        v7 = 0;
      }

      if (*(v7 + 16) == 84)
      {
        result = NullTextureCheckPass::TextureOpVisitor<NullTextureCheckPass::runOnModule(llvm::Module &)::OpVisitor>::visitCallInst(v4, v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t NullTextureCheckPass::TextureOpVisitor<NullTextureCheckPass::runOnModule(llvm::Module &)::OpVisitor>::visitCallInst(uint64_t a1, llvm::Instruction *a2)
{
  result = *(a2 - 4);
  if (!result)
  {
    return result;
  }

  if (*(result + 16))
  {
    return result;
  }

  if (*(result + 24) != *(a2 + 9))
  {
    return result;
  }

  result = llvm::Value::getName(result);
  if (v5 < 0xE)
  {
    return result;
  }

  v6 = result;
  if (*result == 0x5F7465672E726961 && *(result + 6) == 0x5F68746469775F74)
  {
    goto LABEL_193;
  }

  if (v5 == 14)
  {
    if ((*result != 0x5F7465672E726961 || *(result + 6) != 0x5F68747065645F74) && (*result != 0x646165722E726961 || *(result + 6) != 0x68747065645F6461))
    {
      return result;
    }

LABEL_193:

    return NullTextureCheckPass::runOnModule(llvm::Module &)::OpVisitor::visitTextureOp(a1, v6, v5, a2);
  }

  if (*result == 0x5F7465672E726961 && *(result + 7) == 0x5F7468676965685FLL)
  {
    goto LABEL_193;
  }

  if (*result == 0x5F7465672E726961 && *(result + 6) == 0x5F68747065645F74)
  {
    goto LABEL_193;
  }

  if (v5 < 0x13)
  {
    v12 = 1;
    v13 = 1;
    v14 = 1;
    v15 = 1;
    if (v5 < 0x10)
    {
      goto LABEL_81;
    }

    goto LABEL_76;
  }

  if (*result == 0x5F7465672E726961 && *(result + 8) == 0x69735F7961727261 && *(result + 11) == 0x5F657A69735F7961)
  {
    goto LABEL_193;
  }

  v13 = v5 < 0x17;
  if (v5 >= 0x17)
  {
    if (*result == 0x5F7465672E726961 && *(result + 8) == 0x5F70696D5F6D756ELL && *(result + 15) == 0x5F736C6576656C5FLL)
    {
      goto LABEL_193;
    }

LABEL_49:
    if (*result == 0x5F7465672E726961 && *(result + 8) == 0x706D61735F6D756ELL && *(result + 16) == 1601398124)
    {
      goto LABEL_193;
    }

    v12 = v5 < 0x1A;
    if (v5 >= 0x1A)
    {
      if (*result == 0x5F7465672E726961 && *(result + 8) == 0x5F6C656E6E616863 && *(result + 16) == 0x7079745F61746164 && *(result + 24) == 24421)
      {
        goto LABEL_193;
      }
    }

    else if (v5 < 0x16)
    {
      v12 = 1;
      goto LABEL_76;
    }

    if (*result == 0x5F7465672E726961 && *(result + 8) == 0x5F6C656E6E616863 && *(result + 14) == 0x5F726564726F5F6CLL)
    {
      goto LABEL_193;
    }

    goto LABEL_76;
  }

  if (v5 != 19)
  {
    goto LABEL_49;
  }

  v12 = 1;
  v13 = 1;
LABEL_76:
  if (*result == 0x646165722E726961 && *(result + 8) == 0x657275747865745FLL)
  {
    goto LABEL_193;
  }

  v14 = 0;
  v15 = v5 < 0x13;
LABEL_81:
  if (*result == 0x646165722E726961 && *(result + 6) == 0x68747065645F6461)
  {
    goto LABEL_193;
  }

  if (v5 >= 0x11)
  {
    v29 = *(result + 8);
    v30 = *(result + 16);
    v31 = *v6 == 0x746972772E726961 && v29 == 0x7275747865745F65;
    if (v31 && v30 == 101)
    {
      goto LABEL_193;
    }
  }

  result = 0x68747065645F6574;
  if (*v6 == 0x746972772E726961 && *(v6 + 7) == 0x68747065645F6574)
  {
    goto LABEL_193;
  }

  if (v5 >= 0x12)
  {
    result = *(v6 + 16);
    v34 = *v6 == 0x706D61732E726961 && *(v6 + 8) == 0x75747865745F656CLL;
    if (v34 && result == 25970)
    {
      goto LABEL_193;
    }
  }

  if ((v14 & 1) == 0)
  {
    result = 0x68747065645F656CLL;
    if (*v6 == 0x706D61732E726961 && *(v6 + 8) == 0x68747065645F656CLL)
    {
      goto LABEL_193;
    }
  }

  if (!v15)
  {
    v37 = *v6 == 0x706D61732E726961 && *(v6 + 8) == 0x61706D6F635F656CLL;
    if (v37 && *(v6 + 11) == 0x5F657261706D6F63)
    {
      goto LABEL_193;
    }
  }

  if (v5 >= 0x12)
  {
    result = *(v6 + 16);
    v39 = *v6 == 0x687461672E726961 && *(v6 + 8) == 0x75747865745F7265;
    if (v39 && result == 25970)
    {
      goto LABEL_193;
    }
  }

  if ((v14 & 1) == 0 && *v6 == 0x687461672E726961 && *(v6 + 8) == 0x68747065645F7265)
  {
    goto LABEL_193;
  }

  if (v5 >= 0x18)
  {
    result = 0x68747065645F6572;
    v42 = *v6 == 0x687461672E726961 && *(v6 + 8) == 0x61706D6F635F7265;
    if (v42 && *(v6 + 16) == 0x68747065645F6572)
    {
      goto LABEL_193;
    }
  }

  if (!v12)
  {
    v44 = *v6 == 0x636C61632E726961 && *(v6 + 8) == 0x6C635F6574616C75;
    v45 = v44 && *(v6 + 16) == 0x6F6C5F6465706D61;
    if (v45 && *(v6 + 24) == 24420)
    {
      goto LABEL_193;
    }
  }

  if (v5 >= 0x1C)
  {
    v47 = *v6 == 0x636C61632E726961 && *(v6 + 8) == 0x6E755F6574616C75;
    v48 = v47 && *(v6 + 16) == 0x5F6465706D616C63;
    if (v48 && *(v6 + 24) == 1600417644)
    {
      goto LABEL_193;
    }
  }

  if (v5 >= 0x11)
  {
    v50 = *v6 == 0x636E65662E726961 && *(v6 + 8) == 0x7275747865745F65;
    if (v50 && *(v6 + 16) == 101)
    {
      goto LABEL_193;
    }
  }

  if (*v6 == 0x636E65662E726961 && *(v6 + 7) == 0x68747065645F6563)
  {
    goto LABEL_193;
  }

  if (v5 >= 0x19)
  {
    v53 = *v6 == 0x5F7465672E726961 && *(v6 + 8) == 0x695F657571696E75;
    v54 = v53 && *(v6 + 16) == 0x7275747865745F64;
    if (v54 && *(v6 + 24) == 101)
    {
      goto LABEL_193;
    }
  }

  if (!v13)
  {
    v56 = *v6 == 0x5F7465672E726961 && *(v6 + 8) == 0x695F657571696E75;
    if (v56 && *(v6 + 15) == 0x68747065645F6469)
    {
      goto LABEL_193;
    }
  }

  return result;
}

uint64_t NullTextureCheckPass::runOnModule(llvm::Module &)::OpVisitor::visitTextureOp(uint64_t a1, int a2, int a3, llvm::Instruction *this)
{
  if (!*(a1 + 8) || !*(this + 6) && (*(this + 23) & 0x20) == 0 || (result = llvm::Instruction::getMetadataImpl(this)) == 0)
  {
    v7 = *a1;
    v8 = this;
    return llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v7, &v8);
  }

  return result;
}

std::string *std::string::append[abi:ne200100]<unsigned char const*,0>(std::string *this, std::string *a2, std::string *a3)
{
  v4 = a2;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - a2;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == a2)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == a2)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > v4 || (&v10->__r_.__value_.__l.__data_ + size + 1) <= v4)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    while (v4 != a3)
    {
      v16 = v4->__r_.__value_.__s.__data_[0];
      v4 = (v4 + 1);
      *v15++ = v16;
    }

    *v15 = 0;
    v17 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v17;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v17 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(__p, v4, a3, v7);
    if ((v20 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v13 = v20;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_257A581DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getOrInsertFunction<std::string const&,llvm::FunctionType *&,llvm::AttributeList>(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  llvm::Module::getOrInsertFunction();
  result = v4;
  if (*(v4 + 16) == 5)
  {
    return *(v4 - 32 * (*(v4 + 20) & 0x7FFFFFF));
  }

  return result;
}

_BYTE *std::string::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(_BYTE *result, char *a2, char *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (a4 > 0x16)
  {
    operator new();
  }

  result[23] = a4;
  while (a2 != a3)
  {
    v6 = *a2++;
    *v5++ = v6;
  }

  *v5 = 0;
  return result;
}

void StitchingReflection::initializeMetadataTypeMapMap(StitchingReflection *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v362.__r_.__value_.__l.__size_ = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__s, "air.void_type");
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
  }

  else
  {
    __str = __s;
  }

  v80 = xmmword_257A6DF10;
  v81 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v77, "air.BOOL_type");
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v82, v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
  }

  else
  {
    v82 = v77;
  }

  v83 = xmmword_257A6DF20;
  v84 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v76, "air.char_type");
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v85, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
  }

  else
  {
    v85 = v76;
  }

  v86 = xmmword_257A6DF30;
  v87 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v75, "air.uchar_type");
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v88, v75.__r_.__value_.__l.__data_, v75.__r_.__value_.__l.__size_);
  }

  else
  {
    v88 = v75;
  }

  v89 = xmmword_257A6DF40;
  v90 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v74, "air.short_type");
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v91, v74.__r_.__value_.__l.__data_, v74.__r_.__value_.__l.__size_);
  }

  else
  {
    v91 = v74;
  }

  v92 = xmmword_257A6DF50;
  v93 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v73, "air.ushort_type");
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v94, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
  }

  else
  {
    v94 = v73;
  }

  v95 = 41;
  v96 = 0;
  v97 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v72, "air.int_type");
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v98, v72.__r_.__value_.__l.__data_, v72.__r_.__value_.__l.__size_);
  }

  else
  {
    v98 = v72;
  }

  v99 = 29;
  v100 = 0;
  v101 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v71, "air.uint_type");
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v102, v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_);
  }

  else
  {
    v102 = v71;
  }

  v103 = 33;
  v104 = 0;
  v105 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v70, "air.long_type");
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v106, v70.__r_.__value_.__l.__data_, v70.__r_.__value_.__l.__size_);
  }

  else
  {
    v106 = v70;
  }

  v107 = 81;
  v108 = 0;
  v109 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v69, "air.ulong_type");
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v110, v69.__r_.__value_.__l.__data_, v69.__r_.__value_.__l.__size_);
  }

  else
  {
    v110 = v69;
  }

  v111 = 85;
  v112 = 0;
  v113 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v68, "air.half_type");
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v114, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
  }

  else
  {
    v114 = v68;
  }

  v115 = 16;
  v116 = 0;
  v117 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v67, "air.float_type");
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v118, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_);
  }

  else
  {
    v118 = v67;
  }

  v119 = 3;
  v120 = 0;
  v121 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v66, "air.double_type");
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v122, v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
  }

  else
  {
    v122 = v66;
  }

  v123 = 89;
  v124 = 0;
  v125 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v65, "air.bfloat_type");
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v126, v65.__r_.__value_.__l.__data_, v65.__r_.__value_.__l.__size_);
  }

  else
  {
    v126 = v65;
  }

  v127 = 121;
  v128 = 0;
  v129 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v64, "air.matrix_type");
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v130, v64.__r_.__value_.__l.__data_, v64.__r_.__value_.__l.__size_);
  }

  else
  {
    v130 = v64;
  }

  v131 = 136;
  v132 = 0;
  v133 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v63, "air.pointer_type");
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v134, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_);
  }

  else
  {
    v134 = v63;
  }

  v135 = 60;
  v136 = 0;
  v137 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v62, "air.lvalue_reference_type");
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v138, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
  }

  else
  {
    v138 = v62;
  }

  v139 = 60;
  v140 = 0;
  v141 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v61, "air.rvalue_reference_type");
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v142, v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_);
  }

  else
  {
    v142 = v61;
  }

  v143 = 60;
  v144 = 0;
  v145 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v60, "air.array_type");
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v146, v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
  }

  else
  {
    v146 = v60;
  }

  v147 = 2;
  v148 = 0;
  v149 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v59, "air.struct_type");
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v150, v59.__r_.__value_.__l.__data_, v59.__r_.__value_.__l.__size_);
  }

  else
  {
    v150 = v59;
  }

  v151 = 1;
  v152 = 0;
  v153 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v58, "air.sampler_type");
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v154, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
  }

  else
  {
    v154 = v58;
  }

  v155 = 59;
  v156 = 0;
  v157 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v57, "air.instance_acceleration_structure_type");
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v158, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
  }

  else
  {
    v158 = v57;
  }

  v159 = 118;
  v160 = 0;
  v161 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v56, "air.primitive_acceleration_structure_type");
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v162, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
  }

  else
  {
    v162 = v56;
  }

  v163 = 117;
  v164 = 0;
  v165 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v55, "air.texture_1d_type");
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v166, v55.__r_.__value_.__l.__data_, v55.__r_.__value_.__l.__size_);
  }

  else
  {
    v166 = v55;
  }

  v167 = 58;
  v168 = 0;
  v169 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v54, "air.texture_1d_array_type");
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v170, v54.__r_.__value_.__l.__data_, v54.__r_.__value_.__l.__size_);
  }

  else
  {
    v170 = v54;
  }

  v171 = 58;
  v172 = 1;
  v173 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v53, "air.texture_2d_type");
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v174, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
  }

  else
  {
    v174 = v53;
  }

  v175 = 58;
  v176 = 2;
  v177 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v52, "air.texture_2d_array_type");
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v178, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
  }

  else
  {
    v178 = v52;
  }

  v179 = 58;
  v180 = 3;
  v181 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v51, "air.texture_3d_type");
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v182, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
  }

  else
  {
    v182 = v51;
  }

  v183 = 58;
  v184 = 7;
  v185 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v50, "air.texture_cube_type");
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v186, v50.__r_.__value_.__l.__data_, v50.__r_.__value_.__l.__size_);
  }

  else
  {
    v186 = v50;
  }

  v187 = 58;
  v188 = 5;
  v189 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v49, "air.texture_cube_array_type");
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v190, v49.__r_.__value_.__l.__data_, v49.__r_.__value_.__l.__size_);
  }

  else
  {
    v190 = v49;
  }

  v191 = 58;
  v192 = 6;
  v193 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v48, "air.texture_2d_ms_type");
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v194, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
  }

  else
  {
    v194 = v48;
  }

  v195 = 58;
  v196 = 4;
  v197 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v47, "air.texture_2d_ms_array_type");
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v198, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
  }

  else
  {
    v198 = v47;
  }

  v199 = 58;
  v200 = 8;
  v201 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v46, "air.texture_buffer_1d_type");
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v202, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_);
  }

  else
  {
    v202 = v46;
  }

  v203 = 58;
  v204 = 9;
  v205 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v45, "air.depth_2d_type");
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v206, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
  }

  else
  {
    v206 = v45;
  }

  v207 = 58;
  v208 = 2;
  v209 = 1;
  std::string::basic_string[abi:ne200100]<0>(&v44, "air.depth_2d_array_type");
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v210, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
  }

  else
  {
    v210 = v44;
  }

  v211 = 58;
  v212 = 3;
  v213 = 1;
  std::string::basic_string[abi:ne200100]<0>(&v43, "air.depth_cube_type");
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v214, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
  }

  else
  {
    v214 = v43;
  }

  v215 = 58;
  v216 = 5;
  v217 = 1;
  std::string::basic_string[abi:ne200100]<0>(&v42, "air.depth_cube_array_type");
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v218, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
  }

  else
  {
    v218 = v42;
  }

  v219 = 58;
  v220 = 6;
  v221 = 1;
  std::string::basic_string[abi:ne200100]<0>(&v41, "air.depth_2d_ms_type");
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v222, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
  }

  else
  {
    v222 = v41;
  }

  v223 = 58;
  v224 = 4;
  v225 = 1;
  std::string::basic_string[abi:ne200100]<0>(&v40, "air.depth_2d_ms_array_type");
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v226, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
  }

  else
  {
    v226 = v40;
  }

  v227 = 58;
  v228 = 8;
  v229 = 1;
  std::string::basic_string[abi:ne200100]<0>(&v39, "air.r8unorm_type");
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v230, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
  }

  else
  {
    v230 = v39;
  }

  v231 = 62;
  v232 = 0;
  v233 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v38, "air.r8snorm_type");
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v234, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
  }

  else
  {
    v234 = v38;
  }

  v235 = 63;
  v236 = 0;
  v237 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v37, "air.r16unorm_type");
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v238, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
  }

  else
  {
    v238 = v37;
  }

  v239 = 64;
  v240 = 0;
  v241 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v36, "air.r16snorm_type");
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v242, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
  }

  else
  {
    v242 = v36;
  }

  v243 = 65;
  v244 = 0;
  v245 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v35, "air.rg8unorm_type");
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v246, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
  }

  else
  {
    v246 = v35;
  }

  v247 = 66;
  v248 = 0;
  v249 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v34, "air.rg8snorm_type");
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v250, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
  }

  else
  {
    v250 = v34;
  }

  v251 = 67;
  v252 = 0;
  v253 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v33, "air.rg16unorm_type");
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v254, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
  }

  else
  {
    v254 = v33;
  }

  v255 = 68;
  v256 = 0;
  v257 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v32, "air.rg16snorm_type");
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v258, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
  }

  else
  {
    v258 = v32;
  }

  v259 = 69;
  v260 = 0;
  v261 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v31, "air.rgba8unorm_type");
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v262, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
  }

  else
  {
    v262 = v31;
  }

  v263 = 70;
  v264 = 0;
  v265 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v30, "air.rgba8snorm_type");
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v266, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
  }

  else
  {
    v266 = v30;
  }

  v267 = 72;
  v268 = 0;
  v269 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v29, "air.rgba16unorm_type");
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v270, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    v270 = v29;
  }

  v271 = 73;
  v272 = 0;
  v273 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v28, "air.rgba16snorm_type");
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v274, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
  }

  else
  {
    v274 = v28;
  }

  v275 = 74;
  v276 = 0;
  v277 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v27, "air.srgba8unorm_type");
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v278, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
  }

  else
  {
    v278 = v27;
  }

  v279 = 71;
  v280 = 0;
  v281 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v26, "air.rgb10a2_type");
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v282, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    v282 = v26;
  }

  v283 = 75;
  v284 = 0;
  v285 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v25, "air.rg11b10f_type");
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v286, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    v286 = v25;
  }

  v287 = 92;
  v288 = 0;
  v289 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v24, "air.rgb9e5_type");
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v290, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
  }

  else
  {
    v290 = v24;
  }

  v291 = 77;
  v292 = 0;
  v293 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v23, "air.visible_function_table_type");
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v294, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    v294 = v23;
  }

  v295 = 115;
  v296 = 0;
  v297 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v22, "air.intersection_function_table_type");
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v298, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
  }

  else
  {
    v298 = v22;
  }

  v299 = 116;
  v300 = 0;
  v301 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v21, "air.vector_type");
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v302, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
  }

  else
  {
    v302 = v21;
  }

  v303 = 137;
  v304 = 0;
  v305 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v20, "air.packed_vector_type");
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v306, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    v306 = v20;
  }

  v307 = 137;
  v308 = 0;
  v309 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v19, "air.imageblock_type");
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v310, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
  }

  else
  {
    v310 = v19;
  }

  v311 = 138;
  v312 = 0;
  v313 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v18, "air.opaque_type");
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v314, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
  }

  else
  {
    v314 = v18;
  }

  v315 = 0u;
  v316 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v17, "air.llong_type");
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v317, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  }

  else
  {
    v317 = v17;
  }

  v318 = 0u;
  v319 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v16, "air.ullong_type");
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v320, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    v320 = v16;
  }

  v321 = 0u;
  v322 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v15, "air.function_type");
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v323, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    v323 = v15;
  }

  v324 = 0u;
  v325 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v14, "air.enum_type");
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v326, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    v326 = v14;
  }

  v327 = 0u;
  v328 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v13, "air.union_type");
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v329, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
  }

  else
  {
    v329 = v13;
  }

  v330 = 0u;
  v331 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v12, "air.command_buffer_type");
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v332, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
  }

  else
  {
    v332 = v12;
  }

  v333 = 0u;
  v334 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v11, "air.compute_pipeline_state_type");
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v335, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    v335 = v11;
  }

  v336 = 0u;
  v337 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v10, "air.render_pipeline_state_type");
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v338, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
  }

  else
  {
    v338 = v10;
  }

  v339 = 0u;
  v340 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v9, "air.mesh_grid_properties_type");
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v341, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
  }

  else
  {
    v341 = v9;
  }

  v342 = 0u;
  v343 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v8, "air.patch_control_point_type");
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v344, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
  }

  else
  {
    v344 = v8;
  }

  v345 = 0u;
  v346 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v7, "air.interpolant_type");
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v347, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
  }

  else
  {
    v347 = v7;
  }

  v348 = 0u;
  v349 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v6, "air.bounds_checked_buffer_type");
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v350, v6.__r_.__value_.__l.__data_, v6.__r_.__value_.__l.__size_);
  }

  else
  {
    v350 = v6;
  }

  v351 = 0u;
  v352 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v5, "air.mesh_type");
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v353, v5.__r_.__value_.__l.__data_, v5.__r_.__value_.__l.__size_);
  }

  else
  {
    v353 = v5;
  }

  v354 = 0u;
  v355 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v4, "air.array_of_type");
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v356, v4.__r_.__value_.__l.__data_, v4.__r_.__value_.__l.__size_);
  }

  else
  {
    v356 = v4;
  }

  v357 = 0u;
  v358 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "air.array_ref_of_type");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v359, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v359 = __p;
  }

  v360 = 0u;
  v361 = 0;
  std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__assign_unique<std::pair<std::string const,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>> const*>((v1 + 312), &__str, &v362);
  v2 = 456;
  do
  {
    if (SHIBYTE(v77.__r_.__value_.__r.__words[v2 + 2]) < 0)
    {
      operator delete(*(&v77.__r_.__value_.__l.__data_ + v2 * 8));
    }

    v2 -= 6;
  }

  while (v2 * 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_257A5A164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (a65 < 0)
  {
    operator delete(a63);
  }

  if (a67 < 0)
  {
    operator delete(a66);
  }

  if (a69 < 0)
  {
    operator delete(a68);
  }

  if (a71 < 0)
  {
    operator delete(a70);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (a75 < 0)
  {
    operator delete(a74);
  }

  if (a77 < 0)
  {
    operator delete(a76);
  }

  if (a79 < 0)
  {
    operator delete(a78);
  }

  if (a81 < 0)
  {
    operator delete(a80);
  }

  if (a83 < 0)
  {
    operator delete(a82);
  }

  if (a85 < 0)
  {
    operator delete(a84);
  }

  if (a87 < 0)
  {
    operator delete(a86);
  }

  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(a88);
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    operator delete(STACK[0x258]);
  }

  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(STACK[0x270]);
  }

  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
    operator delete(STACK[0x2D0]);
  }

  if (SLOBYTE(STACK[0x2FF]) < 0)
  {
    operator delete(STACK[0x2E8]);
  }

  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(STACK[0x300]);
  }

  if (SLOBYTE(STACK[0x32F]) < 0)
  {
    operator delete(STACK[0x318]);
  }

  if (SLOBYTE(STACK[0x347]) < 0)
  {
    operator delete(STACK[0x330]);
  }

  if (SLOBYTE(STACK[0x35F]) < 0)
  {
    operator delete(STACK[0x348]);
  }

  if (SLOBYTE(STACK[0x377]) < 0)
  {
    operator delete(STACK[0x360]);
  }

  if (SLOBYTE(STACK[0x38F]) < 0)
  {
    operator delete(STACK[0x378]);
  }

  if (SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
  }

  if (SLOBYTE(STACK[0x3BF]) < 0)
  {
    operator delete(STACK[0x3A8]);
  }

  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(STACK[0x3C0]);
  }

  if (SLOBYTE(STACK[0x3EF]) < 0)
  {
    operator delete(STACK[0x3D8]);
  }

  if (SLOBYTE(STACK[0x407]) < 0)
  {
    operator delete(STACK[0x3F0]);
  }

  if (SLOBYTE(STACK[0x41F]) < 0)
  {
    operator delete(STACK[0x408]);
  }

  if (SLOBYTE(STACK[0x437]) < 0)
  {
    operator delete(STACK[0x420]);
  }

  if (SLOBYTE(STACK[0x44F]) < 0)
  {
    operator delete(STACK[0x438]);
  }

  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(STACK[0x450]);
  }

  if (SLOBYTE(STACK[0x47F]) < 0)
  {
    operator delete(STACK[0x468]);
  }

  if (SLOBYTE(STACK[0x497]) < 0)
  {
    operator delete(STACK[0x480]);
  }

  if (SLOBYTE(STACK[0x4AF]) < 0)
  {
    operator delete(STACK[0x498]);
  }

  if (SLOBYTE(STACK[0x4C7]) < 0)
  {
    operator delete(STACK[0x4B0]);
  }

  if (SLOBYTE(STACK[0x4DF]) < 0)
  {
    operator delete(STACK[0x4C8]);
  }

  if (SLOBYTE(STACK[0x4F7]) < 0)
  {
    operator delete(STACK[0x4E0]);
  }

  if (SLOBYTE(STACK[0x50F]) < 0)
  {
    operator delete(STACK[0x4F8]);
  }

  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(STACK[0x510]);
  }

  if (SLOBYTE(STACK[0x53F]) < 0)
  {
    operator delete(STACK[0x528]);
  }

  if (SLOBYTE(STACK[0x557]) < 0)
  {
    operator delete(STACK[0x540]);
  }

  if (SLOBYTE(STACK[0x56F]) < 0)
  {
    operator delete(STACK[0x558]);
  }

  if (SLOBYTE(STACK[0x587]) < 0)
  {
    operator delete(STACK[0x570]);
  }

  if (SLOBYTE(STACK[0x59F]) < 0)
  {
    operator delete(STACK[0x588]);
  }

  if (SLOBYTE(STACK[0x5B7]) < 0)
  {
    operator delete(STACK[0x5A0]);
  }

  if (SLOBYTE(STACK[0x5CF]) < 0)
  {
    operator delete(STACK[0x5B8]);
  }

  if (SLOBYTE(STACK[0x5E7]) < 0)
  {
    operator delete(STACK[0x5D0]);
  }

  if (SLOBYTE(STACK[0x5FF]) < 0)
  {
    operator delete(STACK[0x5E8]);
  }

  if (SLOBYTE(STACK[0x617]) < 0)
  {
    operator delete(STACK[0x600]);
  }

  if (SLOBYTE(STACK[0x62F]) < 0)
  {
    operator delete(STACK[0x618]);
  }

  if (SLOBYTE(STACK[0x647]) < 0)
  {
    operator delete(STACK[0x630]);
  }

  if (SLOBYTE(STACK[0x65F]) < 0)
  {
    operator delete(STACK[0x648]);
  }

  if (SLOBYTE(STACK[0x677]) < 0)
  {
    operator delete(STACK[0x660]);
  }

  if (SLOBYTE(STACK[0x68F]) < 0)
  {
    operator delete(STACK[0x678]);
  }

  if (SLOBYTE(STACK[0x6A7]) < 0)
  {
    operator delete(STACK[0x690]);
  }

  if (SLOBYTE(STACK[0x6BF]) < 0)
  {
    operator delete(STACK[0x6A8]);
  }

  if (SLOBYTE(STACK[0x6D7]) < 0)
  {
    operator delete(STACK[0x6C0]);
  }

  if (SLOBYTE(STACK[0x6EF]) < 0)
  {
    operator delete(STACK[0x6D8]);
  }

  if (SLOBYTE(STACK[0x707]) < 0)
  {
    operator delete(STACK[0x6F0]);
  }

  if (SLOBYTE(STACK[0x71F]) < 0)
  {
    operator delete(STACK[0x708]);
  }

  while (v88 != &STACK[0x720])
  {
    v90 = *(v88 - 25);
    v88 -= 6;
    if (v90 < 0)
    {
      operator delete(*v88);
    }
  }

  _Unwind_Resume(a1);
}

void StitchingReflection::StitchingReflection(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  MTLArgumentData::MTLArgumentData((a1 + 3));
}

void sub_257A5AE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::~__hash_table(a9);
  MTLArgumentData::~MTLArgumentData((v19 + 3));
  a19 = v19;
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void StitchingReflection::getReflectionFromStitchingMetadata(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  StitchingReflection::stitchingArgumentTypeFromNode(a1, a2, &v10);
  v8 = v10.n128_u32[0];
  if (v10.n128_i64[0] <= 57)
  {
    if (v10.n128_i64[0] > 32)
    {
      if (v10.n128_i64[0] > 44)
      {
        if (v10.n128_u64[0] != 45 && v10.n128_u64[0] != 49 && v10.n128_u64[0] != 53)
        {
          goto LABEL_38;
        }
      }

      else if (v10.n128_u64[0] != 33 && v10.n128_u64[0] != 37 && v10.n128_u64[0] != 41)
      {
        goto LABEL_38;
      }

      goto LABEL_11;
    }

    if (v10.n128_i64[0] > 2)
    {
      if (v10.n128_u64[0] != 3 && v10.n128_u64[0] != 16 && v10.n128_u64[0] != 29)
      {
        goto LABEL_38;
      }

      goto LABEL_11;
    }

    if (v10.n128_u64[0] == 1)
    {
      StitchingReflection::initStructType(a1, a2, v4, a4);
      goto LABEL_12;
    }

    if (v10.n128_u64[0] == 2)
    {
      StitchingReflection::initArrayType(a1, a2, a4);
      goto LABEL_12;
    }

LABEL_38:
    v9 = v13;
    *a4 = v12;
    *(a4 + 16) = v9;
    *(a4 + 32) = v14;
    *(a4 + 56) = 0;
    *(a4 + 64) = 0;
    *(a4 + 48) = 0;
    v16 = 0;
    v15 = 0uLL;
    goto LABEL_12;
  }

  if (v10.n128_i64[0] > 135)
  {
    switch(v10.n128_u64[0])
    {
      case 0x88uLL:
        StitchingReflection::initMatrixType(a1, a2, a4);
        goto LABEL_12;
      case 0x89uLL:
        StitchingReflection::initVectorType(a1, a2, a4);
        goto LABEL_12;
      case 0x8AuLL:
        StitchingReflection::initImageBlockType(a1, a2, a4);
        goto LABEL_12;
    }

    goto LABEL_38;
  }

  if (v10.n128_u64[0] - 59 > 0x3E)
  {
LABEL_32:
    if (v10.n128_u64[0] == 58)
    {
      StitchingReflection::initTextureType(a1, a2, v10.n128_i32[2], v11, a4);
      goto LABEL_12;
    }

    goto LABEL_38;
  }

  if (((1 << (v10.n128_u8[0] - 59)) & 0x4000000044400004) == 0)
  {
    if (v10.n128_u64[0] == 59)
    {
      *(a4 + 64) = 0;
      *(a4 + 32) = 0u;
      *(a4 + 48) = 0u;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      *a4 = 59;
      goto LABEL_12;
    }

    if (v10.n128_u64[0] == 60)
    {
      StitchingReflection::initPointerType(a1, a2, a4);
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_11:
  *(a4 + 64) = 0;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *a4 = v8;
LABEL_12:
  v10.n128_u64[0] = &v15;
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v10);
}

void sub_257A5B0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  a10 = &a19;
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

double StitchingReflection::initScalarType@<D0>(MTLDataType a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *a2 = a1;
  return result;
}

uint64_t StitchingReflection::getMatrixType(uint64_t a1, uint64_t a2)
{
  StitchingReflection::stitchingArgumentTypeFromNode(a1, *(a2 - 8 * *(a2 + 8) + 32), v24);
  v3 = a2 - 8 * *(a2 + 8);
  v4 = *(*(v3 + 40) + 128);
  if (*(v4 + 16) == 16)
  {
    v5 = (v4 + 24);
    if (*(v4 + 32) >= 0x41u)
    {
      v5 = *v5;
    }

    v6 = *v5;
  }

  else
  {
    v6 = -1;
  }

  v7 = *(*(v3 + 48) + 128);
  if (*(v7 + 16) == 16)
  {
    v8 = (v7 + 24);
    if (*(v7 + 32) >= 0x41u)
    {
      v8 = *v8;
    }

    v9 = *v8;
  }

  else
  {
    v9 = -1;
  }

  if (v24[0] == 121)
  {
    v18 = v9 - 2;
    v19 = v9 + 131;
    if ((v9 - 2) >= 3)
    {
      v19 = 0;
    }

    v20 = v9 | 0x80;
    if (v18 >= 3)
    {
      v20 = 0;
    }

    v21 = v9 + 125;
    if (v18 >= 3)
    {
      v22 = 0;
    }

    else
    {
      v22 = v21;
    }

    if (v6 != 2)
    {
      v22 = 0;
    }

    if (v6 == 3)
    {
      v22 = v20;
    }

    if (v6 == 4)
    {
      return v19;
    }

    else
    {
      return v22;
    }
  }

  else
  {
    v10 = v9 - 2;
    v11 = v9 | 0x18;
    if ((v9 - 2) >= 3)
    {
      v11 = 0;
    }

    v12 = v9 + 21;
    if (v10 >= 3)
    {
      v12 = 0;
    }

    v13 = v9 + 18;
    if (v10 >= 3)
    {
      v13 = 0;
    }

    if (v6 != 2)
    {
      v13 = 0;
    }

    if (v6 != 3)
    {
      v12 = v13;
    }

    if (v6 != 4)
    {
      v11 = v12;
    }

    v14 = v9 + 11;
    if (v10 >= 3)
    {
      v14 = 0;
    }

    v15 = v9 | 8;
    if (v10 >= 3)
    {
      v15 = 0;
    }

    v16 = v9 + 5;
    if (v10 >= 3)
    {
      v16 = 0;
    }

    if (v6 != 2)
    {
      v16 = 0;
    }

    if (v6 == 3)
    {
      v16 = v15;
    }

    if (v6 == 4)
    {
      v17 = v14;
    }

    else
    {
      v17 = v16;
    }

    if (v24[0] != 3)
    {
      v17 = 0;
    }

    if (v24[0] == 16)
    {
      return v11;
    }
  }

  return v17;
}

__n128 StitchingReflection::stitchingArgumentTypeFromNode@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v10[0] = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8)));
  v10[1] = v5;
  llvm::StringRef::str(v10, __p);
  v6 = std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::find<std::string>((a1 + 312), __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  result = *(v6 + 5);
  *a3 = result;
  a3[1].n128_u64[0] = v6[7];
  return result;
}

uint64_t StitchingReflection::getVectorType(uint64_t a1, uint64_t a2)
{
  StitchingReflection::stitchingArgumentTypeFromNode(a1, *(a2 - 8 * *(a2 + 8) + 32), &v20);
  v3 = *(*(a2 - 8 * *(a2 + 8) + 40) + 128);
  if (*(v3 + 16) == 16)
  {
    v4 = (v3 + 24);
    if (*(v3 + 32) >= 0x41u)
    {
      v4 = *v4;
    }

    v5 = *v4;
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 - 2;
  if (v20.n128_i64[0] > 44)
  {
    v7 = v5 | 0x50;
    if (v6 >= 3)
    {
      v7 = 0;
    }

    v14 = v5 + 84;
    if (v6 >= 3)
    {
      v14 = 0;
    }

    v15 = v5 | 0x78;
    if (v6 >= 3)
    {
      v15 = 0;
    }

    if (v20.n128_u64[0] != 121)
    {
      v15 = 0;
    }

    if (v20.n128_u64[0] != 85)
    {
      v14 = v15;
    }

    if (v20.n128_u64[0] != 81)
    {
      v7 = v14;
    }

    v16 = v5 + 44;
    if (v6 >= 3)
    {
      v16 = 0;
    }

    v17 = v5 | 0x30;
    if (v6 >= 3)
    {
      v17 = 0;
    }

    v12 = v5 + 52;
    if (v6 >= 3)
    {
      v12 = 0;
    }

    if (v20.n128_u64[0] != 53)
    {
      v12 = 0;
    }

    if (v20.n128_u64[0] == 49)
    {
      v12 = v17;
    }

    if (v20.n128_u64[0] == 45)
    {
      v12 = v16;
    }

    v13 = v20.n128_u64[0] <= 80;
  }

  else
  {
    v7 = v5 | 0x20;
    if (v6 >= 3)
    {
      v7 = 0;
    }

    v8 = v5 + 36;
    if (v6 >= 3)
    {
      v8 = 0;
    }

    v9 = v5 | 0x28;
    if (v6 >= 3)
    {
      v9 = 0;
    }

    if (v20.n128_u64[0] != 41)
    {
      v9 = 0;
    }

    if (v20.n128_u64[0] != 37)
    {
      v8 = v9;
    }

    if (v20.n128_u64[0] != 33)
    {
      v7 = v8;
    }

    v10 = v5 + 2;
    if (v6 >= 3)
    {
      v10 = 0;
    }

    v11 = v5 + 15;
    if (v6 >= 3)
    {
      v11 = 0;
    }

    v12 = v5 + 28;
    if (v6 >= 3)
    {
      v12 = 0;
    }

    if (v20.n128_u64[0] != 29)
    {
      v12 = 0;
    }

    if (v20.n128_u64[0] == 16)
    {
      v12 = v11;
    }

    if (v20.n128_u64[0] == 3)
    {
      v12 = v10;
    }

    v13 = v20.n128_u64[0] <= 32;
  }

  if (v13)
  {
    return v12;
  }

  else
  {
    return v7;
  }
}

uint64_t StitchingReflection::getAccessType(uint64_t a1, uint64_t a2)
{
  String = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8) + 40));
  if (v3 == 5)
  {
    return 2 * (memcmp(String, "write", 5uLL) == 0);
  }

  if (v3 == 10)
  {
    return memcmp(String, "read_write", 0xAuLL) == 0;
  }

  return 0;
}

unint64_t StitchingReflection::getTypeInfoDescriptor(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - 8 * *(a2 + 8));
  v3 = *(v2[1] + 128);
  if (*(v3 + 16) == 16)
  {
    v4 = (v3 + 24);
    if (*(v3 + 32) >= 0x41u)
    {
      v4 = *v4;
    }

    v5 = *v4;
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  v6 = *(v2[2] + 128);
  if (*(v6 + 16) == 16)
  {
    v7 = (v6 + 24);
    if (*(v6 + 32) >= 0x41u)
    {
      v7 = *v7;
    }

    v8 = *v7 << 32;
  }

  else
  {
    v8 = 0xFFFFFFFF00000000;
  }

  v9 = v2[3];
  if (v9)
  {
    llvm::MDNode::classof(v9);
  }

  return v8 | v5;
}

void StitchingReflection::traverseStruct(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4)
{
  v4 = a2 - 8 * *(a2 + 8);
  v5 = *(v4 + 40);
  if (v5)
  {
    v8 = llvm::MDNode::classof(v5);
    v54 = *(v4 + 40);
    if (v8 && *(v4 + 40) != 0)
    {
      v53 = *(v54 + 8);
      if (v53)
      {
        v10 = 0;
        v52 = a4;
        do
        {
          v69 = 0;
          v68 = 0u;
          memset(v67, 0, sizeof(v67));
          v70 = 0;
          v71 = 0;
          v72 = 0;
          v73 = xmmword_257A6DAF0;
          memset(v74, 0, sizeof(v74));
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          v11 = *(v54 - 8 * *(v54 + 8) + 8 * v10);
          v66 = 0;
          v64 = 0u;
          __p = 0u;
          v12 = *(v11 + 8);
          v13 = (v11 - 8 * v12);
          v14 = *(v13[1] + 128);
          if (*(v14 + 16) == 16)
          {
            v15 = (v14 + 24);
            if (*(v14 + 32) >= 0x41u)
            {
              v15 = *v15;
            }

            v16 = *v15;
          }

          else
          {
            v16 = -1;
          }

          v61 = v16;
          v17 = *(v13[2] + 128);
          if (*(v17 + 16) == 16)
          {
            v18 = (v17 + 24);
            if (*(v17 + 32) >= 0x41u)
            {
              v18 = *v18;
            }

            v19 = *v18;
          }

          else
          {
            v19 = -1;
          }

          v62 = v19;
          v63 = v13[3];
          v20 = v13[4];
          if (v20)
          {
            String = llvm::MDString::getString(v20);
            v23 = -*(v11 + 8);
          }

          else
          {
            v22 = 0;
            v23 = -v12;
            String = &unk_257A6F51A;
          }

          *&v64 = String;
          *(&v64 + 1) = v22;
          v24 = v11 + 8 * v23;
          v25 = *(v24 + 40);
          if (v25)
          {
            v26 = llvm::MDNode::classof(v25);
            v27 = *(v24 + 40);
            v28 = v27 ? v26 : 0;
            if (v28 == 1)
            {
              v29 = *(v27 + 8);
              std::vector<AttributeDescriptor>::reserve(&__p, v29);
              v30 = v27;
              if (v29)
              {
                do
                {
                  v31 = *(v30 - 8 * *(v27 + 8));
                  v32 = llvm::MDString::getString(*(v31 - 8 * *(v31 + 8)));
                  if (v33 == 22 && (*v32 == 0x646E65722E726961 ? (v34 = v32[1] == 0x65677261745F7265) : (v34 = 0), v34 ? (v35 = *(v32 + 14) == 0x727474615F746567) : (v35 = 0), v35))
                  {
                    v44 = *(*(v31 - 8 * *(v31 + 8) + 8) + 128);
                    if (*(v44 + 16) == 16)
                    {
                      v45 = (v44 + 24);
                      if (*(v44 + 32) >= 0x41u)
                      {
                        v45 = *v45;
                      }

                      v37 = *v45;
                    }

                    else
                    {
                      v37 = -1;
                    }

                    v36 = 10;
                  }

                  else
                  {
                    v36 = 0;
                    v37 = 0;
                  }

                  v38 = *(&__p + 1);
                  if (*(&__p + 1) >= v66)
                  {
                    v40 = (*(&__p + 1) - __p) >> 5;
                    v41 = v40 + 1;
                    if ((v40 + 1) >> 59)
                    {
                      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
                    }

                    v42 = v66 - __p;
                    if ((v66 - __p) >> 4 > v41)
                    {
                      v41 = v42 >> 4;
                    }

                    if (v42 >= 0x7FFFFFFFFFFFFFE0)
                    {
                      v43 = 0x7FFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v43 = v41;
                    }

                    if (v43)
                    {
                      std::__allocate_at_least[abi:ne200100]<std::allocator<AttributeDescriptor>>(&__p, v43);
                    }

                    v46 = 32 * v40;
                    *v46 = v36;
                    *(v46 + 2) = 0;
                    *(v46 + 4) = v37;
                    *(v46 + 16) = 0;
                    *(v46 + 24) = 0;
                    *(v46 + 8) = 0;
                    v39 = 32 * v40 + 32;
                    v47 = (32 * v40 - (*(&__p + 1) - __p));
                    memcpy(v47, __p, *(&__p + 1) - __p);
                    v48 = __p;
                    *&__p = v47;
                    *(&__p + 1) = v39;
                    v66 = 0;
                    if (v48)
                    {
                      operator delete(v48);
                    }
                  }

                  else
                  {
                    **(&__p + 1) = v36;
                    *(v38 + 2) = 0;
                    *(v38 + 4) = v37;
                    *(v38 + 16) = 0;
                    *(v38 + 24) = 0;
                    v39 = v38 + 32;
                    *(v38 + 8) = 0;
                  }

                  *(&__p + 1) = v39;
                  v30 += 8;
                  --v29;
                }

                while (v29);
              }
            }
          }

          v67[0] = v64;
          LODWORD(v68) = v61;
          for (i = __p; i != *(&__p + 1); i += 32)
          {
            if (*i == 10)
            {
              LODWORD(v73) = *(i + 4);
            }
          }

          StitchingReflection::getReflectionFromStitchingMetadata(a1, v63, v52, &v56);
          if (v52)
          {
            DWORD1(v57) = HIDWORD(v56);
            HIDWORD(v56) = v56;
            LODWORD(v56) = 60;
          }

          v75 = v56;
          v76 = v57;
          v77 = v58;
          std::vector<MTLStructMemberInfo>::__assign_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>(&v74[1], v59, v60, 0x2E8BA2E8BA2E8BA3 * (v60 - v59));
          v50 = a3[1];
          if (v50 >= a3[2])
          {
            v51 = std::vector<MTLStructMemberInfo>::__emplace_back_slow_path<MTLStructMemberInfo const&>(a3, v67);
          }

          else
          {
            std::allocator_traits<std::allocator<MTLStructMemberInfo>>::construct[abi:ne200100]<MTLStructMemberInfo,MTLStructMemberInfo const&,0>(a3, a3[1], v67);
            v51 = v50 + 176;
            a3[1] = v50 + 176;
          }

          a3[1] = v51;
          v78 = &v59;
          std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v78);
          if (__p)
          {
            *(&__p + 1) = __p;
            operator delete(__p);
          }

          *&v56 = &v74[1];
          std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v56);
          if (v71)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v71);
          }

          ++v10;
        }

        while (v10 != v53);
      }
    }
  }
}

void sub_257A5BAC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  if (__p)
  {
    operator delete(__p);
  }

  MTLStructMemberInfo::~MTLStructMemberInfo(va);
  _Unwind_Resume(a1);
}

unint64_t StitchingReflection::initMatrixType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  MatrixType = StitchingReflection::getMatrixType(a1, a2);
  *a3 = MatrixType;
  result = StitchingReflection::getTypeInfoDescriptor(MatrixType, a2);
  *(a3 + 4) = result;
  return result;
}

void sub_257A5BB70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 48);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

unint64_t StitchingReflection::initVectorType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  VectorType = StitchingReflection::getVectorType(a1, a2);
  *a3 = VectorType;
  result = StitchingReflection::getTypeInfoDescriptor(VectorType, a2);
  *(a3 + 4) = result;
  return result;
}

void sub_257A5BBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 48);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

double StitchingReflection::initSamplerType@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = 59;
  return result;
}

uint64_t StitchingReflection::initTextureType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 64) = 0;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 58;
  *(a5 + 16) = (a4 << 16) | a3;
  StitchingReflection::stitchingArgumentTypeFromNode(a1, *(a2 - 8 * *(a2 + 8) + 32), v9);
  *(a5 + 12) = v9[0].n128_u32[0];
  result = StitchingReflection::getAccessType(v7, a2);
  *(a5 + 24) = result;
  return result;
}

void sub_257A5BC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = (v12 + 48);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void StitchingReflection::initPointerType(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = 60;
  v5 = *(a2 - 8 * *(a2 + 8) + 32);
  StitchingReflection::getTypeInfoDescriptor(a1, v5);
  *(a3 + 24) = v6;
  StitchingReflection::getReflectionFromStitchingMetadata(a1, v5, 0, &v8);
  *(a3 + 4) = v9;
  v7 = v8;
  *(a3 + 12) = v8;
  *(a3 + 20) = v10;
  if (v7 == 1)
  {
    *(a3 + 32) = v11;
    if (&v8 != a3)
    {
      std::vector<MTLStructMemberInfo>::__assign_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>((a3 + 48), v12, v13, 0x2E8BA2E8BA2E8BA3 * (v13 - v12));
    }
  }

  v14 = &v12;
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v14);
}

void sub_257A5BD9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v11 - 40) = v10;
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100]((v11 - 40));
  a9 = (v9 + 48);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void StitchingReflection::initStructType(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 48) = 0u;
  v8 = (a4 + 48);
  *(a4 + 64) = 0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  *a4 = 1;
  *(a4 + 4) = StitchingReflection::getTypeInfoDescriptor(a1, a2);
  v9 = *(a2 - 8 * *(a2 + 8) + 32);
  if (v9)
  {
    String = llvm::MDString::getString(v9);
  }

  else
  {
    v11 = 0;
    String = &unk_257A6F51A;
  }

  *(a4 + 32) = String;
  *(a4 + 40) = v11;
  std::vector<MTLStructMemberInfo>::__assign_with_size[abi:ne200100]<MTLStructMemberInfo const*,MTLStructMemberInfo const*>(v8, 0, 0, 0);
  StitchingReflection::traverseStruct(a1, a2, v8, a3);
}

void sub_257A5BE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void StitchingReflection::initArrayType(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *a3 = 2;
  *(a3 + 4) = StitchingReflection::getTypeInfoDescriptor(a1, a2);
  StitchingReflection::stitchingArgumentTypeFromNode(a1, *(a2 - 8 * *(a2 + 8) + 32), v9);
  *(a3 + 12) = v9[0].n128_u32[0];
  v6 = *(*(a2 - 8 * *(a2 + 8) + 40) + 128);
  if (*(v6 + 16) == 16)
  {
    v7 = (v6 + 24);
    if (*(v6 + 32) >= 0x41u)
    {
      v7 = *v7;
    }

    v8 = *v7;
  }

  else
  {
    v8 = -1;
  }

  *(a3 + 28) = v8;
}

void sub_257A5BF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = (v12 + 48);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void *MTLGenerateReflectionDataPass::generateReflectionData(uint64_t a1, llvm::Module *a2, char a3, void *a4, int a5, void *a6, const void *a7, size_t a8, void *a9)
{
  v111 = *MEMORY[0x277D85DE8];
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  memset(v103, 0, sizeof(v103));
  parseFunctions(a2, v103);
  v14 = v103[0];
  v101 = 0;
  v100 = 0;
  v102 = 0;
  v15 = entryPointsType[*(v103[0] + 48)];
  memset(v99, 0, sizeof(v99));
  v16 = *(v103[0] + 24);
  v74 = v15;
  v17 = v15 != 5 || v16 == 0;
  v71 = a4;
  v72 = a6;
  __n = a8;
  if (!v17)
  {
    StitchingReflection::StitchingReflection(v108, v16);
  }

  v97 = 0;
  v96 = 0;
  v95 = 0;
  v18 = *(v103[0] + 8);
  if (v18)
  {
    v19 = *(v18 + 8);
  }

  else
  {
    v19 = 0;
  }

  if (*(*v103[0] + 18))
  {
    llvm::Function::BuildLazyArguments(*v103[0]);
  }

  if (v19)
  {
    DataLayout = llvm::Module::getDataLayout(*(*v14 + 40));
    llvm::DataLayout::DataLayout(v108, DataLayout);
    MTLArgumentData::MTLArgumentData(&v107);
  }

  v21 = 954437177 * ((v96 - v95) >> 5);
  if (v21)
  {
    v22 = 0;
    do
    {
      std::vector<MTLArgumentData>::push_back[abi:ne200100](v99, (v95 + v22));
      v22 += 288;
    }

    while (288 * v21 != v22);
  }

  v108[0] = &v95;
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](v108);
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v23 = 12;
  v98 = 12;
  if ((v74 | 2) == 3)
  {
    v23 = 0x38E38E38E38E38E4 * ((v101 - v100) >> 5) + 16;
    v98 = v23;
  }

  v24 = *(v14 + 128);
  if (!v24 || *(*(v14 + 120) + v24 - 1))
  {
    LODWORD(v24) = v24 + 1;
  }

  v73 = v21;
  v98 = v23 + v24 + 8;
  v106 = 0;
  v105 = 0;
  __p = &v105;
  v94[0] = MEMORY[0x277D85DD0];
  v94[1] = 3221225472;
  v94[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke;
  v94[3] = &unk_27984E5E0;
  v94[4] = &v95;
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_2;
  v93[3] = &unk_27984E608;
  v93[4] = &v95;
  serializeArguments(v99, &__p, v94, v93);
  v25 = entryPointsType[*(v14 + 48)];
  v70 = v96[3];
  if (v25 == 2)
  {
    v96[3] += 4;
    MTLArgumentData::MTLArgumentData(v108);
  }

  if ((v25 | 2) == 3)
  {
    v96[3] += 8;
    v92[0] = MEMORY[0x277D85DD0];
    v92[1] = 3221225472;
    v92[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_5;
    v92[3] = &unk_27984E5E0;
    v92[4] = &v95;
    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_6;
    v91[3] = &unk_27984E608;
    v91[4] = &v95;
    serializePostVertexDumpOutputs(a6, v92, v91);
  }

  v26 = v96;
  v27 = v96[3];
  v28 = v27;
  if (a9)
  {
    *a9 = v27;
    v28 = v26[3];
  }

  v29 = __n + v28 + 8;
  v26[3] = v29;
  v69 = entryPointsType[*(v14 + 48)];
  if (v69 == 6)
  {
    v26[3] = v29 + ((*(v14 + 104) - *(v14 + 96)) >> 1) + 8;
  }

  v89 = 0;
  v88 = 0;
  v90 = 0;
  v108[0] = "air.global_bindings";
  LOWORD(v110) = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(a2, v108);
  v31 = NamedMetadata;
  if (NamedMetadata)
  {
    v108[1] = 0;
    v108[0] = 0;
    v109 = 0;
    NumOperands = llvm::NamedMDNode::getNumOperands(NamedMetadata);
    std::vector<MTLArgumentData>::reserve(&v88, NumOperands);
    if (llvm::NamedMDNode::getNumOperands(v31))
    {
      llvm::NamedMDNode::getOperand(v31);
      if (v89 < v90)
      {
        MTLArgumentData::MTLArgumentData(v89);
      }

      std::vector<MTLArgumentData>::__emplace_back_slow_path<>(&v88);
    }

    llvm::DenseMap<llvm::Metadata *,std::vector<MTLStructMemberInfo> *,llvm::DenseMapInfo<llvm::Metadata *,void>,llvm::detail::DenseMapPair<llvm::Metadata *,std::vector<MTLStructMemberInfo> *>>::~DenseMap(v108, v33, v34, v35);
  }

  v96[3] += 4;
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_7;
  v87[3] = &unk_27984E5E0;
  v87[4] = &v95;
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_8;
  v86[3] = &unk_27984E608;
  v86[4] = &v95;
  serializeArguments(&v88, &__p, v87, v86);
  v36 = v96[3];
  v9 = malloc_type_malloc(v36, 0x100004077774924uLL);
  std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(&__p, v105);
  v106 = 0;
  __p = &v105;
  v105 = 0;
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = v9;
  *v9 = 0x4E494253504C544DLL;
  v37 = v83;
  ++v85;
  *v83[3] = 131073;
  v37[3] += 4;
  if ((v74 | 2) == 3)
  {
    LODWORD(v39) = 954437177 * ((v101 - v100) >> 5);
    v38 = v83;
    *v83[3] = v39;
    v38[3] += 4;
    v39 = v39;
    if (v39)
    {
      v40 = 4;
      do
      {
        v41 = v83;
        *v83[3] = *(v100 + v40);
        v41[3] += 4;
        v40 += 288;
        --v39;
      }

      while (v39);
    }
  }

  v42 = *(v14 + 120);
  v43 = *(v14 + 128);
  v44 = v83;
  memcpy(v83[3], v42, v43);
  v45 = (v44[3] + v43);
  v44[3] = v45;
  if (!v43 || v42[v43 - 1])
  {
    *v45 = 0;
    ++v44[3];
  }

  v46 = v83;
  *v83[3] = v73;
  v46[3] += 4;
  v47 = v83;
  *v83[3] = v70;
  v47[3] += 4;
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_9;
  v81[3] = &unk_27984E5E0;
  v81[4] = &v82;
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_10;
  v80[3] = &unk_27984E608;
  v80[4] = &v82;
  serializeArguments(v99, &__p, v81, v80);
  if (entryPointsType[*(v14 + 48)] == 2)
  {
    v48 = v83;
    v49 = v83[3];
    *v49 = 0;
    *(v49 + 1) = 0;
    *(v49 + 3) = 0;
    v48[3] += 4;
    MTLArgumentData::MTLArgumentData(v108);
  }

  if ((v25 | 2) == 3)
  {
    v50 = v83;
    *v83[3] = a5;
    v50[3] += 4;
    v51 = v83;
    *v83[3] = v27;
    v51[3] += 4;
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_13;
    v79[3] = &unk_27984E5E0;
    v79[4] = &v82;
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_14;
    v78[3] = &unk_27984E608;
    v78[4] = &v82;
    serializePostVertexDumpOutputs(v72, v79, v78);
  }

  v52 = v83;
  *v83[3] = -1;
  v52[3] += 4;
  v53 = v83;
  *v83[3] = __n;
  v53[3] += 4;
  if (__n)
  {
    v54 = v83;
    memcpy(v83[3], a7, __n);
    v54[3] += __n;
  }

  if (v69 == 6)
  {
    v55 = v83;
    v56 = v83[3];
    *v56 = *(v14 + 70) & 3;
    *(v56 + 1) = 0;
    *(v56 + 3) = 0;
    v55[3] += 4;
    v57 = *(v14 + 104) - *(v14 + 96);
    v58 = v83;
    v59 = v83[3];
    *v59 = v57 >> 3;
    v59[1] = v57 >> 11;
    v59[2] = v57 >> 19;
    v59[3] = v57 >> 27;
    v58[3] += 4;
    v60 = *(v14 + 96);
    if (*(v14 + 104) != v60)
    {
      v61 = 0;
      v62 = 1;
      do
      {
        v63 = *(v60 + 8 * v61);
        v64 = v83;
        *v83[3] = v63;
        v64[3] += 4;
        v61 = v62;
        v60 = *(v14 + 96);
        ++v62;
      }

      while (v61 < (*(v14 + 104) - v60) >> 3);
    }
  }

  v65 = v83;
  *v83[3] = v36;
  v65[3] += 4;
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_15;
  v77[3] = &unk_27984E5E0;
  v77[4] = &v82;
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_16;
  v76[3] = &unk_27984E608;
  v76[4] = &v82;
  serializeArguments(&v88, &__p, v77, v76);
  *v71 = v96[3];
  _Block_object_dispose(&v82, 8);
  v108[0] = &v88;
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](v108);
  std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(&__p, v105);
  _Block_object_dispose(&v95, 8);
  v108[0] = v99;
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](v108);
  v108[0] = &v100;
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](v108);
  v108[0] = v103;
  std::vector<FunctionDesc>::__destroy_vector::operator()[abi:ne200100](v108);
  return v9;
}

void sub_257A5D2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x3C0] = v65;
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3C0]);
  MTLArgumentData::~MTLArgumentData(&STACK[0x4E8]);
  _Block_object_dispose(&a65, 8);
  STACK[0x3C0] = &STACK[0x230];
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3C0]);
  std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(&STACK[0x3A0], STACK[0x3A8]);
  _Block_object_dispose(&STACK[0x338], 8);
  STACK[0x3C0] = &STACK[0x358];
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3C0]);
  STACK[0x3C0] = &STACK[0x370];
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3C0]);
  STACK[0x3C0] = &STACK[0x388];
  std::vector<FunctionDesc>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3C0]);
  _Unwind_Resume(a1);
}

uint64_t serializeArguments(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = 0x8E38E38E38E38E39 * ((v8 - *a1) >> 5);
  result = (*(a3 + 16))(a3, v10);
  if (v8 != v9)
  {
    v31 = a2;
    v12 = 0;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v13 = v10;
    do
    {
      v14 = *a1;
      v15 = (*a1 + v12);
      (*(a4 + 16))(a4, v15 + 4);
      (*(a3 + 16))(a3, (*v15 << 6) & 0x200 | (*v15 >> 4));
      v16 = *v15;
      if ((*v15 & 4) == 0)
      {
        (*(a3 + 16))(a3, v15[1]);
        (*(a3 + 16))(a3, v15[2]);
        v16 = *v15;
      }

      switch((v16 >> 4) & 0x1F)
      {
        case 1u:
        case 2u:
        case 3u:
        case 8u:
        case 0xEu:
        case 0x15u:
          v17 = (v14 + v12);
          (*(a3 + 16))(a3, *(v14 + v12 + 48));
          v18 = *(v14 + v12 + 236);
          (*(a3 + 16))(a3, v17[58]);
          (*(a3 + 16))(a3, v18);
          (*(a3 + 16))(a3, v17[13]);
          v19 = v17[14];
          goto LABEL_23;
        case 4u:
          LODWORD(v32[0]) = 0;
          v34 = 0;
          v20 = *(v14 + v12 + 32);
          v21 = strlen(v20);
          LODWORD(v20) = textureTypeFromString(v20, v21, v32, &v34);
          (*(a3 + 16))(a3, LODWORD(v32[0]));
          v19 = v20 | (v34 << 16);
          goto LABEL_23;
        case 5u:
        case 0xBu:
        case 0xCu:
        case 0xDu:
        case 0x10u:
        case 0x11u:
        case 0x12u:
        case 0x13u:
        case 0x17u:
          break;
        case 6u:
          v22 = v14 + v12;
          v23 = *(v14 + v12 + 32);
          v24 = strlen(v23);
          v25 = dataTypeFromString(v23, v24);
          (*(a3 + 16))(a3, v25);
          v19 = *(v22 + 12);
          goto LABEL_23;
        case 9u:
          v26 = v14 + v12;
          goto LABEL_19;
        case 0xAu:
          v26 = v14 + v12;
          (*(a3 + 16))(a3, *(v14 + v12 + 184));
LABEL_19:
          (*(a3 + 16))(a3, *(v26 + 188));
          if (*(v26 + 192))
          {
            serializeStructInfo((v26 + 200), v31, a3, a4, 0);
          }

          else
          {
            (*(a3 + 16))(a3, 0);
          }

          (*(a3 + 16))(a3, *(v14 + v12 + 224));
          v19 = *(v14 + v12 + 228);
LABEL_23:
          (*(a3 + 16))(a3, v19);
          break;
        case 0x14u:
          v32[0] = *(v14 + v12 + 240);
          v32[1] = *(v14 + v12 + 256);
          v33 = *(v14 + v12 + 272);
          serializeStitchingTypeInfo(v32, a3);
          if (LODWORD(v32[0]) == 1 || LODWORD(v32[0]) == 138 || LODWORD(v32[0]) == 60 && HIDWORD(v32[0]) == 1)
          {
            serializeStitchingStructInfo(*(v14 + v12 + 160), v33, *(&v33 + 1), a3, a4);
          }

          break;
        case 0x16u:
          v27 = dataTypeFromString("mesh", 4uLL);
          (*(a3 + 16))(a3, v27);
          v28 = v14 + v12;
          (*(a3 + 16))(a3, *(v14 + v12 + 12));
          (*(a3 + 16))(a3, *(v14 + v12 + 60));
          (*(a3 + 16))(a3, *(v14 + v12 + 64));
          (*(a3 + 16))(a3, *(v14 + v12 + 68));
          serializeStructInfo(*(v28 + 168), v31, a3, a4, (*v28 >> 12) & 1);
          serializeStructInfo(*(v28 + 176), v31, a3, a4, (*v28 >> 12) & 1);
          break;
        default:
          abort();
      }

      v12 += 288;
      --v13;
    }

    while (v13);
    v29 = 0;
    do
    {
      v30 = *a1 + v29;
      if (*(v30 + 72))
      {
        result = serializeStructInfo(*(v30 + 160), v31, a3, a4, (*v30 >> 12) & 1);
      }

      else
      {
        result = (*(a3 + 16))(a3, 0);
      }

      v29 += 288;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_2(uint64_t result, void *a2)
{
  v2 = a2[1];
  if (!v2 || *(*a2 + v2 - 1))
  {
    LODWORD(v2) = v2 + 1;
  }

  *(*(*(result + 32) + 8) + 24) += v2;
  return result;
}

uint64_t extractOutputImageBlockDataFromMetadata(FunctionDesc *a1, MTLArgumentData *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a1 + 16;
  DataLayout = llvm::Module::getDataLayout(*(*a1 + 40));
  llvm::DataLayout::DataLayout(v6, DataLayout);
  if (*v2 && *(*v2 + 8))
  {
    MTLArgumentData::MTLArgumentData(&v5);
  }

  return MEMORY[0x259C6A2B0](v6);
}

void sub_257A5DB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, ...)
{
  va_start(va, a47);
  llvm::DenseMap<llvm::Metadata *,std::vector<MTLStructMemberInfo> *,llvm::DenseMapInfo<llvm::Metadata *,void>,llvm::detail::DenseMapPair<llvm::Metadata *,std::vector<MTLStructMemberInfo> *>>::~DenseMap(&a9, a2, a3, a4);
  MTLArgumentData::~MTLArgumentData(&a12);
  MEMORY[0x259C6A2B0](va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_4(uint64_t result, void *a2)
{
  v2 = a2[1];
  if (!v2 || *(*a2 + v2 - 1))
  {
    LODWORD(v2) = v2 + 1;
  }

  *(*(*(result + 32) + 8) + 24) += v2;
  return result;
}

void serializePostVertexDumpOutputs(void *a1, uint64_t a2, uint64_t a3)
{
  (*(a2 + 16))(a2, -1431655765 * ((a1[1] - *a1) >> 5));
  v6 = a1[1];
  if (*a1 != v6)
  {
    v7 = *a1 + 64;
    do
    {
      v19 = *(v7 - 64);
      if (*(v7 - 25) < 0)
      {
        std::string::__init_copy_ctor_external(&v20, *(v7 - 48), *(v7 - 40));
      }

      else
      {
        v8 = *(v7 - 48);
        v20.__r_.__value_.__r.__words[2] = *(v7 - 32);
        *&v20.__r_.__value_.__l.__data_ = v8;
      }

      v9 = v7 - 64;
      v10 = *(v7 - 24);
      v22 = *(v7 - 8);
      v21 = v10;
      if (*(v7 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v7, *(v7 + 8));
      }

      else
      {
        v11 = *v7;
        __p.__r_.__value_.__r.__words[2] = *(v7 + 16);
        *&__p.__r_.__value_.__l.__data_ = v11;
      }

      v24 = *(v7 + 24);
      size = SHIBYTE(v20.__r_.__value_.__r.__words[2]);
      v13 = v20.__r_.__value_.__r.__words[0];
      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v20;
      }

      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v20.__r_.__value_.__l.__size_;
      }

      v17 = v13;
      v18 = size;
      (*(a3 + 16))(a3, &v17);
      (*(a2 + 16))(a2, v21);
      v14 = v22;
      (*(a2 + 16))(a2, DWORD2(v21));
      (*(a2 + 16))(a2, v14);
      v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      p_p = __p.__r_.__value_.__r.__words[0];
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v15 = __p.__r_.__value_.__l.__size_;
      }

      v17 = p_p;
      v18 = v15;
      (*(a3 + 16))(a3, &v17);
      (*(a2 + 16))(a2, v24);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      v7 += 96;
    }

    while (v9 + 96 != v6);
  }
}

void sub_257A5DDE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_6(uint64_t result, void *a2)
{
  v2 = a2[1];
  if (!v2 || *(*a2 + v2 - 1))
  {
    LODWORD(v2) = v2 + 1;
  }

  *(*(*(result + 32) + 8) + 24) += v2;
  return result;
}

uint64_t ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_8(uint64_t result, void *a2)
{
  v2 = a2[1];
  if (!v2 || *(*a2 + v2 - 1))
  {
    LODWORD(v2) = v2 + 1;
  }

  *(*(*(result + 32) + 8) + 24) += v2;
  return result;
}

uint64_t ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_9(uint64_t result, int a2)
{
  v2 = *(*(result + 32) + 8);
  **(v2 + 24) = a2;
  *(v2 + 24) += 4;
  return result;
}

void *___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_10(uint64_t a1, const void **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(*(a1 + 32) + 8);
  result = memcpy(*(v4 + 24), *a2, v3);
  v6 = &v3[*(v4 + 24)];
  *(v4 + 24) = v6;
  if (!v3 || v3[v2 - 1])
  {
    *v6 = 0;
    ++*(v4 + 24);
  }

  return result;
}

uint64_t ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_11(uint64_t result, int a2)
{
  v2 = *(*(result + 32) + 8);
  **(v2 + 24) = a2;
  *(v2 + 24) += 4;
  return result;
}

void *___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_12(uint64_t a1, const void **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(*(a1 + 32) + 8);
  result = memcpy(*(v4 + 24), *a2, v3);
  v6 = &v3[*(v4 + 24)];
  *(v4 + 24) = v6;
  if (!v3 || v3[v2 - 1])
  {
    *v6 = 0;
    ++*(v4 + 24);
  }

  return result;
}

uint64_t ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_13(uint64_t result, int a2)
{
  v2 = *(*(result + 32) + 8);
  **(v2 + 24) = a2;
  *(v2 + 24) += 4;
  return result;
}

void *___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_14(uint64_t a1, const void **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(*(a1 + 32) + 8);
  result = memcpy(*(v4 + 24), *a2, v3);
  v6 = &v3[*(v4 + 24)];
  *(v4 + 24) = v6;
  if (!v3 || v3[v2 - 1])
  {
    *v6 = 0;
    ++*(v4 + 24);
  }

  return result;
}

uint64_t ___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_15(uint64_t result, int a2)
{
  v2 = *(*(result + 32) + 8);
  **(v2 + 24) = a2;
  *(v2 + 24) += 4;
  return result;
}

void *___ZN29MTLGenerateReflectionDataPass22generateReflectionDataEPN4llvm6ModuleEjPmjRKNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEPvmS3__block_invoke_16(uint64_t a1, const void **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(*(a1 + 32) + 8);
  result = memcpy(*(v4 + 24), *a2, v3);
  v6 = &v3[*(v4 + 24)];
  *(v4 + 24) = v6;
  if (!v3 || v3[v2 - 1])
  {
    *v6 = 0;
    ++*(v4 + 24);
  }

  return result;
}

void MTLGenerateReflectionDataPass::patchTraceBufferReflectionData(MTLGenerateReflectionDataPass *this, llvm::Module *a2, char *a3, uint64_t a4)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  parseFunctions(a2, &v25);
  if (v26 == v25)
  {
    goto LABEL_34;
  }

  if (a4 == -1)
  {
    goto LABEL_34;
  }

  if (!a3)
  {
    goto LABEL_34;
  }

  v4 = *(v25 + 8);
  if (!v4)
  {
    goto LABEL_34;
  }

  v24 = *(v4 + 8);
  if (!v24)
  {
    goto LABEL_34;
  }

  for (i = 0; i != v24; ++i)
  {
    v6 = *(v4 - 8 * *(v4 + 8) + 8 * i);
    v7 = *(v6 + 8);
    if (!v7)
    {
      continue;
    }

    v8 = 0;
    v9 = -1;
    while (1)
    {
      v10 = *(v6 - 8 * *(v6 + 8) + 8 * v8);
      if (!*v10)
      {
        String = llvm::MDString::getString(*(v6 - 8 * *(v6 + 8) + 8 * v8));
        if (v12 == 18)
        {
          v13 = *String == 0x61636F6C2E726961 && *(String + 8) == 0x646E695F6E6F6974;
          if (v13 && *(String + 16) == 30821)
          {
            v20 = *(*(v6 - 8 * *(v6 + 8) + 8 * (v8 + 1)) + 128);
            v21 = (v20 + 24);
            if (*(v20 + 32) >= 0x41u)
            {
              v21 = *v21;
            }

            v9 = *v21;
            v8 += 2;
            goto LABEL_10;
          }
        }

        v15 = llvm::MDString::getString(v10);
        if (v16 == 12 && *v15 == 0x5F6772612E726961 && *(v15 + 8) == 1701667182)
        {
          v18 = llvm::MDString::getString(*(v6 - 8 * *(v6 + 8) + 8 * (v8 + 1)));
          if (v19 == 37 && !memcmp(v18, "__resource_tracking_impl_trace_buffer", 0x25uLL))
          {
            break;
          }
        }
      }

LABEL_10:
      if (++v8 >= v7)
      {
        goto LABEL_33;
      }
    }

    if (v9 != -1)
    {
      *&a3[a4] = v9;
      break;
    }

LABEL_33:
    ;
  }

LABEL_34:
  v28 = &v25;
  std::vector<FunctionDesc>::__destroy_vector::operator()[abi:ne200100](&v28);
}

void sub_257A5E2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a13;
  std::vector<FunctionDesc>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void std::vector<MTLStructMemberInfo>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 176)
  {
    v6 = (i - 72);
    std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v6);
    v5 = *(i - 112);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  *(a1 + 8) = a2;
}

void std::vector<AttributeDescriptor>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<AttributeDescriptor>>(a1, a2);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AttributeDescriptor>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void StitchingReflection::~StitchingReflection(void **this)
{
  std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::~__hash_table(this + 39);
  v5 = this + 28;
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = this[22];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[20];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this[18];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = this;
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](&v5);
}

uint64_t serializeStructInfo(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v58 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = a2 + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 != a2 + 8 && *(v9 + 32) <= a1)
  {
    v37 = *(v9 + 40);
    v38 = *(a3 + 16);

    return v38(a3, v37);
  }

  else
  {
LABEL_9:
    v13 = *(a2 + 16);
    v41[0] = a1;
    *&v43[0] = v41;
    *(std::__tree<std::__value_type<std::vector<MTLStructMemberInfo> const*,unsigned int>,std::__map_value_compare<std::vector<MTLStructMemberInfo> const*,std::__value_type<std::vector<MTLStructMemberInfo> const*,unsigned int>,std::less<std::vector<MTLStructMemberInfo> const*>,true>,std::allocator<std::__value_type<std::vector<MTLStructMemberInfo> const*,unsigned int>>>::__emplace_unique_key_args<std::vector<MTLStructMemberInfo> const*,std::piecewise_construct_t const&,std::tuple<std::vector<MTLStructMemberInfo> const*&&>,std::tuple<>>(a2, v41, &std::piecewise_construct, v43) + 10) = v13 + 1;
    (*(a3 + 16))(a3);
    v14 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
    result = (*(a3 + 16))(a3, v14);
    if (v14)
    {
      v16 = 0;
      do
      {
        v17 = *a1;
        v18 = *a1 + v16;
        (*(a4 + 16))(a4, v18);
        (*(a3 + 16))(a3, *(v18 + 32));
        (*(a3 + 16))(a3, *(v17 + v16 + 72));
        if (*(v17 + v16 + 40))
        {
          (*(a3 + 16))(a3, 2);
          (*(a3 + 16))(a3, 0);
          (*(a3 + 16))(a3, 0);
          (*(a3 + 16))(a3, *(v17 + v16 + 40));
          (*(a3 + 16))(a3, *(v17 + v16 + 44));
          (*(a3 + 16))(a3, *(v17 + v16 + 48));
          if (a5)
          {
            if (*(v17 + v16 + 96))
            {
              StructIndirectArgumentIndexStride = getStructIndirectArgumentIndexStride((v17 + v16 + 104));
            }

            else
            {
              StructIndirectArgumentIndexStride = 1;
            }
          }

          else
          {
            StructIndirectArgumentIndexStride = 0;
          }
        }

        else
        {
          StructIndirectArgumentIndexStride = *(v17 + v16 + 36);
        }

        (*(a3 + 16))(a3, StructIndirectArgumentIndexStride);
        v20 = *(v17 + v16 + 88);
        (*(a3 + 16))(a3, *(v17 + v16 + 84));
        (*(a3 + 16))(a3, v20);
        v21 = v17 + v16;
        if (*(v17 + v16 + 96))
        {
          serializeStructInfo((v21 + 104), a2, a3, a4, a5);
        }

        v22 = *(v21 + 56);
        if (v22)
        {
          v23 = *v22;
          v24 = v22[2];
          v43[1] = v22[1];
          v43[2] = v24;
          v43[0] = v23;
          v25 = v22[3];
          v26 = v22[4];
          v27 = v22[6];
          v43[5] = v22[5];
          v43[6] = v27;
          v43[3] = v25;
          v43[4] = v26;
          v28 = *(v22 + 15);
          v44 = *(v22 + 14);
          v45 = v28;
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v29 = *(v22 + 17);
          v46 = *(v22 + 16);
          v47 = v29;
          if (v29)
          {
            atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v30 = *(v22 + 19);
          v48 = *(v22 + 18);
          v49 = v30;
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v31 = v22[10];
          v32 = v22[11];
          v52 = *(v22 + 24);
          v50 = v31;
          v51 = v32;
          memset(v53, 0, sizeof(v53));
          std::vector<MTLStructMemberInfo>::__init_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>(v53, *(v22 + 25), *(v22 + 26), 0x2E8BA2E8BA2E8BA3 * ((*(v22 + 26) - *(v22 + 25)) >> 4));
          v33 = v22[14];
          v34 = v22[15];
          v35 = v22[17];
          v56 = v22[16];
          v57 = v35;
          v54 = v33;
          v55 = v34;
          memset(v41, 0, sizeof(v41));
          std::vector<MTLArgumentData>::__init_with_size[abi:ne200100]<MTLArgumentData const*,MTLArgumentData const*>(v41, v43, &v58, 1uLL);
          v42 = v53;
          std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v42);
          if (v49)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v49);
          }

          if (v47)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v47);
          }

          if (v45)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v45);
          }

          serializeArguments(v41, a2, a3, a4);
          *&v43[0] = v41;
          std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](v43);
        }

        v36 = v17 + v16;
        (*(a3 + 16))(a3, *(v36 + 76));
        result = (*(a3 + 16))(a3, *(v36 + 80));
        v16 += 176;
      }

      while (176 * v14 != v16);
    }
  }

  return result;
}

void sub_257A5E924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  a17 = &a13;
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

uint64_t serializeStitchingTypeInfo(unsigned int *a1, uint64_t a2)
{
  v7 = (a2 + 16);
  (*(a2 + 16))(a2, *a1);
  (*v7)(a2, a1[1]);
  (*v7)(a2, a1[2]);
  (*v7)(a2, a1[3]);
  (*v7)(a2, a1[4]);
  (*v7)(a2, a1[5]);
  (*v7)(a2, a1[6]);
  v4 = a1[7];
  v5 = *v7;

  return v5(a2, v4);
}

uint64_t serializeStitchingStructInfo(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[0] = a2;
  v15[1] = a3;
  (*(a5 + 16))(a5, v15);
  v8 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  result = (*(a4 + 16))(a4, v8);
  if (v8)
  {
    v10 = 0;
    v11 = 176 * v8;
    do
    {
      v12 = *a1 + v10;
      (*(a5 + 16))(a5, v12);
      (*(a4 + 16))(a4, *(v12 + 32));
      (*(a4 + 16))(a4, *(v12 + 76));
      v13 = *(v12 + 144);
      v14[0] = *(v12 + 128);
      v14[1] = v13;
      v14[2] = *(v12 + 160);
      result = serializeStitchingTypeInfo(v14, a4);
      if (LODWORD(v14[0]) == 1 || LODWORD(v14[0]) == 138 || LODWORD(v14[0]) == 60 && HIDWORD(v14[0]) == 1)
      {
        result = serializeStitchingStructInfo((v12 + 104), *(v12 + 16), *(v12 + 24), a4, a5);
      }

      v10 += 176;
    }

    while (v11 != v10);
  }

  return result;
}

uint64_t getStructIndirectArgumentIndexStride(void *a1)
{
  v1 = a1[1];
  if (v1 == *a1)
  {
    return 0;
  }

  v2 = *(v1 - 104);
  if (*(v1 - 80))
  {
    StructIndirectArgumentIndexStride = getStructIndirectArgumentIndexStride((v1 - 72));
  }

  else
  {
    v5 = *(v1 - 120);
    if (v5)
    {
      v6 = *(v5 + 8);
      if (v6 <= 1)
      {
        StructIndirectArgumentIndexStride = 1;
      }

      else
      {
        StructIndirectArgumentIndexStride = v6;
      }
    }

    else
    {
      StructIndirectArgumentIndexStride = 1;
    }
  }

  v7 = *(v1 - 136);
  if (v7 <= 1)
  {
    v7 = 1;
  }

  return v2 + v7 * StructIndirectArgumentIndexStride;
}

void *std::__tree<std::__value_type<std::vector<MTLStructMemberInfo> const*,unsigned int>,std::__map_value_compare<std::vector<MTLStructMemberInfo> const*,std::__value_type<std::vector<MTLStructMemberInfo> const*,unsigned int>,std::less<std::vector<MTLStructMemberInfo> const*>,true>,std::allocator<std::__value_type<std::vector<MTLStructMemberInfo> const*,unsigned int>>>::__emplace_unique_key_args<std::vector<MTLStructMemberInfo> const*,std::piecewise_construct_t const&,std::tuple<std::vector<MTLStructMemberInfo> const*&&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void *std::vector<MTLArgumentData>::reserve(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 5) < a2)
  {
    if (a2 < 0xE38E38E38E38E4)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLArgumentData>>(result, a2);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_257A5EDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<MTLArgumentData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<MTLArgumentData>::__emplace_back_slow_path<>(void *a1)
{
  v1 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 5);
  v2 = v1 + 1;
  if (v1 + 1 <= 0xE38E38E38E38E3)
  {
    if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 5) > v2)
    {
      v2 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 5);
    }

    if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 5) >= 0x71C71C71C71C71)
    {
      v3 = 0xE38E38E38E38E3;
    }

    else
    {
      v3 = v2;
    }

    v5 = a1;
    if (v3)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLArgumentData>>(a1, v3);
    }

    v4 = 288 * v1;
    MTLArgumentData::MTLArgumentData((288 * v1));
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

void sub_257A5EF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<MTLArgumentData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__assign_unique<std::pair<std::string const,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>> const*>(uint64_t *a1, std::string *__str, std::string *a3)
{
  v4 = __str;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = __str == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        std::string::operator=((v8 + 16), v4);
        *(v8 + 40) = *&v4[1].__r_.__value_.__l.__data_;
        *(v8 + 56) = v4[1].__r_.__value_.__s.__data_[16];
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__node_insert_unique(a1, v8);
        v4 += 2;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::__deallocate_node(a1, v10);
  }

  while (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>> const&>(a1, v4, v4);
    v4 += 2;
  }
}

void sub_257A5F008(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,MTLCompilerDataType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLCompilerDataType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLCompilerDataType>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__node_insert_unique(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, (a2 + 16));
  *(v2 + 8) = v4;
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__node_insert_unique_prepare[abi:ne200100](a1, v4, (v2 + 16));
  if (v5)
  {
    return v5;
  }

  std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, const void **a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v9 = (v4 - 1) & a2;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == a2)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a3))
          {
            return i;
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v12 >= v4)
            {
              v12 %= v4;
            }
          }

          else
          {
            v12 &= v4 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v4 || (v14 * v4) < v13)
  {
    v15 = 1;
    if (v4 >= 3)
    {
      v15 = (v4 & (v4 - 1)) != 0;
    }

    v16 = v15 | (2 * v4);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    std::__hash_table<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::__unordered_map_hasher<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::hash<llvm::Value *>,std::equal_to<llvm::Value *>,true>,std::__unordered_map_equal<llvm::Value *,std::__hash_value_type<llvm::Value *,llvm::MDTuple *>,std::equal_to<llvm::Value *>,std::hash<llvm::Value *>,true>,std::allocator<std::__hash_value_type<llvm::Value *,llvm::MDTuple *>>>::__rehash<true>(a1, v18);
  }

  return 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__node_insert_unique_perform[abi:ne200100](uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>> const&>(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>>>>::__construct_node_hash<std::pair<std::string const,std::pair<MTLDataType,std::pair<MTLTextureType,BOOL>>> const&>();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_257A5F4D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLCompilerDataType>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_257A5F5A8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,MTLCompilerDataType>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::vector<MTLStructMemberInfo>::__assign_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>(uint64_t *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4) < a4)
  {
    std::vector<MTLStructMemberInfo>::__vdeallocate(a1);
    if (a4 <= 0x1745D1745D1745DLL)
    {
      v9 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
      {
        v10 = 0x1745D1745D1745DLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<MTLStructMemberInfo>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0x2E8BA2E8BA2E8BA3 * (v11 >> 4) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<MTLStructMemberInfo *,MTLStructMemberInfo *,MTLStructMemberInfo *>(&v13, a2, a3, v8);
    std::vector<MTLStructMemberInfo>::__base_destruct_at_end[abi:ne200100](a1, v12);
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<MTLStructMemberInfo *,MTLStructMemberInfo *,MTLStructMemberInfo *>(&v14, a2, a2 + v11, v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*,MTLStructMemberInfo*,MTLStructMemberInfo*>(a1, (a2 + v11), a3, a1[1]);
  }
}

void std::vector<MTLStructMemberInfo>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<MTLStructMemberInfo>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<MTLStructMemberInfo *,MTLStructMemberInfo *,MTLStructMemberInfo *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2 != a3)
  {
    v7 = a2 + 112;
    do
    {
      v8 = *(v7 - 112);
      v9 = *(v7 - 96);
      v10 = *(v7 - 80);
      *(a4 + 48) = *(v7 - 64);
      *(a4 + 16) = v9;
      *(a4 + 32) = v10;
      *a4 = v8;
      v12 = *(v7 - 56);
      v11 = *(v7 - 48);
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v13 = *(a4 + 64);
      *(a4 + 56) = v12;
      *(a4 + 64) = v11;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v14 = v7 - 112;
      v15 = *(v7 - 40);
      *(a4 + 88) = *(v7 - 24);
      *(a4 + 72) = v15;
      if (a4 != v7 - 112)
      {
        std::vector<MTLStructMemberInfo>::__assign_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>((a4 + 104), *(v7 - 8), *v7, 0x2E8BA2E8BA2E8BA3 * ((*v7 - *(v7 - 8)) >> 4));
      }

      v16 = *(v7 + 16);
      v17 = *(v7 + 48);
      *(a4 + 144) = *(v7 + 32);
      *(a4 + 160) = v17;
      *(a4 + 128) = v16;
      a4 += 176;
      v7 += 176;
    }

    while (v14 + 176 != a3);
    return a3;
  }

  return result;
}

__n128 std::allocator_traits<std::allocator<MTLArgumentData>>::construct[abi:ne200100]<MTLArgumentData,MTLArgumentData const&,0>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  v6 = a3[2];
  *(a2 + 16) = a3[1];
  *(a2 + 32) = v6;
  *a2 = v5;
  v7 = a3[3];
  v8 = a3[4];
  v9 = a3[6];
  *(a2 + 80) = a3[5];
  *(a2 + 96) = v9;
  *(a2 + 48) = v7;
  *(a2 + 64) = v8;
  v11 = *(a3 + 14);
  v10 = *(a3 + 15);
  *(a2 + 120) = v10;
  *(a2 + 112) = v11;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(a3 + 16);
  v12 = *(a3 + 17);
  *(a2 + 136) = v12;
  *(a2 + 128) = v13;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(a3 + 19);
  *(a2 + 144) = *(a3 + 18);
  *(a2 + 152) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = a3[10];
  v16 = a3[11];
  v17 = *(a3 + 24);
  *(a2 + 200) = 0;
  *(a2 + 192) = v17;
  *(a2 + 176) = v16;
  *(a2 + 160) = v15;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  std::vector<MTLStructMemberInfo>::__init_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>((a2 + 200), *(a3 + 25), *(a3 + 26), 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 26) - *(a3 + 25)) >> 4));
  result = a3[14];
  v19 = a3[15];
  v20 = a3[17];
  *(a2 + 256) = a3[16];
  *(a2 + 272) = v20;
  *(a2 + 224) = result;
  *(a2 + 240) = v19;
  return result;
}

void sub_257A5F948(_Unwind_Exception *a1)
{
  v5 = *(v1 + 152);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::vector<MTLArgumentData>::__construct_one_at_end[abi:ne200100]<MTLArgumentData const&>(v3, v2);
  _Unwind_Resume(a1);
}

__n128 std::allocator_traits<std::allocator<MTLStructMemberInfo>>::construct[abi:ne200100]<MTLStructMemberInfo,MTLStructMemberInfo const&,0>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  *(a2 + 48) = *(a3 + 12);
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *a2 = v5;
  v8 = *(a3 + 8);
  *(a2 + 56) = *(a3 + 7);
  *(a2 + 64) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a3 + 72);
  v10 = *(a3 + 88);
  *(a2 + 104) = 0;
  *(a2 + 72) = v9;
  *(a2 + 88) = v10;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  std::vector<MTLStructMemberInfo>::__init_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>((a2 + 104), *(a3 + 13), *(a3 + 14), 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 14) - *(a3 + 13)) >> 4));
  result = a3[8];
  v12 = a3[10];
  *(a2 + 144) = a3[9];
  *(a2 + 160) = v12;
  *(a2 + 128) = result;
  return result;
}

void sub_257A5FA0C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__split_buffer<MTLStructMemberInfo>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 176;
    std::allocator_traits<std::allocator<MTLStructMemberInfo>>::destroy[abi:ne200100]<MTLStructMemberInfo,0>(v4, i - 176);
  }
}

void std::vector<MTLStructMemberInfo>::__assign_with_size[abi:ne200100]<MTLStructMemberInfo const*,MTLStructMemberInfo const*>(uint64_t *a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4) < a4)
  {
    std::vector<MTLStructMemberInfo>::__vdeallocate(a1);
    if (a4 <= 0x1745D1745D1745DLL)
    {
      v9 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
      {
        v10 = 0x1745D1745D1745DLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<MTLStructMemberInfo>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0x2E8BA2E8BA2E8BA3 * (v11 >> 4) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<MTLStructMemberInfo *,MTLStructMemberInfo *,MTLStructMemberInfo *>(&v14, a2, a3, v8);
    std::vector<MTLStructMemberInfo>::__base_destruct_at_end[abi:ne200100](a1, v12);
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<MTLStructMemberInfo *,MTLStructMemberInfo *,MTLStructMemberInfo *>(&v13, a2, a2 + v11, v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo const*,MTLStructMemberInfo const*,MTLStructMemberInfo*>(a1, (a2 + v11), a3, a1[1]);
  }
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo const*,MTLStructMemberInfo const*,MTLStructMemberInfo*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::allocator_traits<std::allocator<MTLStructMemberInfo>>::construct[abi:ne200100]<MTLStructMemberInfo,MTLStructMemberInfo const&,0>(a1, v4, v6);
      v6 += 11;
      v4 = v12 + 176;
      v12 += 176;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t *std::vector<MTLArgumentData>::__init_with_size[abi:ne200100]<MTLArgumentData const*,MTLArgumentData const*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MTLArgumentData>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_257A5FCDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<MTLArgumentData>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<MTLArgumentData>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xE38E38E38E38E4)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLArgumentData>>(a1, a2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MTLArgumentData>,MTLArgumentData const*,MTLArgumentData const*,MTLArgumentData*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::allocator_traits<std::allocator<MTLArgumentData>>::construct[abi:ne200100]<MTLArgumentData,MTLArgumentData const&,0>(a1, v4, v6);
      v6 += 18;
      v4 = v12 + 288;
      v12 += 288;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLArgumentData>,MTLArgumentData*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

__int128 *std::vector<MTLArgumentData>::__insert_with_size[abi:ne200100]<std::__wrap_iter<MTLArgumentData const*>,std::__wrap_iter<MTLArgumentData const*>>(void *a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0x8E38E38E38E38E39 * ((v9 - v10) >> 5)) >= a5)
    {
      v16 = v10 - a2;
      if ((0x8E38E38E38E38E39 * ((v10 - a2) >> 5)) >= a5)
      {
        v18 = 9 * a5;
        std::vector<MTLArgumentData>::__move_range(a1, a2, a1[1], &a2[18 * a5]);
        v17 = &v7[2 * v18];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MTLArgumentData>,MTLArgumentData const*,MTLArgumentData const*,MTLArgumentData*>(a1, (a3 + v16), a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        std::vector<MTLArgumentData>::__move_range(a1, v5, v10, &v5[18 * a5]);
        v17 = v7 + v16;
      }

      std::__copy_impl::operator()[abi:ne200100]<MTLArgumentData const*,MTLArgumentData const*,MTLArgumentData*>(v23, v7, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x71C71C71C71C71C7 * ((v10 - *a1) >> 5);
    if (v12 > 0xE38E38E38E38E3)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0x8E38E38E38E38E39 * ((v9 - v11) >> 5);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x71C71C71C71C71)
    {
      v15 = 0xE38E38E38E38E3;
    }

    else
    {
      v15 = v12;
    }

    v26 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLArgumentData>>(a1, v15);
    }

    v19 = 32 * (v13 >> 5);
    v23[0] = 0;
    v23[1] = v19;
    v24 = v19;
    v25 = 0;
    v20 = v19 + 288 * a5;
    v21 = 288 * a5;
    do
    {
      std::allocator_traits<std::allocator<MTLArgumentData>>::construct[abi:ne200100]<MTLArgumentData,MTLArgumentData const&,0>(v26, v19, v7);
      v19 += 288;
      v7 += 18;
      v21 -= 288;
    }

    while (v21);
    v24 = v20;
    v5 = std::vector<MTLArgumentData>::__swap_out_circular_buffer(a1, v23, v5);
    std::__split_buffer<MTLArgumentData>::~__split_buffer(v23);
  }

  return v5;
}

uint64_t std::vector<MTLArgumentData>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      v11 = *(v9 + 32);
      *(v8 + 16) = *(v9 + 16);
      *(v8 + 32) = v11;
      *v8 = v10;
      v12 = *(v9 + 48);
      v13 = *(v9 + 64);
      v14 = *(v9 + 96);
      *(v8 + 80) = *(v9 + 80);
      *(v8 + 96) = v14;
      *(v8 + 48) = v12;
      *(v8 + 64) = v13;
      *(v8 + 112) = *(v9 + 112);
      *(v9 + 112) = 0;
      *(v9 + 120) = 0;
      *(v8 + 128) = *(v9 + 128);
      *(v9 + 128) = 0;
      *(v9 + 136) = 0;
      *(v8 + 144) = *(v9 + 144);
      *(v9 + 144) = 0;
      *(v9 + 152) = 0;
      v15 = *(v9 + 176);
      v16 = *(v9 + 192);
      *(v8 + 160) = *(v9 + 160);
      *(v8 + 176) = v15;
      *(v8 + 192) = v16;
      *(v8 + 200) = 0;
      *(v8 + 208) = 0;
      *(v8 + 216) = 0;
      *(v8 + 200) = *(v9 + 200);
      *(v8 + 216) = *(v9 + 216);
      *(v9 + 200) = 0;
      *(v9 + 208) = 0;
      *(v9 + 216) = 0;
      v17 = *(v9 + 224);
      v18 = *(v9 + 240);
      v19 = *(v9 + 272);
      *(v8 + 256) = *(v9 + 256);
      *(v8 + 272) = v19;
      *(v8 + 224) = v17;
      *(v8 + 240) = v18;
      v9 += 288;
      v8 += 288;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<MTLArgumentData *,MTLArgumentData *,MTLArgumentData *>(&v21, a2, v7, v6);
}

uint64_t std::vector<MTLArgumentData>::__swap_out_circular_buffer(uint64_t a1, void *a2, __int128 *a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTLArgumentData>,MTLArgumentData*>(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTLArgumentData>,MTLArgumentData*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<MTLArgumentData *,MTLArgumentData *,MTLArgumentData *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a3 + v7;
      v9 = a4 + v7;
      v10 = (a4 + v7 - 288);
      v11 = *(a3 + v7 - 240);
      v12 = *(a3 + v7 - 224);
      v13 = *(a3 + v7 - 192);
      *(v9 - 208) = *(a3 + v7 - 208);
      *(v9 - 192) = v13;
      *(v9 - 240) = v11;
      *(v9 - 224) = v12;
      v14 = *(a3 + v7 - 288);
      v15 = *(a3 + v7 - 272);
      *(v9 - 256) = *(a3 + v7 - 256);
      *v10 = v14;
      v10[1] = v15;
      v16 = *(a3 + v7 - 176);
      *(v8 - 176) = 0;
      *(v8 - 168) = 0;
      v17 = *(a4 + v7 - 168);
      *(v9 - 176) = v16;
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      v18 = *(v8 - 160);
      *(v8 - 160) = 0;
      *(v8 - 152) = 0;
      v19 = *(v9 - 152);
      *(v9 - 160) = v18;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      v20 = a4 + v7;
      v21 = a3 + v7;
      v22 = *(a3 + v7 - 144);
      *(v21 - 144) = 0;
      *(v21 - 136) = 0;
      v23 = *(a4 + v7 - 136);
      *(a4 + v7 - 144) = v22;
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      v24 = *(v21 - 128);
      v25 = *(v21 - 112);
      *(v20 - 96) = *(v21 - 96);
      *(v20 - 128) = v24;
      *(v20 - 112) = v25;
      std::vector<MTLStructMemberInfo>::__vdeallocate((v20 - 88));
      *(v20 - 88) = *(v21 - 88);
      *(v20 - 72) = *(v21 - 72);
      *(v21 - 88) = 0;
      *(v21 - 80) = 0;
      *(v21 - 72) = 0;
      v26 = *(v21 - 64);
      v27 = *(v21 - 48);
      v28 = *(v21 - 16);
      *(v20 - 32) = *(v21 - 32);
      *(v20 - 16) = v28;
      *(v20 - 64) = v26;
      *(v20 - 48) = v27;
      v7 -= 288;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<MTLArgumentData const*,MTLArgumentData const*,MTLArgumentData*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2 != a3)
  {
    v7 = a2 + 208;
    do
    {
      v8 = *(v7 - 208);
      v9 = *(v7 - 176);
      *(a4 + 16) = *(v7 - 192);
      *(a4 + 32) = v9;
      *a4 = v8;
      v10 = *(v7 - 160);
      v11 = *(v7 - 144);
      v12 = *(v7 - 112);
      *(a4 + 80) = *(v7 - 128);
      *(a4 + 96) = v12;
      *(a4 + 48) = v10;
      *(a4 + 64) = v11;
      v14 = *(v7 - 96);
      v13 = *(v7 - 88);
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = *(a4 + 120);
      *(a4 + 112) = v14;
      *(a4 + 120) = v13;
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      v16 = v7 - 208;
      v18 = *(v7 - 80);
      v17 = *(v7 - 72);
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      v19 = *(a4 + 136);
      *(a4 + 128) = v18;
      *(a4 + 136) = v17;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      v21 = *(v7 - 64);
      v20 = *(v7 - 56);
      if (v20)
      {
        atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
      }

      v22 = *(a4 + 152);
      *(a4 + 144) = v21;
      *(a4 + 152) = v20;
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      v23 = *(v7 - 48);
      v24 = *(v7 - 32);
      *(a4 + 192) = *(v7 - 16);
      *(a4 + 160) = v23;
      *(a4 + 176) = v24;
      if (a4 != v16)
      {
        std::vector<MTLStructMemberInfo>::__assign_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>((a4 + 200), *(v7 - 8), *v7, 0x2E8BA2E8BA2E8BA3 * ((*v7 - *(v7 - 8)) >> 4));
      }

      v25 = *(v7 + 16);
      v26 = *(v7 + 32);
      v27 = *(v7 + 64);
      *(a4 + 256) = *(v7 + 48);
      *(a4 + 272) = v27;
      *(a4 + 224) = v25;
      *(a4 + 240) = v26;
      a4 += 288;
      v7 += 288;
    }

    while (v16 + 288 != a3);
    return a3;
  }

  return result;
}

void MTLCompilerSharedMemoryInterface::mapRuntimeLibrary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0(a1, a2, a3, 4.8151e-34);
  _os_log_error_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to fstat %s: %s", v3, 0x16u);
}

{
  OUTLINED_FUNCTION_0(a1, a2, a3, 4.8151e-34);
  _os_log_error_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "mmap failed for %s: %s, falling back to LLVM file loading", v3, 0x16u);
}

{
  OUTLINED_FUNCTION_0(a1, a2, a3, 4.8151e-34);
  _os_log_error_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to open %s: %s", v3, 0x16u);
}

void MTLCompilerSharedMemoryInterface::mapRuntimeLibrary()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void MTLCompilerSharedMemoryInterface::mapRuntimeLibraryModules()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void rtLibPathInBundle(uint64_t a1, void *a2)
{
  [a2 bundlePath];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

{
  [a2 bundlePath];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void MTLCompilerSharedMemoryInterface::getRuntimeLibraryModules(uint8_t *buf, uint64_t a2, void *a3, void *a4)
{
  if (*(a2 + 47) < 0)
  {
    a3 = *a3;
  }

  *buf = 136315138;
  *a4 = a3;
  _os_log_error_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Runtime library %s was not mapped", buf, 0xCu);
}

void llvm::scc_iterator<llvm::CallGraph *,llvm::GraphTraits<llvm::CallGraph *>>::scc_iterator(void **a1, void **a2, uint64_t a3)
{
  v5 = *a1;
  if (v5)
  {
    *(a3 + 64) = v5;
    operator delete(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    *(a3 + 40) = v6;

    operator delete(v6);
  }
}

uint64_t OGLCodeGenService::OGLCodeGenService()
{
  v0 = *MEMORY[0x277D85DF8];
  v1 = dlerror();
  return fprintf(v0, "OGLCodeGenService: ERROR: %s\n", v1);
}

uint64_t GEPExpressionSum::accumulateGEP(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    return MEMORY[0x259C6B870](result, 0x1000C8000313F17);
  }

  return result;
}

void MTLCompilerObject::downgradeAndLoadModuleRequest()
{
  if (__cxa_guard_acquire(_MergedGlobals))
  {
    dword_28153FC20 = 0;
    xmmword_28153FC00 = 0u;
    unk_28153FC10 = 0u;
    unk_28153FC38 = 0u;
    unk_28153FC48 = 0u;
    unk_28153FC58 = 0u;
    __cxa_guard_release(_MergedGlobals);
  }
}

{
  if (__cxa_guard_acquire(byte_28153FBD8))
  {
    qword_28153FCD0 = &unk_28153FCE0;
    qword_28153FCD8 = 0x400000000;
    qword_28153FD40 = &unk_28153FD50;
    qword_28153FD48 = 0x1000000000;
    qword_28153FE50 = &unk_28153FE60;
    qword_28153FE58 = 0x1000000000;
    qword_28153FF20 = &qword_28153FF30;
    qword_28153FF28 = 0;
    qword_28153FF30 = algn_28153FF48;
    xmmword_28153FF38 = 0u;
    v0 = OUTLINED_FUNCTION_1_0();
    __cxa_atexit(v0, v1, v2);
    __cxa_guard_release(byte_28153FBD8);
  }
}

void fatalDiagnosticHandler()
{
  OUTLINED_FUNCTION_0_0(*MEMORY[0x277D85DE8]);
  v1 = 136315138;
  v2 = v0;
  _os_log_fault_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "LLVM ERROR: %s", &v1, 0xCu);
}

void MTLCompilerObject::addDebugInstrumentationToModule()
{
  if (__cxa_guard_acquire(byte_28153FBE0))
  {
    LODWORD(xmmword_28153FC88) = 0;
    unk_28153FC78 = 0u;
    xmmword_28153FC68 = 0u;
    xmmword_28153FCA0 = 0u;
    unk_28153FCB0 = 0u;
    unk_28153FCC0 = 0u;

    __cxa_guard_release(byte_28153FBE0);
  }
}

{
  if (__cxa_guard_acquire(byte_28153FBE8))
  {
    qword_28153FF60 = &unk_28153FF70;
    qword_28153FF68 = 0x400000000;
    qword_28153FFD0 = &unk_28153FFE0;
    qword_28153FFD8 = 0x1000000000;
    qword_2815400E0 = &unk_2815400F0;
    qword_2815400E8 = 0x1000000000;
    qword_2815401B0 = &qword_2815401C0;
    qword_2815401B8 = 0;
    qword_2815401C0 = &qword_2815401D8;
    xmmword_2815401C8 = 0u;
    v0 = OUTLINED_FUNCTION_1_0();
    __cxa_atexit(v0, &qword_28153FF60, v1);

    __cxa_guard_release(byte_28153FBE8);
  }
}

void logCompileError()
{
  OUTLINED_FUNCTION_0_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void MTLCodeGenServiceBuildRequest_cold_1()
{
  if (__cxa_guard_acquire(byte_28153FBF8))
  {
    qword_28153FBF0 = getpagesize();

    __cxa_guard_release(byte_28153FBF8);
  }
}

void MTLCompilerPluginInterface::init()
{
  operator delete(MTLCompilerPluginInterface::init(char const*,void const*,unsigned long)::validPathPrefixes[0]);
}

{
  operator delete(MTLCompilerPluginInterface::init(char const*,void const*,unsigned long)::validPluginSuffixes[0]);
}

void MTLCompilerPluginInterface::init(uint64_t a1, uint64_t a2, uint8_t *buf)
{
  *buf = 136315394;
  *(buf + 4) = a1;
  *(buf + 6) = 2080;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to dlopen compiler plugin at %s, dlerror %s", buf, 0x16u);
}

void MTLCompilerPluginInterface::init(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = a1;
  _os_log_fault_impl(&dword_2579AB000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Compiler plugin %s is not registered with the MTLCompilerObject", &v1, 0xCu);
}

void std::vector<MTLArgumentData>::__construct_one_at_end[abi:ne200100]<MTLArgumentData const&>(std::__shared_weak_count **a1, std::__shared_weak_count **a2)
{
  v3 = *a1;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *a2;
  if (*a2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t llvm::ErrorList::join(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    (*(v5 + 8))();
  }

  return MEMORY[0x259C6B890](a2, 0xA1C4030951706);
}

void MTLCompilerObject::logCompilerFailure(id *a1)
{
  [objc_msgSend(*a1 "localizedDescription")];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void MTLCompilerObject::logCompilerFailure(void *a1)
{
  [a1 UTF8String];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

{
  [a1 UTF8String];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void logMachOError()
{
  OUTLINED_FUNCTION_0_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

uint64_t llvm::AllocaInst::AllocaInst()
{
  return MEMORY[0x2821F1840]();
}

{
  return MEMORY[0x2821F1850]();
}

uint64_t llvm::BranchInst::BranchInst()
{
  return MEMORY[0x2821F1898]();
}

{
  return MEMORY[0x2821F18A0]();
}

{
  return MEMORY[0x2821F18A8]();
}

uint64_t llvm::StructType::create()
{
  return MEMORY[0x2821F19B0]();
}

{
  return MEMORY[0x2821F19C0]();
}

{
  return MEMORY[0x2821F19C8]();
}

uint64_t llvm::AttrBuilder::addAttribute()
{
  return MEMORY[0x2821F1AB8]();
}

{
  return MEMORY[0x2821F1AC0]();
}

uint64_t llvm::ConstantInt::get()
{
  return MEMORY[0x2821F1B60]();
}

{
  return MEMORY[0x2821F1B70]();
}

uint64_t llvm::Instruction::setMetadata()
{
  return MEMORY[0x2821F1C38]();
}

{
  return MEMORY[0x2821F1C40]();
}

uint64_t llvm::raw_ostream::operator<<()
{
  return MEMORY[0x2821F1F08]();
}

{
  return MEMORY[0x2821F1F18]();
}

uint64_t llvm::FunctionType::get()
{
  return MEMORY[0x2821F2050]();
}

{
  return MEMORY[0x2821F2058]();
}

void llvm::SmallVectorBase<unsigned int>::mallocForGrow()
{
    ;
  }
}

void llvm::SmallVectorBase<unsigned int>::grow_pod()
{
    ;
  }
}

void llvm::SmallVectorBase<unsigned long long>::grow_pod()
{
    ;
  }
}

uint64_t llvm::ConstantDataVector::get()
{
  return MEMORY[0x2821F2B48]();
}

{
  return MEMORY[0x2821F2B50]();
}

{
  return MEMORY[0x2821F2B58]();
}

{
  return MEMORY[0x2821F2B60]();
}

uint64_t llvm::ConstantDataVector::getFP()
{
  return MEMORY[0x2821F2B68]();
}

{
  return MEMORY[0x2821F2B70]();
}

void llvm::SymbolTableListTraits<llvm::BasicBlock>::transferNodesFromList()
{
    ;
  }
}

uint64_t llvm::User::operator new(llvm::User *this)
{
  return MEMORY[0x2821F3B08](this);
}

{
  return MEMORY[0x2821F3B10](this);
}

{
  return MEMORY[0x2821F3B18](this);
}

uint64_t llvm::Value::setMetadata()
{
  return MEMORY[0x2821F3E18]();
}

{
  return MEMORY[0x2821F3E20]();
}

uint64_t llvm::Module::getOrInsertFunction()
{
  return MEMORY[0x2821F3FC0]();
}

{
  return MEMORY[0x2821F3FC8]();
}

uint64_t llvm::Function::addParamAttr()
{
  return MEMORY[0x2821F4530]();
}

{
  return MEMORY[0x2821F4538]();
}

uint64_t llvm::Function::addFnAttr()
{
  return MEMORY[0x2821F45E0]();
}

{
  return MEMORY[0x2821F45E8]();
}

{
  return MEMORY[0x2821F45F0]();
}

uint64_t llvm::StoreInst::StoreInst()
{
  return MEMORY[0x2821F4A90]();
}

{
  return MEMORY[0x2821F4A98]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}