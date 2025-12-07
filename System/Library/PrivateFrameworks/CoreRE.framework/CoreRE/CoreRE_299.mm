uint64_t RESkeletalPoseComponentBuildAndExecuteRig(re::ecs2::SkeletalPoseComponent *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v31 = CoreRELog::log;
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    *v43 = 0;
    v32 = "Cannot build and execute rig for unattached skeletal pose component.";
    goto LABEL_40;
  }

  v3 = *(a1 + 2);
  do
  {
    v4 = v3;
    v3 = *(v3 + 32);
  }

  while (v3);
  v5 = *(v4 + 24);
  if (!v5)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v31 = CoreRELog::log;
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    *v43 = 0;
    v32 = "Cannot build and execute rig for entity not attached to a scene.";
    goto LABEL_40;
  }

  v6 = *(v5 + 56);
  if (!v6)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v31 = CoreRELog::log;
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    *v43 = 0;
    v32 = "Cannot build and execute rig for scene not attached to an ECS service.";
    goto LABEL_40;
  }

  v7 = v1[24];
  if (!v7)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v31 = CoreRELog::log;
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    *v43 = 0;
    v32 = "Cannot build and execute rig for skeletal pose without a corresponding mesh component.";
    goto LABEL_40;
  }

  v8 = *(v7 + 5);
  if (!v8 || (v9 = atomic_load((v8 + 896)), v9 != 2))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v31 = CoreRELog::log;
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    *v43 = 0;
    v32 = "Cannot build and execute rig for skeletal pose because corresponding mesh asset isn't loaded.";
    goto LABEL_40;
  }

  v10 = re::ecs2::EntityComponentCollection::get((v1 + 6), re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v10)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v31 = CoreRELog::log;
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    *v43 = 0;
    v32 = "Cannot build and execute rig for skeletal pose without a corresponding rig component.";
    goto LABEL_40;
  }

  v11 = v10;
  v12 = *(*(*(v10 + 16) + 192) + 40);
  if (!v12 || (v13 = atomic_load((v12 + 896)), v13 != 2))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v31 = CoreRELog::log;
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    *v43 = 0;
    v32 = "Cannot build and execute rig for skeletal pose: assets are not yet loaded.";
    goto LABEL_40;
  }

  v14 = v1[25];
  if (!v14)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v31 = CoreRELog::log;
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    *v43 = 0;
    v32 = "Cannot build and execute rig without a mesh deformation component.";
    goto LABEL_40;
  }

  v15 = (*(*v6 + 32))(v6);
  v16 = re::ServiceLocator::serviceOrNull<re::RenderManager>(v15);
  if (!v16)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v31 = CoreRELog::log;
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    *v43 = 0;
    v32 = "Cannot build and execute rig without a render manager.";
    goto LABEL_40;
  }

  v17 = v16;
  v18 = (*(*v6 + 32))(v6);
  v19 = re::ServiceLocator::serviceOrNull<re::DeformationService>(v18);
  if (!v19)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v31 = CoreRELog::log;
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    *v43 = 0;
    v32 = "Cannot build and execute rig without a deformation service.";
LABEL_40:
    _os_log_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_DEFAULT, v32, v43, 2u);
LABEL_41:

    return 0;
  }

  v20 = v19;
  v21 = (*(*v6 + 32))(v6);
  v22 = re::ServiceLocator::service<re::AssetService>(v21);
  v23 = re::MeshDeformationAsset::assetType(v22);
  v24 = re::AssetManager::assetLoaderWithAssetType(v22, v23);
  (*(*v6 + 248))(v6);
  v25 = re::ecs2::EntityComponentCollection::get((v1 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v25)
  {
    re::ecs2::MeshSceneComponent::ensureCachedDataUpToDate(v25, *(v17 + 32));
  }

  re::ecs2::MeshDeformationComponent::update(v14, 0, v17, v20, v24);
  v26 = (*(*v6 + 32))(v6);
  v27 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v26);
  v29 = v27;
  if (v27)
  {
    (*(*v27 + 56))(v27, 1);
    v30 = re::ecs2::PhysicsSimulationService::physicsSimulationForEntity(v29, v1);
    if (v30)
    {
      v29 = *(v30 + 7);
    }

    else
    {
      v29 = 0;
    }
  }

  v34 = re::ecs2::RigComponentHelper::areAssetAndDependenciesLoaded(v11, v28);
  v35 = (*(*v6 + 32))(v6);
  v36 = re::ecs2::EntityComponentCollection::get((v1 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v37 = re::ecs2::EntityComponentCollection::get((v1 + 6), re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  re::ecs2::RigComponent::updateRigRuntimeData(v11, v34, v29, v35, v7, v36, v37);
  v38 = re::ecs2::EntityComponentCollection::getOrAdd((v1 + 6), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v39 = re::ecs2::SkeletalPoseComponent::calculateSkeletalPoseBufferWithRig(a1, v7, v11, v38);
  if (re::DeformerFeatureFlags::enableAppDeformation(v39))
  {
    v40 = re::ecs2::EntityComponentCollection::get((v1 + 6), re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
    if (v40)
    {
      v41 = v40;
    }

    else
    {
      v41 = re::ecs2::EntityComponentCollection::getOrAdd((v1 + 6), re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
      v42 = v1[27];
      if (v42)
      {
        re::ecs2::NetworkComponent::markDirty(v42, v41);
      }
    }

    re::ecs2::Component::markDirty(v41);
  }

  return 1;
}

void *REPSOToolCreateFromMetallib(re *a1, int a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 1192, 8);
  bzero(v5, 0x4A8uLL);
  ArcSharedObject::ArcSharedObject(v5, 0);
  *v5 = &unk_1F5D2D540;
  *(v5 + 5) = 0u;
  *(v5 + 7) = 0u;
  *(v5 + 9) = 0u;
  *(v5 + 11) = 0u;
  *(v5 + 13) = 0u;
  *(v5 + 30) = 0;
  *(v5 + 3) = 0u;
  *(v5 + 124) = 0x7FFFFFFFLL;
  *(v5 + 17) = 0u;
  *(v5 + 19) = 0u;
  *(v5 + 42) = 0;
  *(v5 + 172) = 0x7FFFFFFFLL;
  v5[23] = 0;
  *(v5 + 12) = 0u;
  *(v5 + 52) = 0;
  *(v5 + 29) = 0u;
  *(v5 + 27) = 0u;
  *(v5 + 31) = 0u;
  *(v5 + 260) = 0u;
  *(v5 + 276) = 0x7FFFFFFFLL;
  *(v5 + 18) = 0u;
  *(v5 + 19) = 0u;
  *(v5 + 80) = 0;
  *(v5 + 324) = 0x7FFFFFFFLL;
  *(v5 + 21) = 0u;
  *(v5 + 22) = 0u;
  *(v5 + 92) = 0;
  *(v5 + 372) = 0x7FFFFFFFLL;
  *(v5 + 24) = 0u;
  *(v5 + 25) = 0u;
  *(v5 + 104) = 0;
  *(v5 + 420) = 0x7FFFFFFFLL;
  *(v5 + 27) = 0u;
  *(v5 + 28) = 0u;
  *(v5 + 116) = 0;
  *(v5 + 468) = 0x7FFFFFFFLL;
  *(v5 + 30) = 0u;
  *(v5 + 31) = 0u;
  *(v5 + 128) = 0;
  *(v5 + 516) = 0x7FFFFFFFLL;
  *(v5 + 140) = 0;
  *(v5 + 33) = 0u;
  *(v5 + 34) = 0u;
  *(v5 + 564) = 0x7FFFFFFFLL;
  *(v5 + 152) = 0;
  *(v5 + 36) = 0u;
  *(v5 + 37) = 0u;
  *(v5 + 612) = 0x7FFFFFFFLL;
  *(v5 + 164) = 0;
  *(v5 + 39) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 660) = 0x7FFFFFFFLL;
  *(v5 + 42) = 0u;
  *(v5 + 174) = 0;
  v5[86] = 0;
  *(v5 + 732) = 0u;
  *(v5 + 44) = 0u;
  *(v5 + 45) = 0u;
  *(v5 + 748) = 0x7FFFFFFFLL;
  *(v5 + 196) = 0;
  v5[97] = 0;
  *(v5 + 95) = 0u;
  *(v5 + 206) = 0;
  *(v5 + 99) = 0u;
  *(v5 + 101) = 0u;
  *(v5 + 216) = 0;
  *(v5 + 52) = 0u;
  *(v5 + 53) = 0u;
  *(v5 + 226) = 0;
  *(v5 + 109) = 0u;
  *(v5 + 111) = 0u;
  *(v5 + 236) = 0;
  *(v5 + 57) = 0u;
  *(v5 + 58) = 0u;
  *(v5 + 246) = 0;
  *(v5 + 119) = 0u;
  *(v5 + 121) = 0u;
  *(v5 + 256) = 0;
  *(v5 + 62) = 0u;
  *(v5 + 63) = 0u;
  *(v5 + 1076) = 0u;
  *(v5 + 131) = 0u;
  *(v5 + 133) = 0u;
  *(v5 + 129) = 0u;
  *(v5 + 1092) = 0x7FFFFFFFLL;
  v5[138] = 256;
  *(v5 + 139) = 0u;
  *(v5 + 141) = 0u;
  v8 = re::DynamicString::setCapacity(v5 + 139, 0);
  *(v5 + 1144) = 0;
  *(v5 + 287) = 0;
  *(v5 + 1184) = 0;
  re::PSOToolManager::init(v5 + 3, a1);
  v5[138] = a2;
  return v5 + 1;
}

uint64_t REPSOToolAddSearchPath(uint64_t a1, const char *a2)
{
  v2 = a1 - 8;
  if (!a1)
  {
    v2 = 0;
  }

  return re::PSOToolManager::addSearchPath((v2 + 24), a2);
}

uint64_t REPSOToolGenerateWrappingShaderJSONForMaterial(uint64_t a1, const char *a2, std::string *a3)
{
  if (a1)
  {
    v5 = a1 - 8;
  }

  else
  {
    v5 = 0;
  }

  MaterialDefinitions = re::PSOToolManager::readMaterialDefinitions(v5 + 24);
  re::DynamicString::append(&v11, ".rematerialdefinition", 0x15uLL);
  re::DynamicString::append(&v9, ".mtlp-json", 0xAuLL);
  re::PSOToolManager::setCustomMaterialWrappingDefinition((v5 + 24), &v11);
  re::PSOToolManager::serializeToURL((v5 + 24), a3);
  if (v9 && (v10 & 1) != 0)
  {
    (*(*v9 + 40))();
  }

  result = v11;
  if (v11)
  {
    if (v12)
    {
      return (*(*v11 + 40))();
    }
  }

  return result;
}

unsigned int *combineArrays(unsigned int *a1, unsigned int *a2, char *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 3);
  v7 = *a2;
  v8 = *(a2 + 1);
  result = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember(*a2, v8, a3);
  if (&v8[12 * v7] != result)
  {
    v10 = *a1;
    v11 = *(a1 + 1);
    if (&v11[12 * v10] == rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember(*a1, v11, a3))
    {
      v19 = 0x4000000000000;
      v18 = 0uLL;
      *(&v20 + 1) = a3;
      v21 = 0x405000000000000;
      *&v20 = strlen(a3);
      rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::DoAddMember(a1, &v20, &v18, v6);
      v7 = *a2;
      v8 = *(a2 + 1);
    }

    v12 = strlen(a3);
    *(&v20 + 1) = a3;
    v21 = 0x405000000000000;
    *&v20 = v12;
    result = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[]<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>(v7, v8, &v20);
    v13 = *result;
    if (v13)
    {
      v14 = *(result + 1);
      v15 = 24 * v13;
      do
      {
        v18 = 0uLL;
        v19 = 0;
        rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GenericValue<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>(&v18, v14, v6);
        v16 = strlen(a3);
        *(&v20 + 1) = a3;
        v21 = 0x405000000000000;
        *&v20 = v16;
        v17 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[]<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>(*a1, *(a1 + 1), &v20);
        result = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::PushBack(v17, &v18, v6);
        v14 += 6;
        v15 -= 24;
      }

      while (v15);
    }
  }

  return result;
}

void REPSOToolGenerateFrameworkJSON(uint64_t a1, std::string *a2, std::string *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1 - 8;
  }

  else
  {
    v3 = 0;
  }

  re::PSOToolManager::readMaterialDefinitions(v3 + 24);
  v22 = 0;
  v4 = MEMORY[0x1E69E5528] + 24;
  v5 = MEMORY[0x1E69E5528] + 64;
  v21 = MEMORY[0x1E69E5528] + 64;
  v6 = *(MEMORY[0x1E69E54C8] + 16);
  v19[0] = *(MEMORY[0x1E69E54C8] + 8);
  *(v19 + *(v19[0] - 24)) = v6;
  v19[1] = 0;
  v7 = (v19 + *(v19[0] - 24));
  std::ios_base::init(v7, v20);
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  v19[0] = v4;
  v21 = v5;
  MEMORY[0x1E6906010](v20);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((v19 + *(v19[0] - 24)), *&v20[*(v19[0] - 24) + 16] | 4);
  }

  v8 = v19;
  v9[1] = v9;
  v9[2] = 4;
  v9[3] = 0;
  v9[6] = 0;
  v9[4] = v9;
  v9[5] = 0;
  v10 = 0;
  rapidjson::BasicIStreamWrapper<std::istream>::Read(&v8);
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  *v11 = 0u;
  v16 = 1024;
  v17 = 0;
  v18 = 0;
  operator new();
}

uint64_t rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Accept<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>>(unsigned int *a1, uint64_t *a2)
{
  v4 = *(a1 + 11);
  v5 = v4 & 7;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3u:
        rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Prefix(a2);
        v14 = a2[4];
        if (a2[5] - v14 <= 15)
        {
          rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::Writer<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Level>(a2 + 1);
          v14 = a2[4];
        }

        a2[4] = v14 + 16;
        *v14 = 0;
        *(v14 + 8) = 0;
        v15 = *a2;
        v16 = *(*a2 + 24);
        if ((*(*a2 + 32) - v16) <= 0)
        {
          rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*a2, 1);
          v16 = *(v15 + 24);
        }

        *(v15 + 24) = v16 + 1;
        *v16 = 123;
        if (*a1)
        {
          v17 = (*(a1 + 1) + 24);
          do
          {
            v18 = (*(v17 - 1) & 0x1000) != 0 ? (v17 - 6) : *(v17 - 2);
            v19 = (*(v17 - 1) & 0x1000) != 0 ? 21 - *(v17 - 3) : *(v17 - 6);
            rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Prefix(a2);
            rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteString(a2, v18, v19);
            if ((rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Accept<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>>(v17, a2) & 1) == 0)
            {
              return 0;
            }

            v20 = v17 + 6;
            v17 += 12;
          }

          while (v20 != (*(a1 + 1) + 48 * *a1));
        }

        a2[4] -= 16;
        v21 = *a2;
        v22 = v21[3];
        if (v21[4] - v22 <= 0)
        {
          rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(v21, 1);
          v22 = v21[3];
        }

        v21[3] = (v22 + 1);
        v23 = 125;
        break;
      case 4u:
        rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Prefix(a2);
        v25 = a2[4];
        if (a2[5] - v25 <= 15)
        {
          rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::Writer<rapidjson::BasicOStreamWrapper<std::ostream>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Level>(a2 + 1);
          v25 = a2[4];
        }

        a2[4] = v25 + 16;
        *v25 = 0;
        *(v25 + 8) = 1;
        v26 = *a2;
        v27 = *(*a2 + 24);
        if ((*(*a2 + 32) - v27) <= 0)
        {
          rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*a2, 1);
          v27 = *(v26 + 24);
        }

        *(v26 + 24) = v27 + 1;
        *v27 = 91;
        if (*a1)
        {
          v28 = *(a1 + 1);
          while ((rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::Accept<rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>>(v28, a2) & 1) != 0)
          {
            v28 += 6;
            if (v28 == (*(a1 + 1) + 24 * *a1))
            {
              goto LABEL_48;
            }
          }

          return 0;
        }

LABEL_48:
        a2[4] -= 16;
        v29 = *a2;
        v22 = v29[3];
        if (v29[4] - v22 <= 0)
        {
          rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(v29, 1);
          v22 = v29[3];
        }

        v29[3] = (v22 + 1);
        v23 = 93;
        break;
      case 5u:
        if ((*(a1 + 11) & 0x1000) != 0)
        {
          v7 = a1;
        }

        else
        {
          v7 = *(a1 + 1);
        }

        if ((*(a1 + 11) & 0x1000) != 0)
        {
          v8 = 21 - *(a1 + 21);
        }

        else
        {
          v8 = *a1;
        }

        rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Prefix(a2);
        rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteString(a2, v7, v8);
        return 1;
      default:
        goto LABEL_34;
    }

    *v22 = v23;
    return 1;
  }

  if ((v4 & 7) == 0)
  {
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Prefix(a2);
    v9 = *a2;
    v10 = *(*a2 + 24);
    if ((*(*a2 + 32) - v10) <= 3)
    {
      rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(v9, 4);
      v9 = *a2;
      v10 = *(*a2 + 24);
    }

    v9[3] = (v10 + 1);
    *v10 = 110;
    v11 = *(*a2 + 24);
    *(*a2 + 24) = v11 + 1;
    *v11 = 117;
    v12 = *(*a2 + 24);
    *(*a2 + 24) = v12 + 1;
    *v12 = 108;
    v13 = *(*a2 + 24);
    *(*a2 + 24) = v13 + 1;
    *v13 = 108;
    return 1;
  }

  if (v5 == 1)
  {
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Prefix(a2);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteBool(a2, 0);
    return 1;
  }

  if (v5 != 2)
  {
LABEL_34:
    if ((*(a1 + 11) & 0x200) == 0)
    {
      if ((v4 & 0x20) == 0)
      {
        if ((v4 & 0x40) != 0)
        {
          rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Uint(a2, *a1);
        }

        else
        {
          v24 = *a1;
          if ((v4 & 0x80) != 0)
          {
            rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Int64(a2, v24);
          }

          else
          {
            rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Uint64(a2, v24);
          }
        }

        return 1;
      }

      v32 = *a1;
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Prefix(a2);
      v34 = *a2;
      v35 = *(*a2 + 24);
      if ((*(*a2 + 32) - v35) <= 10)
      {
        rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*a2, 11);
        v35 = *(v34 + 24);
      }

      *(v34 + 24) = v35 + 11;
      v36 = v35;
      if ((v32 & 0x80000000) != 0)
      {
        *v35 = 45;
        v36 = v35 + 1;
        v32 = -v32;
      }

      v37 = rapidjson::internal::u32toa(v32, v36, v33);
      v38 = *a2;
      v39 = *(*a2 + 24) + v37 - v35 - 11;
      goto LABEL_85;
    }

    v30 = *a1;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Prefix(a2);
    v31 = *&v30;
    if ((~*&v30 & 0x7FF0000000000000) != 0)
    {
      v40 = *a2;
      v41 = *(*a2 + 24);
      if ((*(*a2 + 32) - v41) <= 24)
      {
        rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*a2, 25);
        v41 = *(v40 + 24);
      }

      *(v40 + 24) = v41 + 25;
      if (v30 == 0.0)
      {
        v42 = v41;
        if ((*&v30 & 0x8000000000000000) != 0)
        {
          *v41 = 45;
          v42 = v41 + 1;
        }

        *v42 = 11824;
        v42[2] = 48;
        v43 = v42 + 3;
      }

      else
      {
        v44 = *(a2 + 14);
        v45 = v41;
        if (v30 < 0.0)
        {
          *v41 = 45;
          v45 = (v41 + 1);
          v31 = *&v30 ^ 0x8000000000000000;
        }

        v46 = ((v31 >> 52) & 0x7FF) - 1075;
        v47 = ((v31 >> 52) & 0x7FF) == 0;
        v66 = 0;
        if (((v31 >> 52) & 0x7FF) != 0)
        {
          v48 = v31 & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
        }

        else
        {
          v48 = v31 & 0xFFFFFFFFFFFFFLL;
        }

        if (v47)
        {
          v49 = -1074;
        }

        else
        {
          v49 = v46;
        }

        v75 = (2 * (v48 & 0x1FFFFFFFFFFFFFLL)) | 1;
        v76 = v49 - 1;
        v50 = rapidjson::internal::DiyFp::NormalizeBoundary(&v75);
        v52 = 2 * v48 - 1;
        if (v48 == 0x10000000000000)
        {
          v53 = -2;
        }

        else
        {
          v53 = -1;
        }

        if (v48 == 0x10000000000000)
        {
          v52 = 0x3FFFFFFFFFFFFFLL;
        }

        v73 = v50;
        v74 = v51;
        v75 = v52 << (v53 + v49 - v51);
        v76 = v51;
        v54 = (-61 - v51) * 0.301029996 + 347.0;
        v55 = v54;
        if (v54 > v54)
        {
          ++v55;
        }

        v56 = (v55 >> 3) + 1;
        v57 = rapidjson::internal::GetCachedPowerByIndex(unsigned long)::kCachedPowers_F[v56];
        v65 = 348 - 8 * v56;
        v58 = rapidjson::internal::GetCachedPowerByIndex(unsigned long)::kCachedPowers_E[v56];
        v71 = v57;
        v72 = v58;
        v59 = __clz(v48);
        v67 = v48 << v59;
        v68 = v49 - v59;
        v69 = rapidjson::internal::DiyFp::operator*(&v67, &v71);
        v70 = v60;
        v61 = rapidjson::internal::DiyFp::operator*(&v73, &v71);
        v68 = v62;
        v63 = rapidjson::internal::DiyFp::operator*(&v75, &v71);
        v67 = v61 - 1;
        rapidjson::internal::DigitGen(&v69, &v67, v61 - 1 + ~v63, v45, &v66, &v65);
        v43 = rapidjson::internal::Prettify(v45, v66, v65, v44);
      }

      v38 = *a2;
      v39 = *(*a2 + 24) + v43 - v41 - 25;
LABEL_85:
      *(v38 + 24) = v39;
      return 1;
    }

    return 0;
  }

  rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Prefix(a2);
  v6 = 1;
  rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteBool(a2, 1);
  return v6;
}

uint64_t rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>::GetString(uint64_t *a1)
{
  v2 = a1[3];
  if (a1[4] - v2 <= 0)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(a1, 1);
    v2 = a1[3];
  }

  a1[3] = (v2 + 1);
  *v2 = 0;
  result = a1[2];
  --a1[3];
  return result;
}

uint64_t REPSOToolSerializeRuntimeCompilationStatisticsToURL(uint64_t a1, std::string *a2)
{
  v2 = a1 - 8;
  if (!a1)
  {
    v2 = 0;
  }

  return re::PSOToolManager::serializeRuntimeCompilationStatisticsToURL((v2 + 24), a2);
}

void REPSOTool::~REPSOTool(REPSOTool *this)
{
  *this = &unk_1F5D2D540;
  re::PSOToolManager::~PSOToolManager((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2D540;
  re::PSOToolManager::~PSOToolManager((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::PSOToolManager::~PSOToolManager(re::PSOToolManager *this)
{
  re::DynamicString::deinit((this + 1128));
  re::DynamicString::deinit((this + 1088));
  v2.n128_f64[0] = re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 129);
  v3 = *(this + 122);
  if (v3)
  {
    v4 = *(this + 126);
    if (v4)
    {
      v5 = *(this + 124);
      if (v5)
      {
        v6 = 32 * v5;
        do
        {
          v2.n128_f64[0] = re::DynamicString::deinit(v4);
          v4 = (v4 + 32);
          v6 -= 32;
        }

        while (v6);
        v3 = *(this + 122);
        v4 = *(this + 126);
      }

      (*(*v3 + 40))(v3, v4, v2);
    }

    *(this + 126) = 0;
    *(this + 123) = 0;
    *(this + 124) = 0;
    *(this + 122) = 0;
    ++*(this + 250);
  }

  v7 = *(this + 117);
  if (v7)
  {
    v8 = *(this + 121);
    if (v8)
    {
      v9 = *(this + 119);
      if (v9)
      {
        v10 = 96 * v9;
        do
        {
          re::DynamicString::deinit((v8 + 64));
          re::DynamicString::deinit((v8 + 32));
          v2.n128_f64[0] = re::DynamicString::deinit(v8);
          v8 += 96;
          v10 -= 96;
        }

        while (v10);
        v7 = *(this + 117);
        v8 = *(this + 121);
      }

      (*(*v7 + 40))(v7, v8, v2);
    }

    *(this + 121) = 0;
    *(this + 118) = 0;
    *(this + 119) = 0;
    *(this + 117) = 0;
    ++*(this + 240);
  }

  v11 = *(this + 112);
  if (v11)
  {
    v12 = *(this + 116);
    if (v12)
    {
      v13 = *(this + 114);
      if (v13)
      {
        v14 = 104 * v13;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v12 + 64);
          re::DynamicString::deinit((v12 + 32));
          v2.n128_f64[0] = re::DynamicString::deinit(v12);
          v12 += 104;
          v14 -= 104;
        }

        while (v14);
        v11 = *(this + 112);
        v12 = *(this + 116);
      }

      (*(*v11 + 40))(v11, v12, v2);
    }

    *(this + 116) = 0;
    *(this + 113) = 0;
    *(this + 114) = 0;
    *(this + 112) = 0;
    ++*(this + 230);
  }

  v15 = *(this + 107);
  if (v15)
  {
    v16 = *(this + 111);
    if (v16)
    {
      v17 = *(this + 109);
      if (v17)
      {
        v18 = 232 * v17;
        v19 = v16 + 192;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v19);
          re::DynamicArray<unsigned long>::deinit(v19 - 40);
          re::DynamicString::deinit((v19 - 80));
          re::DynamicArray<unsigned long>::deinit(v19 - 120);
          v19 += 232;
          v18 -= 232;
        }

        while (v18);
        v15 = *(this + 107);
        v16 = *(this + 111);
      }

      (*(*v15 + 40))(v15, v16, v2);
    }

    *(this + 111) = 0;
    *(this + 108) = 0;
    *(this + 109) = 0;
    *(this + 107) = 0;
    ++*(this + 220);
  }

  v20 = *(this + 102);
  if (v20)
  {
    v21 = *(this + 106);
    if (v21)
    {
      v22 = *(this + 104);
      if (v22)
      {
        v23 = 96 * v22;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v21 + 40);
          re::DynamicArray<unsigned long>::deinit(v21);
          v21 += 96;
          v23 -= 96;
        }

        while (v23);
        v20 = *(this + 102);
        v21 = *(this + 106);
      }

      (*(*v20 + 40))(v20, v21, v2);
    }

    *(this + 106) = 0;
    *(this + 103) = 0;
    *(this + 104) = 0;
    *(this + 102) = 0;
    ++*(this + 210);
  }

  v24 = *(this + 97);
  if (v24)
  {
    v25 = *(this + 101);
    if (v25)
    {
      v26 = *(this + 99);
      if (v26)
      {
        v27 = 176 * v26;
        do
        {
          re::DynamicArray<unsigned long>::deinit((v25 + 17));
          re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v25 + 10);
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v25 + 4);
          v2.n128_f64[0] = re::DynamicString::deinit(v25);
          v25 += 22;
          v27 -= 176;
        }

        while (v27);
        v24 = *(this + 97);
        v25 = *(this + 101);
      }

      (*(*v24 + 40))(v24, v25, v2);
    }

    *(this + 101) = 0;
    *(this + 98) = 0;
    *(this + 99) = 0;
    *(this + 97) = 0;
    ++*(this + 200);
  }

  v28 = *(this + 92);
  if (v28)
  {
    v29 = *(this + 96);
    if (v29)
    {
      v30 = *(this + 94);
      if (v30)
      {
        v31 = 136 * v30;
        do
        {
          re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v29 + 10);
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v29 + 4);
          v2.n128_f64[0] = re::DynamicString::deinit(v29);
          v29 += 17;
          v31 -= 136;
        }

        while (v31);
        v28 = *(this + 92);
        v29 = *(this + 96);
      }

      (*(*v28 + 40))(v28, v29, v2);
    }

    *(this + 96) = 0;
    *(this + 93) = 0;
    *(this + 94) = 0;
    *(this + 92) = 0;
    ++*(this + 190);
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 86);
  re::DynamicArray<re::DynamicString>::deinit(this + 648);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 75);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 69);
  re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this + 63);
  re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this + 57);
  re::HashTable<unsigned long,re::FunctionVariantDescriptor,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this + 51);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 45);
  re::HashTable<re::DynamicString,re::MaterialFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 39);
  re::HashTable<re::DynamicString,re::MaterialDefinitionFile,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 33);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 27);

  re::DynamicArray<re::DynamicString>::deinit(this + 160);
  re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 14);
  re::HashTable<re::DynamicString,NS::SharedPtr<MTL::Function>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 8);
  re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::deinit(this);
}

