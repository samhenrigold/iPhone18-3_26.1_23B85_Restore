uint64_t *re::createArgumentEncoderForBindlessArgument@<X0>(uint64_t *__return_ptr a1@<X8>, re *this@<X0>, void **a3@<X1>, const re::mtl::Device *a4@<X2>)
{
  v4 = a4;
  result = re::mtl::Device::supportsArgumentBuffers(a3, a3);
  if (result)
  {
    v14 = a1;
    v19 = 0;
    memset(v17, 0, sizeof(v17));
    v18 = 0;
    v9 = *(this + 9);
    if (v9)
    {
      v10 = 80 * v9;
      v11 = (*(this + 10) + 36);
      v12 = MEMORY[0x1E6973FD8];
      do
      {
        v16 = [objc_msgSend(v12 alloc];
        [v16 setIndex_];
        [v16 setArrayLength_];
        [v16 setAccess_];
        if (v4 && re::mtl::Device::needsArgumentBufferTextureEmulation(a3))
        {
          v13 = *v11;
          if (v13 == 58)
          {
            [v16 setDataType_];
          }

          else
          {
            [v16 setDataType_];
          }
        }

        else
        {
          [v16 setDataType_];
          if (*v11 == 58)
          {
            [v16 setTextureType_];
          }
        }

        re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add(v17, &v16);
        if (v16)
        {
        }

        v11 += 40;
        v10 -= 80;
      }

      while (v10);
    }

    re::DynamicArray<NS::SharedPtr<MTL::ArgumentDescriptor>>::DynamicArray(v15, v17);
    re::mtl::Device::makeArgumentEncoder(a3, v15, &v16);
    *v14 = 1;
    v14[1] = v16;
    re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v15);
    return re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v17);
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

void *re::validateArgumentsCount@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X8>)
{
  {
    v18 = a2;
    v19 = a1;
    v12 = a4;
    v13 = a3;
    a3 = v13;
    a4 = v12;
    v16 = v15;
    a2 = v18;
    a1 = v19;
    if (v16)
    {
      v17 = 31;
      if (a5)
      {
        v17 = 96;
      }

      re::validateArgumentsCount(re::DynamicArray<re::BufferArgument> const&,re::DynamicArray<re::TypedArgument> const&,re::DynamicArray<re::TypedArgument> const&,re::DynamicArray<re::TextureArgument> const&,re::DynamicArray<re::SamplerArgument> const&,BOOL)::textureLimit = v17;
      a2 = v18;
      a1 = v19;
      a3 = v13;
      a4 = v12;
    }
  }

  v7 = *(a1 + 2) + *(a2 + 16);
  v8 = *(a3 + 16);
  v9 = *(a4 + 16);
  v21 = 0uLL;
  v22 = 0;
  result = re::DynamicString::setCapacity(&v20, 0);
  if (v7 >= 0x20)
  {
    result = re::DynamicString::appendf(&v20, "Constant buffer count [%zu] exceeds limit [%zu]. ", v7, 0x1FuLL);
  }

  if (v8 > re::validateArgumentsCount(re::DynamicArray<re::BufferArgument> const&,re::DynamicArray<re::TypedArgument> const&,re::DynamicArray<re::TypedArgument> const&,re::DynamicArray<re::TextureArgument> const&,re::DynamicArray<re::SamplerArgument> const&,BOOL)::textureLimit)
  {
    result = re::DynamicString::appendf(&v20, "Texture count [%zu] exceeds limit [%zu]. ", v8, re::validateArgumentsCount(re::DynamicArray<re::BufferArgument> const&,re::DynamicArray<re::TypedArgument> const&,re::DynamicArray<re::TypedArgument> const&,re::DynamicArray<re::TextureArgument> const&,re::DynamicArray<re::SamplerArgument> const&,BOOL)::textureLimit);
    if (v9 < 0x11)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v9 > 0x10)
  {
LABEL_8:
    result = re::DynamicString::appendf(&v20, "Sampler count [%zu] exceeds limit [%zu]. ", v9, 0x10uLL);
LABEL_9:
    *a6 = 1;
    *(a6 + 8) = v20;
    *(a6 + 32) = v22;
    *(a6 + 16) = v21;
    return result;
  }

  if (v7 >= 0x20)
  {
    goto LABEL_9;
  }

  *a6 = 0;
  result = v20;
  if (v20 && (v21 & 1) != 0)
  {
    v11 = *(*v20 + 40);

    return v11();
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::BufferArgument>::add(_anonymous_namespace_ *result, uint64_t *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*result)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        result = re::DynamicArray<re::BufferArgument>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::BufferArgument>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = (*(v3 + 4) + 24 * v5);
  v12 = *a2;
  *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v11 = *a2 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  v11[1] = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v11[2] = a2[2];
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

void re::makeBufferArgument(uint64_t a1, id *a2)
{
  *a1 = 0;
  *(a1 + 8) = &str_67;
  *(a1 + 16) = 0;
  *(a1 + 16) = [*a2 index];
  *(a1 + 18) = [*a2 bufferAlignment];
  *(a1 + 20) = [*a2 bufferDataSize];
  v4 = [objc_msgSend(*a2 name)];
  v6 = 0;
  v7 = &str_67;
  v5 = re::StringID::operator=(a1, &v6);
  if (v6)
  {
    if (v6)
    {
    }
  }
}

__n128 re::DynamicArray<re::TextureArgument>::add(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<re::RigPose>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::RigPose>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = (*(a1 + 32) + 32 * v5);
  v12 = a2->n128_u64[0];
  v11->n128_u64[0] = v11->n128_u64[0] & 0xFFFFFFFFFFFFFFFELL | a2->n128_u64[0] & 1;
  v11->n128_u64[0] = a2->n128_u64[0] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  v11->n128_u64[1] = a2->n128_u64[1];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = &str_67;
  result = a2[1];
  v11[1] = result;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::SamplerArgument>::add(_anonymous_namespace_ *result, uint64_t *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*result)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        result = re::DynamicArray<re::SamplerArgument>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::SamplerArgument>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = *(v3 + 4) + 24 * v5;
  v12 = *a2;
  *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v11 = *a2 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  *(v11 + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  LOWORD(v12) = *(a2 + 8);
  *(v11 + 18) = *(a2 + 18);
  *(v11 + 16) = v12;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

void *re::DynamicArray<re::ForwardedBufferArgument>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ForwardedBufferArgument>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v14, v16);
          __break(1u);
        }

        else
        {
          v2 = 32 * a2;
          result = (*(*result + 32))(result, 32 * a2, 8);
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

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v15, v17);
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
        v10 = &v8[4 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          v13 = v8[2];
          *(v11 + 12) = *(v8 + 12);
          v11[2] = v13;
          re::StringID::destroyString(v8);
          v8 += 4;
          v11 += 4;
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

void *re::DynamicArray<re::BufferArgument>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::BufferArgument>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x18uLL))
        {
          v2 = 24 * a2;
          result = (*(*result + 32))(result, 24 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v13, v15);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v14, v16);
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
        v10 = (v8 + 24 * v9);
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = *(v8 + 1);
          *v8 = 0;
          *(v8 + 1) = &str_67;
          v11[2] = *(v8 + 2);
          re::StringID::destroyString(v8);
          v8 = (v8 + 24);
          v11 += 3;
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

void *re::DynamicArray<re::SamplerArgument>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SamplerArgument>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x18uLL))
        {
          v2 = 24 * a2;
          result = (*(*result + 32))(result, 24 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v13, v15);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v14, v16);
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
        v10 = &v8[3 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          LOWORD(v12) = *(v8 + 8);
          *(v11 + 18) = *(v8 + 18);
          *(v11 + 8) = v12;
          re::StringID::destroyString(v8);
          v8 += 3;
          v11 += 3;
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

uint64_t re::DynamicArray<NS::SharedPtr<MTL::ArgumentDescriptor>>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<NS::SharedPtr<MTL::ArgumentDescriptor>>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<NS::SharedPtr<MTL::ArgumentDescriptor>>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(a1, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = a1[2];
    v13 = a1[4];
    if (v12)
    {
      v14 = 8 * v12;
      do
      {
        NS::SharedPtr<MTL::Buffer>::operator=(v13++, v11++);
        v14 -= 8;
      }

      while (v14);
      v13 = a1[4];
      v12 = a1[2];
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = &v11[v12];
      v16 = &v13[v12];
      v17 = 8 * v4 - 8 * v12;
      do
      {
        v18 = *v15++;
        *v16++ = v18;
        v17 -= 8;
      }

      while (v17);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 8 * v4;
      do
      {
        NS::SharedPtr<MTL::Buffer>::operator=(v6++, v7++);
        v8 -= 8;
      }

      while (v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v9 = &v6[v4];
      v10 = 8 * v5 - 8 * v4;
      do
      {
        if (*v9)
        {

          *v9 = 0;
        }

        ++v9;
        v10 -= 8;
      }

      while (v10);
    }
  }

  a1[2] = v4;
}

id re::makeView1DTo1DArray@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = [*a1 textureType];
  v5 = *a1;
  if (v4 == 1)
  {
    result = v5;
  }

  else
  {
    result = [*a1 newTextureViewWithPixelFormat:objc_msgSend(*a1 textureType:sel_pixelFormat) levels:1 slices:0, objc_msgSend(v5, sel_mipmapLevelCount), 0, 1];
  }

  *a2 = result;
  return result;
}

id re::makeView2DTo2DArray@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = [*a1 textureType];
  v5 = *a1;
  if (v4 == 3)
  {
    result = v5;
  }

  else
  {
    result = [*a1 newTextureViewWithPixelFormat:objc_msgSend(*a1 textureType:sel_pixelFormat) levels:3 slices:0, objc_msgSend(v5, sel_mipmapLevelCount), 0, 1];
  }

  *a2 = result;
  return result;
}

id re::makeView2DArrayTo2D@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = [*a1 textureType];
  v7 = *a1;
  if (v6 == 2)
  {
    result = v7;
  }

  else
  {
    result = [*a1 newTextureViewWithPixelFormat:objc_msgSend(*a1 textureType:sel_pixelFormat) levels:2 slices:0, objc_msgSend(v7, sel_mipmapLevelCount), a2, 1];
  }

  *a3 = result;
  return result;
}

id re::makeView2DMultisampleTo2DMultisampleArray@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = [*a1 textureType];
  v5 = *a1;
  if (v4 == 8)
  {
    result = v5;
  }

  else
  {
    result = [*a1 newTextureViewWithPixelFormat:objc_msgSend(*a1 textureType:sel_pixelFormat) levels:8 slices:0, objc_msgSend(v5, sel_mipmapLevelCount), 0, 1];
  }

  *a2 = result;
  return result;
}

float32_t re::Centroid::add(float32x4_t *a1, __n128 *a2)
{
  re::Queue<re::Vector3<float>>::enqueue(a1, a2);
  v5 = a1[1].u64[0];
  if (v5 > a1[3].i32[0])
  {
    re::Queue<re::Vector3<float>>::dequeue(a1, v3);
    v5 = a1[1].u64[0];
  }

  if (v5)
  {
    v6 = a1[1].u64[1];
    v7 = 0uLL;
    v8 = v5;
    do
    {
      v4 = *(a1[2].i64[1] + 16 * (v6 % a1->i64[1]));
      v7 = vaddq_f32(v7, v4);
      ++v6;
      --v8;
    }

    while (v8);
  }

  else
  {
    v7 = 0uLL;
  }

  v4.f32[0] = v5;
  a1[4] = vdivq_f32(v7, vdupq_lane_s32(*v4.f32, 0));

  return re::Centroid::updateError(a1);
}

__n128 re::Queue<re::Vector3<float>>::enqueue(_anonymous_namespace_ *this, __n128 *a2)
{
  v5 = *(this + 1);
  v4 = *(this + 2);
  if (v4 + 1 >= v5)
  {
    re::Queue<re::Vector3<float>>::growCapacity(this, v4 + 1);
    v5 = *(this + 1);
    v4 = *(this + 2);
  }

  result = *a2;
  *(*(this + 5) + 16 * ((*(this + 3) + v4) % v5)) = *a2;
  ++*(this + 2);
  ++*(this + 8);
  return result;
}

uint64_t re::Queue<re::Vector3<float>>::dequeue(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(a1 + 24);
    v6 = *(*(a1 + 40) + 16 * v5);
    if ((v5 + 1) < *(a1 + 8))
    {
      v7 = v5 + 1;
    }

    else
    {
      v7 = 0;
    }

    *(a1 + 16) = v4 - 1;
    *(a1 + 24) = v7;
    ++*(a1 + 32);
    return v6;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Queue<T> is empty", "m_size > 0", "dequeue", 569, v2, v3);
    result = _os_crash("assertion failure: (m_size > 0) Queue<T> is empty");
    __break(1u);
  }

  return result;
}

float32_t re::Centroid::updateError(float32x4_t *this)
{
  this[5].i64[0] = 0xFF7FFFFF00000000;
  v1 = this[1].i64[0];
  if (v1)
  {
    v2 = this[1].u64[1];
    v3 = this->u64[1];
    v4 = this[2].i64[1];
    v5 = this[4];
    v6 = 0.0;
    v7 = -3.4028e38;
    do
    {
      v8 = vsubq_f32(v5, *(v4 + 16 * (v2 % v3)));
      v9 = vmulq_f32(v8, v8);
      v10 = sqrtf(v9.f32[2] + vaddv_f32(*v9.f32));
      if (v7 < v10)
      {
        this[5].f32[1] = v10;
        v7 = v10;
      }

      v6 = v6 + (v10 * v10);
      this[5].f32[0] = v6;
      ++v2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v6 = 0.0;
  }

  result = v6 / this[3].i32[0];
  this[5].f32[0] = result;
  return result;
}

_anonymous_namespace_ *re::Queue<re::Vector3<float>>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::Queue<re::Vector3<float>>::setCapacity(this, a2);
    }

    else
    {
      this = re::Queue<re::Vector3<float>>::setCapacity(v4, v3);
      *(v4 + 2) = 0;
      *(v4 + 3) = 0;
      *(v4 + 8) = 0;
    }
  }

  return this;
}

