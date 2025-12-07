void re::internal::defaultConstructV2<re::ecs2::ImageBasedReflectionReceiverComponent>(uint64_t a1)
{
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE5B18;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
  *(v1 + 56) = 0;
  *(v1 + 72) = 0;
  *(v1 + 112) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 80) = 0;
  *(v1 + 104) = 0;
}

re::StringID *re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add(_anonymous_namespace_ *this, StringID *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RigGraphNodeDescription>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = re::StringID::StringID((*(this + 4) + 32 * v4), a2);
  result = re::StringID::StringID((v5 + 16), a2 + 1);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::DynamicArray<re::ecs2::VideoMaterialAttachment>::remove(uint64_t a1, void *a2)
{
  re::DynamicArray<re::ecs2::VideoMaterialAttachment>::indexOf(a1, a2, v5);
  v3 = v5[0];
  if (v5[0] == 1)
  {
    re::DynamicArray<re::ecs2::VideoMaterialAttachment>::removeAt(a1, v6);
  }

  return v3;
}

BOOL re::ecs2::ImageBasedReflectionReceiverComponent::receivesSpecularLightSpill(re::ecs2::ImageBasedReflectionReceiverComponent *this)
{
  v1 = *(this + 6);
  if (!v1)
  {
    return 0;
  }

  v2 = 32 * v1 - 32;
  v3 = (*(this + 8) + 8);
  do
  {
    v4 = *v3;
    v3 += 4;
    v5 = strcmp(v4, "REVideoAttachmentSpillSpecular");
    result = v5 == 0;
    if (v5)
    {
      v7 = v2 == 0;
    }

    else
    {
      v7 = 1;
    }

    v2 -= 32;
  }

  while (!v7);
  return result;
}

uint64_t re::ecs2::ImageBasedReflectionReceiverComponent::receivesDiffuseLightSpill(re::ecs2::ImageBasedReflectionReceiverComponent *this)
{
  v1 = *(this + 6);
  if (!v1)
  {
    return 0;
  }

  v2 = (*(this + 8) + 8);
  v3 = 32 * v1;
  while (1)
  {
    v4 = *v2;
    if (!strcmp(*v2, "REVideoAttachmentSpill") || !strcmp(v4, "REVideoAttachmentChannelID1TextureSpill"))
    {
      break;
    }

    v2 += 4;
    v3 -= 32;
    if (!v3)
    {
      return 0;
    }
  }

  return 1;
}

void re::ecs2::ImageBasedReflectionReceiverComponent::removeParamsFromSystemParameterBlock(re::ecs2::ImageBasedReflectionReceiverComponent *this, re::MaterialManager *a2, char a3)
{
  v6 = *(*(this + 2) + 312);
  SystemMaterialParameterBlock = re::MaterialManager::getSystemMaterialParameterBlock(a2, v6);
  if (SystemMaterialParameterBlock)
  {
    v8 = SystemMaterialParameterBlock;
    v9 = *(this + 6);
    if (v9)
    {
      v10 = *(this + 8);
      v11 = 32 * v9;
      do
      {
        re::MaterialParameterBlock::removeParameter(v8, *(v10 + 24));
        re::ecs2::VideoComponent::removeVideoAttachmentFromParameterBlock(v10, v8, v12);
        v10 += 32;
        v11 -= 32;
      }

      while (v11);
    }

    v13 = *(this + 12);
    if (v13)
    {
      v14 = *(this + 14);
      v15 = 32 * v13;
      do
      {
        re::MaterialParameterBlock::removeParameter(v8, *(v14 + 24));
        re::ecs2::VideoComponent::removeVideoAttachmentFromParameterBlock(v14, v8, v16);
        v14 += 32;
        v15 -= 32;
      }

      while (v15);
    }

    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::clear(this + 80);
    if ((a3 & 1) != 0 && re::MaterialParameterBlock::isEmpty(v8))
    {

      re::MaterialManager::removeSystemMaterialParameterBlock(a2, v6);
    }
  }
}

void re::ecs2::ImageBasedReflectionReceiverComponent::applyAttachments(void *a1, re::RenderManager **this, re::TextureHandle *a3, int a4, int a5, int a6, _OWORD *a7, int a8, float a9, float a10, float a11, float a12, int32x2_t a13, int32x2_t a14, double a15, double a16, __int128 a17, uint64_t a18)
{
  v28 = re::MaterialManager::getOrAddSystemMaterialParameterBlock(this, *(a1[2] + 312));
  v29 = a1[6];
  if (v29)
  {
    v30 = v28;
    v31 = 32 * v29;
    v32 = a1[8];
    v58 = vdupq_lane_s32(a13, 0);
    v60 = vdupq_lane_s32(a14, 0);
    do
    {
      v33 = *v32 >> 1;
      if (v33 > 0x6ACE73CDBA36B78DLL)
      {
        if (*v32 >> 1 <= 0x757106E73545B3A8uLL)
        {
          if (v33 == 0x6ACE73CDBA36B78ELL)
          {
            v46 = *(v32 + 8);
            if (v46 != "REVideoAttachmentDockingRegionWidth" && strcmp(v46, "REVideoAttachmentDockingRegionWidth"))
            {
LABEL_45:
              *&v72[0] = 0xC37C7BF41B26998;
              *(&v72[0] + 1) = "REVideoAttachmentDisplaySize";
              if (re::StringID::operator==(v32, v72))
              {
                v55 = *(v32 + 16) >> 1;
                *&v72[0] = a18;
                v74[0] = v55;
                re::MaterialParameterBlock::setConstant(v30, v74, 8uLL, v72, 32, v62);
                v62[0] = 0;
              }

              else
              {
                re::ecs2::VideoComponent::applyVideoAttachmentToParameterBlock(a1[2], v32, a3, v30, a4, a5);
              }

              goto LABEL_48;
            }

            v47 = *(v32 + 16) >> 1;
            v72[0] = v60;
            v74[0] = v47;
            re::MaterialParameterBlock::setConstant(v30, v74, 0x10uLL, v72, 33, v65);
            v65[0] = 0;
          }

          else
          {
            if (v33 != 0x6F0005E972D1405FLL)
            {
              goto LABEL_45;
            }

            v42 = *(v32 + 8);
            if (v42 != "REVideoAttachmentDockingRegionHeight")
            {
              if (strcmp(v42, "REVideoAttachmentDockingRegionHeight"))
              {
                goto LABEL_45;
              }
            }

            v43 = *(v32 + 16) >> 1;
            v72[0] = v58;
            v74[0] = v43;
            re::MaterialParameterBlock::setConstant(v30, v74, 0x10uLL, v72, 33, v66);
            v66[0] = 0;
          }
        }

        else
        {
          switch(v33)
          {
            case 0x757106E73545B3A9uLL:
              v50 = *(v32 + 8);
              if (v50 != "REVideoAttachmentContentPlaneHeightWorldspace" && strcmp(v50, "REVideoAttachmentContentPlaneHeightWorldspace"))
              {
                goto LABEL_45;
              }

              v51 = *(v32 + 16) >> 1;
              *v74 = a10;
              *&v72[0] = v51;
              re::MaterialParameterBlock::setConstant(v30, v72, 4uLL, v74, 1, v70);
              v70[0] = 0;
              break;
            case 0x79D6ECFADD603431uLL:
              v54 = *(v32 + 8);
              if (v54 != "REVideoAttachmentAverageColor" && strcmp(v54, "REVideoAttachmentAverageColor"))
              {
                goto LABEL_45;
              }

              v56 = *(v32 + 16) >> 1;
              v72[0] = a17;
              v74[0] = v56;
              re::MaterialParameterBlock::setConstant(v30, v74, 0x10uLL, v72, 33, v67);
              v67[0] = 0;
              break;
            case 0x7E934A87959DCBA9uLL:
              v36 = *(v32 + 8);
              if (v36 != "REVideoAttachmentPFRMMaskSize")
              {
                if (strcmp(v36, "REVideoAttachmentPFRMMaskSize"))
                {
                  goto LABEL_45;
                }
              }

              v37 = *(v32 + 16) >> 1;
              *v72 = a16;
              v74[0] = v37;
              re::MaterialParameterBlock::setConstant(v30, v74, 8uLL, v72, 32, v63);
              v63[0] = 0;
              break;
            default:
              goto LABEL_45;
          }
        }
      }

      else if (*v32 >> 1 <= 0x42D70E5EED7878EAuLL)
      {
        if (v33 == 0x26EAC6F89E53063BLL)
        {
          v44 = *(v32 + 8);
          if (v44 != "REVideoAttachmentPFRMMaskOffset" && strcmp(v44, "REVideoAttachmentPFRMMaskOffset"))
          {
            goto LABEL_45;
          }

          v45 = *(v32 + 16) >> 1;
          *v72 = a15;
          v74[0] = v45;
          re::MaterialParameterBlock::setConstant(v30, v74, 8uLL, v72, 32, v64);
          v64[0] = 0;
        }

        else
        {
          if (v33 != 0x30E43710AE043515)
          {
            goto LABEL_45;
          }

          v38 = *(v32 + 8);
          if (v38 != "REVideoAttachmentWorldToPlaneUVsTransformMatrix")
          {
            if (strcmp(v38, "REVideoAttachmentWorldToPlaneUVsTransformMatrix"))
            {
              goto LABEL_45;
            }
          }

          v39 = *(v32 + 16) >> 1;
          v40 = a7[1];
          v72[0] = *a7;
          v72[1] = v40;
          v41 = a7[3];
          v72[2] = a7[2];
          v72[3] = v41;
          v74[0] = v39;
          re::MaterialParameterBlock::setConstant(v30, v74, 0x40uLL, v72, 50, v73);
          v73[0] = 0;
        }
      }

      else
      {
        switch(v33)
        {
          case 0x42D70E5EED7878EBuLL:
            v48 = *(v32 + 8);
            if (v48 != "REVideoAttachmentContentBrightnessScale" && strcmp(v48, "REVideoAttachmentContentBrightnessScale"))
            {
              goto LABEL_45;
            }

            v49 = *(v32 + 16) >> 1;
            *v74 = a11;
            *&v72[0] = v49;
            re::MaterialParameterBlock::setConstant(v30, v72, 4uLL, v74, 1, v69);
            v69[0] = 0;
            break;
          case 0x47340200864FAC3EuLL:
            v52 = *(v32 + 8);
            if (v52 != "REVideoAttachmentTransitionAlpha" && strcmp(v52, "REVideoAttachmentTransitionAlpha"))
            {
              goto LABEL_45;
            }

            v53 = *(v32 + 16) >> 1;
            *v74 = a12;
            *&v72[0] = v53;
            re::MaterialParameterBlock::setConstant(v30, v72, 4uLL, v74, 1, v68);
            v68[0] = 0;
            break;
          case 0x514FAA62239F3AECuLL:
            v34 = *(v32 + 8);
            if (v34 != "REVideoAttachmentContentPlaneWidthWorldspace")
            {
              if (strcmp(v34, "REVideoAttachmentContentPlaneWidthWorldspace"))
              {
                goto LABEL_45;
              }
            }

            v35 = *(v32 + 16) >> 1;
            *v74 = a9;
            *&v72[0] = v35;
            re::MaterialParameterBlock::setConstant(v30, v72, 4uLL, v74, 1, v71);
            v71[0] = 0;
            break;
          default:
            goto LABEL_45;
        }
      }

LABEL_48:
      v32 += 32;
      v31 -= 32;
    }

    while (v31);
  }
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
{
  re::TypeRegistry::typeID(&v12, a1, a2);
  if (v12)
  {
    *a4 = v12;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v11);
    re::TypeBuilder::TypeBuilder(v10, v11);
    v9 = *a3;
    re::TypeBuilder::beginListType(v10, a2, 1, 0x28uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

ArcSharedObject *re::IntrospectionDynamicArray<re::ecs2::VideoMaterialAttachment>::IntrospectionDynamicArray(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CADA48;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  *a1 = &unk_1F5CED168;
  return a1;
}

void *re::IntrospectionDynamicArray<re::ecs2::VideoMaterialAttachment>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::VideoMaterialAttachment>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::VideoMaterialAttachment>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::VideoMaterialAttachment>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::ecs2::VideoMaterialAttachment>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::ecs2::VideoMaterialAttachment>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::VideoMaterialAttachment>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11[0] = 0;
  v11[1] = &str_67;
  v12 = 0;
  v13 = &str_67;
  v8 = re::DynamicArray<re::RigGraphNodeDescription>::add(this, v11);
  if (v12)
  {
    if (v12)
    {
    }
  }

  v12 = 0;
  v13 = &str_67;
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  v9 = (*(this + 4) + 32 * *(this + 2) - 32);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::ecs2::VideoMaterialAttachment>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 32 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
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

    v13 = 797;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 32 * a3;
}

void re::DynamicArray<re::ecs2::VideoMaterialAttachment>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 32 * a2;
    v9 = a2;
    do
    {
      v10 = *(a1 + 32) + v8;
      re::StringID::destroyString((v10 + 16));
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 32;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 32 * v4;
      do
      {
        v7 = (*(a1 + 32) + v6);
        *v7 = 0;
        v7[1] = &str_67;
        v7[2] = 0;
        v7[3] = &str_67;
        v6 += 32;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::operator()(uint64_t a1, uint64_t a2, void *a3, re::Allocator *a4, unint64_t a5)
{
  if (*a2 == a4)
  {
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::clear(a2);
  }

  else
  {
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(a2);
    *a2 = a4;
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(a2, a5);
    ++*(a2 + 24);
  }

  re::DynamicArray<re::ecs2::VideoMaterialAttachment>::resize(a2, a5);
  {
    re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), &v14);
    re::TypeInfo::TypeInfo(v13, &v15);
    v10 = *(a2 + 16);
    if (v10)
    {
      v11 = *(a2 + 32);
      v12 = 32 * v10;
      do
      {
        re::TypeInfo::destruct(v13, v11, a4, 0);
        re::TypeInfo::construct(v13, v11, a4, 0);
        v11 += 32;
        v12 -= 32;
      }

      while (v12);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
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

  return *(a1 + 32) + 32 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 32 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->array->version()) DynamicArray elements may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::VideoMaterialAttachment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs237ImageBasedReflectionReceiverComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 6;
    *(a2 + 8) = 0;
  }
}

uint64_t re::DynamicArray<re::ecs2::VideoMaterialAttachment>::indexOf@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 32);
  v5 = *(result + 16);
  if (v5)
  {
    v7 = 32 * v5;
    v8 = *(result + 32);
    while (1)
    {
      result = re::StringID::operator==(v8, a2);
      if (result)
      {
        result = re::StringID::operator==(v8 + 2, a2 + 2);
        if (result)
        {
          break;
        }
      }

      v8 += 4;
      v7 -= 32;
      if (!v7)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = *(result + 32);
  }

  if (v8 == (v4 + 32 * v5))
  {
LABEL_10:
    v9 = 0;
  }

  else
  {
    *(a3 + 8) = (v8 - v4) >> 5;
    v9 = 1;
  }

  *a3 = v9;
  return result;
}

void re::DynamicArray<re::ecs2::VideoMaterialAttachment>::removeAt(uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v10 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "removeAt";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v17 = 931;
    v18 = 2048;
    v19 = a2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  if (v3 - 1 > a2)
  {
    v5 = *(a1 + 32);
    v6 = v5 + 32 * v3;
    v7 = re::StringID::operator=((v5 + 32 * a2), (v6 - 32));
    re::StringID::operator=((v7 + 16), (v6 - 16));
    v3 = *(a1 + 16);
  }

  v8 = *(a1 + 32) + 32 * v3;
  v9 = (v8 - 32);
  re::StringID::destroyString((v8 - 16));
  re::StringID::destroyString(v9);
  --*(a1 + 16);
  ++*(a1 + 24);
}

float re::UnlitMaterial::commitConstantChanges(re::UnlitMaterial *this, re::RenderManager *a2)
{
  v4 = re::UnlitMaterial::addRenderFrameParameterDelta(this, a2);
  if (v4)
  {
    v6 = v4;
    if (a2 && (v7 = *(a2 + 20)) != 0)
    {
      v8 = *v7;
    }

    else
    {
      v8 = 0;
    }

    *(v4 + 16) = 1;
    re::ColorGamut4F::as(this + 24, v8, 1, &v9);
    *(v6 + 32) = v9;
    result = *(this + 11);
    *(v6 + 48) = result;
  }

  return result;
}

uint64_t re::UnlitMaterial::addRenderFrameParameterDelta(re::UnlitMaterial *this, re::RenderManager *a2)
{
  v3 = *(a2 + 14);
  if (v3 && re::DrawingManager::checkDeltasCanBeEnqueuedOrDropDelta_115383182<re::PbrParameterDelta>(v3, *(this + 16)))
  {
    v5 = *(a2 + 18);
    v6 = *(v5 + 48);
    if (((*(this + 15) ^ v6) & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      *(this + 15) = v6 & 0xFFFFFFFFFFFFFFFLL | (*(v5 + 40) << 60);
      re::UnlitMaterial::parameterTable(&v9, this, a2);
      *(this + 16) = re::DrawingManager::addRenderFrameDeltaForNextFrame<re::UnlitParameterDelta,re::UnlitParameterTable>(v3, &v9);
      if (v9)
      {
      }
    }

    return *(this + 16);
  }

  else
  {
    *(this + 16) = 0;
    v8 = *(this + 13);
    if (v8)
    {

      result = 0;
      *(this + 13) = 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void re::UnlitMaterial::parameterTable(uint64_t *__return_ptr a1@<X8>, re::UnlitMaterial *this@<X0>, const re::RenderManager *a3@<X1>)
{
  v4 = *(this + 13);
  if (v4)
  {
    *a1 = v4;
LABEL_10:
    v9 = (v4 + 8);
    return;
  }

  if (a3 && (v6 = *(a3 + 20)) != 0)
  {
    v7 = *v6;
  }

  else
  {
    v7 = 0;
  }

  re::make::shared::object<re::UnlitParameterTable>(this, v11);
  v8 = *(this + 13);
  *(this + 13) = v11[0];
  v11[0] = v8;
  if (v8)
  {
  }

  re::ColorGamut4F::as(this + 24, v7, 1, v11);
  *(*(this + 13) + 48) = *v11;
  *(*(this + 13) + 64) = *(this + 11);
  re::PbrMaterial::makeTextureHandle((this + 48), v10);
  v11[0] = &unk_1F5CED240;
  re::TextureHandle::TextureHandle(&v11[1], v10);
  re::TextureHandle::operator=(*(this + 13) + 104, &v11[1]);
  v11[0] = &unk_1F5CED240;
  re::TextureHandle::invalidate(&v11[1]);
  re::TextureHandle::invalidate(v10);
  *(this + 14) = 0xFFFFFFFFFFFFFFFLL;
  v4 = *(this + 13);
  *a1 = v4;
  if (v4)
  {
    goto LABEL_10;
  }
}

uint64_t re::DrawingManager::addRenderFrameDeltaForNextFrame<re::UnlitParameterDelta,re::UnlitParameterTable>(uint64_t a1, uint64_t *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = re::PerFrameAllocatorManager::perFrameAllocator(v4[6], *(*(*(a1 + 256) + 144) + 48) & 0xFFFFFFFFFFFFFFFLL | (*(*(*(a1 + 256) + 144) + 40) << 60));
  v6 = (*(*v5 + 32))(v5, 80, 16);
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *v6 = &unk_1F5CD4138;
  objc_initWeak((v6 + 8), 0);
  *v6 = &unk_1F5CED200;
  __asm { FMOV            V0.4S, #1.0 }

  *(v6 + 32) = _Q0;
  *(v6 + 48) = 1065353216;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  v12 = *a2;
  *(v6 + 16) = 0;
  if (v12)
  {
    v13 = (v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  objc_storeWeak((v6 + 8), v13);
  if (!*(a1 + 608))
  {
    *(a1 + 608) = v5;
    re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity((a1 + 608), 0);
    *(a1 + 624) += 2;
  }

  v15 = v6;
  re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::add(a1 + 608, &v15);
  return v6;
}

void re::UnlitParameterDelta::applyDeltaChange(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 1);
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (*(this + 16) == 1)
    {
      *(WeakRetained + 18) = 3;
      v4 = *(this + 2);
      *(WeakRetained + 14) = *(this + 12);
      *(WeakRetained + 40) = v4;
    }

    if (*(this + 17) == 1)
    {
      re::TextureHandle::TextureHandle(v5, (this + 8));
      re::TextureHandle::operator=(v3 + 96, v5);
      re::TextureHandle::invalidate(v5);
    }
  }
}

uint64_t re::UnlitTextureSource::lookup@<X0>(uint64_t this@<X0>, const re::WeakStringID *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 == 0x34EAA28FD9A1AC37 && *(this + 16) && *(this + 8))
  {
    *a3 = 1;
    *(a3 + 1) = 0;
  }

  else
  {
    *a3 = 0;
  }

  return this;
}

uint64_t re::UnlitTextureSource::layoutHash(re::UnlitTextureSource *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    if (*(this + 1))
    {
      LODWORD(v1) = 73244475;
    }

    else
    {
      LODWORD(v1) = 0;
    }
  }

  return (73244475 * (v1 ^ WORD1(v1))) ^ ((73244475 * (v1 ^ WORD1(v1))) >> 16);
}

void re::UnlitTextureSource::textureAt(os_unfair_lock_s **this@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!a2 && this[2] && this[1])
  {
    re::TextureHandle::metalTexture(a3, this + 1);
  }

  else
  {
    *a3 = 0;
  }
}

__n128 re::make::shared::object<re::UnlitParameterTable>@<Q0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 128, 16);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 32) = 0u;
  ArcSharedObject::ArcSharedObject(v4, 0);
  *v4 = &unk_1F5CED298;
  *(v4 + 32) = &unk_1F5CED2E0;
  __asm { FMOV            V0.4S, #1.0 }

  *(v4 + 48) = result;
  *(v4 + 64) = 1065353216;
  *(v4 + 80) = 0;
  *(v4 + 96) = &unk_1F5CED240;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *a2 = v4;
  return result;
}

void re::UnlitParameterTable::~UnlitParameterTable(re::UnlitParameterTable *this)
{
  *this = &unk_1F5CED298;
  *(this + 12) = &unk_1F5CED240;
  re::TextureHandle::invalidate(this + 13);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CED298;
  *(this + 12) = &unk_1F5CED240;
  re::TextureHandle::invalidate(this + 13);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *re::UnlitConstantSource::lookup(re::UnlitConstantSource *this, const re::WeakStringID *a2)
{
  if (*a2 != 0x1F383C7C217AE8A0)
  {
    if (*a2 == 0x4FA976128CFELL && (*(this + 48) & 1) != 0)
    {
      return &re::UnlitConstantSource::s_locations;
    }

    return 0;
  }

  if ((*(this + 48) & 2) == 0)
  {
    return 0;
  }

  return &unk_1ECEF6EAC;
}

void *re::ecs2::allocInfo_GroundPlaneComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_218, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_218))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A5830, "GroundPlaneComponent");
    __cxa_guard_release(&_MergedGlobals_218);
  }

  return &unk_1EE1A5830;
}

void re::ecs2::initInfo_GroundPlaneComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x1AAD283225AD710;
  v20[1] = "GroundPlaneComponent";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1A5818, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5818))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1A5820 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "isSceneUnderstandingMeshPhysicsFallback";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1900000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1A5828 = v18;
    __cxa_guard_release(&qword_1EE1A5818);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A5820;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::GroundPlaneComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::GroundPlaneComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::GroundPlaneComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::GroundPlaneComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs220GroundPlaneComponentELNS_17RealityKitReleaseE2EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void re::internal::defaultConstruct<re::ecs2::GroundPlaneComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD1410;
}

void re::internal::defaultConstructV2<re::ecs2::GroundPlaneComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD1410;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs220GroundPlaneComponentELNS_17RealityKitReleaseE2EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 2;
    *(a2 + 8) = 0;
  }
}

void re::introspect_LoadTraceType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A58C8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1A58D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A58D0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A5920, "LoadTraceType", 1, 1, 1, 1);
      qword_1EE1A5920 = &unk_1F5D0C658;
      qword_1EE1A5960 = &re::introspect_LoadTraceType(BOOL)::enumTable;
      dword_1EE1A5930 = 9;
      __cxa_guard_release(&qword_1EE1A58D0);
    }

    if (_MergedGlobals_219)
    {
      break;
    }

    _MergedGlobals_219 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A5920, a2);
    v35 = 0xCE13B02F3DC4EF72;
    v36 = "LoadTraceType";
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
      v6 = qword_1EE1A5960;
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
      xmmword_1EE1A5940 = v37;
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
    if (__cxa_guard_acquire(&qword_1EE1A58C8))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Unknown";
      qword_1EE1A58E8 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Synchronous";
      qword_1EE1A58F0 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "Asynchronous";
      qword_1EE1A58F8 = v33;
      __cxa_guard_release(&qword_1EE1A58C8);
    }
  }
}

void *re::ecs2::allocInfo_LoadTraceComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A58D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A58D8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A5968, "LoadTraceComponent");
    __cxa_guard_release(&qword_1EE1A58D8);
  }

  return &unk_1EE1A5968;
}

void re::ecs2::initInfo_LoadTraceComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v27[0] = 0xAB5761FC7B9757BCLL;
  v27[1] = "LoadTraceComponent";
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  *(this + 2) = v28;
  if ((atomic_load_explicit(&qword_1EE1A58E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A58E0))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1A5900 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_uint32_t(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "loadTraceId";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1C00000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1A5908 = v18;
    v19 = re::introspectionAllocator();
    re::introspect_LoadTraceType(v19, v20);
    v21 = (*(*v19 + 32))(v19, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "loadTraceType";
    *(v21 + 16) = &qword_1EE1A5920;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x2000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1A5910 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_BOOL(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "loadCacheUsed";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x2100000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1A5918 = v25;
    __cxa_guard_release(&qword_1EE1A58E0);
  }

  *(this + 2) = 0xE800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1A5900;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::LoadTraceComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::LoadTraceComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::LoadTraceComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::LoadTraceComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs218LoadTraceComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v26 = v28;
}

void *re::internal::defaultDestruct<re::ecs2::LoadTraceComponent>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(a3 + 23);
  re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(a3 + 17);
  re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(a3 + 11);
  re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(a3 + 5);
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void *re::internal::defaultDestructV2<re::ecs2::LoadTraceComponent>(uint64_t *a1)
{
  re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(a1 + 23);
  re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(a1 + 17);
  re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(a1 + 11);
  re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(a1 + 5);
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

os_log_t ___ZN2re4ecs218LoadTraceComponent3logEv_block_invoke()
{
  result = os_log_create("com.apple.re", "LoadTraceComponent");
  re::ecs2::LoadTraceComponent::log(void)::log = result;
  return result;
}

uint64_t re::ecs2::LoadTraceComponent::emitLoadTraceSignpost(re::ecs2::LoadTraceComponent *this, __int16 a2)
{
  result = re::internal::enableSignposts(0, 0);
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

void re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_32, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      v5 = 8;
      do
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v5);
        if (v7 < 0)
        {
          *(v6 + v5) = v7 & 0x7FFFFFFF;
          re::AssetHandle::~AssetHandle((v6 + v5 + 8));
          v3 = *(a1 + 32);
        }

        ++v4;
        v5 += 40;
      }

      while (v4 < v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

void re::ecs2::LoadTraceComponent::updateTrackedAssets(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::clear(a1 + 184);
  v6 = *(a1 + 168);
  if (v6)
  {
    v7 = 0;
    v8 = (*(a1 + 152) + 8);
    while (1)
    {
      v9 = *v8;
      v8 += 10;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(a1 + 168);
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
    re::AssetHandle::AssetHandle(v50, (*(a1 + 152) + 40 * v7 + 16));
    v10 = v51;
    if (v51)
    {
      v11 = *(v51 + 792);
    }

    else
    {
      v11 = 0;
    }

    v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v51 ^ (v51 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v51 ^ (v51 >> 30))) >> 27));
    re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(&v52, a1 + 40, v51, v12 ^ v11 ^ (v12 >> 31));
    if (HIDWORD(v53) == 0x7FFFFFFF)
    {
      v13 = v10 ? *(v10 + 280) : 0;
      if (*a4)
      {
        v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
        v15 = *(*(a4 + 8) + 4 * ((v14 ^ (v14 >> 31)) % *(a4 + 24)));
        if (v15 != 0x7FFFFFFF)
        {
          v16 = *(a4 + 16);
          while (*(v16 + 32 * v15 + 8) != v13)
          {
            v15 = *(v16 + 32 * v15) & 0x7FFFFFFF;
            if (v15 == 0x7FFFFFFF)
            {
              goto LABEL_27;
            }
          }

          if (v10)
          {
            v17 = *(v10 + 792);
          }

          else
          {
            v17 = 0;
          }

          v52 = 0;
          v53 = 0;
          v54 = 0;
          re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(&v52, a1 + 40, v10, v12 ^ v17 ^ (v12 >> 31));
          if (HIDWORD(v53) == 0x7FFFFFFF)
          {
            v18 = re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::allocEntry((a1 + 40), v53, v52);
            re::AssetHandle::AssetHandle((v18 + 8), v50);
            *(v18 + 32) = 0;
            ++*(a1 + 80);
          }

          re::AssetHandle::AssetHandle(v49, v50);
          re::ecs2::LoadTraceComponent::emitLoadTraceSignpost(a1, v46, v49, a4);
          re::AssetHandle::~AssetHandle(v49);
        }
      }
    }

LABEL_27:
    re::AssetHandle::~AssetHandle(v50);
    v19 = *(a1 + 168);
    if (v19 <= v7 + 1)
    {
      v19 = v7 + 1;
    }

    while (v19 - 1 != v7)
    {
      LODWORD(v7) = v7 + 1;
      if ((*(*(a1 + 152) + 40 * v7 + 8) & 0x80000000) != 0)
      {
        goto LABEL_33;
      }
    }

    LODWORD(v7) = v19;
LABEL_33:
    ;
  }

  v20 = *(a1 + 72);
  if (v20)
  {
    v21 = 0;
    v22 = *(a1 + 56);
    while (1)
    {
      v23 = *v22;
      v22 += 12;
      if (v23 < 0)
      {
        break;
      }

      if (v20 == ++v21)
      {
        v21 = *(a1 + 72);
        break;
      }
    }
  }

  else
  {
    v21 = 0;
  }

  if (v20 != v21)
  {
    LODWORD(v24) = v21;
    do
    {
      v25 = *(a1 + 56) + 48 * v21;
      v26 = *(a1 + 160);
      if (!v26 || ((v27 = *(v25 + 16)) == 0 ? (v28 = 0) : (v28 = *(v27 + 792)), v29 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v27 ^ (v27 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v27 ^ (v27 >> 30))) >> 27)), v30 = *(*(a1 + 144) + 4 * ((v28 ^ (v29 >> 31) ^ v29) % v26)), v30 == 0x7FFFFFFF))
      {
LABEL_50:
        re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::add(a1 + 184, (v25 + 8));
        LODWORD(v20) = *(a1 + 72);
      }

      else
      {
        v31 = *(a1 + 152);
        while (*(v31 + 40 * v30 + 24) != v27)
        {
          v30 = *(v31 + 40 * v30 + 8) & 0x7FFFFFFF;
          if (v30 == 0x7FFFFFFF)
          {
            goto LABEL_50;
          }
        }
      }

      if (v20 <= v24 + 1)
      {
        v32 = (v24 + 1);
      }

      else
      {
        v32 = v20;
      }

      while (v32 - 1 != v24)
      {
        v24 = (v24 + 1);
        if ((*(*(a1 + 56) + 48 * v24) & 0x80000000) != 0)
        {
          v21 = v24;
          LODWORD(v32) = v24;
          goto LABEL_58;
        }
      }

      v21 = v32;
LABEL_58:
      LODWORD(v24) = v32;
    }

    while (v20 != v32);
  }

  v33 = *(a1 + 216);
  if (v33)
  {
    v34 = 0;
    v35 = (*(a1 + 200) + 8);
    while (1)
    {
      v36 = *v35;
      v35 += 10;
      if (v36 < 0)
      {
        break;
      }

      if (v33 == ++v34)
      {
        LODWORD(v34) = *(a1 + 216);
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
    re::AssetHandle::AssetHandle(v50, (*(a1 + 200) + 40 * v34 + 16));
    if (v51)
    {
      v37 = *(v51 + 792);
    }

    else
    {
      v37 = 0;
    }

    v38 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v51 ^ (v51 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v51 ^ (v51 >> 30))) >> 27));
    re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(&v52, a1 + 40, v51, v37 ^ (v38 >> 31) ^ v38);
    v39 = HIDWORD(v53);
    if (HIDWORD(v53) != 0x7FFFFFFF)
    {
      v40 = *(a1 + 56);
      v41 = (v40 + 48 * HIDWORD(v53));
      v42 = *v41 & 0x7FFFFFFF;
      if (v54 == 0x7FFFFFFF)
      {
        *(*(a1 + 48) + 4 * v53) = v42;
      }

      else
      {
        *(v40 + 48 * v54) = *(v40 + 48 * v54) & 0x80000000 | v42;
      }

      v43 = *v41;
      if (*v41 < 0)
      {
        *v41 = v43 & 0x7FFFFFFF;
        re::AssetHandle::~AssetHandle((v41 + 2));
        v40 = *(a1 + 56);
        v43 = *(v40 + 48 * v39);
      }

      *(v40 + 48 * v39) = *(a1 + 76) | v43 & 0x80000000;
      --*(a1 + 68);
      v44 = *(a1 + 80) + 1;
      *(a1 + 76) = v39;
      *(a1 + 80) = v44;
    }

    re::AssetHandle::AssetHandle(v48, v50);
    re::ecs2::LoadTraceComponent::emitLoadTraceSignpost(a1, v47, v48, a4);
    re::AssetHandle::~AssetHandle(v48);
    re::AssetHandle::~AssetHandle(v50);
    v45 = *(a1 + 216);
    if (v45 <= v34 + 1)
    {
      v45 = v34 + 1;
    }

    while (v45 - 1 != v34)
    {
      LODWORD(v34) = v34 + 1;
      if ((*(*(a1 + 200) + 40 * v34 + 8) & 0x80000000) != 0)
      {
        goto LABEL_82;
      }
    }

    LODWORD(v34) = v45;
LABEL_82:
    ;
  }
}

uint64_t re::ecs2::LoadTraceComponent::emitLoadTraceSignpost(uint64_t a1, __int16 a2, re::AssetHandle *a3, uint64_t a4)
{
  v5 = *(a3 + 1);
  if (v5)
  {
    v5 = *(v5 + 280);
  }

  v8 = v5;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) >> 27));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a4, &v8, v6 ^ (v6 >> 31), v9);
  result = re::internal::enableSignposts(0, 0);
  if (result)
  {
    re::AssetHandle::assetInfo(a3);
    return kdebug_trace();
  }

  return result;
}

