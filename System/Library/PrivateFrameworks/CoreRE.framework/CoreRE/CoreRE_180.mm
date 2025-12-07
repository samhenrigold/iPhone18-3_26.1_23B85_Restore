void re::RenderGraphResourceAllocationManager::init(id *this, id *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  if ((this[5] & 1) == 0)
  {
    re::ObjCObject::operator=(this + 6, a2 + 26);
    this[7] = a2;
    *(this + 42) = re::mtl::Device::isPhysicalHardware((this + 6)) ^ 1;
    *(this + 41) = 0;
    v4 = this[6];
    v45[0] = v4;
    *v38 = 4;
    v37 = 70;
    v35 = 2;
    v36 = 2;
    TextureCompressionType = re::mtl::getTextureCompressionType(v45, &v36, &v37, v38, &v35);
    v6 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
    [v6 setStorageMode_];
    if (([v6 respondsToSelector_] & 1) != 0 || objc_msgSend(v6, sel_methodSignatureForSelector_, sel_setCompressionType_))
    {
      [v6 setCompressionType_];
    }

    [v6 setTextureType_];
    [v6 setWidth_];
    [v6 setHeight_];
    [v6 setPixelFormat_];
    [v6 setMipmapLevelCount_];
    [v6 setUsage_];
    [v6 setSampleCount_];
    *(this + 41) = [this[6] heapTextureSizeAndAlignWithDescriptor_] > 0x1FBD0;
    if (v6)
    {
    }

    if (*(this + 41) == 1)
    {
      v45[0] = 41943040;
      re::DynamicArray<unsigned long>::add(this, v45);
      v45[0] = (v45[0] * 2);
      re::DynamicArray<unsigned long>::add(this, v45);
      v45[0] = v45[0] + (v45[0] >> 1);
      re::DynamicArray<unsigned long>::add(this, v45);
      v45[0] = v45[0] + (v45[0] >> 1);
      re::DynamicArray<unsigned long>::add(this, v45);
      v45[0] = v45[0] + (v45[0] >> 1);
      re::DynamicArray<unsigned long>::add(this, v45);
      v45[0] = v45[0] + (v45[0] >> 1);
      re::DynamicArray<unsigned long>::add(this, v45);
      v45[0] = v45[0] + (v45[0] >> 1);
      re::DynamicArray<unsigned long>::add(this, v45);
      v45[0] = v45[0] + (v45[0] >> 1);
      v7 = v45;
    }

    else
    {
      v8 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
      if (([v8 respondsToSelector_] & 1) != 0 || objc_msgSend(v8, sel_methodSignatureForSelector_, sel_setCompressionType_))
      {
        [v8 setCompressionType_];
      }

      [v8 setWidth_];
      [v8 setHeight_];
      [v8 setPixelFormat_];
      [v8 setTextureType_];
      [v8 setStorageMode_];
      [v8 setUsage_];
      v9 = [this[6] heapTextureSizeAndAlignWithDescriptor_];
      v11 = v10;
      if (v8)
      {
      }

      v12 = *(this[7] + 70);
      if (v12 <= 0x1D)
      {
        v13 = (1 << v12);
        v14 = (v9 - 0x100000) + 2 * v11;
        do
        {
          v45[0] = (v13 + (v13 >> 20) * v14);
          re::DynamicArray<unsigned long>::add(this, v45);
          v15 = v13 >> 29;
          v13 *= 2;
        }

        while (!v15);
      }

      v7 = &re::RenderGraphResourceAllocationManager::kHeapTopMemorySize;
    }

    re::DynamicArray<unsigned long>::add(this, v7);
    v16 = this[2];
    if (v16)
    {
      v17 = 0;
      while (1)
      {
        v18 = *(this[4] + v17++);
        if (v18 >> 30)
        {
          break;
        }

        if (v16 == v17)
        {
          goto LABEL_24;
        }
      }

      v16 = v17;
    }

LABEL_24:
    re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapGroup>::resize(this + 15, v16);
    if (this[17])
    {
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = re::RenderGraphResourceAllocationManager::indexToSize(this, v20);
        v22 = this[17];
        if (v22 <= v20)
        {
          v37 = 0;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          *v45 = 0u;
          v31 = MEMORY[0x1E69E9C10];
          v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v38 = 136315906;
          *&v38[4] = "operator[]";
          v39 = 1024;
          if (v32)
          {
            v33 = 3;
          }

          else
          {
            v33 = 2;
          }

          v40 = 789;
          v41 = 2048;
          v42 = v20;
          v43 = 2048;
          v44 = v22;
          _os_log_send_and_compose_impl(v33, &v37, v45, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v38, 38, v34, v35);
          _os_crash_msg();
          __break(1u);
        }

        v23 = (this[19] + v19);
        *v23 = v21;
        if (v23[2] <= 0x7F)
        {
          re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::setCapacity(v23 + 1, 0x80uLL);
          v22 = this[17];
        }

        ++v20;
        v19 += 48;
      }

      while (v22 > v20);
    }

    *(re::RenderGraphResourceAllocationManager::allocateNewHeap(this, *(this[7] + 36), 1024, 0) + 49) = 1;
    re::RenderGraphResourceAllocationManager::allocateSmallBlockHeap(v45, this, 0);
    this[8] = v45[0];
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((this + 9), &v45[1]);
    *(this + 56) = v48;
    v24 = v45[1];
    if (v45[1] && *(&v47 + 1))
    {
      v24 = (*(*v45[1] + 40))();
    }

    v25 = re::globalAllocators(v24);
    v26 = (*(*v25[2] + 32))(v25[2], 136, 8);
    *(v26 + 40) = 0u;
    *(v26 + 8) = 0u;
    *(v26 + 56) = 0u;
    *(v26 + 72) = 0u;
    *(v26 + 88) = 0u;
    *(v26 + 104) = 0u;
    *(v26 + 120) = 0u;
    *(v26 + 24) = 0u;
    *v26 = &unk_1F5D04ED0;
    *(v26 + 32) = 0u;
    *(v26 + 48) = 0;
    *(v26 + 16) = 0u;
    re::DynamicString::setCapacity((v26 + 24), 0);
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    *(v26 + 80) = 0;
    *(v26 + 72) = 0;
    *(v26 + 128) = 0;
    *(v26 + 88) = 0u;
    *(v26 + 104) = 0u;
    *(v26 + 120) = 0;
    v27 = this[6];
    v34 = v27;
    v45[0] = "HeapForMemoryless";
    v45[1] = 17;
    re::DynamicString::operator=((v26 + 24), v45);
    re::ObjCObject::operator=((v26 + 16), &v34);
    *(v26 + 8) = 1;

    *(&v47 + 1) = 0;
    v45[0] = v26;
    v45[1] = 0;
    v46 = 0uLL;
    LODWORD(v47) = 0;
    LOWORD(v48) = 0;
    this[26] = v26;
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((this + 27), &v45[1]);
    *(this + 128) = v48;
    if (v45[1] && *(&v47 + 1))
    {
      (*(*v45[1] + 40))();
    }

    v28 = this + 33;
    v29 = this + 97;
    v30 = 64;
    do
    {
      v45[0] = [this[6] newFence];
      NS::SharedPtr<MTL::Texture>::operator=(v28, v45);
      if (v45[0])
      {
      }

      *v29 = -1;
      v29 = (v29 + 4);
      ++v28;
      --v30;
    }

    while (v30);
    *(this + 40) = 1;
  }
}

void *re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapGroup>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = (48 * a2) | 8;
    v9 = a2;
    do
    {
      result = re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::deinit(v3[4] + v8);
      ++v9;
      v8 += 48;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapGroup>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 48 * v4;
      do
      {
        v7 = v3[4] + v6;
        *(v7 + 40) = 0;
        *v7 = 0uLL;
        *(v7 + 16) = 0uLL;
        *(v7 + 32) = 0;
        v6 += 48;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

uint64_t re::RenderGraphResourceAllocationManager::indexToSize(re::RenderGraphResourceAllocationManager *this, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(this + 2);
  if (a2 >= v2 - 1)
  {
    v3 = v2 - 1;
  }

  else
  {
    v3 = a2;
  }

  if (v2 <= v3)
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
    v16 = v2;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 4) + 8 * v3);
}

uint64_t re::RenderGraphResourceAllocationManager::allocateNewHeap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v73 = *MEMORY[0x1E69E9840];
  v8 = re::RenderGraphResourceAllocationManager::heapGroupHierarchyFor(a1, a4);
  v9 = v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    while (*(*(a1 + 32) + 8 * v11) < (a2 + a3))
    {
      if (v10 == ++v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v10 - 1;
  }

  if (v11 >= *(v8 + 72))
  {
    return 0;
  }

  v12 = re::RenderGraphResourceAllocationManager::indexToSize(a1, v11);
  v13 = *(a1 + 1696);
  *(a1 + 1696) = v13 + 1;
  v15 = re::DynamicString::format(&v55, "Heap_%zu_(%zuMB)", v14, v13, v12 >> 20);
  if (*(a1 + 42) == 1)
  {
    v16 = re::globalAllocators(v15);
    v17 = (*(*v16[2] + 32))(v16[2], 184, 8);
    *(v17 + 40) = 0u;
    *(v17 + 8) = 0u;
    *(v17 + 56) = 0u;
    *(v17 + 72) = 0u;
    *(v17 + 88) = 0u;
    *(v17 + 104) = 0u;
    *(v17 + 120) = 0u;
    *(v17 + 136) = 0u;
    *(v17 + 152) = 0u;
    *(v17 + 168) = 0u;
    *(v17 + 24) = 0u;
    *v17 = &unk_1F5D05080;
    *(v17 + 32) = 0u;
    *(v17 + 48) = 0;
    *(v17 + 16) = 0u;
    re::DynamicString::setCapacity((v17 + 24), 0);
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    *(v17 + 80) = 0;
    *(v17 + 72) = 0;
    *(v17 + 88) = 0u;
    *(v17 + 104) = 0u;
    *(v17 + 120) = 0;
    *(v17 + 144) = 0u;
    *(v17 + 160) = 0u;
    *(v17 + 128) = 0u;
    *(v17 + 176) = 0;
    *(v17 + 172) = 0x7FFFFFFF;
    if (v56)
    {
      v18 = v58;
    }

    else
    {
      v18 = v57;
    }

    v54 = *(a1 + 48);
    v19 = strlen(v18);
    *&v68 = v18;
    *(&v68 + 1) = v19;
    re::DynamicString::operator=((v17 + 24), &v68);
    v20 = &v54;
    re::ObjCObject::operator=((v17 + 16), &v54);
    v21 = 3;
LABEL_18:
    *(v17 + 8) = v21;
    goto LABEL_19;
  }

  if (a4)
  {
    v23 = re::globalAllocators(v15);
    v17 = (*(*v23[2] + 32))(v23[2], 136, 8);
    *v17 = 0u;
    *(v17 + 32) = 0u;
    *(v17 + 48) = 0u;
    *(v17 + 64) = 0u;
    *(v17 + 80) = 0u;
    *(v17 + 96) = 0u;
    *(v17 + 112) = 0u;
    *(v17 + 128) = 0;
    *(v17 + 16) = 0u;
    DeviceHeap::DeviceHeap(v17);
    if (v56)
    {
      v24 = v58;
    }

    else
    {
      v24 = v57;
    }

    v53 = *(a1 + 48);
    re::DynamicString::operator=((v17 + 24), v24);
    v20 = &v53;
    re::ObjCObject::operator=((v17 + 16), &v53);
    v21 = 1;
    goto LABEL_18;
  }

  v35 = usePlacementHeaps();
  v36 = v35;
  v37 = *(*re::globalAllocators(v35)[2] + 32);
  if (v36)
  {
    v17 = v37();
    *(v17 + 56) = 0u;
    *(v17 + 8) = 0u;
    *(v17 + 72) = 0u;
    *(v17 + 88) = 0u;
    *(v17 + 104) = 0u;
    *(v17 + 120) = 0u;
    *(v17 + 136) = 0u;
    *(v17 + 152) = 0u;
    *(v17 + 168) = 0u;
    *(v17 + 184) = 0u;
    *(v17 + 200) = 0u;
    *(v17 + 216) = 0u;
    *(v17 + 232) = 0u;
    *v17 = &unk_1F5D04FF0;
    *(v17 + 24) = 0u;
    *(v17 + 40) = 0u;
    *(v17 + 56) = 0;
    re::DynamicString::setCapacity((v17 + 32), 0);
    *(v17 + 88) = 0;
    *(v17 + 80) = 0;
    *(v17 + 64) = 0u;
    *(v17 + 96) = 0u;
    *(v17 + 112) = 0;
    *(v17 + 116) = 0x1FFFFFFFFLL;
    *(v17 + 128) = 0;
    *(v17 + 136) = 0u;
    *(v17 + 152) = 0;
    *(v17 + 160) = 0u;
    *(v17 + 176) = 0;
    *(v17 + 180) = 0x1FFFFFFFFLL;
    if (v56)
    {
      v38 = v58;
    }

    else
    {
      v38 = v57;
    }

    v51 = *(a1 + 48);
    v39 = *(*(a1 + 56) + 272);
    v20 = &v51;
    MetalPlacementHeap::init(v17, v38, &v51, v12, v39);
  }

  else
  {
    v17 = v37();
    *(v17 + 56) = 0u;
    *(v17 + 8) = 0u;
    *(v17 + 72) = 0u;
    *(v17 + 88) = 0u;
    *(v17 + 104) = 0u;
    *(v17 + 120) = 0u;
    *(v17 + 136) = 0u;
    *(v17 + 152) = 0u;
    *(v17 + 168) = 0u;
    *(v17 + 184) = 0u;
    *(v17 + 200) = 0;
    *v17 = &unk_1F5D04F60;
    *(v17 + 24) = 0u;
    *(v17 + 40) = 0u;
    *(v17 + 56) = 0;
    re::DynamicString::setCapacity((v17 + 32), 0);
    *(v17 + 88) = 0;
    *(v17 + 80) = 0;
    *(v17 + 64) = 0u;
    *(v17 + 96) = 0u;
    *(v17 + 112) = 0;
    *(v17 + 116) = 0x1FFFFFFFFLL;
    *(v17 + 128) = 0;
    *(v17 + 136) = 0u;
    *(v17 + 152) = 0;
    *(v17 + 160) = 0u;
    *(v17 + 176) = 0;
    *(v17 + 180) = 0x1FFFFFFFFLL;
    if (v56)
    {
      v40 = v58;
    }

    else
    {
      v40 = v57;
    }

    v52 = *(a1 + 48);
    v41 = *(*(a1 + 56) + 272);
    v20 = &v52;
    MetalHeap::init(v17, v40, &v52, v12, v41);
  }

LABEL_19:

  v26 = *(v9 + 72);
  if (v26 <= v11)
  {
    v59 = 0;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v68 = 0u;
    v44 = MEMORY[0x1E69E9C10];
    v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v60 = 136315906;
    v61 = "operator[]";
    v62 = 1024;
    if (v45)
    {
      v46 = 3;
    }

    else
    {
      v46 = 2;
    }

    v63 = 789;
    v64 = 2048;
    v65 = v11;
    v66 = 2048;
    v67 = v26;
    _os_log_send_and_compose_impl(v46, &v59, &v68, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v60, 38, v50, v51);
    _os_crash_msg();
    __break(1u);
    goto LABEL_49;
  }

  v27 = *(v9 + 88) + 48 * v11;
  v28 = *(v27 + 16);
  v29 = *(v27 + 24);
  if (v29 >= v28)
  {
    v30 = v29 + 1;
    if (v28 < v29 + 1)
    {
      if (*(v27 + 8))
      {
        v31 = 2 * v28;
        v32 = v28 == 0;
        v33 = 8;
        if (!v32)
        {
          v33 = v31;
        }

        if (v33 <= v30)
        {
          v34 = v30;
        }

        else
        {
          v34 = v33;
        }

        re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::setCapacity((v27 + 8), v34);
      }

      else
      {
        re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::setCapacity((v27 + 8), v30);
        ++*(v27 + 32);
      }
    }

    v29 = *(v27 + 24);
  }

  v42 = *(v27 + 40) + 56 * v29;
  *(v42 + 40) = 0;
  *v42 = v17;
  *(v42 + 8) = 0;
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  *(v42 + 32) = 1;
  *(v42 + 48) = 0;
  ++*(v27 + 24);
  ++*(v27 + 32);
  v17 = *(v9 + 72);
  if (v17 <= v11)
  {
LABEL_49:
    v59 = 0;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v68 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v60 = 136315906;
    v61 = "operator[]";
    v62 = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    v63 = 789;
    v64 = 2048;
    v65 = v11;
    v66 = 2048;
    v67 = v17;
    _os_log_send_and_compose_impl(v49, &v59, &v68, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v60, 38, v50, v51);
    _os_crash_msg();
    __break(1u);
  }

  v22 = *(*(v9 + 88) + 48 * v11 + 40) + 56 * *(*(v9 + 88) + 48 * v11 + 24) - 56;
  if (v55 && (v56 & 1) != 0)
  {
    (*(*v55 + 40))();
  }

  return v22;
}

void re::RenderGraphResourceAllocationManager::allocateSmallBlockHeap(re::RenderGraphResourceAllocationManager *this, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 42) == 1)
  {
    v5 = re::globalAllocators(this);
    v6 = (*(*v5[2] + 32))(v5[2], 184, 8);
    *(v6 + 40) = 0u;
    *(v6 + 8) = 0u;
    *(v6 + 56) = 0u;
    *(v6 + 72) = 0u;
    *(v6 + 88) = 0u;
    *(v6 + 104) = 0u;
    *(v6 + 120) = 0u;
    *(v6 + 136) = 0u;
    *(v6 + 152) = 0u;
    *(v6 + 168) = 0u;
    *(v6 + 24) = 0u;
    *v6 = &unk_1F5D05080;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0;
    *(v6 + 16) = 0u;
    re::DynamicString::setCapacity((v6 + 24), 0);
    *(v6 + 56) = 0;
    *(v6 + 64) = 0;
    *(v6 + 80) = 0;
    *(v6 + 72) = 0;
    *(v6 + 88) = 0u;
    *(v6 + 104) = 0u;
    *(v6 + 120) = 0;
    *(v6 + 144) = 0u;
    *(v6 + 160) = 0u;
    *(v6 + 128) = 0u;
    *(v6 + 176) = 0;
    *(v6 + 172) = 0x7FFFFFFF;
    v18 = *(a2 + 48);
    v19[0] = "SmallBlock";
    v19[1] = 10;
    re::DynamicString::operator=((v6 + 24), v19);
    v7 = &v18;
    re::ObjCObject::operator=((v6 + 16), &v18);
    v8 = 3;
LABEL_5:
    *(v6 + 8) = v8;
    goto LABEL_6;
  }

  if (a3)
  {
    v9 = re::globalAllocators(this);
    v6 = (*(*v9[2] + 32))(v9[2], 136, 8);
    *v6 = 0u;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
    *(v6 + 80) = 0u;
    *(v6 + 96) = 0u;
    *(v6 + 112) = 0u;
    *(v6 + 128) = 0;
    *(v6 + 16) = 0u;
    DeviceHeap::DeviceHeap(v6);
    v17 = *(a2 + 48);
    re::DynamicString::operator=((v6 + 24), "SmallBlock");
    v7 = &v17;
    re::ObjCObject::operator=((v6 + 16), &v17);
    v8 = 1;
    goto LABEL_5;
  }

  v10 = usePlacementHeaps();
  v11 = v10;
  v12 = *(*re::globalAllocators(v10)[2] + 32);
  if (v11)
  {
    v6 = v12();
    *(v6 + 56) = 0u;
    *(v6 + 8) = 0u;
    *(v6 + 72) = 0u;
    *(v6 + 88) = 0u;
    *(v6 + 104) = 0u;
    *(v6 + 120) = 0u;
    *(v6 + 136) = 0u;
    *(v6 + 152) = 0u;
    *(v6 + 168) = 0u;
    *(v6 + 184) = 0u;
    *(v6 + 200) = 0u;
    *(v6 + 216) = 0u;
    *(v6 + 232) = 0u;
    *v6 = &unk_1F5D04FF0;
    *(v6 + 24) = 0u;
    *(v6 + 40) = 0u;
    *(v6 + 56) = 0;
    re::DynamicString::setCapacity((v6 + 32), 0);
    *(v6 + 88) = 0;
    *(v6 + 80) = 0;
    *(v6 + 64) = 0u;
    *(v6 + 96) = 0u;
    *(v6 + 112) = 0;
    *(v6 + 116) = 0x1FFFFFFFFLL;
    *(v6 + 128) = 0;
    *(v6 + 136) = 0u;
    *(v6 + 152) = 0;
    *(v6 + 160) = 0u;
    *(v6 + 176) = 0;
    *(v6 + 180) = 0x1FFFFFFFFLL;
    v15 = *(a2 + 48);
    v13 = *(*(a2 + 56) + 272);
    v7 = &v15;
    MetalPlacementHeap::init(v6, "SmallBlock", &v15, 0x800000, v13);
  }

  else
  {
    v6 = v12();
    *(v6 + 56) = 0u;
    *(v6 + 8) = 0u;
    *(v6 + 72) = 0u;
    *(v6 + 88) = 0u;
    *(v6 + 104) = 0u;
    *(v6 + 120) = 0u;
    *(v6 + 136) = 0u;
    *(v6 + 152) = 0u;
    *(v6 + 168) = 0u;
    *(v6 + 184) = 0u;
    *(v6 + 200) = 0;
    *v6 = &unk_1F5D04F60;
    *(v6 + 24) = 0u;
    *(v6 + 40) = 0u;
    *(v6 + 56) = 0;
    re::DynamicString::setCapacity((v6 + 32), 0);
    *(v6 + 88) = 0;
    *(v6 + 80) = 0;
    *(v6 + 64) = 0u;
    *(v6 + 96) = 0u;
    *(v6 + 112) = 0;
    *(v6 + 116) = 0x1FFFFFFFFLL;
    *(v6 + 128) = 0;
    *(v6 + 136) = 0u;
    *(v6 + 152) = 0;
    *(v6 + 160) = 0u;
    *(v6 + 176) = 0;
    *(v6 + 180) = 0x1FFFFFFFFLL;
    v16 = *(a2 + 48);
    v14 = *(*(a2 + 56) + 272);
    v7 = &v16;
    MetalHeap::init(v6, "SmallBlock", &v16, 0x800000, v14);
  }

LABEL_6:

  *(this + 5) = 0;
  *this = v6;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
}

void DeviceHeap::DeviceHeap(DeviceHeap *this)
{
  *(this + 2) = 0;
  *this = &unk_1F5D04ED0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  re::DynamicString::setCapacity(this + 3, 0);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 20) = 0;
  *(this + 9) = 0;
  *(this + 16) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
}

re *re::internal::destroyPersistent<re::Heap>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    (**v1)(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

uint64_t re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = 56 * v2;
    v4 = *(result + 32) + 8;
    do
    {
      result = re::DynamicArray<unsigned long>::deinit(v4);
      v4 += 56;
      v3 -= 56;
    }

    while (v3);
  }

  ++*(v1 + 24);
  return result;
}