void *re::Queue<re::Vector3<float>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    v6 = result + 2;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::Queue<re::Vector3<float>>::setCapacity(v5, a2);
        *v6 = 0;
        v6[1] = 0;
        *(v6 + 4) = 0;
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in Queue<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 440, 16, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in Queue<T>::setCapacity(). Element size = %zu, capacity = %zu", v11, v13);
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 16);
          if (result)
          {
            v8 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Queue<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 444, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) Queue<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v12, v14);
        __break(1u);
        return result;
      }

      v8 = 0;
      if (!v3)
      {
LABEL_18:
        v5[5] = v8;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      if (v5[2])
      {
        v9 = 0;
        v10 = v5[3];
        do
        {
          *&v8[2 * v10] = *(v5[5] + 16 * ((v9 + v5[3]) % v5[1]));
          if (v10 + 1 < a2)
          {
            ++v10;
          }

          else
          {
            v10 = 0;
          }

          ++v9;
        }

        while (v9 != v5[2]);
      }

      result = (*(**v5 + 40))(*v5, v5[5]);
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t *re::RenderGraphProcessor::updateTextureLifetimes(uint64_t *this, re::RenderGraphCompiled *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (this[49])
  {
    v2 = this;
    v3 = 0;
    while (1)
    {
      v4 = v2[59];
      if (v4 <= v3)
      {
        goto LABEL_23;
      }

      v5 = v2[61] + 40 * v3;
      v6 = *(v5 + 16);
      if (v6)
      {
        break;
      }

LABEL_8:
      v4 = v2[64];
      if (v4 <= v3)
      {
        goto LABEL_27;
      }

      v10 = v2[66] + 40 * v3;
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = *(v10 + 32);
        v13 = 4 * v11;
        while (1)
        {
          v4 = v2[49];
          if (v4 <= v3)
          {
            break;
          }

          v14 = *v12++;
          this = re::RenderGraphCompiled::setLastRead(v2[37], v14, *(v2[51] + 4 * v3));
          v13 -= 4;
          if (!v13)
          {
            goto LABEL_13;
          }
        }

LABEL_19:
        v27 = 0;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
        v17 = MEMORY[0x1E69E9C10];
        v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v28 = 136315906;
        v29 = "operator[]";
        v30 = 1024;
        if (v18)
        {
          v19 = 3;
        }

        else
        {
          v19 = 2;
        }

        v31 = 789;
        v32 = 2048;
        v33 = v3;
        v34 = 2048;
        v35 = v4;
        _os_log_send_and_compose_impl(v19, &v27, &v36, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
        _os_crash_msg();
        __break(1u);
LABEL_23:
        v27 = 0;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
        v20 = MEMORY[0x1E69E9C10];
        v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v28 = 136315906;
        v29 = "operator[]";
        v30 = 1024;
        if (v21)
        {
          v22 = 3;
        }

        else
        {
          v22 = 2;
        }

        v31 = 789;
        v32 = 2048;
        v33 = v3;
        v34 = 2048;
        v35 = v4;
        _os_log_send_and_compose_impl(v22, &v27, &v36, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
        _os_crash_msg();
        __break(1u);
LABEL_27:
        v27 = 0;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
        v23 = MEMORY[0x1E69E9C10];
        v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v28 = 136315906;
        v29 = "operator[]";
        v30 = 1024;
        if (v24)
        {
          v25 = 3;
        }

        else
        {
          v25 = 2;
        }

        v31 = 789;
        v32 = 2048;
        v33 = v3;
        v34 = 2048;
        v35 = v4;
        _os_log_send_and_compose_impl(v25, &v27, &v36, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
        _os_crash_msg();
        __break(1u);
      }

LABEL_13:
      if (++v3 >= v2[49])
      {
        return this;
      }
    }

    v7 = *(v5 + 32);
    v8 = 4 * v6;
    while (1)
    {
      v4 = v2[49];
      if (v4 <= v3)
      {
        break;
      }

      v9 = *v7++;
      this = re::RenderGraphCompiled::setFirstWritten(v2[37], v9, *(v2[51] + 4 * v3));
      v8 -= 4;
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    v27 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v28 = 136315906;
    v29 = "operator[]";
    v30 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v31 = 789;
    v32 = 2048;
    v33 = v3;
    v34 = 2048;
    v35 = v4;
    _os_log_send_and_compose_impl(v16, &v27, &v36, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v26);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  return this;
}

uint64_t re::RenderGraphCompiled::setFirstWritten(uint64_t this, unsigned int a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(this + 16);
  if (v4 <= a2)
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

    v12 = 789;
    v13 = 2048;
    v14 = v3;
    v15 = 2048;
    v16 = v4;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  *(*(this + 32) + 48 * a2 + 32) = a3;
  return this;
}

uint64_t re::RenderGraphCompiled::setLastRead(uint64_t this, unsigned int a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(this + 16);
  if (v4 <= a2)
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

    v12 = 789;
    v13 = 2048;
    v14 = v3;
    v15 = 2048;
    v16 = v4;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  *(*(this + 32) + 48 * a2 + 36) = a3;
  return this;
}

_anonymous_namespace_ *re::RenderGraphProcessorManager::addDefaultProcessors(re::RenderGraphProcessorManager *this)
{
  v43[5] = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(this);
  v3 = (*(*v2[2] + 32))(v2[2], 48, 8);
  v4 = re::globalAllocators(v3)[2];
  v43[0] = &unk_1F5D04BF8;
  v43[3] = v4;
  v43[4] = v43;
  *v3 = &unk_1F5D04C60;
  *(v3 + 4) = v4;
  *(v3 + 5) = 0;
  re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::operator=<24ul>(v3 + 8, v43);
  v38 = v3;
  re::DynamicArray<re::RigDataValue *>::add(this, &v38);
  v5 = re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::destroyCallable(v43);
  if (*(this + 121) == 1)
  {
    v6 = re::globalAllocators(v5);
    v7 = (*(*v6[2] + 32))(v6[2], 176, 8);
    *(v7 + 120) = 0u;
    *(v7 + 136) = 0u;
    *(v7 + 152) = 0u;
    *(v7 + 40) = xmmword_1E871F758;
    *(v7 + 56) = *&off_1E871F768;
    *(v7 + 72) = xmmword_1E871F778;
    *(v7 + 8) = xmmword_1E871F738;
    *v7 = &unk_1F5D05E50;
    *(v7 + 24) = *&off_1E871F748;
    *(v7 + 88) = "QueryVisibility";
    *(v7 + 96) = 0;
    *(v7 + 104) = 0;
    *(v7 + 112) = 0;
    *(v7 + 120) = 0;
    *(v7 + 168) = 0;
    *(v7 + 160) = 0;
    *(v7 + 128) = 0u;
    *(v7 + 144) = 0u;
    v38 = v7;
    v8 = re::DynamicArray<re::RigDataValue *>::add(this, &v38);
    v9 = re::globalAllocators(v8);
    v10 = (*(*v9[2] + 32))(v9[2], 8, 8);
    *v10 = &unk_1F5D04CA0;
    v38 = v10;
    v11 = re::DynamicArray<re::RigDataValue *>::add(this, &v38);
  }

  else
  {
    v12 = re::globalAllocators(v5);
    v13 = (*(*v12[2] + 32))(v12[2], 48, 8);
    v14 = re::globalAllocators(v13)[2];
    v42[0] = &unk_1F5D04CE0;
    v42[3] = v14;
    v42[4] = v42;
    *v13 = &unk_1F5D04C60;
    *(v13 + 4) = v14;
    *(v13 + 5) = 0;
    re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::operator=<24ul>(v13 + 8, v42);
    v38 = v13;
    re::DynamicArray<re::RigDataValue *>::add(this, &v38);
    v11 = re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::destroyCallable(v42);
  }

  if ((atomic_load_explicit(&qword_1EE1B88E0, memory_order_acquire) & 1) == 0)
  {
    v11 = __cxa_guard_acquire(&qword_1EE1B88E0);
    if (v11)
    {
      re::Defaults::BOOLValue(&v38, "disableNoClearOptimization", v36);
      _MergedGlobals_442 = 1;
      if (v38)
      {
        v37 = BYTE1(v38);
      }

      else
      {
        v37 = 1;
      }

      byte_1EE1B88D9 = v37;
      __cxa_guard_release(&qword_1EE1B88E0);
    }
  }

  if ((_MergedGlobals_442 & 1) == 0)
  {
    if ((*(this + 120) & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v15 = byte_1EE1B88D9;
  *(this + 120) = byte_1EE1B88D9 ^ 1;
  if ((v15 & 1) == 0)
  {
LABEL_9:
    v16 = re::globalAllocators(v11);
    v17 = (*(*v16[2] + 32))(v16[2], 8, 8);
    *v17 = &unk_1F5D05180;
    v38 = v17;
    v11 = re::DynamicArray<re::RigDataValue *>::add(this, &v38);
  }

LABEL_10:
  if (*(this + 122) == 1)
  {
    v18 = re::globalAllocators(v11);
    v19 = (*(*v18[2] + 32))(v18[2], 88, 8);
    v38 = re::RenderGraphNodeCombineProcessor::RenderGraphNodeCombineProcessor(v19, v20);
    v21 = re::DynamicArray<re::RigDataValue *>::add(this, &v38);
  }

  else
  {
    v22 = re::globalAllocators(v11);
    v23 = (*(*v22[2] + 32))(v22[2], 48, 8);
    v24 = re::globalAllocators(v23)[2];
    v41[0] = &unk_1F5D04D38;
    v41[3] = v24;
    v41[4] = v41;
    *v23 = &unk_1F5D04C60;
    *(v23 + 4) = v24;
    *(v23 + 5) = 0;
    re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::operator=<24ul>(v23 + 8, v41);
    v38 = v23;
    re::DynamicArray<re::RigDataValue *>::add(this, &v38);
    v21 = re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::destroyCallable(v41);
  }

  v25 = re::globalAllocators(v21);
  v26 = (*(*v25[2] + 32))(v25[2], 48, 8);
  v27 = re::globalAllocators(v26)[2];
  v40[0] = &unk_1F5D04D90;
  v40[3] = v27;
  v40[4] = v40;
  *v26 = &unk_1F5D04C60;
  *(v26 + 4) = v27;
  *(v26 + 5) = 0;
  re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::operator=<24ul>(v26 + 8, v40);
  v38 = v26;
  re::DynamicArray<re::RigDataValue *>::add((this + 80), &v38);
  v28 = re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::destroyCallable(v40);
  v29 = re::globalAllocators(v28);
  v30 = (*(*v29[2] + 32))(v29[2], 48, 8);
  v31 = re::globalAllocators(v30)[2];
  v39[0] = &unk_1F5D04DE8;
  v39[1] = this;
  v39[3] = v31;
  v39[4] = v39;
  *v30 = &unk_1F5D04C60;
  *(v30 + 4) = v31;
  *(v30 + 5) = 0;
  re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::operator=<24ul>(v30 + 8, v39);
  v38 = v30;
  re::DynamicArray<re::RigDataValue *>::add((this + 80), &v38);
  v32 = re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::destroyCallable(v39);
  v33 = re::globalAllocators(v32);
  v34 = (*(*v33[2] + 32))(v33[2], 8, 8);
  *v34 = &unk_1F5D04E40;
  v38 = v34;
  return re::DynamicArray<re::RigDataValue *>::add((this + 80), &v38);
}

void re::RenderGraphProcessorManager::process(uint64_t a1, uint64_t a2, void *a3)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v32, 5020, *(a1 + 121), *(a1 + 122), 0, 0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = 8 * v8;
    do
    {
      v11 = *v9++;
      (*(*v11 + 16))(v11, a2);
      v10 -= 8;
    }

    while (v10);
  }

  v12 = a3[2];
  if (v12)
  {
    v13 = a3[4];
    v14 = 8 * v12;
    do
    {
      v15 = *v13++;
      (*(*v15 + 16))(v15, a2);
      v14 -= 8;
    }

    while (v14);
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    v17 = *(a1 + 72);
    v18 = 8 * v16;
    do
    {
      v19 = *v17++;
      (*(*v19 + 16))(v19, a2);
      v18 -= 8;
    }

    while (v18);
  }

  v20 = a3[7];
  if (v20)
  {
    v21 = a3[9];
    v22 = 8 * v20;
    do
    {
      v23 = *v21++;
      (*(*v23 + 16))(v23, a2);
      v22 -= 8;
    }

    while (v22);
  }

  v24 = *(a1 + 96);
  if (v24)
  {
    v25 = *(a1 + 112);
    v26 = 8 * v24;
    do
    {
      v27 = *v25++;
      (*(*v27 + 16))(v27, a2);
      v26 -= 8;
    }

    while (v26);
  }

  v28 = a3[12];
  if (v28)
  {
    v29 = a3[14];
    v30 = 8 * v28;
    do
    {
      v31 = *v29++;
      (*(*v31 + 16))(v31, a2);
      v30 -= 8;
    }

    while (v30);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v32, v6, v7);
}

void re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_0,void ()(re::RenderGraphCompiled &)>::operator()(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a2[44];
  if (v3)
  {
    v5 = a2[46];
    v6 = v5 + 200 * v3;
    do
    {
      v7 = *(v5 + 56);
      if (v7)
      {
        v8 = v7 << 6;
        v9 = (*(v5 + 72) + 52);
        do
        {
          v10 = a2[37];
          v11 = *v9;
          v12 = *(v10 + 16);
          if (v12 <= v11)
          {
            v28[0] = 0;
            v42 = 0u;
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v21 = MEMORY[0x1E69E9C10];
            v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v30 = 136315906;
            v31 = "operator[]";
            v32 = 1024;
            if (v22)
            {
              v23 = 3;
            }

            else
            {
              v23 = 2;
            }

            v33 = 789;
            v34 = 2048;
            v35 = v11;
            v36 = 2048;
            v37 = v12;
            _os_log_send_and_compose_impl(v23, v28, &v38, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v27);
            _os_crash_msg();
            __break(1u);
LABEL_22:
            v29 = 0;
            v42 = 0u;
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v24 = MEMORY[0x1E69E9C10];
            v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v30 = 136315906;
            v31 = "operator[]";
            v32 = 1024;
            if (v25)
            {
              v26 = 3;
            }

            else
            {
              v26 = 2;
            }

            v33 = 789;
            v34 = 2048;
            v35 = v12;
            v36 = 2048;
            v37 = v2;
            _os_log_send_and_compose_impl(v26, &v29, &v38, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v27, v28[0]);
            _os_crash_msg();
            __break(1u);
          }

          v13 = *(v10 + 32) + 48 * v11;
          if (*v13 == 1)
          {
            *&v38 = *(v13 + 8) >> 1;
            *(&v38 + 1) = *(v13 + 24);
            v19 = re::RenderGraphCompiled::bufferDescription(a2, &v38);
            if (*v19 == 4)
            {
              v20 = v19[7];
              if (v20 != -1)
              {
                *v9 = v20;
              }
            }
          }

          else if (!*v13)
          {
            v28[0] = *(v13 + 8) >> 1;
            v28[1] = *(v13 + 24);
            v14 = re::RenderGraphCompiled::targetDescription(a2, v28);
            if (*v14 == 4)
            {
              v15 = v14;
              v12 = v14[19];
              if (v12 != -1)
              {
                *v9 = v12;
                v16 = a2[37];
                v2 = *(v16 + 16);
                if (v2 <= v12)
                {
                  goto LABEL_22;
                }

                v17 = *(v16 + 32) + 48 * v12;
                *&v38 = *(v17 + 8) >> 1;
                *(&v38 + 1) = *(v17 + 24);
                v18 = re::RenderGraphCompiled::targetDescription(a2, &v38);
                *(v18 + 68) |= v15[17];
              }
            }
          }

          v9 += 16;
          v8 -= 64;
        }

        while (v8);
      }

      v5 += 200;
    }

    while (v5 != v6);
  }
}

void *re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_0,void ()(re::RenderGraphCompiled &)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D04BF8;
  return result;
}

void *re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_0,void ()(re::RenderGraphCompiled &)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D04BF8;
  return result;
}

void re::RenderGraphInlineProcessor::~RenderGraphInlineProcessor(re::RenderGraphInlineProcessor *this)
{
  re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::destroyCallable(this + 8);
}

{
  re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::destroyCallable(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::RenderGraphCompiled &)>::destroyCallable(uint64_t a1))(void)
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

re::FixLifetimeOfExternalsProcessor *re::FixLifetimeOfExternalsProcessor::process(uint64_t this, re::RenderGraphCompiled *a2)
{
  v78 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 44))
  {
    goto LABEL_20;
  }

  v5 = *(*(a2 + 37) + 16);
  LOBYTE(v73) = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v6 = *(a2 + 44);
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = 0;
  v8 = 0;
  v2 = 1;
  do
  {
    v9 = *(a2 + 46) + 200 * v7;
    v10 = *(v9 + 56);
    if (!v10)
    {
      goto LABEL_16;
    }

    v3 = v10 << 6;
    v11 = (*(v9 + 72) + 52);
    do
    {
      if (!re::RenderGraphCompiled::resourceIsExternal(a2, *v11))
      {
        goto LABEL_14;
      }

      v12 = *(v11 - 12);
      if ((v12 - 1) >= 8)
      {
        if (v12)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v13 = *v11;
        v14 = v62;
        if (v62 <= v13)
        {
          v64 = 0;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v73 = 0u;
          v36 = MEMORY[0x1E69E9C10];
          v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v65 = 136315906;
          v66 = "operator[]";
          v67 = 1024;
          if (v37)
          {
            v38 = 3;
          }

          else
          {
            v38 = 2;
          }

          v68 = 468;
          v69 = 2048;
          v70 = v13;
          v71 = 2048;
          v72 = v14;
          _os_log_send_and_compose_impl(v38, &v64, &v73, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v65, 38, v61, v62);
          _os_crash_msg();
          __break(1u);
          goto LABEL_63;
        }

        if (*(v63 + v13))
        {
          goto LABEL_13;
        }

        *(v63 + v13) = 1;
        re::RenderGraphCompiled::setFirstWritten(*(a2 + 37), v13, v8);
      }

      LODWORD(v13) = *v11;
LABEL_13:
      re::RenderGraphCompiled::setLastRead(*(a2 + 37), v13, v8);
LABEL_14:
      v11 += 16;
      v3 -= 64;
    }

    while (v3);
    v6 = *(a2 + 44);
LABEL_16:
    v7 = (v8 + 1);
    v8 = v7;
  }

  while (v6 > v7);
LABEL_17:
  this = v61;
  if (v61 && v62)
  {
    this = (*(*v61 + 40))();
  }

LABEL_20:
  v15 = *(a2 + 37);
  if (*(v15 + 16))
  {
    v16 = 0;
    v17 = 0;
    v2 = 48;
    do
    {
      v18 = *(v15 + 32);
      v19 = *(v18 + v16);
      if (v19 == 1)
      {
        v22 = v18 + v16;
        v61 = (*(v22 + 8) >> 1);
        v62 = *(v22 + 24);
        this = re::RenderGraphCompiled::bufferDescription(a2, &v61);
        if (*this != 2)
        {
          goto LABEL_36;
        }

        this = re::RenderGraphCompiled::firstWrittenIsValid(*(a2 + 37), v17);
        if (this)
        {
          goto LABEL_36;
        }

        this = re::RenderGraphCompiled::bufferDescription(a2, &v61);
        if (*this != 4)
        {
          goto LABEL_36;
        }

        v13 = *(this + 28);
        if (v13 == -1)
        {
          goto LABEL_36;
        }

        v21 = *(a2 + 37);
        v3 = *(v21 + 2);
        if (v3 <= v13)
        {
          goto LABEL_87;
        }
      }

      else
      {
        if (v19)
        {
          goto LABEL_36;
        }

        v20 = v18 + v16;
        v61 = (*(v20 + 8) >> 1);
        v62 = *(v20 + 24);
        this = re::RenderGraphCompiled::targetDescription(a2, &v61);
        if (*this != 2)
        {
          goto LABEL_36;
        }

        this = re::RenderGraphCompiled::firstWrittenIsValid(*(a2 + 37), v17);
        if (this)
        {
          goto LABEL_36;
        }

        this = re::RenderGraphCompiled::targetDescription(a2, &v61);
        if (*this != 4)
        {
          goto LABEL_36;
        }

        v13 = *(this + 76);
        if (v13 == -1)
        {
          goto LABEL_36;
        }

        v21 = *(a2 + 37);
        v3 = *(v21 + 2);
        if (v3 <= v13)
        {
          goto LABEL_83;
        }
      }

      v23 = *(*(v21 + 4) + 48 * v13 + 24);
      FirstWritten = re::RenderGraphCompiled::getFirstWritten(v21, v23);
      re::RenderGraphCompiled::setFirstWritten(*(a2 + 37), v17, FirstWritten);
      v25 = re::RenderGraphCompiled::getLastRead(*(a2 + 37), v23);
      this = re::RenderGraphCompiled::setLastRead(*(a2 + 37), v17, v25);
LABEL_36:
      ++v17;
      v15 = *(a2 + 37);
      v16 += 48;
    }

    while (*(v15 + 16) > v17);
  }

  v26 = *(a2 + 44);
  LODWORD(v73) = -1;
  v62 = 0;
  v63 = 0;
  v61 = 0;
  v28 = *(a2 + 49);
  if (v28)
  {
    v29 = 0;
    v30 = *(a2 + 51);
    v8 = v62;
    v31 = v63;
    while (1)
    {
      v13 = *(v30 + 4 * v29);
      if (v8 <= v13)
      {
        break;
      }

      *(v31 + 4 * v13) = v29++;
      if (v28 == v29)
      {
        goto LABEL_41;
      }
    }

LABEL_63:
    v64 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v39 = MEMORY[0x1E69E9C10];
    v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v65 = 136315906;
    v66 = "operator[]";
    v67 = 1024;
    if (v40)
    {
      v41 = 3;
    }

    else
    {
      v41 = 2;
    }

    v68 = 468;
    v69 = 2048;
    v70 = v13;
    v71 = 2048;
    v72 = v8;
    _os_log_send_and_compose_impl(v41, &v64, &v73, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v65, 38, v61, v62);
    _os_crash_msg();
    __break(1u);
LABEL_67:
    v64 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v42 = MEMORY[0x1E69E9C10];
    v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v65 = 136315906;
    v66 = "operator[]";
    v67 = 1024;
    if (v43)
    {
      v44 = 3;
    }

    else
    {
      v44 = 2;
    }

    v68 = 468;
    v69 = 2048;
    v70 = v13;
    v71 = 2048;
    v72 = v2;
    _os_log_send_and_compose_impl(v44, &v64, &v73, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v65, 38, v61, v62);
    _os_crash_msg();
    __break(1u);
LABEL_71:
    v64 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v45 = MEMORY[0x1E69E9C10];
    v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v65 = 136315906;
    v66 = "operator[]";
    v67 = 1024;
    if (v46)
    {
      v47 = 3;
    }

    else
    {
      v47 = 2;
    }

    v68 = 468;
    v69 = 2048;
    v70 = v8;
    v71 = 2048;
    v72 = v13;
    _os_log_send_and_compose_impl(v47, &v64, &v73, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v65, 38, v61, v62);
    _os_crash_msg();
    __break(1u);
LABEL_75:
    v64 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v48 = MEMORY[0x1E69E9C10];
    v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v65 = 136315906;
    v66 = "operator[]";
    v67 = 1024;
    if (v49)
    {
      v50 = 3;
    }

    else
    {
      v50 = 2;
    }

    v68 = 789;
    v69 = 2048;
    v70 = v13;
    v71 = 2048;
    v72 = v2;
    _os_log_send_and_compose_impl(v50, &v64, &v73, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v65, 38, v61, v62);
    _os_crash_msg();
    __break(1u);
LABEL_79:
    v64 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v51 = MEMORY[0x1E69E9C10];
    v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v65 = 136315906;
    v66 = "operator[]";
    v67 = 1024;
    if (v52)
    {
      v53 = 3;
    }

    else
    {
      v53 = 2;
    }

    v68 = 789;
    v69 = 2048;
    v70 = v8;
    v71 = 2048;
    v72 = v13;
    _os_log_send_and_compose_impl(v53, &v64, &v73, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v65, 38, v61, v62);
    _os_crash_msg();
    __break(1u);
LABEL_83:
    v64 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v54 = MEMORY[0x1E69E9C10];
    v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v65 = 136315906;
    v66 = "operator[]";
    v67 = 1024;
    if (v55)
    {
      v56 = 3;
    }

    else
    {
      v56 = 2;
    }

    v68 = 789;
    v69 = 2048;
    v70 = v13;
    v71 = 2048;
    v72 = v3;
    _os_log_send_and_compose_impl(v56, &v64, &v73, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v65, 38, v61, v62);
    _os_crash_msg();
    __break(1u);
LABEL_87:
    v64 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v57 = MEMORY[0x1E69E9C10];
    v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v65 = 136315906;
    v66 = "operator[]";
    v67 = 1024;
    if (v58)
    {
      v59 = 3;
    }

    else
    {
      v59 = 2;
    }

    v68 = 789;
    v69 = 2048;
    v70 = v13;
    v71 = 2048;
    v72 = v3;
    _os_log_send_and_compose_impl(v59, &v64, &v73, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v65, 38, v61, v62);
    _os_crash_msg();
    __break(1u);
  }

LABEL_41:
  v60 = 0;
  if (*(*(a2 + 37) + 16))
  {
    LODWORD(v27) = 0;
    do
    {
      if (re::RenderGraphCompiled::resourceIsExternal(a2, v27))
      {
        IsValid = re::RenderGraphCompiled::firstWrittenIsValid(*(a2 + 37), v60);
        v8 = re::RenderGraphCompiled::lastReadIsValid(*(a2 + 37), v60);
        if (IsValid)
        {
          v33 = re::RenderGraphCompiled::getFirstWritten(*(a2 + 37), v60);
          v13 = v33;
          v2 = v62;
          if (v62 <= v33)
          {
            goto LABEL_67;
          }

          v13 = *(v63 + 4 * v33);
          if ((v13 & 0x80000000) == 0)
          {
            v2 = *(a2 + 59);
            if (v2 <= v13)
            {
              goto LABEL_75;
            }

            re::DynamicArray<int>::add((*(a2 + 61) + 40 * v13), &v60);
          }
        }

        if (v8)
        {
          v34 = re::RenderGraphCompiled::getLastRead(*(a2 + 37), v60);
          v8 = v34;
          v13 = v62;
          if (v62 <= v34)
          {
            goto LABEL_71;
          }

          v8 = *(v63 + 4 * v34);
          if ((v8 & 0x80000000) == 0)
          {
            v13 = *(a2 + 64);
            if (v13 <= v8)
            {
              goto LABEL_79;
            }

            re::DynamicArray<int>::add((*(a2 + 66) + 40 * v8), &v60);
          }
        }
      }

      v27 = ++v60;
    }

    while (*(*(a2 + 37) + 16) > v60);
  }

  re::RenderGraphProcessor::updateTextureLifetimes(a2, v27);
  result = v61;
  if (v61 && v62)
  {
    return (*(*v61 + 40))();
  }

  return result;
}

BOOL re::RenderGraphCompiled::resourceIsExternal(re::RenderGraphCompiled *this, unsigned int a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(this + 37);
  v3 = a2;
  v4 = *(v2 + 16);
  if (v4 <= a2)
  {
    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v11 = MEMORY[0x1E69E9C10];
    v21 = 136315906;
    v22 = "operator[]";
    v23 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v24 = 789;
    v25 = 2048;
    v26 = v3;
    v27 = 2048;
    v28 = v4;
    _os_log_send_and_compose_impl(v12, &v20, &v29, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v13 = MEMORY[0x1E69E9C10];
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v21 = 136315906;
    v22 = "operator[]";
    v23 = 1024;
    if (v14)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v24 = 789;
    v25 = 2048;
    v26 = v3;
    v27 = 2048;
    v28 = v4;
    _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v5 = (*(v2 + 32) + 48 * a2);
  if (!*v5)
  {
    v3 = v5[7];
    v9 = *(this + 38);
    v4 = *(v9 + 16);
    if (v4 > v3)
    {
      v7 = *(v9 + 32);
      v8 = 112;
      return *(v7 + v3 * v8) == 2;
    }

LABEL_19:
    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v21 = 136315906;
    v22 = "operator[]";
    v23 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v24 = 789;
    v25 = 2048;
    v26 = v3;
    v27 = 2048;
    v28 = v4;
    _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
  }

  if (*v5 == 1)
  {
    v3 = v5[7];
    v6 = *(this + 39);
    v4 = *(v6 + 16);
    if (v4 > v3)
    {
      v7 = *(v6 + 32);
      v8 = 48;
      return *(v7 + v3 * v8) == 2;
    }

    goto LABEL_15;
  }

  return 0;
}

BOOL re::RenderGraphCompiled::firstWrittenIsValid(re::RenderGraphCompiled *this, unsigned int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *(this + 2);
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

    v12 = 789;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 4) + 48 * a2 + 32) != -1;
}

uint64_t re::RenderGraphCompiled::getFirstWritten(re::RenderGraphCompiled *this, unsigned int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *(this + 2);
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

    v12 = 789;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 4) + 48 * a2 + 32);
}

uint64_t re::RenderGraphCompiled::getLastRead(re::RenderGraphCompiled *this, unsigned int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *(this + 2);
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

    v12 = 789;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 4) + 48 * a2 + 36);
}

BOOL re::RenderGraphCompiled::lastReadIsValid(re::RenderGraphCompiled *this, unsigned int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *(this + 2);
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

    v12 = 789;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 4) + 48 * a2 + 36) != -1;
}

uint64_t *re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_1,void ()(re::RenderGraphCompiled &)>::operator()(_anonymous_namespace_ *a1, re::RenderGraphProcessor *this)
{
  v3 = this;
  v79 = *MEMORY[0x1E69E9840];
  if (!*(this + 44))
  {
    goto LABEL_27;
  }

  v4 = *(v3[37] + 16);
  LOBYTE(v74) = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v61 = 0;
  if (!v3[44])
  {
    goto LABEL_24;
  }

  v5 = 200;
  do
  {
    re::DynamicArray<int>::add((v3 + 47), &v61);
    *&v76 = 0;
    *&v75 = 0;
    v74 = 0uLL;
    DWORD2(v75) = 0;
    re::DynamicArray<re::DynamicArray<unsigned int>>::add((v3 + 57), &v74);
    if (v74 && v76)
    {
      (*(*v74 + 40))();
    }

    *&v76 = 0;
    *&v75 = 0;
    v74 = 0uLL;
    DWORD2(v75) = 0;
    re::DynamicArray<re::DynamicArray<unsigned int>>::add((v3 + 62), &v74);
    if (v74)
    {
      this = v76;
      if (v76)
      {
        (*(*v74 + 40))();
      }
    }

    v6 = v61;
    v7 = v3[44];
    if (v7 <= v61)
    {
      goto LABEL_65;
    }

    v8 = v3[46] + 200 * v61;
    v9 = *(v8 + 56);
    if (!v9)
    {
      goto LABEL_23;
    }

    v6 = v9 << 6;
    v2 = (*(v8 + 72) + 52);
    do
    {
      v10 = *(v2 - 12);
      if ((v10 - 1) < 8)
      {
        v7 = *v2;
        v11 = v63;
        if (v63 <= v7)
        {
          *v65 = 0;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v74 = 0u;
          v31 = MEMORY[0x1E69E9C10];
          v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v66 = 136315906;
          v67 = "operator[]";
          v68 = 1024;
          if (v32)
          {
            v33 = 3;
          }

          else
          {
            v33 = 2;
          }

          v69 = 468;
          v70 = 2048;
          v71 = v7;
          v72 = 2048;
          v73 = v11;
          _os_log_send_and_compose_impl(v33, v65, &v74, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v66, 38, v62, v63);
          _os_crash_msg();
          __break(1u);
LABEL_65:
          *v65 = 0;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v74 = 0u;
          v34 = MEMORY[0x1E69E9C10];
          v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v66 = 136315906;
          v67 = "operator[]";
          v68 = 1024;
          if (v35)
          {
            v36 = 3;
          }

          else
          {
            v36 = 2;
          }

          v69 = 789;
          v70 = 2048;
          v71 = v6;
          v72 = 2048;
          v73 = v7;
          _os_log_send_and_compose_impl(v36, v65, &v74, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v66, 38, v62, v63);
          _os_crash_msg();
          __break(1u);
LABEL_69:
          v62 = 0;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v74 = 0u;
          v37 = MEMORY[0x1E69E9C10];
          v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v66 = 136315906;
          v67 = "operator[]";
          v68 = 1024;
          if (v38)
          {
            v39 = 3;
          }

          else
          {
            v39 = 2;
          }

          v69 = 789;
          v70 = 2048;
          v71 = v7;
          v72 = 2048;
          v73 = v5;
          _os_log_send_and_compose_impl(v39, &v62, &v74, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v66, 38);
          _os_crash_msg();
          __break(1u);
LABEL_73:
          v62 = 0;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v74 = 0u;
          v40 = MEMORY[0x1E69E9C10];
          v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v66 = 136315906;
          v67 = "operator[]";
          v68 = 1024;
          if (v41)
          {
            v42 = 3;
          }

          else
          {
            v42 = 2;
          }

          v69 = 789;
          v70 = 2048;
          v71 = v5;
          v72 = 2048;
          v73 = v6;
          _os_log_send_and_compose_impl(v42, &v62, &v74, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v66, 38);
          _os_crash_msg();
          __break(1u);
LABEL_77:
          v62 = 0;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v74 = 0u;
          v43 = MEMORY[0x1E69E9C10];
          v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v66 = 136315906;
          v67 = "operator[]";
          v68 = 1024;
          if (v44)
          {
            v45 = 3;
          }

          else
          {
            v45 = 2;
          }

          v69 = 789;
          v70 = 2048;
          v71 = v7;
          v72 = 2048;
          v73 = v5;
          _os_log_send_and_compose_impl(v45, &v62, &v74, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v66, 38);
          _os_crash_msg();
          __break(1u);
LABEL_81:
          v62 = 0;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v74 = 0u;
          v46 = MEMORY[0x1E69E9C10];
          v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v66 = 136315906;
          v67 = "operator[]";
          v68 = 1024;
          if (v47)
          {
            v48 = 3;
          }

          else
          {
            v48 = 2;
          }

          v69 = 789;
          v70 = 2048;
          v71 = v7;
          v72 = 2048;
          v73 = v5;
          _os_log_send_and_compose_impl(v48, &v62, &v74, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v66, 38);
          _os_crash_msg();
          __break(1u);
LABEL_85:
          v62 = 0;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v74 = 0u;
          v49 = MEMORY[0x1E69E9C10];
          v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v66 = 136315906;
          v67 = "operator[]";
          v68 = 1024;
          if (v50)
          {
            v51 = 3;
          }

          else
          {
            v51 = 2;
          }

          v69 = 789;
          v70 = 2048;
          v71 = v7;
          v72 = 2048;
          v73 = v5;
          _os_log_send_and_compose_impl(v51, &v62, &v74, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v66, 38);
          _os_crash_msg();
          __break(1u);
LABEL_89:
          v62 = 0;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v74 = 0u;
          v52 = MEMORY[0x1E69E9C10];
          v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v66 = 136315906;
          v67 = "operator[]";
          v68 = 1024;
          if (v53)
          {
            v54 = 3;
          }

          else
          {
            v54 = 2;
          }

          v69 = 789;
          v70 = 2048;
          v71 = v7;
          v72 = 2048;
          v73 = v5;
          _os_log_send_and_compose_impl(v54, &v62, &v74, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v66, 38);
          _os_crash_msg();
          __break(1u);
LABEL_93:
          *v65 = 0;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v74 = 0u;
          v55 = MEMORY[0x1E69E9C10];
          v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v66 = 136315906;
          v67 = "operator[]";
          v68 = 1024;
          if (v56)
          {
            v57 = 3;
          }

          else
          {
            v57 = 2;
          }

          v69 = 789;
          v70 = 2048;
          v71 = v5;
          v72 = 2048;
          v73 = v2;
          _os_log_send_and_compose_impl(v57, v65, &v74, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v66, 38, v62, v63);
          _os_crash_msg();
          __break(1u);
LABEL_97:
          *v65 = 0;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v74 = 0u;
          v58 = MEMORY[0x1E69E9C10];
          v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v66 = 136315906;
          v67 = "operator[]";
          v68 = 1024;
          if (v59)
          {
            v60 = 3;
          }

          else
          {
            v60 = 2;
          }

          v69 = 789;
          v70 = 2048;
          v71 = v5;
          v72 = 2048;
          v73 = v2;
          _os_log_send_and_compose_impl(v60, v65, &v74, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v66, 38, v62, v63);
          _os_crash_msg();
          __break(1u);
        }

        v12 = v61;
        if ((*(v64 + v7) & 1) == 0)
        {
          *(v64 + v7) = 1;
          re::RenderGraphCompiled::setFirstWritten(v3[37], v7, v12);
          LODWORD(v7) = *v2;
          v12 = v61;
        }

        v13 = v3[37];
        v14 = v7;
        goto LABEL_18;
      }

      if (!v10)
      {
        v14 = *v2;
        v12 = v61;
        v13 = v3[37];
LABEL_18:
        re::RenderGraphCompiled::setLastRead(v13, v14, v12);
      }

      v2 += 16;
      v6 -= 64;
    }

    while (v6);
    LODWORD(v6) = v61;
    v7 = v3[44];
LABEL_23:
    v61 = v6 + 1;
  }

  while (v7 > (v6 + 1));
LABEL_24:
  if (v62 && v63)
  {
    (*(*v62 + 40))();
  }

LABEL_27:
  v15 = v3[37];
  if (!*(v15 + 2))
  {
    return re::RenderGraphProcessor::updateTextureLifetimes(v3, this);
  }

  v16 = 0;
  v17 = 0;
  v6 = 48;
  while (2)
  {
    v18 = *(v15 + 4);
    v19 = *(v18 + v16);
    if (v19 == 1)
    {
      v23 = v18 + v16;
      v62 = *(v23 + 8) >> 1;
      v63 = *(v23 + 24);
      if (!re::RenderGraphCompiled::firstWrittenIsValid(v15, v17))
      {
        v24 = re::RenderGraphCompiled::bufferDescription(v3, &v62);
        if (*v24 == 4)
        {
          v5 = v24[7];
          if (v5 != -1)
          {
            v22 = v3[37];
            v2 = *(v22 + 2);
            if (v2 <= v5)
            {
              goto LABEL_97;
            }

LABEL_40:
            v25 = *(*(v22 + 4) + 48 * v5 + 24);
            FirstWritten = re::RenderGraphCompiled::getFirstWritten(v22, v25);
            re::RenderGraphCompiled::setFirstWritten(v3[37], v17, FirstWritten);
            v27 = re::RenderGraphCompiled::getLastRead(v3[37], v25);
            re::RenderGraphCompiled::setLastRead(v3[37], v17, v27);
          }
        }
      }
    }

    else if (!v19)
    {
      v20 = v18 + v16;
      v62 = *(v20 + 8) >> 1;
      v63 = *(v20 + 24);
      if (!re::RenderGraphCompiled::firstWrittenIsValid(v15, v17))
      {
        v21 = re::RenderGraphCompiled::targetDescription(v3, &v62);
        if (*v21 == 4)
        {
          v5 = v21[19];
          if (v5 != -1)
          {
            v22 = v3[37];
            v2 = *(v22 + 2);
            if (v2 <= v5)
            {
              goto LABEL_93;
            }

            goto LABEL_40;
          }
        }
      }
    }

    ++v17;
    v15 = v3[37];
    v28 = *(v15 + 2);
    v16 += 48;
    if (v28 > v17)
    {
      continue;
    }

    break;
  }

  v65[0] = 0;
  if (v28)
  {
    LODWORD(this) = 0;
    while (1)
    {
      IsValid = re::RenderGraphCompiled::firstWrittenIsValid(v15, this);
      v7 = re::RenderGraphCompiled::lastReadIsValid(v3[37], v65[0]);
      if (re::RenderGraphCompiled::resourceIsExternal(v3, v65[0]))
      {
        if (IsValid)
        {
          v5 = re::RenderGraphCompiled::getFirstWritten(v3[37], v65[0]);
          v6 = v3[59];
          if (v6 <= v5)
          {
            goto LABEL_73;
          }

          re::DynamicArray<int>::add((v3[61] + 40 * v5), v65);
        }

        if (!v7)
        {
          goto LABEL_59;
        }

        v7 = re::RenderGraphCompiled::getLastRead(v3[37], v65[0]);
        v5 = v3[64];
        if (v5 <= v7)
        {
          goto LABEL_77;
        }

        goto LABEL_58;
      }

      if ((IsValid & v7) == 1)
      {
        break;
      }

      if (!(v7 & 1 | !IsValid))
      {
        v7 = re::RenderGraphCompiled::getFirstWritten(v3[37], v65[0]);
        v5 = v3[59];
        if (v5 <= v7)
        {
          goto LABEL_85;
        }

        re::DynamicArray<int>::add((v3[61] + 40 * v7), v65);
        v7 = re::RenderGraphCompiled::getFirstWritten(v3[37], v65[0]);
        v5 = v3[64];
        if (v5 <= v7)
        {
          goto LABEL_89;
        }

        goto LABEL_58;
      }

LABEL_59:
      this = ++v65[0];
      v15 = v3[37];
      if (*(v15 + 2) <= v65[0])
      {
        return re::RenderGraphProcessor::updateTextureLifetimes(v3, this);
      }
    }

    v7 = re::RenderGraphCompiled::getFirstWritten(v3[37], v65[0]);
    v5 = v3[59];
    if (v5 <= v7)
    {
      goto LABEL_69;
    }

    re::DynamicArray<int>::add((v3[61] + 40 * v7), v65);
    v7 = re::RenderGraphCompiled::getLastRead(v3[37], v65[0]);
    v5 = v3[64];
    if (v5 <= v7)
    {
      goto LABEL_81;
    }

LABEL_58:
    re::DynamicArray<int>::add((v3[66] + 40 * v7), v65);
    goto LABEL_59;
  }

  return re::RenderGraphProcessor::updateTextureLifetimes(v3, this);
}

