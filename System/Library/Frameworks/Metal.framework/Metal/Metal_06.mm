void *MTLPipelineLibrarySerializer::PipelineDescriptorDeserializer::PipelineDescriptorDeserializer(void *a1, void *a2)
{
  *a1 = &unk_1EF473728;
  a1[1] = a2;
  return a1;
}

void MTLPipelineLibrarySerializer::PipelineDescriptorDeserializer::~PipelineDescriptorDeserializer(id *this)
{
  *this = &unk_1EF473728;
}

{
  MTLPipelineLibrarySerializer::PipelineDescriptorDeserializer::~PipelineDescriptorDeserializer(this);

  JUMPOUT(0x1865FF210);
}

MTLComputePipelineDescriptor *MTLPipelineLibrarySerializer::PipelineDescriptorDeserializer::newComputePipelineDescriptor(MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer *a1, dispatch_data_t data)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v3 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  v6[0] = buffer_ptr;
  v6[1] = size_ptr;
  v4 = MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer::newComputePipelineDescriptor(a1, v6);
  dispatch_release(v3);
  return v4;
}

MTLRenderPipelineDescriptor *MTLPipelineLibrarySerializer::PipelineDescriptorDeserializer::newRenderPipelineDescriptor(MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer *a1, dispatch_data_t data)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v3 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  v6[0] = buffer_ptr;
  v6[1] = size_ptr;
  v4 = MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer::newRenderPipelineDescriptor(a1, v6);
  dispatch_release(v3);
  return v4;
}

MTLTileRenderPipelineDescriptor *MTLPipelineLibrarySerializer::PipelineDescriptorDeserializer::newTileRenderPipelineDescriptor(MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer *a1, dispatch_data_t data)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v3 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  v6[0] = buffer_ptr;
  v6[1] = size_ptr;
  v4 = MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer::newTileRenderPipelineDescriptor(a1, v6);
  dispatch_release(v3);
  return v4;
}

MTLMeshRenderPipelineDescriptor *MTLPipelineLibrarySerializer::PipelineDescriptorDeserializer::newMeshRenderPipelineDescriptor(MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer *a1, dispatch_data_t data)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v3 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
  v6[0] = buffer_ptr;
  v6[1] = size_ptr;
  v4 = MTLPipelineLibrarySerializer::PipelineDescriptorBinaryDeserializer::newMeshRenderPipelineDescriptor(a1, v6);
  dispatch_release(v3);
  return v4;
}

id MTLPipelineLibrarySerializer::PipelineDescriptorDeserializer::newFunctionWithFunctionProperty(id *this, MTLSerializer::SerializedCompactPropertyList::Iterator *a2)
{
  __dst = 0;
  v2 = *(a2 + 6);
  v3 = *(a2 + 7);
  if (v2 + v3 > *(a2 + 1))
  {
    abort();
  }

  memcpy(&__dst, (*a2 + v3), v2);
  v5 = [this[1] functionWithFunctionRef:__dst];

  return v5;
}

void *MTLPipelineLibrarySerializer::NamedObjectJSONSerializer::setUIntValue(void *this, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    v6 = this;
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v8 = v6[1];
    v9 = *(v6[2] + 8 * a2);

    return [v8 setObject:v7 forKeyedSubscript:v9];
  }

  return this;
}

void *MTLPipelineLibrarySerializer::NamedObjectJSONSerializer::setFloatValue(void *this, unsigned int a2, float a3, float a4)
{
  if (a3 != a4)
  {
    v6 = this;
    v7 = [MEMORY[0x1E696AD98] numberWithFloat:?];
    v8 = v6[1];
    v9 = *(v6[2] + 8 * a2);

    return [v8 setObject:v7 forKeyedSubscript:v9];
  }

  return this;
}

uint64_t MTLPipelineLibrarySerializer::NamedObjectJSONSerializer::Finalize(MTLPipelineLibrarySerializer::NamedObjectJSONSerializer *this)
{
  v1 = *(this + 1);
  *(this + 1) = 0;
  return v1;
}

uint64_t MTLPipelineLibrarySerializer::NamedObjectJSONSerializer::setType(MTLPipelineLibrarySerializer::NamedObjectJSONSerializer *this, const char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v4 = *(this + 1);

  return [v4 setObject:v3 forKeyedSubscript:@"type"];
}

void MTLPipelineLibrarySerializer::JSONSerializationContext::~JSONSerializationContext(id *this)
{
  MTLPipelineLibrarySerializer::JSONSerializationContext::~JSONSerializationContext(this);

  JUMPOUT(0x1865FF210);
}

{
  *this = &unk_1EF473840;

  v2 = this[2];
  if (v2)
  {
    this[3] = v2;
    operator delete(v2);
  }
}

void *MTLPipelineLibrarySerializer::JSONSerializationContext::createObjectArray(uint64_t a1, uint64_t **a2)
{
  v3 = [MEMORY[0x1E695DF70] array];
  v5 = *a2;
  v4 = a2[1];
  while (v5 != v4)
  {
    v6 = *v5++;
    [v3 addObject:v6];
  }

  return v3;
}

void *MTLPipelineLibrarySerializer::JSONSerializationContext::addSerializedSpecializedFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 8) containsObject:?];
  if ((result & 1) == 0)
  {
    v6 = *(a1 + 8);

    return [v6 addObject:a3];
  }

  return result;
}

void *MTLPipelineLibrarySerializer::JSONSerializationContext::addSerializedComputePipeline(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 8) containsObject:?];
  if ((result & 1) == 0)
  {
    v6 = *(a1 + 8);

    return [v6 addObject:a3];
  }

  return result;
}

void *MTLPipelineLibrarySerializer::JSONSerializationContext::addSerializedRenderPipeline(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 8) containsObject:?];
  if ((result & 1) == 0)
  {
    v6 = *(a1 + 8);

    return [v6 addObject:a3];
  }

  return result;
}

void *MTLPipelineLibrarySerializer::JSONSerializationContext::addSerializedTileRenderPipeline(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 8) containsObject:?];
  if ((result & 1) == 0)
  {
    v6 = *(a1 + 8);

    return [v6 addObject:a3];
  }

  return result;
}

void *MTLPipelineLibrarySerializer::JSONSerializationContext::addSerializedMeshRenderPipeline(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 8) containsObject:?];
  if ((result & 1) == 0)
  {
    v6 = *(a1 + 8);

    return [v6 addObject:a3];
  }

  return result;
}

void MTLPipelineLibrarySerializer::BinarySerializationContext::~BinarySerializationContext(MTLPipelineLibrarySerializer::BinarySerializationContext *this)
{
  MTLPipelineLibrarySerializer::BinarySerializationContext::~BinarySerializationContext(this);

  JUMPOUT(0x1865FF210);
}

{
  *this = &unk_1EF473960;
  MTLSerializer::Context::~Context((this + 312));
  v2 = *(this + 36);
  if (v2)
  {
    *(this + 37) = v2;
    operator delete(v2);
  }

  v3 = *(this + 33);
  if (v3)
  {
    *(this + 34) = v3;
    operator delete(v3);
  }

  v4 = *(this + 30);
  if (v4)
  {
    *(this + 31) = v4;
    operator delete(v4);
  }

  v5 = *(this + 26);
  if (v5)
  {
    *(this + 27) = v5;
    operator delete(v5);
  }

  v6 = *(this + 23);
  if (v6)
  {
    *(this + 24) = v6;
    operator delete(v6);
  }

  v7 = *(this + 19);
  if (v7)
  {
    *(this + 20) = v7;
    operator delete(v7);
  }

  v8 = *(this + 16);
  if (v8)
  {
    *(this + 17) = v8;
    operator delete(v8);
  }

  v9 = *(this + 12);
  if (v9)
  {
    *(this + 13) = v9;
    operator delete(v9);
  }

  v10 = *(this + 9);
  if (v10)
  {
    *(this + 10) = v10;
    operator delete(v10);
  }

  v11 = *(this + 5);
  if (v11)
  {
    *(this + 6) = v11;
    operator delete(v11);
  }

  v12 = *(this + 2);
  if (v12)
  {
    *(this + 3) = v12;
    operator delete(v12);
  }
}

void MTLPipelineLibrarySerializer::BinarySerializationContext::createObjectArray(uint64_t a1, uint64_t **a2)
{
  memset(__p, 0, sizeof(__p));
  std::vector<MTLSerializer::ObjectRef>::reserve(__p, a2[1] - *a2);
  v5 = *a2;
  v4 = a2[1];
  while (v5 != v4)
  {
    v6 = *v5;
    std::vector<MTLSerializer::ObjectRef>::push_back[abi:ne200100](__p, &v6);
    ++v5;
  }

  MTLSerializer::Context::CreateObjectArray<MTLSerializer::ObjectRef>(a1 + 312, __p);
}

void sub_185C02B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *MTLPipelineLibrarySerializer::BinarySerializationContext::createUint32Array(uint64_t a1, void *a2)
{
  if (a2[1] == *a2)
  {
    return 0;
  }

  else
  {
    return MTLSerializer::Context::CreateArray<unsigned int>(a1 + 312, a2);
  }
}

void MTLPipelineLibrarySerializer::BinarySerializationContext::addSerializedSpecializedFunction(uint64_t a1, char *a2, void *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  MTLPipelineLibrarySerializer::BinarySerializationContext::addNamedDescriptor(a1, __p, a1 + 16, (*(a1 + 48) - *(a1 + 40)) >> 3);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = a3;
  std::vector<MTLSerializer::ObjectRef>::push_back[abi:ne200100](a1 + 40, __p);
}

void sub_185C02C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLPipelineLibrarySerializer::BinarySerializationContext::addSerializedComputePipeline(uint64_t a1, char *a2, void *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  MTLPipelineLibrarySerializer::BinarySerializationContext::addNamedDescriptor(a1, __p, a1 + 72, (*(a1 + 104) - *(a1 + 96)) >> 3);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = a3;
  std::vector<MTLSerializer::ObjectRef>::push_back[abi:ne200100](a1 + 96, __p);
}

void sub_185C02CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLPipelineLibrarySerializer::BinarySerializationContext::addSerializedRenderPipeline(uint64_t a1, char *a2, void *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  MTLPipelineLibrarySerializer::BinarySerializationContext::addNamedDescriptor(a1, __p, a1 + 128, (*(a1 + 160) - *(a1 + 152)) >> 3);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = a3;
  std::vector<MTLSerializer::ObjectRef>::push_back[abi:ne200100](a1 + 152, __p);
}

void sub_185C02D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLPipelineLibrarySerializer::BinarySerializationContext::addSerializedTileRenderPipeline(uint64_t a1, char *a2, void *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  MTLPipelineLibrarySerializer::BinarySerializationContext::addNamedDescriptor(a1, __p, a1 + 184, (*(a1 + 216) - *(a1 + 208)) >> 3);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = a3;
  std::vector<MTLSerializer::ObjectRef>::push_back[abi:ne200100](a1 + 208, __p);
}

void sub_185C02E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLPipelineLibrarySerializer::BinarySerializationContext::addSerializedMeshRenderPipeline(uint64_t a1, char *a2, void *a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  MTLPipelineLibrarySerializer::BinarySerializationContext::addNamedDescriptor(a1, __p, a1 + 240, (*(a1 + 272) - *(a1 + 264)) >> 3);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = a3;
  std::vector<MTLSerializer::ObjectRef>::push_back[abi:ne200100](a1 + 264, __p);
}

void sub_185C02EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLPipelineLibrarySerializer::PipelineDescriptorSerializerPrivate::~PipelineDescriptorSerializerPrivate(MTLPipelineLibrarySerializer::PipelineDescriptorSerializerPrivate *this)
{
  *this = &unk_1EF473A70;
  MTLPipelineLibrarySerializer::PipelineLibraryBinarySerializer::~PipelineLibraryBinarySerializer((this + 8));
}

{
  *this = &unk_1EF473A70;
  MTLPipelineLibrarySerializer::PipelineLibraryBinarySerializer::~PipelineLibraryBinarySerializer((this + 8));

  JUMPOUT(0x1865FF210);
}

void MTLSerializer::DirectObjectListSerializer::~DirectObjectListSerializer(MTLSerializer::DirectObjectListSerializer *this)
{
  *this = &unk_1EF473578;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  *this = &unk_1EF473B18;
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

{
  *this = &unk_1EF473578;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  *this = &unk_1EF473B18;
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1865FF210);
}

void MTLSerializer::ObjectSerializer::~ObjectSerializer(MTLSerializer::ObjectSerializer *this)
{
  *this = &unk_1EF473B18;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1EF473B18;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1865FF210);
}

MTLPipelineLibrarySerializer::JSONSerializationContext *MTLPipelineLibrarySerializer::JSONSerializationContext::JSONSerializationContext(MTLPipelineLibrarySerializer::JSONSerializationContext *this, char a2)
{
  *this = &unk_1EF473840;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 1) = objc_opt_new();
  *(this + 40) = a2;
  return this;
}

void sub_185C031C4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    *(v1 + 24) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MTLSerializer::PropertyListSerializer::~PropertyListSerializer(MTLSerializer::PropertyListSerializer *this)
{
  *this = &unk_1EF473578;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  *this = &unk_1EF473B18;
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

{
  *this = &unk_1EF473578;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  *this = &unk_1EF473B18;
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1865FF210);
}

MTLSerializer::StringSerializer *MTLSerializer::StringSerializer::StringSerializer(MTLSerializer::StringSerializer *this, const char *__s)
{
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 24) = 0u;
  *(this + 5) = 8;
  *this = &unk_1EF473B88;
  v5 = strlen(__s);
  v6 = v5 + 1;
  if (v5 == -1)
  {
    begin = 0;
  }

  else
  {
    std::vector<unsigned char>::__append(v4, v6);
    begin = v4->__begin_;
  }

  memcpy(begin, __s, v6);
  *(this + 5) = 1;
  return this;
}

void sub_185C033BC(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[1];
  if (v4)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void MTLSerializer::StringSerializer::~StringSerializer(MTLSerializer::StringSerializer *this)
{
  *this = &unk_1EF473B18;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1EF473B18;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1865FF210);
}

void MTLSerializer::Context::~Context(MTLSerializer::Context *this)
{
  v2 = *this;
  v3 = *(this + 1);
  if (*this != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *this;
  }

  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

uint64_t MTLSerializer::PropertyListSerializer::setSmallValue<unsigned int>(uint64_t a1, uint64_t a2, int a3)
{
  begin = *(a1 + 8);
  v7 = (a1 + 8);
  v8 = *(a1 + 16) - begin;
  v9 = v8 & 3;
  if ((v8 & 3) != 0)
  {
    v10 = 4 - v9;
    v11 = 4 - v9 + v8;
    if (v8 >= v11)
    {
      if (v8 > v11)
      {
        *(a1 + 16) = &begin[v11];
      }
    }

    else
    {
      std::vector<unsigned char>::__append((a1 + 8), v10);
      begin = v7->__begin_;
    }

    bzero(&begin[v8], v10);
    begin = *(a1 + 8);
    v8 = *(a1 + 16) - begin;
  }

  if (v8 > 0xFFFFFFFFFFFFFFFBLL)
  {
    *(a1 + 16) = &begin[v8 + 4];
  }

  else
  {
    std::vector<unsigned char>::__append(v7, 4uLL);
    begin = v7->__begin_;
  }

  *&begin[v8] = a3;
  v12 = *(*a1 + 24);

  return v12(a1, a2, v8);
}

void *MTLPipelineLibrarySerializer::NamedObjectBinarySerializer::setString(MTLPipelineLibrarySerializer::NamedObjectBinarySerializer *this, unsigned int a2, NSString *a3)
{
  v4 = *(this + 2);
  *(*(v4 + 48) + 8 * a2) = MTLSerializer::Context::CreateString(*(this + 1), [(NSString *)a3 UTF8String]);
  *(*(v4 + 72) + 4 * a2) = *(v4 + 16) - *(v4 + 8) + 2;
  *v6 = 0;
  return MTLSerializer::CompactPropertyListSerializer::setPropertyData(v4, a2, v6, 4uLL);
}

void *MTLPipelineLibrarySerializer::NamedObjectBinarySerializer::setObject(void *result, unsigned int a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result[2];
    *(*(v3 + 48) + 8 * a2) = a3;
    *(*(v3 + 72) + 4 * a2) = *(v3 + 16) - *(v3 + 8) + 2;
    *v4 = 0;
    return MTLSerializer::CompactPropertyListSerializer::setPropertyData(v3, a2, v4, 4uLL);
  }

  return result;
}

void *MTLPipelineLibrarySerializer::NamedObjectBinarySerializer::setUIntValue(void *this, char a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    v8 = v4;
    v9 = v5;
    v6 = *(this + 2);
    v7 = a3;
    return MTLSerializer::CompactPropertyListSerializer::setPropertyData(v6, a2, &v7, 4uLL);
  }

  return this;
}

void *MTLPipelineLibrarySerializer::NamedObjectBinarySerializer::setFloatValue(void *this, char a2, float a3, float a4)
{
  if (a3 != a4)
  {
    v8 = v4;
    v9 = v5;
    v6 = *(this + 2);
    v7 = a3;
    return MTLSerializer::CompactPropertyListSerializer::setPropertyData(v6, a2, &v7, 4uLL);
  }

  return this;
}

void *MTLPipelineLibrarySerializer::NamedObjectBinarySerializer::setVector(MTLPipelineLibrarySerializer::NamedObjectBinarySerializer *this, char a2, uint64_t a3, const char *a4)
{
  v7 = _MTLConstantDataSize(a3);
  v8 = *(this + 2);

  return MTLSerializer::CompactPropertyListSerializer::setPropertyData(v8, a2, a4, v7);
}

MTLSerializer::ObjectListSerializer *MTLPipelineLibrarySerializer::NamedObjectBinarySerializer::Finalize(MTLPipelineLibrarySerializer::NamedObjectBinarySerializer *this)
{
  v1 = *(this + 2);
  **(v1 + 8) = *(v1 + 96);
  return MTLSerializer::ObjectListSerializer::FinalizeInternal(v1);
}

MTLSerializer::CompactPropertyListSerializer *MTLSerializer::CompactPropertyListSerializer::CompactPropertyListSerializer(MTLSerializer::CompactPropertyListSerializer *this, unsigned int a2)
{
  v4 = MTLSerializer::ObjectListSerializer::ObjectListSerializer(this, a2);
  *v4 = &unk_1EF473C40;
  std::vector<unsigned int>::vector[abi:ne200100](v4 + 9, a2);
  *(this + 24) = 0;
  std::vector<unsigned char>::reserve((this + 8), a2);
  v5 = *(this + 9);
  v6 = *(this + 10) - v5;
  if (v6 >= 1)
  {
    bzero(v5, v6);
  }

  v7 = *(this + 1);
  v8 = *(this + 2) - v7;
  if (v8 == -1)
  {
    *(this + 2) = v7;
  }

  else
  {
    std::vector<unsigned char>::__append((this + 8), 1uLL);
    v7 = *(this + 1);
  }

  *(v7 + v8) = 0;
  *(this + 5) = 1;
  return this;
}

void sub_185C03A90(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 10) = v4;
    operator delete(v4);
  }

  MTLSerializer::ObjectListSerializer::~ObjectListSerializer(v1);
  _Unwind_Resume(a1);
}

void MTLSerializer::CompactPropertyListSerializer::~CompactPropertyListSerializer(MTLSerializer::CompactPropertyListSerializer *this)
{
  *this = &unk_1EF473C40;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  *this = &unk_1EF473578;
  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  *this = &unk_1EF473B18;
  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }
}

{
  *this = &unk_1EF473C40;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  *this = &unk_1EF473578;
  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  *this = &unk_1EF473B18;
  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x1865FF210);
}

uint64_t *std::vector<unsigned int>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
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

void sub_185C03CA0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1, a2);
  }

  std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
}

void *MTLSerializer::CompactPropertyListSerializer::setPropertyData(MTLSerializer::CompactPropertyListSerializer *this, char a2, const char *a3, std::vector<char>::size_type a4)
{
  begin = *(this + 1);
  v9 = (this + 8);
  v10 = *(this + 2) - begin;
  if (v10 == -1)
  {
    *(this + 2) = begin;
  }

  else
  {
    std::vector<unsigned char>::__append((this + 8), 1uLL);
    begin = v9->__begin_;
  }

  begin[v10] = a2;
  v11 = *(this + 1);
  v12 = *(this + 2) - v11;
  if (v12 == -1)
  {
    *(this + 2) = v11;
  }

  else
  {
    std::vector<unsigned char>::__append(v9, 1uLL);
    v11 = v9->__begin_;
  }

  v11[v12] = a4;
  v13 = *(this + 1);
  v14 = *(this + 2) - v13;
  if (v14 >= v14 + a4)
  {
    if (v14 > v14 + a4)
    {
      *(this + 2) += a4;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(v9, a4);
    v13 = v9->__begin_;
  }

  result = memcpy(&v13[v14], a3, a4);
  ++*(this + 24);
  return result;
}

void std::vector<MTLSerializer::ObjectRef>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLSerializer::ObjectSerializer *>>(a1, a2);
    }

    std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
  }
}

void *MTLSerializer::Context::CreateArray<unsigned int>(uint64_t a1, void *a2)
{
  if (a2[1] != *a2)
  {
    operator new();
  }

  return 0;
}

uint64_t MTLSerializer::ArraySerializer<unsigned int>::ArraySerializer(uint64_t a1, int **a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *a1 = &unk_1EF473C88;
  *(a1 + 40) = 4;
  v6 = *a2;
  v5 = a2[1];
  std::vector<unsigned char>::__append((a1 + 8), 4uLL);
  *v4->__begin_ = (v5 - v6) >> 2;
  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    do
    {
      v9 = *v7;
      begin = *(a1 + 8);
      v11 = *(a1 + 16) - begin;
      v12 = v11 & 3;
      if ((v11 & 3) != 0)
      {
        v13 = 4 - v12;
        v14 = 4 - v12 + v11;
        if (v11 >= v14)
        {
          if (v11 > v14)
          {
            *(a1 + 16) = &begin[v14];
          }
        }

        else
        {
          std::vector<unsigned char>::__append(v4, v13);
          begin = v4->__begin_;
        }

        bzero(&begin[v11], v13);
        begin = *(a1 + 8);
        v11 = *(a1 + 16) - begin;
      }

      if (v11 > 0xFFFFFFFFFFFFFFFBLL)
      {
        *(a1 + 16) = &begin[v11 + 4];
      }

      else
      {
        std::vector<unsigned char>::__append(v4, 4uLL);
        begin = v4->__begin_;
      }

      *&begin[v11] = v9;
      ++v7;
    }

    while (v7 != v8);
  }

  return a1;
}

void sub_185C04084(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[1];
  if (v4)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *MTLSerializer::ArraySerializer<unsigned int>::~ArraySerializer(void *a1)
{
  *a1 = &unk_1EF473B18;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void MTLSerializer::ArraySerializer<unsigned int>::~ArraySerializer(void *a1)
{
  *a1 = &unk_1EF473B18;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1865FF210);
}

void MTLPipelineLibrarySerializer::BinarySerializationContext::addNamedDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    MTLSerializer::Context::CreatePropertyListSerializer((a1 + 312), 2u);
  }
}

void std::vector<unsigned char>::__append(std::vector<char> *this, std::vector<char>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (value - end >= __n)
  {
    if (__n)
    {
      bzero(this->__end_, __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = (end - this->__begin_);
    v8 = &v7[__n];
    if (&v7[__n] < 0)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = end - this->__begin_;
    bzero(v7, __n);
    memcpy(&v7[begin - end], begin, v11);
    this->__begin_ = &v7[begin - end];
    this->__end_ = &v7[__n];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t *std::vector<MTLSerializer::ObjectSerializer *>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<MTLSerializer::ObjectSerializer *>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_185C043B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MTLSerializer::ObjectSerializer *>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLSerializer::ObjectSerializer *>>(a1, a2);
  }

  std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
}

MTLSerializer::DirectObjectListSerializer *MTLSerializer::ObjectArraySerializer<MTLSerializer::ObjectRef>::ObjectArraySerializer(MTLSerializer::DirectObjectListSerializer *a1, void *a2)
{
  result = MTLSerializer::DirectObjectListSerializer::DirectObjectListSerializer(a1, (a2[1] - *a2) >> 3);
  *result = &unk_1EF473CC8;
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v4 != *a2)
  {
    v6 = 0;
    v7 = v5 >> 3;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      *(*(result + 6) + 8 * v6) = *(*a2 + 8 * v6);
      ++v6;
    }

    while (v7 != v6);
  }

  return result;
}

void *MTLSerializer::ObjectArraySerializer<MTLSerializer::ObjectRef>::~ObjectArraySerializer(void *a1)
{
  *a1 = &unk_1EF473578;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  *a1 = &unk_1EF473B18;
  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void MTLSerializer::ObjectArraySerializer<MTLSerializer::ObjectRef>::~ObjectArraySerializer(void *a1)
{
  *a1 = &unk_1EF473578;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  *a1 = &unk_1EF473B18;
  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x1865FF210);
}