unsigned int *rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember(unsigned int a1, unsigned int *a2, char *__s)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v8[1] = __s;
  v8[2] = 0x405000000000000;
  v8[0] = strlen(__s);
  if (a1)
  {
    v5 = &a2[12 * a1];
    v6 = 48 * a1;
    while (!rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::StringEqual<re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>(v8, a2))
    {
      a2 += 12;
      v6 -= 48;
      if (!v6)
      {
        return v5;
      }
    }
  }

  return a2;
}

uint64_t rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GenericValue<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v6 = *(a2 + 11);
  v7 = v6 & 7;
  if (v7 != 5)
  {
    if (v7 == 4)
    {
      v14 = *a2;
      v15 = *a2;
      v16 = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(a3, 24 * v14);
      v11 = v16;
      if (v14)
      {
        v17 = *(a2 + 1);
        do
        {
          v18 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GenericValue<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>(v16, v17, a3);
          v17 += 6;
          v16 = v18 + 24;
          --v14;
        }

        while (v14);
      }

      *(a1 + 22) = 4;
      *a1 = v15;
      *(a1 + 4) = v15;
      goto LABEL_12;
    }

    if (v7 == 3)
    {
      *(a1 + 22) = 3;
      v8 = *a2;
      v9 = *a2;
      v10 = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(a3, 48 * v8);
      v11 = v10;
      if (v8)
      {
        v12 = *(a2 + 1);
        v13 = v10;
        do
        {
          rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GenericValue<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>(v13, v12, a3);
          rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::GenericValue<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>(v13 + 24, v12 + 6, a3);
          v12 += 12;
          v13 += 48;
          --v8;
        }

        while (v8);
      }

      *a1 = v9;
      *(a1 + 4) = v9;
LABEL_12:
      *(a1 + 8) = v11;
      return a1;
    }

LABEL_14:
    *(a1 + 22) = v6;
    v19 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v19;
    return a1;
  }

  if (v6 == 1029)
  {
    goto LABEL_14;
  }

  v20 = (v6 & 0x1000) == 0;
  if ((v6 & 0x1000) != 0)
  {
    v21 = a2;
  }

  else
  {
    v21 = *(a2 + 1);
  }

  v22 = *a2;
  if (!v20)
  {
    v22 = 21 - *(a2 + 21);
  }

  if (!v21)
  {
    v21 = &rapidjson::GenericStringRef<char>::emptyString;
  }

  v24 = v21;
  v25 = v22;
  rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::SetStringRaw(a1, &v24, a3);
  return a1;
}

uint64_t *rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::operator[]<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>(unsigned int a1, unsigned int *a2, unsigned int *a3)
{
  if (a1)
  {
    v5 = a1;
    v6 = &a2[12 * a1];
    v7 = 48 * a1;
    v8 = a2;
    while (!rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::StringEqual<re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>(a3, v8))
    {
      v8 += 12;
      v7 -= 48;
      if (!v7)
      {
        v8 = v6;
        break;
      }
    }
  }

  else
  {
    v5 = 0;
    v8 = a2;
  }

  if (v8 != &a2[12 * v5])
  {
    return (v8 + 6);
  }

  if ((atomic_load_explicit(&_MergedGlobals_588, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&_MergedGlobals_588))
    {
      qword_1EE1C4C98 = 0;
      unk_1EE1C4CA0 = 0;
      qword_1EE1C4CA8 = 0;
      __cxa_guard_release(&_MergedGlobals_588);
    }
  }

  result = &qword_1EE1C4C98;
  qword_1EE1C4C98 = 0;
  unk_1EE1C4CA0 = 0;
  qword_1EE1C4CA8 = 0;
  return result;
}

uint64_t rapidjson::BasicIStreamWrapper<std::istream>::Read(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (v2 >= *(result + 32))
  {
    if ((*(result + 64) & 1) == 0)
    {
      v3 = *(result + 56) + *(result + 48);
      v4 = *(result + 16);
      v5 = *(result + 24);
      *(result + 48) = v5;
      *(result + 56) = v3;
      *(result + 32) = v4 + v5 - 1;
      *(result + 40) = v4;
      result = std::istream::read();
      if ((*(result + *(*result - 24) + 32) & 5) != 0)
      {
        v6 = *(*v1 + 8);
        *(v1 + 48) = v6;
        v7 = (*(v1 + 16) + v6);
        *(v1 + 32) = v7;
        *v7 = 0;
        *(v1 + 64) = 1;
      }
    }
  }

  else
  {
    *(result + 40) = v2 + 1;
  }

  return result;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::ParseStream<0u,rapidjson::UTF8<char>,rapidjson::BasicIStreamWrapper<std::istream>>(uint64_t a1, void *a2)
{
  v4 = (a1 + 40);
  v19 = *(a1 + 40);
  v20 = 0u;
  v21 = 0u;
  v22 = 256;
  v24 = 2;
  LODWORD(v23) = 0;
  *(&v23 + 1) = 0;
  while (1)
  {
    v5 = a2[5];
    v6 = *v5;
    if (v6 > 0x20)
    {
      goto LABEL_6;
    }

    if (((1 << v6) & 0x100002600) == 0)
    {
      break;
    }

    rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
  }

  if (!*v5)
  {
    v17 = 1;
LABEL_22:
    v18 = &v5[a2[7] - a2[2]];
    LODWORD(v23) = v17;
    *(&v23 + 1) = v18;
    goto LABEL_16;
  }

LABEL_6:
  rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<0u,rapidjson::BasicIStreamWrapper<std::istream>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(&v19, a2, a1);
  if (!v23)
  {
    while (1)
    {
      v5 = a2[5];
      v7 = *v5;
      if (v7 > 0x20 || ((1 << v7) & 0x100002600) == 0)
      {
        break;
      }

      rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
    }

    if (*v5 && v23 == 0)
    {
      v17 = 2;
      goto LABEL_22;
    }
  }

LABEL_16:
  *&v21 = *(&v20 + 1);
  v10 = v23;
  *(a1 + 88) = v23;
  if (!v10)
  {
    v11 = *(a1 + 64);
    v12 = (v11 - 24);
    *(a1 + 64) = v11 - 24;
    if (v11 - 24 != a1)
    {
      v13 = *(v11 - 2);
      *(v11 - 2) = 0;
      v14 = *v12;
      v15 = *(v11 - 8);
      *(a1 + 20) = *(v12 + 10);
      *(a1 + 16) = v15;
      *a1 = v14;
      *(a1 + 22) = v13;
    }
  }

  *(a1 + 64) = *(a1 + 56);
  rapidjson::internal::Stack<rapidjson::CrtAllocator>::ShrinkToFit(v4);
  rapidjson::internal::Stack<rapidjson::CrtAllocator>::Destroy(&v19);
  return a1;
}

uint64_t rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<0u,rapidjson::BasicIStreamWrapper<std::istream>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(uint64_t result, void *a2, uint64_t *a3)
{
  v5 = result;
  v6 = a2[5];
  v7 = *v6;
  if (v7 <= 0x6D)
  {
    if (v7 == 34)
    {

      return rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseString<0u,rapidjson::BasicIStreamWrapper<std::istream>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(result, a2, a3);
    }

    if (v7 != 91)
    {
      if (v7 == 102)
      {
        result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
        v8 = a2[5];
        if (*v8 == 97)
        {
          result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
          v8 = a2[5];
          if (*v8 == 108)
          {
            result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
            v8 = a2[5];
            if (*v8 == 115)
            {
              result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
              v8 = a2[5];
              if (*v8 == 101)
              {
                result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
                v9 = a3[8];
                if (a3[9] - v9 <= 23)
                {
                  result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5, 1);
                  v9 = a3[8];
                }

                a3[8] = v9 + 24;
                *(v9 + 8) = 0;
                *(v9 + 16) = 0;
                *v9 = 0;
                v10 = 9;
LABEL_55:
                *(v9 + 22) = v10;
                return result;
              }
            }
          }
        }

        goto LABEL_141;
      }

LABEL_30:
      v15 = a2[7];
      v16 = a2[2];
      if (v7 == 45)
      {
        result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
        v17 = a2[5];
        v18 = *v17;
      }

      else
      {
        v18 = *v6;
        v17 = a2[5];
      }

      v19 = v18 - 48;
      v69 = v15;
      v70 = v5;
      v68 = v16;
      if (v18 == 48)
      {
        result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
        v29 = 0;
        v23 = 0;
        v30 = 0;
        v71 = 0;
        v20 = *a2[5];
        v22 = 0.0;
        goto LABEL_89;
      }

      if ((v18 - 49) > 8)
      {
        v33 = &v17[a2[7] - a2[2]];
        v42 = 3;
        goto LABEL_135;
      }

      result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
      v20 = *a2[5];
      v21 = v20 - 48;
      v22 = 0.0;
      if (v7 == 45)
      {
        if (v21 <= 9)
        {
          v23 = 0;
          v24 = 214748364;
          while (1)
          {
            if (v19 > 0xCCCCCCB)
            {
              if (v19 != 214748364)
              {
                goto LABEL_140;
              }

              if (v20 > 0x38)
              {
                break;
              }
            }

            result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
            v19 = v20 + 10 * v19 - 48;
            ++v23;
            v20 = *a2[5];
            if (v20 - 48 >= 0xA)
            {
              goto LABEL_77;
            }
          }

          v20 = 57;
LABEL_70:
          v29 = v24;
          if (v7 == 45)
          {
            while (v29 <= 0xCCCCCCCCCCCCCCBLL || v20 <= 0x38 && v29 == 0xCCCCCCCCCCCCCCCLL)
            {
              result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
              v29 = (v20 & 0xF) + 10 * v29;
              ++v23;
              v20 = *a2[5];
              if (v20 - 48 >= 0xA)
              {
                goto LABEL_87;
              }
            }
          }

          else
          {
            while (v29 <= 0x1999999999999998 || v20 <= 0x35 && v29 == 0x1999999999999999)
            {
              result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
              v29 = (v20 & 0xF) + 10 * v29;
              ++v23;
              v20 = *a2[5];
              if (v20 - 48 >= 0xA)
              {
LABEL_87:
                v30 = 0;
                v22 = 0.0;
                goto LABEL_88;
              }
            }
          }

          v22 = v29;
          do
          {
            result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
            v22 = (v20 - 48) + v22 * 10.0;
            v20 = *a2[5];
          }

          while (v20 - 48 < 0xA);
          v30 = 1;
LABEL_88:
          v71 = 1;
          v19 = v24;
LABEL_89:
          if (v20 == 46)
          {
            result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
            v31 = a2[5];
            v20 = *v31;
            if (v20 - 58 <= 0xFFFFFFF5)
            {
              v33 = &v31[a2[7] - a2[2]];
              v42 = 14;
              goto LABEL_122;
            }

            v32 = 0;
            if ((v30 & 1) == 0)
            {
              if (!v71)
              {
                v29 = v19;
              }

              do
              {
                if (v20 > 0x39 || v29 >> 53)
                {
                  break;
                }

                result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
                v29 = v20 - 48 + 10 * v29;
                --v32;
                if (v29)
                {
                  ++v23;
                }

                v20 = *a2[5];
              }

              while (*a2[5] > 47);
              v22 = v29;
            }

            if (v20 - 48 <= 9)
            {
              do
              {
                result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
                if (v23 <= 16)
                {
                  v22 = (v20 - 48) + v22 * 10.0;
                  --v32;
                  if (v22 > 0.0)
                  {
                    ++v23;
                  }
                }

                v20 = *a2[5];
              }

              while (v20 - 48 < 0xA);
            }

            v30 = 1;
          }

          else
          {
            v32 = 0;
          }

          v33 = &v6[v69 - v68];
          if (v20 != 101 && v20 != 69)
          {
            if (!v30)
            {
              if (v71)
              {
                if (v7 == 45)
                {
                  result = rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Int64(a3, -v29);
                }

                else
                {
                  result = rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Uint64(a3, v29);
                }
              }

              else if (v7 == 45)
              {
                result = rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Int(a3, -v19);
              }

              else
              {
                result = rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Uint(a3, v19);
              }

              v5 = v70;
              if (result)
              {
                return result;
              }

              goto LABEL_222;
            }

            v43 = 0;
LABEL_127:
            v44 = v43 + v32;
            v5 = v70;
            if (v44 > -309)
            {
              if (v44 < 0)
              {
                v45 = v22 / rapidjson::internal::Pow10(int)::e[-v44];
              }

              else
              {
                v45 = v22 * rapidjson::internal::Pow10(int)::e[v44];
              }
            }

            else
            {
              v45 = 0.0;
              if (v44 < 0xFFFFFD98)
              {
                goto LABEL_136;
              }

              v45 = v22 / 1.0e308 / rapidjson::internal::Pow10(int)::e[-308 - v44];
            }

            if (v45 > 1.79769313e308)
            {
              v42 = 13;
              goto LABEL_135;
            }

LABEL_136:
            if (v7 == 45)
            {
              v45 = -v45;
            }

            result = rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Double(a3, v45);
            if (result)
            {
              return result;
            }

LABEL_222:
            v42 = 16;
            goto LABEL_135;
          }

          result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
          v34 = 0;
          v35 = v19;
          if (v71)
          {
            v35 = v29;
          }

          if (!v30)
          {
            v22 = v35;
          }

          v36 = a2[5];
          v37 = *v36;
          if (v37 != 43)
          {
            if (v37 != 45)
            {
              goto LABEL_113;
            }

            v34 = 1;
          }

          result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
          v36 = a2[5];
          v37 = *v36;
LABEL_113:
          v38 = v37 - 48;
          if ((v37 - 48) <= 9)
          {
            result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
            if (v34)
            {
              v39 = *a2[5];
              if ((v39 - 48) <= 9)
              {
                while (1)
                {
                  result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
                  v38 = v39 + 10 * v38 - 48;
                  v39 = *a2[5];
                  v40 = v39 - 48;
                  if (v38 > (v32 + 2147483639) / 10)
                  {
                    break;
                  }

                  if (v40 >= 0xA)
                  {
                    goto LABEL_124;
                  }
                }

                if (v40 <= 9)
                {
                  do
                  {
                    result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
                  }

                  while (*a2[5] - 48 < 0xA);
                }
              }
            }

            else
            {
              while (1)
              {
                v41 = *a2[5];
                if ((v41 - 48) > 9)
                {
                  break;
                }

                result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
                v38 = v41 + 10 * v38 - 48;
                if (v38 > 308 - v32)
                {
                  v42 = 13;
                  goto LABEL_122;
                }
              }
            }

LABEL_124:
            if (v34)
            {
              v43 = -v38;
            }

            else
            {
              v43 = v38;
            }

            goto LABEL_127;
          }

          v33 = &v36[a2[7] - a2[2]];
          v42 = 15;
LABEL_122:
          v5 = v70;
LABEL_135:
          *(v5 + 48) = v42;
          *(v5 + 56) = v33;
          return result;
        }
      }

      else if (v21 <= 9)
      {
        v23 = 0;
        v24 = 429496729;
        while (1)
        {
          if (v19 > 0x19999998)
          {
            if (v19 != 429496729)
            {
LABEL_140:
              v24 = v19;
              goto LABEL_70;
            }

            if (v20 > 0x35)
            {
              goto LABEL_70;
            }
          }

          result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
          v19 = v20 + 10 * v19 - 48;
          ++v23;
          v20 = *a2[5];
          if (v20 - 48 >= 0xA)
          {
LABEL_77:
            v29 = 0;
            goto LABEL_78;
          }
        }
      }

      v29 = 0;
      v23 = 0;
LABEL_78:
      v30 = 0;
      v71 = 0;
      goto LABEL_89;
    }

    rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
    result = rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::StartArray(a3);
    if (result)
    {
      while (1)
      {
        v25 = *a2[5];
        if (v25 > 0x20 || ((1 << v25) & 0x100002600) == 0)
        {
          break;
        }

        result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
      }

      if (!*(v5 + 48))
      {
        if (v25 == 93)
        {
          result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
          v27 = a3[8];
          v28 = 4;
          goto LABEL_62;
        }

        v61 = 0;
        while (1)
        {
          result = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<0u,rapidjson::BasicIStreamWrapper<std::istream>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(v5, a2, a3);
          if (*(v5 + 48))
          {
            break;
          }

          while (1)
          {
            v62 = a2[5];
            v63 = *v62;
            if (v63 > 0x20 || ((1 << v63) & 0x100002600) == 0)
            {
              break;
            }

            result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
          }

          if (*(v5 + 48))
          {
            break;
          }

          ++v61;
          if (v63 != 44)
          {
            if (v63 != 93)
            {
              v46 = &v62[a2[7] - a2[2]];
              v47 = 7;
              goto LABEL_142;
            }

            rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
            result = rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndArray(a3, v61);
            if (result)
            {
              return result;
            }

            goto LABEL_209;
          }

          do
          {
            result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
            v65 = *a2[5];
            v53 = v65 > 0x20;
            v66 = (1 << v65) & 0x100002600;
          }

          while (!v53 && v66 != 0);
          if (*(v5 + 48))
          {
            return result;
          }
        }
      }

      return result;
    }

LABEL_209:
    v46 = (a2[7] + a2[5] - a2[2]);
    v47 = 16;
    goto LABEL_142;
  }

  if (v7 != 123)
  {
    if (v7 == 116)
    {
      result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
      v8 = a2[5];
      if (*v8 == 114)
      {
        result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
        v8 = a2[5];
        if (*v8 == 117)
        {
          result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
          v8 = a2[5];
          if (*v8 == 101)
          {
            result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
            v9 = a3[8];
            if (a3[9] - v9 <= 23)
            {
              result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5, 1);
              v9 = a3[8];
            }

            a3[8] = v9 + 24;
            *(v9 + 8) = 0;
            *(v9 + 16) = 0;
            *v9 = 0;
            v10 = 10;
            goto LABEL_55;
          }
        }
      }

      goto LABEL_141;
    }

    if (v7 != 110)
    {
      goto LABEL_30;
    }

    result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
    v8 = a2[5];
    if (*v8 != 117 || (result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2), v8 = a2[5], *v8 != 108) || (result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2), v8 = a2[5], *v8 != 108))
    {
LABEL_141:
      v46 = &v8[a2[7] - a2[2]];
      v47 = 3;
LABEL_142:
      *(v5 + 48) = v47;
      *(v5 + 56) = v46;
      return result;
    }

    result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
    v11 = a3[8];
    if (a3[9] - v11 <= 23)
    {
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5, 1);
      v11 = a3[8];
    }

    a3[8] = (v11 + 3);
    *v11 = 0;
    v11[1] = 0;
    v11[2] = 0;
    return result;
  }

  rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
  result = rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::StartObject(a3);
  if (!result)
  {
    goto LABEL_209;
  }

  while (1)
  {
    v12 = a2[5];
    v13 = *v12;
    if (v13 > 0x20 || ((1 << v13) & 0x100002600) == 0)
    {
      break;
    }

    result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
  }

  if (!*(v5 + 48))
  {
    if (v13 == 125)
    {
      result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
      v27 = a3[8];
      v28 = 3;
LABEL_62:
      *(v27 - 2) = v28;
      *(v27 - 24) = 0;
      *(v27 - 16) = 0;
      return result;
    }

    if (v13 != 34)
    {
LABEL_180:
      v46 = &v12[a2[7] - a2[2]];
      v47 = 4;
      goto LABEL_142;
    }

    v48 = 0;
    while (1)
    {
      result = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseString<0u,rapidjson::BasicIStreamWrapper<std::istream>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(v5, a2, a3);
      if (*(v5 + 48))
      {
        break;
      }

      while (1)
      {
        v49 = a2[5];
        v50 = *v49;
        if (v50 > 0x20 || ((1 << v50) & 0x100002600) == 0)
        {
          break;
        }

        result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
      }

      if (*(v5 + 48))
      {
        break;
      }

      if (v50 != 58)
      {
        v46 = &v49[a2[7] - a2[2]];
        v47 = 5;
        goto LABEL_142;
      }

      do
      {
        result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
        v52 = *a2[5];
        v53 = v52 > 0x20;
        v54 = (1 << v52) & 0x100002600;
      }

      while (!v53 && v54 != 0);
      if (*(v5 + 48))
      {
        return result;
      }

      result = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<0u,rapidjson::BasicIStreamWrapper<std::istream>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(v5, a2, a3);
      if (*(v5 + 48))
      {
        return result;
      }

      while (1)
      {
        v56 = a2[5];
        v57 = *v56;
        if (v57 > 0x20 || ((1 << v57) & 0x100002600) == 0)
        {
          break;
        }

        result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
      }

      if (*(v5 + 48))
      {
        return result;
      }

      ++v48;
      if (v57 != 44)
      {
        if (v57 != 125)
        {
          v46 = &v56[a2[7] - a2[2]];
          v47 = 6;
          goto LABEL_142;
        }

        rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
        result = rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndObject(a3, v48);
        if (result)
        {
          return result;
        }

        goto LABEL_209;
      }

      do
      {
        result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
        v12 = a2[5];
        v59 = *v12;
      }

      while (v59 <= 0x20 && ((1 << v59) & 0x100002600) != 0);
      if (*(v5 + 48))
      {
        return result;
      }

      if (v59 != 34)
      {
        goto LABEL_180;
      }
    }
  }

  return result;
}

uint64_t rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseString<0u,rapidjson::BasicIStreamWrapper<std::istream>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(uint64_t a1, void *a2, void *a3)
{
  result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
  *v25 = a1;
  v26 = 0;
  while (1)
  {
    while (1)
    {
      v7 = a2[5];
      v8 = *v7;
      if (v8 != 92)
      {
        if (v8 == 34)
        {
          result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
          v17 = *v25;
          v18 = *(*v25 + 24);
          if ((*(*v25 + 32) - v18) <= 0)
          {
            result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v25, 1);
            v18 = *(v17 + 24);
          }

          *(v17 + 24) = v18 + 1;
          *v18 = 0;
          v19 = v26;
          v20 = ++v26;
          if (*(a1 + 48))
          {
            return result;
          }

          v21 = (*(*v25 + 24) - v20);
          *(*v25 + 24) = v21;
          result = rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::String(a3, v21, v19, 1);
          if (result)
          {
            return result;
          }

          v22 = (a2[7] + a2[5] - a2[2]);
          v23 = 16;
        }

        else
        {
          if (v8 > 0x1F)
          {
            goto LABEL_5;
          }

          v22 = &v7[a2[7] - a2[2]];
          if (*v7)
          {
            v23 = 12;
          }

          else
          {
            v23 = 11;
          }
        }

        *(a1 + 48) = v23;
        *(a1 + 56) = v22;
        return result;
      }

      v11 = a2[7];
      v12 = a2[2];
      result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
      v13 = *a2[5];
      LOBYTE(v8) = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseStringToStream<0u,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::BasicIStreamWrapper<std::istream>,rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char>>(rapidjson::BasicIStreamWrapper<std::istream> &,rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char> &)::escape[v13];
      if (!v8)
      {
        break;
      }

LABEL_5:
      result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
      v9 = *v25;
      v10 = *(*v25 + 24);
      if ((*(*v25 + 32) - v10) <= 0)
      {
        result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v25, 1);
        v10 = v9[3];
      }

      v9[3] = (v10 + 1);
      *v10 = v8;
      ++v26;
    }

    v14 = &v7[v11 - v12];
    if (v13 != 117)
    {
      v24 = 10;
      goto LABEL_30;
    }

    rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
    result = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseHex4<rapidjson::BasicIStreamWrapper<std::istream>>(a1, a2, v14);
    if (*(a1 + 48))
    {
      return result;
    }

    v15 = result;
    if (result >> 11 == 27)
    {
      break;
    }