void re::ecs2::LoadTraceComponent::checkAssetLoadStates(uint64_t a1, __int16 a2, __int16 a3, __int16 a4, uint64_t a5)
{
  if (*(a1 + 116))
  {
    v10 = *(a1 + 112);
    if (v10)
    {
      memset_pattern16(*(a1 + 96), &memset_pattern_32, 4 * v10);
    }

    v11 = *(a1 + 120);
    if (v11)
    {
      v12 = 0;
      for (i = 0; i < v11; ++i)
      {
        v14 = *(a1 + 104);
        v15 = *(v14 + v12);
        if (v15 < 0)
        {
          *(v14 + v12) = v15 & 0x7FFFFFFF;
          re::AssetHandle::~AssetHandle((v14 + v12 + 8));
          v11 = *(a1 + 120);
        }

        v12 += 48;
      }
    }

    *(a1 + 116) = 0;
    *(a1 + 120) = 0;
    v16 = *(a1 + 128) + 1;
    *(a1 + 124) = 0x7FFFFFFF;
    *(a1 + 128) = v16;
  }

  v17 = *(a1 + 72);
  if (v17)
  {
    v18 = 0;
    v19 = *(a1 + 56);
    while (1)
    {
      v20 = *v19;
      v19 += 12;
      if (v20 < 0)
      {
        break;
      }

      if (v17 == ++v18)
      {
        v18 = *(a1 + 72);
        break;
      }
    }
  }

  else
  {
    v18 = 0;
  }

  if (v17 != v18)
  {
    LODWORD(v25) = v18;
    do
    {
      v26 = 3 * v18;
      re::AssetHandle::AssetHandle(v46, (*(a1 + 56) + 48 * v18 + 8));
      if (v47)
      {
        v27 = *(*(a1 + 56) + 16 * v26 + 32);
        v28 = atomic_load((v47 + 896));
        if (v28 == 2)
        {
          if (v27 != 1)
          {
            re::AssetHandle::AssetHandle(v45, v46);
            re::ecs2::LoadTraceComponent::emitLoadTraceSignpost(a1, a2, v45, a5);
            re::AssetHandle::~AssetHandle(v45);
            v44 = 1;
LABEL_27:
            re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::addOrReplace(a1 + 88, v46, &v44);
          }
        }

        else
        {
          if (!atomic_load((v47 + 896)))
          {
            if (v27 == 2)
            {
              goto LABEL_35;
            }

            re::AssetHandle::AssetHandle(v43, v46);
            re::ecs2::LoadTraceComponent::emitLoadTraceSignpost(a1, a3, v43, a5);
            re::AssetHandle::~AssetHandle(v43);
            v44 = 2;
            goto LABEL_27;
          }

          v30 = atomic_load((v47 + 896));
          if (v30 == 3 && v27 != 3)
          {
            re::AssetHandle::AssetHandle(v42, v46);
            re::ecs2::LoadTraceComponent::emitLoadTraceSignpost(a1, a4, v42, a5);
            re::AssetHandle::~AssetHandle(v42);
            v44 = 3;
            goto LABEL_27;
          }
        }
      }

LABEL_35:
      re::AssetHandle::~AssetHandle(v46);
      v32 = *(a1 + 72);
      if (v32 <= v25 + 1)
      {
        v33 = (v25 + 1);
      }

      else
      {
        v33 = v32;
      }

      while (v33 - 1 != v25)
      {
        v25 = (v25 + 1);
        if ((*(*(a1 + 56) + 48 * v25) & 0x80000000) != 0)
        {
          v18 = v25;
          LODWORD(v33) = v25;
          goto LABEL_42;
        }
      }

      v18 = v33;
LABEL_42:
      LODWORD(v25) = v33;
    }

    while (v32 != v33);
  }

  v21 = *(a1 + 120);
  if (v21)
  {
    v22 = 0;
    v23 = *(a1 + 104);
    while (1)
    {
      v24 = *v23;
      v23 += 12;
      if (v24 < 0)
      {
        break;
      }

      if (v21 == ++v22)
      {
        v22 = *(a1 + 120);
        break;
      }
    }
  }

  else
  {
    v22 = 0;
  }

  if (v21 != v22)
  {
    v34 = *(a1 + 104);
    LODWORD(v35) = v22;
    do
    {
      v36 = v34 + 48 * v22;
      v37 = *(v36 + 16);
      if (v37)
      {
        v38 = *(v37 + 792);
      }

      else
      {
        v38 = 0;
      }

      v39 = *(v36 + 32);
      v40 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v37 ^ (v37 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v37 ^ (v37 >> 30))) >> 27));
      re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(v46, a1 + 40, v37, v38 ^ (v40 >> 31) ^ v40);
      *(*(a1 + 56) + 48 * HIDWORD(v47) + 32) = v39;
      if (v21 <= v35 + 1)
      {
        v41 = (v35 + 1);
      }

      else
      {
        v41 = v21;
      }

      while (v41 - 1 != v35)
      {
        v35 = (v35 + 1);
        if ((*(v34 + 48 * v35) & 0x80000000) != 0)
        {
          v22 = v35;
          LODWORD(v41) = v35;
          goto LABEL_58;
        }
      }

      v22 = v41;
LABEL_58:
      LODWORD(v35) = v41;
    }

    while (v21 != v41);
  }
}

re::AssetHandle *re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::addOrReplace(uint64_t a1, const re::AssetHandle *a2, _BYTE *a3)
{
  v6 = *(a2 + 1);
  if (v6)
  {
    v7 = *(v6 + 792);
  }

  else
  {
    v7 = 0;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
  result = re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(&v12, a1, v6, v7 ^ (v8 >> 31) ^ v8);
  v10 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v11 = re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::allocEntry(a1, v13, v12);
    result = re::AssetHandle::AssetHandle((v11 + 8), a2);
    *(v11 + 32) = *a3;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    *(*(a1 + 16) + 48 * v10 + 32) = *a3;
  }

  return result;
}

double re::make::shared::unsafelyInplace<re::ecs2::LoadTraceComponent>(uint64_t a1)
{
  *(a1 + 224) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE5038;
  *(v1 + 28) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v1 + 76) = 0x7FFFFFFFLL;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0;
  *(v1 + 124) = 0x7FFFFFFFLL;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0;
  *(v1 + 172) = 0x7FFFFFFFLL;
  *(v1 + 184) = 0u;
  *(v1 + 200) = 0u;
  *(v1 + 216) = 0;
  *(v1 + 220) = 0x7FFFFFFFLL;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs218LoadTraceComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 6;
  *(a2 + 8) = 0;
  return result;
}

uint64_t re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_10;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 48 * v6 + 16) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 48 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 48 * v8 + 16) == a3)
      {
        break;
      }

      v8 = *(v7 + 48 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_11;
      }
    }

    v5 = v8;
  }

LABEL_11:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
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
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::init(v29, v9, v8);
          v11 = *v29;
          *v29 = *a1;
          *a1 = v11;
          v12 = *&v29[16];
          v13 = a1[2];
          *&v29[16] = v13;
          a1[2] = v12;
          v15 = *&v29[24];
          *&v29[24] = *(a1 + 3);
          v14 = *&v29[32];
          *(a1 + 3) = v15;
          ++*&v29[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = (v13 + v17);
                v20 = re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::allocEntry(a1, *(v13 + v17 + 40) % *(a1 + 6), *(v13 + v17 + 40));
                *(v20 + 16) = 0;
                *(v20 + 24) = 0;
                *(v20 + 8) = 0;
                *(v20 + 16) = v19[2];
                v19[2] = 0;
                v21 = *(v20 + 8);
                *(v20 + 8) = 0;
                *(v20 + 8) = v19[1];
                v19[1] = v21;
                v22 = *(v20 + 24);
                *(v20 + 24) = v19[3];
                v19[3] = v22;
                v13 = *&v29[16];
                *(v20 + 32) = *(*&v29[16] + v17 + 32);
              }

              ++v18;
              v17 += 48;
            }

            while (v18 < v16);
          }

          re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(v29);
        }
      }

      else
      {
        if (v8)
        {
          v25 = 2 * v7;
        }

        else
        {
          v25 = 3;
        }
      }

      a2 = a3 % *(a1 + 6);
      v6 = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    v23 = a1[2];
    v24 = *(v23 + 48 * v5);
  }

  else
  {
    v23 = a1[2];
    v24 = *(v23 + 48 * v5);
    *(a1 + 9) = v24 & 0x7FFFFFFF;
  }

  v26 = v23 + 48 * v5;
  *v26 = v24 | 0x80000000;
  v27 = a1[1];
  *v26 = *(v27 + 4 * a2) | 0x80000000;
  *(v27 + 4 * a2) = v5;
  *(v26 + 40) = a3;
  ++*(a1 + 7);
  return v23 + 48 * v5;
}

void re::HashTable<re::AssetHandle,re::ecs2::LoadTraceAssetLoadState,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 48 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_32, 4 * v10);
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

void *re::ecs2::allocInfo_ClientWorldOriginRefComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_220, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_220))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A5A10, "ClientWorldOriginRefComponent");
    __cxa_guard_release(&_MergedGlobals_220);
  }

  return &unk_1EE1A5A10;
}

void re::ecs2::initInfo_ClientWorldOriginRefComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xE6691EEFCF88156ELL;
  v16[1] = "ClientWorldOriginRefComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1A5A08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5A08))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1A5A00 = v14;
    __cxa_guard_release(&qword_1EE1A5A08);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A5A00;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ClientWorldOriginRefComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ClientWorldOriginRefComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ClientWorldOriginRefComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ClientWorldOriginRefComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs229ClientWorldOriginRefComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void re::internal::defaultConstruct<re::ecs2::ClientWorldOriginRefComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE6B68;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::ClientWorldOriginRefComponent>(ArcSharedObject *a1)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE6B68;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs229ClientWorldOriginRefComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 10;
  *(a2 + 8) = 0;
  return result;
}

void *re::ecs2::allocInfo_WorldRootToken(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A5AB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5AB0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A5AF0, "WorldRootToken");
    __cxa_guard_release(&qword_1EE1A5AB0);
  }

  return &unk_1EE1A5AF0;
}

void re::ecs2::initInfo_WorldRootToken(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v12[0] = 0x1F8500F0353C75CALL;
  v12[1] = "WorldRootToken";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE1A5AA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5AA8))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_uint64_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "m_worldRootId";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    _MergedGlobals_221 = v10;
    __cxa_guard_release(&qword_1EE1A5AA8);
  }

  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &_MergedGlobals_221;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::WorldRootToken>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::WorldRootToken>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::WorldRootToken>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::WorldRootToken>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v11 = v13;
}

void *re::ecs2::allocInfo_WorldRootComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A5AC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5AC0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A5B80, "WorldRootComponent");
    __cxa_guard_release(&qword_1EE1A5AC0);
  }

  return &unk_1EE1A5B80;
}

void re::ecs2::initInfo_WorldRootComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v31[0] = 0xE23DDCC2FBA88FD2;
  v31[1] = "WorldRootComponent";
  if (v31[0])
  {
    if (v31[0])
    {
    }
  }

  *(this + 2) = v32;
  if ((atomic_load_explicit(&qword_1EE1A5AC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5AC8))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1A5AD0 = v14;
    v15 = re::introspectionAllocator();
    v16 = v15;
    v17 = qword_1EE1A5AB8;
    if (!qword_1EE1A5AB8)
    {
      v17 = re::ecs2::allocInfo_WorldRootToken(v15);
      qword_1EE1A5AB8 = v17;
      re::ecs2::initInfo_WorldRootToken(v17, v18, v19, v20);
    }

    v21 = (*(*v16 + 32))(v16, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "worldRootToken";
    *(v21 + 16) = v17;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x2000000002;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1A5AD8 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::introspect_BOOL(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "applyToSelf";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x2800000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1A5AE0 = v25;
    v26 = re::introspectionAllocator();
    v28 = re::introspect_BOOL(1, v27);
    v29 = (*(*v26 + 32))(v26, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "useLegacyWorldIBL";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x2900000004;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1A5AE8 = v29;
    __cxa_guard_release(&qword_1EE1A5AC8);
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1A5AD0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::WorldRootComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::WorldRootComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::WorldRootComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::WorldRootComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs218WorldRootComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v30 = v32;
}

void re::internal::defaultConstruct<re::ecs2::WorldRootComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE3D40;
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  *(v3 + 48) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::WorldRootComponent>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE3D40;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs218WorldRootComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 3;
  *(a2 + 8) = 0;
  return result;
}

unint64_t re::ecs2::SpatialMedia::calculateEffectiveImmersiveFoVInDegrees(re::ecs2::SpatialMedia *this, float a2, float a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = tanf(((a2 * 0.5) * 3.1416) / 180.0);
  v7 = atanf(v5 / a3);
  v8 = ((v7 * 180.0) * 0.31831) + ((v7 * 180.0) * 0.31831);
  if (a2 <= 90.0 || v8 <= 80.0)
  {
    if (a2 <= 90.0)
    {
      if (v8 > 80.0)
      {
        v16 = tanf(0.69813);
        v17 = atanf(v16 * a3);
        v33 = ((v17 * 180.0) * 0.31831) + ((v17 * 180.0) * 0.31831);
        v13 = 4;
        goto LABEL_9;
      }

      if (a2 >= 40.0 || v8 >= 40.0)
      {
        if (a2 < 40.0)
        {
          v28 = tanf(0.34907);
          v29 = atanf(v28 / a3);
          v32 = ((v29 * 180.0) * 0.31831) + ((v29 * 180.0) * 0.31831);
          v13 = 7;
          v19 = 1109393408;
          goto LABEL_13;
        }

        if (v8 >= 40.0)
        {
          v13 = 0;
          v32 = ((v7 * 180.0) * 0.31831) + ((v7 * 180.0) * 0.31831);
          v20 = a2;
          goto LABEL_14;
        }

        v30 = tanf(0.34907);
        v31 = atanf(v30 * a3);
        v33 = ((v31 * 180.0) * 0.31831) + ((v31 * 180.0) * 0.31831);
        v13 = 8;
      }

      else
      {
        v24 = tanf(0.34907);
        v25 = atanf(v24 / a3);
        v26 = ((v25 * 180.0) * 0.31831) + ((v25 * 180.0) * 0.31831);
        v33 = 40.0;
        if (v26 >= 40.0)
        {
          v32 = v26;
          v13 = 6;
          goto LABEL_15;
        }

        v27 = atanf(v24 * a3);
        v33 = ((v27 * 180.0) * 0.31831) + ((v27 * 180.0) * 0.31831);
        v13 = 5;
      }

      v18 = 1109393408;
      goto LABEL_10;
    }

    v14 = tanf(0.7854);
    v15 = atanf(v14 / a3);
    v32 = ((v15 * 180.0) * 0.31831) + ((v15 * 180.0) * 0.31831);
    v13 = 3;
LABEL_12:
    v19 = 1119092736;
LABEL_13:
    v20 = *&v19;
LABEL_14:
    v33 = v20;
    goto LABEL_15;
  }

  v9 = tanf(0.7854);
  v10 = atanf(v9 / a3);
  if ((((v10 * 180.0) * 0.31831) + ((v10 * 180.0) * 0.31831)) <= 80.0)
  {
    v32 = ((v10 * 180.0) * 0.31831) + ((v10 * 180.0) * 0.31831);
    v13 = 2;
    goto LABEL_12;
  }

  v11 = tanf(0.69813);
  v12 = atanf(v11 * a3);
  v33 = ((v12 * 180.0) * 0.31831) + ((v12 * 180.0) * 0.31831);
  v13 = 1;
LABEL_9:
  v18 = 1117782016;
LABEL_10:
  LODWORD(v32) = v18;
LABEL_15:
  v21 = re::MediaDefaults::logEnabled(v6);
  if (v21)
  {
    v22 = *re::spatialMediaLogObjects(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219264;
      v35 = a2;
      v36 = 2048;
      v37 = v8;
      v38 = 2048;
      v39 = a3;
      v40 = 2048;
      v41 = v33;
      v42 = 2048;
      v43 = v32;
      v44 = 1024;
      v45 = v13;
      _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "Clamped immersiveFOVInDegrees from hFOV: %f, vFOV: %f aspectRatio: %f, to: hFOV: %f, vFOV %f, using clamping strategy: %i", buf, 0x3Au);
    }
  }

  return __PAIR64__(LODWORD(v32), LODWORD(v33));
}

uint64_t re::ecs2::SpatialMedia::calculateImmersiveFrame(re::ecs2::SpatialMedia *this, float a2, float a3)
{
  v4 = re::ecs2::SpatialMedia::calculateEffectiveImmersiveFoVInDegrees(this, a2, a3);
  v5 = tan(*(&v4 + 1) * 0.5 * 3.14159265 / 180.0);
  v6 = v5 / tan(0.698131701);
  v7 = fminf(v6, 1.0);
  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  v8 = (v7 * 1.55) + (1.0 - v7) * 0.25;
  *&v9 = v8 * a3;
  *(&v9 + 1) = v8;
  return v9;
}

void *re::ecs2::allocInfo_ProjectiveShadowReceiverComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_222, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_222))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A5C40, "ProjectiveShadowReceiverComponent");
    __cxa_guard_release(&_MergedGlobals_222);
  }

  return &unk_1EE1A5C40;
}

void re::ecs2::initInfo_ProjectiveShadowReceiverComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v24[0] = 0xE32F79A252B689ELL;
  v24[1] = "ProjectiveShadowReceiverComponent";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&qword_1EE1A5C18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5C18))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1A5C28 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "isVisible";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1900000002;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1A5C30 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_BOOL(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "isAutomaticallyAdded";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x1A00000003;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1A5C38 = v22;
    __cxa_guard_release(&qword_1EE1A5C18);
  }

  *(this + 2) = 0x6000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1A5C28;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ProjectiveShadowReceiverComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ProjectiveShadowReceiverComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ProjectiveShadowReceiverComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ProjectiveShadowReceiverComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs233ProjectiveShadowReceiverComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v23 = v25;
}

float32x4_t re::internal::defaultConstruct<re::ecs2::ProjectiveShadowReceiverComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDF540;
  *(v3 + 25) = 1;
  result.i64[0] = 0x7F0000007FLL;
  result.i64[1] = 0x7F0000007FLL;
  *(v3 + 32) = vnegq_f32(result);
  *(v3 + 48) = result;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 64) = 0;
  return result;
}

void *re::internal::defaultDestruct<re::ecs2::ProjectiveShadowReceiverComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  re::AssetHandle::~AssetHandle((a3 + 8));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

float32x4_t re::internal::defaultConstructV2<re::ecs2::ProjectiveShadowReceiverComponent>(ArcSharedObject *a1)
{
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDF540;
  *(v1 + 25) = 1;
  result.i64[0] = 0x7F0000007FLL;
  result.i64[1] = 0x7F0000007FLL;
  *(v1 + 32) = vnegq_f32(result);
  *(v1 + 48) = result;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 64) = 0;
  return result;
}

void *re::internal::defaultDestructV2<re::ecs2::ProjectiveShadowReceiverComponent>(void *a1)
{
  re::AssetHandle::~AssetHandle((a1 + 8));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::ecs2::allocInfo_ProjectiveShadowReceiverSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A5C20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5C20))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A5CD0, "ProjectiveShadowReceiverSystem");
    __cxa_guard_release(&qword_1EE1A5C20);
  }

  return &unk_1EE1A5CD0;
}

void re::ecs2::initInfo_ProjectiveShadowReceiverSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xE33F64CC7DE6D83ALL;
  v8[1] = "ProjectiveShadowReceiverSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x13000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_ProjectiveShadowReceiverSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ProjectiveShadowReceiverSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ProjectiveShadowReceiverSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::ProjectiveShadowReceiverSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::ProjectiveShadowReceiverSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ProjectiveShadowReceiverSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ProjectiveShadowReceiverSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

double re::internal::defaultConstruct<re::ecs2::ProjectiveShadowReceiverSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::ecs2::System::System(a3, 1, 1);
  *(v3 + 288) = 0;
  *(v3 + 296) = 0;
  result = 0.0;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *v3 = &unk_1F5CED340;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::ProjectiveShadowReceiverSystem>(uint64_t a1)
{
  v1 = re::ecs2::System::System(a1, 1, 1);
  *(v1 + 288) = 0;
  *(v1 + 296) = 0;
  result = 0.0;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *v1 = &unk_1F5CED340;
  return result;
}

double re::ecs2::ProjectiveShadowReceiverSystem::willRemoveSystemFromECSService(re::ecs2::ProjectiveShadowReceiverSystem *this)
{
  *(this + 36) = 0;
  result = 0.0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return result;
}

void re::ecs2::ProjectiveShadowReceiverSystem::~ProjectiveShadowReceiverSystem(re::ecs2::ProjectiveShadowReceiverSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs233ProjectiveShadowReceiverComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

void *re::ecs2::allocInfo_WorldScopeComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_223, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_223))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A5D78, "WorldScopeComponent");
    __cxa_guard_release(&_MergedGlobals_223);
  }

  return &unk_1EE1A5D78;
}

void re::ecs2::initInfo_WorldScopeComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x4CD7DED8B5FCA36;
  v16[1] = "WorldScopeComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1A5D70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5D70))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1A5D68 = v14;
    __cxa_guard_release(&qword_1EE1A5D70);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A5D68;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::WorldScopeComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::WorldScopeComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::WorldScopeComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::WorldScopeComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs219WorldScopeComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void re::internal::defaultConstruct<re::ecs2::WorldScopeComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE3BD8;
}

void re::internal::defaultConstructV2<re::ecs2::WorldScopeComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE3BD8;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs219WorldScopeComponentELNS_17RealityKitReleaseE3EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 3;
  *(a2 + 8) = 0;
  return result;
}