uint64_t AirReflection::Node::node_as_PatchFnAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 4100) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_PointSizeRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 131073) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_RenderTargetArrayIndexRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 131075) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ViewportArrayIndexRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 131077) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_DepthRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 135169) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_StencilRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 135170) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_SampleMaskRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 135171) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_AcceptIntersectionRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 139264)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::Node::node_as_ContinueSearchRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 139265) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_DistanceRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 139266) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_MeshPrimitiveDataRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 143360)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::Node::node_as_PrimitiveCulledRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 143362) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_PrimitiveIDRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 143363) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ClipDistanceRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 0x20000)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t MTLReflectionByNameDeserializerAIR::createArgumentDeserializerForFunction(uint64_t a1, int *a2)
{
  v4 = (a2 - *a2);
  v5 = *v4;
  v6 = (a1 + 144);
  v7 = *(a1 + 167);
  if (v7 < 0)
  {
    v8 = *(a1 + 144);
    v9 = *(a1 + 152);
  }

  else
  {
    v8 = (a1 + 144);
    v9 = *(a1 + 167);
  }

  if (v5 >= 7)
  {
    v10 = v4[3];
    if (v4[3])
    {
      v10 += a2 + *(a2 + v10);
    }

    if (v5 >= 0xD)
    {
      v11 = v4[6];
      if (v11)
      {
        v12 = a2 + v11;
        v13 = *(a2 + v11);
        if (*(a2 + v11 + v13))
        {
          v14 = 0;
          v15 = v10 + 4;
          v16 = a2 + v11 + v13 + 4;
          do
          {
            v17 = (v15 + 4 * *&v16[4 * v14]);
            v18 = AirReflection::Node::node_as_KernelFunction((v17 + *v17));
            if (v18)
            {
              v19 = (v18 - *v18);
              if (*v19 < 5u)
              {
                v23 = 0;
                v20 = 0;
              }

              else
              {
                v20 = v19[2];
                if (v20)
                {
                  v21 = (v18 + v20);
                  v22 = *v21;
                  v23 = v21 + v22 + 4;
                  v20 = *(v21 + v22);
                }

                else
                {
                  v23 = 0;
                }
              }

              if (v20 == v9 && !memcmp(v23, v8, v9))
              {
                *(a1 + 136) = 3;
                operator new();
              }
            }

            ++v14;
          }

          while (v14 < *&v12[v13]);
          LOBYTE(v7) = *(a1 + 167);
        }
      }
    }
  }

  if ((v7 & 0x80) != 0)
  {
    v25 = *(a1 + 144);
    v24 = *(a1 + 152);
  }

  else
  {
    v24 = v7;
    v25 = v6;
  }

  v26 = (a2 - *a2);
  v27 = *v26;
  if (v27 >= 7)
  {
    v28 = v26[3];
    if (v26[3])
    {
      v28 += a2 + *(a2 + v28);
    }

    if (v27 >= 0xF)
    {
      v29 = v26[7];
      if (v29)
      {
        v30 = a2 + v29;
        v31 = *(a2 + v29);
        if (*(a2 + v29 + v31))
        {
          v32 = 0;
          v33 = v28 + 4;
          v34 = a2 + v29 + v31 + 4;
          do
          {
            v35 = (v33 + 4 * *&v34[4 * v32]);
            v36 = AirReflection::Node::node_as_VertexFunction((v35 + *v35));
            if (v36)
            {
              v37 = (v36 - *v36);
              if (*v37 < 5u)
              {
                v41 = 0;
                v38 = 0;
              }

              else
              {
                v38 = v37[2];
                if (v38)
                {
                  v39 = (v36 + v38);
                  v40 = *v39;
                  v41 = v39 + v40 + 4;
                  v38 = *(v39 + v40);
                }

                else
                {
                  v41 = 0;
                }
              }

              if (v38 == v24 && !memcmp(v41, v25, v24))
              {
                *(a1 + 136) = 1;
                operator new();
              }
            }

            ++v32;
          }

          while (v32 < *&v30[v31]);
          LOBYTE(v7) = *(a1 + 167);
        }
      }
    }
  }

  if ((v7 & 0x80) != 0)
  {
    v43 = *(a1 + 144);
    v42 = *(a1 + 152);
  }

  else
  {
    v42 = v7;
    v43 = v6;
  }

  v44 = (a2 - *a2);
  v45 = *v44;
  if (v45 >= 7)
  {
    v46 = v44[3];
    if (v44[3])
    {
      v46 += a2 + *(a2 + v46);
    }

    if (v45 >= 9)
    {
      v47 = v44[4];
      if (v47)
      {
        v48 = a2 + v47;
        v49 = *(a2 + v47);
        if (*(a2 + v47 + v49))
        {
          v50 = 0;
          v51 = v46 + 4;
          v52 = a2 + v47 + v49 + 4;
          do
          {
            v53 = (v51 + 4 * *&v52[4 * v50]);
            v54 = AirReflection::Node::node_as_FragmentFunction((v53 + *v53));
            if (v54)
            {
              v55 = (v54 - *v54);
              if (*v55 < 5u)
              {
                v59 = 0;
                v56 = 0;
              }

              else
              {
                v56 = v55[2];
                if (v56)
                {
                  v57 = (v54 + v56);
                  v58 = *v57;
                  v59 = v57 + v58 + 4;
                  v56 = *(v57 + v58);
                }

                else
                {
                  v59 = 0;
                }
              }

              if (v56 == v42 && !memcmp(v59, v43, v42))
              {
                *(a1 + 136) = 2;
                operator new();
              }
            }

            ++v50;
          }

          while (v50 < *&v48[v49]);
          LOBYTE(v7) = *(a1 + 167);
        }
      }
    }
  }

  if ((v7 & 0x80) != 0)
  {
    v61 = *(a1 + 144);
    v60 = *(a1 + 152);
  }

  else
  {
    v60 = v7;
    v61 = v6;
  }

  v62 = (a2 - *a2);
  v63 = *v62;
  if (v63 >= 7)
  {
    v64 = v62[3];
    if (v62[3])
    {
      v64 += a2 + *(a2 + v64);
    }

    if (v63 >= 0x13)
    {
      v65 = v62[9];
      if (v65)
      {
        v66 = a2 + v65;
        v67 = *(a2 + v65);
        if (*(a2 + v65 + v67))
        {
          v68 = 0;
          v69 = v64 + 4;
          v70 = a2 + v65 + v67 + 4;
          do
          {
            v71 = (v69 + 4 * *&v70[4 * v68]);
            v72 = AirReflection::Node::node_as_MeshFunction((v71 + *v71));
            if (v72)
            {
              v73 = (v72 - *v72);
              if (*v73 < 5u)
              {
                v77 = 0;
                v74 = 0;
              }

              else
              {
                v74 = v73[2];
                if (v74)
                {
                  v75 = (v72 + v74);
                  v76 = *v75;
                  v77 = v75 + v76 + 4;
                  v74 = *(v75 + v76);
                }

                else
                {
                  v77 = 0;
                }
              }

              if (v74 == v60 && !memcmp(v77, v61, v60))
              {
                *(a1 + 136) = 7;
                operator new();
              }
            }

            ++v68;
          }

          while (v68 < *&v66[v67]);
          LOBYTE(v7) = *(a1 + 167);
        }
      }
    }
  }

  if ((v7 & 0x80) != 0)
  {
    v79 = *(a1 + 144);
    v78 = *(a1 + 152);
  }

  else
  {
    v78 = v7;
    v79 = v6;
  }

  v80 = (a2 - *a2);
  v81 = *v80;
  if (v81 >= 7)
  {
    v82 = v80[3];
    if (v80[3])
    {
      v82 += a2 + *(a2 + v82);
    }

    if (v81 >= 0x15)
    {
      v83 = v80[10];
      if (v83)
      {
        v84 = a2 + v83;
        v85 = *(a2 + v83);
        if (*(a2 + v83 + v85))
        {
          v86 = 0;
          v87 = v82 + 4;
          v88 = a2 + v83 + v85 + 4;
          do
          {
            v89 = (v87 + 4 * *&v88[4 * v86]);
            v90 = AirReflection::Node::node_as_ObjectFunction((v89 + *v89));
            if (v90)
            {
              v91 = (v90 - *v90);
              if (*v91 < 5u)
              {
                v95 = 0;
                v92 = 0;
              }

              else
              {
                v92 = v91[2];
                if (v92)
                {
                  v93 = (v90 + v92);
                  v94 = *v93;
                  v95 = v93 + v94 + 4;
                  v92 = *(v93 + v94);
                }

                else
                {
                  v95 = 0;
                }
              }

              if (v92 == v78 && !memcmp(v95, v79, v78))
              {
                *(a1 + 136) = 8;
                operator new();
              }
            }

            ++v86;
          }

          while (v86 < *&v84[v85]);
          LOBYTE(v7) = *(a1 + 167);
        }
      }
    }
  }

  if ((v7 & 0x80) != 0)
  {
    v97 = *(a1 + 144);
    v96 = *(a1 + 152);
  }

  else
  {
    v96 = v7;
    v97 = v6;
  }

  v98 = (a2 - *a2);
  v99 = *v98;
  if (v99 >= 7)
  {
    v100 = v98[3];
    if (v98[3])
    {
      v100 += a2 + *(a2 + v100);
    }

    if (v99 >= 0x11)
    {
      v101 = v98[8];
      if (v101)
      {
        v102 = a2 + v101;
        v103 = *(a2 + v101);
        if (*(a2 + v101 + v103))
        {
          v104 = 0;
          v105 = v100 + 4;
          v106 = a2 + v101 + v103 + 4;
          do
          {
            v107 = (v105 + 4 * *&v106[4 * v104]);
            v108 = AirReflection::Node::node_as_VisibleFunction((v107 + *v107));
            if (v108)
            {
              v109 = (v108 - *v108);
              if (*v109 < 5u)
              {
                v113 = 0;
                v110 = 0;
              }

              else
              {
                v110 = v109[2];
                if (v110)
                {
                  v111 = (v108 + v110);
                  v112 = *v111;
                  v113 = v111 + v112 + 4;
                  v110 = *(v111 + v112);
                }

                else
                {
                  v113 = 0;
                }
              }

              if (v110 == v96 && !memcmp(v113, v97, v96))
              {
                *(a1 + 136) = 5;
                operator new();
              }
            }

            ++v104;
          }

          while (v104 < *&v102[v103]);
        }
      }
    }
  }

  v114 = *(a1 + 167);
  if ((v114 & 0x8000000000000000) != 0)
  {
    v6 = *(a1 + 144);
    v114 = *(a1 + 152);
  }

  if ((findFunctionByName<AirReflection::IntersectionFunction>(a2, v6, v114) & 0x100000000) != 0)
  {
    *(a1 + 136) = 6;
    operator new();
  }

  return 0;
}

uint64_t AirReflection::Node::node_as_MeshFunction(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 6) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ObjectFunction(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 7) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_VisibleFunction(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 4) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t findFunctionByName<AirReflection::IntersectionFunction>(int *a1, const void *a2, size_t a3)
{
  v3 = (a1 - *a1);
  v4 = *v3;
  if (v4 < 7)
  {
    v8 = 0;
    v21 = 0;
    v22 = 0;
    return v21 | v22 | v8;
  }

  v7 = v3[3];
  if (v3[3])
  {
    v7 += a1 + *(a1 + v7);
  }

  if (v4 < 0xB)
  {
    goto LABEL_17;
  }

  v8 = v3[5];
  if (!v8)
  {
LABEL_18:
    v21 = 0;
    v22 = 0;
    return v21 | v22 | v8;
  }

  v9 = a1 + v8;
  v10 = *(a1 + v8);
  if (!*(a1 + v8 + v10))
  {
LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  v11 = 0;
  v12 = v7 + 4;
  v13 = a1 + v8 + v10 + 4;
  while (1)
  {
    v14 = (v12 + 4 * *&v13[4 * v11]);
    v15 = AirReflection::Node::node_as_IntersectionFunction((v14 + *v14));
    if (v15)
    {
      v16 = (v15 - *v15);
      if (*v16 < 5u)
      {
        v20 = 0;
        v17 = 0;
      }

      else
      {
        v17 = v16[2];
        if (v17)
        {
          v18 = (v15 + v17);
          v19 = *v18;
          v20 = v18 + v19 + 4;
          v17 = *(v18 + v19);
        }

        else
        {
          v20 = 0;
        }
      }

      if (v17 == a3 && !memcmp(v20, a2, a3))
      {
        break;
      }
    }

    if (++v11 >= *&v9[v10])
    {
      goto LABEL_17;
    }
  }

  v22 = v11 & 0xFFFFFF00;
  v8 = v11;
  v21 = 0x100000000;
  return v21 | v22 | v8;
}

uint64_t AirReflection::Node::node_as_IntersectionFunction(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 5) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

void MTLReflectionByNameDeserializerAIR::deserialize(uint64_t a1, uint64_t a2, dispatch_data_t data)
{
  if (data)
  {
    v16 = 0;
    buffer_ptr = 0;
    v6 = dispatch_data_create_map(data, &buffer_ptr, &v16);
    v7 = (buffer_ptr + *buffer_ptr);
    v8 = *v7;
    v9 = -v8;
    v10 = (v7 - v8);
    if (*v10 >= 5u)
    {
      v11 = v10[2];
      if (v11)
      {
        *(a1 + 112) = *(v7 + v11 + 4) | (*(v7 + v11) << 16);
        v9 = -*v7;
      }
    }

    v12 = (v7 + v9);
    if (*v12 >= 7u)
    {
      v13 = v12[3];
      if (v13)
      {
        if (*(v7 + v13 + *(v7 + v13)))
        {
          ArgumentDeserializerForFunction = MTLReflectionByNameDeserializerAIR::createArgumentDeserializerForFunction(a1, v7);
          *(a1 + 128) = ArgumentDeserializerForFunction;
          if (ArgumentDeserializerForFunction)
          {
            (*(*ArgumentDeserializerForFunction + 16))(ArgumentDeserializerForFunction, a2, data);
            v15 = *(a1 + 128);
            *(a1 + 16) = *(v15 + 16);
            *(a1 + 8) = *(v15 + 8);
            *(a1 + 24) = *(v15 + 24);
            *(a1 + 36) = *(v15 + 36);
            *(a1 + 48) = *(v15 + 48);
            *(a1 + 120) = *(v15 + 120);
            *(a1 + 40) = *(v15 + 40);
          }
        }
      }
    }

    dispatch_release(v6);
  }
}

void MTLReturnValueInternal::~MTLReturnValueInternal(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void MTLVisibleReflectionDeserializerAIR::deserialize(uint64_t a1, void *a2, dispatch_data_t data)
{
  if (data)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v5 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
    v6 = v5;
    v7 = (buffer_ptr + *buffer_ptr);
    v8 = *v7;
    v9 = -v8;
    v10 = (v7 - v8);
    if (*v10 >= 5u)
    {
      v11 = v10[2];
      if (v11)
      {
        *(a1 + 112) = *(v7 + v11 + 4) | (*(v7 + v11) << 16);
        v9 = -*v7;
      }
    }

    v12 = (v7 + v9);
    v13 = *v12;
    if (v13 >= 7 && (!v12[3] ? (v14 = 0) : (v14 = (v7 + v12[3] + *(v7 + v12[3]))), v13 >= 0x11 && (v15 = v12[8]) != 0 && v14 && *v14))
    {
      v16 = v7 + v15;
      v17 = *(v7 + v15);
      memset(v27, 0, sizeof(v27));
      memset(v25, 0, sizeof(v25));
      v26 = 1065353216;
      v23 = 5;
      v24 = 0;
      memset(v30, 0, sizeof(v30));
      v31 = 1065353216;
      std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::__move_assign(v25, v30);
      std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v30);
      std::deque<ContextStack>::push_back(v27, &v23);
      ContextStack::~ContextStack(&v23);
      v18 = &v14[*&v16[4 * *(a1 + 128) + 4 + v17]];
      v19 = AirReflection::Node::node_as_VisibleFunction((v18 + v18[1] + 4));
      v20 = (v7 - *v7);
      if (*v20 >= 0x1Du && (v21 = v20[14]) != 0)
      {
        v22 = (v7 + v21 + *(v7 + v21));
      }

      else
      {
        v22 = 0;
      }

      *(a1 + 32) = deserializeGlobalBindings(a2, v22, v27, v14, (a1 + 24)) >> 32;
      *(a1 + 40) = deserializeUserAnnotation<AirReflection::VisibleFunction const*>(v14, v19);
      dispatch_release(v6);
      std::deque<ContextStack>::~deque[abi:ne200100](v27);
    }

    else
    {
      dispatch_release(v5);
    }
  }
}

void sub_185C05BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::deque<ContextStack>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t deserializeUserAnnotation<AirReflection::VisibleFunction const*>(uint64_t a1, int *a2)
{
  v2 = (a2 - *a2);
  if (*v2 < 9u)
  {
    return 0;
  }

  v3 = v2[4];
  if (!v3)
  {
    return 0;
  }

  v4 = a1 + 4 * *(a2 + v3);
  v5 = AirReflection::Node::node_as_UserAnnotationFnAttr((v4 + 4 + *(v4 + 4)));
  v6 = (v5 - *v5);
  if (*v6 < 5u)
  {
    return 0;
  }

  v7 = v6[2];
  if (!v7)
  {
    return 0;
  }

  v8 = v5 + v7 + *(v5 + v7);
  v9 = MEMORY[0x1E696AEC0];

  return [v9 stringWithUTF8String:v8 + 4];
}

void MTLIntersectionReflectionDeserializerAIR::deserialize(uint64_t a1, void *a2, dispatch_data_t data)
{
  if (data)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v5 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
    v6 = v5;
    v7 = (buffer_ptr + *buffer_ptr);
    v8 = *v7;
    v9 = -v8;
    v10 = (v7 - v8);
    if (*v10 >= 5u)
    {
      v11 = v10[2];
      if (v11)
      {
        *(a1 + 112) = *(v7 + v11 + 4) | (*(v7 + v11) << 16);
        v9 = -*v7;
      }
    }

    v12 = (v7 + v9);
    v13 = *v12;
    if (v13 >= 7 && (!v12[3] ? (v14 = 0) : (v14 = (v7 + v12[3] + *(v7 + v12[3]))), v13 >= 0xB && (v15 = v12[5]) != 0 && v14 && *v14))
    {
      v16 = v7 + v15;
      v17 = *(v7 + v15);
      memset(v58, 0, sizeof(v58));
      *__p = 0u;
      v53 = 0u;
      v55 = 1065353216;
      v51 = 6;
      LOBYTE(v52) = 0;
      v61 = 0u;
      v62 = 0u;
      v63 = 1065353216;
      std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::__move_assign(&v53, &v61);
      std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(&v61);
      std::deque<ContextStack>::push_back(v58, &v51);
      ContextStack::~ContextStack(&v51);
      v18 = &v14[*&v16[4 * *(a1 + 148) + 4 + v17]];
      v19 = AirReflection::Node::node_as_IntersectionFunction((v18 + v18[1] + 4));
      v20 = v19;
      v21 = *v19;
      v22 = -v21;
      v23 = (v19 - v21);
      if (*v23 >= 7u)
      {
        v24 = v23[3];
        if (v24)
        {
          v25 = (v19 + v24 + *(v19 + v24));
          *&v62 = 0;
          v26 = 0uLL;
          v61 = 0u;
          if (*v25)
          {
            v27 = 0;
            v28 = v25 + 1;
            do
            {
              deserializeReturn(a2, v28, v14, v58, &v57, &v51);
              std::vector<MTLReturnValueInternal>::push_back[abi:ne200100](&v61, &v51);
              if (v56 < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v53) < 0)
              {
                operator delete(v52);
              }

              ++v27;
              ++v28;
            }

            while (v27 < *v25);
            v26 = v61;
            v29 = v62;
          }

          else
          {
            v29 = 0;
          }

          v49 = v26;
          v50 = v29;
          *&v62 = 0;
          v61 = 0uLL;
          *(a1 + 120) = newReturnValueFromArray(&v49);
          v51 = &v49;
          std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&v51);
          v51 = &v61;
          std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&v51);
          v22 = -*v20;
        }
      }

      v30 = (v20 + v22);
      if (*v30 >= 9u && (v31 = v30[4]) != 0)
      {
        v32 = (v20 + v31 + *(v20 + v31));
      }

      else
      {
        v32 = 0;
      }

      v33 = deserializeArguments(a2, v32, v14, v58, (a1 + 8), (*(a1 + 104) & 0x200000) == 0, (a1 + 48));
      v34 = (v7 - *v7);
      if (*v34 >= 0x1Du && (v35 = v34[14]) != 0)
      {
        v36 = (v7 + v35 + *(v7 + v35));
      }

      else
      {
        v36 = 0;
      }

      v37 = deserializeGlobalBindings(a2, v36, v58, v14, (a1 + 24));
      v51 = 0;
      v52 = 0;
      *&v53 = 0;
      v38 = *v20;
      v39 = -v38;
      v40 = (v20 - v38);
      if (*v40 >= 0xDu)
      {
        v41 = v40[6];
        if (v41)
        {
          if (*(v20 + v41))
          {
            *&v61 = 1;
            std::vector<MTLTagType>::push_back[abi:ne200100](&v51, &v61);
            v39 = -*v20;
          }
        }
      }

      if (*(v20 + v39) >= 0xFu && *(v20 + v39 + 14) && *(v20 + *(v20 + v39 + 14)))
      {
        *&v61 = 2;
        std::vector<MTLTagType>::push_back[abi:ne200100](&v51, &v61);
        v39 = -*v20;
      }

      if (*(v20 + v39) >= 0x11u && *(v20 + v39 + 16) && *(v20 + *(v20 + v39 + 16)))
      {
        *&v61 = 3;
        std::vector<MTLTagType>::push_back[abi:ne200100](&v51, &v61);
        v39 = -*v20;
      }

      if (*(v20 + v39) >= 0x13u && *(v20 + v39 + 18) && *(v20 + *(v20 + v39 + 18)))
      {
        *&v61 = 5;
        std::vector<MTLTagType>::push_back[abi:ne200100](&v51, &v61);
        v39 = -*v20;
      }

      if (*(v20 + v39) >= 0x15u && *(v20 + v39 + 20) && *(v20 + *(v20 + v39 + 20)))
      {
        *&v61 = 4;
        std::vector<MTLTagType>::push_back[abi:ne200100](&v51, &v61);
        v39 = -*v20;
      }

      if (*(v20 + v39) >= 0x17u && *(v20 + v39 + 22) && *(v20 + *(v20 + v39 + 22)))
      {
        *&v61 = 6;
        std::vector<MTLTagType>::push_back[abi:ne200100](&v51, &v61);
        v39 = -*v20;
      }

      if (*(v20 + v39) >= 0x19u && *(v20 + v39 + 24) && *(v20 + *(v20 + v39 + 24)))
      {
        *&v61 = 7;
        std::vector<MTLTagType>::push_back[abi:ne200100](&v51, &v61);
        v39 = -*v20;
      }

      if (*(v20 + v39) >= 0x1Du && *(v20 + v39 + 28) && *(v20 + *(v20 + v39 + 28)))
      {
        *&v61 = 9;
        std::vector<MTLTagType>::push_back[abi:ne200100](&v51, &v61);
        v39 = -*v20;
      }

      v42 = (v20 + v39);
      if (*v42 >= 0x1Fu)
      {
        v43 = v42[15];
        if (v43)
        {
          if (*(v20 + v43))
          {
            *&v61 = 10;
            std::vector<MTLTagType>::push_back[abi:ne200100](&v51, &v61);
          }
        }
      }

      v44 = (v52 - v51) >> 3;
      *(a1 + 144) = v44;
      *(a1 + 136) = malloc_type_calloc(v44, 8uLL, 0x80040B8603338uLL);
      if (*(a1 + 144))
      {
        v45 = 0;
        do
        {
          v46 = [MTLTag alloc];
          *(*(a1 + 136) + 8 * v45) = [(MTLTag *)v46 initWithTagType:*(v51 + v45)];
          ++v45;
        }

        while (v45 < *(a1 + 144));
      }

      v47 = (v20 - *v20);
      if (*v47 < 0xBu)
      {
        v48 = 0;
      }

      else
      {
        v48 = v47[5];
        if (v48)
        {
          v48 = *(v20 + v48);
        }
      }

      *(a1 + 128) = v48;
      *(a1 + 16) = HIDWORD(v33);
      *(a1 + 32) = HIDWORD(v37);
      *(a1 + 36) = v33;
      *(a1 + 40) = deserializeUserAnnotation<AirReflection::IntersectionFunction const*>(v14, v20);
      dispatch_release(v6);
      if (v51)
      {
        v52 = v51;
        operator delete(v51);
      }

      std::deque<ContextStack>::~deque[abi:ne200100](v58);
    }

    else
    {
      dispatch_release(v5);
    }
  }
}

void sub_185C062AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::deque<ContextStack>::~deque[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

uint64_t deserializeUserAnnotation<AirReflection::IntersectionFunction const*>(uint64_t a1, int *a2)
{
  v2 = (a2 - *a2);
  if (*v2 < 0x21u)
  {
    return 0;
  }

  v3 = v2[16];
  if (!v3)
  {
    return 0;
  }

  v4 = a1 + 4 * *(a2 + v3);
  v5 = AirReflection::Node::node_as_UserAnnotationFnAttr((v4 + 4 + *(v4 + 4)));
  v6 = (v5 - *v5);
  if (*v6 < 5u)
  {
    return 0;
  }

  v7 = v6[2];
  if (!v7)
  {
    return 0;
  }

  v8 = v5 + v7 + *(v5 + v7);
  v9 = MEMORY[0x1E696AEC0];

  return [v9 stringWithUTF8String:v8 + 4];
}

uint64_t MTLObjectDeserializerAIR::deserialize(uint64_t result, void *a2, dispatch_data_t data)
{
  if (data)
  {
    v4 = result;
    size_ptr = 0;
    buffer_ptr = 0;
    v5 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
    v6 = (buffer_ptr + *buffer_ptr);
    v7 = *v6;
    v8 = -v7;
    v9 = (v6 - v7);
    if (*v9 >= 5u)
    {
      v10 = v9[2];
      if (v10)
      {
        *(v4 + 112) = *(v6 + v10 + 4) | (*(v6 + v10) << 16);
        v8 = -*v6;
      }
    }

    v11 = (v6 + v8);
    if (*v11 >= 7u && (v12 = v11[3]) != 0)
    {
      v13 = (v6 + v12 + *(v6 + v12));
    }

    else
    {
      v13 = 0;
    }

    memset(v34, 0, sizeof(v34));
    v44 = 0u;
    __p = 0u;
    v46 = 1065353216;
    v42 = 8;
    LOBYTE(v43) = 0;
    v37 = 0u;
    v38 = 0u;
    v39 = 1065353216;
    std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::__move_assign(&v44, &v37);
    std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(&v37);
    std::deque<ContextStack>::push_back(v34, &v42);
    ContextStack::~ContextStack(&v42);
    v14 = (v6 - *v6);
    if (*v14 < 0x15u)
    {
      goto LABEL_36;
    }

    v15 = v14[10];
    if (!v15 || !v13 || !*v13)
    {
      goto LABEL_36;
    }

    v16 = &v13[*(v6 + v15 + *(v6 + v15) + 4)];
    v17 = AirReflection::Node::node_as_ObjectFunction((v16 + v16[1] + 4));
    v18 = v17;
    v19 = (v17 - *v17);
    v20 = *v19;
    if (v20 < 9)
    {
      v21 = 0;
      v22 = 0;
      if (v20 < 7)
      {
LABEL_31:
        *(v4 + 120) = v22;
        *(v4 + 40) = deserializeUserAnnotation<AirReflection::ObjectFunction const*>(v13, v18);
        v29 = deserializeArguments(a2, v21, v13, v34, (v4 + 8), (*(v4 + 104) & 0x200000) == 0, (v4 + 48));
        v30 = (v6 - *v6);
        if (*v30 >= 0x1Du && (v31 = v30[14]) != 0)
        {
          v32 = (v6 + v31 + *(v6 + v31));
        }

        else
        {
          v32 = 0;
        }

        v33 = deserializeGlobalBindings(a2, v32, v34, v13, (v4 + 24));
        *(v4 + 16) = HIDWORD(v29);
        *(v4 + 32) = HIDWORD(v33);
        *(v4 + 36) = v29;
LABEL_36:
        dispatch_release(v5);
        return std::deque<ContextStack>::~deque[abi:ne200100](v34);
      }
    }

    else if (v19[4])
    {
      v21 = (v17 + v19[4] + *(v17 + v19[4]));
    }

    else
    {
      v21 = 0;
    }

    v23 = v19[3];
    if (v23)
    {
      v24 = (v17 + v23 + *(v17 + v23));
      *&v38 = 0;
      v25 = 0uLL;
      v37 = 0u;
      if (*v24)
      {
        v26 = 0;
        v27 = v24 + 1;
        do
        {
          deserializeReturn(a2, v27, v13, v34, &v48, &v42);
          std::vector<MTLReturnValueInternal>::push_back[abi:ne200100](&v37, &v42);
          if (v47 < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v44) < 0)
          {
            operator delete(v43);
          }

          ++v26;
          ++v27;
        }

        while (v26 < *v24);
        v25 = v37;
        v28 = v38;
      }

      else
      {
        v28 = 0;
      }

      v40 = v25;
      v41 = v28;
      *&v38 = 0;
      v37 = 0uLL;
      v22 = newReturnValueFromArray(&v40);
      v42 = &v40;
      std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&v42);
      v42 = &v37;
      std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&v42);
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_31;
  }

  return result;
}