void re::RenderGraphResourceAllocationManager::makeTexture(re::RenderGraphResourceAllocationManager *this@<X0>, const re::RenderGraphTargetDescription *a2@<X2>, const re::StringID *a3@<X3>, unint64_t a4@<X1>, void *a5@<X8>)
{
  v7 = a3;
  v8 = a2;
  v9 = a4;
  v124 = *MEMORY[0x1E69E9840];
  if (*(this + 1136) != 1)
  {
    goto LABEL_8;
  }

  v12 = a4;
  v13 = *(this + 145);
  if (v13 <= a4)
  {
LABEL_65:
    *v116 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    *v103 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v123[0]) = 136315906;
    *(v123 + 4) = "operator[]";
    WORD6(v123[0]) = 1024;
    if (v60)
    {
      v61 = 3;
    }

    else
    {
      v61 = 2;
    }

    *(v123 + 14) = 789;
    WORD1(v123[1]) = 2048;
    *(&v123[1] + 4) = v12;
    WORD6(v123[1]) = 2048;
    *(&v123[1] + 14) = v13;
    _os_log_send_and_compose_impl(v61, v116, v103, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v123, 38, v97, v98);
    _os_crash_msg();
    __break(1u);
LABEL_69:
    v102 = 0;
    memset(v123, 0, sizeof(v123));
    v62 = MEMORY[0x1E69E9C10];
    v63 = v24;
    v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v116 = 136315906;
    *&v116[4] = "operator[]";
    v117 = 1024;
    if (v64)
    {
      v65 = 3;
    }

    else
    {
      v65 = 2;
    }

    v118 = 789;
    v119 = 2048;
    v120 = v63;
    v121 = 2048;
    v122 = v6;
    _os_log_send_and_compose_impl(v65, &v102, v123, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v116, 38, v97, v98);
    _os_crash_msg();
    __break(1u);
LABEL_73:
    *v116 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    *v103 = 0u;
    v66 = MEMORY[0x1E69E9C10];
    v67 = v30;
    v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v123[0]) = 136315906;
    *(v123 + 4) = "operator[]";
    WORD6(v123[0]) = 1024;
    if (v68)
    {
      v69 = 3;
    }

    else
    {
      v69 = 2;
    }

    *(v123 + 14) = 789;
    WORD1(v123[1]) = 2048;
    *(&v123[1] + 4) = v67;
    WORD6(v123[1]) = 2048;
    *(&v123[1] + 14) = v6;
    _os_log_send_and_compose_impl(v69, v116, v103, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v123, 38, v97, v98);
    _os_crash_msg();
    __break(1u);
    goto LABEL_77;
  }

  v14 = *(this + 147);
  if (*(v14 + 184 * a4 + 168))
  {
    if (*(v14 + 184 * a4 + 152) == *a3 >> 1)
    {
      v9 = *(this + 134);
      if (v9 <= a4)
      {
LABEL_85:
        *v116 = 0;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        *v103 = 0u;
        v78 = MEMORY[0x1E69E9C10];
        v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v123[0]) = 136315906;
        *(v123 + 4) = "operator[]";
        WORD6(v123[0]) = 1024;
        if (v79)
        {
          v80 = 3;
        }

        else
        {
          v80 = 2;
        }

        *(v123 + 14) = 789;
        WORD1(v123[1]) = 2048;
        *(&v123[1] + 4) = v12;
        WORD6(v123[1]) = 2048;
        *(&v123[1] + 14) = v9;
        _os_log_send_and_compose_impl(v80, v116, v103, 80, &dword_1E1C61000, v78, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v123, 38, v97, v98);
        _os_crash_msg();
        __break(1u);
        goto LABEL_89;
      }

      v15 = v14 + 184 * a4;
      v9 = *(this + 136) + 184 * a4;
      *v9 = *v15;
      re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::operator=(v9 + 8, (v15 + 8));
      re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::operator=(v9 + 80, (v15 + 80));
      *(v9 + 152) = *(v15 + 152);
      v16 = *(v15 + 160);
      *(v9 + 176) = *(v15 + 176);
      *(v9 + 160) = v16;
      v7 = *(this + 134);
      if (v7 <= v12)
      {
LABEL_89:
        *v116 = 0;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        *v103 = 0u;
        v81 = MEMORY[0x1E69E9C10];
        v82 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v123[0]) = 136315906;
        *(v123 + 4) = "operator[]";
        WORD6(v123[0]) = 1024;
        if (v82)
        {
          v83 = 3;
        }

        else
        {
          v83 = 2;
        }

        *(v123 + 14) = 789;
        WORD1(v123[1]) = 2048;
        *(&v123[1] + 4) = v12;
        WORD6(v123[1]) = 2048;
        *(&v123[1] + 14) = v7;
        _os_log_send_and_compose_impl(v83, v116, v103, 80, &dword_1E1C61000, v81, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v123, 38, v97, v98);
        _os_crash_msg();
        __break(1u);
        goto LABEL_93;
      }

      *(*(*(this + 136) + 184 * v12 + 168) + 48) = 1;
      goto LABEL_50;
    }

    v17 = 1;
  }

  else
  {
LABEL_8:
    v17 = 0;
  }

  textureDescFromTargetDesc(a2, &v101);
  v5 = 0;
  v18 = *(v8 + 72) & 0x70;
  if (*(this + 42))
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    if (v18 != 48)
    {
      v6 = [*(this + 6) heapTextureSizeAndAlignWithDescriptor_];
      v5 = v19;
    }
  }

  v98 = a5;
  if (v18 == 48)
  {
    HeapFor = (this + 208);
  }

  else
  {
    HeapFor = re::RenderGraphResourceAllocationManager::findHeapFor(this, v6, v5, *(v8 + 88));
    if (!HeapFor)
    {
      *v98 = 0;
      if (v101)
      {
      }

      return;
    }
  }

  v96 = v18 == 48;
  v13 = *HeapFor;
  v21 = v101;
  v99 = *v7 >> 1;
  v100 = v21;
  v12 = (*(*v13 + 24))(v13, &v100, v18 == 48, &v99);
  v99 = 0;
  if (v100)
  {

    v100 = 0;
  }

  if (v12 == -1)
  {
    *v98 = 0;
  }

  else
  {
    *(HeapFor + 48) = 1;
    v5 += v6;
    *(this + 215) += v5;
    v22 = *(this + 213) + v5;
    *(this + 213) = v22;
    if (v22 > *(this + 214))
    {
      *(this + 214) = v22;
    }

    if (v5 > *(this + 216))
    {
      *(this + 216) = v5;
    }

    ++*(this + 219);
    v23 = *v7 >> 1;
    v103[1] = 0;
    *&v104 = 0;
    v103[0] = v12;
    DWORD2(v104) = 1;
    v105 = 0uLL;
    v108 = 0;
    v109 = 0;
    v110 = 1;
    v111 = 0;
    v112 = 0;
    v113 = v23;
    LOBYTE(v114) = 0;
    *(&v114 + 1) = HeapFor;
    v115 = 0;
    v24 = v9;
    v6 = *(this + 134);
    if (v6 <= v9)
    {
      goto LABEL_69;
    }

    v25 = v9;
    v9 = v7;
    v7 = v17;
    v97 = v24;
    v26 = *(this + 136) + 184 * v24;
    *v26 = v12;
    re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::operator=(v26 + 8, &v103[1]);
    re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::operator=(v26 + 80, &v108);
    *(v26 + 152) = v113;
    v27 = v114;
    *(v26 + 176) = v115;
    *(v26 + 160) = v27;
    v28 = v7;
    v113 = 0;
    if (v108)
    {
      v29 = v110;
      if ((v110 & 1) == 0)
      {
        (*(*v108 + 40))();
        v29 = v110;
      }

      v108 = 0;
      v109 = 0;
      v110 = (v29 | 1) + 2;
    }

    if (v103[1] && (BYTE8(v104) & 1) == 0)
    {
      (*(*v103[1] + 40))();
    }

    v6 = *(this + 134);
    v30 = v97;
    if (v6 <= v97)
    {
      goto LABEL_73;
    }

    v7 = v9;
    v31 = *(this + 136) + 184 * v97;
    *(v31 + 160) = v96;
    *(v31 + 176) = v5;
    v9 = v25;
    if (v28)
    {
      v5 = *(this + 145);
      if (v5 <= v97)
      {
LABEL_77:
        *v116 = 0;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        *v103 = 0u;
        v70 = MEMORY[0x1E69E9C10];
        v71 = v30;
        v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v123[0]) = 136315906;
        *(v123 + 4) = "operator[]";
        WORD6(v123[0]) = 1024;
        if (v72)
        {
          v73 = 3;
        }

        else
        {
          v73 = 2;
        }

        *(v123 + 14) = 789;
        WORD1(v123[1]) = 2048;
        *(&v123[1] + 4) = v71;
        WORD6(v123[1]) = 2048;
        *(&v123[1] + 14) = v5;
        _os_log_send_and_compose_impl(v73, v116, v103, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v123, 38, v97, v98);
        _os_crash_msg();
        __break(1u);
        goto LABEL_81;
      }

      v32 = *(this + 147) + 184 * v97;
      *(this + 213) -= *(v32 + 176);
      (*(***(v32 + 168) + 32))(**(v32 + 168), *v32);
      v30 = v97;
      v5 = *(this + 155);
      if (v5 <= v97)
      {
LABEL_81:
        *v116 = 0;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        *v103 = 0u;
        v74 = MEMORY[0x1E69E9C10];
        v75 = v30;
        v76 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v123[0]) = 136315906;
        *(v123 + 4) = "operator[]";
        WORD6(v123[0]) = 1024;
        if (v76)
        {
          v77 = 3;
        }

        else
        {
          v77 = 2;
        }

        *(v123 + 14) = 789;
        WORD1(v123[1]) = 2048;
        *(&v123[1] + 4) = v75;
        WORD6(v123[1]) = 2048;
        *(&v123[1] + 14) = v5;
        _os_log_send_and_compose_impl(v77, v116, v103, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v123, 38, v97, v98);
        _os_crash_msg();
        __break(1u);
        goto LABEL_85;
      }

      v33 = *(this + 157) + 112 * v97;
      *v33 = 3;
      *(v33 + 8) = 2;
      *(v33 + 12) = -1;
      *(v33 + 20) = -1;
      *(v33 + 28) = -1;
      *(v33 + 36) = 0;
      *(v33 + 40) = 0;
      __asm { FMOV            V0.2S, #1.0 }

      *(v33 + 44) = _D0;
      *(v33 + 52) = xmmword_1E30A3B60;
      *(v33 + 68) = 0x2000000000;
      *(v33 + 76) = -1;
      *(v33 + 84) = -1;
      *(v33 + 92) = -1;
      *(v33 + 96) = 0;
      *(v33 + 104) = 0;
    }

    if (*(this + 1136) == 1 && v13[2] == 2)
    {
      v5 = *(this + 134);
      if (v5 <= v30)
      {
LABEL_93:
        *v116 = 0;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        *v103 = 0u;
        v84 = MEMORY[0x1E69E9C10];
        v85 = v30;
        v86 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v123[0]) = 136315906;
        *(v123 + 4) = "operator[]";
        WORD6(v123[0]) = 1024;
        if (v86)
        {
          v87 = 3;
        }

        else
        {
          v87 = 2;
        }

        *(v123 + 14) = 789;
        WORD1(v123[1]) = 2048;
        *(&v123[1] + 4) = v85;
        WORD6(v123[1]) = 2048;
        *(&v123[1] + 14) = v5;
        _os_log_send_and_compose_impl(v87, v116, v103, 80, &dword_1E1C61000, v84, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v123, 38, v97, v98);
        _os_crash_msg();
        __break(1u);
        goto LABEL_97;
      }

      v5 = *(this + 145);
      if (v5 <= v30)
      {
LABEL_97:
        *v116 = 0;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        *v103 = 0u;
        v88 = MEMORY[0x1E69E9C10];
        v89 = v30;
        v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v123[0]) = 136315906;
        *(v123 + 4) = "operator[]";
        WORD6(v123[0]) = 1024;
        if (v90)
        {
          v91 = 3;
        }

        else
        {
          v91 = 2;
        }

        *(v123 + 14) = 789;
        WORD1(v123[1]) = 2048;
        *(&v123[1] + 4) = v89;
        WORD6(v123[1]) = 2048;
        *(&v123[1] + 14) = v5;
        _os_log_send_and_compose_impl(v91, v116, v103, 80, &dword_1E1C61000, v88, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v123, 38, v97, v98);
        _os_crash_msg();
        __break(1u);
LABEL_101:
        *v116 = 0;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        *v103 = 0u;
        v92 = MEMORY[0x1E69E9C10];
        v93 = v41;
        v94 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v123[0]) = 136315906;
        *(v123 + 4) = "operator[]";
        WORD6(v123[0]) = 1024;
        if (v94)
        {
          v95 = 3;
        }

        else
        {
          v95 = 2;
        }

        *(v123 + 14) = 789;
        WORD1(v123[1]) = 2048;
        *(&v123[1] + 4) = v93;
        WORD6(v123[1]) = 2048;
        *(&v123[1] + 14) = v5;
        _os_log_send_and_compose_impl(v95, v116, v103, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v123, 38, v97, v98);
        _os_crash_msg();
        __break(1u);
      }

      v39 = *(this + 136) + 184 * v30;
      v40 = *(this + 147) + 184 * v30;
      *v40 = *v39;
      re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::operator=(v40 + 8, (v39 + 8));
      re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::operator=(v40 + 80, (v39 + 80));
      v41 = v97;
      *(v40 + 152) = *(v39 + 152);
      v42 = *(v39 + 160);
      *(v40 + 176) = *(v39 + 176);
      *(v40 + 160) = v42;
      v5 = *(this + 155);
      if (v5 <= v97)
      {
        goto LABEL_101;
      }

      v43 = (*(this + 157) + 112 * v97);
      v44 = *v8;
      v45 = *(v8 + 32);
      v43[1] = *(v8 + 16);
      v43[2] = v45;
      *v43 = v44;
      v46 = *(v8 + 48);
      v47 = *(v8 + 64);
      v48 = *(v8 + 80);
      *(v43 + 89) = *(v8 + 89);
      v43[4] = v47;
      v43[5] = v48;
      v43[3] = v46;
    }

    (*(*v13 + 96))(v103, v13, v12);
    v8 = v103[0];
    [v103[0] setLabel_];
    if (v103[0])
    {
    }
  }

  if (v101)
  {
  }

  if (v12 != -1)
  {
    v7 = *(this + 134);
    v12 = v9;
LABEL_50:
    if (v7 > v12)
    {
      v49 = *(this + 136) + 184 * v12;
      v50 = *(v49 + 168);
      v51 = *v50;
      v52 = *v49;
      if (*(v49 + 160))
      {
        ++*(this + 217);
      }

      else if (v50[3])
      {
        v53 = 0;
        v54 = 0;
        do
        {
          v55 = v50[5] + v53;
          v8 = v8 & 0xFFFFFFFF00000000 | *(v55 + 8);
          re::RenderGraphResourceAllocationManager::SetupData::addUniqueFence((this + 1328), *v55, v8);
          ++v54;
          v53 += 12;
        }

        while (v50[3] > v54);
      }

      (*(*v51 + 96))(v51, v52);
      return;
    }

    *v116 = 0;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    *v103 = 0u;
    v56 = MEMORY[0x1E69E9C10];
    v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v123[0]) = 136315906;
    *(v123 + 4) = "operator[]";
    WORD6(v123[0]) = 1024;
    if (v57)
    {
      v58 = 3;
    }

    else
    {
      v58 = 2;
    }

    *(v123 + 14) = 789;
    WORD1(v123[1]) = 2048;
    *(&v123[1] + 4) = v12;
    WORD6(v123[1]) = 2048;
    *(&v123[1] + 14) = v7;
    _os_log_send_and_compose_impl(v58, v116, v103, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v123, 38, v97, v98);
    _os_crash_msg();
    __break(1u);
    goto LABEL_65;
  }
}

void *re::RenderGraphResourceAllocationManager::findHeapFor(re::RenderGraphResourceAllocationManager *a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = re::RenderGraphResourceAllocationManager::heapGroupHierarchyFor(a1, a4);
  v9 = v8;
  v10 = a2 + a3;
  v11 = *(a1 + 2);
  if (v11)
  {
    v12 = 0;
    while (*(*(a1 + 4) + 8 * v12) < v10)
    {
      if (v11 == ++v12)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v11 - 1;
  }

  v13 = v8[9];
  if (v12 >= v13)
  {
    return 0;
  }

  if (a2 >> 21)
  {
    goto LABEL_10;
  }

  if ((*(**v8 + 112))() >= a2)
  {
    return v9;
  }

  v13 = v9[9];
LABEL_10:
  if (v13 <= v12)
  {
    v28 = 0;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v29 = 136315906;
    v30 = "operator[]";
    v31 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v32 = 789;
    v33 = 2048;
    v34 = v12;
    v35 = 2048;
    v36 = v13;
    _os_log_send_and_compose_impl(v20, &v28, &v37, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v29, 38, v27);
    _os_crash_msg();
    __break(1u);
LABEL_34:
    v28 = 0;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v29 = 136315906;
    v30 = "operator[]";
    v31 = 1024;
    if (v22)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v32 = 789;
    v33 = 2048;
    v34 = v13;
    v35 = 2048;
    v36 = a3;
    _os_log_send_and_compose_impl(v23, &v28, &v37, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v29, 38, v27);
    _os_crash_msg();
    __break(1u);
    goto LABEL_38;
  }

  v14 = v9[11] + 48 * v12;
  if (*(v14 + 24))
  {
    v15 = 0;
    v13 = 0;
    while ((*(**(*(v14 + 40) + v15) + 112))(*(*(v14 + 40) + v15), a3) < a2)
    {
      ++v13;
      v15 += 56;
      if (*(v14 + 24) <= v13)
      {
        goto LABEL_15;
      }
    }

    a3 = *(v14 + 24);
    if (a3 > v13)
    {
      return (*(v14 + 40) + v15);
    }

    goto LABEL_34;
  }

LABEL_15:
  if (re::RenderGraphResourceAllocationManager::indexToSize(a1, v12) < 2 * v10 && v12 + 1 < v9[9])
  {
    v16 = v9[11] + 48 * (v12 + 1);
    if (*(v16 + 24))
    {
      v17 = 0;
      v12 = 0;
      while ((*(**(*(v16 + 40) + v17) + 112))(*(*(v16 + 40) + v17), a3) < a2)
      {
        ++v12;
        v17 += 56;
        if (*(v16 + 24) <= v12)
        {
          goto LABEL_21;
        }
      }

      a3 = *(v16 + 24);
      if (a3 > v12)
      {
        return (*(v16 + 40) + v17);
      }

LABEL_38:
      v28 = 0;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v37 = 0u;
      v24 = MEMORY[0x1E69E9C10];
      v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v29 = 136315906;
      v30 = "operator[]";
      v31 = 1024;
      if (v25)
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      v32 = 789;
      v33 = 2048;
      v34 = v12;
      v35 = 2048;
      v36 = a3;
      _os_log_send_and_compose_impl(v26, &v28, &v37, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v29, 38, v27);
      _os_crash_msg();
      __break(1u);
    }
  }

LABEL_21:

  return re::RenderGraphResourceAllocationManager::allocateNewHeap(a1, a2, a3, a4);
}

_anonymous_namespace_ *re::RenderGraphResourceAllocationManager::SetupData::addUniqueFence(_anonymous_namespace_ *result, uint64_t a2, int a3)
{
  v5 = a2;
  v6 = a3;
  if (a2 != -1)
  {
    v3 = *(result + 32);
    if (v3)
    {
      for (i = (*(result + 34) + 8); *(i - 2) != a2 || *i > a3; i += 3)
      {
        if (!--v3)
        {
          return re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((result + 240), &v5);
        }
      }
    }

    else
    {
      return re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((result + 240), &v5);
    }
  }

  return result;
}

_anonymous_namespace_ *re::RenderGraphResourceAllocationManager::releaseTexture(_anonymous_namespace_ *this, unsigned int a2, const char *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(this + 134);
  if (v5 <= a2)
  {
    v23 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v27 = 789;
    v28 = 2048;
    v29 = v4;
    v30 = 2048;
    v31 = v5;
    _os_log_send_and_compose_impl(v18, &v23, &v32, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v22);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v6 = this;
  v7 = (*(this + 136) + 184 * a2);
  if (*v7 == -1)
  {
    return this;
  }

  v8 = v7[21];
  v9 = *v8;
  if (*(v6 + 1136) == 1)
  {
    this = (*(*v9 + 40))(v9);
  }

  else
  {
    *(v6 + 213) -= v7[22];
    this = (*(*v9 + 32))(v9);
  }

  v3 = *(v6 + 134);
  if (v3 <= v4)
  {
LABEL_19:
    v23 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    if (v20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v27 = 789;
    v28 = 2048;
    v29 = v4;
    v30 = 2048;
    v31 = v3;
    _os_log_send_and_compose_impl(v21, &v23, &v32, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v22);
    _os_crash_msg();
    __break(1u);
  }

  v10 = *(v6 + 136) + 184 * v4;
  *v10 = -1;
  *(v10 + 16) = 0;
  *(v10 + 24) += 2;
  *(v10 + 88) = 0;
  *(v10 + 96) += 2;
  *(v10 + 152) = 0;
  *(v10 + 160) = 0;
  *(v10 + 168) = 0;
  v11 = *(v6 + 203);
  if (v11)
  {
    v12 = *(v6 + 205);
    v13 = 12 * v11;
    do
    {
      *&v32 = *v12;
      DWORD2(v32) = *(v12 + 8);
      this = re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v8 + 1), &v32);
      v12 += 12;
      v13 -= 12;
    }

    while (v13);
  }

  if ((*(v6 + 1649) & 1) == 0)
  {
    v14 = *(v6 + 198);
    if (v14)
    {
      v15 = *(v6 + 200);
      v16 = 12 * v14;
      do
      {
        *&v32 = *v15;
        DWORD2(v32) = *(v15 + 8);
        this = re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v8 + 1), &v32);
        v15 += 12;
        v16 -= 12;
      }

      while (v16);
    }
  }

  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add(_anonymous_namespace_ *result, uint64_t *a2)
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

        result = re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::AnimationLibraryMeshMappingData>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = *(v3 + 4) + 12 * v5;
  v12 = *a2;
  *(v11 + 8) = *(a2 + 2);
  *v11 = v12;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