void *re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_1,void ()(re::RenderGraphCompiled &)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D04CE0;
  return result;
}

void *re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_1,void ()(re::RenderGraphCompiled &)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D04CE0;
  return result;
}

uint64_t *re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_2,void ()(re::RenderGraphCompiled &)>::operator()(int a1, re::RenderGraphProcessor *this)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(this + 49))
  {
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = *(*(this + 51) + 4 * v3);
      v6 = *(this + 44);
      if (v6 <= v5)
      {
        v17 = 0;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        v11 = MEMORY[0x1E69E9C10];
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v12 = 3;
        }

        else
        {
          v12 = 2;
        }

        v21 = 789;
        v22 = 2048;
        v23 = v5;
        v24 = 2048;
        v25 = v6;
        _os_log_send_and_compose_impl(v12, &v17, &v26, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
        _os_crash_msg();
        __break(1u);
LABEL_11:
        v17 = 0;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        v13 = MEMORY[0x1E69E9C10];
        v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        if (v14)
        {
          v15 = 3;
        }

        else
        {
          v15 = 2;
        }

        v21 = 789;
        v22 = 2048;
        v23 = 0;
        v24 = 2048;
        v25 = 0;
        _os_log_send_and_compose_impl(v15, &v17, &v26, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
        _os_crash_msg();
        __break(1u);
      }

      v7 = *(this + 46) + 200 * v5;
      if (!*(v7 + 16))
      {
        goto LABEL_11;
      }

      v8 = *(v7 + 32);
      *&v26 = v5;
      re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::add(this + 656, v8, &v26);
      v3 = v4;
    }

    while (*(this + 49) > v4++);
  }

  return re::RenderGraphProcessor::updateTextureLifetimes(this, this);
}

void *re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_2,void ()(re::RenderGraphCompiled &)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D04D38;
  return result;
}

void *re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_2,void ()(re::RenderGraphCompiled &)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D04D38;
  return result;
}

uint64_t re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::add(uint64_t a1, void *a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v10) + 16;
  }

  v7 = re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 8) = *a2;
  *(v7 + 16) = *a3;
  result = v7 + 16;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 32 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 24) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + 32 * v5;
}

void re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::move(a1, v9);
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24), *(v7 + v5 + 24));
        *(result + 8) = *(*(a2 + 16) + v5 + 8);
        *(result + 16) = *(*(a2 + 16) + v5 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 32;
    }
  }

  return result;
}

void re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_3,void ()(re::RenderGraphCompiled &)>::operator()(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 432);
  if (v2)
  {
    v4 = 4 * v2;
    for (i = *(a2 + 448); ; ++i)
    {
      v6 = *i;
      v7 = *(a2 + 296);
      v8 = *(v7 + 16);
      if (v8 <= v6)
      {
        v28 = 0;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v35 = 0u;
        v24 = MEMORY[0x1E69E9C10];
        v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v29 = 136315906;
        *v30 = "operator[]";
        *&v30[8] = 1024;
        if (v25)
        {
          v26 = 3;
        }

        else
        {
          v26 = 2;
        }

        *&v30[10] = 789;
        v31 = 2048;
        v32 = v6;
        v33 = 2048;
        v34 = v8;
        _os_log_send_and_compose_impl(v26, &v28, &v35, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v29, 38, v27);
        _os_crash_msg();
        __break(1u);
      }

      v9 = *(v7 + 32) + 48 * v6;
      if (*v9 != 1)
      {
        break;
      }

      v20 = *(v9 + 8);
      v19 = v9 + 8;
      *&v35 = v20 >> 1;
      *(&v35 + 1) = *(v19 + 16);
      if (*re::RenderGraphCompiled::bufferDescription(a2, &v35) != 2)
      {
        FirstWritten = re::RenderGraphCompiled::getFirstWritten(*(a2 + 296), v6);
        if (FirstWritten > re::RenderGraphCompiled::getLastRead(*(a2 + 296), v6))
        {
          re::StringID::StringID(&v29, v19);
          re::DynamicString::format(&v35, "Buffer (%s) with invalid lifecycle detected (firstWritten > lastRead).", v22, *&v30[4]);
LABEL_22:
          re::RenderGraphCompiled::addError(a2, &v35);
          v23 = v35;
          if (v35)
          {
            if (BYTE8(v35))
            {
              v23 = (*(*v35 + 40))();
            }

            v35 = 0u;
            v36 = 0u;
          }

          if (v29)
          {
            if (v29)
            {
            }
          }
        }
      }

LABEL_29:
      v4 -= 4;
      if (!v4)
      {
        return;
      }
    }

    if (*v9)
    {
      goto LABEL_29;
    }

    v11 = *(v9 + 8);
    v10 = v9 + 8;
    *&v35 = v11 >> 1;
    *(&v35 + 1) = *(v10 + 16);
    v12 = re::RenderGraphCompiled::targetDescription(a2, &v35);
    v13 = *v12;
    if ((*v12 - 2) >= 3)
    {
      v14 = v12;
      if (*(a2 + 352) <= re::RenderGraphCompiled::getLastRead(*(a2 + 296), v6))
      {
        re::StringID::StringID(&v29, v10);
        re::DynamicString::format(&v35, "Texture (%s) with invalid lifecycle detected (lastRead later than end of graph).", v15, *&v30[4]);
        re::RenderGraphCompiled::addError(a2, &v35);
        v16 = v35;
        if (v35)
        {
          if (BYTE8(v35))
          {
            v16 = (*(*v35 + 40))();
          }

          v35 = 0u;
          v36 = 0u;
        }

        if (v29)
        {
          if (v29)
          {
          }
        }
      }

      v13 = *v14;
    }

    if (v13 == 2)
    {
      goto LABEL_29;
    }

    v17 = re::RenderGraphCompiled::getFirstWritten(*(a2 + 296), v6);
    if (v17 <= re::RenderGraphCompiled::getLastRead(*(a2 + 296), v6))
    {
      goto LABEL_29;
    }

    re::StringID::StringID(&v29, v10);
    re::DynamicString::format(&v35, "Texture (%s) with invalid lifecycle detected (firstWritten > lastRead).", v18, *&v30[4]);
    goto LABEL_22;
  }
}

void *re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_3,void ()(re::RenderGraphCompiled &)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D04D90;
  return result;
}

void *re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_3,void ()(re::RenderGraphCompiled &)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D04D90;
  return result;
}

uint64_t re::RenderGraphCompiled::addError(uint64_t a1, uint64_t a2)
{
  v4.n128_u64[0] = 2000;
  v4.n128_u64[1] = &re::GraphicsErrorCategory(void)::instance;
  v5 = *a2;
  v7 = *(a2 + 24);
  v6 = *(a2 + 8);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  v2 = re::DynamicArray<re::DetailedError>::add((a1 + 576), &v4);
  result = v5;
  if (v5)
  {
    if (v6)
    {
      return (*(*v5 + 40))(v2);
    }
  }

  return result;
}

void re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_4,void ()(re::RenderGraphCompiled &)>::operator()(uint64_t a1, re::RenderGraphCompiled *this)
{
  v2 = *(this + 37);
  if (*(v2 + 16))
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a1 + 8);
    do
    {
      v7 = *(v2 + 32);
      IsExternal = re::RenderGraphCompiled::resourceIsExternal(this, v5);
      if ((*(v6 + 121) & 1) == 0 && !IsExternal)
      {
        v9 = v7 + 48 * v4;
        FirstWritten = re::RenderGraphCompiled::getFirstWritten(*(this + 37), v5);
        if (FirstWritten > re::RenderGraphCompiled::getLastRead(*(this + 37), v5))
        {
          re::StringID::StringID(&v20, (v9 + 8));
          re::DynamicString::format(&v22, "Resource (%s) with invalid lifecycle detected (firstWritten > lastRead).", v11, v21);
          re::RenderGraphCompiled::addError(this, &v22);
          v12 = v22;
          if (v22)
          {
            if (BYTE8(v22))
            {
              v12 = (*(*v22 + 40))();
            }

            v22 = 0u;
            v23 = 0u;
          }

          if (v20)
          {
            if (v20)
            {
            }
          }
        }

        if (*v9 == 1)
        {
          v17 = *(v9 + 8);
          v16 = v9 + 8;
          *&v22 = v17 >> 1;
          *(&v22 + 1) = *(v16 + 16);
          if ((*re::RenderGraphCompiled::bufferDescription(this, &v22) & 0xFFFFFFFE) != 2 && *(this + 44) <= re::RenderGraphCompiled::getLastRead(*(this + 37), v5))
          {
            re::StringID::StringID(&v20, v16);
            re::DynamicString::format(&v22, "Buffer (%s) with invalid lifecycle detected (lastRead later than end of graph).", v18, v21);
            goto LABEL_21;
          }
        }

        else if (!*v9)
        {
          v14 = *(v9 + 8);
          v13 = v9 + 8;
          *&v22 = v14 >> 1;
          *(&v22 + 1) = *(v13 + 16);
          if ((*re::RenderGraphCompiled::targetDescription(this, &v22) & 0xFFFFFFFE) != 2 && *(this + 44) <= re::RenderGraphCompiled::getLastRead(*(this + 37), v5))
          {
            re::StringID::StringID(&v20, v13);
            re::DynamicString::format(&v22, "Texture (%s) with invalid lifecycle detected (lastRead later than end of graph).", v15, v21);
LABEL_21:
            re::RenderGraphCompiled::addError(this, &v22);
            v19 = v22;
            if (v22)
            {
              if (BYTE8(v22))
              {
                v19 = (*(*v22 + 40))();
              }

              v22 = 0u;
              v23 = 0u;
            }

            if (v20)
            {
              if (v20)
              {
              }
            }
          }
        }
      }

      v2 = *(this + 37);
      v4 = ++v5;
    }

    while (*(v2 + 16) > v5);
  }
}

void *re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_4,void ()(re::RenderGraphCompiled &)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D04DE8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::RenderGraphProcessorManager::addDefaultProcessors(BOOL)::$_4,void ()(re::RenderGraphCompiled &)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D04DE8;
  a2[1] = v2;
  return a2;
}

re::RenderGraphCompiled *re::MarkMemorylessProcessor::process(re::MarkMemorylessProcessor *this, re::RenderGraphCompiled *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  result = *(a2 + 37);
  if (*(result + 2))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(result + 4) + 48 * v4;
      if (*v6 == 1)
      {
        if (re::RenderGraphCompiled::firstWrittenIsValid(result, v5) && re::RenderGraphCompiled::lastReadIsValid(*(a2 + 37), v5))
        {
          FirstWritten = re::RenderGraphCompiled::getFirstWritten(*(a2 + 37), v5);
          v26 = re::RenderGraphCompiled::getLastRead(*(a2 + 37), v5);
          *&v57 = *(v6 + 8) >> 1;
          *(&v57 + 1) = *(v6 + 24);
          v27 = re::RenderGraphCompiled::bufferDescription(a2, &v57);
          if (*v27 != 2)
          {
            v28 = *(a2 + 49);
            if (v28)
            {
              v29 = 0;
              v12 = *(a2 + 44);
              while (1)
              {
                v30 = (*(a2 + 51) + 4 * v29);
                v31 = v12 + 1;
                if (v29 < v28 - 1)
                {
                  v31 = v30[1];
                }

                v15 = *v30;
                if (FirstWritten >= v15 && v26 < v31)
                {
                  if (v12 <= v15)
                  {
                    goto LABEL_60;
                  }

                  v33 = *(a2 + 46) + 200 * v15;
                  v34 = *(v33 + 56);
                  if (!v34)
                  {
                    break;
                  }

                  v35 = 0;
                  v36 = (v34 << 6) - 64;
                  v37 = (*(v33 + 72) + 4);
                  do
                  {
                    v38 = *v37;
                    v37 += 16;
                    v39 = (v38 & 0xFFFFFFFE) == 4;
                    v40 = (v38 & 0xFFFFFFFE) == 4 || v36 == 0;
                    v36 -= 64;
                    v35 |= v39;
                  }

                  while (!v40);
                  if ((v35 & 1) == 0)
                  {
                    break;
                  }
                }

                if (++v29 == v28)
                {
                  goto LABEL_54;
                }
              }

              v41 = v27 + 6;
LABEL_53:
              *v41 = 48;
            }
          }
        }
      }

      else if (!*v6 && re::RenderGraphCompiled::firstWrittenIsValid(result, v5) && re::RenderGraphCompiled::lastReadIsValid(*(a2 + 37), v5))
      {
        v7 = re::RenderGraphCompiled::getFirstWritten(*(a2 + 37), v5);
        v8 = re::RenderGraphCompiled::getLastRead(*(a2 + 37), v5);
        *&v57 = *(v6 + 8) >> 1;
        *(&v57 + 1) = *(v6 + 24);
        v9 = re::RenderGraphCompiled::targetDescription(a2, &v57);
        if (*v9 != 2)
        {
          v10 = *(a2 + 49);
          if (v10)
          {
            v11 = 0;
            v12 = *(a2 + 44);
            do
            {
              v13 = (*(a2 + 51) + 4 * v11);
              v14 = v12 + 1;
              if (v11 < v10 - 1)
              {
                v14 = v13[1];
              }

              v15 = *v13;
              if (v7 >= v15 && v8 < v14)
              {
                if (v12 <= v15)
                {
                  v48 = 0;
                  v60 = 0u;
                  v61 = 0u;
                  v58 = 0u;
                  v59 = 0u;
                  v57 = 0u;
                  v42 = MEMORY[0x1E69E9C10];
                  v49 = 136315906;
                  v50 = "operator[]";
                  v51 = 1024;
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    v43 = 3;
                  }

                  else
                  {
                    v43 = 2;
                  }

                  v52 = 789;
                  v53 = 2048;
                  v54 = v15;
                  v55 = 2048;
                  v56 = v12;
                  _os_log_send_and_compose_impl(v43, &v48, &v57, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, v47);
                  _os_crash_msg();
                  __break(1u);
LABEL_60:
                  v48 = 0;
                  v60 = 0u;
                  v61 = 0u;
                  v58 = 0u;
                  v59 = 0u;
                  v57 = 0u;
                  v44 = MEMORY[0x1E69E9C10];
                  v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v49 = 136315906;
                  v50 = "operator[]";
                  v51 = 1024;
                  if (v45)
                  {
                    v46 = 3;
                  }

                  else
                  {
                    v46 = 2;
                  }

                  v52 = 789;
                  v53 = 2048;
                  v54 = v15;
                  v55 = 2048;
                  v56 = v12;
                  _os_log_send_and_compose_impl(v46, &v48, &v57, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v49, 38, v47);
                  _os_crash_msg();
                  __break(1u);
                }

                v17 = *(a2 + 46) + 200 * v15;
                v18 = *(v17 + 56);
                if (!v18)
                {
                  goto LABEL_51;
                }

                v19 = 0;
                v20 = (v18 << 6) - 64;
                v21 = (*(v17 + 72) + 4);
                do
                {
                  v22 = *v21;
                  v21 += 16;
                  v23 = (v22 & 0xFFFFFFFE) == 4;
                  v24 = (v22 & 0xFFFFFFFE) == 4 || v20 == 0;
                  v20 -= 64;
                  v19 |= v23;
                }

                while (!v24);
                if ((v19 & 1) == 0)
                {
LABEL_51:
                  v41 = v9 + 18;
                  goto LABEL_53;
                }
              }

              ++v11;
            }

            while (v11 != v10);
          }
        }
      }

LABEL_54:
      result = *(a2 + 37);
      v4 = ++v5;
    }

    while (*(result + 2) > v5);
  }

  return result;
}

double re::wrapAsTextureMip@<D0>(id *this@<X0>, const re::CPUTexture *a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = a2;
  v24 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v13 = vmovn_s64(v15[5]);
  v7 = this[6];
  if (v7 <= v3)
  {
    v14 = 0;
    memset(v15, 0, 80);
    v10 = MEMORY[0x1E69E9C10];
    v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v16 = 136315906;
    v17 = "operator[]";
    v18 = 1024;
    if (v11)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v19 = 797;
    v20 = 2048;
    v21 = v6;
    v22 = 2048;
    v23 = v7;
    _os_log_send_and_compose_impl(v12, &v14, v15, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, *&v13);
    _os_crash_msg();
    __break(1u);
  }

  v8 = this[8] + 40 * v6;
  return MetalEmulation::wrapTextureMip(this[3], v3, &v13, *(v8 + 32), *(v8 + 16), a3);
}

void *re::PbrConstantSource::constantNameMap(re::PbrConstantSource *this)
{
  {
    byte_1ECF1C960 = 0;
    re::PbrConstantSource::constantNameMap(void)::linearAllocator = &unk_1F5CCF5B8;
    *algn_1ECF1C958 = "pbrConstantAllocator";
    xmmword_1ECF1C990 = 0u;
    unk_1ECF1C9A0 = 0u;
    dword_1ECF1C9B0 = 0;
    *&qword_1ECF1C968 = 0u;
    *&qword_1ECF1C978 = 0u;
    dword_1ECF1C988 = 0;
    *algn_1ECF1C9B4 = 0x7FFFFFFFLL;
    byte_1ECF1C9C0 = 1;
  }

  if ((re::PbrConstantSource::constantNameMap(void)::initialized & 1) == 0)
  {
    qword_1ECF1C968 = &re::PbrConstantSource::constantNameMap(void)::s_pbrConstantMemory;
    unk_1ECF1C970 = &re::PbrConstantSource::constantNameMap(void)::linearAllocator;
    qword_1ECF1C978 = &re::PbrConstantSource::constantNameMap(void)::s_pbrConstantMemory;
    unk_1ECF1C980 = &re::PbrConstantSource::constantNameMap(void)::linearAllocator;
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(re::PbrConstantSource::constantNameMap(void)::nameMap, &re::PbrConstantSource::constantNameMap(void)::linearAllocator, 16);
    for (i = 0; i != 128; i += 8)
    {
      v2 = &re::s_pbrConstantMembers[i];
      v3 = *&re::s_pbrConstantMembers[i + 4];
      if (v3)
      {
        v4 = *v3;
        if (*v3)
        {
          v5 = v3[1];
          if (v5)
          {
            v6 = (v3 + 2);
            do
            {
              v4 = 31 * v4 + v5;
              v7 = *v6++;
              v5 = v7;
            }

            while (v7);
          }

          v4 &= ~0x8000000000000000;
        }
      }

      else
      {
        v4 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v12 = v4;
      v8 = v2[1];
      LOWORD(v10) = re::s_pbrConstantMembers[i];
      HIWORD(v10) = v8;
      v11 = *(v2 + 24);
      re::HashBrown<re::WeakStringID,re::LocationWithType,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::LocationWithType>,false>::addNew(re::PbrConstantSource::constantNameMap(void)::nameMap, &v12, &v10);
    }

    re::PbrConstantSource::constantNameMap(void)::initialized = 1;
  }

  return re::PbrConstantSource::constantNameMap(void)::nameMap;
}

unint64_t re::HashBrown<re::WeakStringID,re::LocationWithType,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::LocationWithType>,false>::addNew(uint64_t *a1, void *a2, int *a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 != -1)
  {
    return a1[1] + 16 * v6 + 8;
  }

  return re::HashBrown<re::WeakStringID,re::LocationWithType,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::LocationWithType>,false>::internalAdd(a1, a2, a3);
}

void *re::PbrTextureSource::textureNameMap(re::PbrTextureSource *this)
{
  {
    byte_1ECF1CB40 = 0;
    re::PbrTextureSource::textureNameMap(void)::linearAllocator = &unk_1F5CCF5B8;
    *algn_1ECF1CB38 = "pbrTextureAllocator";
    xmmword_1ECF1CB70 = 0u;
    unk_1ECF1CB80 = 0u;
    dword_1ECF1CB90 = 0;
    *&qword_1ECF1CB48 = 0u;
    *&qword_1ECF1CB58 = 0u;
    dword_1ECF1CB68 = 0;
    *algn_1ECF1CB94 = 0x7FFFFFFFLL;
    byte_1ECF1CBA0 = 1;
  }

  if ((re::PbrTextureSource::textureNameMap(void)::initialized & 1) == 0)
  {
    qword_1ECF1CB48 = &re::PbrTextureSource::textureNameMap(void)::s_pbrTextureMemory;
    unk_1ECF1CB50 = &re::PbrTextureSource::textureNameMap(void)::linearAllocator;
    qword_1ECF1CB58 = &re::PbrTextureSource::textureNameMap(void)::s_pbrTextureMemory;
    unk_1ECF1CB60 = &re::PbrTextureSource::textureNameMap(void)::linearAllocator;
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(re::PbrTextureSource::textureNameMap(void)::nameMap, &re::PbrTextureSource::textureNameMap(void)::linearAllocator, 14);
    for (i = 0; i != 14; ++i)
    {
      v2 = re::s_pbrTextureNames[i];
      v3 = *v2;
      if (*v2)
      {
        v4 = v2[1];
        if (v4)
        {
          v5 = (v2 + 2);
          do
          {
            v3 = 31 * v3 + v4;
            v6 = *v5++;
            v4 = v6;
          }

          while (v6);
        }

        v3 &= ~0x8000000000000000;
      }

      v9 = v3;
      LOBYTE(v8) = 0;
      HIBYTE(v8) = i;
      re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::addNew(re::PbrTextureSource::textureNameMap(void)::nameMap, &v9, &v8);
    }

    re::PbrTextureSource::textureNameMap(void)::initialized = 1;
  }

  return re::PbrTextureSource::textureNameMap(void)::nameMap;
}