void sub_185C06740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26)
{
  std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = &a17;
  std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&a26);
  std::deque<ContextStack>::~deque[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t deserializeUserAnnotation<AirReflection::ObjectFunction const*>(uint64_t a1, int *a2)
{
  v2 = (a2 - *a2);
  if (*v2 < 0xFu)
  {
    return 0;
  }

  v3 = v2[7];
  if (!v3)
  {
    return 0;
  }

  v4 = a1 + 4 * *(a2 + v3);
  v5 = AirReflection::Node::node_as_UserAnnotationFnAttr((v4 + 4 + *(v4 + 4)));
  v6 = (v5 - *v5);
  if (*v6 < 5u)
  {
    return 0;
  }

  v7 = v6[2];
  if (!v7)
  {
    return 0;
  }

  v8 = v5 + v7 + *(v5 + v7);
  v9 = MEMORY[0x1E696AEC0];

  return [v9 stringWithUTF8String:v8 + 4];
}

uint64_t MTLMeshDeserializerAIR::deserialize(uint64_t result, void *a2, dispatch_data_t data)
{
  if (data)
  {
    v4 = result;
    size_ptr = 0;
    buffer_ptr = 0;
    v5 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
    v6 = (buffer_ptr + *buffer_ptr);
    v7 = *v6;
    v8 = -v7;
    v9 = (v6 - v7);
    if (*v9 >= 5u)
    {
      v10 = v9[2];
      if (v10)
      {
        *(v4 + 112) = *(v6 + v10 + 4) | (*(v6 + v10) << 16);
        v8 = -*v6;
      }
    }

    v11 = (v6 + v8);
    if (*v11 >= 7u && (v12 = v11[3]) != 0)
    {
      v13 = (v6 + v12 + *(v6 + v12));
    }

    else
    {
      v13 = 0;
    }

    memset(v34, 0, sizeof(v34));
    v44 = 0u;
    __p = 0u;
    v46 = 1065353216;
    v42 = 7;
    LOBYTE(v43) = 0;
    v37 = 0u;
    v38 = 0u;
    v39 = 1065353216;
    std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::__move_assign(&v44, &v37);
    std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(&v37);
    std::deque<ContextStack>::push_back(v34, &v42);
    ContextStack::~ContextStack(&v42);
    v14 = (v6 - *v6);
    if (*v14 < 0x13u)
    {
      goto LABEL_36;
    }

    v15 = v14[9];
    if (!v15 || !v13 || !*v13)
    {
      goto LABEL_36;
    }

    v16 = &v13[*(v6 + v15 + *(v6 + v15) + 4)];
    v17 = AirReflection::Node::node_as_MeshFunction((v16 + v16[1] + 4));
    v18 = v17;
    v19 = (v17 - *v17);
    v20 = *v19;
    if (v20 < 9)
    {
      v21 = 0;
      v22 = 0;
      if (v20 < 7)
      {
LABEL_31:
        *(v4 + 120) = v22;
        *(v4 + 40) = deserializeUserAnnotation<AirReflection::VertexFunction const*>(v13, v18);
        v29 = deserializeArguments(a2, v21, v13, v34, (v4 + 8), (*(v4 + 104) & 0x200000) == 0, (v4 + 48));
        v30 = (v6 - *v6);
        if (*v30 >= 0x1Du && (v31 = v30[14]) != 0)
        {
          v32 = (v6 + v31 + *(v6 + v31));
        }

        else
        {
          v32 = 0;
        }

        v33 = deserializeGlobalBindings(a2, v32, v34, v13, (v4 + 24));
        *(v4 + 16) = HIDWORD(v29);
        *(v4 + 32) = HIDWORD(v33);
        *(v4 + 36) = v29;
LABEL_36:
        dispatch_release(v5);
        return std::deque<ContextStack>::~deque[abi:ne200100](v34);
      }
    }

    else if (v19[4])
    {
      v21 = (v17 + v19[4] + *(v17 + v19[4]));
    }

    else
    {
      v21 = 0;
    }

    v23 = v19[3];
    if (v23)
    {
      v24 = (v17 + v23 + *(v17 + v23));
      *&v38 = 0;
      v25 = 0uLL;
      v37 = 0u;
      if (*v24)
      {
        v26 = 0;
        v27 = v24 + 1;
        do
        {
          deserializeReturn(a2, v27, v13, v34, &v48, &v42);
          std::vector<MTLReturnValueInternal>::push_back[abi:ne200100](&v37, &v42);
          if (v47 < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v44) < 0)
          {
            operator delete(v43);
          }

          ++v26;
          ++v27;
        }

        while (v26 < *v24);
        v25 = v37;
        v28 = v38;
      }

      else
      {
        v28 = 0;
      }

      v40 = v25;
      v41 = v28;
      *&v38 = 0;
      v37 = 0uLL;
      v22 = newReturnValueFromArray(&v40);
      v42 = &v40;
      std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&v42);
      v42 = &v37;
      std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&v42);
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_31;
  }

  return result;
}

void sub_185C06B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26)
{
  std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = &a17;
  std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&a26);
  std::deque<ContextStack>::~deque[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void MTLDynamicLibraryReflectionDeserializerAIR::deserialize(uint64_t a1, void *a2, dispatch_data_t data)
{
  if (data)
  {
    buffer_ptr = 0;
    size_ptr = 0;
    v5 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
    v6 = buffer_ptr;
    if (!strncmp(buffer_ptr + 4, "AIRR", 4uLL))
    {
      v7 = (v6 + *v6);
      v8 = (v7 - *v7);
      if (*v8 >= 7u && (v9 = v8[3]) != 0)
      {
        v10 = v7 + v9;
        v11 = *(v7 + v9);
        memset(v19, 0, sizeof(v19));
        memset(v17, 0, sizeof(v17));
        v18 = 1065353216;
        v15 = 0xFFFFLL;
        v16 = 0;
        memset(v22, 0, sizeof(v22));
        v23 = 1065353216;
        std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::__move_assign(v17, v22);
        std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v22);
        std::deque<ContextStack>::push_back(v19, &v15);
        ContextStack::~ContextStack(&v15);
        v12 = (v7 - *v7);
        if (*v12 >= 0x1Du && (v13 = v12[14]) != 0)
        {
          v14 = (v7 + v13 + *(v7 + v13));
        }

        else
        {
          v14 = 0;
        }

        *(a1 + 32) = deserializeGlobalBindings(a2, v14, v19, &v10[v11], (a1 + 24)) >> 32;
        std::deque<ContextStack>::~deque[abi:ne200100](v19);
      }

      else
      {
        *(a1 + 32) = 0;
      }
    }

    dispatch_release(v5);
  }
}

void sub_185C06D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::deque<ContextStack>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ReflectionReaderFactory<MTLIntersectionReflectionReader>::Create(uint64_t a1, NSObject *a2)
{
  if (ShouldCreateAIRVersion(a2))
  {
    operator new();
  }

  operator new();
}

void ReflectionReaderFactory<MTLVisibleReflectionReader>::Create(uint64_t a1, NSObject *a2)
{
  if (ShouldCreateAIRVersion(a2))
  {
    operator new();
  }

  operator new();
}

uint64_t validateArguments(MTLBindingInternal **a1, MTLBindingInternal **a2, unsigned int a3)
{
  if (a3)
  {
    v5 = 0;
    v6 = 0;
    v7 = a3;
    do
    {
      if (![(MTLBindingInternal *)a1[v5] isEqual:a2[v5]])
      {
        NSLog(&cfstr_ArgumentDDiffe.isa, v5, a1[v5], a2[v5]);
        v6 = 1;
      }

      ++v5;
    }

    while (v7 != v5);
    v8 = v6 ^ 1;
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t validateUserAnnotation(unint64_t a1, NSString *a2)
{
  if (!(a1 | a2))
  {
    return 1;
  }

  if ([a1 isEqualToString:a2])
  {
    return 1;
  }

  NSLog(&cfstr_UserAnnotation.isa, a1, a2);
  return 0;
}

uint64_t ReflectionValidator<MTLIntersectionReflectionReader>::Validate(uint64_t a1, uint64_t a2, NSObject *a3)
{
  if (MTLEnvVarAggregator::GET_MTL_VERIFY_REFLECTION(0, 0))
  {
    if ((a2 & 0x800000) != 0)
    {
      v5 = MTLNewEmulationReflectionData(a3);
    }

    else
    {
      v5 = MTLNewReflectionData(a3);
    }

    v6 = v5;
    MTLNewLegacyReflectionData(a3);
    ReflectionReaderFactory<MTLIntersectionReflectionReader>::Create(a2, v6);
  }

  return 1;
}

uint64_t ReflectionValidator<MTLStitchingReflectionReader>::Validate(uint64_t a1, uint64_t a2, NSObject *a3)
{
  if (MTLEnvVarAggregator::GET_MTL_VERIFY_REFLECTION(0, 0))
  {
    if ((a2 & 0x800000) != 0)
    {
      MTLNewEmulationReflectionData(a3);
    }

    else
    {
      MTLNewReflectionData(a3);
    }

    MTLNewLegacyReflectionData(a3);
    ReflectionReaderFactory<MTLStitchingReflectionReader>::Create(a2);
  }

  return 1;
}

uint64_t ReflectionValidator<MTLObjectReflectionReader>::Validate(uint64_t a1, uint64_t a2, NSObject *a3)
{
  if (MTLEnvVarAggregator::GET_MTL_VERIFY_REFLECTION(0, 0))
  {
    if ((a2 & 0x800000) != 0)
    {
      v5 = MTLNewEmulationReflectionData(a3);
    }

    else
    {
      v5 = MTLNewReflectionData(a3);
    }

    v6 = v5;
    MTLNewLegacyReflectionData(a3);
    ReflectionReaderFactory<MTLObjectReflectionReader>::Create(a2, v6);
  }

  return 1;
}

uint64_t ReflectionValidator<MTLMeshReflectionReader>::Validate(uint64_t a1, uint64_t a2, NSObject *a3)
{
  if (MTLEnvVarAggregator::GET_MTL_VERIFY_REFLECTION(0, 0))
  {
    if ((a2 & 0x800000) != 0)
    {
      v5 = MTLNewEmulationReflectionData(a3);
    }

    else
    {
      v5 = MTLNewReflectionData(a3);
    }

    v6 = v5;
    MTLNewLegacyReflectionData(a3);
    ReflectionReaderFactory<MTLMeshReflectionReader>::Create(a2, v6);
  }

  return 1;
}

void MTLReflectionByNameDeserializerAIR::~MTLReflectionByNameDeserializerAIR(MTLReflectionByNameDeserializerAIR *this)
{
  MTLReflectionByNameDeserializer::~MTLReflectionByNameDeserializer(this);

  JUMPOUT(0x1865FF210);
}

void MTLVisibleReflectionDeserializerAIR::~MTLVisibleReflectionDeserializerAIR(MTLVisibleReflectionDeserializerAIR *this)
{
  MTLArgumentDeserializer::~MTLArgumentDeserializer(this);

  JUMPOUT(0x1865FF210);
}

void MTLIntersectionReflectionDeserializerAIR::~MTLIntersectionReflectionDeserializerAIR(MTLIntersectionReflectionDeserializerAIR *this)
{
  MTLIntersectionReflectionDeserializer::~MTLIntersectionReflectionDeserializer(this);

  JUMPOUT(0x1865FF210);
}

void MTLObjectDeserializerAIR::~MTLObjectDeserializerAIR(MTLObjectDeserializerAIR *this)
{
  MTLArgumentDeserializer::~MTLArgumentDeserializer(this);

  JUMPOUT(0x1865FF210);
}

void MTLMeshDeserializerAIR::~MTLMeshDeserializerAIR(MTLMeshDeserializerAIR *this)
{
  MTLArgumentDeserializer::~MTLArgumentDeserializer(this);

  JUMPOUT(0x1865FF210);
}

void MTLDynamicLibraryReflectionDeserializerAIR::~MTLDynamicLibraryReflectionDeserializerAIR(MTLDynamicLibraryReflectionDeserializerAIR *this)
{
  MTLArgumentDeserializer::~MTLArgumentDeserializer(this);

  JUMPOUT(0x1865FF210);
}

void MTLVisibleReflectionDeserializer::~MTLVisibleReflectionDeserializer(MTLVisibleReflectionDeserializer *this)
{
  MTLArgumentDeserializer::~MTLArgumentDeserializer(this);

  JUMPOUT(0x1865FF210);
}

uint64_t AirReflection::Node::node_as_ImageblockDataRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 135172) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_IndirectBufferArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262148) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ConstantArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262147) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_IndirectConstantArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262149) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_TensorArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262160) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_BaseVertexArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 270337) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_BaseInstanceArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 270336)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::Node::node_as_ThreadsPerGridArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266241) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ThreadPositionInThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266244) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ThreadIndexInThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266247) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ThreadsPerThreadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266245) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ThreadgroupsPerGridArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266243) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ThreadgroupPositionInGridArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266242) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ThreadExecutionWidthArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266248) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_PatchIDArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 270342) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_PositionInPatchArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 270343) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_StageInGridOriginArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266250) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_StageInGridSizeArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266251) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ThreadIndexInQuadgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266257) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ThreadIndexInSimdgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266252) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ThreadsPerSimdgroupArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266253) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_AmplificationIDArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 270351) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_AmplificationCountArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 270350) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_MeshGridPropertiesArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 290816)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::Node::node_as_MeshArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 286720)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::Node::node_as_MeshTypeInfo(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 524291) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

MTLStructTypeInternal *deserializeMeshStructArgument(unsigned int *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *a1;
    if (v3)
    {
      v5 = malloc_type_calloc(*a1, 8uLL, 0x80040B8603338uLL);
      v6 = 0;
      v7 = a1 + 1;
      v8 = a2 + 4;
      while (1)
      {
        v9 = (v8 + 4 * v7[v6]);
        v10 = (v9 + *v9);
        v11 = (v10 - *v10);
        if (*v11 < 5u)
        {
          LODWORD(v12) = 0;
        }

        else
        {
          v12 = v11[2];
          if (v12)
          {
            LODWORD(v12) = *(v10 + v12);
            if (v12 > 135170)
            {
              if (v12 <= 139265)
              {
                if (v12 >= 139264)
                {
                  if (v12 == 139264)
                  {
                    v13 = AirReflection::Node::node_as_AcceptIntersectionRet(v10);
                  }

                  else
                  {
                    v13 = AirReflection::Node::node_as_ContinueSearchRet(v10);
                  }

                  goto LABEL_67;
                }

                if (v12 == 135171)
                {
                  v13 = AirReflection::Node::node_as_SampleMaskRet(v10);
                  goto LABEL_67;
                }

                if (v12 == 135172)
                {
                  v17 = AirReflection::Node::node_as_ImageblockDataRet(v10);
                  v18 = *v17;
                  v19 = -v18;
                  v20 = (v17 - v18);
                  if (*v20 >= 0x15u && (v21 = v20[10]) != 0)
                  {
                    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v17 + v21 + *(v17 + v21) + 4];
                    v19 = -*v17;
                  }

                  else
                  {
                    v15 = &stru_1EF478240;
                  }

                  v28 = *(v17 + v19 + 18);
                  goto LABEL_72;
                }
              }

              else if (v12 <= 143360)
              {
                if (v12 == 139266)
                {
                  v13 = AirReflection::Node::node_as_DistanceRet(v10);
LABEL_67:
                  v17 = v13;
                  v41 = *v13;
                  v42 = -v41;
                  v43 = (v13 - v41);
                  if (*v43 >= 9u && (v44 = v43[4]) != 0)
                  {
                    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13 + v44 + *(v13 + v44) + 4];
                    v42 = -*v17;
                  }

                  else
                  {
                    v15 = &stru_1EF478240;
                  }

                  v28 = *(v17 + v42 + 6);
                  goto LABEL_72;
                }

                if (v12 == 143360)
                {
                  v22 = AirReflection::Node::node_as_MeshPrimitiveDataRet(v10);
                  goto LABEL_61;
                }
              }

              else
              {
                switch(v12)
                {
                  case 0x23001:
                    v22 = AirReflection::Node::node_as_MeshVertexDataRet(v10);
LABEL_61:
                    v17 = v22;
                    v37 = *v22;
                    v38 = -v37;
                    v39 = (v22 - v37);
                    if (*v39 >= 0xFu && (v40 = v39[7]) != 0)
                    {
                      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v22 + v40 + *(v22 + v40) + 4];
                      v38 = -*v17;
                    }

                    else
                    {
                      v15 = &stru_1EF478240;
                    }

                    v28 = *(v17 + v38 + 12);
                    goto LABEL_72;
                  case 0x23002:
                    v16 = AirReflection::Node::node_as_PrimitiveCulledRet(v10);
                    goto LABEL_51;
                  case 0x23003:
                    v16 = AirReflection::Node::node_as_PrimitiveIDRet(v10);
LABEL_51:
                    v17 = v16;
                    v29 = *v16;
                    v30 = -v29;
                    v31 = (v16 - v29);
                    if (*v31 >= 0xBu && (v32 = v31[5]) != 0)
                    {
                      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v16 + v32 + *(v16 + v32) + 4];
                      v30 = -*v17;
                    }

                    else
                    {
                      v15 = &stru_1EF478240;
                    }

                    v28 = *(v17 + v30 + 8);
LABEL_72:
                    v45 = v17 + v28 + *(v17 + v28);
                    v46 = strlen(v45 + 4);
                    v14 = dataTypeFromString(v45 + 4, v46);
                    goto LABEL_73;
                }
              }
            }

            else if (v12 <= 131075)
            {
              if (v12 > 131073)
              {
                if (v12 != 131074)
                {
                  v16 = AirReflection::Node::node_as_RenderTargetArrayIndexRet(v10);
                  goto LABEL_51;
                }

                v23 = AirReflection::Node::node_as_PositionRet(v10);
                goto LABEL_43;
              }

              if (v12 == 0x20000)
              {
                v23 = AirReflection::Node::node_as_ClipDistanceRet(v10);
LABEL_43:
                v17 = v23;
                v24 = *v23;
                v25 = -v24;
                v26 = (v23 - v24);
                if (*v26 >= 0xDu && (v27 = v26[6]) != 0)
                {
                  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v23 + v27 + *(v23 + v27) + 4];
                  v25 = -*v17;
                }

                else
                {
                  v15 = &stru_1EF478240;
                }

                v28 = *(v17 + v25 + 10);
                goto LABEL_72;
              }

              if (v12 == 131073)
              {
                v16 = AirReflection::Node::node_as_PointSizeRet(v10);
                goto LABEL_51;
              }
            }

            else
            {
              if (v12 >= 135168)
              {
                if (v12 == 135168)
                {
                  v17 = AirReflection::Node::node_as_RenderTargetRet(v10);
                  v33 = *v17;
                  v34 = -v33;
                  v35 = (v17 - v33);
                  if (*v35 >= 0x11u && (v36 = v35[8]) != 0)
                  {
                    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v17 + v36 + *(v17 + v36) + 4];
                    v34 = -*v17;
                  }

                  else
                  {
                    v15 = &stru_1EF478240;
                  }

                  v28 = *(v17 + v34 + 14);
                  goto LABEL_72;
                }

                if (v12 == 135169)
                {
                  v16 = AirReflection::Node::node_as_DepthRet(v10);
                  goto LABEL_51;
                }

                v13 = AirReflection::Node::node_as_StencilRet(v10);
                goto LABEL_67;
              }

              if (v12 == 131076)
              {
                v22 = AirReflection::Node::node_as_VertexOutputRet(v10);
                goto LABEL_61;
              }

              if (v12 == 131077)
              {
                v16 = AirReflection::Node::node_as_ViewportArrayIndexRet(v10);
                goto LABEL_51;
              }
            }
          }
        }

        AirReflection::EnumNameNodeType(v12);
        v14 = 0;
        v15 = 0;
LABEL_73:
        v5[v6++] = [[MTLStructMemberInternal alloc] initWithName:v15 offset:0 dataType:v14 pixelFormat:0 aluType:0 indirectArgumentIndex:0 render_target:0xFFFFFFFFLL raster_order_group:0xFFFFFFFFLL details:0];
        if (v3 == v6)
        {
          v47 = 0;
          goto LABEL_80;
        }
      }
    }
  }

  v5 = 0;
  v3 = 0;
  v47 = 1;
LABEL_80:
  v48 = [[MTLStructTypeInternal alloc] initWithMembers:v5 count:v3];
  if (v47)
  {
    if (!v5)
    {
      return v48;
    }
  }

  else
  {
    v49 = v5;
    do
    {
      v50 = *v49++;

      --v3;
    }

    while (v3);
  }

  free(v5);
  return v48;
}

uint64_t AirReflection::Node::node_as_ImageblockArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 278531) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ImageblockDataArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 278532) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_ComputePipelineStateArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262151) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_RenderPipelineStateArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262152) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_DepthStencilStateArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262158) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_CommandBufferArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262150) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_IntersectionFunctionTableArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262154) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_PrimitiveAccelerationStructureArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262156) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_InstanceAccelerationStructureArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262155) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_PayloadArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 282624)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t AirReflection::Node::node_as_BufferStrideArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262157) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_GlobalBinding(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 524292) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_VertexInputArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 270340) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_StageInArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 266249) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

MTLArgumentDeserializer *MTLReflectionByNameDeserializer::MTLReflectionByNameDeserializer(MTLArgumentDeserializer *a1, uint64_t a2, uint64_t a3)
{
  MTLArgumentDeserializer::MTLArgumentDeserializer(a1, 0);
  *v6 = &unk_1EF474038;
  *(v6 + 144) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 156) = 0u;
  MEMORY[0x1865FEFD0](v6 + 144, a2, a3);
  return a1;
}

void sub_185C091B8(_Unwind_Exception *a1)
{
  if (v1[167] < 0)
  {
    operator delete(*v2);
  }

  MTLArgumentDeserializer::~MTLArgumentDeserializer(v1);
  _Unwind_Resume(a1);
}

void MTLReflectionByNameDeserializer::~MTLReflectionByNameDeserializer(MTLReflectionByNameDeserializer *this)
{
  MTLReflectionByNameDeserializer::~MTLReflectionByNameDeserializer(this);

  JUMPOUT(0x1865FF210);
}

{
  *(this + 4) = 0;
  *(this + 3) = 0;
  *this = &unk_1EF474038;
  *(this + 1) = 0;
  *(this + 15) = 0;
  *(this + 44) = 0;
  *(this + 36) = 0;
  v2 = *(this + 16);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  MTLArgumentDeserializer::~MTLArgumentDeserializer(this);
}

void MTLObjectReflectionReader::~MTLObjectReflectionReader(MTLObjectReflectionReader *this)
{
  MTLArgumentReader::~MTLArgumentReader(this);

  JUMPOUT(0x1865FF210);
}

void MTLMeshReflectionReader::~MTLMeshReflectionReader(MTLMeshReflectionReader *this)
{
  MTLArgumentReader::~MTLArgumentReader(this);

  JUMPOUT(0x1865FF210);
}

void MTLDynamicLibraryReflectionDeserializer::~MTLDynamicLibraryReflectionDeserializer(MTLDynamicLibraryReflectionDeserializer *this)
{
  MTLArgumentDeserializer::~MTLArgumentDeserializer(this);

  JUMPOUT(0x1865FF210);
}

void std::__split_buffer<ContextStack *>::emplace_back<ContextStack *&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLSerializer::ObjectSerializer *>>(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<ContextStack *>::emplace_front<ContextStack *>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLSerializer::ObjectSerializer *>>(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__split_buffer<ContextStack *>::emplace_front<ContextStack *&>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLSerializer::ObjectSerializer *>>(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,MTLStructTypeInternal *> const&>(void *a1, unint64_t *a2, _OWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<MTLReturnValueInternal>,MTLReturnValueInternal*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 80;
      std::allocator<MTLReturnValueInternal>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t AirReflection::Node::node_as_UserAnnotationFnAttr(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 4102) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

void MTLCompileToken::setCompilerTask(MTLCompileToken *this, _MTL4CompilerTask *a2)
{
  v4 = *(this + 2);
  if (v4)
  {
    [v4 clearInternalCompileTokenIfMatches:this];

    *(this + 2) = 0;
  }

  if (a2)
  {
    v5 = a2;
    *(this + 2) = v5;

    [(_MTL4CompilerTask *)v5 setInternalCompileToken:this];
  }
}

void *MTLCompileToken::getStatus(MTLCompileToken *this)
{
  result = *(this + 2);
  if (result)
  {
    return [result status];
  }

  return result;
}

void MTLCompileToken::waitUntilCompleted(MTLCompileToken *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    v17 = v3;
    if (v3)
    {
      v4 = *this;
      v16 = v4;
      if (!v4)
      {
        goto LABEL_20;
      }

      v5 = *(v4 + 96);
      if (!v5)
      {
        goto LABEL_20;
      }

      v6 = *(v5 + 88);
      v14 = (v6 + 88);
      v15 = 1;
      std::mutex::lock((v6 + 88));
      *(v4 + 161) = 1;
      *(v4 + 136) = qos_class_self();
      v7 = *(v4 + 80);
      if (v7)
      {
        _Block_release(v7);
        *(v4 + 80) = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, *(v4 + 136), -1, &__block_literal_global_1);
      }

      while ((*(v16 + 165) & 1) == 0)
      {
        if (MTLCompilerScheduler::shouldScheduleAfterCompilerBoost(v6, &v16, &v14))
        {
          v8 = v16;
          v9 = v17;
          v10 = *(v16 + 96);
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v11 = *(v10 + 56);
          *(v10 + 48) = v8;
          *(v10 + 56) = v9;
          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
            v8 = v16;
          }

          v12 = *(v8 + 96);
          *&v13 = v8;
          *(&v13 + 1) = v17;
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          MTLCompilerConnection::scheduleRequest(v12, 1, &v13, &v14);
          if (*(&v13 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
          }

          break;
        }
      }

      if (v15 == 1)
      {
        std::mutex::unlock(v14);
      }

      v3 = v17;
      if (v17)
      {
LABEL_20:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }
    }
  }
}

void sub_185C09B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::mutex *a11, char a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void MTLCompilerCache::MTLCompilerCache(MTLCompilerCache *this)
{
  this->var0 = &unk_1EF474148;
  *&this->var1._os_unfair_lock_opaque = 0;
  this->var3 = 0;
}

void makeShaderCacheWritableByAllUsers()
{
  if (didPreviouslyGetCacheMainFolder == 1 && gShaderCachePermissions == 0)
  {
    if (_MTLIsInternalBuild())
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        makeShaderCacheWritableByAllUsers_cold_1();
      }
    }
  }

  else
  {
    gShaderCachePermissions = 438;
  }
}