LABEL_12:
    result = rapidjson::UTF8<char>::Encode<rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char>>(v25, v15);
  }

  if (result >> 10 <= 0x36 && *a2[5] == 92)
  {
    v16 = result;
    result = rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
    if (*a2[5] == 117)
    {
      rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
      result = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseHex4<rapidjson::BasicIStreamWrapper<std::istream>>(a1, a2, v14);
      if (*(a1 + 48))
      {
        return result;
      }

      if ((result - 57344) > 0xFFFFFBFF)
      {
        v15 = result + (v16 << 10) - 56613888;
        goto LABEL_12;
      }
    }
  }

  v24 = 9;
LABEL_30:
  *(a1 + 48) = v24;
  *(a1 + 56) = v14;
  return result;
}

uint64_t rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseHex4<rapidjson::BasicIStreamWrapper<std::istream>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v6) = 0;
  v7 = 4;
  while (1)
  {
    v8 = **(a2 + 40);
    if ((v8 - 48) >= 0xA)
    {
      break;
    }

    v9 = -48;
LABEL_8:
    v6 = (v8 + 16 * v6 + v9);
    rapidjson::BasicIStreamWrapper<std::istream>::Read(a2);
    if (!--v7)
    {
      return v6;
    }
  }

  if (**(a2 + 40) - 65 < 6)
  {
    v9 = -55;
    goto LABEL_8;
  }

  if (**(a2 + 40) - 97 < 6)
  {
    v9 = -87;
    goto LABEL_8;
  }

  v6 = 0;
  *(a1 + 48) = 8;
  *(a1 + 56) = a3;
  return v6;
}

_BYTE *rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Uint(uint64_t **a1, rapidjson::internal *a2)
{
  rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Prefix(a1);
  v5 = *a1;
  v6 = (*a1)[3];
  if ((*a1)[4] - v6 <= 9)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*a1, 10);
    v6 = *(v5 + 24);
  }

  *(v5 + 24) = v6 + 10;
  result = rapidjson::internal::u32toa(a2, v6, v4);
  (*a1)[3] = (*a1)[3] + result - v6 - 10;
  return result;
}

_BYTE *rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Int64(uint64_t **a1, int64_t a2)
{
  rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Prefix(a1);
  v5 = *a1;
  v6 = (*a1)[3];
  if ((*a1)[4] - v6 <= 20)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*a1, 21);
    v6 = *(v5 + 24);
  }

  *(v5 + 24) = v6 + 21;
  if (a2 < 0)
  {
    *v6 = 45;
    v7 = v6 + 1;
    a2 = -a2;
  }

  else
  {
    v7 = v6;
  }

  result = rapidjson::internal::u64toa(a2, v7, v4);
  (*a1)[3] = (*a1)[3] + result - v6 - 21;
  return result;
}

_BYTE *rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Uint64(uint64_t **a1, unint64_t a2)
{
  rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Prefix(a1);
  v5 = *a1;
  v6 = (*a1)[3];
  if ((*a1)[4] - v6 <= 19)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*a1, 20);
    v6 = *(v5 + 24);
  }

  *(v5 + 24) = v6 + 20;
  result = rapidjson::internal::u64toa(a2, v6, v4);
  (*a1)[3] = (*a1)[3] + result - v6 - 20;
  return result;
}

char *rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::Prefix(char *result)
{
  v1 = *(result + 4);
  if (v1 == *(result + 3))
  {
    result[60] = 1;
  }

  else
  {
    v2 = *(v1 - 16);
    if (v2)
    {
      v3 = *result;
      if (*(v1 - 8) == 1)
      {
        v4 = *(v3 + 24);
        if ((*(v3 + 32) - v4) <= 0)
        {
          result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*result, 1);
          v4 = *(v3 + 24);
        }

        *(v3 + 24) = v4 + 1;
        *v4 = 44;
      }

      else
      {
        if (v2)
        {
          v5 = 58;
        }

        else
        {
          v5 = 44;
        }

        v6 = *(v3 + 24);
        if ((*(v3 + 32) - v6) <= 0)
        {
          result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*result, 1);
          v6 = *(v3 + 24);
        }

        *(v3 + 24) = v6 + 1;
        *v6 = v5;
      }
    }

    ++*(v1 - 16);
  }

  return result;
}

uint64_t *rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteBool(uint64_t **a1, int a2)
{
  result = *a1;
  v4 = result[3];
  v5 = result[4] - v4;
  if (a2)
  {
    if (v5 <= 3)
    {
      rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(result, 4);
      result = *a1;
      v4 = (*a1)[3];
    }

    result[3] = (v4 + 1);
    *v4 = 116;
    v6 = 117;
    v7 = 114;
  }

  else
  {
    if (v5 <= 4)
    {
      rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(result, 5);
      result = *a1;
      v4 = (*a1)[3];
    }

    result[3] = (v4 + 1);
    *v4 = 102;
    v8 = (*a1)[3];
    (*a1)[3] = (v8 + 1);
    *v8 = 97;
    v6 = 115;
    v7 = 108;
  }

  v9 = (*a1)[3];
  (*a1)[3] = (v9 + 1);
  *v9 = v7;
  v10 = (*a1)[3];
  (*a1)[3] = (v10 + 1);
  *v10 = v6;
  v11 = (*a1)[3];
  (*a1)[3] = (v11 + 1);
  *v11 = 101;
  return result;
}

uint64_t *rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteString(uint64_t a1, int8x16_t *a2, unsigned int a3)
{
  result = *a1;
  v7 = 6 * a3 + 2;
  v8 = result[3];
  if (result[4] - v8 < v7)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(result, v7);
    result = *a1;
    v8 = *(*a1 + 24);
  }

  result[3] = (v8 + 1);
  v9 = a2->u64 + a3;
  *v8 = 34;
  v10.i64[0] = 0x2222222222222222;
  v10.i64[1] = 0x2222222222222222;
  v11.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
  v11.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
  v12.i64[0] = 0x2020202020202020;
  v12.i64[1] = 0x2020202020202020;
  for (i = a2; ; i = (i + 1))
  {
    v14 = i - a2;
    if (a3 < 0x10 || v14 >= a3)
    {
      if (a3 > 0xF)
      {
        break;
      }
    }

    else
    {
      v15 = (&i->u64[1] + 7) & 0xFFFFFFFFFFFFFFF0;
      if (v9 < v15)
      {
        goto LABEL_27;
      }

      while (1)
      {
        if (i == v15)
        {
          while (1)
          {
            if (i == (v9 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_25;
            }

            v19 = *i;
            v20 = vrev64q_s8(vorrq_s8(vorrq_s8(vceqq_s8(*i, v10), vceqq_s8(*i, v11)), vcgtq_u8(v12, *i)));
            if (v20.i64[0])
            {
              break;
            }

            if (v20.i64[1])
            {
              v21 = (__clz(v20.u64[1]) >> 3) | 8;
              v22 = *(*a1 + 24);
              *(*a1 + 24) = v22 + v21;
LABEL_22:
              result = 0;
              do
              {
                *(result + v22) = *(result + i);
                result = (result + 1);
              }

              while (v21 != result);
              goto LABEL_24;
            }

            v18 = *(*a1 + 24);
            result = v18[1].i64;
            *(*a1 + 24) = v18 + 1;
            *v18 = v19;
            ++i;
          }

          result = __clz(v20.u64[0]);
          v22 = *(*a1 + 24);
          *(*a1 + 24) = v22 + (result >> 3);
          if (!HIBYTE(v20.i64[0]))
          {
            v21 = result >> 3;
            goto LABEL_22;
          }

          v21 = 0;
LABEL_24:
          i = (i + v21);
          break;
        }

        v16 = i->i8[0];
        if (v16 < 32)
        {
          break;
        }

        if (v16 == 34)
        {
          break;
        }

        result = i->u8[0];
        if (result == 92)
        {
          break;
        }

        result = *a1;
        i = (i + 1);
        v17 = *(*a1 + 24);
        *(*a1 + 24) = v17 + 1;
        *v17 = v16;
      }

LABEL_25:
      v14 = i - a2;
    }

    if (v14 >= a3)
    {
      break;
    }

LABEL_27:
    v23 = i->u8[0];
    v24 = rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteString(char const*,unsigned int)::escape[v23];
    result = *(*a1 + 24);
    *(*a1 + 24) = result + 1;
    if (v24)
    {
      *result = 92;
      result = *a1;
      v25 = *(*a1 + 24);
      *(*a1 + 24) = v25 + 1;
      *v25 = v24;
      if (v24 == 117)
      {
        v26 = *(*a1 + 24);
        *(*a1 + 24) = v26 + 1;
        *v26 = 48;
        v27 = *(*a1 + 24);
        *(*a1 + 24) = v27 + 1;
        *v27 = 48;
        LOBYTE(v27) = rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteString(char const*,unsigned int)::hexDigits[v23 >> 4];
        v28 = *(*a1 + 24);
        *(*a1 + 24) = v28 + 1;
        *v28 = v27;
        v29 = rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,rapidjson::CrtAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator,0u>::WriteString(char const*,unsigned int)::hexDigits[v23 & 0xF];
        result = *(*a1 + 24);
        *(*a1 + 24) = result + 1;
        *result = v29;
      }
    }

    else
    {
      *result = v23;
    }
  }

  v30 = *(*a1 + 24);
  *(*a1 + 24) = v30 + 1;
  *v30 = 34;
  return result;
}

void *REMeshSmoothComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::MeshSmoothComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

uint64_t REMeshSmoothComponentSetAssignedMeshDeformation(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, &v6);
  v3 = *(a1 + 112);
  *(a1 + 112) = v6;
  v6 = v3;
  v4 = *(a1 + 128);
  *(a1 + 128) = v7;
  v7 = v4;
  re::AssetHandle::~AssetHandle(&v6);
  *(a1 + 48) = 0;
  ++*(a1 + 56);
  *(a1 + 88) = 0;
  ++*(a1 + 96);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMeshSmoothComponentSetIterations(void *a1, unint64_t a2, int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  result = re::initializeAttributes<re::ecs2::MeshSmoothAttributes,re::ecs2::MeshSmoothComponent>((a1 + 4), a1);
  if (result)
  {
    v7 = a1[6];
    if (v7)
    {
      if (v7 <= a2)
      {
        v11 = 0;
        memset(v20, 0, sizeof(v20));
        v8 = MEMORY[0x1E69E9C10];
        v12 = 136315906;
        v13 = "operator[]";
        v14 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v9 = 3;
        }

        else
        {
          v9 = 2;
        }

        v15 = 789;
        v16 = 2048;
        v17 = a2;
        v18 = 2048;
        v19 = v7;
        _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
        _os_crash_msg();
        __break(1u);
      }

      *(a1[8] + 4 * a2) = a3;

      return re::ecs2::Component::enqueueMarkDirty(a1);
    }
  }

  return result;
}

uint64_t re::initializeAttributes<re::ecs2::MeshSmoothAttributes,re::ecs2::MeshSmoothComponent>(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    v2 = *(a1 + 56) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    return 1;
  }

  v4 = a2[15];
  if (v4)
  {
    v5 = atomic_load((v4 + 896));
    if (v5 == 2)
    {
      v6 = *(a2[2] + 192);
      if (v6)
      {
        result = re::AssetHandle::loadedAsset<re::MeshAsset>((v6 + 32));
        if (!result)
        {
          return result;
        }

        v9 = result;
        v10 = re::AssetHandle::blockUntilLoaded<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>>((a2 + 14));
        *(a1 + 16) = 0;
        ++*(a1 + 24);
        *(a1 + 56) = 0;
        ++*(a1 + 64);
        if (*(v10 + 16))
        {
          v11 = v10;
          v12 = 0;
          do
          {
            re::MeshNameMap::meshInstancePartsForIdentifier(&v15, v9 + 640, (*(v11 + 32) + 40 * v12));
            if (v15)
            {
              for (i = 0; i != v15; ++i)
              {
                v14 = i;
                (*(*v17 + 16))(v17, &v14);
                v14 = i;
                (*(*v17 + 16))(v17, &v14);
                LODWORD(v14) = 10;
                re::DynamicArray<int>::add(a1, &v14);
                LODWORD(v14) = 1056964608;
                re::DynamicArray<float>::add((a1 + 40), &v14);
              }
            }

            re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v16);
            ++v12;
          }

          while (v12 < *(v11 + 16));
        }

        return 1;
      }
    }
  }

  return 0;
}

uint64_t REMeshSmoothComponentSetLambda(void *a1, unint64_t a2, float a3)
{
  v21 = *MEMORY[0x1E69E9840];
  result = re::initializeAttributes<re::ecs2::MeshSmoothAttributes,re::ecs2::MeshSmoothComponent>((a1 + 4), a1);
  if (result)
  {
    v7 = a1[11];
    if (v7)
    {
      if (v7 <= a2)
      {
        v11 = 0;
        memset(v20, 0, sizeof(v20));
        v8 = MEMORY[0x1E69E9C10];
        v12 = 136315906;
        v13 = "operator[]";
        v14 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v9 = 3;
        }

        else
        {
          v9 = 2;
        }

        v15 = 789;
        v16 = 2048;
        v17 = a2;
        v18 = 2048;
        v19 = v7;
        _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
        _os_crash_msg();
        __break(1u);
      }

      *(a1[13] + 4 * a2) = a3;

      return re::ecs2::Component::enqueueMarkDirty(a1);
    }
  }

  return result;
}

void *RERayTracedShadowReceiverComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::RayTracedShadowReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

uint64_t REComponentCreateHandle(uint64_t result)
{
  if (result)
  {
    return re::ecs2::HandleTable::handleIndexAndGeneration(re::ecs2::HandleTable::m_instance, result);
  }

  return result;
}

uint64_t REComponentFromHandle(unint64_t a1, uint64_t a2)
{
  Slot = re::ecs2::HandleTable::getSlot(re::ecs2::HandleTable::m_instance, a1);
  if (*(Slot + 8) != a2)
  {
    return 0;
  }

  v4 = Slot;
  re::ecs2::HandleTable::garbageCollectIncremental(re::ecs2::HandleTable::m_instance);
  if (*(*v4 + 16))
  {
    return *v4;
  }

  else
  {
    return 0;
  }
}

uint64_t REFrameBoundsGetOccupancyGrid@<X0>(char *__s1@<X3>, uint64_t a2@<X0>, unint64_t a3@<X4>, _OWORD *a4@<X5>, uint64_t a5@<X8>)
{
  v10 = strcmp(__s1, "EnvironmentColor");
  v11 = "ImmersiveEnvironmentPortal";
  if (v10)
  {
    v10 = strcmp(__s1, "EnvironmentDepth");
    if (v10)
    {
      v11 = "Camera";
    }
  }

  v12 = re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a2 + 64, &v22);
  if (v12)
  {
    if (*v12 <= a3)
    {
      re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, a3, *v12);
      result = _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v20, v21);
      __break(1u);
      return result;
    }

    v14 = &v12[10 * a3];
    v16 = *(v14 + 1);
    v15 = *(v14 + 2);
    v17 = *(v14 + 4);
    a4[2] = *(v14 + 3);
    a4[3] = v17;
    *a4 = v16;
    a4[1] = v15;
    *&v15 = v14[10];
    *&v18 = v15;
    *(&v18 + 1) = DWORD1(v15);
    *a5 = v18;
    *(a5 + 16) = 0x3F80000000000000;
  }

  else
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
  }

  result = v22;
  if (v22)
  {
    if (v23)
    {
      return (*(*v22 + 40))();
    }
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(&v9, a2);
  if (!*a1)
  {
    return 0;
  }

  v5 = *(*(a1 + 8) + 4 * (v4 % *(a1 + 24)));
  if (v5 == 0x7FFFFFFF)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  if (!re::DynamicString::operator==(v7 + 224 * v5 + 8, a2))
  {
    while (1)
    {
      v8 = *(v7 + 224 * v5);
      v5 = v8 & 0x7FFFFFFF;
      if ((v8 & 0x7FFFFFFF) == 0x7FFFFFFF)
      {
        break;
      }

      if (re::DynamicString::operator==(v7 + 224 * v5 + 8, a2))
      {
        return v7 + 224 * v5 + 40;
      }
    }

    return 0;
  }

  return v7 + 224 * v5 + 40;
}

uint64_t REFrameBoundsGetOccupancyGridCount(uint64_t a1, int a2, int a3, char *__s1)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = strcmp(__s1, "EnvironmentColor");
  v7 = "ImmersiveEnvironmentPortal";
  if (v6)
  {
    v6 = strcmp(__s1, "EnvironmentDepth");
    if (v6)
    {
      v7 = "Camera";
    }
  }

  v8 = re::HashTable<re::DynamicString,re::DynamicInlineArray<re::FixedOccupancyGrid,2ul>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 64, &v13);
  if (v8)
  {
    v9 = *v8;
  }

  else
  {
    v10 = *re::graphicsLogObjects(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (v14)
      {
        v11 = *&v15[7];
      }

      else
      {
        v11 = v15;
      }

      *buf = 136315138;
      v17 = v11;
      _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "Attempting to get occupancy count for camera named %s, but could not find any.", buf, 0xCu);
    }

    v9 = 0;
  }

  if (v13 && (v14 & 1) != 0)
  {
    (*(*v13 + 40))();
  }

  return v9;
}

void setEntityCharacterSkeletalPoseDefinition(re::StringID *a1, uint64_t a2, uint64_t a3, char *a4, int a5)
{
  v127 = *MEMORY[0x1E69E9840];
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  v10 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
  if (!v10)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v41 = CoreRELog::log;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v42 = "Created entity character does not have a corresponding mesh.";
LABEL_42:
      _os_log_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_DEFAULT, v42, buf, 2u);
    }

LABEL_43:

    return;
  }

  v11 = *(v10 + 32);
  REAssetHandleLoadNow(v11);
  if (v12)
  {
    v13 = *(v12 + 1248);
    if (v13)
    {
      v110 = a1;
      v111 = a5;
      v14 = 0;
      *&v115 = &v120;
      v109 = &v117;
      *&v114 = &v121;
      v108 = &v118;
      v15 = -1;
      do
      {
        v16 = v15;
        v15 = v14;
        if (v16 != -1)
        {
          SkeletonJointCount = REMeshAssetGetSkeletonJointCount(v11, v14);
          if (SkeletonJointCount != REMeshAssetGetSkeletonJointCount(v11, v16))
          {
            if (CoreRELog::onceToken != -1)
            {
              dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
            }

            v41 = CoreRELog::log;
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v42 = "Created entity character contains multiple skeletons.";
              goto LABEL_42;
            }

            goto LABEL_43;
          }

          if (SkeletonJointCount)
          {
            v18 = 0;
            while (1)
            {
              SkeletonJointName = REMeshAssetGetSkeletonJointName(v11, v16, v18);
              v20 = REMeshAssetGetSkeletonJointName(v11, v14, v18);
              if (strcmp(SkeletonJointName, v20))
              {
                break;
              }

              if (SkeletonJointCount == ++v18)
              {
                goto LABEL_13;
              }
            }

            if (CoreRELog::onceToken != -1)
            {
              dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
            }

            v41 = CoreRELog::log;
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v42 = "Created entity character contains multiple skeletons.";
              goto LABEL_42;
            }

            goto LABEL_43;
          }

LABEL_13:
          v15 = v16;
        }

        ++v14;
      }

      while (v14 != v13);
      v21 = v111;
      if (v15 == -1)
      {
        return;
      }

      v22 = REMeshAssetGetSkeletonJointCount(v11, v15);
      if (v22)
      {
        v23 = v22;
        v104 = &v102;
        v24 = 8 * v22;
        MEMORY[0x1EEE9AC00](v22);
        v25 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
        if (v24 >= 0x200)
        {
          v26 = 512;
        }

        else
        {
          v26 = v24;
        }

        bzero(&v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
        for (i = 0; i != v23; ++i)
        {
          v28 = REMeshAssetGetSkeletonJointName(v11, v15, i);
          *&v25[8 * i] = v28;
        }

        if (a3 && a4)
        {
          v107 = v23;
          *&v113 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
          MEMORY[0x1EEE9AC00](v28);
          v30 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
          v31 = 0;
          v106 = v30;
          while (2)
          {
            v103 = v31;
            v32 = *&a4[8 * v31];
            v33 = strlen(v32);
            v34 = 0;
            v35 = v33 + 1;
            *&v112 = ~v33;
            v105 = -v33;
            while (1)
            {
              v36 = *(v113 + 8 * v34);
              v37 = strlen(v36);
              v38 = strcmp(v32, v36);
              if (!v38)
              {
                break;
              }

              if (v35 < v37 && v36[v37 + v112] == 47)
              {
                v38 = strcmp(v32, &v36[v37 + v105]);
                if (!v38)
                {
                  break;
                }
              }

              if (v107 == ++v34)
              {
                if (CoreRELog::onceToken != -1)
                {
                  dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
                }

                v81 = CoreRELog::log;
                if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315138;
                  *&buf[4] = v32;
                  _os_log_error_impl(&dword_1E1C61000, v81, OS_LOG_TYPE_ERROR, "Created entity character does not contain supplied joint name: %s.", buf, 0xCu);
                }

                return;
              }
            }

            v39 = v106;
            v40 = v103;
            *&v106[8 * v103] = v34;
            v31 = v40 + 1;
            if (v31 != a3)
            {
              continue;
            }

            break;
          }

          v25 = a4;
          v21 = v111;
        }

        else
        {
          MEMORY[0x1EEE9AC00](v28);
          v39 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
          v43 = 0;
          v44 = xmmword_1E3049620;
          v45 = vdupq_n_s64(v23 - 1);
          v46 = vdupq_n_s64(2uLL);
          do
          {
            v47 = vmovn_s64(vcgeq_u64(v45, v44));
            if (v47.i8[0])
            {
              *&v39[8 * v43] = v43;
            }

            if (v47.i8[4])
            {
              *&v39[8 * v43 + 8] = v43 + 1;
            }

            v43 += 2;
            v44 = vaddq_s64(v44, v46);
          }

          while (((v23 + 1) & 0xFFFFFFFFFFFFFFFELL) != v43);
        }

        v119 = 0;
        v120 = 0;
        v121 = 0;
        MEMORY[0x1EEE9AC00](v38);
        v49 = &v102 - 2 * v48;
        v117 = 0;
        v116 = 0;
        v118 = 0;
        MEMORY[0x1EEE9AC00](v50);
        v52 = v51;
        v53 = &v102 - 8 * v51;
        if (v21)
        {
          v106 = v39;
          v54 = 0;
          v107 = v51;
          do
          {
            v55 = v53;
            v56 = *&v106[8 * v54];
            SkeletonBindPoseTransform = REMeshAssetGetSkeletonBindPoseTransform(v11, v15, v56);
            *&v59 = RESRTMatrix(*&SkeletonBindPoseTransform, v58);
            v115 = v59;
            v114 = v60;
            v113 = v61;
            v112 = v62;
            v63 = v11;
            v64 = v15;
            for (j = v56; ; j = SkeletonJointParent)
            {
              SkeletonJointParent = REMeshAssetGetSkeletonJointParent(v63, v64, j);
              if (SkeletonJointParent == -1)
              {
                break;
              }

              v67 = REMeshAssetGetSkeletonBindPoseTransform(v11, v15, SkeletonJointParent);
              *v69.i64 = RESRTMatrix(*&v67, v68);
              v73 = 0;
              v122[0] = v115;
              v122[1] = v114;
              v122[2] = v113;
              v122[3] = v112;
              *buf = 0u;
              v124 = 0u;
              v125 = 0u;
              v126 = 0u;
              do
              {
                *&buf[v73 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v69, COERCE_FLOAT(v122[v73])), v70, *&v122[v73], 1), v71, v122[v73], 2), v72, v122[v73], 3);
                ++v73;
              }

              while (v73 != 4);
              v115 = *buf;
              v114 = v124;
              v113 = v125;
              v112 = v126;
              v63 = v11;
              v64 = v15;
            }

            v53 = v55;
            v74 = &v55[8 * v54];
            v75 = v114;
            *v74 = v115;
            *(v74 + 1) = v75;
            v76 = v112;
            *(v74 + 2) = v113;
            *(v74 + 3) = v76;
            v54 = (v54 + 1);
          }

          while (v54 != v107);
          v77 = 0;
          v116 = v107;
          v78 = 1;
          v79 = v109;
          v80 = v108;
        }

        else
        {
          v82 = 0;
          v83 = v49 + 4;
          do
          {
            v84 = REMeshAssetGetSkeletonBindPoseTransform(v11, v15, *&v39[8 * v82]);
            *(v83 - 6) = v85;
            *(v83 - 4) = v84;
            *(v83 - 1) = v86;
            v87 = v83 + 1;
            *v83 = v88;
            v83 += 6;
            v82 = (v82 + 1);
            *v87 = v89;
          }

          while (v52 != v82);
          v78 = 0;
          v119 = v52;
          v77 = 1;
          v79 = v115;
          v80 = v114;
          v53 = v49;
        }

        *v79 = v25;
        *v80 = v53;
        if (v90)
        {
          v91 = *(v90 + 608);
        }

        else
        {
          v91 = 0;
        }

        MEMORY[0x1EEE9AC00](v90);
        v93 = &v102 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v93, v92);
        if (v91)
        {
          v94 = 0;
          v95 = v93 + 36;
          do
          {
            *(v95 - 36) = 2;
            if (v96)
            {
              v97 = *(v96 + 8);
            }

            else
            {
              v97 = 0;
            }

            *(v95 - 7) = v97;
            *(v95 - 4) = v111;
            *v95 = 0;
            v95 += 10;
            ++v94;
          }

          while (v91 != v94);
        }

        v98 = re::ServiceLocator::serviceOrNull<re::AssetService>(v110);
        AssetWithDefinitions = RESkeletalPoseDefinitionAssetCreateAssetWithDefinitionsEx(v98, v77, &v119, v78, &v116, v91, v93);
        if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
        {
          dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
        }

        v100 = v111;
        v101 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        RESkeletalPoseComponentSetSkeletalPoseDefinition(v101, AssetWithDefinitions);
        if (v100)
        {
          REEntityCharacterSetSkeletalPoseModelSpace(a2, v118);
        }

        else
        {
          REEntityCharacterSetSkeletalPoseLocalSpace(a2, v121);
        }

        return;
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v41 = CoreRELog::log;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v42 = "Created entity character does not contain any joints.";
        goto LABEL_42;
      }

      goto LABEL_43;
    }
  }
}