unint64_t re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::addNew(uint64_t *a1, void *a2, _WORD *a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 != -1)
  {
    return a1[1] + 16 * v6 + 8;
  }

  return re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::internalAdd(a1, a2, a3);
}

unint64_t re::HashBrown<re::WeakStringID,re::LocationWithType,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::LocationWithType>,false>::internalAdd(uint64_t *a1, void *a2, int *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<re::WeakStringID,re::LocationWithType,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::LocationWithType>,false>::resize(a1);
    v7 = a1[2];
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = v9 % (v7 >> 4);
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = v13 + 16 * v11;
  v17 = a1[1] + 16 * v16;
  *v17 = *a2;
  v18 = *a3;
  *(v17 + 12) = *(a3 + 2);
  *(v17 + 8) = v18;
  if (v15 == 255)
  {
    v19 = -1;
  }

  else
  {
    v19 = 0;
  }

  v20.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v20.i64[1] = v19;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v20);
  re::HashBrown<re::WeakStringID,re::LocationWithType,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::LocationWithType>,false>::updateHashes(a1, a1[1] + 16 * v16);
  return a1[1] + 16 * v16 + 8;
}

_anonymous_namespace_ *re::HashBrown<re::WeakStringID,re::LocationWithType,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::LocationWithType>,false>::resize(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + 1;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  v8 = *(a1 + 56);
  memset(v52, 0, sizeof(v52));
  result = re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v52, v8, v3);
  v53 = a1;
  v11 = *(a1 + 16);
  if (v11 >= 0x10)
  {
    v12 = 0;
    v13 = *a1;
    v14 = v11 >> 4;
    while (1)
    {
      v15 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v13), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v54 = v15 ^ 0xFFFF;
      if (v15 != 0xFFFF)
      {
        break;
      }

      v12 -= 16;
      ++v13;
      if (!--v14)
      {
        goto LABEL_30;
      }
    }

    v16 = __clz(__rbit64(v15 ^ 0xFFFF));
    v17 = v16 - v12;
    v55 = v16 - v12;
    if (v16 + 1 != v12)
    {
      v51 = vdupq_n_s64(1uLL).u64[0];
      do
      {
        v18 = *(v53 + 1);
        if (*(&v52[3] + 1))
        {
          v19 = *&v52[2];
        }

        else
        {
          *&v52[1] = 16;
          *&v35 = -1;
          *(&v35 + 1) = -1;
          **&v52[0] = v35;
          v19 = *&v52[1];
          *(&v52[0] + 1) = *&v52[0] + 16;
          *(&v52[1] + 1) = 0;
          v52[2] = *&v52[1];
          *&v52[3] = 0;
        }

        v20 = xmmword_1E304FAD0;
        if (!v19 || (v21 = *&v52[1], *&v52[1] > (8 * v19)))
        {
          re::HashBrown<re::WeakStringID,re::LocationWithType,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::LocationWithType>,false>::resize(v52);
          v20 = xmmword_1E304FAD0;
          v21 = *&v52[1];
        }

        v22 = v18 + 16 * v17;
        v23 = 0xBF58476D1CE4E5B9 * (*v22 ^ (*v22 >> 30));
        v24 = (0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) ^ ((0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) >> 31);
        v25 = v21 >> 4;
        v26 = v24 % (v21 >> 4);
        v27 = v26;
        while (1)
        {
          v28 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*&v52[0] + 16 * v27)), v20)))), 0x3830282018100800)));
          if (v28 < 0x40)
          {
            break;
          }

          if (v27 + 1 == v25)
          {
            v27 = 0;
          }

          else
          {
            ++v27;
          }

          if (v27 == v26)
          {
            re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
            result = _os_crash("assertion failure: (blockIndex != h1(key) % blockCount()) Unexpected full hash-table");
            __break(1u);
            return result;
          }
        }

        v29 = *&v52[0] + 16 * v27;
        v30 = *(v29 + v28);
        *(v29 + v28) = v24 & 0x7F;
        v31 = v28 + 16 * v27;
        v32 = *(&v52[0] + 1) + 16 * v31;
        *v32 = *v22;
        LODWORD(v29) = *(v22 + 8);
        *(v32 + 12) = *(v22 + 12);
        *(v32 + 8) = v29;
        if (v30 == 255)
        {
          v33 = -1;
        }

        else
        {
          v33 = 0;
        }

        v34.i64[0] = v51;
        v34.i64[1] = v33;
        *(&v52[1] + 8) = vaddq_s64(*(&v52[1] + 8), v34);
        re::HashBrown<re::WeakStringID,re::LocationWithType,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::LocationWithType>,false>::updateHashes(v52, *(&v52[0] + 1) + 16 * v31);
        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v53);
        v17 = v55;
      }

      while (v55 != -1);
      v11 = *(a1 + 16);
    }
  }

LABEL_30:
  v37 = *(&v52[3] + 1);
  *(&v52[3] + 1) = *(a1 + 56);
  v36 = *(&v52[3] + 1);
  v38 = *a1;
  v39 = *(a1 + 8);
  v40 = v52[0];
  v41 = v52[1];
  *&v52[0] = *a1;
  *(&v52[0] + 1) = v39;
  *&v52[1] = v11;
  v42 = v52[2];
  v43 = *(a1 + 40);
  *(a1 + 48) = *&v52[3];
  *(a1 + 56) = v37;
  *(&v52[2] + 8) = v43;
  v44 = *(a1 + 24);
  *a1 = v40;
  *(a1 + 16) = v41;
  *(a1 + 32) = v42;
  *(&v52[1] + 8) = v44;
  if (v36)
  {
    if (v39)
    {
      v53 = v52;
      if (v11 >= 0x10)
      {
        v45 = 0;
        v46 = v11 >> 4;
        v47 = v38;
        while (1)
        {
          v48 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v47), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v54 = v48 ^ 0xFFFFLL;
          if (v48 != 0xFFFFLL)
          {
            break;
          }

          v45 -= 16;
          ++v47;
          if (!--v46)
          {
            goto LABEL_39;
          }
        }

        v49 = __clz(__rbit64(v48 ^ 0xFFFFLL));
        v50 = v49 - v45;
        v55 = v49 - v45;
        if (v49 + 1 != v45)
        {
          do
          {
            *(v39 + 16 * v50) = 0;
            result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v53);
            v50 = v55;
          }

          while (v55 != -1);
        }
      }

LABEL_39:
      *(&v52[0] + 1) = 0;
    }

    if (v38)
    {
      return (*(*v36 + 40))(v36, v38);
    }
  }

  return result;
}

uint64_t re::HashBrown<re::WeakStringID,re::LocationWithType,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::LocationWithType>,false>::updateHashes(uint64_t result, uint64_t a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = v3 ^ *(result + 40);
  v5 = 0xBF58476D1CE4E5B9 * ((*(a2 + 8) | (*(a2 + 11) << 24) | (*(a2 + 10) << 16)) ^ (*(a2 + 11) >> 6));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = 73244475 * ((73244475 * *(a2 + 12)) ^ ((73244475 * *(a2 + 12)) >> 16));
  v8 = *(result + 48) ^ v3 ^ ((v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9 + (((v7 ^ HIWORD(v7)) + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9) ^ v6));
  *(result + 40) = v4;
  *(result + 48) = v8;
  return result;
}

void re::RenderGraphExecutable::execute(re::RenderGraphExecutable *this, re::RenderGraphContext *a2)
{
  v77 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v60, 5018, *(*(this + 21) + 392), *(*(this + 21) + 432), 0, 0);
  v6 = *(this + 21);
  if (v6[49])
  {
    v7 = 0;
    v57 = &v63 + 8;
    v8 = &unk_1EE1C6000;
    while (1)
    {
      v9 = *(v6[51] + 4 * v7);
      *(a2 + 12) = v9;
      v10 = v6[44];
      if (v10 <= v9)
      {
        break;
      }

      v11 = v6[46] + 200 * v9;
      if (!*(v11 + 16))
      {
        goto LABEL_68;
      }

      *(a2 + 5) = **(v11 + 32);
      re::RenderGraphResourceAllocationManager::startSetup(*(a2 + 4));
      re::RenderGraphContext::allocateRenderTargetsBeforeSetup(a2);
      re::RenderGraphContext::checkForReadAfterWriteDependenciesWait(a2);
      v12 = *(this + 21);
      v9 = *(a2 + 12);
      v10 = *(v12 + 352);
      if (v10 <= v9)
      {
        goto LABEL_72;
      }

      v13 = (*(v12 + 368) + 200 * v9);
      v14 = v13[1].i64[0];
      if (v14)
      {
        v15 = v13[2].i64[0] + 8 * v14;
        do
        {
          v17 = *(v15 - 8);
          v15 -= 8;
          v16 = v17;
          (*(*v17 + 96))(v17, a2);
          v18 = (*(*v16 + 72))(v16);
          if (v19)
          {
            v20 = v18 + (v19 << 6);
            do
            {
              v21 = v13[3].i64[1];
              if (v21)
              {
                v22 = v13[4].i64[1];
                v23 = v21 << 6;
                do
                {
                  v24 = *(v18 + 20);
                  if (v24 == *(v22 + 4) && (v24 - 1) <= 2 && *(v18 + 16) == *v22)
                  {
                    *(v22 + 16) = *(v18 + 32);
                  }

                  v22 += 64;
                  v23 -= 64;
                }

                while (v23);
              }

              v18 += 64;
            }

            while (v18 != v20);
          }

          v13[10].i8[11] |= *(v16 + 67);
          v13[11] = vbslq_s8(vcgtq_u64(v13[11], *(v16 + 72)), v13[11], *(v16 + 72));
          v13[12].i8[0] = *(v16 + 88);
        }

        while (v15 != v13[2].i64[0]);
      }

      v26 = re::RenderGraphDataStore::tryGet<re::CameraData>(*(a2 + 146), *(*(a2 + 5) + 48));
      if (!v26 || *(v26 + 862) != 1)
      {
        goto LABEL_38;
      }

      v62 = 0uLL;
      LODWORD(v63) = 1;
      *(&v63 + 1) = 0;
      *&v64 = 0;
      v27 = *(this + 21);
      v9 = *(a2 + 12);
      v10 = *(v27 + 352);
      if (v10 <= v9)
      {
        goto LABEL_80;
      }

      v28 = *(v27 + 368) + 200 * v9;
      v29 = *(v28 + 16);
      if (v29)
      {
        v30 = v8;
        v31 = *(v28 + 32);
        v32 = &v31[v29];
        while (1)
        {
          v33 = *v31;
          *(a2 + 5) = *v31;
          re::RenderGraphContext::rtAttachmentHandles(a2, v33, &v62);
          v34 = (v63 & 1) != 0 ? (&v63 + 8) : v64;
          if (*(&v62 + 1))
          {
            break;
          }

LABEL_34:
          if (++v31 == v32)
          {
            v8 = v30;
            if (v62 && (v63 & 1) == 0)
            {
              (*(*v62 + 40))();
            }

            goto LABEL_38;
          }
        }

        v35 = &v34[2 * *(&v62 + 1)];
        while (1)
        {
          v58 = 0;
          v59 = -1;
          v58 = *v34;
          v59 = v34[1];
          if (*(re::RenderGraphResourceDescriptions::targetDescription(*(*(a2 + 147) + 168), &v58) + 104) == 1)
          {
            break;
          }

          v34 += 2;
          if (v34 == v35)
          {
            goto LABEL_34;
          }
        }

        if (v62 && (v63 & 1) == 0)
        {
          (*(*v62 + 40))();
        }

        v8 = v30;
      }

      else
      {
LABEL_38:
        re::RenderGraphContext::handleManagedForceClear(a2);
      }

      v36 = *(this + 21);
      v9 = *(a2 + 12);
      v10 = *(v36 + 352);
      if (v10 <= v9)
      {
        goto LABEL_76;
      }

      v37 = *(v36 + 368) + 200 * v9;
      v38 = *(v37 + 16);
      if (v38)
      {
        v39 = *(v37 + 32);
        v40 = 8 * v38;
        do
        {
          v41 = *v39;
          *(a2 + 5) = *v39;
          if (re::RenderGraphContext::setupUsesCustomEncoders(a2))
          {
            re::RenderGraphContext::releaseManagedEncoder(a2, 1);
          }

          (*(*v41 + 104))(v41, a2);
          if ((re::RenderGraphContext::setupUsesCustomEncoders(a2) & 1) == 0 && re::RenderGraphContext::isSetupParallel(a2))
          {
            re::RenderGraphContext::releaseManagedRenderEncodersFromParallelEncoder(a2);
          }

          ++v39;
          v40 -= 8;
        }

        while (v40);
      }

      if ((re::RenderGraphContext::setupUsesCustomEncoders(a2) & 1) == 0)
      {
        if (v8[322] != -1)
        {
          dispatch_once(&re::GraphicsFeatureFlags::mergeComputeEncoders(void)::onceToken, &__block_literal_global_6_2);
        }

        if (re::GraphicsFeatureFlags::mergeComputeEncoders(void)::gMergeComputeEncoders == 1 && *(a2 + 296) == 1)
        {
          re::RenderGraphResourceAllocationManager::addCompleteFence(*(a2 + 4), *(a2 + 150));
        }

        else
        {
          re::RenderGraphContext::releaseManagedEncoder(a2, 1);
        }
      }

      re::RenderGraphContext::releaseRenderTargetsAfterSetup(a2);
      ++v7;
      v6 = *(this + 21);
      if (v7 >= v6[49])
      {
        goto LABEL_61;
      }
    }

    *v67 = 0;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    v42 = MEMORY[0x1E69E9C10];
    v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v74[0] = 136315906;
    *&v74[1] = "operator[]";
    LOWORD(v74[3]) = 1024;
    if (v43)
    {
      v44 = 3;
    }

    else
    {
      v44 = 2;
    }

    *(&v74[3] + 2) = 789;
    HIWORD(v74[4]) = 2048;
    *&v74[5] = v9;
    LOWORD(v74[7]) = 2048;
    *(&v74[7] + 2) = v10;
    _os_log_send_and_compose_impl(v44, v67, &v62, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v74, 38, &v63 + 8, v58);
    _os_crash_msg();
    __break(1u);
LABEL_68:
    *v67 = 0;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    v45 = MEMORY[0x1E69E9C10];
    v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v74[0] = 136315906;
    *&v74[1] = "operator[]";
    LOWORD(v74[3]) = 1024;
    if (v46)
    {
      v47 = 3;
    }

    else
    {
      v47 = 2;
    }

    *(&v74[3] + 2) = 789;
    HIWORD(v74[4]) = 2048;
    *&v74[5] = 0;
    LOWORD(v74[7]) = 2048;
    *(&v74[7] + 2) = 0;
    _os_log_send_and_compose_impl(v47, v67, &v62, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v74, 38, v57, v58);
    _os_crash_msg();
    __break(1u);
LABEL_72:
    *v67 = 0;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    v48 = MEMORY[0x1E69E9C10];
    v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v74[0] = 136315906;
    *&v74[1] = "operator[]";
    LOWORD(v74[3]) = 1024;
    if (v49)
    {
      v50 = 3;
    }

    else
    {
      v50 = 2;
    }

    *(&v74[3] + 2) = 789;
    HIWORD(v74[4]) = 2048;
    *&v74[5] = v9;
    LOWORD(v74[7]) = 2048;
    *(&v74[7] + 2) = v10;
    _os_log_send_and_compose_impl(v50, v67, &v62, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v74, 38, v57, v58);
    _os_crash_msg();
    __break(1u);
LABEL_76:
    *v67 = 0;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    v51 = MEMORY[0x1E69E9C10];
    v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v74[0] = 136315906;
    *&v74[1] = "operator[]";
    LOWORD(v74[3]) = 1024;
    if (v52)
    {
      v53 = 3;
    }

    else
    {
      v53 = 2;
    }

    *(&v74[3] + 2) = 789;
    HIWORD(v74[4]) = 2048;
    *&v74[5] = v9;
    LOWORD(v74[7]) = 2048;
    *(&v74[7] + 2) = v10;
    _os_log_send_and_compose_impl(v53, v67, &v62, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v74, 38, v57, v58);
    _os_crash_msg();
    __break(1u);
LABEL_80:
    v61 = 0;
    v75 = 0u;
    v76 = 0u;
    memset(v74, 0, sizeof(v74));
    v54 = MEMORY[0x1E69E9C10];
    v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v67 = 136315906;
    *&v67[4] = "operator[]";
    v68 = 1024;
    if (v55)
    {
      v56 = 3;
    }

    else
    {
      v56 = 2;
    }

    v69 = 789;
    v70 = 2048;
    v71 = v9;
    v72 = 2048;
    v73 = v10;
    _os_log_send_and_compose_impl(v56, &v61, v74, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v67, 38, v57, v58);
    _os_crash_msg();
    __break(1u);
  }

LABEL_61:
  if (*(a2 + 296) != 4)
  {
    re::RenderGraphContext::releaseManagedEncoder(a2, 1);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v60, v4, v5);
}