void setShaderCacheMainFolder(const char *a1)
{
  os_unfair_lock_lock(&gCacheOverrideLock);
  v2 = gOverridePath;
  if (gOverridePath != a1 && (!a1 || !gOverridePath || strcmp(gOverridePath, a1)))
  {
    if ((didPreviouslyGetCacheMainFolder & 1) != 0 || didPreviouslySetCacheMainFolder == 1)
    {
      if (_MTLIsInternalBuild() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        setShaderCacheMainFolder_cold_1();
      }
    }

    else
    {
      if (v2)
      {
        free(v2);
      }

      if (a1)
      {
        v3 = strlen(a1);
        gOverridePath = malloc_type_malloc(v3 + 1, 0x100004077774924uLL);
        memcpy(gOverridePath, a1, v3 + 1);
        didPreviouslySetCacheMainFolder = 1;
      }

      else
      {
        gOverridePath = 0;
      }
    }
  }

  os_unfair_lock_unlock(&gCacheOverrideLock);
}

void MTLCompilerFSCache::invalidateCache(MTLCompilerFSCache *this)
{
  fscache_close();
  *(this + 6) = 0;
  os_unfair_lock_lock(this + 34);
  v2 = *(this + 18);
  if (v2)
  {
    v3 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v2);
    MEMORY[0x1865FF210](v3, 0x10A0C408EF24B1CLL);
  }

  *(this + 18) = 0;
  os_unfair_lock_unlock(this + 34);
  *(this + 24) = 1;
}

uint64_t MTLCompilerFSCache::open(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 2);
  v5 = MTLCompilerFSCache::openSync(this, v2, v3, v4);
  os_unfair_lock_unlock(this + 2);
  return v5;
}

void MTLCompilerFSCache::close(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 2);
  if (*&this[12]._os_unfair_lock_opaque)
  {
    fscache_close();
    *&this[12]._os_unfair_lock_opaque = 0;
    os_unfair_lock_lock(this + 34);
    v2 = *&this[36]._os_unfair_lock_opaque;
    if (v2)
    {
      v3 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v2);
      MEMORY[0x1865FF210](v3, 0x10A0C408EF24B1CLL);
    }

    *&this[36]._os_unfair_lock_opaque = 0;
    os_unfair_lock_unlock(this + 34);
  }

  this[3]._os_unfair_lock_opaque = 0;
  this[4]._os_unfair_lock_opaque = 0;

  os_unfair_lock_unlock(this + 2);
}

void MTLCompilerFSCache::~MTLCompilerFSCache(MTLCompilerFSCache *this)
{
  *this = &unk_1EF4741B0;
  MTLCompilerFSCache::close(this);
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }
}

{
  MTLCompilerFSCache::~MTLCompilerFSCache(this);

  JUMPOUT(0x1865FF210);
}

uint64_t MTLCompilerFSCache::copyShaderCache(os_unfair_lock_s *this, NSString *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 2);
  v4 = objc_autoreleasePoolPush();
  if (*&this[12]._os_unfair_lock_opaque)
  {
    fscache_close();
    *&this[12]._os_unfair_lock_opaque = 0;
  }

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v32 = 0;
  if (([v5 fileExistsAtPath:a2 isDirectory:&v32] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      MTLCompilerFSCache::copyShaderCache([(NSString *)a2 UTF8String], __s);
    }

    goto LABEL_17;
  }

  if ((v32 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      MTLCompilerFSCache::copyShaderCache([(NSString *)a2 UTF8String], __s);
    }

    goto LABEL_17;
  }

  v31 = 0;
  v6 = &this[14];
  if ((SHIBYTE(this[19]._os_unfair_lock_opaque) & 0x80000000) == 0)
  {
    v7 = this + 14;
    if (!HIBYTE(this[19]._os_unfair_lock_opaque))
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (*&this[16]._os_unfair_lock_opaque)
  {
    v7 = *v6;
LABEL_14:
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
    v9 = [(NSString *)a2 stringByAppendingString:v8];
    if ([v5 createDirectoryAtPath:v9 withIntermediateDirectories:0 attributes:0 error:&v31])
    {
      goto LABEL_20;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      MTLCompilerFSCache::copyShaderCache([v8 UTF8String], -[NSString UTF8String](a2, "UTF8String"), __s);
    }

LABEL_17:
    v10 = 0;
    v11 = 0;
    goto LABEL_18;
  }

LABEL_19:
  v9 = a2;
LABEL_20:
  v25 = v4;
  if (!this[5]._os_unfair_lock_opaque)
  {
    goto LABEL_27;
  }

  if (SHIBYTE(this[19]._os_unfair_lock_opaque) < 0)
  {
    v6 = *v6;
  }

  if (!getCacheMainFolder(__s, "com.apple.metal", 1) || v6 && (v13 = strlen(__s), strncat(__s, "/", 1024 - v13), v14 = strlen(__s), strncat(__s, v6, 1024 - v14), stat(__s, &v33)) && mkdir(__s, 0x1FFu))
  {
LABEL_27:
    v11 = 0;
    v10 = 1;
  }

  else
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:__s];
    obj = [v5 contentsOfDirectoryAtPath:v15 error:&v31];
    v16 = this + 20;
    if (SHIBYTE(this[25]._os_unfair_lock_opaque) < 0)
    {
      v16 = *&v16->_os_unfair_lock_opaque;
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v16];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v18 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v18)
    {
      v19 = v9;
      v20 = *v28;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v27 + 1) + 8 * i);
          if ([v22 hasPrefix:v17])
          {
            v23 = [v15 stringByAppendingPathComponent:v22];
            v24 = [(NSString *)v19 stringByAppendingPathComponent:v22];
            if ([v5 fileExistsAtPath:v23 isDirectory:&v32])
            {
              if ((v32 & 1) == 0)
              {
                if ([v5 fileExistsAtPath:v24 isDirectory:&v32] && ((v32 & 1) != 0 || (objc_msgSend(v5, "removeItemAtPath:error:", v24, &v31) & 1) == 0))
                {
                  NSLog(&cfstr_FailedToRemove.isa, v24);
LABEL_49:
                  v10 = 0;
                  v11 = 0;
                  goto LABEL_28;
                }

                if (([v5 copyItemAtPath:v23 toPath:v24 error:&v31] & 1) == 0)
                {
                  NSLog(&cfstr_FailedToCopyTo.isa, v23, v24);
                  goto LABEL_49;
                }
              }
            }
          }
        }

        v18 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
        v10 = 1;
        v11 = 1;
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v10 = 1;
      v11 = 1;
    }
  }

LABEL_28:
  v4 = v25;
LABEL_18:
  objc_autoreleasePoolPop(v4);
  os_unfair_lock_unlock(this + 2);
  return v10 & v11;
}

void MTLCompilerFSCache::getElementList(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t MTLCompilerFSCache::getShaderCacheKeys(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 2);
  if (*&this[12]._os_unfair_lock_opaque)
  {
    cache_keys = fscache_get_cache_keys();
  }

  else
  {
    cache_keys = 0;
  }

  os_unfair_lock_unlock(this + 2);
  return cache_keys;
}

uint64_t MTLPipelineDataCache::MTLPipelineDataCache(uint64_t a1, char a2, char *__s, void *a4)
{
  *(a1 + 16) = 0;
  *a1 = &unk_1EF474218;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 24), __s);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1065353216;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = *a4;
  *(a1 + 48) = a2;
  return a1;
}

void MTLPipelineDataCache::writeToDisc(MTLPipelineDataCache *this)
{
  if (*(this + 48) == 1)
  {
    os_unfair_lock_lock(this + 2);
    v20 = 0;
    asprintf(&v20, "%s.tmp", *(this + 7));
    v2 = fopen(v20, "wb");
    if (!v2)
    {
      printf("Failed to open: %s\n", v20);
      exit(1);
    }

    v3 = *(this + 11);
    __ptr[0] = 0x14D50504CLL;
    __ptr[1] = *(this + 19);
    v4 = 48 * v3 + 48;
    __ptr[3] = 40;
    __ptr[4] = v4;
    for (i = *(this + 14); i != *(this + 15); i += 3)
    {
      v6 = *i;
      v4 += v6;
    }

    __ptr[2] = v4;
    v18 = v3;
    if (fwrite(__ptr, 1uLL, 0x28uLL, v2) != 40 || fwrite(&v18, 1uLL, 8uLL, v2) != 8)
    {
      printf("Failed to write to: %s\n", v20);
      exit(1);
    }

    for (j = *(this + 10); j; j = *j)
    {
      if (*(j + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v15, j[2], j[3]);
      }

      else
      {
        v15 = *(j + 2);
      }

      v8 = *(j + 5);
      v17 = j[7];
      v16 = v8;
      if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v15;
      }

      else
      {
        v9 = v15.__r_.__value_.__r.__words[0];
      }

      v14 = v16;
      if (fwrite(v9, 1uLL, 0x20uLL, v2) != 32 || fwrite(&v14 + 8, 1uLL, 8uLL, v2) != 8 || fwrite(&v14, 1uLL, 8uLL, v2) != 8)
      {
        printf("Failed to write to: %s\n", v20);
        exit(1);
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }
    }

    memset(&v15, 0, sizeof(v15));
    std::vector<unsigned long>::reserve(&v15, 0xAAAAAAAAAAAAAAABLL * ((*(this + 15) - *(this + 14)) >> 3));
    v10 = *(this + 14);
    v11 = *(this + 15);
    while (v10 != v11)
    {
      if (*v10 != fwrite(*(v10 + 16), 1uLL, *v10, v2))
      {
        printf("Failed to write to: %s\n", v20);
        exit(1);
      }

      v10 += 24;
    }

    if (fclose(v2))
    {
      printf("Failed to write to: %s\n", v20);
      exit(1);
    }

    rename(v20, *(this + 7), v12);
    if (v13)
    {
      printf("Failed to write to: %s\n", *(this + 7));
    }

    free(v20);
    if (v15.__r_.__value_.__r.__words[0])
    {
      v15.__r_.__value_.__l.__size_ = v15.__r_.__value_.__r.__words[0];
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    os_unfair_lock_unlock(this + 2);
  }
}

void std::vector<unsigned long>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLTagType>>(a1, a2);
    }

    std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
  }
}

void MTLPipelineDataCache::addElement(uint64_t a1, _OWORD *a2, const void *a3, size_t a4)
{
  if (*(a1 + 48) == 1)
  {
    os_unfair_lock_lock((a1 + 8));
    operator new();
  }
}

void MTLPipelineDataCache::getElementList(os_unfair_lock_s *this@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  os_unfair_lock_lock(this + 2);
  for (i = *&this[20]._os_unfair_lock_opaque; i; i = *i)
  {
    if (*(i + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, i[2], i[3]);
    }

    else
    {
      __p = *(i + 2);
    }

    v20 = *(i + 5);
    v21 = i[7];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v6 = a2[1];
    v7 = a2[2];
    if (v6 >= v7)
    {
      v10 = *a2;
      v11 = v6 - *a2;
      v12 = v11 >> 5;
      v13 = (v11 >> 5) + 1;
      if (v13 >> 59)
      {
        std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
      }

      v14 = v7 - v10;
      if (v14 >> 4 > v13)
      {
        v13 = v14 >> 4;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFE0)
      {
        v13 = 0x7FFFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<MTLUINT256_t>>(a2, v13);
      }

      v15 = (32 * v12);
      v16 = *&p_p->__r_.__value_.__r.__words[2];
      *v15 = *&p_p->__r_.__value_.__l.__data_;
      v15[1] = v16;
      v9 = (32 * v12 + 32);
      v17 = &v15[-2 * (v11 >> 5)];
      memcpy(v17, v10, v11);
      v18 = *a2;
      *a2 = v17;
      a2[1] = v9;
      a2[2] = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      v8 = *&p_p->__r_.__value_.__r.__words[2];
      *v6 = *&p_p->__r_.__value_.__l.__data_;
      *(v6 + 1) = v8;
      v9 = v6 + 32;
    }

    a2[1] = v9;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  os_unfair_lock_unlock(this + 2);
}

void sub_185C0B948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  os_unfair_lock_unlock(v15 + 2);
  v17 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<DataBlock>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void initLogMode(uint64_t result, uint64_t a2)
{
  if (initLogMode_pred != -1)
  {
    initLogMode_cold_1();
  }
}

void *__initLogMode_block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = @"METAL_TELEMETRY_LOG_MODE";
  v4[0] = &unk_1EF4CFB58;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  _CFXPreferencesRegisterDefaultValues();
  v1 = getenv([@"METAL_TELEMETRY_LOG_MODE" UTF8String]);
  if (v1)
  {
    result = strtol(v1, 0, 0);
  }

  else
  {
    result = [v0 integerForKey:@"METAL_TELEMETRY_LOG_MODE"];
  }

  logMode = result;
  return result;
}

uint64_t MTLHashKey::MTLHashKey(uint64_t a1, _OWORD *a2, void *a3, int **a4)
{
  *(a1 + 16) = 4;
  *a1 = xmmword_185DB8240;
  *(a1 + 56) = 0;
  v8 = a1 + 56;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<MTLUINT256_t>::reserve((a1 + 56), 0x8E38E38E38E38E39 * (a4[1] - *a4) + ((a3[1] - *a3) >> 5) + 1);
  std::vector<MTLUINT256_t>::push_back[abi:ne200100](v8, a2);
  *a1 |= 1uLL;
  v11 = *a3;
  for (i = a3[1]; v11 != i; v11 += 2)
  {
    std::vector<MTLUINT256_t>::push_back[abi:ne200100](v8, v11);
    *a1 += 1 << *(a1 + 16);
  }

  v13 = *(a1 + 56);
  v12 = *(a1 + 64);
  if ((v12 - v13) > 0x20)
  {
    v14 = v13 + 2;
    v15 = 126 - 2 * __clz((v12 - &v13[2]) >> 5);
    if (v12 == v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    std::__introsort<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,false>(v14, v12, v16, 1, v9);
  }

  v18 = *a4;
  v17 = a4[1];
  while (v18 != v17)
  {
    std::vector<MTLUINT256_t>::push_back[abi:ne200100](v8, (v18 + 4));
    v19 = *v18;
    if (*v18 == 1026)
    {
      v20 = 2;
    }

    else if (v19 == 1027)
    {
      v20 = 4;
    }

    else
    {
      if (v19 != 1032)
      {
        goto LABEL_17;
      }

      v20 = 8;
    }

    *a1 |= v20;
LABEL_17:
    v18 += 36;
  }

  CC_SHA256(*(a1 + 56), (*(a1 + 64) - *(a1 + 56)) & 0xFFFFFFE0, (a1 + 24));
  return a1;
}

void sub_185C0BCA8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void MTLHashKey::getHashTools(unint64_t *a1, void *__dst, void *a3)
{
  memcpy(__dst, a1[7], a1[8] - a1[7]);
  bzero(a3, (a1[8] - a1[7]) >> 3);
  v5 = *a1;
  if ((*a1 & 2) != 0)
  {
    *(a3 + (v5 >> *(a1 + 16)) + 1) = 1026;
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        return;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + (v5 >> *(a1 + 16)) + 2) = 1027;
  if ((v5 & 8) == 0)
  {
    return;
  }

LABEL_4:
  *(a3 + (v5 >> *(a1 + 16)) + 3) = 1032;
}

BOOL MTLHashKey::areBitcodesEqual(uint64_t a1, uint64_t *a2, __n128 **a3, __n128 a4)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = (v7 - *a3) >> 5;
  if (v8 != *a1 >> *(a1 + 16))
  {
    return 0;
  }

  v9 = *(a1 + 56);
  v10 = *v9;
  v11 = v9[1];
  v12 = *a2;
  v13 = a2[1];
  v15 = v9[2];
  v14 = v9[3];
  v17 = a2[2];
  v16 = a2[3];
  v18 = v10 == v12 && v11 == v13;
  v19 = v18 && v15 == v17;
  if (!v19 || v14 != v16)
  {
    return 0;
  }

  if (v7 == v6)
  {
    return 1;
  }

  std::__introsort<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,false>(v6, v7, 126 - 2 * __clz(v8), 1, a4);
  return memcmp((*(a1 + 56) + 32), *a3, a3[1] - *a3) == 0;
}

