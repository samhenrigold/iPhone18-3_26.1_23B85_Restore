void *re::DynamicArray<re::internal::Quadric>::setCapacity(void *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 != a2)
  {
    v4 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v4)
      {
        result = re::DynamicArray<re::internal::Quadric>::setCapacity(v4, a2);
        ++*(v4 + 6);
        return result;
      }

      if (a2)
      {
        result = (*(*result + 32))(result, 80 * a2, 8);
        if (!result)
        {
          re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, 80 * a2, *(*v4 + 8));
          result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v12, v13);
          __break(1u);
          return result;
        }

        v6 = result;
        if (!v4[1])
        {
          goto LABEL_14;
        }
      }

      else
      {
        v6 = 0;
        if (!v2)
        {
LABEL_14:
          v4[4] = v6;
          v4[1] = a2;
          return result;
        }
      }

      v7 = v4[4];
      v8 = v4[2];
      if (v8)
      {
        v9 = (v7 + 80 * v8);
        v10 = v6;
        v11 = v4[4];
        do
        {
          *v10 = *v11;
          v10[1] = v11[1];
          v10[2] = v11[2];
          v10[3] = v11[3];
          v10[4] = v11[4];
          v11 += 5;
          v10 += 5;
        }

        while (v11 != v9);
      }

      result = (*(**v4 + 40))(*v4, v7);
      goto LABEL_14;
    }
  }

  return result;
}

void *re::DynamicArray<re::internal::TriangleDecimator::EdgeData>::setCapacity(void *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 != a2)
  {
    v4 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v4)
      {
        if (!a2)
        {
          v6 = 0;
          if (!v2)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        result = (*(*result + 32))(result, 32 * a2, 16);
        if (result)
        {
          v6 = result;
          if (!v4[1])
          {
LABEL_8:
            v4[4] = v6;
            v4[1] = a2;
            return result;
          }

LABEL_7:
          memcpy(v6, v4[4], 32 * v4[2]);
          result = (*(**v4 + 40))(*v4, v4[4]);
          goto LABEL_8;
        }

        re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, 32 * a2, *(*v4 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v7, v8);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::internal::TriangleDecimator::EdgeData>::setCapacity(v4, a2);
        ++*(v4 + 6);
      }
    }
  }

  return result;
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x270;
  v3 = this->__x_[v2];
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ this->__x_[(i + 397) % 0x270] ^ ((v3 & 0x7FFFFFFE | this->__x_[i] & 0x80000000) >> 1);
  this->__x_[i] = v5;
  this->__i_ = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

void *re::DynamicOverflowArray<unsigned long long,3ul>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 >= *(a1 + 8))
  {
    re::DynamicOverflowArray<unsigned long long,3ul>::setCapacity(a1, *(a2 + 8));
    if (*(a2 + 16))
    {
      v7 = (a2 + 24);
    }

    else
    {
      v7 = *(a2 + 32);
    }

    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = (a1 + 24);
      if (!v8)
      {
LABEL_18:
        if (v9)
        {
          v11 = a1 + 24;
        }

        else
        {
          v11 = *(a1 + 32);
        }

        v12 = *(a1 + 8);
        v13 = (v11 + 8 * v12);
        if (*(a2 + 16))
        {
          v14 = a2 + 24;
        }

        else
        {
          v14 = *(a2 + 32);
        }

        result = memcpy(v13, (v14 + 8 * v12), 8 * (v4 - v12));
        goto LABEL_25;
      }
    }

    else
    {
      v10 = *(a1 + 32);
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    memmove(v10, v7, 8 * v8);
    v9 = *(a1 + 16);
    goto LABEL_18;
  }

  if (*(a2 + 16))
  {
    v5 = (a2 + 24);
  }

  else
  {
    v5 = *(a2 + 32);
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    result = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  result = (a1 + 24);
  if (v4)
  {
LABEL_15:
    result = memmove(result, v5, 8 * v4);
  }

LABEL_25:
  *(a1 + 8) = v4;
  return result;
}

BOOL re::snapshot::DecoderOPACK::field<1,re::Vector3<float>>(re::snapshot::DecoderOPACK *a1, uint64_t a2, uint64_t a3)
{
  v5 = re::snapshot::DecoderOPACK::beginField<1>(a1, a2, a3);
  if (v5)
  {
    re::internal::opack::decode<float,3>(a1, a2);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v5;
}

BOOL re::snapshot::DecoderOPACK::field<2,re::Vector3<float>>(re::snapshot::DecoderOPACK *a1, uint64_t a2, uint64_t a3)
{
  v5 = re::snapshot::DecoderOPACK::beginField<2>(a1, a2, a3);
  if (v5)
  {
    re::internal::opack::decode<float,3>(a1, a2);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v5;
}

re::snapshot::BufferEncoder *re::snapshotMapFields<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK *this, char *a2)
{
  v4 = *(this + 4);
  if (v4 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 1);
  }

  else
  {
    v5 = *(this + 1);
    *(this + 4) = v4 + 1;
    *(v5 + v4) = 9;
  }

  re::internal::opack::encode<float,3>(this, a2);
  v6 = *(this + 4);
  if (v6 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 2);
  }

  else
  {
    v7 = *(this + 1);
    *(this + 4) = v6 + 1;
    *(v7 + v6) = 10;
  }

  return re::internal::opack::encode<float,3>(this, a2 + 16);
}

void *re::allocInfo_AABB(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_422, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_422))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B6CF0, "AABB");
    __cxa_guard_release(&_MergedGlobals_422);
  }

  return &unk_1EE1B6CF0;
}

void re::initInfo_AABB(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v14[0] = 4001984;
  v14[1] = "AABB";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1B6CB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6CB0))
  {
    v7 = re::introspectionAllocator();
    v8 = re::introspect_Vector3F(1);
    v9 = (*(*v7 + 32))(v7, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "min";
    *(v9 + 16) = v8;
    *(v9 + 24) = 0;
    *(v9 + 32) = 1;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1B6CC8 = v9;
    v10 = re::introspectionAllocator();
    v11 = re::introspect_Vector3F(1);
    v12 = (*(*v10 + 32))(v10, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "max";
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x1000000002;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1B6CD0 = v12;
    __cxa_guard_release(&qword_1EE1B6CB0);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B6CC8;
  *(this + 9) = re::internal::defaultConstruct<re::AABB>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AABB>;
  *(this + 13) = re::internal::defaultConstructV2<re::AABB>;
  *(this + 14) = re::internal::defaultDestructV2<re::AABB>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v13 = v15;
}

float32x4_t re::internal::defaultConstruct<re::AABB>(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  result.i64[0] = 0x7F0000007FLL;
  result.i64[1] = 0x7F0000007FLL;
  *a3 = vnegq_f32(result);
  a3[1] = result;
  return result;
}

float32x4_t re::internal::defaultConstructV2<re::AABB>(float32x4_t *a1)
{
  result.i64[0] = 0x7F0000007FLL;
  result.i64[1] = 0x7F0000007FLL;
  *a1 = vnegq_f32(result);
  a1[1] = result;
  return result;
}

void *re::allocInfo_RayF(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B6CB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6CB8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B6D80, "RayF");
    __cxa_guard_release(&qword_1EE1B6CB8);
  }

  return &unk_1EE1B6D80;
}

void re::initInfo_RayF(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v18[0] = 5079800;
  v18[1] = "RayF";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1B6CC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6CC0))
  {
    v7 = re::introspectionAllocator();
    v8 = re::introspect_Vector3F(1);
    v9 = (*(*v7 + 32))(v7, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "origin";
    *(v9 + 16) = v8;
    *(v9 + 24) = 0;
    *(v9 + 32) = 1;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1B6CD8 = v9;
    v10 = re::introspectionAllocator();
    v11 = re::introspect_Vector3F(1);
    v12 = (*(*v10 + 32))(v10, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "direction";
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x1000000002;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1B6CE0 = v12;
    v13 = re::introspectionAllocator();
    v15 = re::introspect_float(1, v14);
    v16 = (*(*v13 + 32))(v13, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "length";
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x2000000003;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE1B6CE8 = v16;
    __cxa_guard_release(&qword_1EE1B6CC0);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1B6CD8;
  *(this + 9) = re::internal::defaultConstruct<re::RayF>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RayF>;
  *(this + 13) = re::internal::defaultConstructV2<re::RayF>;
  *(this + 14) = re::internal::defaultDestructV2<re::RayF>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v17 = v19;
}

double re::internal::defaultConstruct<re::RayF>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::RayF>(uint64_t a1)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

float32x4_t *re::computeAABB@<X0>(float32x4_t *__return_ptr a1@<X8>, re *this@<X0>)
{
  v3 = a1;
  v26 = *MEMORY[0x1E69E9840];
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  v15 = vnegq_f32(v4);
  *a1 = v15;
  a1[1] = v4;
  result = re::GeomMesh::accessVertexPositions(this);
  v7 = *(this + 4);
  if (v7)
  {
    v8 = v6;
    v9.i64[0] = 0x7F0000007FLL;
    v9.i64[1] = 0x7F0000007FLL;
    v10 = v15;
    if (v6)
    {
      v10 = vnegq_f32(v9);
      v11 = v7 - 1;
      v12 = v6;
      while (1)
      {
        v13 = *result;
        v10.i32[3] = 0;
        v13.i32[3] = 0;
        v10 = vminnmq_f32(v10, v13);
        v9.i32[3] = 0;
        v9 = vmaxnmq_f32(v9, v13);
        if (!v11)
        {
          break;
        }

        --v11;
        ++result;
        if (!--v12)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      *v3 = v10;
      v3[1] = v9;
      v16 = 0;
      memset(v25, 0, sizeof(v25));
      v3 = MEMORY[0x1E69E9C10];
      v17 = 136315906;
      v18 = "operator[]";
      v19 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      v20 = 613;
      v21 = 2048;
      v22 = v8;
      v23 = 2048;
      v24 = v8;
      _os_log_send_and_compose_impl(v14, &v16, v25, 80, &dword_1E1C61000, v3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15.u64[0], v15.u64[1]);
      result = _os_crash_msg();
      __break(1u);
    }

    *v3 = v10;
    v3[1] = v9;
  }

  return result;
}

uint64_t re::computeOrientedBoundingBox@<X0>(re *this@<X0>, _OWORD *a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = *(this + 4);
  v25 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v24 = 0;
  re::DynamicArray<re::Vector3<float>>::resize(&v21, v5);
  v6 = re::GeomMesh::accessVertexPositions(this);
  if (v5)
  {
    v8 = 0;
    v9 = v7;
    do
    {
      if (v8 == v7)
      {
        v26 = 0;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v35 = 0u;
        v15 = MEMORY[0x1E69E9C10];
        v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v27 = 136315906;
        v28 = "operator[]";
        v29 = 1024;
        if (v16)
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        v30 = 613;
        v31 = 2048;
        v32 = v9;
        v33 = 2048;
        v34 = v9;
        _os_log_send_and_compose_impl(v17, &v26, &v35, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v21, v22);
        _os_crash_msg();
        __break(1u);
LABEL_14:
        v26 = 0;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v35 = 0u;
        v18 = MEMORY[0x1E69E9C10];
        v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v27 = 136315906;
        v28 = "operator[]";
        v29 = 1024;
        if (v19)
        {
          v20 = 3;
        }

        else
        {
          v20 = 2;
        }

        v30 = 789;
        v31 = 2048;
        v32 = v8;
        v33 = 2048;
        v34 = v2;
        _os_log_send_and_compose_impl(v20, &v26, &v35, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v21, v22);
        _os_crash_msg();
        __break(1u);
      }

      v2 = v23;
      if (v23 <= v8)
      {
        goto LABEL_14;
      }

      *(v25 + 16 * v8) = *(v6 + 16 * v8);
      ++v8;
    }

    while (v8 != v5);
  }

  *&v10 = MEMORY[0x1E69070C0](v23, v25);
  *a2 = v10;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v13;
  result = v21;
  if (v21)
  {
    if (v25)
    {
      return (*(*v21 + 40))();
    }
  }

  return result;
}

float32x2_t *re::transform(re::GeomMesh *a1, float32x4_t *a2)
{
  v4 = re::GeomMesh::modifyVertexPositions(a1);
  v6 = v5;
  if (v5)
  {
    do
    {
      *v4->f32 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a2, COERCE_FLOAT(*v4->f32)), a2[1], *v4, 1), a2[2], *v4->f32, 2);
      v4 += 2;
      --v6;
    }

    while (v6);
  }
}

{
  v4 = a2[1];
  v5 = a2[2];
  v11[0] = *a2;
  v11[1] = v4;
  v11[2] = v5;
  v6 = re::GeomMesh::modifyVertexPositions(a1);
  v8 = v7;
  if (v7)
  {
    do
    {
      v9 = vaddq_f32(a2[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a2, COERCE_FLOAT(*v6->f32)), a2[1], *v6, 1), a2[2], *v6->f32, 2));
      *v6->f32 = vdivq_f32(v9, vdupq_laneq_s32(v9, 3));
      v6 += 2;
      --v8;
    }

    while (v8);
  }
}

double re::anonymous namespace::transformMeshTangents(uint64_t a1, float32x4_t *a2)
{
  v4 = re::internal::GeomAttributeManager::attributeByName((a1 + 64), "vertexTangent");
  if (v4 && *(v4 + 17) == 7)
  {
    v5 = re::internal::GeomAttributeManager::attributeByName((a1 + 64), "vertexTangent");
    v11 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v5);
    v12 = v6;
  }

  v7 = re::internal::GeomAttributeManager::attributeByName((a1 + 64), "vertexBitangent");
  if (v7)
  {
    if (*(v7 + 17) == 7)
    {
      v9 = re::internal::GeomAttributeManager::attributeByName((a1 + 64), "vertexBitangent");
      v11 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v9);
      v12 = v10;
    }
  }

  return result;
}

float32x2_t *re::anonymous namespace::transformMeshNormals(float32x2_t *result, uint64_t a2)
{
  v2.columns[1] = *(a2 + 16);
  v2.columns[2] = *(a2 + 32);
  v3 = vmulq_f32(*a2, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v2.columns[2], v2.columns[2], 0xCuLL), v2.columns[2], 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v2.columns[1], v2.columns[1]), v2.columns[1], 0xCuLL))), vextq_s8(vuzp1q_s32(v2.columns[2], v2.columns[2]), v2.columns[2], 0xCuLL), vextq_s8(vextq_s8(v2.columns[1], v2.columns[1], 0xCuLL), v2.columns[1], 8uLL)));
  if (fabsf(v3.f32[2] + vaddv_f32(*v3.f32)) >= 1.0e-15)
  {
    v4 = result;
    v2.columns[0] = *a2;
    v17 = __invert_f3(v2);
    v15 = v17.columns[2];
    v16 = v17.columns[0];
    v14 = v17.columns[1];
    result = re::internal::GeomAttributeManager::attributeByName(&v4[8], "vertexNormal");
    if (result)
    {
      if (result[2].i8[1] == 7)
      {
        v5 = re::internal::GeomAttributeManager::attributeByName(&v4[8], "vertexNormal");
        result = re::GeomAttribute::modifyValues<re::Vector3<float>>(v5);
        v7 = v6;
        if (v6)
        {
          v8 = vzip1q_s32(v16, v14);
          v8.i32[2] = v15.i32[0];
          v9 = vzip2q_s32(vzip1q_s32(v16, v15), vdupq_lane_s32(*v14.i8, 1));
          v10 = vzip2q_s32(v16, v14);
          v10.i32[2] = v15.i32[2];
          do
          {
            v11 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(*result->f32)), v9, *result, 1), v10, *result->f32, 2);
            v12 = vmulq_f32(v11, v11);
            *&v13 = v12.f32[2] + vaddv_f32(*v12.f32);
            *v12.f32 = vrsqrte_f32(v13);
            *v12.f32 = vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32)));
            *result->f32 = vmulq_n_f32(v11, vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32))).f32[0]);
            result += 2;
            --v7;
          }

          while (v7);
        }
      }
    }
  }

  return result;
}

uint64_t re::computeVertexFaceConnectivity(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3;
  v8 = a1;
  v71 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 16);
  *(a3 + 16) = 0;
  ++*(a3 + 24);
  LODWORD(v66) = 0;
  re::DynamicArray<unsigned int>::resize(a3, v9, &v66);
  v10 = *(v8 + 40);
  v11 = v10;
  if (!v10)
  {
    v13 = 0;
    goto LABEL_13;
  }

  v12 = 0;
  v13 = 0;
  v14 = *(v8 + 56);
  v4 = *(v6 + 16);
  do
  {
    if (v12 == v10)
    {
      goto LABEL_50;
    }

    v15 = 0;
    *v61 = *(v14 + 16 * v12);
    v16 = *(v6 + 32);
    if (*&v61[12] == -1)
    {
      v17 = 3;
    }

    else
    {
      v17 = 4;
    }

    v13 = (v13 + v17);
    do
    {
      v3 = *&v61[4 * v15];
      if (v4 <= v3)
      {
        *&v57 = 0;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v66 = 0u;
        v29 = MEMORY[0x1E69E9C10];
        *v58 = 136315906;
        *&v58[4] = "operator[]";
        *&v58[12] = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v30 = 3;
        }

        else
        {
          v30 = 2;
        }

        *&v58[14] = 789;
        *&v58[18] = 2048;
        *&v58[20] = v3;
        v59 = 2048;
        *v60 = v4;
        _os_log_send_and_compose_impl(v30, &v57, &v66, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v58, 38, v55, v56);
        _os_crash_msg();
        __break(1u);
LABEL_42:
        v56 = 0;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v66 = 0u;
        v31 = MEMORY[0x1E69E9C10];
        v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v61 = 136315906;
        *&v61[4] = "operator[]";
        *&v61[12] = 1024;
        if (v32)
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        *&v61[14] = 789;
        v62 = 2048;
        v63 = v9;
        v64 = 2048;
        v65 = v8;
        _os_log_send_and_compose_impl(v33, &v56, &v66, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v61, 38, v55);
        _os_crash_msg();
        __break(1u);
LABEL_46:
        v56 = 0;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v66 = 0u;
        v34 = MEMORY[0x1E69E9C10];
        v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v61 = 136315906;
        *&v61[4] = "operator[]";
        *&v61[12] = 1024;
        if (v35)
        {
          v36 = 3;
        }

        else
        {
          v36 = 2;
        }

        *&v61[14] = 789;
        v62 = 2048;
        v63 = v3;
        v64 = 2048;
        v65 = v6;
        _os_log_send_and_compose_impl(v36, &v56, &v66, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v61, 38, v55);
        _os_crash_msg();
        __break(1u);
LABEL_50:
        *v61 = 0;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v66 = 0u;
        v37 = MEMORY[0x1E69E9C10];
        v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v58 = 136315906;
        *&v58[4] = "operator[]";
        *&v58[12] = 1024;
        if (v38)
        {
          v39 = 3;
        }

        else
        {
          v39 = 2;
        }

        *&v58[14] = 797;
        *&v58[18] = 2048;
        *&v58[20] = v10;
        v59 = 2048;
        *v60 = v10;
        _os_log_send_and_compose_impl(v39, v61, &v66, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v58, 38, v55, v56);
        _os_crash_msg();
        __break(1u);
LABEL_54:
        *&v57 = 0;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v66 = 0u;
        v40 = MEMORY[0x1E69E9C10];
        v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v61 = 136315906;
        *&v61[4] = "operator[]";
        *&v61[12] = 1024;
        if (v41)
        {
          v42 = 3;
        }

        else
        {
          v42 = 2;
        }

        *&v61[14] = 797;
        v62 = 2048;
        v63 = v13;
        v64 = 2048;
        v65 = v13;
        _os_log_send_and_compose_impl(v42, &v57, &v66, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v61, 38, v55, v56);
        _os_crash_msg();
        __break(1u);
        goto LABEL_58;
      }

      ++*(v16 + 4 * v3);
      ++v15;
    }

    while (v17 != v15);
    ++v12;
  }

  while (v12 != v10);
LABEL_13:
  *&v60[2] = 0;
  memset(v58, 0, sizeof(v58));
  if (v9)
  {
    re::DynamicArray<float>::resize(v58, v9);
    v4 = *&v58[16];
    if (!*&v58[16])
    {
      goto LABEL_70;
    }

    v18 = *&v60[2];
    **&v60[2] = 0;
    if (v9 != 1)
    {
      v5 = 0;
      v10 = *(v6 + 16);
      if (v10 <= 1)
      {
        v3 = 1;
      }

      else
      {
        v3 = *(v6 + 16);
      }

      v19 = v18 + 4;
      v20 = (*(v6 + 32) + 4);
      while (v10 != v5)
      {
        if (v4 - 1 == v5)
        {
          goto LABEL_62;
        }

        v21 = *(v20 - 1);
        *(v19 + 4 * v5) = v21;
        if (v3 - 1 == v5)
        {
          goto LABEL_66;
        }

        *v20++ += v21;
        if (v9 - 1 == ++v5)
        {
          goto LABEL_24;
        }
      }

LABEL_58:
      *&v57 = 0;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v66 = 0u;
      v43 = MEMORY[0x1E69E9C10];
      v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v61 = 136315906;
      *&v61[4] = "operator[]";
      *&v61[12] = 1024;
      if (v44)
      {
        v45 = 3;
      }

      else
      {
        v45 = 2;
      }

      *&v61[14] = 789;
      v62 = 2048;
      v63 = v5;
      v64 = 2048;
      v65 = v10;
      _os_log_send_and_compose_impl(v45, &v57, &v66, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v61, 38, v55, v56);
      _os_crash_msg();
      __break(1u);
LABEL_62:
      *&v57 = 0;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v66 = 0u;
      v46 = MEMORY[0x1E69E9C10];
      v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v61 = 136315906;
      *&v61[4] = "operator[]";
      *&v61[12] = 1024;
      if (v47)
      {
        v48 = 3;
      }

      else
      {
        v48 = 2;
      }

      *&v61[14] = 789;
      v62 = 2048;
      v63 = v4;
      v64 = 2048;
      v65 = v4;
      _os_log_send_and_compose_impl(v48, &v57, &v66, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v61, 38, v55, v56);
      _os_crash_msg();
      __break(1u);
LABEL_66:
      *&v57 = 0;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v66 = 0u;
      v49 = MEMORY[0x1E69E9C10];
      v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v61 = 136315906;
      *&v61[4] = "operator[]";
      *&v61[12] = 1024;
      if (v50)
      {
        v51 = 3;
      }

      else
      {
        v51 = 2;
      }

      *&v61[14] = 789;
      v62 = 2048;
      v63 = v3;
      v64 = 2048;
      v65 = v10;
      _os_log_send_and_compose_impl(v51, &v57, &v66, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v61, 38, v55, v56);
      _os_crash_msg();
      __break(1u);
LABEL_70:
      *&v57 = 0;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v66 = 0u;
      v52 = MEMORY[0x1E69E9C10];
      v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v61 = 136315906;
      *&v61[4] = "operator[]";
      *&v61[12] = 1024;
      if (v53)
      {
        v54 = 3;
      }

      else
      {
        v54 = 2;
      }

      *&v61[14] = 789;
      v62 = 2048;
      v63 = 0;
      v64 = 2048;
      v65 = 0;
      _os_log_send_and_compose_impl(v54, &v57, &v66, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v61, 38, v55, v56);
      _os_crash_msg();
      __break(1u);
    }
  }

LABEL_24:
  re::DynamicArray<float>::resize(a2, v13);
  if (v11)
  {
    v22 = 0;
    v13 = *(v8 + 40);
    v23 = *(v8 + 56);
    v8 = *&v58[16];
    while (v22 != v13)
    {
      v24 = 0;
      v57 = *(v23 + 16 * v22);
      v25 = *&v60[2];
      v6 = *(a2 + 16);
      v26 = *(a2 + 32);
      if (HIDWORD(v57) == -1)
      {
        v27 = 3;
      }

      else
      {
        v27 = 4;
      }

      do
      {
        v9 = *&v58[4 * v24 - 16];
        if (v8 <= v9)
        {
          goto LABEL_42;
        }

        v3 = *(v25 + 4 * v9);
        *(v25 + 4 * v9) = v3 + 1;
        if (v6 <= v3)
        {
          goto LABEL_46;
        }

        *(v26 + 4 * v3) = v22;
        ++v24;
      }

      while (v27 != v24);
      if (++v22 == v11)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_54;
  }

LABEL_34:
  result = *v58;
  if (*v58)
  {
    if (*&v60[2])
    {
      return (*(**v58 + 40))();
    }
  }

  return result;
}

uint64_t re::mergeContinuousFaceVaryingAttributeValues(re *this, re::GeomMesh *a2, const char *a3, double a4)
{
  v9 = this;
  v10 = v641;
  v660 = *MEMORY[0x1E69E9840];
  v11 = re::internal::GeomAttributeManager::attributeByName((this + 64), a2);
  v13 = v11;
  v14 = v11[17];
  if (v14 <= 5)
  {
    if (v14 != 4)
    {
      if (v14 != 5)
      {
LABEL_1015:
        re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) The attribute is not a continuous (float or vector) type.", "!Unreachable code", "mergeContinuousFaceVaryingAttributeValues", 564);
        _os_crash("assertion failure: (!Unreachable code) The attribute is not a continuous (float or vector) type.");
        __break(1u);
LABEL_1016:
        re::internal::assertLog(4, v35, "assertion failure: '%s' (%s:line %i) k-d tree failed to build.", "!Unreachable code", "computeRepresentativeValuesAndReducedIndicesContinuous", 245);
        _os_crash("assertion failure: (!Unreachable code) k-d tree failed to build.");
        __break(1u);
LABEL_1017:
        *v650 = 0;
        v658 = 0u;
        v659 = 0u;
        v656 = 0u;
        v657 = 0u;
        v655 = 0u;
        v607 = MEMORY[0x1E69E9C10];
        v608 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v641 = 136315906;
        *&v641[4] = "operator[]";
        *&v641[12] = 1024;
        if (v608)
        {
          v609 = 3;
        }

        else
        {
          v609 = 2;
        }

        *&v641[14] = 621;
        *&v641[18] = 2048;
        *&v641[20] = 0;
        v642 = 2048;
        *v643 = 0;
        _os_log_send_and_compose_impl(v609, v650, &v655, 80, &dword_1E1C61000, v607, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v641, 38, v616, v617);
        _os_crash_msg();
        __break(1u);
LABEL_1021:
        *v650 = 0;
        v658 = 0u;
        v659 = 0u;
        v656 = 0u;
        v657 = 0u;
        v655 = 0u;
        v610 = MEMORY[0x1E69E9C10];
        v611 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v641 = 136315906;
        *&v641[4] = "operator[]";
        *&v641[12] = 1024;
        if (v611)
        {
          v612 = 3;
        }

        else
        {
          v612 = 2;
        }

        *&v641[14] = 621;
        *&v641[18] = 2048;
        *&v641[20] = 0;
        v642 = 2048;
        *v643 = 0;
        _os_log_send_and_compose_impl(v612, v650, &v655, 80, &dword_1E1C61000, v610, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v641, 38, v616, v617);
        _os_crash_msg();
        __break(1u);
        goto LABEL_1025;
      }

      result = (*(*v11 + 16))(v11);
      if (!result)
      {
        return result;
      }

      v634 = 0;
      v631 = 0;
      v632 = 0;
      v629 = 0;
      v630 = 0;
      v633 = 0;
      v626 = 0;
      v627 = 0;
      v625 = 0;
      v628 = 0;
      v16 = (*(*v13 + 16))(v13);
      if (v16)
      {
        v19 = re::GeomAttribute::accessValues<int>(v13);
        if (!v20)
        {
          goto LABEL_991;
        }

        v4 = v19;
      }

      else
      {
        v4 = 0;
      }

      v649 = 0;
      v10 = v16;
      *(&v647 + 1) = v16;
      memset(v648, 0, 28);
      *&v647 = v4;
      v640 = 0;
      v637 = 0;
      v638 = 0;
      v636 = 0;
      v639 = 0;
      re::DynamicArray<float>::resize(&v636, v16);
      if (v16)
      {
        v28 = 0;
        v29 = v638;
        v59 = v640;
        do
        {
          if (v29 <= v28)
          {
            goto LABEL_671;
          }

          v59[v28] = v28;
          ++v28;
        }

        while (v16 != v28);
        v60 = 0;
        *&v648[1] = 0;
        ++DWORD2(v648[1]);
        if (*(&v648[0] + 1) < v16)
        {
          re::DynamicArray<re::internal::GeomKDTree<float>::Node>::setCapacity(v648, v16);
          v60 = *&v648[1];
        }

        v61 = v16 - v60;
        if (v16 > v60 && v61 >= 1)
        {
          v62 = &v649[3 * v60];
          v63 = v61 + 1;
          do
          {
            *v62 = 0;
            v62[1] = 0;
            *(v62 + 4) = -1;
            *(v62 + 20) = 0;
            v62 += 3;
            --v63;
          }

          while (v63 > 1);
        }

        *&v648[1] = v16;
      }

      else
      {
        *&v648[1] = 0;
      }

      ++DWORD2(v648[1]);
      if (*(&v647 + 1))
      {
        LODWORD(v655) = 0;
        re::internal::GeomKDTree<double>::buildHelper(&v647, 0, v16, &v636, &v655);
      }

      if (v636 && v640)
      {
        (*(*v636 + 40))();
      }

      v632 = 0;
      ++v633;
      v627 = 0;
      ++v628;
      re::DynamicArray<unsigned int>::resize(&v630, v16, &re::kInvalidMeshIndex);
      LOBYTE(v655) = 0;
      re::DynamicArray<unsigned char>::resize(&v625, v16, &v655);
      v640 = 0;
      v637 = 0;
      v638 = 0;
      v636 = 0;
      v639 = 0;
      if (v16)
      {
        v16 = 0;
        v29 = 1;
        do
        {
          v28 = v632;
          if (v632 <= v16)
          {
            goto LABEL_715;
          }

          if (*(v634 + 4 * v16) == -1)
          {
            v638 = 0;
            v639 += 2;
            v100 = *&v648[1];
            if (*&v648[1] && (re::internal::GeomKDTree<double>::findWithinRadiusHelper(&v647, v649, (v4 + 8 * v16), &v636, a4), v100 = v638, v638))
            {
              v101 = 0;
              v102 = *v640;
            }

            else
            {
              v101 = 1;
              v102 = v16;
            }

            v28 = v632;
            if (v632 <= v16)
            {
              goto LABEL_867;
            }

            *(v634 + 4 * v16) = v102;
            v28 = v627;
            if (v627 <= v16)
            {
              goto LABEL_883;
            }

            v629[v16] = 1;
            if ((v101 & 1) == 0)
            {
              v103 = 0;
              v40 = v638;
              v104 = v640;
              v6 = v632;
              v105 = v634;
              do
              {
                if (v40 == v103)
                {
                  goto LABEL_536;
                }

                v5 = v104[v103];
                if (v6 <= v5)
                {
                  goto LABEL_552;
                }

                *(v105 + 4 * v5) = v16;
                ++v103;
              }

              while (v100 != v103);
            }
          }

          ++v16;
        }

        while (v16 != v10);
        if (v636 && v640)
        {
          (*(*v636 + 40))();
        }
      }

      if (*&v648[0] && v649)
      {
        (*(**&v648[0] + 40))();
      }

      *&v648[1] = 0;
      *&v648[0] = 0;
      v647 = 0uLL;
      DWORD2(v648[0]) = 0;
      v640 = 0;
      v637 = 0;
      v638 = 0;
      v636 = 0;
      v639 = 0;
      v106 = (*(*v13 + 16))(v13);
      v107 = v106;
      if (v106)
      {
        v4 = v627;
        if (v627 <= v106 - 1)
        {
          goto LABEL_1011;
        }

        LODWORD(v108) = 0;
        v109 = v629;
        v4 = v106;
        v110 = v106;
        do
        {
          v111 = *v109++;
          v108 = (v108 + v111);
          --v110;
        }

        while (v110);
      }

      else
      {
        v4 = 0;
        v108 = 0;
      }

      v10 = re::GeomAttribute::accessValues<int>(v13);
      LODWORD(v28) = v182;
      re::DynamicArray<double>::resize(&v647, v108);
      re::DynamicArray<unsigned int>::resize(&v636, v4, &re::kInvalidMeshIndex);
      if (v107)
      {
        v29 = 0;
        v184 = 0;
        v16 = v627;
        v185 = v629;
        v6 = v638;
        v186 = v640;
        v28 = v28;
        v7 = *&v648[0];
        v187 = *&v648[1];
        do
        {
          if (v16 == v29)
          {
            goto LABEL_683;
          }

          if (v185[v29])
          {
            if (v6 <= v29)
            {
              goto LABEL_791;
            }

            v186[v29] = v184;
            if (v29 >= v28)
            {
              goto LABEL_807;
            }

            v5 = v184;
            if (v7 <= v184)
            {
              goto LABEL_823;
            }

            *(v187 + 8 * v184++) = *(v10 + 8 * v29);
          }

          ++v29;
        }

        while (v4 != v29);
        v10 = 0;
        v188 = v629;
        v28 = v632;
        v189 = v634;
        v29 = v638;
        v190 = v640;
        do
        {
          if (v16 == v10)
          {
            goto LABEL_731;
          }

          if (!v188[v10])
          {
            if (v28 <= v10)
            {
              goto LABEL_899;
            }

            v6 = *(v189 + 4 * v10);
            if (v29 <= v6)
            {
              goto LABEL_915;
            }

            if (v29 <= v10)
            {
              goto LABEL_931;
            }

            v190[v10] = v190[v6];
          }

          ++v10;
        }

        while (v4 != v10);
      }

      v10 = re::internal::accessFaceVaryingAttributeSubmesh(v13, v183);
      v4 = *&v648[0];
      v6 = *(v10 + 24);
      v16 = v6;
      *&v646[2] = 0;
      memset(v644, 0, sizeof(v644));
      re::DynamicArray<re::GeomCell4>::resize(v644, v6);
      if (v6)
      {
        v191 = 0;
        v29 = *&v644[16];
        v192 = *&v646[2];
        v28 = *(v10 + 24);
        v193 = *(v10 + 40);
        v7 = v638;
        do
        {
          if (v191 == v29)
          {
            goto LABEL_755;
          }

          if (v191 == v28)
          {
            goto LABEL_771;
          }

          v194 = 0;
          *v650 = *(v193 + 16 * v191);
          v195 = v640;
          if (*&v650[12] == -1)
          {
            v196 = 3;
          }

          else
          {
            v196 = 4;
          }

          do
          {
            v5 = *&v650[4 * v194];
            if (v7 <= v5)
            {
              goto LABEL_452;
            }

            *(v192 + 4 * v194++) = v195[v5];
          }

          while (v196 != v194);
          ++v191;
          v192 += 16;
        }

        while (v191 != v6);
      }

      if (*(v10 + 48))
      {
        v197 = *(v10 + 60) == 0;
      }

      else
      {
        v197 = 1;
      }

      if (v197 && *(v9 + 10) == v6)
      {
        re::GeomMesh::updateFaceVaryingAttribute(v9, *(v13 + 8), v4, v644);
        goto LABEL_638;
      }

      *&v643[2] = 0;
      memset(v641, 0, sizeof(v641));
      re::DynamicArray<unsigned int>::resize(v641, v6, &re::kInvalidMeshIndex);
      v200 = *(v10 + 60);
      if (v200 == 2)
      {
        re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned int,unsigned int> const&>::HashBrownIterator(&v622, v10 + 64);
        LOBYTE(v621) = 2;
        v273 = *(v10 + 60);
        if (!*(v10 + 60))
        {
LABEL_515:
          v274 = *(v10 + 64);
          LOBYTE(v618) = 0;
          LODWORD(v619) = v274;
LABEL_634:
          while ((re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(&v621, &v618) & 1) == 0)
          {
            v10 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v621, v338);
            v337 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v621, v336);
            v16 = v337;
            v29 = *&v641[16];
            if (*&v641[16] <= v337)
            {
              goto LABEL_951;
            }

            *(*&v643[2] + 4 * v337) = HIDWORD(v10);
            re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::increment(&v621);
          }

          re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v618, v338);
          re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v621, v339);
          re::GeomMesh::updateFaceVaryingAttribute(v9, *(v13 + 8), v4, v644, v641);
          if (*v641 && *&v643[2])
          {
            (*(**v641 + 40))();
          }