char *re::RenderGraphResourceAllocationManager::makeBuffer@<X0>(re::RenderGraphResourceAllocationManager *this@<X0>, const re::RenderGraphBufferDescription *a2@<X2>, const re::StringID *a3@<X3>, unint64_t a4@<X1>, void *a5@<X8>)
{
  v6 = a3;
  v8 = a4;
  v108 = *MEMORY[0x1E69E9840];
  if (*(this + 1136) != 1)
  {
    goto LABEL_8;
  }

  v11 = a4;
  v12 = *(this + 150);
  if (v12 <= a4)
  {
LABEL_52:
    *v100 = 0;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    *v87 = 0u;
    v53 = MEMORY[0x1E69E9C10];
    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v107[0]) = 136315906;
    *(v107 + 4) = "operator[]";
    WORD6(v107[0]) = 1024;
    if (v54)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    *(v107 + 14) = 789;
    WORD1(v107[1]) = 2048;
    *(&v107[1] + 4) = v11;
    WORD6(v107[1]) = 2048;
    *(&v107[1] + 14) = v12;
    _os_log_send_and_compose_impl(v55, v100, v87, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v83, v84);
    _os_crash_msg();
    __break(1u);
LABEL_56:
    v86 = 0;
    memset(v107, 0, sizeof(v107));
    v56 = MEMORY[0x1E69E9C10];
    v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v100 = 136315906;
    *&v100[4] = "operator[]";
    v101 = 1024;
    if (v57)
    {
      v58 = 3;
    }

    else
    {
      v58 = 2;
    }

    v102 = 789;
    v103 = 2048;
    v104 = v11;
    v105 = 2048;
    v106 = v5;
    _os_log_send_and_compose_impl(v58, &v86, v107, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v100, 38, v83, v84);
    _os_crash_msg();
    __break(1u);
LABEL_60:
    *v100 = 0;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    *v87 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v107[0]) = 136315906;
    *(v107 + 4) = "operator[]";
    WORD6(v107[0]) = 1024;
    if (v60)
    {
      v61 = 3;
    }

    else
    {
      v61 = 2;
    }

    *(v107 + 14) = 789;
    WORD1(v107[1]) = 2048;
    *(&v107[1] + 4) = v11;
    WORD6(v107[1]) = 2048;
    *(&v107[1] + 14) = v8;
    _os_log_send_and_compose_impl(v61, v100, v87, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v83, v84);
    _os_crash_msg();
    __break(1u);
    goto LABEL_64;
  }

  v13 = *(this + 152);
  if (*(v13 + 184 * a4 + 168))
  {
    if (*(v13 + 184 * a4 + 152) == *a3 >> 1)
    {
      v6 = *(this + 139);
      if (v6 <= a4)
      {
LABEL_72:
        *v100 = 0;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        *v87 = 0u;
        v68 = MEMORY[0x1E69E9C10];
        v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v107[0]) = 136315906;
        *(v107 + 4) = "operator[]";
        WORD6(v107[0]) = 1024;
        if (v69)
        {
          v70 = 3;
        }

        else
        {
          v70 = 2;
        }

        *(v107 + 14) = 789;
        WORD1(v107[1]) = 2048;
        *(&v107[1] + 4) = v11;
        WORD6(v107[1]) = 2048;
        *(&v107[1] + 14) = v6;
        _os_log_send_and_compose_impl(v70, v100, v87, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v83, v84);
        _os_crash_msg();
        __break(1u);
        goto LABEL_76;
      }

      v14 = v13 + 184 * a4;
      v15 = *(this + 141) + 184 * a4;
      *v15 = *v14;
      re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::operator=(v15 + 8, (v14 + 8));
      re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::operator=(v15 + 80, (v14 + 80));
      *(v15 + 152) = *(v14 + 152);
      v16 = *(v14 + 160);
      *(v15 + 176) = *(v14 + 176);
      *(v15 + 160) = v16;
      v6 = *(this + 139);
      if (v6 <= v8)
      {
LABEL_76:
        *v100 = 0;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        *v87 = 0u;
        v71 = MEMORY[0x1E69E9C10];
        v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v107[0]) = 136315906;
        *(v107 + 4) = "operator[]";
        WORD6(v107[0]) = 1024;
        if (v72)
        {
          v73 = 3;
        }

        else
        {
          v73 = 2;
        }

        *(v107 + 14) = 789;
        WORD1(v107[1]) = 2048;
        *(&v107[1] + 4) = v11;
        WORD6(v107[1]) = 2048;
        *(&v107[1] + 14) = v6;
        _os_log_send_and_compose_impl(v73, v100, v87, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v83, v84);
        _os_crash_msg();
        __break(1u);
        goto LABEL_80;
      }

      *(*(*(this + 141) + 184 * v11 + 168) + 48) = 1;
      goto LABEL_38;
    }

    v17 = a5;
    v18 = 1;
  }

  else
  {
LABEL_8:
    v17 = a5;
    v18 = 0;
  }

  v19 = *(a2 + 6) & 0x70;
  v21 = [*(this + 6) heapBufferSizeAndAlignWithLength:*(a2 + 1) options:?];
  v22 = v20;
  HIDWORD(v84) = v19 == 48;
  if (v19 == 48)
  {
    v23 = this + 208;
  }

  else
  {
    result = re::RenderGraphResourceAllocationManager::findHeapFor(this, v21, v20, *(a2 + 4));
    v23 = result;
    if (!result)
    {
      goto LABEL_41;
    }
  }

  LODWORD(v84) = v18;
  v25 = v19 == 48;
  v12 = *v23;
  v26 = *(a2 + 1);
  v27 = *(a2 + 6);
  v85 = *v6 >> 1;
  result = (*(*v12 + 48))(v12, v26, v27, v25, &v85);
  v85 = 0;
  if (result == -1)
  {
LABEL_41:
    *v17 = 0;
    return result;
  }

  v28 = result;
  v23[48] = 1;
  v29 = v22 + v21;
  *(this + 220) += v29;
  v30 = *(this + 213) + v29;
  *(this + 213) = v30;
  if (v30 > *(this + 214))
  {
    *(this + 214) = v30;
  }

  ++*(this + 221);
  v31 = *v6 >> 1;
  v87[1] = 0;
  *&v88 = 0;
  v87[0] = result;
  DWORD2(v88) = 1;
  v89 = 0uLL;
  v92 = 0;
  v93 = 0;
  v94 = 1;
  v95 = 0;
  v96 = 0;
  v97 = v31;
  LOBYTE(v98) = 0;
  *(&v98 + 1) = v23;
  v99 = 0;
  v11 = v8;
  v5 = *(this + 139);
  if (v5 <= v8)
  {
    goto LABEL_56;
  }

  v5 = *(this + 141) + 184 * v8;
  *v5 = result;
  re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::operator=(v5 + 8, &v87[1]);
  re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::operator=(v5 + 80, &v92);
  *(v5 + 152) = v97;
  v32 = v98;
  *(v5 + 176) = v99;
  *(v5 + 160) = v32;
  v97 = 0;
  if (v92)
  {
    v33 = v94;
    if ((v94 & 1) == 0)
    {
      (*(*v92 + 40))();
      v33 = v94;
    }

    v92 = 0;
    v93 = 0;
    v94 = (v33 | 1) + 2;
  }

  if (v87[1] && (BYTE8(v88) & 1) == 0)
  {
    (*(*v87[1] + 40))();
  }

  v8 = *(this + 139);
  if (v8 <= v11)
  {
    goto LABEL_60;
  }

  v34 = *(this + 141) + 184 * v11;
  *(v34 + 160) = BYTE4(v84);
  *(v34 + 176) = v29;
  if (v84)
  {
    v8 = *(this + 150);
    if (v8 <= v11)
    {
LABEL_64:
      *v100 = 0;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      *v87 = 0u;
      v62 = MEMORY[0x1E69E9C10];
      v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v107[0]) = 136315906;
      *(v107 + 4) = "operator[]";
      WORD6(v107[0]) = 1024;
      if (v63)
      {
        v64 = 3;
      }

      else
      {
        v64 = 2;
      }

      *(v107 + 14) = 789;
      WORD1(v107[1]) = 2048;
      *(&v107[1] + 4) = v11;
      WORD6(v107[1]) = 2048;
      *(&v107[1] + 14) = v8;
      _os_log_send_and_compose_impl(v64, v100, v87, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v83, v84);
      _os_crash_msg();
      __break(1u);
      goto LABEL_68;
    }

    v35 = *(this + 152) + 184 * v11;
    *(this + 213) -= *(v35 + 176);
    (*(***(v35 + 168) + 56))(**(v35 + 168), *v35);
    v8 = *(this + 160);
    if (v8 <= v11)
    {
LABEL_68:
      *v100 = 0;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      *v87 = 0u;
      v65 = MEMORY[0x1E69E9C10];
      v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v107[0]) = 136315906;
      *(v107 + 4) = "operator[]";
      WORD6(v107[0]) = 1024;
      if (v66)
      {
        v67 = 3;
      }

      else
      {
        v67 = 2;
      }

      *(v107 + 14) = 789;
      WORD1(v107[1]) = 2048;
      *(&v107[1] + 4) = v11;
      WORD6(v107[1]) = 2048;
      *(&v107[1] + 14) = v8;
      _os_log_send_and_compose_impl(v67, v100, v87, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v83, v84);
      _os_crash_msg();
      __break(1u);
      goto LABEL_72;
    }

    v36 = *(this + 162) + 48 * v11;
    *v36 = 0;
    *(v36 + 8) = -1;
    *(v36 + 16) = 0;
    *(v36 + 20) = 1065353216;
    *(v36 + 24) = 0xFFFFFFFF00000020;
    *(v36 + 32) = xmmword_1E3062D70;
  }

  if (*(this + 1136) == 1 && *(v12 + 8) == 2)
  {
    v8 = *(this + 139);
    if (v8 <= v11)
    {
LABEL_80:
      *v100 = 0;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      *v87 = 0u;
      v74 = MEMORY[0x1E69E9C10];
      v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v107[0]) = 136315906;
      *(v107 + 4) = "operator[]";
      WORD6(v107[0]) = 1024;
      if (v75)
      {
        v76 = 3;
      }

      else
      {
        v76 = 2;
      }

      *(v107 + 14) = 789;
      WORD1(v107[1]) = 2048;
      *(&v107[1] + 4) = v11;
      WORD6(v107[1]) = 2048;
      *(&v107[1] + 14) = v8;
      _os_log_send_and_compose_impl(v76, v100, v87, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v83, v84);
      _os_crash_msg();
      __break(1u);
      goto LABEL_84;
    }

    v8 = *(this + 150);
    if (v8 <= v11)
    {
LABEL_84:
      *v100 = 0;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      *v87 = 0u;
      v77 = MEMORY[0x1E69E9C10];
      v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v107[0]) = 136315906;
      *(v107 + 4) = "operator[]";
      WORD6(v107[0]) = 1024;
      if (v78)
      {
        v79 = 3;
      }

      else
      {
        v79 = 2;
      }

      *(v107 + 14) = 789;
      WORD1(v107[1]) = 2048;
      *(&v107[1] + 4) = v11;
      WORD6(v107[1]) = 2048;
      *(&v107[1] + 14) = v8;
      _os_log_send_and_compose_impl(v79, v100, v87, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v83, v84);
      _os_crash_msg();
      __break(1u);
LABEL_88:
      *v100 = 0;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      *v87 = 0u;
      v80 = MEMORY[0x1E69E9C10];
      v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v107[0]) = 136315906;
      *(v107 + 4) = "operator[]";
      WORD6(v107[0]) = 1024;
      if (v81)
      {
        v82 = 3;
      }

      else
      {
        v82 = 2;
      }

      *(v107 + 14) = 789;
      WORD1(v107[1]) = 2048;
      *(&v107[1] + 4) = v11;
      WORD6(v107[1]) = 2048;
      *(&v107[1] + 14) = v8;
      _os_log_send_and_compose_impl(v82, v100, v87, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v83, v84);
      _os_crash_msg();
      __break(1u);
    }

    v37 = *(this + 141) + 184 * v11;
    v38 = *(this + 152) + 184 * v11;
    *v38 = *v37;
    re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::operator=(v38 + 8, (v37 + 8));
    re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::operator=(v38 + 80, (v37 + 80));
    *(v38 + 152) = *(v37 + 152);
    v39 = *(v37 + 160);
    *(v38 + 176) = *(v37 + 176);
    *(v38 + 160) = v39;
    v8 = *(this + 160);
    if (v8 <= v11)
    {
      goto LABEL_88;
    }

    v40 = (*(this + 162) + 48 * v11);
    v41 = *a2;
    v42 = *(a2 + 2);
    v40[1] = *(a2 + 1);
    v40[2] = v42;
    *v40 = v41;
  }

  (*(*v12 + 104))(v87, v12, v28);
  [v87[0] setLabel_];
  if (v87[0])
  {
  }

  v6 = *(this + 139);
LABEL_38:
  if (v6 <= v11)
  {
    *v100 = 0;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    *v87 = 0u;
    v50 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v107[0]) = 136315906;
    *(v107 + 4) = "operator[]";
    WORD6(v107[0]) = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    *(v107 + 14) = 789;
    WORD1(v107[1]) = 2048;
    *(&v107[1] + 4) = v11;
    WORD6(v107[1]) = 2048;
    *(&v107[1] + 14) = v6;
    _os_log_send_and_compose_impl(v52, v100, v87, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v83, v84);
    _os_crash_msg();
    __break(1u);
    goto LABEL_52;
  }

  v43 = *(this + 141) + 184 * v11;
  v44 = *(v43 + 168);
  v45 = *v44;
  v46 = *v43;
  if (*(v43 + 160))
  {
    ++*(this + 218);
  }

  else if (v44[3])
  {
    v47 = 0;
    v48 = 0;
    do
    {
      v49 = v44[5] + v47;
      v12 = v12 & 0xFFFFFFFF00000000 | *(v49 + 8);
      re::RenderGraphResourceAllocationManager::SetupData::addUniqueFence((this + 1328), *v49, v12);
      ++v48;
      v47 += 12;
    }

    while (v44[3] > v48);
  }

  return (*(*v45 + 104))(v45, v46);
}

_anonymous_namespace_ *re::RenderGraphResourceAllocationManager::releaseBuffer(_anonymous_namespace_ *this, unsigned int a2, const char *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(this + 139);
  if (v5 <= a2)
  {
    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v21 = 136315906;
    v22 = "operator[]";
    v23 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v24 = 789;
    v25 = 2048;
    v26 = v4;
    v27 = 2048;
    v28 = v5;
    _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
    goto LABEL_15;
  }

  v6 = this;
  v7 = (*(this + 141) + 184 * a2);
  if (*v7 == -1)
  {
    return this;
  }

  v8 = v7[21];
  v9 = *v8;
  if (*(v6 + 1136) == 1)
  {
    this = (*(*v9 + 64))(v9);
  }

  else
  {
    *(v6 + 213) -= v7[22];
    this = (*(*v9 + 56))(v9);
  }

  v3 = *(v6 + 139);
  if (v3 <= v4)
  {
LABEL_15:
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
    v26 = v4;
    v27 = 2048;
    v28 = v3;
    _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
  }

  v10 = *(v6 + 141) + 184 * v4;
  *v10 = -1;
  *(v10 + 16) = 0;
  *(v10 + 24) += 2;
  *(v10 + 88) = 0;
  *(v10 + 96) += 2;
  *(v10 + 152) = 0;
  *(v10 + 160) = 0;
  *(v10 + 168) = 0;
  v11 = *(v6 + 203);
  if (v11)
  {
    v12 = *(v6 + 205);
    v13 = 12 * v11;
    do
    {
      *&v29 = *v12;
      DWORD2(v29) = *(v12 + 8);
      this = re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v8 + 1), &v29);
      v12 += 12;
      v13 -= 12;
    }

    while (v13);
  }

  return this;
}

uint64_t re::RenderGraphResourceAllocationManager::onFrameStart(re::RenderGraphResourceAllocationManager *this, char *a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v12 = a2;
  v13 = this;
  v158 = *MEMORY[0x1E69E9840];
  re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureEntry>::resize(this + 132, a2);
  if (*(v13 + 134))
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(v13 + 136) + v14;
      *v16 = -1;
      *(v16 + 16) = 0;
      *(v16 + 24) += 2;
      *(v16 + 88) = 0;
      *(v16 + 96) += 2;
      *(v16 + 152) = 0;
      *(v16 + 160) = 0;
      *(v16 + 168) = 0;
      ++v15;
      v14 += 184;
    }

    while (*(v13 + 134) > v15);
  }

  re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureEntry>::resize(v13 + 137, a3);
  if (*(v13 + 139))
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = *(v13 + 141) + v17;
      *v19 = -1;
      *(v19 + 16) = 0;
      *(v19 + 24) += 2;
      *(v19 + 88) = 0;
      *(v19 + 96) += 2;
      *(v19 + 152) = 0;
      *(v19 + 160) = 0;
      *(v19 + 168) = 0;
      ++v18;
      v17 += 184;
    }

    while (*(v13 + 139) > v18);
  }

  if ((atomic_load_explicit(&qword_1EE1B8918, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_181;
  }

  while (1)
  {
    v20 = byte_1EE1B88FB;
    if (*(v13 + 1136) == 1 && (byte_1EE1B88FB & 1) == 0)
    {
      v139 = a5;
      v141 = a4;
      v21 = *(v13 + 145);
      if (v21)
      {
        v22 = 0;
        v7 = 0;
        v5 = 0;
        a5 = 2;
        v8 = -1;
        __asm { FMOV            V9.2S, #1.0 }

        do
        {
          v28 = (*(v13 + 147) + v22);
          v29 = v28[21];
          if (v29)
          {
            (*(**v29 + 32))(*v29, *v28);
            a4 = *(v13 + 155);
            if (a4 <= v5)
            {
              goto LABEL_173;
            }

            v30 = *(v13 + 157) + v7;
            *v30 = 3;
            *(v30 + 8) = 2;
            *(v30 + 28) = -1;
            *(v30 + 20) = -1;
            *(v30 + 12) = -1;
            *(v30 + 36) = 0;
            *(v30 + 40) = 0;
            *(v30 + 44) = _D9;
            *(v30 + 52) = xmmword_1E30A3B60;
            *(v30 + 68) = 0x2000000000;
            *(v30 + 76) = -1;
            *(v30 + 84) = -1;
            *(v30 + 92) = -1;
            *(v30 + 96) = 0;
            *(v30 + 104) = 0;
            v21 = *(v13 + 145);
          }

          ++v5;
          v7 += 112;
          v22 += 184;
        }

        while (v21 > v5);
        *(v13 + 145) = 0;
        if (v21)
        {
          v31 = 184 * v21;
          v5 = *(v13 + 147) + 80;
          do
          {
            *(v5 + 72) = 0;
            re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v5);
            re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v5 - 72);
            v5 += 184;
            v31 -= 184;
          }

          while (v31);
        }
      }

      ++*(v13 + 292);
      *(v13 + 155) = 0;
      ++*(v13 + 312);
      v32 = *(v13 + 150);
      if (v32)
      {
        a5 = 0;
        a4 = 0;
        v5 = 0;
        v7 = 0x203F800000;
        v8 = 0xFFFFFFFFLL;
        do
        {
          v33 = (*(v13 + 152) + a5);
          v34 = v33[21];
          if (v34)
          {
            (*(**v34 + 56))(*v34, *v33);
            v6 = *(v13 + 160);
            if (v6 <= v5)
            {
              goto LABEL_177;
            }

            v35 = *(v13 + 162) + a4;
            *v35 = 0;
            *(v35 + 8) = -1;
            *(v35 + 16) = 0;
            *(v35 + 20) = 0x203F800000;
            *(v35 + 28) = -1;
            *(v35 + 32) = xmmword_1E3062D70;
            v32 = *(v13 + 150);
          }

          ++v5;
          a4 += 48;
          a5 += 184;
        }

        while (v32 > v5);
        *(v13 + 150) = 0;
        if (v32)
        {
          v36 = 184 * v32;
          v5 = *(v13 + 152) + 80;
          do
          {
            *(v5 + 72) = 0;
            re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v5);
            re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v5 - 72);
            v5 += 184;
            v36 -= 184;
          }

          while (v36);
        }
      }

      ++*(v13 + 302);
      *(v13 + 160) = 0;
      ++*(v13 + 322);
      *(v13 + 221) = 0;
      *(v13 + 1704) = 0u;
      *(v13 + 1720) = 0u;
      *(v13 + 1736) = 0u;
      *(v13 + 1752) = 0u;
      v20 = byte_1EE1B88FB;
      a5 = v139;
      a4 = v141;
    }

    *(v13 + 1136) = v20;
    if ((v20 & 1) == 0)
    {
      break;
    }

    v37 = *(v13 + 145);
    if (v37 == *(v13 + 134) && *(v13 + 150) == *(v13 + 139) && *(v13 + 163) == a4 && *(v13 + 164) == a5)
    {
      break;
    }

    v140 = a5;
    v142 = a4;
    __asm { FMOV            V8.2S, #1.0 }

    if (v37)
    {
      v8 = 0;
      a5 = 0;
      v7 = 0;
      a4 = 2;
      v5 = -1;
      do
      {
        v39 = (*(v13 + 147) + v8);
        v40 = v39[21];
        if (v40)
        {
          (*(**v40 + 32))(*v40, *v39);
          v6 = *(v13 + 155);
          if (v6 <= v7)
          {
            goto LABEL_165;
          }

          v41 = *(v13 + 157) + a5;
          *v41 = 3;
          *(v41 + 8) = 2;
          *(v41 + 28) = -1;
          *(v41 + 20) = -1;
          *(v41 + 12) = -1;
          *(v41 + 36) = 0;
          *(v41 + 40) = 0;
          *(v41 + 44) = _D8;
          *(v41 + 52) = xmmword_1E30A3B60;
          *(v41 + 68) = 0x2000000000;
          *(v41 + 76) = -1;
          *(v41 + 84) = -1;
          *(v41 + 92) = -1;
          *(v41 + 96) = 0;
          *(v41 + 104) = 0;
          v37 = *(v13 + 145);
        }

        ++v7;
        a5 += 112;
        v8 += 184;
      }

      while (v37 > v7);
    }

    re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureEntry>::resize(v13 + 143, v12);
    v42 = *(v13 + 155);
    if (v42 >= v12)
    {
      if (v42 <= v12)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (*(v13 + 154) < v12)
      {
        re::DynamicArray<re::RenderGraphTargetDescription>::setCapacity(v13 + 153, v12);
        v42 = *(v13 + 155);
      }

      if (v12 > v42)
      {
        v43 = 112 * &v12[-v42];
        if (v43 >= 1)
        {
          v44 = *(v13 + 157) + 112 * v42;
          v45 = (((v43 >> 4) * 0x2492492492492493uLL) >> 64) + 1;
          do
          {
            *v44 = 3;
            *(v44 + 8) = 2;
            *(v44 + 12) = -1;
            *(v44 + 20) = -1;
            *(v44 + 28) = -1;
            *(v44 + 36) = 0;
            *(v44 + 40) = 0;
            *(v44 + 44) = _D8;
            *(v44 + 52) = xmmword_1E30A3B60;
            *(v44 + 68) = 0x2000000000;
            *(v44 + 76) = -1;
            *(v44 + 84) = -1;
            *(v44 + 92) = -1;
            *(v44 + 96) = 0;
            *(v44 + 104) = 0;
            v44 += 112;
            --v45;
          }

          while (v45 > 1);
        }
      }
    }

    *(v13 + 155) = v12;
    ++*(v13 + 312);
LABEL_50:
    if (*(v13 + 145))
    {
      v46 = 0;
      v47 = 0;
      v12 = 0;
      while (1)
      {
        v48 = *(v13 + 147) + v46;
        *v48 = -1;
        *(v48 + 16) = 0;
        *(v48 + 24) += 2;
        *(v48 + 88) = 0;
        *(v48 + 96) += 2;
        *(v48 + 152) = 0;
        *(v48 + 160) = 0;
        *(v48 + 168) = 0;
        a5 = *(v13 + 155);
        if (a5 <= v12)
        {
          break;
        }

        v49 = *(v13 + 157) + v47;
        *v49 = 3;
        *(v49 + 8) = 2;
        *(v49 + 28) = -1;
        *(v49 + 20) = -1;
        *(v49 + 12) = -1;
        *(v49 + 36) = 0;
        *(v49 + 40) = 0;
        *(v49 + 44) = _D8;
        *(v49 + 52) = xmmword_1E30A3B60;
        *(v49 + 68) = 0x2000000000;
        *(v49 + 76) = -1;
        *(v49 + 84) = -1;
        *(v49 + 92) = -1;
        *(v49 + 96) = 0;
        *(v49 + 104) = 0;
        ++v12;
        v47 += 112;
        v46 += 184;
        if (*(v13 + 145) <= v12)
        {
          goto LABEL_54;
        }
      }

      v144 = 0;
      v156 = 0u;
      v157 = 0u;
      v154 = 0u;
      v155 = 0u;
      v153 = 0u;
      v120 = MEMORY[0x1E69E9C10];
      v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v145 = 136315906;
      v146 = "operator[]";
      v147 = 1024;
      if (v121)
      {
        v122 = 3;
      }

      else
      {
        v122 = 2;
      }

      v148 = 789;
      v149 = 2048;
      v150 = v12;
      v151 = 2048;
      v152 = a5;
      _os_log_send_and_compose_impl(v122, &v144, &v153, 80, &dword_1E1C61000, v120, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v145, 38, v140, v142);
      _os_crash_msg();
      __break(1u);
      goto LABEL_161;
    }

LABEL_54:
    v50 = *(v13 + 150);
    v12 = "S_4ecs215EntityAssetDataEEE";
    if (v50)
    {
      a5 = 0;
      a4 = 0;
      v5 = 0;
      v6 = -1;
      v7 = 0xFFFFFFFFLL;
      do
      {
        v51 = (*(v13 + 152) + a5);
        v52 = v51[21];
        if (v52)
        {
          (*(**v52 + 56))(*v52, *v51);
          v8 = *(v13 + 160);
          if (v8 <= v5)
          {
            goto LABEL_169;
          }

          v53 = *(v13 + 162) + a4;
          *v53 = 0;
          *(v53 + 8) = -1;
          *(v53 + 16) = 0;
          *(v53 + 20) = 0x203F800000;
          *(v53 + 28) = -1;
          *(v53 + 32) = xmmword_1E3062D70;
          v50 = *(v13 + 150);
        }

        ++v5;
        a4 += 48;
        a5 += 184;
      }

      while (v50 > v5);
    }

    re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureEntry>::resize(v13 + 148, a3);
    v54 = *(v13 + 160);
    if (v54 < a3)
    {
      a4 = v142;
      if (*(v13 + 159) < a3)
      {
        re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(v13 + 158, a3);
        v54 = *(v13 + 160);
      }

      if (a3 > v54)
      {
        v55 = 48 * (a3 - v54);
        if (v55 >= 1)
        {
          v56 = *(v13 + 162) + 48 * v54;
          v57 = v55 / 0x30uLL + 1;
          do
          {
            *v56 = 0;
            *(v56 + 8) = -1;
            *(v56 + 16) = 0;
            *(v56 + 20) = 1065353216;
            *(v56 + 24) = 0xFFFFFFFF00000020;
            *(v56 + 32) = xmmword_1E3062D70;
            v56 += 48;
            --v57;
          }

          while (v57 > 1);
        }
      }

LABEL_69:
      *(v13 + 160) = a3;
      ++*(v13 + 322);
      goto LABEL_70;
    }

    a4 = v142;
    if (v54 > a3)
    {
      goto LABEL_69;
    }

LABEL_70:
    if (!*(v13 + 150))
    {
LABEL_74:
      *(v13 + 163) = a4;
      *(v13 + 164) = v140;
      break;
    }

    v58 = 0;
    a3 = 0;
    v59 = 168;
    while (1)
    {
      v60 = (*(v13 + 152) + v59);
      *(v60 - 21) = -1;
      *(v60 - 19) = 0;
      *(v60 - 36) += 2;
      *(v60 - 10) = 0;
      *(v60 - 18) += 2;
      *(v60 - 2) = 0;
      *(v60 - 8) = 0;
      *v60 = 0;
      a5 = *(v13 + 160);
      if (a5 <= a3)
      {
        break;
      }

      v61 = *(v13 + 162) + v58;
      *v61 = 0;
      *(v61 + 8) = -1;
      *(v61 + 16) = 0;
      *(v61 + 20) = 1065353216;
      *(v61 + 24) = 0xFFFFFFFF00000020;
      *(v61 + 32) = xmmword_1E3062D70;
      ++a3;
      v58 += 48;
      v59 += 184;
      if (*(v13 + 150) <= a3)
      {
        goto LABEL_74;
      }
    }

LABEL_161:
    v144 = 0;
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v153 = 0u;
    v123 = MEMORY[0x1E69E9C10];
    v124 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v145 = 136315906;
    v146 = "operator[]";
    v147 = 1024;
    if (v124)
    {
      v125 = 3;
    }

    else
    {
      v125 = 2;
    }

    v148 = 789;
    v149 = 2048;
    v150 = a3;
    v151 = 2048;
    v152 = a5;
    _os_log_send_and_compose_impl(v125, &v144, &v153, 80, &dword_1E1C61000, v123, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v145, 38, v140, v142);
    _os_crash_msg();
    __break(1u);
LABEL_165:
    v144 = 0;
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v153 = 0u;
    v126 = MEMORY[0x1E69E9C10];
    v127 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v145 = 136315906;
    v146 = "operator[]";
    v147 = 1024;
    if (v127)
    {
      v128 = 3;
    }

    else
    {
      v128 = 2;
    }

    v148 = 789;
    v149 = 2048;
    v150 = v7;
    v151 = 2048;
    v152 = v6;
    _os_log_send_and_compose_impl(v128, &v144, &v153, 80, &dword_1E1C61000, v126, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v145, 38, v140, v142);
    _os_crash_msg();
    __break(1u);
LABEL_169:
    v144 = 0;
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v153 = 0u;
    v129 = MEMORY[0x1E69E9C10];
    v130 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v145 = 136315906;
    v146 = "operator[]";
    v147 = 1024;
    if (v130)
    {
      v131 = 3;
    }

    else
    {
      v131 = 2;
    }

    v148 = 789;
    v149 = 2048;
    v150 = v5;
    v151 = 2048;
    v152 = v8;
    _os_log_send_and_compose_impl(v131, &v144, &v153, 80, &dword_1E1C61000, v129, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v145, 38, v140, v142);
    _os_crash_msg();
    __break(1u);
LABEL_173:
    v144 = 0;
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v153 = 0u;
    v132 = MEMORY[0x1E69E9C10];
    v133 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v145 = 136315906;
    v146 = "operator[]";
    v147 = 1024;
    if (v133)
    {
      v134 = 3;
    }

    else
    {
      v134 = 2;
    }

    v148 = 789;
    v149 = 2048;
    v150 = v5;
    v151 = 2048;
    v152 = a4;
    _os_log_send_and_compose_impl(v134, &v144, &v153, 80, &dword_1E1C61000, v132, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v145, 38, v139, v141);
    _os_crash_msg();
    __break(1u);
LABEL_177:
    v144 = 0;
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v153 = 0u;
    v13 = MEMORY[0x1E69E9C10];
    v135 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v145 = 136315906;
    v146 = "operator[]";
    v147 = 1024;
    if (v135)
    {
      v136 = 3;
    }

    else
    {
      v136 = 2;
    }

    v148 = 789;
    v149 = 2048;
    v150 = v5;
    v151 = 2048;
    v152 = v6;
    _os_log_send_and_compose_impl(v136, &v144, &v153, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v145, 38, v139, v141);
    _os_crash_msg();
    __break(1u);
LABEL_181:
    if (__cxa_guard_acquire(&qword_1EE1B8918))
    {
      re::Defaults::BOOLValue(&v153, "enableRenderGraphResourceCaching", v137);
      if (v153)
      {
        v138 = BYTE1(v153);
      }

      else
      {
        v138 = 1;
      }

      byte_1EE1B88FB = v138;
      __cxa_guard_release(&qword_1EE1B8918);
    }
  }

  *(v13 + 1036) = 0;
  *(v13 + 261) = *(v13 + 258);
  *(v13 + 262) = 2;
  v62 = *(v13 + 11);
  if (v62)
  {
    v63 = *(v13 + 13);
    do
    {
      *v63 += 1000;
      v63 += 3;
      --v62;
    }

    while (v62);
  }

  v64 = *(v13 + 29);
  if (v64)
  {
    v65 = *(v13 + 31);
    do
    {
      *v65 += 1000;
      v65 += 3;
      --v64;
    }

    while (v64);
  }

  v66 = *(v13 + 17);
  if (v66)
  {
    v67 = 0;
    v68 = *(v13 + 19);
    do
    {
      v69 = v68 + 48 * v67;
      v70 = *(v69 + 24);
      if (v70)
      {
        v71 = 0;
        v72 = *(v69 + 40);
        do
        {
          v73 = v72 + 56 * v71;
          v74 = *(v73 + 24);
          if (v74)
          {
            v75 = *(v73 + 40);
            do
            {
              *v75 += 1000;
              v75 += 3;
              --v74;
            }

            while (v74);
          }

          ++v71;
        }

        while (v71 != v70);
      }

      ++v67;
    }

    while (v67 != v66);
  }

  v76 = *(v13 + 48);
  if (v76)
  {
    v77 = 0;
    v78 = *(v13 + 22);
    while (1)
    {
      v79 = *v78;
      v78 += 30;
      if (v79 < 0)
      {
        break;
      }

      if (v76 == ++v77)
      {
        LODWORD(v77) = *(v13 + 48);
        break;
      }
    }
  }

  else
  {
    LODWORD(v77) = 0;
  }

  if (v77 != v76)
  {
    v80 = *(v13 + 22);
    do
    {
      v81 = (v80 + 120 * v77);
      v82 = v81[5];
      if (v82)
      {
        v83 = v81[7];
        do
        {
          *v83 += 1000;
          v83 += 3;
          --v82;
        }

        while (v82);
      }

      v84 = v81[11];
      if (v84)
      {
        v85 = 0;
        v86 = v81[13];
        do
        {
          v87 = v86 + 48 * v85;
          v88 = *(v87 + 24);
          if (v88)
          {
            v89 = 0;
            v90 = *(v87 + 40);
            do
            {
              v91 = v90 + 56 * v89;
              v92 = *(v91 + 24);
              if (v92)
              {
                v93 = *(v91 + 40);
                do
                {
                  *v93 += 1000;
                  v93 += 3;
                  --v92;
                }

                while (v92);
              }

              ++v89;
            }

            while (v89 != v88);
          }

          ++v85;
        }

        while (v85 != v84);
      }

      if (v76 <= v77 + 1)
      {
        v94 = v77 + 1;
      }

      else
      {
        v94 = v76;
      }

      while (v94 - 1 != v77)
      {
        LODWORD(v77) = v77 + 1;
        if ((*(v80 + 120 * v77) & 0x80000000) != 0)
        {
          goto LABEL_117;
        }
      }

      LODWORD(v77) = v94;
LABEL_117:
      ;
    }

    while (v77 != v76);
  }

  v95 = (v13 + 776);
  v96 = 64;
  v97.i64[0] = -1;
  v97.i64[1] = -1;
  do
  {
    v98 = *v95;
    v99 = vmovn_s32(vmvnq_s8(vceqq_s32(*v95, v97)));
    if (v99.i8[0])
    {
      v95->i32[0] = v98.i32[0] + 1000;
    }

    if (v99.i8[2])
    {
      v95->i32[1] = v98.i32[1] + 1000;
    }

    if (v99.i8[4])
    {
      v95->i32[2] = v98.i32[2] + 1000;
    }

    if (v99.i8[6])
    {
      v95->i32[3] = v98.i32[3] + 1000;
    }

    ++v95;
    v96 -= 4;
  }

  while (v96);
  (*(**(v13 + 8) + 72))(*(v13 + 8));
  *(v13 + 112) = 0;
  result = (*(**(v13 + 26) + 72))(*(v13 + 26));
  *(v13 + 256) = 0;
  v101 = *(v13 + 17);
  if (v101)
  {
    for (i = 0; i < v101; ++i)
    {
      v103 = *(v13 + 19) + 48 * i;
      if (*(v103 + 24))
      {
        v104 = 0;
        v105 = 0;
        do
        {
          v106 = (*(v103 + 40) + v104);
          result = (*(**v106 + 72))();
          v106[48] = 0;
          ++v105;
          v104 += 56;
        }

        while (*(v103 + 24) > v105);
        v101 = *(v13 + 17);
      }
    }
  }

  v143 = *(v13 + 48);
  if (v143)
  {
    v107 = 0;
    v108 = *(v13 + 22);
    while (1)
    {
      v109 = *v108;
      v108 += 30;
      if (v109 < 0)
      {
        break;
      }

      if (v143 == ++v107)
      {
        LODWORD(v107) = *(v13 + 48);
        break;
      }
    }
  }

  else
  {
    LODWORD(v107) = 0;
  }

  while (v107 != v143)
  {
    v110 = *(v13 + 22) + 120 * v107;
    v112 = *(v110 + 16);
    v111 = v110 + 16;
    result = (*(*v112 + 72))(v112);
    *(v111 + 48) = 0;
    v113 = *(v111 + 72);
    if (v113)
    {
      for (j = 0; j < v113; ++j)
      {
        v115 = *(v111 + 88) + 48 * j;
        if (*(v115 + 24))
        {
          v116 = 0;
          v117 = 0;
          do
          {
            v118 = (*(v115 + 40) + v116);
            result = (*(**v118 + 72))();
            v118[48] = 0;
            ++v117;
            v116 += 56;
          }

          while (*(v115 + 24) > v117);
          v113 = *(v111 + 72);
        }
      }
    }

    v119 = *(v13 + 48);
    if (v119 <= v107 + 1)
    {
      v119 = v107 + 1;
    }

    while (v119 - 1 != v107)
    {
      LODWORD(v107) = v107 + 1;
      if ((*(*(v13 + 22) + 120 * v107) & 0x80000000) != 0)
      {
        goto LABEL_155;
      }
    }

    LODWORD(v107) = v119;
LABEL_155:
    ;
  }

  return result;
}