uint64_t MTLHashKey::getHash(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 && !a3)
  {
    if ((*a1 & (1 << a2)) != 0)
    {
      return *(a1 + 56) + 32 * (*a1 >> *(a1 + 16)) + 32 * a2;
    }

    return 0;
  }

  if (!(a3 | a2))
  {
    return *(a1 + 56);
  }

  if (*a1 >> *(a1 + 16) < a3)
  {
    return 0;
  }

  return *(a1 + 56) + 32 * a3;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 result)
{
  v5 = bswap64(a2->n128_u64[0]);
  v6 = bswap64(a1->n128_u64[0]);
  if (v5 == v6 && (v5 = bswap64(a2->n128_u64[1]), v6 = bswap64(a1->n128_u64[1]), v5 == v6) && (v5 = bswap64(a2[1].n128_u64[0]), v6 = bswap64(a1[1].n128_u64[0]), v5 == v6) && (v5 = bswap64(a2[1].n128_u64[1]), v6 = bswap64(a1[1].n128_u64[1]), v5 == v6))
  {
    v7 = 0;
  }

  else if (v5 < v6)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  v8 = bswap64(a3->n128_u64[0]);
  v9 = bswap64(a2->n128_u64[0]);
  if (v8 != v9 || (v8 = bswap64(a3->n128_u64[1]), v9 = bswap64(a2->n128_u64[1]), v8 != v9) || (v8 = bswap64(a3[1].n128_u64[0]), v9 = bswap64(a2[1].n128_u64[0]), v8 != v9) || (v8 = bswap64(a3[1].n128_u64[1]), v9 = bswap64(a2[1].n128_u64[1]), v8 != v9))
  {
    if (v8 < v9)
    {
      v10 = -1;
    }

    else
    {
      v10 = 1;
    }

    if (v7 < 0)
    {
      goto LABEL_14;
    }

LABEL_24:
    if (v10 < 0)
    {
      v16 = *a2;
      result = a2[1];
      v17 = a3[1];
      *a2 = *a3;
      a2[1] = v17;
      *a3 = v16;
      a3[1] = result;
      v18 = bswap64(a2->n128_u64[0]);
      v19 = bswap64(a1->n128_u64[0]);
      if (v18 == v19 && (v18 = bswap64(a2->n128_u64[1]), v19 = bswap64(a1->n128_u64[1]), v18 == v19) && (v18 = bswap64(a2[1].n128_u64[0]), v19 = bswap64(a1[1].n128_u64[0]), v18 == v19) && (v18 = bswap64(a2[1].n128_u64[1]), v19 = bswap64(a1[1].n128_u64[1]), v18 == v19))
      {
        v20 = 0;
      }

      else
      {
        v20 = v18 < v19 ? -1 : 1;
      }

      if (v20 < 0)
      {
        v23 = *a1;
        result = a1[1];
        v24 = a2[1];
        *a1 = *a2;
        a1[1] = v24;
        *a2 = v23;
        a2[1] = result;
      }
    }

    goto LABEL_42;
  }

  v10 = 0;
  if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_14:
  if (v10 < 0)
  {
    v21 = *a1;
    result = a1[1];
    v25 = a3[1];
    *a1 = *a3;
    a1[1] = v25;
    goto LABEL_41;
  }

  v11 = *a1;
  result = a1[1];
  v12 = a2[1];
  *a1 = *a2;
  a1[1] = v12;
  *a2 = v11;
  a2[1] = result;
  v13 = bswap64(a3->n128_u64[0]);
  v14 = bswap64(a2->n128_u64[0]);
  if (v13 == v14 && (v13 = bswap64(a3->n128_u64[1]), v14 = bswap64(a2->n128_u64[1]), v13 == v14) && (v13 = bswap64(a3[1].n128_u64[0]), v14 = bswap64(a2[1].n128_u64[0]), v13 == v14) && (v13 = bswap64(a3[1].n128_u64[1]), v14 = bswap64(a2[1].n128_u64[1]), v13 == v14))
  {
    v15 = 0;
  }

  else if (v13 < v14)
  {
    v15 = -1;
  }

  else
  {
    v15 = 1;
  }

  if (v15 < 0)
  {
    v21 = *a2;
    result = a2[1];
    v22 = a3[1];
    *a2 = *a3;
    a2[1] = v22;
LABEL_41:
    *a3 = v21;
    a3[1] = result;
  }

LABEL_42:
  v26 = bswap64(a4->n128_u64[0]);
  v27 = bswap64(a3->n128_u64[0]);
  if (v26 != v27 || (v26 = bswap64(a4->n128_u64[1]), v27 = bswap64(a3->n128_u64[1]), v26 != v27) || (v26 = bswap64(a4[1].n128_u64[0]), v27 = bswap64(a3[1].n128_u64[0]), v26 != v27) || (v26 = bswap64(a4[1].n128_u64[1]), v27 = bswap64(a3[1].n128_u64[1]), v26 != v27))
  {
    v28 = v26 < v27 ? -1 : 1;
    if (v28 < 0)
    {
      v29 = *a3;
      result = a3[1];
      v30 = a4[1];
      *a3 = *a4;
      a3[1] = v30;
      *a4 = v29;
      a4[1] = result;
      v31 = bswap64(a3->n128_u64[0]);
      v32 = bswap64(a2->n128_u64[0]);
      if (v31 == v32 && (v31 = bswap64(a3->n128_u64[1]), v32 = bswap64(a2->n128_u64[1]), v31 == v32) && (v31 = bswap64(a3[1].n128_u64[0]), v32 = bswap64(a2[1].n128_u64[0]), v31 == v32) && (v31 = bswap64(a3[1].n128_u64[1]), v32 = bswap64(a2[1].n128_u64[1]), v31 == v32))
      {
        v33 = 0;
      }

      else
      {
        v33 = v31 < v32 ? -1 : 1;
      }

      if (v33 < 0)
      {
        v34 = *a2;
        result = a2[1];
        v35 = a3[1];
        *a2 = *a3;
        a2[1] = v35;
        *a3 = v34;
        a3[1] = result;
        v36 = bswap64(a2->n128_u64[0]);
        v37 = bswap64(a1->n128_u64[0]);
        if (v36 == v37 && (v36 = bswap64(a2->n128_u64[1]), v37 = bswap64(a1->n128_u64[1]), v36 == v37) && (v36 = bswap64(a2[1].n128_u64[0]), v37 = bswap64(a1[1].n128_u64[0]), v36 == v37) && (v36 = bswap64(a2[1].n128_u64[1]), v37 = bswap64(a1[1].n128_u64[1]), v36 == v37))
        {
          v38 = 0;
        }

        else if (v36 < v37)
        {
          v38 = -1;
        }

        else
        {
          v38 = 1;
        }

        if (v38 < 0)
        {
          v39 = *a1;
          result = a1[1];
          v40 = a2[1];
          *a1 = *a2;
          a1[1] = v40;
          *a2 = v39;
          a2[1] = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v5 = (a2 - a1) >> 5;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        n128_u64 = a1[2].n128_u64;
        v16 = a2[-2].n128_u64;
        v17 = bswap64(a1[2].n128_u64[0]);
        v18 = bswap64(a1->n128_u64[0]);
        if (v17 == v18 && (v17 = bswap64(a1[2].n128_u64[1]), v18 = bswap64(a1->n128_u64[1]), v17 == v18) && (v17 = bswap64(a1[3].n128_u64[0]), v18 = bswap64(a1[1].n128_u64[0]), v17 == v18) && (v17 = bswap64(a1[3].n128_u64[1]), v18 = bswap64(a1[1].n128_u64[1]), v17 == v18))
        {
          v19 = 0;
        }

        else if (v17 < v18)
        {
          v19 = -1;
        }

        else
        {
          v19 = 1;
        }

        v25 = bswap64(*v16);
        v26 = bswap64(*n128_u64);
        if (v25 == v26 && (v25 = bswap64(a2[-2].n128_u64[1]), v26 = bswap64(a1[2].n128_u64[1]), v25 == v26) && (v25 = bswap64(a2[-1].n128_u64[0]), v26 = bswap64(a1[3].n128_u64[0]), v25 == v26) && (v25 = bswap64(a2[-1].n128_u64[1]), v26 = bswap64(a1[3].n128_u64[1]), v25 == v26))
        {
          v27 = 0;
        }

        else if (v25 < v26)
        {
          v27 = -1;
        }

        else
        {
          v27 = 1;
        }

        if ((v19 & 0x80000000) == 0)
        {
          if (v27 < 0)
          {
            v29 = *n128_u64;
            v28 = a1[3];
            v30 = a2[-1];
            *n128_u64 = *v16;
            a1[3] = v30;
            *v16 = v29;
            a2[-1] = v28;
            v31 = bswap64(a1[2].n128_u64[0]);
            v32 = bswap64(a1->n128_u64[0]);
            if (v31 == v32 && (v31 = bswap64(a1[2].n128_u64[1]), v32 = bswap64(a1->n128_u64[1]), v31 == v32) && (v31 = bswap64(a1[3].n128_u64[0]), v32 = bswap64(a1[1].n128_u64[0]), v31 == v32) && (v31 = bswap64(a1[3].n128_u64[1]), v32 = bswap64(a1[1].n128_u64[1]), v31 == v32))
            {
              v33 = 0;
            }

            else
            {
              v33 = v31 < v32 ? -1 : 1;
            }

            if (v33 < 0)
            {
              v71 = *a1;
              v70 = a1[1];
              v72 = a1[3];
              *a1 = *n128_u64;
              a1[1] = v72;
              *n128_u64 = v71;
              a1[3] = v70;
            }
          }

          return 1;
        }

        if (v27 < 0)
        {
          v74 = *a1;
          v73 = a1[1];
          v82 = a2[-1];
          *a1 = *v16;
          a1[1] = v82;
        }

        else
        {
          v53 = *a1;
          v52 = a1[1];
          v54 = a1[3];
          *a1 = *n128_u64;
          a1[1] = v54;
          *n128_u64 = v53;
          a1[3] = v52;
          v55 = bswap64(*v16);
          v56 = bswap64(a1[2].n128_u64[0]);
          if (v55 == v56 && (v55 = bswap64(a2[-2].n128_u64[1]), v56 = bswap64(a1[2].n128_u64[1]), v55 == v56) && (v55 = bswap64(a2[-1].n128_u64[0]), v56 = bswap64(a1[3].n128_u64[0]), v55 == v56) && (v55 = bswap64(a2[-1].n128_u64[1]), v56 = bswap64(a1[3].n128_u64[1]), v55 == v56))
          {
            v57 = 0;
          }

          else if (v55 < v56)
          {
            v57 = -1;
          }

          else
          {
            v57 = 1;
          }

          if ((v57 & 0x80000000) == 0)
          {
            return 1;
          }

          v74 = *n128_u64;
          v73 = a1[3];
          v75 = a2[-1];
          *n128_u64 = *v16;
          a1[3] = v75;
        }

        *v16 = v74;
        a2[-1] = v73;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,0>(a1, a1 + 2, a1 + 4, a2 - 2, a3);
        break;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,0>(a1, a1 + 2, a1 + 4, a1 + 6, a3);
        v11 = a2[-2].n128_u64[0];
        v10 = a2[-2].n128_u64;
        v12 = bswap64(v11);
        v13 = bswap64(a1[6].n128_u64[0]);
        if (v12 == v13 && (v12 = bswap64(v10[1]), v13 = bswap64(a1[6].n128_u64[1]), v12 == v13) && (v12 = bswap64(v10[2]), v13 = bswap64(a1[7].n128_u64[0]), v12 == v13) && (v12 = bswap64(v10[3]), v13 = bswap64(a1[7].n128_u64[1]), v12 == v13))
        {
          v14 = 0;
        }

        else if (v12 < v13)
        {
          v14 = -1;
        }

        else
        {
          v14 = 1;
        }

        if (v14 < 0)
        {
          v47 = a1[6];
          v46 = a1[7];
          v48 = *(v10 + 1);
          a1[6] = *v10;
          a1[7] = v48;
          *v10 = v47;
          *(v10 + 1) = v46;
          v49 = bswap64(a1[6].n128_u64[0]);
          v50 = bswap64(a1[4].n128_u64[0]);
          if (v49 == v50 && (v49 = bswap64(a1[6].n128_u64[1]), v50 = bswap64(a1[4].n128_u64[1]), v49 == v50) && (v49 = bswap64(a1[7].n128_u64[0]), v50 = bswap64(a1[5].n128_u64[0]), v49 == v50) && (v49 = bswap64(a1[7].n128_u64[1]), v50 = bswap64(a1[5].n128_u64[1]), v49 == v50))
          {
            v51 = 0;
          }

          else
          {
            v51 = v49 < v50 ? -1 : 1;
          }

          if (v51 < 0)
          {
            v65 = a1[4];
            v64 = a1[5];
            v66 = a1[7];
            a1[4] = a1[6];
            a1[5] = v66;
            a1[6] = v65;
            a1[7] = v64;
            v67 = bswap64(a1[4].n128_u64[0]);
            v68 = bswap64(a1[2].n128_u64[0]);
            if (v67 == v68 && (v67 = bswap64(a1[4].n128_u64[1]), v68 = bswap64(a1[2].n128_u64[1]), v67 == v68) && (v67 = bswap64(a1[5].n128_u64[0]), v68 = bswap64(a1[3].n128_u64[0]), v67 == v68) && (v67 = bswap64(a1[5].n128_u64[1]), v68 = bswap64(a1[3].n128_u64[1]), v67 == v68))
            {
              v69 = 0;
            }

            else
            {
              v69 = v67 < v68 ? -1 : 1;
            }

            if (v69 < 0)
            {
              v99 = a1[2];
              v98 = a1[3];
              v100 = a1[5];
              a1[2] = a1[4];
              a1[3] = v100;
              a1[4] = v99;
              a1[5] = v98;
              v101 = bswap64(a1[2].n128_u64[0]);
              v102 = bswap64(a1->n128_u64[0]);
              if (v101 == v102 && (v101 = bswap64(a1[2].n128_u64[1]), v102 = bswap64(a1->n128_u64[1]), v101 == v102) && (v101 = bswap64(a1[3].n128_u64[0]), v102 = bswap64(a1[1].n128_u64[0]), v101 == v102) && (v101 = bswap64(a1[3].n128_u64[1]), v102 = bswap64(a1[1].n128_u64[1]), v101 == v102))
              {
                v103 = 0;
              }

              else
              {
                v103 = v101 < v102 ? -1 : 1;
              }

              if (v103 < 0)
              {
                v105 = *a1;
                v104 = a1[1];
                v106 = a1[3];
                *a1 = a1[2];
                a1[1] = v106;
                a1[2] = v105;
                a1[3] = v104;
              }
            }
          }
        }

        return 1;
      default:
        goto LABEL_22;
    }

    return 1;
  }

  if (v5 < 2)
  {
    return 1;
  }

  if (v5 == 2)
  {
    v6 = a2[-2].n128_u64;
    v7 = bswap64(a2[-2].n128_u64[0]);
    v8 = bswap64(a1->n128_u64[0]);
    if (v7 == v8 && (v7 = bswap64(a2[-2].n128_u64[1]), v8 = bswap64(a1->n128_u64[1]), v7 == v8) && (v7 = bswap64(a2[-1].n128_u64[0]), v8 = bswap64(a1[1].n128_u64[0]), v7 == v8) && (v7 = bswap64(a2[-1].n128_u64[1]), v8 = bswap64(a1[1].n128_u64[1]), v7 == v8))
    {
      v9 = 0;
    }

    else if (v7 < v8)
    {
      v9 = -1;
    }

    else
    {
      v9 = 1;
    }

    if (v9 < 0)
    {
      v44 = *a1;
      v43 = a1[1];
      v45 = a2[-1];
      *a1 = *v6;
      a1[1] = v45;
      *v6 = v44;
      a2[-1] = v43;
    }

    return 1;
  }

LABEL_22:
  v20 = a1[4].n128_u64;
  v21 = a1[2].n128_u64;
  v22 = bswap64(a1[2].n128_u64[0]);
  v23 = bswap64(a1->n128_u64[0]);
  if (v22 == v23 && (v22 = bswap64(a1[2].n128_u64[1]), v23 = bswap64(a1->n128_u64[1]), v22 == v23) && (v22 = bswap64(a1[3].n128_u64[0]), v23 = bswap64(a1[1].n128_u64[0]), v22 == v23) && (v22 = bswap64(a1[3].n128_u64[1]), v23 = bswap64(a1[1].n128_u64[1]), v22 == v23))
  {
    v24 = 0;
  }

  else if (v22 < v23)
  {
    v24 = -1;
  }

  else
  {
    v24 = 1;
  }

  v34 = bswap64(*v20);
  v35 = bswap64(*v21);
  if (v34 == v35 && (v34 = bswap64(a1[4].n128_u64[1]), v35 = bswap64(a1[2].n128_u64[1]), v34 == v35) && (v34 = bswap64(a1[5].n128_u64[0]), v35 = bswap64(a1[3].n128_u64[0]), v34 == v35) && (v34 = bswap64(a1[5].n128_u64[1]), v35 = bswap64(a1[3].n128_u64[1]), v34 == v35))
  {
    v36 = 0;
  }

  else if (v34 < v35)
  {
    v36 = -1;
  }

  else
  {
    v36 = 1;
  }

  if (v24 < 0)
  {
    if (v36 < 0)
    {
      v80 = *a1;
      v79 = a1[1];
      v83 = a1[5];
      *a1 = *v20;
      a1[1] = v83;
    }

    else
    {
      v59 = *a1;
      v58 = a1[1];
      v60 = a1[3];
      *a1 = *v21;
      a1[1] = v60;
      *v21 = v59;
      a1[3] = v58;
      v61 = bswap64(a1[4].n128_u64[0]);
      v62 = bswap64(a1[2].n128_u64[0]);
      if (v61 == v62 && (v61 = bswap64(a1[4].n128_u64[1]), v62 = bswap64(a1[2].n128_u64[1]), v61 == v62) && (v61 = bswap64(a1[5].n128_u64[0]), v62 = bswap64(a1[3].n128_u64[0]), v61 == v62) && (v61 = bswap64(a1[5].n128_u64[1]), v62 = bswap64(a1[3].n128_u64[1]), v61 == v62))
      {
        v63 = 0;
      }

      else if (v61 < v62)
      {
        v63 = -1;
      }

      else
      {
        v63 = 1;
      }

      if ((v63 & 0x80000000) == 0)
      {
        goto LABEL_123;
      }

      v80 = *v21;
      v79 = a1[3];
      v81 = a1[5];
      *v21 = *v20;
      a1[3] = v81;
    }

    *v20 = v80;
    a1[5] = v79;
    goto LABEL_123;
  }

  if (v36 < 0)
  {
    v38 = *v21;
    v37 = a1[3];
    v39 = a1[5];
    *v21 = *v20;
    a1[3] = v39;
    *v20 = v38;
    a1[5] = v37;
    v40 = bswap64(a1[2].n128_u64[0]);
    v41 = bswap64(a1->n128_u64[0]);
    if (v40 == v41 && (v40 = bswap64(a1[2].n128_u64[1]), v41 = bswap64(a1->n128_u64[1]), v40 == v41) && (v40 = bswap64(a1[3].n128_u64[0]), v41 = bswap64(a1[1].n128_u64[0]), v40 == v41) && (v40 = bswap64(a1[3].n128_u64[1]), v41 = bswap64(a1[1].n128_u64[1]), v40 == v41))
    {
      v42 = 0;
    }

    else
    {
      v42 = v40 < v41 ? -1 : 1;
    }

    if (v42 < 0)
    {
      v77 = *a1;
      v76 = a1[1];
      v78 = a1[3];
      *a1 = *v21;
      a1[1] = v78;
      *v21 = v77;
      a1[3] = v76;
    }
  }

LABEL_123:
  v84 = a1[6].n128_u64;
  if (&a1[6] == a2)
  {
    return 1;
  }

  v85 = 0;
  v86 = 0;
  while (1)
  {
    v87 = bswap64(*v84);
    v88 = bswap64(*v20);
    if (v87 != v88 || (v87 = bswap64(v84[1]), v88 = bswap64(v20[1]), v87 != v88) || (v87 = bswap64(v84[2]), v88 = bswap64(v20[2]), v87 != v88) || (v87 = bswap64(v84[3]), v88 = bswap64(v20[3]), v87 != v88))
    {
      v89 = v87 < v88 ? -1 : 1;
      if (v89 < 0)
      {
        v107 = *v84;
        v108 = *(v84 + 1);
        v90 = v85;
        while (1)
        {
          v91 = (a1 + v90);
          v92 = *(a1 + v90 + 80);
          v91[6] = *(a1 + v90 + 64);
          v91[7] = v92;
          if (v90 == -64)
          {
            break;
          }

          v93 = bswap64(v107);
          v94 = bswap64(v91[2].n128_u64[0]);
          if (v93 == v94 && (v93 = bswap64(*(&v107 + 1)), v94 = bswap64(v91[2].n128_u64[1]), v93 == v94) && (v93 = bswap64(v108.n128_u64[0]), v94 = bswap64(v91[3].n128_u64[0]), v93 == v94) && (v93 = bswap64(v108.n128_u64[1]), v94 = bswap64(v91[3].n128_u64[1]), v93 == v94))
          {
            v95 = 0;
          }

          else if (v93 < v94)
          {
            v95 = -1;
          }

          else
          {
            v95 = 1;
          }

          v90 -= 32;
          if ((v95 & 0x80000000) == 0)
          {
            v96 = (a1 + v90 + 96);
            goto LABEL_146;
          }
        }

        v96 = a1;
LABEL_146:
        *v96 = v107;
        v96[1] = v108;
        if (++v86 == 8)
        {
          return v84 + 4 == a2;
        }
      }
    }

    v20 = v84;
    v85 += 32;
    v84 += 4;
    if (v84 == a2)
    {
      return 1;
    }
  }
}

MTL4MetalScriptBuilder *std::unique_ptr<MTL4MetalScriptBuilder>::reset[abi:ne200100](MTL4MetalScriptBuilder **a1, MTL4MetalScriptBuilder *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MTL4MetalScriptBuilder::~MTL4MetalScriptBuilder(result);

    JUMPOUT(0x1865FF210);
  }

  return result;
}

uint64_t MTL4MetalScriptBuilderImpl::makeValue(MTL4MetalScriptBuilderImpl *this, MTLDataType a2, uint64_t *a3)
{
  switch(a2)
  {
    case MTLDataTypeFloat:
    case MTLDataTypeInt:
    case MTLDataTypeUInt:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt>(this + 368, a3);
      break;
    case MTLDataTypeFloat2:
    case MTLDataTypeInt2:
    case MTLDataTypeUInt2:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt2>(this + 368, a3);
      break;
    case MTLDataTypeFloat3:
    case MTLDataTypeInt3:
    case MTLDataTypeUInt3:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt3>(this + 368, a3);
      break;
    case MTLDataTypeFloat4:
    case MTLDataTypeInt4:
    case MTLDataTypeUInt4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt4>(this + 368, a3);
      break;
    case MTLDataTypeHalf:
    case MTLDataTypeShort:
    case MTLDataTypeUShort:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort>(this + 368, a3);
      break;
    case MTLDataTypeHalf2:
    case MTLDataTypeShort2:
    case MTLDataTypeUShort2:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort2>(this + 368, a3);
      break;
    case MTLDataTypeHalf3:
    case MTLDataTypeShort3:
    case MTLDataTypeUShort3:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort3>(this + 368, a3);
      break;
    case MTLDataTypeHalf4:
    case MTLDataTypeShort4:
    case MTLDataTypeUShort4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort4>(this + 368, a3);
      break;
    case MTLDataTypeChar:
    case MTLDataTypeUChar:
    case MTLDataTypeBool:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool>(this + 368, a3);
      break;
    case MTLDataTypeChar2:
    case MTLDataTypeUChar2:
    case MTLDataTypeBool2:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool2>(this + 368, a3);
      break;
    case MTLDataTypeChar3:
    case MTLDataTypeUChar3:
    case MTLDataTypeBool3:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool3>(this + 368, a3);
      break;
    case MTLDataTypeChar4:
    case MTLDataTypeUChar4:
    case MTLDataTypeBool4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool4>(this + 368, a3);
      break;
    case MTLDataTypeLong:
    case MTLDataTypeULong:
    case MTLDataTypeULong4|MTLDataTypeStruct:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong>(this + 368, a3);
      break;
    case MTLDataTypeLong2:
    case MTLDataTypeULong2:
    case MTLDataTypeULong4|MTLDataTypeArray:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong2>(this + 368, a3);
      break;
    case MTLDataTypeLong3:
    case MTLDataTypeULong3:
    case MTLDataTypeULong4|MTLDataTypeFloat:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong3>(this + 368, a3);
      break;
    case MTLDataTypeLong4:
    case MTLDataTypeULong4:
    case MTLDataTypeULong4|MTLDataTypeFloat2:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong4>(this + 368, a3);
      break;
    case MTLDataTypeULong4|MTLDataTypeFloat3:
    case MTLDataTypeR16Snorm|MTLDataTypeInt4:
    case MTLDataTypeRG8Snorm|MTLDataTypeInt4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt8>(this + 368, a3);
      break;
    case MTLDataTypeULong4|MTLDataTypeFloat4:
    case MTLDataTypeRG8Unorm|MTLDataTypeInt4:
    case MTLDataTypeRG16Unorm|MTLDataTypeInt4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt16>(this + 368, a3);
      break;
    case MTLDataTypeULong4|MTLDataTypeFloat2x2:
    case MTLDataTypeRG16Snorm|MTLDataTypeInt4:
    case MTLDataTypeRGBA8Unorm_sRGB|MTLDataTypeInt4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort8>(this + 368, a3);
      break;
    case MTLDataTypeR16Unorm|MTLDataTypeInt4:
    case MTLDataTypeRGBA8Unorm|MTLDataTypeInt4:
    case MTLDataTypeRGBA8Snorm|MTLDataTypeInt4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort16>(this + 368, a3);
      break;
    case MTLDataTypeRGBA16Unorm|MTLDataTypeInt4:
    case MTLDataTypeRGB10A2Unorm|MTLDataTypeInt4:
    case MTLDataTypeInstanceAccelerationStructure|MTLDataTypeStruct:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool8>(this + 368, a3);
      break;
    case MTLDataTypeRGBA16Snorm|MTLDataTypeInt4:
    case MTLDataTypeRG11B10Float|MTLDataTypeInt4:
    case MTLDataTypeULong4|MTLDataTypeInt4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool16>(this + 368, a3);
      break;
    case MTLDataTypeRGB9E5Float|MTLDataTypeInt4:
    case MTLDataTypeComputePipeline|MTLDataTypeInt4:
    case MTLDataTypeLong|MTLDataTypeInt4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong8>(this + 368, a3);
      break;
    case MTLDataTypeRenderPipeline|MTLDataTypeInt4:
    case MTLDataTypeIndirectCommandBuffer|MTLDataTypeInt4:
    case MTLDataTypeLong2|MTLDataTypeInt4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong16>(this + 368, a3);
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool3>(uint64_t a1, __int16 *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 1uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 2)
  {
    flatbuffers::vector_downward::reallocate(a1, 3uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 3;
  v5 = *a2;
  *(v4 - 1) = *(a2 + 2);
  *(v4 - 3) = v5;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool8>(uint64_t a1, void *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 1uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 7)
  {
    flatbuffers::vector_downward::reallocate(a1, 8uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 8;
  *(v4 - 8) = *a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool16>(uint64_t a1, _OWORD *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 1uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 0xF)
  {
    flatbuffers::vector_downward::reallocate(a1, 0x10uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 16;
  *(v4 - 16) = *a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort>(uint64_t a1, _WORD *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 2uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 1)
  {
    flatbuffers::vector_downward::reallocate(a1, 2uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 2) = *a2;
  v5 = v4 - 2;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort2>(uint64_t a1, _DWORD *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 2uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 3)
  {
    flatbuffers::vector_downward::reallocate(a1, 4uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 4;
  *(v4 - 4) = *a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort3>(uint64_t a1, int *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 2uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 5)
  {
    flatbuffers::vector_downward::reallocate(a1, 6uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 6;
  v5 = *a2;
  *(v4 - 2) = *(a2 + 2);
  *(v4 - 6) = v5;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort4>(uint64_t a1, void *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 2uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 7)
  {
    flatbuffers::vector_downward::reallocate(a1, 8uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 8;
  *(v4 - 8) = *a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort8>(uint64_t a1, _OWORD *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 2uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 0xF)
  {
    flatbuffers::vector_downward::reallocate(a1, 0x10uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 16;
  *(v4 - 16) = *a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort16>(uint64_t a1, _OWORD *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 2uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 0x1F)
  {
    flatbuffers::vector_downward::reallocate(a1, 0x20uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 32;
  v5 = a2[1];
  *(v4 - 32) = *a2;
  *(v4 - 16) = v5;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt2>(uint64_t a1, void *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 7)
  {
    flatbuffers::vector_downward::reallocate(a1, 8uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 8;
  *(v4 - 8) = *a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt3>(uint64_t a1, uint64_t *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 0xB)
  {
    flatbuffers::vector_downward::reallocate(a1, 0xCuLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 12;
  v5 = *a2;
  *(v4 - 4) = *(a2 + 2);
  *(v4 - 12) = v5;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt8>(uint64_t a1, _OWORD *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 0x1F)
  {
    flatbuffers::vector_downward::reallocate(a1, 0x20uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 32;
  v5 = a2[1];
  *(v4 - 32) = *a2;
  *(v4 - 16) = v5;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt16>(uint64_t a1, __int128 *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 0x3F)
  {
    flatbuffers::vector_downward::reallocate(a1, 0x40uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 64;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  *(v4 - 32) = a2[2];
  *(v4 - 16) = v7;
  *(v4 - 64) = v5;
  *(v4 - 48) = v6;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong>(uint64_t a1, void *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 8uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 7)
  {
    flatbuffers::vector_downward::reallocate(a1, 8uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 8) = *a2;
  v5 = v4 - 8;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong2>(uint64_t a1, _OWORD *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 8uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 0xF)
  {
    flatbuffers::vector_downward::reallocate(a1, 0x10uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 16;
  *(v4 - 16) = *a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong3>(uint64_t a1, __int128 *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 8uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 0x17)
  {
    flatbuffers::vector_downward::reallocate(a1, 0x18uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 24;
  v5 = *a2;
  *(v4 - 8) = *(a2 + 2);
  *(v4 - 24) = v5;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong4>(uint64_t a1, _OWORD *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 8uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 0x1F)
  {
    flatbuffers::vector_downward::reallocate(a1, 0x20uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 32;
  v5 = a2[1];
  *(v4 - 32) = *a2;
  *(v4 - 16) = v5;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong8>(uint64_t a1, __int128 *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 8uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 0x3F)
  {
    flatbuffers::vector_downward::reallocate(a1, 0x40uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 64;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  *(v4 - 32) = a2[2];
  *(v4 - 16) = v7;
  *(v4 - 64) = v5;
  *(v4 - 48) = v6;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong16>(uint64_t a1, __int128 *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 8uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 0x7F)
  {
    flatbuffers::vector_downward::reallocate(a1, 0x80uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 128;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  *(v4 - 96) = a2[2];
  *(v4 - 80) = v7;
  *(v4 - 128) = v5;
  *(v4 - 112) = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[7];
  *(v4 - 32) = a2[6];
  *(v4 - 16) = v10;
  *(v4 - 64) = v8;
  *(v4 - 48) = v9;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t MTL4MetalScriptBuilderImpl::createFunctionConstantValue(MTL4MetalScriptBuilderImpl *this, MTLNamedConstantValue *a2)
{
  v2 = a2;
  v4 = [(MTLNamedConstantValue *)a2 name];
  v6 = MTLMetalScriptSerializer::addString((this + 368), v4, v5);
  v7 = [(MTLNamedConstantValue *)v2 dataType];
  LODWORD(v2) = MTL4MetalScriptBuilderImpl::makeValue(this, v7, [(MTLNamedConstantValue *)v2 data]);
  *(this + 438) = 1;
  v8 = *(this + 102);
  v9 = *(this + 100) - *(this + 104);
  v10 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this + 368, 2);
  flatbuffers::FlatBufferBuilder::TrackField(this + 368, 4, v10);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v6);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 8, v7, 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 10, v2);

  return flatbuffers::FlatBufferBuilder::EndTable((this + 368), v9 + v8);
}

uint64_t MTL4MetalScriptBuilderImpl::createFunctionConstantValue(MTL4MetalScriptBuilderImpl *this, MTLIndexedConstantValue *a2)
{
  v2 = a2;
  v10 = [(MTLIndexedConstantValue *)a2 index];
  v4 = [(MTLIndexedConstantValue *)v2 dataType];
  LODWORD(v2) = MTL4MetalScriptBuilderImpl::makeValue(this, v4, [(MTLIndexedConstantValue *)v2 data]);
  v5 = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort>(this + 368, &v10);
  *(this + 438) = 1;
  v6 = *(this + 102);
  v7 = *(this + 100) - *(this + 104);
  v8 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this + 368, 1);
  flatbuffers::FlatBufferBuilder::TrackField(this + 368, 4, v8);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v5);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 8, v4, 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 10, v2);
  return flatbuffers::FlatBufferBuilder::EndTable((this + 368), v7 + v6);
}

uint64_t MTL4MetalScriptBuilderImpl::createGraph(MTL4MetalScriptBuilderImpl *this, MTLFunctionStitchingGraph *a2)
{
  v190 = *MEMORY[0x1E69E9840];
  reorderStitchingGraphNodes(&v183, a2);
  v180 = 0;
  v181 = 0;
  v182 = 0;
  v3 = v183;
  v150 = v184;
  if (v183 != v184)
  {
    while (1)
    {
      v4 = *v3;
      if ([*v3 isMemberOfClass:objc_opt_class()])
      {
        break;
      }

      if (![v4 isMemberOfClass:objc_opt_class()])
      {
        if ([v4 isMemberOfClass:objc_opt_class()])
        {
          v44 = [v4 argumentIndex];
          *(this + 438) = 1;
          v45 = *(this + 51);
          v46 = *(this + 52);
          v47 = *(this + 50);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 368, 4, v44, 0);
          v48 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v47 - v46 + v45);
          *(this + 438) = 1;
          LODWORD(v46) = *(this + 100);
          LODWORD(v47) = *(this + 104);
          LODWORD(v45) = *(this + 102);
          flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v48);
          v49 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 368, 1);
          flatbuffers::FlatBufferBuilder::TrackField(this + 368, 4, v49);
          LODWORD(v177) = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v46 - v47 + v45);
          std::vector<unsigned int>::push_back[abi:ne200100](&v180, &v177);
        }

        else if ([v4 isMemberOfClass:objc_opt_class()])
        {
          v152 = v3;
          v50 = [v4 bindIndex];
          *(this + 438) = 1;
          v51 = *(this + 100);
          v52 = *(this + 104);
          v53 = *(this + 102);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 368, 6, v50, 0);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 368, 4, 0, 0);
          v54 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v51 - v52 + v53);
          v55 = [v4 byteOffset];
          *(this + 438) = 1;
          v56 = *(this + 100);
          v57 = *(this + 104);
          v58 = *(this + 102);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 368, 6, v55, 0);
          flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 4, v54);
          v59 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v56 - v57 + v58);
          v60 = [v4 dereference];
          v61 = v59;
          *(this + 438) = 1;
          if (v60)
          {
            v62 = *(this + 51);
            v63 = *(this + 52);
            v64 = *(this + 50);
            flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 4, v61);
            v3 = v152;
            v65 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v64 - v63 + v62);
            *(this + 438) = 1;
            v66 = *(this + 100);
            v67 = *(this + 104);
            v68 = *(this + 102);
            flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v65);
            v69 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 368, 5);
          }

          else
          {
            v66 = *(this + 100);
            v67 = *(this + 104);
            v68 = *(this + 102);
            flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v61);
            v3 = v152;
            v69 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 368, 4);
          }

          flatbuffers::FlatBufferBuilder::TrackField(this + 368, 4, v69);
          LODWORD(v177) = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v66 - v67 + v68);
          std::vector<unsigned int>::push_back[abi:ne200100](&v180, &v177);
        }

        else if ([v4 isMemberOfClass:objc_opt_class()])
        {
          v70 = [v4 bindIndex];
          *(this + 438) = 1;
          v71 = *(this + 100);
          v72 = *(this + 104);
          v73 = *(this + 102);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 368, 6, v70, 0);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 368, 4, 0, 0);
          v74 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v71 - v72 + v73);
          *(this + 438) = 1;
          v75 = *(this + 100);
          v76 = *(this + 104);
          v77 = *(this + 102);
          flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v74);
          v78 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 368, 3);
          flatbuffers::FlatBufferBuilder::TrackField(this + 368, 4, v78);
          LODWORD(v177) = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v75 - v76 + v77);
          std::vector<unsigned int>::push_back[abi:ne200100](&v180, &v177);
        }

        else if ([v4 isMemberOfClass:objc_opt_class()])
        {
          v79 = [v4 bindIndex];
          *(this + 438) = 1;
          v80 = *(this + 51);
          v81 = *(this + 52);
          v82 = *(this + 50);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 368, 4, v79, 0);
          v83 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v82 - v81 + v80);
          *(this + 438) = 1;
          LODWORD(v81) = *(this + 100);
          LODWORD(v82) = *(this + 104);
          LODWORD(v80) = *(this + 102);
          flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v83);
          v84 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 368, 6);
          flatbuffers::FlatBufferBuilder::TrackField(this + 368, 4, v84);
          LODWORD(v177) = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v81 - v82 + v80);
          std::vector<unsigned int>::push_back[abi:ne200100](&v180, &v177);
        }

        else if ([v4 isMemberOfClass:objc_opt_class()])
        {
          v85 = [v4 bindIndex];
          *(this + 438) = 1;
          v86 = *(this + 51);
          v87 = *(this + 52);
          v88 = *(this + 50);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 368, 4, v85, 0);
          v89 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v88 - v87 + v86);
          *(this + 438) = 1;
          LODWORD(v87) = *(this + 100);
          LODWORD(v88) = *(this + 104);
          LODWORD(v86) = *(this + 102);
          flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v89);
          v90 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 368, 7);
          flatbuffers::FlatBufferBuilder::TrackField(this + 368, 4, v90);
          LODWORD(v177) = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v87 - v88 + v86);
          std::vector<unsigned int>::push_back[abi:ne200100](&v180, &v177);
        }

        else if ([v4 isMemberOfClass:objc_opt_class()])
        {
          v91 = [v4 bindIndex];
          *(this + 438) = 1;
          v92 = *(this + 51);
          v93 = *(this + 52);
          v94 = *(this + 50);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 368, 4, v91, 0);
          v95 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v94 - v93 + v92);
          *(this + 438) = 1;
          LODWORD(v93) = *(this + 100);
          LODWORD(v94) = *(this + 104);
          LODWORD(v92) = *(this + 102);
          flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v95);
          v96 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 368, 8);
          flatbuffers::FlatBufferBuilder::TrackField(this + 368, 4, v96);
          LODWORD(v177) = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v93 - v94 + v92);
          std::vector<unsigned int>::push_back[abi:ne200100](&v180, &v177);
        }

        else if ([v4 isMemberOfClass:objc_opt_class()])
        {
          *(this + 438) = 1;
          v97 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), *(this + 200) - *(this + 208) + *(this + 102));
          *(this + 438) = 1;
          v98 = *(this + 100);
          v99 = *(this + 104);
          v100 = *(this + 102);
          flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v97);
          v101 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 368, 9);
          flatbuffers::FlatBufferBuilder::TrackField(this + 368, 4, v101);
          LODWORD(v177) = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v98 - v99 + v100);
          std::vector<unsigned int>::push_back[abi:ne200100](&v180, &v177);
        }

        else if ([v4 isMemberOfClass:objc_opt_class()])
        {
          *(this + 438) = 1;
          v102 = *(this + 100);
          v103 = *(this + 104);
          v104 = *(this + 102);
          v105 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 368, 1);
          flatbuffers::FlatBufferBuilder::TrackField(this + 368, 4, v105);
          v106 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v102 - v103 + v104);
          *(this + 438) = 1;
          v107 = *(this + 100);
          v108 = *(this + 104);
          v109 = *(this + 102);
          flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v106);
          v110 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 368, 10);
          flatbuffers::FlatBufferBuilder::TrackField(this + 368, 4, v110);
          LODWORD(v177) = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v107 - v108 + v109);
          std::vector<unsigned int>::push_back[abi:ne200100](&v180, &v177);
        }

        else if ([v4 isMemberOfClass:objc_opt_class()])
        {
          BuiltinNode = Mtl4::FunctionStitching::CreateBuiltinNode(this + 368, 0);
          LODWORD(v177) = Mtl4::FunctionStitching::CreateNode(this + 368, 10, BuiltinNode);
          std::vector<unsigned int>::push_back[abi:ne200100](&v180, &v177);
        }

        goto LABEL_50;
      }

      v177 = 0;
      v178 = 0;
      v179 = 0;
      __p[0] = [v4 condition];
      v174 = __p;
      LODWORD(v168) = *(std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__emplace_unique_key_args<objc_object  {objcproto24MTLFunctionStitchingNode},std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto24MTLFunctionStitchingNode}&&>,std::piecewise_construct_t const&<>>(v185, __p, &std::piecewise_construct, &v174) + 6);
      v158 = 0u;
      v159 = 0u;
      v160 = 0u;
      v161 = 0u;
      v30 = [v4 controlDependencies];
      v31 = [v30 countByEnumeratingWithState:&v158 objects:v187 count:16];
      if (v31)
      {
        v32 = *v159;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v159 != v32)
            {
              objc_enumerationMutation(v30);
            }

            __p[0] = *(*(&v158 + 1) + 8 * i);
            v174 = __p;
            v169 = *(std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__emplace_unique_key_args<objc_object  {objcproto24MTLFunctionStitchingNode},std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto24MTLFunctionStitchingNode}&&>,std::piecewise_construct_t const&<>>(v185, __p, &std::piecewise_construct, &v174) + 6);
            std::vector<unsigned int>::push_back[abi:ne200100](&v177, &v169);
          }

          v31 = [v30 countByEnumeratingWithState:&v158 objects:v187 count:16];
        }

        while (v31);
      }

      if (v178 == v177)
      {
        v34 = &flatbuffers::data<Mtl4::FunctionStitching::NodeId,std::allocator<Mtl4::FunctionStitching::NodeId>>(std::vector<Mtl4::FunctionStitching::NodeId> const&)::t;
      }

      else
      {
        v34 = v177;
      }

      v35 = flatbuffers::FlatBufferBuilder::CreateVectorOfStructs<Mtl4::FunctionStitching::NodeId>((this + 368), v34, (v178 - v177) >> 2);
      *(this + 438) = 1;
      v36 = *(this + 100);
      v37 = *(this + 104);
      v38 = *(this + 102);
      flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v35);
      flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::FunctionStitching::NodeId>(this + 368, 4, &v168);
      v39 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v36 - v37 + v38);
      *(this + 438) = 1;
      v40 = *(this + 100);
      v41 = *(this + 104);
      v42 = *(this + 102);
      flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v39);
      v43 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 368, 11);
      flatbuffers::FlatBufferBuilder::TrackField(this + 368, 4, v43);
      LODWORD(v174) = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v40 - v41 + v42);
      std::vector<unsigned int>::push_back[abi:ne200100](&v180, &v174);
      v29 = v177;
      if (v177)
      {
        goto LABEL_47;
      }