unint64_t re::ecs2::MeshComponentHelper::dynamicFunctionConstantsForMeshScene@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(&qword_1EE1A5E18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5E18))
  {
    qword_1EE1A5E10 = re::hashStringWithLength("EnableVideoSpatialRendering", 0x1B);
    __cxa_guard_release(&qword_1EE1A5E18);
  }

  if ((atomic_load_explicit(&qword_1EE1A5E28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5E28))
  {
    qword_1EE1A5E20 = re::hashStringWithLength("EnableTriPlanarVideoSupport", 0x1B);
    __cxa_guard_release(&qword_1EE1A5E28);
  }

  if ((atomic_load_explicit(&qword_1EE1A5E38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5E38))
  {
    qword_1EE1A5E30 = re::hashStringWithLength("EnableInverseToneMapping", 0x18);
    __cxa_guard_release(&qword_1EE1A5E38);
  }

  if ((atomic_load_explicit(&qword_1EE1A5E48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5E48))
  {
    qword_1EE1A5E40 = re::hashStringWithLength("EnableScreenVideoLetterBoxPadding", 0x21);
    __cxa_guard_release(&qword_1EE1A5E48);
  }

  if ((atomic_load_explicit(&qword_1EE1A5E58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5E58))
  {
    qword_1EE1A5E50 = re::hashStringWithLength("EnableVideoColorSpaceTransformation", 0x23);
    __cxa_guard_release(&qword_1EE1A5E58);
  }

  if ((atomic_load_explicit(&qword_1EE1A5E68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5E68))
  {
    qword_1EE1A5E60 = re::hashStringWithLength("EnableVideoColorTransformation", 0x1E);
    __cxa_guard_release(&qword_1EE1A5E68);
  }

  if ((atomic_load_explicit(&qword_1EE1A5E78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5E78))
  {
    qword_1EE1A5E70 = re::hashStringWithLength("VideoSamplingMode", 0x11);
    __cxa_guard_release(&qword_1EE1A5E78);
  }

  if ((atomic_load_explicit(&qword_1EE1A5E88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5E88))
  {
    qword_1EE1A5E80 = re::hashStringWithLength("EnableVideoFoveaRendering", 0x19);
    __cxa_guard_release(&qword_1EE1A5E88);
  }

  if ((atomic_load_explicit(&qword_1EE1A5E98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5E98))
  {
    qword_1EE1A5E90 = re::hashStringWithLength("EnableVideoColorInvert", 0x16);
    __cxa_guard_release(&qword_1EE1A5E98);
  }

  if ((atomic_load_explicit(&qword_1EE1A5EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5EA8))
  {
    qword_1EE1A5EA0 = re::hashStringWithLength("EnableDepthMitigation", 0x15);
    __cxa_guard_release(&qword_1EE1A5EA8);
  }

  if ((atomic_load_explicit(&qword_1EE1A5EB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5EB8))
  {
    qword_1EE1A5EB0 = re::hashStringWithLength("EnableDepthDither", 0x11);
    __cxa_guard_release(&qword_1EE1A5EB8);
  }

  if ((atomic_load_explicit(&qword_1EE1A5EC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5EC8))
  {
    qword_1EE1A5EC0 = re::hashStringWithLength("PerceptualBlendingMode", 0x16);
    __cxa_guard_release(&qword_1EE1A5EC8);
  }

  if ((atomic_load_explicit(&qword_1EE1A5ED8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5ED8))
  {
    qword_1EE1A5ED0 = re::hashStringWithLength("PortalClippingMode", 0x12);
    __cxa_guard_release(&qword_1EE1A5ED8);
  }

  if ((atomic_load_explicit(&qword_1EE1A5EE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5EE8))
  {
    qword_1EE1A5EE0 = re::hashStringWithLength("EnableAREnvProbe", 0x10);
    __cxa_guard_release(&qword_1EE1A5EE8);
  }

  if ((atomic_load_explicit(&qword_1EE1A5EF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5EF8))
  {
    qword_1EE1A5EF0 = re::hashStringWithLength("EnableVirtualEnvironmentProbes", 0x1E);
    __cxa_guard_release(&qword_1EE1A5EF8);
  }

  if ((atomic_load_explicit(&qword_1EE1A5F08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5F08))
  {
    qword_1EE1A5F00 = re::hashStringWithLength("EnableIBLRotation", 0x11);
    __cxa_guard_release(&qword_1EE1A5F08);
  }

  if ((atomic_load_explicit(&qword_1EE1A5F18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5F18))
  {
    qword_1EE1A5F10 = re::hashStringWithLength("EnableIBLBlending", 0x11);
    __cxa_guard_release(&qword_1EE1A5F18);
  }

  if ((atomic_load_explicit(&qword_1EE1A5F28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5F28))
  {
    qword_1EE1A5F20 = re::hashStringWithLength("EnableShaderGraphLightSpill", 0x1B);
    __cxa_guard_release(&qword_1EE1A5F28);
  }

  if ((atomic_load_explicit(&qword_1EE1A5F38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5F38))
  {
    qword_1EE1A5F30 = re::hashStringWithLength("EnableVideoLegacyMode", 0x15);
    __cxa_guard_release(&qword_1EE1A5F38);
  }

  if ((atomic_load_explicit(&qword_1EE1A5F48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5F48))
  {
    qword_1EE1A5F40 = re::hashStringWithLength("VideoTriangleFillMode", 0x15);
    __cxa_guard_release(&qword_1EE1A5F48);
  }

  if ((atomic_load_explicit(&qword_1EE1A5F58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5F58))
  {
    qword_1EE1A5F50 = re::hashStringWithLength("EnableUIShadowReceiver", 0x16);
    __cxa_guard_release(&qword_1EE1A5F58);
  }

  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(a2, *(a1 + 64), 27);
  v23 = qword_1EE1A5EC0;
  v25 = *(a1 + 32);
  v4 = re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
  if ((*(a1 + 36) & 2) == 0)
  {
    v23 = qword_1EE1A5EA0;
    v25 = 0;
    v4 = re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
  }

  v5 = re::useDepthDither(v4);
  v6 = re::s_debugSettingsManager;
  if (re::s_debugSettingsManager)
  {
    v23 = 0x578BEFFA8D1BD166;
    v24 = "overrides:enableDepthDither";
    LOBYTE(v25) = 0;
    v6 = re::DebugSettingsManager::getWithErrorCode<BOOL>(re::s_debugSettingsManager, &v23, &v25);
    if (!v6)
    {
      v5 = v25;
    }

    if (v23)
    {
      if (v23)
      {
      }
    }
  }

  if ((v5 & 1) == 0 || (re::useDepthDither(v6) & 1) == 0)
  {
    v23 = qword_1EE1A5EB0;
    v25 = v5;
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    v23 = qword_1EE1A5E20;
    v25 = *(v7 + 244);
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
    v23 = qword_1EE1A5E30;
    v25 = *(*(a1 + 8) + 247);
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
    v23 = qword_1EE1A5E40;
    v25 = *(*(a1 + 8) + 257);
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
    v23 = qword_1EE1A5E50;
    v25 = *(*(a1 + 8) + 245);
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
    v23 = qword_1EE1A5E60;
    v25 = *(*(a1 + 8) + 248);
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
    v23 = qword_1EE1A5E70;
    v25 = *(*(a1 + 8) + 252);
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
    v23 = qword_1EE1A5E80;
    v25 = 0;
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
    v23 = qword_1EE1A5E90;
    v25 = *(*(a1 + 8) + 349);
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
    v23 = qword_1EE1A5F30;
    v25 = *(*(a1 + 8) + 256);
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
    re::AssetHandle::AssetHandle(&v23, (*(a1 + 8) + 80));
    if (v24)
    {
      v8 = *(*(a1 + 8) + 75);
      re::AssetHandle::~AssetHandle(&v23);
      if (v8 == 1)
      {
        v23 = qword_1EE1A5E10;
        v9 = 1;
LABEL_39:
        v25 = v9;
        re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
        v23 = qword_1EE1A5F40;
        v25 = *(*(a1 + 8) + 352);
        re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
        goto LABEL_40;
      }
    }

    else
    {
      re::AssetHandle::~AssetHandle(&v23);
    }

    v23 = qword_1EE1A5E10;
    v9 = *(*(a1 + 8) + 74) == 1;
    goto LABEL_39;
  }

LABEL_40:
  if (*(a1 + 52) <= 0.0)
  {
    v23 = qword_1EE1A5EE0;
    v25 = 0;
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
    v23 = qword_1EE1A5EF0;
    v25 = 0;
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
  }

  if (*(a1 + 56) == 1)
  {
    v23 = qword_1EE1A5ED0;
    v25 = *(a1 + 60);
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    v23 = qword_1EE1A5F00;
    if (v10[1208])
    {
      v11 = 1;
    }

    else if (v10[136] == 1)
    {
      v11 = v10[1209];
    }

    else
    {
      v11 = 0;
    }

    v25 = v11;
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
    v23 = qword_1EE1A5F10;
    v25 = *(*(a1 + 24) + 136);
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
  }

  if (*(a1 + 48) == 1)
  {
    v12 = *(a1 + 40);
    if (v12)
    {
      v13 = re::ecs2::EntityComponentCollection::get((*(v12 + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      LODWORD(v12) = v13 && *(v13 + 340) > 0.0;
    }

    v23 = qword_1EE1A5F20;
    v25 = v12;
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
  }

  if (re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken != -1)
  {
    dispatch_once(&re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken, &__block_literal_global_22_1);
  }

  if (re::GraphicsFeatureFlags::enableUIShadow(void)::gEnableUIShadow == 1)
  {
    v14 = re::ecs2::EntityComponentCollection::get((*a1 + 48), re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v14)
    {
      if (*(v14 + 26) == 1)
      {
        v23 = qword_1EE1A5F50;
        v25 = 1;
        re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
      }
    }
  }

  result = re::ecs2::EntityComponentCollection::get((*a1 + 48), re::ecs2::ComponentImpl<re::ecs2::EntityFunctionConstantComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (result)
  {
    v16 = result;
    v17 = *(result + 64);
    if (v17)
    {
      v18 = 0;
      v19 = *(result + 48);
      while (1)
      {
        v20 = *v19;
        v19 += 8;
        if (v20 < 0)
        {
          break;
        }

        if (v17 == ++v18)
        {
          LODWORD(v18) = *(result + 64);
          break;
        }
      }
    }

    else
    {
      LODWORD(v18) = 0;
    }

LABEL_78:
    while (v18 != v17)
    {
      v21 = *(v16 + 48) + 32 * v18;
      v23 = *(v21 + 8);
      v25 = *(v21 + 16);
      result = re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(a2, &v23, &v25);
      v22 = *(v16 + 64);
      if (v22 <= v18 + 1)
      {
        v22 = v18 + 1;
      }

      while (v22 - 1 != v18)
      {
        LODWORD(v18) = v18 + 1;
        if ((*(*(v16 + 48) + 32 * v18) & 0x80000000) != 0)
        {
          goto LABEL_78;
        }
      }

      LODWORD(v18) = v22;
    }
  }

  return result;
}

unint64_t re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addNew(uint64_t *a1, void *a2, _DWORD *a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 != -1)
  {
    return a1[1] + 16 * v6 + 8;
  }

  return re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::internalAdd(a1, a2, a3);
}

uint64_t re::ecs2::MeshComponentHelper::techniqueMappingOverlayNameHashForMeshScene(re::ecs2::MeshComponentHelper *this, float a2)
{
  v2 = this;
  v4 = &re::introspect_BOOL(BOOL)::info;
  {
    v4 = &re::introspect_BOOL(BOOL)::info;
    if (this)
    {
      re::Defaults::BOOLValue(&v8, "disableFadeTechniqueMappingOverride", v7);
      useFadeTechniqueMappingOverride(void)::kUseFadeTechniqueMappingOverride = v8 & BYTE1(v8) ^ 1;
      v4 = &re::introspect_BOOL(BOOL)::info;
    }
  }

  if (v4[2872] == 1 && (re::useDitherFade(this) & 1) == 0)
  {
    if (a2 < 1.0 || (v2 & 1) != 0)
    {
      goto LABEL_5;
    }
  }

  else if (v2)
  {
LABEL_5:
    if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
    {
      dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
    }

    v5 = &re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash;
    return *v5;
  }

  if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

  v5 = &re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash;
  return *v5;
}

uint64_t re::ecs2::getHighestLightspillNodeRequirements(re::ecs2 *this, const re::ecs2::MeshComponent *a2)
{
  if (this)
  {
    v2 = a2;
    v3 = 0;
    v4 = (a2 + 24 * this);
    do
    {
      v5 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v2);
      if (v5)
      {
        v6 = *(v5 + 1776);
        if (v6)
        {
          if (*(v5 + 1842) == 7)
          {
            v7 = v6[32];
            if (v7)
            {
              v8 = 200 * v7;
              v9 = (v6[33] + 48);
              do
              {
                if (*v9)
                {
                  re::sg::CachedCompilationMaterial::getMaterial(&v19, *v9);
                  v10 = [v19 hasConnectedLightSpillNodes];

                  if (v10)
                  {
                    re::sg::CachedCompilationMaterial::getMaterial(&v19, *v9);
                    hasConnectedLightSpillNodesWithRoughness = re::sg::Material::hasConnectedLightSpillNodesWithRoughness(&v19);

                    if (hasConnectedLightSpillNodesWithRoughness)
                    {
                      v3 = 2;
                      break;
                    }

                    v3 = 1;
                  }
                }

                v9 += 25;
                v8 -= 200;
              }

              while (v8);
            }

            v12 = v6[35];
            if (!v12)
            {
              goto LABEL_24;
            }

            v13 = v6[36];
            v14 = 200 * v12;
            v15 = (v13 + 48);
            do
            {
              if (*v15)
              {
                re::sg::CachedCompilationMaterial::getMaterial(&v19, *v15);
                v16 = [v19 hasConnectedLightSpillNodes];

                if (v16)
                {
                  re::sg::CachedCompilationMaterial::getMaterial(&v19, *v15);
                  v17 = re::sg::Material::hasConnectedLightSpillNodesWithRoughness(&v19);

                  if (v17)
                  {
                    v3 = 2;
                    break;
                  }

                  v3 = 1;
                }
              }

              v15 += 25;
              v14 -= 200;
            }

            while (v14);
          }
        }
      }

LABEL_24:
      v2 = (v2 + 24);
    }

    while (v2 != v4);
  }

  else
  {
    return 0;
  }

  return v3;
}

uint64_t re::ecs2::containsShaderGraphMaterialWithModelPositionOffset(re::ecs2 *this, const re::ecs2::MeshComponent *a2)
{
  v2 = *(this + 9);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 11);
  v4 = (v3 + 24 * v2);
  while (1)
  {
    v5 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v3);
    if (v5)
    {
      v6 = *(v5 + 1776);
      if (v6)
      {
        if (*(v5 + 1842) == 7)
        {
          v7 = *(v6 + 256);
          if (v7)
          {
            break;
          }
        }
      }
    }

LABEL_11:
    v3 = (v3 + 24);
    if (v3 == v4)
    {
      return 0;
    }
  }

  v8 = 200 * v7;
  v9 = (*(v6 + 264) + 48);
  while (1)
  {
    if (*v9)
    {
      re::sg::CachedCompilationMaterial::getMaterial(&v12, *v9);
      hasGeometryModifierWithModelPositionOffset = re::sg::Material::hasGeometryModifierWithModelPositionOffset(&v12);

      if (hasGeometryModifierWithModelPositionOffset)
      {
        return 1;
      }
    }

    v9 += 25;
    v8 -= 200;
    if (!v8)
    {
      goto LABEL_11;
    }
  }
}

uint64_t re::HashTable<unsigned long long,re::ecs2::PerWorldData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::ecs2::PerWorldData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v5, a1, a2, v3 ^ (v3 >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 7168 * v6 + 16;
  }
}

void re::ecs2::MeshComponentHelper::generateSceneForPortalCrossing(uint64_t a1@<X0>, uint64_t a2@<X1>, re::TransformService *a3@<X2>, uint64_t a4@<X8>)
{
  v173 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 48) & 1) == 0)
  {
    goto LABEL_20;
  }

  v7 = *a2;
  re::TransformService::worldMatrix(a3, *a2, 0, &v141);
  v8 = *(a2 + 16);
  v174.columns[0] = v141;
  v174.columns[1] = v142;
  v174.columns[2] = v143;
  v121 = vaddq_f32(v144, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v141, v8.f32[0]), v142, *v8.f32, 1), v143, v8, 2));
  v9.i64[0] = 0;
  v9.i64[1] = *(a2 + 52);
  v10 = vaddq_f32(v8, v9);
  v117 = vaddq_f32(v144, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v141, v10.f32[0]), v142, *v10.f32, 1), v143, v10, 2));
  v119 = vdupq_laneq_s32(v121, 3);
  v114 = vdupq_laneq_s32(v117, 3);
  v175 = __invert_f3(v174);
  v11 = vdupq_laneq_s32(v175.columns[1], 2);
  v12 = vzip1q_s32(vzip1q_s32(v175.columns[0], v175.columns[2]), v175.columns[1]);
  v175.columns[1] = vtrn2q_s32(v175.columns[0], v175.columns[1]);
  v175.columns[1].i32[2] = v175.columns[2].i32[1];
  v13 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, COERCE_FLOAT(*(a2 + 32))), v175.columns[1], *(a2 + 32), 1), vzip1q_s32(vzip2q_s32(v175.columns[0], v175.columns[2]), v11), *(a2 + 32), 2);
  v175.columns[1] = vmulq_f32(v13, v13);
  v14 = v175.columns[1].f32[2] + vaddv_f32(*v175.columns[1].f32);
  if (fabsf(v14) < 1.0e-10)
  {
    v18 = xmmword_1E30476A0;
  }

  else
  {
    v15 = v14;
    v16 = vrsqrte_f32(LODWORD(v14));
    v17 = vmul_f32(v16, vrsqrts_f32(LODWORD(v15), vmul_f32(v16, v16)));
    v18 = vmulq_n_f32(v13, vmul_f32(v17, vrsqrts_f32(LODWORD(v15), vmul_f32(v17, v17))).f32[0]);
  }

  v19 = vdivq_f32(v121, v119);
  v20 = vdivq_f32(v117, v114);
  v21 = vnegq_f32(v18);
  v22 = *(a2 + 56);
  if ((v22->i8[0] & 1) == 0)
  {
    v22->i8[0] = 1;
  }

  v22[1] = v20;
  v22[2] = v21;
  v120 = v19;
  v122 = v18;
  v23 = vmulq_f32(v19, v18);
  v24 = v18;
  v24.f32[3] = -(v23.f32[2] + vaddv_f32(*v23.f32));
  v140 = v24;
  re::AABB::transform(*(a1 + 392), *(a1 + 408), v139);
  if ((re::AABB::intersects(v139, &v140) & 0xFFFFFFFD) == 0)
  {
    goto LABEL_20;
  }

  v26 = *(a1 + 16);
  v118 = v26 != 0;
  v113 = v7;
  if (v26)
  {
    v27 = *(a1 + 72);
    v28 = *a2;
    v115 = *(a1 + 392);
    v29 = *(a1 + 408);
    v30 = *(v27 + 192);
    if (v30)
    {
      v31 = re::ecs2::containsShaderGraphMaterialWithModelPositionOffset(*(v27 + 192), v25);
    }

    else
    {
      v31 = 0;
    }

    v32 = (*(*v26 + 24))(v26, v27, v28);
    v33 = re::ecs2::EntityComponentCollection::get((v27 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v34 = re::ecs2::EntityComponentCollection::get((v27 + 48), re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v30 && v32 && v33 && (!v34 || !*(v34 + 48)))
    {
      v112 = v32[11].i32[2];
      goto LABEL_22;
    }

    v35 = re::ecs2::MeshComponentHelper::clippingDataForClippingParameterData(v32, v115, v29, v26, v31);
    if (!BYTE5(v35))
    {
      v112 = v35;
      v118 = HIDWORD(v35) & 1;
LABEL_22:
      v7 = v113;
      goto LABEL_23;
    }

LABEL_20:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 1;
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    return;
  }

  v112 = 0;
LABEL_23:
  v36 = *(a1 + 40);
  if (v36)
  {
    (*(*v36 + 56))(__src);
    *&v135[5] = 1;
    v136 = 0;
    v37 = v135;
    if (LOBYTE(__src[0]))
    {
      v37 = (__src + 4);
    }

    v38 = v37[1];
    v137 = *v37;
    v138 = v38;
    v39 = *(a1 + 40);
    if (v39)
    {
      __src[0] = *(a1 + 56);
      v40 = *(a1 + 408);
      *&__src[1] = *(a1 + 72);
      *(&__src[1] + 1) = v40;
      *&__src[2] = *(a1 + 392);
      (*(*v39 + 64))(v135);
      v41 = BYTE2(v135[0]);
      if (!LOBYTE(v135[0]))
      {
        v41 = 0;
      }

      v116 = v135[0] & HIBYTE(v135[0]);
      v42 = v135[0] & BYTE1(v135[0]);
      v111 = v135[0] & LOBYTE(v135[1]);
    }

    else
    {
      v116 = 0;
      v41 = 0;
      v42 = 0;
      v111 = 0;
    }
  }

  else
  {
    v116 = 0;
    v41 = 0;
    v42 = 0;
    v111 = 0;
    *(&v138 + 4) = 1;
    WORD6(v138) = 0;
  }

  v43 = ((v41 << 8) >> 8) & 1;
  v44 = *(a1 + 620);
  v45 = re::ecs2::MeshComponentHelper::depthMitigationMaskForMeshScene(v7, *(a1 + 24));
  v46 = *(a1 + 32);
  if (v46)
  {
    LODWORD(v47) = (*(*v46 + 24))(v46, v7);
    v49 = v48;
    v50 = v47;
  }

  else
  {
    v49 = 0;
    v50 = 1.0;
  }

  v51 = v44 & v43;
  v52 = v50 * *(a1 + 416);
  re::ecs2::OcclusionStateMachine::getOcclusionEntityReactivateTransitionFactor(&v137);
  v54 = v52 * v53;
  v55 = *(a1 + 424);
  v56 = re::ecs2::MeshComponentHelper::renderPassGroupDataForMeshScene(v7, *(a1 + 608), *(a1 + 8), *(a1 + 610), *(a1 + 456), *(a1 + 464));
  if ((*(a1 + 608) & 1) == 0)
  {
    v58 = *(a1 + 448);
    v59 = *(a1 + 609);
    if (!v58)
    {
      v59 = v57;
      v58 = v56;
    }

    if (v55)
    {
      v60 = v55;
    }

    else
    {
      v60 = v49;
    }

    v61 = *(a2 + 8);
    *&__src[0] = *(a1 + 632);
    *(&__src[0] + 1) = v61;
    v62 = *(a1 + 408);
    *&__src[1] = *(a1 + 392);
    *(&__src[1] + 1) = v62;
    *&__src[2] = v60;
    *(&__src[2] + 1) = v58;
    LOBYTE(__src[3]) = v59 & 1;
    BYTE1(__src[3]) = *(a1 + 610);
    re::ecs2::MeshComponentHelper::addRenderPassGroupBoundsTable(__src);
  }

  v63 = re::ecs2::MeshComponentHelper::techniqueMappingOverlayNameHashForMeshScene(v118, v54);
  v64 = re::ecs2::MeshComponentHelper::environmentLightingWeightForMeshScene(*(a1 + 72), *a1);
  v65 = *(a1 + 88);
  v123[0] = *(a1 + 72);
  v123[1] = v65;
  v124 = *(a1 + 520);
  v125 = v45;
  v126 = v51;
  v127 = v43;
  v128 = v42;
  v129 = *(a1 + 112);
  v130 = *(a1 + 120);
  v131 = v64;
  v132 = 1;
  v133 = 3;
  v134 = *(a1 + 48);
  re::ecs2::MeshComponentHelper::dynamicFunctionConstantsForMeshScene(v123, v135);
  v66 = *(a1 + 184);
  v67 = *(a1 + 144);
  __src[0] = *(a1 + 128);
  __src[1] = v66;
  __src[2] = *(a1 + 200);
  __src[3] = v67;
  __src[4] = *(a1 + 160);
  v68 = *(a1 + 392);
  v69 = *(a1 + 400);
  v70 = v68[1];
  __src[5] = *v68;
  __src[6] = v70;
  *&__src[7] = *(a1 + 176);
  *(&__src[7] + 1) = v69;
  v71 = *(a1 + 408);
  v72 = v71[3];
  v74 = *v71;
  v73 = v71[1];
  __src[10] = v71[2];
  __src[11] = v72;
  __src[8] = v74;
  __src[9] = v73;
  v75 = *(a1 + 216);
  v76 = *(a1 + 304);
  __src[12] = *(a1 + 288);
  __src[13] = v75;
  v77 = *(a1 + 248);
  __src[14] = *(a1 + 232);
  __src[15] = v77;
  __src[16] = *(a1 + 264);
  LOBYTE(__src[17]) = *(a1 + 280);
  *(&__src[17] + 8) = v76;
  v78 = *(a1 + 336);
  *(&__src[18] + 8) = *(a1 + 320);
  *(&__src[19] + 8) = v78;
  *(&__src[20] + 8) = *(a1 + 352);
  *(&__src[21] + 1) = *(a1 + 368);
  re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::HashBrown(&v146, v135);
  v154 = v112;
  v155 = *(a1 + 488);
  if (v155 == 1)
  {
    v156 = *(a1 + 496);
  }

  v157[0] = *(a1 + 504);
  *&v157[8] = **(a1 + 512);
  *&v157[24] = v63;
  *&v158 = v54;
  DWORD1(v158) = *(a1 + 432);
  *(&v158 + 2) = v64;
  v159 = *(a1 + 376);
  *v160 = *(a1 + 476);
  *&v160[8] = *(*(a1 + 72) + 312);
  *&v160[16] = *(a2 + 64);
  v160[18] = 0;
  *&v160[20] = *(a1 + 440);
  *&v160[24] = *(a1 + 436);
  v160[28] = v45;
  v161 = 1;
  v162 = v120;
  v163 = v122;
  v164 = *(v113 + 39);
  v165 = *(a1 + 528);
  if (v165 == 1)
  {
    v79 = *(a1 + 560);
    v166 = *(a1 + 544);
    v167 = v79;
    v80 = *(a1 + 592);
    v168 = *(a1 + 576);
    v169 = v80;
  }

  LOBYTE(v170) = *(a1 + 623);
  *(&v170 + 1) = *(a1 + 612);
  DWORD2(v170) = *(a1 + 616);
  re::ecs2::OcclusionStateMachine::getDepthMitigationTransitionFactor(&v137);
  HIDWORD(v170) = v81;
  re::ecs2::OcclusionStateMachine::getSceneUnderstandingTransitionFactor(&v137);
  LODWORD(v171) = v82;
  OcclusionTransitionFactor = re::ecs2::OcclusionStateMachine::getOcclusionTransitionFactor(&v137);
  DWORD1(v171) = v84;
  _S0 = DWORD2(v138);
  __asm { FCVT            H0, S0 }

  WORD4(v171) = _S0;
  BYTE10(v171) = v42;
  BYTE11(v171) = *(a1 + 622);
  WORD6(v171) = *(a1 + 608);
  BYTE14(v171) = BYTE12(v138);
  HIBYTE(v171) = v116;
  LOBYTE(v172) = v111;
  HIBYTE(v172) = *(a1 + 624);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  *(a4 + 40) = 0;
  *(a4 + 32) = 0;
  re::DynamicOverflowArray<re::MeshScene,2ul>::setCapacity(a4, 1uLL);
  v90 = *(a4 + 16);
  *(a4 + 16) = v90 + 2;
  if (v90)
  {
    v91 = a4 + 32;
  }

  else
  {
    v91 = *(a4 + 40);
  }

  v92 = v91 + 736 * *(a4 + 8);
  memcpy(v92, __src, 0x160uLL);
  *(v92 + 352) = 0u;
  *(v92 + 368) = 0u;
  *(v92 + 384) = 0u;
  *(v92 + 400) = 0u;
  *(v92 + 408) = v153;
  v153 = 0;
  v93 = *(v92 + 352);
  *(v92 + 352) = v146;
  v146 = v93;
  v94 = *(v92 + 360);
  *(v92 + 360) = v147;
  v147 = v94;
  *(v92 + 368) = v148;
  v148 = 0;
  v95 = *(v92 + 392);
  *(v92 + 392) = v151;
  v151 = v95;
  v96 = *(v92 + 400);
  *(v92 + 400) = v152;
  v152 = v96;
  v97 = *(v92 + 376);
  *(v92 + 376) = v149;
  v149 = v97;
  v98 = *(v92 + 384);
  *(v92 + 384) = v150;
  v150 = v98;
  *(v92 + 416) = v154;
  LODWORD(v98) = v155;
  *(v92 + 424) = v155;
  if (v98 == 1)
  {
    *(v92 + 432) = v156;
  }

  v99 = *&v157[16];
  *(v92 + 440) = *v157;
  *(v92 + 456) = v99;
  v100 = v158;
  v101 = v159;
  v102 = *v160;
  *(v92 + 517) = *&v160[13];
  *(v92 + 488) = v101;
  *(v92 + 504) = v102;
  *(v92 + 472) = v100;
  v103 = v161;
  *(v92 + 544) = v161;
  if (v103 == 1)
  {
    v104 = v163;
    *(v92 + 560) = v162;
    *(v92 + 576) = v104;
  }

  *(v92 + 592) = v164;
  v105 = v165;
  *(v92 + 608) = v165;
  if (v105 == 1)
  {
    v106 = v166;
    v107 = v167;
    v108 = v169;
    *(v92 + 656) = v168;
    *(v92 + 672) = v108;
    *(v92 + 624) = v106;
    *(v92 + 640) = v107;
  }

  v109 = v170;
  v110 = v171;
  *(v92 + 720) = v172;
  *(v92 + 688) = v109;
  *(v92 + 704) = v110;
  ++*(a4 + 8);
  *(a4 + 16) += 2;
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v146);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v135);
}

id re::ecs2::fetchBuffer(uint64_t a1, uint64_t a2, re::DirectBuffer *this, unint64_t a4, uint64_t a5, uint64_t a6, _anonymous_namespace_ *a7, uint64_t a8, uint64_t a9, uint64_t a10, _BYTE *a11)
{
  v134 = *MEMORY[0x1E69E9840];
  if (!*this || !*(a5 + 8))
  {
    return 0;
  }

  v17 = v120;
  re::DirectBuffer::getResourceId(this, &src);
  re::DynamicArray<re::DirectResourceId>::add(a9, &src);
  if (!*(a5 + 8))
  {
LABEL_104:
    *v122 = 0;
    *(v17 + 160) = 0u;
    *(v17 + 176) = 0u;
    *(v17 + 128) = 0u;
    *(v17 + 144) = 0u;
    *(v17 + 112) = 0u;
    v87 = MEMORY[0x1E69E9C10];
    v88 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v120 = 136315906;
    *(v17 + 4) = "operator[]";
    *&v120[12] = 1024;
    if (v88)
    {
      v89 = 3;
    }

    else
    {
      v89 = 2;
    }

    *(v17 + 14) = 476;
    *&v120[18] = 2048;
    *(v17 + 20) = 0;
    *&v120[28] = 2048;
    *(v17 + 30) = 0;
    _os_log_send_and_compose_impl(v89, v122, &src, 80, &dword_1E1C61000, v87, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v120, 38, v97, v98);
    _os_crash_msg();
    __break(1u);
LABEL_108:
    *v122 = 0;
    v22 = v120;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    src = 0u;
    v90 = MEMORY[0x1E69E9C10];
    v91 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v120 = 136315906;
    *&v120[4] = "operator[]";
    *&v120[12] = 1024;
    if (v91)
    {
      v92 = 3;
    }

    else
    {
      v92 = 2;
    }

    *&v120[14] = 858;
    *&v120[18] = 2048;
    *&v120[20] = a4;
    *&v120[28] = 2048;
    *&v120[30] = v17;
    _os_log_send_and_compose_impl(v92, v122, &src, 80, &dword_1E1C61000, v90, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v120, 38, v97, v98);
    _os_crash_msg();
    __break(1u);
    goto LABEL_112;
  }

  v18 = *(a5 + 16);
  if (v18[17])
  {
    v19 = 1;
  }

  else
  {
    v19 = v18[22] != 0;
  }

  v115 = 0;
  v116 = &v115;
  v117 = 0x2000000000;
  v118 = 0;
  v111 = 0;
  v112 = &v111;
  v113 = 0x2000000000;
  v114 = 0;
  v110 = 0;
  if (!v19)
  {
    v30 = re::RenderFrameBox::get((*(a1 + 112) + 328), *(*(a1 + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(a1 + 144) + 16) << 60));
    v31 = *(re::RenderFrame::currentCommandBuffer(v30) + 2);
    v109[0] = v31;
    re::DirectBuffer::readUsing(v109, &src);
    NS::SharedPtr<MTL::Texture>::operator=(&v110, &src);
    if (src)
    {

      *&src = 0;
    }

    v32 = [v110 length];
    v112[3] = v32;
    v33 = [v110 contents];
    v116[3] = v33;
    goto LABEL_79;
  }

  v99 = a6;
  v100 = a7;
  v109[1] = MEMORY[0x1E69E9820];
  v109[2] = 0x40000000;
  v109[3] = ___ZN2re4ecs211fetchBufferERKNS_13RenderManagerEPKNS0_5SceneERKNS_12DirectBufferERKNS0_24DirectParameterResourcesERKNS_10FixedArrayINS_14LinkedFunctionEEERNS_11BucketArrayIN2NS9SharedPtrIN3MTL6BufferEEELm8EEERNS_12DynamicArrayINS_13TextureHandleEEERNSQ_ISN_EERNSQ_INS_16DirectResourceIdEEERNS_7HashSetINS_29UnresolvedArgumentBufferEntryENS_4HashIS10_EENS_7EqualToIS10_EELb1ELb0EEERb_block_invoke;
  v109[4] = &unk_1E871C7A0;
  v109[5] = &v115;
  v109[6] = &v111;
  DRBufferRead();
  *&src = [*(a1 + 208) newBufferWithBytesNoCopy:v116[3] length:v112[3] options:0 deallocator:&__block_literal_global_23];
  NS::SharedPtr<MTL::Texture>::operator=(&v110, &src);
  v21 = src;
  if (src)
  {
  }

  v22 = *(a4 + 40);
  v105 = *(a4 + 80);
  *&v120[32] = 0u;
  v121 = 0u;
  v23 = v112[3];
  *v120 = v116[3];
  *&v120[8] = v23;
  *&v120[24] = v22;
  if (v22)
  {
    if (v22 >> 59)
    {
LABEL_112:
      re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 32, v22);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v93, v95);
      __break(1u);
      goto LABEL_113;
    }

    *&v120[32] = v24;
    if (!v24)
    {
LABEL_113:
      re::internal::assertLog(4, v26, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
      goto LABEL_114;
    }

    v27 = v24;
    v28 = v24;
    v29 = v22 - 1;
    if (v22 != 1)
    {
      v28 = v24;
      do
      {
        *v28 = 0;
        *(v28 + 1) = 0;
        v28 = (v28 + 32);
        --v29;
      }

      while (v29);
    }

    *v28 = 0;
    *(v28 + 1) = 0;
  }

  else
  {
    v27 = 0;
  }

  v35 = v105;
  *&v121 = v105;
  v101 = a8;
  v102 = v27;
  if (v105)
  {
    if (v105 >> 60)
    {
LABEL_114:
      re::internal::assertLog(6, v34, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, v35);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v94, v96);
      __break(1u);
LABEL_115:
      re::internal::assertLog(4, v39, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
    }

    v36 = a1;
    v37 = 16 * v105;
    *(&v121 + 1) = v38;
    if (!v38)
    {
      goto LABEL_115;
    }

    v40 = v38;
    if (v105 == 1)
    {
      v35 = 1;
    }

    else
    {
      bzero(v38, v37 - 16);
      v35 = v105;
      v40 = (v40 + v37 - 16);
    }

    a1 = v36;
    *v40 = 0;
    v40[1] = 0;
    v27 = v102;
  }

  if (v22)
  {
    v41 = 0;
    v104 = a1;
    while (1)
    {
      v42 = *(a4 + 40);
      if (v42 <= v41)
      {
        break;
      }

      if (v22 <= v41)
      {
        goto LABEL_92;
      }

      v43 = v18[17];
      if (v43)
      {
        v44 = (*(a4 + 56) + 32 * v41);
        v45 = v27 + 32 * v41;
        v46 = *(v44 + 3);
        v47 = v18[19];
        while (*(v47 + 8) != v46)
        {
          v47 += 16;
          if (!--v43)
          {
            goto LABEL_54;
          }
        }

        v48 = re::AssetHandle::loadedAsset<re::TextureAsset>(v44);
        v49 = *v47;
        if (v48 && (v50 = v48, *(v48 + 348) == v49))
        {
          if (a2 && (v51 = *(a2 + 376), (v51 & 0xFFFFFF00000000) != 0))
          {
            v52 = HIDWORD(v51);
            v53 = *(a2 + 56);
            if (v53)
            {
              v54 = *((*(*v53 + 304))(v53, *(a2 + 376)) + 8) == 2;
            }

            else
            {
              v54 = 0;
            }
          }

          else
          {
            LODWORD(v52) = 0;
            v54 = 0;
            LODWORD(v51) = -1;
          }

          v56 = v51 | (v52 << 32);
          v50[8] = v56;
          v57 = v50[7];
          if (v57 && !re::DrawableQueue::shouldPerformUpdate(v50[7], v56, v54))
          {
            re::DrawableQueue::setActiveRealityRendererScene(v57, v56);
          }

          re::TextureHandle::TextureHandle(v107, (v50 + 1));
          v58 = *v47;
          re::TextureHandle::operator=(v45, v107);
          *(v45 + 28) = 0;
          *(v45 + 24) = v58;
          *(v45 + 16) = v46;
          re::TextureHandle::invalidate(v107);
          re::DynamicArray<re::TextureHandle>::add(v100, (v50 + 1));
          a8 = v101;
          v27 = v102;
          a1 = v104;
          v35 = v105;
        }

        else
        {
          a1 = v104;
          re::TextureManager::stockTextureForType(*(v104 + 56), v49, &src);
          v108 = src;
          v55 = *v47;
          NS::SharedPtr<MTL::Buffer>::operator=(v27 + 4 * v41, &v108);
          *(v45 + 28) = 1;
          *(v45 + 24) = v55;
          *(v45 + 16) = v46;
          if (v108)
          {

            v108 = 0;
          }

          *a11 = 1;
          if (src)
          {
          }

          v35 = v105;
        }
      }

LABEL_54:
      if (++v41 == v22)
      {
        goto LABEL_57;
      }
    }

    v119 = 0;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    src = 0u;
    v75 = MEMORY[0x1E69E9C10];
    v76 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v122 = 136315906;
    *&v122[4] = "operator[]";
    v123 = 1024;
    if (v76)
    {
      v77 = 3;
    }

    else
    {
      v77 = 2;
    }

    v124 = 797;
    v125 = 2048;
    v126 = v41;
    v127 = 2048;
    v128 = v42;
    _os_log_send_and_compose_impl(v77, &v119, &src, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v122, 38, v97, v98);
    _os_crash_msg();
    __break(1u);
LABEL_92:
    v119 = 0;
    v17 = v120;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    src = 0u;
    v78 = MEMORY[0x1E69E9C10];
    v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v122 = 136315906;
    *&v122[4] = "operator[]";
    v123 = 1024;
    if (v79)
    {
      v80 = 3;
    }

    else
    {
      v80 = 2;
    }

    v124 = 468;
    v125 = 2048;
    v126 = v41;
    v127 = 2048;
    v128 = v22;
    _os_log_send_and_compose_impl(v80, &v119, &src, 80, &dword_1E1C61000, v78, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v122, 38, v97, v98);
    _os_crash_msg();
    __break(1u);
    goto LABEL_96;
  }

LABEL_57:
  if (v35)
  {
    v22 = 0;
    while (1)
    {
      v17 = *(a4 + 80);
      if (v17 <= v22)
      {
        break;
      }

      v17 = v121;
      if (v121 <= v22)
      {
        goto LABEL_100;
      }

      v59 = v18[22];
      if (v59)
      {
        v60 = *(a4 + 96) + 16 * v22;
        v61 = *(&v121 + 1) + 16 * v22;
        v62 = v18[24];
        while (1)
        {
          v63 = *v62++;
          if (v63 == *(v60 + 8))
          {
            break;
          }

          if (!--v59)
          {
            goto LABEL_69;
          }
        }

        re::DirectBuffer::getResourceId((*(a4 + 96) + 16 * v22), &src);
        re::DynamicArray<re::DirectResourceId>::add(a9, &src);
        objc_storeStrong((v61 + 8), *v60);
        *v61 = *(v60 + 8);
        v64 = re::RenderFrameBox::get((*(a1 + 112) + 328), *(*(a1 + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(a1 + 144) + 16) << 60));
        v65 = *(re::RenderFrame::currentCommandBuffer(v64) + 2);
        v106 = v65;
        re::DirectBuffer::readUsing(&v106, &src);
        v66 = *(a8 + 16);
        if (v66 >= *(a8 + 8))
        {
          re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::growCapacity(a8, v66 + 1);
          v66 = *(a8 + 16);
        }

        *(*(a8 + 32) + 8 * v66) = src;
        *(a8 + 16) = v66 + 1;
        ++*(a8 + 24);

        v35 = v105;
      }

LABEL_69:
      if (++v22 == v35)
      {
        goto LABEL_70;
      }
    }

LABEL_96:
    v119 = 0;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    src = 0u;
    v81 = MEMORY[0x1E69E9C10];
    v82 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v122 = 136315906;
    *&v122[4] = "operator[]";
    v123 = 1024;
    if (v82)
    {
      v83 = 3;
    }

    else
    {
      v83 = 2;
    }

    v124 = 797;
    v125 = 2048;
    v126 = v22;
    v127 = 2048;
    v128 = v17;
    _os_log_send_and_compose_impl(v83, &v119, &src, 80, &dword_1E1C61000, v81, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v122, 38, v97, v98);
    _os_crash_msg();
    __break(1u);
LABEL_100:
    v119 = 0;
    a4 = v120;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    src = 0u;
    v84 = MEMORY[0x1E69E9C10];
    v85 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v122 = 136315906;
    *&v122[4] = "operator[]";
    v123 = 1024;
    if (v85)
    {
      v86 = 3;
    }

    else
    {
      v86 = 2;
    }

    v124 = 468;
    v125 = 2048;
    v126 = v22;
    v127 = 2048;
    v128 = v17;
    _os_log_send_and_compose_impl(v86, &v119, &src, 80, &dword_1E1C61000, v84, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v122, 38, v97, v98);
    _os_crash_msg();
    __break(1u);
    goto LABEL_104;
  }

LABEL_70:
  v67 = *(a10 + 24);
  if (!v67)
  {
    LODWORD(v68) = 0;
    a6 = v99;
    goto LABEL_77;
  }

  v68 = *v120 % v67;
  v69 = *(*(a10 + 8) + 4 * (*v120 % v67));
  a6 = v99;
  if (v69 == 0x7FFFFFFF)
  {
LABEL_77:
    re::HashSetBase<re::UnresolvedArgumentBufferEntry,re::UnresolvedArgumentBufferEntry,re::internal::ValueAsKey<re::UnresolvedArgumentBufferEntry>,re::Hash<re::UnresolvedArgumentBufferEntry>,re::EqualTo<re::UnresolvedArgumentBufferEntry>,true,false>::addAsMove(a10, v68, *v120, v120);
    ++*(a10 + 40);
    goto LABEL_78;
  }

  v70 = *(a10 + 16);
  while (*(v70 + 80 * v69 + 16) != *v120)
  {
    LODWORD(v69) = *(v70 + 80 * v69 + 8) & 0x7FFFFFFF;
    if (v69 == 0x7FFFFFFF)
    {
      goto LABEL_77;
    }
  }

LABEL_78:
  re::FixedArray<re::ArgumentBufferBufferRecord>::deinit(&v120[40]);
  re::FixedArray<re::ArgumentBufferTextureRecord>::deinit(&v120[16]);
LABEL_79:
  v71 = *(a6 + 40);
  v17 = *(a6 + 8);
  if (v71 + 1 > 8 * v17)
  {
    re::BucketArray<re::TimelineGroupBuilder *,8ul>::setBucketsCapacity(a6, (v71 + 8) >> 3);
    v17 = *(a6 + 8);
  }

  a4 = v71 >> 3;
  if (v17 <= v71 >> 3)
  {
    goto LABEL_108;
  }

  v72 = *(a6 + 32);
  if (*(a6 + 16))
  {
    v72 = a6 + 24;
  }

  v73 = *(v72 + 8 * a4);
  ++*(a6 + 40);
  ++*(a6 + 48);
  *(v73 + 8 * (v71 & 7)) = v110;
  v20 = v110;
  if (v110)
  {
  }

  _Block_object_dispose(&v111, 8);
  _Block_object_dispose(&v115, 8);
  return v20;
}

void re::DynamicArray<re::DirectResourceId>::add(uint64_t a1, unsigned __int8 *src)
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

        re::DynamicArray<re::DirectResourceId>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::DirectResourceId>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  uuid_copy((*(a1 + 32) + 16 * v5), src);
  ++*(a1 + 16);
  ++*(a1 + 24);
}

void *___ZN2re4ecs211fetchBufferERKNS_13RenderManagerEPKNS0_5SceneERKNS_12DirectBufferERKNS0_24DirectParameterResourcesERKNS_10FixedArrayINS_14LinkedFunctionEEERNS_11BucketArrayIN2NS9SharedPtrIN3MTL6BufferEEELm8EEERNS_12DynamicArrayINS_13TextureHandleEEERNSQ_ISN_EERNSQ_INS_16DirectResourceIdEEERNS_7HashSetINS_29UnresolvedArgumentBufferEntryENS_4HashIS10_EENS_7EqualToIS10_EELb1ELb0EEERb_block_invoke(re *a1, const void *a2, size_t a3)
{
  v6 = re::globalAllocators(a1);
  if (!a3)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v7 = a3 + 16;
  if (a3 < 0xFFFFFFFFFFFFFFF0)
  {
    v8 = (*(*v6[2] + 32))(v6[2], v7, 0);
    v9 = v8 + 2;
    *v8 = a3;
    v8[1] = v8;
    bzero(v8 + 2, a3);
LABEL_5:
    *(*(*(a1 + 4) + 8) + 24) = v9;
    result = memcpy(*(*(*(a1 + 4) + 8) + 24), a2, a3);
    *(*(*(a1 + 5) + 8) + 24) = a3;
    return result;
  }

  re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Size overflow in allocateArray. Element size = %zu, count = %zu", "!overflow", "allocateArray", 61, 1, a3);
  result = _os_crash("assertion failure: (!overflow) Size overflow in allocateArray. Element size = %zu, count = %zu", v11, v12);
  __break(1u);
  return result;
}

uint64_t *___ZN2re4ecs211fetchBufferERKNS_13RenderManagerEPKNS0_5SceneERKNS_12DirectBufferERKNS0_24DirectParameterResourcesERKNS_10FixedArrayINS_14LinkedFunctionEEERNS_11BucketArrayIN2NS9SharedPtrIN3MTL6BufferEEELm8EEERNS_12DynamicArrayINS_13TextureHandleEEERNSQ_ISN_EERNSQ_INS_16DirectResourceIdEEERNS_7HashSetINS_29UnresolvedArgumentBufferEntryENS_4HashIS10_EENS_7EqualToIS10_EELb1ELb0EEERb_block_invoke_2(re *a1, uint64_t a2)
{
  result = re::globalAllocators(a1);
  if (a2)
  {
    v4 = *(*result[2] + 40);

    return v4();
  }

  return result;
}

re::TextureHandle *re::DynamicArray<re::TextureHandle>::add(_anonymous_namespace_ *this, re::TextureHandle *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::TextureHandle>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::TextureHandle::TextureHandle((*(this + 4) + 16 * v4), a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::ecs2::MeshComponent::updateMaterialData(re::ecs2::MeshComponent *this, const re::ecs2::MeshSystem *a2, const re::MeshAsset *a3, re::ecs2::Entity *a4, const re::DirectResourceAssetTracker *a5)
{
  v299 = *MEMORY[0x1E69E9840];
  v236 = *(a2 + 29);
  v10 = *(v236 + 4);
  v11 = *(this + 31);
  if (v11)
  {
    v234 = *(v11 + 388);
  }

  else
  {
    v234 = 0;
  }

  v12 = *(v236 + 18);
  if (v12)
  {
    v13 = (v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  inited = objc_initWeak(&location, v13);
  v15 = re::globalAllocators(inited);
  v16 = (*(*v15[2] + 32))(v15[2], 640, 8);
  bzero(v16, 0x280uLL);
  *(v16 + 212) = 0x7FFFFFFF;
  *(v16 + 392) = 0u;
  *(v16 + 224) = 0u;
  *(v16 + 240) = 0u;
  *(v16 + 256) = 0u;
  *(v16 + 272) = 0u;
  *(v16 + 288) = 0u;
  *(v16 + 304) = 0u;
  *(v16 + 320) = 0u;
  *(v16 + 336) = 0u;
  *(v16 + 352) = 0u;
  *(v16 + 368) = 0;
  *(v16 + 384) = 0;
  *(v16 + 388) = 0;
  *(v16 + 408) = 1;
  *(v16 + 416) = 0;
  *(v16 + 424) = 0u;
  *(v16 + 440) = 0;
  *(v16 + 480) = 0;
  *(v16 + 448) = 0u;
  *(v16 + 464) = 0u;
  *(v16 + 488) = 1;
  *(v16 + 512) = 0;
  *(v16 + 520) = 0;
  *(v16 + 496) = 0u;
  *(v16 + 528) = 0u;
  *(v16 + 544) = 1;
  *(v16 + 568) = 0;
  *(v16 + 576) = 0;
  *(v16 + 552) = 0u;
  *(v16 + 584) = 0u;
  *(v16 + 600) = 1;
  *(v16 + 624) = 0;
  *(v16 + 632) = 0;
  *(v16 + 608) = 0u;
  *&v296 = 0;
  v294 = 0u;
  v295 = 0u;
  *(&v295 + 1) = re::globalAllocators(v17)[2];
  *&v296 = 0;
  re::FramePersistentPtr<re::ecs2::MeshComponent::MaterialData,re::FrameManager>::reset(this + 30, &location, v16, &v294);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v294);
  objc_destroyWeak(&location);
  location = 0;
  v18 = *(a2 + 111);
  v235 = a4;
  if (v18 && (*(a4 + 304) & 0x40) != 0)
  {
    v31 = (*(*v18 + 80))(v18);
    re::ecs2::MeshComponentHelper::overrideMaterials(a3, v10, v31, (*(this + 31) + 224), (*(this + 31) + 272), (*(this + 31) + 472));
    goto LABEL_125;
  }

  v19 = re::ecs2::EntityComponentCollection::get((a4 + 48), re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v19)
  {
    goto LABEL_21;
  }

  if (*(v19 + 42) == 2)
  {
    v20 = *(this + 9);
    if (v20)
    {
      v21 = *(a2 + 38);
      v22 = (*(this + 11) + 8);
      v23 = 24 * v20 - 24;
      do
      {
        v25 = *v22;
        v22 += 3;
        v24 = v25;
        v26 = v25 != v21 || v23 == 0;
        v23 -= 24;
      }

      while (!v26);
      if (v24 != v21)
      {
        goto LABEL_21;
      }
    }

    re::DynamicArray<re::AssetHandle>::clear((this + 56));
  }

  if (*(this + 9))
  {
LABEL_21:
    v27 = 296;
    goto LABEL_22;
  }

  v27 = 320;
LABEL_22:
  re::AssetHandle::AssetHandle(v280, (a2 + v27));
  re::ecs2::MeshComponentHelper::repairedMaterialHandles(a3, v10, v280, *(this + 11), *(this + 9), &v283);
  if (!*(this + 15))
  {
    v32 = *(this + 31);
    if (*(v32 + 304))
    {
      re::FixedArray<CoreIKTransform>::deinit((v32 + 296));
    }

    goto LABEL_67;
  }

  v5 = *&v286[2];
  v30 = *(this + 31);
  if (v30[38] == *&v286[2])
  {
    if (!*&v286[2])
    {
      goto LABEL_67;
    }

    goto LABEL_35;
  }

  v30[38] = v5;
  if (v5)
  {
    if (v5 >> 60)
    {
LABEL_374:
      re::internal::assertLog(6, v29, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, v5);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v226, v231);
      __break(1u);
LABEL_375:
      re::internal::assertLog(4, v29, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
    }

    v30[39] = v33;
    if (!v33)
    {
      goto LABEL_375;
    }

    v34 = v33;
    if (v5 != 1)
    {
      bzero(v33, 16 * v5 - 16);
      v34 += 2 * v5 - 2;
    }

    *v34 = 0;
    v34[1] = 0;
LABEL_35:
    v16 = 0;
    v35 = 1;
    while (*(this + 15) > v16 && !re::ecs2::EntityHandle::isNull((*(this + 17) + 24 * v16)))
    {
      a4 = *(this + 15);
      if (a4 <= v16)
      {
        goto LABEL_323;
      }

      v36 = (*(**(a2 + 120) + 56))(*(a2 + 120), *(*(this + 17) + 24 * v16 + 8));
      if (!v36)
      {
        break;
      }

      v37 = *v36;
      if (v37 == 1)
      {
        v38 = *(v36 + 1);
        if (!v38)
        {
          break;
        }

        v46 = v38 + 1;
        a4 = *&v286[2];
        if (*&v286[2] <= v16)
        {
          goto LABEL_348;
        }

        re::AssetHandle::operator=(*&v288[2] + 24 * v16, v38 + 10);
        re::UnlitMaterial::parameterTable(v279, v38, v236);
        v47 = *(this + 31);
        a4 = *(v47 + 304);
        if (a4 <= v16)
        {
          goto LABEL_356;
        }

        v41 = v279[0];
        *(*(v47 + 312) + 16 * v16) = vaddq_s64(vdupq_n_s64(v279[0]), xmmword_1E3087420);
        v48 = *(this + 31);
        v49 = *(v48 + 624);
        a4 = *(v48 + 592);
        if (v49 + 1 > 8 * a4)
        {
          v50 = v41;
          re::BucketArray<re::TimelineGroupBuilder *,8ul>::setBucketsCapacity((v48 + 584), (v49 + 8) >> 3);
          v41 = v50;
          a4 = *(v48 + 592);
        }

        v16 = v49 >> 3;
        if (a4 <= v49 >> 3)
        {
          goto LABEL_364;
        }

        if (*(v48 + 600))
        {
          v51 = v48 + 608;
        }

        else
        {
          v51 = *(v48 + 616);
        }

        v55 = *(v51 + 8 * v16);
        v56 = v49 & 7;
        ++*(v48 + 624);
        ++*(v48 + 632);
      }

      else
      {
        if (v37 != 2)
        {
          break;
        }

        v38 = *(v36 + 1);
        if (!v38)
        {
          break;
        }

        v39 = v38 + 1;
        a4 = *&v286[2];
        if (*&v286[2] <= v16)
        {
          goto LABEL_352;
        }

        re::AssetHandle::operator=(*&v288[2] + 24 * v16, v38 + 66);
        re::PbrMaterial::parameterTable(v38, v236, v279);
        v40 = *(this + 31);
        a4 = *(v40 + 304);
        if (a4 <= v16)
        {
          goto LABEL_360;
        }

        v41 = v279[0];
        *(*(v40 + 312) + 16 * v16) = vaddq_s64(vdupq_n_s64(v279[0]), xmmword_1E3087430);
        v42 = *(this + 31);
        v43 = *(v42 + 568);
        a4 = *(v42 + 536);
        if (v43 + 1 > 8 * a4)
        {
          v44 = v41;
          re::BucketArray<re::TimelineGroupBuilder *,8ul>::setBucketsCapacity((v42 + 528), (v43 + 8) >> 3);
          v41 = v44;
          a4 = *(v42 + 536);
        }

        v16 = v43 >> 3;
        if (a4 <= v43 >> 3)
        {
          goto LABEL_368;
        }

        if (*(v42 + 544))
        {
          v45 = v42 + 552;
        }

        else
        {
          v45 = *(v42 + 560);
        }

        v55 = *(v45 + 8 * v16);
        v56 = v43 & 7;
        ++*(v42 + 568);
        ++*(v42 + 576);
      }

      *(v55 + 8 * v56) = v41;

LABEL_60:
      v16 = v35;
      v54 = v5 > v35;
      v35 = (v35 + 1);
      if (!v54)
      {
        goto LABEL_67;
      }
    }

    v52 = *(this + 31);
    a4 = *(v52 + 304);
    if (a4 <= v16)
    {
      goto LABEL_307;
    }

    v53 = (*(v52 + 312) + 16 * v16);
    *v53 = 0;
    v53[1] = 0;
    goto LABEL_60;
  }

LABEL_67:
  v57 = *(v235 + 26);
  if (v57)
  {
    re::ecs2::MeshComponentHelper::fixLegacyParametersColorGamut(v236, &v283, *(v235 + 26));
    *&v294 = *&v288[2];
    *(&v294 + 1) = *&v286[2];
    v58 = *(v57 + 88);
    *v289 = *(v57 + 104);
    *&v289[8] = v58;
    re::MaterialAssetHelper::extractMaterialDataFromMaterialParameterBlocks(&v294, v289, (*(this + 31) + 224), (*(this + 31) + 248), *(this + 31) + 472);
  }

  *&v294 = *&v288[2];
  *(&v294 + 1) = *&v286[2];
  isUnderHighFidelityVisualProxyTree = re::ecs2::VisualProxyCaptureHelper::isUnderHighFidelityVisualProxyTree(v235, v29);
  re::MaterialAssetHelper::extractMaterialDataFromMaterialAssetHandles(&v294, isUnderHighFidelityVisualProxyTree, (*(this + 31) + 224), (*(this + 31) + 272), *(this + 31) + 472);
  v35 = *(*(this + 20) + 80);
  v60 = *(this + 31);
  v60[57] = v35;
  if (v35)
  {
    if (v35 >= 0xAAAAAAAAAAAAAABLL)
    {
LABEL_345:
      re::internal::assertLog(6, v63, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, v35);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v224, v229);
      __break(1u);
      goto LABEL_346;
    }

    v5 = 24 * v35;
    v60[58] = v62;
    if (!v62)
    {
LABEL_346:
      re::internal::assertLog(4, v64, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
      goto LABEL_347;
    }

    v16 = v62;
    if (v35 != 1)
    {
      v5 -= 24;
      bzero(v62, v5);
      v16 += v5;
    }

    *v16 = 0;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
  }

  v65 = *(this + 31);
  v65[41] = v35;
  if (v35)
  {
    v5 = 16 * v35;
    v65[42] = v67;
    if (!v67)
    {
LABEL_347:
      re::internal::assertLog(4, v68, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
LABEL_348:
      v276 = 0;
      v297 = 0u;
      v298 = 0u;
      v295 = 0u;
      v296 = 0u;
      v294 = 0u;
      v204 = MEMORY[0x1E69E9C10];
      v205 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v289 = 136315906;
      *&v289[4] = "operator[]";
      *&v289[12] = 1024;
      if (v205)
      {
        v206 = 3;
      }

      else
      {
        v206 = 2;
      }

      *&v289[14] = 789;
      v290 = 2048;
      v291 = v16;
      v292 = 2048;
      v293 = a4;
      _os_log_send_and_compose_impl(v206, &v276, &v294, 80, &dword_1E1C61000, v204, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v289, 38, v232, v233);
      _os_crash_msg();
      __break(1u);
LABEL_352:
      v276 = 0;
      v297 = 0u;
      v298 = 0u;
      v295 = 0u;
      v296 = 0u;
      v294 = 0u;
      v207 = MEMORY[0x1E69E9C10];
      v208 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v289 = 136315906;
      *&v289[4] = "operator[]";
      *&v289[12] = 1024;
      if (v208)
      {
        v209 = 3;
      }

      else
      {
        v209 = 2;
      }

      *&v289[14] = 789;
      v290 = 2048;
      v291 = v16;
      v292 = 2048;
      v293 = a4;
      _os_log_send_and_compose_impl(v209, &v276, &v294, 80, &dword_1E1C61000, v207, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v289, 38, v232, v233);
      _os_crash_msg();
      __break(1u);
LABEL_356:
      v276 = 0;
      v297 = 0u;
      v298 = 0u;
      v295 = 0u;
      v296 = 0u;
      v294 = 0u;
      v210 = MEMORY[0x1E69E9C10];
      v211 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v289 = 136315906;
      *&v289[4] = "operator[]";
      *&v289[12] = 1024;
      if (v211)
      {
        v212 = 3;
      }

      else
      {
        v212 = 2;
      }

      *&v289[14] = 468;
      v290 = 2048;
      v291 = v16;
      v292 = 2048;
      v293 = a4;
      _os_log_send_and_compose_impl(v212, &v276, &v294, 80, &dword_1E1C61000, v210, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v289, 38, v232, v233);
      _os_crash_msg();
      __break(1u);
LABEL_360:
      v276 = 0;
      v297 = 0u;
      v298 = 0u;
      v295 = 0u;
      v296 = 0u;
      v294 = 0u;
      v213 = MEMORY[0x1E69E9C10];
      v214 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v289 = 136315906;
      *&v289[4] = "operator[]";
      *&v289[12] = 1024;
      if (v214)
      {
        v215 = 3;
      }

      else
      {
        v215 = 2;
      }

      *&v289[14] = 468;
      v290 = 2048;
      v291 = v16;
      v292 = 2048;
      v293 = a4;
      _os_log_send_and_compose_impl(v215, &v276, &v294, 80, &dword_1E1C61000, v213, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v289, 38, v232, v233);
      _os_crash_msg();
      __break(1u);
LABEL_364:
      v276 = 0;
      v297 = 0u;
      v298 = 0u;
      v295 = 0u;
      v296 = 0u;
      v294 = 0u;
      v216 = MEMORY[0x1E69E9C10];
      v217 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v289 = 136315906;
      *&v289[4] = "operator[]";
      *&v289[12] = 1024;
      if (v217)
      {
        v218 = 3;
      }

      else
      {
        v218 = 2;
      }

      *&v289[14] = 858;
      v290 = 2048;
      v291 = v16;
      v292 = 2048;
      v293 = a4;
      _os_log_send_and_compose_impl(v218, &v276, &v294, 80, &dword_1E1C61000, v216, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v289, 38, v232, v233);
      _os_crash_msg();
      __break(1u);
LABEL_368:
      v276 = 0;
      v297 = 0u;
      v298 = 0u;
      v295 = 0u;
      v296 = 0u;
      v294 = 0u;
      v219 = MEMORY[0x1E69E9C10];
      v220 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v289 = 136315906;
      *&v289[4] = "operator[]";
      *&v289[12] = 1024;
      if (v220)
      {
        v221 = 3;
      }

      else
      {
        v221 = 2;
      }

      *&v289[14] = 858;
      v290 = 2048;
      v291 = v16;
      v292 = 2048;
      v293 = a4;
      _os_log_send_and_compose_impl(v221, &v276, &v294, 80, &dword_1E1C61000, v219, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v289, 38, v232, v233);
      _os_crash_msg();
      __break(1u);
      goto LABEL_372;
    }

    v16 = v67;
    if (v35 != 1)
    {
      v69 = v5 - 16;
      bzero(v67, v69);
      v16 += v69;
    }

    v70 = 0;
    v71 = 0;
    v5 = 0;
    *v16 = 0;
    *(v16 + 8) = 0;
    do
    {
      v72 = *(this + 20);
      v73 = *(v72 + 80);
      if (v73 <= v5)
      {
        goto LABEL_294;
      }

      v74 = re::DataArray<re::MeshInstance>::get((v10 + 9), *(*(v72 + 72) + 8 * v5));
      v276 = *&v288[2];
      v277 = *&v286[2];
      v75 = *(v74 + 128);
      v279[0] = *(v74 + 136);
      v279[1] = v75;
      v76 = *(this + 31);
      a4 = *(v76 + 456);
      if (a4 <= v5)
      {
        goto LABEL_295;
      }

      re::MaterialAssetHelper::extractMaterialDataFromMeshInstanceParameterBlocks(&v276, v279, (*(v76 + 464) + v71), v76 + 472);
      v77 = *(this + 31);
      a4 = v77[57];
      if (a4 <= v5)
      {
        goto LABEL_299;
      }

      a4 = v77[41];
      if (a4 <= v5)
      {
        goto LABEL_303;
      }

      v78 = *(v77[58] + v71 + 8);
      v79 = *(v77[58] + v71 + 16);
      v80 = (v77[42] + v70);
      *v80 = v79;
      v80[1] = v78;
      ++v5;
      v71 += 24;
      v70 += 16;
    }

    while (v35 != v5);
  }

  v16 = v235;
  v81 = *(v235 + 33);
  if (v81)
  {
    v82 = *(this + 31);
    a4 = *(v81 + 48);
    v82[44] = a4;
    if (a4)
    {
      if (a4 >= 0xCCCCCCCCCCCCCCDLL)
      {
LABEL_372:
        re::internal::assertLog(6, v83, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 20, a4);
        _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v225, v230);
        __break(1u);
        goto LABEL_373;
      }

      v82[45] = v84;
      if (!v84)
      {
LABEL_373:
        re::internal::assertLog(4, v85, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash("assertion failure: (m_data) Out of memory.");
        __break(1u);
        goto LABEL_374;
      }

      v86 = a4 - 1;
      if (a4 != 1)
      {
        do
        {
          *v84 = 0;
          v84[2] = 0;
          v84[4] = 0;
          v84[6] = 0;
          v84[8] = 0;
          v84[10] = 0;
          v84[12] = 0;
          v84[14] = 0;
          v84[16] = 0;
          v84[18] = 0;
          v84 += 20;
          --v86;
        }

        while (v86);
      }

      *v84 = 0;
      v84[2] = 0;
      v84[4] = 0;
      v84[6] = 0;
      v84[8] = 0;
      v84[10] = 0;
      v84[12] = 0;
      v84[14] = 0;
      v84[16] = 0;
      v84[18] = 0;
    }

    v66 = memcpy(*(*(this + 31) + 360), *(v81 + 64), 20 * *(v81 + 48));
  }

  v35 = *(v235 + 34);
  if (v35)
  {
    v87 = *(this + 31);
    v88 = v87[29] >= *(v35 + 48) ? *(v35 + 48) : v87[29];
    v89 = *(this + 31);
    if (v88)
    {
      v5 = 0;
      while (1)
      {
        v91 = *(this + 31);
        a4 = *(v91 + 232);
        if (a4 <= v5)
        {
          break;
        }

        a4 = *(this + 9);
        if (a4 <= v5)
        {
          goto LABEL_315;
        }

        v92 = *(*(v91 + 240) + 8 * v5);
        v93 = re::AssetHandle::loadedAsset<re::MaterialAsset>((*(this + 11) + 24 * v5));
        a4 = *(v35 + 48);
        if (a4 <= v5)
        {
          goto LABEL_319;
        }

        if (v93 && (*(v93 + 1842) & 0xFE) == 6)
        {
          v16 = *(v35 + 64) + 32 * v5;
          if (*(v92 + 256))
          {
            v94 = *v16 == 0;
          }

          else
          {
            v94 = 1;
          }

          if (!v94)
          {
            v95 = *(this + 31);
            a4 = *(v95 + 232);
            v96 = v235;
            if (a4 <= v5)
            {
              goto LABEL_329;
            }

            do
            {
              v97 = v96;
              v96 = *(v96 + 4);
            }

            while (v96);
            Buffer = re::ecs2::fetchBuffer(v236, *(v97 + 3), v16, *(v16 + 8), *(*(v95 + 240) + 8 * v5) + 248, v95 + 392, (v95 + 48), v95 + 88, v95 + 136, v95 + 176, (v95 + 128));
            v277 = 0;
            v276 = 0;
            v278 = 0;
            v98 = *(this + 31);
            a4 = *(v98 + 8);
            if (a4 <= v5)
            {
              goto LABEL_333;
            }

            re::FixedArray<float>::operator=((*(v98 + 16) + 24 * v5), &v276);
            if (v276 && v277)
            {
              (*(*v276 + 40))();
            }
          }

          if (*(v92 + 280) && *(v16 + 16))
          {
            v99 = *(this + 31);
            a4 = *(v99 + 232);
            if (a4 <= v5)
            {
              goto LABEL_337;
            }

            v100 = v235;
            do
            {
              v101 = v100;
              v100 = *(v100 + 4);
            }

            while (v100);
            Buffer = re::ecs2::fetchBuffer(v236, *(v101 + 3), (v16 + 16), *(v16 + 24), *(*(v99 + 240) + 8 * v5) + 272, v99 + 392, (v99 + 48), v99 + 88, v99 + 136, v99 + 176, (v99 + 128));
            v277 = 0;
            v276 = 0;
            v278 = 0;
            v102 = *(this + 31);
            a4 = *(v102 + 32);
            if (a4 <= v5)
            {
              goto LABEL_341;
            }

            re::FixedArray<float>::operator=((*(v102 + 40) + 24 * v5), &v276);
            if (v276 && v277)
            {
              (*(*v276 + 40))();
            }
          }
        }

        if (++v5 == v88)
        {
          goto LABEL_124;
        }
      }

LABEL_311:
      v276 = 0;
      v297 = 0u;
      v298 = 0u;
      v295 = 0u;
      v296 = 0u;
      v294 = 0u;
      v180 = MEMORY[0x1E69E9C10];
      v181 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v289 = 136315906;
      *&v289[4] = "operator[]";
      *&v289[12] = 1024;
      if (v181)
      {
        v182 = 3;
      }

      else
      {
        v182 = 2;
      }

      *&v289[14] = 468;
      v290 = 2048;
      v291 = v5;
      v292 = 2048;
      v293 = a4;
      _os_log_send_and_compose_impl(v182, &v276, &v294, 80, &dword_1E1C61000, v180, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v289, 38, v232, v233);
      _os_crash_msg();
      __break(1u);
LABEL_315:
      v276 = 0;
      v297 = 0u;
      v298 = 0u;
      v295 = 0u;
      v296 = 0u;
      v294 = 0u;
      v183 = MEMORY[0x1E69E9C10];
      v184 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v289 = 136315906;
      *&v289[4] = "operator[]";
      *&v289[12] = 1024;
      if (v184)
      {
        v185 = 3;
      }

      else
      {
        v185 = 2;
      }

      *&v289[14] = 789;
      v290 = 2048;
      v291 = v5;
      v292 = 2048;
      v293 = a4;
      _os_log_send_and_compose_impl(v185, &v276, &v294, 80, &dword_1E1C61000, v183, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v289, 38, v232, v233);
      _os_crash_msg();
      __break(1u);
LABEL_319:
      v276 = 0;
      v297 = 0u;
      v298 = 0u;
      v295 = 0u;
      v296 = 0u;
      v294 = 0u;
      v186 = MEMORY[0x1E69E9C10];
      v187 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v289 = 136315906;
      *&v289[4] = "operator[]";
      *&v289[12] = 1024;
      if (v187)
      {
        v188 = 3;
      }

      else
      {
        v188 = 2;
      }

      *&v289[14] = 797;
      v290 = 2048;
      v291 = v5;
      v292 = 2048;
      v293 = a4;
      _os_log_send_and_compose_impl(v188, &v276, &v294, 80, &dword_1E1C61000, v186, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v289, 38, v232, v233);
      _os_crash_msg();
      __break(1u);
LABEL_323:
      v276 = 0;
      v297 = 0u;
      v298 = 0u;
      v295 = 0u;
      v296 = 0u;
      v294 = 0u;
      v189 = MEMORY[0x1E69E9C10];
      v190 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v289 = 136315906;
      *&v289[4] = "operator[]";
      *&v289[12] = 1024;
      if (v190)
      {
        v191 = 3;
      }

      else
      {
        v191 = 2;
      }

      *&v289[14] = 789;
      v290 = 2048;
      v291 = v16;
      v292 = 2048;
      v293 = a4;
      _os_log_send_and_compose_impl(v191, &v276, &v294, 80, &dword_1E1C61000, v189, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v289, 38, v232, v233);
      _os_crash_msg();
      __break(1u);
LABEL_327:
      re::internal::assertLog(6, v117, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 40, a4);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v223, v228);
      __break(1u);
LABEL_328:
      re::internal::assertLog(4, v118, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
LABEL_329:
      v276 = 0;
      v297 = 0u;
      v298 = 0u;
      v295 = 0u;
      v296 = 0u;
      v294 = 0u;
      v192 = MEMORY[0x1E69E9C10];
      v193 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v289 = 136315906;
      *&v289[4] = "operator[]";
      *&v289[12] = 1024;
      if (v193)
      {
        v194 = 3;
      }

      else
      {
        v194 = 2;
      }

      *&v289[14] = 468;
      v290 = 2048;
      v291 = v5;
      v292 = 2048;
      v293 = a4;
      _os_log_send_and_compose_impl(v194, &v276, &v294, 80, &dword_1E1C61000, v192, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v289, 38, v232, v233);
      _os_crash_msg();
      __break(1u);
LABEL_333:
      v279[0] = 0;
      v297 = 0u;
      v298 = 0u;
      v295 = 0u;
      v296 = 0u;
      v294 = 0u;
      v195 = MEMORY[0x1E69E9C10];
      v196 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v289 = 136315906;
      *&v289[4] = "operator[]";
      *&v289[12] = 1024;
      if (v196)
      {
        v197 = 3;
      }

      else
      {
        v197 = 2;
      }

      *&v289[14] = 468;
      v290 = 2048;
      v291 = v5;
      v292 = 2048;
      v293 = a4;
      _os_log_send_and_compose_impl(v197, v279, &v294, 80, &dword_1E1C61000, v195, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v289, 38, v232, v233);
      _os_crash_msg();
      __break(1u);
LABEL_337:
      v276 = 0;
      v297 = 0u;
      v298 = 0u;
      v295 = 0u;
      v296 = 0u;
      v294 = 0u;
      v198 = MEMORY[0x1E69E9C10];
      v199 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v289 = 136315906;
      *&v289[4] = "operator[]";
      *&v289[12] = 1024;
      if (v199)
      {
        v200 = 3;
      }

      else
      {
        v200 = 2;
      }

      *&v289[14] = 468;
      v290 = 2048;
      v291 = v5;
      v292 = 2048;
      v293 = a4;
      _os_log_send_and_compose_impl(v200, &v276, &v294, 80, &dword_1E1C61000, v198, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v289, 38, v232, v233);
      _os_crash_msg();
      __break(1u);
LABEL_341:
      v279[0] = 0;
      v297 = 0u;
      v298 = 0u;
      v295 = 0u;
      v296 = 0u;
      v294 = 0u;
      v201 = MEMORY[0x1E69E9C10];
      v202 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v289 = 136315906;
      *&v289[4] = "operator[]";
      *&v289[12] = 1024;
      if (v202)
      {
        v203 = 3;
      }

      else
      {
        v203 = 2;
      }

      *&v289[14] = 468;
      v290 = 2048;
      v291 = v5;
      v292 = 2048;
      v293 = a4;
      _os_log_send_and_compose_impl(v203, v279, &v294, 80, &dword_1E1C61000, v201, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v289, 38, v232, v233);
      _os_crash_msg();
      __break(1u);
      goto LABEL_345;
    }
  }

LABEL_124:
  re::DynamicArray<re::AssetHandle>::deinit(&v283);
  re::AssetHandle::~AssetHandle(v280);
  a4 = v235;
LABEL_125:
  if ((*(a2 + 392) & 1) == 0)
  {
    v103 = *(re::AssetHandle::loadedAsset<re::MaterialAsset>((a2 + 296)) + 1776);
    if (v103)
    {
      v104 = *(this + 31);
      v105 = *(v104 + 232);
      if (!v105)
      {
        return 0;
      }

      v106 = *(v104 + 240);
      v107 = 8 * v105;
      while (*v106 == v103)
      {
        ++v106;
        v107 -= 8;
        if (!v107)
        {
          return 0;
        }
      }
    }
  }

  v109 = re::ecs2::EntityComponentCollection::get((a4 + 48), re::ecs2::ComponentImpl<re::ecs2::DebugMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v109)
  {
    goto LABEL_136;
  }

  do
  {
    v123 = a4;
    a4 = *(a4 + 4);
  }

  while (a4);
  v124 = re::ecs2::ComponentHelper::privateSceneDataEntity(*(v123 + 3), 0);
  if (v124)
  {
    v109 = re::ecs2::EntityComponentCollection::get((v124 + 48), re::ecs2::ComponentImpl<re::ecs2::DebugMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v109)
    {
LABEL_136:
      v110 = *(v109 + 40);
      if ((v110 & 1) != 0 ? v110 >> 1 : v110 >> 1)
      {
        DebugTechnique = re::Hash<re::DynamicString>::operator()(&v294, (v109 + 32));
        v113 = *(this + 31);
        if ((*(v113 + 368) & 1) == 0)
        {
          *(v113 + 368) = 1;
        }

        *(v113 + 376) = DebugTechnique;
        v114 = *(this + 31);
        v115 = *(v114 + 232);
        if (v115)
        {
          v5 = *(v114 + 240);
          v35 = v5 + 8 * v115;
          while (1)
          {
            v116 = *v5;
            if (!*(*v5 + 96))
            {
              a4 = *(v116 + 10);
              *(v116 + 13) = a4;
              if (a4)
              {
                if (a4 >= 0x666666666666667)
                {
                  goto LABEL_327;
                }

                *(v116 + 14) = DebugTechnique;
                if (!DebugTechnique)
                {
                  goto LABEL_328;
                }

                v119 = a4 - 1;
                if (a4 != 1)
                {
                  do
                  {
                    *DebugTechnique = 0;
                    *(DebugTechnique + 32) = 0;
                    DebugTechnique += 40;
                    --v119;
                  }

                  while (v119);
                }

                *DebugTechnique = 0;
                *(DebugTechnique + 32) = 0;
              }
            }

            if (*(v116 + 10))
            {
              break;
            }

LABEL_157:
            v5 += 8;
            if (v5 == v35)
            {
              goto LABEL_162;
            }
          }

          v120 = 0;
          v16 = 0;
          while (1)
          {
            a4 = *(v116 + 13);
            if (a4 <= v16)
            {
              break;
            }

            if (!*(*(v116 + 14) + v120))
            {
              v121 = **(*(v116 + 11) + v120);
              if (*(v121 + 2632) == 1)
              {
                v122 = *(v116 + 2);
                *&v294 = *(v121 + 2640);
                DebugTechnique = re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::find((v122 + 184), &v294);
                if (DebugTechnique != -1)
                {
                  DebugTechnique = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((*(v122 + 192) + 72 * DebugTechnique + 8), (*(this + 31) + 376));
                  if (DebugTechnique != -1)
                  {
                    DebugTechnique = re::MaterialManager::generateDebugTechnique(*(v236 + 3), v116, v16);
                  }
                }
              }
            }

            ++v16;
            v120 += 40;
            if (*(v116 + 10) <= v16)
            {
              goto LABEL_157;
            }
          }

          *v289 = 0;
          v297 = 0u;
          v298 = 0u;
          v295 = 0u;
          v296 = 0u;
          v294 = 0u;
          v165 = MEMORY[0x1E69E9C10];
          v166 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v283 = 136315906;
          v284 = "operator[]";
          v285 = 1024;
          if (v166)
          {
            v167 = 3;
          }

          else
          {
            v167 = 2;
          }

          *v286 = 468;
          *&v286[4] = 2048;
          *&v286[6] = v16;
          v287 = 2048;
          *v288 = a4;
          _os_log_send_and_compose_impl(v167, v289, &v294, 80, &dword_1E1C61000, v165, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v283, 38, v232, v233);
          _os_crash_msg();
          __break(1u);
LABEL_294:
          re::internal::assertLog(6, v68, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v5, v73);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v222, v227);
          __break(1u);
LABEL_295:
          Buffer = 0;
          v297 = 0u;
          v298 = 0u;
          v295 = 0u;
          v296 = 0u;
          v294 = 0u;
          v168 = MEMORY[0x1E69E9C10];
          v169 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v289 = 136315906;
          *&v289[4] = "operator[]";
          *&v289[12] = 1024;
          if (v169)
          {
            v170 = 3;
          }

          else
          {
            v170 = 2;
          }

          *&v289[14] = 468;
          v290 = 2048;
          v291 = v5;
          v292 = 2048;
          v293 = a4;
          _os_log_send_and_compose_impl(v170, &Buffer, &v294, 80, &dword_1E1C61000, v168, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v289, 38, v232, v233);
          _os_crash_msg();
          __break(1u);
LABEL_299:
          v276 = 0;
          v297 = 0u;
          v298 = 0u;
          v295 = 0u;
          v296 = 0u;
          v294 = 0u;
          v171 = MEMORY[0x1E69E9C10];
          v172 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v289 = 136315906;
          *&v289[4] = "operator[]";
          *&v289[12] = 1024;
          if (v172)
          {
            v173 = 3;
          }

          else
          {
            v173 = 2;
          }

          *&v289[14] = 468;
          v290 = 2048;
          v291 = v5;
          v292 = 2048;
          v293 = a4;
          _os_log_send_and_compose_impl(v173, &v276, &v294, 80, &dword_1E1C61000, v171, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v289, 38, v232, v233);
          _os_crash_msg();
          __break(1u);
LABEL_303:
          v276 = 0;
          v297 = 0u;
          v298 = 0u;
          v295 = 0u;
          v296 = 0u;
          v294 = 0u;
          v174 = MEMORY[0x1E69E9C10];
          v175 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v289 = 136315906;
          *&v289[4] = "operator[]";
          *&v289[12] = 1024;
          if (v175)
          {
            v176 = 3;
          }

          else
          {
            v176 = 2;
          }

          *&v289[14] = 468;
          v290 = 2048;
          v291 = v5;
          v292 = 2048;
          v293 = a4;
          _os_log_send_and_compose_impl(v176, &v276, &v294, 80, &dword_1E1C61000, v174, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v289, 38, v232, v233);
          _os_crash_msg();
          __break(1u);
LABEL_307:
          v276 = 0;
          v297 = 0u;
          v298 = 0u;
          v295 = 0u;
          v296 = 0u;
          v294 = 0u;
          v177 = MEMORY[0x1E69E9C10];
          v178 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v289 = 136315906;
          *&v289[4] = "operator[]";
          *&v289[12] = 1024;
          if (v178)
          {
            v179 = 3;
          }

          else
          {
            v179 = 2;
          }

          *&v289[14] = 468;
          v290 = 2048;
          v291 = v16;
          v292 = 2048;
          v293 = a4;
          _os_log_send_and_compose_impl(v179, &v276, &v294, 80, &dword_1E1C61000, v177, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v289, 38, v232, v233);
          _os_crash_msg();
          __break(1u);
          goto LABEL_311;
        }
      }
    }
  }

LABEL_162:
  v125 = *(this + 31);
  v126 = *(v125 + 232);
  if (v126)
  {
    v127 = 8 * v126;
    v128 = *(v125 + 240);
    do
    {
      v129 = *v128;
      v130 = *(a2 + 43);
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      if (re::MaterialParameterTable::tryGetPassTechniqueMapping((v129 + 304), v130, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash))
      {
        *(*(this + 31) + 384) = 1;
      }

      v131 = *(a2 + 44);
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      if (re::MaterialParameterTable::tryGetPassTechniqueMapping((v129 + 304), v131, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash))
      {
        *(*(this + 31) + 384) = 257;
      }

      v132 = *(a2 + 45);
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      if (re::MaterialParameterTable::tryGetPassTechniqueMapping((v129 + 304), v132, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash))
      {
        goto LABEL_184;
      }

      v133 = *(a2 + 46);
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      if (re::MaterialParameterTable::tryGetPassTechniqueMapping((v129 + 304), v133, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash))
      {
        goto LABEL_184;
      }

      v134 = *(a2 + 47);
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      if (re::MaterialParameterTable::tryGetPassTechniqueMapping((v129 + 304), v134, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash))
      {
        goto LABEL_184;
      }

      v135 = *(a2 + 48);
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      if (re::MaterialParameterTable::tryGetPassTechniqueMapping((v129 + 304), v135, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash))
      {
LABEL_184:
        *(*(this + 31) + 386) = 1;
      }

      ++v128;
      v127 -= 8;
    }

    while (v127);
  }

  if ((atomic_load_explicit(&qword_1EE1A5F68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5F68))
  {
    qword_1EE1A5F60 = re::hashStringWithLength("Occlusion", 9);
    __cxa_guard_release(&qword_1EE1A5F68);
  }

  v136 = *(this + 11);
  v137 = *(this + 9);
  if (v137)
  {
    v138 = 24 * v137;
    while (1)
    {
      v139 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v136);
      if (v139)
      {
        v140 = *(v139 + 1776);
        if (v140)
        {
          v141 = *(v140 + 16);
          if (v141)
          {
            re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(v141 + 16, &qword_1EE1A5F60, qword_1EE1A5F60, &v294);
            if (HIDWORD(v294) != 0x7FFFFFFF)
            {
              break;
            }
          }
        }
      }

      v136 = (v136 + 24);
      v138 -= 24;
      if (!v138)
      {
        LOBYTE(v137) = 0;
        goto LABEL_195;
      }
    }

    LOBYTE(v137) = 1;
LABEL_195:
    v142 = *(this + 9);
    v136 = *(this + 11);
  }

  else
  {
    v142 = 0;
  }

  *(*(this + 31) + 387) = v137;
  HighestLightspillNodeRequirements = re::ecs2::getHighestLightspillNodeRequirements(v142, v136);
  *(*(this + 31) + 388) = HighestLightspillNodeRequirements;
  if (v234 != HighestLightspillNodeRequirements)
  {
    v144 = re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    v145 = *(v235 + 49);
    if (*(v235 + 49))
    {
      v146 = (re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 16);
      v147 = *(v235 + 13);
      v148 = vld1q_dup_s16(v146);
      v149 = 1;
      while (1)
      {
        v150 = vandq_s8(vceqq_s16(v148, *v147), xmmword_1E306AC00);
        v150.i16[0] = vmaxvq_u16(v150);
        if (v150.i32[0])
        {
          break;
        }

        v149 -= 8;
        ++v147;
        if (!--v145)
        {
          goto LABEL_202;
        }
      }

      LODWORD(v145) = v150.u16[0] - v149 < *(v235 + 48);
      if (!HighestLightspillNodeRequirements)
      {
        goto LABEL_286;
      }
    }

    else
    {
LABEL_202:
      if (!HighestLightspillNodeRequirements)
      {
LABEL_286:
        if (v145)
        {
          re::ecs2::EntityComponentCollection::remove((v235 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        }

        return 1;
      }
    }

    if ((v145 & 1) == 0)
    {
      v151 = re::ecs2::EntityComponentCollection::add((v235 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      *&v273.var0 = 0xFFFDBC97C8B59A5ELL;
      v273.var1 = "REVideoAttachmentChannelID1TextureSpill";
      v274 = 0;
      v275 = &str_67;
      v152 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((v151 + 32), &v273);
      if (v274)
      {
        if (v274)
        {
        }
      }

      v275 = &str_67;
      v274 = 0;
      if (*&v273.var0)
      {
        if (*&v273.var0)
        {
        }
      }

      *&v273.var0 = 0;
      v273.var1 = &str_67;
      *&v270.var0 = 0x76CA5FD80552008;
      v270.var1 = "REVideoAttachmentSpillSpecular";
      v271 = 0;
      v272 = &str_67;
      v153 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((v151 + 32), &v270);
      if (v271)
      {
        if (v271)
        {
        }
      }

      v271 = 0;
      v272 = &str_67;
      if (*&v270.var0)
      {
        if (*&v270.var0)
        {
        }
      }

      *&v270.var0 = 0;
      v270.var1 = &str_67;
      *&v267.var0 = 0x61C86E215C086A2ALL;
      v267.var1 = "REVideoAttachmentWorldToPlaneUVsTransformMatrix";
      v268 = 0;
      v269 = &str_67;
      v154 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((v151 + 32), &v267);
      if (v268)
      {
        if (v268)
        {
        }
      }

      v268 = 0;
      v269 = &str_67;
      if (*&v267.var0)
      {
        if (*&v267.var0)
        {
        }
      }

      *&v267.var0 = 0;
      v267.var1 = &str_67;
      *&v264.var0 = 0xA29F54C4473E75D8;
      v264.var1 = "REVideoAttachmentContentPlaneWidthWorldspace";
      v265 = 0;
      v266 = &str_67;
      v155 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((v151 + 32), &v264);
      if (v265)
      {
        if (v265)
        {
        }
      }

      v265 = 0;
      v266 = &str_67;
      if (*&v264.var0)
      {
        if (*&v264.var0)
        {
        }
      }

      *&v264.var0 = 0;
      v264.var1 = &str_67;
      *&v261.var0 = 0xEAE20DCE6A8B6752;
      v261.var1 = "REVideoAttachmentContentPlaneHeightWorldspace";
      v262 = 0;
      v263 = &str_67;
      v156 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((v151 + 32), &v261);
      if (v262)
      {
        if (v262)
        {
        }
      }

      v262 = 0;
      v263 = &str_67;
      if (*&v261.var0)
      {
        if (*&v261.var0)
        {
        }
      }

      *&v261.var0 = 0;
      v261.var1 = &str_67;
      *&v258.var0 = 0x85AE1CBDDAF0F1D6;
      v258.var1 = "REVideoAttachmentContentBrightnessScale";
      v259 = 0;
      v260 = &str_67;
      v157 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((v151 + 32), &v258);
      if (v259)
      {
        if (v259)
        {
        }
      }

      v259 = 0;
      v260 = &str_67;
      if (*&v258.var0)
      {
        if (*&v258.var0)
        {
        }
      }

      *&v258.var0 = 0;
      v258.var1 = &str_67;
      *&v255.var0 = 0x8E6804010C9F587CLL;
      v255.var1 = "REVideoAttachmentTransitionAlpha";
      v256 = 0;
      v257 = &str_67;
      v158 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((v151 + 32), &v255);
      if (v256)
      {
        if (v256)
        {
        }
      }

      v256 = 0;
      v257 = &str_67;
      if (*&v255.var0)
      {
        if (*&v255.var0)
        {
        }
      }

      *&v255.var0 = 0;
      v255.var1 = &str_67;
      *&v252.var0 = 0xF3ADD9F5BAC06862;
      v252.var1 = "REVideoAttachmentAverageColor";
      v253 = 0;
      v254 = &str_67;
      v159 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((v151 + 32), &v252);
      if (v253)
      {
        if (v253)
        {
        }
      }

      v253 = 0;
      v254 = &str_67;
      if (*&v252.var0)
      {
        if (*&v252.var0)
        {
        }
      }

      *&v252.var0 = 0;
      v252.var1 = &str_67;
      *&v249.var0 = 0xDE000BD2E5A280BELL;
      v249.var1 = "REVideoAttachmentDockingRegionHeight";
      v250 = 0;
      v251 = &str_67;
      v160 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((v151 + 32), &v249);
      if (v250)
      {
        if (v250)
        {
        }
      }

      v250 = 0;
      v251 = &str_67;
      if (*&v249.var0)
      {
        if (*&v249.var0)
        {
        }
      }

      *&v249.var0 = 0;
      v249.var1 = &str_67;
      *&v246.var0 = 0xD59CE79B746D6F1CLL;
      v246.var1 = "REVideoAttachmentDockingRegionWidth";
      v247 = 0;
      v248 = &str_67;
      v161 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((v151 + 32), &v246);
      if (v247)
      {
        if (v247)
        {
        }
      }

      v247 = 0;
      v248 = &str_67;
      if (*&v246.var0)
      {
        if (*&v246.var0)
        {
        }
      }

      *&v246.var0 = 0;
      v246.var1 = &str_67;
      *&v243.var0 = 0x4DD58DF13CA60C76;
      v243.var1 = "REVideoAttachmentPFRMMaskOffset";
      v244 = 0;
      v245 = &str_67;
      v162 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((v151 + 32), &v243);
      if (v244)
      {
        if (v244)
        {
        }
      }

      v244 = 0;
      v245 = &str_67;
      if (*&v243.var0)
      {
        if (*&v243.var0)
        {
        }
      }

      *&v243.var0 = 0;
      v243.var1 = &str_67;
      *&v240.var0 = 0xFD26950F2B3B9752;
      v240.var1 = "REVideoAttachmentPFRMMaskSize";
      v241 = 0;
      v242 = &str_67;
      v163 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((v151 + 32), &v240);
      if (v241)
      {
        if (v241)
        {
        }
      }

      v241 = 0;
      v242 = &str_67;
      if (*&v240.var0)
      {
        if (*&v240.var0)
        {
        }
      }

      *&v240.var0 = 0;
      v240.var1 = &str_67;
      *&v237.var0 = 0x186F8F7E8364D330;
      v237.var1 = "REVideoAttachmentDisplaySize";
      v238 = 0;
      v239 = &str_67;
      v164 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((v151 + 32), &v237);
      if (v238)
      {
        if (v238)
        {
        }
      }

      v238 = 0;
      v239 = &str_67;
      if (*&v237.var0)
      {
        if (*&v237.var0)
        {
        }
      }

      *&v237.var0 = 0;
      v237.var1 = &str_67;
      v144 = re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    }

    *(re::ecs2::EntityComponentCollection::get((v235 + 48), v144) + 72) = *(*(this + 31) + 388) == 2;
  }

  return 1;
}

uint64_t re::MaterialParameterTable::tryGetPassTechniqueMapping(re::MaterialParameterTable *this, unint64_t a2, uint64_t a3)
{
  v7 = a3;
  result = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 1032, &v7);
  if (result)
  {
    if (!*result)
    {
      return 0;
    }

    v5 = *(*(result + 8) + 4 * (a2 % *(result + 24)));
    if (v5 == 0x7FFFFFFF)
    {
      return 0;
    }

    else
    {
      v6 = *(result + 16);
      while (*(v6 + 24 * v5 + 8) != a2)
      {
        v5 = *(v6 + 24 * v5) & 0x7FFFFFFF;
        if (v5 == 0x7FFFFFFF)
        {
          return 0;
        }
      }

      return v6 + 24 * v5 + 16;
    }
  }

  return result;
}

void *re::ecs2::MeshComponent::updateStaticBoundingBoxData(void *this, const re::ecs2::Entity *a2, const re::RenderManager *a3)
{
  v40[5] = *MEMORY[0x1E69E9840];
  if (!this[38])
  {
    v5 = this;
    this = re::AssetHandle::loadedAsset<re::MeshAsset>((this + 4));
    if (this)
    {
      v6 = this;
      if (a3)
      {
        goto LABEL_7;
      }

      v7 = a2;
      do
      {
        v8 = v7;
        v7 = *(v7 + 4);
      }

      while (v7);
      v9 = (*(**(*(v8 + 3) + 56) + 32))(*(*(v8 + 3) + 56));
      this = re::ServiceLocator::serviceOrNull<re::RenderManager>(v9);
      a3 = this;
      if (this)
      {
LABEL_7:
        v10 = *(a3 + 18);
        if (v10)
        {
          v11 = (v10 + 8);
        }

        else
        {
          v11 = 0;
        }

        inited = objc_initWeak(&location, v11);
        v13 = re::globalAllocators(inited);
        v14 = (*(*v13[2] + 32))(v13[2], 248, 8);
        *(v14 + 128) = 0u;
        *(v14 + 144) = 0u;
        *v14 = 0u;
        *(v14 + 16) = 0u;
        *(v14 + 32) = 0u;
        *(v14 + 48) = 0u;
        *(v14 + 64) = 0u;
        *(v14 + 80) = 0u;
        *(v14 + 96) = 0u;
        *(v14 + 112) = 0u;
        *(v14 + 160) = 0u;
        *(v14 + 176) = 0u;
        *(v14 + 192) = 0u;
        *(v14 + 208) = 0u;
        *(v14 + 224) = 0u;
        *(v14 + 240) = 0;
        *(v14 + 136) = 1;
        *(v14 + 144) = 0;
        *(v14 + 152) = 0;
        *(v14 + 176) = 0u;
        *(v14 + 192) = 0u;
        *(v14 + 208) = 1;
        *(v14 + 216) = 0;
        *(v14 + 224) = 0;
        memset(v40, 0, 24);
        v40[3] = re::globalAllocators(v14)[2];
        v40[4] = 0;
        re::FramePersistentPtr<re::ecs2::MeshComponent::StaticBoundingBoxData,re::FrameManager>::reset(v5 + 37, &location, v14, v40);
        re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v40);
        objc_destroyWeak(&location);
        location = 0;
        v15 = v5[38];
        v16 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v16)
        {
          v17 = *(v16 + 81);
          if (v17)
          {
            v19 = v17 + 128;
            v17 = *(v17 + 128);
            v18 = *(v19 + 8);
          }

          else
          {
            v18 = 0;
          }

          v15[9] = v18;
          v15[10] = v17;
          v22 = *(v16 + 81);
          if (v22)
          {
            v23 = v22 + 152;
            v22 = *(v22 + 152);
            v21 = *(v23 + 8);
          }

          else
          {
            v21 = 0;
          }
        }

        else
        {
          v16 = re::AssetHandle::operator=(v15, v5 + 4);
          v20 = v6[143];
          v15[9] = v6[144];
          v15[10] = v20;
          v21 = v6[147];
          v22 = v6[146];
        }

        v15[11] = v21;
        v15[12] = v22;
        if (*(v5 + 24) != 0.0)
        {
          re::FixedArray<re::AABB>::operator=((v15 + 3), (v15 + 9));
          v25 = v15[4];
          v24 = v15[5];
          if (v25)
          {
            v26 = &v24[2 * v25];
            do
            {
              v27 = (v5 + 12);
              v28 = vld1q_dup_f32(v27);
              v29 = v24[1];
              *v24 = vsubq_f32(*v24, v28);
              v30 = vld1q_dup_f32(v27);
              v24[1] = vaddq_f32(v29, v30);
              v24 += 2;
            }

            while (v24 != v26);
            v25 = v15[4];
            v24 = v15[5];
          }

          v15[9] = v24;
          v15[10] = v25;
          v16 = re::FixedArray<re::AABB>::operator=((v15 + 6), (v15 + 11));
          v32 = v15[7];
          v31 = v15[8];
          if (v32)
          {
            v33 = &v31[2 * v32];
            do
            {
              v34 = (v5 + 12);
              v35 = vld1q_dup_f32(v34);
              v36 = v31[1];
              *v31 = vsubq_f32(*v31, v35);
              v37 = vld1q_dup_f32(v34);
              v31[1] = vaddq_f32(v36, v37);
              v31 += 2;
            }

            while (v31 != v33);
            v32 = v15[7];
            v31 = v15[8];
          }

          v15[11] = v31;
          v15[12] = v32;
        }
      }
    }
  }

  return this;
}

_anonymous_namespace_ *re::FixedArray<re::AABB>::operator=(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
LABEL_4:
    re::FixedArray<re::AABB>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::ecs2::MeshComponentStateImpl::MeshComponentStateImpl(uint64_t a1, uint64_t a2)
{
  v5[11] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5CED3F0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0x7FFFFFFFLL;
  *(a1 + 72) = a2;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 124) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 140) = 0x7FFFFFFFLL;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0x7FFFFFFFLL;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 236) = 0x7FFFFFFFLL;
  v5[0] = re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v5[1] = re::ecs2::ComponentImpl<re::ecs2::PortalCrossingFlagsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v5[2] = re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v5[3] = re::ecs2::ComponentImpl<re::ecs2::VisualProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v5[4] = re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v5[5] = re::ecs2::ComponentImpl<re::ecs2::ThrottleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v5[6] = re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v5[7] = re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v5[8] = re::ecs2::ComponentImpl<re::ecs2::DebugMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v5[9] = re::ecs2::ComponentImpl<re::ecs2::MaterialRenderStateArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v5[10] = re::ecs2::ComponentImpl<re::ecs2::DirectMaterialParametersArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v4[0] = v5;
  v4[1] = 11;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((a1 + 80), v4);
  return a1;
}

void re::ecs2::MeshComponentStateImpl::didDependentComponentChange(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v57 = *MEMORY[0x1E69E9840];
  v51 = a3;
  if (*(a3 + 387))
  {
    return;
  }

  if (re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == a4 || re::ecs2::ComponentImpl<re::ecs2::VisualProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType == a4)
  {
    re::ecs2::MeshComponentStateImpl::markEntityHierarchyDirty(a2, a3);
    goto LABEL_43;
  }

  if (re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != a4 && re::ecs2::ComponentImpl<re::ecs2::PortalCrossingFlagsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != a4)
  {
    v14 = *(a3 + 192);
    if (v14)
    {
      if (re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType == a4)
      {
        v23 = 24;
        v24 = 0xFFFFFFFFLL;
        do
        {
          v25 = re::ecs2::ComponentBucketsBase::componentHandle(*(a2 + 16), *(a2 + v23), v14);
          if (v25 != -1 && (v26 & 0xFFFFFF00000000) != 0)
          {
            v28 = v25;
            v24 = v26;
            goto LABEL_42;
          }

          v23 += 8;
        }

        while (v23 != 56);
        v28 = -1;
LABEL_42:
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::setComponentState(a2, v28, v24, 0);
      }

      else if (re::ecs2::ComponentImpl<re::ecs2::ThrottleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType == a4)
      {
        re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::ThrottleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      }

      else
      {
        v15 = re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
        if (re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == a4)
        {
          *(v14 + 224) = 0u;
          *(v14 + 208) = 0;
          v48 = re::ecs2::EntityComponentCollection::get((a3 + 48), v15);
          if (v48)
          {
            *(v14 + 208) = *(v48 + 25);
            *(v14 + 224) = *(v48 + 320);
          }
        }

        else if (re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == a4 || re::ecs2::ComponentImpl<re::ecs2::DebugMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType == a4 || re::ecs2::ComponentImpl<re::ecs2::MaterialRenderStateArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType == a4 || re::ecs2::ComponentImpl<re::ecs2::DirectMaterialParametersArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType == a4)
        {
          inited = objc_initWeak(&location, 0);
          v55 = 0uLL;
          *&v56[0] = 0;
          *(&v56[0] + 1) = re::globalAllocators(inited)[2];
          *&v56[1] = 0;
          re::FramePersistentPtr<re::ecs2::MeshComponent::MaterialData,re::FrameManager>::reset((v14 + 240), &location, 0, &v55);
          re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v55);
          objc_destroyWeak(&location);
          location = 0;
        }
      }
    }

    goto LABEL_43;
  }

  v10 = *(a2 + 8);
  memset(v56, 0, sizeof(v56));
  v55 = 0u;
  DWORD1(v56[1]) = 0x7FFFFFFF;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(&v52, a1 + 104, v10, v11 ^ (v11 >> 31));
  if (HIDWORD(v53) == 0x7FFFFFFF)
  {
    v12 = re::HashTable<re::ecs2::Scene *,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(a1 + 104, v53, v52);
    *(v12 + 16) = 0u;
    v13 = v12 + 16;
    *(v12 + 8) = v10;
    *(v12 + 56) = 0;
    v55 = 0u;
    *(v12 + 32) = 0;
    *&v56[0] = 0;
    *(v12 + 40) = xmmword_1E3058120;
    *(v56 + 8) = xmmword_1E3058120;
    ++*(a1 + 144);
  }

  else
  {
    v13 = *(a1 + 120) + 72 * HIDWORD(v53) + 16;
  }

  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v55);
  v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  v18 = v17 ^ (v17 >> 31);
  v19 = *(v13 + 24);
  if (!v19)
  {
    LODWORD(v20) = 0;
    goto LABEL_32;
  }

  v20 = v18 % v19;
  v21 = *(*(v13 + 8) + 4 * (v18 % v19));
  if (v21 == 0x7FFFFFFF)
  {
LABEL_32:
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::addAsCopy(v13, v20, v18, &v51, &v51);
    ++*(v13 + 40);
    goto LABEL_43;
  }

  v22 = *(v13 + 16);
  while (*(v22 + 24 * v21 + 16) != a3)
  {
    LODWORD(v21) = *(v22 + 24 * v21 + 8) & 0x7FFFFFFF;
    if (v21 == 0x7FFFFFFF)
    {
      goto LABEL_32;
    }
  }

LABEL_43:
  if (re::ecs2::ComponentImpl<re::ecs2::DebugMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType == a4)
  {
    v29 = v51;
    v30 = v51;
    do
    {
      v31 = v30;
      v30 = *(v30 + 32);
    }

    while (v30);
    if (v29 == re::ecs2::ComponentHelper::privateSceneDataEntity(*(v31 + 24), 0))
    {
      v32 = v51;
      do
      {
        v33 = v32;
        v32 = *(v32 + 32);
      }

      while (v32);
      v34 = *(v33 + 24);
      v35 = *(v34 + 128);
      if (v35)
      {
        v36 = *(v34 + 144);
        v37 = &v36[v35];
        v38 = xmmword_1E306AC00;
        do
        {
          v39 = *v36;
          v40 = *(*v36 + 192);
          if (v40)
          {
            v41 = *(v39 + 98);
            if (!*(v39 + 98))
            {
              goto LABEL_58;
            }

            v42 = (re::ecs2::ComponentImpl<re::ecs2::DebugMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 16);
            v43 = *(v39 + 104);
            v44 = vld1q_dup_s16(v42);
            v45 = 1;
            while (1)
            {
              v46 = vandq_s8(vceqq_s16(v44, *v43), v38);
              v46.i16[0] = vmaxvq_u16(v46);
              if (v46.i32[0])
              {
                break;
              }

              v45 -= 8;
              ++v43;
              if (!--v41)
              {
                goto LABEL_58;
              }
            }

            if (v46.u16[0] - v45 >= *(v39 + 96))
            {
LABEL_58:
              v47 = objc_initWeak(&v49, 0);
              v55 = 0u;
              memset(v56, 0, 24);
              *(&v56[0] + 1) = re::globalAllocators(v47)[2];
              *&v56[1] = 0;
              re::FramePersistentPtr<re::ecs2::MeshComponent::MaterialData,re::FrameManager>::reset((v40 + 240), &v49, 0, &v55);
              re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v55);
              objc_destroyWeak(&v49);
              v38 = xmmword_1E306AC00;
              v49 = 0;
            }
          }

          ++v36;
        }

        while (v36 != v37);
      }
    }
  }
}

uint64_t re::ecs2::MeshComponentStateImpl::markEntityHierarchyDirty(uint64_t result, void *a2)
{
  v3 = result;
  v4 = a2[24];
  if (v4)
  {
    v5 = 24;
    v6 = 0xFFFFFFFFLL;
    do
    {
      v7 = re::ecs2::ComponentBucketsBase::componentHandle(*(v3 + 16), *(v3 + v5), v4);
      if (v7 != -1 && (v8 & 0xFFFFFF00000000) != 0)
      {
        v10 = v7;
        v6 = v8;
        goto LABEL_10;
      }

      v5 += 8;
    }

    while (v5 != 56);
    v10 = -1;
LABEL_10:
    result = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::setComponentState(v3, v10, v6, 0);
  }

  v11 = a2[43];
  if (v11)
  {
    v12 = a2[45];
    v13 = 8 * v11;
    do
    {
      v14 = *v12++;
      result = re::ecs2::MeshComponentStateImpl::markEntityHierarchyDirty(v3, v14);
      v13 -= 8;
    }

    while (v13);
  }

  return result;
}

void re::ecs2::MeshComponentStateImpl::didSetDirty(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = re::ecs2::ComponentBucketsBase::component(*(a2 + 16), a3, a4);
    if (v4)
    {
      v5 = v4;
      inited = objc_initWeak(&location, 0);
      memset(v8, 0, 24);
      v8[3] = re::globalAllocators(inited)[2];
      v8[4] = 0;
      re::FramePersistentPtr<re::ecs2::MeshComponent::StaticBoundingBoxData,re::FrameManager>::reset((v5 + 296), &location, 0, v8);
      re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v8);
      objc_destroyWeak(&location);
    }
  }
}

uint64_t re::ecs2::MeshComponentStateImpl::checkRenderOptionChanges(uint64_t a1, const re::ecs2::Entity *a2, re::ecs2::RenderOptions *a3, uint64_t a4)
{
  v41 = *(a2 + 39);
  result = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(a4, &v41);
  if (result)
  {
    return result;
  }

  v9 = *(a2 + 39);
  v41 = v9;
  v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
  v11 = v10 ^ (v10 >> 31);
  v12 = *(a4 + 24);
  if (!v12)
  {
    LODWORD(v13) = 0;
    goto LABEL_9;
  }

  v13 = v11 % v12;
  v14 = *(*(a4 + 8) + 4 * (v11 % v12));
  if (v14 == 0x7FFFFFFF)
  {
LABEL_9:
    result = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addAsCopy(a4, v13, v11, &v41, &v41);
    ++*(a4 + 40);
    goto LABEL_10;
  }

  v15 = *(a4 + 16);
  while (*(v15 + 24 * v14 + 16) != v9)
  {
    LODWORD(v14) = *(v15 + 24 * v14 + 8) & 0x7FFFFFFF;
    if (v14 == 0x7FFFFFFF)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  v16 = *(a2 + 24);
  if (v16)
  {
    v17 = re::ecs2::RenderOptions::forEntity(a3, a2);
    v18 = *v17;
    LOWORD(v41) = *v17;
    BYTE2(v41) = v17[2];
    if (BYTE2(v41) == 1)
    {
      BYTE3(v41) = v17[3];
    }

    BYTE4(v41) = v17[4];
    if (BYTE4(v41) == 1)
    {
      BYTE5(v41) = v17[5];
    }

    BYTE6(v41) = v17[6];
    if (BYTE6(v41) == 1)
    {
      HIBYTE(v41) = v17[7];
    }

    v42 = v17[8];
    v19 = *(v17 + 9);
    v44 = v17[11];
    v43 = v19;
    v45 = v17[12];
    if (v45 == 1)
    {
      v46 = v17[13];
    }

    v47 = v17[14];
    if (v47 == 1)
    {
      v48 = v17[15];
    }

    v49 = v17[16];
    if (v49 == 1)
    {
      v50 = v17[17];
    }

    v51 = v17[18];
    if (v51 == 1)
    {
      v52 = v17[19];
    }

    v53 = v17[20];
    if (v53 == 1)
    {
      v54 = *(v17 + 11);
    }

    v20 = *(v17 + 6);
    v56 = v17[28];
    v55 = v20;
    for (i = 24; i != 56; i += 8)
    {
      v22 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v16);
      if (v22 != -1 && (v23 & 0xFFFFFF00000000) != 0)
      {
        v25 = v22;
        goto LABEL_35;
      }
    }

    v25 = -1;
LABEL_35:
    v26 = *(a1 + 32);
    result = re::HierarchicalMeshOverrideFlags::flattenToOverrideFlags((&v41 + 2));
    v27 = *(v16 + 20);
    if (v27)
    {
      v28 = *(v27 + 96);
      LODWORD(v27) = *(v27 + 100);
    }

    else
    {
      v28 = 0;
    }

    if ((v26 != v25) != v18 || v28 != result || v27 != HIDWORD(result))
    {
      v31 = 24;
      v32 = 0xFFFFFFFFLL;
      do
      {
        v33 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + v31), v16);
        if (v33 != -1 && (v34 & 0xFFFFFF00000000) != 0)
        {
          v36 = v33;
          v32 = v34;
          goto LABEL_53;
        }

        v31 += 8;
      }

      while (v31 != 56);
      v36 = -1;
LABEL_53:
      result = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>::setComponentState(a1, v36, v32, 0);
    }
  }

  v37 = *(a2 + 43);
  if (v37)
  {
    v38 = *(a2 + 45);
    v39 = 8 * v37;
    do
    {
      v40 = *v38++;
      result = re::ecs2::MeshComponentStateImpl::checkRenderOptionChanges(a1, v40, a3, a4);
      v39 -= 8;
    }

    while (v39);
  }

  return result;
}