void *re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureEntry>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 184 * a2 + 152;
    v9 = a2;
    do
    {
      v10 = v3[4];
      *(v10 + v8) = 0;
      v11 = v10 + v8 - 144;
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v10 + v8 - 72);
      result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v11);
      ++v9;
      v8 += 184;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureEntry>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 184 * v4 + 168;
      do
      {
        v7 = (v3[4] + v6);
        *(v7 - 9) = 0uLL;
        *(v7 - 8) = 0uLL;
        *(v7 - 5) = 0uLL;
        *(v7 - 4) = 0uLL;
        *(v7 - 2) = 0uLL;
        *(v7 - 1) = 0uLL;
        *(v7 - 3) = 0uLL;
        *(v7 - 7) = 0uLL;
        *(v7 - 6) = 0uLL;
        *(v7 - 20) = 0;
        *(v7 - 19) = 0;
        *(v7 - 21) = -1;
        *(v7 - 36) = 1;
        *(v7 - 17) = 0;
        *(v7 - 16) = 0;
        *(v7 - 11) = 0;
        *(v7 - 10) = 0;
        *(v7 - 18) = 1;
        *(v7 - 8) = 0;
        *(v7 - 7) = 0;
        v6 += 184;
        *v7 = 0;
        v7[1] = 0;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

uint64_t re::RenderGraphResourceAllocationManager::onFrameFinish(re::RenderGraphResourceAllocationManager *this)
{
  v1 = this;
  v166 = *MEMORY[0x1E69E9840];
  v2 = *(*(this + 7) + 112);
  if (!v2)
  {
    re::ProfilerConfig::isStatisticCollectionEnabled(this);
    goto LABEL_113;
  }

  v3 = *(v2 + 1648);
  if (v3 && v3[204] == 1 && (v3[17] & 1) == 0)
  {
    goto LABEL_189;
  }

  for (i = 0; ; i = v3[177] & 1)
  {
    v5 = *(v2 + 1664);
    if (v5)
    {
      v5 = re::ProfilerManager::isProcessorEnabled<re::ProfilerFrameStatisticsProcessor,void>(v5);
      i |= v5;
    }

    isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v5);
    if (isStatisticCollectionEnabled && (i & 1) != 0)
    {
      v7 = *(v1 + 17);
      if (v7)
      {
        v8 = 0;
        v9 = 0;
        v10 = *(v1 + 19);
        v11 = 48 * v7;
        do
        {
          v12 = v10[3];
          v8 += v12;
          v13 = *v10;
          v10 += 6;
          v9 += v13 * v12;
          v11 -= 48;
        }

        while (v11);
        v14 = v9 + 0x800000;
        v15 = v8 + 1;
      }

      else
      {
        v15 = 1;
        v14 = 0x800000;
      }

      v16 = *(v1 + 48);
      if (v16)
      {
        v17 = 0;
        v18 = *(v1 + 22);
        while (1)
        {
          v19 = *v18;
          v18 += 30;
          if (v19 < 0)
          {
            break;
          }

          if (v16 == ++v17)
          {
            LODWORD(v17) = *(v1 + 48);
            break;
          }
        }
      }

      else
      {
        LODWORD(v17) = 0;
      }

      if (v17 == v16)
      {
        v20 = 0;
        v21 = 0;
      }

      else
      {
        v21 = 0;
        v20 = 0;
        v22 = *(v1 + 22);
        do
        {
          ++v21;
          v20 += 0x800000;
          v23 = v22 + 120 * v17;
          v24 = *(v23 + 88);
          if (v24)
          {
            v25 = *(v23 + 104);
            v26 = 48 * v24;
            do
            {
              v27 = v25[3];
              v21 += v27;
              v28 = *v25;
              v25 += 6;
              v20 += v28 * v27;
              v26 -= 48;
            }

            while (v26);
          }

          if (v16 <= v17 + 1)
          {
            v29 = v17 + 1;
          }

          else
          {
            v29 = *(v1 + 48);
          }

          while (v29 - 1 != v17)
          {
            LODWORD(v17) = v17 + 1;
            if ((*(v22 + 120 * v17) & 0x80000000) != 0)
            {
              goto LABEL_35;
            }
          }

          LODWORD(v17) = v29;
LABEL_35:
          ;
        }

        while (v17 != v16);
      }

      v30 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
      if (v30)
      {
        v30 = re::profilerThreadContext(v30);
        v31 = *(v30 + 152);
        if (v31)
        {
          v32 = v31[648].u64[0];
          if (v32 >= v21 + v15)
          {
            v32 = v21 + v15;
          }

          v31[648].i64[0] = v32;
          v33 = v31[648].u64[1];
          if (v33 <= v21 + v15)
          {
            v33 = v21 + v15;
          }

          v31[648].i64[1] = v33;
          v34 = vdupq_n_s64(1uLL);
          v34.i64[0] = v21 + v15;
          v31[649] = vaddq_s64(v31[649], v34);
          *(v30 + 184) = 0;
        }
      }

      v35 = re::ProfilerConfig::isStatisticCollectionEnabled(v30);
      if (v35)
      {
        v35 = re::profilerThreadContext(v35);
        v36 = *(v35 + 152);
        if (v36)
        {
          v37 = v36[656].u64[0];
          if (v37 >= v20 + v14)
          {
            v37 = v20 + v14;
          }

          v36[656].i64[0] = v37;
          v38 = v36[656].u64[1];
          if (v38 <= v20 + v14)
          {
            v38 = v20 + v14;
          }

          v36[656].i64[1] = v38;
          v39 = vdupq_n_s64(1uLL);
          v39.i64[0] = v20 + v14;
          v36[657] = vaddq_s64(v36[657], v39);
          *(v35 + 184) = 0;
        }
      }

      v40 = re::ProfilerConfig::isStatisticCollectionEnabled(v35);
      if (v40)
      {
        v40 = re::profilerThreadContext(v40);
        v41 = *(v40 + 152);
        if (v41)
        {
          v42 = v41[664].u64[0];
          if (v42 >= v21)
          {
            v42 = v21;
          }

          v41[664].i64[0] = v42;
          v43 = v41[664].u64[1];
          if (v43 <= v21)
          {
            v43 = v21;
          }

          v41[664].i64[1] = v43;
          v44 = vdupq_n_s64(1uLL);
          v44.i64[0] = v21;
          v41[665] = vaddq_s64(v41[665], v44);
          *(v40 + 184) = 0;
        }
      }

      v45 = re::ProfilerConfig::isStatisticCollectionEnabled(v40);
      if (v45)
      {
        v45 = re::profilerThreadContext(v45);
        v46 = *(v45 + 152);
        if (v46)
        {
          v47 = v46[672].u64[0];
          if (v47 >= v20)
          {
            v47 = v20;
          }

          v46[672].i64[0] = v47;
          v48 = v46[672].u64[1];
          if (v48 <= v20)
          {
            v48 = v20;
          }

          v46[672].i64[1] = v48;
          v49 = vdupq_n_s64(1uLL);
          v49.i64[0] = v20;
          v46[673] = vaddq_s64(v46[673], v49);
          *(v45 + 184) = 0;
        }
      }

      v50 = re::ProfilerConfig::isStatisticCollectionEnabled(v45);
      if (v50)
      {
        v50 = re::profilerThreadContext(v50);
        v51 = *(v50 + 152);
        if (v51)
        {
          v52 = *(v1 + 219);
          v53 = v51[680].u64[0];
          if (v53 >= v52)
          {
            v53 = *(v1 + 219);
          }

          v51[680].i64[0] = v53;
          v54 = v51[680].u64[1];
          if (v54 <= v52)
          {
            v54 = v52;
          }

          v51[680].i64[1] = v54;
          v55 = vdupq_n_s64(1uLL);
          v55.i64[0] = v52;
          v51[681] = vaddq_s64(v51[681], v55);
          *(v50 + 184) = 0;
        }
      }

      v56 = re::ProfilerConfig::isStatisticCollectionEnabled(v50);
      if (v56)
      {
        v56 = re::profilerThreadContext(v56);
        v57 = *(v56 + 152);
        if (v57)
        {
          v58 = *(v1 + 221);
          v59 = v57[696].u64[0];
          if (v59 >= v58)
          {
            v59 = *(v1 + 221);
          }

          v57[696].i64[0] = v59;
          v60 = v57[696].u64[1];
          if (v60 <= v58)
          {
            v60 = v58;
          }

          v57[696].i64[1] = v60;
          v61 = vdupq_n_s64(1uLL);
          v61.i64[0] = v58;
          v57[697] = vaddq_s64(v57[697], v61);
          *(v56 + 184) = 0;
        }
      }

      v62 = re::ProfilerConfig::isStatisticCollectionEnabled(v56);
      if (v62)
      {
        v62 = re::profilerThreadContext(v62);
        v63 = *(v62 + 152);
        if (v63)
        {
          v64 = *(v1 + 215);
          v65 = v63[704].u64[0];
          if (v65 >= v64)
          {
            v65 = *(v1 + 215);
          }

          v63[704].i64[0] = v65;
          v66 = v63[704].u64[1];
          if (v66 <= v64)
          {
            v66 = v64;
          }

          v63[704].i64[1] = v66;
          v67 = vdupq_n_s64(1uLL);
          v67.i64[0] = v64;
          v63[705] = vaddq_s64(v63[705], v67);
          *(v62 + 184) = 0;
        }
      }

      v68 = re::ProfilerConfig::isStatisticCollectionEnabled(v62);
      if (v68)
      {
        v68 = re::profilerThreadContext(v68);
        v69 = *(v68 + 152);
        if (v69)
        {
          v70 = *(v1 + 220);
          v71 = v69[720].u64[0];
          if (v71 >= v70)
          {
            v71 = *(v1 + 220);
          }

          v69[720].i64[0] = v71;
          v72 = v69[720].u64[1];
          if (v72 <= v70)
          {
            v72 = v70;
          }

          v69[720].i64[1] = v72;
          v73 = vdupq_n_s64(1uLL);
          v73.i64[0] = v70;
          v69[721] = vaddq_s64(v69[721], v73);
          *(v68 + 184) = 0;
        }
      }

      v74 = re::ProfilerConfig::isStatisticCollectionEnabled(v68);
      if (v74)
      {
        v74 = re::profilerThreadContext(v74);
        v75 = *(v74 + 152);
        if (v75)
        {
          v76 = *(v1 + 216);
          v77 = v75[712].u64[0];
          if (v77 >= v76)
          {
            v77 = *(v1 + 216);
          }

          v75[712].i64[0] = v77;
          v78 = v75[712].u64[1];
          if (v78 <= v76)
          {
            v78 = v76;
          }

          v75[712].i64[1] = v78;
          v79 = vdupq_n_s64(1uLL);
          v79.i64[0] = v76;
          v75[713] = vaddq_s64(v75[713], v79);
          *(v74 + 184) = 0;
        }
      }

      v80 = re::ProfilerConfig::isStatisticCollectionEnabled(v74);
      if (v80)
      {
        v80 = re::profilerThreadContext(v80);
        v81 = *(v80 + 152);
        if (v81)
        {
          v82 = *(v1 + 217);
          v83 = v81[688].u64[0];
          if (v83 >= v82)
          {
            v83 = *(v1 + 217);
          }

          v81[688].i64[0] = v83;
          v84 = v81[688].u64[1];
          if (v84 <= v82)
          {
            v84 = v82;
          }

          v81[688].i64[1] = v84;
          v85 = vdupq_n_s64(1uLL);
          v85.i64[0] = v82;
          v81[689] = vaddq_s64(v81[689], v85);
          *(v80 + 184) = 0;
        }
      }

      v86 = re::ProfilerConfig::isStatisticCollectionEnabled(v80);
      if (v86)
      {
        v87 = re::profilerThreadContext(v86);
        v88 = *(v87 + 152);
        if (v88)
        {
          v89 = *(v1 + 214);
          v90 = v88[728].u64[0];
          if (v90 >= v89)
          {
            v90 = *(v1 + 214);
          }

          v88[728].i64[0] = v90;
          v91 = v88[728].u64[1];
          if (v91 <= v89)
          {
            v91 = v89;
          }

          v88[728].i64[1] = v91;
          v92 = vdupq_n_s64(1uLL);
          v92.i64[0] = v89;
          v88[729] = vaddq_s64(v88[729], v92);
          *(v87 + 184) = 0;
        }
      }
    }

LABEL_113:
    re::RenderGraphResourceAllocationManager::startSetup(v1);
    v93 = *(v1 + 17);
    if (!v93)
    {
      break;
    }

    v94 = 0;
    v95 = 0;
    v96 = 0;
    while (1)
    {
      v97 = *(v1 + 19) + 48 * v94;
      if (*(v97 + 24) >= 1)
      {
        break;
      }

LABEL_131:
      if (v93 <= ++v94)
      {
        if (v93 && v95 && !v96)
        {
          do
          {
            v105 = *(v1 + 19) + 48 * v96;
            if (*(v105 + 24) >= 1)
            {
              v101 = (*(v105 + 24) & 0x7FFFFFFFLL) + 1;
              v106 = 56 * (*(v105 + 24) & 0x7FFFFFFFLL) - 56;
              do
              {
                v100 = v101 - 2;
                j = *(v105 + 24);
                if (j <= v101 - 2)
                {
                  goto LABEL_198;
                }

                v107 = *(v105 + 40) + v106;
                if (*(v107 + 49) == 1)
                {
                  re::internal::destroyPersistent<re::Heap>(*v107);
                  j = *(v105 + 24);
                  if (j <= v100)
                  {
                    goto LABEL_210;
                  }

                  *(*(v105 + 40) + v106) = 0;
                  re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::removeAt(v105 + 8, v101 - 2);
                }

                --v101;
                v106 -= 56;
              }

              while (v101 > 1);
              v93 = *(v1 + 17);
            }

            ++v96;
          }

          while (v93 > v96);
        }

        goto LABEL_144;
      }
    }

    j = (*(v97 + 24) & 0x7FFFFFFFLL) + 1;
    v99 = 56 * (*(v97 + 24) & 0x7FFFFFFFLL) - 56;
    while (1)
    {
      v100 = j - 2;
      v101 = *(v97 + 24);
      if (v101 <= j - 2)
      {
        break;
      }

      v102 = *(v97 + 40);
      v103 = **(v102 + v99);
      if (*(v1 + 1136) == 1)
      {
        (*(v103 + 88))();
      }

      else
      {
        (*(v103 + 80))();
      }

      v104 = v102 + v99;
      *(v104 + 24) = 0;
      *(v104 + 32) = *(v102 + v99 + 32) + 1;
      if (*(v102 + v99 + 48) == 1)
      {
        if (*(v102 + v99 + 49))
        {
          ++v96;
        }

        else
        {
          ++v95;
        }
      }

      else if ((*(v102 + v99 + 49) & 1) == 0)
      {
        v101 = *(v97 + 24);
        if (v101 <= v100)
        {
          goto LABEL_202;
        }

        re::internal::destroyPersistent<re::Heap>(*(*(v97 + 40) + v99));
        v101 = *(v97 + 24);
        if (v101 <= v100)
        {
          goto LABEL_206;
        }

        *(*(v97 + 40) + v99) = 0;
        re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::removeAt(v97 + 8, j - 2);
      }

      --j;
      v99 -= 56;
      if (j <= 1)
      {
        v93 = *(v1 + 17);
        goto LABEL_131;
      }
    }

LABEL_185:
    v152 = 0;
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    v161 = 0u;
    v1 = MEMORY[0x1E69E9C10];
    v130 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v153 = 136315906;
    v154 = "operator[]";
    v155 = 1024;
    if (v130)
    {
      v131 = 3;
    }

    else
    {
      v131 = 2;
    }

    v156 = 789;
    v157 = 2048;
    v158 = v100;
    v159 = 2048;
    v160 = v101;
    _os_log_send_and_compose_impl(v131, &v152, &v161, 80, &dword_1E1C61000, v1, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v153, 38, v150);
    _os_crash_msg();
    __break(1u);
LABEL_189:
    ;
  }

LABEL_144:
  v108 = **(v1 + 8);
  if (*(v1 + 1136) == 1)
  {
    (*(v108 + 88))();
  }

  else
  {
    (*(v108 + 80))();
  }

  *(v1 + 11) = 0;
  ++*(v1 + 24);
  result = (*(**(v1 + 26) + 80))(*(v1 + 26));
  *(v1 + 29) = 0;
  ++*(v1 + 60);
  v110 = *(v1 + 48);
  if (v110)
  {
    v111 = 0;
    v112 = *(v1 + 22);
    while (1)
    {
      v113 = *v112;
      v112 += 30;
      if (v113 < 0)
      {
        break;
      }

      if (v110 == ++v111)
      {
        LODWORD(v111) = *(v1 + 48);
        break;
      }
    }
  }

  else
  {
    LODWORD(v111) = 0;
  }

  if (v111 == v110)
  {
    return result;
  }

  v151 = *(v1 + 48);
  do
  {
    v114 = *(v1 + 22) + 120 * v111;
    v116 = *(v114 + 16);
    v115 = v114 + 16;
    v117 = *v116;
    if (*(v1 + 1136) == 1)
    {
      result = (*(v117 + 88))();
    }

    else
    {
      result = (*(v117 + 80))();
    }

    *(v115 + 24) = 0;
    ++*(v115 + 32);
    v118 = *(v115 + 72);
    if (!v118)
    {
      goto LABEL_173;
    }

    for (j = 0; j < v118; ++j)
    {
      v119 = *(v115 + 88) + 48 * j;
      if (*(v119 + 24) < 1)
      {
        continue;
      }

      v101 = (*(v119 + 24) & 0x7FFFFFFFLL) + 1;
      v120 = 56 * (*(v119 + 24) & 0x7FFFFFFFLL) - 56;
      do
      {
        v100 = v101 - 2;
        v121 = *(v119 + 24);
        if (v121 <= v101 - 2)
        {
          v152 = 0;
          v164 = 0u;
          v165 = 0u;
          v162 = 0u;
          v163 = 0u;
          v161 = 0u;
          v127 = MEMORY[0x1E69E9C10];
          v128 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v153 = 136315906;
          v154 = "operator[]";
          v155 = 1024;
          if (v128)
          {
            v129 = 3;
          }

          else
          {
            v129 = 2;
          }

          v156 = 789;
          v157 = 2048;
          v158 = v101 - 2;
          v159 = 2048;
          v160 = v121;
          _os_log_send_and_compose_impl(v129, &v152, &v161, 80, &dword_1E1C61000, v127, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v153, 38, v151);
          _os_crash_msg();
          __break(1u);
          goto LABEL_185;
        }

        v122 = *(v119 + 40);
        v123 = **(v122 + v120);
        if (*(v1 + 1136) == 1)
        {
          result = (*(v123 + 88))();
        }

        else
        {
          result = (*(v123 + 80))();
        }

        v124 = v122 + v120;
        *(v124 + 24) = 0;
        *(v124 + 32) = *(v122 + v120 + 32) + 1;
        if ((*(v122 + v120 + 48) & 1) == 0)
        {
          v125 = *(v119 + 24);
          if (v125 <= v100)
          {
            v152 = 0;
            v164 = 0u;
            v165 = 0u;
            v162 = 0u;
            v163 = 0u;
            v161 = 0u;
            v132 = MEMORY[0x1E69E9C10];
            v133 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v153 = 136315906;
            v154 = "operator[]";
            v155 = 1024;
            if (v133)
            {
              v134 = 3;
            }

            else
            {
              v134 = 2;
            }

            v156 = 789;
            v157 = 2048;
            v158 = v101 - 2;
            v159 = 2048;
            v160 = v125;
            _os_log_send_and_compose_impl(v134, &v152, &v161, 80, &dword_1E1C61000, v132, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v153, 38, v151);
            _os_crash_msg();
            __break(1u);
LABEL_194:
            v152 = 0;
            v164 = 0u;
            v165 = 0u;
            v162 = 0u;
            v163 = 0u;
            v161 = 0u;
            v135 = MEMORY[0x1E69E9C10];
            v136 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v153 = 136315906;
            v154 = "operator[]";
            v155 = 1024;
            if (v136)
            {
              v137 = 3;
            }

            else
            {
              v137 = 2;
            }

            v156 = 789;
            v157 = 2048;
            v158 = v101 - 2;
            v159 = 2048;
            v160 = v125;
            _os_log_send_and_compose_impl(v137, &v152, &v161, 80, &dword_1E1C61000, v135, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v153, 38, v151);
            _os_crash_msg();
            __break(1u);
LABEL_198:
            v152 = 0;
            v164 = 0u;
            v165 = 0u;
            v162 = 0u;
            v163 = 0u;
            v161 = 0u;
            v138 = MEMORY[0x1E69E9C10];
            v139 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v153 = 136315906;
            v154 = "operator[]";
            v155 = 1024;
            if (v139)
            {
              v140 = 3;
            }

            else
            {
              v140 = 2;
            }

            v156 = 789;
            v157 = 2048;
            v158 = v100;
            v159 = 2048;
            v160 = j;
            _os_log_send_and_compose_impl(v140, &v152, &v161, 80, &dword_1E1C61000, v138, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v153, 38, v150);
            _os_crash_msg();
            __break(1u);
LABEL_202:
            v152 = 0;
            v164 = 0u;
            v165 = 0u;
            v162 = 0u;
            v163 = 0u;
            v161 = 0u;
            v141 = MEMORY[0x1E69E9C10];
            v142 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v153 = 136315906;
            v154 = "operator[]";
            v155 = 1024;
            if (v142)
            {
              v143 = 3;
            }

            else
            {
              v143 = 2;
            }

            v156 = 789;
            v157 = 2048;
            v158 = v100;
            v159 = 2048;
            v160 = v101;
            _os_log_send_and_compose_impl(v143, &v152, &v161, 80, &dword_1E1C61000, v141, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v153, 38, v150);
            _os_crash_msg();
            __break(1u);
LABEL_206:
            v152 = 0;
            v164 = 0u;
            v165 = 0u;
            v162 = 0u;
            v163 = 0u;
            v161 = 0u;
            v144 = MEMORY[0x1E69E9C10];
            v145 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v153 = 136315906;
            v154 = "operator[]";
            v155 = 1024;
            if (v145)
            {
              v146 = 3;
            }

            else
            {
              v146 = 2;
            }

            v156 = 789;
            v157 = 2048;
            v158 = v100;
            v159 = 2048;
            v160 = v101;
            _os_log_send_and_compose_impl(v146, &v152, &v161, 80, &dword_1E1C61000, v144, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v153, 38, v150);
            _os_crash_msg();
            __break(1u);
LABEL_210:
            v152 = 0;
            v164 = 0u;
            v165 = 0u;
            v162 = 0u;
            v163 = 0u;
            v161 = 0u;
            v147 = MEMORY[0x1E69E9C10];
            v148 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v153 = 136315906;
            v154 = "operator[]";
            v155 = 1024;
            if (v148)
            {
              v149 = 3;
            }

            else
            {
              v149 = 2;
            }

            v156 = 789;
            v157 = 2048;
            v158 = v100;
            v159 = 2048;
            v160 = j;
            _os_log_send_and_compose_impl(v149, &v152, &v161, 80, &dword_1E1C61000, v147, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v153, 38, v150);
            _os_crash_msg();
            __break(1u);
          }

          re::internal::destroyPersistent<re::Heap>(*(*(v119 + 40) + v120));
          v125 = *(v119 + 24);
          if (v125 <= v100)
          {
            goto LABEL_194;
          }

          *(*(v119 + 40) + v120) = 0;
          result = re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::removeAt(v119 + 8, v101 - 2);
        }

        --v101;
        v120 -= 56;
      }

      while (v101 > 1);
      v118 = *(v115 + 72);
    }

LABEL_173:
    v126 = *(v1 + 48);
    if (v126 <= v111 + 1)
    {
      v126 = v111 + 1;
    }

    while (v126 - 1 != v111)
    {
      LODWORD(v111) = v111 + 1;
      if ((*(*(v1 + 22) + 120 * v111) & 0x80000000) != 0)
      {
        goto LABEL_179;
      }
    }

    LODWORD(v111) = v126;
LABEL_179:
    ;
  }

  while (v111 != v151);
  return result;
}