LABEL_50:
      if (++v3 == v150)
      {
        goto LABEL_71;
      }
    }

    v151 = v3;
    v177 = 0;
    v178 = 0;
    v179 = 0;
    v174 = 0;
    v175 = 0;
    v176 = 0;
    v170 = 0u;
    v171 = 0u;
    v172 = 0u;
    v173 = 0u;
    v5 = [v4 arguments];
    v6 = [v5 countByEnumeratingWithState:&v170 objects:v189 count:16];
    if (v6)
    {
      v7 = *v171;
      do
      {
        for (j = 0; j != v6; ++j)
        {
          if (*v171 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v168 = *(*(&v170 + 1) + 8 * j);
          __p[0] = &v168;
          v169 = *(std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__emplace_unique_key_args<objc_object  {objcproto24MTLFunctionStitchingNode},std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto24MTLFunctionStitchingNode}&&>,std::piecewise_construct_t const&<>>(v185, &v168, &std::piecewise_construct, __p) + 6);
          std::vector<unsigned int>::push_back[abi:ne200100](&v177, &v169);
        }

        v6 = [v5 countByEnumeratingWithState:&v170 objects:v189 count:16];
      }

      while (v6);
    }

    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v9 = [v4 controlDependencies];
    v10 = [v9 countByEnumeratingWithState:&v164 objects:v188 count:16];
    if (v10)
    {
      v11 = *v165;
      do
      {
        for (k = 0; k != v10; ++k)
        {
          if (*v165 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v168 = *(*(&v164 + 1) + 8 * k);
          __p[0] = &v168;
          v169 = *(std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__emplace_unique_key_args<objc_object  {objcproto24MTLFunctionStitchingNode},std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto24MTLFunctionStitchingNode}&&>,std::piecewise_construct_t const&<>>(v185, &v168, &std::piecewise_construct, __p) + 6);
          std::vector<unsigned int>::push_back[abi:ne200100](&v174, &v169);
        }

        v10 = [v9 countByEnumeratingWithState:&v164 objects:v188 count:16];
      }

      while (v10);
    }

    if (v178 == v177)
    {
      v13 = &flatbuffers::data<Mtl4::FunctionStitching::NodeId,std::allocator<Mtl4::FunctionStitching::NodeId>>(std::vector<Mtl4::FunctionStitching::NodeId> const&)::t;
    }

    else
    {
      v13 = v177;
    }

    v14 = flatbuffers::FlatBufferBuilder::CreateVectorOfStructs<Mtl4::FunctionStitching::NodeId>((this + 368), v13, (v178 - v177) >> 2);
    if (v175 == v174)
    {
      v15 = &flatbuffers::data<Mtl4::FunctionStitching::NodeId,std::allocator<Mtl4::FunctionStitching::NodeId>>(std::vector<Mtl4::FunctionStitching::NodeId> const&)::t;
    }

    else
    {
      v15 = v174;
    }

    v16 = flatbuffers::FlatBufferBuilder::CreateVectorOfStructs<Mtl4::FunctionStitching::NodeId>((this + 368), v15, (v175 - v174) >> 2);
    std::string::basic_string[abi:ne200100]<0>(__p, [objc_msgSend(v4 "name")]);
    if ((v163 & 0x80u) == 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    if ((v163 & 0x80u) == 0)
    {
      v18 = v163;
    }

    else
    {
      v18 = __p[1];
    }

    String = flatbuffers::FlatBufferBuilder::CreateString((this + 368), v17, v18);
    if (v163 < 0)
    {
      operator delete(__p[0]);
    }

    v20 = v16;
    *(this + 438) = 1;
    v21 = *(this + 100);
    v22 = *(this + 104);
    v23 = *(this + 102);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 8, v20);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v14);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 4, String);
    v24 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v21 - v22 + v23);
    *(this + 438) = 1;
    v25 = *(this + 100);
    v26 = *(this + 104);
    v27 = *(this + 102);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v24);
    v28 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this + 368, 2);
    flatbuffers::FlatBufferBuilder::TrackField(this + 368, 4, v28);
    LODWORD(__p[0]) = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v25 - v26 + v27);
    std::vector<unsigned int>::push_back[abi:ne200100](&v180, __p);
    if (v174)
    {
      v175 = v174;
      operator delete(v174);
    }

    v29 = v177;
    v3 = v151;
    if (!v177)
    {
      goto LABEL_50;
    }

LABEL_47:
    v178 = v29;
    operator delete(v29);
    goto LABEL_50;
  }

LABEL_71:
  v112 = a2;
  v113 = [(NSString *)[(MTLFunctionStitchingGraph *)a2 functionName] UTF8String];
  v114 = strlen(v113);
  v115 = flatbuffers::FlatBufferBuilder::CreateString((this + 368), v113, v114);
  v177 = 0;
  v178 = 0;
  v179 = 0;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v116 = [(MTLFunctionStitchingGraph *)a2 attributes];
  v117 = [(NSArray *)v116 countByEnumeratingWithState:&v154 objects:v186 count:16];
  if (!v117)
  {
    goto LABEL_83;
  }

  v153 = 0;
  v118 = *v155;
  do
  {
    for (m = 0; m != v117; ++m)
    {
      if (*v155 != v118)
      {
        objc_enumerationMutation(v116);
      }

      v120 = *(*(&v154 + 1) + 8 * m);
      if ([v120 isMemberOfClass:objc_opt_class()])
      {
        *(this + 438) = 1;
        v121 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), *(this + 200) - *(this + 208) + *(this + 204));
        *(this + 438) = 1;
        v122 = *(this + 100);
        v123 = *(this + 104);
        v124 = *(this + 102);
        flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v121);
        v125 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this + 368, 1);
        flatbuffers::FlatBufferBuilder::TrackField(this + 368, 4, v125);
        LODWORD(v174) = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v122 - v123 + v124);
        std::vector<unsigned int>::push_back[abi:ne200100](&v177, &v174);
      }

      else if ([v120 isMemberOfClass:objc_opt_class()])
      {
        *(this + 438) = 1;
        v126 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), *(this + 200) - *(this + 208) + *(this + 204));
        *(this + 438) = 1;
        v127 = *(this + 100);
        v128 = *(this + 104);
        v129 = *(this + 102);
        flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v126);
        v130 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this + 368, 2);
        flatbuffers::FlatBufferBuilder::TrackField(this + 368, 4, v130);
        LODWORD(v174) = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v127 - v128 + v129);
        std::vector<unsigned int>::push_back[abi:ne200100](&v177, &v174);
        v153 = 1;
      }
    }

    v117 = [(NSArray *)v116 countByEnumeratingWithState:&v154 objects:v186 count:16];
  }

  while (v117);
  v112 = a2;
  if ((v153 & 1) == 0)
  {
LABEL_83:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(this + 438) = 1;
      v131 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), *(this + 200) - *(this + 208) + *(this + 102));
      *(this + 438) = 1;
      v132 = *(this + 100);
      v133 = *(this + 104);
      v134 = *(this + 102);
      flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v131);
      v135 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this + 368, 2);
      flatbuffers::FlatBufferBuilder::TrackField(this + 368, 4, v135);
      LODWORD(v174) = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v132 - v133 + v134);
      std::vector<unsigned int>::push_back[abi:ne200100](&v177, &v174);
      v112 = a2;
    }
  }

  if (v178 == v177)
  {
    v136 = &flatbuffers::data<flatbuffers::Offset<Mtl4::FunctionStitching::Attribute>,std::allocator<flatbuffers::Offset<Mtl4::FunctionStitching::Attribute>>>(std::vector<flatbuffers::Offset<Mtl4::FunctionStitching::Attribute>> const&)::t;
  }

  else
  {
    v136 = v177;
  }

  v137 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((this + 368), v136, (v178 - v177) >> 2);
  if (v181 == v180)
  {
    v138 = &flatbuffers::data<flatbuffers::Offset<Mtl4::FunctionStitching::Node>,std::allocator<flatbuffers::Offset<Mtl4::FunctionStitching::Node>>>(std::vector<flatbuffers::Offset<Mtl4::FunctionStitching::Node>> const&)::t;
  }

  else
  {
    v138 = v180;
  }

  v139 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((this + 368), v138, (v181 - v180) >> 2);
  if ([(MTLFunctionStitchingGraph *)v112 outputNode])
  {
    __p[0] = [(MTLFunctionStitchingGraph *)v112 outputNode];
    v174 = __p;
    v140 = *(std::__hash_table<std::__hash_value_type<objc_object  {objcproto24MTLFunctionStitchingNode}*,unsigned int>,std::__unordered_map_hasher<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,true>,std::__unordered_map_equal<objc_object  {objcproto24MTLFunctionStitchingNode},objc_object  {objcproto24MTLFunctionStitchingNode}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto24MTLFunctionStitchingNode}*>>::__emplace_unique_key_args<objc_object  {objcproto24MTLFunctionStitchingNode},std::piecewise_construct_t const&,std::tuple<objc_object  {objcproto24MTLFunctionStitchingNode}&&>,std::piecewise_construct_t const&<>>(v185, __p, &std::piecewise_construct, &v174) + 6);
  }

  else
  {
    v140 = 0;
  }

  LODWORD(v168) = v140;
  v141 = [(MTLFunctionStitchingGraph *)v112 outputNode];
  v142 = v137;
  *(this + 438) = 1;
  v143 = *(this + 100);
  v144 = *(this + 104);
  v145 = *(this + 102);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 10, v142);
  if (v141)
  {
    v146 = &v168;
  }

  else
  {
    v146 = 0;
  }

  flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::FunctionStitching::NodeId>(this + 368, 8, v146);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v139);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 4, v115);
  v147 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v143 - v144 + v145);
  if (v177)
  {
    v178 = v177;
    operator delete(v177);
  }

  if (v180)
  {
    v181 = v180;
    operator delete(v180);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v185);
  if (v183)
  {
    v184 = v183;
    operator delete(v183);
  }

  return v147;
}

void sub_185C0EEB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61, uint64_t a62, char a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::pair<std::vector<objc_object  {objcproto24MTLFunctionStitchingNode}*>,std::unordered_map<objc_object  {objcproto24MTLFunctionStitchingNode},unsigned int,std::hash<objc_object  {objcproto24MTLFunctionStitchingNode}>,std::equal_to<objc_object  {objcproto24MTLFunctionStitchingNode}>,objc_object  {objcproto24MTLFunctionStitchingNode}*<std::pair<objc_object  {objcproto24MTLFunctionStitchingNode} const,unsigned int>>>>::~pair(&a63);
  _Unwind_Resume(a1);
}

uint64_t Mtl4::FunctionStitching::CreateNode(uint64_t a1, int a2, int a3)
{
  *(a1 + 70) = 1;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32) - *(a1 + 48);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, a3);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 4, a2, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v6 + v5);
}

uint64_t Mtl4::FunctionStitching::CreateBuiltinNode(uint64_t a1, int a2)
{
  *(a1 + 70) = 1;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32) - *(a1 + 48);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 4, a2, 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v4 + v3);
}

uint64_t MTL4MetalScriptBuilderImpl::createVertexDescriptor(MTL4MetalScriptBuilderImpl *this, MTLVertexDescriptor *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  for (i = 0; i != 248; i += 8)
  {
    v7 = *(a2[1].super.isa + i + 8);
    if (!v7)
    {
      ++v5;
LABEL_13:
      v10 = v4;
      goto LABEL_14;
    }

    if (v7[1])
    {
      v8 = 0;
    }

    else
    {
      v8 = v7[3] == 1;
    }

    v9 = v8 && v7[2] == 1;
    v10 = ++v5;
    if (v9)
    {
      goto LABEL_13;
    }

LABEL_14:
    v4 = v10;
  }

  v11 = 0;
  v12 = 0;
  for (j = 0; j != 248; j += 8)
  {
    v14 = *(a2[2].super.isa + j + 8);
    if (v14)
    {
      v15 = ++v12;
      if (v14[2] | v14[1] | v14[3])
      {
        goto LABEL_21;
      }
    }

    else
    {
      ++v12;
    }

    v15 = v11;
LABEL_21:
    v11 = v15;
  }

  if (!(v10 | v15))
  {
    return 0;
  }

  if (!v10)
  {
    v38 = 0;
    if (v15)
    {
      goto LABEL_47;
    }

    goto LABEL_70;
  }

  __src = 0;
  v62 = 0;
  v63 = 0;
  std::vector<flatbuffers::Offset<Mtl4::VertexBufferLayoutDescriptor>>::reserve(&__src, v10);
  for (k = 0; k != v10; ++k)
  {
    v18 = *(a2[1].super.isa + k + 1);
    if (v18)
    {
      v19 = *(v18 + 24);
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
    }

    else
    {
      v20 = 0;
      v19 = 1;
      v21 = 1;
    }

    *(this + 438) = 1;
    v22 = *(this + 100);
    v23 = *(this + 104);
    v24 = *(this + 102);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 4, v21, 1);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 368, 6, v19, 1);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 368, 8, v20, 0);
    v25 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v22 - v23 + v24);
    v26 = v62;
    if (v62 >= v63)
    {
      v28 = __src;
      v29 = v62 - __src;
      v30 = (v62 - __src) >> 2;
      v31 = v30 + 1;
      if ((v30 + 1) >> 62)
      {
        std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
      }

      v32 = v63 - __src;
      if ((v63 - __src) >> 1 > v31)
      {
        v31 = v32 >> 1;
      }

      v33 = v32 >= 0x7FFFFFFFFFFFFFFCLL;
      v34 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v33)
      {
        v34 = v31;
      }

      if (v34)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__src, v34);
      }

      *(4 * v30) = v25;
      v27 = (4 * v30 + 4);
      memcpy(0, v28, v29);
      v35 = __src;
      __src = 0;
      v62 = v27;
      v63 = 0;
      if (v35)
      {
        operator delete(v35);
      }
    }

    else
    {
      *v62 = v25;
      v27 = v26 + 4;
    }

    v62 = v27;
  }

  if (v27 == __src)
  {
    v36 = &flatbuffers::data<flatbuffers::Offset<Mtl4::VertexBufferLayoutDescriptor>,std::allocator<flatbuffers::Offset<Mtl4::VertexBufferLayoutDescriptor>>>(std::vector<flatbuffers::Offset<Mtl4::VertexBufferLayoutDescriptor>> const&)::t;
  }

  else
  {
    v36 = __src;
  }

  v37 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((this + 368), v36, (v27 - __src) >> 2);
  if (__src)
  {
    v62 = __src;
    operator delete(__src);
  }

  v38 = v37;
  if (!v15)
  {
LABEL_70:
    v57 = 0;
    goto LABEL_71;
  }

LABEL_47:
  v60 = v38;
  __src = 0;
  v62 = 0;
  v63 = 0;
  std::vector<flatbuffers::Offset<Mtl4::VertexBufferLayoutDescriptor>>::reserve(&__src, v15);
  for (m = 0; m != v15; ++m)
  {
    v40 = *(a2[2].super.isa + m + 1);
    if (v40)
    {
      v41 = *(v40 + 16);
      v42 = *(v40 + 24);
      LOBYTE(v40) = *(v40 + 8);
    }

    else
    {
      v41 = 0;
      v42 = 0;
    }

    *(this + 438) = 1;
    v43 = *(this + 100);
    v44 = *(this + 104);
    v45 = *(this + 102);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 4, v40, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 368, 6, v41, 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 368, 8, v42, 0);
    v46 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v43 - v44 + v45);
    v47 = v62;
    if (v62 >= v63)
    {
      v49 = __src;
      v50 = v62 - __src;
      v51 = (v62 - __src) >> 2;
      v52 = v51 + 1;
      if ((v51 + 1) >> 62)
      {
        std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
      }

      v53 = v63 - __src;
      if ((v63 - __src) >> 1 > v52)
      {
        v52 = v53 >> 1;
      }

      v33 = v53 >= 0x7FFFFFFFFFFFFFFCLL;
      v54 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v33)
      {
        v54 = v52;
      }

      if (v54)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__src, v54);
      }

      *(4 * v51) = v46;
      v48 = (4 * v51 + 4);
      memcpy(0, v49, v50);
      v55 = __src;
      __src = 0;
      v62 = v48;
      v63 = 0;
      if (v55)
      {
        operator delete(v55);
      }
    }

    else
    {
      *v62 = v46;
      v48 = v47 + 4;
    }

    v62 = v48;
  }

  if (v48 == __src)
  {
    v56 = &flatbuffers::data<flatbuffers::Offset<Mtl4::VertexAttributeDescriptor>,std::allocator<flatbuffers::Offset<Mtl4::VertexAttributeDescriptor>>>(std::vector<flatbuffers::Offset<Mtl4::VertexAttributeDescriptor>> const&)::t;
  }

  else
  {
    v56 = __src;
  }

  v57 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((this + 368), v56, (v48 - __src) >> 2);
  if (__src)
  {
    v62 = __src;
    operator delete(__src);
  }

  v38 = v60;
LABEL_71:
  *(this + 438) = 1;
  v58 = *(this + 102);
  v59 = *(this + 100) - *(this + 104);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v38);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 4, v57);
  return flatbuffers::FlatBufferBuilder::EndTable((this + 368), v59 + v58);
}

void sub_185C0F668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<flatbuffers::Offset<Mtl4::VertexBufferLayoutDescriptor>>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 2)
  {
    if (!(a2 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1, a2);
    }

    std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
  }
}

void MTL4MetalScriptBuilderImpl::HashToString(uint64_t a1@<X1>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::reserve(a2, 0x40uLL);
  for (i = 0; i != 32; ++i)
  {
    v5 = *(a1 + i);
    std::string::push_back(a2, MTL4MetalScriptBuilderImpl::HashToString(MTLUINT256_t)::hexChars[v5 >> 4]);
    std::string::push_back(a2, MTL4MetalScriptBuilderImpl::HashToString(MTLUINT256_t)::hexChars[v5 & 0xF]);
  }
}

void sub_185C0F7CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void MTL4MetalScriptBuilderImpl::addPipelineWithDescriptor(os_unfair_lock_s *this, MTL4ComputePipelineDescriptor *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this);
  memset(v5, 0, sizeof(v5));
  generatePipelineHashWithDescriptor(v5, &a2->super);
  std::__hash_table<MTLUINT256_t,MTL4DescriptorHashAndEqual,MTL4DescriptorHashAndEqual,std::allocator<MTLUINT256_t>>::__emplace_unique_key_args<MTLUINT256_t,MTLUINT256_t const&>(&this[2]._os_unfair_lock_opaque, v5, v5);
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      MTL4MetalScriptBuilderImpl::addComputePipelineWithDescriptor(this, a2);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        MTL4MetalScriptBuilderImpl::addRenderPipelineWithDescriptor(this, a2);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          MTL4MetalScriptBuilderImpl::addTileRenderPipelineWithDescriptor(this, a2);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            MTL4MetalScriptBuilderImpl::addMeshPipelineWithDescriptor(this, a2);
          }
        }
      }
    }
  }

  os_unfair_lock_unlock(this);
}

void MTL4MetalScriptBuilderImpl::addComputePipelineWithDescriptor(const void **this, MTL4ComputePipelineDescriptor *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  MTL4MetalScriptBuilderImpl::hashAndAddFunctionWithDescriptor(v16, this, [(MTL4ComputePipelineDescriptor *)a2 computeFunctionDescriptor]);
  if (v17 == 1)
  {
    *v15 = v16[0];
    *&v15[16] = v16[1];
    MTL4MetalScriptBuilderImpl::HashToString(v15, &v13);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = &v13;
    }

    else
    {
      v4 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    MTL4MetalScriptBuilderImpl::makeFunctionName(v4, size, &__p);
    v6 = MTLMetalScriptSerializer::addString((this + 46), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    PipelineOptions = MTL4MetalScriptBuilderImpl::createPipelineOptions(this, [(MTL4PipelineDescriptor *)a2 options]);
    StaticLinkingDescriptor = MTL4MetalScriptBuilderImpl::createStaticLinkingDescriptor(this, [(MTL4ComputePipelineDescriptor *)a2 staticLinkingDescriptor]);
    if (a2)
    {
      objc_msgSend_requiredThreadsPerThreadgroup(a2);
    }

    else
    {
      memset(v15, 0, 24);
    }

    v9 = MTL4MetalScriptBuilderImpl::addSize(this, v15);
    *(this + 438) = 1;
    v10 = *(this + 100);
    v11 = *(this + 104);
    v12 = *(this + 102);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 8, [(MTL4ComputePipelineDescriptor *)a2 threadGroupSizeIsMultipleOfThreadExecutionWidth], 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 368, 10, [(MTL4ComputePipelineDescriptor *)a2 maxTotalThreadsPerThreadgroup], 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 16, [(MTL4ComputePipelineDescriptor *)a2 supportBinaryLinking], 0);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 6, v6);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 14, StaticLinkingDescriptor);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 18, [(MTL4ComputePipelineDescriptor *)a2 supportIndirectCommandBuffers], 0);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 22, PipelineOptions);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 12, v9);
    *v15 = flatbuffers::FlatBufferBuilder::EndTable((this + 46), v10 - v11 + v12);
    std::vector<unsigned int>::push_back[abi:ne200100](this + 31, v15);
  }
}