uint64_t re::ecs2::MeshComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a1 + 72) + 272);
  if (v5)
  {
    v22 = (*(*v5 + 16))(v5, a2);
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v19, a5, 0);
    v9 = v19;
    v10 = v20;
    v11 = v20;
    v19 = a4;
    v20 = v9;
    v21 = v10;
    if (v9 != a5 || v11 != 0xFFFFFFFFLL)
    {
      do
      {
        v13 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v19);
        v14 = *re::ecs2::RenderOptions::forEntity(&v22, *(v13 + 16));
        v15 = v19;
        v16 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v20);
        if (v14)
        {
          v17 = 40;
        }

        else
        {
          v17 = 32;
        }

        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v15, v16, *(a3 + v17));
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v20);
      }

      while (v20 != a5 || v21 != 0xFFFF || HIWORD(v21) != 0xFFFF);
    }

    return *(a5 + 40) != 0;
  }

  else
  {
    re::internal::assertLog(4, a2, a3, a4, a5, "assertion failure: '%s' (%s:line %i) Components should not be processed in headless mode.", "m_meshSystem->m_renderOptionsService", "processDirtyComponents", 1939);
    result = _os_crash("assertion failure: (m_meshSystem->m_renderOptionsService) Components should not be processed in headless mode.");
    __break(1u);
  }

  return result;
}