uint64_t re::RenderGraphResourceAllocationManager::startSetup(uint64_t this)
{
  *(this + 1344) = 0;
  ++*(this + 1352);
  *(this + 1384) = 0;
  ++*(this + 1392);
  *(this + 1424) = 0;
  ++*(this + 1432);
  *(this + 1464) = 0;
  ++*(this + 1472);
  *(this + 1504) = 0;
  ++*(this + 1512);
  *(this + 1544) = 0;
  ++*(this + 1552);
  *(this + 1584) = 0;
  ++*(this + 1592);
  *(this + 1624) = 0;
  ++*(this + 1632);
  *(this + 1648) = 1;
  return this;
}

uint64_t re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::removeAt(uint64_t a1, unint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v12 = 0;
    memset(v21, 0, sizeof(v21));
    v9 = MEMORY[0x1E69E9C10];
    v13 = 136315906;
    v14 = "removeAt";
    v15 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v16 = 931;
    v17 = 2048;
    v18 = a2;
    v19 = 2048;
    v20 = v3;
    _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  if (v3 - 1 > a2)
  {
    v5 = *(a1 + 32);
    v6 = v5 + 56 * v3;
    v7 = v5 + 56 * a2;
    *v7 = *(v6 - 56);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v7 + 8, (v6 - 48));
    *(v7 + 48) = *(v6 - 8);
    v3 = *(a1 + 16);
  }

  result = re::DynamicArray<unsigned long>::deinit(*(a1 + 32) + 56 * v3 - 48);
  --*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void re::RenderGraphResourceAllocationManager::waitForFence<re::mtl::RenderCommandEncoder>(void *a1, id *a2)
{
  v2 = a1[209];
  if (v2)
  {
    v5 = (a1[211] + 40);
    while (*(v5 - 4) != *a2)
    {
      v5 += 12;
      if (!--v2)
      {
        goto LABEL_5;
      }
    }

    re::RenderGraphResourceAllocationManager::markLastAccess(a1, *(v5 - 1), *v5);
    v7 = *(v5 - 1);
    if (*(a1 + v7 + 194) != -1)
    {
      [*a2 waitForFence:a1[v7 + 33] beforeStages:*v5];
    }

    if (a1[198])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        [*a2 waitForFence:a1[*(a1[200] + v8 + 4) + 33] beforeStages:*(a1[200] + v8 + 8)];
        ++v9;
        v8 += 12;
      }

      while (a1[198] > v9);
    }
  }

  else
  {
LABEL_5:
    v6 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "ResourceAllocationManager: Failed to find matching encoder", v10, 2u);
    }
  }
}

uint64_t re::RenderGraphResourceAllocationManager::markLastAccess(uint64_t result, uint64_t a2, int a3)
{
  v5 = result;
  v85 = *MEMORY[0x1E69E9840];
  v69 = a2;
  v70 = a3;
  if (*(result + 1648) == 1)
  {
    *(result + 1648) = 0;
    if (*(result + 1344))
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = *(*(result + 1360) + v6);
        v9 = *(result + 1072);
        if (v9 <= v8)
        {
          goto LABEL_79;
        }

        v10 = *(result + 1088) + 184 * v8;
        *(v10 + 16) = 0;
        *(v10 + 24) += 2;
        ++v7;
        v6 += 8;
      }

      while (*(result + 1344) > v7);
    }

    if (*(result + 1424))
    {
      v11 = 0;
      do
      {
        v8 = *(*(result + 1440) + 4 * v11);
        v9 = *(result + 1072);
        if (v9 <= v8)
        {
          goto LABEL_83;
        }

        v12 = *(result + 1088) + 184 * v8;
        *(v12 + 88) = 0;
        *(v12 + 96) += 2;
      }

      while (*(result + 1424) > ++v11);
    }

    if (*(result + 1384))
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v8 = *(*(result + 1400) + v13);
        v9 = *(result + 1112);
        if (v9 <= v8)
        {
          goto LABEL_87;
        }

        v15 = *(result + 1128) + 184 * v8;
        *(v15 + 16) = 0;
        *(v15 + 24) += 2;
        ++v14;
        v13 += 8;
      }

      while (*(result + 1384) > v14);
    }

    if (*(result + 1464))
    {
      v16 = 0;
      while (1)
      {
        v8 = *(*(result + 1480) + 4 * v16);
        v9 = *(result + 1112);
        if (v9 <= v8)
        {
          break;
        }

        v17 = *(result + 1128) + 184 * v8;
        *(v17 + 88) = 0;
        *(v17 + 96) += 2;
        if (*(result + 1464) <= ++v16)
        {
          goto LABEL_18;
        }
      }

LABEL_95:
      v71 = 0;
      v84 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v50 = MEMORY[0x1E69E9C10];
      v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      if (v51)
      {
        v52 = 3;
      }

      else
      {
        v52 = 2;
      }

      v75 = 789;
      v76 = 2048;
      v77 = v8;
      v78 = 2048;
      v79 = v9;
      _os_log_send_and_compose_impl(v52, &v71, &v80, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v72, 38, v68, v69);
      _os_crash_msg();
      __break(1u);
LABEL_99:
      v71 = 0;
      v84 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v53 = MEMORY[0x1E69E9C10];
      v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      if (v54)
      {
        v55 = 3;
      }

      else
      {
        v55 = 2;
      }

      v75 = 789;
      v76 = 2048;
      v77 = v8;
      v78 = 2048;
      v79 = v3;
      _os_log_send_and_compose_impl(v55, &v71, &v80, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v72, 38, v68, v69);
      _os_crash_msg();
      __break(1u);
LABEL_103:
      v71 = 0;
      v84 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v56 = MEMORY[0x1E69E9C10];
      v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      if (v57)
      {
        v58 = 3;
      }

      else
      {
        v58 = 2;
      }

      v75 = 789;
      v76 = 2048;
      v77 = v8;
      v78 = 2048;
      v79 = v3;
      _os_log_send_and_compose_impl(v58, &v71, &v80, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v72, 38, v68, v69);
      _os_crash_msg();
      __break(1u);
LABEL_107:
      v71 = 0;
      v84 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v59 = MEMORY[0x1E69E9C10];
      v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      if (v60)
      {
        v61 = 3;
      }

      else
      {
        v61 = 2;
      }

      v75 = 789;
      v76 = 2048;
      v77 = v8;
      v78 = 2048;
      v79 = v4;
      _os_log_send_and_compose_impl(v61, &v71, &v80, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v72, 38, v68, v69);
      _os_crash_msg();
      __break(1u);
LABEL_111:
      v71 = 0;
      v84 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v62 = MEMORY[0x1E69E9C10];
      v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      if (v63)
      {
        v64 = 3;
      }

      else
      {
        v64 = 2;
      }

      v75 = 789;
      v76 = 2048;
      v77 = v8;
      v78 = 2048;
      v79 = v3;
      _os_log_send_and_compose_impl(v64, &v71, &v80, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v72, 38, v68, v69);
      _os_crash_msg();
      __break(1u);
LABEL_115:
      v71 = 0;
      v84 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v65 = MEMORY[0x1E69E9C10];
      v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v72 = 136315906;
      v73 = "operator[]";
      v74 = 1024;
      if (v66)
      {
        v67 = 3;
      }

      else
      {
        v67 = 2;
      }

      v75 = 789;
      v76 = 2048;
      v77 = v8;
      v78 = 2048;
      v79 = v3;
      _os_log_send_and_compose_impl(v67, &v71, &v80, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v72, 38, v68, v69);
      _os_crash_msg();
      __break(1u);
    }
  }

LABEL_18:
  if (*(result + 1344))
  {
    v9 = 0;
    v18 = 0;
    v3 = 184;
    while (1)
    {
      v8 = *(v5[170] + v9);
      v4 = v5[134];
      if (v4 <= v8)
      {
        break;
      }

      result = re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::indexOf(&v80, v5[136] + 184 * v8 + 8, &v69);
      if ((v80 & 1) == 0)
      {
        v4 = v5[134];
        if (v4 <= v8)
        {
          goto LABEL_91;
        }

        result = re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::add((v5[136] + 184 * v8 + 8), &v69);
      }

      ++v18;
      v9 += 8;
      if (v5[168] <= v18)
      {
        goto LABEL_25;
      }
    }

    v71 = 0;
    v84 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v20 = MEMORY[0x1E69E9C10];
    v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v72 = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    if (v21)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v75 = 789;
    v76 = 2048;
    v77 = v8;
    v78 = 2048;
    v79 = v4;
    _os_log_send_and_compose_impl(v22, &v71, &v80, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v72, 38, v68, v69);
    _os_crash_msg();
    __break(1u);
    goto LABEL_59;
  }

LABEL_25:
  if (v5[178])
  {
    v9 = 0;
    while (1)
    {
      v8 = *(v5[180] + 4 * v9);
      v3 = v5[134];
      if (v3 <= v8)
      {
        break;
      }

      re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::indexOf(&v80, v5[136] + 184 * v8 + 80, &v69);
      if ((v80 & 1) == 0)
      {
        v3 = v5[134];
        if (v3 <= v8)
        {
          goto LABEL_99;
        }

        re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::add((v5[136] + 184 * v8 + 80), &v69);
      }

      v3 = v5[134];
      if (v3 <= v8)
      {
        goto LABEL_63;
      }

      result = re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::indexOf(&v80, v5[136] + 184 * v8 + 8, &v69);
      if ((v80 & 1) == 0)
      {
        v3 = v5[134];
        if (v3 <= v8)
        {
          goto LABEL_103;
        }

        result = re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::add((v5[136] + 184 * v8 + 8), &v69);
      }

      if (v5[178] <= ++v9)
      {
        goto LABEL_36;
      }
    }

LABEL_59:
    v71 = 0;
    v84 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v72 = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v75 = 789;
    v76 = 2048;
    v77 = v8;
    v78 = 2048;
    v79 = v3;
    _os_log_send_and_compose_impl(v25, &v71, &v80, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v72, 38, v68, v69);
    _os_crash_msg();
    __break(1u);
LABEL_63:
    v71 = 0;
    v84 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v72 = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v75 = 789;
    v76 = 2048;
    v77 = v8;
    v78 = 2048;
    v79 = v3;
    _os_log_send_and_compose_impl(v28, &v71, &v80, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v72, 38, v68, v69);
    _os_crash_msg();
    __break(1u);
    goto LABEL_67;
  }

LABEL_36:
  if (v5[173])
  {
    v9 = 0;
    v19 = 0;
    v3 = 184;
    while (1)
    {
      v8 = *(v5[175] + v9);
      v4 = v5[139];
      if (v4 <= v8)
      {
        break;
      }

      result = re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::indexOf(&v80, v5[141] + 184 * v8 + 8, &v69);
      if ((v80 & 1) == 0)
      {
        v4 = v5[139];
        if (v4 <= v8)
        {
          goto LABEL_107;
        }

        result = re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::add((v5[141] + 184 * v8 + 8), &v69);
      }

      ++v19;
      v9 += 8;
      if (v5[173] <= v19)
      {
        goto LABEL_43;
      }
    }

LABEL_67:
    v71 = 0;
    v84 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v29 = MEMORY[0x1E69E9C10];
    v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v72 = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    if (v30)
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    v75 = 789;
    v76 = 2048;
    v77 = v8;
    v78 = 2048;
    v79 = v4;
    _os_log_send_and_compose_impl(v31, &v71, &v80, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v72, 38, v68, v69);
    _os_crash_msg();
    __break(1u);
LABEL_71:
    v71 = 0;
    v84 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v32 = MEMORY[0x1E69E9C10];
    v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v72 = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    if (v33)
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    v75 = 789;
    v76 = 2048;
    v77 = v8;
    v78 = 2048;
    v79 = v3;
    _os_log_send_and_compose_impl(v34, &v71, &v80, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v72, 38, v68, v69);
    _os_crash_msg();
    __break(1u);
LABEL_75:
    v71 = 0;
    v84 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v35 = MEMORY[0x1E69E9C10];
    v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v72 = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    if (v36)
    {
      v37 = 3;
    }

    else
    {
      v37 = 2;
    }

    v75 = 789;
    v76 = 2048;
    v77 = v8;
    v78 = 2048;
    v79 = v3;
    _os_log_send_and_compose_impl(v37, &v71, &v80, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v72, 38, v68, v69);
    _os_crash_msg();
    __break(1u);
LABEL_79:
    v71 = 0;
    v84 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v38 = MEMORY[0x1E69E9C10];
    v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v72 = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    if (v39)
    {
      v40 = 3;
    }

    else
    {
      v40 = 2;
    }

    v75 = 789;
    v76 = 2048;
    v77 = v8;
    v78 = 2048;
    v79 = v9;
    _os_log_send_and_compose_impl(v40, &v71, &v80, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v72, 38, v68, v69);
    _os_crash_msg();
    __break(1u);
LABEL_83:
    v71 = 0;
    v84 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v41 = MEMORY[0x1E69E9C10];
    v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v72 = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    if (v42)
    {
      v43 = 3;
    }

    else
    {
      v43 = 2;
    }

    v75 = 789;
    v76 = 2048;
    v77 = v8;
    v78 = 2048;
    v79 = v9;
    _os_log_send_and_compose_impl(v43, &v71, &v80, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v72, 38, v68, v69);
    _os_crash_msg();
    __break(1u);
LABEL_87:
    v71 = 0;
    v84 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v44 = MEMORY[0x1E69E9C10];
    v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v72 = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    if (v45)
    {
      v46 = 3;
    }

    else
    {
      v46 = 2;
    }

    v75 = 789;
    v76 = 2048;
    v77 = v8;
    v78 = 2048;
    v79 = v9;
    _os_log_send_and_compose_impl(v46, &v71, &v80, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v72, 38, v68, v69);
    _os_crash_msg();
    __break(1u);
LABEL_91:
    v71 = 0;
    v84 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v72 = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    v75 = 789;
    v76 = 2048;
    v77 = v8;
    v78 = 2048;
    v79 = v4;
    _os_log_send_and_compose_impl(v49, &v71, &v80, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v72, 38, v68, v69);
    _os_crash_msg();
    __break(1u);
    goto LABEL_95;
  }