uint64_t re::RenderGraphExecutable::validateAttachmentsPerFrame(uint64_t result, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = *(result + 168);
  v3 = *(v2 + 392);
  if (v3)
  {
    v5 = result;
    v6 = *(v2 + 408);
    v7 = &v6[v3];
    while (1)
    {
      v8 = *(v5 + 168);
      v9 = *v6;
      v10 = *(v8 + 352);
      if (v10 <= v9)
      {
        goto LABEL_14;
      }

      v10 = (*(v8 + 368) + 200 * v9);
      v11 = v10[12];
      if (v11)
      {
        break;
      }

LABEL_8:
      if (++v6 == v7)
      {
        return result;
      }
    }

    v12 = v10[14];
    v13 = 8 * v11;
    while (1)
    {
      v9 = *v12;
      v14 = v10[2];
      if (v14 <= *v12)
      {
        break;
      }

      v15 = *(v10[4] + 8 * v9);
      result = (*(*v15 + 112))(v15, v5, a2);
      ++v12;
      v13 -= 8;
      if (!v13)
      {
        goto LABEL_8;
      }
    }

    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v26 = 797;
    v27 = 2048;
    v28 = v9;
    v29 = 2048;
    v30 = v14;
    _os_log_send_and_compose_impl(v17, &v22, &v31, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
LABEL_14:
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v26 = 789;
    v27 = 2048;
    v28 = v9;
    v29 = 2048;
    v30 = v10;
    _os_log_send_and_compose_impl(v20, &v22, &v31, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

unint64_t re::RenderGraphExecutable::calculateResourcePropertiesHash(re::RenderGraphExecutable *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = (*(this + 2) + 44);
    v3 = 31;
    do
    {
      v4 = 0xBF58476D1CE4E5B9 * (*(v2 - 11) ^ (*(v2 - 11) >> 30));
      v5 = 0xBF58476D1CE4E5B9 * (*(v2 - 10) ^ (*(v2 - 10) >> 30));
      v6 = ((v3 << 6) - 0x61C8864680B583E9 + (v3 >> 2) + ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31))) ^ v3;
      v7 = ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v6 << 6);
      v8 = 0xBF58476D1CE4E5B9 * (*(v2 - 9) ^ (*(v2 - 9) >> 30));
      v9 = (v7 + (v6 >> 2)) ^ v6;
      v10 = ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v9 << 6) + (v9 >> 2);
      v11 = 0xBF58476D1CE4E5B9 * (*(v2 - 8) ^ (*(v2 - 8) >> 30));
      v12 = v10 ^ v9;
      v13 = ((0x94D049BB133111EBLL * (v11 ^ (v11 >> 27))) ^ ((0x94D049BB133111EBLL * (v11 ^ (v11 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v12 << 6);
      v14 = 0xBF58476D1CE4E5B9 * (*(v2 - 7) ^ (*(v2 - 7) >> 30));
      v15 = (((0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) ^ ((0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) >> 31)) - 0x61C8864680B583E9 + (((v13 + (v12 >> 2)) ^ v12) << 6) + (((v13 + (v12 >> 2)) ^ v12) >> 2)) ^ (v13 + (v12 >> 2)) ^ v12;
      v16 = 0xBF58476D1CE4E5B9 * (*(v2 - 6) ^ (*(v2 - 6) >> 30));
      v17 = 0xBF58476D1CE4E5B9 * (*(v2 - 5) ^ (*(v2 - 5) >> 30));
      v18 = (((0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) ^ ((0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v15 << 6) + (v15 >> 2)) ^ v15;
      v19 = ((0x94D049BB133111EBLL * (v17 ^ (v17 >> 27))) ^ ((0x94D049BB133111EBLL * (v17 ^ (v17 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v18 << 6) + (v18 >> 2);
      v20 = 0xBF58476D1CE4E5B9 * (*(v2 - 4) ^ (*(v2 - 4) >> 30));
      v21 = (((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) ^ ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) >> 31)) - 0x61C8864680B583E9 + ((v19 ^ v18) << 6) + ((v19 ^ v18) >> 2)) ^ v19 ^ v18;
      v22 = 0xBF58476D1CE4E5B9 * (*(v2 - 3) ^ (*(v2 - 3) >> 30));
      v23 = 0xBF58476D1CE4E5B9 * (*v2 ^ (*v2 >> 30));
      v24 = (((0x94D049BB133111EBLL * (v22 ^ (v22 >> 27))) ^ ((0x94D049BB133111EBLL * (v22 ^ (v22 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v21 << 6) + (v21 >> 2)) ^ v21;
      v25 = ((0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) ^ ((0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v24 << 6) + (v24 >> 2);
      v26 = 0xBF58476D1CE4E5B9 * (v2[1] ^ (v2[1] >> 30));
      v27 = v25 ^ v24;
      v28 = ((0x94D049BB133111EBLL * (v26 ^ (v26 >> 27))) ^ ((0x94D049BB133111EBLL * (v26 ^ (v26 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v27 << 6);
      v29 = 0xBF58476D1CE4E5B9 * (v2[2] ^ (v2[2] >> 30));
      v30 = (v28 + (v27 >> 2)) ^ v27;
      v31 = ((0x94D049BB133111EBLL * (v29 ^ (v29 >> 27))) ^ ((0x94D049BB133111EBLL * (v29 ^ (v29 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v30 << 6) + (v30 >> 2);
      v32 = 0xBF58476D1CE4E5B9 * (v2[3] ^ (v2[3] >> 30));
      v33 = v31 ^ v30;
      v34 = ((0x94D049BB133111EBLL * (v32 ^ (v32 >> 27))) ^ ((0x94D049BB133111EBLL * (v32 ^ (v32 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v33 << 6);
      v35 = 0xBF58476D1CE4E5B9 * (v2[6] ^ (v2[6] >> 30));
      v36 = (((0x94D049BB133111EBLL * (v35 ^ (v35 >> 27))) ^ ((0x94D049BB133111EBLL * (v35 ^ (v35 >> 27))) >> 31)) - 0x61C8864680B583E9 + (((v34 + (v33 >> 2)) ^ v33) << 6) + (((v34 + (v33 >> 2)) ^ v33) >> 2)) ^ (v34 + (v33 >> 2)) ^ v33;
      v37 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v2[7] ^ (v2[7] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v2[7] ^ (v2[7] >> 30))) >> 27));
      v38 = 0xBF58476D1CE4E5B9 * (*(v2 + 11) ^ (*(v2 + 11) >> 30));
      v39 = ((v37 ^ (v37 >> 31)) - 0x61C8864680B583E9 + (v36 << 6) + (v36 >> 2)) ^ v36;
      v40 = ((0x94D049BB133111EBLL * (v38 ^ (v38 >> 27))) ^ ((0x94D049BB133111EBLL * (v38 ^ (v38 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v39 << 6) + (v39 >> 2);
      if ((v2[7] & 0x70) == 0x30)
      {
        v41 = 0xBF58476D1CE4E5B9;
      }

      else
      {
        v41 = 0;
      }

      v3 = (((0x94D049BB133111EBLL * (v41 ^ (v41 >> 27))) ^ ((0x94D049BB133111EBLL * (v41 ^ (v41 >> 27))) >> 31)) - 0x61C8864680B583E9 + ((v40 ^ v39) << 6) + ((v40 ^ v39) >> 2)) ^ v40 ^ v39;
      v2 += 28;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = 31;
  }

  v42 = *(this + 4);
  if (v42)
  {
    v43 = (*(this + 5) + 20);
    do
    {
      v44 = 0xBF58476D1CE4E5B9 * (*(v43 - 5) ^ (*(v43 - 5) >> 30));
      v45 = ((v3 << 6) - 0x61C8864680B583E9 + (v3 >> 2) + ((0x94D049BB133111EBLL * (v44 ^ (v44 >> 27))) ^ ((0x94D049BB133111EBLL * (v44 ^ (v44 >> 27))) >> 31))) ^ v3;
      v46 = 0xBF58476D1CE4E5B9 * (*(v43 - 3) ^ (*(v43 - 3) >> 30));
      v47 = (((0x94D049BB133111EBLL * (v46 ^ (v46 >> 27))) ^ ((0x94D049BB133111EBLL * (v46 ^ (v46 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v45 << 6) + (v45 >> 2)) ^ v45;
      v48 = 0xBF58476D1CE4E5B9 * (*v43 ^ (*v43 >> 30));
      v49 = (((0x94D049BB133111EBLL * (v48 ^ (v48 >> 27))) ^ ((0x94D049BB133111EBLL * (v48 ^ (v48 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v47 << 6) + (v47 >> 2)) ^ v47;
      v50 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v43[1] ^ (v43[1] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v43[1] ^ (v43[1] >> 30))) >> 27));
      v51 = ((v50 ^ (v50 >> 31)) - 0x61C8864680B583E9 + (v49 << 6) + (v49 >> 2)) ^ v49;
      v52 = 0xBF58476D1CE4E5B9 * (*(v43 + 3) ^ (*(v43 + 3) >> 30));
      v53 = (((0x94D049BB133111EBLL * (v52 ^ (v52 >> 27))) ^ ((0x94D049BB133111EBLL * (v52 ^ (v52 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v51 << 6) + (v51 >> 2)) ^ v51;
      if ((v43[1] & 0x70) == 0x30)
      {
        v54 = 0xBF58476D1CE4E5B9;
      }

      else
      {
        v54 = 0;
      }

      v3 = (((0x94D049BB133111EBLL * (v54 ^ (v54 >> 27))) ^ ((0x94D049BB133111EBLL * (v54 ^ (v54 >> 27))) >> 31)) - 0x61C8864680B583E9 + (v53 << 6) + (v53 >> 2)) ^ v53;
      v43 += 12;
      --v42;
    }

    while (v42);
  }

  return v3;
}

uint64_t re::RenderGraphDataStore::tryGet<re::CameraData>(uint64_t a1, uint64_t a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  {
    re::introspect<re::CameraData>(BOOL)::info = re::introspect_CameraData(0, v10, v11, v12, v13, v14);
  }

  v4 = strlen(*(re::introspect<re::CameraData>(BOOL)::info + 6));
  if (v4)
  {
    MurmurHash3_x64_128(*(re::introspect<re::CameraData>(BOOL)::info + 6), v4, 0, v15);
    v5 = (v15[1] - 0x61C8864680B583E9 + (v15[0] << 6) + (v15[0] >> 2)) ^ v15[0];
  }

  else
  {
    v5 = 0;
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 - 0x61C8864680B583E9 + (v5 << 6) + (v5 >> 2)) ^ v5;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

re::RenderGraphNodeCombineProcessor *re::RenderGraphNodeCombineProcessor::RenderGraphNodeCombineProcessor(re::RenderGraphNodeCombineProcessor *this, const char *a2)
{
  *this = &unk_1F5D04E90;
  *(this + 8) = 0;
  *(this + 2) = 0;
  *(this + 24) = 0;
  re::RenderGraphEncoderSplitLogBuffer::RenderGraphEncoderSplitLogBuffer((this + 32), a2);
  re::Defaults::intValue(v14, "encoderSplitLoggingPerFrame", v3);
  if (LOBYTE(v14[0]) != 1 || HIDWORD(v14[0]) == 0)
  {
    re::Defaults::intValue(v14, "encoderSplitLoggingOnChange", v5);
    if (LOBYTE(v14[0]) != 1 || HIDWORD(v14[0]) == 0)
    {
      *(this + 80) = 0;
      v10 = *re::graphicsLogObjects(v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14[0]) = 0;
        v9 = "Encoder Split: Logging Disabled.";
LABEL_17:
        _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, v9, v14, 2u);
      }
    }

    else
    {
      *(this + 80) = 1;
      v10 = *re::graphicsLogObjects(v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14[0]) = 0;
        v9 = "Encoder Split: Logging OnChange.";
        goto LABEL_17;
      }
    }
  }

  else
  {
    *(this + 80) = 2;
    v10 = *re::graphicsLogObjects(v4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      v9 = "Encoder Split: Logging PerFrame.";
      goto LABEL_17;
    }
  }

  return this;
}

uint64_t re::RenderGraphNodeCombineProcessor::process(re::RenderGraphNodeCombineProcessor *this, re::RenderGraphCompiled *a2)
{
  v225 = *MEMORY[0x1E69E9840];
  v193 = 0;
  v192 = 0;
  v191 = 0u;
  v194 = 0u;
  v195 = 0u;
  v197 = 0u;
  v198 = 0u;
  v196 = 0;
  v199 = 0;
  v200 = 0u;
  v201 = 0u;
  v202 = 0;
  memset(v203, 0, sizeof(v203));
  v204 = 0x7FFFFFFFLL;
  if (!*(a2 + 49))
  {
    goto LABEL_30;
  }

  v7 = this;
  if (*(this + 80))
  {
    *(this + 8) = 1;
    re::RenderGraphEncoderSplitLogBuffer::clear(this + 32);
    if (!*(a2 + 49))
    {
LABEL_309:
      *&v215 = 0;
      v222 = 0u;
      v223 = 0u;
      v220 = 0u;
      v221 = 0u;
      v219 = 0u;
      v135 = MEMORY[0x1E69E9C10];
      v136 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v224 = 136315906;
      *&v224[4] = "operator[]";
      *&v224[12] = 1024;
      if (v136)
      {
        v137 = 3;
      }

      else
      {
        v137 = 2;
      }

      *&v224[14] = 789;
      *&v224[18] = 2048;
      *&v224[20] = 0;
      *&v224[28] = 2048;
      *&v224[30] = 0;
      _os_log_send_and_compose_impl(v137, &v215, &v219, 80, &dword_1E1C61000, v135, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v170, v171);
      _os_crash_msg();
      __break(1u);
      goto LABEL_313;
    }
  }

  v2 = **(a2 + 51);
  v3 = *(a2 + 44);
  if (v3 <= v2)
  {
LABEL_313:
    *&v215 = 0;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v138 = MEMORY[0x1E69E9C10];
    v139 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v224 = 136315906;
    *&v224[4] = "operator[]";
    *&v224[12] = 1024;
    if (v139)
    {
      v140 = 3;
    }

    else
    {
      v140 = 2;
    }

    *&v224[14] = 789;
    *&v224[18] = 2048;
    *&v224[20] = v2;
    *&v224[28] = 2048;
    *&v224[30] = v3;
    _os_log_send_and_compose_impl(v140, &v215, &v219, 80, &dword_1E1C61000, v138, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v170, v171);
    _os_crash_msg();
    __break(1u);
    goto LABEL_317;
  }

  v2 = *(a2 + 46) + 200 * v2;
  v190 = 0;
  v187[1] = 0;
  v188 = 0;
  v187[0] = 0;
  v189 = 0;
  if (!*(v2 + 16))
  {
LABEL_317:
    *&v215 = 0;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v141 = MEMORY[0x1E69E9C10];
    v142 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v224 = 136315906;
    *&v224[4] = "operator[]";
    *&v224[12] = 1024;
    if (v142)
    {
      v143 = 3;
    }

    else
    {
      v143 = 2;
    }

    *&v224[14] = 789;
    *&v224[18] = 2048;
    *&v224[20] = 0;
    *&v224[28] = 2048;
    *&v224[30] = 0;
    _os_log_send_and_compose_impl(v143, &v215, &v219, 80, &dword_1E1C61000, v141, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v170, v171);
    _os_crash_msg();
    __break(1u);
LABEL_321:
    *&v215 = 0;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v144 = MEMORY[0x1E69E9C10];
    v145 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v224 = 136315906;
    *&v224[4] = "operator[]";
    *&v224[12] = 1024;
    if (v145)
    {
      v146 = 3;
    }

    else
    {
      v146 = 2;
    }

    *&v224[14] = 789;
    *&v224[18] = 2048;
    *&v224[20] = 0;
    *&v224[28] = 2048;
    *&v224[30] = 0;
    _os_log_send_and_compose_impl(v146, &v215, &v219, 80, &dword_1E1C61000, v144, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v170, v171);
    _os_crash_msg();
    __break(1u);
LABEL_325:
    *&v215 = 0;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v147 = MEMORY[0x1E69E9C10];
    v148 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v224 = 136315906;
    *&v224[4] = "operator[]";
    *&v224[12] = 1024;
    if (v148)
    {
      v149 = 3;
    }

    else
    {
      v149 = 2;
    }

    *&v224[14] = 789;
    *&v224[18] = 2048;
    *&v224[20] = 0;
    *&v224[28] = 2048;
    *&v224[30] = 0;
    _os_log_send_and_compose_impl(v149, &v215, &v219, 80, &dword_1E1C61000, v147, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v170, v171);
    _os_crash_msg();
    __break(1u);
    goto LABEL_329;
  }

  if ((*(***(v2 + 32) + 16))(**(v2 + 32)))
  {
    if (!*(v2 + 16))
    {
LABEL_345:
      *&v215 = 0;
      v222 = 0u;
      v223 = 0u;
      v220 = 0u;
      v221 = 0u;
      v219 = 0u;
      v162 = MEMORY[0x1E69E9C10];
      v163 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v224 = 136315906;
      *&v224[4] = "operator[]";
      *&v224[12] = 1024;
      if (v163)
      {
        v164 = 3;
      }

      else
      {
        v164 = 2;
      }

      *&v224[14] = 789;
      *&v224[18] = 2048;
      *&v224[20] = 0;
      *&v224[28] = 2048;
      *&v224[30] = 0;
      _os_log_send_and_compose_impl(v164, &v215, &v219, 80, &dword_1E1C61000, v162, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v170, v171);
      _os_crash_msg();
      __break(1u);
      goto LABEL_349;
    }

    *&v219 = (*(***(v2 + 32) + 16))(**(v2 + 32));
    re::DynamicArray<re::TransitionCondition *>::add(v187, &v219);
  }

  v186 = 0;
  v183[1] = 0;
  v184 = 0;
  v183[0] = 0;
  v185 = 0;
  if (!*(v2 + 16))
  {
    goto LABEL_321;
  }

  if ((*(***(v2 + 32) + 24))(**(v2 + 32)))
  {
    if (!*(v2 + 16))
    {
LABEL_349:
      *&v215 = 0;
      v222 = 0u;
      v223 = 0u;
      v220 = 0u;
      v221 = 0u;
      v219 = 0u;
      v165 = MEMORY[0x1E69E9C10];
      v166 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v224 = 136315906;
      *&v224[4] = "operator[]";
      *&v224[12] = 1024;
      if (v166)
      {
        v167 = 3;
      }

      else
      {
        v167 = 2;
      }

      *&v224[14] = 789;
      *&v224[18] = 2048;
      *&v224[20] = 0;
      *&v224[28] = 2048;
      *&v224[30] = 0;
      _os_log_send_and_compose_impl(v167, &v215, &v219, 80, &dword_1E1C61000, v165, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v170, v171);
      _os_crash_msg();
      __break(1u);
LABEL_353:
      re::internal::assertLog(5, v9, "assertion failure: '%s' (%s:line %i) Invalid RenderGraphResourceOperationType %d.", "!Unreachable code", "operator()", 131, v33);
      _os_crash("assertion failure: (!Unreachable code) Invalid RenderGraphResourceOperationType %d.", v168);
      __break(1u);
LABEL_354:
      re::internal::assertLog(5, v9, "assertion failure: '%s' (%s:line %i) Invalid RenderGraphResourceOperationType %d.", "!Unreachable code", "operator()", 306, v51);
      _os_crash("assertion failure: (!Unreachable code) Invalid RenderGraphResourceOperationType %d.", v169);
      __break(1u);
    }

    *&v219 = (*(***(v2 + 32) + 24))(**(v2 + 32));
    re::DynamicArray<re::TransitionCondition *>::add(v183, &v219);
  }

  if (!*(a2 + 49))
  {
    goto LABEL_325;
  }

  re::DynamicArray<int>::add(&v191, *(a2 + 51));
  if (!*(a2 + 59))
  {
LABEL_329:
    *&v215 = 0;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v150 = MEMORY[0x1E69E9C10];
    v151 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v224 = 136315906;
    *&v224[4] = "operator[]";
    *&v224[12] = 1024;
    if (v151)
    {
      v152 = 3;
    }

    else
    {
      v152 = 2;
    }

    *&v224[14] = 789;
    *&v224[18] = 2048;
    *&v224[20] = 0;
    *&v224[28] = 2048;
    *&v224[30] = 0;
    _os_log_send_and_compose_impl(v152, &v215, &v219, 80, &dword_1E1C61000, v150, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v170, v171);
    _os_crash_msg();
    __break(1u);
    goto LABEL_333;
  }

  re::DynamicArray<re::DynamicArray<unsigned int>>::add((&v197 + 8), *(a2 + 61));
  if (!*(a2 + 64))
  {
LABEL_333:
    *&v215 = 0;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v153 = MEMORY[0x1E69E9C10];
    v154 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v224 = 136315906;
    *&v224[4] = "operator[]";
    *&v224[12] = 1024;
    if (v154)
    {
      v155 = 3;
    }

    else
    {
      v155 = 2;
    }

    *&v224[14] = 789;
    *&v224[18] = 2048;
    *&v224[20] = 0;
    *&v224[28] = 2048;
    *&v224[30] = 0;
    _os_log_send_and_compose_impl(v155, &v215, &v219, 80, &dword_1E1C61000, v153, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v170, v171);
    _os_crash_msg();
    __break(1u);
    goto LABEL_337;
  }

  re::DynamicArray<re::DynamicArray<unsigned int>>::add((&v200 + 8), *(a2 + 66));
  if (!*(v2 + 16))
  {
LABEL_337:
    *&v215 = 0;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v156 = MEMORY[0x1E69E9C10];
    v157 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v224 = 136315906;
    *&v224[4] = "operator[]";
    *&v224[12] = 1024;
    if (v157)
    {
      v158 = 3;
    }

    else
    {
      v158 = 2;
    }

    *&v224[14] = 789;
    *&v224[18] = 2048;
    *&v224[20] = 0;
    *&v224[28] = 2048;
    *&v224[30] = 0;
    _os_log_send_and_compose_impl(v158, &v215, &v219, 80, &dword_1E1C61000, v156, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v170, v171);
    _os_crash_msg();
    __break(1u);
    goto LABEL_341;
  }

  if (!*(a2 + 49))
  {
LABEL_341:
    *&v215 = 0;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v159 = MEMORY[0x1E69E9C10];
    v160 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v224 = 136315906;
    *&v224[4] = "operator[]";
    *&v224[12] = 1024;
    if (v160)
    {
      v161 = 3;
    }

    else
    {
      v161 = 2;
    }

    *&v224[14] = 789;
    *&v224[18] = 2048;
    *&v224[20] = 0;
    *&v224[28] = 2048;
    *&v224[30] = 0;
    _os_log_send_and_compose_impl(v161, &v215, &v219, 80, &dword_1E1C61000, v159, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v170, v171);
    _os_crash_msg();
    __break(1u);
    goto LABEL_345;
  }

  v8 = *(v2 + 32);
  *&v219 = **(a2 + 51);
  re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::add(a2 + 656, v8, &v219);
  v10 = *(a2 + 49);
  if (v10 != 1)
  {
    v182 = 0;
    LODWORD(v3) = 0;
    v172 = v7;
    while (1)
    {
      v3 = (v3 + 1);
      if (v10 <= v3)
      {
        break;
      }

      v10 = *(*(a2 + 51) + 4 * v3);
      v4 = *(a2 + 44);
      if (v4 <= v10)
      {
        goto LABEL_253;
      }

      v4 = *(a2 + 46) + 200 * v10;
      v208 = 0;
      v205[1] = 0;
      v206 = 0;
      v205[0] = 0;
      v207 = 0;
      if ((*(v4 + 169) & 1) != 0 || *(v2 + 169) == 1)
      {
        re::RenderGraphEncoderSplitLogManager::logEntry(v7 + 8, 8uLL, a2, v2, v4, 0, 0);
LABEL_44:
        v10 = 0;
        goto LABEL_45;
      }

      LODWORD(v221) = 0;
      v219 = 0u;
      v220 = 0u;
      *(&v221 + 4) = 0x7FFFFFFFLL;
      memset(v224, 0, 36);
      *&v224[36] = 0x7FFFFFFFLL;
      v217 = 0;
      v215 = 0u;
      v216 = 0u;
      v218 = 0x7FFFFFFFLL;
      v213 = 0;
      v211 = 0u;
      v212 = 0u;
      v214 = 0x7FFFFFFFLL;
      v28 = *(v2 + 56);
      if (v28)
      {
        v5 = 0;
        v29 = 0;
        v30 = 0;
        v177 = 0;
        v178 = 0;
        v180 = 0;
        v181 = 0;
        v31 = *(v2 + 72);
        v32 = v28 << 6;
        v179 = 0xFFFFFFFFLL;
        while (1)
        {
          v33 = v31[1];
          if (v33 > 5)
          {
            break;
          }

          if (v33 <= 2)
          {
            if (v33)
            {
              if (v33 != 1)
              {
                if (v33 != 2)
                {
                  goto LABEL_353;
                }

                v34 = v31[13];
                v209 = v31;
                v210 = v34;
                re::HashTable<unsigned long,re::RenderGraphResourceOperation const*,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(&v215, &v210, &v209);
                v5 = 1;
                v181 = v31;
                goto LABEL_102;
              }

              v44 = *v31;
              v209 = v31;
              v210 = v44;
              v42 = &v219;
LABEL_100:
              re::HashTable<unsigned long,re::RenderGraphResourceOperation const*,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(v42, &v210, &v209);
              v45 = v31[13];
              v209 = v31;
              v210 = v45;
              re::HashTable<unsigned long,re::RenderGraphResourceOperation const*,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(&v215, &v210, &v209);
              v5 = 1;
              goto LABEL_102;
            }

LABEL_95:
            v40 = v31[13];
            v209 = v31;
            v210 = v40;
            re::HashTable<unsigned long,re::RenderGraphResourceOperation const*,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(&v211, &v210, &v209);
            goto LABEL_102;
          }

          if (v33 == 3)
          {
            v43 = v31[13];
            v209 = v31;
            v210 = v43;
            re::HashTable<unsigned long,re::RenderGraphResourceOperation const*,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(&v215, &v210, &v209);
            v5 = 1;
            v180 = v31;
            goto LABEL_102;
          }

          if (v33 == 4)
          {
            goto LABEL_94;
          }

          v36 = v31[13];
          v209 = v31;
          v210 = v36;
          re::HashTable<unsigned long,re::RenderGraphResourceOperation const*,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(&v211, &v210, &v209);
          v37 = v31[13];
          v209 = v31;
          v210 = v37;
          re::HashTable<unsigned long,re::RenderGraphResourceOperation const*,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(&v215, &v210, &v209);
          v29 = 1;
LABEL_102:
          v31 += 16;
          v32 -= 64;
          if (!v32)
          {
            goto LABEL_105;
          }
        }

        if (v33 <= 8)
        {
          if (v33 != 6)
          {
            if (v33 == 7)
            {
              v46 = v31[13];
              v209 = v31;
              v210 = v46;
              re::HashTable<unsigned long,re::RenderGraphResourceOperation const*,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(&v215, &v210, &v209);
              v5 = 1;
              v178 = v31;
            }

            else
            {
              v35 = v31[13];
              v209 = v31;
              v210 = v35;
              re::HashTable<unsigned long,re::RenderGraphResourceOperation const*,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(&v215, &v210, &v209);
              v5 = 1;
              v177 = v31;
            }

            goto LABEL_102;
          }

          v41 = *v31;
          v209 = v31;
          v210 = v41;
          v42 = v224;
          goto LABEL_100;
        }

        if (v33 == 9)
        {
          v179 = v31[13];
          goto LABEL_102;
        }

        if (v33 == 10)
        {
          goto LABEL_95;
        }

        if (v33 != 11)
        {
          goto LABEL_353;
        }

LABEL_94:
        v38 = v31[13];
        v209 = v31;
        v210 = v38;
        re::HashTable<unsigned long,re::RenderGraphResourceOperation const*,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(&v211, &v210, &v209);
        v39 = v31[13];
        v209 = v31;
        v210 = v39;
        re::HashTable<unsigned long,re::RenderGraphResourceOperation const*,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(&v215, &v210, &v209);
        v30 = 1;
        goto LABEL_102;
      }

      v180 = 0;
      v181 = 0;
      v177 = 0;
      v178 = 0;
      v30 = 0;
      v29 = 0;
      v5 = 0;
      v179 = 0xFFFFFFFFLL;
LABEL_105:
      v175 = v29;
      if (*(v4 + 56))
      {
        v47 = 0;
        v48 = 0;
        v173 = 0;
        v174 = 0;
        v49 = 0;
        v176 = 0;
        while (1)
        {
          v50 = (*(v4 + 72) + (v47 << 6));
          v51 = v50[1];
          if (v51 > 5)
          {
            if (v51 <= 8)
            {
              if (v51 != 6)
              {
                if (v51 != 7)
                {
                  v52 = v177;
                  if (!v177)
                  {
                    goto LABEL_205;
                  }

                  if (v177[13] != v50[13])
                  {
                    goto LABEL_190;
                  }

                  if (v177[10] != v50[10])
                  {
                    goto LABEL_209;
                  }

LABEL_151:
                  if (*(v50 + 32) == 1)
                  {
                    goto LABEL_191;
                  }

                  v49 = 1;
                  BYTE4(v173) = 1;
                  goto LABEL_176;
                }

                v52 = v178;
                if (!v178)
                {
                  goto LABEL_205;
                }

                if (v178[13] != v50[13])
                {
LABEL_190:
                  v7 = v172;
                  v71 = v172 + 8;
                  v72 = 1;
                  goto LABEL_210;
                }

                if (v178[9] != v50[9])
                {
LABEL_209:
                  v7 = v172;
                  v71 = v172 + 8;
                  v72 = 4;
LABEL_210:
                  v73 = a2;
                  v74 = v2;
                  v75 = v4;
LABEL_211:
                  v76 = v50;
                  goto LABEL_212;
                }

                goto LABEL_163;
              }

              if (*(v50 + 32) == 1)
              {
                goto LABEL_191;
              }

              v62 = *v50;
              v63 = v224;
              goto LABEL_157;
            }

            if (v51 != 9)
            {
              if (v51 != 10)
              {
                if (v51 != 11)
                {
                  goto LABEL_354;
                }

LABEL_133:
                if (!v211 || (v56 = v50[13], v57 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v56 ^ (v56 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v56 ^ (v56 >> 30))) >> 27)), v58 = *(*(&v211 + 1) + 4 * ((v57 ^ (v57 >> 31)) % DWORD2(v212))), v58 == 0x7FFFFFFF))
                {
LABEL_137:
                  v210 = v50;
                  re::DynamicArray<re::RigDataValue *>::add(v205, &v210);
                }

                else
                {
                  while (*(v212 + 32 * v58 + 8) != v56)
                  {
                    v58 = *(v212 + 32 * v58) & 0x7FFFFFFF;
                    if (v58 == 0x7FFFFFFF)
                    {
                      goto LABEL_137;
                    }
                  }
                }

                v176 = 1;
                goto LABEL_176;
              }

              if (v211)
              {
                v65 = v50[13];
                v66 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v65 ^ (v65 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v65 ^ (v65 >> 30))) >> 27));
                v67 = *(*(&v211 + 1) + 4 * ((v66 ^ (v66 >> 31)) % DWORD2(v212)));
                if (v67 != 0x7FFFFFFF)
                {
                  while (*(v212 + 32 * v67 + 8) != v65)
                  {
                    v67 = *(v212 + 32 * v67) & 0x7FFFFFFF;
                    if (v67 == 0x7FFFFFFF)
                    {
                      goto LABEL_175;
                    }
                  }

                  goto LABEL_176;
                }
              }

LABEL_175:
              v210 = v50;
              re::DynamicArray<re::RigDataValue *>::add(v205, &v210);
              goto LABEL_176;
            }

            if (v179 != v50[13])
            {
              v7 = v172;
              v71 = v172 + 8;
              v72 = 12;
              goto LABEL_189;
            }

            LODWORD(v173) = 1;
          }

          else
          {
            if (v51 <= 2)
            {
              if (!v51)
              {
                if ((atomic_load_explicit(&qword_1EE1B88F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B88F0))
                {
                  re::Defaults::BOOLValue(&v210, "disableComputeReadAfterWrite", v9);
                  if (v210)
                  {
                    v70 = BYTE1(v210);
                  }

                  else
                  {
                    v70 = 0;
                  }

                  _MergedGlobals_443 = v70;
                  __cxa_guard_release(&qword_1EE1B88F0);
                }

                if ((v175 & 1) != 0 && (_MergedGlobals_443 & 1) == 0)
                {
                  v59 = v50[13];
                }

                else
                {
                  v59 = v50[13];
                  if (v215)
                  {
                    v60 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v59 ^ (v59 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v59 ^ (v59 >> 30))) >> 27));
                    v61 = *(*(&v215 + 1) + 4 * ((v60 ^ (v60 >> 31)) % DWORD2(v216)));
                    if (v61 != 0x7FFFFFFF)
                    {
                      while (*(v216 + 32 * v61 + 8) != v59)
                      {
                        v61 = *(v216 + 32 * v61) & 0x7FFFFFFF;
                        if (v61 == 0x7FFFFFFF)
                        {
                          goto LABEL_171;
                        }
                      }

                      v7 = v172;
                      v71 = v172 + 8;
                      v72 = 11;
                      goto LABEL_208;
                    }
                  }
                }

LABEL_171:
                if (v211)
                {
                  v68 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v59 ^ (v59 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v59 ^ (v59 >> 30))) >> 27));
                  v69 = *(*(&v211 + 1) + 4 * ((v68 ^ (v68 >> 31)) % DWORD2(v212)));
                  if (v69 != 0x7FFFFFFF)
                  {
                    while (*(v212 + 32 * v69 + 8) != v59)
                    {
                      v69 = *(v212 + 32 * v69) & 0x7FFFFFFF;
                      if (v69 == 0x7FFFFFFF)
                      {
                        goto LABEL_175;
                      }
                    }

                    goto LABEL_176;
                  }
                }

                goto LABEL_175;
              }

              if (v51 != 1)
              {
                if (v51 != 2)
                {
                  goto LABEL_354;
                }

                v52 = v181;
                if (!v181)
                {
LABEL_205:
                  v7 = v172;
                  v71 = v172 + 8;
                  v72 = 3;
                  goto LABEL_210;
                }

                if (v181[13] != v50[13])
                {
                  goto LABEL_190;
                }

LABEL_163:
                if (*(v50 + 32) == 1)
                {
LABEL_191:
                  v7 = v172;
                  v71 = v172 + 8;
                  v72 = 0;
LABEL_208:
                  v73 = a2;
                  v74 = v2;
                  v75 = v4;
                  v52 = 0;
                  goto LABEL_211;
                }

                v49 = 1;
                LOBYTE(v174) = 1;
                goto LABEL_176;
              }

              if (*(v50 + 32) == 1)
              {
                goto LABEL_191;
              }

              v62 = *v50;
              v63 = &v219;
LABEL_157:
              v64 = re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v63, v62);
              if (!v64)
              {
                v7 = v172;
                v71 = v172 + 8;
                v72 = 2;
                goto LABEL_208;
              }

              v52 = *v64;
              if (*(*v64 + 52) != v50[13])
              {
                goto LABEL_190;
              }

              v49 = 1;
              goto LABEL_176;
            }

            if (v51 == 3)
            {
              v52 = v180;
              if (!v180)
              {
                goto LABEL_205;
              }

              if (v180[13] != v50[13])
              {
                goto LABEL_190;
              }

              goto LABEL_151;
            }

            if (v51 == 4)
            {
              goto LABEL_133;
            }

            if (!v211 || (v53 = v50[13], v54 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v53 ^ (v53 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v53 ^ (v53 >> 30))) >> 27)), v55 = *(*(&v211 + 1) + 4 * ((v54 ^ (v54 >> 31)) % DWORD2(v212))), v55 == 0x7FFFFFFF))
            {
LABEL_128:
              v210 = v50;
              re::DynamicArray<re::RigDataValue *>::add(v205, &v210);
            }

            else
            {
              while (*(v212 + 32 * v55 + 8) != v53)
              {
                v55 = *(v212 + 32 * v55) & 0x7FFFFFFF;
                if (v55 == 0x7FFFFFFF)
                {
                  goto LABEL_128;
                }
              }
            }

            HIDWORD(v174) = 1;
          }

LABEL_176:
          v47 = ++v48;
          if (*(v4 + 56) <= v48)
          {
            goto LABEL_184;
          }
        }
      }

      v173 = 0;
      v174 = 0;
      v176 = 0;
      v49 = 0;
LABEL_184:
      v7 = v172;
      if ((v5 | v175 | v30) & 1) != 0 && ((v49 | HIDWORD(v174) | v176))
      {
        if (v5 & v175 & v30 & 1) != 0 || (v49 & HIDWORD(v174) & v176 & 1) != 0 || ((v5 ^ v49) & 1) != 0 || ((v175 ^ HIDWORD(v174)) & 1) != 0 || ((v30 ^ v176))
        {
          v71 = v172 + 8;
          v72 = 13;
LABEL_189:
          v73 = a2;
          v74 = v2;
          v75 = v4;
          v52 = 0;
          v76 = 0;
LABEL_212:
          re::RenderGraphEncoderSplitLogManager::logEntry(v71, v72, v73, v74, v75, v52, v76);
          goto LABEL_213;
        }

        if (!((v181 == 0) | v174 & 1))
        {
          v71 = v172 + 8;
          v72 = 9;
          goto LABEL_189;
        }

        if (!((v180 == 0) | BYTE4(v173) & 1))
        {
          v77 = v172 + 8;
          v78 = 10;
          goto LABEL_221;
        }

        if (*(v2 + 160) != *(v4 + 160))
        {
          v77 = v172 + 8;
          v78 = 14;
          goto LABEL_221;
        }

        if ((((v179 == 0xFFFFFFFFLL) ^ v173) & 1) == 0)
        {
          v77 = v172 + 8;
          v78 = 12;
          goto LABEL_221;
        }

        if (!((*(v2 + 176) == *(v4 + 176)) | v175 & 1))
        {
          v77 = v172 + 8;
          v78 = 5;
          goto LABEL_221;
        }

        if (*(v2 + 184) != *(v4 + 184))
        {
          v77 = v172 + 8;
          v78 = 15;
LABEL_221:
          re::RenderGraphEncoderSplitLogManager::logEntry(v77, v78, a2, v2, v4, 0, 0);
LABEL_213:
          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v211);
          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v215);
          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v224);
          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v219);
          goto LABEL_44;
        }

        if (*(v2 + 192) && *(v4 + 192) && *(v2 + 192) != *(v4 + 192))
        {
          v77 = v172 + 8;
          v78 = 6;
          goto LABEL_221;
        }

        if (*(v2 + 171) != *(v4 + 171))
        {
          v71 = v172 + 8;
          v72 = 7;
          goto LABEL_189;
        }
      }

      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v211);
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v215);
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v224);
      v79.n128_f64[0] = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v219);
      v80 = *(v4 + 16);
      if (v80)
      {
        v81 = *(v4 + 32);
        v5 = &v81[v80];
        do
        {
          *&v219 = *v81;
          if ((*(*v219 + 16))(v219, v79))
          {
            v82 = (*(*v219 + 16))(v219);
            if (v188)
            {
              v83 = 8 * v188;
              v84 = v190;
              while (*v84 != v82)
              {
                ++v84;
                v83 -= 8;
                if (!v83)
                {
                  goto LABEL_233;
                }
              }
            }

            else
            {
              v84 = v190;
            }

            if (v84 == &v190[v188])
            {
LABEL_233:
              *v224 = *(v2 + 16);
              re::DynamicArray<unsigned long>::add((v2 + 80), v224);
              *v224 = (*(*v219 + 16))(v219);
              re::DynamicArray<re::TransitionCondition *>::add(v187, v224);
            }
          }

          if ((*(*v219 + 24))(v219))
          {
            v85 = (*(*v219 + 24))(v219);
            if (v184)
            {
              v86 = 8 * v184;
              v87 = v186;
              while (*v87 != v85)
              {
                ++v87;
                v86 -= 8;
                if (!v86)
                {
                  goto LABEL_242;
                }
              }
            }

            else
            {
              v87 = v186;
            }

            if (v87 == &v186[v184])
            {
LABEL_242:
              *v224 = *(v2 + 16);
              re::DynamicArray<unsigned long>::add((v2 + 120), v224);
              *v224 = (*(*v219 + 24))(v219);
              re::DynamicArray<re::TransitionCondition *>::add(v183, v224);
            }
          }

          re::DynamicArray<re::TransitionCondition *>::add(v2, &v219);
          ++v81;
        }

        while (v81 != v5);
      }

      if (v206)
      {
        v88 = v208;
        v5 = 8 * v206;
        do
        {
          v89 = *v88++;
          re::DynamicArray<re::RigTransform>::add((v2 + 40), v89);
          v5 -= 8;
        }

        while (v5);
      }

      *(v2 + 170) = (*(v4 + 170) | *(v2 + 170)) & 1;
      v10 = 1;
LABEL_45:
      if (v205[0] && v208)
      {
        (*(*v205[0] + 40))();
      }

      if (v10)
      {
        v10 = *(a2 + 59);
        if (v10 <= v3)
        {
          goto LABEL_261;
        }

        v18 = *(a2 + 61) + 40 * v3;
        v19 = *(v18 + 16);
        if (v19)
        {
          v20 = *(v18 + 32);
          v5 = 4 * v19;
          do
          {
            v21 = *v20++;
            LODWORD(v219) = v21;
            re::DynamicArray<int>::add((v200 + 40 * *(&v198 + 1) - 40), &v219);
            v5 -= 4;
          }

          while (v5);
        }

        v10 = *(a2 + 64);
        if (v10 <= v3)
        {
          goto LABEL_265;
        }

        v22 = *(a2 + 66) + 40 * v3;
        v23 = *(v22 + 16);
        if (v23)
        {
          v10 = *(v22 + 32);
          v5 = 4 * v23;
          do
          {
            v24 = *v10;
            v10 += 4;
            LODWORD(v219) = v24;
            re::DynamicArray<int>::add((*v203 + 40 * *(&v201 + 1) - 40), &v219);
            v5 -= 4;
          }

          while (v5);
        }

        if (!*(v4 + 16))
        {
          goto LABEL_273;
        }

        v10 = v182;
        v5 = *(a2 + 49);
        if (v5 <= v182)
        {
          goto LABEL_277;
        }

        v25 = *(v4 + 32);
        v26 = *(v2 + 16) - 1;
        LODWORD(v219) = *(*(a2 + 51) + 4 * v182);
        DWORD1(v219) = v26;
        re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::add(a2 + 656, v25, &v219);
      }

      else
      {
        v188 = 0;
        ++v189;
        if (!*(v4 + 16))
        {
          goto LABEL_257;
        }

        if ((*(***(v4 + 32) + 16))(**(v4 + 32)))
        {
          if (!*(v4 + 16))
          {
            goto LABEL_301;
          }

          *&v219 = (*(***(v4 + 32) + 16))(**(v4 + 32));
          re::DynamicArray<re::TransitionCondition *>::add(v187, &v219);
        }

        v184 = 0;
        ++v185;
        if (!*(v4 + 16))
        {
          goto LABEL_269;
        }

        if ((*(***(v4 + 32) + 24))(**(v4 + 32)))
        {
          if (!*(v4 + 16))
          {
            goto LABEL_305;
          }

          *&v219 = (*(***(v4 + 32) + 24))(**(v4 + 32));
          re::DynamicArray<re::TransitionCondition *>::add(v183, &v219);
        }

        v2 = *(a2 + 49);
        if (v2 <= v3)
        {
          goto LABEL_281;
        }

        re::DynamicArray<int>::add(&v191, (*(a2 + 51) + 4 * v3));
        v2 = *(a2 + 59);
        if (v2 <= v3)
        {
          goto LABEL_285;
        }

        re::DynamicArray<re::DynamicArray<unsigned int>>::add((&v197 + 8), (*(a2 + 61) + 40 * v3));
        v2 = *(a2 + 64);
        if (v2 <= v3)
        {
          goto LABEL_289;
        }

        re::DynamicArray<re::DynamicArray<unsigned int>>::add((&v200 + 8), (*(a2 + 66) + 40 * v3));
        if (!*(v4 + 16))
        {
          goto LABEL_293;
        }

        v2 = *(a2 + 49);
        if (v2 <= v3)
        {
          goto LABEL_297;
        }

        v27 = *(v4 + 32);
        *&v219 = *(*(a2 + 51) + 4 * v3);
        re::HashTable<re::RenderGraphNodeBase *,re::NodeSetupIndex,re::Hash<re::RenderGraphNodeBase *>,re::EqualTo<re::RenderGraphNodeBase *>,true,false>::add(a2 + 656, v27, &v219);
        v182 = v3;
        v2 = v4;
      }

      v10 = *(a2 + 49);
      if (v10 - 1 <= v3)
      {
        goto LABEL_19;
      }
    }

    *&v215 = 0;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v90 = MEMORY[0x1E69E9C10];
    v91 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v224 = 136315906;
    *&v224[4] = "operator[]";
    *&v224[12] = 1024;
    if (v91)
    {
      v92 = 3;
    }

    else
    {
      v92 = 2;
    }

    *&v224[14] = 789;
    *&v224[18] = 2048;
    *&v224[20] = v3;
    *&v224[28] = 2048;
    *&v224[30] = v10;
    _os_log_send_and_compose_impl(v92, &v215, &v219, 80, &dword_1E1C61000, v90, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v170, v171);
    _os_crash_msg();
    __break(1u);
LABEL_253:
    *&v215 = 0;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v93 = MEMORY[0x1E69E9C10];
    v94 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v224 = 136315906;
    *&v224[4] = "operator[]";
    *&v224[12] = 1024;
    if (v94)
    {
      v95 = 3;
    }

    else
    {
      v95 = 2;
    }

    *&v224[14] = 789;
    *&v224[18] = 2048;
    *&v224[20] = v10;
    *&v224[28] = 2048;
    *&v224[30] = v4;
    _os_log_send_and_compose_impl(v95, &v215, &v219, 80, &dword_1E1C61000, v93, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v170, v171);
    _os_crash_msg();
    __break(1u);
LABEL_257:
    *&v215 = 0;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v96 = MEMORY[0x1E69E9C10];
    v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v224 = 136315906;
    *&v224[4] = "operator[]";
    *&v224[12] = 1024;
    if (v97)
    {
      v98 = 3;
    }

    else
    {
      v98 = 2;
    }

    *&v224[14] = 789;
    *&v224[18] = 2048;
    *&v224[20] = 0;
    *&v224[28] = 2048;
    *&v224[30] = 0;
    _os_log_send_and_compose_impl(v98, &v215, &v219, 80, &dword_1E1C61000, v96, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v170, v171);
    _os_crash_msg();
    __break(1u);
LABEL_261:
    *&v215 = 0;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v99 = MEMORY[0x1E69E9C10];
    v100 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v224 = 136315906;
    *&v224[4] = "operator[]";
    *&v224[12] = 1024;
    if (v100)
    {
      v101 = 3;
    }

    else
    {
      v101 = 2;
    }

    *&v224[14] = 789;
    *&v224[18] = 2048;
    *&v224[20] = v3;
    *&v224[28] = 2048;
    *&v224[30] = v10;
    _os_log_send_and_compose_impl(v101, &v215, &v219, 80, &dword_1E1C61000, v99, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v170, v171);
    _os_crash_msg();
    __break(1u);
LABEL_265:
    *&v215 = 0;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v102 = MEMORY[0x1E69E9C10];
    v103 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v224 = 136315906;
    *&v224[4] = "operator[]";
    *&v224[12] = 1024;
    if (v103)
    {
      v104 = 3;
    }

    else
    {
      v104 = 2;
    }

    *&v224[14] = 789;
    *&v224[18] = 2048;
    *&v224[20] = v3;
    *&v224[28] = 2048;
    *&v224[30] = v10;
    _os_log_send_and_compose_impl(v104, &v215, &v219, 80, &dword_1E1C61000, v102, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v170, v171);
    _os_crash_msg();
    __break(1u);
LABEL_269:
    *&v215 = 0;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v105 = MEMORY[0x1E69E9C10];
    v106 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v224 = 136315906;
    *&v224[4] = "operator[]";
    *&v224[12] = 1024;
    if (v106)
    {
      v107 = 3;
    }

    else
    {
      v107 = 2;
    }

    *&v224[14] = 789;
    *&v224[18] = 2048;
    *&v224[20] = 0;
    *&v224[28] = 2048;
    *&v224[30] = 0;
    _os_log_send_and_compose_impl(v107, &v215, &v219, 80, &dword_1E1C61000, v105, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v170, v171);
    _os_crash_msg();
    __break(1u);
LABEL_273:
    *&v215 = 0;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v108 = MEMORY[0x1E69E9C10];
    v109 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v224 = 136315906;
    *&v224[4] = "operator[]";
    *&v224[12] = 1024;
    if (v109)
    {
      v110 = 3;
    }

    else
    {
      v110 = 2;
    }

    *&v224[14] = 789;
    *&v224[18] = 2048;
    *&v224[20] = 0;
    *&v224[28] = 2048;
    *&v224[30] = 0;
    _os_log_send_and_compose_impl(v110, &v215, &v219, 80, &dword_1E1C61000, v108, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v170, v171);
    _os_crash_msg();
    __break(1u);
LABEL_277:
    *&v215 = 0;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v111 = MEMORY[0x1E69E9C10];
    v112 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v224 = 136315906;
    *&v224[4] = "operator[]";
    *&v224[12] = 1024;
    if (v112)
    {
      v113 = 3;
    }

    else
    {
      v113 = 2;
    }

    *&v224[14] = 789;
    *&v224[18] = 2048;
    *&v224[20] = v10;
    *&v224[28] = 2048;
    *&v224[30] = v5;
    _os_log_send_and_compose_impl(v113, &v215, &v219, 80, &dword_1E1C61000, v111, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v170, v171);
    _os_crash_msg();
    __break(1u);
LABEL_281:
    *&v215 = 0;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v114 = MEMORY[0x1E69E9C10];
    v115 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v224 = 136315906;
    *&v224[4] = "operator[]";
    *&v224[12] = 1024;
    if (v115)
    {
      v116 = 3;
    }

    else
    {
      v116 = 2;
    }

    *&v224[14] = 789;
    *&v224[18] = 2048;
    *&v224[20] = v3;
    *&v224[28] = 2048;
    *&v224[30] = v2;
    _os_log_send_and_compose_impl(v116, &v215, &v219, 80, &dword_1E1C61000, v114, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v170, v171);
    _os_crash_msg();
    __break(1u);
LABEL_285:
    *&v215 = 0;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v117 = MEMORY[0x1E69E9C10];
    v118 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v224 = 136315906;
    *&v224[4] = "operator[]";
    *&v224[12] = 1024;
    if (v118)
    {
      v119 = 3;
    }

    else
    {
      v119 = 2;
    }

    *&v224[14] = 789;
    *&v224[18] = 2048;
    *&v224[20] = v3;
    *&v224[28] = 2048;
    *&v224[30] = v2;
    _os_log_send_and_compose_impl(v119, &v215, &v219, 80, &dword_1E1C61000, v117, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v170, v171);
    _os_crash_msg();
    __break(1u);
LABEL_289:
    *&v215 = 0;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v120 = MEMORY[0x1E69E9C10];
    v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v224 = 136315906;
    *&v224[4] = "operator[]";
    *&v224[12] = 1024;
    if (v121)
    {
      v122 = 3;
    }

    else
    {
      v122 = 2;
    }

    *&v224[14] = 789;
    *&v224[18] = 2048;
    *&v224[20] = v3;
    *&v224[28] = 2048;
    *&v224[30] = v2;
    _os_log_send_and_compose_impl(v122, &v215, &v219, 80, &dword_1E1C61000, v120, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v170, v171);
    _os_crash_msg();
    __break(1u);
LABEL_293:
    *&v215 = 0;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v123 = MEMORY[0x1E69E9C10];
    v124 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v224 = 136315906;
    *&v224[4] = "operator[]";
    *&v224[12] = 1024;
    if (v124)
    {
      v125 = 3;
    }

    else
    {
      v125 = 2;
    }

    *&v224[14] = 789;
    *&v224[18] = 2048;
    *&v224[20] = 0;
    *&v224[28] = 2048;
    *&v224[30] = 0;
    _os_log_send_and_compose_impl(v125, &v215, &v219, 80, &dword_1E1C61000, v123, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v170, v171);
    _os_crash_msg();
    __break(1u);
LABEL_297:
    *&v215 = 0;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v126 = MEMORY[0x1E69E9C10];
    v127 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v224 = 136315906;
    *&v224[4] = "operator[]";
    *&v224[12] = 1024;
    if (v127)
    {
      v128 = 3;
    }

    else
    {
      v128 = 2;
    }

    *&v224[14] = 789;
    *&v224[18] = 2048;
    *&v224[20] = v3;
    *&v224[28] = 2048;
    *&v224[30] = v2;
    _os_log_send_and_compose_impl(v128, &v215, &v219, 80, &dword_1E1C61000, v126, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v170, v171);
    _os_crash_msg();
    __break(1u);
LABEL_301:
    *&v215 = 0;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v129 = MEMORY[0x1E69E9C10];
    v130 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v224 = 136315906;
    *&v224[4] = "operator[]";
    *&v224[12] = 1024;
    if (v130)
    {
      v131 = 3;
    }

    else
    {
      v131 = 2;
    }

    *&v224[14] = 789;
    *&v224[18] = 2048;
    *&v224[20] = 0;
    *&v224[28] = 2048;
    *&v224[30] = 0;
    _os_log_send_and_compose_impl(v131, &v215, &v219, 80, &dword_1E1C61000, v129, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v170, v171);
    _os_crash_msg();
    __break(1u);
LABEL_305:
    *&v215 = 0;
    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v219 = 0u;
    v132 = MEMORY[0x1E69E9C10];
    v133 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v224 = 136315906;
    *&v224[4] = "operator[]";
    *&v224[12] = 1024;
    if (v133)
    {
      v134 = 3;
    }

    else
    {
      v134 = 2;
    }

    *&v224[14] = 789;
    *&v224[18] = 2048;
    *&v224[20] = 0;
    *&v224[28] = 2048;
    *&v224[30] = 0;
    _os_log_send_and_compose_impl(v134, &v215, &v219, 80, &dword_1E1C61000, v132, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v224, 38, v170, v171);
    _os_crash_msg();
    __break(1u);
    goto LABEL_309;
  }

LABEL_19:
  v11 = *(a2 + 54);
  if (v11)
  {
    v12 = *(a2 + 56);
    v13 = 4 * v11;
    do
    {
      v14 = *v12++;
      LODWORD(v219) = v14;
      re::DynamicArray<int>::add((&v194 + 8), &v219);
      v13 -= 4;
    }

    while (v13);
  }

  re::DynamicArray<re::RigComponentConstraint>::operator=(a2 + 376, &v191);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a2 + 456, &v197 + 1);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a2 + 496, &v200 + 1);
  re::DynamicArray<re::RigComponentConstraint>::operator=(a2 + 416, &v194 + 1);
  re::RenderGraphProcessor::updateTextureLifetimes(a2, v15);
  v16 = *(v7 + 80);
  if (*(v7 + 80))
  {
    *(v7 + 8) = 0;
    re::RenderGraphEncoderSplitLogManager::save((v7 + 8), v16 == 2);
  }

  if (v183[0] && v186)
  {
    (*(*v183[0] + 40))();
  }

  if (v187[0] && v190)
  {
    (*(*v187[0] + 40))();
  }

LABEL_30:
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v203[8]);
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(&v200 + 8);
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(&v197 + 8);
  if (*(&v194 + 1))
  {
    if (v197)
    {
      (*(**(&v194 + 1) + 40))();
    }

    *&v197 = 0;
    v195 = 0uLL;
    *(&v194 + 1) = 0;
    ++v196;
  }

  result = v191;
  if (v191)
  {
    if (v194)
    {
      return (*(*v191 + 40))();
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::DynamicArray<unsigned int>>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::DynamicArray<unsigned int>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::DynamicArray<float>::DynamicArray(*(this + 4) + 40 * v4, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::RenderGraphNodeCombineProcessor::~RenderGraphNodeCombineProcessor(re::RenderGraphNodeCombineProcessor *this)
{
  re::DynamicArray<re::DynamicString>::deinit(this + 32);
}

{
  re::DynamicArray<re::DynamicString>::deinit(this + 32);

  JUMPOUT(0x1E6906520);
}

uint64_t re::HashTable<unsigned long,re::RenderGraphResourceOperation const*,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addOrReplace(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v10, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  v8 = HIDWORD(v11);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long long,re::ecs2::Scene const*,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v11, v10);
    v9 = *a3;
    *(result + 8) = *a2;
    *(result + 16) = v9;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    *(*(a1 + 16) + 32 * v8 + 16) = *a3;
  }

  return result;
}

uint64_t usePlacementHeaps(void)
{
  if ((atomic_load_explicit(&qword_1EE1B8900, memory_order_acquire) & 1) == 0)
  {
    v6 = v0;
    v7 = v1;
    if (__cxa_guard_acquire(&qword_1EE1B8900))
    {
      re::Defaults::BOOLValue(v5, "usePlacementHeaps", v3);
      if (v5[0])
      {
        v4 = v5[1];
      }

      else
      {
        v4 = 1;
      }

      _MergedGlobals_444 = v4;
      __cxa_guard_release(&qword_1EE1B8900);
    }
  }

  return _MergedGlobals_444;
}

void DeviceHeap::~DeviceHeap(id *this)
{
  *this = &unk_1F5D04ED0;
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit((this + 12));
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit((this + 7));
  re::DynamicString::deinit((this + 3));
}

{
  DeviceHeap::~DeviceHeap(this);

  JUMPOUT(0x1E6906520);
}

uint64_t DeviceHeap::makeTexture(uint64_t a1, id *a2)
{
  re::mtl::Device::makeTexture(&v5, *a2, (a1 + 16));
  if (!v5)
  {
    return -1;
  }

  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((a1 + 56), &v5);
  v3 = *(a1 + 72) - 1;
  if (v5)
  {
  }

  return v3;
}

void DeviceHeap::releaseTexture(DeviceHeap *this, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(this + 9);
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

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(this + 11);

  *(v4 + 8 * a2) = 0;
}

uint64_t DeviceHeap::makeBuffer(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 0xFFFF)
  {
    v4 = 0;
  }

  else
  {
    v4 = a3;
  }

  v5 = [*(a1 + 16) newBufferWithLength:a2 options:v4];
  v9 = v5;
  if (!v5)
  {
    return -1;
  }

  v6 = v5;
  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((a1 + 96), &v9);
  v7 = *(a1 + 112) - 1;

  return v7;
}

void DeviceHeap::releaseBuffer(DeviceHeap *this, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(this + 14);
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

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(this + 16);

  *(v4 + 8 * a2) = 0;
}

void DeviceHeap::onFrameFinish(DeviceHeap *this)
{
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear(this + 56);

  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear(this + 96);
}

void MetalHeap::init(uint64_t a1, void *a2, id *a3, uint64_t a4, int a5)
{
  v13[0] = a2;
  v13[1] = strlen(a2);
  re::DynamicString::operator=((a1 + 32), v13);
  v9 = [objc_msgSend(MEMORY[0x1E69740E8] alloc)];
  [v9 setStorageMode_];
  [v9 setSize_];
  v13[0] = [*a3 newHeapWithDescriptor_];
  NS::SharedPtr<MTL::Texture>::operator=((a1 + 16), v13);
  if (v13[0])
  {
  }

  v10 = re::ObjCObject::operator=((a1 + 24), a3);
  *(a1 + 8) = 2;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 64), 0);
  ++*(a1 + 88);
  *(a1 + 108) = a5;
  v11 = re::DataArray<MetalHeap::TextureEntry>::allocBlock((a1 + 64));
  v12 = a1 + 128;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v12, 0);
  ++*(v12 + 24);
  *(v12 + 44) = a5;
  re::DataArray<MetalHeap::TextureEntry>::allocBlock(v12);
  if (v9)
  {
  }
}

void MetalHeap::~MetalHeap(id *this)
{
  v27 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5D04F60;

  this[2] = 0;
  if (*(this + 43))
  {
    v2 = re::DataArray<MetalHeap::TextureEntry>::clear(this + 16);
    if (!this[18])
    {
      v13 = 0;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      v7 = MEMORY[0x1E69E9C10];
      v14 = 136315906;
      v15 = "operator[]";
      v16 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }

      v17 = 789;
      v18 = 2048;
      v19 = 0;
      v20 = 2048;
      v21 = 0;
      _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
      _os_crash_msg();
      __break(1u);
      goto LABEL_14;
    }

    v3 = this[20];
    (*(*this[16] + 40))(this[16], *v3, v2);
    (*(*this[16] + 40))(this[16], v3[1]);
    re::DynamicArray<unsigned long>::deinit((this + 16));
    *(this + 43) = 0;
  }

  re::DynamicArray<unsigned long>::deinit((this + 16));
  if (!*(this + 27))
  {
    goto LABEL_7;
  }

  v4 = re::DataArray<MetalHeap::TextureEntry>::clear(this + 8);
  if (!this[10])
  {
LABEL_14:
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v17 = 789;
    v18 = 2048;
    v19 = 0;
    v20 = 2048;
    v21 = 0;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v5 = this[12];
  (*(*this[8] + 40))(this[8], *v5, v4);
  (*(*this[8] + 40))(this[8], v5[1]);
  re::DynamicArray<unsigned long>::deinit((this + 8));
  *(this + 27) = 0;
LABEL_7:
  re::DynamicArray<unsigned long>::deinit((this + 8));
  re::DynamicString::deinit((this + 4));

  v6 = this[2];
  if (v6)
  {

    this[2] = 0;
  }
}

{
  MetalHeap::~MetalHeap(this);

  JUMPOUT(0x1E6906520);
}

unint64_t MetalHeap::makeTexture(uint64_t a1, void *a2, char a3, uint64_t *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = [*(a1 + 16) newTextureWithDescriptor_];
  if (!v7)
  {
    return -1;
  }

  v8 = v7;
  v9 = [*(a1 + 16) maxAvailableSizeWithAlignment_];
  if (v9 < *(a1 + 192))
  {
    *(a1 + 192) = v9;
    *(a1 + 200) = [*(a1 + 16) usedSize];
  }

  v10 = v8;
  v12 = v10;
  if (v10)
  {
  }

  v13 = *a4;
  v14 = *(a1 + 120);
  if ((v14 + 1) >> 24)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14 + 1;
  }

  *(a1 + 120) = v15;
  v16 = *(a1 + 116);
  v17 = *(a1 + 118);
  if (v16 != 0xFFFF || v17 != 0xFFFF)
  {
    v22 = *(a1 + 80);
    if (v22 > v17)
    {
      v23 = (*(a1 + 96) + 16 * v17);
      *(v23[1] + 4 * v16) = v15;
      v20 = *v23 + 24 * v16;
      *(a1 + 116) = *v20;
      goto LABEL_19;
    }

    v33 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v25 = MEMORY[0x1E69E9C10];
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v37 = 789;
    v38 = 2048;
    v39 = v17;
    v40 = 2048;
    v41 = v22;
    _os_log_send_and_compose_impl(v26, &v33, &v42, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v31, v32);
    _os_crash_msg();
    __break(1u);
    goto LABEL_27;
  }

  if (*(a1 + 112) >= *(a1 + 108))
  {
    re::DataArray<MetalHeap::TextureEntry>::allocBlock((a1 + 64));
  }

  v18 = *(a1 + 80);
  v17 = (v18 - 1);
  if (!v18)
  {
LABEL_27:
    v33 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v27 = MEMORY[0x1E69E9C10];
    v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (v28)
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    v37 = 789;
    v38 = 2048;
    v39 = v17;
    v40 = 2048;
    v41 = 0;
    _os_log_send_and_compose_impl(v29, &v33, &v42, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v31, v32);
    _os_crash_msg();
    __break(1u);
LABEL_31:
    re::internal::assertLog(5, v11, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v16);
    _os_crash("assertion failure: (!overflow) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", v30);
    __break(1u);
  }

  v16 = *(a1 + 112);
  if (v16 >= 0x10000)
  {
    goto LABEL_31;
  }

  v19 = (*(a1 + 96) + 16 * v17);
  *(a1 + 112) = v16 + 1;
  *(v19[1] + 4 * v16) = *(a1 + 120);
  v20 = *v19 + 24 * v16;
LABEL_19:
  ++*(a1 + 104);
  *v20 = v12;
  *(v20 + 8) = a3;
  *(v20 + 16) = v13;
  v21 = v16 + (v17 << 16) + ((*(a1 + 120) & 0xFFFFFF) << 32);
  if (v12)
  {
  }

  return v21;
}

double MetalHeap::releaseTexture(MetalHeap *this, unint64_t a2)
{
  v4 = re::DataArray<re::TextureAtlasTile>::get(this + 64, a2);
  if ((*(v4 + 8) & 1) == 0)
  {
    [*v4 makeAliasable];
  }

  re::DataArray<MetalHeap::TextureEntry>::destroy(this + 64, a2);
  if (!*(this + 26))
  {

    return re::DataArray<MetalHeap::TextureEntry>::clear(this + 8);
  }

  return result;
}

void re::DataArray<MetalHeap::TextureEntry>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v22 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 16;
  v5 = re::DataArray<re::TextureAtlasTile>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (v5)
  {
    v6 = v5;
    *(v5 + 16) = 0;
    v7 = *v5;
    if (v7)
    {

      *v6 = 0;
    }

    v8 = *(a1 + 16);
    if (v8 <= HIWORD(v2))
    {
      v12 = 0;
      memset(v21, 0, sizeof(v21));
      v9 = MEMORY[0x1E69E9C10];
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v16 = 789;
      v17 = 2048;
      v18 = HIWORD(v2);
      v19 = 2048;
      v20 = v8;
      _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *v6 = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }
}

double re::DataArray<MetalHeap::TextureEntry>::clear(void *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v23 = a1;
  if (*(a1 + 10))
  {
    LODWORD(v24) = 0;
    if (!a1[2])
    {
      goto LABEL_33;
    }

    v3 = a1;
    if (!**(a1[4] + 8))
    {
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v23);
      v3 = v23;
    }
  }

  else
  {
    LODWORD(v24) = -1;
    v3 = a1;
  }

  v23 = v3;
  if (v3 != a1 || v24 != 0xFFFFFFFFLL)
  {
    v4 = v24;
    v5 = WORD1(v24);
    do
    {
      v6 = v3[2];
      if (v6 <= v5)
      {
        goto LABEL_29;
      }

      re::DataArray<MetalHeap::TextureEntry>::destroy(a1, ((*(*(v3[4] + 16 * v5 + 8) + 4 * v4) & 0xFFFFFF) << 32) | (v5 << 16) | v4);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v23);
      v3 = v23;
      v4 = v24;
      v5 = WORD1(v24);
    }

    while (v23 != a1 || v24 != 0xFFFFLL || WORD1(v24) != 0xFFFFLL);
  }

  v7 = a1[2];
  v5 = v7 - 1;
  if (v7 != 1)
  {
    v6 = 16 * v7 - 16;
    while (v7 > v5)
    {
      v8 = (a1[4] + v6);
      (*(**a1 + 40))(*a1, *v8);
      (*(**a1 + 40))(*a1, v8[1]);
      v1 = a1[2];
      if (v1 <= v5)
      {
        goto LABEL_25;
      }

      v7 = v1 - 1;
      if (v1 - 1 > v5)
      {
        *(a1[4] + v6) = *(a1[4] + 16 * v1 - 16);
        v7 = a1[2] - 1;
      }

      a1[2] = v7;
      ++*(a1 + 6);
      v6 -= 16;
      if (!--v5)
      {
        goto LABEL_20;
      }
    }

    v23 = 0;
    v38 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v10 = MEMORY[0x1E69E9C10];
    v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (v11)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v29 = 789;
    v30 = 2048;
    v31 = v5;
    v32 = 2048;
    v33 = v7;
    _os_log_send_and_compose_impl(v12, &v23, &v34, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v22);
    _os_crash_msg();
    __break(1u);
LABEL_25:
    v23 = 0;
    v38 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = MEMORY[0x1E69E9C10];
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "removeAt";
    v28 = 1024;
    if (v14)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v29 = 931;
    v30 = 2048;
    v31 = v5;
    v32 = 2048;
    v33 = v1;
    _os_log_send_and_compose_impl(v15, &v23, &v34, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v22);
    _os_crash_msg();
    __break(1u);
LABEL_29:
    v25 = 0;
    v38 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v29 = 797;
    v30 = 2048;
    v31 = v5;
    v32 = 2048;
    v33 = v6;
    _os_log_send_and_compose_impl(v18, &v25, &v34, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v22, v23);
    _os_crash_msg();
    __break(1u);
LABEL_33:
    v25 = 0;
    v38 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (v20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v29 = 797;
    v30 = 2048;
    v31 = 0;
    v32 = 2048;
    v33 = 0;
    _os_log_send_and_compose_impl(v21, &v25, &v34, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v22, v23);
    _os_crash_msg();
    __break(1u);
  }

LABEL_20:
  result = NAN;
  a1[6] = 0xFFFFFFFF00000000;
  return result;
}

void **MetalHeap::releaseTextureForCaching(MetalHeap *this, int a2)
{
  result = re::DataArray<re::TextureAtlasTile>::get(this + 64, a2);
  if ((result[1] & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_1EE1B8908, memory_order_acquire) & 1) == 0)
    {
      v7 = result;
      v5 = __cxa_guard_acquire(&qword_1EE1B8908);
      result = v7;
      if (v5)
      {
        re::Defaults::BOOLValue(&var2, "enableRenderGraphResourceAliasingWhenCaching", v4);
        if (var2)
        {
          v6 = BYTE1(var2);
        }

        else
        {
          v6 = 1;
        }

        byte_1EE1B88F9 = v6;
        __cxa_guard_release(&qword_1EE1B8908);
        result = v7;
      }
    }

    if (byte_1EE1B88F9 == 1)
    {
      v3 = *result;

      return [v3 makeAliasable];
    }
  }

  return result;
}

unint64_t MetalHeap::makeBuffer(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t *a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v8 = [*(a1 + 16) newBufferWithLength:a2 options:a3];
  if (!v8)
  {
    return -1;
  }

  v9 = v8;
  v10 = [*(a1 + 16) maxAvailableSizeWithAlignment_];
  if (v10 < *(a1 + 192))
  {
    *(a1 + 192) = v10;
    *(a1 + 200) = [*(a1 + 16) usedSize];
  }

  v11 = v9;
  v13 = v11;
  if (v11)
  {
  }

  v14 = *a5;
  v15 = *(a1 + 184);
  if ((v15 + 1) >> 24)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15 + 1;
  }

  *(a1 + 184) = v16;
  v17 = *(a1 + 180);
  v18 = *(a1 + 182);
  if (v17 != 0xFFFF || v18 != 0xFFFF)
  {
    v23 = *(a1 + 144);
    if (v23 > v18)
    {
      v24 = (*(a1 + 160) + 16 * v18);
      *(v24[1] + 4 * v17) = v16;
      v21 = *v24 + 24 * v17;
      *(a1 + 180) = *v21;
      goto LABEL_19;
    }

    v34 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v35 = 136315906;
    v36 = "operator[]";
    v37 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    v38 = 789;
    v39 = 2048;
    v40 = v18;
    v41 = 2048;
    v42 = v23;
    _os_log_send_and_compose_impl(v27, &v34, &v43, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v32, v33);
    _os_crash_msg();
    __break(1u);
    goto LABEL_27;
  }

  if (*(a1 + 176) >= *(a1 + 172))
  {
    re::DataArray<MetalHeap::TextureEntry>::allocBlock((a1 + 128));
  }

  v19 = *(a1 + 144);
  v18 = (v19 - 1);
  if (!v19)
  {
LABEL_27:
    v34 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v28 = MEMORY[0x1E69E9C10];
    v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v35 = 136315906;
    v36 = "operator[]";
    v37 = 1024;
    if (v29)
    {
      v30 = 3;
    }

    else
    {
      v30 = 2;
    }

    v38 = 789;
    v39 = 2048;
    v40 = v18;
    v41 = 2048;
    v42 = 0;
    _os_log_send_and_compose_impl(v30, &v34, &v43, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v32, v33);
    _os_crash_msg();
    __break(1u);
LABEL_31:
    re::internal::assertLog(5, v12, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v17);
    _os_crash("assertion failure: (!overflow) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", v31);
    __break(1u);
  }

  v17 = *(a1 + 176);
  if (v17 >= 0x10000)
  {
    goto LABEL_31;
  }

  v20 = (*(a1 + 160) + 16 * v18);
  *(a1 + 176) = v17 + 1;
  *(v20[1] + 4 * v17) = *(a1 + 184);
  v21 = *v20 + 24 * v17;
LABEL_19:
  ++*(a1 + 168);
  *v21 = v13;
  *(v21 + 8) = a4;
  *(v21 + 16) = v14;
  v22 = v17 + (v18 << 16) + ((*(a1 + 184) & 0xFFFFFF) << 32);
  if (v13)
  {
  }

  return v22;
}

double MetalHeap::releaseBuffer(MetalHeap *this, unint64_t a2)
{
  v4 = re::DataArray<re::TextureAtlasTile>::get(this + 128, a2);
  if ((*(v4 + 8) & 1) == 0)
  {
    [*v4 makeAliasable];
  }

  re::DataArray<MetalHeap::TextureEntry>::destroy(this + 128, a2);
  if (!*(this + 42))
  {

    return re::DataArray<MetalHeap::TextureEntry>::clear(this + 16);
  }

  return result;
}

void **MetalHeap::releaseBufferForCaching(MetalHeap *this, int a2)
{
  result = re::DataArray<re::TextureAtlasTile>::get(this + 128, a2);
  if ((result[1] & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_1EE1B8910, memory_order_acquire) & 1) == 0)
    {
      v7 = result;
      v5 = __cxa_guard_acquire(&qword_1EE1B8910);
      result = v7;
      if (v5)
      {
        re::Defaults::BOOLValue(&var2, "enableRenderGraphResourceAliasingWhenCaching", v4);
        if (var2)
        {
          v6 = BYTE1(var2);
        }

        else
        {
          v6 = 1;
        }

        byte_1EE1B88FA = v6;
        __cxa_guard_release(&qword_1EE1B8910);
        result = v7;
      }
    }

    if (byte_1EE1B88FA == 1)
    {
      v3 = *result;

      return [v3 makeAliasable];
    }
  }

  return result;
}