BOOL re::ecs2::MeshComponentStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  v87 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 72);
  v78 = *(v9 + 232);
  if ((*(**(v9 + 240) + 360))(*(v9 + 240), a2))
  {
    v11 = re::AssetHandle::loadedAsset<re::MaterialAsset>((*(v8 + 72) + 296));
    if (!v11 || *(v11 + 1768) == 1)
    {
      re::AssetHandle::loadAsync((*(v8 + 72) + 296));
    }

    v12 = re::AssetHandle::loadedAsset<re::MaterialAsset>((*(v8 + 72) + 320));
    if (!v12 || *(v12 + 1768) == 1)
    {
      re::AssetHandle::loadAsync((*(v8 + 72) + 320));
    }
  }

  v13 = *(*(v8 + 72) + 272);
  if (!v13)
  {
    goto LABEL_92;
  }

  v83 = (*(*v13 + 16))(v13);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v84, a5, 0);
  v80 = a4;
  v81 = v84;
  v82 = DWORD2(v84);
  v14 = v78;
  if (v84 != a5 || DWORD2(v84) != 0xFFFFFFFFLL)
  {
    v76 = a3;
    v77 = v8;
    do
    {
      v15 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v80);
      if (!re::ecs2::MeshComponentHelper::areRequiredAssetsLoaded(v15, v16))
      {
        goto LABEL_81;
      }

      v17 = *(v15 + 16);
      v18 = *(v8 + 72);
      v19 = *(v18 + 888);
      if (v19 && (v17[304] & 0x40) != 0)
      {
        v20 = (*(*v19 + 80))(v19);
        re::AssetHandle::AssetHandle(&v84, v20);
        if (!*(&v84 + 1) || (v21 = atomic_load((*(&v84 + 1) + 896)), v21 != 2))
        {
          re::AssetHandle::loadAsync(&v84);
          re::AssetHandle::~AssetHandle(&v84);
          goto LABEL_81;
        }

        re::AssetHandle::~AssetHandle(&v84);
        v18 = *(v8 + 72);
      }

      v22 = *(v18 + 224);
      if (v22 && (*(v22 + 432) & 0x10) == 0)
      {
        goto LABEL_80;
      }

      v23 = re::AssetHandle::loadedAsset<re::MeshAsset>((v15 + 32));
      v24 = *(v14 + 144);
      if (v24)
      {
        v25 = (v24 + 8);
      }

      else
      {
        v25 = 0;
      }

      inited = objc_initWeak(&location, v25);
      v27 = re::globalAllocators(inited);
      v28 = (*(*v27[2] + 32))(v27[2], 104, 8);
      *v28 = 0u;
      *(v28 + 16) = 0u;
      *(v28 + 32) = 0u;
      *(v28 + 48) = 0u;
      *(v28 + 64) = 0u;
      *(v28 + 80) = 0u;
      *(v28 + 96) = 0;
      v86 = 0;
      v84 = 0u;
      v85 = 0u;
      *(&v85 + 1) = re::globalAllocators(v28)[2];
      v86 = 0;
      re::FramePersistentPtr<re::ecs2::MeshComponent::CachedMeshData,re::FrameManager>::reset((v15 + 152), &location, v28, &v84);
      re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v84);
      objc_destroyWeak(&location);
      location = 0;
      v29 = re::ecs2::EntityComponentCollection::get((v17 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v29)
      {
        v30 = v29;
        v31 = re::ecs2::MeshSceneComponent::ensureCachedDataUpToDate(v29, *(v14 + 32));
        v33 = *(v30 + 81);
        if (v33)
        {
          v34 = *(v33 + 32);
          v35 = *(v33 + 16);
          v36 = v15 + 160;
          v37 = *(v15 + 160);
          if (*v37)
          {
            goto LABEL_28;
          }

          if (v35)
          {
LABEL_28:
            if (*(v37 + 8) != v35)
            {
              goto LABEL_90;
            }

            if (v35)
            {
              memmove(*(v37 + 16), v34, 8 * v35);
            }
          }
        }

        else
        {
          v36 = v15 + 160;
          v40 = *(v15 + 160);
          if (*v40 && v40[1])
          {
LABEL_90:
            re::internal::assertLog(4, v32, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
            _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
            __break(1u);
LABEL_91:
            re::internal::assertLog(4, v44, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
            _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
            __break(1u);
LABEL_92:
            re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) Components should not be processed in headless mode.", "m_meshSystem->m_renderOptionsService", "processPreparingComponents", 1983);
            _os_crash("assertion failure: (m_meshSystem->m_renderOptionsService) Components should not be processed in headless mode.");
            __break(1u);
LABEL_93:
            re::internal::assertLog(4, v39, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
            _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
            __break(1u);
LABEL_94:
            re::internal::assertLog(4, v56, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
            _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
            __break(1u);
LABEL_95:
            re::internal::assertLog(4, v60, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
            _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
            __break(1u);
          }
        }

        v41 = *(v30 + 81);
        if (v41)
        {
          v42 = *(v41 + 72);
          v41 = *(v41 + 56);
        }

        else
        {
          v42 = 0;
        }

        *&v84 = v42;
        *(&v84 + 1) = v41;
        v43 = re::FixedArray<re::MeshRangeGroup>::operator=((*v36 + 24), &v84);
        v45 = *(v30 + 81);
        if (v45)
        {
          v46 = *(v45 + 112);
          v47 = *(v45 + 96);
          v48 = *v36;
          v49 = (*v36 + 48);
          if (*v49)
          {
            goto LABEL_45;
          }

          if (v47)
          {
LABEL_45:
            if (*(v48 + 56) != v47)
            {
              goto LABEL_91;
            }

            if (v47)
            {
              memmove(*(v48 + 64), v46, 8 * v47);
            }
          }
        }

        else if (*(*v36 + 48) && *(*v36 + 56))
        {
          goto LABEL_91;
        }

        v50 = *(v30 + 24);
        v51 = *v36;
        *(v51 + 72) = *(v30 + 26);
        *(v51 + 80) = v50;
        v52 = (v30 + 216);
        a3 = v76;
        v8 = v77;
        v14 = v78;
        goto LABEL_75;
      }

      v36 = v15 + 160;
      v38 = *(v15 + 160);
      if (v38 != v23 + 1064)
      {
        v39 = *(v23 + 1064);
        if (*v38)
        {
          if (!v39)
          {
            goto LABEL_56;
          }
        }

        else
        {
          if (!v39)
          {
            goto LABEL_56;
          }

          re::FixedArray<re::MeshPart const*>::init<>(*(v15 + 160), v39, *(v23 + 1072));
        }

        v53 = *(v23 + 1072);
        if (*(v38 + 8) != v53)
        {
          goto LABEL_93;
        }

        if (v53)
        {
          memmove(*(v38 + 16), *(v23 + 1080), 8 * v53);
        }
      }

LABEL_56:
      v54 = *v36;
      v55 = (*v36 + 24);
      if (v55 == (v23 + 1088))
      {
        goto LABEL_65;
      }

      v56 = *(v23 + 1088);
      if (*v55)
      {
        if (!v56)
        {
          goto LABEL_65;
        }
      }

      else
      {
        if (!v56)
        {
          goto LABEL_65;
        }

        re::FixedArray<re::MeshRangeGroup>::init<>(v55, v56, *(v23 + 1096));
      }

      v57 = *(v23 + 1096);
      if (*(v54 + 32) != v57)
      {
        goto LABEL_94;
      }

      if (v57)
      {
        memmove(*(v54 + 40), *(v23 + 1104), 96 * v57);
      }

LABEL_65:
      v58 = *v36;
      v59 = (*v36 + 48);
      if (v59 != (v23 + 1112))
      {
        v60 = *(v23 + 1112);
        if (*v59)
        {
          if (v60)
          {
            goto LABEL_71;
          }
        }

        else if (v60)
        {
          re::FixedArray<re::MeshPart const*>::init<>(v59, v60, *(v23 + 1120));
LABEL_71:
          v61 = *(v23 + 1120);
          if (*(v58 + 56) != v61)
          {
            goto LABEL_95;
          }

          if (v61)
          {
            memmove(*(v58 + 64), *(v23 + 1128), 8 * v61);
          }
        }
      }

      v62 = *(v23 + 568);
      v63 = *v36;
      *(v63 + 72) = *(v23 + 584);
      *(v63 + 80) = v62;
      v52 = (v23 + 640);
LABEL_75:
      v64 = *v36;
      *(v64 + 88) = v52;
      if (*(v64 + 80))
      {
        v65 = re::ecs2::RenderOptions::forEntity(&v83, v17);
        *(*(v15 + 160) + 96) = re::HierarchicalMeshOverrideFlags::flattenToOverrideFlags((v65 + 2));
        updated = re::ecs2::MeshComponent::updateMaterialData(v15, *(v8 + 72), v23, v17, v66);
        re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(v8 + 24);
        if (updated)
        {
          re::ecs2::EntityComponentCollection::get((v17 + 48), re::ecs2::ComponentImpl<re::ecs2::ThrottleComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          *(v15 + 224) = 0u;
          *(v15 + 208) = 0;
          v68 = re::ecs2::EntityComponentCollection::get((v17 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          if (v68)
          {
            *(v15 + 208) = *(v68 + 25);
            *(v15 + 224) = *(v68 + 320);
          }

          re::ecs2::MeshComponent::updateStaticBoundingBoxData(v15, v17, v14);
          v69 = v80;
          v70 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v81);
          re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v69, v70, a3[6]);
          v8 = v77;
          goto LABEL_81;
        }

LABEL_80:
        v71 = v80;
        v72 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v81);
        re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v71, v72, a3[4]);
      }

LABEL_81:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v81);
    }

    while (v81 != a5 || v82 != 0xFFFF || HIWORD(v82) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

_anonymous_namespace_ *re::FixedArray<re::MeshRangeGroup>::operator=(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
LABEL_4:
    re::FixedArray<re::MeshRangeGroup>::copy(a1, a2);
  }

  return a1;
}

void re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = *(a1 + 16);
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 32;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v7 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v7;
  }
}