void sub_185C0FBA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void MTL4MetalScriptBuilderImpl::addRenderPipelineWithDescriptor(const void **this, MTL4RenderPipelineDescriptor *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = 0;
  MTL4MetalScriptBuilderImpl::hashAndAddFunctionWithDescriptor(v27, this, [(MTL4RenderPipelineDescriptor *)a2 vertexFunctionDescriptor]);
  MTL4MetalScriptBuilderImpl::hashAndAddFunctionWithDescriptor(v25, this, [(MTL4RenderPipelineDescriptor *)a2 fragmentFunctionDescriptor]);
  if (v28 == 1)
  {
    v23 = v27[0];
    v24 = v27[1];
    MTL4MetalScriptBuilderImpl::HashToString(&v23, &v20);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = &v20;
    }

    else
    {
      v4 = v20.__r_.__value_.__r.__words[0];
    }

    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v20.__r_.__value_.__l.__size_;
    }

    MTL4MetalScriptBuilderImpl::makeFunctionName(v4, size, &__p);
    v6 = MTLMetalScriptSerializer::addString((this + 46), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v26 == 1)
  {
    v23 = v25[0];
    v24 = v25[1];
    MTL4MetalScriptBuilderImpl::HashToString(&v23, &v20);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v20;
    }

    else
    {
      v8 = v20.__r_.__value_.__r.__words[0];
    }

    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = v20.__r_.__value_.__l.__size_;
    }

    MTL4MetalScriptBuilderImpl::makeFunctionName(v8, v9, &__p);
    v10 = MTLMetalScriptSerializer::addString((this + 46), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  StaticLinkingDescriptor = MTL4MetalScriptBuilderImpl::createStaticLinkingDescriptor(this, [(MTL4RenderPipelineDescriptor *)a2 vertexStaticLinkingDescriptor]);
  v13 = MTL4MetalScriptBuilderImpl::createStaticLinkingDescriptor(this, [(MTL4RenderPipelineDescriptor *)a2 fragmentStaticLinkingDescriptor]);
  VertexDescriptor = MTL4MetalScriptBuilderImpl::createVertexDescriptor(this, [(MTL4RenderPipelineDescriptor *)a2 vertexDescriptor]);
  v15 = MTL4MetalScriptBuilderImpl::createColorAttachments(this, [(MTL4RenderPipelineDescriptor *)a2 colorAttachments], &v22);
  PipelineOptions = MTL4MetalScriptBuilderImpl::createPipelineOptions(this, [(MTL4PipelineDescriptor *)a2 options]);
  *(this + 438) = 1;
  v17 = *(this + 104);
  v18 = *(this + 100);
  v19 = *(this + 102);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 4, 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 6, v7);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 8, v11);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 10, StaticLinkingDescriptor);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 12, v13);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 44, [(MTL4RenderPipelineDescriptor *)a2 supportIndirectCommandBuffers], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 42, [(MTL4RenderPipelineDescriptor *)a2 colorAttachmentMappingState], 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 18, VertexDescriptor);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 40, v15);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 368, 30, [(MTL4RenderPipelineDescriptor *)a2 rasterSampleCount], 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 368, 32, [(MTL4RenderPipelineDescriptor *)a2 colorSampleCount], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 26, [(MTL4RenderPipelineDescriptor *)a2 alphaToCoverageState], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 28, [(MTL4RenderPipelineDescriptor *)a2 alphaToOneState], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 24, [(MTL4RenderPipelineDescriptor *)a2 isRasterizationEnabled], 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 368, 22, [(MTL4RenderPipelineDescriptor *)a2 maxVertexAmplificationCount], 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 20, [(MTL4RenderPipelineDescriptor *)a2 inputPrimitiveTopology], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 14, [(MTL4RenderPipelineDescriptor *)a2 supportVertexBinaryLinking], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 16, [(MTL4RenderPipelineDescriptor *)a2 supportFragmentBinaryLinking], 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 66, PipelineOptions);
  LODWORD(v23) = flatbuffers::FlatBufferBuilder::EndTable((this + 46), v18 - v17 + v19);
  std::vector<unsigned int>::push_back[abi:ne200100](this + 34, &v23);
}

void sub_185C10018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void MTL4MetalScriptBuilderImpl::addTileRenderPipelineWithDescriptor(const void **this, MTL4TileRenderPipelineDescriptor *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  MTL4MetalScriptBuilderImpl::hashAndAddFunctionWithDescriptor(v17, this, [(MTL4TileRenderPipelineDescriptor *)a2 tileFunctionDescriptor]);
  if (v18 == 1)
  {
    *v16 = v17[0];
    *&v16[16] = v17[1];
    MTL4MetalScriptBuilderImpl::HashToString(v16, &v14);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = &v14;
    }

    else
    {
      v4 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    MTL4MetalScriptBuilderImpl::makeFunctionName(v4, size, &__p);
    v6 = MTLMetalScriptSerializer::addString((this + 46), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    StaticLinkingDescriptor = MTL4MetalScriptBuilderImpl::createStaticLinkingDescriptor(this, [(MTL4TileRenderPipelineDescriptor *)a2 staticLinkingDescriptor]);
    ColorAttachments = MTL4MetalScriptBuilderImpl::createColorAttachments(this, [(MTL4TileRenderPipelineDescriptor *)a2 colorAttachments]);
    PipelineOptions = MTL4MetalScriptBuilderImpl::createPipelineOptions(this, [(MTL4PipelineDescriptor *)a2 options]);
    if (a2)
    {
      objc_msgSend_requiredThreadsPerThreadgroup(a2);
    }

    else
    {
      memset(v16, 0, 24);
    }

    v10 = MTL4MetalScriptBuilderImpl::addSize(this, v16);
    *(this + 438) = 1;
    v11 = *(this + 100);
    v12 = *(this + 104);
    v13 = *(this + 102);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 4, 0);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 6, v6);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 14, StaticLinkingDescriptor);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 22, ColorAttachments);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 368, 18, [(MTL4TileRenderPipelineDescriptor *)a2 rasterSampleCount], 1);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 8, [(MTL4TileRenderPipelineDescriptor *)a2 threadgroupSizeMatchesTileSize], 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 368, 10, [(MTL4TileRenderPipelineDescriptor *)a2 maxTotalThreadsPerThreadgroup], 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 16, [(MTL4TileRenderPipelineDescriptor *)a2 supportBinaryLinking], 0);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 24, PipelineOptions);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 12, v10);
    *v16 = flatbuffers::FlatBufferBuilder::EndTable((this + 46), v11 - v12 + v13);
    std::vector<unsigned int>::push_back[abi:ne200100](this + 37, v16);
  }
}

void sub_185C102DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void MTL4MetalScriptBuilderImpl::addMeshPipelineWithDescriptor(const void **this, MTL4MeshRenderPipelineDescriptor *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v28 = 0;
  MTL4MetalScriptBuilderImpl::hashAndAddFunctionWithDescriptor(v34, this, [(MTL4MeshRenderPipelineDescriptor *)a2 meshFunctionDescriptor]);
  MTL4MetalScriptBuilderImpl::hashAndAddFunctionWithDescriptor(v32, this, [(MTL4MeshRenderPipelineDescriptor *)a2 objectFunctionDescriptor]);
  MTL4MetalScriptBuilderImpl::hashAndAddFunctionWithDescriptor(v30, this, [(MTL4MeshRenderPipelineDescriptor *)a2 fragmentFunctionDescriptor]);
  if (v35 == 1)
  {
    *v29 = v34[0];
    *&v29[16] = v34[1];
    MTL4MetalScriptBuilderImpl::HashToString(v29, &v26);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = &v26;
    }

    else
    {
      v4 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v26.__r_.__value_.__l.__size_;
    }

    MTL4MetalScriptBuilderImpl::makeFunctionName(v4, size, &__p);
    v6 = MTLMetalScriptSerializer::addString((this + 46), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v33 == 1)
  {
    *v29 = v32[0];
    *&v29[16] = v32[1];
    MTL4MetalScriptBuilderImpl::HashToString(v29, &v26);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v26;
    }

    else
    {
      v8 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = v26.__r_.__value_.__l.__size_;
    }

    MTL4MetalScriptBuilderImpl::makeFunctionName(v8, v9, &__p);
    v10 = MTLMetalScriptSerializer::addString((this + 46), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v31 == 1)
  {
    *v29 = v30[0];
    *&v29[16] = v30[1];
    MTL4MetalScriptBuilderImpl::HashToString(v29, &v26);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v26;
    }

    else
    {
      v12 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v13 = v26.__r_.__value_.__l.__size_;
    }

    MTL4MetalScriptBuilderImpl::makeFunctionName(v12, v13, &__p);
    v14 = MTLMetalScriptSerializer::addString((this + 46), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  StaticLinkingDescriptor = MTL4MetalScriptBuilderImpl::createStaticLinkingDescriptor(this, [(MTL4MeshRenderPipelineDescriptor *)a2 meshStaticLinkingDescriptor]);
  v17 = MTL4MetalScriptBuilderImpl::createStaticLinkingDescriptor(this, [(MTL4MeshRenderPipelineDescriptor *)a2 objectStaticLinkingDescriptor]);
  v18 = MTL4MetalScriptBuilderImpl::createStaticLinkingDescriptor(this, [(MTL4MeshRenderPipelineDescriptor *)a2 fragmentStaticLinkingDescriptor]);
  v25 = MTL4MetalScriptBuilderImpl::createColorAttachments(this, [(MTL4MeshRenderPipelineDescriptor *)a2 colorAttachments], &v28);
  PipelineOptions = MTL4MetalScriptBuilderImpl::createPipelineOptions(this, [(MTL4PipelineDescriptor *)a2 options]);
  if ([(MTL4MeshRenderPipelineDescriptor *)a2 objectFunctionDescriptor])
  {
    if (a2)
    {
      objc_msgSend_requiredThreadsPerObjectThreadgroup(a2);
    }

    else
    {
      memset(v29, 0, 24);
    }

    v19 = MTL4MetalScriptBuilderImpl::addSize(this, v29);
    if (a2)
    {
      goto LABEL_47;
    }

LABEL_44:
    memset(v29, 0, 24);
    goto LABEL_48;
  }

  v19 = 0;
  if (!a2)
  {
    goto LABEL_44;
  }

LABEL_47:
  objc_msgSend_requiredThreadsPerMeshThreadgroup(a2);
LABEL_48:
  v20 = MTL4MetalScriptBuilderImpl::addSize(this, v29);
  *(this + 438) = 1;
  v21 = this[50];
  v22 = this[52];
  v23 = this[51];
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 4, 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 8, v7);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 6, v11);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 10, v15);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 30, StaticLinkingDescriptor);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 28, v17);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 32, v18);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 368, 16, [(MTL4MeshRenderPipelineDescriptor *)a2 maxTotalThreadsPerObjectThreadgroup], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 368, 18, [(MTL4MeshRenderPipelineDescriptor *)a2 maxTotalThreadsPerMeshThreadgroup], 0);
  if ([(MTL4MeshRenderPipelineDescriptor *)a2 objectFunctionDescriptor])
  {
    flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 20, v19);
  }

  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 22, v20);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 12, [(MTL4MeshRenderPipelineDescriptor *)a2 objectThreadgroupSizeIsMultipleOfThreadExecutionWidth], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 14, [(MTL4MeshRenderPipelineDescriptor *)a2 meshThreadgroupSizeIsMultipleOfThreadExecutionWidth], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 368, 24, [(MTL4MeshRenderPipelineDescriptor *)a2 payloadMemoryLength], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 368, 26, [(MTL4MeshRenderPipelineDescriptor *)a2 maxTotalThreadgroupsPerMeshGrid], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 368, 48, [(MTL4MeshRenderPipelineDescriptor *)a2 rasterSampleCount], 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 44, [(MTL4MeshRenderPipelineDescriptor *)a2 alphaToCoverageState], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 46, [(MTL4MeshRenderPipelineDescriptor *)a2 alphaToOneState], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 42, [(MTL4MeshRenderPipelineDescriptor *)a2 isRasterizationEnabled], 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 368, 40, [(MTL4MeshRenderPipelineDescriptor *)a2 maxVertexAmplificationCount], 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 60, [(MTL4MeshRenderPipelineDescriptor *)a2 colorAttachmentMappingState], 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 58, v25);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 36, [(MTL4MeshRenderPipelineDescriptor *)a2 supportMeshBinaryLinking], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 34, [(MTL4MeshRenderPipelineDescriptor *)a2 supportObjectBinaryLinking], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 38, [(MTL4MeshRenderPipelineDescriptor *)a2 supportFragmentBinaryLinking], 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 46), 82, PipelineOptions);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 62, [(MTL4MeshRenderPipelineDescriptor *)a2 supportIndirectCommandBuffers], 0);
  *v29 = flatbuffers::FlatBufferBuilder::EndTable((this + 46), v21 - v22 + v23);
  std::vector<unsigned int>::push_back[abi:ne200100](this + 40, v29);
}

void sub_185C10928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void MTL4MetalScriptBuilderImpl::addBinaryFunctionWithDescriptor(MTL4MetalScriptBuilderImpl *this, MTL4BinaryFunctionDescriptor *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this);
  MTL4MetalScriptBuilderImpl::hashAndAddFunctionWithDescriptor(data, this, [(MTL4BinaryFunctionDescriptor *)a2 functionDescriptor]);
  if (v26)
  {
    *md = 0u;
    v24 = 0u;
    CC_SHA256_Init(&c);
    CC_SHA256_Update(&c, data, 0x20u);
    v4 = [(MTL4BinaryFunctionDescriptor *)a2 pipelineOptions];
    v5 = v4;
    if (v4)
    {
      __p[0] = [(MTL4PipelineOptions *)v4 shaderReflection];
      CC_SHA256_Update(&c, __p, 8u);
      __p[0] = [(MTL4PipelineOptions *)v5 shaderValidation];
      CC_SHA256_Update(&c, __p, 8u);
      __p[0] = [(MTL4PipelineOptions *)v5 maxNumRegisters];
      CC_SHA256_Update(&c, __p, 8u);
      LOBYTE(__p[0]) = [(MTL4PipelineOptions *)v5 enablePerformanceStatistics];
      CC_SHA256_Update(&c, __p, 1u);
      LOBYTE(__p[0]) = [(MTL4PipelineOptions *)v5 enablePostMeshDump];
      CC_SHA256_Update(&c, __p, 1u);
      LOBYTE(__p[0]) = [(MTL4PipelineOptions *)v5 enablePostVertexDump];
      CC_SHA256_Update(&c, __p, 1u);
      LOBYTE(__p[0]) = [(MTL4PipelineOptions *)v5 enableResourceUsageInstrumentation];
      CC_SHA256_Update(&c, __p, 1u);
      LOBYTE(__p[0]) = [(MTL4PipelineOptions *)v5 enableAccelerationStructureViewerInstrumentation];
      CC_SHA256_Update(&c, __p, 1u);
      __p[0] = [(MTL4PipelineOptions *)v5 postVertexDumpBufferIndex];
      CC_SHA256_Update(&c, __p, 8u);
      v6 = [(MTL4PipelineOptions *)v5 shaderValidationConfig];
      LOBYTE(__p[0]) = [(MTLShaderValidationConfiguration *)v6 enableStackOverflow];
      CC_SHA256_Update(&c, __p, 1u);
      LOBYTE(__p[0]) = [(MTLShaderValidationConfiguration *)v6 enableTextureChecks];
      CC_SHA256_Update(&c, __p, 1u);
      LOBYTE(__p[0]) = [(MTLShaderValidationConfiguration *)v6 enableBoundsChecking];
      CC_SHA256_Update(&c, __p, 1u);
      LOBYTE(__p[0]) = [(MTLShaderValidationConfiguration *)v6 enableResourceUsageValidation];
      CC_SHA256_Update(&c, __p, 1u);
      LOBYTE(__p[0]) = [(MTLShaderValidationConfiguration *)v6 enableThreadgroupMemoryChecks];
      CC_SHA256_Update(&c, __p, 1u);
    }

    if ([(MTL4BinaryFunctionDescriptor *)a2 name])
    {
      v7 = [(NSString *)[(MTL4BinaryFunctionDescriptor *)a2 name] cStringUsingEncoding:4];
      v8 = strlen([(NSString *)[(MTL4BinaryFunctionDescriptor *)a2 name] cStringUsingEncoding:4]);
      CC_SHA256_Update(&c, v7, v8);
    }

    CC_SHA256_Final(md, &c);
    std::__hash_table<MTLUINT256_t,MTL4DescriptorHashAndEqual,MTL4DescriptorHashAndEqual,std::allocator<MTLUINT256_t>>::__emplace_unique_key_args<MTLUINT256_t,MTLUINT256_t const&>(this + 6, md, md);
    if (v9)
    {
      *__p = data[0];
      v22 = data[1];
      MTL4MetalScriptBuilderImpl::HashToString(__p, &v19);
      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v19;
      }

      else
      {
        v10 = v19.__r_.__value_.__r.__words[0];
      }

      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v19.__r_.__value_.__l.__size_;
      }

      MTL4MetalScriptBuilderImpl::makeFunctionName(v10, size, __p);
      v12 = MTLMetalScriptSerializer::addString((this + 368), __p);
      if (SBYTE7(v22) < 0)
      {
        operator delete(__p[0]);
      }

      if ([(MTL4BinaryFunctionDescriptor *)a2 name])
      {
        v13 = [(MTL4BinaryFunctionDescriptor *)a2 name];
        MTLMetalScriptSerializer::addString((this + 368), v13, v14);
      }

      PipelineOptions = MTL4MetalScriptBuilderImpl::createPipelineOptions(this, [(MTL4BinaryFunctionDescriptor *)a2 pipelineOptions]);
      *(this + 438) = 1;
      v16 = *(this + 100);
      v17 = *(this + 104);
      v18 = *(this + 102);
      flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v12);
      flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 8, PipelineOptions);
      LODWORD(__p[0]) = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v16 - v17 + v18);
      std::vector<unsigned int>::push_back[abi:ne200100](this + 43, __p);
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }
    }
  }

  os_unfair_lock_unlock(this);
}

void sub_185C10D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  os_unfair_lock_unlock(v33);
  _Unwind_Resume(a1);
}

void MTL4MetalScriptBuilderImpl::hashAndAddFunctionWithDescriptor(uint64_t *__return_ptr a1@<X8>, MTL4MetalScriptBuilderImpl *this@<X0>, MTL4FunctionDescriptor *a3@<X1>)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a3 || (MTL4MetalScriptBuilderImpl::addFunctionWithDescriptor(v9, this, a3), v12 != 1))
  {
    *a1 = 0;
    *(a1 + 32) = 0;
    return;
  }

  v5 = v9[0];
  v6 = v9[1];
  v4 = SHIBYTE(v10.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v10;
  }

  v8 = v11;
  if (v11)
  {
  }

  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 32) = 1;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v4 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v10.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v4 < 0)
  {
    goto LABEL_13;
  }
}

void MTL4MetalScriptBuilderImpl::makeFunctionName(const void *a1@<X1>, size_t a2@<X2>, std::string *a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v11, "fnd:");
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 >= 0x17)
  {
    operator new();
  }

  v10 = a2;
  if (a2)
  {
    memmove(__p, a1, a2);
  }

  *(__p + a2) = 0;
  if ((v10 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&v11, v6, v7);
  *a3 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_185C10FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTL4MetalScriptBuilderImpl::createPipelineOptions(MTL4MetalScriptBuilderImpl *this, MTL4PipelineOptions *a2)
{
  if (!a2)
  {
    return 0;
  }

  ShaderValidationConfiguration = MTL4MetalScriptBuilderImpl::createShaderValidationConfiguration(this, [(MTL4PipelineOptions *)a2 shaderValidationConfig]);
  *(this + 438) = 1;
  v5 = *(this + 102);
  v6 = *(this + 100) - *(this + 104);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 368, 6, [(MTL4PipelineOptions *)a2 shaderReflection], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 4, [(MTL4PipelineOptions *)a2 shaderValidation], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this + 368, 20, [(MTL4PipelineOptions *)a2 maxNumRegisters], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 10, [(MTL4PipelineOptions *)a2 enablePerformanceStatistics], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 14, [(MTL4PipelineOptions *)a2 enablePostMeshDump], 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 8, ShaderValidationConfiguration);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 12, [(MTL4PipelineOptions *)a2 enablePostVertexDump], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 18, [(MTL4PipelineOptions *)a2 enableResourceUsageInstrumentation], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 16, [(MTL4PipelineOptions *)a2 enableAccelerationStructureViewerInstrumentation], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this + 368, 22, [(MTL4PipelineOptions *)a2 postVertexDumpBufferIndex], 0);

  return flatbuffers::FlatBufferBuilder::EndTable((this + 368), v6 + v5);
}

uint64_t MTL4MetalScriptBuilderImpl::createShaderValidationConfiguration(MTL4MetalScriptBuilderImpl *this, MTLShaderValidationConfiguration *a2)
{
  if (!a2)
  {
    return 0;
  }

  *(this + 438) = 1;
  v4 = *(this + 102);
  v5 = *(this + 100) - *(this + 104);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 12, [(MTLShaderValidationConfiguration *)a2 enableStackOverflow], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 8, [(MTLShaderValidationConfiguration *)a2 enableTextureChecks], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 4, [(MTLShaderValidationConfiguration *)a2 enableBoundsChecking], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 10, [(MTLShaderValidationConfiguration *)a2 enableResourceUsageValidation], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 6, [(MTLShaderValidationConfiguration *)a2 enableThreadgroupMemoryChecks], 0);

  return flatbuffers::FlatBufferBuilder::EndTable((this + 368), v5 + v4);
}

void MTL4MetalScriptBuilderImpl::addFunctionFromLibrary(uint64_t a1, __int128 *a2, flatbuffers::FlatBufferBuilder *a3, __int128 *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a2[1];
  v19 = *a2;
  v20 = v7;
  MTL4MetalScriptBuilderImpl::HashToString(&v19, &v18);
  if (!std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>((a1 + 128), &v18.__r_.__value_.__l.__data_))
  {
    v8 = MTLMetalScriptSerializer::addString((a1 + 368), &v18);
    v9 = a4[1];
    v19 = *a4;
    v20 = v9;
    MTL4MetalScriptBuilderImpl::HashToString(&v19, &__p);
    v11 = MTLMetalScriptSerializer::addString((a1 + 368), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v12 = MTLMetalScriptSerializer::addString((a1 + 368), a3, v10);
    *(a1 + 438) = 1;
    v13 = *(a1 + 400);
    v14 = *(a1 + 416);
    v15 = *(a1 + 408);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 368), 4, v8);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 368), 6, v12);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 368), 8, v11);
    v16 = flatbuffers::FlatBufferBuilder::EndTable((a1 + 368), v13 - v14 + v15);
    *&v19 = &v18;
    *(std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::LibraryFunctionDescriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::LibraryFunctionDescriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::LibraryFunctionDescriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::LibraryFunctionDescriptor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 128), &v18.__r_.__value_.__l.__data_, &std::piecewise_construct, &v19, &__p) + 10) = v16;
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_185C11434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **MTL4MetalScriptBuilderImpl::addLibrary(uint64_t a1, flatbuffers::FlatBufferBuilder *a2, char *a3)
{
  v6 = MTLMetalScriptSerializer::addString((a1 + 368), a3);
  LODWORD(a2) = MTLMetalScriptSerializer::addString((a1 + 368), a2, v7);
  *(a1 + 438) = 1;
  v8 = *(a1 + 408);
  v9 = *(a1 + 400) - *(a1 + 416);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 368), 4, v6);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 368), 6, a2);
  LODWORD(a2) = flatbuffers::FlatBufferBuilder::EndTable((a1 + 368), v9 + v8);
  v12 = a3;
  result = std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 88), a3, &std::piecewise_construct, &v12, &v11);
  *(result + 10) = a2;
  return result;
}

void MTL4MetalScriptBuilderImpl::addLibraryData(uint64_t a1, flatbuffers::FlatBufferBuilder *a2, _OWORD *a3, int a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = a3[1];
  v11[0] = *a3;
  v11[1] = v7;
  MTL4MetalScriptBuilderImpl::HashToString(v11, &__p);
  if (!a2)
  {
    v8 = "data";
    if (a4)
    {
      v8 = "source";
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    a2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_Path_not_available_for_lib_from_%s_with_UUID_%s", v8, p_p];
  }

  if (!std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>((a1 + 88), &__p.__r_.__value_.__l.__data_))
  {
    MTL4MetalScriptBuilderImpl::addLibrary(a1, a2, &__p);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_185C11644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTL4MetalScriptBuilderImpl::createFunctionConstantValues(MTL4MetalScriptBuilderImpl *this, MTLFunctionConstantValuesInternal *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  __p = 0;
  v25 = 0;
  v26 = 0;
  v4 = [(MTLFunctionConstantValuesInternal *)a2 newNamedConstantArray];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v5)
  {
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v4);
        }

        FunctionConstantValue = MTL4MetalScriptBuilderImpl::createFunctionConstantValue(this, *(*(&v20 + 1) + 8 * i));
        std::vector<unsigned int>::push_back[abi:ne200100](&__p, &FunctionConstantValue);
      }

      v5 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v5);
  }

  v8 = [(MTLFunctionConstantValuesInternal *)a2 newIndexedConstantArray];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v27 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        FunctionConstantValue = MTL4MetalScriptBuilderImpl::createFunctionConstantValue(this, *(*(&v15 + 1) + 8 * j));
        std::vector<unsigned int>::push_back[abi:ne200100](&__p, &FunctionConstantValue);
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v27 count:16];
    }

    while (v9);
  }

  v12 = __p;
  if (__p != v25)
  {
    v13 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((this + 368), __p, (v25 - __p) >> 2);
    v12 = __p;
    if (!__p)
    {
      return v13;
    }

    goto LABEL_21;
  }

  v13 = 0;
  if (__p)
  {
LABEL_21:
    v25 = v12;
    operator delete(v12);
  }

  return v13;
}

void sub_185C11874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTL4MetalScriptBuilderImpl::addSpecializedFunction(uint64_t a1, __int128 *a2, __int128 *a3, flatbuffers::FlatBufferBuilder *a4, MTLFunctionConstantValuesInternal *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a2[1];
  v25 = *a2;
  v26 = v9;
  MTL4MetalScriptBuilderImpl::HashToString(&v25, &v24);
  if (!std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>((a1 + 168), &v24.__r_.__value_.__l.__data_))
  {
    v10 = MTLMetalScriptSerializer::addString((a1 + 368), &v24);
    v11 = a3[1];
    v25 = *a3;
    v26 = v11;
    MTL4MetalScriptBuilderImpl::HashToString(&v25, &v22);
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v22;
    }

    else
    {
      v12 = v22.__r_.__value_.__r.__words[0];
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v22.__r_.__value_.__l.__size_;
    }

    MTL4MetalScriptBuilderImpl::makeFunctionName(v12, size, &__p);
    v15 = MTLMetalScriptSerializer::addString((a1 + 368), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    v16 = MTLMetalScriptSerializer::addString((a1 + 368), a4, v14);
    FunctionConstantValues = MTL4MetalScriptBuilderImpl::createFunctionConstantValues(a1, a5);
    *(a1 + 438) = 1;
    v18 = *(a1 + 400);
    v19 = *(a1 + 416);
    v20 = *(a1 + 408);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 368), 4, v10);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 368), 6, v15);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 368), 12, FunctionConstantValues);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 368), 8, v16);
    v21 = flatbuffers::FlatBufferBuilder::EndTable((a1 + 368), v18 - v19 + v20);
    *&v25 = &v24;
    *(std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::SpecializedFunctionDescriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::SpecializedFunctionDescriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::SpecializedFunctionDescriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::SpecializedFunctionDescriptor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 168), &v24.__r_.__value_.__l.__data_, &std::piecewise_construct, &v25, &__p) + 10) = v21;
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }
}