id MetalHeap::onFrameStart(id *this)
{
  result = [this[2] size];
  this[24] = result;
  this[25] = 0;
  return result;
}

void MetalPlacementHeap::init(uint64_t a1, void *a2, id *a3, uint64_t a4, int a5)
{
  v13[0] = a2;
  v13[1] = strlen(a2);
  re::DynamicString::operator=((a1 + 32), v13);
  v9 = [objc_msgSend(MEMORY[0x1E69740E8] alloc)];
  [v9 setStorageMode_];
  [v9 setSize_];
  [v9 setType_];
  v13[0] = [*a3 newHeapWithDescriptor_];
  NS::SharedPtr<MTL::Texture>::operator=((a1 + 16), v13);
  if (v13[0])
  {
  }

  v10 = re::ObjCObject::operator=((a1 + 24), a3);
  *(a1 + 8) = 2;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 64), 0);
  ++*(a1 + 88);
  *(a1 + 108) = a5;
  v11 = re::DataArray<MetalPlacementHeap::TextureEntry>::allocBlock((a1 + 64));
  v12 = a1 + 128;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v12, 0);
  ++*(v12 + 24);
  *(v12 + 44) = a5;
  re::DataArray<MetalPlacementHeap::TextureEntry>::allocBlock(v12);
  MTLRangeAllocatorInit();
  if (v9)
  {
  }
}