uint64_t re::ecs2::MeshComponentStateImpl::processUpdatingComponents(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v598 = v6;
  v8 = v7;
  v806 = *MEMORY[0x1E69E9840];
  v9 = *(*(v7 + 72) + 232);
  v10 = *(v9 + 44);
  if (v10)
  {
    (*(*v10 + 40))(__src, *(v9 + 44), v1);
    (*(*v10 + 32))(v769, v10);
    v11 = *&__src[0];
    if (*&__src[0])
    {
      _ZF = *v769 == 0;
    }

    else
    {
      _ZF = 1;
    }

    v13 = !_ZF;
    v552 = v13;
    if (*v769)
    {

      v11 = *&__src[0];
    }

    if (v11)
    {
    }

    v9 = *(*(v8 + 72) + 232);
  }

  else
  {
    v552 = 0;
  }

  v14 = *(v598 + 8);
  v609 = v9;
  v15 = re::RenderManager::perFrameAllocator(v9);
  v713 = (*(**(*(v8 + 72) + 256) + 24))(*(*(v8 + 72) + 256));
  v711 = 0;
  v709 = 0u;
  v710 = 0u;
  v712 = 0x7FFFFFFFLL;
  v646 = v15;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(&v709, v15, 3);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(__src, v3, 0);
  v16 = *&__src[0];
  v17 = DWORD2(__src[0]);
  v636 = v5;
  *&__src[0] = v5;
  *(&__src[0] + 1) = v16;
  LODWORD(__src[1]) = v17;
  if (v16 != v3 || v17 != 0xFFFFFFFFLL)
  {
    do
    {
      re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(__src);
      (*(*v713 + 8))(v769);
      if (v769[0])
      {
        v18 = *&v769[8];
      }

      else
      {
        v18 = 0;
      }

      *v769 = v18;
      *&v799 = 0;
      v19 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(&v709, v769, &v799);
      ++*v19;
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(__src + 4);
    }

    while (*(&__src[0] + 1) != v3 || LOWORD(__src[1]) != 0xFFFF || WORD1(__src[1]) != 0xFFFF);
  }

  v707 = 0;
  memset(v706, 0, sizeof(v706));
  v708 = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v706, v15, 3);
  v20 = re::ecs2::SceneComponentTable::get((v14 + 200), re::ecs2::ComponentImpl<re::ecs2::PortalComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v20)
  {
    v21 = *(v20 + 384);
    if (v21)
    {
      v22 = *(v20 + 400);
      v23 = 8 * v21;
      do
      {
        v22 += 8;
        (*(*v713 + 8))(__src);
        if (LOBYTE(__src[0]))
        {
          v24 = *(&__src[0] + 1);
        }

        else
        {
          v24 = 0;
        }

        *&__src[0] = v24;
        *v769 = 0;
        v25 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v706, __src, v769);
        ++*v25;
        v23 -= 8;
      }

      while (v23);
    }
  }

  v645 = v8;
  v702 = 0u;
  v703 = 0u;
  v704 = 0;
  v705 = 0x7FFFFFFFLL;
  re::HashTable<unsigned long long,re::ecs2::PerWorldData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v702, v646, SHIDWORD(v710));
  v640 = v3;
  v644 = v14;
  v648 = v711;
  if (v711)
  {
    v26 = 0;
    v27 = v710;
    while (1)
    {
      v28 = *v27;
      v27 += 8;
      if (v28 < 0)
      {
        break;
      }

      if (v711 == ++v26)
      {
        LODWORD(v26) = v711;
        break;
      }
    }
  }

  else
  {
    LODWORD(v26) = 0;
  }

  if (v26 != v711)
  {
    v39 = v710;
    while (1)
    {
      v40 = v39 + 32 * v26;
      v41 = *(v40 + 16);
      memset(__src + 8, 0, 20);
      *&v720 = 0;
      *&__src[0] = v646;
      re::DynamicArray<re::MeshScene>::setCapacity(__src, v41);
      ++DWORD2(__src[1]);
      *&v721[0] = 0;
      DWORD2(v721[0]) = 0;
      *&v721[1] = 0;
      DWORD2(v721[1]) = 0;
      v756 = 0u;
      v757 = 0u;
      v758 = 0;
      v759 = 0x7FFFFFFFLL;
      v760 = 0;
      *&v764 = 0;
      v762 = 0uLL;
      v763 = 0;
      v761 = v646;
      re::DynamicArray<re::BlurPlaneData>::setCapacity(&v761, 0);
      ++v763;
      v767 = 0;
      v765 = 0uLL;
      v766 = 0;
      *(&v764 + 1) = v646;
      re::DynamicArray<re::BlurPlaneData>::setCapacity(&v764 + 1, 0);
      v44 = *(v40 + 8);
      v43 = (v40 + 8);
      v42 = v44;
      v45 = ++v766;
      v768 = 0;
      v46 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v44 ^ (v44 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v44 ^ (v44 >> 30))) >> 27));
      v47 = v46 ^ (v46 >> 31);
      if (!v702)
      {
        break;
      }

      v48 = v47 % DWORD2(v703);
      v49 = *(*(&v702 + 1) + 4 * v48);
      if (v49 == 0x7FFFFFFF)
      {
        goto LABEL_50;
      }

      while (*(v703 + 7168 * v49 + 8) != v42)
      {
        LODWORD(v49) = *(v703 + 7168 * v49) & 0x7FFFFFFF;
        if (v49 == 0x7FFFFFFF)
        {
          goto LABEL_50;
        }
      }

      v52 = v703 + 7168 * v49 + 16;
      if (!*(&v764 + 1))
      {
        goto LABEL_52;
      }

      if (v767)
      {
        (*(**(&v764 + 1) + 40))();
        v45 = v766;
      }

      v767 = 0;
      v765 = 0uLL;
      v54 = &v766;
      *(&v764 + 1) = 0;
LABEL_51:
      *v54 = v45 + 1;
LABEL_52:
      if (v761)
      {
        if (v764)
        {
          (*(*v761 + 40))();
        }

        *&v764 = 0;
        v762 = 0uLL;
        v761 = 0;
        ++v763;
      }

      re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashTable(v721);
      re::DynamicArray<re::MeshScene>::deinit(__src);
      if (re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v706, v43))
      {
        *&__src[0] = v646;
        DWORD2(__src[0]) = 0;
        *&__src[1] = 0;
        DWORD2(__src[1]) = 0;
        memset(v753, 0, sizeof(v753));
        v754 = 0;
        v755 = 0x7FFFFFFFLL;
        if ((v52 + 48) != __src)
        {
          if (*(v52 + 7020) || *(v52 + 64) || *(v52 + 6992))
          {
            re::DynamicInlineArray<re::KeyValuePair<unsigned long long,re::StencilPortal>,8ul>::clear(v52 + 64);
            re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit((v52 + 6992));
            v55 = 0;
            v56 = 0;
            v57 = *&__src[0];
            v58 = DWORD2(__src[0]);
          }

          else
          {
            v58 = 0;
            v56 = *(v52 + 48);
            v55 = *(v52 + 56);
            v57 = v646;
          }

          *(v52 + 48) = v57;
          *&__src[0] = v56;
          *(v52 + 56) = v58;
          DWORD2(__src[0]) = v55;
          *v769 = 0;
          *&v769[8] = 0;
          re::DynamicInlineArray<re::KeyValuePair<unsigned long long,re::StencilPortal>,8ul>::move(v769, (v52 + 64));
          re::DynamicInlineArray<re::KeyValuePair<unsigned long long,re::StencilPortal>,8ul>::move((v52 + 64), &__src[1]);
          ++*(v52 + 72);
          re::DynamicInlineArray<re::KeyValuePair<unsigned long long,re::StencilPortal>,8ul>::move(&__src[1], v769);
          ++DWORD2(__src[1]);
          re::DynamicInlineArray<re::KeyValuePair<unsigned long long,re::StencilPortal>,8ul>::clear(v769);
          *v769 = *(v52 + 6992);
          *(v52 + 6992) = 0u;
          *&v769[16] = *(v52 + 7008);
          *(v52 + 7008) = 0;
          *&v769[24] = *(v52 + 7016);
          *(v52 + 7016) = xmmword_1E3058120;
          *&v769[40] = 1;
          re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::operator=(v52 + 6992, v753);
          re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::operator=(v753, v769);
          re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::deinit(v769);
        }

        re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashTable(__src);
      }

      *(v52 + 7040) = 0;
      if (v711 <= v26 + 1)
      {
        v59 = v26 + 1;
      }

      else
      {
        v59 = v711;
      }

      v39 = v710;
      while (v59 - 1 != v26)
      {
        LODWORD(v26) = v26 + 1;
        if ((*(v710 + 32 * v26) & 0x80000000) != 0)
        {
          goto LABEL_72;
        }
      }

      LODWORD(v26) = v59;
LABEL_72:
      if (v26 == v648)
      {
        goto LABEL_37;
      }
    }

    LODWORD(v48) = 0;
LABEL_50:
    v50 = re::HashTable<unsigned long long,re::ecs2::PerWorldData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v702, v48, v47);
    v51 = *v43;
    *(v50 + 16) = *&__src[0];
    v52 = v50 + 16;
    *(v50 + 8) = v51;
    *&__src[0] = 0;
    *(v50 + 24) = *(__src + 8);
    *(__src + 8) = 0u;
    *(v50 + 48) = v720;
    *&v720 = 0;
    ++DWORD2(__src[1]);
    *(v50 + 40) = 1;
    re::SmallHashTable<unsigned long long,re::StencilPortal,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::SmallHashTable(v50 + 64);
    *(v52 + 7040) = v760;
    *(v52 + 7048) = v761;
    v761 = 0;
    *(v52 + 7056) = v762;
    v762 = 0u;
    ++v763;
    *(v52 + 7080) = v764;
    *(v52 + 7072) = 1;
    v53 = v765;
    v765 = 0u;
    *(v52 + 7096) = v53;
    v764 = 0u;
    *(v52 + 7120) = v767;
    v767 = 0;
    ++v766;
    *(v52 + 7112) = 1;
    *(v52 + 7128) = v768;
    v54 = &v705 + 1;
    v45 = HIDWORD(v705);
    goto LABEL_51;
  }

LABEL_37:
  v29 = v8;
  v30 = (*(**(*(v8 + 72) + 40) + 32))(*(*(v8 + 72) + 40));
  v31 = re::ServiceLocator::serviceOrNull<re::ecs2::RenderPassGroupService>(v30);
  v698 = 0u;
  v699 = 0u;
  v700 = 0;
  v701 = 0x7FFFFFFFLL;
  v33 = v711;
  v546 = v31;
  if (v711)
  {
    v34 = 0;
    v35 = v710;
    v36 = v14;
    while (1)
    {
      v37 = *v35;
      v35 += 8;
      if (v37 < 0)
      {
        break;
      }

      if (v711 == ++v34)
      {
        LODWORD(v34) = v711;
        break;
      }
    }

    v38 = v640;
  }

  else
  {
    LODWORD(v34) = 0;
    v38 = v640;
    v36 = v14;
  }

  if (v34 != v711)
  {
    v60 = v710;
    do
    {
      v61 = v60 + 32 * v34;
      LODWORD(v720) = 0;
      memset(__src, 0, sizeof(__src));
      *(&v720 + 4) = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(&v698, (v61 + 8), __src);
      re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(__src);
      if (v711 <= v34 + 1)
      {
        v62 = v34 + 1;
      }

      else
      {
        v62 = v711;
      }

      v60 = v710;
      while (v62 - 1 != v34)
      {
        LODWORD(v34) = v34 + 1;
        if ((*(v710 + 32 * v34) & 0x80000000) != 0)
        {
          goto LABEL_90;
        }
      }

      LODWORD(v34) = v62;
LABEL_90:
      ;
    }

    while (v34 != v33);
  }

  v63 = v609;
  v64 = *(v609 + 14);
  if (v64)
  {
    v65 = re::RenderFrameBox::get((v64 + 328), 0xFFFFFFFFFFFFFFFuLL);
  }

  else
  {
    v65 = 0;
  }

  v643 = v65;
  re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(&v697, v36, 0, v65);
  if (!re::s_debugSettingsManager)
  {
    goto LABEL_99;
  }

  *&__src[0] = 0x24602E277FE387A2;
  *(&__src[0] + 1) = "perceptualBlendingMode";
  *v769 = 0;
  v66 = re::DebugSettingsManager::getWithErrorCode<int>(re::s_debugSettingsManager, __src, v769);
  if (v66)
  {
    if (__src[0])
    {
      if (__src[0])
      {
      }
    }

LABEL_99:
    if ((atomic_load_explicit(&qword_1EE1A5F88, memory_order_acquire) & 1) == 0)
    {
      v520 = __cxa_guard_acquire(&qword_1EE1A5F88);
      if (v520)
      {
        __cxa_guard_release(&qword_1EE1A5F88);
      }
    }

    if (re::internal::perceptual_alpha::never_use_this::g_enablePerceptualAlpha)
    {
      v67 = 2;
    }

    else
    {
      v67 = 0;
    }

    v551 = v67;
    goto LABEL_104;
  }

  v551 = *v769;
  if (__src[0])
  {
    if (__src[0])
    {
    }
  }

LABEL_104:
  v68 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(__src, v38, 0);
  v694 = v636;
  v695 = *&__src[0];
  v696 = DWORD2(__src[0]);
  if (*&__src[0] != v38 || DWORD2(__src[0]) != 0xFFFFFFFFLL)
  {
    v73 = 1.0e-10;
    while (1)
    {
      v74 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v694);
      v693 = *(v74 + 16);
      v76 = re::AssetHandle::loadedAsset<re::MeshAsset>((v74 + 32));
      v77 = *(v74 + 248);
      v652 = v74;
      if (!v77)
      {
        goto LABEL_120;
      }

      v78 = *(v77 + 152);
      if (v78)
      {
        v79 = *(v77 + 168);
        v80 = 16 * v78;
        while (1)
        {
          uuid_copy(v769, v79);
          if (re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::contains(v29 + 24, v769))
          {
            break;
          }

          v79 += 16;
          v80 -= 16;
          if (!v80)
          {
            goto LABEL_119;
          }
        }

        inited = objc_initWeak(&location, 0);
        *&v720 = 0;
        memset(__src, 0, sizeof(__src));
        *(&__src[1] + 1) = re::globalAllocators(inited)[2];
        *&v720 = 0;
        re::FramePersistentPtr<re::ecs2::MeshComponent::MaterialData,re::FrameManager>::reset((v652 + 240), &location, 0, __src);
        re::FunctionBase<24ul,void ()(void *)>::destroyCallable(__src);
        objc_destroyWeak(&location);
        location = 0;
      }

LABEL_119:
      v74 = v652;
      v82 = *(v652 + 248);
      if (!v82)
      {
LABEL_120:
        updated = re::ecs2::MeshComponent::updateMaterialData(v74, *(v29 + 72), v76, v693, v75);
        re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(v29 + 24);
        if (!updated)
        {
          v99 = v694;
          v100 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v695);
          re::ecs2::ComponentBucketsBase::moveComponent(*(v598 + 16), v99, v100, *(v598 + 32));
          goto LABEL_246;
        }

        v82 = *(v74 + 248);
      }

      if (*(v82 + 204))
      {
        v84 = *(v63 + 3);
        *&__src[0] = *(v693 + 39);
        *v769 = v82 + 176;
        re::HashTable<unsigned long long,re::HashSet<re::UnresolvedArgumentBufferEntry,re::Hash<re::UnresolvedArgumentBufferEntry>,re::EqualTo<re::UnresolvedArgumentBufferEntry>,true,false> *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(v84 + 1200, __src, v769);
      }

      v85 = *(v74 + 160);
      v86 = *(v85 + 8);
      v87 = *(v85 + 16);
      InstanceCounts = re::ecs2::EntityComponentCollection::get((v693 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (InstanceCounts)
      {
        v89 = InstanceCounts;
        InstanceDataBuffers = re::ecs2::MeshPartInstancesComponent::getInstanceDataBuffers(InstanceCounts, v646);
        v638 = v90;
        InstanceCounts = re::ecs2::MeshPartInstancesComponent::getInstanceCounts(v89, v646);
        v92 = InstanceCounts;
        v637 = v91;
        v93 = v86 >= v91 ? v91 : v86;
        if (v93)
        {
          v94 = 0;
          for (i = 0; i != v93; ++i)
          {
            v96 = *&v87[8 * i];
            v97 = *(v96 + 448);
            v98 = *(v96 + 452);
            if (v97 > v98)
            {
              v98 = v97;
            }

            v94 += *(InstanceCounts + i) * v98;
          }

          v74 = v652;
          if (v94 >= 0x989681)
          {
LABEL_245:
            v38 = v640;
            goto LABEL_246;
          }
        }

        else
        {
          v74 = v652;
        }
      }

      else
      {
        InstanceDataBuffers = 0;
        v638 = 0;
        v92 = 0;
        v637 = 0;
      }

      v101 = *(v74 + 160);
      v103 = v101[4];
      v102 = v101[5];
      v621 = v101[8];
      v620 = v101[7];
      if (re::DeformerFeatureFlags::enableLowLevelMeshDeformations(InstanceCounts))
      {
        v104 = *(v693 + 49);
        if (!*(v693 + 49))
        {
          break;
        }

        v105 = (re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType + 16);
        v106 = *(v693 + 13);
        v107 = vld1q_dup_s16(v105);
        v108 = 1;
        while (1)
        {
          v109 = vandq_s8(vceqq_s16(v107, *v106), xmmword_1E306AC00);
          v109.i16[0] = vmaxvq_u16(v109);
          if (v109.i32[0])
          {
            break;
          }

          v108 -= 8;
          ++v106;
          if (!--v104)
          {
            goto LABEL_169;
          }
        }

        if (v109.u16[0] - v108 >= *(v693 + 48))
        {
          break;
        }
      }

      v110 = *(v693 + 25);
      if (!v110)
      {
        goto LABEL_219;
      }

      v633 = *(v110 + 440);
      if (!v633)
      {
        goto LABEL_219;
      }

      v614 = v103;
      v616 = v102;
      v626 = v86;
      v618 = v92;
      v649 = *(v63 + 18);
      v111 = *(v74 + 160);
      v112 = v111[1];
      v629 = v111[5];
      v641 = v111[4];
      v688.i64[0] = v111[2];
      v688.i64[1] = v112;
      v113 = *(v74 + 360);
      if (v113 && v113[9] == v112 && v113[14] == v641)
      {
        v29 = v645;
        if (!v641)
        {
          goto LABEL_216;
        }

        v92 = 0;
        while (1)
        {
          m = v113[14];
          if (m <= v92)
          {
            goto LABEL_666;
          }

          v115 = (v629 + 96 * v92);
          v116 = (v113[16] + 96 * v92);
          if (v115->i64[0] != v116->i64[0])
          {
            break;
          }

          v117 = v115->u64[1];
          if (v117 != v116->i64[1] || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v115[2], v116[2]), vceqq_f32(v115[1], v116[1])), vandq_s8(vceqq_f32(v115[3], v116[3]), vceqq_f32(v115[4], v116[4])))) & 0x80000000) == 0)
          {
            break;
          }

          v118 = re::Slice<re::internal::BindPointImplBase const*>::range(&v688, v115->i64[0], v117);
          m = v119;
          v120 = v113[9];
          *&__src[0] = v113[11];
          *(&__src[0] + 1) = v120;
          v122 = re::Slice<re::internal::BindPointImplBase const*>::range(__src, v116->i64[0], v116->u64[1]);
          v123 = v121;
          if (v92 >= *(v633 + 8))
          {
            v126 = 0;
            v125 = 0;
            if (m)
            {
LABEL_160:
              for (j = 0; j != m; ++j)
              {
                if (j >= v126 || (v128 = v125, !*v125))
                {
                  v128 = (v118 + 8 * j);
                }

                if (v123 == j)
                {
                  goto LABEL_663;
                }

                if (!re::AttributeTable::operator==(*(v122 + 8 * j), *v128))
                {
                  goto LABEL_172;
                }

                ++v125;
              }
            }
          }

          else
          {
            v124 = *(v633 + 16) + 24 * v92;
            v126 = *(v124 + 8);
            v125 = *(v124 + 16);
            if (m)
            {
              goto LABEL_160;
            }
          }

          ++v92;
          v29 = v645;
          if (v92 == v641)
          {
            goto LABEL_216;
          }
        }
      }