LABEL_638:
          if ((*(*v13 + 16))(v13))
          {
            if (!*(v13 + 40))
            {
              goto LABEL_971;
            }

            v9 = *(v13 + 56);
            if ((*(*v13 + 16))(v13))
            {
              goto LABEL_641;
            }
          }

LABEL_1025:
          *v650 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v613 = MEMORY[0x1E69E9C10];
          v614 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v641 = 136315906;
          *&v641[4] = "operator[]";
          *&v641[12] = 1024;
          if (v614)
          {
            v615 = 3;
          }

          else
          {
            v615 = 2;
          }

          *&v641[14] = 621;
          *&v641[18] = 2048;
          *&v641[20] = 0;
          v642 = 2048;
          *v643 = 0;
          _os_log_send_and_compose_impl(v615, v650, &v655, 80, &dword_1E1C61000, v613, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v641, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
          goto LABEL_1029;
        }

        if (v273 == 2)
        {
          LOBYTE(v618) = 2;
          v619 = v10 + 64;
          v620 = xmmword_1E3049610;
          goto LABEL_634;
        }

        if (v273 != 1)
        {
          goto LABEL_1038;
        }

        v263 = *(v10 + 48);
      }

      else
      {
        if (v200 != 1)
        {
          if (*(v10 + 60))
          {
            goto LABEL_1033;
          }

          LOBYTE(v621) = 0;
          LODWORD(v622) = 0;
          goto LABEL_515;
        }

        v263 = *(v10 + 48);
        if (v263)
        {
          v264 = *(v10 + 96);
          v265 = *(v10 + 52);
          v266 = *(v10 + 80);
          v267 = v264 + 4 * v266;
          LOBYTE(v621) = 1;
          if (v264)
          {
            v268 = v264 + 4 * v265;
            if (v266 != v265)
            {
              v268 -= 4;
              v269 = 4 * v266 - 4 * v265;
              do
              {
                v271 = *(v268 + 4);
                v268 += 4;
                v270 = v271;
                if (!v269)
                {
                  break;
                }

                v269 -= 4;
              }

              while (v270 == -1);
            }
          }

          else
          {
            v268 = 0;
          }

          v622 = v264;
          v623 = v268;
          v624 = v267;
        }

        else
        {
          LOBYTE(v621) = 1;
          v623 = 0;
          v624 = 0;
          v622 = 0;
        }
      }

      if (v263)
      {
        v334 = *(v10 + 96);
        v335 = v334 + 4 * *(v10 + 80);
        LOBYTE(v618) = 1;
        v619 = v334;
        *&v620 = v335;
        *(&v620 + 1) = v335;
      }

      else
      {
        LOBYTE(v618) = 1;
        v620 = 0uLL;
        v619 = 0;
      }

      goto LABEL_634;
    }

    result = (*(*v11 + 16))(v11);
    if (!result)
    {
      return result;
    }

    v634 = 0;
    v631 = 0;
    v632 = 0;
    v629 = 0;
    v630 = 0;
    v633 = 0;
    v626 = 0;
    v627 = 0;
    v625 = 0;
    v628 = 0;
    v16 = (*(*v13 + 16))(v13);
    if (v16)
    {
      v26 = re::GeomAttribute::accessValues<int>(v13);
      if (!v27)
      {
        goto LABEL_983;
      }

      v4 = v26;
    }

    else
    {
      v4 = 0;
    }

    v649 = 0;
    v10 = v16;
    *(&v647 + 1) = v16;
    memset(v648, 0, 28);
    *&v647 = v4;
    v640 = 0;
    v637 = 0;
    v638 = 0;
    v636 = 0;
    v639 = 0;
    re::DynamicArray<float>::resize(&v636, v16);
    if (v16)
    {
      v28 = 0;
      v29 = v638;
      v49 = v640;
      do
      {
        if (v29 <= v28)
        {
          goto LABEL_663;
        }

        v49[v28] = v28;
        ++v28;
      }

      while (v16 != v28);
      v50 = 0;
      *&v648[1] = 0;
      ++DWORD2(v648[1]);
      if (*(&v648[0] + 1) < v16)
      {
        re::DynamicArray<re::internal::GeomKDTree<float>::Node>::setCapacity(v648, v16);
        v50 = *&v648[1];
      }

      v51 = v16 - v50;
      if (v16 > v50 && v51 >= 1)
      {
        v52 = &v649[3 * v50];
        v53 = v51 + 1;
        do
        {
          *v52 = 0;
          v52[1] = 0;
          *(v52 + 4) = -1;
          *(v52 + 20) = 0;
          v52 += 3;
          --v53;
        }

        while (v53 > 1);
      }

      *&v648[1] = v16;
    }

    else
    {
      *&v648[1] = 0;
    }

    ++DWORD2(v648[1]);
    if (*(&v647 + 1))
    {
      LODWORD(v655) = 0;
      re::internal::GeomKDTree<float>::buildHelper(&v647, 0, v16, &v636, &v655);
    }

    if (v636 && v640)
    {
      (*(*v636 + 40))();
    }

    v632 = 0;
    ++v633;
    v627 = 0;
    ++v628;
    re::DynamicArray<unsigned int>::resize(&v630, v16, &re::kInvalidMeshIndex);
    LOBYTE(v655) = 0;
    re::DynamicArray<unsigned char>::resize(&v625, v16, &v655);
    v640 = 0;
    v637 = 0;
    v638 = 0;
    v636 = 0;
    v639 = 0;
    if (v16)
    {
      v16 = 0;
      v29 = 1;
      do
      {
        v28 = v632;
        if (v632 <= v16)
        {
          goto LABEL_707;
        }

        if (*(v634 + 4 * v16) == -1)
        {
          v638 = 0;
          v639 += 2;
          v76 = *&v648[1];
          if (*&v648[1] && (re::internal::GeomKDTree<float>::findWithinRadiusHelper(&v647, v649, (v4 + 4 * v16), &v636, a4), v76 = v638, v638))
          {
            v77 = 0;
            v78 = *v640;
          }

          else
          {
            v77 = 1;
            v78 = v16;
          }

          v28 = v632;
          if (v632 <= v16)
          {
            goto LABEL_859;
          }

          *(v634 + 4 * v16) = v78;
          v28 = v627;
          if (v627 <= v16)
          {
            goto LABEL_875;
          }

          v629[v16] = 1;
          if ((v77 & 1) == 0)
          {
            v79 = 0;
            v40 = v638;
            v80 = v640;
            v6 = v632;
            v81 = v634;
            do
            {
              if (v40 == v79)
              {
                goto LABEL_528;
              }

              v5 = v80[v79];
              if (v6 <= v5)
              {
                goto LABEL_544;
              }

              *(v81 + 4 * v5) = v16;
              ++v79;
            }

            while (v76 != v79);
          }
        }

        ++v16;
      }

      while (v16 != v10);
      if (v636 && v640)
      {
        (*(*v636 + 40))();
      }
    }

    if (*&v648[0] && v649)
    {
      (*(**&v648[0] + 40))();
    }

    *&v648[1] = 0;
    *&v648[0] = 0;
    v647 = 0uLL;
    DWORD2(v648[0]) = 0;
    v640 = 0;
    v637 = 0;
    v638 = 0;
    v636 = 0;
    v639 = 0;
    v82 = (*(*v13 + 16))(v13);
    v83 = v82;
    if (v82)
    {
      v4 = v627;
      if (v627 <= v82 - 1)
      {
        goto LABEL_1003;
      }

      LODWORD(v84) = 0;
      v85 = v629;
      v4 = v82;
      v86 = v82;
      do
      {
        v87 = *v85++;
        v84 = (v84 + v87);
        --v86;
      }

      while (v86);
    }

    else
    {
      v4 = 0;
      v84 = 0;
    }

    v10 = re::GeomAttribute::accessValues<int>(v13);
    LODWORD(v28) = v146;
    re::DynamicArray<float>::resize(&v647, v84);
    re::DynamicArray<unsigned int>::resize(&v636, v4, &re::kInvalidMeshIndex);
    if (v83)
    {
      v29 = 0;
      v148 = 0;
      v16 = v627;
      v149 = v629;
      v6 = v638;
      v150 = v640;
      v28 = v28;
      v7 = *&v648[0];
      v151 = *&v648[1];
      do
      {
        if (v16 == v29)
        {
          goto LABEL_679;
        }

        if (v149[v29])
        {
          if (v6 <= v29)
          {
            goto LABEL_787;
          }

          v150[v29] = v148;
          if (v29 >= v28)
          {
            goto LABEL_803;
          }

          v5 = v148;
          if (v7 <= v148)
          {
            goto LABEL_819;
          }

          *(v151 + 4 * v148++) = *(v10 + 4 * v29);
        }

        ++v29;
      }

      while (v4 != v29);
      v10 = 0;
      v152 = v629;
      v28 = v632;
      v153 = v634;
      v29 = v638;
      v154 = v640;
      do
      {
        if (v16 == v10)
        {
          goto LABEL_727;
        }

        if (!v152[v10])
        {
          if (v28 <= v10)
          {
            goto LABEL_895;
          }

          v6 = *(v153 + 4 * v10);
          if (v29 <= v6)
          {
            goto LABEL_911;
          }

          if (v29 <= v10)
          {
            goto LABEL_927;
          }

          v154[v10] = v154[v6];
        }

        ++v10;
      }

      while (v4 != v10);
    }

    v10 = re::internal::accessFaceVaryingAttributeSubmesh(v13, v147);
    v4 = *&v648[0];
    v6 = *(v10 + 24);
    v16 = v6;
    *&v646[2] = 0;
    memset(v644, 0, sizeof(v644));
    re::DynamicArray<re::GeomCell4>::resize(v644, v6);
    if (v6)
    {
      v155 = 0;
      v29 = *&v644[16];
      v156 = *&v646[2];
      v28 = *(v10 + 24);
      v157 = *(v10 + 40);
      v7 = v638;
      do
      {
        if (v155 == v29)
        {
          goto LABEL_751;
        }

        if (v155 == v28)
        {
          goto LABEL_767;
        }

        v158 = 0;
        *v650 = *(v157 + 16 * v155);
        v159 = v640;
        if (*&v650[12] == -1)
        {
          v160 = 3;
        }

        else
        {
          v160 = 4;
        }

        do
        {
          v5 = *&v650[4 * v158];
          if (v7 <= v5)
          {
            goto LABEL_448;
          }

          *(v156 + 4 * v158++) = v159[v5];
        }

        while (v160 != v158);
        ++v155;
        v156 += 16;
      }

      while (v155 != v6);
    }

    if (*(v10 + 48))
    {
      v161 = *(v10 + 60) == 0;
    }

    else
    {
      v161 = 1;
    }

    if (v161 && *(v9 + 10) == v6)
    {
      re::GeomMesh::updateFaceVaryingAttribute(v9, *(v13 + 8), v4, v644);
      goto LABEL_623;
    }

    *&v643[2] = 0;
    memset(v641, 0, sizeof(v641));
    re::DynamicArray<unsigned int>::resize(v641, v6, &re::kInvalidMeshIndex);
    v164 = *(v10 + 60);
    if (v164 == 2)
    {
      re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned int,unsigned int> const&>::HashBrownIterator(&v622, v10 + 64);
      LOBYTE(v621) = 2;
      v261 = *(v10 + 60);
      if (!*(v10 + 60))
      {
LABEL_503:
        v262 = *(v10 + 64);
        LOBYTE(v618) = 0;
        LODWORD(v619) = v262;
LABEL_619:
        while ((re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(&v621, &v618) & 1) == 0)
        {
          v10 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v621, v332);
          v331 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v621, v330);
          v16 = v331;
          v29 = *&v641[16];
          if (*&v641[16] <= v331)
          {
            goto LABEL_947;
          }

          *(*&v643[2] + 4 * v331) = HIDWORD(v10);
          re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::increment(&v621);
        }

        re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v618, v332);
        re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v621, v333);
        re::GeomMesh::updateFaceVaryingAttribute(v9, *(v13 + 8), v4, v644, v641);
        if (*v641 && *&v643[2])
        {
          (*(**v641 + 40))();
        }