void MetalPlacementHeap::~MetalPlacementHeap(id *this)
{
  v27 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5D04FF0;
  MTLRangeAllocatorDestroy();

  this[2] = 0;
  if (*(this + 43))
  {
    v2 = re::DataArray<MetalPlacementHeap::TextureEntry>::clear(this + 16);
    if (!this[18])
    {
      v13 = 0;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      v7 = MEMORY[0x1E69E9C10];
      v14 = 136315906;
      v15 = "operator[]";
      v16 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }

      v17 = 789;
      v18 = 2048;
      v19 = 0;
      v20 = 2048;
      v21 = 0;
      _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
      _os_crash_msg();
      __break(1u);
      goto LABEL_14;
    }

    v3 = this[20];
    (*(*this[16] + 40))(this[16], *v3, v2);
    (*(*this[16] + 40))(this[16], v3[1]);
    re::DynamicArray<unsigned long>::deinit((this + 16));
    *(this + 43) = 0;
  }

  re::DynamicArray<unsigned long>::deinit((this + 16));
  if (!*(this + 27))
  {
    goto LABEL_7;
  }

  v4 = re::DataArray<MetalPlacementHeap::TextureEntry>::clear(this + 8);
  if (!this[10])
  {
LABEL_14:
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v17 = 789;
    v18 = 2048;
    v19 = 0;
    v20 = 2048;
    v21 = 0;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v5 = this[12];
  (*(*this[8] + 40))(this[8], *v5, v4);
  (*(*this[8] + 40))(this[8], v5[1]);
  re::DynamicArray<unsigned long>::deinit((this + 8));
  *(this + 27) = 0;
LABEL_7:
  re::DynamicArray<unsigned long>::deinit((this + 8));
  re::DynamicString::deinit((this + 4));

  v6 = this[2];
  if (v6)
  {

    this[2] = 0;
  }
}

{
  MetalPlacementHeap::~MetalPlacementHeap(this);

  JUMPOUT(0x1E6906520);
}

unint64_t MetalPlacementHeap::makeTexture(uint64_t a1, void *a2, char a3, uint64_t *a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = [*(a1 + 24) heapTextureSizeAndAlignWithDescriptor_];
  v9 = -1;
  MTLRangeAllocatorAllocate();
  v10 = [*(a1 + 16) newTextureWithDescriptor:*a2 offset:-1];
  if (!v10)
  {
    return v9;
  }

  v11 = v10;
  v12 = [*(a1 + 16) maxAvailableSizeWithAlignment_];
  if (v12 < *(a1 + 192))
  {
    *(a1 + 192) = v12;
    *(a1 + 200) = [*(a1 + 16) usedSize];
  }

  v13 = v11;
  v15 = v13;
  if (v13)
  {
  }

  v16 = *a4;
  v17 = *(a1 + 120);
  if ((v17 + 1) >> 24)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17 + 1;
  }

  *(a1 + 120) = v18;
  v19 = *(a1 + 116);
  v20 = *(a1 + 118);
  if (v19 != 0xFFFF || v20 != 0xFFFF)
  {
    v24 = *(a1 + 80);
    if (v24 > v20)
    {
      v25 = (*(a1 + 96) + 16 * v20);
      *(v25[1] + 4 * v19) = v18;
      v23 = *v25 + 40 * v19;
      *(a1 + 116) = *v23;
      goto LABEL_18;
    }

    v35 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    v27 = MEMORY[0x1E69E9C10];
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v39 = 789;
    v40 = 2048;
    v41 = v20;
    v42 = 2048;
    v43 = v24;
    _os_log_send_and_compose_impl(v28, &v35, &v44, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v33, v34);
    _os_crash_msg();
    __break(1u);
    goto LABEL_26;
  }

  if (*(a1 + 112) >= *(a1 + 108))
  {
    re::DataArray<MetalPlacementHeap::TextureEntry>::allocBlock((a1 + 64));
  }

  v21 = *(a1 + 80);
  v20 = (v21 - 1);
  if (!v21)
  {
LABEL_26:
    v35 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    v29 = MEMORY[0x1E69E9C10];
    v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    if (v30)
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    v39 = 789;
    v40 = 2048;
    v41 = v20;
    v42 = 2048;
    v43 = 0;
    _os_log_send_and_compose_impl(v31, &v35, &v44, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v33, v34);
    _os_crash_msg();
    __break(1u);
LABEL_30:
    re::internal::assertLog(5, v14, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v19);
    _os_crash("assertion failure: (!overflow) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", v32);
    __break(1u);
  }

  v19 = *(a1 + 112);
  if (v19 >= 0x10000)
  {
    goto LABEL_30;
  }

  v22 = (*(a1 + 96) + 16 * v20);
  *(a1 + 112) = v19 + 1;
  *(v22[1] + 4 * v19) = *(a1 + 120);
  v23 = *v22 + 40 * v19;
LABEL_18:
  ++*(a1 + 104);
  *v23 = v15;
  *(v23 + 8) = a3;
  *(v23 + 16) = v16;
  *(v23 + 24) = -1;
  *(v23 + 32) = v8;
  v9 = v19 + (v20 << 16) + ((*(a1 + 120) & 0xFFFFFF) << 32);
  if (v15)
  {
  }

  return v9;
}

double MetalPlacementHeap::releaseTexture(MetalPlacementHeap *this, unint64_t a2)
{
  re::DataArray<re::ecs2::System::SystemScheduling>::get(this + 64, a2);
  MTLRangeAllocatorDeallocate();
  re::DataArray<MetalPlacementHeap::TextureEntry>::destroy(this + 64, a2);
  if (!*(this + 26))
  {

    return re::DataArray<MetalPlacementHeap::TextureEntry>::clear(this + 8);
  }

  return result;
}

void re::DataArray<MetalPlacementHeap::TextureEntry>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v22 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 16;
  v5 = re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (v5)
  {
    v6 = v5;
    *(v5 + 16) = 0;
    v7 = *v5;
    if (v7)
    {

      *v6 = 0;
    }

    v8 = *(a1 + 16);
    if (v8 <= HIWORD(v2))
    {
      v12 = 0;
      memset(v21, 0, sizeof(v21));
      v9 = MEMORY[0x1E69E9C10];
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v16 = 789;
      v17 = 2048;
      v18 = HIWORD(v2);
      v19 = 2048;
      v20 = v8;
      _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *v6 = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }
}

double re::DataArray<MetalPlacementHeap::TextureEntry>::clear(void *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v23 = a1;
  if (*(a1 + 10))
  {
    LODWORD(v24) = 0;
    if (!a1[2])
    {
      goto LABEL_33;
    }

    v3 = a1;
    if (!**(a1[4] + 8))
    {
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v23);
      v3 = v23;
    }
  }

  else
  {
    LODWORD(v24) = -1;
    v3 = a1;
  }

  v23 = v3;
  if (v3 != a1 || v24 != 0xFFFFFFFFLL)
  {
    v4 = v24;
    v5 = WORD1(v24);
    do
    {
      v6 = v3[2];
      if (v6 <= v5)
      {
        goto LABEL_29;
      }

      re::DataArray<MetalPlacementHeap::TextureEntry>::destroy(a1, ((*(*(v3[4] + 16 * v5 + 8) + 4 * v4) & 0xFFFFFF) << 32) | (v5 << 16) | v4);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v23);
      v3 = v23;
      v4 = v24;
      v5 = WORD1(v24);
    }

    while (v23 != a1 || v24 != 0xFFFFLL || WORD1(v24) != 0xFFFFLL);
  }

  v7 = a1[2];
  v5 = v7 - 1;
  if (v7 != 1)
  {
    v6 = 16 * v7 - 16;
    while (v7 > v5)
    {
      v8 = (a1[4] + v6);
      (*(**a1 + 40))(*a1, *v8);
      (*(**a1 + 40))(*a1, v8[1]);
      v1 = a1[2];
      if (v1 <= v5)
      {
        goto LABEL_25;
      }

      v7 = v1 - 1;
      if (v1 - 1 > v5)
      {
        *(a1[4] + v6) = *(a1[4] + 16 * v1 - 16);
        v7 = a1[2] - 1;
      }

      a1[2] = v7;
      ++*(a1 + 6);
      v6 -= 16;
      if (!--v5)
      {
        goto LABEL_20;
      }
    }

    v23 = 0;
    v38 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v10 = MEMORY[0x1E69E9C10];
    v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (v11)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v29 = 789;
    v30 = 2048;
    v31 = v5;
    v32 = 2048;
    v33 = v7;
    _os_log_send_and_compose_impl(v12, &v23, &v34, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v22);
    _os_crash_msg();
    __break(1u);
LABEL_25:
    v23 = 0;
    v38 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = MEMORY[0x1E69E9C10];
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "removeAt";
    v28 = 1024;
    if (v14)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v29 = 931;
    v30 = 2048;
    v31 = v5;
    v32 = 2048;
    v33 = v1;
    _os_log_send_and_compose_impl(v15, &v23, &v34, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v22);
    _os_crash_msg();
    __break(1u);
LABEL_29:
    v25 = 0;
    v38 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v29 = 797;
    v30 = 2048;
    v31 = v5;
    v32 = 2048;
    v33 = v6;
    _os_log_send_and_compose_impl(v18, &v25, &v34, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v22, v23);
    _os_crash_msg();
    __break(1u);
LABEL_33:
    v25 = 0;
    v38 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (v20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v29 = 797;
    v30 = 2048;
    v31 = 0;
    v32 = 2048;
    v33 = 0;
    _os_log_send_and_compose_impl(v21, &v25, &v34, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v22, v23);
    _os_crash_msg();
    __break(1u);
  }

LABEL_20:
  result = NAN;
  a1[6] = 0xFFFFFFFF00000000;
  return result;
}

uint64_t MetalPlacementHeap::releaseTextureForCaching(MetalPlacementHeap *this, int a2)
{
  re::DataArray<re::ecs2::System::SystemScheduling>::get(this + 64, a2);

  return MTLRangeAllocatorDeallocate();
}