LABEL_172:
      v137 = *(v633 + 8);
      v29 = v645;
      v92 = v618;
      v86 = v626;
      v102 = v616;
      v103 = v614;
      v74 = v652;
      if (v137)
      {
        v138 = 0;
        v139 = *(v633 + 16);
        v140 = v139 + 24 * v137;
        do
        {
          while (1)
          {
            v141 = *(v139 + 8);
            if (!v141)
            {
              break;
            }

            v142 = *(v139 + 16);
            v143 = 8 * v141;
            while (!*v142)
            {
              ++v142;
              v143 -= 8;
              if (!v143)
              {
                goto LABEL_178;
              }
            }

            v139 += 24;
            v138 = 1;
            if (v139 == v140)
            {
              goto LABEL_183;
            }
          }

LABEL_178:
          v139 += 24;
        }

        while (v139 != v140);
        if ((v138 & 1) == 0)
        {
          goto LABEL_218;
        }

LABEL_183:
        v144 = objc_initWeak(&v684, (v649 + 8));
        v145 = re::globalAllocators(v144);
        v146 = (*(*v145[2] + 32))(v145[2], 136, 8);
        *(v146 + 32) = 0u;
        *(v146 + 48) = 0u;
        *(v146 + 64) = 0u;
        *(v146 + 80) = 0u;
        *(v146 + 96) = 0u;
        *(v146 + 112) = 0u;
        *v146 = 0u;
        *(v146 + 16) = 0u;
        *(v146 + 16) = 1;
        *(v146 + 24) = 0;
        *(v146 + 32) = 0;
        *(v146 + 40) = 0;
        *(v146 + 48) = 0;
        *(v146 + 56) = 0;
        *(v146 + 64) = 0;
        *(v146 + 72) = 0;
        *(v146 + 80) = 0;
        *(v146 + 128) = 0;
        *(v146 + 120) = 0;
        *(v146 + 104) = 0u;
        *(v146 + 88) = 0u;
        memset(__src, 0, 24);
        *(&__src[1] + 1) = re::globalAllocators(v146)[2];
        *&v720 = 0;
        re::FramePersistentPtr<re::ecs2::MeshComponent::CombinedRenderMeshParts,re::FrameManager>::reset((v652 + 352), &v684, v146, __src);
        re::FunctionBase<24ul,void ()(void *)>::destroyCallable(__src);
        objc_destroyWeak(&v684);
        *&v684 = 0;
        v147 = *(v652 + 360);
        re::StackScratchAllocator::StackScratchAllocator(__src);
        LODWORD(v801) = 0;
        v800 = 0u;
        v799 = 0u;
        *(&v801 + 4) = 0x7FFFFFFFLL;
        re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(&v799, __src, 2 * v688.i32[2]);
        v148 = v633;
        if (v641)
        {
          for (k = 0; k != v641; k = (k + 1))
          {
            v150 = v629 + 96 * k;
            m = re::Slice<re::internal::BindPointImplBase const*>::range(&v688, *v150, *(v150 + 8));
            v123 = v151;
            if (k >= *(v148 + 8))
            {
              v650 = 0;
              v92 = 0;
            }

            else
            {
              v152 = *(v148 + 16) + 24 * k;
              v92 = *(v152 + 8);
              v650 = *(v152 + 16);
            }

            v153 = *(v147 + 72);
            v154 = v153;
            if (v151)
            {
              v622 = *(v147 + 72);
              v624 = v629 + 96 * k;
              v627 = k;
              v155 = 0;
              do
              {
                v156 = *(m + 8 * v155);
                if (v155 < v92 && (v157 = *(v650 + 8 * v155)) != 0)
                {
                  v158 = *(v147 + 40);
                  j = *(v147 + 8);
                  if (v158 + 1 > 8 * j)
                  {
                    re::BucketArray<re::MeshPart,8ul>::setBucketsCapacity(v147, (v158 + 8) >> 3);
                    j = *(v147 + 8);
                  }

                  if (j <= v158 >> 3)
                  {
                    *&v668.var0 = 0;
                    memset(v769, 0, 80);
                    v497 = MEMORY[0x1E69E9C10];
                    v498 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v714 = 136315906;
                    *&v714[4] = "operator[]";
                    v715 = 1024;
                    if (v498)
                    {
                      v499 = 3;
                    }

                    else
                    {
                      v499 = 2;
                    }

                    *v716 = 858;
                    *&v716[4] = 2048;
                    *&v716[6] = v158 >> 3;
                    *&v716[14] = 2048;
                    *&v716[16] = j;
                    _os_log_send_and_compose_impl(v499, &v668, v769, 80, &dword_1E1C61000, v497, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v714, 38, v534, v535);
                    _os_crash_msg();
                    __break(1u);
LABEL_634:
                    re::internal::assertLog(6, v166, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, j, v166);
                    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v522, v528);
                    __break(1u);
LABEL_635:
                    *&v668.var0 = 0;
                    memset(v769, 0, 80);
                    v500 = MEMORY[0x1E69E9C10];
                    v501 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v714 = 136315906;
                    *&v714[4] = "operator[]";
                    v715 = 1024;
                    if (v501)
                    {
                      v502 = 3;
                    }

                    else
                    {
                      v502 = 2;
                    }

                    *v716 = 476;
                    *&v716[4] = 2048;
                    *&v716[6] = j;
                    *&v716[14] = 2048;
                    *&v716[16] = v158;
                    _os_log_send_and_compose_impl(v502, &v668, v769, 80, &dword_1E1C61000, v500, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v714, 38, v534, v535);
                    _os_crash_msg();
                    __break(1u);
LABEL_639:
                    re::internal::assertLog(6, v173, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, j, v173);
                    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v523, v529);
                    __break(1u);
LABEL_640:
                    *&v668.var0 = 0;
                    memset(v769, 0, 80);
                    v503 = MEMORY[0x1E69E9C10];
                    v504 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v714 = 136315906;
                    *&v714[4] = "operator[]";
                    v715 = 1024;
                    if (v504)
                    {
                      v505 = 3;
                    }

                    else
                    {
                      v505 = 2;
                    }

                    *v716 = 476;
                    *&v716[4] = 2048;
                    *&v716[6] = j;
                    *&v716[14] = 2048;
                    *&v716[16] = v158;
                    _os_log_send_and_compose_impl(v505, &v668, v769, 80, &dword_1E1C61000, v503, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v714, 38, v534, v535);
                    _os_crash_msg();
                    __break(1u);
LABEL_644:
                    *&v799 = 0;
                    memset(v721, 0, 32);
                    v720 = 0u;
                    memset(__src, 0, sizeof(__src));
                    v326 = MEMORY[0x1E69E9C10];
                    v506 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v769 = 136315906;
                    *&v769[4] = "operator[]";
                    *&v769[12] = 1024;
                    if (v506)
                    {
                      v507 = 3;
                    }

                    else
                    {
                      v507 = 2;
                    }

                    *&v769[14] = 468;
                    *&v769[18] = 2048;
                    *&v769[20] = m;
                    *&v769[28] = 2048;
                    *&v769[30] = j;
                    _os_log_send_and_compose_impl(v507, &v799, __src, 80, &dword_1E1C61000, v326, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v769, 38, v534, v535);
                    _os_crash_msg();
                    __break(1u);
LABEL_648:
                    re::internal::assertLog(6, v327, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v326, v158);
                    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v524, v530);
                    __break(1u);
LABEL_649:
                    *v714 = 0;
                    memset(v721, 0, 32);
                    v720 = 0u;
                    memset(__src, 0, sizeof(__src));
                    v508 = MEMORY[0x1E69E9C10];
                    v509 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v769 = 136315906;
                    *&v769[4] = "operator[]";
                    *&v769[12] = 1024;
                    if (v509)
                    {
                      v510 = 3;
                    }

                    else
                    {
                      v510 = 2;
                    }

                    *&v769[14] = 858;
                    *&v769[18] = 2048;
                    *&v769[20] = v158;
                    *&v769[28] = 2048;
                    *&v769[30] = v92;
                    _os_log_send_and_compose_impl(v510, v714, __src, 80, &dword_1E1C61000, v508, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v769, 38, v534, v535);
                    _os_crash_msg();
                    __break(1u);
LABEL_653:
                    re::internal::assertLog(4, v476, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
                    _os_crash("assertion failure: (m_size > 0) Array is empty");
                    __break(1u);
LABEL_654:
                    m = v481 >> 2;
                    *v714 = 0;
                    memset(v721, 0, 32);
                    v720 = 0u;
                    memset(__src, 0, sizeof(__src));
                    v511 = MEMORY[0x1E69E9C10];
                    v512 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v769 = 136315906;
                    *&v769[4] = "operator[]";
                    *&v769[12] = 1024;
                    if (v512)
                    {
                      v513 = 3;
                    }

                    else
                    {
                      v513 = 2;
                    }

                    *&v769[14] = 858;
                    *&v769[18] = 2048;
                    *&v769[20] = m;
                    *&v769[28] = 2048;
                    *&v769[30] = v92;
                    _os_log_send_and_compose_impl(v513, v714, __src, 80, &dword_1E1C61000, v511, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v769, 38, v534, v535);
                    _os_crash_msg();
                    __break(1u);
LABEL_658:
                    re::internal::assertLog(4, v365, "assertion failure: '%s' (%s:line %i) ", "referencingPortalComponent != nullptr", "processUpdatingComponents", 2906);
                    _os_crash("assertion failure: (referencingPortalComponent != nullptr) ");
                    __break(1u);
LABEL_659:
                    *&v799 = 0;
                    memset(v721, 0, 32);
                    v720 = 0u;
                    memset(__src, 0, sizeof(__src));
                    v514 = MEMORY[0x1E69E9C10];
                    v515 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v769 = 136315906;
                    *&v769[4] = "operator[]";
                    *&v769[12] = 1024;
                    if (v515)
                    {
                      v516 = 3;
                    }

                    else
                    {
                      v516 = 2;
                    }

                    *&v769[14] = 468;
                    *&v769[18] = 2048;
                    *&v769[20] = m;
                    *&v769[28] = 2048;
                    *&v769[30] = j;
                    _os_log_send_and_compose_impl(v516, &v799, __src, 80, &dword_1E1C61000, v514, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v769, 38, v534, v535);
                    _os_crash_msg();
                    __break(1u);
LABEL_663:
                    re::internal::assertLog(6, v121, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v123, v123);
                    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v525, v531);
                    __break(1u);
LABEL_664:
                    re::internal::assertLog(6, v209, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, j);
                    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v526, v532);
                    __break(1u);
LABEL_665:
                    re::internal::assertLog(4, v212, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
                    _os_crash("assertion failure: (m_data) Out of memory.");
                    __break(1u);
LABEL_666:
                    *&v799 = 0;
                    memset(v721, 0, 32);
                    v720 = 0u;
                    memset(__src, 0, sizeof(__src));
                    v517 = MEMORY[0x1E69E9C10];
                    v518 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v769 = 136315906;
                    *&v769[4] = "operator[]";
                    *&v769[12] = 1024;
                    if (v518)
                    {
                      v519 = 3;
                    }

                    else
                    {
                      v519 = 2;
                    }

                    *&v769[14] = 789;
                    *&v769[18] = 2048;
                    *&v769[20] = v92;
                    *&v769[28] = 2048;
                    *&v769[30] = m;
                    _os_log_send_and_compose_impl(v519, &v799, __src, 80, &dword_1E1C61000, v517, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v769, 38, v534, v535);
                    _os_crash_msg();
                    __break(1u);
LABEL_670:
                    re::internal::assertLog(6, v456, v457, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, -1, 0);
                    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v527, v533);
                    __break(1u);
                  }

                  v159 = v147 + 24;
                  if ((*(v147 + 16) & 1) == 0)
                  {
                    v159 = *(v147 + 32);
                  }

                  v160 = *(v159 + 8 * (v158 >> 3));
                  ++*(v147 + 40);
                  ++*(v147 + 48);
                  v161 = v160 + 544 * (v158 & 7);
                  *(v161 + 256) = 0u;
                  *(v161 + 272) = 0u;
                  *(v161 + 224) = 0u;
                  *(v161 + 240) = 0u;
                  *(v161 + 192) = 0u;
                  *(v161 + 208) = 0u;
                  *(v161 + 160) = 0u;
                  *(v161 + 176) = 0u;
                  *(v161 + 128) = 0u;
                  *(v161 + 144) = 0u;
                  *(v161 + 96) = 0u;
                  *(v161 + 112) = 0u;
                  *(v161 + 64) = 0u;
                  *(v161 + 80) = 0u;
                  *(v161 + 32) = 0u;
                  *(v161 + 48) = 0u;
                  *v161 = 0u;
                  *(v161 + 16) = 0u;
                  *(v161 + 200) = 1;
                  *(v161 + 216) = 0;
                  *(v161 + 224) = 0;
                  *(v161 + 208) = 0;
                  *(v161 + 232) = 0;
                  *(v161 + 248) = 0;
                  *(v161 + 256) = 0;
                  *(v161 + 240) = 0;
                  *(v161 + 264) = 0;
                  *(v161 + 272) = 0u;
                  *(v161 + 288) = 0u;
                  *(v161 + 288) = 0u;
                  *(v161 + 304) = 0u;
                  *(v161 + 304) = 0;
                  *(v161 + 320) = 0;
                  *(v161 + 328) = 0;
                  *(v161 + 336) = 0;
                  *(v161 + 344) = 0;
                  *(v161 + 352) = xmmword_1E3047670;
                  *(v161 + 368) = xmmword_1E3047680;
                  *(v161 + 384) = xmmword_1E30476A0;
                  *(v161 + 400) = xmmword_1E30474D0;
                  v162.i64[0] = 0x7F0000007FLL;
                  v162.i64[1] = 0x7F0000007FLL;
                  *(v161 + 416) = vnegq_f32(v162);
                  *(v161 + 432) = v162;
                  v158 = v161 + 460;
                  *(v161 + 456) = 0;
                  *(v161 + 448) = 0;
                  *(v161 + 458) = 0;
                  *(v161 + 488) = 0;
                  *(v161 + 496) = &str_67;
                  *(v161 + 512) = 0;
                  *(v161 + 520) = 3;
                  *(v161 + 524) = 0x180197E00000001;
                  *(v161 + 460) = -1;
                  *(v161 + 468) = -1;
                  *(v161 + 473) = -1;
                  re::FixedArray<re::StringID>::operator=((v161 + 328), (v156 + 328));
                  v163 = *(v156 + 432);
                  *(v161 + 416) = *(v156 + 416);
                  *(v161 + 432) = v163;
                  *(v161 + 456) = *(v156 + 456);
                  *(v161 + 458) = *(v156 + 458);
                  v164 = *(v156 + 473);
                  *(v161 + 460) = *(v156 + 460);
                  *(v161 + 473) = v164;
                  re::StringID::operator=((v161 + 488), (v156 + 488));
                  *(v161 + 504) = *(v156 + 504);
                  *(v161 + 520) = *(v156 + 520);
                  *(v161 + 524) = *(v156 + 524);
                  *(v161 + 528) = *(v156 + 528);
                  *(v161 + 512) = *(v156 + 512);
                  *v161 = *v157;
                  re::FixedArray<re::VertexBufferFormat>::operator=((v161 + 16), v157 + 2);
                  re::BufferTable::operator=(v161 + 40, (v157 + 5));
                  j = *(v156 + 460);
                  v165 = re::AttributeTable::buffers(v157);
                  if (v166 <= j)
                  {
                    goto LABEL_634;
                  }

                  v167 = *(v165 + 6 * j + 5);
                  v168 = v157;
                  do
                  {
                    v169 = v168;
                    v168 = *v168;
                    v158 = v169[3];
                    if (v168)
                    {
                      v170 = v158 == 0;
                    }

                    else
                    {
                      v170 = 0;
                    }
                  }

                  while (v170);
                  if (v158 <= j)
                  {
                    goto LABEL_635;
                  }

                  v171 = *(v169[4] + 8 * j);
                  *(v161 + 456) = v171 != 2;
                  *(v161 + 448) = v167 / v171;
                  j = *(v156 + 461);
                  v172 = re::AttributeTable::buffers(v157);
                  if (v173 <= j)
                  {
                    goto LABEL_639;
                  }

                  do
                  {
                    v174 = v157;
                    v157 = *v157;
                    v158 = v174[3];
                    if (v157)
                    {
                      v175 = v158 == 0;
                    }

                    else
                    {
                      v175 = 0;
                    }
                  }

                  while (v175);
                  if (v158 <= j)
                  {
                    goto LABEL_640;
                  }

                  *(v161 + 452) = *(v172 + 6 * j + 5) / *(v174[4] + 8 * j);
                  *v769 = v161;
                }

                else
                {
                  *v769 = *(m + 8 * v155);
                }

                re::DynamicArray<re::TransitionCondition *>::add((v147 + 56), v769);
                ++v155;
              }

              while (v155 != v123);
              v154 = *(v147 + 72);
              v148 = v633;
              k = v627;
              v150 = v624;
              v153 = v622;
            }

            *v769 = v153;
            *&v769[8] = v154;
            v176 = *(v150 + 16);
            v177 = *(v150 + 32);
            v178 = *(v150 + 64);
            *&v769[48] = *(v150 + 48);
            *&v769[64] = v178;
            *&v769[16] = v176;
            *&v769[32] = v177;
            *&v769[80] = 0;
            *&v769[88] = 0;
            re::DynamicArray<re::RigJoint>::add((v147 + 96), v769);
            v29 = v645;
          }
        }

        re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v799);
        re::StackScratchAllocator::~StackScratchAllocator(__src);
LABEL_216:
        v74 = v652;
        v179 = *(v652 + 360);
        v133 = (v179 + 88);
        v134 = (v179 + 72);
        v135 = (v179 + 128);
        v136 = (v179 + 112);
        v63 = v609;
        v92 = v618;
LABEL_217:
        v87 = *v133;
        v86 = *v134;
        v102 = *v135;
        v103 = *v136;
        goto LABEL_219;
      }

LABEL_218:
      v180 = objc_initWeak(&v686, 0);
      memset(__src, 0, 24);
      *(&__src[1] + 1) = re::globalAllocators(v180)[2];
      *&v720 = 0;
      re::FramePersistentPtr<re::ecs2::MeshComponent::CombinedRenderMeshParts,re::FrameManager>::reset((v652 + 352), &v686, 0, __src);
      re::FunctionBase<24ul,void ()(void *)>::destroyCallable(__src);
      objc_destroyWeak(&v686);
      v63 = v609;
LABEL_219:
      HighestLightspillNodeRequirements = re::ecs2::getHighestLightspillNodeRequirements(*(v74 + 72), *(v74 + 88));
      if (HighestLightspillNodeRequirements)
      {
        v181 = *(v74 + 16);
        do
        {
          v182 = v181;
          v181 = *(v181 + 32);
        }

        while (v181);
        ReflectionContentComponent = re::ecs2::ImageBasedReflectionSystem::findReflectionContentComponent(*(v182 + 24), 0);
      }

      else
      {
        ReflectionContentComponent = 0;
      }

      (*(*v713 + 8))(__src);
      if (LOBYTE(__src[0]))
      {
        v183 = *(&__src[0] + 1);
      }

      else
      {
        v183 = 0;
      }

      v634 = v183;
      v642 = re::HashTable<unsigned long long,re::ecs2::PerWorldData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(&v702, v183);
      re::TransformService::worldMatrixForRendering(&v688, *(*(v29 + 72) + 288), v693, 1);
      re::ecs2::DynamicBoundingBoxComponent::lastKnownBoundsHelper(&v686, v693);
      re::ecs2::EntityComponentCollection::get((v693 + 48), re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      v184 = *(v74 + 160);
      if (v184)
      {
        v185 = *(v184 + 96);
        v186 = v185;
        v630 = HIDWORD(v185);
      }

      else
      {
        v186 = 0;
        v630 = 0;
      }

      v187 = re::ecs2::MeshComponentHelper::clippingDataForMeshScene(v693, &v686, &v688, *(*(v29 + 72) + 896));
      if (BYTE5(v187))
      {
        goto LABEL_245;
      }

      v613 = v187;
      if ((atomic_load_explicit(&qword_1EE1A5F90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A5F90))
      {
        re::Defaults::BOOLValue(__src, "VisualDepthCustomMaterial.enforceVisualDepthCustomMaterial", v464);
        if (LOBYTE(__src[0]))
        {
          v465 = BYTE1(__src[0]);
        }

        else
        {
          v465 = 1;
        }

        _MergedGlobals_224 = v465;
        __cxa_guard_release(&qword_1EE1A5F90);
      }

      v188 = *(v29 + 72);
      if (_MergedGlobals_224 == 1)
      {
        v189 = *(v188 + 1000);
        if (v189)
        {
          v599 = (*(*v189 + 32))(v189, v693);
          v188 = *(v29 + 72);
        }

        else
        {
          v599 = 0;
        }
      }

      else
      {
        v599 = 1;
      }

      v190 = *(v188 + 912);
      if (v190)
      {
        (*(*v190 + 40))(__src);
        *&v769[20] = 1;
        *&v769[28] = 0;
        v191 = __src + 4;
        if (!LOBYTE(__src[0]))
        {
          v191 = v769;
        }

        v192 = *(v191 + 1);
        v684 = *v191;
        v685 = v192;
        v193 = *(*(v29 + 72) + 912);
        if (v193)
        {
          *&__src[0] = v644;
          *(&__src[0] + 1) = &v713;
          *&__src[1] = v693;
          *(&__src[1] + 1) = &v688;
          *&v720 = &v686;
          (*(*v193 + 48))(v769);
          v194 = v769[2];
          if (!v769[0])
          {
            v194 = 0;
          }

          v611 = v769[0] & v769[1];
          if (v769[0] && (v769[5] & 1) != 0)
          {
            goto LABEL_245;
          }
        }

        else
        {
          v611 = 0;
          v194 = 0;
        }
      }

      else
      {
        v611 = 0;
        v194 = 0;
        *(&v685 + 4) = 1;
        WORD6(v685) = 0;
      }

      v589 = v194;
      v601 = v186;
      _S15 = DWORD2(v685);
      re::ecs2::OcclusionStateMachine::getOcclusionTransitionFactor(&v684);
      v197 = v196;
      re::ecs2::OcclusionStateMachine::getDepthMitigationTransitionFactor(&v684);
      v199 = v198;
      re::ecs2::OcclusionStateMachine::getSceneUnderstandingTransitionFactor(&v684);
      v201 = v200;
      v608 = re::ecs2::MeshComponentHelper::depthMitigationMaskForMeshScene(v693, *(*(v29 + 72) + 984));
      v202 = v693;
      v203 = *(v74 + 304);
      m = v203 + 104;
      v204 = v203 + 176;
      v205 = re::ecs2::EntityComponentCollection::get((v693 + 48), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
      if (v205)
      {
        v206 = *(v205 + 96);
        if (v206)
        {
          m = v206 + 80;
        }

        v207 = *(v205 + 152);
        if (v207)
        {
          v204 = v207 + 40;
        }
      }

      v208 = re::ecs2::EntityComponentCollection::get((v202 + 48), re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v208)
      {
        v210 = *(v208 + 160);
        m = v210 + 48;
        v204 = v210 + 120;
      }

      v584 = v204;
      v585 = m;
      v123 = *(v652 + 248);
      v651 = *(v123 + 30);
      v647 = *(v123 + 29);
      v582 = *(v123 + 32);
      v583 = *(v123 + 33);
      v580 = *(v123 + 35);
      v581 = *(v123 + 36);
      v578 = *(v123 + 41);
      v579 = *(v123 + 42);
      j = *(v123 + 38);
      v628 = v86;
      v617 = v102;
      v615 = v103;
      if (j)
      {
        if (j >> 61)
        {
          goto LABEL_664;
        }

        m = 8 * j;
        v211 = (*(*v646 + 32))(v646, 8 * j, 8);
        if (!v211)
        {
          goto LABEL_665;
        }

        v158 = v211;
        v213 = v211;
        if (j != 1)
        {
          v214 = m - 8;
          bzero(v211, v214);
          v213 = (v158 + v214);
        }

        *v213 = 0;
        v215 = *(v123 + 38);
        if (v215)
        {
          v216 = 0;
          for (m = 0; v215 != m; ++m)
          {
            v217 = (*(v123 + 39) + v216);
            if (*v217 || v217[1])
            {
              if (j <= m)
              {
                goto LABEL_644;
              }
            }

            else
            {
              if (j <= m)
              {
                goto LABEL_659;
              }

              v217 = 0;
            }

            *(v158 + 8 * m) = v217;
            v216 += 16;
          }
        }

        v576 = v158;
        (*(*v646 + 40))(v646, v158);
      }

      else
      {
        v576 = 0;
      }

      *v714 = *(v652 + 16);
      v218 = *(*(v29 + 72) + 232);
      *&__src[0] = 0;
      DWORD2(__src[0]) = 0;
      v219 = v218[3];
      v220 = *(*v714 + 312);
      HasSystemMaterialParameterBlock = re::MaterialManager::entityHasSystemMaterialParameterBlock(v219, v220);
      v222 = HasSystemMaterialParameterBlock;
      if (HasSystemMaterialParameterBlock)
      {
        v223 = re::MaterialManager::getOrAddSystemMaterialParameterBlock(v219, v220);
        if (re::DynamicInlineArray<__CVBuffer *,2ul>::ensureCapacity(__src, v224))
        {
          v225 = *&__src[0];
          *(&__src[1] + *&__src[0]) = v223;
          *&__src[0] = v225 + 1;
          ++DWORD2(__src[0]);
        }
      }

      v577 = j;
      v226 = *(*(v29 + 72) + 952);
      if (v226)
      {
        v227 = (*(*v226 + 24))(v226, v644);
        v228 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v227, v714);
        if (v228)
        {
          v229 = re::ecs2::EntityHandle::resolve((*v228 + 32), v644);
          if (v229)
          {
            v230 = re::ecs2::EntityComponentCollection::get((v229 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            if (v230)
            {
              v232 = v230;
              if (*(v230 + 152) == 1)
              {
                if (re::DynamicInlineArray<__CVBuffer *,2ul>::ensureCapacity(__src, v231))
                {
                  v233 = *&__src[0];
                  *(&__src[1] + *&__src[0]) = v232 + 160;
                  *&__src[0] = v233 + 1;
                  ++DWORD2(__src[0]);
                }
              }
            }
          }
        }
      }

      v234 = *(v652 + 72);
      if (v234)
      {
        v235 = v92;
        v236 = 0;
        v237 = *(v652 + 88);
        v238 = (v237 + 24 * v234);
        do
        {
          v239 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v237);
          if (v239)
          {
            v240 = v239;
            v241 = *(*(v29 + 72) + 968);
            if (v241)
            {
              v242 = *(v239 + 1842);
              if (v242 == 7)
              {
                v243 = *(v239 + 1968);
                if (v243)
                {
                  v244 = (v243 + 8);
                  *(*(*(v645 + 72) + 968) + 165) |= re::sg::CachedCompilationMaterial::getHasTimeVaryingFeatures(v243);
                  v245 = (v243 + 8);
                  v29 = v645;
                }

                else
                {
                  *(v241 + 165) = 1;
                  v29 = v645;
                }
              }

              else if (v242 == 6)
              {
                *(v241 + 165) = 1;
              }
            }

            v246 = *(v240 + 392);
            if (v246)
            {
              v247 = *(v240 + 408);
              v248 = v247 + 272 * v246;
              do
              {
                v249 = 4 * *(v247 + 112) + 4;
                v250 = v236;
                do
                {
                  v236 = v250;
                  v250 = 1;
                  v249 -= 4;
                }

                while (v249);
                v247 += 272;
              }

              while (v247 != v248);
            }
          }

          v237 = (v237 + 24);
        }

        while (v237 != v238);
        v92 = v235;
        if (v236)
        {
          v251 = re::ecs2::TransformComponent::rootAnchorComponent(*v714);
          if (v251)
          {
            v252 = v251;
            v253 = re::MaterialManager::getOrAddSystemMaterialParameterBlock(v218[3], *(*v714 + 312));
            v668.var0 = v252[11];
            *&v799 = 0x284C61CF2B0;
            re::MaterialParameterBlock::setConstant(v253, &v799, 4uLL, &v668, 3, v769);
            *v769 = 0;
            if (!v222)
            {
              if (re::DynamicInlineArray<__CVBuffer *,2ul>::ensureCapacity(__src, v254))
              {
                v255 = *&__src[0];
                *(&__src[1] + *&__src[0]) = v253;
                *&__src[0] = v255 + 1;
                ++DWORD2(__src[0]);
              }
            }
          }
        }
      }

      v256 = re::RenderManager::perFrameAllocator(v218);
      if (*&__src[0])
      {
        v257 = v652;
        if (*&__src[0] == 1)
        {
          v258 = re::MaterialParameterBlock::deltaSynchronizedMaterialParameterTable(*&__src[1], v256);
        }

        else
        {
          v258 = re::MaterialParameterBlock::copyParametersFromArray(v256, &__src[1], *&__src[0]);
        }

        v575 = v258;
      }

      else
      {
        v575 = 0;
        v257 = v652;
      }

      v259 = *(v257 + 248);
      v573 = *(v259 + 8);
      v574 = *(v259 + 16);
      v571 = *(v259 + 32);
      v572 = *(v259 + 40);
      v569 = *(v259 + 64);
      v570 = *(v259 + 80);
      v567 = *(v259 + 104);
      v568 = *(v259 + 120);
      v566 = *(v259 + 128);
      v260 = v693;
      v261 = re::ecs2::EntityComponentCollection::get((v693 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      v262 = v261;
      v263 = *(re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 8);
      if (*(v644 + 28) <= v263)
      {
        v265 = v652;
      }

      else
      {
        v264 = *(*(v644 + 30) + 8 * v263);
        v265 = v652;
        if (v264 && !v261 && *(v264 + 384))
        {
          v266 = re::ecs2::ImageBasedReflectionSystem::findReflectionContentComponent(v644, 0);
          if (v266 && (v267 = v266, re::ecs2::EntityComponentCollection::get((v260 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)))
          {
            v262 = re::ecs2::EntityComponentCollection::get((*(v267 + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          }

          else
          {
            v262 = 0;
          }
        }
      }

      v268 = v693;
      v269 = *(v693 + 4);
      if (!v269 || (*(v269 + 304) & 0x80) != 0)
      {
        v562 = 0;
      }

      else
      {
        v562 = re::ecs2::EntityComponentCollection::get((v269 + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        v268 = v693;
      }

      v270 = *(v268 + 28);
      v271 = *(v265 + 248);
      v565 = *(v271 + 368);
      if (v565 == 1)
      {
        v547 = *(v271 + 376);
      }

      v606 = *(v268 + 28);
      if (v270 && (*(v270 + 136) & 1) != 0)
      {
        v272 = 6;
      }

      else
      {
        v272 = *(v265 + 208);
      }

      v610 = v272;
      v683 = *(v265 + 224);
      v273 = *(*(v29 + 72) + 904);
      if (v273)
      {
        LODWORD(v274) = (*(*v273 + 24))(v273);
        v276 = v275;
      }

      else
      {
        v276 = 0;
        v274 = 1.0;
      }

      v277 = vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(v265 + 432), v689), vceqq_f32(*(v265 + 416), v688)), vandq_s8(vceqq_f32(*(v265 + 448), v690), vceqq_f32(*(v265 + 464), v691))));
      if ((v277 & 0x80000000) == 0)
      {
        v278 = v689;
        *(v265 + 416) = v688;
        *(v265 + 432) = v278;
        v279 = v691;
        *(v265 + 448) = v690;
        *(v265 + 464) = v279;
      }

      v280 = v274;
      if (*(v265 + 480) == v274)
      {
        v281 = v277 >= 0;
      }

      else
      {
        *(v265 + 480) = v274;
        v281 = 1;
      }

      v564 = v274;
      if (*(v265 + 488) != v276)
      {
        *(v265 + 488) = v276;
        v281 = 1;
      }

      v282 = *(*(v29 + 72) + 968);
      if (v282)
      {
        re::FrameAnalysisManager::reportRenderedEntity(v282, v693, v281, v280 > 0.0);
      }

      v554 = re::ecs2::MeshComponentHelper::techniqueMappingOverlayNameHashForMeshScene((HIDWORD(v613) & 1), v280);
      v283 = v693;
      v284 = *(*(v29 + 72) + 920);
      *v769 = v693;
      v285 = (*(*v284 + 16))(v284);
      v286 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v283 ^ (v283 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v283 ^ (v283 >> 30))) >> 27));
      re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v285, v769, v286 ^ (v286 >> 31), __src);
      v287 = 1.0;
      if (HIDWORD(__src[0]) != 0x7FFFFFFF)
      {
        v287 = *(*(v285 + 16) + 32 * HIDWORD(__src[0]) + 16);
      }

      if (*(v693 + 33))
      {
        *&v561 = *(*(v265 + 248) + 360);
        *(&v561 + 1) = *(*(v265 + 248) + 352);
      }

      else
      {
        v561 = 0uLL;
      }

      v682 = *(v693 + 39);
      v288 = *(*(v29 + 72) + 936);
      *&__src[0] = v693;
      v289 = (*(*v288 + 16))(v288);
      v290 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v289, __src);
      if (v290)
      {
        v291 = *v290;
      }

      else
      {
        v291 = 1;
      }

      v560 = v291;
      v559 = *(v265 + 144);
      v292 = re::ecs2::MeshComponentHelper::environmentLightingWeightForMeshScene(v693, *(*(v29 + 72) + 928));
      v293 = *(*(v29 + 72) + 952);
      if (v293 && (v294 = (*(*v293 + 24))(v293, v644), (v295 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v294, &v693)) != 0) && (v296 = re::ecs2::EntityHandle::resolve((*v295 + 32), v644)) != 0)
      {
        v557 = re::ecs2::EntityComponentCollection::get((v296 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      }

      else
      {
        v557 = 0;
      }

      v297 = *(*(v29 + 72) + 248);
      v298 = v693;
      v299 = re::ecs2::EntityComponentCollection::get((v693 + 48), re::ecs2::ComponentImpl<re::ecs2::ProjectiveShadowReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      v300 = re::ecs2::EntityComponentCollection::get((v298 + 48), re::ecs2::ComponentImpl<re::ecs2::ShadowProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      v301 = 0;
      if (v299)
      {
        v302 = v652;
        if (v300)
        {
          if (v297)
          {
            (*(*v297 + 80))(__src, v297, v300 + 32, &v688);
          }

          else
          {
            __src[0] = xmmword_1E3047670;
            __src[1] = xmmword_1E3047680;
            v720 = xmmword_1E30476A0;
            v721[0] = xmmword_1E30474D0;
          }

          *&v716[1] = __src[0];
          *&v716[17] = __src[1];
          v717 = v720;
          v718 = v721[0];
          v301 = 1;
        }
      }

      else
      {
        v302 = v652;
      }

      v595 = v276;
      v558 = v301;
      v563 = v262;
      v619 = v92;
      v303 = *(v302 + 248);
      v92 = v303[384];
      v591 = v303[385];
      v612 = v303[386];
      v304 = *(*(v29 + 72) + 1008);
      v305 = v693;
      v306 = re::ecs2::EntityComponentCollection::get((v693 + 48), re::ecs2::ComponentImpl<re::ecs2::ProjectiveShadowReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) != 0;
      v307 = re::ecs2::EntityComponentCollection::get((v305 + 48), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v307)
      {
        v308 = v307;
        v309 = *(v307 + 25);
        v310 = *(v307 + 26);
        v306 = *(v307 + 27);
        v311 = *(v307 + 28);
        v312 = *(v307 + 32);
        if (v304 && (v313 = (*(*v304 + 40))(v304, v305)) != 0)
        {
          v314 = *(v313 + 32);
        }

        else
        {
          LOBYTE(v314) = 0;
        }

        v158 = v647;
        v315 = *(v308 + 40);
        v316 = v315 & (1 << v314);
        if (v315)
        {
          v317 = v316 == 0;
        }

        else
        {
          v317 = 0;
        }

        if (v317)
        {
          v306 = 0;
        }

        v318 = (v311 << 24) | (v312 << 32);
        v319 = v310 << 8;
      }

      else
      {
        v309 = 0;
        v318 = 0x3F80000001000000;
        v319 = 256;
        v158 = v647;
      }

      if (v306)
      {
        v320 = 0x10000;
      }

      else
      {
        v320 = 0;
      }

      v321 = re::ecs2::EntityComponentCollection::get((v693 + 48), re::ecs2::ComponentImpl<re::ecs2::DynamicLightShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v321)
      {
        v322 = *(v321 + 25);
      }

      else
      {
        v322 = 1;
      }

      if (re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken != -1)
      {
        dispatch_once(&re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken, &__block_literal_global_22_1);
      }

      v586 = v322;
      if (re::GraphicsFeatureFlags::enableUIShadow(void)::gEnableUIShadow == 1 && (v323 = re::ecs2::EntityComponentCollection::get((v693 + 48), re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)) != 0)
      {
        v553 = *(v323 + 25);
      }

      else
      {
        v553 = 0;
      }

      v548 = re::ecs2::EntityComponentCollection::get((v693 + 48), re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      v556 = v548 != 0;
      v123 = v652;
      v324 = re::ecs2::MeshComponentHelper::renderPassGroupDataForMeshScene(v693, 0, *(*(v645 + 72) + 992), *(*(v652 + 248) + 387), &v697, *(v643 + 48));
      v604 = v324;
      *&v592[8] = v325;
      if (*(v652 + 72))
      {
        j = 0;
        v326 = 0;
        do
        {
          v324 = re::AssetHandle::isAnyDependencyMutated((*(v123 + 11) + j), __src);
          if (LOBYTE(__src[0]) == 1 && (BYTE1(__src[0]) & 1) != 0)
          {
            if (v158 <= v326)
            {
              goto LABEL_648;
            }

            atomic_store(1u, (*(v651 + 8 * v326) + 1448));
          }

          ++v326;
          v123 = v652;
          j += 24;
        }

        while (v326 < *(v652 + 72));
      }

      v328 = v642;
      v555 = v319 | v309 | v318 | v320;
      if (v555)
      {
        *(v642 + 7040) = 1;
      }

      v329 = *(*(v652 + 248) + 387);
      v330 = v682;
      v123 = v634;
      v331 = v591;
      if (v92)
      {
        *(v642 + 7128) = 1;
        __src[0] = v688;
        __src[1] = v689;
        v720 = v690;
        v721[0] = v691;
        v721[1] = v686;
        v721[2] = v687;
        *&v769[7] = v683;
        v332 = *(v642 + 883);
        v333 = *(v642 + 882);
        if (v332 >= v333)
        {
          v334 = v332 + 1;
          if (v333 < v332 + 1)
          {
            v335 = v329;
            if (*(v642 + 881))
            {
              v336 = 2 * v333;
              _ZF = v333 == 0;
              v337 = 8;
              if (!_ZF)
              {
                v337 = v336;
              }

              if (v337 <= v334)
              {
                v338 = v334;
              }

              else
              {
                v338 = v337;
              }

              re::DynamicArray<re::BlurPlaneData>::setCapacity(v642 + 881, v338);
              v328 = v642;
            }

            else
            {
              v331 = v591;
              re::DynamicArray<re::BlurPlaneData>::setCapacity(v642 + 881, v334);
              v328 = v642;
              ++*(v642 + 1768);
            }

            v329 = v335;
          }

          v332 = *(v328 + 883);
        }

        v347 = *(v328 + 885) + 144 * v332;
        *(v347 + 80) = v721[2];
        *(v347 + 64) = v721[1];
        *(v347 + 48) = v721[0];
        *(v347 + 32) = v720;
        *v347 = __src[0];
        *(v347 + 16) = __src[1];
        *(v347 + 96) = v330;
        *(v347 + 104) = v610;
        *(v347 + 105) = *v769;
        *(v347 + 120) = *&v769[15];
        *(v347 + 128) = v331;
        *(v347 + 129) = v612;
        ++*(v328 + 883);
        ++*(v328 + 1768);
        v339 = v604;
      }

      else
      {
        v339 = v604;
        if (v612)
        {
          __src[0] = v686;
          __src[1] = v687;
          v720 = v688;
          v721[0] = v689;
          v721[1] = v690;
          v721[2] = v691;
          *&v769[15] = v683;
          v340 = *(v642 + 888);
          v341 = *(v642 + 887);
          if (v340 >= v341)
          {
            v342 = v340 + 1;
            if (v341 < v340 + 1)
            {
              v343 = v329;
              if (*(v642 + 886))
              {
                v344 = 2 * v341;
                _ZF = v341 == 0;
                v345 = 8;
                if (!_ZF)
                {
                  v345 = v344;
                }

                if (v345 <= v342)
                {
                  v346 = v342;
                }

                else
                {
                  v346 = v345;
                }

                re::DynamicArray<re::BlurPlaneData>::setCapacity(v642 + 886, v346);
                v328 = v642;
              }

              else
              {
                v331 = v591;
                re::DynamicArray<re::BlurPlaneData>::setCapacity(v642 + 886, v342);
                v328 = v642;
                ++*(v642 + 1778);
              }

              v329 = v343;
            }

            v340 = *(v328 + 888);
            v339 = v604;
          }

          v463 = *(v328 + 890) + 144 * v340;
          *(v463 + 16) = __src[1];
          *v463 = __src[0];
          *(v463 + 80) = v721[2];
          *(v463 + 64) = v721[1];
          *(v463 + 48) = v721[0];
          *(v463 + 32) = v720;
          *(v463 + 96) = v610;
          *(v463 + 97) = *v769;
          *(v463 + 112) = *&v769[15];
          *(v463 + 128) = v330;
          ++*(v328 + 888);
          ++*(v328 + 1778);
          if (!v331)
          {
            goto LABEL_422;
          }

LABEL_421:
          *(v642 + 7129) = 1;
          goto LABEL_422;
        }
      }

      if (v331)
      {
        goto LABEL_421;
      }

LABEL_422:
      *v592 = v601 | (v630 << 32);
      *&__src[0] = &v698;
      *(&__src[0] + 1) = v634;
      __asm { FCVT            H15, S15 }

      *&__src[1] = &v686;
      *(&__src[1] + 1) = &v688;
      v590 = ((v589 << 8) >> 8) & 1;
      v600 = v552 & (v599 | v590);
      v653 = HIDWORD(v318);
      v352 = v586 & 1;
      *&v720 = v595;
      *(&v720 + 1) = v339;
      LOBYTE(v721[0]) = v592[8] & 1;
      BYTE1(v721[0]) = v329;
      v353 = v329;
      v354 = re::ecs2::MeshComponentHelper::addRenderPassGroupBoundsTable(__src);
      v29 = v645;
      v92 = (*(**(*(v645 + 72) + 944) + 24))(*(*(v645 + 72) + 944), v693, v354);
      if (!v606)
      {
        v357 = v353;
        var0 = 0;
        *&v668.var0 = 0;
        v359 = *(v645 + 72);
        v360 = v647;
        if (*(v359 + 256) && (((v601 ^ 0x180197E) & ~v630 | v630 & v601) & 0x80) != 0)
        {
          v361 = *(v359 + 992);
          *v769 = *(v359 + 928);
          *&v769[8] = v361;
          v362 = *(v359 + 984);
          *&v769[16] = *(v359 + 896);
          *&v769[24] = v362;
          v363 = *(v359 + 904);
          *&v769[72] = v693;
          *&v769[104] = v548;
          *(&v771 + 1) = v595;
          *&v769[392] = &v686;
          *&v770 = v584;
          *(&v770 + 1) = &v688;
          *&v771 = v564;
          *&v772 = __PAIR64__(v559, LODWORD(v287));
          DWORD2(v772) = v560;
          v773 = v604;
          v774 = &v697;
          v775 = *(v643 + 48);
          *v776 = (v601 ^ 0x180197E) & ~v630 | v630 & v601;
          *&v769[64] = &v713;
          *&v769[96] = v557;
          *&v769[32] = v363;
          *&v769[48] = v646;
          *&v769[56] = v644;
          *&v769[80] = v563;
          *&v769[88] = v562;
          v769[120] = 0;
          *&v769[112] = 0;
          *&v769[128] = v87;
          *&v769[136] = v628;
          *&v769[144] = v617;
          *&v769[152] = v615;
          *&v769[160] = v621;
          *&v769[168] = v620;
          *&v769[176] = v585;
          *&v769[184] = v619;
          *&v769[192] = v637;
          *&v769[200] = InstanceDataBuffers;
          *&v769[208] = v638;
          *&v769[216] = v574;
          *&v769[224] = v573;
          *&v769[232] = v572;
          *&v769[240] = v571;
          *&v769[248] = v570;
          *&v769[256] = v569;
          *&v769[264] = v568;
          *&v769[272] = v567;
          v769[280] = v566;
          *&v769[288] = v651;
          *&v769[296] = v647;
          *&v769[304] = v583;
          *&v769[312] = v582;
          *&v769[320] = v581;
          *&v769[328] = v580;
          *&v769[336] = v579;
          *&v769[344] = v578;
          *&v769[352] = v576;
          *&v769[360] = v577;
          *&v769[368] = v575;
          *&v769[376] = v561;
          *&v776[4] = v601 | (v630 << 32);
          v776[16] = v565;
          if (v565)
          {
            *&v776[24] = v547;
          }

          LOBYTE(v777) = v610;
          *(&v777 + 1) = &v683;
          LODWORD(v778) = v551;
          BYTE8(v778) = v558;
          if (v558)
          {
            *&v779[8] = *&v716[1];
            *&v779[24] = *&v716[17];
            v780 = v717;
            v781 = v718;
          }

          LOWORD(v782) = *&v592[7] & 0x100;
          BYTE2(v782) = v357;
          BYTE3(v782) = v592[9] & 1;
          DWORD1(v782) = v555 & 0x1010101;
          DWORD2(v782) = v653;
          WORD6(v782) = 0;
          BYTE14(v782) = v586 & 1;
          HIBYTE(v782) = v612;
          LOBYTE(v783) = v548 != 0;
          v784 = &v698;
          v364 = (*(*v713 + 40))(v713, v634);
          m = v364;
          j = *(v364 + 32);
          if (j)
          {
            v366 = 0;
            v367 = (*(v364 + 16) + 8);
            while (1)
            {
              v368 = *v367;
              v367 += 6;
              if (v368 < 0)
              {
                break;
              }

              if (j == ++v366)
              {
                LODWORD(v366) = *(v364 + 32);
                break;
              }
            }
          }

          else
          {
            LODWORD(v366) = 0;
          }

          if (v366 != j)
          {
            v393 = *(v364 + 16);
            do
            {
              v394 = *(v393 + 24 * v366 + 16);
              if (!v394)
              {
                goto LABEL_658;
              }

              v395 = *(v394 + 16);
              v396 = *(*(v29 + 72) + 288);
              v397 = *(v394 + 112);
              *(v667 + 5) = *(v394 + 96);
              v666 = v397;
              v398 = *(v394 + 129);
              (*(*v713 + 8))(__src);
              if (LOBYTE(__src[0]))
              {
                v399 = *(&__src[0] + 1);
              }

              else
              {
                v399 = 0;
              }

              v400 = re::HashTable<unsigned long long,re::ecs2::PerWorldData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(&v702, v399);
              if (v400)
              {
                v123 = v400;
                *&v799 = v395;
                *(&v799 + 1) = v399;
                v800 = *(v667 + 5);
                v801 = v666;
                v802 = v398;
                v803 = 0;
                v804 = &v668;
                v805 = v92;
                re::ecs2::MeshComponentHelper::generateSceneForPortalCrossing(v769, &v799, v396, __src);
                if (__src[1])
                {
                  v401 = &v720;
                }

                else
                {
                  v401 = *(&v720 + 1);
                }

                if (*(&__src[0] + 1))
                {
                  v402 = 736 * *(&__src[0] + 1);
                  do
                  {
                    if (*v123)
                    {
                      re::DynamicArray<re::MeshScene>::add(v123, v401);
                    }

                    v401 += 736;
                    v402 -= 736;
                  }

                  while (v402);
                }

                re::DynamicOverflowArray<re::MeshScene,2ul>::deinit(__src);
              }

              v403 = *(m + 32);
              v393 = *(m + 16);
              if (v403 <= v366 + 1)
              {
                v403 = v366 + 1;
              }

              v29 = v645;
              v360 = v647;
              while (v403 - 1 != v366)
              {
                LODWORD(v366) = v366 + 1;
                if ((*(v393 + 24 * v366 + 8) & 0x80000000) != 0)
                {
                  goto LABEL_486;
                }
              }

              LODWORD(v366) = v403;
LABEL_486:
              ;
            }

            while (v366 != j);
          }

          var0 = v668.var0;
          v63 = v609;
          v355 = v628;
          v352 = v586 & 1;
        }

        else
        {
          v63 = v609;
          v355 = v628;
        }

        goto LABEL_539;
      }

      v667[0] = re::ecs2::PortalComponent::targetWorldRootToken(v606, *(*(v645 + 72) + 40));
      v63 = v609;
      v355 = v628;
      if (v667[0] != v634)
      {
        re::ecs2::WorldRootProvider::worldIds(__src, &v713);
        if (HIDWORD(v721[4]))
        {
          v356 = re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::contains(&v721[3], v667);
          re::SmallHashSet<unsigned long long,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashSet(__src);
          if (v356)
          {
            goto LABEL_445;
          }
        }

        else
        {
          v369 = &v720;
          v370 = (&v721[-1] + 8 * *&__src[1]);
          if (*&__src[1])
          {
            v371 = 8 * *&__src[1];
            while (*v369 != v667[0])
            {
              v369 = (v369 + 8);
              v371 -= 8;
              if (!v371)
              {
                goto LABEL_443;
              }
            }
          }

          else
          {
LABEL_443:
            v369 = (&v721[-1] + 8 * *&__src[1]);
          }

          re::SmallHashSet<unsigned long long,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashSet(__src);
          if (v369 != v370)
          {
LABEL_445:
            v635 = v201;
            v372 = v199;
            v373 = v197;
            re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(&v668, v644, v667[0], v643);
            v671[0] = v693;
            v671[1] = v563;
            v671[2] = v562;
            v671[3] = v557;
            v672 = v551;
            v673 = v608;
            v674 = v600;
            v675 = v590;
            v676 = v611;
            v677 = ReflectionContentComponent;
            v678 = HighestLightspillNodeRequirements != 0;
            v679 = v292;
            v680 = 0;
            v681 = v646;
            re::ecs2::MeshComponentHelper::dynamicFunctionConstantsForMeshScene(v671, &v799);
            v807.columns[1] = v689;
            v807.columns[2] = v690;
            v807.columns[0] = v688;
            v808 = __invert_f3(v807);
            v374 = vdupq_laneq_s32(v808.columns[1], 2);
            v375 = vzip1q_s32(vzip1q_s32(v808.columns[0], v808.columns[2]), v808.columns[1]);
            v808.columns[1] = vtrn2q_s32(v808.columns[0], v808.columns[1]);
            v808.columns[1].i32[2] = v808.columns[2].i32[1];
            v376 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v375, COERCE_FLOAT(*(v606 + 80))), v808.columns[1], *(v606 + 80), 1), vzip1q_s32(vzip2q_s32(v808.columns[0], v808.columns[2]), v374), *(v606 + 80), 2);
            v808.columns[1] = vmulq_f32(v376, v376);
            v377 = v808.columns[1].f32[2] + vaddv_f32(*v808.columns[1].f32);
            v605 = v73;
            v378 = xmmword_1E306DD20;
            if (fabsf(v377) >= v73)
            {
              v379 = v377;
              v380 = vrsqrte_f32(LODWORD(v377));
              v381 = vmul_f32(v380, vrsqrts_f32(LODWORD(v379), vmul_f32(v380, v380)));
              v378 = vmulq_n_f32(vnegq_f32(v376), vmul_f32(v381, vrsqrts_f32(LODWORD(v379), vmul_f32(v381, v381))).f32[0]);
            }

            v631 = v378;
            v602 = *(v606 + 64);
            v593 = v691;
            v596 = v690;
            v382 = *(v606 + 128);
            if (*(v606 + 128))
            {
              v383 = -1;
            }

            else
            {
              v383 = 0;
            }

            v384 = *(v606 + 132);
            v587 = v689;
            v385 = vmulq_f32(v688, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v690, v690, 0xCuLL), v690, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v689, v689), v689, 0xCuLL))), vextq_s8(vuzp1q_s32(v690, v690), v690, 0xCuLL), vextq_s8(vextq_s8(v689, v689, 0xCuLL), v689, 8uLL)));
            v549 = v688;
            v386 = vmulq_f32(v688, v688);
            v387 = sqrtf(v386.f32[2] + vaddv_f32(*v386.f32));
            if ((v385.f32[2] + vaddv_f32(*v385.f32)) <= 0.0)
            {
              v388 = -v387;
            }

            else
            {
              v388 = v387;
            }

            re::StringID::StringID(v769, &v668);
            *&v769[16] = v682;
            *&v769[32] = v87;
            *&v769[40] = v628;
            *&v769[48] = v619;
            *&v769[56] = v637;
            *&v769[64] = InstanceDataBuffers;
            *&v769[72] = v638;
            *&v769[80] = v617;
            *&v769[88] = v615;
            *&v769[96] = v621;
            *&v769[112] = v686;
            *&v769[128] = v687;
            *&v769[104] = v620;
            *&v769[144] = v585;
            *&v769[192] = v690;
            *&v769[208] = v691;
            *&v769[160] = v688;
            *&v769[176] = v689;
            *&v769[152] = v584;
            *&v769[224] = v651;
            *&v769[232] = v647;
            *&v769[240] = v574;
            *&v769[248] = v573;
            *&v769[256] = v572;
            *&v769[264] = v571;
            *&v769[272] = v570;
            *&v769[280] = v569;
            *&v769[288] = v568;
            v769[304] = v566;
            *&v769[296] = v567;
            *&v769[312] = v583;
            *&v769[320] = v582;
            *&v769[328] = v581;
            *&v769[336] = v580;
            *&v769[344] = v579;
            *&v769[352] = v578;
            *&v769[360] = v576;
            *&v769[368] = v577;
            *&v769[376] = v575;
            re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::HashBrown(&v769[384], &v799);
            LODWORD(v773) = v613;
            LOBYTE(v774) = v565;
            if (v565)
            {
              v775 = v547;
            }

            v776[0] = v610;
            *&v776[8] = v683;
            *&v776[24] = v554;
            *&v777 = __PAIR64__(LODWORD(v287), LODWORD(v564));
            *(&v777 + 2) = v292;
            v778 = v561;
            *v779 = *v592;
            *&v779[8] = v682;
            *&v779[16] = v92;
            v779[18] = 0;
            *&v779[20] = v560;
            *&v779[24] = v559;
            v779[28] = v608;
            LOBYTE(v780) = 0;
            v783 = 0;
            v785 = v558;
            if (v558)
            {
              v786 = *&v716[1];
              v787 = *&v716[17];
              v788 = v717;
              v789 = v718;
            }

            v545 = vbslq_s8(vdupq_n_s32(v383), v631, v545);
            LOBYTE(v790) = v612;
            *(&v790 + 1) = v555 & 0x1010101;
            *(&v790 + 1) = __PAIR64__(v372, v653);
            *&v791 = __PAIR64__(v373, v635);
            WORD4(v791) = _H15;
            BYTE10(v791) = v611;
            *(&v791 + 11) = v352;
            BYTE13(v791) = v553 & 1;
            HIWORD(v791) = 0;
            LOBYTE(v792) = 0;
            HIBYTE(v792) = v556;
            v389 = (*(*v713 + 32))(v713, v667[0]);
            LOBYTE(v793) = v389;
            HIBYTE(v793) = *(v606 + 128);
            v794 = *(v606 + 132) > 0.0;
            v795 = v382;
            if (v382)
            {
              v390 = vaddq_f32(v593, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v549, v602.f32[0]), v587, *v602.f32, 1), v596, v602, 2));
              v796 = vdivq_f32(v390, vdupq_laneq_s32(v390, 3));
              v797 = v545;
            }

            v391 = v384 * v388;
            v798 = v391;
            if (*(v642 + 1755))
            {
              v392 = v642 + 6992;
              goto LABEL_461;
            }

            v404 = *(v642 + 8);
            v607 = (v642 + 64);
            if (!v404)
            {
              goto LABEL_511;
            }

            v405 = 864 * v404;
            v406 = (v642 + 80);
            v407 = 864 * v404;
            do
            {
              if (*v406 == v682)
              {
                goto LABEL_532;
              }

              v406 += 108;
              v407 -= 864;
            }

            while (v407);
            v408 = v642;
            if ((v404 & 0xFFFFFFF8) != 0)
            {
              v409 = v352;
              v392 = v642 + 6992;
              if (*(v642 + 874))
              {
LABEL_498:
                v411 = 0;
                do
                {
                  v412 = v408 + v411;
                  memset(__src, 0, 24);
                  v413 = (v408 + v411 + 80);
                  v414 = 0xBF58476D1CE4E5B9 * (*v413 ^ (*v413 >> 30));
                  re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::findEntry<unsigned long long>(v392, v413, (0x94D049BB133111EBLL * (v414 ^ (v414 >> 27))) ^ ((0x94D049BB133111EBLL * (v414 ^ (v414 >> 27))) >> 31), __src);
                  if (HIDWORD(__src[0]) == 0x7FFFFFFF)
                  {
                    v415 = re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(v392, DWORD2(__src[0]), *&__src[0]);
                    *(v415 + 8) = *v413;
                    v416 = *(v412 + 12);
                    *(v415 + 16) = *(v415 + 16) & 0xFFFFFFFFFFFFFFFELL | v416 & 1;
                    *(v415 + 16) = *(v412 + 12) & 0xFFFFFFFFFFFFFFFELL | v416 & 1;
                    *(v415 + 24) = *(v412 + 13);
                    *(v412 + 12) = 0;
                    *(v412 + 13) = &str_67;
                    *(v415 + 32) = *(v412 + 14);
                    memcpy((v415 + 48), v412 + 128, 0x160uLL);
                    *(v415 + 400) = 0u;
                    *(v415 + 416) = 0u;
                    *(v415 + 432) = 0u;
                    *(v415 + 448) = 0u;
                    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((v415 + 400), v412 + 60);
                    *(v415 + 464) = *(v412 + 136);
                    v417 = v412[552];
                    *(v415 + 472) = v417;
                    if (v417 == 1)
                    {
                      *(v415 + 480) = *(v642 + v411 + 560);
                    }

                    v418 = v642 + v411;
                    v419 = *(v642 + v411 + 584);
                    *(v415 + 488) = *(v642 + v411 + 568);
                    *(v415 + 504) = v419;
                    v420 = *(v642 + v411 + 600);
                    v421 = *(v642 + v411 + 616);
                    v422 = *(v642 + v411 + 632);
                    *(v415 + 565) = *(v642 + v411 + 645);
                    *(v415 + 536) = v421;
                    *(v415 + 552) = v422;
                    *(v415 + 520) = v420;
                    v423 = *(v642 + v411 + 672);
                    *(v415 + 592) = v423;
                    if (v423 == 1)
                    {
                      v424 = *(v418 + 44);
                      *(v415 + 608) = *(v418 + 43);
                      *(v415 + 624) = v424;
                    }

                    *(v415 + 640) = *(v418 + 90);
                    v425 = v418[736];
                    *(v415 + 656) = v425;
                    if (v425 == 1)
                    {
                      v426 = *(v642 + v411 + 752);
                      v427 = *(v642 + v411 + 768);
                      v428 = *(v642 + v411 + 800);
                      *(v415 + 704) = *(v642 + v411 + 784);
                      *(v415 + 720) = v428;
                      *(v415 + 672) = v426;
                      *(v415 + 688) = v427;
                    }

                    v429 = v642 + v411;
                    v430 = *(v642 + v411 + 816);
                    v431 = *(v642 + v411 + 832);
                    *(v415 + 768) = *(v642 + v411 + 848);
                    *(v415 + 736) = v430;
                    *(v415 + 752) = v431;
                    v432 = *(v642 + v411 + 866);
                    *(v415 + 784) = *(v642 + v411 + 864);
                    *(v415 + 786) = v432;
                    v433 = *(v642 + v411 + 880);
                    *(v415 + 800) = v433;
                    if (v433 == 1)
                    {
                      v434 = *(v429 + 57);
                      *(v415 + 816) = *(v429 + 56);
                      *(v415 + 832) = v434;
                    }

                    *(v415 + 848) = *(v429 + 232);
                    ++*(v642 + 1758);
                    v355 = v628;
                  }

                  v411 += 864;
                  v408 = v642;
                }

                while (v405 != v411);
              }

              else
              {
                v410 = *(v642 + 6);
                if (!v410)
                {
                }

                re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(v392, v410, 16);
                v408 = v642;
                if (*v607)
                {
                  v405 = 864 * *v607;
                  goto LABEL_498;
                }
              }

              re::DynamicInlineArray<re::KeyValuePair<unsigned long long,re::StencilPortal>,8ul>::clear(v607);
              v352 = v409;
LABEL_461:
              re::HashTable<unsigned long long,re::StencilPortal,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::addNew(v392, &v682, v769);
            }

            else
            {
LABEL_511:
              v632 = v352;
              v435 = *&v769[8];
              *&__src[0] = v682;
              v603 = *v769;
              *&__src[1] = *v769;
              *&v769[8] = &str_67;
              *v769 = 0;
              v597 = v435;
              *(&__src[1] + 1) = v435;
              v594 = *&v769[16];
              *&v720 = *&v769[16];
              memcpy(v721, &v769[32], sizeof(v721));
              v588 = *&v769[384];
              v550 = *&v769[392];
              v722 = *&v769[384];
              v542 = *(&v772 + 1);
              v544 = v772;
              v725 = v772;
              v543 = *(&v770 + 1);
              v541 = v770;
              v723 = v770;
              *&v769[384] = 0u;
              v770 = 0u;
              v538 = *(&v771 + 1);
              v540 = v771;
              v724 = v771;
              v771 = 0u;
              v772 = 0u;
              v539 = v773;
              LODWORD(v726) = v773;
              LOBYTE(v727) = v774;
              v437 = v774;
              if (v774 == 1)
              {
                v536 = v775;
                v729 = v775;
              }

              v732 = v777;
              v733 = v778;
              *v734 = *v779;
              *&v734[13] = *&v779[13];
              v730 = *v776;
              v731 = *&v776[16];
              v438 = v780;
              LOBYTE(v735) = v780;
              if (v780 == 1)
              {
                v736 = v781;
                v737 = v782;
              }

              v537 = v783;
              *&v738 = v783;
              LOBYTE(v739) = v785;
              v439 = v785;
              if (v785 == 1)
              {
                v740 = v786;
                v741 = v787;
                v742 = v788;
                v743 = v789;
              }

              v744 = v790;
              v745 = v791;
              v746 = v792;
              v747 = v793;
              v748 = v794;
              v749 = v382;
              if (v382)
              {
                v750 = v796;
                v751 = v797;
              }

              v752 = v391;
              v440 = *v607;
              if (*v607 >= 8)
              {
                re::internal::assertLog(4, v436, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
                result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
                __break(1u);
                return result;
              }

              v441 = v642 + 864 * v440;
              *(v441 + 10) = v682;
              v442 = v441 + 80;
              *(v442 + 2) = v603;
              *(v442 + 3) = v597;
              *(&__src[1] + 1) = &str_67;
              *&__src[1] = 0;
              *(v442 + 4) = v594;
              memcpy(v442 + 48, v721, 0x160uLL);
              *(v442 + 57) = v542;
              *(&v725 + 1) = 0;
              *(v442 + 50) = v588;
              *&v722 = 0;
              *(v442 + 51) = v550;
              *(&v722 + 1) = 0;
              *(v442 + 52) = v541;
              *&v723 = 0;
              *(v442 + 55) = v538;
              *(&v724 + 1) = 0;
              *(v442 + 56) = v544;
              *&v725 = 0;
              *(v442 + 53) = v543;
              *(&v723 + 1) = 0;
              *(v442 + 54) = v540;
              *&v724 = 0;
              *(v442 + 116) = v539;
              v442[472] = v437;
              if (v437)
              {
                *(v442 + 60) = v536;
              }

              v443 = v731;
              *(v442 + 488) = v730;
              *(v442 + 504) = v443;
              v444 = v732;
              v445 = v733;
              v446 = *v734;
              *(v442 + 565) = *&v734[13];
              *(v442 + 536) = v445;
              *(v442 + 552) = v446;
              *(v442 + 520) = v444;
              v442[592] = v438;
              if (v438)
              {
                v447 = v737;
                *(v442 + 38) = v736;
                *(v442 + 39) = v447;
              }

              *(v442 + 80) = v537;
              v442[656] = v439;
              v352 = v632;
              if (v439)
              {
                v448 = v740;
                v449 = v741;
                v450 = v743;
                *(v442 + 44) = v742;
                *(v442 + 45) = v450;
                *(v442 + 42) = v448;
                *(v442 + 43) = v449;
              }

              v451 = v744;
              v452 = v745;
              *(v442 + 384) = v746;
              *(v442 + 46) = v451;
              *(v442 + 47) = v452;
              v453 = v747;
              v442[786] = v748;
              *(v442 + 392) = v453;
              v442[800] = v382;
              if (v382)
              {
                v454 = v751;
                *(v442 + 51) = v750;
                *(v442 + 52) = v454;
              }

              *(v442 + 212) = v391;
              *(v642 + 8) = v440 + 1;
              ++*(v642 + 18);
              v457 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v722);
              if (__src[1])
              {
                if (__src[1])
                {
                }
              }

              v29 = v645;
              v355 = v628;
              if (!*v607)
              {
                goto LABEL_670;
              }
            }