void sub_185C11A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTL4MetalScriptBuilderImpl::addStitchedFunction(uint64_t a1, _OWORD *a2, void **a3, MTLFunctionStitchingGraph *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a2[1];
  v19[0] = *a2;
  v19[1] = v7;
  MTL4MetalScriptBuilderImpl::HashToString(v19, &__p);
  if (!std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>((a1 + 208), &__p.__r_.__value_.__l.__data_))
  {
    v8 = MTLMetalScriptSerializer::addString((a1 + 368), &__p);
    v9 = a3[1] - *a3;
    if (v9)
    {
      v10 = *a3;
    }

    else
    {
      v10 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
    }

    v11 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((a1 + 368), v10, v9 >> 2);
    Graph = MTL4MetalScriptBuilderImpl::createGraph(a1, a4);
    *(a1 + 438) = 1;
    v13 = *(a1 + 400);
    v14 = *(a1 + 416);
    v15 = *(a1 + 408);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 368), 4, v8);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 368), 6, v11);
    flatbuffers::FlatBufferBuilder::AddOffset<void>((a1 + 368), 8, Graph);
    v16 = flatbuffers::FlatBufferBuilder::EndTable((a1 + 368), v13 - v14 + v15);
    *&v19[0] = &__p;
    *(std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::StitchedFunctionDescriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::StitchedFunctionDescriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::StitchedFunctionDescriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::StitchedFunctionDescriptor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 208), &__p.__r_.__value_.__l.__data_, &std::piecewise_construct, v19, &v18) + 10) = v16;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_185C11C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTL4MetalScriptBuilderImpl::addFunctionWithDescriptor(uint64_t *__return_ptr a1@<X8>, MTL4MetalScriptBuilderImpl *this@<X0>, MTL4FunctionDescriptor *a3@<X1>)
{
  v107 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [-[MTL4FunctionDescriptor library](a3 "library")];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 libraryData];
      v9 = (*(*v8 + 352))(v8);
      v10 = (*(*v8 + 344))(v8);
      v11 = (*(*v8 + 312))(v8);
      MTL4MetalScriptBuilderImpl::addLibraryData(this, v9, v10, v11);
      v12 = [v7 bitCodeHash];
      v13 = v12[1];
      v105 = *v12;
      v106 = v13;
      v14 = [(MTL4FunctionDescriptor *)a3 name];
      v15 = (*(*v8 + 344))(v8);
      MTL4MetalScriptBuilderImpl::addFunctionFromLibrary(this, &v105, v14, v15);
      std::string::basic_string[abi:ne200100]<0>(&c, [-[MTL4FunctionDescriptor name](a3 "name")]);
      v16 = *c.count;
      *&v85 = *c.hash;
      *(&v85 + 7) = *(&c.hash[1] + 3);
      v17 = HIBYTE(c.hash[3]);
      v18 = v106;
      *a1 = v105;
      *(a1 + 1) = v18;
      v19 = v85;
      a1[4] = v16;
      a1[5] = v19;
      *(a1 + 47) = *(&v85 + 7);
      *(a1 + 55) = v17;
      a1[7] = v7;
      *(a1 + 64) = 1;
      return;
    }

    goto LABEL_55;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    MTL4MetalScriptBuilderImpl::addFunctionWithDescriptor(&v100, this, [(MTL4FunctionDescriptor *)a3 functionDescriptor]);
    if ((v104 & 1) == 0)
    {
      *a1 = 0;
      *(a1 + 64) = 0;
      return;
    }

    data = v100;
    v97 = v101;
    if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__s, v102.__r_.__value_.__l.__data_, v102.__r_.__value_.__l.__size_);
    }

    else
    {
      __s = v102;
    }

    v99 = v103;
    v40 = [(MTL4FunctionDescriptor *)a3 constantValues];
    v41 = [(MTL4FunctionDescriptor *)a3 specializedName];
    CC_SHA256_Init(&c);
    CC_SHA256_Update(&c, &data, 0x20u);
    if (v99)
    {
      if ([(MTL4FunctionDescriptor *)a3 specializedName])
      {
        v42 = [(MTL4FunctionDescriptor *)a3 specializedName];
        if (([v42 isEqualToString:{objc_msgSend(v99, "name")}] & 1) != 0 || objc_msgSend(-[MTL4FunctionDescriptor specializedName](a3, "specializedName"), "isEqualToString:", &stru_1EF478240))
        {
          v41 = 0;
        }
      }

      if (![objc_msgSend(v99 "functionConstants")] && !v41)
      {
        v85 = data;
        v86 = v97;
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v87, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
        }

        else
        {
          *v87 = *&__s.__r_.__value_.__l.__data_;
          *&v88 = *(&__s.__r_.__value_.__l + 2);
        }

        v52 = v99;
        v53 = v86;
        *a1 = v85;
        *(a1 + 1) = v53;
        *(a1 + 2) = *v87;
        a1[6] = v88;
        a1[7] = v52;
        *(a1 + 64) = 1;
        goto LABEL_105;
      }

      *&v85 = 0;
      v45 = newConstantScriptForFunction(v40, v99, [v99 name], v41, &v85);

      __src.__r_.__value_.__r.__words[0] = 0;
      size_ptr.__r_.__value_.__r.__words[0] = 0;
      map = dispatch_data_create_map(v45, &__src.__r_.__value_.__l.__data_, &size_ptr);
      serializeConstantScript(__src.__r_.__value_.__l.__data_, size_ptr.__r_.__value_.__l.__data_, &__p);
    }

    else
    {
      *&v85 = 0;
      BYTE8(v85) = 0;
      v86 = xmmword_185DB8250;
      *v87 = 0u;
      v88 = 0u;
      v89 = 0;
      v90 = 1;
      v91 = 256;
      v92 = 0;
      p_s = &__s;
      if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0 || (p_s = __s.__r_.__value_.__r.__words[0]) != 0)
      {
        if (p_s->__r_.__value_.__s.__data_[0])
        {
          v44 = strlen(p_s);
          LODWORD(p_s) = flatbuffers::FlatBufferBuilder::CreateString(&v85, p_s, v44);
        }

        else
        {
          LODWORD(p_s) = 0;
        }
      }

      v49 = [v41 cStringUsingEncoding:4];
      v50 = v49;
      if (v49)
      {
        if (*v49)
        {
          v51 = strlen(v49);
          LODWORD(v50) = flatbuffers::FlatBufferBuilder::CreateString(&v85, v50, v51);
        }

        else
        {
          LODWORD(v50) = 0;
        }
      }

      v54 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(&v85, &flatbuffers::data<flatbuffers::Offset<Air::FunctionConstantValue>,std::allocator<flatbuffers::Offset<Air::FunctionConstantValue>>>(std::vector<flatbuffers::Offset<Air::FunctionConstantValue>> const&)::t, 0);
      BYTE6(v89) = 1;
      v55 = v88;
      v56 = v87[0];
      v57 = v87[1];
      flatbuffers::FlatBufferBuilder::AddOffset<void>(&v85, 4, p_s);
      flatbuffers::FlatBufferBuilder::AddOffset<void>(&v85, 6, v50);
      flatbuffers::FlatBufferBuilder::AddOffset<void>(&v85, 8, v54);
      v58 = flatbuffers::FlatBufferBuilder::EndTable(&v85, v56 - v55 + v57);
      BYTE6(v89) = 1;
      v59 = v88;
      LOWORD(v54) = v87[0];
      v60 = v87[1];
      v61 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(&v85, 2);
      flatbuffers::FlatBufferBuilder::TrackField(&v85, 6, v61);
      flatbuffers::FlatBufferBuilder::AddOffset<void>(&v85, 8, v58);
      v62 = flatbuffers::FlatBufferBuilder::EndTable(&v85, v54 - v59 + v60);
      flatbuffers::FlatBufferBuilder::Finish(&v85, v62, "AIRC", 0);
      v63 = v88;
      v64 = (LODWORD(v87[0]) + LODWORD(v87[1]) - v88);
      __src.__r_.__value_.__r.__words[0] = v85;
      __src.__r_.__value_.__s.__data_[8] = BYTE8(v85);
      __src.__r_.__value_.__r.__words[2] = v87[1];
      v80 = v87[0];
      v81 = v88;
      v82 = v64;
      if (BYTE8(v85) == 1)
      {
        *&v85 = 0;
        BYTE8(v85) = 0;
      }

      *v87 = 0u;
      v88 = 0u;
      serializeConstantScript(v63, v64, &__p);
      flatbuffers::DetachedBuffer::~DetachedBuffer(&__src);
      flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v85);
    }

    CC_SHA256_Update(&c, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__r.__words[1]);
    free(__p.__r_.__value_.__l.__data_);
    if (__p.__r_.__value_.__r.__words[2])
    {
      free(__p.__r_.__value_.__r.__words[2]);
    }

    if (v41)
    {
      CC_SHA256_Update(&c, [-[MTL4FunctionDescriptor specializedName](a3 "specializedName")], objc_msgSend(-[MTL4FunctionDescriptor specializedName](a3, "specializedName"), "cStringLength"));
      std::string::basic_string[abi:ne200100]<0>(&__src, [v41 UTF8String]);
    }

    else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__src, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
    }

    else
    {
      __src = __s;
    }

    if (v99)
    {
    }

    CC_SHA256_Final(v93, &c);
    MTL4MetalScriptBuilderImpl::addSpecializedFunction(this, v93, &data, v41, [(MTL4FunctionDescriptor *)a3 constantValues]);
    v85 = *v93;
    v86 = v94;
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v87, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
    }

    else
    {
      *v87 = *&__src.__r_.__value_.__l.__data_;
      *&v88 = *(&__src.__r_.__value_.__l + 2);
    }

    v65 = v86;
    *a1 = v85;
    *(a1 + 1) = v65;
    *(a1 + 2) = *v87;
    a1[6] = v88;
    a1[7] = 0;
    *(a1 + 64) = 1;
    if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }

LABEL_105:
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if ((v104 & 1) != 0 && SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
    {
      v48 = v102.__r_.__value_.__r.__words[0];
      goto LABEL_110;
    }

    return;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_55:
    *a1 = 0;
    *(a1 + 64) = 0;
    return;
  }

  v20 = [(MTL4FunctionDescriptor *)a3 functionGraph];
  std::string::basic_string[abi:ne200100]<0>(&data, -[NSString UTF8String](-[MTLFunctionStitchingGraph functionName](v20, "functionName"), "UTF8String"));
  v66 = v20;
  v67 = a1;
  memset(&__src, 0, sizeof(__src));
  v93[0] = 0;
  v93[1] = 0;
  *&v94 = 0;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v21 = [(MTL4FunctionDescriptor *)a3 functionDescriptors];
  v22 = [v21 countByEnumeratingWithState:&v75 objects:v84 count:16];
  if (v22)
  {
    v23 = *v76;
    v68 = v21;
    do
    {
      v24 = 0;
      do
      {
        if (*v76 != v23)
        {
          objc_enumerationMutation(v21);
        }

        MTL4MetalScriptBuilderImpl::addFunctionWithDescriptor(&c, this, *(*(&v75 + 1) + 8 * v24));
        if ((c.wbuf[6] & 1) == 0)
        {
          *v67 = 0;
          *(v67 + 64) = 0;
          goto LABEL_75;
        }

        v85 = *c.count;
        v86 = *&c.hash[2];
        v25 = SHIBYTE(c.wbuf[3]);
        if (SHIBYTE(c.wbuf[3]) < 0)
        {
          std::string::__init_copy_ctor_external(v87, *&c.hash[6], *c.wbuf);
        }

        else
        {
          *v87 = *&c.hash[6];
          *&v88 = *&c.wbuf[2];
        }

        *(&v88 + 1) = *&c.wbuf[4];
        v100 = v85;
        v101 = v86;
        MTL4MetalScriptBuilderImpl::HashToString(&v100, &size_ptr);
        if ((size_ptr.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_size_ptr = &size_ptr;
        }

        else
        {
          p_size_ptr = size_ptr.__r_.__value_.__r.__words[0];
        }

        if ((size_ptr.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(size_ptr.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = size_ptr.__r_.__value_.__l.__size_;
        }

        MTL4MetalScriptBuilderImpl::makeFunctionName(p_size_ptr, size, &__p);
        v74 = MTLMetalScriptSerializer::addString((this + 368), &__p);
        std::vector<unsigned int>::push_back[abi:ne200100](v93, &v74);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(size_ptr.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(size_ptr.__r_.__value_.__l.__data_);
        }

        if (*(&v88 + 1))
        {
        }

        v28 = __src.__r_.__value_.__l.__size_;
        if (__src.__r_.__value_.__l.__size_ >= __src.__r_.__value_.__r.__words[2])
        {
          v31 = __src.__r_.__value_.__r.__words[0];
          v32 = __src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0];
          v33 = (__src.__r_.__value_.__l.__size_ - __src.__r_.__value_.__r.__words[0]) >> 5;
          v34 = v33 + 1;
          if ((v33 + 1) >> 59)
          {
            std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
          }

          v35 = __src.__r_.__value_.__r.__words[2] - __src.__r_.__value_.__r.__words[0];
          if ((__src.__r_.__value_.__r.__words[2] - __src.__r_.__value_.__r.__words[0]) >> 4 > v34)
          {
            v34 = v35 >> 4;
          }

          if (v35 >= 0x7FFFFFFFFFFFFFE0)
          {
            v34 = 0x7FFFFFFFFFFFFFFLL;
          }

          if (v34)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<MTLUINT256_t>>(&__src, v34);
          }

          v36 = (32 * v33);
          v37 = v86;
          *v36 = v85;
          v36[1] = v37;
          v30 = 32 * v33 + 32;
          memcpy(0, v31, v32);
          v38 = __src.__r_.__value_.__r.__words[0];
          __src.__r_.__value_.__r.__words[0] = 0;
          *&__src.__r_.__value_.__r.__words[1] = v30;
          if (v38)
          {
            operator delete(v38);
          }

          v21 = v68;
        }

        else
        {
          v29 = v86;
          *__src.__r_.__value_.__l.__size_ = v85;
          *(v28 + 16) = v29;
          v30 = v28 + 32;
        }

        __src.__r_.__value_.__l.__size_ = v30;
        if (SBYTE7(v88) < 0)
        {
          operator delete(v87[0]);
          if ((v25 & 0x80000000) == 0)
          {
            goto LABEL_44;
          }
        }

        else if ((v25 & 0x80000000) == 0)
        {
          goto LABEL_44;
        }

        operator delete(*&c.hash[6]);
LABEL_44:
        ++v24;
      }

      while (v22 != v24);
      v39 = [v21 countByEnumeratingWithState:&v75 objects:v84 count:16];
      v22 = v39;
    }

    while (v39);
  }

  v85 = 0u;
  v86 = 0u;
  v72 = __src;
  memset(&__src, 0, sizeof(__src));
  _MTLGetStitchingLookupHash(&v72, v66, &v85);
  if (v72.__r_.__value_.__r.__words[0])
  {
    v72.__r_.__value_.__l.__size_ = v72.__r_.__value_.__r.__words[0];
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  v69 = v93[0];
  v70 = *v93;
  v71 = v94;
  v93[1] = 0;
  *&v94 = 0;
  v93[0] = 0;
  MTL4MetalScriptBuilderImpl::addStitchedFunction(this, &v85, &v70, v66);
  if (v69)
  {
    operator delete(v69);
  }

  *c.count = v85;
  *&c.hash[2] = v86;
  if (SBYTE7(v97) < 0)
  {
    std::string::__init_copy_ctor_external(&c.hash[6], data, *(&data + 1));
  }

  else
  {
    *&c.hash[6] = data;
    *&c.wbuf[2] = v97;
  }

  v47 = *&c.hash[2];
  *v67 = *c.count;
  *(v67 + 1) = v47;
  *(v67 + 2) = *&c.hash[6];
  v67[6] = *&c.wbuf[2];
  v67[7] = 0;
  *(v67 + 64) = 1;
LABEL_75:
  if (v93[0])
  {
    v93[1] = v93[0];
    operator delete(v93[0]);
  }

  if (__src.__r_.__value_.__r.__words[0])
  {
    __src.__r_.__value_.__l.__size_ = __src.__r_.__value_.__r.__words[0];
    operator delete(__src.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v97) < 0)
  {
    v48 = data;
LABEL_110:
    operator delete(v48);
  }
}

void sub_185C127FC(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  if (*(v1 - 160) == 1 && *(v1 - 169) < 0)
  {
    operator delete(*(v1 - 192));
  }

  _Unwind_Resume(a1);
}

uint64_t MTL4MetalScriptBuilderImpl::createStaticLinkingDescriptor(MTL4MetalScriptBuilderImpl *this, MTL4StaticLinkingDescriptor *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a2 || ![(NSArray *)[(MTL4StaticLinkingDescriptor *)a2 functionDescriptors] count]&& ![(NSArray *)[(MTL4StaticLinkingDescriptor *)a2 privateFunctionDescriptors] count]&& ![(NSDictionary *)[(MTL4StaticLinkingDescriptor *)a2 groups] count])
  {
    return 0;
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = [(MTL4StaticLinkingDescriptor *)a2 functionDescriptors];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v32 objects:v48 count:16];
  if (v5)
  {
    v6 = *v33;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(v4);
        }

        MTL4MetalScriptBuilderImpl::hashAndAddFunctionWithDescriptor(&v45, this, *(*(&v32 + 1) + 8 * i));
        if (v47)
        {
          v43 = v45;
          v44 = v46;
          MTL4MetalScriptBuilderImpl::HashToString(&v43, &v29);
          if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v8 = &v29;
          }

          else
          {
            v8 = v29.__r_.__value_.__r.__words[0];
          }

          if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v29.__r_.__value_.__l.__size_;
          }

          MTL4MetalScriptBuilderImpl::makeFunctionName(v8, size, &__p);
          v31 = MTLMetalScriptSerializer::addString((this + 368), &__p);
          std::vector<unsigned int>::push_back[abi:ne200100](&v39, &v31);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v29.__r_.__value_.__l.__data_);
          }
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v32 objects:v48 count:16];
    }

    while (v5);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [(MTL4StaticLinkingDescriptor *)a2 privateFunctionDescriptors];
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v25 objects:v42 count:16];
  if (v11)
  {
    v12 = *v26;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v10);
        }

        MTL4MetalScriptBuilderImpl::hashAndAddFunctionWithDescriptor(&v45, this, *(*(&v25 + 1) + 8 * j));
        if (v47)
        {
          v43 = v45;
          v44 = v46;
          MTL4MetalScriptBuilderImpl::HashToString(&v43, &v29);
          if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v14 = &v29;
          }

          else
          {
            v14 = v29.__r_.__value_.__r.__words[0];
          }

          if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v15 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v15 = v29.__r_.__value_.__l.__size_;
          }

          MTL4MetalScriptBuilderImpl::makeFunctionName(v14, v15, &__p);
          v31 = MTLMetalScriptSerializer::addString((this + 368), &__p);
          std::vector<unsigned int>::push_back[abi:ne200100](&v36, &v31);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v29.__r_.__value_.__l.__data_);
          }
        }
      }

      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v25 objects:v42 count:16];
    }

    while (v11);
  }

  if (v40 == v39)
  {
    v16 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v16 = v39;
  }

  v17 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((this + 368), v16, (v40 - v39) >> 2);
  if (v37 == v36)
  {
    v18 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v18 = v36;
  }

  v19 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((this + 368), v18, (v37 - v36) >> 2);
  *(this + 438) = 1;
  v20 = *(this + 100);
  v21 = *(this + 104);
  v22 = *(this + 102);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 4, v17);
  flatbuffers::FlatBufferBuilder::AddOffset<void>((this + 368), 6, v19);
  v23 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v20 - v21 + v22);
  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  return v23;
}

void sub_185C12D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, uint64_t a41, void *a42, uint64_t a43)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a42)
  {
    operator delete(a42);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTL4MetalScriptBuilderImpl::createColorAttachments(MTL4MetalScriptBuilderImpl *this, MTLTileRenderPipelineColorAttachmentDescriptorArray *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0xFFFFFFFFLL;
  do
  {
    if ([[(MTLTileRenderPipelineColorAttachmentDescriptorArray *)a2 objectAtIndexedSubscript:v4] pixelFormat])
    {
      v5 = v4;
    }

    ++v4;
  }

  while (v4 != 8);
  if (v5 == 0xFFFFFFFF)
  {
    return 0;
  }

  __src = 0;
  v25 = 0;
  v26 = 0;
  std::vector<flatbuffers::Offset<Mtl4::VertexBufferLayoutDescriptor>>::reserve(&__src, v5);
  v7 = 0;
  v8 = v5 + 1;
  do
  {
    *(this + 438) = 1;
    v9 = *(this + 100);
    v10 = *(this + 104);
    v11 = *(this + 102);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(this + 368, 4, [[(MTLTileRenderPipelineColorAttachmentDescriptorArray *)a2 objectAtIndexedSubscript:v7] pixelFormat], 0);
    v12 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v9 - v10 + v11);
    v13 = v25;
    if (v25 >= v26)
    {
      v15 = __src;
      v16 = v25 - __src;
      v17 = (v25 - __src) >> 2;
      v18 = v17 + 1;
      if ((v17 + 1) >> 62)
      {
        std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
      }

      v19 = v26 - __src;
      if ((v26 - __src) >> 1 > v18)
      {
        v18 = v19 >> 1;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__src, v20);
      }

      *(4 * v17) = v12;
      v14 = (4 * v17 + 4);
      memcpy(0, v15, v16);
      v21 = __src;
      __src = 0;
      v25 = v14;
      v26 = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *v25 = v12;
      v14 = v13 + 4;
    }

    v25 = v14;
    ++v7;
  }

  while (v8 != v7);
  if (v14 == __src)
  {
    v22 = &flatbuffers::data<flatbuffers::Offset<Mtl4::TileRenderPipelineColorAttachmentDescriptor>,std::allocator<flatbuffers::Offset<Mtl4::TileRenderPipelineColorAttachmentDescriptor>>>(std::vector<flatbuffers::Offset<Mtl4::TileRenderPipelineColorAttachmentDescriptor>> const&)::t;
  }

  else
  {
    v22 = __src;
  }

  v6 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((this + 368), v22, (v14 - __src) >> 2);
  if (__src)
  {
    v25 = __src;
    operator delete(__src);
  }

  return v6;
}

void sub_185C12F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTL4MetalScriptBuilderImpl::createColorAttachments(MTL4MetalScriptBuilderImpl *this, MTL4RenderPipelineColorAttachmentDescriptorArray *a2, unsigned int *a3)
{
  if (!a2)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0xFFFFFFFFLL;
  do
  {
    v8 = [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v6), "pixelFormat"}];
    v9 = [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v6), "writeMask"}];
    v10 = [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v6), "alphaBlendOperation"}] | v8;
    v11 = [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v6), "blendingState"}];
    v12 = v10 | v11 | [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v6), "rgbBlendOperation"}];
    v13 = [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v6), "destinationAlphaBlendFactor"}];
    v14 = v12 | v13 | [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v6), "destinationRGBBlendFactor"}];
    v15 = [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v6), "sourceAlphaBlendFactor"}];
    if ([-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v6), "sourceRGBBlendFactor"}] != 1 || v15 != 1 || v14 != 0 || v9 != 15)
    {
      v7 = v6;
    }

    ++v6;
  }

  while (v6 != 8);
  if (v7 == 0xFFFFFFFF)
  {
    return 0;
  }

  __src = 0;
  v44 = 0;
  v45 = 0;
  std::vector<flatbuffers::Offset<Mtl4::VertexBufferLayoutDescriptor>>::reserve(&__src, v7);
  v20 = 0;
  v21 = v7 + 1;
  do
  {
    *(this + 438) = 1;
    v22 = *(this + 100);
    v23 = *(this + 104);
    v24 = *(this + 102);
    v25 = [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v20), "pixelFormat"}];
    flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(this + 368, 4, v25, 0);
    if (v25 <= 301)
    {
      if (v25 == 26 || v25 == 66 || v25 == 116)
      {
        v27 = *a3;
        if ((*a3 & 0x1FFFFFF8) == 0)
        {
          v27 = *a3 & 0x60000000 | 8;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v26 = v25 - 95;
      if ((v25 - 607) <= 0x2B)
      {
        if (((1 << v26) & 0x1FFF7F) != 0)
        {
          v27 = *a3;
          v28 = *a3 & 0x60000000 | 9;
          v29 = (*a3 & 0x1FFFFFFF) >= 9;
          goto LABEL_24;
        }

        if (((1 << v26) & 0x7FFF800000) != 0)
        {
          v27 = *a3;
          v28 = *a3 & 0x60000000 | 0xA;
          v29 = (*a3 & 0x1FFFFFFE) >= 0xA;
          goto LABEL_24;
        }

        if (((1 << v26) & 0xF8000000000) != 0)
        {
          v27 = *a3;
          v28 = *a3 & 0x60000000 | 0xB;
          v29 = (*a3 & 0x1FFFFFFF) >= 0xB;
LABEL_24:
          if (!v29)
          {
            v27 = v28;
          }

LABEL_26:
          v30 = v27 | 0x80000000;
LABEL_27:
          *a3 = v30;
          goto LABEL_28;
        }
      }

      if (v25 == 302)
      {
        v30 = *a3 | 0x60000000;
        goto LABEL_27;
      }
    }

LABEL_28:
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 6, [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v20), "writeMask"}], 15);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 8, [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v20), "blendingState"}], 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 10, [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v20), "alphaBlendOperation"}], 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 12, [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v20), "rgbBlendOperation"}], 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 14, [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v20), "destinationAlphaBlendFactor"}], 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 16, [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v20), "destinationRGBBlendFactor"}], 0);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 18, [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v20), "sourceAlphaBlendFactor"}], 1);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this + 368, 20, [-[MTL4RenderPipelineColorAttachmentDescriptorArray objectAtIndexedSubscript:](a2 objectAtIndexedSubscript:{v20), "sourceRGBBlendFactor"}], 1);
    v31 = flatbuffers::FlatBufferBuilder::EndTable((this + 368), v22 - v23 + v24);
    v32 = v44;
    if (v44 >= v45)
    {
      v34 = __src;
      v35 = v44 - __src;
      v36 = (v44 - __src) >> 2;
      v37 = v36 + 1;
      if ((v36 + 1) >> 62)
      {
        std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
      }

      v38 = v45 - __src;
      if ((v45 - __src) >> 1 > v37)
      {
        v37 = v38 >> 1;
      }

      v29 = v38 >= 0x7FFFFFFFFFFFFFFCLL;
      v39 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v29)
      {
        v39 = v37;
      }

      if (v39)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__src, v39);
      }

      *(4 * v36) = v31;
      v33 = (4 * v36 + 4);
      memcpy(0, v34, v35);
      v40 = __src;
      __src = 0;
      v44 = v33;
      v45 = 0;
      if (v40)
      {
        operator delete(v40);
      }
    }

    else
    {
      *v44 = v31;
      v33 = v32 + 4;
    }

    v44 = v33;
    ++v20;
  }

  while (v21 != v20);
  if (v33 == __src)
  {
    v41 = &flatbuffers::data<flatbuffers::Offset<Mtl4::RenderPipelineColorAttachmentDescriptor>,std::allocator<flatbuffers::Offset<Mtl4::RenderPipelineColorAttachmentDescriptor>>>(std::vector<flatbuffers::Offset<Mtl4::RenderPipelineColorAttachmentDescriptor>> const&)::t;
  }

  else
  {
    v41 = __src;
  }

  v19 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>((this + 368), v41, (v33 - __src) >> 2);
  if (__src)
  {
    v44 = __src;
    operator delete(__src);
  }

  return v19;
}