unint64_t MetalPlacementHeap::makeBuffer(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t *a5)
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [*(a1 + 24) heapBufferSizeAndAlignWithLength:a2 options:a3];
  v10 = -1;
  MTLRangeAllocatorAllocate();
  v11 = [*(a1 + 16) newBufferWithLength:v9 options:v8 offset:-1];
  if (!v11)
  {
    return v10;
  }

  v12 = v11;
  v13 = [*(a1 + 16) maxAvailableSizeWithAlignment_];
  if (v13 < *(a1 + 192))
  {
    *(a1 + 192) = v13;
    *(a1 + 200) = [*(a1 + 16) usedSize];
  }

  v14 = v12;
  v16 = v14;
  if (v14)
  {
  }

  v17 = *a5;
  v18 = *(a1 + 184);
  if ((v18 + 1) >> 24)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18 + 1;
  }

  *(a1 + 184) = v19;
  v20 = *(a1 + 180);
  v21 = *(a1 + 182);
  if (v20 != 0xFFFF || v21 != 0xFFFF)
  {
    v25 = *(a1 + 144);
    if (v25 > v21)
    {
      v26 = (*(a1 + 160) + 16 * v21);
      *(v26[1] + 4 * v20) = v19;
      v24 = *v26 + 40 * v20;
      *(a1 + 180) = *v24;
      goto LABEL_18;
    }

    v36 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    v28 = MEMORY[0x1E69E9C10];
    v37 = 136315906;
    v38 = "operator[]";
    v39 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    v40 = 789;
    v41 = 2048;
    v42 = v21;
    v43 = 2048;
    v44 = v25;
    _os_log_send_and_compose_impl(v29, &v36, &v45, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v37, 38, v34, v35);
    _os_crash_msg();
    __break(1u);
    goto LABEL_26;
  }

  if (*(a1 + 176) >= *(a1 + 172))
  {
    re::DataArray<MetalPlacementHeap::TextureEntry>::allocBlock((a1 + 128));
  }

  v22 = *(a1 + 144);
  v21 = (v22 - 1);
  if (!v22)
  {
LABEL_26:
    v36 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    v30 = MEMORY[0x1E69E9C10];
    v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v37 = 136315906;
    v38 = "operator[]";
    v39 = 1024;
    if (v31)
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    v40 = 789;
    v41 = 2048;
    v42 = v21;
    v43 = 2048;
    v44 = 0;
    _os_log_send_and_compose_impl(v32, &v36, &v45, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v37, 38, v34, v35);
    _os_crash_msg();
    __break(1u);
LABEL_30:
    re::internal::assertLog(5, v15, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v20);
    _os_crash("assertion failure: (!overflow) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", v33);
    __break(1u);
  }

  v20 = *(a1 + 176);
  if (v20 >= 0x10000)
  {
    goto LABEL_30;
  }

  v23 = (*(a1 + 160) + 16 * v21);
  *(a1 + 176) = v20 + 1;
  *(v23[1] + 4 * v20) = *(a1 + 184);
  v24 = *v23 + 40 * v20;
LABEL_18:
  ++*(a1 + 168);
  *v24 = v16;
  *(v24 + 8) = a4;
  *(v24 + 16) = v17;
  *(v24 + 24) = -1;
  *(v24 + 32) = v9;
  v10 = v20 + (v21 << 16) + ((*(a1 + 184) & 0xFFFFFF) << 32);
  if (v16)
  {
  }

  return v10;
}

double MetalPlacementHeap::releaseBuffer(MetalPlacementHeap *this, unint64_t a2)
{
  re::DataArray<re::ecs2::System::SystemScheduling>::get(this + 128, a2);
  MTLRangeAllocatorDeallocate();
  re::DataArray<MetalPlacementHeap::TextureEntry>::destroy(this + 128, a2);
  if (!*(this + 42))
  {

    return re::DataArray<MetalPlacementHeap::TextureEntry>::clear(this + 16);
  }

  return result;
}

uint64_t MetalPlacementHeap::releaseBufferForCaching(MetalPlacementHeap *this, int a2)
{
  re::DataArray<re::ecs2::System::SystemScheduling>::get(this + 128, a2);

  return MTLRangeAllocatorDeallocate();
}

id MetalPlacementHeap::onFrameStart(id *this)
{
  result = [this[2] size];
  this[24] = result;
  this[25] = 0;
  return result;
}

void CachingHeap::~CachingHeap(void **this)
{
  *this = &unk_1F5D05080;
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear((this + 7));
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear((this + 12));
  if (*(this + 41))
  {
    v2 = *(this + 40);
    if (v2)
    {
      memset_pattern16(this[18], &unk_1E304C660, 4 * v2);
    }

    if (*(this + 42))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<CachingHeap::TextureCacheKey,re::DynamicArray<CachingHeap::TextureEntry>,CachingHeap::TextureCacheKeyHasher,CachingHeap::TextureCacheKeyEqualTo,true,false>::EntryBase::free(this[19] + v3);
        ++v4;
        v3 += 72;
      }

      while (v4 < *(this + 42));
    }

    *(this + 41) = 0;
    *(this + 42) = 0;
    v5 = *(this + 44) + 1;
    *(this + 43) = 0x7FFFFFFF;
    *(this + 44) = v5;
  }

  re::HashTable<CachingHeap::TextureCacheKey,re::DynamicArray<CachingHeap::TextureEntry>,CachingHeap::TextureCacheKeyHasher,CachingHeap::TextureCacheKeyEqualTo,true,false>::deinit(this + 17);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit((this + 12));
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit((this + 7));
  re::DynamicString::deinit((this + 3));
}

{
  CachingHeap::~CachingHeap(this);

  JUMPOUT(0x1E6906520);
}

uint64_t CachingHeap::makeTexture(uint64_t a1, id *a2, char a3, uint64_t *a4)
{
  v8 = *a2;
  v42 = v8;
  v43 = a3;
  re::HashTable<CachingHeap::TextureCacheKey,re::DynamicArray<CachingHeap::TextureEntry>,CachingHeap::TextureCacheKeyHasher,CachingHeap::TextureCacheKeyEqualTo,true,false>::findEntry<CachingHeap::TextureCacheKey>(&v35, a1 + 136, &v42);
  v9 = v37;
  if (v37 == 0x7FFFFFFF)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v11 = *(a1 + 152) + 72 * v37;
  v10 = v11 + 24;
  v12 = *(v11 + 40);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = *(v11 + 56);
  v14 = 40 * v12;
  while (*(v13 + 32) != -1)
  {
    v13 += 40;
    v14 -= 40;
    if (!v14)
    {
      goto LABEL_9;
    }
  }

  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((a1 + 56), v13);
  v15 = *(a1 + 72);
  v16 = v15 - 1;
  *(v13 + 32) = v15 - 1;
  *(v13 + 24) = 0;
  if (!v15)
  {
LABEL_9:
    re::mtl::Device::makeTexture(&v41, *a2, (a1 + 16));
    if (!v41)
    {
      v16 = -1;
      goto LABEL_34;
    }

    v17 = v41;
    v18 = v17;
    v35 = v18;
    v36 = 0;
    if (v17)
    {
    }

    v38 = *a4;
    re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((a1 + 56), &v41);
    v16 = *(a1 + 72) - 1;
    v40 = v16;
    v39 = 0;
    if (v9 == 0x7FFFFFFF)
    {
      v34 = 0;
      v31[1] = 0;
      v32 = 0;
      v31[0] = 0;
      v33 = 0;
      re::DynamicArray<CachingHeap::TextureEntry>::add(v31, &v35);
      v44 = 0;
      v45 = 0;
      v46 = 0;
      re::HashTable<CachingHeap::TextureCacheKey,re::DynamicArray<CachingHeap::TextureEntry>,CachingHeap::TextureCacheKeyHasher,CachingHeap::TextureCacheKeyEqualTo,true,false>::findEntry<CachingHeap::TextureCacheKey>(&v44, a1 + 136, &v42);
      if (HIDWORD(v45) == 0x7FFFFFFF)
      {
        v19 = re::HashTable<CachingHeap::TextureCacheKey,re::DynamicArray<CachingHeap::TextureEntry>,CachingHeap::TextureCacheKeyHasher,CachingHeap::TextureCacheKeyEqualTo,true,false>::allocEntry(a1 + 136, v45, v44);
        *(v19 + 8) = v8;
        *(v19 + 24) = 0;
        *(v19 + 16) = a3;
        *(v19 + 56) = 0;
        *(v19 + 32) = 0;
        *(v19 + 40) = 0;
        *(v19 + 48) = 0;
        if (v31[0])
        {
          v20 = v32;
          *(v19 + 24) = v31[0];
          re::DynamicArray<CachingHeap::TextureEntry>::setCapacity((v19 + 24), v20);
          ++*(v19 + 48);
          if (v20 >= *(v19 + 40))
          {
            re::DynamicArray<CachingHeap::TextureEntry>::setCapacity((v19 + 24), v20);
            v24 = v34;
            std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,CachingHeap::TextureEntry *,CachingHeap::TextureEntry *,CachingHeap::TextureEntry *,0>(v34, v34 + 40 * *(v19 + 40), *(v19 + 56));
            v25 = *(v19 + 40);
            if (v25 != v20)
            {
              v26 = v24 + 40 * v20;
              v27 = 5 * v25;
              v28 = v24 + 8 * v27;
              v29 = *(v19 + 56) + 8 * v27;
              do
              {
                *v29 = *v28;
                *(v29 + 8) = *(v28 + 8);
                *(v29 + 16) = *(v28 + 16);
                *(v29 + 24) = *(v28 + 24);
                v28 += 40;
                v29 += 40;
              }

              while (v28 != v26);
            }
          }

          else
          {
            std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,CachingHeap::TextureEntry *,CachingHeap::TextureEntry *,CachingHeap::TextureEntry *,0>(v34, v34 + 40 * v20, *(v19 + 56));
            v21 = *(v19 + 40);
            if (v20 != v21)
            {
              v22 = *(v19 + 56) + 40 * v20;
              v23 = 40 * v21 - 40 * v20;
              do
              {
                *(v22 + 16) = 0;
                if (*v22)
                {

                  *v22 = 0;
                }

                v22 += 40;
                v23 -= 40;
              }

              while (v23);
            }
          }

          *(v19 + 40) = v20;
        }

        ++*(a1 + 176);
      }

      re::DynamicArray<CachingHeap::TextureEntry>::deinit(v31);
      if (!v18)
      {
        goto LABEL_32;
      }
    }

    else
    {
      re::DynamicArray<CachingHeap::TextureEntry>::add(v10, &v35);
      if (!v18)
      {
LABEL_32:
        if (v41)
        {
        }

        goto LABEL_34;
      }
    }

    goto LABEL_32;
  }

LABEL_34:
  if (v8)
  {
  }

  return v16;
}

__n128 re::DynamicArray<CachingHeap::TextureEntry>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<CachingHeap::TextureEntry>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<CachingHeap::TextureEntry>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 40 * v5;
  *v11 = *a2;
  *(v11 + 8) = *(a2 + 8);
  *(v11 + 16) = *(a2 + 16);
  result = *(a2 + 24);
  *(v11 + 24) = result;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t CachingHeap::makeBuffer(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 0xFFFF)
  {
    v4 = 0;
  }

  else
  {
    v4 = a3;
  }

  v5 = [*(a1 + 16) newBufferWithLength:a2 options:v4];
  v9 = v5;
  if (!v5)
  {
    return -1;
  }

  v6 = v5;
  re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((a1 + 96), &v9);
  v7 = *(a1 + 112) - 1;

  return v7;
}

void CachingHeap::releaseBuffer(CachingHeap *this, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(this + 14);
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

    v12 = 789;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(this + 16);

  *(v4 + 8 * a2) = 0;
}

void CachingHeap::onFrameFinish(CachingHeap *this)
{
  v44 = *MEMORY[0x1E69E9840];
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear(this + 56);
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *(this + 16);
    v4 = 8 * v2;
    do
    {
      v5 = *v3;
      if (v5)
      {
      }

      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear(this + 96);
  v6 = *(this + 42);
  if (v6)
  {
    v7 = 0;
    v8 = *(this + 19);
    while (1)
    {
      v9 = *v8;
      v8 += 18;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(this + 42);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  while (v7 != v6)
  {
    v10 = *(this + 19) + 72 * v7;
    v11 = *(v10 + 40);
    if (!v11)
    {
      goto LABEL_25;
    }

    v12 = 0;
    do
    {
      v13 = *(v10 + 56) + 40 * v12;
      v14 = *(v13 + 24);
      if (v14 < 4)
      {
        *(v13 + 32) = -1;
        *(v13 + 24) = v14 + 1;
        ++v12;
      }

      else
      {

        *v13 = 0;
        v15 = *(v10 + 40);
        if (v15 <= v12)
        {
          v30 = 0;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v39 = 0u;
          v27 = MEMORY[0x1E69E9C10];
          v31 = 136315906;
          v32 = "removeAt";
          v33 = 1024;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v28 = 3;
          }

          else
          {
            v28 = 2;
          }

          v34 = 931;
          v35 = 2048;
          v36 = v12;
          v37 = 2048;
          v38 = v15;
          _os_log_send_and_compose_impl(v28, &v30, &v39, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v31, 38, v29);
          _os_crash_msg();
          __break(1u);
        }

        if (v15 - 1 > v12)
        {
          v16 = *(v10 + 56);
          v17 = v16 + 40 * v15;
          v18 = v16 + 40 * v12;
          NS::SharedPtr<MTL::Texture>::operator=(v18, (v17 - 40));
          *(v18 + 8) = *(v17 - 32);
          *(v18 + 16) = *(v17 - 24);
          *(v18 + 24) = *(v17 - 16);
          v15 = *(v10 + 40);
        }

        v19 = *(v10 + 56) + 40 * v15;
        *(v19 - 24) = 0;
        v20 = *(v19 - 40);
        if (v20)
        {

          *(v19 - 40) = 0;
          v15 = *(v10 + 40);
        }

        v11 = v15 - 1;
        *(v10 + 40) = v15 - 1;
        ++*(v10 + 48);
      }
    }

    while (v12 < v11);
    if (!v11)
    {
LABEL_25:
      re::HashTable<CachingHeap::TextureCacheKey,re::DynamicArray<CachingHeap::TextureEntry>,CachingHeap::TextureCacheKeyHasher,CachingHeap::TextureCacheKeyEqualTo,true,false>::findEntry<CachingHeap::TextureCacheKey>(&v39, this + 136, (v10 + 8));
      v21 = HIDWORD(v39);
      if (HIDWORD(v39) != 0x7FFFFFFF)
      {
        v22 = *(this + 19);
        v23 = (v22 + 72 * HIDWORD(v39));
        v24 = *v23 & 0x7FFFFFFF;
        if (v40 == 0x7FFFFFFF)
        {
          *(*(this + 18) + 4 * DWORD2(v39)) = v24;
        }

        else
        {
          *(v22 + 72 * v40) = *(v22 + 72 * v40) & 0x80000000 | v24;
        }

        re::HashTable<CachingHeap::TextureCacheKey,re::DynamicArray<CachingHeap::TextureEntry>,CachingHeap::TextureCacheKeyHasher,CachingHeap::TextureCacheKeyEqualTo,true,false>::EntryBase::free(v23);
        *(*(this + 19) + 72 * v21) = *(*(this + 19) + 72 * v21) & 0x80000000 | *(this + 43);
        --*(this + 41);
        v25 = *(this + 44) + 1;
        *(this + 43) = v21;
        *(this + 44) = v25;
      }
    }

    v26 = *(this + 42);
    if (v26 <= v7 + 1)
    {
      v26 = v7 + 1;
    }

    while (v26 - 1 != v7)
    {
      LODWORD(v7) = v7 + 1;
      if ((*(*(this + 19) + 72 * v7) & 0x80000000) != 0)
      {
        goto LABEL_36;
      }
    }

    LODWORD(v7) = v26;
LABEL_36:
    ;
  }
}

re::RenderGraphResourceAllocationManager *re::RenderGraphResourceAllocationManager::RenderGraphResourceAllocationManager(re::RenderGraphResourceAllocationManager *this)
{
  *(this + 4) = 0;
  *this = 0;
  *(this + 8) = 0u;
  *(this + 6) = 0;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(this, 8uLL);
  ++*(this + 6);
  *(this + 40) = 0;
  *(this + 6) = 0;
  *(this + 13) = 0;
  *(this + 56) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 24) = 0;
  *(this + 15) = 0;
  *(this + 8) = 0u;
  *(this + 36) = 0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 180) = 0u;
  *(this + 196) = 0x7FFFFFFFLL;
  *(this + 31) = 0;
  *(this + 128) = 0;
  *(this + 60) = 0;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 680) = 0u;
  *(this + 696) = 0u;
  *(this + 712) = 0u;
  *(this + 728) = 0u;
  *(this + 744) = 0u;
  *(this + 760) = 0u;
  *(this + 1032) = xmmword_1E3049610;
  *(this + 262) = 2;
  *(this + 132) = 0;
  *(this + 1064) = 0u;
  *(this + 270) = 0;
  *(this + 141) = 0;
  *(this + 1136) = 0;
  *(this + 143) = 0;
  *(this + 72) = 0u;
  *(this + 292) = 0;
  *(this + 166) = 0;
  *(this + 1336) = 0u;
  *(this + 338) = 0;
  *(this + 205) = 0;
  *(this + 1649) = 0;
  *(this + 85) = 0u;
  *(this + 86) = 0u;
  *(this + 348) = 0;
  *(this + 1400) = 0u;
  *(this + 1416) = 0u;
  *(this + 358) = 0;
  *(this + 368) = 0;
  *(this + 91) = 0u;
  *(this + 90) = 0u;
  *(this + 1480) = 0u;
  *(this + 1496) = 0u;
  *(this + 378) = 0;
  *(this + 95) = 0u;
  *(this + 96) = 0u;
  *(this + 388) = 0;
  *(this + 1560) = 0u;
  *(this + 1576) = 0u;
  *(this + 398) = 0;
  *(this + 100) = 0u;
  *(this + 101) = 0u;
  *(this + 408) = 0;
  *(this + 209) = 0;
  *(this + 420) = 0;
  *(this + 1656) = 0u;
  *(this + 280) = 0;
  *(this + 69) = 0u;
  *(this + 68) = 0u;
  *(this + 302) = 0;
  *(this + 1176) = 0u;
  *(this + 1192) = 0u;
  *(this + 312) = 0;
  *(this + 77) = 0u;
  *(this + 76) = 0u;
  *(this + 322) = 0;
  *(this + 1256) = 0u;
  *(this + 1272) = 0u;
  *(this + 81) = 0u;
  *(this + 164) = 0;
  *(this + 1688) = 0u;
  *(this + 1704) = 0u;
  *(this + 1720) = 0u;
  *(this + 1736) = 0u;
  *(this + 1752) = 0u;
  *(this + 221) = 0;
  return this;
}

void re::RenderGraphResourceAllocationManager::~RenderGraphResourceAllocationManager(id *this)
{
  re::RenderGraphResourceAllocationManager::deinit(this);
  re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::deinit((this + 207));
  re::DynamicArray<unsigned long>::deinit((this + 201));
  re::DynamicArray<unsigned long>::deinit((this + 196));
  re::DynamicArray<unsigned long>::deinit((this + 191));
  re::DynamicArray<unsigned long>::deinit((this + 186));
  re::DynamicArray<unsigned long>::deinit((this + 181));
  re::DynamicArray<unsigned long>::deinit((this + 176));
  re::DynamicArray<unsigned long>::deinit((this + 171));
  re::DynamicArray<unsigned long>::deinit((this + 166));
  re::DynamicArray<unsigned long>::deinit((this + 158));
  re::DynamicArray<unsigned long>::deinit((this + 153));
  re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureEntry>::deinit((this + 148));
  re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureEntry>::deinit((this + 143));
  re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureEntry>::deinit((this + 137));
  re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureEntry>::deinit((this + 132));
  for (i = 96; i != 32; --i)
  {
    v3 = this[i];
    if (v3)
    {

      this[i] = 0;
    }
  }

  re::DynamicArray<unsigned long>::deinit((this + 27));
  re::HashTable<unsigned long long,re::RenderGraphResourceAllocationManager::HeapGroupHierarchy,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 20);
  re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapGroup>::deinit((this + 15));
  re::DynamicArray<unsigned long>::deinit((this + 9));

  re::DynamicArray<unsigned long>::deinit(this);
}

uint64_t re::RenderGraphResourceAllocationManager::deinit(uint64_t this)
{
  v53 = *MEMORY[0x1E69E9840];
  if (*(this + 40) == 1)
  {
    v1 = this;
    re::internal::destroyPersistent<re::Heap>(*(this + 208));
    *(v1 + 208) = 0;
    *(v1 + 232) = 0;
    ++*(v1 + 240);
    this = re::internal::destroyPersistent<re::Heap>(*(v1 + 64));
    *(v1 + 64) = 0;
    *(v1 + 88) = 0;
    ++*(v1 + 96);
    if (*(v1 + 136))
    {
      v2 = 0;
      do
      {
        v3 = *(v1 + 152) + 48 * v2;
        if (*(v3 + 24))
        {
          v4 = 0;
          v5 = 0;
          do
          {
            re::internal::destroyPersistent<re::Heap>(*(*(v3 + 40) + v4));
            ++v5;
            v4 += 56;
          }

          while (*(v3 + 24) > v5);
        }

        this = re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::clear(v3 + 8);
        ++v2;
      }

      while (*(v1 + 136) > v2);
    }

    v6 = *(v1 + 192);
    if (v6)
    {
      v7 = 0;
      v8 = *(v1 + 176);
      while (1)
      {
        v9 = *v8;
        v8 += 30;
        if (v9 < 0)
        {
          break;
        }

        if (v6 == ++v7)
        {
          LODWORD(v7) = *(v1 + 192);
          break;
        }
      }
    }

    else
    {
      LODWORD(v7) = 0;
    }

    while (v7 != v6)
    {
      v10 = *(v1 + 176) + 120 * v7;
      v12 = *(v10 + 16);
      v11 = v10 + 16;
      this = re::internal::destroyPersistent<re::Heap>(v12);
      *v11 = 0;
      *(v11 + 24) = 0;
      ++*(v11 + 32);
      if (*(v11 + 72))
      {
        v13 = 0;
        do
        {
          v14 = *(v11 + 88) + 48 * v13;
          if (*(v14 + 24))
          {
            v15 = 0;
            v16 = 0;
            do
            {
              re::internal::destroyPersistent<re::Heap>(*(*(v14 + 40) + v15));
              ++v16;
              v15 += 56;
            }

            while (*(v14 + 24) > v16);
          }

          this = re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::clear(v14 + 8);
          ++v13;
        }

        while (*(v11 + 72) > v13);
      }

      v17 = *(v1 + 192);
      if (v17 <= v7 + 1)
      {
        v17 = v7 + 1;
      }

      while (v17 - 1 != v7)
      {
        LODWORD(v7) = v7 + 1;
        if ((*(*(v1 + 176) + 120 * v7) & 0x80000000) != 0)
        {
          goto LABEL_27;
        }
      }

      LODWORD(v7) = v17;
LABEL_27:
      ;
    }

    if (*(v1 + 1160))
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      __asm { FMOV            V1.2S, #1.0 }

      while (1)
      {
        v26 = *(v1 + 1176) + v18;
        *v26 = -1;
        *(v26 + 16) = 0;
        *(v26 + 24) += 2;
        *(v26 + 88) = 0;
        *(v26 + 96) += 2;
        *(v26 + 152) = 0;
        *(v26 + 160) = 0;
        *(v26 + 168) = 0;
        v27 = *(v1 + 1240);
        if (v27 <= v20)
        {
          break;
        }

        v28 = *(v1 + 1256) + v19;
        *v28 = 3;
        *(v28 + 8) = 2;
        *(v28 + 28) = -1;
        *(v28 + 20) = -1;
        *(v28 + 12) = -1;
        *(v28 + 36) = 0;
        *(v28 + 40) = 0;
        *(v28 + 44) = _D1;
        *(v28 + 52) = xmmword_1E30A3B60;
        *(v28 + 68) = 0x2000000000;
        *(v28 + 76) = -1;
        *(v28 + 84) = -1;
        *(v28 + 92) = -1;
        *(v28 + 96) = 0;
        *(v28 + 104) = 0;
        ++v20;
        v19 += 112;
        v18 += 184;
        if (*(v1 + 1160) <= v20)
        {
          goto LABEL_32;
        }
      }

      v39 = 0;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v48 = 0u;
      v33 = MEMORY[0x1E69E9C10];
      v40 = 136315906;
      v41 = "operator[]";
      v42 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v34 = 3;
      }

      else
      {
        v34 = 2;
      }

      v43 = 789;
      v44 = 2048;
      v45 = v20;
      v46 = 2048;
      v47 = v27;
      _os_log_send_and_compose_impl(v34, &v39, &v48, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v40, 38, v38);
      _os_crash_msg();
      __break(1u);
LABEL_42:
      v39 = 0;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v48 = 0u;
      v35 = MEMORY[0x1E69E9C10];
      v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v40 = 136315906;
      v41 = "operator[]";
      v42 = 1024;
      if (v36)
      {
        v37 = 3;
      }

      else
      {
        v37 = 2;
      }

      v43 = 789;
      v44 = 2048;
      v45 = v20;
      v46 = 2048;
      v47 = v27;
      _os_log_send_and_compose_impl(v37, &v39, &v48, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v40, 38, v38);
      _os_crash_msg();
      __break(1u);
    }

LABEL_32:
    if (*(v1 + 1200))
    {
      v29 = 0;
      v20 = 0;
      v30 = 168;
      do
      {
        v31 = (*(v1 + 1216) + v30);
        *(v31 - 21) = -1;
        *(v31 - 19) = 0;
        *(v31 - 36) += 2;
        *(v31 - 10) = 0;
        *(v31 - 18) += 2;
        *(v31 - 2) = 0;
        *(v31 - 8) = 0;
        *v31 = 0;
        v27 = *(v1 + 1280);
        if (v27 <= v20)
        {
          goto LABEL_42;
        }

        v32 = *(v1 + 1296) + v29;
        *v32 = 0;
        *(v32 + 8) = -1;
        *(v32 + 16) = 0;
        *(v32 + 20) = 1065353216;
        *(v32 + 24) = 0xFFFFFFFF00000020;
        *(v32 + 32) = xmmword_1E3062D70;
        ++v20;
        v29 += 48;
        v30 += 184;
      }

      while (*(v1 + 1200) > v20);
    }

    *(v1 + 40) = 0;
  }

  return this;
}