LABEL_532:
            re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v769[384]);
            if (v769[0])
            {
              if (v769[0])
              {
              }
            }

            re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v799);
            v63 = v609;
            v73 = v605;
            v197 = v373;
            v360 = v647;
            if (*&v668.var0)
            {
              if (*&v668.var0)
              {
              }
            }

            var0 = 0;
            *&v668.var0 = 0;
            v199 = v372;
            v201 = v635;
LABEL_539:
            v654[0] = v693;
            v654[1] = v563;
            v654[2] = v562;
            v654[3] = v557;
            v655 = v551;
            v656 = v608;
            v657 = v600;
            v658 = v590;
            v659 = v611;
            v660 = ReflectionContentComponent;
            v661 = HighestLightspillNodeRequirements != 0;
            v662 = v292;
            v663 = var0;
            if (var0)
            {
              v664 = 2;
            }

            v665 = v646;
            v460 = re::ecs2::MeshComponentHelper::dynamicFunctionConstantsForMeshScene(v654, v769);
            v461 = v693;
            if (v693)
            {
              if (!re::LateLatch::shouldApplyAnchorLateLatching(v460))
              {
                goto LABEL_547;
              }

              v462 = re::ecs2::TransformComponent::rootAnchorComponent(v461);
              v461 = v462;
              if (v462)
              {
                if (re::ecs2::EntityComponentCollection::get((*(v462 + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::AnchoringComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) && *(v461 + 184) == 1)
                {
                  LOBYTE(v461) = re::LateLatchingManager::trackAnchorPose(*(v63 + 23), *(v461 + 24), *(*(v63 + 18) + 24) & 0xFFFFFFFFFFFFFFFLL, v461 + 3);
                  goto LABEL_548;
                }

LABEL_547:
                LOBYTE(v461) = 0;
              }
            }

LABEL_548:
            *&__src[0] = v87;
            *(&__src[0] + 1) = v355;
            *&__src[1] = v619;
            *(&__src[1] + 1) = v637;
            *&v720 = InstanceDataBuffers;
            *(&v720 + 1) = v638;
            *&v721[0] = v617;
            *(&v721[0] + 1) = v615;
            *&v721[1] = v621;
            *(&v721[1] + 1) = v620;
            v721[2] = v686;
            v721[3] = v687;
            *&v721[4] = v585;
            *(&v721[4] + 1) = v584;
            v721[7] = v690;
            v721[8] = v691;
            v721[5] = v688;
            v721[6] = v689;
            *&v721[9] = v651;
            *(&v721[9] + 1) = v360;
            *&v721[10] = v574;
            *(&v721[10] + 1) = v573;
            *&v721[11] = v572;
            *(&v721[11] + 1) = v571;
            *&v721[12] = v570;
            *(&v721[12] + 1) = v569;
            *&v721[13] = v568;
            *(&v721[13] + 1) = v567;
            LOBYTE(v721[14]) = v566;
            *(&v721[14] + 1) = v583;
            *&v721[15] = v582;
            *(&v721[15] + 1) = v581;
            *&v721[16] = v580;
            *(&v721[16] + 1) = v579;
            *&v721[17] = v578;
            *(&v721[17] + 1) = v576;
            *&v721[18] = v577;
            *(&v721[18] + 1) = v575;
            re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::HashBrown(&v721[19], v769);
            LODWORD(v723) = v613;
            BYTE8(v723) = v565;
            if (v565)
            {
              *&v724 = v547;
            }

            BYTE8(v724) = v610;
            v725 = v683;
            v726 = v554;
            v727 = v564;
            v728 = v287;
            *&v729 = v292;
            v730 = v561;
            *&v731 = *v592;
            *(&v731 + 1) = v682;
            LOWORD(v732) = v92;
            BYTE2(v732) = v461;
            *(&v732 + 4) = __PAIR64__(v559, v560);
            BYTE12(v732) = v608;
            BYTE8(v733) = v668.var0;
            v38 = v640;
            if (v668.var0 == 1)
            {
              *&v734[8] = v669;
              *&v734[24] = v670;
            }

            v735 = 0;
            LOBYTE(v736) = v558;
            if (v558)
            {
              v737 = *&v716[1];
              v738 = *&v716[17];
              v739 = v717;
              v740 = v718;
            }

            LOBYTE(v741) = v612;
            *(&v741 + 1) = v555 & 0x1010101;
            *(&v741 + 1) = __PAIR64__(v199, v653);
            *&v742 = __PAIR64__(v197, v201);
            WORD4(v742) = _H15;
            BYTE10(v742) = v611;
            *(&v742 + 11) = v352;
            BYTE13(v742) = v553 & 1;
            HIWORD(v742) = 0;
            LOBYTE(v743) = 0;
            BYTE1(v743) = v556;
            if (*v642)
            {
              re::DynamicArray<re::MeshScene>::add(v642, __src);
            }

            re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v721[19]);
            re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v769);
            goto LABEL_246;
          }
        }
      }

      v38 = v640;
LABEL_246:
      v68 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v695);
      if (v695 == v38 && v696 == 0xFFFF && HIWORD(v696) == 0xFFFF)
      {
        goto LABEL_106;
      }
    }

LABEL_169:
    v129 = re::ecs2::EntityComponentCollection::get((v693 + 48), re::ecs2::ComponentImpl<re::ecs2::DeformedDirectMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (!v129)
    {
      goto LABEL_219;
    }

    v130 = v129;
    v131 = (*(**(*(v29 + 72) + 40) + 32))(*(*(v29 + 72) + 40));
    v132 = re::ecs2::DeformedDirectMeshComponent::combinedDeformedRenderMeshParts(v130, v131, v87, v86, v102, v103);
    if (!v132)
    {
      goto LABEL_219;
    }

    v133 = (v132 + 32);
    v134 = (v132 + 16);
    v135 = (v132 + 56);
    v136 = (v132 + 48);
    goto LABEL_217;
  }

LABEL_106:
  v69 = v704;
  if (v704)
  {
    v70 = 0;
    v71 = v703;
    v72 = v643;
    while ((*v71 & 0x80000000) == 0)
    {
      v71 += 1792;
      if (v704 == ++v70)
      {
        LODWORD(v70) = v704;
        break;
      }
    }
  }

  else
  {
    LODWORD(v70) = 0;
    v72 = v643;
  }

  if (v70 != v704)
  {
    v466 = v703;
    do
    {
      v467 = v466 + 7168 * v70;
      v123 = (v467 + 16);
      re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(&v799, v644, *(v467 + 8), v72);
      if (*(v467 + 32))
      {
        *&__src[0] = v799 >> 1;
        v468 = **(re::RenderFrameData::stream((v72 + 264), __src) + 48);
        (*(v468 + 504))();
      }

      if (*(v467 + 7036) || *(v467 + 80))
      {
        *&__src[0] = v799 >> 1;
        v469 = **(re::RenderFrameData::stream((v72 + 264), __src) + 48);
        (*(v469 + 808))();
      }

      v688.i64[0] = v799 >> 1;
      v470 = re::RenderFrameData::stream((v72 + 264), &v688);
      re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v470, v714, __src);
      if (HIDWORD(__src[0]) == 0x7FFFFFFF)
      {
        v471 = *(*(v470 + 48) + 8);
        v472 = (*(*v471 + 32))(v471, 56, 8);
        *v472 = 0;
        *(v472 + 8) = 0;
        *(v472 + 16) = 1;
        *(v472 + 32) = 0;
        *(v472 + 40) = 0;
        *(v472 + 24) = 0;
        *(v472 + 48) = 0;
        v473 = re::BucketArray<re::GlobalDirectionalLightRenderFrameData,4ul>::init(v472, v471, 1uLL);
        *(&__src[0] + 1) = v472;
        *&__src[0] = std::__any_imp::_SmallHandler<re::BucketArray<re::GlobalDirectionalLightRenderFrameData,4ul> *>::__handle[abi:nn200100];
        *(&v721[0] + 1) = re::globalAllocators(v473)[2];
        *&v721[1] = 0;
        v474 = re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::addNew(v470, v714, __src);
        if (*&v721[1])
        {
          *v769 = __src;
          (*(**&v721[1] + 16))(*&v721[1], v769);
        }

        re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(&v720);
        if (*&__src[0])
        {
          (*&__src[0])(0, __src, 0, 0, 0);
        }
      }

      else
      {
        v474 = (*(v470 + 16) + 96 * HIDWORD(__src[0]) + 16);
      }

      j = *v475;
      v477 = *(v467 + 7056);
      v478 = *(*v475 + 5);
      v92 = *(*v475 + 1);
      if (v478 + 1 > 4 * v92)
      {
        re::BucketArray<re::GlobalDirectionalLightRenderFrameData,4ul>::setBucketsCapacity(*v475, (v478 + 4) >> 2);
        v92 = *(j + 8);
      }

      v158 = v478 >> 2;
      if (v92 <= v478 >> 2)
      {
        goto LABEL_649;
      }

      if (*(j + 16))
      {
        v479 = j + 24;
      }

      else
      {
        v479 = *(j + 32);
      }

      v480 = *(v479 + 8 * v158);
      v481 = *(j + 40);
      *(j + 40) = v481 + 1;
      ++*(j + 48);
      *(v480 + (v478 & 3)) = v477;
      if (v481 == -1)
      {
        goto LABEL_653;
      }

      if (v92 <= v481 >> 2)
      {
        goto LABEL_654;
      }

      *&__src[0] = v799 >> 1;
      v72 = v643;
      v482 = **(re::RenderFrameData::stream((v643 + 264), __src) + 48);
      v68 = (*(v482 + 408))();
      if (v799)
      {
        if (v799)
        {
        }
      }

      if (v704 <= v70 + 1)
      {
        v483 = v70 + 1;
      }

      else
      {
        v483 = v704;
      }

      v466 = v703;
      while (v483 - 1 != v70)
      {
        LODWORD(v70) = v70 + 1;
        if ((*(v703 + 7168 * v70) & 0x80000000) != 0)
        {
          goto LABEL_600;
        }
      }

      LODWORD(v70) = v483;
LABEL_600:
      ;
    }

    while (v70 != v69);
  }

  v484 = v700;
  if (v700)
  {
    v485 = 0;
    v486 = v699;
    v487 = v640;
    v488 = v546;
    while (1)
    {
      v489 = *v486;
      v486 += 18;
      if (v489 < 0)
      {
        break;
      }

      if (v700 == ++v485)
      {
        LODWORD(v485) = v700;
        break;
      }
    }

    v490 = v644;
  }

  else
  {
    LODWORD(v485) = 0;
    v487 = v640;
    v490 = v644;
    v488 = v546;
  }

  if (v485 != v700)
  {
    v491 = v699;
    v492 = v700;
    do
    {
      v493 = v491 + 72 * v485;
      if (*(v493 + 44))
      {
        re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(__src, v490, *(v491 + 72 * v485 + 8), v72);
        v68 = (*(*v488 + 40))(v488, __src, *(v72 + 48), v493 + 16);
        if (__src[0])
        {
          if (__src[0])
          {
          }
        }

        v492 = v700;
        v491 = v699;
      }

      if (v492 <= v485 + 1)
      {
        v494 = v485 + 1;
      }

      else
      {
        v494 = v492;
      }

      while (v494 - 1 != v485)
      {
        LODWORD(v485) = v485 + 1;
        if ((*(v491 + 72 * v485) & 0x80000000) != 0)
        {
          goto LABEL_622;
        }
      }

      LODWORD(v485) = v494;
LABEL_622:
      ;
    }

    while (v485 != v484);
  }

  v495 = *(v487 + 40);
  if (v697)
  {
    if (v697)
    {
    }
  }

  re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v698);
  re::HashTable<unsigned long long,re::ecs2::PerWorldData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v702);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v706);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v709);
  return v495 != 0;
}