LABEL_623:
        if ((*(*v13 + 16))(v13))
        {
          if (!*(v13 + 40))
          {
            goto LABEL_967;
          }

          v9 = *(v13 + 56);
          if ((*(*v13 + 16))(v13))
          {
            v312 = *&v648[1];
            v313 = 4 * v4;
            goto LABEL_642;
          }
        }

        goto LABEL_1021;
      }

      if (v261 == 2)
      {
        LOBYTE(v618) = 2;
        v619 = v10 + 64;
        v620 = xmmword_1E3049610;
        goto LABEL_619;
      }

      if (v261 != 1)
      {
        goto LABEL_1037;
      }

      v248 = *(v10 + 48);
    }

    else
    {
      if (v164 != 1)
      {
        if (*(v10 + 60))
        {
          goto LABEL_1031;
        }

        LOBYTE(v621) = 0;
        LODWORD(v622) = 0;
        goto LABEL_503;
      }

      v248 = *(v10 + 48);
      if (v248)
      {
        v249 = *(v10 + 96);
        v250 = *(v10 + 52);
        v251 = *(v10 + 80);
        v252 = v249 + 4 * v251;
        LOBYTE(v621) = 1;
        if (v249)
        {
          v253 = v249 + 4 * v250;
          if (v251 != v250)
          {
            v253 -= 4;
            v254 = 4 * v251 - 4 * v250;
            do
            {
              v256 = *(v253 + 4);
              v253 += 4;
              v255 = v256;
              if (!v254)
              {
                break;
              }

              v254 -= 4;
            }

            while (v255 == -1);
          }
        }

        else
        {
          v253 = 0;
        }

        v622 = v249;
        v623 = v253;
        v624 = v252;
      }

      else
      {
        LOBYTE(v621) = 1;
        v623 = 0;
        v624 = 0;
        v622 = 0;
      }
    }

    if (v248)
    {
      v328 = *(v10 + 96);
      v329 = v328 + 4 * *(v10 + 80);
      LOBYTE(v618) = 1;
      v619 = v328;
      *&v620 = v329;
      *(&v620 + 1) = v329;
    }

    else
    {
      LOBYTE(v618) = 1;
      v620 = 0uLL;
      v619 = 0;
    }

    goto LABEL_619;
  }

  if (v14 == 6)
  {
    result = (*(*v11 + 16))(v11);
    if (!result)
    {
      return result;
    }

    v634 = 0;
    v631 = 0;
    v632 = 0;
    v629 = 0;
    v630 = 0;
    v633 = 0;
    v626 = 0;
    v627 = 0;
    v625 = 0;
    v628 = 0;
    v16 = (*(*v13 + 16))(v13);
    if (v16)
    {
      v21 = re::GeomAttribute::accessValues<int>(v13);
      if (!v22)
      {
        goto LABEL_975;
      }

      v4 = v21;
    }

    else
    {
      v4 = 0;
    }

    v649 = 0;
    v10 = v16;
    *(&v647 + 1) = v16;
    memset(v648, 0, 28);
    *&v647 = v4;
    v640 = 0;
    v637 = 0;
    v638 = 0;
    v636 = 0;
    v639 = 0;
    re::DynamicArray<float>::resize(&v636, v16);
    if (!v16)
    {
      *&v648[1] = 0;
      goto LABEL_105;
    }

    v28 = 0;
    v29 = v638;
    v30 = v640;
    while (v29 > v28)
    {
      v30[v28] = v28;
      if (v16 == ++v28)
      {
        v31 = 0;
        *&v648[1] = 0;
        ++DWORD2(v648[1]);
        if (*(&v648[0] + 1) < v16)
        {
          re::DynamicArray<re::internal::GeomKDTree<float>::Node>::setCapacity(v648, v16);
          v31 = *&v648[1];
        }

        v32 = v16 - v31;
        if (v16 > v31 && v32 >= 1)
        {
          v33 = &v649[3 * v31];
          v34 = v32 + 1;
          do
          {
            *v33 = 0;
            v33[1] = 0;
            *(v33 + 4) = -1;
            *(v33 + 20) = 0;
            v33 += 3;
            --v34;
          }

          while (v34 > 1);
        }

        *&v648[1] = v16;
LABEL_105:
        ++DWORD2(v648[1]);
        if (*(&v647 + 1))
        {
          LODWORD(v655) = 0;
          re::internal::GeomKDTree<re::Vector2<float>>::buildHelper(&v647, 0, v16, &v636, &v655);
        }

        if (v636 && v640)
        {
          (*(*v636 + 40))();
        }

        v632 = 0;
        ++v633;
        v627 = 0;
        ++v628;
        re::DynamicArray<unsigned int>::resize(&v630, v16, &re::kInvalidMeshIndex);
        LOBYTE(v655) = 0;
        re::DynamicArray<unsigned char>::resize(&v625, v16, &v655);
        v640 = 0;
        v637 = 0;
        v638 = 0;
        v636 = 0;
        v639 = 0;
        if (v16)
        {
          v16 = 0;
          v29 = 1;
          while (1)
          {
            v28 = v632;
            if (v632 <= v16)
            {
              goto LABEL_703;
            }

            if (*(v634 + 4 * v16) == -1)
            {
              v638 = 0;
              v639 += 2;
              v64 = *&v648[1];
              if (*&v648[1] && (re::internal::GeomKDTree<re::Vector2<float>>::findWithinRadiusHelper(&v647, v649, (v4 + 8 * v16), &v636, a4), v64 = v638, v638))
              {
                v65 = 0;
                v66 = *v640;
              }

              else
              {
                v65 = 1;
                v66 = v16;
              }

              v28 = v632;
              if (v632 <= v16)
              {
                goto LABEL_855;
              }

              *(v634 + 4 * v16) = v66;
              v28 = v627;
              if (v627 <= v16)
              {
                goto LABEL_871;
              }

              v629[v16] = 1;
              if ((v65 & 1) == 0)
              {
                break;
              }
            }

LABEL_125:
            if (++v16 == v10)
            {
              if (v636 && v640)
              {
                (*(*v636 + 40))();
              }

              goto LABEL_129;
            }
          }

          v67 = 0;
          v40 = v638;
          v68 = v640;
          v6 = v632;
          v69 = v634;
          while (v40 != v67)
          {
            v5 = v68[v67];
            if (v6 <= v5)
            {
              goto LABEL_540;
            }

            *(v69 + 4 * v5) = v16;
            if (v64 == ++v67)
            {
              goto LABEL_125;
            }
          }

LABEL_524:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v281 = MEMORY[0x1E69E9C10];
          v282 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v282)
          {
            v283 = 3;
          }

          else
          {
            v283 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v40;
          v645 = 2048;
          *v646 = v40;
          _os_log_send_and_compose_impl(v283, v641, &v655, 80, &dword_1E1C61000, v281, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_528:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v284 = MEMORY[0x1E69E9C10];
          v285 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v285)
          {
            v286 = 3;
          }

          else
          {
            v286 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v40;
          v645 = 2048;
          *v646 = v40;
          _os_log_send_and_compose_impl(v286, v641, &v655, 80, &dword_1E1C61000, v284, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_532:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v287 = MEMORY[0x1E69E9C10];
          v288 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v288)
          {
            v289 = 3;
          }

          else
          {
            v289 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v40;
          v645 = 2048;
          *v646 = v40;
          _os_log_send_and_compose_impl(v289, v641, &v655, 80, &dword_1E1C61000, v287, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_536:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v290 = MEMORY[0x1E69E9C10];
          v291 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v291)
          {
            v292 = 3;
          }

          else
          {
            v292 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v40;
          v645 = 2048;
          *v646 = v40;
          _os_log_send_and_compose_impl(v292, v641, &v655, 80, &dword_1E1C61000, v290, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_540:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v293 = MEMORY[0x1E69E9C10];
          v294 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v294)
          {
            v295 = 3;
          }

          else
          {
            v295 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v5;
          v645 = 2048;
          *v646 = v6;
          _os_log_send_and_compose_impl(v295, v641, &v655, 80, &dword_1E1C61000, v293, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_544:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v296 = MEMORY[0x1E69E9C10];
          v297 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v297)
          {
            v298 = 3;
          }

          else
          {
            v298 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v5;
          v645 = 2048;
          *v646 = v6;
          _os_log_send_and_compose_impl(v298, v641, &v655, 80, &dword_1E1C61000, v296, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_548:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v299 = MEMORY[0x1E69E9C10];
          v300 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v300)
          {
            v301 = 3;
          }

          else
          {
            v301 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v5;
          v645 = 2048;
          *v646 = v6;
          _os_log_send_and_compose_impl(v301, v641, &v655, 80, &dword_1E1C61000, v299, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_552:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v13 = MEMORY[0x1E69E9C10];
          v302 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v302)
          {
            v303 = 3;
          }

          else
          {
            v303 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v5;
          v645 = 2048;
          *v646 = v6;
          _os_log_send_and_compose_impl(v303, v641, &v655, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_556:
          LOBYTE(v621) = 1;
          v623 = 0;
          v624 = 0;
          v622 = 0;
LABEL_568:
          if (v215)
          {
            v304 = *(v10 + 96);
            v305 = v304 + 4 * *(v10 + 80);
            LOBYTE(v618) = 1;
            v619 = v304;
            *&v620 = v305;
            *(&v620 + 1) = v305;
          }

          else
          {
            LOBYTE(v618) = 1;
            v620 = 0uLL;
            v619 = 0;
          }

LABEL_573:
          while ((re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(&v621, &v618) & 1) == 0)
          {
            v10 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v621, v308);
            v307 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v621, v306);
            v16 = v307;
            v29 = *&v641[16];
            if (*&v641[16] <= v307)
            {
              goto LABEL_935;
            }

            *(*&v643[2] + 4 * v307) = HIDWORD(v10);
            re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::increment(&v621);
          }

          re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v618, v308);
          re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v621, v309);
          re::GeomMesh::updateFaceVaryingAttribute(v9, *(v13 + 8), v4, v644, v641);
          if (*v641 && *&v643[2])
          {
            (*(**v641 + 40))();
          }

LABEL_577:
          v310 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v13);
          if (v311)
          {
            v312 = *&v648[1];
            v313 = 16 * v4;
            goto LABEL_643;
          }

LABEL_955:
          *v650 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v562 = MEMORY[0x1E69E9C10];
          v563 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v641 = 136315906;
          *&v641[4] = "operator[]";
          *&v641[12] = 1024;
          if (v563)
          {
            v564 = 3;
          }

          else
          {
            v564 = 2;
          }

          *&v641[14] = 621;
          *&v641[18] = 2048;
          *&v641[20] = 0;
          v642 = 2048;
          *v643 = 0;
          _os_log_send_and_compose_impl(v564, v650, &v655, 80, &dword_1E1C61000, v562, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v641, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_959:
          *v650 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v565 = MEMORY[0x1E69E9C10];
          v566 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v641 = 136315906;
          *&v641[4] = "operator[]";
          *&v641[12] = 1024;
          if (v566)
          {
            v567 = 3;
          }

          else
          {
            v567 = 2;
          }

          *&v641[14] = 789;
          *&v641[18] = 2048;
          *&v641[20] = 0;
          v642 = 2048;
          *v643 = 0;
          _os_log_send_and_compose_impl(v567, v650, &v655, 80, &dword_1E1C61000, v565, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v641, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_963:
          *v650 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v568 = MEMORY[0x1E69E9C10];
          v569 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v641 = 136315906;
          *&v641[4] = "operator[]";
          *&v641[12] = 1024;
          if (v569)
          {
            v570 = 3;
          }

          else
          {
            v570 = 2;
          }

          *&v641[14] = 789;
          *&v641[18] = 2048;
          *&v641[20] = 0;
          v642 = 2048;
          *v643 = 0;
          _os_log_send_and_compose_impl(v570, v650, &v655, 80, &dword_1E1C61000, v568, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v641, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_967:
          *v650 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v571 = MEMORY[0x1E69E9C10];
          v572 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v641 = 136315906;
          *&v641[4] = "operator[]";
          *&v641[12] = 1024;
          if (v572)
          {
            v573 = 3;
          }

          else
          {
            v573 = 2;
          }

          *&v641[14] = 789;
          *&v641[18] = 2048;
          *&v641[20] = 0;
          v642 = 2048;
          *v643 = 0;
          _os_log_send_and_compose_impl(v573, v650, &v655, 80, &dword_1E1C61000, v571, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v641, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_971:
          *v650 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v574 = MEMORY[0x1E69E9C10];
          v575 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v641 = 136315906;
          *&v641[4] = "operator[]";
          *&v641[12] = 1024;
          if (v575)
          {
            v576 = 3;
          }

          else
          {
            v576 = 2;
          }

          *&v641[14] = 789;
          *&v641[18] = 2048;
          *&v641[20] = 0;
          v642 = 2048;
          *v643 = 0;
          _os_log_send_and_compose_impl(v576, v650, &v655, 80, &dword_1E1C61000, v574, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v641, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_975:
          v636 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v577 = MEMORY[0x1E69E9C10];
          v578 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v647) = 136315906;
          *(v10 + 100) = "operator[]";
          WORD6(v647) = 1024;
          if (v578)
          {
            v579 = 3;
          }

          else
          {
            v579 = 2;
          }

          *(v10 + 110) = 613;
          WORD1(v648[0]) = 2048;
          *(v10 + 116) = 0;
          WORD6(v648[0]) = 2048;
          *(v10 + 126) = 0;
          _os_log_send_and_compose_impl(v579, &v636, &v655, 80, &dword_1E1C61000, v577, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v647, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_979:
          v636 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v580 = MEMORY[0x1E69E9C10];
          v581 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v647) = 136315906;
          *(v10 + 100) = "operator[]";
          WORD6(v647) = 1024;
          if (v581)
          {
            v582 = 3;
          }

          else
          {
            v582 = 2;
          }

          *(v10 + 110) = 613;
          WORD1(v648[0]) = 2048;
          *(v10 + 116) = 0;
          WORD6(v648[0]) = 2048;
          *(v10 + 126) = 0;
          _os_log_send_and_compose_impl(v582, &v636, &v655, 80, &dword_1E1C61000, v580, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v647, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_983:
          v636 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v583 = MEMORY[0x1E69E9C10];
          v584 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v647) = 136315906;
          *(v10 + 100) = "operator[]";
          WORD6(v647) = 1024;
          if (v584)
          {
            v585 = 3;
          }

          else
          {
            v585 = 2;
          }

          *(v10 + 110) = 613;
          WORD1(v648[0]) = 2048;
          *(v10 + 116) = 0;
          WORD6(v648[0]) = 2048;
          *(v10 + 126) = 0;
          _os_log_send_and_compose_impl(v585, &v636, &v655, 80, &dword_1E1C61000, v583, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v647, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_987:
          v636 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v586 = MEMORY[0x1E69E9C10];
          v587 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v647) = 136315906;
          *(v10 + 100) = "operator[]";
          WORD6(v647) = 1024;
          if (v587)
          {
            v588 = 3;
          }

          else
          {
            v588 = 2;
          }

          *(v10 + 110) = 613;
          WORD1(v648[0]) = 2048;
          *(v10 + 116) = 0;
          WORD6(v648[0]) = 2048;
          *(v10 + 126) = 0;
          _os_log_send_and_compose_impl(v588, &v636, &v655, 80, &dword_1E1C61000, v586, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v647, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_991:
          v636 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v589 = MEMORY[0x1E69E9C10];
          v590 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v647) = 136315906;
          *(v10 + 100) = "operator[]";
          WORD6(v647) = 1024;
          if (v590)
          {
            v591 = 3;
          }

          else
          {
            v591 = 2;
          }

          *(v10 + 110) = 613;
          WORD1(v648[0]) = 2048;
          *(v10 + 116) = 0;
          WORD6(v648[0]) = 2048;
          *(v10 + 126) = 0;
          _os_log_send_and_compose_impl(v591, &v636, &v655, 80, &dword_1E1C61000, v589, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v647, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_995:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v592 = MEMORY[0x1E69E9C10];
          v593 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v593)
          {
            v594 = 3;
          }

          else
          {
            v594 = 2;
          }

          *&v644[14] = 797;
          *&v644[18] = 2048;
          *&v644[20] = v4;
          v645 = 2048;
          *v646 = v4;
          _os_log_send_and_compose_impl(v594, v641, &v655, 80, &dword_1E1C61000, v592, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_999:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v595 = MEMORY[0x1E69E9C10];
          v596 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v596)
          {
            v597 = 3;
          }

          else
          {
            v597 = 2;
          }

          *&v644[14] = 797;
          *&v644[18] = 2048;
          *&v644[20] = v4;
          v645 = 2048;
          *v646 = v4;
          _os_log_send_and_compose_impl(v597, v641, &v655, 80, &dword_1E1C61000, v595, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_1003:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v598 = MEMORY[0x1E69E9C10];
          v599 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v599)
          {
            v600 = 3;
          }

          else
          {
            v600 = 2;
          }

          *&v644[14] = 797;
          *&v644[18] = 2048;
          *&v644[20] = v4;
          v645 = 2048;
          *v646 = v4;
          _os_log_send_and_compose_impl(v600, v641, &v655, 80, &dword_1E1C61000, v598, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_1007:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v601 = MEMORY[0x1E69E9C10];
          v602 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v602)
          {
            v603 = 3;
          }

          else
          {
            v603 = 2;
          }

          *&v644[14] = 797;
          *&v644[18] = 2048;
          *&v644[20] = v4;
          v645 = 2048;
          *v646 = v4;
          _os_log_send_and_compose_impl(v603, v641, &v655, 80, &dword_1E1C61000, v601, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_1011:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v604 = MEMORY[0x1E69E9C10];
          v605 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v605)
          {
            v606 = 3;
          }

          else
          {
            v606 = 2;
          }

          *&v644[14] = 797;
          *&v644[18] = 2048;
          *&v644[20] = v4;
          v645 = 2048;
          *v646 = v4;
          _os_log_send_and_compose_impl(v606, v641, &v655, 80, &dword_1E1C61000, v604, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
        }

LABEL_129:
        if (*&v648[0] && v649)
        {
          (*(**&v648[0] + 40))();
        }

        *&v648[1] = 0;
        *&v648[0] = 0;
        v647 = 0uLL;
        DWORD2(v648[0]) = 0;
        v640 = 0;
        v637 = 0;
        v638 = 0;
        v636 = 0;
        v639 = 0;
        v70 = (*(*v13 + 16))(v13);
        v71 = v70;
        if (v70)
        {
          v4 = v627;
          if (v627 <= v70 - 1)
          {
            goto LABEL_999;
          }

          LODWORD(v72) = 0;
          v73 = v629;
          v4 = v70;
          v74 = v70;
          do
          {
            v75 = *v73++;
            v72 = (v72 + v75);
            --v74;
          }

          while (v74);
        }

        else
        {
          v4 = 0;
          v72 = 0;
        }

        v10 = re::GeomAttribute::accessValues<int>(v13);
        v130 = v129;
        re::DynamicArray<unsigned long>::resize(&v647, v72);
        re::DynamicArray<unsigned int>::resize(&v636, v4, &re::kInvalidMeshIndex);
        if (v71)
        {
          v16 = 0;
          v132 = 0;
          v29 = v130;
          do
          {
            v28 = v627;
            if (v627 <= v16)
            {
              goto LABEL_687;
            }

            if (v629[v16])
            {
              v28 = v638;
              if (v638 <= v16)
              {
                goto LABEL_795;
              }

              v640[v16] = v132;
              if (v16 >= v29)
              {
                goto LABEL_811;
              }

              v28 = v132;
              v5 = *&v648[0];
              if (*&v648[0] <= v132)
              {
                goto LABEL_827;
              }

              *(*&v648[1] + 8 * v132++) = *(v10 + 8 * v16);
            }

            ++v16;
          }

          while (v4 != v16);
          v10 = 0;
          v29 = v627;
          v133 = v629;
          v28 = v632;
          v134 = v634;
          v16 = v638;
          v135 = v640;
          while (v29 != v10)
          {
            if (!v133[v10])
            {
              if (v28 <= v10)
              {
                goto LABEL_887;
              }

              v6 = *(v134 + 4 * v10);
              if (v16 <= v6)
              {
                goto LABEL_903;
              }

              if (v16 <= v10)
              {
                goto LABEL_919;
              }

              v135[v10] = v135[v6];
            }

            if (v4 == ++v10)
            {
              goto LABEL_294;
            }
          }

LABEL_719:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v385 = MEMORY[0x1E69E9C10];
          v386 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v386)
          {
            v387 = 3;
          }

          else
          {
            v387 = 2;
          }

          *&v644[14] = 797;
          *&v644[18] = 2048;
          *&v644[20] = v29;
          v645 = 2048;
          *v646 = v29;
          _os_log_send_and_compose_impl(v387, v641, &v655, 80, &dword_1E1C61000, v385, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_723:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v388 = MEMORY[0x1E69E9C10];
          v389 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v389)
          {
            v390 = 3;
          }

          else
          {
            v390 = 2;
          }

          *&v644[14] = 797;
          *&v644[18] = 2048;
          *&v644[20] = v29;
          v645 = 2048;
          *v646 = v29;
          _os_log_send_and_compose_impl(v390, v641, &v655, 80, &dword_1E1C61000, v388, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_727:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v391 = MEMORY[0x1E69E9C10];
          v392 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v392)
          {
            v393 = 3;
          }

          else
          {
            v393 = 2;
          }

          *&v644[14] = 797;
          *&v644[18] = 2048;
          *&v644[20] = v16;
          v645 = 2048;
          *v646 = v16;
          _os_log_send_and_compose_impl(v393, v641, &v655, 80, &dword_1E1C61000, v391, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_731:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v394 = MEMORY[0x1E69E9C10];
          v395 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v395)
          {
            v396 = 3;
          }

          else
          {
            v396 = 2;
          }

          *&v644[14] = 797;
          *&v644[18] = 2048;
          *&v644[20] = v16;
          v645 = 2048;
          *v646 = v16;
          _os_log_send_and_compose_impl(v396, v641, &v655, 80, &dword_1E1C61000, v394, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_735:
          *v650 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v397 = MEMORY[0x1E69E9C10];
          v398 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v641 = 136315906;
          *&v641[4] = "operator[]";
          *&v641[12] = 1024;
          if (v398)
          {
            v399 = 3;
          }

          else
          {
            v399 = 2;
          }

          *&v641[14] = 789;
          *&v641[18] = 2048;
          *&v641[20] = v29;
          v642 = 2048;
          *v643 = v29;
          _os_log_send_and_compose_impl(v399, v650, &v655, 80, &dword_1E1C61000, v397, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v641, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_739:
          *v650 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v400 = MEMORY[0x1E69E9C10];
          v401 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v641 = 136315906;
          *&v641[4] = "operator[]";
          *&v641[12] = 1024;
          if (v401)
          {
            v402 = 3;
          }

          else
          {
            v402 = 2;
          }

          *&v641[14] = 797;
          *&v641[18] = 2048;
          *&v641[20] = v28;
          v642 = 2048;
          *v643 = v28;
          _os_log_send_and_compose_impl(v402, v650, &v655, 80, &dword_1E1C61000, v400, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v641, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_743:
          *v650 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v403 = MEMORY[0x1E69E9C10];
          v404 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v641 = 136315906;
          *&v641[4] = "operator[]";
          *&v641[12] = 1024;
          if (v404)
          {
            v405 = 3;
          }

          else
          {
            v405 = 2;
          }

          *&v641[14] = 789;
          *&v641[18] = 2048;
          *&v641[20] = v29;
          v642 = 2048;
          *v643 = v29;
          _os_log_send_and_compose_impl(v405, v650, &v655, 80, &dword_1E1C61000, v403, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v641, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_747:
          *v650 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v406 = MEMORY[0x1E69E9C10];
          v407 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v641 = 136315906;
          *&v641[4] = "operator[]";
          *&v641[12] = 1024;
          if (v407)
          {
            v408 = 3;
          }

          else
          {
            v408 = 2;
          }

          *&v641[14] = 789;
          *&v641[18] = 2048;
          *&v641[20] = v29;
          v642 = 2048;
          *v643 = v29;
          _os_log_send_and_compose_impl(v408, v650, &v655, 80, &dword_1E1C61000, v406, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v641, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_751:
          *v650 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v409 = MEMORY[0x1E69E9C10];
          v410 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v641 = 136315906;
          *&v641[4] = "operator[]";
          *&v641[12] = 1024;
          if (v410)
          {
            v411 = 3;
          }

          else
          {
            v411 = 2;
          }

          *&v641[14] = 789;
          *&v641[18] = 2048;
          *&v641[20] = v29;
          v642 = 2048;
          *v643 = v29;
          _os_log_send_and_compose_impl(v411, v650, &v655, 80, &dword_1E1C61000, v409, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v641, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_755:
          *v650 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v412 = MEMORY[0x1E69E9C10];
          v413 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v641 = 136315906;
          *&v641[4] = "operator[]";
          *&v641[12] = 1024;
          if (v413)
          {
            v414 = 3;
          }

          else
          {
            v414 = 2;
          }

          *&v641[14] = 789;
          *&v641[18] = 2048;
          *&v641[20] = v29;
          v642 = 2048;
          *v643 = v29;
          _os_log_send_and_compose_impl(v414, v650, &v655, 80, &dword_1E1C61000, v412, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v641, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_759:
          *v650 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v415 = MEMORY[0x1E69E9C10];
          v416 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v641 = 136315906;
          *&v641[4] = "operator[]";
          *&v641[12] = 1024;
          if (v416)
          {
            v417 = 3;
          }

          else
          {
            v417 = 2;
          }

          *&v641[14] = 797;
          *&v641[18] = 2048;
          *&v641[20] = v28;
          v642 = 2048;
          *v643 = v28;
          _os_log_send_and_compose_impl(v417, v650, &v655, 80, &dword_1E1C61000, v415, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v641, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_763:
          *v650 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v418 = MEMORY[0x1E69E9C10];
          v419 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v641 = 136315906;
          *&v641[4] = "operator[]";
          *&v641[12] = 1024;
          if (v419)
          {
            v420 = 3;
          }

          else
          {
            v420 = 2;
          }

          *&v641[14] = 797;
          *&v641[18] = 2048;
          *&v641[20] = v28;
          v642 = 2048;
          *v643 = v28;
          _os_log_send_and_compose_impl(v420, v650, &v655, 80, &dword_1E1C61000, v418, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v641, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_767:
          *v650 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v421 = MEMORY[0x1E69E9C10];
          v422 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v641 = 136315906;
          *&v641[4] = "operator[]";
          *&v641[12] = 1024;
          if (v422)
          {
            v423 = 3;
          }

          else
          {
            v423 = 2;
          }

          *&v641[14] = 797;
          *&v641[18] = 2048;
          *&v641[20] = v28;
          v642 = 2048;
          *v643 = v28;
          _os_log_send_and_compose_impl(v423, v650, &v655, 80, &dword_1E1C61000, v421, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v641, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_771:
          *v650 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v424 = MEMORY[0x1E69E9C10];
          v425 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v641 = 136315906;
          *&v641[4] = "operator[]";
          *&v641[12] = 1024;
          if (v425)
          {
            v426 = 3;
          }

          else
          {
            v426 = 2;
          }

          *&v641[14] = 797;
          *&v641[18] = 2048;
          *&v641[20] = v28;
          v642 = 2048;
          *v643 = v28;
          _os_log_send_and_compose_impl(v426, v650, &v655, 80, &dword_1E1C61000, v424, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v641, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_775:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v427 = MEMORY[0x1E69E9C10];
          v428 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v428)
          {
            v429 = 3;
          }

          else
          {
            v429 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v16;
          v645 = 2048;
          *v646 = v28;
          _os_log_send_and_compose_impl(v429, v641, &v655, 80, &dword_1E1C61000, v427, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_779:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v430 = MEMORY[0x1E69E9C10];
          v431 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v431)
          {
            v432 = 3;
          }

          else
          {
            v432 = 2;
          }

          *&v644[14] = 613;
          *&v644[18] = 2048;
          *&v644[20] = v16;
          v645 = 2048;
          *v646 = v29;
          _os_log_send_and_compose_impl(v432, v641, &v655, 80, &dword_1E1C61000, v430, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_783:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v433 = MEMORY[0x1E69E9C10];
          v434 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v434)
          {
            v435 = 3;
          }

          else
          {
            v435 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v28;
          v645 = 2048;
          *v646 = v5;
          _os_log_send_and_compose_impl(v435, v641, &v655, 80, &dword_1E1C61000, v433, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_787:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v436 = MEMORY[0x1E69E9C10];
          v437 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v437)
          {
            v438 = 3;
          }

          else
          {
            v438 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v29;
          v645 = 2048;
          *v646 = v6;
          _os_log_send_and_compose_impl(v438, v641, &v655, 80, &dword_1E1C61000, v436, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_791:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v439 = MEMORY[0x1E69E9C10];
          v440 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v440)
          {
            v441 = 3;
          }

          else
          {
            v441 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v29;
          v645 = 2048;
          *v646 = v6;
          _os_log_send_and_compose_impl(v441, v641, &v655, 80, &dword_1E1C61000, v439, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_795:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v442 = MEMORY[0x1E69E9C10];
          v443 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v443)
          {
            v444 = 3;
          }

          else
          {
            v444 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v16;
          v645 = 2048;
          *v646 = v28;
          _os_log_send_and_compose_impl(v444, v641, &v655, 80, &dword_1E1C61000, v442, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_799:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v445 = MEMORY[0x1E69E9C10];
          v446 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v446)
          {
            v447 = 3;
          }

          else
          {
            v447 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v16;
          v645 = 2048;
          *v646 = v28;
          _os_log_send_and_compose_impl(v447, v641, &v655, 80, &dword_1E1C61000, v445, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_803:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v448 = MEMORY[0x1E69E9C10];
          v449 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v449)
          {
            v450 = 3;
          }

          else
          {
            v450 = 2;
          }

          *&v644[14] = 613;
          *&v644[18] = 2048;
          *&v644[20] = v29;
          v645 = 2048;
          *v646 = v28;
          _os_log_send_and_compose_impl(v450, v641, &v655, 80, &dword_1E1C61000, v448, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_807:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v451 = MEMORY[0x1E69E9C10];
          v452 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v452)
          {
            v453 = 3;
          }

          else
          {
            v453 = 2;
          }

          *&v644[14] = 613;
          *&v644[18] = 2048;
          *&v644[20] = v29;
          v645 = 2048;
          *v646 = v28;
          _os_log_send_and_compose_impl(v453, v641, &v655, 80, &dword_1E1C61000, v451, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_811:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v454 = MEMORY[0x1E69E9C10];
          v455 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v455)
          {
            v456 = 3;
          }

          else
          {
            v456 = 2;
          }

          *&v644[14] = 613;
          *&v644[18] = 2048;
          *&v644[20] = v16;
          v645 = 2048;
          *v646 = v29;
          _os_log_send_and_compose_impl(v456, v641, &v655, 80, &dword_1E1C61000, v454, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_815:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v457 = MEMORY[0x1E69E9C10];
          v458 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v458)
          {
            v459 = 3;
          }

          else
          {
            v459 = 2;
          }

          *&v644[14] = 613;
          *&v644[18] = 2048;
          *&v644[20] = v16;
          v645 = 2048;
          *v646 = v29;
          _os_log_send_and_compose_impl(v459, v641, &v655, 80, &dword_1E1C61000, v457, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_819:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v460 = MEMORY[0x1E69E9C10];
          v461 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v461)
          {
            v462 = 3;
          }

          else
          {
            v462 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v5;
          v645 = 2048;
          *v646 = v7;
          _os_log_send_and_compose_impl(v462, v641, &v655, 80, &dword_1E1C61000, v460, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_823:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v463 = MEMORY[0x1E69E9C10];
          v464 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v464)
          {
            v465 = 3;
          }

          else
          {
            v465 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v5;
          v645 = 2048;
          *v646 = v7;
          _os_log_send_and_compose_impl(v465, v641, &v655, 80, &dword_1E1C61000, v463, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_827:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v466 = MEMORY[0x1E69E9C10];
          v467 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v467)
          {
            v468 = 3;
          }

          else
          {
            v468 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v28;
          v645 = 2048;
          *v646 = v5;
          _os_log_send_and_compose_impl(v468, v641, &v655, 80, &dword_1E1C61000, v466, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_831:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v469 = MEMORY[0x1E69E9C10];
          v470 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v470)
          {
            v471 = 3;
          }

          else
          {
            v471 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v28;
          v645 = 2048;
          *v646 = v5;
          _os_log_send_and_compose_impl(v471, v641, &v655, 80, &dword_1E1C61000, v469, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_835:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v472 = MEMORY[0x1E69E9C10];
          v473 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v473)
          {
            v474 = 3;
          }

          else
          {
            v474 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v16;
          v645 = 2048;
          *v646 = v28;
          _os_log_send_and_compose_impl(v474, v641, &v655, 80, &dword_1E1C61000, v472, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_839:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v475 = MEMORY[0x1E69E9C10];
          v476 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v476)
          {
            v477 = 3;
          }

          else
          {
            v477 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v16;
          v645 = 2048;
          *v646 = v28;
          _os_log_send_and_compose_impl(v477, v641, &v655, 80, &dword_1E1C61000, v475, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_843:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v478 = MEMORY[0x1E69E9C10];
          v479 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v479)
          {
            v480 = 3;
          }

          else
          {
            v480 = 2;
          }

          *&v644[14] = 797;
          *&v644[18] = 2048;
          *&v644[20] = v10;
          v645 = 2048;
          *v646 = v28;
          _os_log_send_and_compose_impl(v480, v641, &v655, 80, &dword_1E1C61000, v478, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_847:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v481 = MEMORY[0x1E69E9C10];
          v482 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v482)
          {
            v483 = 3;
          }

          else
          {
            v483 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v6;
          v645 = 2048;
          *v646 = v16;
          _os_log_send_and_compose_impl(v483, v641, &v655, 80, &dword_1E1C61000, v481, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_851:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v484 = MEMORY[0x1E69E9C10];
          v485 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v485)
          {
            v486 = 3;
          }

          else
          {
            v486 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v10;
          v645 = 2048;
          *v646 = v16;
          _os_log_send_and_compose_impl(v486, v641, &v655, 80, &dword_1E1C61000, v484, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_855:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v487 = MEMORY[0x1E69E9C10];
          v488 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v488)
          {
            v489 = 3;
          }

          else
          {
            v489 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v16;
          v645 = 2048;
          *v646 = v28;
          _os_log_send_and_compose_impl(v489, v641, &v655, 80, &dword_1E1C61000, v487, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_859:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v490 = MEMORY[0x1E69E9C10];
          v491 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v491)
          {
            v492 = 3;
          }

          else
          {
            v492 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v16;
          v645 = 2048;
          *v646 = v28;
          _os_log_send_and_compose_impl(v492, v641, &v655, 80, &dword_1E1C61000, v490, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_863:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v493 = MEMORY[0x1E69E9C10];
          v494 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v494)
          {
            v495 = 3;
          }

          else
          {
            v495 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v16;
          v645 = 2048;
          *v646 = v28;
          _os_log_send_and_compose_impl(v495, v641, &v655, 80, &dword_1E1C61000, v493, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_867:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v496 = MEMORY[0x1E69E9C10];
          v497 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v497)
          {
            v498 = 3;
          }

          else
          {
            v498 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v16;
          v645 = 2048;
          *v646 = v28;
          _os_log_send_and_compose_impl(v498, v641, &v655, 80, &dword_1E1C61000, v496, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_871:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v499 = MEMORY[0x1E69E9C10];
          v500 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v500)
          {
            v501 = 3;
          }

          else
          {
            v501 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v16;
          v645 = 2048;
          *v646 = v28;
          _os_log_send_and_compose_impl(v501, v641, &v655, 80, &dword_1E1C61000, v499, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_875:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v502 = MEMORY[0x1E69E9C10];
          v503 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v503)
          {
            v504 = 3;
          }

          else
          {
            v504 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v16;
          v645 = 2048;
          *v646 = v28;
          _os_log_send_and_compose_impl(v504, v641, &v655, 80, &dword_1E1C61000, v502, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_879:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v505 = MEMORY[0x1E69E9C10];
          v506 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v506)
          {
            v507 = 3;
          }

          else
          {
            v507 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v16;
          v645 = 2048;
          *v646 = v28;
          _os_log_send_and_compose_impl(v507, v641, &v655, 80, &dword_1E1C61000, v505, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_883:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v508 = MEMORY[0x1E69E9C10];
          v509 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v509)
          {
            v510 = 3;
          }

          else
          {
            v510 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v16;
          v645 = 2048;
          *v646 = v28;
          _os_log_send_and_compose_impl(v510, v641, &v655, 80, &dword_1E1C61000, v508, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_887:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v511 = MEMORY[0x1E69E9C10];
          v512 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v512)
          {
            v513 = 3;
          }

          else
          {
            v513 = 2;
          }

          *&v644[14] = 797;
          *&v644[18] = 2048;
          *&v644[20] = v10;
          v645 = 2048;
          *v646 = v28;
          _os_log_send_and_compose_impl(v513, v641, &v655, 80, &dword_1E1C61000, v511, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_891:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v514 = MEMORY[0x1E69E9C10];
          v515 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v515)
          {
            v516 = 3;
          }

          else
          {
            v516 = 2;
          }

          *&v644[14] = 797;
          *&v644[18] = 2048;
          *&v644[20] = v10;
          v645 = 2048;
          *v646 = v28;
          _os_log_send_and_compose_impl(v516, v641, &v655, 80, &dword_1E1C61000, v514, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_895:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v517 = MEMORY[0x1E69E9C10];
          v518 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v518)
          {
            v519 = 3;
          }

          else
          {
            v519 = 2;
          }

          *&v644[14] = 797;
          *&v644[18] = 2048;
          *&v644[20] = v10;
          v645 = 2048;
          *v646 = v28;
          _os_log_send_and_compose_impl(v519, v641, &v655, 80, &dword_1E1C61000, v517, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_899:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v520 = MEMORY[0x1E69E9C10];
          v521 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v521)
          {
            v522 = 3;
          }

          else
          {
            v522 = 2;
          }

          *&v644[14] = 797;
          *&v644[18] = 2048;
          *&v644[20] = v10;
          v645 = 2048;
          *v646 = v28;
          _os_log_send_and_compose_impl(v522, v641, &v655, 80, &dword_1E1C61000, v520, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_903:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v523 = MEMORY[0x1E69E9C10];
          v524 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v524)
          {
            v525 = 3;
          }

          else
          {
            v525 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v6;
          v645 = 2048;
          *v646 = v16;
          _os_log_send_and_compose_impl(v525, v641, &v655, 80, &dword_1E1C61000, v523, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_907:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v526 = MEMORY[0x1E69E9C10];
          v527 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v527)
          {
            v528 = 3;
          }

          else
          {
            v528 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v6;
          v645 = 2048;
          *v646 = v16;
          _os_log_send_and_compose_impl(v528, v641, &v655, 80, &dword_1E1C61000, v526, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_911:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v529 = MEMORY[0x1E69E9C10];
          v530 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v530)
          {
            v531 = 3;
          }

          else
          {
            v531 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v6;
          v645 = 2048;
          *v646 = v29;
          _os_log_send_and_compose_impl(v531, v641, &v655, 80, &dword_1E1C61000, v529, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_915:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v532 = MEMORY[0x1E69E9C10];
          v533 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v533)
          {
            v534 = 3;
          }

          else
          {
            v534 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v6;
          v645 = 2048;
          *v646 = v29;
          _os_log_send_and_compose_impl(v534, v641, &v655, 80, &dword_1E1C61000, v532, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_919:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v535 = MEMORY[0x1E69E9C10];
          v536 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v536)
          {
            v537 = 3;
          }

          else
          {
            v537 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v10;
          v645 = 2048;
          *v646 = v16;
          _os_log_send_and_compose_impl(v537, v641, &v655, 80, &dword_1E1C61000, v535, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_923:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v538 = MEMORY[0x1E69E9C10];
          v539 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v539)
          {
            v540 = 3;
          }

          else
          {
            v540 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v10;
          v645 = 2048;
          *v646 = v16;
          _os_log_send_and_compose_impl(v540, v641, &v655, 80, &dword_1E1C61000, v538, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_927:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v541 = MEMORY[0x1E69E9C10];
          v542 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v542)
          {
            v543 = 3;
          }

          else
          {
            v543 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v10;
          v645 = 2048;
          *v646 = v29;
          _os_log_send_and_compose_impl(v543, v641, &v655, 80, &dword_1E1C61000, v541, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_931:
          *v641 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v544 = MEMORY[0x1E69E9C10];
          v545 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v644 = 136315906;
          *&v644[4] = "operator[]";
          *&v644[12] = 1024;
          if (v545)
          {
            v546 = 3;
          }

          else
          {
            v546 = 2;
          }

          *&v644[14] = 789;
          *&v644[18] = 2048;
          *&v644[20] = v10;
          v645 = 2048;
          *v646 = v29;
          _os_log_send_and_compose_impl(v546, v641, &v655, 80, &dword_1E1C61000, v544, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_935:
          v635 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v547 = MEMORY[0x1E69E9C10];
          v548 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v650 = 136315906;
          *&v650[4] = "operator[]";
          *&v650[12] = 1024;
          if (v548)
          {
            v549 = 3;
          }

          else
          {
            v549 = 2;
          }

          *&v650[14] = 789;
          v651 = 2048;
          v652 = v16;
          v653 = 2048;
          v654 = v29;
          _os_log_send_and_compose_impl(v549, &v635, &v655, 80, &dword_1E1C61000, v547, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v650, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_939:
          v635 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v550 = MEMORY[0x1E69E9C10];
          v551 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v650 = 136315906;
          *&v650[4] = "operator[]";
          *&v650[12] = 1024;
          if (v551)
          {
            v552 = 3;
          }

          else
          {
            v552 = 2;
          }

          *&v650[14] = 789;
          v651 = 2048;
          v652 = v16;
          v653 = 2048;
          v654 = v29;
          _os_log_send_and_compose_impl(v552, &v635, &v655, 80, &dword_1E1C61000, v550, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v650, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_943:
          v635 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v553 = MEMORY[0x1E69E9C10];
          v554 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v650 = 136315906;
          *&v650[4] = "operator[]";
          *&v650[12] = 1024;
          if (v554)
          {
            v555 = 3;
          }

          else
          {
            v555 = 2;
          }

          *&v650[14] = 789;
          v651 = 2048;
          v652 = v16;
          v653 = 2048;
          v654 = v29;
          _os_log_send_and_compose_impl(v555, &v635, &v655, 80, &dword_1E1C61000, v553, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v650, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_947:
          v635 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v556 = MEMORY[0x1E69E9C10];
          v557 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v650 = 136315906;
          *&v650[4] = "operator[]";
          *&v650[12] = 1024;
          if (v557)
          {
            v558 = 3;
          }

          else
          {
            v558 = 2;
          }

          *&v650[14] = 789;
          v651 = 2048;
          v652 = v16;
          v653 = 2048;
          v654 = v29;
          _os_log_send_and_compose_impl(v558, &v635, &v655, 80, &dword_1E1C61000, v556, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v650, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_951:
          v635 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v559 = MEMORY[0x1E69E9C10];
          v560 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v650 = 136315906;
          *&v650[4] = "operator[]";
          *&v650[12] = 1024;
          if (v560)
          {
            v561 = 3;
          }

          else
          {
            v561 = 2;
          }

          *&v650[14] = 789;
          v651 = 2048;
          v652 = v16;
          v653 = 2048;
          v654 = v29;
          _os_log_send_and_compose_impl(v561, &v635, &v655, 80, &dword_1E1C61000, v559, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v650, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
          goto LABEL_955;
        }

LABEL_294:
        v10 = re::internal::accessFaceVaryingAttributeSubmesh(v13, v131);
        v4 = *&v648[0];
        v6 = *(v10 + 24);
        v16 = v6;
        *&v646[2] = 0;
        memset(v644, 0, sizeof(v644));
        re::DynamicArray<re::GeomCell4>::resize(v644, v6);
        if (v6)
        {
          v136 = 0;
          v29 = *&v644[16];
          v137 = *&v646[2];
          v28 = *(v10 + 24);
          v138 = *(v10 + 40);
          v7 = v638;
          while (v136 != v29)
          {
            if (v136 == v28)
            {
              goto LABEL_759;
            }

            v139 = 0;
            *v650 = *(v138 + 16 * v136);
            v140 = v640;
            if (*&v650[12] == -1)
            {
              v141 = 3;
            }

            else
            {
              v141 = 4;
            }

            do
            {
              v5 = *&v650[4 * v139];
              if (v7 <= v5)
              {
                goto LABEL_440;
              }

              *(v137 + 4 * v139++) = v140[v5];
            }

            while (v141 != v139);
            ++v136;
            v137 += 16;
            if (v136 == v6)
            {
              goto LABEL_304;
            }
          }

          goto LABEL_743;
        }

LABEL_304:
        if (*(v10 + 48))
        {
          v142 = *(v10 + 60) == 0;
        }

        else
        {
          v142 = 1;
        }

        if (v142 && *(v9 + 10) == v6)
        {
          re::GeomMesh::updateFaceVaryingAttribute(v9, *(v13 + 8), v4, v644);
        }

        else
        {
          *&v643[2] = 0;
          memset(v641, 0, sizeof(v641));
          re::DynamicArray<unsigned int>::resize(v641, v6, &re::kInvalidMeshIndex);
          v145 = *(v10 + 60);
          if (v145 == 2)
          {
            re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned int,unsigned int> const&>::HashBrownIterator(&v622, v10 + 64);
            LOBYTE(v621) = 2;
            v237 = *(v10 + 60);
            if (!*(v10 + 60))
            {
LABEL_479:
              v238 = *(v10 + 64);
              LOBYTE(v618) = 0;
              LODWORD(v619) = v238;
              goto LABEL_586;
            }

            if (v237 == 2)
            {
              LOBYTE(v618) = 2;
              v619 = v10 + 64;
              v620 = xmmword_1E3049610;
              goto LABEL_586;
            }

            if (v237 != 1)
            {
              goto LABEL_1035;
            }

            v227 = *(v10 + 48);
          }

          else
          {
            if (v145 != 1)
            {
              if (*(v10 + 60))
              {
                goto LABEL_1030;
              }

              LOBYTE(v621) = 0;
              LODWORD(v622) = 0;
              goto LABEL_479;
            }

            v227 = *(v10 + 48);
            if (v227)
            {
              v228 = *(v10 + 96);
              v229 = *(v10 + 52);
              v230 = *(v10 + 80);
              v231 = v228 + 4 * v230;
              LOBYTE(v621) = 1;
              if (v228)
              {
                v232 = v228 + 4 * v229;
                if (v230 != v229)
                {
                  v232 -= 4;
                  v233 = 4 * v230 - 4 * v229;
                  do
                  {
                    v235 = *(v232 + 4);
                    v232 += 4;
                    v234 = v235;
                    if (!v233)
                    {
                      break;
                    }

                    v233 -= 4;
                  }

                  while (v234 == -1);
                }
              }

              else
              {
                v232 = 0;
              }

              v622 = v228;
              v623 = v232;
              v624 = v231;
            }

            else
            {
              LOBYTE(v621) = 1;
              v623 = 0;
              v624 = 0;
              v622 = 0;
            }
          }

          if (v227)
          {
            v314 = *(v10 + 96);
            v315 = v314 + 4 * *(v10 + 80);
            LOBYTE(v618) = 1;
            v619 = v314;
            *&v620 = v315;
            *(&v620 + 1) = v315;
          }

          else
          {
            LOBYTE(v618) = 1;
            v620 = 0uLL;
            v619 = 0;
          }

LABEL_586:
          while ((re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(&v621, &v618) & 1) == 0)
          {
            v10 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v621, v318);
            v317 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v621, v316);
            v16 = v317;
            v29 = *&v641[16];
            if (*&v641[16] <= v317)
            {
              goto LABEL_939;
            }

            *(*&v643[2] + 4 * v317) = HIDWORD(v10);
            re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::increment(&v621);
          }

          re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v618, v318);
          re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v621, v319);
          re::GeomMesh::updateFaceVaryingAttribute(v9, *(v13 + 8), v4, v644, v641);
          if (*v641 && *&v643[2])
          {
            (*(**v641 + 40))();
          }
        }

        if (!(*(*v13 + 16))(v13))
        {
          goto LABEL_593;
        }

        if (!*(v13 + 40))
        {
          goto LABEL_959;
        }

        v9 = *(v13 + 56);
        if (!(*(*v13 + 16))(v13))
        {
LABEL_593:
          *v650 = 0;
          v658 = 0u;
          v659 = 0u;
          v656 = 0u;
          v657 = 0u;
          v655 = 0u;
          v13 = MEMORY[0x1E69E9C10];
          v320 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v641 = 136315906;
          *&v641[4] = "operator[]";
          *&v641[12] = 1024;
          if (v320)
          {
            v321 = 3;
          }

          else
          {
            v321 = 2;
          }

          *&v641[14] = 621;
          *&v641[18] = 2048;
          *&v641[20] = 0;
          v642 = 2048;
          *v643 = 0;
          _os_log_send_and_compose_impl(v321, v650, &v655, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v641, 38, v616, v617);
          _os_crash_msg();
          __break(1u);
LABEL_597:
          v244 = 0;
LABEL_598:
          v622 = v240;
          v623 = v244;
          v624 = v243;
          goto LABEL_599;
        }

LABEL_641:
        v312 = *&v648[1];
        v313 = 8 * v4;
LABEL_642:
        v310 = v9;
LABEL_643:
        memcpy(v310, v312, v313);
        if (*v644 && *&v646[2])
        {
          (*(**v644 + 40))();
        }

        if (v636 && v640)
        {
          (*(*v636 + 40))();
        }

        if (v647 && *&v648[1])
        {
          (*(*v647 + 40))();
        }

        if (v625 && v629)
        {
          (*(*v625 + 40))();
        }

        result = v630;
        if (v630)
        {
          if (v634)
          {
            return (*(*v630 + 40))();
          }
        }

        return result;
      }
    }

    *v641 = 0;
    v658 = 0u;
    v659 = 0u;
    v656 = 0u;
    v657 = 0u;
    v655 = 0u;
    v340 = MEMORY[0x1E69E9C10];
    v341 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v644 = 136315906;
    *&v644[4] = "operator[]";
    *&v644[12] = 1024;
    if (v341)
    {
      v342 = 3;
    }

    else
    {
      v342 = 2;
    }

    *&v644[14] = 789;
    *&v644[18] = 2048;
    *&v644[20] = v28;
    v645 = 2048;
    *v646 = v29;
    _os_log_send_and_compose_impl(v342, v641, &v655, 80, &dword_1E1C61000, v340, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
    _os_crash_msg();
    __break(1u);
LABEL_663:
    *v641 = 0;
    v658 = 0u;
    v659 = 0u;
    v656 = 0u;
    v657 = 0u;
    v655 = 0u;
    v343 = MEMORY[0x1E69E9C10];
    v344 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v644 = 136315906;
    *&v644[4] = "operator[]";
    *&v644[12] = 1024;
    if (v344)
    {
      v345 = 3;
    }

    else
    {
      v345 = 2;
    }

    *&v644[14] = 789;
    *&v644[18] = 2048;
    *&v644[20] = v28;
    v645 = 2048;
    *v646 = v29;
    _os_log_send_and_compose_impl(v345, v641, &v655, 80, &dword_1E1C61000, v343, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
    _os_crash_msg();
    __break(1u);
LABEL_667:
    *v641 = 0;
    v658 = 0u;
    v659 = 0u;
    v656 = 0u;
    v657 = 0u;
    v655 = 0u;
    v346 = MEMORY[0x1E69E9C10];
    v347 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v644 = 136315906;
    *&v644[4] = "operator[]";
    *&v644[12] = 1024;
    if (v347)
    {
      v348 = 3;
    }

    else
    {
      v348 = 2;
    }

    *&v644[14] = 789;
    *&v644[18] = 2048;
    *&v644[20] = v28;
    v645 = 2048;
    *v646 = v29;
    _os_log_send_and_compose_impl(v348, v641, &v655, 80, &dword_1E1C61000, v346, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
    _os_crash_msg();
    __break(1u);
LABEL_671:
    *v641 = 0;
    v658 = 0u;
    v659 = 0u;
    v656 = 0u;
    v657 = 0u;
    v655 = 0u;
    v349 = MEMORY[0x1E69E9C10];
    v350 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v644 = 136315906;
    *&v644[4] = "operator[]";
    *&v644[12] = 1024;
    if (v350)
    {
      v351 = 3;
    }

    else
    {
      v351 = 2;
    }

    *&v644[14] = 789;
    *&v644[18] = 2048;
    *&v644[20] = v28;
    v645 = 2048;
    *v646 = v29;
    _os_log_send_and_compose_impl(v351, v641, &v655, 80, &dword_1E1C61000, v349, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
    _os_crash_msg();
    __break(1u);
LABEL_675:
    *v641 = 0;
    v658 = 0u;
    v659 = 0u;
    v656 = 0u;
    v657 = 0u;
    v655 = 0u;
    v352 = MEMORY[0x1E69E9C10];
    v353 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v644 = 136315906;
    *&v644[4] = "operator[]";
    *&v644[12] = 1024;
    if (v353)
    {
      v354 = 3;
    }

    else
    {
      v354 = 2;
    }

    *&v644[14] = 797;
    *&v644[18] = 2048;
    *&v644[20] = v16;
    v645 = 2048;
    *v646 = v28;
    _os_log_send_and_compose_impl(v354, v641, &v655, 80, &dword_1E1C61000, v352, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
    _os_crash_msg();
    __break(1u);
LABEL_679:
    *v641 = 0;
    v658 = 0u;
    v659 = 0u;
    v656 = 0u;
    v657 = 0u;
    v655 = 0u;
    v355 = MEMORY[0x1E69E9C10];
    v356 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v644 = 136315906;
    *&v644[4] = "operator[]";
    *&v644[12] = 1024;
    if (v356)
    {
      v357 = 3;
    }

    else
    {
      v357 = 2;
    }

    *&v644[14] = 797;
    *&v644[18] = 2048;
    *&v644[20] = v16;
    v645 = 2048;
    *v646 = v16;
    _os_log_send_and_compose_impl(v357, v641, &v655, 80, &dword_1E1C61000, v355, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
    _os_crash_msg();
    __break(1u);
LABEL_683:
    *v641 = 0;
    v658 = 0u;
    v659 = 0u;
    v656 = 0u;
    v657 = 0u;
    v655 = 0u;
    v358 = MEMORY[0x1E69E9C10];
    v359 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v644 = 136315906;
    *&v644[4] = "operator[]";
    *&v644[12] = 1024;
    if (v359)
    {
      v360 = 3;
    }

    else
    {
      v360 = 2;
    }

    *&v644[14] = 797;
    *&v644[18] = 2048;
    *&v644[20] = v16;
    v645 = 2048;
    *v646 = v16;
    _os_log_send_and_compose_impl(v360, v641, &v655, 80, &dword_1E1C61000, v358, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
    _os_crash_msg();
    __break(1u);
LABEL_687:
    *v641 = 0;
    v658 = 0u;
    v659 = 0u;
    v656 = 0u;
    v657 = 0u;
    v655 = 0u;
    v361 = MEMORY[0x1E69E9C10];
    v362 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v644 = 136315906;
    *&v644[4] = "operator[]";
    *&v644[12] = 1024;
    if (v362)
    {
      v363 = 3;
    }

    else
    {
      v363 = 2;
    }

    *&v644[14] = 797;
    *&v644[18] = 2048;
    *&v644[20] = v16;
    v645 = 2048;
    *v646 = v28;
    _os_log_send_and_compose_impl(v363, v641, &v655, 80, &dword_1E1C61000, v361, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
    _os_crash_msg();
    __break(1u);
LABEL_691:
    *v641 = 0;
    v658 = 0u;
    v659 = 0u;
    v656 = 0u;
    v657 = 0u;
    v655 = 0u;
    v364 = MEMORY[0x1E69E9C10];
    v365 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v644 = 136315906;
    *&v644[4] = "operator[]";
    *&v644[12] = 1024;
    if (v365)
    {
      v366 = 3;
    }

    else
    {
      v366 = 2;
    }

    *&v644[14] = 797;
    *&v644[18] = 2048;
    *&v644[20] = v16;
    v645 = 2048;
    *v646 = v28;
    _os_log_send_and_compose_impl(v366, v641, &v655, 80, &dword_1E1C61000, v364, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
    _os_crash_msg();
    __break(1u);
LABEL_695:
    *v641 = 0;
    v658 = 0u;
    v659 = 0u;
    v656 = 0u;
    v657 = 0u;
    v655 = 0u;
    v367 = MEMORY[0x1E69E9C10];
    v368 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v644 = 136315906;
    *&v644[4] = "operator[]";
    *&v644[12] = 1024;
    if (v368)
    {
      v369 = 3;
    }

    else
    {
      v369 = 2;
    }

    *&v644[14] = 789;
    *&v644[18] = 2048;
    *&v644[20] = v16;
    v645 = 2048;
    *v646 = v28;
    _os_log_send_and_compose_impl(v369, v641, &v655, 80, &dword_1E1C61000, v367, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
    _os_crash_msg();
    __break(1u);
LABEL_699:
    *v641 = 0;
    v658 = 0u;
    v659 = 0u;
    v656 = 0u;
    v657 = 0u;
    v655 = 0u;
    v370 = MEMORY[0x1E69E9C10];
    v371 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v644 = 136315906;
    *&v644[4] = "operator[]";
    *&v644[12] = 1024;
    if (v371)
    {
      v372 = 3;
    }

    else
    {
      v372 = 2;
    }

    *&v644[14] = 797;
    *&v644[18] = 2048;
    *&v644[20] = v29;
    v645 = 2048;
    *v646 = v29;
    _os_log_send_and_compose_impl(v372, v641, &v655, 80, &dword_1E1C61000, v370, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
    _os_crash_msg();
    __break(1u);
LABEL_703:
    *v641 = 0;
    v658 = 0u;
    v659 = 0u;
    v656 = 0u;
    v657 = 0u;
    v655 = 0u;
    v373 = MEMORY[0x1E69E9C10];
    v374 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v644 = 136315906;
    *&v644[4] = "operator[]";
    *&v644[12] = 1024;
    if (v374)
    {
      v375 = 3;
    }

    else
    {
      v375 = 2;
    }

    *&v644[14] = 789;
    *&v644[18] = 2048;
    *&v644[20] = v16;
    v645 = 2048;
    *v646 = v28;
    _os_log_send_and_compose_impl(v375, v641, &v655, 80, &dword_1E1C61000, v373, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
    _os_crash_msg();
    __break(1u);
LABEL_707:
    *v641 = 0;
    v658 = 0u;
    v659 = 0u;
    v656 = 0u;
    v657 = 0u;
    v655 = 0u;
    v376 = MEMORY[0x1E69E9C10];
    v377 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v644 = 136315906;
    *&v644[4] = "operator[]";
    *&v644[12] = 1024;
    if (v377)
    {
      v378 = 3;
    }

    else
    {
      v378 = 2;
    }

    *&v644[14] = 789;
    *&v644[18] = 2048;
    *&v644[20] = v16;
    v645 = 2048;
    *v646 = v28;
    _os_log_send_and_compose_impl(v378, v641, &v655, 80, &dword_1E1C61000, v376, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
    _os_crash_msg();
    __break(1u);
LABEL_711:
    *v641 = 0;
    v658 = 0u;
    v659 = 0u;
    v656 = 0u;
    v657 = 0u;
    v655 = 0u;
    v379 = MEMORY[0x1E69E9C10];
    v380 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v644 = 136315906;
    *&v644[4] = "operator[]";
    *&v644[12] = 1024;
    if (v380)
    {
      v381 = 3;
    }

    else
    {
      v381 = 2;
    }

    *&v644[14] = 789;
    *&v644[18] = 2048;
    *&v644[20] = v16;
    v645 = 2048;
    *v646 = v28;
    _os_log_send_and_compose_impl(v381, v641, &v655, 80, &dword_1E1C61000, v379, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
    _os_crash_msg();
    __break(1u);
LABEL_715:
    *v641 = 0;
    v658 = 0u;
    v659 = 0u;
    v656 = 0u;
    v657 = 0u;
    v655 = 0u;
    v382 = MEMORY[0x1E69E9C10];
    v383 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v644 = 136315906;
    *&v644[4] = "operator[]";
    *&v644[12] = 1024;
    if (v383)
    {
      v384 = 3;
    }

    else
    {
      v384 = 2;
    }

    *&v644[14] = 789;
    *&v644[18] = 2048;
    *&v644[20] = v16;
    v645 = 2048;
    *v646 = v28;
    _os_log_send_and_compose_impl(v384, v641, &v655, 80, &dword_1E1C61000, v382, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
    _os_crash_msg();
    __break(1u);
    goto LABEL_719;
  }

  if (v14 != 7)
  {
    if (v14 == 8)
    {
      result = (*(*v11 + 16))(v11);
      if (!result)
      {
        return result;
      }

      v634 = 0;
      v631 = 0;
      v632 = 0;
      v629 = 0;
      v630 = 0;
      v633 = 0;
      v626 = 0;
      v627 = 0;
      v625 = 0;
      v628 = 0;
      v16 = (*(*v13 + 16))(v13);
      if (v16)
      {
        v17 = re::GeomAttribute::accessValues<int>(v13);
        if (!v18)
        {
          goto LABEL_987;
        }

        v4 = v17;
      }

      else
      {
        v4 = 0;
      }

      v649 = 0;
      v10 = v16;
      *(&v647 + 1) = v16;
      memset(v648, 0, 28);
      *&v647 = v4;
      v640 = 0;
      v637 = 0;
      v638 = 0;
      v636 = 0;
      v639 = 0;
      re::DynamicArray<float>::resize(&v636, v16);
      if (v16)
      {
        v28 = 0;
        v29 = v638;
        v54 = v640;
        do
        {
          if (v29 <= v28)
          {
            goto LABEL_667;
          }

          v54[v28] = v28;
          ++v28;
        }

        while (v16 != v28);
        v55 = 0;
        *&v648[1] = 0;
        ++DWORD2(v648[1]);
        if (*(&v648[0] + 1) < v16)
        {
          re::DynamicArray<re::internal::GeomKDTree<float>::Node>::setCapacity(v648, v16);
          v55 = *&v648[1];
        }

        v56 = v16 - v55;
        if (v16 > v55 && v56 >= 1)
        {
          v57 = &v649[3 * v55];
          v58 = v56 + 1;
          do
          {
            *v57 = 0;
            v57[1] = 0;
            *(v57 + 4) = -1;
            *(v57 + 20) = 0;
            v57 += 3;
            --v58;
          }

          while (v58 > 1);
        }

        *&v648[1] = v16;
      }

      else
      {
        *&v648[1] = 0;
      }

      ++DWORD2(v648[1]);
      if (*(&v647 + 1))
      {
        LODWORD(v655) = 0;
        re::internal::GeomKDTree<re::Vector4<float>>::buildHelper(&v647, 0, v16, &v636, &v655);
      }

      if (v636 && v640)
      {
        (*(*v636 + 40))();
      }

      v632 = 0;
      ++v633;
      v627 = 0;
      ++v628;
      re::DynamicArray<unsigned int>::resize(&v630, v16, &re::kInvalidMeshIndex);
      LOBYTE(v655) = 0;
      re::DynamicArray<unsigned char>::resize(&v625, v16, &v655);
      v640 = 0;
      v637 = 0;
      v638 = 0;
      v636 = 0;
      v639 = 0;
      if (v16)
      {
        v16 = 0;
        v29 = 1;
        while (1)
        {
          v28 = v632;
          if (v632 <= v16)
          {
            goto LABEL_711;
          }

          if (*(v634 + 4 * v16) == -1)
          {
            v638 = 0;
            v639 += 2;
            v88 = *&v648[1];
            if (*&v648[1] && (re::internal::GeomKDTree<re::Vector4<float>>::findWithinRadiusHelper(&v647, v649, (v4 + 16 * v16), &v636, a4), v88 = v638, v638))
            {
              v89 = 0;
              v90 = *v640;
            }

            else
            {
              v89 = 1;
              v90 = v16;
            }

            v28 = v632;
            if (v632 <= v16)
            {
              goto LABEL_863;
            }

            *(v634 + 4 * v16) = v90;
            v28 = v627;
            if (v627 <= v16)
            {
              goto LABEL_879;
            }

            v629[v16] = 1;
            if ((v89 & 1) == 0)
            {
              break;
            }
          }

LABEL_191:
          if (++v16 == v10)
          {
            if (v636 && v640)
            {
              (*(*v636 + 40))();
            }

            goto LABEL_195;
          }
        }

        v91 = 0;
        v40 = v638;
        v92 = v640;
        v6 = v632;
        v93 = v634;
        while (v40 != v91)
        {
          v5 = v92[v91];
          if (v6 <= v5)
          {
            goto LABEL_548;
          }

          *(v93 + 4 * v5) = v16;
          if (v88 == ++v91)
          {
            goto LABEL_191;
          }
        }

        goto LABEL_532;
      }

LABEL_195:
      if (*&v648[0] && v649)
      {
        (*(**&v648[0] + 40))();
      }

      *&v648[1] = 0;
      *&v648[0] = 0;
      v647 = 0uLL;
      DWORD2(v648[0]) = 0;
      v640 = 0;
      v637 = 0;
      v638 = 0;
      v636 = 0;
      v639 = 0;
      v94 = (*(*v13 + 16))(v13);
      v95 = v94;
      if (v94)
      {
        v4 = v627;
        if (v627 <= v94 - 1)
        {
          goto LABEL_1007;
        }

        LODWORD(v96) = 0;
        v97 = v629;
        v4 = v94;
        v98 = v94;
        do
        {
          v99 = *v97++;
          v96 = (v96 + v99);
          --v98;
        }

        while (v98);
      }

      else
      {
        v4 = 0;
        v96 = 0;
      }

      v10 = re::GeomAttribute::accessValues<int>(v13);
      v166 = v165;
      re::DynamicArray<re::Vector4<float>>::resize(&v647, v96);
      re::DynamicArray<unsigned int>::resize(&v636, v4, &re::kInvalidMeshIndex);
      if (v95)
      {
        v16 = 0;
        v168 = 0;
        v29 = v166;
        do
        {
          v28 = v627;
          if (v627 <= v16)
          {
            goto LABEL_691;
          }

          if (v629[v16])
          {
            v28 = v638;
            if (v638 <= v16)
            {
              goto LABEL_799;
            }

            v640[v16] = v168;
            if (v16 >= v29)
            {
              goto LABEL_815;
            }

            v28 = v168;
            v5 = *&v648[0];
            if (*&v648[0] <= v168)
            {
              goto LABEL_831;
            }

            *(*&v648[1] + 16 * v168++) = *v10;
          }

          ++v16;
          v10 += 16;
        }

        while (v4 != v16);
        v10 = 0;
        v29 = v627;
        v169 = v629;
        v28 = v632;
        v170 = v634;
        v16 = v638;
        v171 = v640;
        while (v29 != v10)
        {
          if (!v169[v10])
          {
            if (v28 <= v10)
            {
              goto LABEL_891;
            }

            v6 = *(v170 + 4 * v10);
            if (v16 <= v6)
            {
              goto LABEL_907;
            }

            if (v16 <= v10)
            {
              goto LABEL_923;
            }

            v171[v10] = v171[v6];
          }

          if (v4 == ++v10)
          {
            goto LABEL_372;
          }
        }

        goto LABEL_723;
      }

LABEL_372:
      v10 = re::internal::accessFaceVaryingAttributeSubmesh(v13, v167);
      v4 = *&v648[0];
      v6 = *(v10 + 24);
      v16 = v6;
      *&v646[2] = 0;
      memset(v644, 0, sizeof(v644));
      re::DynamicArray<re::GeomCell4>::resize(v644, v6);
      if (v6)
      {
        v172 = 0;
        v29 = *&v644[16];
        v173 = *&v646[2];
        v28 = *(v10 + 24);
        v174 = *(v10 + 40);
        v7 = v638;
        while (v172 != v29)
        {
          if (v172 == v28)
          {
            goto LABEL_763;
          }

          v175 = 0;
          *v650 = *(v174 + 16 * v172);
          v176 = v640;
          if (*&v650[12] == -1)
          {
            v177 = 3;
          }

          else
          {
            v177 = 4;
          }

          do
          {
            v5 = *&v650[4 * v175];
            if (v7 <= v5)
            {
              goto LABEL_444;
            }

            *(v173 + 4 * v175++) = v176[v5];
          }

          while (v177 != v175);
          ++v172;
          v173 += 16;
          if (v172 == v6)
          {
            goto LABEL_382;
          }
        }

        goto LABEL_747;
      }

LABEL_382:
      if (*(v10 + 48))
      {
        v178 = *(v10 + 60) == 0;
      }

      else
      {
        v178 = 1;
      }

      if (v178 && *(v9 + 10) == v6)
      {
        re::GeomMesh::updateFaceVaryingAttribute(v9, *(v13 + 8), v4, v644);
      }

      else
      {
        *&v643[2] = 0;
        memset(v641, 0, sizeof(v641));
        re::DynamicArray<unsigned int>::resize(v641, v6, &re::kInvalidMeshIndex);
        v181 = *(v10 + 60);
        if (v181 == 2)
        {
          re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned int,unsigned int> const&>::HashBrownIterator(&v622, v10 + 64);
          LOBYTE(v621) = 2;
          v258 = *(v10 + 60);
          if (*(v10 + 60))
          {
            if (v258 == 2)
            {
              LOBYTE(v618) = 2;
              v619 = v10 + 64;
              v620 = xmmword_1E3049610;
              goto LABEL_604;
            }

            if (v258 != 1)
            {
              goto LABEL_1036;
            }

            v239 = *(v10 + 48);
            goto LABEL_599;
          }

LABEL_498:
          v259 = *(v10 + 64);
          LOBYTE(v618) = 0;
          LODWORD(v619) = v259;
          goto LABEL_604;
        }

        if (v181 != 1)
        {
          if (*(v10 + 60))
          {
            goto LABEL_1032;
          }

          LOBYTE(v621) = 0;
          LODWORD(v622) = 0;
          goto LABEL_498;
        }

        v239 = *(v10 + 48);
        if (v239)
        {
          v240 = *(v10 + 96);
          v241 = *(v10 + 52);
          v242 = *(v10 + 80);
          v243 = v240 + 4 * v242;
          LOBYTE(v621) = 1;
          if (!v240)
          {
            goto LABEL_597;
          }

          v244 = v240 + 4 * v241;
          if (v242 != v241)
          {
            v244 -= 4;
            v245 = 4 * v242 - 4 * v241;
            do
            {
              v247 = *(v244 + 4);
              v244 += 4;
              v246 = v247;
              if (!v245)
              {
                break;
              }

              v245 -= 4;
            }

            while (v246 == -1);
          }

          goto LABEL_598;
        }

        LOBYTE(v621) = 1;
        v623 = 0;
        v624 = 0;
        v622 = 0;
LABEL_599:
        if (v239)
        {
          v322 = *(v10 + 96);
          v323 = v322 + 4 * *(v10 + 80);
          LOBYTE(v618) = 1;
          v619 = v322;
          *&v620 = v323;
          *(&v620 + 1) = v323;
        }

        else
        {
          LOBYTE(v618) = 1;
          v620 = 0uLL;
          v619 = 0;
        }

LABEL_604:
        while ((re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(&v621, &v618) & 1) == 0)
        {
          v10 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v621, v326);
          v325 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v621, v324);
          v16 = v325;
          v29 = *&v641[16];
          if (*&v641[16] <= v325)
          {
            goto LABEL_943;
          }

          *(*&v643[2] + 4 * v325) = HIDWORD(v10);
          re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::increment(&v621);
        }

        re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v618, v326);
        re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v621, v327);
        re::GeomMesh::updateFaceVaryingAttribute(v9, *(v13 + 8), v4, v644, v641);
        if (*v641 && *&v643[2])
        {
          (*(**v641 + 40))();
        }
      }

      if ((*(*v13 + 16))(v13))
      {
        if (!*(v13 + 40))
        {
          goto LABEL_963;
        }

        v9 = *(v13 + 56);
        if ((*(*v13 + 16))(v13))
        {
          v312 = *&v648[1];
          v313 = 16 * v4;
          goto LABEL_642;
        }
      }

      goto LABEL_1017;
    }

    goto LABEL_1015;
  }

  result = (*(*v11 + 16))(v11);
  if (!result)
  {
    return result;
  }

  v634 = 0;
  v631 = 0;
  v632 = 0;
  v629 = 0;
  v630 = 0;
  v633 = 0;
  v626 = 0;
  v627 = 0;
  v625 = 0;
  v628 = 0;
  v23 = (*(*v13 + 16))(v13);
  if (v23)
  {
    v24 = re::GeomAttribute::accessValues<int>(v13);
    if (!v25)
    {
      goto LABEL_979;
    }

    v4 = v24;
  }

  else
  {
    v4 = 0;
  }

  v649 = 0;
  v647 = 0u;
  memset(v648, 0, 28);
  v10 = v23;
  if ((re::internal::GeomKDTree<re::Vector3<float>>::build(&v647, v23, v4) & 1) == 0)
  {
    goto LABEL_1016;
  }

  v632 = 0;
  ++v633;
  v627 = 0;
  ++v628;
  re::DynamicArray<unsigned int>::resize(&v630, v23, &re::kInvalidMeshIndex);
  LOBYTE(v655) = 0;
  re::DynamicArray<unsigned char>::resize(&v625, v23, &v655);
  v640 = 0;
  v637 = 0;
  v638 = 0;
  v636 = 0;
  v639 = 0;
  if (!v23)
  {
    goto LABEL_60;
  }

  v16 = 0;
  v29 = 1;
  do
  {
    v28 = v632;
    if (v632 <= v16)
    {
      goto LABEL_695;
    }

    if (*(v634 + 4 * v16) == -1)
    {
      v638 = 0;
      v639 += 2;
      v36 = *&v648[1];
      if (*&v648[1] && (re::internal::GeomKDTree<re::Vector3<float>>::findWithinRadiusHelper(&v647, v649, (v4 + 16 * v16), &v636, a4), v36 = v638, v638))
      {
        v37 = 0;
        v38 = *v640;
      }

      else
      {
        v37 = 1;
        v38 = v16;
      }

      v28 = v632;
      if (v632 <= v16)
      {
        goto LABEL_835;
      }

      *(v634 + 4 * v16) = v38;
      v28 = v627;
      if (v627 <= v16)
      {
        goto LABEL_839;
      }

      v629[v16] = 1;
      if ((v37 & 1) == 0)
      {
        v39 = 0;
        v40 = v638;
        v41 = v640;
        v6 = v632;
        v42 = v634;
        while (v40 != v39)
        {
          v5 = v41[v39];
          if (v6 <= v5)
          {
            goto LABEL_520;
          }

          *(v42 + 4 * v5) = v16;
          if (v36 == ++v39)
          {
            goto LABEL_56;
          }
        }

        *v641 = 0;
        v658 = 0u;
        v659 = 0u;
        v656 = 0u;
        v657 = 0u;
        v655 = 0u;
        v275 = MEMORY[0x1E69E9C10];
        v276 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v644 = 136315906;
        *&v644[4] = "operator[]";
        *&v644[12] = 1024;
        if (v276)
        {
          v277 = 3;
        }

        else
        {
          v277 = 2;
        }

        *&v644[14] = 789;
        *&v644[18] = 2048;
        *&v644[20] = v40;
        v645 = 2048;
        *v646 = v40;
        _os_log_send_and_compose_impl(v277, v641, &v655, 80, &dword_1E1C61000, v275, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
        _os_crash_msg();
        __break(1u);
LABEL_520:
        *v641 = 0;
        v658 = 0u;
        v659 = 0u;
        v656 = 0u;
        v657 = 0u;
        v655 = 0u;
        v278 = MEMORY[0x1E69E9C10];
        v279 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v644 = 136315906;
        *&v644[4] = "operator[]";
        *&v644[12] = 1024;
        if (v279)
        {
          v280 = 3;
        }

        else
        {
          v280 = 2;
        }

        *&v644[14] = 789;
        *&v644[18] = 2048;
        *&v644[20] = v5;
        v645 = 2048;
        *v646 = v6;
        _os_log_send_and_compose_impl(v280, v641, &v655, 80, &dword_1E1C61000, v278, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v644, 38, v616, v617);
        _os_crash_msg();
        __break(1u);
        goto LABEL_524;
      }
    }

LABEL_56:
    ++v16;
  }

  while (v16 != v10);
  if (v636 && v640)
  {
    (*(*v636 + 40))();
  }

LABEL_60:
  if (*&v648[0] && v649)
  {
    (*(**&v648[0] + 40))();
  }

  *&v648[1] = 0;
  *&v648[0] = 0;
  v647 = 0uLL;
  DWORD2(v648[0]) = 0;
  v640 = 0;
  v637 = 0;
  v638 = 0;
  v636 = 0;
  v639 = 0;
  v43 = (*(*v13 + 16))(v13);
  v44 = v43;
  if (!v43)
  {
    v4 = 0;
    v45 = 0;
    goto LABEL_237;
  }

  v4 = v627;
  if (v627 <= v43 - 1)
  {
    goto LABEL_995;
  }

  LODWORD(v45) = 0;
  v46 = v629;
  v4 = v43;
  v47 = v43;
  do
  {
    v48 = *v46++;
    v45 = (v45 + v48);
    --v47;
  }

  while (v47);
LABEL_237:
  v10 = re::GeomAttribute::accessValues<int>(v13);
  v113 = v112;
  re::DynamicArray<re::Vector3<float>>::resize(&v647, v45);
  re::DynamicArray<unsigned int>::resize(&v636, v4, &re::kInvalidMeshIndex);
  if (v44)
  {
    v16 = 0;
    v115 = 0;
    v29 = v113;
    do
    {
      v28 = v627;
      if (v627 <= v16)
      {
        goto LABEL_675;
      }

      if (v629[v16])
      {
        v28 = v638;
        if (v638 <= v16)
        {
          goto LABEL_775;
        }

        v640[v16] = v115;
        if (v16 >= v29)
        {
          goto LABEL_779;
        }

        v28 = v115;
        v5 = *&v648[0];
        if (*&v648[0] <= v115)
        {
          goto LABEL_783;
        }

        *(*&v648[1] + 16 * v115++) = *v10;
      }

      ++v16;
      v10 += 16;
    }

    while (v4 != v16);
    v10 = 0;
    v29 = v627;
    v116 = v629;
    v28 = v632;
    v117 = v634;
    v16 = v638;
    v118 = v640;
    while (v29 != v10)
    {
      if (!v116[v10])
      {
        if (v28 <= v10)
        {
          goto LABEL_843;
        }

        v6 = *(v117 + 4 * v10);
        if (v16 <= v6)
        {
          goto LABEL_847;
        }

        if (v16 <= v10)
        {
          goto LABEL_851;
        }

        v118[v10] = v118[v6];
      }

      if (v4 == ++v10)
      {
        goto LABEL_254;
      }
    }

    goto LABEL_699;
  }

LABEL_254:
  v10 = re::internal::accessFaceVaryingAttributeSubmesh(v13, v114);
  v4 = *&v648[0];
  v6 = *(v10 + 24);
  v16 = v6;
  *&v646[2] = 0;
  memset(v644, 0, sizeof(v644));
  re::DynamicArray<re::GeomCell4>::resize(v644, v6);
  if (!v6)
  {
    goto LABEL_264;
  }

  v119 = 0;
  v29 = *&v644[16];
  v120 = *&v646[2];
  v28 = *(v10 + 24);
  v121 = *(v10 + 40);
  v7 = v638;
  while (2)
  {
    if (v119 == v29)
    {
      goto LABEL_735;
    }

    if (v119 == v28)
    {
      goto LABEL_739;
    }

    v122 = 0;
    *v650 = *(v121 + 16 * v119);
    v123 = v640;
    if (*&v650[12] == -1)
    {
      v124 = 3;
    }

    else
    {
      v124 = 4;
    }

    while (2)
    {
      v5 = *&v650[4 * v122];
      if (v7 <= v5)
      {
        v621 = 0;
        v658 = 0u;
        v659 = 0u;
        v656 = 0u;
        v657 = 0u;
        v655 = 0u;
        v201 = MEMORY[0x1E69E9C10];
        v202 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v641 = 136315906;
        *&v641[4] = "operator[]";
        *&v641[12] = 1024;
        if (v202)
        {
          v203 = 3;
        }

        else
        {
          v203 = 2;
        }

        *&v641[14] = 789;
        *&v641[18] = 2048;
        *&v641[20] = v5;
        v642 = 2048;
        *v643 = v7;
        _os_log_send_and_compose_impl(v203, &v621, &v655, 80, &dword_1E1C61000, v201, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v641, 38, v616, v617);
        _os_crash_msg();
        __break(1u);
LABEL_440:
        v621 = 0;
        v658 = 0u;
        v659 = 0u;
        v656 = 0u;
        v657 = 0u;
        v655 = 0u;
        v204 = MEMORY[0x1E69E9C10];
        v205 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v641 = 136315906;
        *&v641[4] = "operator[]";
        *&v641[12] = 1024;
        if (v205)
        {
          v206 = 3;
        }

        else
        {
          v206 = 2;
        }

        *&v641[14] = 789;
        *&v641[18] = 2048;
        *&v641[20] = v5;
        v642 = 2048;
        *v643 = v7;
        _os_log_send_and_compose_impl(v206, &v621, &v655, 80, &dword_1E1C61000, v204, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v641, 38, v616, v617);
        _os_crash_msg();
        __break(1u);
LABEL_444:
        v621 = 0;
        v658 = 0u;
        v659 = 0u;
        v656 = 0u;
        v657 = 0u;
        v655 = 0u;
        v207 = MEMORY[0x1E69E9C10];
        v208 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v641 = 136315906;
        *&v641[4] = "operator[]";
        *&v641[12] = 1024;
        if (v208)
        {
          v209 = 3;
        }

        else
        {
          v209 = 2;
        }

        *&v641[14] = 789;
        *&v641[18] = 2048;
        *&v641[20] = v5;
        v642 = 2048;
        *v643 = v7;
        _os_log_send_and_compose_impl(v209, &v621, &v655, 80, &dword_1E1C61000, v207, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v641, 38, v616, v617);
        _os_crash_msg();
        __break(1u);
LABEL_448:
        v621 = 0;
        v658 = 0u;
        v659 = 0u;
        v656 = 0u;
        v657 = 0u;
        v655 = 0u;
        v210 = MEMORY[0x1E69E9C10];
        v211 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v641 = 136315906;
        *&v641[4] = "operator[]";
        *&v641[12] = 1024;
        if (v211)
        {
          v212 = 3;
        }

        else
        {
          v212 = 2;
        }

        *&v641[14] = 789;
        *&v641[18] = 2048;
        *&v641[20] = v5;
        v642 = 2048;
        *v643 = v7;
        _os_log_send_and_compose_impl(v212, &v621, &v655, 80, &dword_1E1C61000, v210, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v641, 38, v616, v617);
        _os_crash_msg();
        __break(1u);
LABEL_452:
        v621 = 0;
        v658 = 0u;
        v659 = 0u;
        v656 = 0u;
        v657 = 0u;
        v655 = 0u;
        v13 = MEMORY[0x1E69E9C10];
        v213 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v641 = 136315906;
        *&v641[4] = "operator[]";
        *&v641[12] = 1024;
        if (v213)
        {
          v214 = 3;
        }

        else
        {
          v214 = 2;
        }

        *&v641[14] = 789;
        *&v641[18] = 2048;
        *&v641[20] = v5;
        v642 = 2048;
        *v643 = v7;
        _os_log_send_and_compose_impl(v214, &v621, &v655, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v641, 38, v616, v617);
        _os_crash_msg();
        __break(1u);
LABEL_456:
        v215 = *(v10 + 48);
        if (!v215)
        {
          goto LABEL_556;
        }

        v216 = *(v10 + 96);
        v217 = *(v10 + 52);
        v218 = *(v10 + 80);
        v219 = v216 + 4 * v218;
        LOBYTE(v621) = 1;
        if (v216)
        {
          v220 = v216 + 4 * v217;
          if (v218 != v217)
          {
            v220 -= 4;
            v221 = 4 * v218 - 4 * v217;
            do
            {
              v223 = *(v220 + 4);
              v220 += 4;
              v222 = v223;
              if (!v221)
              {
                break;
              }

              v221 -= 4;
            }

            while (v222 == -1);
          }
        }

        else
        {
          v220 = 0;
        }

        v622 = v216;
        v623 = v220;
        v624 = v219;
        goto LABEL_568;
      }

      *(v120 + 4 * v122++) = v123[v5];
      if (v124 != v122)
      {
        continue;
      }

      break;
    }

    ++v119;
    v120 += 16;
    if (v119 != v6)
    {
      continue;
    }

    break;
  }

LABEL_264:
  if (*(v10 + 48))
  {
    v125 = *(v10 + 60) == 0;
  }

  else
  {
    v125 = 1;
  }

  if (v125 && *(v9 + 10) == v6)
  {
    re::GeomMesh::updateFaceVaryingAttribute(v9, *(v13 + 8), v4, v644);
    goto LABEL_577;
  }

  *&v643[2] = 0;
  memset(v641, 0, sizeof(v641));
  re::DynamicArray<unsigned int>::resize(v641, v6, &re::kInvalidMeshIndex);
  v128 = *(v10 + 60);
  if (v128 == 2)
  {
    re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned int,unsigned int> const&>::HashBrownIterator(&v622, v10 + 64);
    LOBYTE(v621) = 2;
    v225 = *(v10 + 60);
    if (!*(v10 + 60))
    {
      goto LABEL_467;
    }

    if (v225 == 2)
    {
      LOBYTE(v618) = 2;
      v619 = v10 + 64;
      v620 = xmmword_1E3049610;
      goto LABEL_573;
    }

    if (v225 != 1)
    {
      goto LABEL_1034;
    }

    v215 = *(v10 + 48);
    goto LABEL_568;
  }

  if (v128 == 1)
  {
    goto LABEL_456;
  }

  if (!*(v10 + 60))
  {
    LOBYTE(v621) = 0;
    LODWORD(v622) = 0;
LABEL_467:
    v226 = *(v10 + 64);
    LOBYTE(v618) = 0;
    LODWORD(v619) = v226;
    goto LABEL_573;
  }

LABEL_1029:
  re::internal::assertLog(4, v127, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "begin", 699, v618, v619, v620, v621, v622, v623, v624);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1030:
  re::internal::assertLog(4, v144, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "begin", 699);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1031:
  re::internal::assertLog(4, v163, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "begin", 699);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1032:
  re::internal::assertLog(4, v180, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "begin", 699);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1033:
  re::internal::assertLog(4, v199, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "begin", 699);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1034:
  re::internal::assertLog(4, v224, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "end", 721);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1035:
  re::internal::assertLog(4, v236, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "end", 721);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1036:
  re::internal::assertLog(4, v257, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "end", 721);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1037:
  re::internal::assertLog(4, v260, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "end", 721);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1038:
  re::internal::assertLog(4, v272, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "end", 721);
  result = _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
  return result;
}

uint64_t re::mergeDiscreteFaceVaryingAttributeValues(re *this, re::GeomMesh *a2, const char *a3)
{
  v10 = this;
  v769 = *MEMORY[0x1E69E9840];
  v11 = re::internal::GeomAttributeManager::attributeByName((this + 64), a2);
  v13 = v11;
  v14 = v11[17];
  if (v14 > 2)
  {
    if (v14 != 3)
    {
      if (v14 == 9)
      {
        result = (*(*v11 + 16))(v11);
        if (!result)
        {
          return result;
        }

        v745 = 0;
        v742 = 0;
        v743 = 0;
        v740 = 0;
        v741 = 0;
        v744 = 0;
        v737 = 0;
        v738 = 0;
        v736 = 0;
        v739 = 0;
        v59 = (*(*v13 + 16))(v13);
        if (v59)
        {
          LODWORD(v17) = v59;
          v60 = re::GeomAttribute::accessValues<int>(v13);
          if (!v61)
          {
            goto LABEL_1005;
          }

          v3 = v60;
          v743 = 0;
          v744 = 1;
          v738 = 0;
          v739 = 1;
          v17 = v17;
          re::DynamicArray<unsigned int>::resize(&v741, v17, &re::kInvalidMeshIndex);
          LOBYTE(v764) = 0;
          re::DynamicArray<unsigned char>::resize(&v736, v17, &v764);
          *&v758[2] = 0;
          memset(v756, 0, sizeof(v756));
          re::DynamicArray<float>::resize(v756, v17);
          v62 = 0;
          v4 = *&v756[16];
          v63 = *&v758[2];
          do
          {
            if (v4 == v62)
            {
              goto LABEL_621;
            }

            *(v63 + 4 * v62) = v62;
            ++v62;
          }

          while (v17 != v62);
          *&v764 = v3;
          if (!*&v756[16])
          {
            goto LABEL_1029;
          }

          v6 = **&v758[2];
          v4 = v738;
          v64 = v747;
          if (v738 <= v6)
          {
            goto LABEL_1053;
          }

          v5 = 0;
          v65 = *(v3 + v6);
          v740[v6] = 1;
          do
          {
            v4 = *&v756[16];
            if (*&v756[16] <= v5)
            {
              goto LABEL_645;
            }

            v4 = *(*&v758[2] + 4 * v5);
            v66 = *(v3 + v4);
            if (v66 != v65)
            {
              v6 = v738;
              if (v738 <= v4)
              {
                goto LABEL_861;
              }

              v740[v4] = 1;
              v6 = v4;
              v65 = v66;
            }

            v7 = v743;
            if (v743 <= v4)
            {
              goto LABEL_669;
            }

            *(v745 + 4 * v4) = v6;
            ++v5;
          }

          while (v17 != v5);
          if (*v756 && *&v758[2])
          {
            (*(**v756 + 40))();
          }
        }

        *&v758[2] = 0;
        memset(v756, 0, sizeof(v756));
        *&v755[2] = 0;
        memset(v753, 0, sizeof(v753));
        v67 = (*(*v13 + 16))(v13);
        v68 = v67;
        if (v67)
        {
          v3 = v738;
          if (v738 <= v67 - 1)
          {
            goto LABEL_1077;
          }

          LODWORD(v69) = 0;
          v70 = v740;
          v3 = v67;
          v71 = v67;
          do
          {
            v72 = *v70++;
            v69 = (v69 + v72);
            --v71;
          }

          while (v71);
        }

        else
        {
          v3 = 0;
          v69 = 0;
        }

        v17 = re::GeomAttribute::accessValues<int>(v13);
        v6 = v122;
        re::DynamicArray<BOOL>::resize(v756, v69);
        re::DynamicArray<unsigned int>::resize(v753, v3, &re::kInvalidMeshIndex);
        v124 = v747;
        if (!v68)
        {
LABEL_203:
          v17 = re::internal::accessFaceVaryingAttributeSubmesh(v13, v123);
          v3 = *&v756[16];
          v8 = *(v17 + 24);
          v4 = v8;
          *&v752[2] = 0;
          memset(v750, 0, sizeof(v750));
          re::DynamicArray<re::GeomCell4>::resize(v750, v8);
          v129 = v747;
          if (!v8)
          {
            goto LABEL_213;
          }

          v130 = 0;
          v5 = *&v750[16];
          v131 = *&v752[2];
          v6 = *(v17 + 24);
          v132 = *(v17 + 40);
          v9 = *&v753[16];
          while (1)
          {
            if (v130 == v5)
            {
              goto LABEL_729;
            }

            if (v130 == v6)
            {
              goto LABEL_753;
            }

            v133 = 0;
            *v759 = *(v132 + 16 * v130);
            v134 = *&v755[2];
            if (*&v759[12] == -1)
            {
              v135 = 3;
            }

            else
            {
              v135 = 4;
            }

            do
            {
              v7 = *&v759[4 * v133];
              if (v9 <= v7)
              {
                v732 = 0;
                v767 = 0u;
                v768 = 0u;
                v765 = 0u;
                v766 = 0u;
                v764 = 0u;
                v221 = MEMORY[0x1E69E9C10];
                v222 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v747 = 136315906;
                *&v747[4] = "operator[]";
                *&v747[12] = 1024;
                if (v222)
                {
                  v223 = 3;
                }

                else
                {
                  v223 = 2;
                }

                *&v747[14] = 789;
                *&v747[18] = 2048;
                *&v747[20] = v7;
                v748 = 2048;
                *v749 = v9;
                _os_log_send_and_compose_impl(v223, &v732, &v764, 80, &dword_1E1C61000, v221, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
                _os_crash_msg();
                __break(1u);
LABEL_390:
                v732 = 0;
                v168[18] = 0u;
                v168[19] = 0u;
                v168[16] = 0u;
                v168[17] = 0u;
                v168[15] = 0u;
                v224 = MEMORY[0x1E69E9C10];
                v225 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v747 = 136315906;
                *&v747[4] = "operator[]";
                *&v747[12] = 1024;
                if (v225)
                {
                  v226 = 3;
                }

                else
                {
                  v226 = 2;
                }

                *&v747[14] = 789;
                *&v747[18] = 2048;
                *&v747[20] = v7;
                v748 = 2048;
                *v749 = v9;
                _os_log_send_and_compose_impl(v226, &v732, &v764, 80, &dword_1E1C61000, v224, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
                _os_crash_msg();
                __break(1u);
LABEL_394:
                v732 = 0;
                v111[18] = 0u;
                v111[19] = 0u;
                v111[16] = 0u;
                v111[17] = 0u;
                v111[15] = 0u;
                v227 = MEMORY[0x1E69E9C10];
                v228 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v747 = 136315906;
                *&v747[4] = "operator[]";
                *&v747[12] = 1024;
                if (v228)
                {
                  v229 = 3;
                }

                else
                {
                  v229 = 2;
                }

                *&v747[14] = 789;
                *&v747[18] = 2048;
                *&v747[20] = v7;
                v748 = 2048;
                *v749 = v9;
                _os_log_send_and_compose_impl(v229, &v732, &v764, 80, &dword_1E1C61000, v227, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
                _os_crash_msg();
                __break(1u);
LABEL_398:
                v732 = 0;
                v150[18] = 0u;
                v150[19] = 0u;
                v150[16] = 0u;
                v150[17] = 0u;
                v150[15] = 0u;
                v230 = MEMORY[0x1E69E9C10];
                v231 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v747 = 136315906;
                *&v747[4] = "operator[]";
                *&v747[12] = 1024;
                if (v231)
                {
                  v232 = 3;
                }

                else
                {
                  v232 = 2;
                }

                *&v747[14] = 789;
                *&v747[18] = 2048;
                *&v747[20] = v7;
                v748 = 2048;
                *v749 = v9;
                _os_log_send_and_compose_impl(v232, &v732, &v764, 80, &dword_1E1C61000, v230, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
                _os_crash_msg();
                __break(1u);
LABEL_402:
                v732 = 0;
                v189[18] = 0u;
                v189[19] = 0u;
                v189[16] = 0u;
                v189[17] = 0u;
                v189[15] = 0u;
                v233 = MEMORY[0x1E69E9C10];
                v234 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v747 = 136315906;
                *&v747[4] = "operator[]";
                *&v747[12] = 1024;
                if (v234)
                {
                  v235 = 3;
                }

                else
                {
                  v235 = 2;
                }

                *&v747[14] = 789;
                *&v747[18] = 2048;
                *&v747[20] = v7;
                v748 = 2048;
                *v749 = v9;
                _os_log_send_and_compose_impl(v235, &v732, &v764, 80, &dword_1E1C61000, v233, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
                _os_crash_msg();
                __break(1u);
                goto LABEL_406;
              }

              *(v131 + 4 * v133++) = *(v134 + 4 * v7);
            }

            while (v135 != v133);
            ++v130;
            v131 += 16;
            if (v130 == v8)
            {
LABEL_213:
              if (*(v17 + 48))
              {
                v136 = *(v17 + 60) == 0;
              }

              else
              {
                v136 = 1;
              }

              if (v136 && *(v10 + 10) == v8)
              {
                re::GeomMesh::updateFaceVaryingAttribute(v10, *(v13 + 8), v3, v750);
              }

              else
              {
                *&v749[2] = 0;
                memset(v747, 0, sizeof(v747));
                re::DynamicArray<unsigned int>::resize(v747, v8, &re::kInvalidMeshIndex);
                v139 = *(v17 + 60);
                if (v139 == 2)
                {
                  v4 = v17 + 64;
                  re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned int,unsigned int> const&>::HashBrownIterator(&v733, v17 + 64);
                  LOBYTE(v732) = 2;
                  v257 = *(v17 + 60);
                  if (!*(v17 + 60))
                  {
                    goto LABEL_428;
                  }

                  if (v257 == 2)
                  {
                    v729[0] = 2;
                    v730 = v17 + 64;
                    v731 = xmmword_1E3049610;
                    goto LABEL_501;
                  }

                  if (v257 != 1)
                  {
                    goto LABEL_1108;
                  }

                  v238 = *(v17 + 48);
                }

                else
                {
                  if (v139 != 1)
                  {
                    if (!*(v17 + 60))
                    {
                      LOBYTE(v732) = 0;
                      LODWORD(v733) = 0;
LABEL_428:
                      v258 = *(v17 + 64);
                      v729[0] = 0;
                      LODWORD(v730) = v258;
                      goto LABEL_501;
                    }

LABEL_1103:
                    re::internal::assertLog(4, v138, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "begin", 699);
                    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
                    __break(1u);
                    goto LABEL_1104;
                  }

LABEL_410:
                  v238 = *(v17 + 48);
                  if (v238)
                  {
                    v239 = *(v17 + 96);
                    v240 = *(v17 + 52);
                    v241 = *(v17 + 80);
                    v242 = v239 + 4 * v241;
                    LOBYTE(v732) = 1;
                    if (v239)
                    {
                      v243 = v239 + 4 * v240;
                      if (v241 != v240)
                      {
                        v243 -= 4;
                        v244 = 4 * v241 - 4 * v240;
                        do
                        {
                          v246 = *(v243 + 4);
                          v243 += 4;
                          v245 = v246;
                          if (!v244)
                          {
                            break;
                          }

                          v244 -= 4;
                        }

                        while (v245 == -1);
                      }
                    }

                    else
                    {
                      v243 = 0;
                    }

                    v733 = v239;
                    v734 = v243;
                    v735 = v242;
                  }

                  else
                  {
                    LOBYTE(v732) = 1;
                    v734 = 0;
                    v735 = 0;
                    v733 = 0;
                  }
                }

                if (v238)
                {
                  v310 = *(v17 + 96);
                  v311 = v310 + 4 * *(v17 + 80);
                  v729[0] = 1;
                  v730 = v310;
                  *&v731 = v311;
                  *(&v731 + 1) = v311;
                }

                else
                {
                  v729[0] = 1;
                  v731 = 0uLL;
                  v730 = 0;
                }

LABEL_501:
                while ((re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(&v732, v729) & 1) == 0)
                {
                  v17 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v732, v314);
                  v313 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v732, v312);
                  v4 = v313;
                  v5 = *&v747[16];
                  if (*&v747[16] <= v313)
                  {
                    goto LABEL_945;
                  }

                  *(*&v749[2] + 4 * v313) = HIDWORD(v17);
                  re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::increment(&v732);
                }

                re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(v729, v314);
                re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v732, v315);
                re::GeomMesh::updateFaceVaryingAttribute(v10, *(v13 + 8), v3, v750, v747);
                if (*v747 && *&v749[2])
                {
                  (*(**v747 + 40))();
                }
              }

              if (!(*(*v13 + 16))(v13))
              {
                goto LABEL_508;
              }

              if (!*(v13 + 40))
              {
                goto LABEL_969;
              }

              v316 = *(v13 + 56);
              if (!(*(*v13 + 16))(v13))
              {
LABEL_508:
                *v759 = 0;
                v10 = v747;
                v767 = 0u;
                v768 = 0u;
                v765 = 0u;
                v766 = 0u;
                v764 = 0u;
                v13 = MEMORY[0x1E69E9C10];
                v317 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v747 = 136315906;
                *&v747[4] = "operator[]";
                *&v747[12] = 1024;
                if (v317)
                {
                  v318 = 3;
                }

                else
                {
                  v318 = 2;
                }

                *&v747[14] = 621;
                *&v747[18] = 2048;
                *&v747[20] = 0;
                v748 = 2048;
                *v749 = 0;
                _os_log_send_and_compose_impl(v318, v759, &v764, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
                _os_crash_msg();
                __break(1u);
LABEL_512:
                v252 = 0;
LABEL_513:
                v733 = v248;
                v734 = v252;
                v735 = v251;
                goto LABEL_514;
              }

LABEL_526:
              v326 = v3;
              v327 = *&v758[2];
LABEL_593:
              memcpy(v316, v327, v326);
              if (*v750 && *&v752[2])
              {
                (*(**v750 + 40))();
              }

              if (*v753 && *&v755[2])
              {
                (*(**v753 + 40))();
              }

              if (*v756 && *&v758[2])
              {
                (*(**v756 + 40))();
              }

              if (v736 && v740)
              {
                (*(*v736 + 40))();
              }

              result = v741;
              if (v741)
              {
                if (v745)
                {
                  return (*(*v741 + 40))();
                }
              }

              return result;
            }
          }
        }

        v4 = 0;
        v125 = 0;
        v5 = v6;
        do
        {
          v6 = v738;
          if (v738 <= v4)
          {
            goto LABEL_697;
          }

          if (v740[v4])
          {
            v6 = *&v753[16];
            if (*&v753[16] <= v4)
            {
              goto LABEL_793;
            }

            *(*&v755[2] + 4 * v4) = v125;
            if (v4 >= v5)
            {
              goto LABEL_817;
            }

            v6 = v125;
            v7 = *&v756[16];
            if (*&v756[16] <= v125)
            {
              goto LABEL_841;
            }

            *(*&v758[2] + v125++) = *(v17 + v4);
          }

          ++v4;
        }

        while (v3 != v4);
        v17 = 0;
        v5 = v738;
        v126 = v740;
        v6 = v743;
        v127 = v745;
        v4 = *&v753[16];
        v128 = *&v755[2];
        while (v5 != v17)
        {
          if (!v126[v17])
          {
            if (v6 <= v17)
            {
              goto LABEL_873;
            }

            v8 = *(v127 + 4 * v17);
            if (v4 <= v8)
            {
              goto LABEL_897;
            }

            if (v4 <= v17)
            {
              goto LABEL_921;
            }

            *(v128 + 4 * v17) = *(v128 + 4 * v8);
          }

          if (v3 == ++v17)
          {
            goto LABEL_203;
          }
        }

LABEL_705:
        *v747 = 0;
        v124[18] = 0u;
        v124[19] = 0u;
        v124[16] = 0u;
        v124[17] = 0u;
        v124[15] = 0u;
        v430 = MEMORY[0x1E69E9C10];
        v431 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v750 = 136315906;
        *&v750[4] = "operator[]";
        *&v750[12] = 1024;
        if (v431)
        {
          v432 = 3;
        }

        else
        {
          v432 = 2;
        }

        *&v750[14] = 797;
        *&v750[18] = 2048;
        *&v750[20] = v5;
        v751 = 2048;
        *v752 = v5;
        _os_log_send_and_compose_impl(v432, v747, &v764, 80, &dword_1E1C61000, v430, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
        _os_crash_msg();
        __break(1u);
LABEL_709:
        *v747 = 0;
        v163[18] = 0u;
        v163[19] = 0u;
        v163[16] = 0u;
        v163[17] = 0u;
        v163[15] = 0u;
        v433 = MEMORY[0x1E69E9C10];
        v434 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v750 = 136315906;
        *&v750[4] = "operator[]";
        *&v750[12] = 1024;
        if (v434)
        {
          v435 = 3;
        }

        else
        {
          v435 = 2;
        }

        *&v750[14] = 797;
        *&v750[18] = 2048;
        *&v750[20] = v5;
        v751 = 2048;
        *v752 = v5;
        _os_log_send_and_compose_impl(v435, v747, &v764, 80, &dword_1E1C61000, v433, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
        _os_crash_msg();
        __break(1u);
        goto LABEL_713;
      }

      if (v14 != 10)
      {
        goto LABEL_1089;
      }

      result = (*(*v11 + 16))(v11);
      if (!result)
      {
        return result;
      }

      v745 = 0;
      v742 = 0;
      v743 = 0;
      v740 = 0;
      v741 = 0;
      v744 = 0;
      v737 = 0;
      v738 = 0;
      v736 = 0;
      v739 = 0;
      v31 = (*(*v13 + 16))(v13);
      if (v31)
      {
        LODWORD(v17) = v31;
        v32 = re::GeomAttribute::accessValues<int>(v13);
        if (!v33)
        {
          goto LABEL_997;
        }

        v3 = v32;
        v743 = 0;
        v744 = 1;
        v738 = 0;
        v739 = 1;
        v17 = v17;
        re::DynamicArray<unsigned int>::resize(&v741, v17, &re::kInvalidMeshIndex);
        LOBYTE(v764) = 0;
        re::DynamicArray<unsigned char>::resize(&v736, v17, &v764);
        *&v758[2] = 0;
        memset(v756, 0, sizeof(v756));
        re::DynamicArray<float>::resize(v756, v17);
        v34 = 0;
        v4 = *&v756[16];
        v35 = *&v758[2];
        do
        {
          if (v4 == v34)
          {
            goto LABEL_613;
          }

          *(v35 + 4 * v34) = v34;
          ++v34;
        }

        while (v17 != v34);
        *&v764 = v3;
        if (!*&v756[16])
        {
          goto LABEL_1021;
        }

        v6 = **&v758[2];
        v4 = v738;
        v36 = v747;
        if (v738 <= v6)
        {
          goto LABEL_1045;
        }

        v5 = 0;
        v37 = *(v3 + v6);
        v740[v6] = 1;
        do
        {
          v4 = *&v756[16];
          if (*&v756[16] <= v5)
          {
            goto LABEL_637;
          }

          v4 = *(*&v758[2] + 4 * v5);
          v38 = *(v3 + v4);
          if (v38 != v37)
          {
            v6 = v738;
            if (v738 <= v4)
            {
              goto LABEL_853;
            }

            v740[v4] = 1;
            v6 = v4;
            v37 = v38;
          }

          v7 = v743;
          if (v743 <= v4)
          {
            goto LABEL_661;
          }

          *(v745 + 4 * v4) = v6;
          ++v5;
        }

        while (v17 != v5);
        if (*v756 && *&v758[2])
        {
          (*(**v756 + 40))();
        }
      }

      *&v758[2] = 0;
      memset(v756, 0, sizeof(v756));
      *&v755[2] = 0;
      memset(v753, 0, sizeof(v753));
      v39 = (*(*v13 + 16))(v13);
      v40 = v39;
      if (v39)
      {
        v3 = v738;
        if (v738 <= v39 - 1)
        {
          goto LABEL_1069;
        }

        LODWORD(v41) = 0;
        v42 = v740;
        v3 = v39;
        v43 = v39;
        do
        {
          v44 = *v42++;
          v41 = (v41 + v44);
          --v43;
        }

        while (v43);
      }

      else
      {
        v3 = 0;
        v41 = 0;
      }

      v17 = re::GeomAttribute::accessValues<int>(v13);
      v6 = v161;
      re::DynamicArray<BOOL>::resize(v756, v41);
      re::DynamicArray<unsigned int>::resize(v753, v3, &re::kInvalidMeshIndex);
      v163 = v747;
      if (v40)
      {
        v4 = 0;
        v164 = 0;
        v5 = v6;
        do
        {
          v6 = v738;
          if (v738 <= v4)
          {
            goto LABEL_701;
          }

          if (v740[v4])
          {
            v6 = *&v753[16];
            if (*&v753[16] <= v4)
            {
              goto LABEL_797;
            }

            *(*&v755[2] + 4 * v4) = v164;
            if (v4 >= v5)
            {
              goto LABEL_821;
            }

            v6 = v164;
            v7 = *&v756[16];
            if (*&v756[16] <= v164)
            {
              goto LABEL_845;
            }

            *(*&v758[2] + v164++) = *(v17 + v4);
          }

          ++v4;
        }

        while (v3 != v4);
        v17 = 0;
        v5 = v738;
        v165 = v740;
        v6 = v743;
        v166 = v745;
        v4 = *&v753[16];
        v167 = *&v755[2];
        while (v5 != v17)
        {
          if (!v165[v17])
          {
            if (v6 <= v17)
            {
              goto LABEL_877;
            }

            v8 = *(v166 + 4 * v17);
            if (v4 <= v8)
            {
              goto LABEL_901;
            }

            if (v4 <= v17)
            {
              goto LABEL_925;
            }

            *(v167 + 4 * v17) = *(v167 + 4 * v8);
          }

          if (v3 == ++v17)
          {
            goto LABEL_281;
          }
        }

        goto LABEL_709;
      }

LABEL_281:
      v17 = re::internal::accessFaceVaryingAttributeSubmesh(v13, v162);
      v3 = *&v756[16];
      v8 = *(v17 + 24);
      v4 = v8;
      *&v752[2] = 0;
      memset(v750, 0, sizeof(v750));
      re::DynamicArray<re::GeomCell4>::resize(v750, v8);
      v168 = v747;
      if (v8)
      {
        v169 = 0;
        v5 = *&v750[16];
        v170 = *&v752[2];
        v6 = *(v17 + 24);
        v171 = *(v17 + 40);
        v9 = *&v753[16];
        do
        {
          if (v169 == v5)
          {
            goto LABEL_733;
          }

          if (v169 == v6)
          {
            goto LABEL_757;
          }

          v172 = 0;
          *v759 = *(v171 + 16 * v169);
          v173 = *&v755[2];
          if (*&v759[12] == -1)
          {
            v174 = 3;
          }

          else
          {
            v174 = 4;
          }

          do
          {
            v7 = *&v759[4 * v172];
            if (v9 <= v7)
            {
              goto LABEL_390;
            }

            *(v170 + 4 * v172++) = *(v173 + 4 * v7);
          }

          while (v174 != v172);
          ++v169;
          v170 += 16;
        }

        while (v169 != v8);
      }

      if (*(v17 + 48))
      {
        v175 = *(v17 + 60) == 0;
      }

      else
      {
        v175 = 1;
      }

      if (v175 && *(v10 + 10) == v8)
      {
        re::GeomMesh::updateFaceVaryingAttribute(v10, *(v13 + 8), v3, v750);
      }

      else
      {
        *&v749[2] = 0;
        memset(v747, 0, sizeof(v747));
        re::DynamicArray<unsigned int>::resize(v747, v8, &re::kInvalidMeshIndex);
        v178 = *(v17 + 60);
        if (v178 == 2)
        {
          v4 = v17 + 64;
          re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned int,unsigned int> const&>::HashBrownIterator(&v733, v17 + 64);
          LOBYTE(v732) = 2;
          v260 = *(v17 + 60);
          if (*(v17 + 60))
          {
            if (v260 == 2)
            {
              v729[0] = 2;
              v730 = v17 + 64;
              v731 = xmmword_1E3049610;
              goto LABEL_519;
            }

            if (v260 != 1)
            {
              goto LABEL_1109;
            }

            v247 = *(v17 + 48);
            goto LABEL_514;
          }

LABEL_433:
          v261 = *(v17 + 64);
          v729[0] = 0;
          LODWORD(v730) = v261;
          goto LABEL_519;
        }

        if (v178 != 1)
        {
          if (*(v17 + 60))
          {
            goto LABEL_1105;
          }

          LOBYTE(v732) = 0;
          LODWORD(v733) = 0;
          goto LABEL_433;
        }

        v247 = *(v17 + 48);
        if (v247)
        {
          v248 = *(v17 + 96);
          v249 = *(v17 + 52);
          v250 = *(v17 + 80);
          v251 = v248 + 4 * v250;
          LOBYTE(v732) = 1;
          if (!v248)
          {
            goto LABEL_512;
          }

          v252 = v248 + 4 * v249;
          if (v250 != v249)
          {
            v252 -= 4;
            v253 = 4 * v250 - 4 * v249;
            do
            {
              v255 = *(v252 + 4);
              v252 += 4;
              v254 = v255;
              if (!v253)
              {
                break;
              }

              v253 -= 4;
            }

            while (v254 == -1);
          }

          goto LABEL_513;
        }

        LOBYTE(v732) = 1;
        v734 = 0;
        v735 = 0;
        v733 = 0;
LABEL_514:
        if (v247)
        {
          v319 = *(v17 + 96);
          v320 = v319 + 4 * *(v17 + 80);
          v729[0] = 1;
          v730 = v319;
          *&v731 = v320;
          *(&v731 + 1) = v320;
        }

        else
        {
          v729[0] = 1;
          v731 = 0uLL;
          v730 = 0;
        }

LABEL_519:
        while ((re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(&v732, v729) & 1) == 0)
        {
          v321 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v732, v324) >> 32;
          v323 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v732, v322);
          v4 = v323;
          v5 = *&v747[16];
          if (*&v747[16] <= v323)
          {
            goto LABEL_949;
          }

          *(*&v749[2] + 4 * v323) = v321;
          re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::increment(&v732);
        }

        re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(v729, v324);
        re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v732, v325);
        re::GeomMesh::updateFaceVaryingAttribute(v10, *(v13 + 8), v3, v750, v747);
        if (*v747 && *&v749[2])
        {
          (*(**v747 + 40))();
        }
      }

      if ((*(*v13 + 16))(v13))
      {
        if (!*(v13 + 40))
        {
          goto LABEL_973;
        }

        v316 = *(v13 + 56);
        if ((*(*v13 + 16))(v13))
        {
          goto LABEL_526;
        }
      }

      goto LABEL_1090;
    }

    result = (*(*v11 + 16))(v11);
    if (!result)
    {
      return result;
    }

    v745 = 0;
    v742 = 0;
    v743 = 0;
    v740 = 0;
    v741 = 0;
    v744 = 0;
    v737 = 0;
    v738 = 0;
    v736 = 0;
    v739 = 0;
    v87 = (*(*v13 + 16))(v13);
    if (v87)
    {
      LODWORD(v17) = v87;
      v88 = re::GeomAttribute::accessValues<int>(v13);
      if (!v89)
      {
        goto LABEL_1013;
      }

      v3 = v88;
      v743 = 0;
      v744 = 1;
      v738 = 0;
      v739 = 1;
      v17 = v17;
      re::DynamicArray<unsigned int>::resize(&v741, v17, &re::kInvalidMeshIndex);
      LOBYTE(v764) = 0;
      re::DynamicArray<unsigned char>::resize(&v736, v17, &v764);
      *&v758[2] = 0;
      memset(v756, 0, sizeof(v756));
      re::DynamicArray<float>::resize(v756, v17);
      v90 = 0;
      v4 = *&v756[16];
      v91 = *&v758[2];
      do
      {
        if (v4 == v90)
        {
          goto LABEL_629;
        }

        *(v91 + 4 * v90) = v90;
        ++v90;
      }

      while (v17 != v90);
      *&v764 = v3;
      if (!*&v756[16])
      {
        goto LABEL_1037;
      }

      v6 = **&v758[2];
      v4 = v738;
      v92 = v747;
      if (v738 <= v6)
      {
        goto LABEL_1061;
      }

      v5 = 0;
      v93 = *(v3 + 4 * v6);
      v740[v6] = 1;
      do
      {
        v4 = *&v756[16];
        if (*&v756[16] <= v5)
        {
          goto LABEL_653;
        }

        v4 = *(*&v758[2] + 4 * v5);
        v94 = *(v3 + 4 * v4);
        if (v94 != v93)
        {
          v6 = v738;
          if (v738 <= v4)
          {
            goto LABEL_869;
          }

          v740[v4] = 1;
          v6 = v4;
          v93 = v94;
        }

        v7 = v743;
        if (v743 <= v4)
        {
          goto LABEL_677;
        }

        *(v745 + 4 * v4) = v6;
        ++v5;
      }

      while (v17 != v5);
      if (*v756 && *&v758[2])
      {
        (*(**v756 + 40))();
      }
    }

    *&v758[2] = 0;
    memset(v756, 0, sizeof(v756));
    *&v755[2] = 0;
    memset(v753, 0, sizeof(v753));
    v95 = (*(*v13 + 16))(v13);
    v96 = v95;
    if (v95)
    {
      v3 = v738;
      if (v738 <= v95 - 1)
      {
        goto LABEL_1085;
      }

      LODWORD(v97) = 0;
      v98 = v740;
      v3 = v95;
      v99 = v95;
      do
      {
        v100 = *v98++;
        v97 = (v97 + v100);
        --v99;
      }

      while (v99);
    }

    else
    {
      v3 = 0;
      v97 = 0;
    }

    v17 = re::GeomAttribute::accessValues<int>(v13);
    v6 = v200;
    re::DynamicArray<float>::resize(v756, v97);
    re::DynamicArray<unsigned int>::resize(v753, v3, &re::kInvalidMeshIndex);
    v202 = v747;
    if (v96)
    {
      v5 = 0;
      v203 = 0;
      v4 = v738;
      v204 = v740;
      v8 = *&v753[16];
      v205 = *&v755[2];
      v6 = v6;
      v9 = *&v756[16];
      v206 = *&v758[2];
      do
      {
        if (v4 == v5)
        {
          goto LABEL_693;
        }

        if (v204[v5])
        {
          if (v8 <= v5)
          {
            goto LABEL_789;
          }

          *(v205 + 4 * v5) = v203;
          if (v5 >= v6)
          {
            goto LABEL_813;
          }

          v7 = v203;
          if (v9 <= v203)
          {
            goto LABEL_837;
          }

          *(v206 + 4 * v203++) = *(v17 + 4 * v5);
        }

        ++v5;
      }

      while (v3 != v5);
      v17 = 0;
      v207 = v740;
      v6 = v743;
      v208 = v745;
      v5 = *&v753[16];
      v209 = *&v755[2];
      do
      {
        if (v4 == v17)
        {
          goto LABEL_725;
        }

        if (!v207[v17])
        {
          if (v6 <= v17)
          {
            goto LABEL_893;
          }

          v8 = *(v208 + 4 * v17);
          if (v5 <= v8)
          {
            goto LABEL_917;
          }

          if (v5 <= v17)
          {
            goto LABEL_941;
          }

          *(v209 + 4 * v17) = *(v209 + 4 * v8);
        }

        ++v17;
      }

      while (v3 != v17);
    }

    v17 = re::internal::accessFaceVaryingAttributeSubmesh(v13, v201);
    v3 = *&v756[16];
    v8 = *(v17 + 24);
    v4 = v8;
    *&v752[2] = 0;
    memset(v750, 0, sizeof(v750));
    re::DynamicArray<re::GeomCell4>::resize(v750, v8);
    v210 = v747;
    if (v8)
    {
      v211 = 0;
      v5 = *&v750[16];
      v212 = *&v752[2];
      v6 = *(v17 + 24);
      v213 = *(v17 + 40);
      v9 = *&v753[16];
      do
      {
        if (v211 == v5)
        {
          goto LABEL_749;
        }

        if (v211 == v6)
        {
          goto LABEL_773;
        }

        v214 = 0;
        *v759 = *(v213 + 16 * v211);
        v215 = *&v755[2];
        if (*&v759[12] == -1)
        {
          v216 = 3;
        }

        else
        {
          v216 = 4;
        }

        do
        {
          v7 = *&v759[4 * v214];
          if (v9 <= v7)
          {
LABEL_406:
            v732 = 0;
            v210[18] = 0u;
            v210[19] = 0u;
            v210[16] = 0u;
            v210[17] = 0u;
            v210[15] = 0u;
            v13 = MEMORY[0x1E69E9C10];
            v10 = v747;
            v236 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v747 = 136315906;
            *&v747[4] = "operator[]";
            *&v747[12] = 1024;
            if (v236)
            {
              v237 = 3;
            }

            else
            {
              v237 = 2;
            }

            *&v747[14] = 789;
            *&v747[18] = 2048;
            *&v747[20] = v7;
            v748 = 2048;
            *v749 = v9;
            _os_log_send_and_compose_impl(v237, &v732, &v764, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
            _os_crash_msg();
            __break(1u);
            goto LABEL_410;
          }

          *(v212 + 4 * v214++) = *(v215 + 4 * v7);
        }

        while (v216 != v214);
        ++v211;
        v212 += 16;
      }

      while (v211 != v8);
    }

    if (*(v17 + 48))
    {
      v217 = *(v17 + 60) == 0;
    }

    else
    {
      v217 = 1;
    }

    if (v217 && *(v10 + 10) == v8)
    {
      re::GeomMesh::updateFaceVaryingAttribute(v10, *(v13 + 8), v3, v750);
LABEL_589:
      if (!(*(*v13 + 16))(v13))
      {
        goto LABEL_1098;
      }

      if (!*(v13 + 40))
      {
        goto LABEL_989;
      }

      v316 = *(v13 + 56);
      if (!(*(*v13 + 16))(v13))
      {
        goto LABEL_1098;
      }

      goto LABEL_592;
    }

    *&v749[2] = 0;
    memset(v747, 0, sizeof(v747));
    re::DynamicArray<unsigned int>::resize(v747, v8, &re::kInvalidMeshIndex);
    v220 = *(v17 + 60);
    if (v220 == 2)
    {
      v4 = v17 + 64;
      re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned int,unsigned int> const&>::HashBrownIterator(&v733, v17 + 64);
      LOBYTE(v732) = 2;
      v308 = *(v17 + 60);
      if (!*(v17 + 60))
      {
LABEL_481:
        v309 = *(v17 + 64);
        v729[0] = 0;
        LODWORD(v730) = v309;
LABEL_585:
        while ((re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(&v732, v729) & 1) == 0)
        {
          v353 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v732, v356) >> 32;
          v355 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v732, v354);
          v4 = v355;
          v5 = *&v747[16];
          if (*&v747[16] <= v355)
          {
            goto LABEL_965;
          }

          *(*&v749[2] + 4 * v355) = v353;
          re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::increment(&v732);
        }

        re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(v729, v356);
        re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v732, v357);
        re::GeomMesh::updateFaceVaryingAttribute(v10, *(v13 + 8), v3, v750, v747);
        if (*v747 && *&v749[2])
        {
          (*(**v747 + 40))();
        }

        goto LABEL_589;
      }

      if (v308 == 2)
      {
        v729[0] = 2;
        v730 = v17 + 64;
        v731 = xmmword_1E3049610;
        goto LABEL_585;
      }

      if (v308 != 1)
      {
        goto LABEL_1113;
      }

      v295 = *(v17 + 48);
    }

    else
    {
      if (v220 != 1)
      {
        if (*(v17 + 60))
        {
          goto LABEL_1107;
        }

        LOBYTE(v732) = 0;
        LODWORD(v733) = 0;
        goto LABEL_481;
      }

      v295 = *(v17 + 48);
      if (v295)
      {
        v296 = *(v17 + 96);
        v297 = *(v17 + 52);
        v298 = *(v17 + 80);
        v299 = v296 + 4 * v298;
        LOBYTE(v732) = 1;
        if (v296)
        {
          v300 = v296 + 4 * v297;
          if (v298 != v297)
          {
            v300 -= 4;
            v301 = 4 * v298 - 4 * v297;
            do
            {
              v303 = *(v300 + 4);
              v300 += 4;
              v302 = v303;
              if (!v301)
              {
                break;
              }

              v301 -= 4;
            }

            while (v302 == -1);
          }
        }

        else
        {
          v300 = 0;
        }

        v733 = v296;
        v734 = v300;
        v735 = v299;
      }

      else
      {
        LOBYTE(v732) = 1;
        v734 = 0;
        v735 = 0;
        v733 = 0;
      }
    }

    if (v295)
    {
      v351 = *(v17 + 96);
      v352 = v351 + 4 * *(v17 + 80);
      v729[0] = 1;
      v730 = v351;
      *&v731 = v352;
      *(&v731 + 1) = v352;
    }

    else
    {
      v729[0] = 1;
      v731 = 0uLL;
      v730 = 0;
    }

    goto LABEL_585;
  }

  if (!v11[17])
  {
    result = (*(*v11 + 16))(v11);
    if (!result)
    {
      return result;
    }

    v745 = 0;
    v742 = 0;
    v743 = 0;
    v740 = 0;
    v741 = 0;
    v744 = 0;
    v737 = 0;
    v738 = 0;
    v736 = 0;
    v739 = 0;
    v73 = (*(*v13 + 16))(v13);
    if (v73)
    {
      LODWORD(v17) = v73;
      v74 = re::GeomAttribute::accessValues<int>(v13);
      if (!v75)
      {
        goto LABEL_1009;
      }

      v3 = v74;
      v743 = 0;
      v744 = 1;
      v738 = 0;
      v739 = 1;
      v17 = v17;
      re::DynamicArray<unsigned int>::resize(&v741, v17, &re::kInvalidMeshIndex);
      LOBYTE(v764) = 0;
      re::DynamicArray<unsigned char>::resize(&v736, v17, &v764);
      *&v758[2] = 0;
      memset(v756, 0, sizeof(v756));
      re::DynamicArray<float>::resize(v756, v17);
      v76 = 0;
      v4 = *&v756[16];
      v77 = *&v758[2];
      do
      {
        if (v4 == v76)
        {
          goto LABEL_625;
        }

        *(v77 + 4 * v76) = v76;
        ++v76;
      }

      while (v17 != v76);
      *&v764 = v3;
      if (!*&v756[16])
      {
        goto LABEL_1033;
      }

      v6 = **&v758[2];
      v4 = v738;
      v78 = v747;
      if (v738 <= v6)
      {
        goto LABEL_1057;
      }

      v5 = 0;
      v79 = *(v3 + 2 * v6);
      v740[v6] = 1;
      do
      {
        v4 = *&v756[16];
        if (*&v756[16] <= v5)
        {
          goto LABEL_649;
        }

        v4 = *(*&v758[2] + 4 * v5);
        v80 = *(v3 + 2 * v4);
        if (v80 != v79)
        {
          v6 = v738;
          if (v738 <= v4)
          {
            goto LABEL_865;
          }

          v740[v4] = 1;
          v6 = v4;
          v79 = v80;
        }

        v7 = v743;
        if (v743 <= v4)
        {
          goto LABEL_673;
        }

        *(v745 + 4 * v4) = v6;
        ++v5;
      }

      while (v17 != v5);
      if (*v756 && *&v758[2])
      {
        (*(**v756 + 40))();
      }
    }

    *&v758[2] = 0;
    memset(v756, 0, sizeof(v756));
    *&v755[2] = 0;
    memset(v753, 0, sizeof(v753));
    v81 = (*(*v13 + 16))(v13);
    v82 = v81;
    if (v81)
    {
      v3 = v738;
      if (v738 <= v81 - 1)
      {
        goto LABEL_1081;
      }

      LODWORD(v83) = 0;
      v84 = v740;
      v3 = v81;
      v85 = v81;
      do
      {
        v86 = *v84++;
        v83 = (v83 + v86);
        --v85;
      }

      while (v85);
    }

    else
    {
      v3 = 0;
      v83 = 0;
    }

    v17 = re::GeomAttribute::accessValues<int>(v13);
    v6 = v179;
    re::DynamicArray<short>::resize(v756, v83);
    re::DynamicArray<unsigned int>::resize(v753, v3, &re::kInvalidMeshIndex);
    v181 = v747;
    if (v82)
    {
      v5 = 0;
      v182 = 0;
      v4 = v738;
      v183 = v740;
      v8 = *&v753[16];
      v184 = *&v755[2];
      v6 = v6;
      v9 = *&v756[16];
      v185 = *&v758[2];
      do
      {
        if (v4 == v5)
        {
          goto LABEL_689;
        }

        if (v183[v5])
        {
          if (v8 <= v5)
          {
            goto LABEL_785;
          }

          *(v184 + 4 * v5) = v182;
          if (v5 >= v6)
          {
            goto LABEL_809;
          }

          v7 = v182;
          if (v9 <= v182)
          {
            goto LABEL_833;
          }

          *(v185 + 2 * v182++) = *(v17 + 2 * v5);
        }

        ++v5;
      }

      while (v3 != v5);
      v17 = 0;
      v186 = v740;
      v6 = v743;
      v187 = v745;
      v5 = *&v753[16];
      v188 = *&v755[2];
      do
      {
        if (v4 == v17)
        {
          goto LABEL_721;
        }

        if (!v186[v17])
        {
          if (v6 <= v17)
          {
            goto LABEL_889;
          }

          v8 = *(v187 + 4 * v17);
          if (v5 <= v8)
          {
            goto LABEL_913;
          }

          if (v5 <= v17)
          {
            goto LABEL_937;
          }

          *(v188 + 4 * v17) = *(v188 + 4 * v8);
        }

        ++v17;
      }

      while (v3 != v17);
    }

    v17 = re::internal::accessFaceVaryingAttributeSubmesh(v13, v180);
    v3 = *&v756[16];
    v8 = *(v17 + 24);
    v4 = v8;
    *&v752[2] = 0;
    memset(v750, 0, sizeof(v750));
    re::DynamicArray<re::GeomCell4>::resize(v750, v8);
    v189 = v747;
    if (v8)
    {
      v190 = 0;
      v5 = *&v750[16];
      v191 = *&v752[2];
      v6 = *(v17 + 24);
      v192 = *(v17 + 40);
      v9 = *&v753[16];
      do
      {
        if (v190 == v5)
        {
          goto LABEL_745;
        }

        if (v190 == v6)
        {
          goto LABEL_769;
        }

        v193 = 0;
        *v759 = *(v192 + 16 * v190);
        v194 = *&v755[2];
        if (*&v759[12] == -1)
        {
          v195 = 3;
        }

        else
        {
          v195 = 4;
        }

        do
        {
          v7 = *&v759[4 * v193];
          if (v9 <= v7)
          {
            goto LABEL_402;
          }

          *(v191 + 4 * v193++) = *(v194 + 4 * v7);
        }

        while (v195 != v193);
        ++v190;
        v191 += 16;
      }

      while (v190 != v8);
    }

    if (*(v17 + 48))
    {
      v196 = *(v17 + 60) == 0;
    }

    else
    {
      v196 = 1;
    }

    if (v196 && *(v10 + 10) == v8)
    {
      re::GeomMesh::updateFaceVaryingAttribute(v10, *(v13 + 8), v3, v750);
LABEL_574:
      if ((*(*v13 + 16))(v13))
      {
        if (!*(v13 + 40))
        {
          goto LABEL_985;
        }

        v316 = *(v13 + 56);
        if ((*(*v13 + 16))(v13))
        {
          goto LABEL_577;
        }
      }

      goto LABEL_1094;
    }

    *&v749[2] = 0;
    memset(v747, 0, sizeof(v747));
    re::DynamicArray<unsigned int>::resize(v747, v8, &re::kInvalidMeshIndex);
    v199 = *(v17 + 60);
    if (v199 == 2)
    {
      v4 = v17 + 64;
      re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned int,unsigned int> const&>::HashBrownIterator(&v733, v17 + 64);
      LOBYTE(v732) = 2;
      v305 = *(v17 + 60);
      if (*(v17 + 60))
      {
        if (v305 == 2)
        {
          v729[0] = 2;
          v730 = v17 + 64;
          v731 = xmmword_1E3049610;
          goto LABEL_570;
        }

        if (v305 != 1)
        {
          goto LABEL_1112;
        }

        v286 = *(v17 + 48);
        goto LABEL_565;
      }
    }

    else
    {
      if (v199 == 1)
      {
        v286 = *(v17 + 48);
        if (!v286)
        {
          LOBYTE(v732) = 1;
          v734 = 0;
          v735 = 0;
          v733 = 0;
LABEL_565:
          if (v286)
          {
            v344 = *(v17 + 96);
            v345 = v344 + 4 * *(v17 + 80);
            v729[0] = 1;
            v730 = v344;
            *&v731 = v345;
            *(&v731 + 1) = v345;
          }

          else
          {
            v729[0] = 1;
            v731 = 0uLL;
            v730 = 0;
          }

LABEL_570:
          while ((re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(&v732, v729) & 1) == 0)
          {
            v346 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v732, v349) >> 32;
            v348 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v732, v347);
            v4 = v348;
            v5 = *&v747[16];
            if (*&v747[16] <= v348)
            {
              goto LABEL_961;
            }

            *(*&v749[2] + 4 * v348) = v346;
            re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::increment(&v732);
          }

          re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(v729, v349);
          re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v732, v350);
          re::GeomMesh::updateFaceVaryingAttribute(v10, *(v13 + 8), v3, v750, v747);
          if (*v747 && *&v749[2])
          {
            (*(**v747 + 40))();
          }

          goto LABEL_574;
        }

        v287 = *(v17 + 96);
        v288 = *(v17 + 52);
        v289 = *(v17 + 80);
        v290 = v287 + 4 * v289;
        LOBYTE(v732) = 1;
        if (v287)
        {
          v291 = v287 + 4 * v288;
          if (v289 != v288)
          {
            v291 -= 4;
            v292 = 4 * v289 - 4 * v288;
            do
            {
              v294 = *(v291 + 4);
              v291 += 4;
              v293 = v294;
              if (!v292)
              {
                break;
              }

              v292 -= 4;
            }

            while (v293 == -1);
          }

          goto LABEL_564;
        }

LABEL_563:
        v291 = 0;
LABEL_564:
        v733 = v287;
        v734 = v291;
        v735 = v290;
        goto LABEL_565;
      }

      if (*(v17 + 60))
      {
        goto LABEL_1106;
      }

      LOBYTE(v732) = 0;
      LODWORD(v733) = 0;
    }

    v306 = *(v17 + 64);
    v729[0] = 0;
    LODWORD(v730) = v306;
    goto LABEL_570;
  }

  if (v14 == 1)
  {
    result = (*(*v11 + 16))(v11);
    if (!result)
    {
      return result;
    }

    v745 = 0;
    v742 = 0;
    v743 = 0;
    v740 = 0;
    v741 = 0;
    v744 = 0;
    v737 = 0;
    v738 = 0;
    v736 = 0;
    v739 = 0;
    v45 = (*(*v13 + 16))(v13);
    if (v45)
    {
      LODWORD(v17) = v45;
      v46 = re::GeomAttribute::accessValues<int>(v13);
      if (!v47)
      {
        goto LABEL_1001;
      }

      v3 = v46;
      v743 = 0;
      v744 = 1;
      v738 = 0;
      v739 = 1;
      v17 = v17;
      re::DynamicArray<unsigned int>::resize(&v741, v17, &re::kInvalidMeshIndex);
      LOBYTE(v764) = 0;
      re::DynamicArray<unsigned char>::resize(&v736, v17, &v764);
      *&v758[2] = 0;
      memset(v756, 0, sizeof(v756));
      re::DynamicArray<float>::resize(v756, v17);
      v48 = 0;
      v4 = *&v756[16];
      v49 = *&v758[2];
      do
      {
        if (v4 == v48)
        {
          goto LABEL_617;
        }

        *(v49 + 4 * v48) = v48;
        ++v48;
      }

      while (v17 != v48);
      *&v764 = v3;
      if (!*&v756[16])
      {
        goto LABEL_1025;
      }

      v6 = **&v758[2];
      v4 = v738;
      v50 = v747;
      if (v738 <= v6)
      {
        goto LABEL_1049;
      }

      v5 = 0;
      v51 = *(v3 + 2 * v6);
      v740[v6] = 1;
      do
      {
        v4 = *&v756[16];
        if (*&v756[16] <= v5)
        {
          goto LABEL_641;
        }

        v4 = *(*&v758[2] + 4 * v5);
        v52 = *(v3 + 2 * v4);
        if (v52 != v51)
        {
          v6 = v738;
          if (v738 <= v4)
          {
            goto LABEL_857;
          }

          v740[v4] = 1;
          v6 = v4;
          v51 = v52;
        }

        v7 = v743;
        if (v743 <= v4)
        {
          goto LABEL_665;
        }

        *(v745 + 4 * v4) = v6;
        ++v5;
      }

      while (v17 != v5);
      if (*v756 && *&v758[2])
      {
        (*(**v756 + 40))();
      }
    }

    *&v758[2] = 0;
    memset(v756, 0, sizeof(v756));
    *&v755[2] = 0;
    memset(v753, 0, sizeof(v753));
    v53 = (*(*v13 + 16))(v13);
    v54 = v53;
    if (v53)
    {
      v3 = v738;
      if (v738 <= v53 - 1)
      {
        goto LABEL_1073;
      }

      LODWORD(v55) = 0;
      v56 = v740;
      v3 = v53;
      v57 = v53;
      do
      {
        v58 = *v56++;
        v55 = (v55 + v58);
        --v57;
      }

      while (v57);
    }

    else
    {
      v3 = 0;
      v55 = 0;
    }

    v17 = re::GeomAttribute::accessValues<int>(v13);
    v6 = v101;
    re::DynamicArray<unsigned short>::resize(v756, v55);
    re::DynamicArray<unsigned int>::resize(v753, v3, &re::kInvalidMeshIndex);
    v103 = v747;
    if (v54)
    {
      v5 = 0;
      v104 = 0;
      v4 = v738;
      v105 = v740;
      v8 = *&v753[16];
      v106 = *&v755[2];
      v6 = v6;
      v9 = *&v756[16];
      v107 = *&v758[2];
      do
      {
        if (v4 == v5)
        {
          goto LABEL_681;
        }

        if (v105[v5])
        {
          if (v8 <= v5)
          {
            goto LABEL_777;
          }

          *(v106 + 4 * v5) = v104;
          if (v5 >= v6)
          {
            goto LABEL_801;
          }

          v7 = v104;
          if (v9 <= v104)
          {
            goto LABEL_825;
          }

          *(v107 + 2 * v104++) = *(v17 + 2 * v5);
        }

        ++v5;
      }

      while (v3 != v5);
      v17 = 0;
      v108 = v740;
      v6 = v743;
      v109 = v745;
      v5 = *&v753[16];
      v110 = *&v755[2];
      while (v4 != v17)
      {
        if (!v108[v17])
        {
          if (v6 <= v17)
          {
            goto LABEL_881;
          }

          v8 = *(v109 + 4 * v17);
          if (v5 <= v8)
          {
            goto LABEL_905;
          }

          if (v5 <= v17)
          {
            goto LABEL_929;
          }

          *(v110 + 4 * v17) = *(v110 + 4 * v8);
        }

        if (v3 == ++v17)
        {
          goto LABEL_164;
        }
      }

LABEL_713:
      *v747 = 0;
      v103[18] = 0u;
      v103[19] = 0u;
      v103[16] = 0u;
      v103[17] = 0u;
      v103[15] = 0u;
      v436 = MEMORY[0x1E69E9C10];
      v437 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v750 = 136315906;
      *&v750[4] = "operator[]";
      *&v750[12] = 1024;
      if (v437)
      {
        v438 = 3;
      }

      else
      {
        v438 = 2;
      }

      *&v750[14] = 797;
      *&v750[18] = 2048;
      *&v750[20] = v4;
      v751 = 2048;
      *v752 = v4;
      _os_log_send_and_compose_impl(v438, v747, &v764, 80, &dword_1E1C61000, v436, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
      _os_crash_msg();
      __break(1u);
      goto LABEL_717;
    }

LABEL_164:
    v17 = re::internal::accessFaceVaryingAttributeSubmesh(v13, v102);
    v3 = *&v756[16];
    v8 = *(v17 + 24);
    v4 = v8;
    *&v752[2] = 0;
    memset(v750, 0, sizeof(v750));
    re::DynamicArray<re::GeomCell4>::resize(v750, v8);
    v111 = v747;
    if (v8)
    {
      v112 = 0;
      v5 = *&v750[16];
      v113 = *&v752[2];
      v6 = *(v17 + 24);
      v114 = *(v17 + 40);
      v9 = *&v753[16];
      do
      {
        if (v112 == v5)
        {
          goto LABEL_737;
        }

        if (v112 == v6)
        {
          goto LABEL_761;
        }

        v115 = 0;
        *v759 = *(v114 + 16 * v112);
        v116 = *&v755[2];
        if (*&v759[12] == -1)
        {
          v117 = 3;
        }

        else
        {
          v117 = 4;
        }

        do
        {
          v7 = *&v759[4 * v115];
          if (v9 <= v7)
          {
            goto LABEL_394;
          }

          *(v113 + 4 * v115++) = *(v116 + 4 * v7);
        }

        while (v117 != v115);
        ++v112;
        v113 += 16;
      }

      while (v112 != v8);
    }

    if (*(v17 + 48))
    {
      v118 = *(v17 + 60) == 0;
    }

    else
    {
      v118 = 1;
    }

    if (v118 && *(v10 + 10) == v8)
    {
      re::GeomMesh::updateFaceVaryingAttribute(v10, *(v13 + 8), v3, v750);
      goto LABEL_538;
    }

    *&v749[2] = 0;
    memset(v747, 0, sizeof(v747));
    re::DynamicArray<unsigned int>::resize(v747, v8, &re::kInvalidMeshIndex);
    v121 = *(v17 + 60);
    if (v121 == 2)
    {
      v4 = v17 + 64;
      re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned int,unsigned int> const&>::HashBrownIterator(&v733, v17 + 64);
      LOBYTE(v732) = 2;
      v281 = *(v17 + 60);
      if (!*(v17 + 60))
      {
LABEL_452:
        v282 = *(v17 + 64);
        v729[0] = 0;
        LODWORD(v730) = v282;
LABEL_534:
        while ((re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(&v732, v729) & 1) == 0)
        {
          v17 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v732, v332);
          v331 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v732, v330);
          v4 = v331;
          v5 = *&v747[16];
          if (*&v747[16] <= v331)
          {
            goto LABEL_953;
          }

          *(*&v749[2] + 4 * v331) = HIDWORD(v17);
          re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::increment(&v732);
        }

        re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(v729, v332);
        re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v732, v333);
        re::GeomMesh::updateFaceVaryingAttribute(v10, *(v13 + 8), v3, v750, v747);
        if (*v747 && *&v749[2])
        {
          (*(**v747 + 40))();
        }

LABEL_538:
        if ((*(*v13 + 16))(v13))
        {
          if (!*(v13 + 40))
          {
            goto LABEL_977;
          }

          v316 = *(v13 + 56);
          if ((*(*v13 + 16))(v13))
          {
LABEL_577:
            v327 = *&v758[2];
            v326 = 2 * v3;
            goto LABEL_593;
          }
        }

        *v759 = 0;
        v10 = v747;
        v767 = 0u;
        v768 = 0u;
        v765 = 0u;
        v766 = 0u;
        v764 = 0u;
        v13 = MEMORY[0x1E69E9C10];
        v334 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v747 = 136315906;
        *&v747[4] = "operator[]";
        *&v747[12] = 1024;
        if (v334)
        {
          v335 = 3;
        }

        else
        {
          v335 = 2;
        }

        *&v747[14] = 621;
        *&v747[18] = 2048;
        *&v747[20] = 0;
        v748 = 2048;
        *v749 = 0;
        _os_log_send_and_compose_impl(v335, v759, &v764, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
        _os_crash_msg();
        __break(1u);
        goto LABEL_545;
      }

      if (v281 == 2)
      {
        v729[0] = 2;
        v730 = v17 + 64;
        v731 = xmmword_1E3049610;
        goto LABEL_534;
      }

      if (v281 != 1)
      {
        goto LABEL_1110;
      }

      v262 = *(v17 + 48);
    }

    else
    {
      if (v121 != 1)
      {
        if (*(v17 + 60))
        {
LABEL_1102:
          re::internal::assertLog(4, v120, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "begin", 699);
          _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
          __break(1u);
          goto LABEL_1103;
        }

        LOBYTE(v732) = 0;
        LODWORD(v733) = 0;
        goto LABEL_452;
      }

      v262 = *(v17 + 48);
      if (v262)
      {
        v263 = *(v17 + 96);
        v264 = *(v17 + 52);
        v265 = *(v17 + 80);
        v266 = v263 + 4 * v265;
        LOBYTE(v732) = 1;
        if (v263)
        {
          v267 = v263 + 4 * v264;
          if (v265 != v264)
          {
            v267 -= 4;
            v268 = 4 * v265 - 4 * v264;
            do
            {
              v270 = *(v267 + 4);
              v267 += 4;
              v269 = v270;
              if (!v268)
              {
                break;
              }

              v268 -= 4;
            }

            while (v269 == -1);
          }
        }

        else
        {
          v267 = 0;
        }

        v733 = v263;
        v734 = v267;
        v735 = v266;
      }

      else
      {
        LOBYTE(v732) = 1;
        v734 = 0;
        v735 = 0;
        v733 = 0;
      }
    }

    if (v262)
    {
      v328 = *(v17 + 96);
      v329 = v328 + 4 * *(v17 + 80);
      v729[0] = 1;
      v730 = v328;
      *&v731 = v329;
      *(&v731 + 1) = v329;
    }

    else
    {
      v729[0] = 1;
      v731 = 0uLL;
      v730 = 0;
    }

    goto LABEL_534;
  }

  if (v14 != 2)
  {
LABEL_1089:
    re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) The attribute is not an integer type.", "!Unreachable code", "mergeDiscreteFaceVaryingAttributeValues", 596);
    _os_crash("assertion failure: (!Unreachable code) The attribute is not an integer type.");
    __break(1u);
LABEL_1090:
    *v759 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v718 = MEMORY[0x1E69E9C10];
    v719 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v747 = 136315906;
    *&v747[4] = "operator[]";
    *&v747[12] = 1024;
    if (v719)
    {
      v720 = 3;
    }

    else
    {
      v720 = 2;
    }

    *&v747[14] = 621;
    *&v747[18] = 2048;
    *&v747[20] = 0;
    v748 = 2048;
    *v749 = 0;
    _os_log_send_and_compose_impl(v720, v759, &v764, 80, &dword_1E1C61000, v718, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_1094:
    *v759 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v721 = MEMORY[0x1E69E9C10];
    v722 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v747 = 136315906;
    *&v747[4] = "operator[]";
    *&v747[12] = 1024;
    if (v722)
    {
      v723 = 3;
    }

    else
    {
      v723 = 2;
    }

    *&v747[14] = 621;
    *&v747[18] = 2048;
    *&v747[20] = 0;
    v748 = 2048;
    *v749 = 0;
    _os_log_send_and_compose_impl(v723, v759, &v764, 80, &dword_1E1C61000, v721, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_1098:
    *v759 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v724 = MEMORY[0x1E69E9C10];
    v725 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v747 = 136315906;
    *&v747[4] = "operator[]";
    *&v747[12] = 1024;
    if (v725)
    {
      v726 = 3;
    }

    else
    {
      v726 = 2;
    }

    *&v747[14] = 621;
    *&v747[18] = 2048;
    *&v747[20] = 0;
    v748 = 2048;
    *v749 = 0;
    _os_log_send_and_compose_impl(v726, v759, &v764, 80, &dword_1E1C61000, v724, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
    goto LABEL_1102;
  }

  result = (*(*v11 + 16))(v11);
  if (!result)
  {
    return result;
  }

  v745 = 0;
  v742 = 0;
  v743 = 0;
  v740 = 0;
  v741 = 0;
  v744 = 0;
  v737 = 0;
  v738 = 0;
  v736 = 0;
  v739 = 0;
  v16 = (*(*v13 + 16))(v13);
  if (!v16)
  {
    goto LABEL_23;
  }

  LODWORD(v17) = v16;
  v18 = re::GeomAttribute::accessValues<int>(v13);
  if (!v19)
  {
    goto LABEL_993;
  }

  v3 = v18;
  v743 = 0;
  v744 = 1;
  v738 = 0;
  v739 = 1;
  v17 = v17;
  re::DynamicArray<unsigned int>::resize(&v741, v17, &re::kInvalidMeshIndex);
  LOBYTE(v764) = 0;
  re::DynamicArray<unsigned char>::resize(&v736, v17, &v764);
  *&v758[2] = 0;
  memset(v756, 0, sizeof(v756));
  re::DynamicArray<float>::resize(v756, v17);
  v20 = 0;
  v4 = *&v756[16];
  v21 = *&v758[2];
  do
  {
    if (v4 == v20)
    {
      *v750 = 0;
      v767 = 0u;
      v768 = 0u;
      v765 = 0u;
      v766 = 0u;
      v764 = 0u;
      v358 = MEMORY[0x1E69E9C10];
      v359 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v753 = 136315906;
      *&v753[4] = "operator[]";
      *&v753[12] = 1024;
      if (v359)
      {
        v360 = 3;
      }

      else
      {
        v360 = 2;
      }

      *&v753[14] = 789;
      *&v753[18] = 2048;
      *&v753[20] = v4;
      v754 = 2048;
      *v755 = v4;
      _os_log_send_and_compose_impl(v360, v750, &v764, 80, &dword_1E1C61000, v358, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
      _os_crash_msg();
      __break(1u);
LABEL_613:
      *v750 = 0;
      v767 = 0u;
      v768 = 0u;
      v765 = 0u;
      v766 = 0u;
      v764 = 0u;
      v361 = MEMORY[0x1E69E9C10];
      v362 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v753 = 136315906;
      *&v753[4] = "operator[]";
      *&v753[12] = 1024;
      if (v362)
      {
        v363 = 3;
      }

      else
      {
        v363 = 2;
      }

      *&v753[14] = 789;
      *&v753[18] = 2048;
      *&v753[20] = v4;
      v754 = 2048;
      *v755 = v4;
      _os_log_send_and_compose_impl(v363, v750, &v764, 80, &dword_1E1C61000, v361, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
      _os_crash_msg();
      __break(1u);
LABEL_617:
      *v750 = 0;
      v767 = 0u;
      v768 = 0u;
      v765 = 0u;
      v766 = 0u;
      v764 = 0u;
      v364 = MEMORY[0x1E69E9C10];
      v365 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v753 = 136315906;
      *&v753[4] = "operator[]";
      *&v753[12] = 1024;
      if (v365)
      {
        v366 = 3;
      }

      else
      {
        v366 = 2;
      }

      *&v753[14] = 789;
      *&v753[18] = 2048;
      *&v753[20] = v4;
      v754 = 2048;
      *v755 = v4;
      _os_log_send_and_compose_impl(v366, v750, &v764, 80, &dword_1E1C61000, v364, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
      _os_crash_msg();
      __break(1u);
LABEL_621:
      *v750 = 0;
      v767 = 0u;
      v768 = 0u;
      v765 = 0u;
      v766 = 0u;
      v764 = 0u;
      v367 = MEMORY[0x1E69E9C10];
      v368 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v753 = 136315906;
      *&v753[4] = "operator[]";
      *&v753[12] = 1024;
      if (v368)
      {
        v369 = 3;
      }

      else
      {
        v369 = 2;
      }

      *&v753[14] = 789;
      *&v753[18] = 2048;
      *&v753[20] = v4;
      v754 = 2048;
      *v755 = v4;
      _os_log_send_and_compose_impl(v369, v750, &v764, 80, &dword_1E1C61000, v367, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
      _os_crash_msg();
      __break(1u);
LABEL_625:
      *v750 = 0;
      v767 = 0u;
      v768 = 0u;
      v765 = 0u;
      v766 = 0u;
      v764 = 0u;
      v370 = MEMORY[0x1E69E9C10];
      v371 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v753 = 136315906;
      *&v753[4] = "operator[]";
      *&v753[12] = 1024;
      if (v371)
      {
        v372 = 3;
      }

      else
      {
        v372 = 2;
      }

      *&v753[14] = 789;
      *&v753[18] = 2048;
      *&v753[20] = v4;
      v754 = 2048;
      *v755 = v4;
      _os_log_send_and_compose_impl(v372, v750, &v764, 80, &dword_1E1C61000, v370, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
      _os_crash_msg();
      __break(1u);
LABEL_629:
      *v750 = 0;
      v767 = 0u;
      v768 = 0u;
      v765 = 0u;
      v766 = 0u;
      v764 = 0u;
      v373 = MEMORY[0x1E69E9C10];
      v374 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v753 = 136315906;
      *&v753[4] = "operator[]";
      *&v753[12] = 1024;
      if (v374)
      {
        v375 = 3;
      }

      else
      {
        v375 = 2;
      }

      *&v753[14] = 789;
      *&v753[18] = 2048;
      *&v753[20] = v4;
      v754 = 2048;
      *v755 = v4;
      _os_log_send_and_compose_impl(v375, v750, &v764, 80, &dword_1E1C61000, v373, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
      _os_crash_msg();
      __break(1u);
LABEL_633:
      *v750 = 0;
      v22[18] = 0u;
      v22[19] = 0u;
      v22[16] = 0u;
      v22[17] = 0u;
      v22[15] = 0u;
      v376 = MEMORY[0x1E69E9C10];
      v377 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v753 = 136315906;
      *&v753[4] = "operator[]";
      *&v753[12] = 1024;
      if (v377)
      {
        v378 = 3;
      }

      else
      {
        v378 = 2;
      }

      *&v753[14] = 789;
      *&v753[18] = 2048;
      *&v753[20] = v5;
      v754 = 2048;
      *v755 = v4;
      _os_log_send_and_compose_impl(v378, v750, &v764, 80, &dword_1E1C61000, v376, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
      _os_crash_msg();
      __break(1u);
LABEL_637:
      *v750 = 0;
      v36[18] = 0u;
      v36[19] = 0u;
      v36[16] = 0u;
      v36[17] = 0u;
      v36[15] = 0u;
      v379 = MEMORY[0x1E69E9C10];
      v380 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v753 = 136315906;
      *&v753[4] = "operator[]";
      *&v753[12] = 1024;
      if (v380)
      {
        v381 = 3;
      }

      else
      {
        v381 = 2;
      }

      *&v753[14] = 789;
      *&v753[18] = 2048;
      *&v753[20] = v5;
      v754 = 2048;
      *v755 = v4;
      _os_log_send_and_compose_impl(v381, v750, &v764, 80, &dword_1E1C61000, v379, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
      _os_crash_msg();
      __break(1u);
LABEL_641:
      *v750 = 0;
      v50[18] = 0u;
      v50[19] = 0u;
      v50[16] = 0u;
      v50[17] = 0u;
      v50[15] = 0u;
      v382 = MEMORY[0x1E69E9C10];
      v383 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v753 = 136315906;
      *&v753[4] = "operator[]";
      *&v753[12] = 1024;
      if (v383)
      {
        v384 = 3;
      }

      else
      {
        v384 = 2;
      }

      *&v753[14] = 789;
      *&v753[18] = 2048;
      *&v753[20] = v5;
      v754 = 2048;
      *v755 = v4;
      _os_log_send_and_compose_impl(v384, v750, &v764, 80, &dword_1E1C61000, v382, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
      _os_crash_msg();
      __break(1u);
LABEL_645:
      *v750 = 0;
      v64[18] = 0u;
      v64[19] = 0u;
      v64[16] = 0u;
      v64[17] = 0u;
      v64[15] = 0u;
      v385 = MEMORY[0x1E69E9C10];
      v386 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v753 = 136315906;
      *&v753[4] = "operator[]";
      *&v753[12] = 1024;
      if (v386)
      {
        v387 = 3;
      }

      else
      {
        v387 = 2;
      }

      *&v753[14] = 789;
      *&v753[18] = 2048;
      *&v753[20] = v5;
      v754 = 2048;
      *v755 = v4;
      _os_log_send_and_compose_impl(v387, v750, &v764, 80, &dword_1E1C61000, v385, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
      _os_crash_msg();
      __break(1u);
LABEL_649:
      *v750 = 0;
      v78[18] = 0u;
      v78[19] = 0u;
      v78[16] = 0u;
      v78[17] = 0u;
      v78[15] = 0u;
      v388 = MEMORY[0x1E69E9C10];
      v389 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v753 = 136315906;
      *&v753[4] = "operator[]";
      *&v753[12] = 1024;
      if (v389)
      {
        v390 = 3;
      }

      else
      {
        v390 = 2;
      }

      *&v753[14] = 789;
      *&v753[18] = 2048;
      *&v753[20] = v5;
      v754 = 2048;
      *v755 = v4;
      _os_log_send_and_compose_impl(v390, v750, &v764, 80, &dword_1E1C61000, v388, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
      _os_crash_msg();
      __break(1u);
LABEL_653:
      *v750 = 0;
      v92[18] = 0u;
      v92[19] = 0u;
      v92[16] = 0u;
      v92[17] = 0u;
      v92[15] = 0u;
      v391 = MEMORY[0x1E69E9C10];
      v392 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v753 = 136315906;
      *&v753[4] = "operator[]";
      *&v753[12] = 1024;
      if (v392)
      {
        v393 = 3;
      }

      else
      {
        v393 = 2;
      }

      *&v753[14] = 789;
      *&v753[18] = 2048;
      *&v753[20] = v5;
      v754 = 2048;
      *v755 = v4;
      _os_log_send_and_compose_impl(v393, v750, &v764, 80, &dword_1E1C61000, v391, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
      _os_crash_msg();
      __break(1u);
LABEL_657:
      *v750 = 0;
      v22[18] = 0u;
      v22[19] = 0u;
      v22[16] = 0u;
      v22[17] = 0u;
      v22[15] = 0u;
      v394 = MEMORY[0x1E69E9C10];
      v395 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v753 = 136315906;
      *&v753[4] = "operator[]";
      *&v753[12] = 1024;
      if (v395)
      {
        v396 = 3;
      }

      else
      {
        v396 = 2;
      }

      *&v753[14] = 789;
      *&v753[18] = 2048;
      *&v753[20] = v4;
      v754 = 2048;
      *v755 = v7;
      _os_log_send_and_compose_impl(v396, v750, &v764, 80, &dword_1E1C61000, v394, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
      _os_crash_msg();
      __break(1u);
LABEL_661:
      *v750 = 0;
      v36[18] = 0u;
      v36[19] = 0u;
      v36[16] = 0u;
      v36[17] = 0u;
      v36[15] = 0u;
      v397 = MEMORY[0x1E69E9C10];
      v398 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v753 = 136315906;
      *&v753[4] = "operator[]";
      *&v753[12] = 1024;
      if (v398)
      {
        v399 = 3;
      }

      else
      {
        v399 = 2;
      }

      *&v753[14] = 789;
      *&v753[18] = 2048;
      *&v753[20] = v4;
      v754 = 2048;
      *v755 = v7;
      _os_log_send_and_compose_impl(v399, v750, &v764, 80, &dword_1E1C61000, v397, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
      _os_crash_msg();
      __break(1u);
LABEL_665:
      *v750 = 0;
      v50[18] = 0u;
      v50[19] = 0u;
      v50[16] = 0u;
      v50[17] = 0u;
      v50[15] = 0u;
      v400 = MEMORY[0x1E69E9C10];
      v401 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v753 = 136315906;
      *&v753[4] = "operator[]";
      *&v753[12] = 1024;
      if (v401)
      {
        v402 = 3;
      }

      else
      {
        v402 = 2;
      }

      *&v753[14] = 789;
      *&v753[18] = 2048;
      *&v753[20] = v4;
      v754 = 2048;
      *v755 = v7;
      _os_log_send_and_compose_impl(v402, v750, &v764, 80, &dword_1E1C61000, v400, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
      _os_crash_msg();
      __break(1u);
LABEL_669:
      *v750 = 0;
      v64[18] = 0u;
      v64[19] = 0u;
      v64[16] = 0u;
      v64[17] = 0u;
      v64[15] = 0u;
      v403 = MEMORY[0x1E69E9C10];
      v404 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v753 = 136315906;
      *&v753[4] = "operator[]";
      *&v753[12] = 1024;
      if (v404)
      {
        v405 = 3;
      }

      else
      {
        v405 = 2;
      }

      *&v753[14] = 789;
      *&v753[18] = 2048;
      *&v753[20] = v4;
      v754 = 2048;
      *v755 = v7;
      _os_log_send_and_compose_impl(v405, v750, &v764, 80, &dword_1E1C61000, v403, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
      _os_crash_msg();
      __break(1u);
LABEL_673:
      *v750 = 0;
      v78[18] = 0u;
      v78[19] = 0u;
      v78[16] = 0u;
      v78[17] = 0u;
      v78[15] = 0u;
      v406 = MEMORY[0x1E69E9C10];
      v407 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v753 = 136315906;
      *&v753[4] = "operator[]";
      *&v753[12] = 1024;
      if (v407)
      {
        v408 = 3;
      }

      else
      {
        v408 = 2;
      }

      *&v753[14] = 789;
      *&v753[18] = 2048;
      *&v753[20] = v4;
      v754 = 2048;
      *v755 = v7;
      _os_log_send_and_compose_impl(v408, v750, &v764, 80, &dword_1E1C61000, v406, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
      _os_crash_msg();
      __break(1u);
LABEL_677:
      *v750 = 0;
      v92[18] = 0u;
      v92[19] = 0u;
      v92[16] = 0u;
      v92[17] = 0u;
      v92[15] = 0u;
      v409 = MEMORY[0x1E69E9C10];
      v410 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v753 = 136315906;
      *&v753[4] = "operator[]";
      *&v753[12] = 1024;
      if (v410)
      {
        v411 = 3;
      }

      else
      {
        v411 = 2;
      }

      *&v753[14] = 789;
      *&v753[18] = 2048;
      *&v753[20] = v4;
      v754 = 2048;
      *v755 = v7;
      _os_log_send_and_compose_impl(v411, v750, &v764, 80, &dword_1E1C61000, v409, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
      _os_crash_msg();
      __break(1u);
LABEL_681:
      *v747 = 0;
      v103[18] = 0u;
      v103[19] = 0u;
      v103[16] = 0u;
      v103[17] = 0u;
      v103[15] = 0u;
      v412 = MEMORY[0x1E69E9C10];
      v413 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v750 = 136315906;
      *&v750[4] = "operator[]";
      *&v750[12] = 1024;
      if (v413)
      {
        v414 = 3;
      }

      else
      {
        v414 = 2;
      }

      *&v750[14] = 797;
      *&v750[18] = 2048;
      *&v750[20] = v4;
      v751 = 2048;
      *v752 = v4;
      _os_log_send_and_compose_impl(v414, v747, &v764, 80, &dword_1E1C61000, v412, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
      _os_crash_msg();
      __break(1u);
LABEL_685:
      *v747 = 0;
      v142[18] = 0u;
      v142[19] = 0u;
      v142[16] = 0u;
      v142[17] = 0u;
      v142[15] = 0u;
      v415 = MEMORY[0x1E69E9C10];
      v416 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v750 = 136315906;
      *&v750[4] = "operator[]";
      *&v750[12] = 1024;
      if (v416)
      {
        v417 = 3;
      }

      else
      {
        v417 = 2;
      }

      *&v750[14] = 797;
      *&v750[18] = 2048;
      *&v750[20] = v4;
      v751 = 2048;
      *v752 = v4;
      _os_log_send_and_compose_impl(v417, v747, &v764, 80, &dword_1E1C61000, v415, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
      _os_crash_msg();
      __break(1u);
LABEL_689:
      *v747 = 0;
      v181[18] = 0u;
      v181[19] = 0u;
      v181[16] = 0u;
      v181[17] = 0u;
      v181[15] = 0u;
      v418 = MEMORY[0x1E69E9C10];
      v419 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v750 = 136315906;
      *&v750[4] = "operator[]";
      *&v750[12] = 1024;
      if (v419)
      {
        v420 = 3;
      }

      else
      {
        v420 = 2;
      }

      *&v750[14] = 797;
      *&v750[18] = 2048;
      *&v750[20] = v4;
      v751 = 2048;
      *v752 = v4;
      _os_log_send_and_compose_impl(v420, v747, &v764, 80, &dword_1E1C61000, v418, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
      _os_crash_msg();
      __break(1u);
LABEL_693:
      *v747 = 0;
      v202[18] = 0u;
      v202[19] = 0u;
      v202[16] = 0u;
      v202[17] = 0u;
      v202[15] = 0u;
      v421 = MEMORY[0x1E69E9C10];
      v422 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v750 = 136315906;
      *&v750[4] = "operator[]";
      *&v750[12] = 1024;
      if (v422)
      {
        v423 = 3;
      }

      else
      {
        v423 = 2;
      }

      *&v750[14] = 797;
      *&v750[18] = 2048;
      *&v750[20] = v4;
      v751 = 2048;
      *v752 = v4;
      _os_log_send_and_compose_impl(v423, v747, &v764, 80, &dword_1E1C61000, v421, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
      _os_crash_msg();
      __break(1u);
LABEL_697:
      *v747 = 0;
      v124[18] = 0u;
      v124[19] = 0u;
      v124[16] = 0u;
      v124[17] = 0u;
      v124[15] = 0u;
      v424 = MEMORY[0x1E69E9C10];
      v425 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v750 = 136315906;
      *&v750[4] = "operator[]";
      *&v750[12] = 1024;
      if (v425)
      {
        v426 = 3;
      }

      else
      {
        v426 = 2;
      }

      *&v750[14] = 797;
      *&v750[18] = 2048;
      *&v750[20] = v4;
      v751 = 2048;
      *v752 = v6;
      _os_log_send_and_compose_impl(v426, v747, &v764, 80, &dword_1E1C61000, v424, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
      _os_crash_msg();
      __break(1u);
LABEL_701:
      *v747 = 0;
      v163[18] = 0u;
      v163[19] = 0u;
      v163[16] = 0u;
      v163[17] = 0u;
      v163[15] = 0u;
      v427 = MEMORY[0x1E69E9C10];
      v428 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v750 = 136315906;
      *&v750[4] = "operator[]";
      *&v750[12] = 1024;
      if (v428)
      {
        v429 = 3;
      }

      else
      {
        v429 = 2;
      }

      *&v750[14] = 797;
      *&v750[18] = 2048;
      *&v750[20] = v4;
      v751 = 2048;
      *v752 = v6;
      _os_log_send_and_compose_impl(v429, v747, &v764, 80, &dword_1E1C61000, v427, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
      _os_crash_msg();
      __break(1u);
      goto LABEL_705;
    }

    *(v21 + 4 * v20) = v20;
    ++v20;
  }

  while (v17 != v20);
  *&v764 = v3;
  if (!*&v756[16])
  {
    goto LABEL_1017;
  }

  v6 = **&v758[2];
  v4 = v738;
  v22 = v747;
  if (v738 <= v6)
  {
    goto LABEL_1041;
  }

  v5 = 0;
  v23 = *(v3 + 4 * v6);
  v740[v6] = 1;
  do
  {
    v4 = *&v756[16];
    if (*&v756[16] <= v5)
    {
      goto LABEL_633;
    }

    v4 = *(*&v758[2] + 4 * v5);
    v24 = *(v3 + 4 * v4);
    if (v24 != v23)
    {
      v6 = v738;
      if (v738 <= v4)
      {
        goto LABEL_849;
      }

      v740[v4] = 1;
      v6 = v4;
      v23 = v24;
    }

    v7 = v743;
    if (v743 <= v4)
    {
      goto LABEL_657;
    }

    *(v745 + 4 * v4) = v6;
    ++v5;
  }

  while (v17 != v5);
  if (*v756 && *&v758[2])
  {
    (*(**v756 + 40))();
  }

LABEL_23:
  *&v758[2] = 0;
  memset(v756, 0, sizeof(v756));
  *&v755[2] = 0;
  memset(v753, 0, sizeof(v753));
  v25 = (*(*v13 + 16))(v13);
  v26 = v25;
  if (!v25)
  {
    v3 = 0;
    v27 = 0;
    goto LABEL_225;
  }

  v3 = v738;
  if (v738 <= v25 - 1)
  {
    goto LABEL_1065;
  }

  LODWORD(v27) = 0;
  v28 = v740;
  v3 = v25;
  v29 = v25;
  do
  {
    v30 = *v28++;
    v27 = (v27 + v30);
    --v29;
  }

  while (v29);
LABEL_225:
  v17 = re::GeomAttribute::accessValues<int>(v13);
  v6 = v140;
  re::DynamicArray<float>::resize(v756, v27);
  re::DynamicArray<unsigned int>::resize(v753, v3, &re::kInvalidMeshIndex);
  v142 = v747;
  if (v26)
  {
    v5 = 0;
    v143 = 0;
    v4 = v738;
    v144 = v740;
    v8 = *&v753[16];
    v145 = *&v755[2];
    v6 = v6;
    v9 = *&v756[16];
    v146 = *&v758[2];
    do
    {
      if (v4 == v5)
      {
        goto LABEL_685;
      }

      if (v144[v5])
      {
        if (v8 <= v5)
        {
          goto LABEL_781;
        }

        *(v145 + 4 * v5) = v143;
        if (v5 >= v6)
        {
          goto LABEL_805;
        }

        v7 = v143;
        if (v9 <= v143)
        {
          goto LABEL_829;
        }

        *(v146 + 4 * v143++) = *(v17 + 4 * v5);
      }

      ++v5;
    }

    while (v3 != v5);
    v17 = 0;
    v147 = v740;
    v6 = v743;
    v148 = v745;
    v5 = *&v753[16];
    v149 = *&v755[2];
    while (v4 != v17)
    {
      if (!v147[v17])
      {
        if (v6 <= v17)
        {
          goto LABEL_885;
        }

        v8 = *(v148 + 4 * v17);
        if (v5 <= v8)
        {
          goto LABEL_909;
        }

        if (v5 <= v17)
        {
          goto LABEL_933;
        }

        *(v149 + 4 * v17) = *(v149 + 4 * v8);
      }

      if (v3 == ++v17)
      {
        goto LABEL_242;
      }
    }

LABEL_717:
    *v747 = 0;
    v142[18] = 0u;
    v142[19] = 0u;
    v142[16] = 0u;
    v142[17] = 0u;
    v142[15] = 0u;
    v439 = MEMORY[0x1E69E9C10];
    v440 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v440)
    {
      v441 = 3;
    }

    else
    {
      v441 = 2;
    }

    *&v750[14] = 797;
    *&v750[18] = 2048;
    *&v750[20] = v4;
    v751 = 2048;
    *v752 = v4;
    _os_log_send_and_compose_impl(v441, v747, &v764, 80, &dword_1E1C61000, v439, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_721:
    *v747 = 0;
    v181[18] = 0u;
    v181[19] = 0u;
    v181[16] = 0u;
    v181[17] = 0u;
    v181[15] = 0u;
    v442 = MEMORY[0x1E69E9C10];
    v443 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v443)
    {
      v444 = 3;
    }

    else
    {
      v444 = 2;
    }

    *&v750[14] = 797;
    *&v750[18] = 2048;
    *&v750[20] = v4;
    v751 = 2048;
    *v752 = v4;
    _os_log_send_and_compose_impl(v444, v747, &v764, 80, &dword_1E1C61000, v442, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_725:
    *v747 = 0;
    v202[18] = 0u;
    v202[19] = 0u;
    v202[16] = 0u;
    v202[17] = 0u;
    v202[15] = 0u;
    v445 = MEMORY[0x1E69E9C10];
    v446 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v446)
    {
      v447 = 3;
    }

    else
    {
      v447 = 2;
    }

    *&v750[14] = 797;
    *&v750[18] = 2048;
    *&v750[20] = v4;
    v751 = 2048;
    *v752 = v4;
    _os_log_send_and_compose_impl(v447, v747, &v764, 80, &dword_1E1C61000, v445, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_729:
    *v759 = 0;
    v129[18] = 0u;
    v129[19] = 0u;
    v129[16] = 0u;
    v129[17] = 0u;
    v129[15] = 0u;
    v448 = MEMORY[0x1E69E9C10];
    v449 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v747 = 136315906;
    *&v747[4] = "operator[]";
    *&v747[12] = 1024;
    if (v449)
    {
      v450 = 3;
    }

    else
    {
      v450 = 2;
    }

    *&v747[14] = 789;
    *&v747[18] = 2048;
    *&v747[20] = v5;
    v748 = 2048;
    *v749 = v5;
    _os_log_send_and_compose_impl(v450, v759, &v764, 80, &dword_1E1C61000, v448, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_733:
    *v759 = 0;
    v168[18] = 0u;
    v168[19] = 0u;
    v168[16] = 0u;
    v168[17] = 0u;
    v168[15] = 0u;
    v451 = MEMORY[0x1E69E9C10];
    v452 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v747 = 136315906;
    *&v747[4] = "operator[]";
    *&v747[12] = 1024;
    if (v452)
    {
      v453 = 3;
    }

    else
    {
      v453 = 2;
    }

    *&v747[14] = 789;
    *&v747[18] = 2048;
    *&v747[20] = v5;
    v748 = 2048;
    *v749 = v5;
    _os_log_send_and_compose_impl(v453, v759, &v764, 80, &dword_1E1C61000, v451, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_737:
    *v759 = 0;
    v111[18] = 0u;
    v111[19] = 0u;
    v111[16] = 0u;
    v111[17] = 0u;
    v111[15] = 0u;
    v454 = MEMORY[0x1E69E9C10];
    v455 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v747 = 136315906;
    *&v747[4] = "operator[]";
    *&v747[12] = 1024;
    if (v455)
    {
      v456 = 3;
    }

    else
    {
      v456 = 2;
    }

    *&v747[14] = 789;
    *&v747[18] = 2048;
    *&v747[20] = v5;
    v748 = 2048;
    *v749 = v5;
    _os_log_send_and_compose_impl(v456, v759, &v764, 80, &dword_1E1C61000, v454, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_741:
    *v759 = 0;
    v150[18] = 0u;
    v150[19] = 0u;
    v150[16] = 0u;
    v150[17] = 0u;
    v150[15] = 0u;
    v457 = MEMORY[0x1E69E9C10];
    v458 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v747 = 136315906;
    *&v747[4] = "operator[]";
    *&v747[12] = 1024;
    if (v458)
    {
      v459 = 3;
    }

    else
    {
      v459 = 2;
    }

    *&v747[14] = 789;
    *&v747[18] = 2048;
    *&v747[20] = v5;
    v748 = 2048;
    *v749 = v5;
    _os_log_send_and_compose_impl(v459, v759, &v764, 80, &dword_1E1C61000, v457, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_745:
    *v759 = 0;
    v189[18] = 0u;
    v189[19] = 0u;
    v189[16] = 0u;
    v189[17] = 0u;
    v189[15] = 0u;
    v460 = MEMORY[0x1E69E9C10];
    v461 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v747 = 136315906;
    *&v747[4] = "operator[]";
    *&v747[12] = 1024;
    if (v461)
    {
      v462 = 3;
    }

    else
    {
      v462 = 2;
    }

    *&v747[14] = 789;
    *&v747[18] = 2048;
    *&v747[20] = v5;
    v748 = 2048;
    *v749 = v5;
    _os_log_send_and_compose_impl(v462, v759, &v764, 80, &dword_1E1C61000, v460, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_749:
    *v759 = 0;
    v210[18] = 0u;
    v210[19] = 0u;
    v210[16] = 0u;
    v210[17] = 0u;
    v210[15] = 0u;
    v463 = MEMORY[0x1E69E9C10];
    v464 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v747 = 136315906;
    *&v747[4] = "operator[]";
    *&v747[12] = 1024;
    if (v464)
    {
      v465 = 3;
    }

    else
    {
      v465 = 2;
    }

    *&v747[14] = 789;
    *&v747[18] = 2048;
    *&v747[20] = v5;
    v748 = 2048;
    *v749 = v5;
    _os_log_send_and_compose_impl(v465, v759, &v764, 80, &dword_1E1C61000, v463, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_753:
    *v759 = 0;
    v129[18] = 0u;
    v129[19] = 0u;
    v129[16] = 0u;
    v129[17] = 0u;
    v129[15] = 0u;
    v466 = MEMORY[0x1E69E9C10];
    v467 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v747 = 136315906;
    *&v747[4] = "operator[]";
    *&v747[12] = 1024;
    if (v467)
    {
      v468 = 3;
    }

    else
    {
      v468 = 2;
    }

    *&v747[14] = 797;
    *&v747[18] = 2048;
    *&v747[20] = v6;
    v748 = 2048;
    *v749 = v6;
    _os_log_send_and_compose_impl(v468, v759, &v764, 80, &dword_1E1C61000, v466, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_757:
    *v759 = 0;
    v168[18] = 0u;
    v168[19] = 0u;
    v168[16] = 0u;
    v168[17] = 0u;
    v168[15] = 0u;
    v469 = MEMORY[0x1E69E9C10];
    v470 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v747 = 136315906;
    *&v747[4] = "operator[]";
    *&v747[12] = 1024;
    if (v470)
    {
      v471 = 3;
    }

    else
    {
      v471 = 2;
    }

    *&v747[14] = 797;
    *&v747[18] = 2048;
    *&v747[20] = v6;
    v748 = 2048;
    *v749 = v6;
    _os_log_send_and_compose_impl(v471, v759, &v764, 80, &dword_1E1C61000, v469, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_761:
    *v759 = 0;
    v111[18] = 0u;
    v111[19] = 0u;
    v111[16] = 0u;
    v111[17] = 0u;
    v111[15] = 0u;
    v472 = MEMORY[0x1E69E9C10];
    v473 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v747 = 136315906;
    *&v747[4] = "operator[]";
    *&v747[12] = 1024;
    if (v473)
    {
      v474 = 3;
    }

    else
    {
      v474 = 2;
    }

    *&v747[14] = 797;
    *&v747[18] = 2048;
    *&v747[20] = v6;
    v748 = 2048;
    *v749 = v6;
    _os_log_send_and_compose_impl(v474, v759, &v764, 80, &dword_1E1C61000, v472, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_765:
    *v759 = 0;
    v150[18] = 0u;
    v150[19] = 0u;
    v150[16] = 0u;
    v150[17] = 0u;
    v150[15] = 0u;
    v475 = MEMORY[0x1E69E9C10];
    v476 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v747 = 136315906;
    *&v747[4] = "operator[]";
    *&v747[12] = 1024;
    if (v476)
    {
      v477 = 3;
    }

    else
    {
      v477 = 2;
    }

    *&v747[14] = 797;
    *&v747[18] = 2048;
    *&v747[20] = v6;
    v748 = 2048;
    *v749 = v6;
    _os_log_send_and_compose_impl(v477, v759, &v764, 80, &dword_1E1C61000, v475, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_769:
    *v759 = 0;
    v189[18] = 0u;
    v189[19] = 0u;
    v189[16] = 0u;
    v189[17] = 0u;
    v189[15] = 0u;
    v478 = MEMORY[0x1E69E9C10];
    v479 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v747 = 136315906;
    *&v747[4] = "operator[]";
    *&v747[12] = 1024;
    if (v479)
    {
      v480 = 3;
    }

    else
    {
      v480 = 2;
    }

    *&v747[14] = 797;
    *&v747[18] = 2048;
    *&v747[20] = v6;
    v748 = 2048;
    *v749 = v6;
    _os_log_send_and_compose_impl(v480, v759, &v764, 80, &dword_1E1C61000, v478, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_773:
    *v759 = 0;
    v210[18] = 0u;
    v210[19] = 0u;
    v210[16] = 0u;
    v210[17] = 0u;
    v210[15] = 0u;
    v481 = MEMORY[0x1E69E9C10];
    v482 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v747 = 136315906;
    *&v747[4] = "operator[]";
    *&v747[12] = 1024;
    if (v482)
    {
      v483 = 3;
    }

    else
    {
      v483 = 2;
    }

    *&v747[14] = 797;
    *&v747[18] = 2048;
    *&v747[20] = v6;
    v748 = 2048;
    *v749 = v6;
    _os_log_send_and_compose_impl(v483, v759, &v764, 80, &dword_1E1C61000, v481, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_777:
    *v747 = 0;
    v103[18] = 0u;
    v103[19] = 0u;
    v103[16] = 0u;
    v103[17] = 0u;
    v103[15] = 0u;
    v484 = MEMORY[0x1E69E9C10];
    v485 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v485)
    {
      v486 = 3;
    }

    else
    {
      v486 = 2;
    }

    *&v750[14] = 789;
    *&v750[18] = 2048;
    *&v750[20] = v5;
    v751 = 2048;
    *v752 = v8;
    _os_log_send_and_compose_impl(v486, v747, &v764, 80, &dword_1E1C61000, v484, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_781:
    *v747 = 0;
    v142[18] = 0u;
    v142[19] = 0u;
    v142[16] = 0u;
    v142[17] = 0u;
    v142[15] = 0u;
    v487 = MEMORY[0x1E69E9C10];
    v488 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v488)
    {
      v489 = 3;
    }

    else
    {
      v489 = 2;
    }

    *&v750[14] = 789;
    *&v750[18] = 2048;
    *&v750[20] = v5;
    v751 = 2048;
    *v752 = v8;
    _os_log_send_and_compose_impl(v489, v747, &v764, 80, &dword_1E1C61000, v487, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_785:
    *v747 = 0;
    v181[18] = 0u;
    v181[19] = 0u;
    v181[16] = 0u;
    v181[17] = 0u;
    v181[15] = 0u;
    v490 = MEMORY[0x1E69E9C10];
    v491 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v491)
    {
      v492 = 3;
    }

    else
    {
      v492 = 2;
    }

    *&v750[14] = 789;
    *&v750[18] = 2048;
    *&v750[20] = v5;
    v751 = 2048;
    *v752 = v8;
    _os_log_send_and_compose_impl(v492, v747, &v764, 80, &dword_1E1C61000, v490, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_789:
    *v747 = 0;
    v202[18] = 0u;
    v202[19] = 0u;
    v202[16] = 0u;
    v202[17] = 0u;
    v202[15] = 0u;
    v493 = MEMORY[0x1E69E9C10];
    v494 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v494)
    {
      v495 = 3;
    }

    else
    {
      v495 = 2;
    }

    *&v750[14] = 789;
    *&v750[18] = 2048;
    *&v750[20] = v5;
    v751 = 2048;
    *v752 = v8;
    _os_log_send_and_compose_impl(v495, v747, &v764, 80, &dword_1E1C61000, v493, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_793:
    *v747 = 0;
    v124[18] = 0u;
    v124[19] = 0u;
    v124[16] = 0u;
    v124[17] = 0u;
    v124[15] = 0u;
    v496 = MEMORY[0x1E69E9C10];
    v497 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v497)
    {
      v498 = 3;
    }

    else
    {
      v498 = 2;
    }

    *&v750[14] = 789;
    *&v750[18] = 2048;
    *&v750[20] = v4;
    v751 = 2048;
    *v752 = v6;
    _os_log_send_and_compose_impl(v498, v747, &v764, 80, &dword_1E1C61000, v496, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_797:
    *v747 = 0;
    v163[18] = 0u;
    v163[19] = 0u;
    v163[16] = 0u;
    v163[17] = 0u;
    v163[15] = 0u;
    v499 = MEMORY[0x1E69E9C10];
    v500 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v500)
    {
      v501 = 3;
    }

    else
    {
      v501 = 2;
    }

    *&v750[14] = 789;
    *&v750[18] = 2048;
    *&v750[20] = v4;
    v751 = 2048;
    *v752 = v6;
    _os_log_send_and_compose_impl(v501, v747, &v764, 80, &dword_1E1C61000, v499, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_801:
    *v747 = 0;
    v103[18] = 0u;
    v103[19] = 0u;
    v103[16] = 0u;
    v103[17] = 0u;
    v103[15] = 0u;
    v502 = MEMORY[0x1E69E9C10];
    v503 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v503)
    {
      v504 = 3;
    }

    else
    {
      v504 = 2;
    }

    *&v750[14] = 613;
    *&v750[18] = 2048;
    *&v750[20] = v5;
    v751 = 2048;
    *v752 = v6;
    _os_log_send_and_compose_impl(v504, v747, &v764, 80, &dword_1E1C61000, v502, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_805:
    *v747 = 0;
    v142[18] = 0u;
    v142[19] = 0u;
    v142[16] = 0u;
    v142[17] = 0u;
    v142[15] = 0u;
    v505 = MEMORY[0x1E69E9C10];
    v506 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v506)
    {
      v507 = 3;
    }

    else
    {
      v507 = 2;
    }

    *&v750[14] = 613;
    *&v750[18] = 2048;
    *&v750[20] = v5;
    v751 = 2048;
    *v752 = v6;
    _os_log_send_and_compose_impl(v507, v747, &v764, 80, &dword_1E1C61000, v505, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_809:
    *v747 = 0;
    v181[18] = 0u;
    v181[19] = 0u;
    v181[16] = 0u;
    v181[17] = 0u;
    v181[15] = 0u;
    v508 = MEMORY[0x1E69E9C10];
    v509 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v509)
    {
      v510 = 3;
    }

    else
    {
      v510 = 2;
    }

    *&v750[14] = 613;
    *&v750[18] = 2048;
    *&v750[20] = v5;
    v751 = 2048;
    *v752 = v6;
    _os_log_send_and_compose_impl(v510, v747, &v764, 80, &dword_1E1C61000, v508, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_813:
    *v747 = 0;
    v202[18] = 0u;
    v202[19] = 0u;
    v202[16] = 0u;
    v202[17] = 0u;
    v202[15] = 0u;
    v511 = MEMORY[0x1E69E9C10];
    v512 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v512)
    {
      v513 = 3;
    }

    else
    {
      v513 = 2;
    }

    *&v750[14] = 613;
    *&v750[18] = 2048;
    *&v750[20] = v5;
    v751 = 2048;
    *v752 = v6;
    _os_log_send_and_compose_impl(v513, v747, &v764, 80, &dword_1E1C61000, v511, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_817:
    *v747 = 0;
    v124[18] = 0u;
    v124[19] = 0u;
    v124[16] = 0u;
    v124[17] = 0u;
    v124[15] = 0u;
    v514 = MEMORY[0x1E69E9C10];
    v515 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v515)
    {
      v516 = 3;
    }

    else
    {
      v516 = 2;
    }

    *&v750[14] = 613;
    *&v750[18] = 2048;
    *&v750[20] = v4;
    v751 = 2048;
    *v752 = v5;
    _os_log_send_and_compose_impl(v516, v747, &v764, 80, &dword_1E1C61000, v514, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_821:
    *v747 = 0;
    v163[18] = 0u;
    v163[19] = 0u;
    v163[16] = 0u;
    v163[17] = 0u;
    v163[15] = 0u;
    v517 = MEMORY[0x1E69E9C10];
    v518 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v518)
    {
      v519 = 3;
    }

    else
    {
      v519 = 2;
    }

    *&v750[14] = 613;
    *&v750[18] = 2048;
    *&v750[20] = v4;
    v751 = 2048;
    *v752 = v5;
    _os_log_send_and_compose_impl(v519, v747, &v764, 80, &dword_1E1C61000, v517, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_825:
    *v747 = 0;
    v103[18] = 0u;
    v103[19] = 0u;
    v103[16] = 0u;
    v103[17] = 0u;
    v103[15] = 0u;
    v520 = MEMORY[0x1E69E9C10];
    v521 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v521)
    {
      v522 = 3;
    }

    else
    {
      v522 = 2;
    }

    *&v750[14] = 789;
    *&v750[18] = 2048;
    *&v750[20] = v7;
    v751 = 2048;
    *v752 = v9;
    _os_log_send_and_compose_impl(v522, v747, &v764, 80, &dword_1E1C61000, v520, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_829:
    *v747 = 0;
    v142[18] = 0u;
    v142[19] = 0u;
    v142[16] = 0u;
    v142[17] = 0u;
    v142[15] = 0u;
    v523 = MEMORY[0x1E69E9C10];
    v524 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v524)
    {
      v525 = 3;
    }

    else
    {
      v525 = 2;
    }

    *&v750[14] = 789;
    *&v750[18] = 2048;
    *&v750[20] = v7;
    v751 = 2048;
    *v752 = v9;
    _os_log_send_and_compose_impl(v525, v747, &v764, 80, &dword_1E1C61000, v523, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_833:
    *v747 = 0;
    v181[18] = 0u;
    v181[19] = 0u;
    v181[16] = 0u;
    v181[17] = 0u;
    v181[15] = 0u;
    v526 = MEMORY[0x1E69E9C10];
    v527 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v527)
    {
      v528 = 3;
    }

    else
    {
      v528 = 2;
    }

    *&v750[14] = 789;
    *&v750[18] = 2048;
    *&v750[20] = v7;
    v751 = 2048;
    *v752 = v9;
    _os_log_send_and_compose_impl(v528, v747, &v764, 80, &dword_1E1C61000, v526, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_837:
    *v747 = 0;
    v202[18] = 0u;
    v202[19] = 0u;
    v202[16] = 0u;
    v202[17] = 0u;
    v202[15] = 0u;
    v529 = MEMORY[0x1E69E9C10];
    v530 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v530)
    {
      v531 = 3;
    }

    else
    {
      v531 = 2;
    }

    *&v750[14] = 789;
    *&v750[18] = 2048;
    *&v750[20] = v7;
    v751 = 2048;
    *v752 = v9;
    _os_log_send_and_compose_impl(v531, v747, &v764, 80, &dword_1E1C61000, v529, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_841:
    *v747 = 0;
    v124[18] = 0u;
    v124[19] = 0u;
    v124[16] = 0u;
    v124[17] = 0u;
    v124[15] = 0u;
    v532 = MEMORY[0x1E69E9C10];
    v533 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v533)
    {
      v534 = 3;
    }

    else
    {
      v534 = 2;
    }

    *&v750[14] = 789;
    *&v750[18] = 2048;
    *&v750[20] = v6;
    v751 = 2048;
    *v752 = v7;
    _os_log_send_and_compose_impl(v534, v747, &v764, 80, &dword_1E1C61000, v532, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_845:
    *v747 = 0;
    v163[18] = 0u;
    v163[19] = 0u;
    v163[16] = 0u;
    v163[17] = 0u;
    v163[15] = 0u;
    v535 = MEMORY[0x1E69E9C10];
    v536 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v536)
    {
      v537 = 3;
    }

    else
    {
      v537 = 2;
    }

    *&v750[14] = 789;
    *&v750[18] = 2048;
    *&v750[20] = v6;
    v751 = 2048;
    *v752 = v7;
    _os_log_send_and_compose_impl(v537, v747, &v764, 80, &dword_1E1C61000, v535, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_849:
    *v750 = 0;
    v22[18] = 0u;
    v22[19] = 0u;
    v22[16] = 0u;
    v22[17] = 0u;
    v22[15] = 0u;
    v538 = MEMORY[0x1E69E9C10];
    v539 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v753 = 136315906;
    *&v753[4] = "operator[]";
    *&v753[12] = 1024;
    if (v539)
    {
      v540 = 3;
    }

    else
    {
      v540 = 2;
    }

    *&v753[14] = 789;
    *&v753[18] = 2048;
    *&v753[20] = v4;
    v754 = 2048;
    *v755 = v6;
    _os_log_send_and_compose_impl(v540, v750, &v764, 80, &dword_1E1C61000, v538, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_853:
    *v750 = 0;
    v36[18] = 0u;
    v36[19] = 0u;
    v36[16] = 0u;
    v36[17] = 0u;
    v36[15] = 0u;
    v541 = MEMORY[0x1E69E9C10];
    v542 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v753 = 136315906;
    *&v753[4] = "operator[]";
    *&v753[12] = 1024;
    if (v542)
    {
      v543 = 3;
    }

    else
    {
      v543 = 2;
    }

    *&v753[14] = 789;
    *&v753[18] = 2048;
    *&v753[20] = v4;
    v754 = 2048;
    *v755 = v6;
    _os_log_send_and_compose_impl(v543, v750, &v764, 80, &dword_1E1C61000, v541, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_857:
    *v750 = 0;
    v50[18] = 0u;
    v50[19] = 0u;
    v50[16] = 0u;
    v50[17] = 0u;
    v50[15] = 0u;
    v544 = MEMORY[0x1E69E9C10];
    v545 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v753 = 136315906;
    *&v753[4] = "operator[]";
    *&v753[12] = 1024;
    if (v545)
    {
      v546 = 3;
    }

    else
    {
      v546 = 2;
    }

    *&v753[14] = 789;
    *&v753[18] = 2048;
    *&v753[20] = v4;
    v754 = 2048;
    *v755 = v6;
    _os_log_send_and_compose_impl(v546, v750, &v764, 80, &dword_1E1C61000, v544, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_861:
    *v750 = 0;
    v64[18] = 0u;
    v64[19] = 0u;
    v64[16] = 0u;
    v64[17] = 0u;
    v64[15] = 0u;
    v547 = MEMORY[0x1E69E9C10];
    v548 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v753 = 136315906;
    *&v753[4] = "operator[]";
    *&v753[12] = 1024;
    if (v548)
    {
      v549 = 3;
    }

    else
    {
      v549 = 2;
    }

    *&v753[14] = 789;
    *&v753[18] = 2048;
    *&v753[20] = v4;
    v754 = 2048;
    *v755 = v6;
    _os_log_send_and_compose_impl(v549, v750, &v764, 80, &dword_1E1C61000, v547, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_865:
    *v750 = 0;
    v78[18] = 0u;
    v78[19] = 0u;
    v78[16] = 0u;
    v78[17] = 0u;
    v78[15] = 0u;
    v550 = MEMORY[0x1E69E9C10];
    v551 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v753 = 136315906;
    *&v753[4] = "operator[]";
    *&v753[12] = 1024;
    if (v551)
    {
      v552 = 3;
    }

    else
    {
      v552 = 2;
    }

    *&v753[14] = 789;
    *&v753[18] = 2048;
    *&v753[20] = v4;
    v754 = 2048;
    *v755 = v6;
    _os_log_send_and_compose_impl(v552, v750, &v764, 80, &dword_1E1C61000, v550, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_869:
    *v750 = 0;
    v92[18] = 0u;
    v92[19] = 0u;
    v92[16] = 0u;
    v92[17] = 0u;
    v92[15] = 0u;
    v553 = MEMORY[0x1E69E9C10];
    v554 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v753 = 136315906;
    *&v753[4] = "operator[]";
    *&v753[12] = 1024;
    if (v554)
    {
      v555 = 3;
    }

    else
    {
      v555 = 2;
    }

    *&v753[14] = 789;
    *&v753[18] = 2048;
    *&v753[20] = v4;
    v754 = 2048;
    *v755 = v6;
    _os_log_send_and_compose_impl(v555, v750, &v764, 80, &dword_1E1C61000, v553, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_873:
    *v747 = 0;
    v124[18] = 0u;
    v124[19] = 0u;
    v124[16] = 0u;
    v124[17] = 0u;
    v124[15] = 0u;
    v556 = MEMORY[0x1E69E9C10];
    v557 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v557)
    {
      v558 = 3;
    }

    else
    {
      v558 = 2;
    }

    *&v750[14] = 797;
    *&v750[18] = 2048;
    *&v750[20] = v17;
    v751 = 2048;
    *v752 = v6;
    _os_log_send_and_compose_impl(v558, v747, &v764, 80, &dword_1E1C61000, v556, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_877:
    *v747 = 0;
    v163[18] = 0u;
    v163[19] = 0u;
    v163[16] = 0u;
    v163[17] = 0u;
    v163[15] = 0u;
    v559 = MEMORY[0x1E69E9C10];
    v560 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v560)
    {
      v561 = 3;
    }

    else
    {
      v561 = 2;
    }

    *&v750[14] = 797;
    *&v750[18] = 2048;
    *&v750[20] = v17;
    v751 = 2048;
    *v752 = v6;
    _os_log_send_and_compose_impl(v561, v747, &v764, 80, &dword_1E1C61000, v559, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_881:
    *v747 = 0;
    v103[18] = 0u;
    v103[19] = 0u;
    v103[16] = 0u;
    v103[17] = 0u;
    v103[15] = 0u;
    v562 = MEMORY[0x1E69E9C10];
    v563 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v563)
    {
      v564 = 3;
    }

    else
    {
      v564 = 2;
    }

    *&v750[14] = 797;
    *&v750[18] = 2048;
    *&v750[20] = v17;
    v751 = 2048;
    *v752 = v6;
    _os_log_send_and_compose_impl(v564, v747, &v764, 80, &dword_1E1C61000, v562, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_885:
    *v747 = 0;
    v142[18] = 0u;
    v142[19] = 0u;
    v142[16] = 0u;
    v142[17] = 0u;
    v142[15] = 0u;
    v565 = MEMORY[0x1E69E9C10];
    v566 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v566)
    {
      v567 = 3;
    }

    else
    {
      v567 = 2;
    }

    *&v750[14] = 797;
    *&v750[18] = 2048;
    *&v750[20] = v17;
    v751 = 2048;
    *v752 = v6;
    _os_log_send_and_compose_impl(v567, v747, &v764, 80, &dword_1E1C61000, v565, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_889:
    *v747 = 0;
    v181[18] = 0u;
    v181[19] = 0u;
    v181[16] = 0u;
    v181[17] = 0u;
    v181[15] = 0u;
    v568 = MEMORY[0x1E69E9C10];
    v569 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v569)
    {
      v570 = 3;
    }

    else
    {
      v570 = 2;
    }

    *&v750[14] = 797;
    *&v750[18] = 2048;
    *&v750[20] = v17;
    v751 = 2048;
    *v752 = v6;
    _os_log_send_and_compose_impl(v570, v747, &v764, 80, &dword_1E1C61000, v568, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_893:
    *v747 = 0;
    v202[18] = 0u;
    v202[19] = 0u;
    v202[16] = 0u;
    v202[17] = 0u;
    v202[15] = 0u;
    v571 = MEMORY[0x1E69E9C10];
    v572 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v572)
    {
      v573 = 3;
    }

    else
    {
      v573 = 2;
    }

    *&v750[14] = 797;
    *&v750[18] = 2048;
    *&v750[20] = v17;
    v751 = 2048;
    *v752 = v6;
    _os_log_send_and_compose_impl(v573, v747, &v764, 80, &dword_1E1C61000, v571, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_897:
    *v747 = 0;
    v124[18] = 0u;
    v124[19] = 0u;
    v124[16] = 0u;
    v124[17] = 0u;
    v124[15] = 0u;
    v574 = MEMORY[0x1E69E9C10];
    v575 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v575)
    {
      v576 = 3;
    }

    else
    {
      v576 = 2;
    }

    *&v750[14] = 789;
    *&v750[18] = 2048;
    *&v750[20] = v8;
    v751 = 2048;
    *v752 = v4;
    _os_log_send_and_compose_impl(v576, v747, &v764, 80, &dword_1E1C61000, v574, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_901:
    *v747 = 0;
    v163[18] = 0u;
    v163[19] = 0u;
    v163[16] = 0u;
    v163[17] = 0u;
    v163[15] = 0u;
    v577 = MEMORY[0x1E69E9C10];
    v578 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v578)
    {
      v579 = 3;
    }

    else
    {
      v579 = 2;
    }

    *&v750[14] = 789;
    *&v750[18] = 2048;
    *&v750[20] = v8;
    v751 = 2048;
    *v752 = v4;
    _os_log_send_and_compose_impl(v579, v747, &v764, 80, &dword_1E1C61000, v577, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_905:
    *v747 = 0;
    v103[18] = 0u;
    v103[19] = 0u;
    v103[16] = 0u;
    v103[17] = 0u;
    v103[15] = 0u;
    v580 = MEMORY[0x1E69E9C10];
    v581 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v581)
    {
      v582 = 3;
    }

    else
    {
      v582 = 2;
    }

    *&v750[14] = 789;
    *&v750[18] = 2048;
    *&v750[20] = v8;
    v751 = 2048;
    *v752 = v5;
    _os_log_send_and_compose_impl(v582, v747, &v764, 80, &dword_1E1C61000, v580, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_909:
    *v747 = 0;
    v142[18] = 0u;
    v142[19] = 0u;
    v142[16] = 0u;
    v142[17] = 0u;
    v142[15] = 0u;
    v583 = MEMORY[0x1E69E9C10];
    v584 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v584)
    {
      v585 = 3;
    }

    else
    {
      v585 = 2;
    }

    *&v750[14] = 789;
    *&v750[18] = 2048;
    *&v750[20] = v8;
    v751 = 2048;
    *v752 = v5;
    _os_log_send_and_compose_impl(v585, v747, &v764, 80, &dword_1E1C61000, v583, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_913:
    *v747 = 0;
    v181[18] = 0u;
    v181[19] = 0u;
    v181[16] = 0u;
    v181[17] = 0u;
    v181[15] = 0u;
    v586 = MEMORY[0x1E69E9C10];
    v587 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v587)
    {
      v588 = 3;
    }

    else
    {
      v588 = 2;
    }

    *&v750[14] = 789;
    *&v750[18] = 2048;
    *&v750[20] = v8;
    v751 = 2048;
    *v752 = v5;
    _os_log_send_and_compose_impl(v588, v747, &v764, 80, &dword_1E1C61000, v586, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_917:
    *v747 = 0;
    v202[18] = 0u;
    v202[19] = 0u;
    v202[16] = 0u;
    v202[17] = 0u;
    v202[15] = 0u;
    v589 = MEMORY[0x1E69E9C10];
    v590 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v590)
    {
      v591 = 3;
    }

    else
    {
      v591 = 2;
    }

    *&v750[14] = 789;
    *&v750[18] = 2048;
    *&v750[20] = v8;
    v751 = 2048;
    *v752 = v5;
    _os_log_send_and_compose_impl(v591, v747, &v764, 80, &dword_1E1C61000, v589, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_921:
    *v747 = 0;
    v124[18] = 0u;
    v124[19] = 0u;
    v124[16] = 0u;
    v124[17] = 0u;
    v124[15] = 0u;
    v592 = MEMORY[0x1E69E9C10];
    v593 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v593)
    {
      v594 = 3;
    }

    else
    {
      v594 = 2;
    }

    *&v750[14] = 789;
    *&v750[18] = 2048;
    *&v750[20] = v17;
    v751 = 2048;
    *v752 = v4;
    _os_log_send_and_compose_impl(v594, v747, &v764, 80, &dword_1E1C61000, v592, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_925:
    *v747 = 0;
    v163[18] = 0u;
    v163[19] = 0u;
    v163[16] = 0u;
    v163[17] = 0u;
    v163[15] = 0u;
    v595 = MEMORY[0x1E69E9C10];
    v596 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v596)
    {
      v597 = 3;
    }

    else
    {
      v597 = 2;
    }

    *&v750[14] = 789;
    *&v750[18] = 2048;
    *&v750[20] = v17;
    v751 = 2048;
    *v752 = v4;
    _os_log_send_and_compose_impl(v597, v747, &v764, 80, &dword_1E1C61000, v595, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_929:
    *v747 = 0;
    v103[18] = 0u;
    v103[19] = 0u;
    v103[16] = 0u;
    v103[17] = 0u;
    v103[15] = 0u;
    v598 = MEMORY[0x1E69E9C10];
    v599 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v599)
    {
      v600 = 3;
    }

    else
    {
      v600 = 2;
    }

    *&v750[14] = 789;
    *&v750[18] = 2048;
    *&v750[20] = v17;
    v751 = 2048;
    *v752 = v5;
    _os_log_send_and_compose_impl(v600, v747, &v764, 80, &dword_1E1C61000, v598, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_933:
    *v747 = 0;
    v142[18] = 0u;
    v142[19] = 0u;
    v142[16] = 0u;
    v142[17] = 0u;
    v142[15] = 0u;
    v601 = MEMORY[0x1E69E9C10];
    v602 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v602)
    {
      v603 = 3;
    }

    else
    {
      v603 = 2;
    }

    *&v750[14] = 789;
    *&v750[18] = 2048;
    *&v750[20] = v17;
    v751 = 2048;
    *v752 = v5;
    _os_log_send_and_compose_impl(v603, v747, &v764, 80, &dword_1E1C61000, v601, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_937:
    *v747 = 0;
    v181[18] = 0u;
    v181[19] = 0u;
    v181[16] = 0u;
    v181[17] = 0u;
    v181[15] = 0u;
    v604 = MEMORY[0x1E69E9C10];
    v605 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v605)
    {
      v606 = 3;
    }

    else
    {
      v606 = 2;
    }

    *&v750[14] = 789;
    *&v750[18] = 2048;
    *&v750[20] = v17;
    v751 = 2048;
    *v752 = v5;
    _os_log_send_and_compose_impl(v606, v747, &v764, 80, &dword_1E1C61000, v604, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_941:
    *v747 = 0;
    v202[18] = 0u;
    v202[19] = 0u;
    v202[16] = 0u;
    v202[17] = 0u;
    v202[15] = 0u;
    v607 = MEMORY[0x1E69E9C10];
    v608 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v608)
    {
      v609 = 3;
    }

    else
    {
      v609 = 2;
    }

    *&v750[14] = 789;
    *&v750[18] = 2048;
    *&v750[20] = v17;
    v751 = 2048;
    *v752 = v5;
    _os_log_send_and_compose_impl(v609, v747, &v764, 80, &dword_1E1C61000, v607, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_945:
    v746 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v610 = MEMORY[0x1E69E9C10];
    v611 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v759 = 136315906;
    *&v759[4] = "operator[]";
    *&v759[12] = 1024;
    if (v611)
    {
      v612 = 3;
    }

    else
    {
      v612 = 2;
    }

    *&v759[14] = 789;
    v760 = 2048;
    v761 = v4;
    v762 = 2048;
    v763 = v5;
    _os_log_send_and_compose_impl(v612, &v746, &v764, 80, &dword_1E1C61000, v610, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v759, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_949:
    v746 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v613 = MEMORY[0x1E69E9C10];
    v614 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v759 = 136315906;
    *&v759[4] = "operator[]";
    *&v759[12] = 1024;
    if (v614)
    {
      v615 = 3;
    }

    else
    {
      v615 = 2;
    }

    *&v759[14] = 789;
    v760 = 2048;
    v761 = v4;
    v762 = 2048;
    v763 = v5;
    _os_log_send_and_compose_impl(v615, &v746, &v764, 80, &dword_1E1C61000, v613, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v759, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_953:
    v746 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v616 = MEMORY[0x1E69E9C10];
    v617 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v759 = 136315906;
    *&v759[4] = "operator[]";
    *&v759[12] = 1024;
    if (v617)
    {
      v618 = 3;
    }

    else
    {
      v618 = 2;
    }

    *&v759[14] = 789;
    v760 = 2048;
    v761 = v4;
    v762 = 2048;
    v763 = v5;
    _os_log_send_and_compose_impl(v618, &v746, &v764, 80, &dword_1E1C61000, v616, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v759, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_957:
    v746 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v619 = MEMORY[0x1E69E9C10];
    v620 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v759 = 136315906;
    *&v759[4] = "operator[]";
    *&v759[12] = 1024;
    if (v620)
    {
      v621 = 3;
    }

    else
    {
      v621 = 2;
    }

    *&v759[14] = 789;
    v760 = 2048;
    v761 = v4;
    v762 = 2048;
    v763 = v5;
    _os_log_send_and_compose_impl(v621, &v746, &v764, 80, &dword_1E1C61000, v619, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v759, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_961:
    v746 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v622 = MEMORY[0x1E69E9C10];
    v623 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v759 = 136315906;
    *&v759[4] = "operator[]";
    *&v759[12] = 1024;
    if (v623)
    {
      v624 = 3;
    }

    else
    {
      v624 = 2;
    }

    *&v759[14] = 789;
    v760 = 2048;
    v761 = v4;
    v762 = 2048;
    v763 = v5;
    _os_log_send_and_compose_impl(v624, &v746, &v764, 80, &dword_1E1C61000, v622, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v759, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_965:
    v746 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v625 = MEMORY[0x1E69E9C10];
    v626 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v759 = 136315906;
    *&v759[4] = "operator[]";
    *&v759[12] = 1024;
    if (v626)
    {
      v627 = 3;
    }

    else
    {
      v627 = 2;
    }

    *&v759[14] = 789;
    v760 = 2048;
    v761 = v4;
    v762 = 2048;
    v763 = v5;
    _os_log_send_and_compose_impl(v627, &v746, &v764, 80, &dword_1E1C61000, v625, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v759, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_969:
    *v759 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v628 = MEMORY[0x1E69E9C10];
    v629 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v747 = 136315906;
    *&v747[4] = "operator[]";
    *&v747[12] = 1024;
    if (v629)
    {
      v630 = 3;
    }

    else
    {
      v630 = 2;
    }

    *&v747[14] = 789;
    *&v747[18] = 2048;
    *&v747[20] = 0;
    v748 = 2048;
    *v749 = 0;
    _os_log_send_and_compose_impl(v630, v759, &v764, 80, &dword_1E1C61000, v628, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_973:
    *v759 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v631 = MEMORY[0x1E69E9C10];
    v632 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v747 = 136315906;
    *&v747[4] = "operator[]";
    *&v747[12] = 1024;
    if (v632)
    {
      v633 = 3;
    }

    else
    {
      v633 = 2;
    }

    *&v747[14] = 789;
    *&v747[18] = 2048;
    *&v747[20] = 0;
    v748 = 2048;
    *v749 = 0;
    _os_log_send_and_compose_impl(v633, v759, &v764, 80, &dword_1E1C61000, v631, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_977:
    *v759 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v634 = MEMORY[0x1E69E9C10];
    v635 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v747 = 136315906;
    *&v747[4] = "operator[]";
    *&v747[12] = 1024;
    if (v635)
    {
      v636 = 3;
    }

    else
    {
      v636 = 2;
    }

    *&v747[14] = 789;
    *&v747[18] = 2048;
    *&v747[20] = 0;
    v748 = 2048;
    *v749 = 0;
    _os_log_send_and_compose_impl(v636, v759, &v764, 80, &dword_1E1C61000, v634, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_981:
    *v759 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v637 = MEMORY[0x1E69E9C10];
    v638 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v747 = 136315906;
    *&v747[4] = "operator[]";
    *&v747[12] = 1024;
    if (v638)
    {
      v639 = 3;
    }

    else
    {
      v639 = 2;
    }

    *&v747[14] = 789;
    *&v747[18] = 2048;
    *&v747[20] = 0;
    v748 = 2048;
    *v749 = 0;
    _os_log_send_and_compose_impl(v639, v759, &v764, 80, &dword_1E1C61000, v637, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_985:
    *v759 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v640 = MEMORY[0x1E69E9C10];
    v641 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v747 = 136315906;
    *&v747[4] = "operator[]";
    *&v747[12] = 1024;
    if (v641)
    {
      v642 = 3;
    }

    else
    {
      v642 = 2;
    }

    *&v747[14] = 789;
    *&v747[18] = 2048;
    *&v747[20] = 0;
    v748 = 2048;
    *v749 = 0;
    _os_log_send_and_compose_impl(v642, v759, &v764, 80, &dword_1E1C61000, v640, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_989:
    *v759 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v643 = MEMORY[0x1E69E9C10];
    v644 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v747 = 136315906;
    *&v747[4] = "operator[]";
    *&v747[12] = 1024;
    if (v644)
    {
      v645 = 3;
    }

    else
    {
      v645 = 2;
    }

    *&v747[14] = 789;
    *&v747[18] = 2048;
    *&v747[20] = 0;
    v748 = 2048;
    *v749 = 0;
    _os_log_send_and_compose_impl(v645, v759, &v764, 80, &dword_1E1C61000, v643, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_993:
    *v753 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v646 = MEMORY[0x1E69E9C10];
    v647 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v756 = 136315906;
    *&v756[4] = "operator[]";
    *&v756[12] = 1024;
    if (v647)
    {
      v648 = 3;
    }

    else
    {
      v648 = 2;
    }

    *&v756[14] = 613;
    *&v756[18] = 2048;
    *&v756[20] = 0;
    v757 = 2048;
    *v758 = 0;
    _os_log_send_and_compose_impl(v648, v753, &v764, 80, &dword_1E1C61000, v646, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v756, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_997:
    *v753 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v649 = MEMORY[0x1E69E9C10];
    v650 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v756 = 136315906;
    *&v756[4] = "operator[]";
    *&v756[12] = 1024;
    if (v650)
    {
      v651 = 3;
    }

    else
    {
      v651 = 2;
    }

    *&v756[14] = 613;
    *&v756[18] = 2048;
    *&v756[20] = 0;
    v757 = 2048;
    *v758 = 0;
    _os_log_send_and_compose_impl(v651, v753, &v764, 80, &dword_1E1C61000, v649, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v756, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_1001:
    *v753 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v652 = MEMORY[0x1E69E9C10];
    v653 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v756 = 136315906;
    *&v756[4] = "operator[]";
    *&v756[12] = 1024;
    if (v653)
    {
      v654 = 3;
    }

    else
    {
      v654 = 2;
    }

    *&v756[14] = 613;
    *&v756[18] = 2048;
    *&v756[20] = 0;
    v757 = 2048;
    *v758 = 0;
    _os_log_send_and_compose_impl(v654, v753, &v764, 80, &dword_1E1C61000, v652, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v756, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_1005:
    *v753 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v655 = MEMORY[0x1E69E9C10];
    v656 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v756 = 136315906;
    *&v756[4] = "operator[]";
    *&v756[12] = 1024;
    if (v656)
    {
      v657 = 3;
    }

    else
    {
      v657 = 2;
    }

    *&v756[14] = 613;
    *&v756[18] = 2048;
    *&v756[20] = 0;
    v757 = 2048;
    *v758 = 0;
    _os_log_send_and_compose_impl(v657, v753, &v764, 80, &dword_1E1C61000, v655, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v756, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_1009:
    *v753 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v658 = MEMORY[0x1E69E9C10];
    v659 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v756 = 136315906;
    *&v756[4] = "operator[]";
    *&v756[12] = 1024;
    if (v659)
    {
      v660 = 3;
    }

    else
    {
      v660 = 2;
    }

    *&v756[14] = 613;
    *&v756[18] = 2048;
    *&v756[20] = 0;
    v757 = 2048;
    *v758 = 0;
    _os_log_send_and_compose_impl(v660, v753, &v764, 80, &dword_1E1C61000, v658, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v756, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_1013:
    *v753 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v661 = MEMORY[0x1E69E9C10];
    v662 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v756 = 136315906;
    *&v756[4] = "operator[]";
    *&v756[12] = 1024;
    if (v662)
    {
      v663 = 3;
    }

    else
    {
      v663 = 2;
    }

    *&v756[14] = 613;
    *&v756[18] = 2048;
    *&v756[20] = 0;
    v757 = 2048;
    *v758 = 0;
    _os_log_send_and_compose_impl(v663, v753, &v764, 80, &dword_1E1C61000, v661, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v756, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_1017:
    *v750 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v664 = MEMORY[0x1E69E9C10];
    v665 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v753 = 136315906;
    *&v753[4] = "operator[]";
    *&v753[12] = 1024;
    if (v665)
    {
      v666 = 3;
    }

    else
    {
      v666 = 2;
    }

    *&v753[14] = 789;
    *&v753[18] = 2048;
    *&v753[20] = 0;
    v754 = 2048;
    *v755 = 0;
    _os_log_send_and_compose_impl(v666, v750, &v764, 80, &dword_1E1C61000, v664, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_1021:
    *v750 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v667 = MEMORY[0x1E69E9C10];
    v668 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v753 = 136315906;
    *&v753[4] = "operator[]";
    *&v753[12] = 1024;
    if (v668)
    {
      v669 = 3;
    }

    else
    {
      v669 = 2;
    }

    *&v753[14] = 789;
    *&v753[18] = 2048;
    *&v753[20] = 0;
    v754 = 2048;
    *v755 = 0;
    _os_log_send_and_compose_impl(v669, v750, &v764, 80, &dword_1E1C61000, v667, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_1025:
    *v750 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v670 = MEMORY[0x1E69E9C10];
    v671 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v753 = 136315906;
    *&v753[4] = "operator[]";
    *&v753[12] = 1024;
    if (v671)
    {
      v672 = 3;
    }

    else
    {
      v672 = 2;
    }

    *&v753[14] = 789;
    *&v753[18] = 2048;
    *&v753[20] = 0;
    v754 = 2048;
    *v755 = 0;
    _os_log_send_and_compose_impl(v672, v750, &v764, 80, &dword_1E1C61000, v670, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_1029:
    *v750 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v673 = MEMORY[0x1E69E9C10];
    v674 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v753 = 136315906;
    *&v753[4] = "operator[]";
    *&v753[12] = 1024;
    if (v674)
    {
      v675 = 3;
    }

    else
    {
      v675 = 2;
    }

    *&v753[14] = 789;
    *&v753[18] = 2048;
    *&v753[20] = 0;
    v754 = 2048;
    *v755 = 0;
    _os_log_send_and_compose_impl(v675, v750, &v764, 80, &dword_1E1C61000, v673, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_1033:
    *v750 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v676 = MEMORY[0x1E69E9C10];
    v677 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v753 = 136315906;
    *&v753[4] = "operator[]";
    *&v753[12] = 1024;
    if (v677)
    {
      v678 = 3;
    }

    else
    {
      v678 = 2;
    }

    *&v753[14] = 789;
    *&v753[18] = 2048;
    *&v753[20] = 0;
    v754 = 2048;
    *v755 = 0;
    _os_log_send_and_compose_impl(v678, v750, &v764, 80, &dword_1E1C61000, v676, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_1037:
    *v750 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v679 = MEMORY[0x1E69E9C10];
    v680 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v753 = 136315906;
    *&v753[4] = "operator[]";
    *&v753[12] = 1024;
    if (v680)
    {
      v681 = 3;
    }

    else
    {
      v681 = 2;
    }

    *&v753[14] = 789;
    *&v753[18] = 2048;
    *&v753[20] = 0;
    v754 = 2048;
    *v755 = 0;
    _os_log_send_and_compose_impl(v681, v750, &v764, 80, &dword_1E1C61000, v679, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_1041:
    *v750 = 0;
    v22[18] = 0u;
    v22[19] = 0u;
    v22[16] = 0u;
    v22[17] = 0u;
    v22[15] = 0u;
    v682 = MEMORY[0x1E69E9C10];
    v683 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v753 = 136315906;
    *&v753[4] = "operator[]";
    *&v753[12] = 1024;
    if (v683)
    {
      v684 = 3;
    }

    else
    {
      v684 = 2;
    }

    *&v753[14] = 789;
    *&v753[18] = 2048;
    *&v753[20] = v6;
    v754 = 2048;
    *v755 = v4;
    _os_log_send_and_compose_impl(v684, v750, &v764, 80, &dword_1E1C61000, v682, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_1045:
    *v750 = 0;
    v36[18] = 0u;
    v36[19] = 0u;
    v36[16] = 0u;
    v36[17] = 0u;
    v36[15] = 0u;
    v685 = MEMORY[0x1E69E9C10];
    v686 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v753 = 136315906;
    *&v753[4] = "operator[]";
    *&v753[12] = 1024;
    if (v686)
    {
      v687 = 3;
    }

    else
    {
      v687 = 2;
    }

    *&v753[14] = 789;
    *&v753[18] = 2048;
    *&v753[20] = v6;
    v754 = 2048;
    *v755 = v4;
    _os_log_send_and_compose_impl(v687, v750, &v764, 80, &dword_1E1C61000, v685, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_1049:
    *v750 = 0;
    v50[18] = 0u;
    v50[19] = 0u;
    v50[16] = 0u;
    v50[17] = 0u;
    v50[15] = 0u;
    v688 = MEMORY[0x1E69E9C10];
    v689 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v753 = 136315906;
    *&v753[4] = "operator[]";
    *&v753[12] = 1024;
    if (v689)
    {
      v690 = 3;
    }

    else
    {
      v690 = 2;
    }

    *&v753[14] = 789;
    *&v753[18] = 2048;
    *&v753[20] = v6;
    v754 = 2048;
    *v755 = v4;
    _os_log_send_and_compose_impl(v690, v750, &v764, 80, &dword_1E1C61000, v688, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_1053:
    *v750 = 0;
    v64[18] = 0u;
    v64[19] = 0u;
    v64[16] = 0u;
    v64[17] = 0u;
    v64[15] = 0u;
    v691 = MEMORY[0x1E69E9C10];
    v692 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v753 = 136315906;
    *&v753[4] = "operator[]";
    *&v753[12] = 1024;
    if (v692)
    {
      v693 = 3;
    }

    else
    {
      v693 = 2;
    }

    *&v753[14] = 789;
    *&v753[18] = 2048;
    *&v753[20] = v6;
    v754 = 2048;
    *v755 = v4;
    _os_log_send_and_compose_impl(v693, v750, &v764, 80, &dword_1E1C61000, v691, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_1057:
    *v750 = 0;
    v78[18] = 0u;
    v78[19] = 0u;
    v78[16] = 0u;
    v78[17] = 0u;
    v78[15] = 0u;
    v694 = MEMORY[0x1E69E9C10];
    v695 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v753 = 136315906;
    *&v753[4] = "operator[]";
    *&v753[12] = 1024;
    if (v695)
    {
      v696 = 3;
    }

    else
    {
      v696 = 2;
    }

    *&v753[14] = 789;
    *&v753[18] = 2048;
    *&v753[20] = v6;
    v754 = 2048;
    *v755 = v4;
    _os_log_send_and_compose_impl(v696, v750, &v764, 80, &dword_1E1C61000, v694, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_1061:
    *v750 = 0;
    v92[18] = 0u;
    v92[19] = 0u;
    v92[16] = 0u;
    v92[17] = 0u;
    v92[15] = 0u;
    v697 = MEMORY[0x1E69E9C10];
    v698 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v753 = 136315906;
    *&v753[4] = "operator[]";
    *&v753[12] = 1024;
    if (v698)
    {
      v699 = 3;
    }

    else
    {
      v699 = 2;
    }

    *&v753[14] = 789;
    *&v753[18] = 2048;
    *&v753[20] = v6;
    v754 = 2048;
    *v755 = v4;
    _os_log_send_and_compose_impl(v699, v750, &v764, 80, &dword_1E1C61000, v697, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v753, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_1065:
    *v747 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v700 = MEMORY[0x1E69E9C10];
    v701 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v701)
    {
      v702 = 3;
    }

    else
    {
      v702 = 2;
    }

    *&v750[14] = 797;
    *&v750[18] = 2048;
    *&v750[20] = v3;
    v751 = 2048;
    *v752 = v3;
    _os_log_send_and_compose_impl(v702, v747, &v764, 80, &dword_1E1C61000, v700, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_1069:
    *v747 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v703 = MEMORY[0x1E69E9C10];
    v704 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v704)
    {
      v705 = 3;
    }

    else
    {
      v705 = 2;
    }

    *&v750[14] = 797;
    *&v750[18] = 2048;
    *&v750[20] = v3;
    v751 = 2048;
    *v752 = v3;
    _os_log_send_and_compose_impl(v705, v747, &v764, 80, &dword_1E1C61000, v703, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_1073:
    *v747 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v706 = MEMORY[0x1E69E9C10];
    v707 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v707)
    {
      v708 = 3;
    }

    else
    {
      v708 = 2;
    }

    *&v750[14] = 797;
    *&v750[18] = 2048;
    *&v750[20] = v3;
    v751 = 2048;
    *v752 = v3;
    _os_log_send_and_compose_impl(v708, v747, &v764, 80, &dword_1E1C61000, v706, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_1077:
    *v747 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v709 = MEMORY[0x1E69E9C10];
    v710 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v710)
    {
      v711 = 3;
    }

    else
    {
      v711 = 2;
    }

    *&v750[14] = 797;
    *&v750[18] = 2048;
    *&v750[20] = v3;
    v751 = 2048;
    *v752 = v3;
    _os_log_send_and_compose_impl(v711, v747, &v764, 80, &dword_1E1C61000, v709, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_1081:
    *v747 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v712 = MEMORY[0x1E69E9C10];
    v713 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v713)
    {
      v714 = 3;
    }

    else
    {
      v714 = 2;
    }

    *&v750[14] = 797;
    *&v750[18] = 2048;
    *&v750[20] = v3;
    v751 = 2048;
    *v752 = v3;
    _os_log_send_and_compose_impl(v714, v747, &v764, 80, &dword_1E1C61000, v712, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
LABEL_1085:
    *v747 = 0;
    v767 = 0u;
    v768 = 0u;
    v765 = 0u;
    v766 = 0u;
    v764 = 0u;
    v715 = MEMORY[0x1E69E9C10];
    v716 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v750 = 136315906;
    *&v750[4] = "operator[]";
    *&v750[12] = 1024;
    if (v716)
    {
      v717 = 3;
    }

    else
    {
      v717 = 2;
    }

    *&v750[14] = 797;
    *&v750[18] = 2048;
    *&v750[20] = v3;
    v751 = 2048;
    *v752 = v3;
    _os_log_send_and_compose_impl(v717, v747, &v764, 80, &dword_1E1C61000, v715, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v750, 38, v727, v728);
    _os_crash_msg();
    __break(1u);
  }

LABEL_242:
  v17 = re::internal::accessFaceVaryingAttributeSubmesh(v13, v141);
  v3 = *&v756[16];
  v8 = *(v17 + 24);
  v4 = v8;
  *&v752[2] = 0;
  memset(v750, 0, sizeof(v750));
  re::DynamicArray<re::GeomCell4>::resize(v750, v8);
  v150 = v747;
  if (v8)
  {
    v151 = 0;
    v5 = *&v750[16];
    v152 = *&v752[2];
    v6 = *(v17 + 24);
    v153 = *(v17 + 40);
    v9 = *&v753[16];
    while (v151 != v5)
    {
      if (v151 == v6)
      {
        goto LABEL_765;
      }

      v154 = 0;
      *v759 = *(v153 + 16 * v151);
      v155 = *&v755[2];
      if (*&v759[12] == -1)
      {
        v156 = 3;
      }

      else
      {
        v156 = 4;
      }

      do
      {
        v7 = *&v759[4 * v154];
        if (v9 <= v7)
        {
          goto LABEL_398;
        }

        *(v152 + 4 * v154++) = *(v155 + 4 * v7);
      }

      while (v156 != v154);
      ++v151;
      v152 += 16;
      if (v151 == v8)
      {
        goto LABEL_252;
      }
    }

    goto LABEL_741;
  }

LABEL_252:
  if (*(v17 + 48))
  {
    v157 = *(v17 + 60) == 0;
  }

  else
  {
    v157 = 1;
  }

  if (v157 && *(v10 + 10) == v8)
  {
    re::GeomMesh::updateFaceVaryingAttribute(v10, *(v13 + 8), v3, v750);
LABEL_556:
    if (!(*(*v13 + 16))(v13))
    {
      goto LABEL_559;
    }

    if (!*(v13 + 40))
    {
      goto LABEL_981;
    }

    v316 = *(v13 + 56);
    if (!(*(*v13 + 16))(v13))
    {
LABEL_559:
      *v759 = 0;
      v10 = v747;
      v767 = 0u;
      v768 = 0u;
      v765 = 0u;
      v766 = 0u;
      v764 = 0u;
      v13 = MEMORY[0x1E69E9C10];
      v342 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v747 = 136315906;
      *&v747[4] = "operator[]";
      *&v747[12] = 1024;
      if (v342)
      {
        v343 = 3;
      }

      else
      {
        v343 = 2;
      }

      *&v747[14] = 621;
      *&v747[18] = 2048;
      *&v747[20] = 0;
      v748 = 2048;
      *v749 = 0;
      _os_log_send_and_compose_impl(v343, v759, &v764, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v747, 38, v727, v728);
      _os_crash_msg();
      __break(1u);
      goto LABEL_563;
    }

LABEL_592:
    v327 = *&v758[2];
    v326 = 4 * v3;
    goto LABEL_593;
  }

  *&v749[2] = 0;
  memset(v747, 0, sizeof(v747));
  re::DynamicArray<unsigned int>::resize(v747, v8, &re::kInvalidMeshIndex);
  v160 = *(v17 + 60);
  if (v160 == 2)
  {
    v4 = v17 + 64;
    re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned int,unsigned int> const&>::HashBrownIterator(&v733, v17 + 64);
    LOBYTE(v732) = 2;
    v284 = *(v17 + 60);
    if (!*(v17 + 60))
    {
      goto LABEL_457;
    }

    if (v284 == 2)
    {
      v729[0] = 2;
      v730 = v17 + 64;
      v731 = xmmword_1E3049610;
      goto LABEL_552;
    }

    if (v284 != 1)
    {
      goto LABEL_1111;
    }

    v271 = *(v17 + 48);
    goto LABEL_547;
  }

  if (v160 == 1)
  {
    v271 = *(v17 + 48);
    if (!v271)
    {
      LOBYTE(v732) = 1;
      v734 = 0;
      v735 = 0;
      v733 = 0;
LABEL_547:
      if (v271)
      {
        v336 = *(v17 + 96);
        v337 = v336 + 4 * *(v17 + 80);
        v729[0] = 1;
        v730 = v336;
        *&v731 = v337;
        *(&v731 + 1) = v337;
      }

      else
      {
        v729[0] = 1;
        v731 = 0uLL;
        v730 = 0;
      }

LABEL_552:
      while ((re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(&v732, v729) & 1) == 0)
      {
        v17 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v732, v340);
        v339 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v732, v338);
        v4 = v339;
        v5 = *&v747[16];
        if (*&v747[16] <= v339)
        {
          goto LABEL_957;
        }

        *(*&v749[2] + 4 * v339) = HIDWORD(v17);
        re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::increment(&v732);
      }

      re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(v729, v340);
      re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v732, v341);
      re::GeomMesh::updateFaceVaryingAttribute(v10, *(v13 + 8), v3, v750, v747);
      if (*v747 && *&v749[2])
      {
        (*(**v747 + 40))();
      }

      goto LABEL_556;
    }

    v272 = *(v17 + 96);
    v273 = *(v17 + 52);
    v274 = *(v17 + 80);
    v275 = v272 + 4 * v274;
    LOBYTE(v732) = 1;
    if (v272)
    {
      v276 = v272 + 4 * v273;
      if (v274 != v273)
      {
        v276 -= 4;
        v277 = 4 * v274 - 4 * v273;
        do
        {
          v279 = *(v276 + 4);
          v276 += 4;
          v278 = v279;
          if (!v277)
          {
            break;
          }

          v277 -= 4;
        }

        while (v278 == -1);
      }

      goto LABEL_546;
    }

LABEL_545:
    v276 = 0;
LABEL_546:
    v733 = v272;
    v734 = v276;
    v735 = v275;
    goto LABEL_547;
  }

  if (!*(v17 + 60))
  {
    LOBYTE(v732) = 0;
    LODWORD(v733) = 0;
LABEL_457:
    v285 = *(v17 + 64);
    v729[0] = 0;
    LODWORD(v730) = v285;
    goto LABEL_552;
  }

LABEL_1104:
  re::internal::assertLog(4, v159, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "begin", 699);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1105:
  re::internal::assertLog(4, v177, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "begin", 699);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1106:
  re::internal::assertLog(4, v198, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "begin", 699);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1107:
  re::internal::assertLog(4, v219, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "begin", 699);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1108:
  re::internal::assertLog(4, v256, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "end", 721);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1109:
  re::internal::assertLog(4, v259, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "end", 721);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1110:
  re::internal::assertLog(4, v280, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "end", 721);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1111:
  re::internal::assertLog(4, v283, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "end", 721);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1112:
  re::internal::assertLog(4, v304, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "end", 721);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
LABEL_1113:
  re::internal::assertLog(4, v307, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "end", 721);
  result = _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
  return result;
}