LABEL_43:
  if (v5[183])
  {
    v9 = 0;
    while (1)
    {
      v8 = *(v5[185] + 4 * v9);
      v3 = v5[139];
      if (v3 <= v8)
      {
        goto LABEL_71;
      }

      re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::indexOf(&v80, v5[141] + 184 * v8 + 80, &v69);
      if ((v80 & 1) == 0)
      {
        v3 = v5[139];
        if (v3 <= v8)
        {
          goto LABEL_111;
        }

        re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::add((v5[141] + 184 * v8 + 80), &v69);
      }

      v3 = v5[139];
      if (v3 <= v8)
      {
        goto LABEL_75;
      }

      result = re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::indexOf(&v80, v5[141] + 184 * v8 + 8, &v69);
      if ((v80 & 1) == 0)
      {
        v3 = v5[139];
        if (v3 <= v8)
        {
          goto LABEL_115;
        }

        result = re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::add((v5[141] + 184 * v8 + 8), &v69);
      }

      if (v5[183] <= ++v9)
      {
        return result;
      }
    }
  }

  return result;
}

void re::RenderGraphResourceAllocationManager::onAcquireEncoder<re::mtl::BlitCommandEncoder>(uint64_t a1, id *a2)
{
  v11 = 0;
  v12[0] = 0;
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 272, 8);
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  v5[4] = 0u;
  v5[5] = 0u;
  v5[6] = 0u;
  v5[7] = 0u;
  v5[8] = 0u;
  v5[9] = 0u;
  v5[10] = 0u;
  v5[11] = 0u;
  v5[12] = 0u;
  v5[13] = 0u;
  v5[14] = 0u;
  v5[15] = 0u;
  v5[16] = 0u;
  v12[1] = v5;
  v13 = 0;
  v14 = -1;
  v15 = 2;
  re::ObjCObject::operator=(&v11, a2);
  v14 = *(a1 + 1040);
  v15 = *(a1 + 1048);
  re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::add((a1 + 1656), &v11);
  re::RenderGraphResourceAllocationManager::waitForFence<re::mtl::BlitCommandEncoder>(a1, a2);
  *(a1 + 4 * *(a1 + 1044) + 776) = *(a1 + 1040);
  v6 = *(a1 + 1036) + 1;
  *(a1 + 1036) = v6;
  v7 = *(a1 + 1032) + 1;
  v8 = -v7 < 0;
  v9 = -v7 & 0x3F;
  v10 = v7 & 0x3F;
  if (!v8)
  {
    v10 = -v9;
  }

  *(a1 + 1032) = v10;
  *(a1 + 1040) = v6;
  *(a1 + 1044) = v10;
  *(a1 + 1048) = 2;
  *(a1 + 1649) = 1;

  re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v12);
}

id re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 48 * v4;
  *v5 = *a2;
  re::mtl::RenderCommandEncoder::RenderCommandEncoder((v5 + 8), (a2 + 8));
  result = *(a2 + 24);
  *(v5 + 24) = result;
  v7 = *(a2 + 40);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 40) = v7;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::RenderGraphResourceAllocationManager::waitForFence<re::mtl::BlitCommandEncoder>(void *a1, id *a2)
{
  v2 = a1[209];
  if (v2)
  {
    v5 = (a1[211] + 40);
    while (*(v5 - 5) != *a2)
    {
      v5 += 12;
      if (!--v2)
      {
        goto LABEL_5;
      }
    }

    re::RenderGraphResourceAllocationManager::markLastAccess(a1, *(v5 - 1), *v5);
    v7 = *(v5 - 1);
    if (*(a1 + v7 + 194) != -1)
    {
      [*a2 waitForFence:a1[v7 + 33]];
    }

    v8 = a1[198];
    if (v8)
    {
      v9 = 0;
      for (i = 0; i < v8; ++i)
      {
        v11 = (a1[200] + v9);
        if (*v11 != *(v5 - 2) || *(v11 + 1) != *(v5 - 1))
        {
          [*a2 waitForFence:a1[v11[1] + 33]];
          v8 = a1[198];
        }

        v9 += 12;
      }
    }
  }

  else
  {
LABEL_5:
    v6 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "ResourceAllocationManager: Failed to find matching encoder", v12, 2u);
    }
  }
}

void re::RenderGraphResourceAllocationManager::onAcquireEncoder<re::mtl::ComputeCommandEncoder>(uint64_t a1, id *a2)
{
  v11 = 0;
  v12[0] = 0;
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 272, 8);
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  v5[4] = 0u;
  v5[5] = 0u;
  v5[6] = 0u;
  v5[7] = 0u;
  v5[8] = 0u;
  v5[9] = 0u;
  v5[10] = 0u;
  v5[11] = 0u;
  v5[12] = 0u;
  v5[13] = 0u;
  v5[14] = 0u;
  v5[15] = 0u;
  v5[16] = 0u;
  v12[1] = v5;
  v13 = 0;
  v14 = -1;
  v15 = 2;
  re::ObjCObject::operator=(&v13, a2);
  v14 = *(a1 + 1040);
  v15 = *(a1 + 1048);
  re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::add((a1 + 1656), &v11);
  re::RenderGraphResourceAllocationManager::waitForFence<re::mtl::ComputeCommandEncoder>(a1, a2);
  *(a1 + 4 * *(a1 + 1044) + 776) = *(a1 + 1040);
  v6 = *(a1 + 1036) + 1;
  *(a1 + 1036) = v6;
  v7 = *(a1 + 1032) + 1;
  v8 = -v7 < 0;
  v9 = -v7 & 0x3F;
  v10 = v7 & 0x3F;
  if (!v8)
  {
    v10 = -v9;
  }

  *(a1 + 1032) = v10;
  *(a1 + 1040) = v6;
  *(a1 + 1044) = v10;
  *(a1 + 1048) = 2;
  *(a1 + 1649) = 1;

  re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v12);
}

void re::RenderGraphResourceAllocationManager::waitForFence<re::mtl::ComputeCommandEncoder>(void *a1, id *a2)
{
  v2 = a1[209];
  if (v2)
  {
    v5 = (a1[211] + 40);
    while (*(v5 - 2) != *a2)
    {
      v5 += 12;
      if (!--v2)
      {
        goto LABEL_5;
      }
    }

    re::RenderGraphResourceAllocationManager::markLastAccess(a1, *(v5 - 1), *v5);
    v7 = *(v5 - 1);
    if (*(a1 + v7 + 194) != -1)
    {
      [*a2 waitForFence:a1[v7 + 33]];
    }

    v8 = a1[198];
    if (v8)
    {
      v9 = 0;
      for (i = 0; i < v8; ++i)
      {
        v11 = (a1[200] + v9);
        if (*v11 != *(v5 - 2) || *(v11 + 1) != *(v5 - 1))
        {
          [*a2 waitForFence:a1[v11[1] + 33]];
          v8 = a1[198];
        }

        v9 += 12;
      }
    }
  }

  else
  {
LABEL_5:
    v6 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "ResourceAllocationManager: Failed to find matching encoder", v12, 2u);
    }
  }
}

void re::RenderGraphResourceAllocationManager::onAcquireEncoder<re::mtl::RenderCommandEncoder>(uint64_t a1, id *a2)
{
  v11 = 0;
  v12[0] = 0;
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 272, 8);
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  v5[4] = 0u;
  v5[5] = 0u;
  v5[6] = 0u;
  v5[7] = 0u;
  v5[8] = 0u;
  v5[9] = 0u;
  v5[10] = 0u;
  v5[11] = 0u;
  v5[12] = 0u;
  v5[13] = 0u;
  v5[14] = 0u;
  v5[15] = 0u;
  v5[16] = 0u;
  v12[1] = v5;
  v13 = 0;
  v14 = -1;
  v15 = 2;
  re::mtl::RenderCommandEncoder::operator=(v12, a2);
  v14 = *(a1 + 1040);
  v15 = *(a1 + 1048);
  re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::add((a1 + 1656), &v11);
  re::RenderGraphResourceAllocationManager::waitForFence<re::mtl::RenderCommandEncoder>(a1, a2);
  *(a1 + 4 * *(a1 + 1044) + 776) = *(a1 + 1040);
  v6 = *(a1 + 1036) + 1;
  *(a1 + 1036) = v6;
  v7 = *(a1 + 1032) + 1;
  v8 = -v7 < 0;
  v9 = -v7 & 0x3F;
  v10 = v7 & 0x3F;
  if (!v8)
  {
    v10 = -v9;
  }

  *(a1 + 1032) = v10;
  *(a1 + 1040) = v6;
  *(a1 + 1044) = v10;
  *(a1 + 1048) = 2;
  *(a1 + 1649) = 1;

  re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v12);
}

void re::RenderGraphResourceAllocationManager::addCompleteFence(re::RenderGraphResourceAllocationManager *this, re::mtl::ComputeCommandEncoder *a2)
{
  v2 = *(this + 209);
  if (v2)
  {
    v3 = *a2;
    v4 = (*(this + 211) + 32);
    while (*(v4 - 1) != v3)
    {
      v4 += 6;
      if (!--v2)
      {
        goto LABEL_5;
      }
    }

    v6 = (this + 1608);

    re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add(v6, v4);
  }

  else
  {
LABEL_5:
    v5 = *re::graphicsLogObjects(this);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "ResourceAllocationManager: Failed to find matching encoder", v7, 2u);
    }
  }
}

void re::RenderGraphResourceAllocationManager::onReleaseEncoder<re::mtl::RenderCommandEncoder>(void *a1, void **a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a1[209];
  if (v2)
  {
    v3 = a1;
    v4 = 0;
    v5 = a1[211];
    a1 = *a2;
    v6 = -32;
    while (*(v5 + 8) != a1)
    {
      ++v4;
      v6 -= 48;
      v5 += 48;
      if (v2 == v4)
      {
        goto LABEL_5;
      }
    }

    [a1 updateFence:v3[*(v5 + 36) + 33] afterStages:2];
    v8 = v3[209];
    if (v8 <= v4)
    {
      v12 = 0;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      *buf = 0u;
      v9 = MEMORY[0x1E69E9C10];
      v13 = 136315906;
      v14 = "operator[]";
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v15 = 1024;
      v16 = 789;
      v17 = 2048;
      v18 = v4;
      v19 = 2048;
      v20 = v8;
      _os_log_send_and_compose_impl(v10, &v12, buf, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
      _os_crash_msg();
      __break(1u);
    }

    re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v3 + 201), (v3[211] - v6));

    re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::removeAt((v3 + 207), v4);
  }

  else
  {
LABEL_5:
    v7 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "ResourceAllocationManager: Failed to find matching encoder", buf, 2u);
    }
  }
}

void re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::removeAt(uint64_t a1, unint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v20 = 0;
    memset(v29, 0, sizeof(v29));
    v17 = MEMORY[0x1E69E9C10];
    v21 = 136315906;
    v22 = "removeAt";
    v23 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v24 = 931;
    v25 = 2048;
    v26 = a2;
    v27 = 2048;
    v28 = v3;
    _os_log_send_and_compose_impl(v18, &v20, v29, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
  }

  if (v3 - 1 > a2)
  {
    v5 = *(a1 + 32);
    v6 = v5 + 48 * v3;
    v7 = (v6 - 48);
    v8 = v5 + 48 * a2;
    if (v8 != v6 - 48)
    {
      v9 = *v7;
      *v7 = 0;
      v10 = *v8;
      *v8 = v9;
    }

    re::mtl::RenderCommandEncoder::operator=((v8 + 8), (v6 - 40));
    v11 = (v8 + 24);
    v12 = (v6 - 24);
    if (v8 + 24 != v6 - 24)
    {
      v13 = *v12;
      *v12 = 0;
      v14 = *v11;
      *v11 = v13;
    }

    v15 = *(v6 - 16);
    *(v8 + 40) = *(v6 - 8);
    *(v8 + 32) = v15;
    v3 = *(a1 + 16);
  }

  v16 = *(a1 + 32) + 48 * v3;

  re::mtl::RenderCommandEncoder::~RenderCommandEncoder((v16 - 40));
  --*(a1 + 16);
  ++*(a1 + 24);
}

void re::RenderGraphResourceAllocationManager::onReleaseEncoder<re::mtl::BlitCommandEncoder>(void *a1, void **a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a1[209];
  if (v2)
  {
    v3 = a1;
    v4 = 0;
    v5 = a1[211];
    a1 = *a2;
    v6 = -32;
    while (*v5 != a1)
    {
      ++v4;
      v6 -= 48;
      v5 += 48;
      if (v2 == v4)
      {
        goto LABEL_5;
      }
    }

    [a1 updateFence:v3[*(v5 + 36) + 33]];
    v8 = v3[209];
    if (v8 <= v4)
    {
      v12 = 0;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      *buf = 0u;
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
      v18 = v4;
      v19 = 2048;
      v20 = v8;
      _os_log_send_and_compose_impl(v10, &v12, buf, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
      _os_crash_msg();
      __break(1u);
    }

    re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v3 + 201), (v3[211] - v6));

    re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::removeAt((v3 + 207), v4);
  }

  else
  {
LABEL_5:
    v7 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "ResourceAllocationManager: Failed to find matching encoder", buf, 2u);
    }
  }
}

void re::RenderGraphResourceAllocationManager::onReleaseEncoder<re::mtl::ComputeCommandEncoder>(void *a1, void **a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a1[209];
  if (v2)
  {
    v3 = a1;
    v4 = 0;
    v5 = a1[211];
    a1 = *a2;
    v6 = -32;
    while (*(v5 + 24) != a1)
    {
      ++v4;
      v6 -= 48;
      v5 += 48;
      if (v2 == v4)
      {
        goto LABEL_5;
      }
    }

    [a1 updateFence:v3[*(v5 + 36) + 33]];
    v8 = v3[209];
    if (v8 <= v4)
    {
      v12 = 0;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      *buf = 0u;
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
      v18 = v4;
      v19 = 2048;
      v20 = v8;
      _os_log_send_and_compose_impl(v10, &v12, buf, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
      _os_crash_msg();
      __break(1u);
    }

    re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v3 + 201), (v3[211] - v6));

    re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::removeAt((v3 + 207), v4);
  }

  else
  {
LABEL_5:
    v7 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "ResourceAllocationManager: Failed to find matching encoder", buf, 2u);
    }
  }
}

_anonymous_namespace_ *re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureIndexAndStage>::add(_anonymous_namespace_ *this, void *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureIndexAndStage>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  *(*(v3 + 4) + 8 * v4) = *a2;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

_anonymous_namespace_ *re::RenderGraphResourceAllocationManager::processResourceHazards(_anonymous_namespace_ *this)
{
  v2 = this;
  v57 = *MEMORY[0x1E69E9840];
  v3 = *(this + 168);
  if (v3)
  {
    v1 = *(this + 170);
    v4 = v1 + 8 * v3;
    do
    {
      v5 = *v1;
      v6 = *(v1 + 4);
      v1 += 8;
      LODWORD(v52) = v5;
      BYTE4(v52) = 0;
      DWORD2(v52) = v6;
      this = re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v2 + 1488), &v52);
    }

    while (v1 != v4);
  }

  v7 = *(v2 + 178);
  if (v7)
  {
    v1 = *(v2 + 180);
    v8 = 4 * v7;
    do
    {
      v9 = *v1;
      v1 += 4;
      LODWORD(v52) = v9;
      BYTE4(v52) = 1;
      DWORD2(v52) = 2;
      this = re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v2 + 1488), &v52);
      v8 -= 4;
    }

    while (v8);
  }

  v10 = *(v2 + 173);
  if (v10)
  {
    v1 = *(v2 + 175);
    v11 = v1 + 8 * v10;
    do
    {
      v12 = *v1;
      v13 = *(v1 + 4);
      v1 += 8;
      LODWORD(v52) = v12;
      BYTE4(v52) = 0;
      DWORD2(v52) = v13;
      this = re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v2 + 1528), &v52);
    }

    while (v1 != v11);
  }

  v14 = *(v2 + 183);
  if (v14)
  {
    v1 = *(v2 + 185);
    v15 = 4 * v14;
    do
    {
      v16 = *v1;
      v1 += 4;
      LODWORD(v52) = v16;
      BYTE4(v52) = 1;
      DWORD2(v52) = 2;
      this = re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v2 + 1528), &v52);
      v15 -= 4;
    }

    while (v15);
  }

  v17 = *(v2 + 188);
  if (v17)
  {
    v18 = 0;
    while (1)
    {
      v19 = (*(v2 + 190) + 12 * v18);
      v20 = *v19;
      v21 = *(v2 + 134);
      if (v21 <= v20)
      {
        break;
      }

      v22 = *(v2 + 136) + 184 * v20;
      if (*(v19 + 4))
      {
        v23 = 8;
      }

      else
      {
        v23 = 80;
      }

      v24 = v22 + v23;
      if (*(v22 + v23 + 8))
      {
        v25 = 0;
        v26 = 0;
        do
        {
          v27 = v24 + 24;
          if ((*(v24 + 16) & 1) == 0)
          {
            v27 = *(v24 + 32);
          }

          v1 = v1 & 0xFFFFFFFF00000000 | v19[2];
          this = re::RenderGraphResourceAllocationManager::SetupData::addUniqueFence((v2 + 1328), *(v27 + v25), v1);
          ++v26;
          v25 += 12;
        }

        while (*(v24 + 8) > v26);
        v17 = *(v2 + 188);
      }

      if (v17 <= ++v18)
      {
        goto LABEL_26;
      }
    }

    v43 = 0;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v52 = 0u;
    v37 = MEMORY[0x1E69E9C10];
    v44 = 136315906;
    v45 = "operator[]";
    v46 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v38 = 3;
    }

    else
    {
      v38 = 2;
    }

    v47 = 789;
    v48 = 2048;
    v49 = v20;
    v50 = 2048;
    v51 = v21;
    _os_log_send_and_compose_impl(v38, &v43, &v52, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v44, 38, v42);
    _os_crash_msg();
    __break(1u);
LABEL_44:
    v43 = 0;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v52 = 0u;
    v39 = MEMORY[0x1E69E9C10];
    v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v44 = 136315906;
    v45 = "operator[]";
    v46 = 1024;
    if (v40)
    {
      v41 = 3;
    }

    else
    {
      v41 = 2;
    }

    v47 = 789;
    v48 = 2048;
    v49 = v20;
    v50 = 2048;
    v51 = v21;
    _os_log_send_and_compose_impl(v41, &v43, &v52, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v44, 38, v42);
    _os_crash_msg();
    __break(1u);
  }

LABEL_26:
  v28 = *(v2 + 193);
  if (v28)
  {
    v29 = 0;
    while (1)
    {
      v30 = (*(v2 + 195) + 12 * v29);
      v20 = *v30;
      v21 = *(v2 + 139);
      if (v21 <= v20)
      {
        break;
      }

      v31 = *(v2 + 141) + 184 * v20;
      if (*(v30 + 4))
      {
        v32 = 8;
      }

      else
      {
        v32 = 80;
      }

      v33 = v31 + v32;
      if (*(v31 + v32 + 8))
      {
        v34 = 0;
        v35 = 0;
        do
        {
          v36 = v33 + 24;
          if ((*(v33 + 16) & 1) == 0)
          {
            v36 = *(v33 + 32);
          }

          v1 = v1 & 0xFFFFFFFF00000000 | v30[2];
          this = re::RenderGraphResourceAllocationManager::SetupData::addUniqueFence((v2 + 1328), *(v36 + v34), v1);
          ++v35;
          v34 += 12;
        }

        while (*(v33 + 8) > v35);
        v28 = *(v2 + 193);
      }

      if (v28 <= ++v29)
      {
        return this;
      }
    }

    goto LABEL_44;
  }

  return this;
}

uint64_t re::RenderGraphResourceAllocationManager::heapGroupHierarchyFor(re::RenderGraphResourceAllocationManager *this, unint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return this + 64;
  }

  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v5 = v4 ^ (v4 >> 31);
  re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v22, this + 160, a2, v5);
  if (HIDWORD(v22) != 0x7FFFFFFF)
  {
    return *(this + 22) + 120 * HIDWORD(v22) + 16;
  }

  v28 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  memset(v29, 0, 24);
  re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v29, this + 160, a2, v5);
  if (*&v29[12] == 0x7FFFFFFF)
  {
    v6 = re::HashTable<unsigned long long,re::RenderGraphResourceAllocationManager::HeapGroupHierarchy,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(this + 160, *&v29[8], *v29);
    *(v6 + 16) = 0u;
    v7 = v6 + 16;
    *(v6 + 8) = a2;
    *(&v22 + 1) = 0;
    *(v6 + 32) = 0u;
    v23 = 0u;
    *(v6 + 56) = 0;
    LODWORD(v24) = 1;
    *(v6 + 48) = 1;
    *(v6 + 64) = 0;
    *(&v24 + 1) = 0;
    *(&v25 + 1) = 0;
    *(v6 + 72) = 0u;
    *(v6 + 88) = 0;
    v26 = 0u;
    *(v6 + 104) = 0;
    v28 = 0;
    v27 = 1;
    *(v6 + 96) = 1;
    ++*(this + 50);
  }

  else
  {
    v7 = *(this + 22) + 120 * *&v29[12] + 16;
  }

  re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapGroup>::deinit(&v25 + 8);
  if (*(&v22 + 1) && *(&v24 + 1))
  {
    (*(**(&v22 + 1) + 40))();
  }

  re::RenderGraphResourceAllocationManager::allocateSmallBlockHeap(&v22, this, a2);
  *v7 = v22;
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v7 + 8, &v22 + 1);
  *(v7 + 48) = v25;
  if (*(&v22 + 1) && *(&v24 + 1))
  {
    (*(**(&v22 + 1) + 40))();
  }

  v8 = *(this + 2);
  if (v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = *(*(this + 4) + 8 * v9++);
      if (v10 >> 30)
      {
        break;
      }

      if (v8 == v9)
      {
        goto LABEL_20;
      }
    }

    v8 = v9;
  }