uint64_t REEntityCharacterCreate(re::StringID *a1, const __CFURL *a2, unsigned __int8 *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = re::ServiceLocator::serviceOrNull<re::AssetService>(a1);
  v7 = RESceneImportOperationCreateWithURL(a2, a1);
  v8 = v7;
  if (!*(v7 + 6))
  {
    *(v7 + 192) = 1;
    *(v7 + 78) = 0;
  }

  cf = 0;
  if ((RESceneImportOperationRun(v7, &cf) & 1) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v22 = CFURLGetString(a2);
      CStringPtr = CFStringGetCStringPtr(v22, 0x8000100u);
      *buf = 136315138;
      v29 = CStringPtr;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Could not load resource: %s.", buf, 0xCu);
    }

    if (cf)
    {
      v12 = [cf localizedDescription];
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v13 = CoreRELog::log;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v24 = [v12 cStringUsingEncoding:1];
        *buf = 136315138;
        v29 = v24;
        _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Resource load error: %s.", buf, 0xCu);
      }

      CFRelease(cf);
    }

    return 0;
  }

  v9 = RESceneCreate("REEntityCharacterCreateInScene - Temporary Scene");
  if (*(v8 + 6) == 3 && v8[84])
  {
    v10 = *(v8[86] + 12);
  }

  else
  {
    v10 = 0;
  }

  v14 = (v10 + 8);

  if ((RESceneLoadFromAsset(v9, v6, v10) & 1) == 0)
  {

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v17 = CoreRELog::log;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v18 = CFURLGetString(a2);
    v19 = CFStringGetCStringPtr(v18, 0x8000100u);
    *buf = 136315138;
    v29 = v19;
    v20 = "Could create scene for resource: %s.";
    goto LABEL_34;
  }

  if (*(v9 + 16) != 1)
  {

    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v17 = CoreRELog::log;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v25 = CFURLGetString(a2);
    v26 = CFStringGetCStringPtr(v25, 0x8000100u);
    *buf = 136315138;
    v29 = v26;
    v20 = "Could not load a single entity from the resource: %s.";
LABEL_34:
    _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);
LABEL_30:

    return 0;
  }

  v15 = **(v9 + 18);
  v16 = (v15 + 8);
  RESceneRemoveEntity(v9, v15);

  if (v15)
  {
    setEntityCharacterSkeletalPoseDefinition(a1, v15, *(a3 + 1), *(a3 + 2), *a3);
  }

  return v15;
}

uint64_t REEntityCharacterAddToScene(uint64_t a1, re::StringID *a2, const __CFURL *a3, unsigned __int8 *a4)
{
  v5 = REEntityCharacterCreate(a2, a3, a4);
  RESceneAddEntity(a1, v5);

  return v5;
}

uint64_t REEntityCharacterGetJointCount(uint64_t a1)
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  v2 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v8 = 0;
    v5 = "No skeleton found for entity.";
    v6 = &v8;
    goto LABEL_21;
  }

  if (*(v2 + 72) == 1)
  {

    return RESkeletalPoseComponentGetJointCount(v2, 0);
  }

  if (*(v2 + 112) != 1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v7 = 0;
    v5 = "Cannot get joint count for non-character entity.";
    v6 = &v7;
LABEL_21:
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, v5, v6, 2u);
LABEL_19:

    return 0;
  }

  return RESkeletalPoseComponentGetModelSpaceJointCount(v2, 0);
}

const char *REEntityCharacterGetJointName(uint64_t a1, unint64_t a2)
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  v4 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v4)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v7 = CoreRELog::log;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v12 = 0;
    v8 = "No skeleton found for entity.";
    v9 = &v12;
    goto LABEL_30;
  }

  v5 = *(v4 + 32);
  if (!v5)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v7 = CoreRELog::log;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v8 = "Skeletal pose has not been defined, not a proper entity character.";
    v9 = buf;
    goto LABEL_30;
  }

  if (!REAssetHandleIsLoaded(*(v4 + 32)))
  {
    return 0;
  }

  if (RESkeletalPoseDefinitionAssetGetPoseCount(v5) == 1)
  {
    if (RESkeletalPoseDefinitionAssetGetJointCount(v5, 0) > a2)
    {

      return RESkeletalPoseDefinitionAssetGetJointName(v5, 0, a2);
    }

    return 0;
  }

  if (RESkeletalPoseDefinitionAssetGetModelSpacePoseCount(v5) != 1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v7 = CoreRELog::log;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v10 = 0;
    v8 = "Cannot get joint name for non-character entity.";
    v9 = &v10;
LABEL_30:
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
LABEL_18:

    return 0;
  }

  if (RESkeletalPoseDefinitionAssetGetModelSpaceJointCount(v5, 0) <= a2)
  {
    return 0;
  }

  return RESkeletalPoseDefinitionAssetGetModelSpaceJointName(v5, 0, a2);
}

uint64_t REEntityCharacterGetSkeletalPoseLocalSpace(uint64_t a1, void *a2)
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  v4 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v4)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v7 = CoreRELog::log;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v12 = 0;
    v8 = "No skeleton found for entity.";
    v9 = &v12;
    goto LABEL_16;
  }

  if (*(v4 + 9) != 1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v7 = CoreRELog::log;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v11 = 0;
    v8 = "Cannot set local space transforms for non-character entity.";
    v9 = &v11;
LABEL_16:
    _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
LABEL_13:

    return 0;
  }

  v5 = 1;
  v6 = re::ecs2::SkeletalPoseComponent::skeletalPose(v4, 0, 1);
  memcpy(a2, *(v6 + 32), 48 * *(v6 + 24));
  return v5;
}

uint64_t REEntityCharacterGetSkeletalPoseModelSpace(uint64_t a1, void *a2)
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  v4 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v4)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v10 = 0;
    v7 = "No skeleton found for entity.";
    v8 = &v10;
    goto LABEL_15;
  }

  if (*(v4 + 112) == 1)
  {
    RESkeletalPoseComponentGetModelSpaceJointTransforms(v4, 0, a2);
    return 1;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v6 = CoreRELog::log;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = 0;
    v7 = "Cannot set model space transforms for non-character entity.";
    v8 = &v9;
LABEL_15:
    _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
  }

LABEL_13:

  return 0;
}

uint64_t REEntityCharacterSetSkeletalPoseLocalSpace(uint64_t a1, uint64_t a2)
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  v4 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v4)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v10 = 0;
    v7 = "No skeleton found for entity.";
    v8 = &v10;
    goto LABEL_15;
  }

  if (*(v4 + 72) == 1)
  {
    RESkeletalPoseComponentSetJointTransforms(v4, 0, a2);
    return 1;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v6 = CoreRELog::log;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = 0;
    v7 = "Cannot set local space transforms for non-character entity.";
    v8 = &v9;
LABEL_15:
    _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
  }

LABEL_13:

  return 0;
}

uint64_t REEntityCharacterSetSkeletalPoseLocalRotations(uint64_t a1, uint64_t a2)
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  v4 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v4)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v10 = 0;
    v7 = "No skeleton found for entity.";
    v8 = &v10;
    goto LABEL_15;
  }

  if (*(v4 + 72) == 1)
  {
    RESkeletalPoseComponentSetJointRotations(v4, 0, a2);
    return 1;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v6 = CoreRELog::log;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = 0;
    v7 = "Cannot set local space transforms for non-character entity.";
    v8 = &v9;
LABEL_15:
    _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
  }

LABEL_13:

  return 0;
}

uint64_t REEntityCharacterSetSkeletalPoseJointLocalSpace(uint64_t a1, unint64_t a2, __n128 a3, __n128 a4, __n128 a5)
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  v7 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v7)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v16 = 0;
    v10 = "No skeleton found for entity.";
    v11 = &v16;
    goto LABEL_15;
  }

  if (*(v7 + 72) == 1)
  {
    RESkeletalPoseComponentSetJointTransform(v7, 0, a2, a3, a4, a5);
    return 1;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v9 = CoreRELog::log;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v10 = "Cannot set local space transforms for non-character entity.";
    v11 = buf;
LABEL_15:
    _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, v10, v11, 2u);
  }

LABEL_13:

  return 0;
}

uint64_t REEntityCharacterSetSkeletalPoseModelSpace(uint64_t a1, uint64_t a2)
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  v4 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v4)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v10 = 0;
    v7 = "No skeleton found for entity.";
    v8 = &v10;
    goto LABEL_15;
  }

  if (*(v4 + 112) == 1)
  {
    RESkeletalPoseComponentSetModelSpaceJointTransforms(v4, 0, a2);
    return 1;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v6 = CoreRELog::log;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = 0;
    v7 = "Cannot set model space transforms for non-character entity.";
    v8 = &v9;
LABEL_15:
    _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
  }

LABEL_13:

  return 0;
}

uint64_t REEntityCharacterSetSkeletalPoseJointModelSpace(uint64_t a1, unint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  v8 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v8)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v18 = 0;
    v11 = "No skeleton found for entity.";
    v12 = &v18;
    goto LABEL_15;
  }

  if (*(v8 + 112) == 1)
  {
    RESkeletalPoseComponentSetModelSpaceJointTransform(v8, 0, a2, a3, a4, a5, a6);
    return 1;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v10 = CoreRELog::log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v11 = "Cannot set model space transforms for non-character entity.";
    v12 = buf;
LABEL_15:
    _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, v11, v12, 2u);
  }

LABEL_13:

  return 0;
}

void *RESpatialMediaStatusComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

void RESpatialMediaStatusComponentPublishUpdatesInApp(uint64_t a1, uint64_t a2)
{
  v2 = re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a2);

  re::ecs2::SpatialMediaStatusComponent::publishUpdatesInApp(v2);
}

uint64_t re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = &unk_1EE187000;
    if ((*(*a1 + 40))(a1, a2) == re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      return v2;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) component must not be null.", "component", "safeCast", 97);
    _os_crash("assertion failure: (component) component must not be null.");
    __break(1u);
  }

  (*(*v2 + 40))(v2);
  v5 = *(v3[433] + 32);
  v6 = (*(*v2 + 40))(v2);
  re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Component is wrong type. Expected type: %s, but got: %s", "&reinterpret_cast<Derived *>(component)->componentType() == &Derived::classComponentType()", "safeCast", 101, v5, *(v6 + 32));
  result = _os_crash("assertion failure: (&reinterpret_cast<Derived *>(component)->componentType() == &Derived::classComponentType()) Component is wrong type. Expected type: %s, but got: %s", v8, v9);
  __break(1u);
  return result;
}

uint64_t REEntityCreateRenderFrameWorkloadPatch(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    v7 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13[0]) = 0;
      v8 = "Failed to create transform patch. Not yet implemented.";
LABEL_11:
      v10 = v7;
      v11 = 2;
      goto LABEL_12;
    }

    return 0;
  }

  if (a2)
  {
    v9 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13[0] = 67109120;
      v13[1] = a2;
      v8 = "Failed to create patch for unexpected patch type '%d'.";
      v10 = v9;
      v11 = 8;
LABEL_12:
      _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, v8, v13, v11);
      return 0;
    }

    return 0;
  }

  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v3)
  {
    v7 = *re::graphicsLogObjects(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13[0]) = 0;
      v8 = "Failed to create camera patch for entity with no CameraViewDescriptorsComponent.";
      goto LABEL_11;
    }

    return 0;
  }

  v4 = v3;
  v5 = re::globalAllocators(v3);
  v6 = (*(*v5[2] + 32))(v5[2], 400, 16);
  ArcSharedObject::ArcSharedObject(v6, 0);
  *(v6 + 24) = 0;
  *(v6 + 28) = 0;
  *v6 = &unk_1F5D04540;
  *(v6 + 32) = 0;
  *(v6 + 112) = 0;
  *(v6 + 192) = 0;
  *(v6 + 288) = 0;
  *(v6 + 384) = 0;
  objc_storeWeak(v4 + 4, (v6 + 8));
  return v6;
}

uint64_t RERenderFrameWorkloadPatchGetComponentPatch(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    return 0;
  }

  v3 = a1;
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  if (re::ecs2::ComponentImpl<re::ecs2::CustomMatrixCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType != a2)
  {
    return 0;
  }

  return v3;
}

void RETransformComponentPatchSetWorldMatrix4x4F(__n128 *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  if (a1[1].n128_u32[2])
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "RETransformComponentPatchSetWorldMatrix4x4F presently only supports camera patches.", v6, 2u);
    }
  }

  else
  {
    if ((a1[2].n128_u8[0] & 1) == 0)
    {
      a1[2].n128_u8[0] = 1;
    }

    a1[3] = a2;
    a1[4] = a3;
    a1[5] = a4;
    a1[6] = a5;
  }
}

void RETransformComponentPatchSetEnvironmentWorldMatrix4x4F(__n128 *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  if (a1[1].n128_u32[2])
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "RETransformComponentPatchSetEnvironmentWorldMatrix4x4F presently only supports camera patches.", v6, 2u);
    }
  }

  else
  {
    if ((a1[7].n128_u8[0] & 1) == 0)
    {
      a1[7].n128_u8[0] = 1;
    }

    a1[8] = a2;
    a1[9] = a3;
    a1[10] = a4;
    a1[11] = a5;
  }
}

uint64_t RECameraViewDescriptorsComponentPatchSetSkipEnvironmentRender(uint64_t result, char a2)
{
  if ((*(result + 384) & 1) == 0)
  {
    *(result + 384) = 1;
  }

  *(result + 385) = a2;
  return result;
}

uint64_t REShadowScopeComponentSetMode(uint64_t this, int a2)
{
  if (*(this + 32) != a2)
  {
    *(this + 32) = a2;
    return re::ecs2::Component::enqueueMarkDirty(this);
  }

  return this;
}

uint64_t REShadowScopeComponentSetDirection(uint64_t this, unsigned int a2, float32x4_t a3)
{
  if (a2 <= 1)
  {
    v3 = vceqq_f32(*(this + 48 + 16 * a2), a3);
    v3.i32[3] = v3.i32[2];
    if ((vminvq_u32(v3) & 0x80000000) == 0)
    {
      *(this + 48 + 16 * a2) = a3;
      return re::ecs2::Component::enqueueMarkDirty(this);
    }
  }

  return this;
}

void *REDynamicTextComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::DynamicTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

__n128 *REDynamicTextComponentSetColor(__n128 *result, __n128 a2)
{
  result[6] = a2;
  result[7].n128_u8[0] = 0;
  return result;
}

__n128 *REDynamicTextComponentSetColorGamut4F(__n128 *result, unsigned __int8 a2, __n128 a3)
{
  result[6] = a3;
  result[7].n128_u8[0] = a2;
  return result;
}

float32x4_t REDynamicTextComponentGetColor(int32x2_t *a1)
{
  *result.f32 = a1[12];
  v1 = HIDWORD(*&a1[13]);
  v2 = a1[13];
  v3 = a1[14].u8[0];
  *&result.u32[2] = vzip1_s32(v2, v1);
  if (v3)
  {
    v5 = result;
    re::ColorHelpers::computeGamutTransformMatrix(v3, 0, v6);
    result = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v6[0], v5.f32[0]), v6[1], *v5.f32, 1), v6[2], v5, 2);
    result.i32[3] = 0;
    result.i64[0] = vmaxnmq_f32(result, 0).u64[0];
    result.i32[3] = v5.i32[3];
  }

  return result;
}

__n128 REDynamicTextComponentGetColorGamut4F(int32x2_t *a1, __n128 *a2, __int8 *a3)
{
  result.n128_u64[0] = a1[12];
  v3 = a1[14].i8[0];
  *&result.n128_i8[8] = vzip1_s32(a1[13], HIDWORD(*&a1[13]));
  *a2 = result;
  *a3 = v3;
  return result;
}

double REDynamicTextComponentComputeObjectSpaceSize(re::ecs2::DynamicTextComponent *a1)
{
  v2 = *(a1 + 2);
  do
  {
    v3 = v2;
    v2 = *(v2 + 32);
  }

  while (v2);
  v4 = *(v3 + 24);
  if (!v4)
  {
    return 0.0;
  }

  v5 = (*(**(v4 + 56) + 32))(*(v4 + 56));
  v6 = re::ServiceLocator::service<re::RenderManager>(v5);
  return COERCE_DOUBLE(re::ecs2::DynamicTextComponent::computeObjectSpaceSize(a1, *(v6 + 8)));
}

re::DynamicString *REDynamicTextComponentSetText(uint64_t a1, char *__s)
{
  v4[0] = __s;
  v4[1] = strlen(__s);
  return re::DynamicString::operator=((a1 + 32), v4);
}

uint64_t REDynamicTextComponentGetText(uint64_t a1)
{
  if (*(a1 + 40))
  {
    return *(a1 + 48);
  }

  else
  {
    return a1 + 41;
  }
}

void REDynamicTextComponentSetFont(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, &v5);
  v3 = *(a1 + 72);
  *(a1 + 72) = v5;
  v5 = v3;
  v4 = *(a1 + 88);
  *(a1 + 88) = v6;
  v6 = v4;
  re::AssetHandle::~AssetHandle(&v5);
}

void *REAnchoringComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::AnchoringComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t anonymous namespace::convert(uint64_t a1)
{
  if ((*(*a1 + 40))(a1) == re::ecs2::ComponentImpl<re::ecs2::AnchoringComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
  {
    return a1;
  }

  (*(*a1 + 40))(a1);
  v3 = (*(*a1 + 40))(a1);
  re::internal::assertLog(5, v4, "assertion failure: '%s' (%s:line %i) component must be of type 'Anchoring', got '%s'", "&baseComponent->componentType() == &AnchoringComponent::classComponentType()", "convert", 112, *(v3 + 32));
  result = _os_crash("assertion failure: (&baseComponent->componentType() == &AnchoringComponent::classComponentType()) component must be of type 'Anchoring', got '%s'", v5);
  __break(1u);
  return result;
}

{
  if ((*(*a1 + 40))(a1) == re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
  {
    return a1;
  }

  (*(*a1 + 40))(a1);
  v3 = (*(*a1 + 40))(a1);
  re::internal::assertLog(5, v4, "assertion failure: '%s' (%s:line %i) component must be of type 'Anchor', got '%s'", "&baseComponent->componentType() == &AnchorComponent::classComponentType()", "convert", 17, *(v3 + 32));
  result = _os_crash("assertion failure: (&baseComponent->componentType() == &AnchorComponent::classComponentType()) component must be of type 'Anchor', got '%s'", v5);
  __break(1u);
  return result;
}

uint64_t REAnchoringComponentSetDescriptorType(uint64_t a1, int a2)
{
  if (*(result + 32) != a2)
  {
    *(result + 32) = a2;

    return re::ecs2::Component::enqueueMarkDirty(result);
  }

  return result;
}

void REAnchoringComponentSetDescriptorTransform(float32x4_t *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  *&v9[32] = a4;
  *&v9[48] = a5;
  *v9 = a2;
  *&v9[16] = a3;
  v7 = *v9;
  if (vmaxvq_u8(vmvnq_s8(vuzp1q_s8(vuzp1q_s16(vceqq_f32(*v9, *v9), vceqq_f32(*&v9[16], *&v9[16])), vuzp1q_s16(vceqq_f32(v7.columns[2], v7.columns[2]), vceqq_f32(*&v9[48], *&v9[48]))))))
  {
    goto LABEL_11;
  }

  v11 = __invert_f4(v7);
  if (vmaxvq_u8(vmvnq_s8(vuzp1q_s8(vuzp1q_s16(vceqq_f32(v11.columns[0], v11.columns[0]), vceqq_f32(v11.columns[1], v11.columns[1])), vuzp1q_s16(vceqq_f32(v11.columns[2], v11.columns[2]), vceqq_f32(v11.columns[3], v11.columns[3]))))))
  {
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) World AnchoringComponent Transform is invalid", "!inverted.containsNaN()", "REAnchoringComponentSetDescriptorTransform", 210);
    _os_crash("assertion failure: (!inverted.containsNaN()) World AnchoringComponent Transform is invalid");
    __break(1u);
LABEL_11:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) World AnchoringComponent Transform cannot contain NaN", "!convertedValue.containsNaN()", "REAnchoringComponentSetDescriptorTransform", 208);
    _os_crash("assertion failure: (!convertedValue.containsNaN()) World AnchoringComponent Transform cannot contain NaN");
    __break(1u);
    return;
  }

  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(a1[4], *&v9[16]), vceqq_f32(a1[3], *v9)), vandq_s8(vceqq_f32(a1[5], *&v9[32]), vceqq_f32(a1[6], *&v9[48])))) & 0x80000000) == 0)
  {
    a1[3] = *v9;
    a1[4] = *&v9[16];
    a1[5] = *&v9[32];
    a1[6] = *&v9[48];
    if (a1[29].i8[0] == 1)
    {
      a1[29].i8[0] = 0;
    }

    re::ecs2::Component::enqueueMarkDirty(a1);
  }
}

uint64_t REAnchoringComponentSetDescriptorAnchorIdentifier(uint64_t a1, const unsigned __int8 *a2)
{
  result = uuid_compare(a2, (v4 + 112));
  if (result)
  {
    *(a1 + 112) = *a2;

    return re::ecs2::Component::enqueueMarkDirty(a1);
  }

  return result;
}

uint64_t REAnchoringComponentSetDescriptorAlignment(uint64_t a1, int a2)
{
  if (*(result + 128) != a2)
  {
    *(result + 128) = a2;

    return re::ecs2::Component::enqueueMarkDirty(result);
  }

  return result;
}

uint64_t REAnchoringComponentSetDescriptorClassification(uint64_t a1, uint64_t a2)
{
  if (*(result + 136) != a2)
  {
    *(result + 136) = a2;

    return re::ecs2::Component::enqueueMarkDirty(result);
  }

  return result;
}

float32x2_t *REAnchoringComponentSetDescriptorBounds(uint64_t a1, float32x2_t a2)
{
  v4 = vceq_f32(result[18], a2);
  if ((vpmin_u32(v4, v4).u32[0] & 0x80000000) == 0)
  {
    result[18] = a2;

    return re::ecs2::Component::enqueueMarkDirty(result);
  }

  return result;
}

uint64_t REAnchoringComponentGetDescriptorResourceGroup(uint64_t a1)
{
  if (*(v1 + 168))
  {
    return *(v1 + 176);
  }

  else
  {
    return v1 + 169;
  }
}

uint64_t REAnchoringComponentSetDescriptorResourceGroup(void *a1, const char *a2)
{
  if (!a2)
  {
    if (v4)
    {
      a1[21] = 1;
      v7 = a1[22];
    }

    else
    {
      *(a1 + 168) = 0;
      v7 = a1 + 169;
    }

    *v7 = 0;
    goto LABEL_12;
  }

  if (v4)
  {
    v5 = a1[22];
  }

  else
  {
    v5 = a1 + 169;
  }

  result = strcmp(a2, v5);
  if (result)
  {
    v8[0] = a2;
    v8[1] = strlen(a2);
    re::DynamicString::operator=((a1 + 20), v8);
LABEL_12:

    return re::ecs2::Component::enqueueMarkDirty(a1);
  }

  return result;
}

uint64_t REAnchoringComponentGetDescriptorResourceName(uint64_t a1)
{
  if (*(v1 + 200))
  {
    return *(v1 + 208);
  }

  else
  {
    return v1 + 201;
  }
}

uint64_t REAnchoringComponentSetDescriptorResourceName(void *a1, const char *a2)
{
  if (!a2)
  {
    if (v4)
    {
      a1[25] = 1;
      v7 = a1[26];
    }

    else
    {
      *(a1 + 200) = 0;
      v7 = a1 + 201;
    }

    *v7 = 0;
    goto LABEL_12;
  }

  if (v4)
  {
    v5 = a1[26];
  }

  else
  {
    v5 = a1 + 201;
  }

  result = strcmp(a2, v5);
  if (result)
  {
    v8[0] = a2;
    v8[1] = strlen(a2);
    re::DynamicString::operator=((a1 + 24), v8);
LABEL_12:

    return re::ecs2::Component::enqueueMarkDirty(a1);
  }

  return result;
}

uint64_t REAnchoringComponentSetDescriptorPhysicsSimulation(uint64_t a1, int a2)
{
  if (*(result + 312) != a2)
  {
    *(result + 312) = a2;

    return re::ecs2::Component::enqueueMarkDirty(result);
  }

  return result;
}

uint64_t REAnchoringComponentGetPreviousWorldTransform(uint64_t a1)
{
  if (*(v1 + 368))
  {
    return v1 + 384;
  }

  else
  {
    return 0;
  }
}