LABEL_20:
  re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapGroup>::resize((v7 + 56), v8);
  if (*(v7 + 72))
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = re::RenderGraphResourceAllocationManager::indexToSize(this, v12);
      v14 = *(v7 + 72);
      if (v14 <= v12)
      {
        v21 = 0;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        v17 = MEMORY[0x1E69E9C10];
        v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v29 = 136315906;
        *&v29[4] = "operator[]";
        *&v29[12] = 1024;
        if (v18)
        {
          v19 = 3;
        }

        else
        {
          v19 = 2;
        }

        *&v29[14] = 789;
        *&v29[18] = 2048;
        *&v29[20] = v12;
        v30 = 2048;
        v31 = v14;
        _os_log_send_and_compose_impl(v19, &v21, &v22, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v29, 38, v20);
        _os_crash_msg();
        __break(1u);
      }

      v15 = (*(v7 + 88) + v11);
      *v15 = v13;
      if (v15[2] <= 0x7F)
      {
        re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::setCapacity(v15 + 1, 0x80uLL);
        v14 = *(v7 + 72);
      }

      ++v12;
      v11 += 48;
    }

    while (v14 > v12);
  }

  return v7;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::add(_anonymous_namespace_ *result, uint64_t *a2)
{
  v3 = result;
  if (!*result)
  {
    v10 = *(v3 + 1);
    result = re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::setCapacity(v3, v10 + 1);
    v11 = *(v3 + 4) + 2;
    *(v3 + 4) = v11;
    if ((v11 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v12 = v3 + 24;
    goto LABEL_19;
  }

  v4 = *(result + 1);
  v5 = *(result + 4);
  if ((v5 & 1) == 0)
  {
    v6 = *(result + 3);
    v8 = v4 >= v6;
    v7 = v4 + 1;
    v8 = !v8 || v6 >= v7;
    if (!v8)
    {
      v9 = 2 * v6;
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v7 = v4 + 1;
  if (v7 < 5)
  {
LABEL_11:
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  v9 = 8;
LABEL_14:
  if (v9 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v9;
  }

  result = re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::setCapacity(result, v13);
  if (*(v3 + 4))
  {
    goto LABEL_18;
  }

LABEL_12:
  v12 = *(v3 + 4);
LABEL_19:
  v14 = &v12[12 * *(v3 + 1)];
  v15 = *a2;
  *(v14 + 2) = *(a2 + 2);
  *v14 = v15;
  ++*(v3 + 1);
  *(v3 + 4) += 2;
  return result;
}

uint64_t DeviceHeap::name(DeviceHeap *this)
{
  if (*(this + 32))
  {
    return *(this + 5);
  }

  else
  {
    return this + 33;
  }
}

id DeviceHeap::texture@<X0>(DeviceHeap *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = *(this + 9);
  if (v5 <= a2)
  {
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v7 = MEMORY[0x1E69E9C10];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v14 = 789;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  result = *(*(this + 11) + 8 * a2);
  *a3 = result;
  return result;
}

id DeviceHeap::buffer@<X0>(DeviceHeap *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = *(this + 14);
  if (v5 <= a2)
  {
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v7 = MEMORY[0x1E69E9C10];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v14 = 789;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  result = *(*(this + 16) + 8 * a2);
  *a3 = result;
  return result;
}

uint64_t MetalHeap::name(MetalHeap *this)
{
  if (*(this + 40))
  {
    return *(this + 6);
  }

  else
  {
    return this + 41;
  }
}

id *MetalHeap::texture@<X0>(MetalHeap *this@<X0>, uint64_t a2@<X1>, id **a3@<X8>)
{
  result = re::DataArray<re::TextureAtlasTile>::tryGet(this + 64, a2);
  if (result)
  {
    result = *result;
  }

  *a3 = result;
  return result;
}

id *MetalHeap::buffer@<X0>(MetalHeap *this@<X0>, uint64_t a2@<X1>, id **a3@<X8>)
{
  result = re::DataArray<re::TextureAtlasTile>::tryGet(this + 128, a2);
  if (result)
  {
    result = *result;
  }

  *a3 = result;
  return result;
}

uint64_t MetalPlacementHeap::name(MetalPlacementHeap *this)
{
  if (*(this + 40))
  {
    return *(this + 6);
  }

  else
  {
    return this + 41;
  }
}

id *MetalPlacementHeap::texture@<X0>(MetalPlacementHeap *this@<X0>, uint64_t a2@<X1>, id **a3@<X8>)
{
  result = re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::tryGet(this + 64, a2);
  if (result)
  {
    result = *result;
  }

  *a3 = result;
  return result;
}

id *MetalPlacementHeap::buffer@<X0>(MetalPlacementHeap *this@<X0>, uint64_t a2@<X1>, id **a3@<X8>)
{
  result = re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::tryGet(this + 128, a2);
  if (result)
  {
    result = *result;
  }

  *a3 = result;
  return result;
}

uint64_t CachingHeap::name(CachingHeap *this)
{
  if (*(this + 32))
  {
    return *(this + 5);
  }

  else
  {
    return this + 33;
  }
}

id CachingHeap::texture@<X0>(CachingHeap *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = *(this + 9);
  if (v5 <= a2)
  {
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v7 = MEMORY[0x1E69E9C10];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v14 = 789;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  result = *(*(this + 11) + 8 * a2);
  *a3 = result;
  return result;
}

id CachingHeap::buffer@<X0>(CachingHeap *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = *(this + 14);
  if (v5 <= a2)
  {
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v7 = MEMORY[0x1E69E9C10];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v14 = 789;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v5;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  result = *(*(this + 16) + 8 * a2);
  *a3 = result;
  return result;
}

uint64_t re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapGroup>::deinit(uint64_t a1)
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
        v5 = 48 * v4;
        v6 = v3 + 8;
        do
        {
          re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::deinit(v6);
          v6 += 48;
          v5 -= 48;
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

uint64_t re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::deinit(uint64_t a1)
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
        v5 = 56 * v4;
        v6 = v3 + 8;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v6);
          v6 += 56;
          v5 -= 56;
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

uint64_t re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      if (*a2 && *a1 != *a2)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 527);
        result = _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
        __break(1u);
        return result;
      }
    }

    if (*(a2 + 16))
    {
      if (*(a2 + 8))
      {
        re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::move(a1, a2);
      }

      else
      {
        re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
        *a1 = *a2;
        *(a2 + 16) += 2;
        *(a1 + 16) += 2;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      *(a1 + 16) += 2;
      re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(a1, a2);
    }
  }

  return a1;
}

void *re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::move(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  if (v4 >= *(a1 + 8))
  {
    re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::setCapacity(a1, v4);
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
        v13 = (v11 + 12 * v12);
        if (*(a2 + 16))
        {
          v14 = a2 + 24;
        }

        else
        {
          v14 = *(a2 + 32);
        }

        result = memcpy(v13, (v14 + 12 * v12), 12 * (v4 - v12));
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

    memmove(v10, v7, 12 * v8);
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
    result = memmove(result, v5, 12 * v4);
  }

LABEL_25:
  *(a1 + 8) = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) += 4;
  *(a1 + 16) += 2;
  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::setCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 4;
  }

  else
  {
    v8 = *(result + 3);
  }

  if (v8 != a2)
  {
    v9 = *(result + 1);
    if (v9 <= a2 && (a2 > 4 || (v7 & 1) == 0))
    {
      if (a2 < 5)
      {
        v14 = (result + 24);
        v15 = *(v4 + 4);
        if (v7)
        {
          v16 = v4 + 24;
        }

        else
        {
          v16 = *(v4 + 4);
        }

        memcpy(v14, v16, 12 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (is_mul_ok(a2, 0xCuLL))
      {
        v2 = 12 * a2;
        v10 = (*(*v5 + 32))(*result, 12 * a2, 4);
        if (v10)
        {
          v12 = v10;
          if (*(v4 + 16))
          {
            v13 = v4 + 24;
          }

          else
          {
            v13 = *(v4 + 4);
          }

          result = memcpy(v10, v13, 12 * *(v4 + 1));
          v17 = *(v4 + 4);
          if ((v17 & 1) == 0)
          {
            result = (*(**v4 + 40))(*v4, *(v4 + 4));
            v17 = *(v4 + 4);
          }

          *(v4 + 4) = v17 & 0xFFFFFFFE;
          *(v4 + 3) = a2;
          *(v4 + 4) = v12;
          return result;
        }
      }

      else
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 12, a2);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", v18, v20);
        __break(1u);
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
      result = _os_crash("assertion failure: (newData) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", v19, v21);
      __break(1u);
    }
  }

  return result;
}

uint64_t re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::copy(a1, a2);
      }

      else
      {
        *(a1 + 8) = 0;
      }

      *(a1 + 16) += 2;
    }

    else if (v4)
    {
      v5 = a2[1];
      *a1 = v4;
      re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::setCapacity(a1, v5);
      *(a1 + 16) += 2;
      re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::copy(a1, a2);
    }
  }

  return a1;
}

void *re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 >= *(a1 + 8))
  {
    re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::setCapacity(a1, *(a2 + 8));
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
        v13 = (v11 + 12 * v12);
        if (*(a2 + 16))
        {
          v14 = a2 + 24;
        }

        else
        {
          v14 = *(a2 + 32);
        }

        result = memcpy(v13, (v14 + 12 * v12), 12 * (v4 - v12));
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

    memmove(v10, v7, 12 * v8);
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
    result = memmove(result, v5, 12 * v4);
  }

LABEL_25:
  *(a1 + 8) = v4;
  return result;
}

_anonymous_namespace_ *re::DataArray<MetalHeap::TextureEntry>::allocBlock(void *a1)
{
  v3 = 24 * *(a1 + 11);
  v4 = (*(**a1 + 32))(*a1, v3, 0);
  if (!v4)
  {
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v3, *(*a1 + 8));
    _os_crash("assertion failure: (block.elements) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v16, v18);
    __break(1u);
    goto LABEL_16;
  }

  v6 = v4;
  v1 = 4 * *(a1 + 11);
  result = (*(**a1 + 32))(*a1, v1, 0);
  if (!result)
  {
LABEL_16:
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v1, *(*a1 + 8));
    result = _os_crash("assertion failure: (block.allocationCounters) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v17, v19);
    __break(1u);
    return result;
  }

  v9 = result;
  v11 = a1[1];
  v10 = a1[2];
  if (v10 >= v11)
  {
    v12 = v10 + 1;
    if (v11 < v10 + 1)
    {
      if (*a1)
      {
        v13 = 2 * v11;
        if (!v11)
        {
          v13 = 8;
        }

        if (v13 <= v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v13;
        }

        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v14);
      }

      else
      {
        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v12);
        ++*(a1 + 6);
      }
    }

    v10 = a1[2];
  }

  v15 = (a1[4] + 16 * v10);
  *v15 = v6;
  v15[1] = v9;
  a1[2] = v10 + 1;
  ++*(a1 + 6);
  *(a1 + 12) = 0;
  return result;
}

_anonymous_namespace_ *re::DataArray<MetalPlacementHeap::TextureEntry>::allocBlock(void *a1)
{
  v3 = 40 * *(a1 + 11);
  v4 = (*(**a1 + 32))(*a1, v3, 0);
  if (!v4)
  {
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v3, *(*a1 + 8));
    _os_crash("assertion failure: (block.elements) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v16, v18);
    __break(1u);
    goto LABEL_16;
  }

  v6 = v4;
  v1 = 4 * *(a1 + 11);
  result = (*(**a1 + 32))(*a1, v1, 0);
  if (!result)
  {
LABEL_16:
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v1, *(*a1 + 8));
    result = _os_crash("assertion failure: (block.allocationCounters) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v17, v19);
    __break(1u);
    return result;
  }

  v9 = result;
  v11 = a1[1];
  v10 = a1[2];
  if (v10 >= v11)
  {
    v12 = v10 + 1;
    if (v11 < v10 + 1)
    {
      if (*a1)
      {
        v13 = 2 * v11;
        if (!v11)
        {
          v13 = 8;
        }

        if (v13 <= v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v13;
        }

        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v14);
      }

      else
      {
        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v12);
        ++*(a1 + 6);
      }
    }

    v10 = a1[2];
  }

  v15 = (a1[4] + 16 * v10);
  *v15 = v6;
  v15[1] = v9;
  a1[2] = v10 + 1;
  ++*(a1 + 6);
  *(a1 + 12) = 0;
  return result;
}

uint64_t re::HashTable<CachingHeap::TextureCacheKey,re::DynamicArray<CachingHeap::TextureEntry>,CachingHeap::TextureCacheKeyHasher,CachingHeap::TextureCacheKeyEqualTo,true,false>::EntryBase::free(uint64_t result)
{
  if ((*result & 0x80000000) != 0)
  {
    v2 = result;
    *result &= ~0x80000000;
    v3 = *(result + 8);
    if (v3)
    {

      *(v2 + 8) = 0;
    }

    return re::DynamicArray<CachingHeap::TextureEntry>::deinit(v2 + 24);
  }

  return result;
}

double re::HashTable<CachingHeap::TextureCacheKey,re::DynamicArray<CachingHeap::TextureEntry>,CachingHeap::TextureCacheKeyHasher,CachingHeap::TextureCacheKeyEqualTo,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<CachingHeap::TextureCacheKey,re::DynamicArray<CachingHeap::TextureEntry>,CachingHeap::TextureCacheKeyHasher,CachingHeap::TextureCacheKeyEqualTo,true,false>::EntryBase::free(a1[2] + v3);
        ++v4;
        v3 += 72;
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

id re::HashTable<CachingHeap::TextureCacheKey,re::DynamicArray<CachingHeap::TextureEntry>,CachingHeap::TextureCacheKeyHasher,CachingHeap::TextureCacheKeyEqualTo,true,false>::findEntry<CachingHeap::TextureCacheKey>(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(a3 + 8)) ^ ((0xBF58476D1CE4E5B9 * *(a3 + 8)) >> 27));
  v7 = v6 ^ (v6 >> 31);
  result = [*a3 hash];
  v9 = (result + 64 * v7 + (v7 >> 2) - 0x61C8864680B583E9) ^ v7;
  v10 = 0x7FFFFFFF;
  if (*a2)
  {
    v11 = v9 % *(a2 + 24);
    v12 = *(*(a2 + 8) + 4 * v11);
    if (v12 != 0x7FFFFFFF)
    {
      v13 = *(a2 + 16);
      v10 = 0x7FFFFFFF;
      v14 = 0x7FFFFFFF;
      while (1)
      {
        v15 = v12;
        v16 = v13 + 72 * v12;
        if (*(v16 + 16) == *(a3 + 8))
        {
          result = [*(v16 + 8) isEqual_];
          if (result)
          {
            v10 = v15;
            goto LABEL_11;
          }

          v13 = *(a2 + 16);
        }

        v12 = *(v13 + 72 * v15) & 0x7FFFFFFF;
        v14 = v15;
        if (v12 == 0x7FFFFFFF)
        {
          v14 = v15;
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    LODWORD(v11) = 0;
  }

  v14 = 0x7FFFFFFF;
LABEL_11:
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 12) = v10;
  *(a1 + 16) = v14;
  return result;
}

void *re::DynamicArray<CachingHeap::TextureEntry>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<CachingHeap::TextureEntry>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v12, v14);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v13, v15);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_18:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 40 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          *v8 = 0;
          *(v11 + 8) = *(v8 + 8);
          v11[2] = *(v8 + 16);
          *(v11 + 3) = *(v8 + 24);
          *(v8 + 16) = 0;
          if (*v8)
          {

            *v8 = 0;
          }

          v8 += 40;
          v11 += 5;
          v10 -= 40;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t re::DynamicArray<CachingHeap::TextureEntry>::deinit(uint64_t a1)
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
        v5 = 40 * v4;
        do
        {
          *(v3 + 16) = 0;
          if (*v3)
          {

            *v3 = 0;
          }

          v3 += 40;
          v5 -= 40;
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

uint64_t re::HashTable<CachingHeap::TextureCacheKey,re::DynamicArray<CachingHeap::TextureEntry>,CachingHeap::TextureCacheKeyHasher,CachingHeap::TextureCacheKeyEqualTo,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
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
          memset(v28, 0, 36);
          *&v28[36] = 0x7FFFFFFFLL;
          re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v28, v9, v8);
          v11 = *v28;
          *v28 = *a1;
          *a1 = v11;
          v12 = *&v28[16];
          v13 = *(a1 + 16);
          *&v28[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v28[24];
          *&v28[24] = *(a1 + 24);
          v14 = *&v28[32];
          *(a1 + 24) = v15;
          ++*&v28[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 32);
            do
            {
              if ((*(v17 - 4) & 0x80000000) != 0)
              {
                v18 = re::HashTable<CachingHeap::TextureCacheKey,re::DynamicArray<CachingHeap::TextureEntry>,CachingHeap::TextureCacheKeyHasher,CachingHeap::TextureCacheKeyEqualTo,true,false>::allocEntry(a1, v17[4] % *(a1 + 24), v17[4]);
                *(v18 + 8) = *(v17 - 3);
                *(v17 - 3) = 0;
                *(v18 + 16) = *(v17 - 16);
                *(v18 + 56) = 0;
                *(v18 + 32) = 0;
                *(v18 + 40) = 0;
                *(v18 + 24) = 0;
                *(v18 + 48) = 0;
                v19 = *v17;
                *(v18 + 24) = *(v17 - 1);
                *(v18 + 32) = v19;
                *(v17 - 1) = 0;
                *v17 = 0;
                v20 = *(v18 + 40);
                *(v18 + 40) = v17[1];
                v17[1] = v20;
                v21 = *(v18 + 56);
                *(v18 + 56) = v17[3];
                v17[3] = v21;
                ++*(v17 + 4);
                ++*(v18 + 48);
              }

              v17 += 9;
              --v16;
            }

            while (v16);
          }

          re::HashTable<CachingHeap::TextureCacheKey,re::DynamicArray<CachingHeap::TextureEntry>,CachingHeap::TextureCacheKeyHasher,CachingHeap::TextureCacheKeyEqualTo,true,false>::deinit(v28);
        }
      }

      else
      {
        if (v8)
        {
          v24 = 2 * v7;
        }

        else
        {
          v24 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v22 = *(a1 + 16);
    v23 = *(v22 + 72 * v5);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 72 * v5);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  v25 = v22 + 72 * v5;
  *v25 = v23 | 0x80000000;
  v26 = *(a1 + 8);
  *v25 = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v5;
  *(v25 + 64) = a3;
  ++*(a1 + 28);
  return v22 + 72 * v5;
}

__n128 std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,CachingHeap::TextureEntry *,CachingHeap::TextureEntry *,CachingHeap::TextureEntry *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      NS::SharedPtr<MTL::Buffer>::operator=(a3, v5);
      *(a3 + 8) = *(v5 + 8);
      *(a3 + 16) = *(v5 + 16);
      result = *(v5 + 24);
      *(a3 + 24) = result;
      v5 += 40;
      a3 += 40;
    }

    while (v5 != a2);
  }

  return result;
}

double re::HashTable<unsigned long long,re::RenderGraphResourceAllocationManager::HeapGroupHierarchy,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          v8 = (v6 + v4);
          *v8 = v7 & 0x7FFFFFFF;
          v9 = (v8 + 6);
          re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapGroup>::deinit((v8 + 18));
          re::DynamicArray<unsigned long>::deinit(v9);
          v3 = *(a1 + 8);
        }

        v4 += 120;
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

uint64_t re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureEntry>::deinit(uint64_t a1)
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
        v5 = 184 * v4;
        v6 = v3 + 80;
        do
        {
          *(v6 + 72) = 0;
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v6);
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v6 - 72);
          v6 += 184;
          v5 -= 184;
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

uint64_t re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::deinit(uint64_t a1)
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
        v5 = 48 * v4;
        do
        {

          re::mtl::RenderCommandEncoder::~RenderCommandEncoder((v3 + 1));
          v6 = *v3;
          v3 += 6;

          v5 -= 48;
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

void *re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapGroup>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapGroup>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v18, v20);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v19, v21);
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
        v10 = &v8[6 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          v11[5] = 0;
          *v11 = v12;
          v11[1] = 0;
          *(v11 + 8) = 0;
          v11[2] = 0;
          v11[3] = 0;
          v13 = v8[1];
          v14 = v8[2];
          v15 = (v8 + 1);
          v11[1] = v13;
          v11[2] = v14;
          *v15 = 0;
          *(v15 + 8) = 0;
          v16 = v11[3];
          v11[3] = *(v15 + 16);
          *(v15 + 16) = v16;
          v17 = v11[5];
          v11[5] = *(v15 + 32);
          *(v15 + 32) = v17;
          ++*(v15 + 24);
          ++*(v11 + 8);
          re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::deinit(v15);
          v11 += 6;
          v8 = (v15 + 40);
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

void *re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderGraphResourceAllocationManager::HeapAndFences>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x38uLL))
        {
          v2 = 56 * a2;
          result = (*(*result + 32))(result, 56 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 56, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v18, v20);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v19, v21);
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
        v10 = &v8[7 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          v11[5] = 0;
          *v11 = v12;
          v11[1] = 0;
          v11[2] = 0;
          v11[3] = 0;
          *(v11 + 8) = 0;
          v13 = v8[1];
          v14 = v8[2];
          v15 = (v8 + 1);
          v11[1] = v13;
          v11[2] = v14;
          *v15 = 0;
          *(v15 + 8) = 0;
          v16 = v11[3];
          v11[3] = *(v15 + 16);
          *(v15 + 16) = v16;
          v17 = v11[5];
          v11[5] = *(v15 + 32);
          *(v15 + 32) = v17;
          ++*(v15 + 24);
          ++*(v11 + 8);
          *(v11 + 24) = *(v15 + 40);
          re::DynamicArray<unsigned long>::deinit(v15);
          v11 += 7;
          v8 = (v15 + 48);
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

void *re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureEntry>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureEntry>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xB8uLL))
        {
          v2 = 184 * a2;
          result = (*(*result + 32))(result, 184 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 184, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v15, v17);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v16, v18);
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
        v10 = v8 + 184 * v9;
        v11 = (v7 + 10);
        v12 = v8 + 80;
        do
        {
          *(v11 - 80) = *(v12 - 80);
          re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::DynamicOverflowArray(v11 - 72, v12 - 72);
          re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::DynamicOverflowArray(v11, v12);
          *(v11 + 72) = *(v12 + 72);
          v13 = *(v12 + 80);
          *(v11 + 96) = *(v12 + 96);
          *(v11 + 80) = v13;
          *(v12 + 72) = 0;
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v12);
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v12 - 72);
          v11 += 184;
          v14 = v12 + 104;
          v12 += 184;
        }

        while (v14 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::DynamicOverflowArray(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 16))
  {
    if (*(a2 + 8))
    {
      re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::move(a1, a2);
    }

    else
    {
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
      *a1 = *a2;
      *(a2 + 16) += 2;
      *(a1 + 16) += 2;
    }
  }

  else
  {
    *(a1 + 16) = 3;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(a1, a2);
  }

  return a1;
}

_anonymous_namespace_ *re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderGraphResourceAllocationManager::EncoderAndFence>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v18, v20);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v19, v21);
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
        v10 = v8 + 48 * v9;
        v11 = (v8 + 8);
        v12 = v7;
        do
        {
          v13 = *(v11 - 1);
          *(v11 - 1) = 0;
          *v12 = v13;
          v14 = *v11;
          *v11 = 0;
          *(v12 + 1) = v14;
          v15 = *(v11 + 2);
          *(v11 + 1) = 0;
          *(v11 + 2) = 0;
          v12[3] = v15;
          v16 = *(v11 + 3);
          *(v12 + 10) = *(v11 + 8);
          v12[4] = v16;

          re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v11);
          v12 += 6;
          v17 = v11 + 40;
          v11 += 3;
        }

        while (v17 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::RenderGraphResourceAllocationManager::TextureIndexAndStage>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::DynamicOverflowArray<re::RenderGraphResourceAllocationManager::FenceIndex,4ul>::indexOf(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 24);
  }

  else
  {
    v4 = *(a2 + 32);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = &v4[3 * v5];
    v7 = 12 * v5;
    while (*v4 != *a3 || v4[1] != a3[1] || v4[2] != a3[2])
    {
      v4 += 3;
      v7 -= 12;
      if (!v7)
      {
        v4 = v6;
        break;
      }
    }
  }

  if (v3)
  {
    v8 = a2 + 24;
  }

  else
  {
    v8 = *(a2 + 32);
  }

  if (v4 == (v8 + 12 * v5))
  {
    *result = 0;
  }

  else
  {
    *result = 1;
    *(result + 8) = 0xAAAAAAAAAAAAAAABLL * ((v4 - v8) >> 2);
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::RenderGraphResourceAllocationManager::HeapGroupHierarchy,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
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
          re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v33, v9, v8);
          v11 = *v33;
          *v33 = *a1;
          *a1 = v11;
          v12 = *&v33[16];
          v13 = *(a1 + 16);
          *&v33[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v33[24];
          *&v33[24] = *(a1 + 24);
          v14 = *&v33[32];
          *(a1 + 24) = v15;
          ++*&v33[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = v13 + 56;
            do
            {
              if ((*(v18 - 56) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,re::RenderGraphResourceAllocationManager::HeapGroupHierarchy,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v18 + 56) % *(a1 + 24), *(v18 + 56));
                v20 = *(v18 - 40);
                *(v19 + 8) = *(v18 - 48);
                *(v19 + 16) = v20;
                *(v19 + 56) = 0;
                *(v19 + 32) = 0;
                *(v19 + 40) = 0;
                *(v19 + 24) = 0;
                *(v19 + 48) = 0;
                v21 = *(v18 - 24);
                *(v19 + 24) = *(v18 - 32);
                *(v19 + 32) = v21;
                *(v18 - 32) = 0;
                *(v18 - 24) = 0;
                v22 = *(v19 + 40);
                *(v19 + 40) = *(v18 - 16);
                *(v18 - 16) = v22;
                v23 = *(v19 + 56);
                *(v19 + 56) = *v18;
                *v18 = v23;
                ++*(v18 - 8);
                ++*(v19 + 48);
                *(v19 + 64) = *(v18 + 8);
                *(v19 + 104) = 0;
                *(v19 + 96) = 0;
                *(v19 + 80) = 0;
                *(v19 + 88) = 0;
                *(v19 + 72) = 0;
                v24 = *(v18 + 24);
                *(v19 + 72) = *(v18 + 16);
                *(v19 + 80) = v24;
                *(v18 + 16) = 0;
                *(v18 + 24) = 0;
                v25 = *(v19 + 88);
                *(v19 + 88) = *(v18 + 32);
                *(v18 + 32) = v25;
                v26 = *(v19 + 104);
                *(v19 + 104) = *(v18 + 48);
                *(v18 + 48) = v26;
                ++*(v18 + 40);
                ++*(v19 + 96);
              }

              v18 += 120;
              ++v17;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::RenderGraphResourceAllocationManager::HeapGroupHierarchy,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v33);
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

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v27 = *(a1 + 16);
    v28 = *(v27 + 120 * v5);
  }

  else
  {
    v27 = *(a1 + 16);
    v28 = *(v27 + 120 * v5);
    *(a1 + 36) = v28 & 0x7FFFFFFF;
  }

  v30 = v27 + 120 * v5;
  *v30 = v28 | 0x80000000;
  v31 = *(a1 + 8);
  *v30 = *(v31 + 4 * a2) | 0x80000000;
  *(v31 + 4 * a2) = v5;
  *(v30 + 112) = a3;
  ++*(a1 + 28);
  return v27 + 120 * v5;
}

uint64_t re::FixedOccupancyGrid::settingOccupied(uint64_t this, int a2, int a3, unsigned int a4)
{
  v4 = (a2 + *(this + 64) * a3);
  if (64 - ((a2 + *(this + 64) * a3) & 0x3F) >= (a4 & 0x3F))
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = v5 + (a4 >> 6);
  do
  {
    v7 = 64 - (v4 & 0x3F);
    if (v7 >= a4)
    {
      v7 = a4;
    }

    v8 = 0xFFFFFFFFFFFFFFFFLL >> -v7 << v4;
    v9 = v4 >> 3;
    v4 += v7;
    a4 -= v7;
    *(this + (v9 & 0x1FFFFFFFFFFFFFF8)) |= v8;
    --v6;
  }

  while (v6);
  return this;
}

uint64_t re::FixedOccupancyGrid::clearingOccupied(uint64_t this, int a2, int a3, unsigned int a4)
{
  v4 = (a2 + *(this + 64) * a3);
  if (64 - ((a2 + *(this + 64) * a3) & 0x3F) >= (a4 & 0x3F))
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = v5 + (a4 >> 6);
  do
  {
    v7 = 64 - (v4 & 0x3F);
    if (v7 >= a4)
    {
      v7 = a4;
    }

    v8 = 0xFFFFFFFFFFFFFFFFLL >> -v7 << v4;
    v9 = v4 >> 3;
    v4 += v7;
    a4 -= v7;
    *(this + (v9 & 0x1FFFFFFFFFFFFFF8)) &= ~v8;
    --v6;
  }

  while (v6);
  return this;
}

uint64_t re::FixedOccupancyGrid::setOccupied(uint64_t this, float32x4_t *a2, int a3)
{
  v3 = a2[1];
  v3.i64[1] = a2->i64[0];
  v4.i32[0] = vmovn_s32(vcgeq_f32(xmmword_1E3063230, v3)).u32[0];
  v4.i32[1] = vmovn_s32(vcgeq_f32(v3, xmmword_1E3063230)).i32[1];
  if ((vmaxv_u16(v4) & 1) == 0)
  {
    v5 = this;
    v6 = *a2;
    v7 = a2[1];
    v6.i32[3] = 0;
    v8 = vmaxnmq_f32(v6, 0);
    v8.i32[3] = 0;
    v7.i32[3] = 0;
    v8.i64[0] = vminnmq_f32(v8, xmmword_1E304F3C0).u64[0];
    v9 = vmaxnmq_f32(v7, 0);
    v9.i32[3] = 0;
    v9.i64[0] = vminnmq_f32(v9, xmmword_1E304F3C0).u64[0];
    v10 = *(this + 64);
    v11 = (v10 * v8.f32[0]);
    v12 = *(this + 68);
    v13 = vmuls_lane_f32(v12, *v8.f32, 1);
    v14 = vcvtps_u32_f32(v10 * v9.f32[0]);
    v15 = vcvtps_u32_f32(vmuls_lane_f32(v12, *v9.f32, 1));
    v16 = *(this + 72) == 0;
    if (a3)
    {
      v16 = a3 == 2;
    }

    if (v16)
    {
      if (v13 < v15)
      {
        v17 = v14 - v11;
        do
        {
          this = re::FixedOccupancyGrid::settingOccupied(v5, v11, v13++, v17);
        }

        while (v15 != v13);
      }
    }

    else if (*(this + 73) == 1 && v13 < v15)
    {
      v18 = v14 - v11;
      do
      {
        this = re::FixedOccupancyGrid::clearingOccupied(v5, v11, v13++, v18);
      }

      while (v15 != v13);
    }
  }

  return this;
}

_anonymous_namespace_ *re::RenderGraphNoClearProcessor::process(_anonymous_namespace_ *this, re::RenderGraphCompiled *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 44);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v5 = *(a2 + 46) + 200 * i;
      v6 = *(v5 + 56);
      if (v6)
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v48 = 0;
        v45 = 0;
        v46 = 0;
        v44 = 0;
        v47 = 0;
        do
        {
          v12 = *(v5 + 72) + v7;
          v13 = *(a2 + 37);
          v14 = *(v12 + 52);
          v15 = *(v13 + 16);
          if (v15 <= v14)
          {
            v49 = 0;
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v58 = 0u;
            v32 = MEMORY[0x1E69E9C10];
            v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v50 = 136315906;
            v51 = "operator[]";
            v52 = 1024;
            if (v33)
            {
              v34 = 3;
            }

            else
            {
              v34 = 2;
            }

            v53 = 789;
            v54 = 2048;
            v55 = v14;
            v56 = 2048;
            v57 = v15;
            _os_log_send_and_compose_impl(v34, &v49, &v58, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v50, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_50:
            v49 = 0;
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v58 = 0u;
            v35 = MEMORY[0x1E69E9C10];
            v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v50 = 136315906;
            v51 = "operator[]";
            v52 = 1024;
            if (v36)
            {
              v37 = 3;
            }

            else
            {
              v37 = 2;
            }

            v53 = 789;
            v54 = 2048;
            v55 = v11;
            v56 = 2048;
            v57 = v14;
            _os_log_send_and_compose_impl(v37, &v49, &v58, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v50, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_54:
            v49 = 0;
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v58 = 0u;
            v38 = MEMORY[0x1E69E9C10];
            v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v50 = 136315906;
            v51 = "operator[]";
            v52 = 1024;
            if (v39)
            {
              v40 = 3;
            }

            else
            {
              v40 = 2;
            }

            v53 = 789;
            v54 = 2048;
            v55 = v14;
            v56 = 2048;
            v57 = v15;
            _os_log_send_and_compose_impl(v40, &v49, &v58, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v50, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
LABEL_58:
            v49 = 0;
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v58 = 0u;
            v41 = MEMORY[0x1E69E9C10];
            v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v50 = 136315906;
            v51 = "operator[]";
            v52 = 1024;
            if (v42)
            {
              v43 = 3;
            }

            else
            {
              v43 = 2;
            }

            v53 = 789;
            v54 = 2048;
            v55 = v11;
            v56 = 2048;
            v57 = v15;
            _os_log_send_and_compose_impl(v43, &v49, &v58, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v50, 38, v44, v45);
            _os_crash_msg();
            __break(1u);
          }

          v16 = (*(v13 + 32) + 48 * v14);
          if (!*v16)
          {
            v14 = v16[7];
            v17 = *(a2 + 38);
            v15 = *(v17 + 16);
            if (v15 <= v14)
            {
              goto LABEL_54;
            }

            v18 = *(v12 + 4);
            v19 = v18 > 8 || ((1 << v18) & 0x1EE) == 0;
            if (!v19 && v18 != 5 && *(*(v17 + 32) + 112 * v14 + 60) == 2)
            {
              if (v10 >= v45)
              {
                v20 = v10 + 1;
                if (v45 < v10 + 1)
                {
                  if (v44)
                  {
                    v21 = 2 * v45;
                    if (!v45)
                    {
                      v21 = 8;
                    }

                    if (v21 <= v20)
                    {
                      v22 = v10 + 1;
                    }

                    else
                    {
                      v22 = v21;
                    }

                    this = re::DynamicArray<float *>::setCapacity(&v44, v22);
                    v8 = v47;
                  }

                  else
                  {
                    this = re::DynamicArray<float *>::setCapacity(&v44, v20);
                    v8 = v47 + 1;
                  }
                }

                v10 = v46;
                v9 = v48;
                v6 = *(v5 + 56);
              }

              *(v9 + 8 * v10++) = v12;
              v46 = v10;
              v47 = ++v8;
            }
          }

          ++v11;
          v7 += 64;
        }

        while (v6 > v11);
        if (v6)
        {
          v23 = *(a2 + 37);
          v24 = *(a2 + 38);
          v14 = *(v23 + 16);
          v25 = (*(v5 + 72) + 52);
          do
          {
            v11 = *v25;
            if (v14 <= v11)
            {
              goto LABEL_50;
            }

            v26 = (*(v23 + 32) + 48 * v11);
            if (!*v26)
            {
              v11 = v26[7];
              v15 = *(v24 + 16);
              if (v15 <= v11)
              {
                goto LABEL_58;
              }

              v27 = *(v25 - 12);
              if (v27 <= 8 && ((1 << v27) & 0x1EE) != 0)
              {
                v29 = *(v24 + 32) + 112 * v11;
                v31 = *(v29 + 60);
                v30 = (v29 + 60);
                if (v31 == 2)
                {
                  *v30 = 0;
                  if (v27 != 5)
                  {
                    *(v25 - 4) = 1;
                  }
                }
              }
            }

            v25 += 16;
          }

          while (--v6);
        }

        this = v44;
        *(v5 + 194) = v10 != 0;
        if (this)
        {
          if (v48)
          {
            this = (*(*this + 40))(this);
          }
        }

        v2 = *(a2 + 44);
      }
    }
  }

  return this;
}

uint64_t re::DeformationBufferAllocator::init(re::DeformationBufferAllocator *this, unint64_t a2)
{
}

BOOL re::DeformationBufferAllocator::updateAllocationDataFrameForInputHash(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(a1 + 8);
  if (v5 <= a3)
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

    v16 = 468;
    v17 = 2048;
    v18 = v4;
    v19 = 2048;
    v20 = v5;
    _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = (*(a1 + 16) + 72 * a3);
  v7 = v6[1];
  if (v7 == a4)
  {
    *v6 = *a2;
  }

  return v7 == a4;
}

uint64_t re::DeformationBufferAllocator::resetAllocationData(uint64_t result, void *a2, unsigned int a3, uint64_t a4)
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(result + 8);
  if (v6 <= a3)
  {
LABEL_36:
    v46 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v35 = MEMORY[0x1E69E9C10];
    v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    v48 = "operator[]";
    v49 = 1024;
    if (v36)
    {
      v37 = 3;
    }

    else
    {
      v37 = 2;
    }

    v50 = 468;
    v51 = 2048;
    v52 = v5;
    v53 = 2048;
    v54 = v6;
    _os_log_send_and_compose_impl(v37, &v46, &v55, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44);
    _os_crash_msg();
    __break(1u);
LABEL_40:
    v46 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v38 = MEMORY[0x1E69E9C10];
    v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    v48 = "operator[]";
    v49 = 1024;
    if (v39)
    {
      v40 = 3;
    }

    else
    {
      v40 = 2;
    }

    v50 = 468;
    v51 = 2048;
    v52 = v5;
    v53 = 2048;
    v54 = v6;
    _os_log_send_and_compose_impl(v40, &v46, &v55, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44);
    _os_crash_msg();
    __break(1u);
    goto LABEL_44;
  }

  v7 = a4;
  v9 = *(result + 16) + 72 * a3;
  if (!*(v9 + 56))
  {
    *v9 = *a2;
    *(v9 + 8) = a4;
    goto LABEL_31;
  }

  v6 = *(result + 32);
  if (v6 <= a3)
  {
    goto LABEL_40;
  }

  v10 = *(result + 40) + 56 * a3;
  v11 = *(v10 + 40);
  v4 = *(v10 + 8);
  if (v11 + 1 > 4 * v4)
  {
    result = re::BucketArray<re::DeformationBufferAllocator::DeformationStackAllocation,4ul>::setBucketsCapacity(v10, (v11 + 4) >> 2);
    v4 = *(v10 + 8);
  }

  v6 = v11 >> 2;
  if (v4 <= v11 >> 2)
  {
LABEL_44:
    v46 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v41 = MEMORY[0x1E69E9C10];
    v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    v48 = "operator[]";
    v49 = 1024;
    if (v42)
    {
      v43 = 3;
    }

    else
    {
      v43 = 2;
    }

    v50 = 858;
    v51 = 2048;
    v52 = v6;
    v53 = 2048;
    v54 = v4;
    _os_log_send_and_compose_impl(v43, &v46, &v55, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v44);
    _os_crash_msg();
    __break(1u);
  }

  if (*(v10 + 16))
  {
    v12 = v10 + 24;
  }

  else
  {
    v12 = *(v10 + 32);
  }

  v13 = *(v12 + 8 * v6);
  ++*(v10 + 40);
  ++*(v10 + 48);
  v14 = v13 + 72 * (v11 & 3);
  *v14 = *v9;
  *(v14 + 16) = 0;
  v15 = (v14 + 16);
  *(v14 + 24) = 0;
  *(v14 + 32) = 1;
  *(v14 + 40) = 0;
  v4 = v14 + 40;
  *(v14 + 64) = 0;
  *(v14 + 48) = 0;
  *(v14 + 56) = 0;
  v16 = *(v9 + 16);
  if (v16)
  {
    v45 = v7;
    re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::init(v15, v16, *(v9 + 24));
    v5 = *(v9 + 56);
    if (v5 < *(v14 + 56))
    {
      result = std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::BucketArrayIterator<re::DeformationBufferAllocator::VertexBufferAllocation,re::DeformationBufferAllocator::VertexBufferAllocation const&,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul> const&,true>,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::BucketArrayIterator<re::DeformationBufferAllocator::VertexBufferAllocation,re::DeformationBufferAllocator::VertexBufferAllocation const&,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul> const&,true>,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::BucketArrayIterator<re::DeformationBufferAllocator::VertexBufferAllocation,re::DeformationBufferAllocator::VertexBufferAllocation&,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>&,true>>(&v55, v9 + 16, 0, v9 + 16, *(v9 + 56), v15, 0);
      if (v5 != *(v14 + 56))
      {
        v17 = v5;
        do
        {
          result = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](v15, v17);
          v18 = result;
          v19 = *(result + 48);
          if (v19 != -1)
          {
            result = (off_1F5D051B0[v19])(&v55, result + 24);
          }

          *(v18 + 48) = -1;
          ++v17;
        }

        while (v17 != *(v14 + 56));
      }

      goto LABEL_25;
    }

    re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::setBucketsCapacity(v15, (v5 + 3) >> 2);
    result = std::__copy_impl::operator()[abi:nn200100]<re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::BucketArrayIterator<re::DeformationBufferAllocator::VertexBufferAllocation,re::DeformationBufferAllocator::VertexBufferAllocation const&,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul> const&,true>,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::BucketArrayIterator<re::DeformationBufferAllocator::VertexBufferAllocation,re::DeformationBufferAllocator::VertexBufferAllocation const&,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul> const&,true>,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::BucketArrayIterator<re::DeformationBufferAllocator::VertexBufferAllocation,re::DeformationBufferAllocator::VertexBufferAllocation&,re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>&,true>>(&v55, v9 + 16, 0, v9 + 16, *(v14 + 56), v15, 0);
    v20 = *(v14 + 56);
    v21 = v5 - v20;
    if (v5 == v20)
    {
LABEL_25:
      *(v14 + 56) = v5;
      v7 = v45;
      goto LABEL_26;
    }

    v22 = 0;
    while (1)
    {
      v23 = v22 + *(v14 + 56);
      v6 = v23 >> 2;
      v24 = *(v14 + 24);
      if (v24 <= v23 >> 2)
      {
        break;
      }

      v25 = v14 + 40;
      if ((*(v14 + 32) & 1) == 0)
      {
        v25 = *(v14 + 48);
      }

      v26 = *(v25 + 8 * v6) + ((v23 & 3) << 6);
      v27 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](v9 + 16, v23);
      v28 = *(v27 + 16);
      *v26 = *v27;
      *(v26 + 16) = v28;
      *(v26 + 24) = 0;
      *(v26 + 48) = -1;
      result = std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v26 + 24, v27 + 24);
      *(v26 + 56) = *(v27 + 56);
      if (v21 == ++v22)
      {
        goto LABEL_25;
      }
    }

    v46 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v33 = MEMORY[0x1E69E9C10];
    v47 = 136315906;
    v48 = "operator[]";
    v49 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    v50 = 858;
    v51 = 2048;
    v52 = v6;
    v53 = 2048;
    v54 = v24;
    _os_log_send_and_compose_impl(v34, &v46, &v55, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v47, 38, v45);
    _os_crash_msg();
    __break(1u);
    goto LABEL_36;
  }

LABEL_26:
  v29 = *(v9 + 56);
  *v9 = *a2;
  *(v9 + 8) = v7;
  if (v29)
  {
    for (i = 0; i != v29; ++i)
    {
      result = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](v9 + 16, i);
      v31 = result;
      v32 = *(result + 48);
      if (v32 != -1)
      {
        result = (off_1F5D051B0[v32])(&v55, result + 24);
      }

      *(v31 + 48) = -1;
    }
  }

LABEL_31:
  *(v9 + 56) = 0;
  ++*(v9 + 64);
  return result;
}

unint64_t re::DeformationBufferAllocator::alloc(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v7 = v61;
  v62 = *MEMORY[0x1E69E9840];
  *&v51 = a4;
  *(&v51 + 1) = a5;
  v8 = a6;
  v9 = a1[1];
  if (v9 <= a6)
  {
    goto LABEL_41;
  }

  v9 = a1[4];
  if (v9 <= a6)
  {
LABEL_45:
    v52 = 0;
    v7[4] = 0u;
    memset(v61, 0, 64);
    v44 = MEMORY[0x1E69E9C10];
    v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    if (v45)
    {
      v46 = 3;
    }

    else
    {
      v46 = 2;
    }

    v56 = 468;
    v57 = 2048;
    v58 = v8;
    v59 = 2048;
    v60 = v9;
    _os_log_send_and_compose_impl(v46, &v52, v61, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v53, 38, v49, v50);
    _os_crash_msg();
    __break(1u);
LABEL_49:
    re::internal::assertLog(4, v23, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || allocator() == other.allocator()", "operator=", 526);
    _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || allocator() == other.allocator()) ");
    __break(1u);
  }

  v13 = a1[2] + 72 * a6;
  v14 = *(v13 + 56);
  v9 = a1[5] + 56 * a6;
  if (*(v9 + 40))
  {
    v8 = 0;
    do
    {
      v15 = re::BucketArray<re::DeformationBufferAllocator::DeformationStackAllocation,4ul>::operator[](v9, v8);
      if ((*v15 & 0xFFFFFFFFFFFFFFFuLL) <= (*(a2 + 8) & 0xFFFFFFFFFFFFFFFuLL))
      {
        v18 = v15;
        if (v14 < v15[7] && *re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[]((v15 + 2), v14) == a3)
        {
          v19 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[]((v18 + 2), v14);
          if (re::VertexBufferFormat::operator==((v19 + 4), &v51) && *(re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[]((v18 + 2), v14) + 60) == a7)
          {
            v37 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[]((v18 + 2), v14);
            v38 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::addUninitialized(v13 + 16);
            v39 = *(v37 + 16);
            *v38 = *v37;
            *(v38 + 16) = v39;
            *(v38 + 24) = 0;
            *(v38 + 48) = -1;
            std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v38 + 24, v37 + 24);
            *(v38 + 56) = *(v37 + 56);
            v40 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[]((v18 + 2), v14);
            *v40 = 0;
            *(v40 + 4) = 0x10000;
            *(v40 + 8) = 256;
            re::BufferSlice::deinit((v40 + 24));
            return v14;
          }
        }

        v20 = *(v9 + 40);
        if (v20 <= v8)
        {
          re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "removeAt", 848, v8, v20);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v47, v48);
          __break(1u);
LABEL_41:
          v52 = 0;
          v7[4] = 0u;
          memset(v61, 0, 64);
          v41 = MEMORY[0x1E69E9C10];
          v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v53 = 136315906;
          v54 = "operator[]";
          v55 = 1024;
          if (v42)
          {
            v43 = 3;
          }

          else
          {
            v43 = 2;
          }

          v56 = 468;
          v57 = 2048;
          v58 = v8;
          v59 = 2048;
          v60 = v9;
          _os_log_send_and_compose_impl(v43, &v52, v61, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v53, 38, v49, v50);
          _os_crash_msg();
          __break(1u);
          goto LABEL_45;
        }

        if (v20 - 1 > v8)
        {
          v21 = re::BucketArray<re::DeformationBufferAllocator::DeformationStackAllocation,4ul>::operator[](v9, v20 - 1);
          v22 = re::BucketArray<re::DeformationBufferAllocator::DeformationStackAllocation,4ul>::operator[](v9, v8);
          *v22 = *v21;
          if (v22 != v21)
          {
            v24 = v22;
            v25 = *(v22 + 16);
            if (v25)
            {
              v26 = *(v21 + 16);
              if (v26 && v25 != v26)
              {
                goto LABEL_49;
              }
            }

            v61[0] = 0uLL;
            LODWORD(v61[1]) = 1;
            *(&v61[1] + 1) = 0;
            *&v61[2] = 0;
            v28 = *(v22 + 32);
            if (v28)
            {
              if (*(v22 + 24))
              {
                re::DynamicOverflowArray<re::DeformationBufferAllocator::VertexBufferAllocation *,2ul>::move(v61, v22 + 16);
              }

              else
              {
                *&v61[0] = v25;
                *(v22 + 32) = v28 + 2;
                LODWORD(v61[1]) = 3;
              }
            }

            else
            {
              LODWORD(v61[1]) = 3;
              re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(v61, (v22 + 16));
            }

            re::DynamicOverflowArray<re::DeformationBufferAllocator::VertexBufferAllocation *,2ul>::operator=(v24 + 16, v21 + 16);
            re::DynamicOverflowArray<re::DeformationBufferAllocator::VertexBufferAllocation *,2ul>::operator=(v21 + 16, v61);
            if (*&v61[0] && (v61[1] & 1) == 0)
            {
              (*(**&v61[0] + 40))();
            }

            v29 = *(v24 + 56);
            *(v24 + 56) = *(v21 + 56);
            *(v21 + 56) = v29;
            ++*(v24 + 64);
            ++*(v21 + 64);
          }
        }

        v30 = re::BucketArray<re::DeformationBufferAllocator::DeformationStackAllocation,4ul>::operator[](v9, *(v9 + 40) - 1);
        re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::deinit(v30 + 16);
        re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v30 + 16);
        v17 = *(v9 + 40) - 1;
        *(v9 + 40) = v17;
        ++*(v9 + 48);
      }

      else
      {
        ++v8;
        v17 = *(v9 + 40);
      }
    }

    while (v8 < v17);
  }

  if (a7)
  {
    LOBYTE(v61[0]) = a3;
    *(v61 + 4) = v51;
    *(v61 + 9) = *(&v51 + 5);
    v31 = [**(a2 + 16) newBufferWithLength:a7 options:0];
    *(&v61[1] + 1) = v31;
    LODWORD(v61[3]) = 0;
    DWORD2(v61[3]) = 0;
    HIDWORD(v61[3]) = a7;
    v32 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::addUninitialized(v13 + 16);
    v33 = v61[1];
    *v32 = v61[0];
    *(v32 + 16) = v33;
    *(v32 + 24) = 0;
    *(v32 + 48) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v32 + 24, &v61[1] + 8);
    *(v32 + 56) = *(&v61[3] + 1);
    if (LODWORD(v61[3]) != -1)
    {
      (off_1F5D051B0[LODWORD(v61[3])])(&v53, &v61[1] + 8);
    }

    LODWORD(v61[3]) = -1;
    if (v31)
    {
    }
  }

  else
  {
    LOBYTE(v61[0]) = a3;
    *(v61 + 4) = v51;
    *(v61 + 9) = *(&v51 + 5);
    memset(&v61[1] + 8, 0, 40);
    v34 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::addUninitialized(v13 + 16);
    v35 = v61[1];
    *v34 = v61[0];
    *(v34 + 16) = v35;
    *(v34 + 24) = 0;
    *(v34 + 48) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v34 + 24, &v61[1] + 8);
    *(v34 + 56) = *(&v61[3] + 1);
    if (LODWORD(v61[3]) != -1)
    {
      (off_1F5D051B0[LODWORD(v61[3])])(&v53, &v61[1] + 8);
    }
  }

  return v14;
}