uint64_t REAnchoringComponentSetPreviousWorldTransform(uint64_t a1, __int128 *a2)
{
  if (a2)
  {
    v5 = *a2;
    v4 = a2[1];
    v7 = a2[2];
    v6 = a2[3];
    if ((*(v3 + 368) & 1) == 0)
    {
      *(v3 + 368) = 1;
    }

    *(v3 + 384) = v5;
    *(v3 + 400) = v4;
    *(v3 + 416) = v7;
    *(v3 + 432) = v6;
  }

  else if (*(v3 + 368) == 1)
  {
    *(v3 + 368) = 0;
  }

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REAnchoringComponentSetIsRequired(uint64_t a1, int a2)
{
  {
    *(a1 + 448) = a2;
    v4 = *(a1 + 16);
    if (v4)
    {
      re::ecs2::Entity::setSelfRequiresAnchoring(v4, a2);
    }
  }

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REAnchoringComponentSetScaleFactor(uint64_t a1, float a2)
{
  *(v3 + 452) = a2;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

id REAnchoringComponentGetTrackingImageMTLTexture(uint64_t a1)
{
  if (AnchoringResourceComponent)
  {
    re::AssetHandle::AssetHandle(v8, (AnchoringResourceComponent + 32));
    if (v9)
    {
      v2 = atomic_load((v9 + 896));
      if (v2 == 2)
      {
        v3 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v8);
        if (v3)
        {
          if (*(v3 + 120))
          {
            v7 = std::__throw_bad_variant_access[abi:nn200100]();
          }

          v4 = *(v3 + 112);
          v5 = v4;
          if (v4)
          {
          }

          goto LABEL_11;
        }
      }

      else
      {
        re::AssetHandle::loadAsync(v8);
      }
    }

    v5 = 0;
LABEL_11:
    re::AssetHandle::~AssetHandle(v8);
    goto LABEL_12;
  }

  v5 = 0;
LABEL_12:

  return v5;
}

uint64_t anonymous namespace::getAnchoringResourceComponent(uint64_t a1)
{
  if (v1)
  {
    return re::ecs2::EntityComponentCollection::get((v1 + 48), re::ecs2::ComponentImpl<re::ecs2::AnchoringResourceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  }

  else
  {
    return 0;
  }
}

uint64_t REAnchoringComponentSetTrackingImage(float a1, float a2, uint64_t a3, uint64_t a4)
{
  re::AssetAPIHelper::assetHandleCreate(a4, &v11);
  v8 = *(v7 + 32);
  *(v7 + 32) = v11;
  v11 = v8;
  v9 = *(v7 + 48);
  *(v7 + 48) = v12;
  v12 = v9;
  re::AssetHandle::~AssetHandle(&v11);
  re::AssetHandle::loadAsync((v7 + 32));
  *(v7 + 56) = a1;
  *(v7 + 60) = a2;
  return re::ecs2::Component::enqueueMarkDirty(v7);
}

uint64_t anonymous namespace::getOrAddAnchoringResourceComponent(uint64_t a1)
{
  if (v1)
  {
    return re::ecs2::EntityComponentCollection::getOrAdd((v1 + 48), re::ecs2::ComponentImpl<re::ecs2::AnchoringResourceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  }

  else
  {
    return 0;
  }
}

double REAnchoringComponentGetTrackingImageWidth(uint64_t a1)
{
  if (!AnchoringResourceComponent)
  {
    return 0.0;
  }

  LODWORD(result) = *(AnchoringResourceComponent + 56);
  return result;
}

double REAnchoringComponentGetTrackingImageHeight(uint64_t a1)
{
  if (!AnchoringResourceComponent)
  {
    return 0.0;
  }

  LODWORD(result) = *(AnchoringResourceComponent + 60);
  return result;
}

uint64_t REAnchoringComponentGetCoordinateSpaceOfDescriptorTransform(uint64_t a1)
{
  if (*(v1 + 464))
  {
    return v1 + 480;
  }

  else
  {
    return 0;
  }
}

double REAnchoringComponentSetCoordinateSpaceOfDescriptorTransform(uint64_t a1, __int128 *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = a2[1];
    v6 = a2[2];
    v7 = a2[3];
    v10 = *a2;
    v11 = v5;
    v12 = v6;
    v13 = v7;
    if (*(a1 + 464) == 1)
    {
      if (re::areAlmostEqual<float>(&v10, (a1 + 480)))
      {
        return result;
      }

      v14 = v10;
      v15 = v11;
      v16 = v12;
      v17 = v13;
    }

    else
    {
      v14 = v10;
      v15 = v11;
      v16 = v12;
      v17 = v13;
      *(a1 + 464) = 1;
    }

    v8 = v15;
    *(a1 + 480) = v14;
    *(a1 + 496) = v8;
    result = *&v16;
    v9 = v17;
    *(a1 + 512) = v16;
    *(a1 + 528) = v9;
  }

  else if (*(a1 + 464) == 1)
  {
    *(a1 + 464) = 0;
  }

  return result;
}

double REAnchoringComponentUpdateCoordinateSpaceOfDescriptorTransform(uint64_t a1, __int128 *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return result;
  }

  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v10 = *a2;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  if (*(a1 + 464) != 1)
  {
    v14 = v10;
    v15 = v11;
    v16 = v12;
    v17 = v13;
    *(a1 + 464) = 1;
    goto LABEL_7;
  }

  if (!re::areAlmostEqual<float>(&v10, (a1 + 480)))
  {
    v14 = v10;
    v15 = v11;
    v16 = v12;
    v17 = v13;
LABEL_7:
    v8 = v15;
    *(a1 + 480) = v14;
    *(a1 + 496) = v8;
    v9 = v17;
    *(a1 + 512) = v16;
    *(a1 + 528) = v9;
  }

  *&result = re::ecs2::AnchoringComponent::recalculateCachedWorldTransformOfDescriptorTransform(a1).n128_u64[0];
  return result;
}

__n128 re::ecs2::AnchoringComponent::recalculateCachedWorldTransformOfDescriptorTransform(float32x4_t *this)
{
  if (this[29].i8[0] == 1)
  {
    v1 = 0;
    v2 = this[30];
    v3 = this[31];
    v4 = this[32];
    v5 = this[33];
    v6 = this[4];
    v7 = this[5];
    v8 = this[6];
    v15[0] = this[3];
    v15[1] = v6;
    v15[2] = v7;
    v15[3] = v8;
    do
    {
      v16[v1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(v15[v1])), v3, *&v15[v1], 1), v4, v15[v1], 2), v5, v15[v1], 3);
      ++v1;
    }

    while (v1 != 4);
    v10 = v16[0];
    v9 = v16[1];
    v12 = v16[2];
    result = v16[3];
    if ((this[34].i8[0] & 1) == 0)
    {
      this[34].i8[0] = 1;
    }

    this[35] = v10;
    this[36] = v9;
    this[37] = v12;
    this[38] = result;
  }

  else
  {
    if ((this[34].i8[0] & 1) == 0)
    {
      this[34].i8[0] = 1;
    }

    v13 = this[4];
    this[35] = this[3];
    this[36] = v13;
    result = this[5];
    v14 = this[6];
    this[37] = result;
    this[38] = v14;
  }

  return result;
}

__n128 REAnchoringComponentGetWorldTransformOfDescriptorTransform(uint64_t a1)
{
  if (re::ecs2::AnchoringComponent::isDescriptorWorldTransformDirty(v2))
  {
    re::ecs2::AnchoringComponent::recalculateCachedWorldTransformOfDescriptorTransform(a1);
  }

  return *(a1 + 560);
}

double REAnchoringComponentGetWorldScaleOfDescriptorTransform(float32x4_t *a1)
{
  if (re::ecs2::AnchoringComponent::isDescriptorWorldTransformDirty(v2))
  {
    v3 = re::ecs2::AnchoringComponent::recalculateCachedWorldTransformOfDescriptorTransform(a1);
  }

  v3.n128_u64[0] = a1[35].u64[0];
  v4.i64[0] = a1[36].i64[0];
  v5.i64[0] = a1[37].i64[0];
  v3.n128_u32[2] = a1[35].u32[2];
  v4.i32[2] = a1[36].i32[2];
  v5.i32[2] = a1[37].i32[2];
  v6 = vmulq_f32(v3, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v5, v5, 0xCuLL), v5, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL))), vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL), vextq_s8(vextq_s8(v4, v4, 0xCuLL), v4, 8uLL)));
  v7 = vaddv_f32(*v6.f32);
  v8 = -1.0;
  if ((v6.f32[2] + v7) > 0.0)
  {
    v8 = 1.0;
  }

  v9 = vmulq_f32(v3, v3);
  v10 = vmulq_f32(v4, v4);
  v11 = vadd_f32(vzip1_s32(*v9.i8, *v10.i8), vzip2_s32(*v9.i8, *v10.i8));
  v12 = vextq_s8(v9, v9, 8uLL);
  *v12.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v12.f32, *&vextq_s8(v10, v10, 8uLL)), v11));
  v13 = vmulq_f32(v5, v5);
  v12.i32[2] = sqrtf(v13.f32[2] + vaddv_f32(*v13.f32));
  *&result = vmulq_n_f32(v12, v8).u64[0];
  return result;
}

uint64_t REAnchoringComponentSetDescriptorChirality(uint64_t a1, int a2)
{
  if (*(result + 152) != a2)
  {
    *(result + 152) = a2;

    return re::ecs2::Component::enqueueMarkDirty(result);
  }

  return result;
}

uint64_t REAnchoringComponentSetDescriptorLocation(uint64_t a1, int a2)
{
  if (*(result + 156) != a2)
  {
    *(result + 156) = a2;

    return re::ecs2::Component::enqueueMarkDirty(result);
  }

  return result;
}

float32x4_t *REAnchoringComponentSetDescriptorGCControllerKeypoint(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(a3, result[16]), vceqq_f32(a2, result[15])), vandq_s8(vceqq_f32(a4, result[17]), vceqq_f32(a5, result[18])))) & 0x80000000) == 0)
  {
    result[15] = a2;
    result[16] = a3;
    result[17] = a4;
    result[18] = a5;

    return re::ecs2::Component::enqueueMarkDirty(result);
  }

  return result;
}

uint64_t REAnchoringComponentSetDescriptorAccessoryType(uint64_t a1, int a2)
{
  if (*(result + 304) != a2)
  {
    *(result + 304) = a2;

    return re::ecs2::Component::enqueueMarkDirty(result);
  }

  return result;
}

uint64_t REAnchoringComponentGetAccessoryLocationName(uint64_t a1)
{
  if (*(v1 + 328))
  {
    return *(v1 + 336);
  }

  else
  {
    return v1 + 329;
  }
}

uint64_t REAnchoringComponentSetAccessoryLocationName(void *a1, const char *a2)
{
  if (!a2)
  {
    if (v4)
    {
      a1[41] = 1;
      v7 = a1[42];
    }

    else
    {
      *(a1 + 328) = 0;
      v7 = a1 + 329;
    }

    *v7 = 0;
    goto LABEL_12;
  }

  if (v4)
  {
    v5 = a1[42];
  }

  else
  {
    v5 = a1 + 329;
  }

  result = strcmp(a2, v5);
  if (result)
  {
    v8[0] = a2;
    v8[1] = strlen(a2);
    re::DynamicString::operator=((a1 + 40), v8);
LABEL_12:

    return re::ecs2::Component::enqueueMarkDirty(a1);
  }

  return result;
}

uint64_t REAnchoringComponentSetMode(uint64_t a1, int a2)
{
  if (*(result + 352) != a2)
  {
    *(result + 352) = a2;

    return re::ecs2::Component::enqueueMarkDirty(result);
  }

  return result;
}

__n128 REAnchoringComponentSetDescriptorCachedAnchorIdentifier(uint64_t a1, __n128 *a2)
{
  result = *a2;
  v3[14] = *a2;
  return result;
}

BOOL REAnchoringComponentGetIsDescriptorWorldTransformDirty(uint64_t a1)
{

  return re::ecs2::AnchoringComponent::isDescriptorWorldTransformDirty(v1);
}

BOOL re::ecs2::AnchoringComponent::isDescriptorWorldTransformDirty(float32x4_t *this)
{
  if (this[34].i8[0])
  {
    if (this[29].i8[0] == 1)
    {
      v2 = 0;
      v3 = this[30];
      v4 = this[31];
      v5 = this[32];
      v6 = this[33];
      v7 = this[4];
      v8 = this[5];
      v9 = this[6];
      v13[0] = this[3];
      v13[1] = v7;
      v13[2] = v8;
      v13[3] = v9;
      do
      {
        *(&v14 + v2 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v3, COERCE_FLOAT(v13[v2])), v4, *&v13[v2], 1), v5, v13[v2], 2), v6, v13[v2], 3);
        ++v2;
      }

      while (v2 != 4);
      v10 = this + 35;
      v11 = &v14;
    }

    else
    {
      v10 = this + 35;
      v11 = this + 3;
    }

    return !re::areAlmostEqual<float>(v10->f32, v11->f32);
  }

  else
  {
    re::ecs2::AnchoringComponent::recalculateCachedWorldTransformOfDescriptorTransform(this);
    return 1;
  }
}

void REAnchoringComponentInitializeWorldTransformIfNeeded(float32x4_t *a1)
{
  {
    re::ecs2::AnchoringComponent::recalculateCachedWorldTransformOfDescriptorTransform(a1);
    a1[39].i8[0] = 1;
  }
}

uint64_t REAnchoringComponentInvalidateCachedDescriptorTransform(uint64_t a1)
{
  if (*(result + 544) == 1)
  {
    *(result + 544) = 0;
  }

  return result;
}

void REAnchoringComponentSetARReferenceObjectAsset(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    re::AssetAPIHelper::assetHandleCreate(a2, v4);
    re::AssetHandle::operator=(v3 + 64, v4);
    re::ecs2::Component::enqueueMarkDirty(v3);
    re::AssetHandle::~AssetHandle(v4);
  }
}

uint64_t REAnchoringComponentGetARReferenceObjectAsset(uint64_t a1)
{
  if (v1)
  {
    v2 = (v1 + 8);
  }

  return v1;
}

uint64_t REAnchoringComponentSetDescriptorResourceStyle(uint64_t a1, int a2)
{
  if (*(result + 308) != a2)
  {
    *(result + 308) = a2;

    return re::ecs2::Component::enqueueMarkDirty(result);
  }

  return result;
}

uint64_t REAnchoringComponentSetARReferenceObjectIdentifier(uint64_t a1, const unsigned __int8 *a2)
{
  result = uuid_compare(a2, (v3 + 88));
  if (result)
  {
    *(v3 + 88) = *a2;

    return re::ecs2::Component::enqueueMarkDirty(v3);
  }

  return result;
}

void *REAnchoringResourceComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::AnchoringResourceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t re::internal::destroy(re::internal *this, re::IntrospectionBase *a2)
{
  v3 = re::introspectionAllocator();
  v5 = *(this + 4);
  if ((v5 - 1) < 2)
  {
    v7 = v3;
    (**this)(this);
    v8 = *(*v7 + 40);

    return v8(v7, this);
  }

  else if (v5 == 8)
  {

    return re::internal::destroy(this, 1);
  }

  else if (v5 == 9)
  {

    return re::internal::destroy(this, 1);
  }

  else
  {
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Unsupported type. C-introspection currently only supports enum, struct, pointer, and C-style array.", "!Unreachable code", "destroy", 30);
    result = _os_crash("assertion failure: (!Unreachable code) Unsupported type. C-introspection currently only supports enum, struct, pointer, and C-style array.");
    __break(1u);
  }

  return result;
}

uint64_t re::internal::destroy(re::internal *this, re::IntrospectionEnum *a2)
{
  v2 = a2;
  v4 = re::introspectionAllocator();
  if (v2)
  {
    v5 = *(this + 8);
    v6 = *(v5 + 1);
    if (v6)
    {
      re::internal::destroy(*(v5 + 1), *v5);
      (*(*v4 + 40))(v4, v6);
      (*(*v4 + 40))(v4, v5);
    }
  }

  if (*(this + 6))
  {
    (*(*v4 + 40))(v4);
  }

  (**this)(this);
  v7 = *(*v4 + 40);

  return v7(v4, this);
}

uint64_t re::internal::destroy(re::internal *this, re::IntrospectionStructure *a2)
{
  v2 = a2;
  v4 = re::introspectionAllocator();
  if (v2)
  {
    v5 = *(this + 8);
    if (v5)
    {
      re::internal::destroy(v5, *(this + 14));
      (*(*v4 + 40))(v4, *(this + 8));
      *(this + 8) = 0;
      *(this + 14) = 0;
    }
  }

  if (*(this + 6))
  {
    (*(*v4 + 40))(v4);
    *(this + 6) = 0;
  }

  (**this)(this);
  v6 = *(*v4 + 40);

  return v6(v4, this);
}

uint64_t *re::internal::destroy(uint64_t *a1, uint64_t a2)
{
  result = re::introspectionAllocator();
  if (a2)
  {
    v5 = result;
    v6 = 8 * a2;
    do
    {
      v7 = *a1;
      if (*(*a1 + 16))
      {
        (*(*v5 + 40))(v5);
      }

      result = (*(*v5 + 40))(v5, v7);
      ++a1;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

{
  result = re::introspectionAllocator();
  if (a2)
  {
    v5 = result;
    v6 = 8 * a2;
    do
    {
      v7 = *a1;
      if (*(*a1 + 8))
      {
        (*(*v5 + 40))(v5);
      }

      re::SerializedReference<re::IntrospectionBase const*>::reset(v7 + 48);
      re::SerializedReference<re::IntrospectionBase const*>::reset(v7 + 16);
      result = (*(*v5 + 40))(v5, v7);
      ++a1;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

__n128 RETextureAssetGetSize(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v13);
  if (*(v13[1] + 328) == 1)
  {
    v1 = re::AssetHandle::maybeUnregisteredMemoryAsset<re::TextureAsset>(v13);
  }

  else
  {
    v1 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v13);
  }

  v3 = v1;
  if (!v1)
  {
    v2 = 0uLL;
    goto LABEL_12;
  }

  v4 = *(v1 + 56);
  if (v4)
  {
    *&v2 = *(v4 + 24);
LABEL_12:
    v12 = v2;
    goto LABEL_13;
  }

  v5 = (v1 + 72);
  if (!*(v3 + 72) || (v6 = re::DirectTexturePayload::directTexture(v5)) == 0)
  {
    *&v2 = *(v3 + 248);
    goto LABEL_12;
  }

  v7 = v6;
  v8 = DRTextureCopyDescriptor();
  Width = DRTextureDescriptorGetWidth();
  *&v10 = __PAIR64__(DRTextureDescriptorGetHeight(), Width);
  v12 = v10;

LABEL_13:
  re::AssetHandle::~AssetHandle(v13);
  return v12;
}

uint64_t RETextureAssetGetMipmapLevelCount(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v12);
  if (*(v12[1] + 328) == 1)
  {
    v1 = re::AssetHandle::maybeUnregisteredMemoryAsset<re::TextureAsset>(v12);
  }

  else
  {
    v1 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v12);
  }

  MipmapLevelCount = v1;
  if (v1)
  {
    v3 = *(v1 + 56);
    if (v3)
    {
      if (*(v3 + 44) == 1)
      {
        v4 = 32 - __clz(*(v3 + 24));
        v5 = 32 - __clz(*(v3 + 28));
        if (v4 <= v5)
        {
          MipmapLevelCount = v5;
        }

        else
        {
          MipmapLevelCount = v4;
        }
      }

      else
      {
        MipmapLevelCount = 1;
      }
    }

    else
    {
      v6 = (v1 + 72);
      if (*(MipmapLevelCount + 72) && (v7 = re::DirectTexturePayload::directTexture(v6)) != 0)
      {
        v8 = v7;
        v9 = DRTextureCopyDescriptor();
        MipmapLevelCount = DRTextureDescriptorGetMipmapLevelCount();
      }

      else
      {
        re::TextureData::mipmapLevelCount((MipmapLevelCount + 112));
        MipmapLevelCount = v10;
      }
    }
  }

  re::AssetHandle::~AssetHandle(v12);
  return MipmapLevelCount;
}

uint64_t RETextureAssetGetArrayLength(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v8);
  if (*(v8[1] + 328) == 1)
  {
    v1 = re::AssetHandle::maybeUnregisteredMemoryAsset<re::TextureAsset>(v8);
  }

  else
  {
    v1 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v8);
  }

  ArrayLength = v1;
  if (v1)
  {
    if (*(v1 + 56))
    {
      ArrayLength = 0;
    }

    else
    {
      v3 = (v1 + 72);
      if (*(ArrayLength + 72) && (v4 = re::DirectTexturePayload::directTexture(v3)) != 0)
      {
        v5 = v4;
        v6 = DRTextureCopyDescriptor();
        ArrayLength = DRTextureDescriptorGetArrayLength();
      }

      else
      {
        ArrayLength = *(ArrayLength + 260);
      }
    }
  }

  re::AssetHandle::~AssetHandle(v8);
  return ArrayLength;
}

uint64_t RETextureAssetGetTextureType(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v9);
  if (*(v9[1] + 328) == 1)
  {
    v1 = re::AssetHandle::maybeUnregisteredMemoryAsset<re::TextureAsset>(v9);
  }

  else
  {
    v1 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v9);
  }

  v2 = v1;
  if (v1 && !*(v1 + 56))
  {
    v5 = (v1 + 72);
    if (*(v2 + 72) && (v6 = re::DirectTexturePayload::directTexture(v5)) != 0)
    {
      v7 = v6;
      v8 = DRTextureCopyDescriptor();
      TextureType = DRTextureDescriptorGetTextureType();
    }

    else
    {
      TextureType = *(v2 + 348);
    }
  }

  else
  {
    TextureType = 2;
  }

  re::AssetHandle::~AssetHandle(v9);
  return TextureType;
}

uint64_t RETextureAssetGetSemantic(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  if (*(v4[1] + 328) != 1)
  {
    v1 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v4);
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v2 = 6;
    goto LABEL_6;
  }

  v1 = re::AssetHandle::maybeUnregisteredMemoryAsset<re::TextureAsset>(v4);
  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = *(v1 + 356);
LABEL_6:
  re::AssetHandle::~AssetHandle(v4);
  return v2;
}

__n128 RETextureAssetGetDimensions(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v15);
  if (*(v15[1] + 328) == 1)
  {
    v1 = re::AssetHandle::maybeUnregisteredMemoryAsset<re::TextureAsset>(v15);
  }

  else
  {
    v1 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v15);
  }

  v3 = v1;
  if (!v1)
  {
    v2 = 0uLL;
    goto LABEL_12;
  }

  v4 = *(v1 + 56);
  if (v4)
  {
    *&v2 = *(v4 + 24);
LABEL_12:
    v14 = v2;
    goto LABEL_13;
  }

  v5 = (v1 + 72);
  if (!*(v3 + 72) || (v6 = re::DirectTexturePayload::directTexture(v5)) == 0)
  {
    *&v2 = *(v3 + 248);
    DWORD2(v2) = *(v3 + 256);
    goto LABEL_12;
  }

  v7 = v6;
  v8 = DRTextureCopyDescriptor();
  Width = DRTextureDescriptorGetWidth();
  Height = DRTextureDescriptorGetHeight();
  Depth = DRTextureDescriptorGetDepth();
  *&v12 = __PAIR64__(Height, Width);
  DWORD2(v12) = Depth;
  v14 = v12;

LABEL_13:
  re::AssetHandle::~AssetHandle(v15);
  return v14;
}

uint64_t RETextureAssetGetPixelFormat(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v9);
  if (*(v9[1] + 328) == 1)
  {
    v1 = re::AssetHandle::maybeUnregisteredMemoryAsset<re::TextureAsset>(v9);
  }

  else
  {
    v1 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v9);
  }

  PixelFormat = v1;
  if (v1)
  {
    v3 = *(v1 + 56);
    if (v3)
    {
      PixelFormat = *(v3 + 32);
    }

    else
    {
      v4 = (v1 + 72);
      if (*(PixelFormat + 72) && (v5 = re::DirectTexturePayload::directTexture(v4)) != 0)
      {
        v6 = v5;
        v7 = DRTextureCopyDescriptor();
        PixelFormat = DRTextureDescriptorGetPixelFormat();
      }

      else
      {
        PixelFormat = *(PixelFormat + 344);
      }
    }
  }

  re::AssetHandle::~AssetHandle(v9);
  return PixelFormat;
}

void *RETextureAssetGetColorSpace(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v5);
  if (*(v5[1] + 328) == 1)
  {
    v1 = re::AssetHandle::maybeUnregisteredMemoryAsset<re::TextureAsset>(v5);
  }

  else
  {
    v1 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v5);
  }

  v2 = *(v1 + 176);
  v3 = v2;
  re::AssetHandle::~AssetHandle(v5);
  return v2;
}

uint64_t REAssetManagerTextureMemoryAssetCreateWithCGImage(_BYTE *a1, id *this, CGImage *a3, const char *a4)
{
  re::ImportGraphicsContext::createFromRenderManager(v49, this);
  v8 = this[26];
  v48 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  [v48 setStorageMode_];
  v9 = 0;
  v31 = 1;
  v30[0] = 0;
  v30[1] = 0;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v32 = 0;
  v34 = 0;
  v37 = 0;
  v39 = 6;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v43 = -65536;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v47 = 0;
  if (a1[2176] == 1)
  {
    v9 = [v8 supportsSharedTextureHandles];
  }

  v38 = v9;
  v10 = CGImageRetain(a3);
  v11 = &v20;
  if (v21)
  {
    if (v21 != 1)
    {
      v17 = std::__throw_bad_variant_access[abi:nn200100]();
      return REAssetManagerTextureMemoryAssetCreateWithMTLTexture(v17, v18);
    }

    if (!*(v20 + 48))
    {
      goto LABEL_11;
    }

    v11 = (v20 + 24);
  }

  if (*v11)
  {
    TextureAsset = re::TextureAsset::makeTextureAsset(v49, &v20, &v22, 6, SHIDWORD(v32));
    v13 = re::TextureAsset::assetType(TextureAsset);
    (*(*a1 + 424))(v19, a1, TextureAsset, v13, 0, 0, 0);
    v14 = v19[0];
    if (v19[0])
    {
      v15 = (v19[0] + 8);
    }

    re::AssetHandle::~AssetHandle(v19);
    goto LABEL_12;
  }

LABEL_11:
  v14 = 0;
LABEL_12:
  if (v25)
  {
    if (v29)
    {
      (*(*v25 + 40))();
    }

    v29 = 0;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    ++v28;
  }

  if (v23)
  {

    v23 = 0;
  }

  if (v21 != -1)
  {
    (off_1F5D2D578[v21])(v19, &v20);
  }

  if (v44)
  {
    if (v45)
    {
      (*(*v44 + 40))();
      v45 = 0;
      v46 = 0;
    }

    v44 = 0;
  }

  if (v48)
  {
  }

  return v14;
}

uint64_t REAssetManagerTextureMemoryAssetCreateWithMTLTexture(_BYTE *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v15 = v3;
  v16 = 0;
  if (v3)
  {
  }

  v7 = 0;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v11 = 0u;
  memset(v12, 0, 28);
  v13 = 0;
  v14 = 0;
  v5 = re::CoreREAssetUtils::assetManagerTextureMemoryAssetCreateWithTextureData(a1, &v15, &v7, 0, 0, 0);
  if (*&v12[0])
  {
    if (v13)
    {
      (*(**&v12[0] + 40))();
    }

    v13 = 0;
    memset(v12, 0, 24);
    ++DWORD2(v12[1]);
  }

  if (v11)
  {
  }

  if (v16 != -1)
  {
    (off_1F5D2D578[v16])(&v7, &v15);
  }

  return v5;
}

uint64_t RETextureAssetDataCreateWithTexture(void *a1, const __CFDictionary *Value)
{
  v3 = a1;
  v4 = re::CoreREAssetUtils::textureSemanticOption(Value, 0);
  if (Value)
  {
    Value = CFDictionaryGetValue(Value, @"kRETextureAssetCreateOptionColorSpaceName");
  }

  v5 = [v3 mipmapLevelCount];
  v50 = 0;
  memset(v51, 0, 24);
  *&v52 = 0;
  memset(v53, 0, 28);
  v54 = 0uLL;
  v6 = Value;
  *(&v52 + 1) = v6;
  v7 = v3;
  v22 = v3;
  v23[0] = 0;
  re::TextureImportData::ImportReport::SourceInfo::setFromTexture(v51, &v22);
  if (v23[0] != -1)
  {
    (off_1F5D2D578[v23[0]])(&v35, &v22);
  }

  v23[0] = -1;
  if (v3)
  {
  }

  v35 = 0u;
  v36 = 1;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v37 = 0uLL;
  v38 = 0;
  v44 = 0;
  v45 = 0uLL;
  v46 = -65536;
  v47 = 0;
  v48 = 0uLL;
  v49 = 0;
  v43 = v4;
  re::TextureFromImageOptions::setColorSpace(&v35, v6);
  LODWORD(v37) = 2 * (v5 < 2);
  v8 = v3;
  v20 = v3;
  v21 = 0;
  v13 = v50;
  v14[0] = *v51;
  *(v14 + 12) = *&v51[12];
  v9 = v52;
  v52 = 0u;
  v15 = v9;
  v16 = v53[0];
  memset(v53, 0, 24);
  v17 = *&v53[1];
  ++LODWORD(v53[3]);
  v18 = 1;
  v10 = v54;
  *&v54 = 0;
  v19 = v10;
  re::TextureAssetLoader::createTextureAssetData(&v20, &v13, &v35, &v22);
  re::make::shared::object<re::TextureAssetData,re::TextureAssetData>(&v22, &v34);
  v22 = &unk_1F5CC40A0;
  if (v33)
  {

    v33 = 0;
  }

  if (v28)
  {
    if (v32)
    {
      (*(*v28 + 40))();
    }

    v32 = 0;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    ++v31;
  }

  if (v26)
  {

    v26 = 0;
  }

  if (v25 != -1)
  {
    (off_1F5D2D578[v25])(&v55, &v24);
  }

  v25 = -1;
  v22 = &unk_1F5CCF868;
  objc_destructInstance(v23);
  if (v16)
  {
    if (v19)
    {
      (*(*v16 + 40))();
    }

    *&v19 = 0;
    v17 = 0uLL;
    v16 = 0;
    ++v18;
  }

  if (v15)
  {

    *&v15 = 0;
  }

  if (v21 != -1)
  {
    (off_1F5D2D578[v21])(&v55, &v20);
  }

  v21 = -1;
  if (v3)
  {
  }

  v11 = v34;
  if (v47)
  {
    if (v48)
    {
      (*(*v47 + 40))();
      v48 = 0uLL;
    }

    v47 = 0;
  }

  if (v53[0])
  {
    if (v54)
    {
      (*(*v53[0] + 40))(v53[0]);
    }

    *&v54 = 0;
    memset(v53, 0, 24);
    ++LODWORD(v53[3]);
  }

  if (v52)
  {
  }

  return v11;
}

uint64_t REAssetServiceTextureAssetCreateWithIOSurface(uint64_t a1, uint64_t a2, re::mtl::Device *a3, __IOSurface *a4, unint64_t a5)
{
  TextureAssetWithIOSurface = re::TextureAsset::makeTextureAssetWithIOSurface((a2 + 208), &v15, a3, a4);
  v10 = re::TextureAsset::assetType(TextureAssetWithIOSurface);
  (*(*a1 + 424))(v14, a1, TextureAssetWithIOSurface, v10, 0, 0, 0);
  v11 = v14[0];
  v12 = (v14[0] + 8);
  re::AssetHandle::~AssetHandle(v14);
  if (v15)
  {
  }

  return v11;
}

id anonymous namespace::makeTextureDescriptorWithIOSurface(_anonymous_namespace_ *this, const re::mtl::Device *a2, __IOSurface *a3, uint64_t a4, MTLPixelFormat a5)
{
  v9 = [objc_msgSend(MEMORY[0x1E69741C0] alloc];
  *this = v9;
  [v9 setTextureType_];
  [v9 setWidth_];
  [v9 setHeight_];
  [v9 setPixelFormat_];
  [v9 setMipmapLevelCount_];
  [v9 setUsage_];

  return [v9 setStorageMode_];
}

uint64_t RETextureAssetDataCreateWithIOSurface(void *a1, const re::mtl::Device *a2, __IOSurface *a3, uint64_t a4, const __CFDictionary *a5)
{
  v9 = a1;

  v11 = re::CoreREAssetUtils::textureSemanticOption(a5, 0);
  v12 = v9;
  *&v53 = v12;
  v13 = v72;
  re::mtl::Device::makeTextureWithIOSurface(&v32, v72, &v53, a2, a3);
  v70 = v32;
  v71 = 0;
  if (v32)
  {

    v32 = 0;
  }

  v53 = 0uLL;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v56[0] = 0;
  *(v56 + 5) = 0;
  v63 = 0;
  v64 = 0;
  v62 = 0;
  v65 = -65536;
  v67 = 0;
  v68 = 0;
  v66 = 0;
  v69 = 0;
  v54 = 1;
  v55 = 2;
  v61 = v11;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v49 = 0u;
  memset(v50, 0, 28);
  v51 = 0;
  v52 = 0;
  v48 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  re::DynamicArray<short>::DynamicArray(v28, v50);
  v31 = v52;
  re::TextureAssetLoader::createTextureAssetData(&v70, &v22, &v53, &v32);
  re::make::shared::object<re::TextureAssetData,re::TextureAssetData>(&v32, &v44);
  v32 = &unk_1F5CC40A0;
  if (v43)
  {

    v43 = 0;
  }

  if (v38)
  {
    if (v42)
    {
      (*(*v38 + 40))(v38, v42, v14, v15);
    }

    v42 = 0;
    v39 = 0;
    v40 = 0;
    v38 = 0;
    ++v41;
  }

  if (v36)
  {

    v36 = 0;
  }

  if (v35 != -1)
  {
    (off_1F5D2D578[v35])(&v73, &v34);
  }

  v35 = -1;
  v32 = &unk_1F5CCF868;
  objc_destructInstance(&v33);
  if (v28[0])
  {
    if (v30)
    {
      (*(*v28[0] + 40))(v28[0], v30, v16, v17);
    }

    v30 = 0;
    memset(v28, 0, sizeof(v28));
    ++v29;
  }

  if (v26)
  {

    v26 = 0;
  }

  v20 = v44;
  if (v50[0])
  {
    if (v51)
    {
      (*(*v50[0] + 40))(v50[0], v51, v18, v19);
    }

    v51 = 0;
    memset(v50, 0, 24);
    ++LODWORD(v50[3]);
  }

  if (v49)
  {
  }

  if (v66)
  {
    if (v67)
    {
      (*(*v66 + 40))(v66, v68);
      v67 = 0;
      v68 = 0;
    }

    v66 = 0;
  }

  if (v71 != -1)
  {
    (off_1F5D2D578[v71])(&v32, &v70);
  }

  if (v13)
  {
  }

  return v20;
}

uint64_t REAssetManagerTextureMemoryAssetCreateWithData(_BYTE *a1, id *a2, void *a3, const char *a4, const __CFDictionary *a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v10 = re::CoreREAssetUtils::textureSemanticOption(a5, 0);
  re::ImportGraphicsContext::createFromRenderManager(v39, a2);
  v11 = a3;
  v12 = a2[26];
  v38 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  [v38 setStorageMode_];
  v20[0] = 0;
  v20[1] = 0;
  v21 = 1;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v23 = 0;
  v22 = 0;
  v24 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v33 = -65536;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v37 = 0;
  if (v10 == 3)
  {
    HIDWORD(v20[0]) = 2;
  }

  if (a1[2176] == 1)
  {
    Value = [v12 supportsSharedTextureHandles];
  }

  else
  {
    Value = 0;
  }

  v28 = Value;
  v29 = v10;
  if (a5)
  {
    Value = CFDictionaryGetValue(a5, @"kRETextureAssetCreateOptionColorSpace");
    if (Value)
    {
      v14 = Value;
      Value = CFEqual(Value, @"kRETextureAssetCreateColorSpacePreserveSourceValues");
      if (Value)
      {
        v29 = 1;
      }

      else
      {
        Value = CFEqual(v14, @"kRETextureAssetCreateColorSpaceSampleInLinearSpace");
        if (Value)
        {
          v27 = 2;
        }

        else
        {
          if (CoreRELog::onceToken != -1)
          {
            dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
          }

          v15 = CoreRELog::log;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v14;
            _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Invalid texture asset color space mode: %@", buf, 0xCu);
          }
        }
      }
    }
  }

  v16 = v11;
  v19 = v16;

  if (*&buf[8])
  {
    if (*&buf[8] == 1)
    {
      goto LABEL_22;
    }

    std::__throw_bad_variant_access[abi:nn200100]();
  }

  if (*buf)
  {
    v17 = REAssetManagerTextureMemoryAssetCreateWithMTLTexture(a1, *buf);
    goto LABEL_23;
  }

LABEL_22:
  v17 = 0;
LABEL_23:
  if (v43)
  {
    if (v47)
    {
      (*(*v43 + 40))();
    }

    v47 = 0;
    v44 = 0;
    v45 = 0;
    v43 = 0;
    ++v46;
  }

  if (v41)
  {

    v41 = 0;
  }

  if (*&buf[8] != -1)
  {
    (off_1F5D2D578[*&buf[8]])(&v19, buf);
  }

  if (v34)
  {
    if (v35)
    {
      (*(*v34 + 40))();
      v35 = 0;
      v36 = 0;
    }

    v34 = 0;
  }

  if (v38)
  {
  }

  return v17;
}

uint64_t REAssetServiceCreateTextureAssetWithDirectTexture(uint64_t a1, void *a2)
{
  v3 = a2;
  TextureAssetWithDirectTexture = re::TextureAsset::makeTextureAssetWithDirectTexture(v3);
  v5 = re::TextureAsset::assetType(TextureAssetWithDirectTexture);
  v6 = *(*a1 + 424);

  v6(v10, a1, TextureAssetWithDirectTexture, v5, 0, 0, 0);
  v7 = v10[0];
  v8 = (v10[0] + 8);
  re::AssetHandle::~AssetHandle(v10);
  return v7;
}

uint64_t REAssetManagerTextureMemoryAssetCreateWithURL(_BYTE *a1, id *this, void *a3, const char *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  re::ImportGraphicsContext::createFromRenderManager(v23, this);
  v8 = a3;
  if (([v8 isFileURL] & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = this[26];
  v22 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  [v22 setStorageMode_];
  v10 = 0;
  v26 = 1;
  buf = 0uLL;
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v27 = 0;
  v29 = 0;
  v32 = 0;
  v34 = 6;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v38 = -65536;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v42 = 0;
  if (a1[2176] == 1)
  {
    v10 = [v9 supportsSharedTextureHandles];
  }

  v33 = v10;
  if (v14)
  {
    if (v14 != 1)
    {
      std::__throw_bad_variant_access[abi:nn200100]();
LABEL_7:
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v9 = CoreRELog::log;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v8;
        _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "URL passed to REAssetManagerTextureMemoryAssetCreateWithURL must be a file URL: %@", &buf, 0xCu);
      }

      v11 = 0;
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  if (!v13)
  {
LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  v11 = REAssetManagerTextureMemoryAssetCreateWithMTLTexture(a1, v13);
LABEL_15:
  if (v17)
  {
    if (v21)
    {
      (*(*v17 + 40))();
    }

    v21 = 0;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    ++v20;
  }

  if (v15)
  {

    v15 = 0;
  }

  if (v14 != -1)
  {
    (off_1F5D2D578[v14])(&v24, &v13);
  }

  if (v39)
  {
    if (v40)
    {
      (*(*v39 + 40))();
      v40 = 0;
      v41 = 0;
    }

    v39 = 0;
  }

  if (v22)
  {
  }

LABEL_29:

  return v11;
}

uint64_t RETextureAssetCopyToDestination(uint64_t a1, void *a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  re::AssetAPIHelper::assetHandleCreate(a1, v33);
  v6 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v33);
  if (!v6)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Invalid texture", &v24, 2u);
    }

    v11 = 0;
    goto LABEL_17;
  }

  if (!*(v6 + 120))
  {
    v7 = *(v6 + 112);
    v31 = v5;
    v32 = v7;
    v8 = v5;
    v9 = [v7 device];
    if (v9 == [v5 device])
    {
      v15 = [v7 device];
      v16 = [v7 pixelFormat];
      if (v16 == [v5 pixelFormat])
      {
        re::ImportGraphicsResources::getOrCreateCommandQueue(*(a3 + 104), &re::internal::copyTextureQueueName(void)::queueName, 1, &v30);
        re::mtl::CommandQueue::makeCommandBuffer(&v29, &v30);
        re::mtl::CommandBuffer::makeBlitCommandEncoder(&v28, &v29);
        re::mtl::BlitCommandEncoder::textureCopy(&v28, v7, v5);
        objc_msgSend_endEncoding(v28);
        [v29 commit];
        [v29 waitUntilCompleted];
        re::internal::getCommandBufferError(&v24, &v29);
        v11 = v24;
        if ((v24 & 1) == 0)
        {
          if (CoreRELog::onceToken != -1)
          {
            dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
          }

          v17 = CoreRELog::log;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            if (v26)
            {
              v18 = *&v27[7];
            }

            else
            {
              v18 = v27;
            }

            *buf = 136315138;
            v35 = v18;
          }

          if (v24 & 1) == 0 && v25 && (v26)
          {
            (*(*v25 + 40))();
          }
        }
      }

      else
      {
        re::ImportGraphicsContext::ImportGraphicsContext(&v24, *(a3 + 104));
        re::copyTexture(&v24, &v32, &v31, 0x5040302uLL, 0);

        v11 = 1;
      }

      v12 = v31;
      if (!v31)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v10 = CoreRELog::log;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v24) = 0;
        _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Cannot copy texture due to device mismatch", &v24, 2u);
      }

      v11 = 0;
      v12 = v5;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_10:
    if (v32)
    {
    }

LABEL_17:
    re::AssetHandle::~AssetHandle(v33);

    return v11;
  }

  v19 = std::__throw_bad_variant_access[abi:nn200100]();
  return AssetManagerCreateTextureAssetFromData(v19, v20, v21, v22, v23);
}

uint64_t AssetManagerCreateTextureAssetFromData(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v23 = 0u;
  v24 = 0u;
  LOWORD(v24) = 257;
  BYTE2(v24) = 1;
  BYTE5(v24) = 1;
  TextureAsset = re::TextureAsset::makeTextureAsset(&v23, a5 + 24, a5 + 40, *(*(a5 + 144) + 88), *(*(a5 + 144) + 56));

  v23 = 0uLL;
  *&v24 = 0;
  if (!a2)
  {
    v13 = re::TextureAsset::assetType(v11);
    if (a3)
    {
      v14 = 1;
      if (a4)
      {
LABEL_5:
        v15 = 1;
LABEL_8:
        (*(*a1 + 424))(a1, TextureAsset, v13, v14, 0, v15);
        goto LABEL_9;
      }
    }

    else
    {
      v14 = 0;
      if (a4)
      {
        goto LABEL_5;
      }
    }

    v15 = 0;
    goto LABEL_8;
  }

  v12 = re::TextureAsset::assetType(v11);
  (*(*a1 + 440))(&v21, a1, TextureAsset, v12, a2, 0, a4, 1);
LABEL_9:
  v17 = *(&v21 + 1);
  v16 = v21;
  v23 = v21;
  v21 = 0uLL;
  *&v24 = v22;
  v22 = 0;
  re::AssetHandle::~AssetHandle(&v21);
  v18 = *(a5 + 144);
  if (v18 && !*(v17 + 264))
  {
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v17 + 264), v18);
    v16 = v23;
  }

  if (v16)
  {
    v19 = (v16 + 8);
  }

  re::AssetHandle::~AssetHandle(&v23);
  return v16;
}

uint64_t REAssetManagerCreateTextureAssetFromDataWithParameters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v5 = v4 >> 1;
  if ((v4 & 1) == 0)
  {
    v5 = v4 >> 1;
  }

  if (v5)
  {
    if (v4)
    {
      v6 = *(a3 + 40);
    }

    else
    {
      v6 = a3 + 33;
    }
  }

  else
  {
    v6 = 0;
  }

  return AssetManagerCreateTextureAssetFromData(a1, v6, 0, *(a3 + 56), a2);
}

uint64_t textureAssetReplaceWithData(re::ImportGraphicsContext *a1, uint64_t a2, re::AssetHandle *a3, CFErrorRef *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a2, &v18);
  if (!v19)
  {
    re::TextureAsset::assetType(v7);
    v8 = 0;
LABEL_6:
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = *v8;
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v15;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "REAssetManagerReplaceTextureAssetWithData: expected Texture, got %s", &buf, 0xCu);
    }

    if (a4)
    {
      v12 = 1;
LABEL_12:
      v10 = 0;
      *a4 = CFErrorCreate(0, @"REAssetRefErrorDomain", v12, 0);
      goto LABEL_19;
    }

LABEL_18:
    v10 = 0;
    goto LABEL_19;
  }

  v8 = *(v19 + 280);
  if (v8 != re::TextureAsset::assetType(v7))
  {
    goto LABEL_6;
  }

  if ((*(v19 + 257) & 1) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = re::AssetHandle::legacy_assetPath(&v18);
      re::AssetPath::fullAssetPath(v16, &buf);
      if (BYTE8(buf))
      {
        v17 = v21;
      }

      else
      {
        v17 = &buf + 9;
      }

      *v22 = 136315138;
      v23 = v17;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "%s is marked as an immutable asset. Cannot replace texture on an immutable asset.", v22, 0xCu);
      if (buf && (BYTE8(buf) & 1) != 0)
      {
        (*(*buf + 40))();
      }
    }

    if (a4)
    {
      v12 = 2;
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  re::ImportGraphicsContext::createFromAvailableManagers(&buf, a1, 0);
  re::TextureAsset::setTexture(&buf, &v18, a3, v9);

  v10 = 1;
LABEL_19:
  re::AssetHandle::~AssetHandle(&v18);
  return v10;
}

uint64_t textureAssetMakeMutableAndReplaceWithData(re::ImportGraphicsContext *a1, uint64_t a2, re::AssetHandle *a3, CFErrorRef *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a2, &v14);
  if (v15)
  {
    v8 = *(v15 + 280);
    if (v8 == re::TextureAsset::assetType(v7))
    {
      re::ImportGraphicsContext::createFromAvailableManagers(buf, a1, 0);
      Mutable = re::TextureAsset::setTexture_makeMutable(buf, &v14, a3, v9);

      goto LABEL_11;
    }
  }

  else
  {
    re::TextureAsset::assetType(v7);
    v8 = 0;
  }

  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v11 = CoreRELog::log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = *v8;
    LODWORD(buf[0]) = 136315138;
    *(buf + 4) = v13;
    _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "REAssetManagerReplaceTextureAssetWithData: expected Texture, got %s", buf, 0xCu);
  }

  Mutable = 0;
  if (a4)
  {
    *a4 = CFErrorCreate(0, @"REAssetRefErrorDomain", 1, 0);
  }

LABEL_11:
  re::AssetHandle::~AssetHandle(&v14);
  return Mutable;
}

uint64_t REAssetManagerTextureNoNetworkSyncMemoryAssetCreateWithURL(_BYTE *a1, id *a2, void *a3, const char *a4, const char *a5)
{
  v54 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (([v9 isFileURL] & 1) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v10 = CoreRELog::log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "URL passed to REAssetManagerTextureNoNetworkSyncMemoryAssetCreateWithURL must be a file URL: %@", &buf, 0xCu);
    }

    v15 = 0;
    goto LABEL_35;
  }

  v10 = a2[26];
  v33 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  [v33 setStorageMode_];
  v11 = 0;
  v37 = 1;
  buf = 0uLL;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v38 = 0;
  v40 = 0;
  v43 = 0;
  v45 = 6;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v49 = -65536;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  v53 = 0;
  if (a1[2176] == 1)
  {
    v11 = [v10 supportsSharedTextureHandles];
  }

  v44 = v11;
  re::ImportGraphicsContext::createFromRenderManager(v32, a2);
  v12 = &v22;
  if (!v23)
  {
    goto LABEL_8;
  }

  if (v23 == 1)
  {
    if (!*(v22 + 48))
    {
      goto LABEL_20;
    }

    v12 = (v22 + 24);
LABEL_8:
    if (*v12)
    {
      TextureAsset = re::TextureAsset::makeTextureAsset(v32, &v22, &v24, 6, SHIDWORD(v38));
      v14 = re::TextureAsset::assetType(TextureAsset);
      (*(*a1 + 432))(v21, a1, TextureAsset, v14, &v34, 0, 2, 0);
      if (v34 && (v35 & 1) != 0)
      {
        (*(*v34 + 40))();
      }

      v15 = v21[0];
      if (v21[0])
      {
        v16 = (v21[0] + 8);
      }

      re::AssetHandle::~AssetHandle(v21);
      goto LABEL_21;
    }

LABEL_20:
    v15 = 0;
LABEL_21:
    if (v27)
    {
      if (v31)
      {
        (*(*v27 + 40))();
      }

      v31 = 0;
      v28 = 0;
      v29 = 0;
      v27 = 0;
      ++v30;
    }

    if (v25)
    {

      v25 = 0;
    }

    if (v23 != -1)
    {
      (off_1F5D2D578[v23])(&v34, &v22);
    }

    if (v50)
    {
      if (v51)
      {
        (*(*v50 + 40))(v50, v52);
        v51 = 0;
        v52 = 0;
      }

      v50 = 0;
    }

    if (v33)
    {
    }

LABEL_35:

    return v15;
  }

  v18 = std::__throw_bad_variant_access[abi:nn200100]();
  return REAssetManagerTextureMemoryAssetCreateCubeMap(v18, v19, v20);
}

uint64_t REAssetManagerTextureMemoryAssetCreateCubeMap(os_unfair_lock_s *a1, id *a2, const char *a3)
{
  CubeMapWithOptions = REAssetManagerTextureMemoryAssetCreateCubeMapWithOptions(a1, a2, a3, 0);
  if (!CubeMapWithOptions)
  {
    re::BuiltinTextureAssetProvider::makeDescriptor(&v8, "fallback.stockEnvMap");
    os_unfair_lock_lock(a1 + 32);
    re::AssetManager::assetHandle_assetTablesLocked(v7, a1, &v8);
    os_unfair_lock_unlock(a1 + 32);
    CubeMapWithOptions = v7[0];
    if (v7[0])
    {
      v6 = (v7[0] + 8);
    }

    re::AssetHandle::~AssetHandle(v7);
    if (v20)
    {
      if (BYTE8(v20))
      {
        (*(*v20 + 40))();
      }

      v20 = 0u;
      v21 = 0u;
    }

    if (v15)
    {
      if (v19)
      {
        (*(*v15 + 40))();
      }

      v19 = 0;
      v16 = 0;
      v17 = 0;
      v15 = 0;
      ++v18;
    }

    if (v10)
    {
      if (v14)
      {
        (*(*v10 + 40))();
      }

      v14 = 0;
      v11 = 0;
      v12 = 0;
      v10 = 0;
      ++v13;
    }

    if (v8 && (v9 & 1) != 0)
    {
      (*(*v8 + 40))();
    }
  }

  return CubeMapWithOptions;
}

uint64_t REAssetManagerTextureMemoryAssetCreateCubeMapWithOptions(_BYTE *a1, id *a2, const char *a3, const __CFDictionary *a4)
{
  v46 = 0uLL;
  *v47 = 1;
  *&v47[24] = 0;
  v47[28] = 0;
  *&v47[32] = 0;
  v47[36] = 0;
  memset(&v47[4], 0, 17);
  v49 = 0uLL;
  v48 = 0;
  v50 = -65536;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v54 = 0;
  *&v47[40] = re::CoreREAssetUtils::textureSemanticOption(a4, 4);
  if (a4 && (Value = CFDictionaryGetValue(a4, @"kRETextureAssetCreateOptionColorSpaceName")) != 0)
  {
    v9 = Value;
    v48 = v9;
    if (!a2)
    {
LABEL_4:
      v10 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }
  }

  v10 = a2[26];
LABEL_7:
  v11 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  [v11 setStorageMode_];
  re::ImportGraphicsContext::createFromAvailableManagers(v45, a2, 0);
  v34 = v11;
  v24 = v46;
  v25 = *v47;
  v26[0] = *&v47[16];
  *(v26 + 12) = *&v47[28];
  v27 = v9;
  v28 = v49;
  v29 = v50;
  re::FixedArray<short>::FixedArray(&v30, &v51);
  v33 = v54;
  re::loadTextureFileAndConvertToCubeMap(v45, a3, &v34, &v24, 0, 0, &v35);
  if (v30)
  {
    if (v31)
    {
      (*(*v30 + 40))(v30, v32, v12, v13, v14, v15, v16, v17, v24, *(&v24 + 1), v25, *(&v25 + 1));
      v31 = 0;
      v32 = 0;
    }

    v30 = 0;
  }

  if (v34)
  {

    v34 = 0;
  }

  if (v36)
  {
    if (v36 != 1)
    {
      v21 = std::__throw_bad_variant_access[abi:nn200100]();
      return REAssetManagerTextureMemoryAssetCreateCubeMapNullable(v21, v22, v23);
    }

    if (!*(v35 + 48))
    {
      goto LABEL_20;
    }

    v18 = (v35 + 24);
  }

  else
  {
    v18 = &v35;
  }

  if (!*v18)
  {
LABEL_20:
    v19 = 0;
    goto LABEL_21;
  }

  v19 = re::CoreREAssetUtils::assetManagerTextureMemoryAssetCreateWithTextureData(a1, &v35, &v37, 0, *&v47[40], *&v47[8]);
LABEL_21:
  if (v40)
  {
    if (v44)
    {
      (*(*v40 + 40))();
    }

    v44 = 0;
    v41 = 0;
    v42 = 0;
    v40 = 0;
    ++v43;
  }

  if (v38)
  {

    v38 = 0;
  }

  if (v36 != -1)
  {
    (off_1F5D2D578[v36])(&v55, &v35);
  }

  if (v11)
  {
  }

  if (v51)
  {
    if (v52)
    {
      (*(*v51 + 40))(v51, v53);
      v52 = 0;
      v53 = 0;
    }

    v51 = 0;
  }

  return v19;
}

uint64_t textureDataCreateCubeMapFromLatLong(re::ImportGraphicsContext *a1, re::TextureData *a2, __int16 *a3, int a4, int a5, unint64_t a6, unint64_t a7, char *a8)
{
  re::ImportGraphicsContext::createFromRenderManager(v97, a1);
  if ((re::TextureData::isValid(a2) & 1) == 0)
  {
    v17 = re::TextureData::label(a2);
    re::DynamicString::format(&v44, "Invalid texture provided when creating cube map from lat long %s", v18, v17);
    if (v45)
    {
      v19 = v46;
    }

    else
    {
      v19 = (&v45 + 1);
    }

    re::CoreREAssetUtils::logAndSetErrorFromString(v19, a8, @"REPipelineErrorDomain", 0x64);
    if (v44 && (v45 & 1) != 0)
    {
      (*(*v44 + 40))();
    }

    v20 = 0;
    goto LABEL_84;
  }

  v95 = 0;
  v96 = 0;
  if (!*(a2 + 2) || !*(a1 + 26))
  {
    goto LABEL_20;
  }

  re::loadCPUTextureInMetal(v97, a2, 0, &v44);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v95, &v44);
  if (v45 != -1)
  {
    (off_1F5D2D578[v45])(&v57, &v44);
  }

  if (v96)
  {
    if (v96 != 1)
    {
      goto LABEL_85;
    }

    if (!*(v95 + 48))
    {
LABEL_75:
      v28 = re::TextureData::label(&v95);
      re::DynamicString::format(&v44, "Conversion from CPU to Metal texture failed for %s", v29, v28);
      if (v45)
      {
        v30 = v46;
      }

      else
      {
        v30 = (&v45 + 1);
      }

      re::CoreREAssetUtils::logAndSetErrorFromString(v30, a8, @"REPipelineErrorDomain", 0x64);
      if (v44 && (v45 & 1) != 0)
      {
        (*(*v44 + 40))();
      }

      v20 = 0;
      goto LABEL_82;
    }

    v16 = (v95 + 24);
  }

  else
  {
    v16 = &v95;
  }

  if (!*v16)
  {
    goto LABEL_75;
  }

  a2 = &v95;
LABEL_20:
  v85[0] = 0;
  v86 = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(v85, a2);
  v87 = *a3;
  v88[0] = *(a3 + 4);
  *(v88 + 12) = *(a3 + 10);
  v21 = *(a3 + 5);
  v89 = v21;
  if (v21)
  {
    v22 = (v21 + 8);
  }

  v90 = *(a3 + 6);
  re::DynamicArray<short>::DynamicArray(v91, a3 + 7);
  v94 = *(a3 + 12);
  if (v89)
  {

    v89 = 0;
  }

  v23 = &v76;
  re::createCubeMapFromLatLongTexture(&v76, v97, v85, 1, a6, a7, 0);
  if (!DWORD2(v76))
  {
    goto LABEL_28;
  }

  if (DWORD2(v76) == 1)
  {
    if (!*(v76 + 48))
    {
      goto LABEL_52;
    }

    v23 = (v76 + 24);
LABEL_28:
    if (*v23)
    {
      v57 = 0uLL;
      v71 = -65536;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v61 = 0;
      v62 = 0;
      v69 = 0;
      v70 = 0;
      v68 = 0;
      v73 = 0;
      v74 = 0;
      v72 = 0;
      v75 = 0;
      v58 = 1;
      v59 = 0;
      v60 = a4 ^ 1u;
      v67 = a5;
      v36 = v77;
      v37[0] = v78[0];
      *(v37 + 12) = *(v78 + 12);
      v38 = v79;
      if (v79)
      {
        v24 = (v79 + 8);
      }

      v39 = v80;
      re::DynamicArray<short>::DynamicArray(v40, v81);
      v43 = v84;
      re::TextureAssetLoader::createTextureAssetData(&v76, &v36, &v57, &v44);
      if (v40[0])
      {
        if (v42)
        {
          (*(*v40[0] + 40))();
        }

        v42 = 0;
        memset(v40, 0, sizeof(v40));
        ++v41;
      }

      if (v38)
      {

        v38 = 0;
      }

      re::make::shared::object<re::TextureAssetData,re::TextureAssetData>(&v44, &v35);
      v20 = v35;
      v44 = &unk_1F5CC40A0;
      if (v56)
      {

        v56 = 0;
      }

      if (v51)
      {
        if (v55)
        {
          (*(*v51 + 40))();
        }

        v55 = 0;
        v52 = 0;
        v53 = 0;
        v51 = 0;
        ++v54;
      }

      if (v49)
      {

        v49 = 0;
      }

      if (v48 != -1)
      {
        (off_1F5D2D578[v48])(&v35, &v47);
      }

      v48 = -1;
      v44 = &unk_1F5CCF868;
      objc_destructInstance(&v45);
      if (v72)
      {
        if (v73)
        {
          (*(*v72 + 40))();
          v73 = 0;
          v74 = 0;
        }

        v72 = 0;
      }

LABEL_59:
      if (v81[0])
      {
        if (v83)
        {
          (*(*v81[0] + 40))();
        }

        v83 = 0;
        memset(v81, 0, sizeof(v81));
        ++v82;
      }

      if (v79)
      {

        v79 = 0;
      }

      if (DWORD2(v76) != -1)
      {
        (off_1F5D2D578[DWORD2(v76)])(&v44, &v76);
      }

      if (v91[0])
      {
        if (v93)
        {
          (*(*v91[0] + 40))();
        }

        v93 = 0;
        memset(v91, 0, sizeof(v91));
        ++v92;
      }

      if (v89)
      {

        v89 = 0;
      }

      if (v86 != -1)
      {
        (off_1F5D2D578[v86])(&v44, v85);
      }

LABEL_82:
      if (v96 != -1)
      {
        (off_1F5D2D578[v96])(&v44, &v95);
      }

LABEL_84:

      return v20;
    }

LABEL_52:
    v25 = re::TextureData::label(a2);
    re::DynamicString::format(&v44, "Unable to create cube map from texture: %s", v26, v25);
    if (v45)
    {
      v27 = v46;
    }

    else
    {
      v27 = (&v45 + 1);
    }

    re::CoreREAssetUtils::logAndSetErrorFromString(v27, a8, @"REPipelineErrorDomain", 0x64);
    if (v44 && (v45 & 1) != 0)
    {
      (*(*v44 + 40))();
    }

    v20 = 0;
    goto LABEL_59;
  }

LABEL_85:
  v32 = std::__throw_bad_variant_access[abi:nn200100]();
  return REAssetManagerTextureDataCreateCubeMapFromLatLong(v32, v33, v34);
}

uint64_t REAssetManagerTextureDataCreateCubeMapFromLatLong(uint64_t a1, re::ImportGraphicsContext *a2, uint64_t a3)
{
  re::AssetAPIHelper::assetHandleCreate(a3, v7);
  v4 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v7);
  CubeMapFromLatLong = textureDataCreateCubeMapFromLatLong(a2, (v4 + 112), (v4 + 128), *(v4 + 360) == 0, 4, 0, 0, 0);
  re::AssetHandle::~AssetHandle(v7);
  return CubeMapFromLatLong;
}

uint64_t REAssetManagerTextureMemoryAssetCreateCubeMapFromLatLong(uint64_t a1, re::ImportGraphicsContext *a2, uint64_t a3)
{
  CubeMapFromLatLong = REAssetManagerTextureDataCreateCubeMapFromLatLong(a1, a2, a3);
  TextureAssetFromData = AssetManagerCreateTextureAssetFromData(a1, 0, 0, 0, CubeMapFromLatLong);

  return TextureAssetFromData;
}

uint64_t RECreateCubeTextureDataFromLatLong(re::ImportGraphicsContext *a1, uint64_t a2, const __CFDictionary *a3, char *a4)
{
  if (a3)
  {
    v9 = re::CoreREAssetUtils::latLongSamplingQualityOption(a3, 2);
    if (v9)
    {
      v10 = 2 * (v9 == 1);
    }

    else
    {
      v10 = 1;
    }

    v11 = Unsigned;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = *(a2 + 144);
  v13 = *(v12 + 56) == 0;
  v14 = *(v12 + 88);

  return textureDataCreateCubeMapFromLatLong(a1, (a2 + 24), (a2 + 40), v13, v14, v11, v10, a4);
}

id RETextureAssetDataGetTexture(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(a1 + 24);
  }

  v2 = v1;
  v3 = v2;
  if (v2)
  {
  }

  return v3;
}

double RETextureAssetDataGetDimensions(uint64_t a1)
{
  v2 = re::TextureData::width((a1 + 24));
  v3 = re::TextureData::height((a1 + 24));
  re::TextureData::depth((a1 + 24));
  return COERCE_DOUBLE(__PAIR64__(v3, v2));
}

double RETextureAssetDataGetMipmapRange(_DWORD *a1)
{
  v2 = a1[12];
  v3 = a1[13];
  v4 = a1[14];
  v5 = re::TextureData::width((a1 + 6));
  v6 = re::TextureData::height((a1 + 6));
  if (v5 <= v6)
  {
    v5 = v6;
  }

  v7 = re::TextureData::depth((a1 + 6));
  if (v5 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  v9 = 64 - __clz((v8 + 1));
  v10 = v9 - 1;
  v11 = __CFADD__(v8, 1);
  v12 = (v8 + 1);
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = ~(-1 << (v9 - 1));
  }

  if (v11)
  {
    v10 = 0;
  }

  if (v2 <= v3)
  {
    v14 = v3;
  }

  else
  {
    v14 = v2;
  }

  if (v14 <= v4)
  {
    v14 = v4;
  }

  v15 = 32 - __clz(v14 + 1);
  v16 = v15 - 1;
  v11 = __CFADD__(v14, 1);
  v17 = v14 + 1;
  v18 = ~(-1 << (v15 - 1));
  if (v11)
  {
    v18 = 0;
    v16 = 0;
  }

  if ((v18 & v17) != 0)
  {
    v19 = v15;
  }

  else
  {
    v19 = v16;
  }

  if ((v13 & v12) != 0)
  {
    v20 = v9;
  }

  else
  {
    v20 = v10;
  }

  v11 = v19 >= v20;
  v21 = v19 - v20;
  if (v11)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  re::TextureData::mipmapLevelCount((a1 + 6));
  v24 = v22 + v23;
  if (v22 + v23 >= a1[17])
  {
    v24 = -1;
  }

  return COERCE_DOUBLE(__PAIR64__(v24, v22));
}

uint64_t REAssetManagerCreateDownsampledTextureWithCompiledData(uint64_t a1, void *a2, char *a3, int a4, void *a5)
{
  v67 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v32 = v9;
  re::DataSeekableInputStream::DataSeekableInputStream(v33, &v32, 1, 0);

  v41 = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  v11 = re::DynamicString::setCapacity(&v42, 0);
  *(&v46 + 1) = 0;
  v47 = 0uLL;
  re::DynamicString::setCapacity(&v46, 0);
  v48 = 0;
  re::AssetPath::parse(v37, &v41, a3, 0, *(a1 + 1808), *(a1 + 1904));
  if ((v37[0] & 1) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    if (v39)
    {
      v30 = *&v40[7];
    }

    else
    {
      v30 = v40;
    }

    *buf = 136315394;
    *&buf[4] = a3;
    *&buf[12] = 2080;
    *&buf[14] = v30;
    v16 = "Failed to parse asset path '%s': %s";
    v17 = v15;
    v18 = 22;
    goto LABEL_38;
  }

  v13 = v48;
  v14 = re::TextureAsset::assetType(v12);
  if (v13 != v14)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 136315138;
    *&buf[4] = a3;
    v16 = "Trying to load and downsample a compiled asset that is not a texture at path: %s";
    v17 = v15;
    v18 = 12;
LABEL_38:
    _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
LABEL_10:

    v19 = 0;
    if (a5)
    {
      *a5 = 0;
    }

    goto LABEL_22;
  }

  v36[1] = 0;
  v36[2] = 0;
  v20 = *(a1 + 1808);
  *buf = re::TextureAsset::assetType(v14);
  v21 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v20, buf);
  v22 = (*(**v21 + 128))(*v21);
  v23 = *v21;
  memset(buf, 0, sizeof(buf));
  v57 = 0x7FFFFFFFLL;
  v58 = 0u;
  v59 = 0u;
  v56 = 0;
  v60 = 0;
  v61 = 0x7FFFFFFFLL;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  v62 = 0;
  v65 = 0;
  v24 = re::TextureAsset::assetType(v22);
  v25 = re::globalAllocators(v24);
  v26 = (*(*v25[2] + 32))(v25[2], 144, 8);
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 40) = 0;
  *(v26 + 48) = 0;
  *(v26 + 56) = 65793;
  *(v26 + 61) = 1;
  *(v26 + 64) = 0;
  *(v26 + 80) = 0;
  *(v26 + 88) = 0;
  *(v26 + 128) = 0;
  *(v26 + 104) = 0;
  *(v26 + 112) = 0;
  *(v26 + 96) = 0;
  *(v26 + 120) = 0;
  *v26 = &unk_1F5D2D598;
  *(v26 + 8) = 0;
  *(v26 + 136) = a4;
  re::TextureAssetLoader::initSpecializedTemporaryLoader(v26, v23);
  v50[0] = &unk_1F5D2D710;
  v52 = v50;
  v54[3] = v54;
  v53 = v26;
  v54[0] = &unk_1F5D2D710;
  re::internal::AssetTypeRegistry::registerAssetType(buf, v24, &v53);
  std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v53);
  std::__function::__value_func<void ()(re::AssetLoader *)>::~__value_func[abi:nn200100](v50);
  v36[0] = buf;
  *v49 = 0;
  *&v49[8] = 0;
  v35[0] = 0;
  re::AssetUtilities::loadCompiledAssetFromStream(v33, v49, v36, v13, 0, 0, 0, v35, v50);
  if (v50[0])
  {
    re::AssetManager::createAssetEntryForNamedAsset(a1, v50[1], &v41, v49);
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((*&v49[8] + 264), v51);
    v19 = *v49;
    if (*v49)
    {
      v27 = (*v49 + 8);
    }

    re::AssetHandle::~AssetHandle(v49);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v28 = CoreRELog::log;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      if (v51)
      {
        v31 = v52;
      }

      else
      {
        v31 = &v51 + 1;
      }

      *v49 = 136315394;
      *&v49[4] = a3;
      *&v49[12] = 2080;
      *&v49[14] = v31;
      _os_log_error_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_ERROR, "Error loading compiled asset '%s': %s", v49, 0x16u);
    }

    v19 = 0;
    if (a5)
    {
      *a5 = 0;
    }
  }

  re::Result<re::AssetUtilities::CompiledAssetLoadResult,re::DynamicString>::~Result(v50);
  re::internal::AssetTypeRegistry::~AssetTypeRegistry(buf);
LABEL_22:
  if (v37[0] & 1) == 0 && v38 && (v39)
  {
    (*(*v38 + 40))();
  }

  if (v46)
  {
    if (BYTE8(v46))
    {
      (*(*v46 + 40))();
    }

    v47 = 0u;
    v46 = 0u;
  }

  if (v42 && (v43 & 1) != 0)
  {
    (*(*v42 + 40))();
  }

  v33[0] = &unk_1F5D0A4F8;

  v33[0] = &unk_1F5D0A468;
  re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v34);

  return v19;
}

void *REAssetManagerCreateCompiledTextureFromKtxAndJson(uint64_t a1, void *a2, void *a3, void *a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v60[1] = 0;
  v60[2] = 0;
  v60[0] = *(a1 + 1808);
  v9 = re::TextureAsset::assetType(v8);
  v10 = *(a1 + 1808);
  *&v61 = v9;
  v11 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v10, &v61);
  (*(**v11 + 128))(*v11);
  v12 = *v11;
  v59 = *((*(*v12 + 128))(v12) + 32);
  re::TypeRegistry::typeInfo(v59, &v59, &v61);
  re::TypeInfo::TypeInfo(v58, &v61 + 8);
  v13 = [(re::TextureAsset *)v8 bytes];
  v14 = [(re::TextureAsset *)v8 length];
  if (v53[0])
  {
    v16 = v54;
    if ([v7 length] < 0x40)
    {
      goto LABEL_34;
    }

    v17 = [v7 bytes];
    v61 = *v17;
    v62 = v17[1];
    v63[0] = v17[2];
    v63[1] = v17[3];
    if (v61 != 0xBB31312058544BABLL || DWORD2(v61) != 169478669)
    {
      if (a4)
      {
        v20 = "Tried to load a non-KTX file as KTX (header identifier mismatch)";
LABEL_27:
        re::DynamicString::format(v50, v20, v18, v33, v34, v35, v36);
        if (v50[1])
        {
          v29 = v51;
        }

        else
        {
          v29 = &v50[1] + 1;
        }

        re::WrappedError::make(v45, @"REAssetRefErrorDomain", 4, v29);
        v30 = v45[0];
        *a4 = v30;
        CFRetain(v30);

        v24 = v50[0];
        if (!v50[0] || (v50[1] & 1) == 0)
        {
          goto LABEL_34;
        }

        v25 = v51;
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (HIDWORD(v61) != 67305985)
    {
      if (a4)
      {
        v20 = "Tried to load a KTX file with unsupported endianness";
        goto LABEL_27;
      }

LABEL_34:
      a4 = 0;
      goto LABEL_35;
    }

    if (*(v16 + 248) != *(v63 + 4))
    {
      if (a4)
      {
        v35 = DWORD1(v63[0]);
        v36 = DWORD2(v63[0]);
        v33 = *(v16 + 248);
        v34 = *(v16 + 252);
        v20 = "Texture asset width/height (%i,%i) specified in the json don't match width/height (%u,%u) specified in the KTX.";
        goto LABEL_27;
      }

      goto LABEL_34;
    }

    v51 = 0u;
    v52 = 0u;
    *v50 = 0u;
    DWORD1(v52) = 0x7FFFFFFF;
    v49 = v7;
    re::TextureAssetLoader::setBlobOverrideSerializationParameter(v50, &v49);

    v48 = 0;
    v45[1] = 0;
    v46 = 0;
    v44[2] = 0;
    v45[0] = 0;
    v47 = 0;
    v44[0] = &unk_1F5D0A7B0;
    v44[1] = v45;
    v62 = 0u;
    memset(v63, 0, sizeof(v63));
    v61 = 0u;
    v26 = re::AssetPath::AssetPath(&v61);
    v41[0] = v60;
    v41[1] = 0;
    v42 = 3;
    v43 = 257;
    v41[2] = 0;
    v41[3] = v50;
    v27 = re::TextureAsset::assetType(v26);
    v28 = re::AssetUtilities::saveCompiledAssetToStream(v44, v16, &v61, v27, v41, v38);
    (*(*v12 + 16))(v12, v16, v28);
    if (v38[0])
    {
      re::Data::makeDataWithBytes(&v37, v48, v46);
      a4 = v37;
      CFRetain(v37);
    }

    else if (a4)
    {
      re::WrappedError::make(&v37, @"REAssetRefErrorDomain", 4, "Failed to create new compiledtexture data.");
      v32 = v37;
      *a4 = v32;
      CFRetain(v32);

      a4 = 0;
    }

    if (v38[0] & 1) == 0 && v39 && (v40)
    {
      (*(*v39 + 40))();
    }

    if (*(&v63[0] + 1))
    {
      if (v63[1])
      {
        (*(**(&v63[0] + 1) + 40))();
      }

      memset(v63 + 8, 0, 32);
    }

    if (*(&v61 + 1) && (v62 & 1) != 0)
    {
      (*(**(&v61 + 1) + 40))();
    }

    if (v45[0] && v48)
    {
      (*(*v45[0] + 40))();
    }

    re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v50);
  }

  else if (a4)
  {
    if (v56)
    {
      v21 = *&v57[7];
    }

    else
    {
      v21 = v57;
    }

    re::DynamicString::format(&v61, "Failed to deserialize TextureAsset json due to error: %s.", v15, v21);
    if (BYTE8(v61))
    {
      v22 = v62;
    }

    else
    {
      v22 = &v61 + 9;
    }

    re::WrappedError::make(v50, @"REAssetRefErrorDomain", 4, v22);
    v23 = v50[0];
    *a4 = v23;
    CFRetain(v23);

    v24 = v61;
    if (!v61 || (BYTE8(v61) & 1) == 0)
    {
      goto LABEL_34;
    }

    v25 = v62;
LABEL_33:
    (*(*v24 + 40))(v24, v25);
    goto LABEL_34;
  }

LABEL_35:
  if (v53[0] & 1) == 0 && v55 && (v56)
  {
    (*(*v55 + 40))();
  }

  return a4;
}

re::AssetPath *re::AssetPath::AssetPath(re::AssetPath *this)
{
  *this = 0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  v2 = (this + 8);
  v3 = re::DynamicString::setCapacity(v2, 0);
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  re::DynamicString::setCapacity(this + 5, 0);
  *(this + 9) = 0;
  return this;
}

void RETextureAssetReplaceAllWithDirectTexture(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = re::TextureAsset::assetType(v5);
  v7 = *(a1 + 1808);
  v20 = v6;
  v8 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v7, &v20);
  (*(**v8 + 128))(*v8);
  v9 = *v8;
  re::AssetAPIHelper::assetHandleCreate(a2, &v18);
  re::AssetHandle::loadNow(v19, 0);
  if (v19)
  {
    v10 = *(v19 + 3);
    if (v10)
    {
      re::AssetManager::convertToMutable(v10, &v18);
    }
  }

  re::AssetHandle::setNetworkSharingMode(&v18, 1);
  if (v19)
  {
    v11 = atomic_load(v19 + 224);
    if (v11 == 2)
    {
      re::AssetHandle::mutateAssetCommon(&v18);
      ++*(v19 + 69);
      v12 = re::AssetHandle::loadedAsset<re::TextureAsset>(&v18);
      if (v12)
      {
        v13 = v12;
        if (v5 && *(v12 + 56))
        {
          v29 = 0;
          re::TextureAssetLoader::setDrawableQueueForTextureAsset(v9, v12, &v29);
        }

        v14 = re::AssetHandle::assetInfo(&v18);
        LODWORD(v20) = *v14;
        re::DynamicString::DynamicString(&v21, (v14 + 2));
        re::DynamicString::DynamicString(v23, (v14 + 10));
        v15 = v14[22];
        v16 = *(v14 + 10);
        v23[4] = *(v14 + 9);
        v23[5] = v16;
        v24 = v15;
        re::DynamicString::DynamicString(v25, (v14 + 24));
        re::DynamicString::DynamicString(v26, (v14 + 32));
        re::DynamicString::DynamicString(v27, (v14 + 40));
        re::DynamicString::DynamicString(v28, (v14 + 48));
        re::TextureAssetLoader::setDirectTextureForTextureAsset(v9, v13, v5, &v20);
        if (v28[0])
        {
          if (v28[1])
          {
            (*(*v28[0] + 40))();
          }

          memset(v28, 0, sizeof(v28));
        }

        if (v27[0])
        {
          if (v27[1])
          {
            (*(*v27[0] + 40))();
          }

          memset(v27, 0, sizeof(v27));
        }

        if (v26[0])
        {
          if (v26[1])
          {
            (*(*v26[0] + 40))();
          }

          memset(v26, 0, sizeof(v26));
        }

        if (v25[0])
        {
          if (v25[1])
          {
            (*(*v25[0] + 40))();
          }

          memset(v25, 0, sizeof(v25));
        }

        if (v23[0])
        {
          if (v23[1])
          {
            (*(*v23[0] + 40))();
          }

          memset(v23, 0, 32);
        }

        if (v21 && (v22 & 1) != 0)
        {
          (*(*v21 + 40))();
        }

        v17 = v19;
        *(v19 + 256) = 1;
        re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v17);
        re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v19);
      }
    }
  }

  re::AssetHandle::payloadDidChangeIfPossible(&v18);
  re::AssetHandle::~AssetHandle(&v18);
}

char *RETextureAssetCreateCompressedTextureAssetData(re::ImportGraphicsContext *a1, uint64_t a2, re::CoreREAssetUtils *this, char *a4)
{
  re::CoreREAssetUtils::textureASTCCompressionOptions(&v97, this, 1);
  if ((v97 & 1) == 0)
  {
    if (BYTE8(v98))
    {
      v8 = v99;
    }

    else
    {
      v8 = (&v98 + 9);
    }

    re::CoreREAssetUtils::logAndSetErrorFromString(v8, a4, @"REPipelineErrorDomain", 0x64);
    v12 = 0;
    goto LABEL_89;
  }

  re::AssetAPIHelper::assetHandleCreate(a2, &v95);
  if (*(v96 + 328) == 1)
  {
    v7 = re::AssetHandle::maybeUnregisteredMemoryAsset<re::TextureAsset>(&v95);
  }

  else
  {
    v7 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(&v95);
  }

  v12 = v7;
  if (v7)
  {
    if (a1)
    {
      re::ImportGraphicsContext::createFromRenderManager(&v93, a1);
      v91 = 0;
      v92 = 0;
      if (v93 && ![v93 supportsFamily:1002])
      {
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(&v91, (v12 + 112));
        goto LABEL_21;
      }
    }

    else
    {
      v93 = 0u;
      v94 = 0u;
      LOWORD(v94) = 257;
      BYTE2(v94) = 1;
      BYTE5(v94) = 1;
      v91 = 0;
      v92 = 0;
    }

    re::logTextureCompressionInfo("RETextureAssetCreateCompressedTextureAssetData", (v12 + 112), &v98);
    re::createCompressedTextureData((v12 + 112), *(v12 + 89), &v98, &v93, 0, 0, &v63);
    if ((v63 & 1) == 0)
    {
      if (v64[8])
      {
        v17 = v66;
      }

      else
      {
        v17 = v65;
      }

      re::CoreREAssetUtils::logAndSetErrorFromString(v17, a4, @"REPipelineErrorDomain", 0x64);
      re::Result<re::TextureData,re::DynamicString>::~Result(&v63);
      v12 = 0;
LABEL_85:
      if (v92 != -1)
      {
        (off_1F5D2D578[v92])(&v63, &v91);
      }

      goto LABEL_88;
    }

    *&v84 = 0;
    DWORD2(v84) = 0;
    LOBYTE(v51) = 0;
    v52[0] = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v51, v64);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(v64, &v84);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v91, &v51);
    if (v52[0] != -1)
    {
      (off_1F5D2D578[v52[0]])(&v76, &v51);
    }

    v52[0] = -1;
    if (DWORD2(v84) != -1)
    {
      (off_1F5D2D578[DWORD2(v84)])(&v76, &v84);
    }

    re::Result<re::TextureData,re::DynamicString>::~Result(&v63);
LABEL_21:
    re::TextureAssetLoader::getOrCreateImportOptions(&v95, &v84);
    v85 = 4;
    v86 = v98;
    v76 = *(v12 + 64);
    v77[0] = *(v12 + 136);
    *(v77 + 12) = *(v12 + 148);
    v13 = *(v12 + 21);
    v78 = v13;
    if (v13)
    {
      v14 = (v13 + 8);
    }

    v79 = *(v12 + 22);
    re::DynamicArray<short>::DynamicArray(v80, v12 + 23);
    v83 = *(v12 + 28);
    v76 |= 8u;
    re::TextureAssetData::TextureAssetData(&v63);
    v15 = *(v96 + 264);
    if (v15)
    {
      v43 = v76;
      v44[0] = v77[0];
      *(v44 + 12) = *(v77 + 12);
      v45 = v78;
      if (v78)
      {
        v16 = (v78 + 8);
      }

      v46 = v79;
      re::DynamicArray<short>::DynamicArray(v47, v80);
      v50 = v83;
      re::TextureAssetLoader::createTextureAssetDataWithOptionsOverride(&v91, &v43, v15, &v84, &v51);
      re::TextureAssetData::operator=(&v63, &v51);
      v51 = &unk_1F5CC40A0;
      if (v62)
      {

        v62 = 0;
      }

      if (v57)
      {
        if (v61)
        {
          (*(*v57 + 40))();
        }

        v61 = 0;
        v58 = 0;
        v59 = 0;
        v57 = 0;
        ++v60;
      }

      if (v55)
      {

        v55 = 0;
      }

      if (v54 != -1)
      {
        (off_1F5D2D578[v54])(&v100, &v53);
      }

      v54 = -1;
      v51 = &unk_1F5CCF868;
      objc_destructInstance(v52);
      if (v47[0])
      {
        if (v49)
        {
          (*(*v47[0] + 40))();
        }

        v49 = 0;
        memset(v47, 0, sizeof(v47));
        ++v48;
      }

      if (v45)
      {

        v45 = 0;
      }
    }

    else
    {
      v35 = v76;
      v36[0] = v77[0];
      *(v36 + 12) = *(v77 + 12);
      v37 = v78;
      if (v78)
      {
        v18 = (v78 + 8);
      }

      v38 = v79;
      re::DynamicArray<short>::DynamicArray(v39, v80);
      v42 = v83;
      re::TextureAssetLoader::createTextureAssetData(&v91, &v35, &v84, &v51);
      re::TextureAssetData::operator=(&v63, &v51);
      v51 = &unk_1F5CC40A0;
      if (v62)
      {

        v62 = 0;
      }

      if (v57)
      {
        if (v61)
        {
          (*(*v57 + 40))(v57, v61, v19, v20, v21);
        }

        v61 = 0;
        v58 = 0;
        v59 = 0;
        v57 = 0;
        ++v60;
      }

      if (v55)
      {

        v55 = 0;
      }

      if (v54 != -1)
      {
        (off_1F5D2D578[v54])(&v100, &v53);
      }

      v54 = -1;
      v51 = &unk_1F5CCF868;
      objc_destructInstance(v52);
      if (v39[0])
      {
        if (v41)
        {
          (*(*v39[0] + 40))(v39[0], v41, v22, v23, v24);
        }

        v41 = 0;
        memset(v39, 0, sizeof(v39));
        ++v40;
      }

      if (v37)
      {

        v37 = 0;
      }
    }

    re::make::shared::object<re::TextureAssetData,re::TextureAssetData>(&v63, &v51);
    v12 = v51;
    v63 = &unk_1F5CC40A0;
    if (v75)
    {

      v75 = 0;
    }

    if (v70)
    {
      if (v74)
      {
        (*(*v70 + 40))(v70, v74, v25, v26, v27);
      }

      v74 = 0;
      v71 = 0;
      v72 = 0;
      v70 = 0;
      ++v73;
    }

    if (v68)
    {

      v68 = 0;
    }

    if (v67 != -1)
    {
      (off_1F5D2D578[v67])(&v51, &v66);
    }

    v67 = -1;
    v63 = &unk_1F5CCF868;
    objc_destructInstance(v64);
    if (v80[0])
    {
      if (v82)
      {
        (*(*v80[0] + 40))(v80[0], v82, v28, v29, v30);
      }

      v82 = 0;
      memset(v80, 0, sizeof(v80));
      ++v81;
    }

    if (v78)
    {
    }

    if (v88)
    {
      if (v89)
      {
        (*(*v88 + 40))(v88, v90, v31, v32, v33);
        v89 = 0;
        v90 = 0;
      }

      v88 = 0;
    }

    goto LABEL_85;
  }

LABEL_88:
  re::AssetHandle::~AssetHandle(&v95);
LABEL_89:
  if (v97 & 1) == 0 && v98 && (BYTE8(v98))
  {
    (*(*v98 + 40))(v98, v99, v9, v10, v11);
  }

  return v12;
}

BOOL RETextureAssetCanBeStreamed(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v6);
  v1 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v6);
  if (v1)
  {
    v2 = *(v1 + 168) != 0;
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Texture cannot be streamed when texture asset is null.", v5, 2u);
    }

    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v6);
  return v2;
}

uint64_t RETextureAssetGetSourceMipmapLevelCount(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v6);
  v1 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v6);
  if (v1)
  {
    v2 = *(v1 + 156);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Cannot get source mipmap level count when asset is null.", v5, 2u);
    }

    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v6);
  return v2;
}

uint64_t RETextureAssetCreateTextureAssetData(re::ImportGraphicsContext *a1, uint64_t a2, const __CFArray *a3, void *a4, char *a5, uint64_t a6, char *a7)
{
  v72 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v13 = a5 - 8;
  }

  else
  {
    v13 = 0;
  }

  if (a5)
  {
    v14 = a5;
    v15 = a5;
  }

  re::AssetAPIHelper::assetHandleCreate(a2, &v61);
  if (!v62 || (v16 = atomic_load((v62 + 896)), v16 != 2))
  {
    v22 = "Update requested for an unloaded TextureAsset";
LABEL_15:
    v23 = a7;
    v24 = 100;
    goto LABEL_16;
  }

  v17 = atomic_load(v13 + 24);
  if (v17)
  {
    goto LABEL_13;
  }

  v18 = atomic_load(v13 + 24);
  if (v18)
  {
    goto LABEL_13;
  }

  v19 = re::AssetHandle::loadedAsset<re::TextureAsset>(&v61);
  if (!v19)
  {
    v22 = "Loaded TextureAsset not available.";
    goto LABEL_15;
  }

  v20 = atomic_load(v13 + 24);
  if (v20 & 1) != 0 || (v21 = atomic_load(v13 + 24), (v21))
  {
LABEL_13:
    v22 = "Create texture asset data operation cancelled.";
    v23 = a7;
    v24 = 9;
LABEL_16:
    re::CoreREAssetUtils::logAndSetErrorFromString(v22, v23, @"REPipelineErrorDomain", v24);
    v25 = 0;
    goto LABEL_17;
  }

  v47 = v19;
  v60 = 0;
  v57[1] = 0;
  v58 = 0;
  v59 = 0;
  re::DynamicArray<short>::setCapacity(v57, 0);
  ++v59;
  if (a3)
  {
    Count = CFArrayGetCount(a3);
    re::DynamicArray<short>::resize(v57, Count);
    if (Count >= 1)
    {
      v28 = 0;
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
        v31 = v58;
        if (v58 <= i)
        {
          v56[0] = 0;
          v64 = 0u;
          memset(v65, 0, 48);
          v63 = 0u;
          v41 = MEMORY[0x1E69E9C10];
          v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v67 = 136315906;
          *&v67[4] = "operator[]";
          *&v67[12] = 1024;
          if (v42)
          {
            v43 = 3;
          }

          else
          {
            v43 = 2;
          }

          *&v67[14] = 789;
          v68 = 2048;
          v69 = i;
          v70 = 2048;
          v71 = v31;
          _os_log_send_and_compose_impl(v43, v56, &v63, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v67, 38, v44, v46);
          _os_crash_msg();
          __break(1u);
        }

        CFNumberGetValue(ValueAtIndex, kCFNumberSInt16Type, (v60 + v28));
        v28 += 2;
      }
    }
  }

  if (a4)
  {
    *&v32 = *a4;
    *(&v32 + 1) = HIDWORD(*a4);
    v33 = v32;
  }

  else
  {
    v33 = 0uLL;
  }

  v45 = v33;
  re::ImportGraphicsContext::createFromRenderManager(v67, a1);
  v34 = atomic_load(v13 + 24);
  if ((v34 & 1) == 0)
  {
    v35 = atomic_load(v13 + 24);
    if ((v35 & 1) == 0)
    {
      if (a3)
      {
        v56[1] = v60;
        v56[2] = v58;
        v36 = 1;
      }

      else
      {
        v36 = 0;
      }

      LOBYTE(v56[0]) = v36;
      if (a4)
      {
        v55 = v45;
        v37 = 1;
      }

      else
      {
        v37 = 0;
      }

      v54[0] = v37;
      re::TextureAssetLoader::getOrCreateImportOptions(&v61, v49);
      re::TextureAsset::createTextureAssetData(v47, v67, v49, v56, v54, v13, v13, &v63);
      if (v51)
      {
        if (v52)
        {
          (*(*v51 + 40))();
          v52 = 0;
          v53 = 0;
        }

        v51 = 0;
      }

      if (v63)
      {
        if (re::TextureData::isValid(v65))
        {
          v38 = *(v62 + 264);
          if (v38)
          {
            v39 = (v38 + 8);
            re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v66, *(v62 + 264));
            re::make::shared::object<re::TextureAssetData,re::TextureAssetData>((&v63 + 8), &v48);
            v25 = v48;
          }

          else
          {
            re::make::shared::object<re::TextureAssetData,re::TextureAssetData>((&v63 + 8), &v48);
            v25 = v48;
          }

          goto LABEL_51;
        }

        v40 = "Texture data unexpectedly invalid";
      }

      else if (v64)
      {
        v40 = *(&v64 + 1);
      }

      else
      {
        v40 = (&v64 + 1);
      }

      re::CoreREAssetUtils::logAndSetErrorFromString(v40, a7, @"REPipelineErrorDomain", 0x64);
      v25 = 0;
LABEL_51:
      re::Result<re::TextureAssetData,re::DynamicString>::~Result(&v63);
      goto LABEL_52;
    }
  }

  re::CoreREAssetUtils::logAndSetErrorFromString("Create texture asset data operation cancelled.", a7, @"REPipelineErrorDomain", 9);
  v25 = 0;
LABEL_52:

  if (v57[0] && v60)
  {
    (*(*v57[0] + 40))();
  }

LABEL_17:
  re::AssetHandle::~AssetHandle(&v61);
  if (a5)
  {
  }

  return v25;
}

unsigned __int8 *re::Result<re::TextureAssetData,re::DynamicString>::~Result(unsigned __int8 *a1)
{
  v3 = *a1;
  v2 = (a1 + 8);
  if (v3 == 1)
  {
    (**v2)(v2);
  }

  else
  {
    re::DynamicString::deinit(v2);
  }

  return a1;
}

size_t RETextureAssetMemoryEstimateForLoadingPartialContents(uint64_t a1, uint64_t a2, const __CFArray *a3, int32x2_t *a4, char *a5)
{
  v50 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a2, &v35);
  if (!v36 || (v9 = atomic_load((v36 + 896)), v9 != 2))
  {
    v11 = "Update requested for an unloaded TextureAsset";
    goto LABEL_7;
  }

  v10 = re::AssetHandle::loadedAsset<re::TextureAsset>(&v35);
  if (!v10)
  {
    v11 = "Loaded TextureAsset not available.";
    goto LABEL_7;
  }

  if (!(a3 | a4))
  {
    v11 = "Either mipmaps or slices must be provided to estimate memory use for partial texture contents.";
LABEL_7:
    re::CoreREAssetUtils::logAndSetErrorFromString(v11, a5, @"REPipelineErrorDomain", 0x64);
    v12 = 0;
    goto LABEL_8;
  }

  v14 = v10;
  v34 = 0;
  v31[1] = 0;
  v32 = 0;
  v33 = 0;
  re::DynamicArray<short>::setCapacity(v31, 0);
  ++v33;
  if (a3)
  {
    Count = CFArrayGetCount(a3);
    re::DynamicArray<short>::resize(v31, Count);
    if (Count >= 1)
    {
      v16 = 0;
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
        v19 = v32;
        if (v32 <= i)
        {
          v29 = 0;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v45 = 0u;
          v23 = MEMORY[0x1E69E9C10];
          v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v37 = 136315906;
          v38 = "operator[]";
          v39 = 1024;
          if (v24)
          {
            v25 = 3;
          }

          else
          {
            v25 = 2;
          }

          v40 = 789;
          v41 = 2048;
          v42 = i;
          v43 = 2048;
          v44 = v19;
          _os_log_send_and_compose_impl(v25, &v29, &v45, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v37, 38, v26, v27);
          _os_crash_msg();
          __break(1u);
        }

        CFNumberGetValue(ValueAtIndex, kCFNumberSInt16Type, (v34 + v16));
        v16 += 2;
      }
    }
  }

  if (!a4)
  {
    LOBYTE(v45) = 1;
    *(&v45 + 1) = v34;
    *&v46 = v32;
    LOBYTE(v37) = 0;
    LOBYTE(v29) = 0;
    goto LABEL_19;
  }

  v20 = *a4;
  if (vcgt_u32(vdup_lane_s32(*a4, 1), *a4).u8[0])
  {
    *&v21 = v20.u32[0];
    *(&v21 + 1) = v20.u32[1];
    LOBYTE(v45) = 1;
    *(&v45 + 1) = v34;
    *&v46 = v32;
    LOBYTE(v37) = 0;
    LOBYTE(v29) = 1;
    v30 = v21;
LABEL_19:
    v26 = 0;
    v27 = 0;
    v28 = 0;
    if (a3)
    {
      v22 = &v45;
    }

    else
    {
      v22 = &v37;
    }

    re::TextureAsset::getMemoryInfo((a1 + 208), v14, v22, &v29, &v26);
    v12 = v27 - v26;
    goto LABEL_24;
  }

  re::CoreREAssetUtils::logAndSetErrorFromString("Invalid mipmap range requested for TextureAsset.", a5, @"REPipelineErrorDomain", 0x64);
  v12 = 0;
LABEL_24:
  if (v31[0] && v34)
  {
    (*(*v31[0] + 40))();
  }

LABEL_8:
  re::AssetHandle::~AssetHandle(&v35);
  return v12;
}

unint64_t RETextureAssetGetTextureDataAllocatedSize(uint64_t a1, uint64_t a2, char *a3)
{
  re::AssetAPIHelper::assetHandleCreate(a2, &v13);
  if (!v14 || (v5 = atomic_load((v14 + 896)), v5 != 2))
  {
    v8 = "Update requested for an unloaded TextureAsset";
LABEL_7:
    re::CoreREAssetUtils::logAndSetErrorFromString(v8, a3, @"REPipelineErrorDomain", 0x64);
    v7 = 0;
    goto LABEL_8;
  }

  v6 = re::AssetHandle::loadedAsset<re::TextureAsset>(&v13);
  if (!v6)
  {
    v8 = "Loaded TextureAsset not available.";
    goto LABEL_7;
  }

  memset(v12, 0, sizeof(v12));
  v11[0] = 0;
  v10[0] = 0;
  re::TextureAsset::getMemoryInfo((a1 + 208), v6, v11, v10, v12);
  v7 = v12[0];
  if (!v12[0])
  {
    re::CoreREAssetUtils::logAndSetErrorFromString("Could not estimate memory for TextureAsset", a3, @"REPipelineErrorDomain", 0x64);
  }

LABEL_8:
  re::AssetHandle::~AssetHandle(&v13);
  return v7;
}

void anonymous namespace::REAssetManagerCreateDownsampledTextureWithCompiledStream(REAssetManager *,re::SeekableInputStream &,char const*,int,__CFError **)::DownsampleTextureAssetLoader::~DownsampleTextureAssetLoader(re::TextureAssetLoader *a1)
{
  re::TextureAssetLoader::~TextureAssetLoader(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<anonymous namespace::REAssetManagerCreateDownsampledTextureWithCompiledStream(REAssetManager *,re::SeekableInputStream &,char const*,int,__CFError **)::$_0,std::allocator<anonymous namespace::REAssetManagerCreateDownsampledTextureWithCompiledStream(REAssetManager *,re::SeekableInputStream &,char const*,int,__CFError **)::$_0>,void ()(re::AssetLoader *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::make::shared::object<re::TextureAssetData,re::TextureAssetData>@<X0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 152, 8);
  result = re::TextureAssetData::TextureAssetData(v5, a1);
  *a2 = result;
  return result;
}

uint64_t RERigAssetCreateBipedToBipedAutoRetargetAsset(uint64_t a1, re::RigGraphAsset *this, re::ecs2::Entity *a3, CFErrorRef *a4)
{
  v29[6] = *MEMORY[0x1E69E9840];
  if (a1 && this && a3)
  {
    AutoRetargetBipedToBipedRigGraphAsset = re::RigGraphAsset::createAutoRetargetBipedToBipedRigGraphAsset(this, a3, 0, 0, 0, buf);
    if (buf[0] == 1)
    {
      v7 = v29[0];
      v8 = re::RigGraphAsset::assetType(AutoRetargetBipedToBipedRigGraphAsset);
      (*(*a1 + 424))(&v24, a1, v7, v8, 0, 0, 0);
      if (v25[0])
      {
        v29[0] = 0;
        v9 = v24;
        if (v24)
        {
          v10 = (v24 + 8);
        }
      }

      else
      {
        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v21 = CoreRELog::log;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *v26 = 0;
          _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "RigAsset AutoRetarget Creation Error - Failed registering the new asset", v26, 2u);
        }

        makeError(@"REAssetRefErrorDomain", "Failed registering the new asset", 32, a4);
        v9 = 0;
      }

      re::AssetHandle::~AssetHandle(&v24);
    }

    else
    {
      v12 = v29[0];
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v13 = CoreRELog::log;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        getErrorMessage(&v24, v12);
        v23 = (v25[0] & 1) != 0 ? v25[1] : (v25 + 1);
        *v26 = 136315138;
        v27 = v23;
        _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "RigAsset AutoRetarget Creation Error - %s", v26, 0xCu);
        if (v24)
        {
          if (v25[0])
          {
            (*(*v24 + 40))();
          }
        }
      }

      v9 = 0;
      *a4 = v12;
    }

    if (buf[0] == 1)
    {
      std::unique_ptr<re::RigGraphAsset,std::function<void ()(re::RigGraphAsset*)>>::~unique_ptr[abi:nn200100](v29, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "RigAsset AutoRetarget Creation Error - NULL argument detected", buf, 2u);
    }

    makeError(@"REAssetRefErrorDomain", "NULL argument detected", 22, a4);
    return 0;
  }

  return v9;
}

void makeError(const __CFString *a1, const char *a2, uint64_t a3, CFErrorRef *a4)
{
  if (!*a4)
  {
    userInfoValues[3] = v4;
    userInfoValues[4] = v5;
    userInfoValues[0] = CFStringCreateWithCString(0, a2, 0x8000100u);
    v8 = *MEMORY[0x1E695E620];
    *a4 = CFErrorCreateWithUserInfoKeysAndValues(0, a1, 4, &v8, userInfoValues, 1);
    if (userInfoValues[0])
    {
      CFRelease(userInfoValues[0]);
    }
  }
}

void getErrorMessage(__CFError *a1, __CFError *a2)
{
  if (a2)
  {
    v3 = CFErrorCopyDescription(a2);
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *(a1 + 1) = 0;
    re::DynamicString::setCapacity(a1, 0);
    CStringPtr = CFStringGetCStringPtr(v3, 0x8000100u);
    if (CStringPtr)
    {
      v5 = CStringPtr;
      re::DynamicString::operator=(a1, &v15);
      v6 = v15;
      if (!v15 || (v16 & 1) == 0)
      {
        goto LABEL_18;
      }

      v7 = v17;
    }

    else
    {
      Length = CFStringGetLength(v3);
      if (!Length)
      {
        goto LABEL_18;
      }

      v9 = 2 * Length;
      v12 = 0;
      v13 = 0;
      buffer = 0;
      CString = CFStringGetCString(v3, buffer, v9 + 2, 0x8000100u);
      if (CString)
      {
        v11 = buffer;
        re::DynamicString::operator=(a1, &v15);
        if (v15)
        {
          if (v16)
          {
            (*(*v15 + 40))();
          }
        }
      }

      v6 = v12;
      if (!v12 || !v13)
      {
        goto LABEL_18;
      }

      v7 = buffer;
    }

    (*(*v6 + 40))(v6, v7);
LABEL_18:
    CFRelease(v3);
    return;
  }

  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;

  re::DynamicString::setCapacity(a1, 0);
}

uint64_t RERigAssetCreateBipedToBipedAutoRetargetWithOffsetAsset(uint64_t a1, re::RigGraphAsset *this, re::ecs2::Entity *a3, re::ecs2::Entity *a4, uint64_t a5, int *a6, CFErrorRef *a7)
{
  v32[6] = *MEMORY[0x1E69E9840];
  if (a1 && this && a3)
  {
    AutoRetargetBipedToBipedRigGraphAsset = re::RigGraphAsset::createAutoRetargetBipedToBipedRigGraphAsset(this, a3, a4, a6, a5, buf);
    if (buf[0] == 1)
    {
      v10 = v32[0];
      v11 = re::RigGraphAsset::assetType(AutoRetargetBipedToBipedRigGraphAsset);
      (*(*a1 + 424))(&v27, a1, v10, v11, 0, 0, 0);
      if (v28[0])
      {
        v32[0] = 0;
        v12 = v27;
        if (v27)
        {
          v13 = (v27 + 8);
        }
      }

      else
      {
        if (CoreRELog::onceToken != -1)
        {
          dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
        }

        v24 = CoreRELog::log;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *v29 = 0;
          _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, "RigAsset AutoRetarget Creation Error - Failed registering the new asset", v29, 2u);
        }

        makeError(@"REAssetRefErrorDomain", "Failed registering the new asset", 32, a7);
        v12 = 0;
      }

      re::AssetHandle::~AssetHandle(&v27);
    }

    else
    {
      v15 = v32[0];
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v16 = CoreRELog::log;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        getErrorMessage(&v27, v15);
        v26 = (v28[0] & 1) != 0 ? v28[1] : (v28 + 1);
        *v29 = 136315138;
        v30 = v26;
        _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "RigAsset AutoRetarget Creation Error - %s", v29, 0xCu);
        if (v27)
        {
          if (v28[0])
          {
            (*(*v27 + 40))();
          }
        }
      }

      v12 = 0;
      *a7 = v15;
    }

    if (buf[0] == 1)
    {
      std::unique_ptr<re::RigGraphAsset,std::function<void ()(re::RigGraphAsset*)>>::~unique_ptr[abi:nn200100](v32, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v14 = CoreRELog::log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "RigAsset AutoRetarget Creation Error - NULL argument detected", buf, 2u);
    }

    makeError(@"REAssetRefErrorDomain", "NULL argument detected", 22, a7);
    return 0;
  }

  return v12;
}

re::MeshDefinition::AttributeArray *REMeshAttributesDescriptorCreate(re *a1, unint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 72, 8);
  re::MeshDefinition::AttributeArray::AttributeArray(v5, a2);
  if (a2)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(v5 + 4);
      if (v8 <= v7)
      {
        v17 = 0;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v29 = 0u;
        v11 = MEMORY[0x1E69E9C10];
        v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v21 = 136315906;
        v22 = "operator[]";
        v23 = 1024;
        if (v12)
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }

        v24 = 468;
        v25 = 2048;
        v26 = v7;
        v27 = 2048;
        v28 = v8;
        _os_log_send_and_compose_impl(v13, &v17, &v29, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38);
        _os_crash_msg();
        __break(1u);
LABEL_15:
        v20 = 0;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v29 = 0u;
        v14 = MEMORY[0x1E69E9C10];
        v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v21 = 136315906;
        v22 = "operator[]";
        v23 = 1024;
        if (v15)
        {
          v16 = 3;
        }

        else
        {
          v16 = 2;
        }

        v24 = 468;
        v25 = 2048;
        v26 = v7;
        v27 = 2048;
        v28 = v8;
        _os_log_send_and_compose_impl(v16, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v17, v18);
        _os_crash_msg();
        __break(1u);
      }

      *(*(v5 + 5) + 8 * v7) = *(a1 + v7);
      LOBYTE(v17) = 0;
      v8 = *(v5 + 7);
      if (v8 <= v7)
      {
        goto LABEL_15;
      }

      v9 = re::Optional<re::StringID>::operator=(*(v5 + 8) + v6, &v17);
      if (v17 == 1 && (v18 & 1) != 0)
      {
        if (v18)
        {
        }
      }

      ++v7;
      v6 += 24;
    }

    while (a2 != v7);
  }

  return v5;
}

void REMeshAttributeDescriptorArraySetCustomName(_anonymous_namespace_ *a1, unint64_t a2, const char *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &str_67;
  v13[0] = 1;
  v14 = v11;
  v15 = v12;
  v11 = 0;
  v12 = &str_67;
  v6 = *(a1 + 7);
  if (v6 <= a2)
  {
    v16 = 0;
    memset(v25, 0, sizeof(v25));
    v8 = MEMORY[0x1E69E9C10];
    v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    if (v9)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v20 = 468;
    v21 = 2048;
    v22 = a2;
    v23 = 2048;
    v24 = v6;
    _os_log_send_and_compose_impl(v10, &v16, v25, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v7 = re::Optional<re::StringID>::operator=(*(a1 + 8) + 24 * a2, v13);
  if (v13[0] == 1)
  {
    if (v14)
    {
      if (v14)
      {
      }
    }

    v14 = 0;
    v15 = &str_67;
  }

  if (v11)
  {
    if (v11)
    {
    }
  }
}