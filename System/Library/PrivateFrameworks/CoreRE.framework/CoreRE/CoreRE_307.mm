uint64_t REReferenceComponentSetEntityName(_BYTE *a1, const char *a2)
{
  a1[96] = 0;
  re::DynamicString::operator=((a1 + 32), &v5);
  result = v5;
  if (v5)
  {
    if (v6)
    {
      return (*(*v5 + 40))();
    }
  }

  return result;
}

uint64_t REReferenceComponentSetBundlePath(_BYTE *a1, const char *a2)
{
  a1[96] = 0;
  re::DynamicString::operator=((a1 + 64), &v5);
  result = v5;
  if (v5)
  {
    if (v6)
    {
      return (*(*v5 + 40))();
    }
  }

  return result;
}

uint64_t REReferenceComponentGetBundlePath(uint64_t a1)
{
  if (*(a1 + 72))
  {
    return *(a1 + 80);
  }

  else
  {
    return a1 + 73;
  }
}

void makeRequirements(uint64_t a1, re::StringID *a2, char *a3, char a4, const char *a5, const char *a6)
{
  v33 = *MEMORY[0x1E69E9840];
  v12 = re::ServiceLocator::serviceOrNull<re::RenderManager>(a2);
  v13 = re::ServiceLocator::serviceOrNull<re::DeformationService>(a2);
  if (!v12 || !v13)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v19 = CoreRELog::log;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "Cannot set custom deformation model without a render manager or deformation service", buf, 2u);
    }

    goto LABEL_32;
  }

  v14 = (*(*v13 + 32))(v13, 11);
  if (a3)
  {
    v15 = *a3;
    if (*a3)
    {
      v16 = a3[1];
      if (v16)
      {
        v17 = a3 + 2;
        do
        {
          v15 = 31 * v15 + v16;
          v18 = *v17++;
          v16 = v18;
        }

        while (v18);
      }
    }
  }

  else
  {
    v15 = 0;
  }

  *buf = 2 * v15;
  *&buf[8] = a3;
  v20 = re::CustomDeformers::customDeformerID(v14, buf);
  v21 = v20;
  if (buf[0])
  {
    if (buf[0])
    {
    }
  }

  if (v21 == -1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v24 = CoreRELog::log;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = a3;
      _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, "Cannot set custom deformation model for an unknown custom deformer: %s", buf, 0xCu);
    }

LABEL_32:
    *a1 = 0;
    return;
  }

  *&v25.var0 = 0;
  v25.var1 = &str_67;
  *&v26.var0 = 0;
  v26.var1 = &str_67;
  if (a6)
  {
  }

  *buf = a2;
  *&buf[8] = v12;
  v28 = v21;
  v29 = a4;
  re::StringID::StringID(&v30, &v25);
  v23 = re::StringID::StringID((&v31 + 8), &v26);
  *a1 = 1;
  *(a1 + 8) = *buf;
  *(a1 + 24) = v28;
  *(a1 + 32) = v29;
  *(a1 + 40) = v30;
  *(a1 + 48) = v31;
  *(a1 + 64) = v32;
  if (*&v26.var0)
  {
    if (*&v26.var0)
    {
    }
  }

  *&v26.var0 = 0;
  v26.var1 = &str_67;
  if (*&v25.var0)
  {
    if (*&v25.var0)
    {
    }
  }
}

void *RECustomDeformerComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

_anonymous_namespace_ *RECustomDeformerComponentGetDeformationIndex(re::StringID *a1, char *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = re::ServiceLocator::serviceOrNull<re::RenderManager>(a1);
  v5 = re::ServiceLocator::serviceOrNull<re::DeformationService>(a1);
  if (!v4 || !v5)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    LOWORD(v18) = 0;
    v12 = "Cannot set custom deformation model without a render manager or deformation service";
    v13 = v11;
    v14 = 2;
    goto LABEL_24;
  }

  v6 = (*(*v5 + 32))(v5, 11);
  if (a2)
  {
    v7 = *a2;
    if (*a2)
    {
      v8 = a2[1];
      if (v8)
      {
        v9 = a2 + 2;
        do
        {
          v7 = 31 * v7 + v8;
          v10 = *v9++;
          v8 = v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  *&v18 = 2 * v7;
  *(&v18 + 1) = a2;
  v15 = re::CustomDeformers::customDeformerID(v6, &v18);
  v16 = v15;
  if (v18)
  {
    if (v18)
    {
    }
  }

  if (v16 == -1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    LODWORD(v18) = 136315138;
    *(&v18 + 4) = a2;
    v12 = "Cannot set custom deformation model for an unknown custom deformer: %s";
    v13 = v11;
    v14 = 12;
LABEL_24:
    _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, v12, &v18, v14);
LABEL_21:

    return 0;
  }

  return v16;
}

unint64_t RECustomDeformerComponentGetDeformationIndexInputMeshID@<X0>(re::ecs2::CustomDeformerComponent *a1@<X0>, unint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  result = re::ecs2::CustomDeformerComponent::getInputObjectMeshID(a1, a2, a3);
  *a4 = *result;
  v6 = *(result + 16);
  if (*(result + 8) <= 1uLL && v6 && !*v6)
  {
    v6 = 0;
  }

  *(a4 + 8) = v6;
  v7 = *(result + 32);
  if (*(result + 24) <= 1uLL && v7 && !*v7)
  {
    v7 = 0;
  }

  *(a4 + 16) = v7;
  return result;
}

uint64_t RECustomDeformerComponentSetCustomDeformationModel(void *a1, re::StringID *a2, char *a3, char a4, const char *a5, const char *a6, const void *a7, size_t a8, uint64_t a9, __int128 a10)
{
  v41 = *MEMORY[0x1E69E9840];
  makeRequirements(v28, a2, a3, a4, a5, a6);
  v13 = v28[0];
  if (v28[0] == 1)
  {
    v21 = *(&v29 + 1);
    v22 = v30;
    v23[0] = v31;
    re::StringID::StringID(&v24, &v32);
    v14 = re::StringID::StringID(&v26, &v33);
    if (a7)
    {
      v15 = re::globalAllocators(v14);
      v16 = (*(*v15[2] + 32))(v15[2], a8, a9);
      v34 = &unk_1F5D2EB30;
      v35 = a10;
      v36 = &v34;
      v40 = &v38;
      v37 = v16;
      v38 = &unk_1F5D2EB30;
      v39 = a10;
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](&v34);
      memcpy(v37, a7, a8);
      v17 = v21;
      v18 = v22;
    }

    else
    {
      v17 = v21;
      v18 = v22;
      v37 = 0;
      v40 = 0;
    }

    re::ecs2::CustomDeformerComponent::setCustomDeformerDeformationModel(a1, v17, v18, v23, &v37);
    std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v37);
    v19 = re::ecs2::Component::enqueueMarkDirty(a1);
    if (v26)
    {
      if (v26)
      {
      }
    }

    v26 = 0;
    v27 = &str_67;
    if (v24)
    {
      if (v24)
      {
      }
    }

    if (*&v33.var0)
    {
    }

    if (*&v32.var0)
    {
    }
  }

  return v13;
}

uint64_t RECustomDeformerComponentSetCustomDeformationInput(void *a1, re::StringID *a2, char *a3, char a4, const char *a5, const char *a6, const void *a7, size_t a8, uint64_t a9, __int128 a10)
{
  v41 = *MEMORY[0x1E69E9840];
  makeRequirements(v28, a2, a3, a4, a5, a6);
  v13 = v28[0];
  if (v28[0] == 1)
  {
    v21 = *(&v29 + 1);
    v22 = v30;
    v23[0] = v31;
    re::StringID::StringID(&v24, &v32);
    v14 = re::StringID::StringID(&v26, &v33);
    if (a7)
    {
      v15 = re::globalAllocators(v14);
      v16 = (*(*v15[2] + 32))(v15[2], a8, a9);
      v34 = &unk_1F5D2EBB0;
      v35 = a10;
      v36 = &v34;
      v40 = &v38;
      v37 = v16;
      v38 = &unk_1F5D2EBB0;
      v39 = a10;
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](&v34);
      memcpy(v37, a7, a8);
      v17 = v21;
      v18 = v22;
    }

    else
    {
      v17 = v21;
      v18 = v22;
      v37 = 0;
      v40 = 0;
    }

    re::ecs2::CustomDeformerComponent::setCustomDeformerDeformationInput(a1, v17, v18, v23, &v37);
    std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v37);
    v19 = re::ecs2::Component::enqueueMarkDirty(a1);
    if (v26)
    {
      if (v26)
      {
      }
    }

    v26 = 0;
    v27 = &str_67;
    if (v24)
    {
      if (v24)
      {
      }
    }

    if (*&v33.var0)
    {
    }

    if (*&v32.var0)
    {
    }
  }

  return v13;
}

uint64_t RECustomDeformerComponentSetCustomDeformationInputObject(void *a1, re::StringID *a2, char *a3, char a4, const char *a5, const char *a6, const void *a7)
{
  v29 = *MEMORY[0x1E69E9840];
  makeRequirements(v19, a2, a3, a4, a5, a6);
  v9 = v19[0];
  if (v19[0] == 1)
  {
    v12 = *(&v20 + 1);
    v13 = v21;
    v14[0] = v22;
    re::StringID::StringID(&v15, &v23);
    re::StringID::StringID(&v17, &v24);
    if (a7)
    {
      CFRetain(a7);
      v25[0] = &unk_1F5D2EC30;
      v25[1] = RECustomDeformationInputObjectRelease;
      v25[3] = v25;
      v26 = a7;
      v28 = v27;
      v27[0] = &unk_1F5D2EC30;
      v27[1] = RECustomDeformationInputObjectRelease;
      re::ecs2::CustomDeformerComponent::setCustomDeformerDeformationInput(a1, v12, v13, v14, &v26);
      std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v26);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v25);
    }

    else
    {
      v26 = 0;
      v28 = 0;
      re::ecs2::CustomDeformerComponent::setCustomDeformerDeformationInput(a1, v12, v13, v14, &v26);
      std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v26);
    }

    v10 = re::ecs2::Component::enqueueMarkDirty(a1);
    if (v17)
    {
      if (v17)
      {
      }
    }

    v17 = 0;
    v18 = &str_67;
    if (v15)
    {
      if (v15)
      {
      }
    }

    if (*&v24.var0)
    {
    }

    if (*&v23.var0)
    {
    }
  }

  return v9;
}

uint64_t RECustomDeformerComponentForceContinuousDeformations(void *a1, re::StringID *a2, char *a3, char a4, const char *a5, const char *a6, int a7)
{
  makeRequirements(v18, a2, a3, a4, a5, a6);
  v9 = v18[0];
  if (v18[0] == 1)
  {
    v12 = v19;
    v13[0] = v20;
    re::StringID::StringID(&v14, &v21);
    re::StringID::StringID(&v16, &v22);
    re::ecs2::CustomDeformerComponent::setForceContinuousDeformations(a1, v12, v13, a7);
    v10 = re::ecs2::Component::enqueueMarkDirty(a1);
    if (v16)
    {
      if (v16)
      {
      }
    }

    v16 = 0;
    v17 = &str_67;
    if (v14)
    {
      if (v14)
      {
      }
    }

    if (*&v22.var0)
    {
    }

    if (*&v21.var0)
    {
    }
  }

  return v9;
}

__n128 std::__function::__func<RECustomDeformerComponentSetCustomDeformationModel::$_0,std::allocator<RECustomDeformerComponentSetCustomDeformationModel::$_0>,void ()(void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D2EB30;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

re *std::__function::__func<RECustomDeformerComponentSetCustomDeformationModel::$_0,std::allocator<RECustomDeformerComponentSetCustomDeformationModel::$_0>,void ()(void *)>::operator()(re *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(result + 1);
  if (v3)
  {
    result = v3(v2, *(result + 2));
  }

  if (v2)
  {
    v4 = *(*re::globalAllocators(result)[2] + 40);

    return v4();
  }

  return result;
}

uint64_t std::__function::__func<RECustomDeformerComponentSetCustomDeformationModel::$_0,std::allocator<RECustomDeformerComponentSetCustomDeformationModel::$_0>,void ()(void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<RECustomDeformerComponentSetCustomDeformationInput::$_0,std::allocator<RECustomDeformerComponentSetCustomDeformationInput::$_0>,void ()(void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D2EBB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

re *std::__function::__func<RECustomDeformerComponentSetCustomDeformationInput::$_0,std::allocator<RECustomDeformerComponentSetCustomDeformationInput::$_0>,void ()(void *)>::operator()(re *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(result + 1);
  if (v3)
  {
    result = v3(v2, *(result + 2));
  }

  if (v2)
  {
    v4 = *(*re::globalAllocators(result)[2] + 40);

    return v4();
  }

  return result;
}

uint64_t std::__function::__func<RECustomDeformerComponentSetCustomDeformationInput::$_0,std::allocator<RECustomDeformerComponentSetCustomDeformationInput::$_0>,void ()(void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void (*)(void *),std::allocator<void (*)(void *)>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D2EC30;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void (*)(void *),std::allocator<void (*)(void *)>,void ()(void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *REStateMachineComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::StateMachineComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

void REStateMachineComponentAssignAsset(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, &v5);
  v3 = *(a1 + 32);
  *(a1 + 32) = v5;
  v5 = v3;
  v4 = *(a1 + 48);
  *(a1 + 48) = v6;
  v6 = v4;
  re::AssetHandle::~AssetHandle(&v5);
}

void REStateMachineComponentAssignStateParameterBlackboardAsset(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, &v5);
  v3 = *(a1 + 56);
  *(a1 + 56) = v5;
  v5 = v3;
  v4 = *(a1 + 72);
  *(a1 + 72) = v6;
  v6 = v4;
  re::AssetHandle::~AssetHandle(&v5);
}

void REStateMachineComponentSetStateParameterInt(_anonymous_namespace_ *a1, const char *a2, uint64_t a3)
{
  v9 = 0;
  v10 = &str_67;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v9 >> 31) ^ (v9 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v9 >> 31) ^ (v9 >> 1))) >> 27));
  isAlive = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 184, &v9, v6 ^ (v6 >> 31), &v11);
  if (v12 != 0x7FFFFFFF)
  {
    v8 = *(*(a1 + 25) + 32 * v12 + 24);
    v11 = a3;
    if (*(v8 + 32))
    {
      isAlive = re::BindPoint::isAlive((v8 + 8));
      if (isAlive)
      {
        isAlive = re::BindPoint::setValue<long long>((v8 + 8), &v11);
      }
    }
  }

  if (v9)
  {
    if (v9)
    {
    }
  }
}

void REStateMachineComponentSetStateParameterFloat(_anonymous_namespace_ *a1, const char *a2, float a3)
{
  v9 = 0;
  v10 = &str_67;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v9 >> 31) ^ (v9 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v9 >> 31) ^ (v9 >> 1))) >> 27));
  isAlive = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 232, &v9, v6 ^ (v6 >> 31), v11);
  if (v12 != 0x7FFFFFFF)
  {
    v8 = *(*(a1 + 31) + 32 * v12 + 24);
    *v11 = a3;
    if (*(v8 + 32))
    {
      isAlive = re::BindPoint::isAlive((v8 + 8));
      if (isAlive)
      {
        isAlive = re::BindPoint::setValue<float>((v8 + 8), v11);
      }
    }
  }

  if (v9)
  {
    if (v9)
    {
    }
  }
}

void REStateMachineComponentSetStateParameterBool(_anonymous_namespace_ *a1, const char *a2, char a3)
{
  v8 = 0;
  v9 = &str_67;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v8 >> 31) ^ (v8 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v8 >> 31) ^ (v8 >> 1))) >> 27));
  v7 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 280, &v8, v6 ^ (v6 >> 31), v10);
  if (v11 != 0x7FFFFFFF)
  {
    v7 = re::StateParameterBool::setValue(*(*(a1 + 37) + 32 * v11 + 24), a3);
  }

  if (v8)
  {
    if (v8)
    {
    }
  }
}

void REStateMachineComponentSetStateParameterTrigger(uint64_t a1, const char *a2)
{
  v5 = 0;
  v6 = &str_67;
  v4 = re::StateParameterBlackboard::setStateParameterTriggerValue((a1 + 176), &v5, 1);
  if (v5)
  {
    if (v5)
    {
    }
  }
}

void REStateMachineComponentResetStateParameterTrigger(uint64_t a1, const char *a2)
{
  v5 = 0;
  v6 = &str_67;
  v4 = re::StateParameterBlackboard::setStateParameterTriggerValue((a1 + 176), &v5, 0);
  if (v5)
  {
    if (v5)
    {
    }
  }
}

BOOL REStateMachineComponentGetStateParameterInt(uint64_t a1, const char *a2, uint64_t *a3)
{
  v9 = 0;
  v10 = &str_67;
  StateParameterIntValue = re::StateParameterBlackboard::getStateParameterIntValue((a1 + 176), &v9, a3);
  v7 = StateParameterIntValue;
  if (v9)
  {
    if (v9)
    {
    }
  }

  return v7;
}

BOOL REStateMachineComponentGetStateParameterFloat(uint64_t a1, const char *a2, float *a3)
{
  v9 = 0;
  v10 = &str_67;
  StateParameterFloatValue = re::StateParameterBlackboard::getStateParameterFloatValue((a1 + 176), &v9, a3);
  v7 = StateParameterFloatValue;
  if (v9)
  {
    if (v9)
    {
    }
  }

  return v7;
}

BOOL REStateMachineComponentGetStateParameterBool(uint64_t a1, const char *a2, BOOL *a3)
{
  v9 = 0;
  v10 = &str_67;
  StateParameterBoolValue = re::StateParameterBlackboard::getStateParameterBoolValue((a1 + 176), &v9, a3);
  v7 = StateParameterBoolValue;
  if (v9)
  {
    if (v9)
    {
    }
  }

  return v7;
}

BOOL REStateMachineComponentGetStateParameterTrigger(uint64_t a1, const char *a2, BOOL *a3)
{
  v9 = 0;
  v10 = &str_67;
  StateParameterTriggerValue = re::StateParameterBlackboard::getStateParameterTriggerValue((a1 + 176), &v9, a3);
  v7 = StateParameterTriggerValue;
  if (v9)
  {
    if (v9)
    {
    }
  }

  return v7;
}

uint64_t REStateMachineComponentGetCurrentStateName(_anonymous_namespace_ *a1, const char *a2)
{
  v7 = 0;
  v8 = &str_67;
  v4 = re::ecs2::StateMachineComponent::currentState(a1, &v7);
  v5 = v4;
  if (v7)
  {
    if (v7)
    {
    }
  }

  if (v5)
  {
    return *(v5 + 12);
  }

  else
  {
    return 0;
  }
}

uint64_t REStateMachineComponentGetPreviousStateName(_anonymous_namespace_ *a1, const char *a2)
{
  v7 = 0;
  v8 = &str_67;
  v4 = re::ecs2::StateMachineComponent::previousState(a1, &v7);
  v5 = v4;
  if (v7)
  {
    if (v7)
    {
    }
  }

  if (v5)
  {
    return *(v5 + 12);
  }

  else
  {
    return 0;
  }
}

uint64_t REStateMachineComponentGetCurrentTransitionName(_anonymous_namespace_ *a1, const char *a2)
{
  v7 = 0;
  v8 = &str_67;
  v4 = re::ecs2::StateMachineComponent::currentTransition(a1, &v7);
  v5 = v4;
  if (v7)
  {
    if (v7)
    {
    }
  }

  if (v5)
  {
    return *(v5 + 6);
  }

  else
  {
    return 0;
  }
}

uint64_t REStateMachineComponentHasBoundParameterAtName(uint64_t a1, char *a2, int a3)
{
  if (a2)
  {
    v3 = *a2;
    if (*a2)
    {
      v4 = a2[1];
      if (v4)
      {
        v5 = a2 + 2;
        do
        {
          v3 = 31 * v3 + v4;
          v6 = *v5++;
          v4 = v6;
        }

        while (v6);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v9[0] = 2 * v3;
  v9[1] = a2;
  v7 = re::StateMachineParameterBinding::indexOf(a1 + 376, v9, a3, v10);
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  return v10[0];
}

uint64_t REStateMachineComponentGetBoundParameterIndexAtName(uint64_t a1, char *a2, int a3)
{
  if (a2)
  {
    v3 = *a2;
    if (*a2)
    {
      v4 = a2[1];
      if (v4)
      {
        v5 = a2 + 2;
        do
        {
          v3 = 31 * v3 + v4;
          v6 = *v5++;
          v4 = v6;
        }

        while (v6);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v9[0] = 2 * v3;
  v9[1] = a2;
  v7 = re::StateMachineParameterBinding::indexOf(a1 + 376, v9, a3, v10);
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  return v11;
}

uint64_t REStateMachineComponentGetBoundParameterTypeAtIndex(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 392);
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

    v12 = 797;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 408) + 40 * a2 + 16);
}

uint64_t REStateMachineComponentGetBoundParameterNameAtIndex(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 392);
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

    v12 = 797;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 408) + 40 * a2 + 8);
}

uint64_t REStateMachineComponentGetBoundParameterBindTargetAtIndex(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 392);
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

    v12 = 797;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 408) + 40 * a2 + 32);
}

void REStateMachineComponentSetBoundParameterBindTargetAtIndex(uint64_t a1, unint64_t a2, const char *a3)
{
  v7 = 0;
  v8 = &str_67;
  v6 = re::StateMachineParameterBinding::setBindTarget((a1 + 376), a2, &v7);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

void REStateMachineComponentRemoveBoundParameterAtName(uint64_t a1, char *a2, int a3)
{
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v9[0] = 2 * v4;
  v9[1] = a2;
  v8 = re::StateMachineParameterBinding::indexOf(a1 + 376, v9, a3, v10);
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  if (v10[0] == 1)
  {
    re::DynamicArray<re::StateMachineParameterBindingItem>::removeAt(a1 + 376, v11);
  }
}

void REStateMachineComponentAddBoundParameter(uint64_t a1, const char *a2, char a3, const char *a4)
{
  *&v11.var0 = 0;
  v11.var1 = &str_67;
  *&v10.var0 = 0;
  v10.var1 = &str_67;
  re::StateMachineParameterBinding::add((a1 + 376), &v11, a3, &v10);
  if (*&v10.var0)
  {
    if (*&v10.var0)
    {
    }
  }

  if (*&v11.var0)
  {
    if (*&v11.var0)
    {
    }
  }
}

uint64_t re::StateParameterBlackboard::setStateParameterTriggerValue(re::StateParameterBlackboard *this, const re::StringID *a2, char a3)
{
  v5 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 152, a2, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), v7);
  if (v8 != 0x7FFFFFFF)
  {
    return re::StateParameterBool::setValue(*(*(this + 21) + 32 * v8 + 24), a3);
  }

  return result;
}

uint64_t RESceneUnderstandingServiceSetDepthFeatheringEnabled(uint64_t a1, uint64_t a2)
{
  if ((a2 & 1) != 0 && (((*(*a1 + 72))(a1) & 1) != 0 || (*(*a1 + 56))(a1)))
  {
    (*(*a1 + 64))(a1, 0);
    (*(*a1 + 48))(a1, 0);
  }

  v4 = *(*a1 + 32);

  return v4(a1, a2);
}

uint64_t RESceneUnderstandingServiceSetGuidedFilterOcclusionEnabled(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if ((*(*a1 + 40))(a1))
    {
      (*(*a1 + 32))(a1, 0);
    }

    (*(*a1 + 56))(a1);
  }

  v4 = *(*a1 + 64);

  return v4(a1, a2);
}

void RESceneUnderstandingServiceSetGuidedFilterOcclusionCameraFeed(uint64_t a1, void *a2, void *a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __n128 a14, __n128 a15, __n128 a16, __n128 a17, __n128 a18, __n128 a19, __n128 a20)
{
  v23 = a2;
  v24 = a3;
  v32 = v23;
  v25 = v23;
  v31 = v24;
  v26 = v24;
  (*(*a1 + 88))(a1, &v32, &v31);
  if (v31)
  {
  }

  if (v32)
  {
  }

  (*(*a1 + 96))(a1, a4, a5, a6, a7);
  (*(*a1 + 104))(a1, a17, a18, a19, a20);
  (*(*a1 + 112))(a1, a8);
}

uint64_t RECreateLayeredStateGraphs(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 48, 8);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  ArcSharedObject::ArcSharedObject(v3, 0);
  *v3 = &unk_1F5D2ECA0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0;
  return v3;
}

_anonymous_namespace_ *RELayeredStateGraphsAddStateGraph(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (v4 <= a2)
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

    v14 = 468;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v4;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  v5 = (*(a1 + 40) + 40 * a2);
  *&v19[0] = a3 + 24;
  return re::DynamicArray<re::TransitionCondition *>::add(v5, v19);
}

uint64_t RECreateStateGraph(_anonymous_namespace_ *a1)
{
  *&v7.var0 = 0;
  v7.var1 = &str_67;
  v3 = re::globalAllocators(v2);
  v4 = (*(*v3[2] + 32))(v3[2], 96, 8);
  ArcSharedObject::ArcSharedObject(v4, 0);
  *v4 = &unk_1F5D2ECE8;
  *(v4 + 24) = &unk_1F5CC8878;
  v5 = re::StringID::StringID((v4 + 32), &v7);
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 72) = 0;
  *(v4 + 64) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  if (*&v7.var0)
  {
    if (*&v7.var0)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *REStateGraphAddState(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 112, 8);
  *&v8.var0 = 0;
  v8.var1 = &str_67;
  *v5 = &unk_1F5CC88A8;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 80) = 0;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0;
  v6 = re::StringID::StringID((v5 + 88), &v8);
  *(v5 + 104) = 0;
  if (*&v8.var0)
  {
    if (*&v8.var0)
    {
    }
  }

  *&v8.var0 = v5;
  return re::DynamicArray<re::TransitionCondition *>::add((a1 + 48), &v8);
}

re *REStateGraphAddAnyState(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 112, 8);
  *&v8.var0 = 0;
  v8.var1 = &str_67;
  *v5 = &unk_1F5CC88A8;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 80) = 0;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0;
  v6 = re::StringID::StringID((v5 + 88), &v8);
  *(v5 + 104) = 0;
  if (*&v8.var0)
  {
    if (*&v8.var0)
    {
    }
  }

  return re::StateGraph::addAnyState((a1 + 24), v5);
}

_anonymous_namespace_ *REStateGraphCreateStateTransition(_anonymous_namespace_ *a1, unint64_t a2, const char *a3, const char *a4, const char *a5, const char *a6, const char *a7, char a8, float a9)
{
  v39 = *MEMORY[0x1E69E9840];
  *&v38[0] = 0;
  *(&v38[0] + 1) = &str_67;
  GraphByName = re::SharedLayeredStateGraphs::findGraphByName(a1, a2, v38);
  v19 = GraphByName;
  if (v38[0])
  {
    if (v38[0])
    {
    }
  }

  if (!v19)
  {
    return 0;
  }

  v20 = *(a1 + 4);
  if (v20 <= a2)
  {
    v31 = 0;
    memset(v38, 0, sizeof(v38));
    v28 = MEMORY[0x1E69E9C10];
    *v33 = 136315906;
    *&v33[4] = "operator[]";
    *&v33[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    *&v33[14] = 468;
    v34 = 2048;
    v35 = a2;
    v36 = 2048;
    v37 = v20;
    _os_log_send_and_compose_impl(v29, &v31, v38, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v33, 38, *&v30.var0, v30.var1);
    _os_crash_msg();
    __break(1u);
  }

  v21 = *(a1 + 5) + 40 * a2;
  *&v38[0] = 0;
  *(&v38[0] + 1) = &str_67;
  *v33 = 0;
  *&v33[8] = &str_67;
  v31 = 0;
  v32 = &str_67;
  *&v30.var0 = 0;
  v30.var1 = &str_67;
  v25 = re::StateGraph::createStateTransition(v19, v21, v38, v33, &v31, &v30, a8, a9);
  v26 = v25;
  if (*&v30.var0)
  {
    if (*&v30.var0)
    {
    }
  }

  if (v31)
  {
    if (v31)
    {
    }
  }

  if (v33[0])
  {
    if (v33[0])
    {
    }
  }

  if (v38[0])
  {
    if (v38[0])
    {
    }
  }

  return v26;
}

uint64_t re::SharedLayeredStateGraphs::findGraphByName(re::SharedLayeredStateGraphs *this, unint64_t a2, const re::StringID *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(this + 4);
  if (v4 <= a2)
  {
    v14 = 0;
    memset(v23, 0, sizeof(v23));
    v11 = MEMORY[0x1E69E9C10];
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v18 = 468;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v4;
    _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(this + 5) + 40 * a2;
  v6 = *(v5 + 16);
  if (!v6)
  {
    return 0;
  }

  for (i = *(v5 + 32); ; ++i)
  {
    v9 = *i;
    if (re::StringID::operator==((*i + 8), a3))
    {
      break;
    }

    if (!--v6)
    {
      return 0;
    }
  }

  return v9;
}

_anonymous_namespace_ *REStateGraphAddStateTransitionConditionInt(_anonymous_namespace_ *a1, unint64_t a2, const char *a3, const char *a4, const char *a5, const char *a6, char a7, int a8)
{
  v26 = 0;
  v27 = &str_67;
  GraphByName = re::SharedLayeredStateGraphs::findGraphByName(a1, a2, &v26);
  v17 = GraphByName;
  if (v26)
  {
    if (v26)
    {
    }
  }

  if (!v17)
  {
    return 0;
  }

  v26 = 0;
  v27 = &str_67;
  v24 = 0;
  v25 = &str_67;
  *&v23.var0 = 0;
  v23.var1 = &str_67;
  v20 = re::StateGraph::addIntTransitionCondition(v17, &v26, &v24, &v23, a7, a8);
  v21 = v20;
  if (*&v23.var0)
  {
    if (*&v23.var0)
    {
    }
  }

  if (v24)
  {
    if (v24)
    {
    }
  }

  if (v26)
  {
    if (v26)
    {
    }
  }

  return v21;
}

_anonymous_namespace_ *REStateGraphAddStateTransitionConditionFloat(_anonymous_namespace_ *a1, unint64_t a2, const char *a3, const char *a4, const char *a5, const char *a6, char a7, float a8)
{
  v26 = 0;
  v27 = &str_67;
  GraphByName = re::SharedLayeredStateGraphs::findGraphByName(a1, a2, &v26);
  v17 = GraphByName;
  if (v26)
  {
    if (v26)
    {
    }
  }

  if (!v17)
  {
    return 0;
  }

  v26 = 0;
  v27 = &str_67;
  v24 = 0;
  v25 = &str_67;
  *&v23.var0 = 0;
  v23.var1 = &str_67;
  v20 = re::StateGraph::addFloatTransitionCondition(v17, &v26, &v24, &v23, a7, a8);
  v21 = v20;
  if (*&v23.var0)
  {
    if (*&v23.var0)
    {
    }
  }

  if (v24)
  {
    if (v24)
    {
    }
  }

  if (v26)
  {
    if (v26)
    {
    }
  }

  return v21;
}

_anonymous_namespace_ *REStateGraphAddStateTransitionConditionBool(_anonymous_namespace_ *a1, unint64_t a2, const char *a3, const char *a4, const char *a5, const char *a6, char a7, char a8)
{
  v26 = 0;
  v27 = &str_67;
  GraphByName = re::SharedLayeredStateGraphs::findGraphByName(a1, a2, &v26);
  v17 = GraphByName;
  if (v26)
  {
    if (v26)
    {
    }
  }

  if (!v17)
  {
    return 0;
  }

  v26 = 0;
  v27 = &str_67;
  v24 = 0;
  v25 = &str_67;
  *&v23.var0 = 0;
  v23.var1 = &str_67;
  v20 = re::StateGraph::addBoolTransitionCondition(v17, &v26, &v24, &v23, a7, a8);
  v21 = v20;
  if (*&v23.var0)
  {
    if (*&v23.var0)
    {
    }
  }

  if (v24)
  {
    if (v24)
    {
    }
  }

  if (v26)
  {
    if (v26)
    {
    }
  }

  return v21;
}

_anonymous_namespace_ *REStateGraphAddStateTransitionConditionTrigger(_anonymous_namespace_ *a1, unint64_t a2, const char *a3, const char *a4, const char *a5, const char *a6)
{
  v22 = 0;
  v23 = &str_67;
  GraphByName = re::SharedLayeredStateGraphs::findGraphByName(a1, a2, &v22);
  v13 = GraphByName;
  if (v22)
  {
    if (v22)
    {
    }
  }

  if (!v13)
  {
    return 0;
  }

  v22 = 0;
  v23 = &str_67;
  v20 = 0;
  v21 = &str_67;
  *&v19.var0 = 0;
  v19.var1 = &str_67;
  v16 = re::StateGraph::addTriggerTransitionCondition(v13, &v22, &v20, &v19);
  v17 = v16;
  if (*&v19.var0)
  {
    if (*&v19.var0)
    {
    }
  }

  if (v20)
  {
    if (v20)
    {
    }
  }

  if (v22)
  {
    if (v22)
    {
    }
  }

  return v17;
}

_anonymous_namespace_ *REStateGraphAddStateCommand(uint64_t a1, const char *a2, uint64_t a3)
{
  v9 = 0;
  v10 = &str_67;
  StateByName = re::StateGraph::findStateByName((a1 + 24), &v9, &v11);
  v7 = StateByName;
  if (v9)
  {
    if (v9)
    {
    }
  }

  v9 = a3;
  return re::DynamicArray<re::TransitionCondition *>::add((v7 + 48), &v9);
}

uint64_t REStateGraphSetStateExitTime(_anonymous_namespace_ *a1, unint64_t a2, const char *a3, const char *a4, float a5)
{
  v16 = 0;
  v17 = &str_67;
  GraphByName = re::SharedLayeredStateGraphs::findGraphByName(a1, a2, &v16);
  v11 = GraphByName;
  if (v16)
  {
    if (v16)
    {
    }
  }

  if (!v11)
  {
    return 0;
  }

  v16 = 0;
  v17 = &str_67;
  StateByName = re::StateGraph::findStateByName(v11, &v16, &v18);
  v13 = a5 < 0.0 || StateByName == 0;
  v14 = !v13;
  if (!v13)
  {
    StateByName[26] = a5;
  }

  if (v16)
  {
    if (v16)
    {
    }
  }

  return v14;
}

void re::SharedLayeredStateGraphs::~SharedLayeredStateGraphs(re::SharedLayeredStateGraphs *this)
{
  *this = &unk_1F5D2ECA0;
  re::FixedArray<re::DynamicArray<re::RigHierarchyJointDescription>>::deinit(this + 3);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2ECA0;
  re::FixedArray<re::DynamicArray<re::RigHierarchyJointDescription>>::deinit(this + 3);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void anonymous namespace::SharedStateGraph::~SharedStateGraph(_anonymous_namespace_::SharedStateGraph *this)
{
  *this = &unk_1F5D2ECE8;
  v2 = (this + 32);
  re::StateGraph::deinit((this + 24));
  re::DynamicArray<unsigned long>::deinit(this + 48);
  re::StringID::destroyString(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2ECE8;
  v2 = (this + 32);
  re::StateGraph::deinit((this + 24));
  re::DynamicArray<unsigned long>::deinit(this + 48);
  re::StringID::destroyString(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *REPhysicsSimulationComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t REPhysicsSimulationComponentSetKinematicFlags(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a2;
  v5 = re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  *(v5 + 26) = a3;
  *(v5 + 25) = v4;

  return re::ecs2::Component::enqueueMarkDirty(v5);
}

uint64_t REPhysicsSimulationComponentSetGravityOverride(uint64_t a1, __int128 *a2)
{
  v3 = re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  if (a2)
  {
    v4 = *a2;
    if ((*(v3 + 32) & 1) == 0)
    {
      *(v3 + 32) = 1;
    }

    *(v3 + 48) = v4;
  }

  else if (*(v3 + 32))
  {
    *(v3 + 32) = 0;
  }

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REPhysicsSimulationComponentGetGravityOverride(uint64_t a1, uint64_t a2)
{
  v2 = re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  if (*(v2 + 32))
  {
    return v2 + 48;
  }

  else
  {
    return 0;
  }
}

uint64_t REPhysicsSimulationComponentSetFixedTimeStepOverride(uint64_t a1, int *a2)
{
  v3 = re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  if (a2)
  {
    v4 = *a2;
    if ((*(v3 + 64) & 1) == 0)
    {
      *(v3 + 64) = 1;
    }

    *(v3 + 68) = v4;
  }

  else if (*(v3 + 64))
  {
    *(v3 + 64) = 0;
  }

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REPhysicsSimulationComponentGetFixedTimeStepOverride(uint64_t a1, uint64_t a2)
{
  v2 = re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  if (*(v2 + 64))
  {
    return v2 + 68;
  }

  else
  {
    return 0;
  }
}

uint64_t REPhysicsSimulationComponentSetParentTimebase(uint64_t a1, const void *a2)
{
  v4 = re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a1, a2);
  re::ecs2::PhysicsSimulationComponent::setLocallyManagedParentTimebase(v4, a2);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REPhysicsSimulationComponentSetSolverIterations(double a1, uint64_t a2, uint64_t a3)
{
  v4 = re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(a2, a3);
  *(v4 + 72) = a1;

  return re::ecs2::Component::enqueueMarkDirty(v4);
}

uint64_t re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::safeCast(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = &unk_1EE187000;
    if ((*(*a1 + 40))(a1, a2) == re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
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
  v5 = *(v3[453] + 32);
  v6 = (*(*v2 + 40))(v2);
  re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Component is wrong type. Expected type: %s, but got: %s", "&reinterpret_cast<Derived *>(component)->componentType() == &Derived::classComponentType()", "safeCast", 101, v5, *(v6 + 32));
  result = _os_crash("assertion failure: (&reinterpret_cast<Derived *>(component)->componentType() == &Derived::classComponentType()) Component is wrong type. Expected type: %s, but got: %s", v8, v9);
  __break(1u);
  return result;
}

void *REBlendShapeWeightsComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t REBlendShapeWeightsComponentSetBlendShapeWeightsDefinition(void *a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, &v9);
  v3 = *(a1 + 2);
  *(a1 + 2) = v9;
  v9 = v3;
  v4 = a1[6];
  a1[6] = v10;
  v10 = v4;
  re::AssetHandle::~AssetHandle(&v9);
  v5 = a1[5];
  if (v5)
  {
    v6 = atomic_load((v5 + 896));
    if (v6 == 2)
    {
      v7 = re::AssetHandle::blockUntilLoaded<re::BlendShapeWeightsDefinitionAsset>((a1 + 4));
    }
  }

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REBlendShapeWeightsComponentSetBlendShapeWeightsCount(uint64_t a1, unint64_t a2)
{
  re::DynamicArray<re::BlendShapeWeights>::resize(a1 + 56, a2);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REBlendShapeWeightsComponentGetBlendWeightCount(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 72);
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

  return *(*(a1 + 88) + 32 * a2 + 8);
}

uint64_t REBlendShapeWeightsComponentSetBlendWeightCount(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 72);
  if (v4 <= a2)
  {
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v10 = MEMORY[0x1E69E9C10];
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v20 = 789;
    v21 = 2048;
    v22 = a2;
    v23 = 2048;
    v24 = v4;
    _os_log_send_and_compose_impl(v11, &v16, &v25, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
    _os_crash_msg();
    __break(1u);
LABEL_10:
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v12 = MEMORY[0x1E69E9C10];
    v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    if (v13)
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v20 = 789;
    v21 = 2048;
    v22 = a2;
    v23 = 2048;
    v24 = v4;
    _os_log_send_and_compose_impl(v14, &v16, &v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
    _os_crash_msg();
    __break(1u);
  }

  v7 = re::FixedArray<CoreIKTransform>::deinit((*(a1 + 88) + 32 * a2));
  v4 = *(a1 + 72);
  if (v4 <= a2)
  {
    goto LABEL_10;
  }

  v8 = (*(a1 + 88) + 32 * a2);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

float REBlendShapeWeightsComponentGetBlendWeight(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 72);
  if (v4 <= a2)
  {
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v5 = MEMORY[0x1E69E9C10];
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
    v19 = a2;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
LABEL_8:
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

    v17 = 468;
    v18 = 2048;
    v19 = v5;
    v20 = 2048;
    v21 = v4;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v5 = a3;
  v6 = *(a1 + 88) + 32 * a2;
  v4 = *(v6 + 8);
  if (v4 <= a3)
  {
    goto LABEL_8;
  }

  return *(*(v6 + 16) + 4 * a3);
}

uint64_t REBlendShapeWeightsComponentSetBlendWeight(uint64_t a1, unint64_t a2, unint64_t a3, float a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 72);
  if (v5 <= a2)
  {
    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    v6 = MEMORY[0x1E69E9C10];
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v18 = 789;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v5;
    _os_log_send_and_compose_impl(v9, &v14, &v23, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
LABEL_10:
    v14 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    v10 = MEMORY[0x1E69E9C10];
    v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (v11)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v18 = 468;
    v19 = 2048;
    v20 = v6;
    v21 = 2048;
    v22 = v5;
    _os_log_send_and_compose_impl(v12, &v14, &v23, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
  }

  v6 = a3;
  v7 = *(a1 + 88) + 32 * a2;
  v5 = *(v7 + 8);
  if (v5 <= a3)
  {
    goto LABEL_10;
  }

  *(*(v7 + 16) + 4 * a3) = a4;

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REBlendShapeWeightsComponentGetBlendWeights(uint64_t result, unint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(result + 72);
  if (v4 <= a2)
  {
    v14 = 0;
    memset(v23, 0, sizeof(v23));
    v11 = MEMORY[0x1E69E9C10];
    v15 = 136315906;
    v16 = "operator[]";
    v17 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v18 = 789;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v4;
    _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(result + 88) + 32 * a2;
  v6 = *(v5 + 8);
  if (v6)
  {
    v7 = 0;
    v8 = *(v5 + 16);
    v9 = 4 * v6 - 4;
    do
    {
      *(a3 + 4 * v7) = *(v8 + 4 * v7);
      if (v7 + 1 >= v6)
      {
        break;
      }

      v10 = v9;
      v9 -= 4;
      ++v7;
    }

    while (v10);
  }

  return result;
}

uint64_t REBlendShapeWeightsComponentSetBlendFactorCount(uint64_t a1, unint64_t a2)
{
  re::DynamicArray<re::BlendShapeWeights>::resize(a1 + 56, a2);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REBlendFactorComponentSetBlendFactorCount(uint64_t a1, unint64_t a2)
{
  re::DynamicArray<re::BlendShapeWeights>::resize(a1 + 56, a2);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REVertexCacheDefinitionCreateVertexCacheAsset(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = (*(a1 + 96) * *(a1 + 104) * *(a1 + 88));
  if (*(a1 + 152) == 1)
  {
    v3 = *(a1 + 160);
  }

  else
  {
    v4 = *(a1 + 136);
    if (v4)
    {
      v3 = [v4 length];
    }

    else
    {
      v3 = 0;
    }
  }

  if (v2 == v3)
  {
    v5 = *(a1 + 176);
    if (!v5 || (v6 = atomic_load((v5 + 896)), v6 != 2) || (v7 = re::AssetHandle::blockUntilLoaded<re::VertexCacheAsset>((a1 + 168)), !re::MeshIdentifierAsset::operator==((a1 + 32), (v7 + 8))) || *(a1 + 72) != *(v7 + 48) || *(a1 + 73) != *(v7 + 49) || *(a1 + 80) != *(v7 + 56) || *(a1 + 88) != *(v7 + 64) || *(a1 + 96) != *(v7 + 72) || *(a1 + 104) != *(v7 + 80) || !re::FixedArray<re::AABB>::operator==(a1 + 112, *(v7 + 96), *(v7 + 104)) || *(a1 + 136) != *(v7 + 112))
    {
      v8 = re::ServiceLocator::service<re::AssetService>(*(a1 + 144));
      v9 = re::globalAllocators(v8);
      v10 = (*(*v9[2] + 32))(v9[2], 120, 8);
      *v10 = &unk_1F5CC92D0;
      *(v10 + 8) = *(a1 + 32);
      re::StringID::StringID((v10 + 16), (a1 + 40));
      re::StringID::StringID((v10 + 32), (a1 + 56));
      v11 = *(a1 + 72);
      v12 = *(a1 + 88);
      *(v10 + 80) = *(a1 + 104);
      *(v10 + 48) = v11;
      *(v10 + 64) = v12;
      *(v10 + 88) = 0;
      *(v10 + 96) = 0;
      *(v10 + 104) = 0;
      v13 = *(a1 + 112);
      if (v13)
      {
        re::FixedArray<re::AABB>::init<>((v10 + 88), v13, *(a1 + 120));
        re::FixedArray<re::AABB>::copy((v10 + 88), *(a1 + 120), *(a1 + 128));
      }

      v14 = *(a1 + 136);
      *(v10 + 112) = v14;
      v15 = re::VertexCacheAsset::assetType(v14);
      (*(*v8 + 424))(v22, v8, v10, v15, 0, 0, 0);
      v16 = *(a1 + 168);
      *(a1 + 168) = *v22;
      *v22 = v16;
      v17 = *(a1 + 184);
      *(a1 + 184) = *&v22[16];
      *&v22[16] = v17;
      re::AssetHandle::~AssetHandle(v22);
    }

    re::AssetHandle::AssetHandle(v22, (a1 + 168));
    v18 = *v22;
    if (*v22)
    {
      v19 = (*v22 + 8);
    }

    re::AssetHandle::~AssetHandle(v22);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v20 = CoreRELog::log;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v22 = 134218240;
      *&v22[4] = v2;
      *&v22[12] = 2048;
      *&v22[14] = v3;
      _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "Vertex Cache Definition does not have expected vertex data size: %zu != %zu", v22, 0x16u);
    }

    return 0;
  }

  return v18;
}

double REVertexCacheDefinitionCreate(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 192, 8);
  ArcSharedObject::ArcSharedObject(v3, 0);
  *v3 = &unk_1F5D2ED30;
  *(v3 + 24) = &unk_1F5CC92D0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = &str_67;
  *(v3 + 56) = 0;
  *(v3 + 64) = &str_67;
  *(v3 + 72) = 0;
  *(v3 + 76) = 1023969417;
  result = 0.0;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0;
  *(v3 + 144) = a1;
  *(v3 + 152) = 0;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  *(v3 + 168) = 0;
  return result;
}

uint64_t REVertexCacheDefinitionCreateFromAsset(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, &v19);
  if (!v20 || (v4 = atomic_load((v20 + 896)), v4 != 2))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *v18 = 0;
    v16 = "Cannot create vertex cache definition from unloaded asset.";
    goto LABEL_20;
  }

  v5 = *(v20 + 280);
  v6 = re::VertexCacheAsset::assetType(v3);
  if (v5 != v6)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v15 = CoreRELog::log;
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *v18 = 0;
    v16 = "Can only create vertex cache definition from vertex cache asset.";
LABEL_20:
    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v16, v18, 2u);
LABEL_17:

    v8 = 0;
    goto LABEL_18;
  }

  v7 = re::globalAllocators(v6);
  v8 = (*(*v7[2] + 32))(v7[2], 192, 8);
  ArcSharedObject::ArcSharedObject(v8, 0);
  *v8 = &unk_1F5D2ED30;
  *(v8 + 24) = &unk_1F5CC92D0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = &str_67;
  *(v8 + 56) = 0;
  *(v8 + 64) = &str_67;
  *(v8 + 72) = 0;
  *(v8 + 76) = 1023969417;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 136) = 0;
  *(v8 + 144) = a1;
  *(v8 + 152) = 0;
  re::AssetHandle::AssetHandle((v8 + 168), &v19);
  v9 = *(v8 + 176);
  if (v9)
  {
    v10 = atomic_load((v9 + 896));
    if (v10 == 2)
    {
      v11 = re::AssetHandle::blockUntilLoaded<re::VertexCacheAsset>((v8 + 168));
      *(v8 + 32) = *(v11 + 8);
      re::StringID::operator=((v8 + 40), (v11 + 16));
      re::StringID::operator=((v8 + 56), (v11 + 32));
      v12 = *(v11 + 48);
      v13 = *(v11 + 64);
      *(v8 + 104) = *(v11 + 80);
      *(v8 + 72) = v12;
      *(v8 + 88) = v13;
      if (v8 + 24 != v11)
      {
        v14 = *(v11 + 88);
        if (*(v8 + 112))
        {
          if (!v14)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        if (v14)
        {
          re::FixedArray<re::AABB>::init<>((v8 + 112), v14, *(v11 + 96));
LABEL_23:
          re::FixedArray<re::AABB>::copy((v8 + 112), *(v11 + 96), *(v11 + 104));
        }
      }

LABEL_24:
      NS::SharedPtr<MTL::Buffer>::operator=((v8 + 136), (v11 + 112));
    }
  }

LABEL_18:
  re::AssetHandle::~AssetHandle(&v19);
  return v8;
}

void REVertexCacheDefinitionSetMeshName(uint64_t a1, const char *a2)
{
  v5 = 0;
  v6 = &str_67;
  v4 = re::StringID::operator=((a1 + 40), &v5);
  if (v5)
  {
    if (v5)
    {
    }
  }
}

void REVertexCacheDefinitionSetMeshPartName(uint64_t a1, const char *a2)
{
  v5 = 0;
  v6 = &str_67;
  v4 = re::StringID::operator=((a1 + 56), &v5);
  if (v5)
  {
    if (v5)
    {
    }
  }
}

uint64_t REVertexCacheDefinitionSetVertexFormat(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 <= 0x19u)
  {
    if (a2 != 8 && a2 != 11)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  if (a2 == 30)
  {
    v6 = 12;
    goto LABEL_13;
  }

  if (a2 == 26)
  {
LABEL_11:
    v6 = (re::sizeFromVertexFormat(a2, a2) + 3) & 0x1FC;
LABEL_13:
    *(a1 + 73) = v2;
    *(a1 + 104) = v6;
    return 1;
  }

LABEL_4:
  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v4 = CoreRELog::log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Cannot set vertex cache definition with unsupported vertex format.", v7, 2u);
  }

  return 0;
}

id REVertexCacheDefinitionGetVertexDataSize(uint64_t a1)
{
  if (*(a1 + 152) == 1)
  {
    return *(a1 + 160);
  }

  result = *(a1 + 136);
  if (result)
  {
    return [result length];
  }

  return result;
}

id REVertexCacheDefinitionGetVertexData(uint64_t a1)
{
  result = *(a1 + 136);
  if (result)
  {
    return [result contents];
  }

  return result;
}

void REVertexCacheDefinitionSetVertexData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(re::ServiceLocator::service<re::RenderManager>(*(a1 + 144)) + 26) newBufferWithBytes:a2 length:a3 options:0];
  NS::SharedPtr<MTL::Texture>::operator=((a1 + 136), &v4);
  if (v4)
  {
  }
}

uint64_t re::AssetHandle::blockUntilLoaded<re::VertexCacheAsset>(re::VertexCacheAsset *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = re::VertexCacheAsset::assetType(a1);
  v3 = re::AssetHandle::assetWithType(a1, v2, 0);
  if (!v3)
  {
    v4 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = v4;
      v7 = re::AssetHandle::assetInfo(a1);
      if (v7[17])
      {
        v8 = v7[18];
      }

      else
      {
        v8 = v7 + 137;
      }

      v9 = 136315138;
      v10 = v8;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v9, 0xCu);
    }
  }

  return v3;
}

uint64_t re::FixedArray<re::AABB>::operator==(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  if (*(a1 + 8) == a2)
  {
    if (!a2)
    {
      return 1;
    }

    v3 = *(a1 + 16);
    v4 = &v3[2 * a2];
    while (1)
    {
      v5 = vceqq_f32(*v3, *a3);
      v5.i32[3] = v5.i32[2];
      if ((vminvq_u32(v5) & 0x80000000) == 0)
      {
        break;
      }

      v6 = vceqq_f32(v3[1], a3[1]);
      v6.i32[3] = v6.i32[2];
      if ((vminvq_u32(v6) & 0x80000000) == 0)
      {
        break;
      }

      v3 += 2;
      a3 += 2;
      if (v3 == v4)
      {
        return 1;
      }
    }
  }

  return 0;
}

void *re::FixedArray<re::AABB>::copy(void *result, uint64_t a2, const void *a3)
{
  if (result[1] == a2)
  {
    if (a2)
    {
      v5 = result[2];

      return memmove(v5, a3, 32 * a2);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388, v3, v4);
    result = _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
    __break(1u);
  }

  return result;
}

void REVertexCacheDefinition::~REVertexCacheDefinition(REVertexCacheDefinition *this)
{
  re::AssetHandle::~AssetHandle((this + 168));
  re::VertexCacheAsset::~VertexCacheAsset((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::AssetHandle::~AssetHandle((this + 168));
  re::VertexCacheAsset::~VertexCacheAsset((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *REMeshDeformationComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t REMeshDeformationComponentSetMeshDeformationDefinition(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, &v6);
  v3 = *(a1 + 32);
  *(a1 + 32) = v6;
  v6 = v3;
  v4 = *(a1 + 48);
  *(a1 + 48) = v7;
  v7 = v4;
  re::AssetHandle::~AssetHandle(&v6);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMeshDeformationComponentSetCustomDeformationModel(uint64_t a1, re::StringID *a2, char *a3, char a4, const char *a5, const char *a6, const void *a7, size_t a8, uint64_t a9, __int128 a10)
{
  v16 = *(a1 + 16);
  if (v16 && (*(v16 + 304) & 0x80) != 0)
  {
    v16 = 0;
  }

  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  v17 = REEntityGetOrAddComponentByClass(v16, re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);

  return RECustomDeformerComponentSetCustomDeformationModel(v17, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t REMeshDeformationComponentSetCustomDeformationInput(uint64_t a1, re::StringID *a2, char *a3, char a4, const char *a5, const char *a6, const void *a7, size_t a8, uint64_t a9, __int128 a10)
{
  v16 = *(a1 + 16);
  if (v16 && (*(v16 + 304) & 0x80) != 0)
  {
    v16 = 0;
  }

  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  v17 = REEntityGetOrAddComponentByClass(v16, re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);

  return RECustomDeformerComponentSetCustomDeformationInput(v17, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void *REClippingPrimitiveComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::ClippingPrimitiveComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

uint64_t REClippingPrimitiveComponentClipToBox(uint64_t this, __n128 a2, __n128 a3)
{
  *(this + 32) = a2;
  *(this + 48) = a3;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

void REClippingPrimitiveComponentClipToSphere()
{
  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v0 = CoreRELog::log;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1E1C61000, v0, OS_LOG_TYPE_DEFAULT, "REClippingPrimitiveComponentClipToSphere is deprecated. Sphere clipping shapes are no longer supported.                Use REClippingPrimitiveComponentClipToBox.", v1, 2u);
  }
}

void REClippingPrimitiveComponentClipToCylinder()
{
  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v0 = CoreRELog::log;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1E1C61000, v0, OS_LOG_TYPE_DEFAULT, "REClippingPrimitiveComponentClipToCylinder is deprecated. Cylinder clipping shapes are no longer supported.                Use REClippingPrimitiveComponentClipToBox.", v1, 2u);
  }
}

uint64_t REClippingPrimitiveComponentGetPrimitiveShape()
{
  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v0 = CoreRELog::log;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1E1C61000, v0, OS_LOG_TYPE_DEFAULT, "REClippingPrimitiveComponentGetPrimitiveShape is deprecated. Non-box clipping shapes are no longer supported.", v2, 2u);
  }

  return 0;
}

uint64_t REClippingPrimitiveComponentSetFeatherIntervalPercentage(uint64_t this, int32x2_t a2)
{
  v2 = vdupq_lane_s32(a2, 0);
  v2.i32[3] = 0;
  v3 = vmaxnmq_f32(v2, 0);
  v3.i32[3] = 0;
  v4 = vminnmq_f32(v3, xmmword_1E304F3C0);
  *(this + 64) = v4;
  *(this + 80) = v4;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REClippingPrimitiveComponentSetFeatherIntervalPercentagePerAxis(uint64_t this, float32x4_t a2)
{
  a2.i32[3] = 0;
  v2 = vmaxnmq_f32(a2, 0);
  v2.i32[3] = 0;
  v3 = vminnmq_f32(v2, xmmword_1E304F3C0);
  *(this + 64) = v3;
  *(this + 80) = v3;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REClippingPrimitiveComponentSetFeatherIntervalFractionPerEdge(uint64_t this, float32x4_t a2, float32x4_t a3)
{
  a2.i32[3] = 0;
  v3 = vmaxnmq_f32(a2, 0);
  v3.i32[3] = 0;
  a3.i32[3] = 0;
  v4 = vmaxnmq_f32(a3, 0);
  v4.i32[3] = 0;
  *(this + 64) = vminnmq_f32(v3, xmmword_1E304F3C0);
  *(this + 80) = vminnmq_f32(v4, xmmword_1E304F3C0);
  return re::ecs2::Component::enqueueMarkDirty(this);
}

void REClippingPrimitiveComponentSetPositiveSpace()
{
  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v0 = CoreRELog::log;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1E1C61000, v0, OS_LOG_TYPE_DEFAULT, "REClippingPrimitiveComponentSetPositiveSpace is deprecated. Negative-space clipping is no longer supported.", v1, 2u);
  }
}

uint64_t REClippingPrimitiveComponentGetIsPositiveSpace()
{
  if (CoreRELog::onceToken != -1)
  {
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
  }

  v0 = CoreRELog::log;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1E1C61000, v0, OS_LOG_TYPE_DEFAULT, "REClippingPrimitiveComponentGetIsPositiveSpace is deprecated. Negative-space clipping is no longer supported.", v2, 2u);
  }

  return 1;
}

uint64_t REClippingPrimitiveComponentSetCornerSmoothness(uint64_t this, float32x2_t a2)
{
  __asm { FMOV            V1.2S, #1.0 }

  *(this + 96) = vminnm_f32(vmaxnm_f32(a2, 0), _D1);
  return re::ecs2::Component::enqueueMarkDirty(this);
}

void *REAudioDebugComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::AudioDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType;
}

re::ecs2::Entity *RESceneAddAudioDebugComponent(re::ecs2::ComponentHelper *a1)
{
  result = re::ecs2::ComponentHelper::privateSceneDataEntity(a1, 1);
  v2 = re::ecs2::ComponentImpl<re::ecs2::AudioDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType;
  v3 = *(result + 49);
  if (!*(result + 49))
  {
    goto LABEL_7;
  }

  v4 = (re::ecs2::ComponentImpl<re::ecs2::AudioDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType + 16);
  v5 = *(result + 13);
  v6 = vld1q_dup_s16(v4);
  v7 = 1;
  while (1)
  {
    v8 = vandq_s8(vceqq_s16(v6, *v5), xmmword_1E306AC00);
    v8.i16[0] = vmaxvq_u16(v8);
    if (v8.i32[0])
    {
      break;
    }

    v7 -= 8;
    ++v5;
    if (!--v3)
    {
      goto LABEL_7;
    }
  }

  if (v8.u16[0] - v7 >= *(result + 48))
  {
LABEL_7:
    v9 = (result + 48);

    return re::ecs2::EntityComponentCollection::add(v9, v2);
  }

  return result;
}

void RESceneRemoveAudioDebugComponent(re::ecs2::ComponentHelper *a1)
{
  v1 = re::ecs2::ComponentHelper::privateSceneDataEntity(a1, 0);
  if (v1)
  {
    v2 = re::ecs2::ComponentImpl<re::ecs2::AudioDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType;
    v3 = (v1 + 48);

    re::ecs2::EntityComponentCollection::remove(v3, v2);
  }
}

uint64_t RESceneSetAudioDebugDrawLevel(re::ecs2::ComponentHelper *a1, char a2)
{
  v3 = re::ecs2::ComponentHelper::privateSceneDataEntity(a1, 1);
  result = re::ecs2::EntityComponentCollection::getOrAdd((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  *(result + 25) = a2;
  return result;
}

uint64_t RESceneSetAudioDebugDrawOptions(re::ecs2::ComponentHelper *a1, int a2)
{
  v3 = re::ecs2::ComponentHelper::privateSceneDataEntity(a1, 1);
  result = re::ecs2::EntityComponentCollection::getOrAdd((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioDebugComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  *(result + 32) = a2;
  return result;
}

void *REEnvironmentLightingConfigurationComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::EnvironmentLightingConfigurationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t REEnvironmentLightingConfigurationComponentSetEnvironmentLightingWeight(uint64_t this, float a2)
{
  if (a2 > 1.0)
  {
    a2 = 1.0;
  }

  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  *(this + 28) = a2;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

FILE *RECompressionQuery(const char *a1, int *a2, int *a3, int *a4, off_t *a5, off_t *a6)
{
  __ptr[1] = *MEMORY[0x1E69E9840];
  if (stat(a1, &v25) < 0)
  {
    return 0;
  }

  result = fopen(a1, "r");
  if (result)
  {
    v13 = result;
    __ptr[0] = 0;
    v14 = fread(__ptr, 1uLL, 8uLL, result);
    fclose(v13);
    if (v14 < 8)
    {
      return 0;
    }

    if (LOWORD(__ptr[0]) == 30306 && BYTE2(__ptr[0]) == 120)
    {
      v19 = 1;
      v18 = 4;
    }

    else if (LOWORD(__ptr[0]) == 30306 && BYTE2(__ptr[0]) == 52)
    {
      v18 = 1;
      v19 = 1;
    }

    else
    {
      if (LOBYTE(__ptr[0]) != 253 || *(__ptr + 1) != 1515747895)
      {
        if (LOWORD(__ptr[0]) != 25200 || BYTE2(__ptr[0]) != 122)
        {
          goto LABEL_19;
        }

        switch(BYTE3(__ptr[0]))
        {
          case '4':
            v18 = 1;
            break;
          case 'e':
            v18 = 4;
            break;
          case 'x':
            v18 = 3;
            break;
          default:
LABEL_19:
            v18 = 0;
            v19 = 0;
            goto LABEL_27;
        }

        v22 = 3;
        v19 = 1;
        st_size = v25.st_size;
        if (!a2)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      v19 = 1;
      v18 = 3;
    }

LABEL_27:
    st_size = v25.st_size;
    if (v25.st_size < 0x100000uLL)
    {
      v21 = 1;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      v22 = 2;
    }

    else
    {
      v22 = 3;
    }

    if (!a2)
    {
      goto LABEL_35;
    }

LABEL_34:
    *a2 = v19;
LABEL_35:
    if (a3)
    {
      *a3 = v18;
    }

    if (a4)
    {
      *a4 = v22;
    }

    if (a5)
    {
      if (v19)
      {
        v23 = 0;
      }

      else
      {
        v23 = st_size;
      }

      *a5 = v23;
    }

    if (a6)
    {
      if (v19)
      {
        v24 = st_size;
      }

      else
      {
        v24 = 0;
      }

      *a6 = v24;
    }

    return 1;
  }

  return result;
}

uint64_t RECompressionCreate(_anonymous_namespace_ *a1)
{
  *v1 = 0;
  *(v1 + 40) = 0;
  *(v1 + 376) = 0u;
  *(v1 + 392) = 0u;
  *(v1 + 408) = 0u;
  *(v1 + 424) = 0u;
  *(v1 + 440) = 0u;
  *(v1 + 452) = 0u;
  *(v1 + 480) = 0u;
  *(v1 + 496) = 0u;
  *(v1 + 512) = 0u;
  *(v1 + 528) = 0;
  *(v1 + 488) = 0x800000;
  *(v1 + 504) = 0x800000;
  return v1;
}

BOOL RECompressionInit(Compression *this, int a2, int a3, int a4, re::FileStreamReader *a5, re::FileStreamWriter *a6)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return 0;
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  *(this + 118) = v7;
  if ((a3 - 1) <= 3)
  {
    *(this + 117) = dword_1E311F890[a3 - 1];
    *(this + 119) = a4;
    result = Compression::open(this, a5, a6);
    if (!result)
    {
      return result;
    }

    v9 = *(this + 119);
    if (v9 == 1 || v9 == 3)
    {
      Compression::reallocBuffer(this, *(this + 21), this + 61, this + 60);
      Compression::reallocBuffer(this, 0x800000uLL, this + 63, this + 62);
      if (*(this + 119) == 1)
      {
        v11 = *(this + 117);
        if (*(this + 118) == 1)
        {
          v12 = compression_decode_scratch_buffer_size(v11);
        }

        else
        {
          v12 = compression_encode_scratch_buffer_size(v11);
        }

        Compression::reallocBuffer(this, v12, this + 65, this + 64);
      }
    }

    else if (v9 == 2)
    {
      v10 = compression_stream_init((this + 424), *(this + 118), *(this + 117));
      *(this + 116) = v10;
      if (v10 == COMPRESSION_STATUS_OK)
      {
        result = 1;
        *(this + 528) = 1;
        return result;
      }

      Compression::close(this);
      return 0;
    }

    return 1;
  }

  return 0;
}

BOOL Compression::open(Compression *this, re::FileStreamReader *a2, re::FileStreamWriter *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*(this + 119) > 2u)
  {
    if (!*(this + 118))
    {
      re::FileStreamReader::open(&v37, a2);
      if (v37)
      {
        if ((stat(a2, (this + 72)) & 0x80000000) == 0)
        {
          v34.__r_.__value_.__s.__data_[0] = 1;
          v34.__r_.__value_.__l.__size_ = &unk_1F5D0A3F0;
          v34.__r_.__value_.__r.__words[2] = v39;
          v36 = v41;
          v35 = v40;
          v39 = 0;
          v41 = 0;
          re::Optional<re::FileStreamReader>::operator=(this, &v34);
          if (v34.__r_.__value_.__s.__data_[0] == 1 && v34.__r_.__value_.__r.__words[2] && v36 == 1)
          {
            fclose(v34.__r_.__value_.__r.__words[2]);
          }

          if (*(this + 21) >> 20 >= 0xBuLL)
          {
            v15 = 11;
          }

          else
          {
            v15 = *(this + 21) >> 20;
          }

          std::to_string(&v42, 0x100000uLL);
          v16 = std::string::insert(&v42, 0, "w,b=");
          v17 = v16->__r_.__value_.__r.__words[2];
          *&v44.__r_.__value_.__l.__data_ = *&v16->__r_.__value_.__l.__data_;
          v44.__r_.__value_.__r.__words[2] = v17;
          v16->__r_.__value_.__l.__size_ = 0;
          v16->__r_.__value_.__r.__words[2] = 0;
          v16->__r_.__value_.__r.__words[0] = 0;
          v18 = std::string::append(&v44, "b,a=lzfse,t=");
          v19 = v18->__r_.__value_.__r.__words[2];
          *&v34.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
          v34.__r_.__value_.__r.__words[2] = v19;
          v18->__r_.__value_.__l.__size_ = 0;
          v18->__r_.__value_.__r.__words[2] = 0;
          v18->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v33, v15 + 1);
          if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v20 = &v33;
          }

          else
          {
            v20 = v33.__r_.__value_.__r.__words[0];
          }

          if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v33.__r_.__value_.__l.__size_;
          }

          v22 = std::string::append(&v34, v20, size);
          v23 = v22->__r_.__value_.__r.__words[0];
          v43[0] = v22->__r_.__value_.__l.__size_;
          *(v43 + 7) = *(&v22->__r_.__value_.__r.__words[1] + 7);
          v24 = HIBYTE(v22->__r_.__value_.__r.__words[2]);
          v22->__r_.__value_.__l.__size_ = 0;
          v22->__r_.__value_.__r.__words[2] = 0;
          v22->__r_.__value_.__r.__words[0] = 0;
          if (*(this + 423) < 0)
          {
            operator delete(*(this + 50));
          }

          v25 = v43[0];
          *(this + 50) = v23;
          *(this + 51) = v25;
          *(this + 415) = *(v43 + 7);
          *(this + 423) = v24;
          if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v33.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v34.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v44.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v42.__r_.__value_.__l.__data_);
          }

          v26 = ParallelCompressionFileOpen();
          *(this + 46) = v26;
          if (v26 && (stat(a3, (this + 216)) & 0x80000000) == 0)
          {
            v6 = 1;
            goto LABEL_95;
          }

          Compression::close(this);
        }

        goto LABEL_94;
      }

      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v13 = CoreRELog::log;
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_93:

LABEL_94:
        v6 = 0;
        goto LABEL_95;
      }

      re::formattedErrorMessage<re::DetailedError>(&v38, &v34);
      if (v34.__r_.__value_.__s.__data_[8])
      {
        v32 = v34.__r_.__value_.__r.__words[2];
      }

      else
      {
        v32 = &v34.__r_.__value_.__s.__data_[9];
      }

      LODWORD(v44.__r_.__value_.__l.__data_) = 136315138;
      *(v44.__r_.__value_.__r.__words + 4) = v32;
LABEL_121:
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "%s", &v44, 0xCu);
      if (v34.__r_.__value_.__r.__words[0] && (v34.__r_.__value_.__s.__data_[8] & 1) != 0)
      {
        (*(*v34.__r_.__value_.__l.__data_ + 40))();
      }

      goto LABEL_93;
    }

    re::FileStreamWriter::open(&v37, a3);
    if (v37)
    {
      if ((stat(a3, (this + 216)) & 0x80000000) == 0)
      {
        v34.__r_.__value_.__s.__data_[0] = 1;
        v34.__r_.__value_.__l.__size_ = &unk_1F5D0B0A0;
        v34.__r_.__value_.__r.__words[2] = v39;
        LOBYTE(v35) = v40;
        v39 = 0;
        LOBYTE(v40) = 0;
        re::Optional<re::FileStreamWriter>::operator=(this + 40, &v34);
        if (v34.__r_.__value_.__s.__data_[0] == 1 && v34.__r_.__value_.__r.__words[2] && v35 == 1)
        {
          fclose(v34.__r_.__value_.__r.__words[2]);
        }

        std::to_string(&v34, 2uLL);
        v7 = std::string::insert(&v34, 0, "r,c=");
        v8 = v7->__r_.__value_.__r.__words[0];
        v44.__r_.__value_.__r.__words[0] = v7->__r_.__value_.__l.__size_;
        *(v44.__r_.__value_.__r.__words + 7) = *(&v7->__r_.__value_.__r.__words[1] + 7);
        v9 = HIBYTE(v7->__r_.__value_.__r.__words[2]);
        v7->__r_.__value_.__l.__size_ = 0;
        v7->__r_.__value_.__r.__words[2] = 0;
        v7->__r_.__value_.__r.__words[0] = 0;
        if (*(this + 399) < 0)
        {
          operator delete(*(this + 47));
        }

        v10 = v44.__r_.__value_.__r.__words[0];
        *(this + 47) = v8;
        *(this + 48) = v10;
        *(this + 391) = *(v44.__r_.__value_.__r.__words + 7);
        *(this + 399) = v9;
        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v34.__r_.__value_.__l.__data_);
        }

        v11 = ParallelCompressionFileOpen();
        *(this + 45) = v11;
        if (v11)
        {
          if ((stat(a2, (this + 72)) & 0x80000000) == 0)
          {
            v12 = 1;
            goto LABEL_69;
          }
        }
      }
    }

    else
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v27 = CoreRELog::log;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        re::formattedErrorMessage<re::DetailedError>(&v38, &v34);
        v30 = (v34.__r_.__value_.__s.__data_[8] & 1) != 0 ? v34.__r_.__value_.__r.__words[2] : (&v34.__r_.__value_.__r.__words[1] + 1);
        LODWORD(v44.__r_.__value_.__l.__data_) = 136315138;
        *(v44.__r_.__value_.__r.__words + 4) = v30;
        _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, "%s", &v44, 0xCu);
        if (v34.__r_.__value_.__r.__words[0])
        {
          if (v34.__r_.__value_.__s.__data_[8])
          {
            (*(*v34.__r_.__value_.__l.__data_ + 40))();
          }
        }
      }
    }

    Compression::close(this);
    v12 = 0;
LABEL_69:
    if (v37 == 1)
    {
      if (v39 && v40 == 1)
      {
        fclose(v39);
      }
    }

    else if (v40 && (v41 & 1) != 0)
    {
      (*(*v40 + 40))();
    }

    return v12 != 0;
  }

  re::FileStreamReader::open(&v37, a2);
  if ((v37 & 1) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_93;
    }

    re::formattedErrorMessage<re::DetailedError>(&v38, &v34);
    if (v34.__r_.__value_.__s.__data_[8])
    {
      v14 = v34.__r_.__value_.__r.__words[2];
    }

    else
    {
      v14 = &v34.__r_.__value_.__s.__data_[9];
    }

    LODWORD(v44.__r_.__value_.__l.__data_) = 136315138;
    *(v44.__r_.__value_.__r.__words + 4) = v14;
    goto LABEL_121;
  }

  v34.__r_.__value_.__s.__data_[0] = 1;
  v34.__r_.__value_.__l.__size_ = &unk_1F5D0A3F0;
  v34.__r_.__value_.__r.__words[2] = v39;
  v36 = v41;
  v35 = v40;
  v39 = 0;
  v41 = 0;
  re::Optional<re::FileStreamReader>::operator=(this, &v34);
  if (v34.__r_.__value_.__s.__data_[0] == 1 && v34.__r_.__value_.__r.__words[2] && v36 == 1)
  {
    fclose(v34.__r_.__value_.__r.__words[2]);
  }

  re::FileStreamWriter::open(&v34, a3);
  if (v34.__r_.__value_.__s.__data_[0])
  {
    v44.__r_.__value_.__s.__data_[0] = 1;
    v44.__r_.__value_.__l.__size_ = &unk_1F5D0B0A0;
    v44.__r_.__value_.__r.__words[2] = v34.__r_.__value_.__r.__words[2];
    v45 = v35;
    v34.__r_.__value_.__r.__words[2] = 0;
    LOBYTE(v35) = 0;
    re::Optional<re::FileStreamWriter>::operator=(this + 40, &v44);
    if (v44.__r_.__value_.__s.__data_[0] == 1 && v44.__r_.__value_.__r.__words[2] && v45 == 1)
    {
      fclose(v44.__r_.__value_.__r.__words[2]);
    }

    if ((stat(a2, (this + 72)) & 0x80000000) == 0 && (stat(a3, (this + 216)) & 0x80000000) == 0)
    {
      v6 = 1;
      goto LABEL_83;
    }
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v29 = CoreRELog::log;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      re::formattedErrorMessage<re::DetailedError>(&v34.__r_.__value_.__l.__size_, &v44);
      v31 = (v44.__r_.__value_.__s.__data_[8] & 1) != 0 ? v44.__r_.__value_.__r.__words[2] : (&v44.__r_.__value_.__r.__words[1] + 1);
      LODWORD(v42.__r_.__value_.__l.__data_) = 136315138;
      *(v42.__r_.__value_.__r.__words + 4) = v31;
      _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, "%s", &v42, 0xCu);
      if (v44.__r_.__value_.__r.__words[0])
      {
        if (v44.__r_.__value_.__s.__data_[8])
        {
          (*(*v44.__r_.__value_.__l.__data_ + 40))();
        }
      }
    }
  }

  Compression::close(this);
  v6 = 0;
LABEL_83:
  if (v34.__r_.__value_.__s.__data_[0] == 1)
  {
    if (v34.__r_.__value_.__r.__words[2] && v35 == 1)
    {
      fclose(v34.__r_.__value_.__r.__words[2]);
    }
  }

  else if (v35 && (v36 & 1) != 0)
  {
    (*(*v35 + 40))();
  }

LABEL_95:
  if (v37 == 1)
  {
    if (v39)
    {
      if (v41 == 1)
      {
        fclose(v39);
      }
    }
  }

  else if (v40 && (v41 & 1) != 0)
  {
    (*(*v40 + 40))();
  }

  return (v6 & 1) != 0;
}

uint64_t Compression::close(Compression *this)
{
  if (*(this + 119) > 2u)
  {
    if (*(this + 118))
    {
      v3[0] = 0;
      re::Optional<re::FileStreamWriter>::operator=(this + 40, v3);
      if (v3[0] == 1 && v4 && v5 == 1)
      {
        fclose(v4);
      }

      ParallelCompressionFileClose();
      *(this + 45) = 0;
    }

    else
    {
      v3[0] = 0;
      re::Optional<re::FileStreamReader>::operator=(this, v3);
      if (v3[0] == 1 && v4 && v6 == 1)
      {
        fclose(v4);
      }

      ParallelCompressionFileClose();
      *(this + 46) = 0;
    }
  }

  else
  {
    v3[0] = 0;
    re::Optional<re::FileStreamReader>::operator=(this, v3);
    if (v3[0] == 1 && v4 && v6 == 1)
    {
      fclose(v4);
    }

    v3[0] = 0;
    re::Optional<re::FileStreamWriter>::operator=(this + 40, v3);
    if (v3[0] == 1 && v4 && v5 == 1)
    {
      fclose(v4);
    }
  }

  return 1;
}

uint64_t Compression::reallocBuffer(Compression *this, unint64_t a2, unint64_t *a3, unsigned __int8 **a4)
{
  if (a3)
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (!v4 && *a3 < a2)
  {
    if (*a4)
    {
    }

    *a3 = a2;
  }

  return v5;
}

uint64_t RECompressionDeinit(Compression *this)
{
  if (*(this + 119) == 2)
  {
    compression_stream_destroy((this + 424));
  }

  return Compression::close(this);
}

uint64_t RECompressionDestroy(_anonymous_namespace_ *a1)
{
  if (*(a1 + 60))
  {
    *(a1 + 60) = 0;
  }

  if (*(a1 + 62))
  {
    *(a1 + 62) = 0;
  }

  if (*(a1 + 64))
  {
    *(a1 + 64) = 0;
    *(a1 + 65) = 0;
  }

  Compression::~Compression(a1);
}

uint64_t RECompressionProcess(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = *(a1 + 476);
  v5 = 1;
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 != 3)
      {
        goto LABEL_52;
      }

      if (!*(a1 + 472))
      {
        v28 = *(a1 + 488);
        while (1)
        {
          fread(*(a1 + 480), 1uLL, v28, *(a1 + 16));
          if (ferror(*(a1 + 16)) || ParallelCompressionFileWrite() < 0)
          {
            goto LABEL_45;
          }

          v5 = 1;
          if (feof(*(a1 + 16)))
          {
            goto LABEL_52;
          }
        }
      }

      while (1)
      {
        v9 = ParallelCompressionFileRead();
        v10 = v9 == 0;
        if (v9 <= 0)
        {
          goto LABEL_49;
        }

        if (v9 != fwrite(*(a1 + 496), 1uLL, v9, *(a1 + 56)))
        {
          goto LABEL_45;
        }
      }
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = *(a1 + 168);
    v17 = *(a1 + 480);
    v18 = *(a1 + 496);
    while (1)
    {
      if ((v15 & 1) != 0 || v14 >> 23)
      {
        *(a1 + 440) = v17;
        *(a1 + 448) = v14;
        *(a1 + 424) = v18;
        *(a1 + 432) = 0x800000;
        if ((v15 & 1) == 0)
        {
          v15 = 0;
          v21 = 0;
          goto LABEL_26;
        }
      }

      else
      {
        v19 = fread(&v17[v14], 1uLL, 0x800000 - v14, *(a1 + 16));
        v20 = v19 + v14;
        v13 += v19;
        if (v19 >= 0x800000 - v14)
        {
          v15 = 0;
          v21 = 0;
          *(a1 + 440) = v17;
          *(a1 + 448) = v20;
          *(a1 + 424) = v18;
          *(a1 + 432) = 0x800000;
          goto LABEL_26;
        }

        if (v13 != v16)
        {
          goto LABEL_45;
        }

        *(a1 + 440) = v17;
        *(a1 + 448) = v20;
        v13 = v16;
        *(a1 + 424) = v18;
        *(a1 + 432) = 0x800000;
      }

      v21 = *(a1 + 472) == 0;
      v15 = 1;
LABEL_26:
      v22 = compression_stream_process((a1 + 424), v21);
      *(a1 + 464) = v22;
      if (v22 == COMPRESSION_STATUS_END)
      {
        v23 = 1;
      }

      else
      {
        v23 = 0;
        v5 = 0;
        if (v22 == COMPRESSION_STATUS_ERROR)
        {
          goto LABEL_52;
        }
      }

      v24 = *(a1 + 424);
      v14 = *(a1 + 448);
      if (v14)
      {
        memmove(v17, *(a1 + 440), *(a1 + 448));
      }

      if (v24 == v18)
      {
        if (v23)
        {
          v5 = 1;
          goto LABEL_52;
        }
      }

      else
      {
        v25 = v24 - v18;
        v26 = fwrite(v18, 1uLL, v25, *(a1 + 56));
        v10 = v26 == v25;
        if (v26 == v25)
        {
          v27 = v23;
        }

        else
        {
          v27 = 1;
        }

        if (v27)
        {
          goto LABEL_49;
        }
      }
    }
  }

  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_52;
    }

    v6 = *(a1 + 168);
    if (fread(*(a1 + 480), 1uLL, v6, *(a1 + 16)) == v6)
    {
      v7 = *(a1 + 504);
      if (*(a1 + 472) == 1)
      {
        while (1)
        {
          v8 = compression_decode_buffer(*(a1 + 496), v7, *(a1 + 480), v6, *(a1 + 512), *(a1 + 468));
          if (v8 < v7)
          {
            break;
          }

          Compression::reallocBuffer(a1, v7 + (v7 >> 2), (a1 + 504), (a1 + 496));
          v7 = *(a1 + 504);
        }
      }

      else
      {
        v8 = compression_encode_buffer(*(a1 + 496), *(a1 + 504), *(a1 + 480), v6, *(a1 + 512), *(a1 + 468));
      }

      v5 = v8;
      if (!v8)
      {
        goto LABEL_52;
      }

      v10 = v8 == fwrite(*(a1 + 496), 1uLL, v8, *(a1 + 56));
      goto LABEL_49;
    }

LABEL_45:
    v5 = 0;
    goto LABEL_52;
  }

  v11 = *(a1 + 480);
  v12 = *(a1 + 168);
  if (fread(v11, 1uLL, v12, *(a1 + 16)) != v12)
  {
    goto LABEL_45;
  }

  v10 = v12 == fwrite(v11, 1uLL, v12, *(a1 + 56));
LABEL_49:
  v5 = v10;
LABEL_52:
  if (a2)
  {
    a2(a3);
  }

  return v5;
}

uint64_t re::Optional<re::FileStreamReader>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      re::FileStreamReader::operator=(a1 + 8, a2 + 8);
    }

    else
    {
      v4 = *(a1 + 16);
      if (v4 && *(a1 + 32) == 1)
      {
        fclose(v4);
        *(a1 + 16) = 0;
        *(a1 + 32) = 0;
      }

      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = &unk_1F5D0A3F0;
    *(a1 + 32) = 0;
    *(a1 + 32) = *(a2 + 32);
    v3 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v3;
    *(a2 + 16) = 0;
    *(a2 + 32) = 0;
  }

  return a1;
}

uint64_t re::Optional<re::FileStreamWriter>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      re::FileStreamWriter::operator=(a1 + 8, a2 + 8);
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 && *(a1 + 24) == 1)
      {
        fclose(v3);
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
      }

      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = &unk_1F5D0B0A0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
  }

  return a1;
}

void Compression::~Compression(void **this)
{
  if (*(this + 423) < 0)
  {
    operator delete(this[50]);
  }

  if (*(this + 399) < 0)
  {
    operator delete(this[47]);
  }

  if (*(this + 40) == 1)
  {
    v2 = this[7];
    if (v2)
    {
      if (*(this + 64) == 1)
      {
        fclose(v2);
        this[7] = 0;
        *(this + 64) = 0;
      }
    }
  }

  if (*this == 1)
  {
    v3 = this[2];
    if (v3)
    {
      if (*(this + 32) == 1)
      {
        fclose(v3);
        this[2] = 0;
        *(this + 32) = 0;
      }
    }
  }
}

uint64_t REBlendShapeWeightsDefinitionAssetCreateAssetWithDefinitions(uint64_t a1, re *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = re::BlendShapeWeightsDefinitionAsset::assetType(BlendShapeWeightDefinition);
  (*(*a1 + 424))(v11, a1, BlendShapeWeightDefinition, v7, 0, 0, 0);
  v8 = v11[0];
  if (v11[0])
  {
    v9 = (v11[0] + 8);
  }

  re::AssetHandle::~AssetHandle(v11);
  return v8;
}

uint64_t anonymous namespace::createBlendShapeWeightDefinition(re *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, const char **a6)
{
  v57 = *MEMORY[0x1E69E9840];
  v8 = re::globalAllocators(a1);
  v9 = (*(*v8[2] + 32))(v8[2], 136, 8);
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *v9 = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  *(v9 + 104) = 0;
  *(v9 + 112) = 0;
  *(v9 + 120) = v9;
  v35 = (v9 + 40);
  *(v9 + 128) = v9 + 40;
  v10 = re::BlendShapeWeightsDefinitionAsset::init(v9, 0);
  if (*(v9 + 8) >= a1)
  {
    if (!a1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = re::DynamicArray<re::FixedArray<re::StringID>>::setCapacity(v9, a1);
  }

  v11 = 0;
  do
  {
    v12 = v9;
    v13 = (a2 + 16 * v11);
    v14 = *v13;
    v41 = 0;
    v42 = 0;
    v40 = 0;
    if (*v13)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        v18 = *(v13[1] + 8 * v17);
        v38 = 0;
        v39 = &str_67;
        v19 = v41;
        if (v41 <= v17)
        {
          v43 = 0;
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v52 = 0u;
          v29 = MEMORY[0x1E69E9C10];
          v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v44 = 136315906;
          v45 = "operator[]";
          v46 = 1024;
          if (v30)
          {
            v31 = 3;
          }

          else
          {
            v31 = 2;
          }

          v47 = 468;
          v48 = 2048;
          v49 = v17;
          v50 = 2048;
          v51 = v19;
          _os_log_send_and_compose_impl(v31, &v43, &v52, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v44, 38, v32, a4);
          _os_crash_msg();
          __break(1u);
        }

        v15 = re::StringID::operator=((v42 + v16), &v38);
        if (v38)
        {
          if (v38)
          {
          }
        }

        ++v17;
        v16 += 16;
      }

      while (v17 < *v13);
    }

    v9 = v12;
    re::DynamicArray<re::FixedArray<re::StringID>>::add(v12, &v40);
    v10 = re::FixedArray<re::StringID>::deinit(&v40);
    v11 = (v11 + 1);
  }

  while (v11 != a1);
LABEL_13:
  if (*(v9 + 48) >= a3)
  {
    v20 = v35;
    v21 = a5;
    v22 = a6;
    if (!a3)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v20 = v35;
    v10 = re::DynamicArray<re::BlendShapeWeightsMeshMap>::setCapacity(v35, a3);
    v21 = a5;
    v22 = a6;
  }

  v23 = a4 + 16;
  do
  {
    LOBYTE(v52) = *(v23 - 16);
    v24 = *(v23 - 8);
    *(&v52 + 1) = 0;
    *&v53 = &str_67;
    v25 = *v23;
    *(&v53 + 1) = 0;
    *&v54 = &str_67;
    *(&v54 + 1) = *(v23 + 8);
    v10 = re::DynamicArray<re::BlendShapeWeightsMeshMap>::add(v20, &v52);
    if (BYTE8(v53))
    {
      if (BYTE8(v53))
      {
      }
    }

    *(&v53 + 1) = 0;
    *&v54 = &str_67;
    if (BYTE8(v52))
    {
      if (BYTE8(v52))
      {
      }
    }

    v23 += 32;
    --a3;
  }

  while (a3);
LABEL_24:
  while (v21)
  {
    v27 = *v22;
    *&v52 = 0;
    *(&v52 + 1) = &str_67;
    v10 = re::DynamicArray<re::StringID>::add((v9 + 80), &v52);
    if (v52)
    {
      if (v52)
      {
      }
    }

    ++v22;
    --v21;
  }

  return v9;
}

uint64_t REBlendShapeWeightsDefinitionAssetCreateAssetWithDefinitionsAndWeightNames(uint64_t a1, re *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, const char **a7)
{
  v9 = re::BlendShapeWeightsDefinitionAsset::assetType(BlendShapeWeightDefinition);
  (*(*a1 + 424))(v13, a1, BlendShapeWeightDefinition, v9, 0, 0, 0);
  v10 = v13[0];
  if (v13[0])
  {
    v11 = (v13[0] + 8);
  }

  re::AssetHandle::~AssetHandle(v13);
  return v10;
}

uint64_t REBlendShapeWeightsDefinitionAssetCreateAssetForMesh(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, v14);
  v3 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>(v14);
  if (v3)
  {
    v4 = v3;
    v5 = re::globalAllocators(v3);
    v6 = (*(*v5[2] + 32))(v5[2], 136, 8);
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    *v6 = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0;
    *(v6 + 72) = 0u;
    *(v6 + 88) = 0u;
    *(v6 + 104) = 0;
    *(v6 + 112) = 0;
    *(v6 + 120) = v6;
    *(v6 + 128) = v6 + 40;
    v7 = *(v4 + 71);
    v13[0] = *(v4 + 73);
    v13[1] = v7;
    re::BlendShapeWeightsDefinitionAsset::init(v6, v4, v13, 0);
    v9 = re::BlendShapeWeightsDefinitionAsset::assetType(v8);
    (*(*a1 + 424))(v13, a1, v6, v9, 0, 0, 0);
    v10 = v13[0];
    if (v13[0])
    {
      v11 = (v13[0] + 8);
    }

    re::AssetHandle::~AssetHandle(v13);
  }

  else
  {
    v10 = 0;
  }

  re::AssetHandle::~AssetHandle(v14);
  return v10;
}

uint64_t REBlendShapeWeightsDefinitionAssetGetBlendShapeWeightsCount(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::blockUntilLoaded<re::BlendShapeWeightsDefinitionAsset>(v4);
  if (v1)
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v4);
  return v2;
}

const char *REBlendShapeWeightsDefinitionAssetGetBlendShapeName(uint64_t a1, unint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a1, v11);
  v3 = re::AssetHandle::blockUntilLoaded<re::BlendShapeWeightsDefinitionAsset>(v11);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = *(v3 + 96);
  if (!v4)
  {
    goto LABEL_7;
  }

  if (v4 <= a2)
  {
    v12 = 0;
    memset(v21, 0, sizeof(v21));
    v8 = MEMORY[0x1E69E9C10];
    v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    if (v9)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v16 = 797;
    v17 = 2048;
    v18 = a2;
    v19 = 2048;
    v20 = v4;
    _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11[0], v11[1]);
    _os_crash_msg();
    __break(1u);
  }

  v5 = (*(v3 + 112) + 16 * a2);
  v6 = v5[1];
  if (*v5 <= 1uLL && v6 && !*v6)
  {
LABEL_7:
    v6 = "";
  }

  re::AssetHandle::~AssetHandle(v11);
  return v6;
}

uint64_t REBlendShapeWeightsDefinitionAssetGetBlendWeightCount(uint64_t a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a1, v10);
  v3 = re::AssetHandle::blockUntilLoaded<re::BlendShapeWeightsDefinitionAsset>(v10);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4 <= a2)
    {
      v11 = 0;
      memset(v20, 0, sizeof(v20));
      v7 = MEMORY[0x1E69E9C10];
      v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v12 = 136315906;
      v13 = "operator[]";
      v14 = 1024;
      if (v8)
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v15 = 797;
      v16 = 2048;
      v17 = a2;
      v18 = 2048;
      v19 = v4;
      _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10[0], v10[1]);
      _os_crash_msg();
      __break(1u);
    }

    v5 = *(*(v3 + 32) + 24 * a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  re::AssetHandle::~AssetHandle(v10);
  return v5;
}

const char *REBlendShapeWeightsDefinitionAssetGetBlendWeightName(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a1, &v15);
  v5 = re::AssetHandle::blockUntilLoaded<re::BlendShapeWeightsDefinitionAsset>(&v15);
  if (!v5)
  {
    v8 = "";
    goto LABEL_6;
  }

  v6 = *(v5 + 16);
  if (v6 <= a2)
  {
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    a3 = MEMORY[0x1E69E9C10];
    v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v21 = 797;
    v22 = 2048;
    v23 = a2;
    v24 = 2048;
    v25 = v6;
    _os_log_send_and_compose_impl(v11, &v17, &v26, 80, &dword_1E1C61000, a3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v15, v16);
    _os_crash_msg();
    __break(1u);
LABEL_11:
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v12 = MEMORY[0x1E69E9C10];
    v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (v13)
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v21 = 476;
    v22 = 2048;
    v23 = a3;
    v24 = 2048;
    v25 = v6;
    _os_log_send_and_compose_impl(v14, &v17, &v26, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v15, v16);
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(v5 + 32) + 24 * a2;
  v6 = *(v7 + 8);
  if (v6 <= a3)
  {
    goto LABEL_11;
  }

  v8 = *(*(v7 + 16) + 16 * a3 + 8);
LABEL_6:
  re::AssetHandle::~AssetHandle(&v15);
  return v8;
}

uint64_t REBlendShapeWeightsDefinitionAssetGetBlendShapeWeightsMeshMapCount(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::blockUntilLoaded<re::BlendShapeWeightsDefinitionAsset>(v4);
  if (v1)
  {
    v2 = *(v1 + 56);
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v4);
  return v2;
}

void REBlendShapeWeightsDefinitionAssetGetBlendShapeWeightsMeshMap(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a1, v13);
  v5 = re::AssetHandle::blockUntilLoaded<re::BlendShapeWeightsDefinitionAsset>(v13);
  if (v5)
  {
    v6 = *(v5 + 56);
    if (v6 <= a2)
    {
      v14 = 0;
      memset(v23, 0, sizeof(v23));
      v10 = MEMORY[0x1E69E9C10];
      v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v15 = 136315906;
      v16 = "operator[]";
      v17 = 1024;
      if (v11)
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      v18 = 797;
      v19 = 2048;
      v20 = a2;
      v21 = 2048;
      v22 = v6;
      _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13[0], v13[1]);
      _os_crash_msg();
      __break(1u);
    }

    v7 = *(v5 + 72) + 48 * a2;
    *a3 = *v7;
    *(a3 + 8) = *(v7 + 16);
    v8 = *(v7 + 32);
    if (v8 && !*v8)
    {
      v8 = 0;
    }

    *(a3 + 16) = v8;
    v9 = *(v7 + 40);
  }

  else
  {
    v9 = 0;
    *a3 = 0;
    *(a3 + 8) = "";
    *(a3 + 16) = "";
  }

  *(a3 + 24) = v9;
  re::AssetHandle::~AssetHandle(v13);
}

uint64_t REUnlitMaterialParametersSetColorTint(uint64_t a1, char a2, __n128 a3)
{
  v4 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::UnlitMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *(v4 + 28) = a3;
  *(v4 + 44) = a2;

  return re::ecs2::Component::enqueueMarkDirty(v4);
}

__n128 REUnlitMaterialParametersGetColorTint(uint64_t a1, __n128 *a2, _BYTE *a3)
{
  v5 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::UnlitMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  result = *(v5 + 28);
  *a2 = result;
  *a3 = *(v5 + 44);
  return result;
}

uint64_t REUnlitMaterialParametersSetOpacity(uint64_t a1, float a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::UnlitMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *(v3 + 40) = a2;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REUnlitMaterialParametersSetColorTexture(uint64_t a1, uint64_t a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::UnlitMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::AssetAPIHelper::assetHandleCreate(a2, &v7);
  v4 = *(v3 + 48);
  *(v3 + 48) = v7;
  v7 = v4;
  v5 = *(v3 + 64);
  *(v3 + 64) = v8;
  v8 = v5;
  re::AssetHandle::~AssetHandle(&v7);
  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REUnlitMaterialParametersSetOpacityThreshold(uint64_t a1, float a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::UnlitMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *(v3 + 72) = a2;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

void *REEDRColorManagementComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::EDRColorManagementComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

uint64_t RESceneAddEDRColorManagementComponent(uint64_t a1)
{
  v5[0] = 0;
  SceneDataEntity = makeSceneDataEntity(a1, v5, 1, re::ecs2::Scene::kLocalSceneDataEntityID, 0);
  v2 = re::ecs2::ComponentImpl<re::ecs2::EDRColorManagementComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v3 = (SceneDataEntity + 48);

  return re::ecs2::EntityComponentCollection::getOrAdd(v3, v2);
}

void RESceneRemoveEDRColorManagementComponent(uint64_t a1)
{
  v4[0] = 0;
  SceneDataEntity = makeSceneDataEntity(a1, v4, 0, re::ecs2::Scene::kLocalSceneDataEntityID, 0);
  if (SceneDataEntity)
  {
    v2 = re::ecs2::ComponentImpl<re::ecs2::EDRColorManagementComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    v3 = (SceneDataEntity + 48);

    re::ecs2::EntityComponentCollection::remove(v3, v2);
  }
}

re::ecs2::Entity *RESceneGetEDRColorManagementComponent(uint64_t a1)
{
  v2[0] = 0;
  result = makeSceneDataEntity(a1, v2, 0, re::ecs2::Scene::kLocalSceneDataEntityID, 0);
  if (result)
  {
    return re::ecs2::EntityComponentCollection::get((result + 48), re::ecs2::ComponentImpl<re::ecs2::EDRColorManagementComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  }

  return result;
}

void REEDRColorManagementComponentSetHeadroomCallback(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = *(a1 + 32);
  *(a1 + 32) = v3;
}

uint64_t REComponentGetEntity(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    if ((*(result + 304) & 0x80) != 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t REComponentContainsAssetReference(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __REComponentContainsAssetReference_block_invoke;
  v3[3] = &unk_1E87231C0;
  v3[4] = &v4;
  v3[5] = a1;
  REGlobalTypeRegistryWithReadLock(v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t __REComponentContainsAssetReference_block_invoke(uint64_t a1, re *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  (*(**(a1 + 40) + 56))(v5);
  RETypeRegistryGetTypeInfoByTypeID(a2, v5[0], v5[1], v6);
  re::TypeInfo::TypeInfo(v5, v6);
  result = re::AssetHandle::hasAssetHandle(v5);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void REComponentFixupAssetReferences(const re::IntrospectionBase **a1, uint64_t a2, void *a3)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  v5 = (*(*a1 + 5))(a1);
  v6 = (*(*v5 + 48))(v5);
  v10[0] = &unk_1F5D2ED78;
  v10[1] = v7;
  v10[2] = _Block_copy(v4);
  v10[3] = v10;
  v11[0] = &unk_1F5CB9490;
  v11[1] = v10;
  v11[3] = v11;
  re::IntrospectionWalker::walk(v6, a1, v11);
  std::__function::__value_func<void ()(re::IntrospectionBase const&,void const*)>::~__value_func[abi:nn200100](v11);
  std::__function::__value_func<void ()(re::AssetHandle *)>::~__value_func[abi:nn200100](v10);
  if (v7[0] && v9)
  {
    (*(*v7[0] + 40))();
  }
}

uint64_t REComponentTypeSetCloneCallback(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      *(result + 8) = a2;
      return result;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Component type must not be null.", "cComponentType", "REComponentTypeSetCloneCallback", 95);
    _os_crash("assertion failure: (cComponentType) Component type must not be null.");
    __break(1u);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Clone callback must not be null.", "clone", "REComponentTypeSetCloneCallback", 96);
  result = _os_crash("assertion failure: (clone) Clone callback must not be null.");
  __break(1u);
  return result;
}

uint64_t REComponentTypeGetTypeID(uint64_t result)
{
  if (result)
  {
    (*(*result + 56))(&v1);
    return v1;
  }

  return result;
}

uint64_t REComponentIsCustomComponent(uint64_t a1)
{
  v1 = *(*(*(*a1 + 40))(a1) + 8);

  return v1();
}

void std::__function::__func<REComponentFixupAssetReferences::$_0,std::allocator<REComponentFixupAssetReferences::$_0>,void ()(re::AssetHandle *)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void *std::__function::__func<REComponentFixupAssetReferences::$_0,std::allocator<REComponentFixupAssetReferences::$_0>,void ()(re::AssetHandle *)>::__clone(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = &unk_1F5D2ED78;
  a2[1] = v4;
  result = _Block_copy(v3);
  a2[2] = result;
  return result;
}

void std::__function::__func<REComponentFixupAssetReferences::$_0,std::allocator<REComponentFixupAssetReferences::$_0>,void ()(re::AssetHandle *)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<REComponentFixupAssetReferences::$_0,std::allocator<REComponentFixupAssetReferences::$_0>,void ()(re::AssetHandle *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*(*(a1 + 16) + 16))();
  re::AssetAPIHelper::assetHandleCreate(v3, v4);
  re::AssetHandle::operator=(v2, v4);
  re::AssetHandle::~AssetHandle(v4);
}

uint64_t std::__function::__func<REComponentFixupAssetReferences::$_0,std::allocator<REComponentFixupAssetReferences::$_0>,void ()(re::AssetHandle *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t REIkRigAssetBuilderCreate(_anonymous_namespace_ *a1)
{
  v2 = re::globalAllocators(v1);
  v3 = (*(*v2[2] + 32))(v2[2], 288, 8);
  ArcSharedObject::ArcSharedObject(v3, 0);
  *v3 = &unk_1F5D2EDF8;
  ArcSharedObject::ArcSharedObject((v3 + 24), 0);
  *(v3 + 24) = &unk_1F5D2EE40;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 280) = 0;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0;
  *(v3 + 200) = 0u;
  *(v3 + 216) = 0u;
  *(v3 + 232) = 0;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0;
  re::DynamicArray<float *>::setCapacity((v3 + 48), 0);
  ++*(v3 + 72);
  re::DynamicArray<re::DynamicString>::setCapacity((v3 + 88), 0);
  ++*(v3 + 112);
  re::DynamicArray<re::StringID>::setCapacity((v3 + 128), 0);
  ++*(v3 + 152);
  re::DynamicArray<re::StringID>::setCapacity((v3 + 168), 0);
  ++*(v3 + 192);
  re::DynamicArray<re::StringID>::setCapacity((v3 + 208), 0);
  ++*(v3 + 232);
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity((v3 + 248), 0);
  ++*(v3 + 272);
  return v3;
}

_anonymous_namespace_ *REIkRigAssetBuilderAddRig(_anonymous_namespace_ *a1, uint64_t a2, const char *a3, const char *a4, const char *a5, const char *a6, uint64_t a7)
{
  v12 = a1;
  v28 = a7;
  v13 = *(a1 + 7);
  v14 = *(a1 + 8);
  if (v14 >= v13)
  {
    v15 = v14 + 1;
    if (v13 < v14 + 1)
    {
      if (*(a1 + 6))
      {
        v16 = 2 * v13;
        v17 = v13 == 0;
        v18 = 8;
        if (!v17)
        {
          v18 = v16;
        }

        if (v18 <= v15)
        {
          v19 = v15;
        }

        else
        {
          v19 = v18;
        }

        a1 = re::DynamicArray<float *>::setCapacity(a1 + 6, v19);
      }

      else
      {
        a1 = re::DynamicArray<float *>::setCapacity(v12 + 6, v15);
        ++*(v12 + 18);
      }
    }

    v14 = *(v12 + 8);
  }

  *(*(v12 + 10) + 8 * v14) = a2;
  *(v12 + 8) = v14 + 1;
  ++*(v12 + 18);
  v20 = re::DynamicArray<re::DynamicString>::add((v12 + 88), &v26);
  v21 = v26;
  if (v26 && (v27 & 1) != 0)
  {
    v21 = (*(*v26 + 40))(v20);
  }

  v26 = 0;
  v27 = &str_67;
  v22 = re::DynamicArray<re::StringID>::add((v12 + 128), &v26);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0;
  v27 = &str_67;
  v23 = re::DynamicArray<re::StringID>::add((v12 + 168), &v26);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0;
  v27 = &str_67;
  v24 = re::DynamicArray<re::StringID>::add((v12 + 208), &v26);
  if (v26)
  {
    if (v26)
    {
    }
  }

  return re::DynamicArray<unsigned long>::add((v12 + 248), &v28);
}

uint64_t REIkRigAssetCreate(re *a1, uint64_t a2, CFErrorRef *a3)
{
  v20[4] = *MEMORY[0x1E69E9840];
  if (a1 && *(a2 + 64))
  {
    v6 = re::globalAllocators(a1);
    v7 = (*(*v6[2] + 32))(v6[2], 416, 8);
    *v7 = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
    *(v7 + 80) = 0u;
    *(v7 + 96) = 0u;
    *(v7 + 112) = 0u;
    *(v7 + 128) = 0u;
    *(v7 + 144) = 0u;
    *(v7 + 160) = 0u;
    *(v7 + 176) = 0u;
    *(v7 + 192) = 0u;
    *(v7 + 208) = 0u;
    *(v7 + 224) = 0u;
    *(v7 + 240) = 0u;
    *(v7 + 256) = 0u;
    *(v7 + 272) = 0u;
    *(v7 + 288) = 0u;
    *(v7 + 304) = 0u;
    *(v7 + 320) = 0u;
    *(v7 + 336) = 0u;
    *(v7 + 352) = 0u;
    *(v7 + 368) = 0u;
    *(v7 + 384) = 0u;
    *(v7 + 400) = 0u;
    *(v7 + 404) = 0x7FFFFFFF;
    v18[0] = &unk_1F5D2EE88;
    v18[3] = v18;
    v20[3] = v20;
    *buf = v7;
    v20[0] = &unk_1F5D2EE88;
    std::__function::__value_func<void ()(re::IKRigAsset *)>::~__value_func[abi:nn200100](v18);
    re::IKRigAsset::init(*buf, *(a2 + 80), *(a2 + 64), *(a2 + 120), *(a2 + 104), *(a2 + 160), *(a2 + 144), v8, *(a2 + 200), *(a2 + 184), *(a2 + 240), *(a2 + 224), *(a2 + 280), *(a2 + 264));
    v9 = *buf;
    v11 = re::IKRigAsset::assetType(v10);
    (*(*a1 + 424))(v18, a1, v9, v11, 0, 0, 0);
    if (v18[1])
    {
      *buf = 0;
      v12 = v18[0];
      if (v18[0])
      {
        v13 = (v18[0] + 8);
      }
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
        *v17 = 0;
        _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "IKRigAsset Creation Error - Failed registering the new asset", v17, 2u);
      }

      makeError(@"REAssetRefErrorDomain", "Failed registering the new asset", 32, a3);
      v12 = 0;
    }

    re::AssetHandle::~AssetHandle(v18);
    std::unique_ptr<re::IKRigAsset,std::function<void ()(re::IKRigAsset*)>>::~unique_ptr[abi:nn200100](buf);
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
      _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "IkRigAsset Creation Error - NULL argument detected", buf, 2u);
    }

    makeError(@"REAssetRefErrorDomain", "NULL argument detected", 22, a3);
    return 0;
  }

  return v12;
}

uint64_t REIkRigAssetCreateForMultipleSolvers(re *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, CFErrorRef *a7)
{
  v7 = a7;
  v91 = *MEMORY[0x1E69E9840];
  if (a1 && a6)
  {
    v12 = re::globalAllocators(a1);
    v13 = (*(*v12[2] + 32))(v12[2], 416, 8);
    *v13 = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
    *(v13 + 80) = 0u;
    *(v13 + 96) = 0u;
    *(v13 + 112) = 0u;
    *(v13 + 128) = 0u;
    *(v13 + 144) = 0u;
    *(v13 + 160) = 0u;
    *(v13 + 176) = 0u;
    *(v13 + 192) = 0u;
    *(v13 + 208) = 0u;
    *(v13 + 224) = 0u;
    *(v13 + 240) = 0u;
    *(v13 + 256) = 0u;
    *(v13 + 272) = 0u;
    *(v13 + 288) = 0u;
    *(v13 + 304) = 0u;
    *(v13 + 320) = 0u;
    *(v13 + 336) = 0u;
    *(v13 + 352) = 0u;
    *(v13 + 368) = 0u;
    *(v13 + 384) = 0u;
    *(v13 + 400) = 0u;
    *(v13 + 404) = 0x7FFFFFFF;
    *&buf = &unk_1F5D2EF18;
    *(&v87 + 1) = &buf;
    v77[3] = v77;
    v76 = v13;
    v77[0] = &unk_1F5D2EF18;
    v14 = std::__function::__value_func<void ()(re::IKRigAsset *)>::~__value_func[abi:nn200100](&buf);
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = [*(a2 + 8 * v21) UTF8String];
      v23 = v73;
      if (v73 <= v21)
      {
        v75 = 0;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        buf = 0u;
        v39 = MEMORY[0x1E69E9C10];
        v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v78 = 136315906;
        v79 = "operator[]";
        v80 = 1024;
        if (v40)
        {
          v41 = 3;
        }

        else
        {
          v41 = 2;
        }

        v81 = 468;
        v82 = 2048;
        v83 = v21;
        v84 = 2048;
        v85 = v23;
        _os_log_send_and_compose_impl(v41, &v75, &buf, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v78, 38, v53, v54);
        _os_crash_msg();
        __break(1u);
LABEL_43:
        v75 = 0;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        buf = 0u;
        v42 = MEMORY[0x1E69E9C10];
        v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v78 = 136315906;
        v79 = "operator[]";
        v80 = 1024;
        if (v43)
        {
          v44 = 3;
        }

        else
        {
          v44 = 2;
        }

        v81 = 468;
        v82 = 2048;
        v83 = v21;
        v84 = 2048;
        v85 = v23;
        _os_log_send_and_compose_impl(v44, &v75, &buf, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v78, 38, v53, v54);
        _os_crash_msg();
        __break(1u);
LABEL_47:
        v75 = 0;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        buf = 0u;
        v45 = MEMORY[0x1E69E9C10];
        v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v78 = 136315906;
        v79 = "operator[]";
        v80 = 1024;
        if (v46)
        {
          v47 = 3;
        }

        else
        {
          v47 = 2;
        }

        v81 = 468;
        v82 = 2048;
        v83 = v21;
        v84 = 2048;
        v85 = v23;
        _os_log_send_and_compose_impl(v47, &v75, &buf, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v78, 38, v53, v54);
        _os_crash_msg();
        __break(1u);
LABEL_51:
        v75 = 0;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        buf = 0u;
        v48 = MEMORY[0x1E69E9C10];
        v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v78 = 136315906;
        v79 = "operator[]";
        v80 = 1024;
        if (v49)
        {
          v50 = 3;
        }

        else
        {
          v50 = 2;
        }

        v81 = 468;
        v82 = 2048;
        v83 = v21;
        v84 = 2048;
        v85 = v23;
        _os_log_send_and_compose_impl(v50, &v75, &buf, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v78, 38, v53, v54);
        _os_crash_msg();
        __break(1u);
LABEL_55:
        v58 = 0;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        buf = 0u;
        v7 = MEMORY[0x1E69E9C10];
        v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v78 = 136315906;
        v79 = "operator[]";
        v80 = 1024;
        if (v51)
        {
          v52 = 3;
        }

        else
        {
          v52 = 2;
        }

        v81 = 468;
        v82 = 2048;
        v83 = v21;
        v84 = 2048;
        v85 = v23;
        _os_log_send_and_compose_impl(v52, &v58, &buf, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v78, 38, v53, v54);
        _os_crash_msg();
        __break(1u);
        goto LABEL_59;
      }

      re::DynamicString::operator=((v74 + v19), &v58);
      if (v58 && (v59 & 1) != 0)
      {
        (*(*v58 + 40))();
      }

      v24 = [*(a3 + 8 * v21) UTF8String];
      v58 = 0;
      v59 = &str_67;
      v23 = v70;
      if (v70 <= v21)
      {
        goto LABEL_43;
      }

      v25 = re::StringID::operator=((v71 + v20 * 16), &v58);
      if (v58)
      {
        if (v58)
        {
        }
      }

      v26 = [*(a4 + 8 * v21) UTF8String];
      v58 = 0;
      v59 = &str_67;
      v23 = v67;
      if (v67 <= v21)
      {
        goto LABEL_47;
      }

      v27 = re::StringID::operator=((v68 + v20 * 16), &v58);
      if (v58)
      {
        if (v58)
        {
        }
      }

      v28 = [*(a5 + 8 * v21) UTF8String];
      v58 = 0;
      v59 = &str_67;
      v23 = v64;
      if (v64 <= v21)
      {
        goto LABEL_51;
      }

      v29 = re::StringID::operator=(&v65[v20], &v58);
      if (v58)
      {
        if (v58)
        {
        }
      }

      v30 = [*(a5 + 8 * v21) hash];
      v23 = v61;
      if (v61 <= v21)
      {
        goto LABEL_55;
      }

      v32 = v62;
      *(v62 + 8 * v21++) = v30;
      ++v20;
      v19 += 32;
    }

    while (a6 != v21);
    re::IKRigAsset::init(v76, v74, v73, v71, v70, v68, v67, v31, v65, v64, v32, v61);
    re::IKRigAsset::assetType(v33);
    (*(*a1 + 424))(&buf);
    if (*(&buf + 1))
    {
      v76 = 0;
      v34 = buf;
      if (buf)
      {
        v35 = (buf + 8);
      }
    }

    else
    {
      if (CoreRELog::onceToken != -1)
      {
        dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
      }

      v37 = CoreRELog::log;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *v78 = 0;
        _os_log_error_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_ERROR, "IKRigAsset Creation Error - Failed registering the new asset", v78, 2u);
      }

      makeError(@"REAssetRefErrorDomain", "Failed registering the new asset", 32, a7);
      v34 = 0;
    }

    re::AssetHandle::~AssetHandle(&buf);
    if (v60 && v61)
    {
      (*(*v60 + 40))();
    }

    re::FixedArray<re::StringID>::deinit(&v63);
    re::FixedArray<re::StringID>::deinit(&v66);
    re::FixedArray<re::StringID>::deinit(&v69);
    re::FixedArray<re::DynamicString>::deinit(&v72);
    std::unique_ptr<re::IKRigAsset,std::function<void ()(re::IKRigAsset*)>>::~unique_ptr[abi:nn200100](&v76);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
LABEL_59:
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v36 = CoreRELog::log;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, "IkRigAsset Creation Error - NULL argument detected", &buf, 2u);
    }

    makeError(@"REAssetRefErrorDomain", "NULL argument detected", 22, v7);
    return 0;
  }

  return v34;
}

uint64_t REIkRigAssetGetDefinitionCount(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v3);
  v1 = *(re::AssetHandle::blockUntilLoaded<re::IKRigAsset>(v3) + 32);
  re::AssetHandle::~AssetHandle(v3);
  return v1;
}

const char *REIkRigAssetGetDefinitionSourceTarget(uint64_t a1, unint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v6);
  v3 = re::AssetHandle::blockUntilLoaded<re::IKRigAsset>(v6);
  if (*(v3 + 80) <= a2)
  {
    v4 = "";
  }

  else
  {
    v4 = *(*(v3 + 88) + 16 * a2 + 8);
  }

  re::AssetHandle::~AssetHandle(v6);
  return v4;
}

const char *REIkRigAssetGetDefinitionOutputTarget(uint64_t a1, unint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v6);
  v3 = re::AssetHandle::blockUntilLoaded<re::IKRigAsset>(v6);
  if (*(v3 + 104) <= a2)
  {
    v4 = "";
  }

  else
  {
    v4 = *(*(v3 + 112) + 16 * a2 + 8);
  }

  re::AssetHandle::~AssetHandle(v6);
  return v4;
}

const char *REIkRigAssetGetDefinitionSolverName(uint64_t a1, unint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v6);
  v3 = re::AssetHandle::blockUntilLoaded<re::IKRigAsset>(v6);
  if (*(v3 + 32) <= a2)
  {
    v4 = "";
  }

  else
  {
    v4 = *(*(v3 + 40) + 16 * a2 + 8);
  }

  re::AssetHandle::~AssetHandle(v6);
  return v4;
}

uint64_t REIkRigAssetGetDefinitionSolverID(uint64_t a1, unint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v6);
  v3 = re::AssetHandle::blockUntilLoaded<re::IKRigAsset>(v6);
  if (*(v3 + 56) <= a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(*(v3 + 64) + 8 * a2);
  }

  re::AssetHandle::~AssetHandle(v6);
  return v4;
}

uint64_t REIkRigAssetGetDefinitionRig(uint64_t a1, unint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v6);
  v3 = re::AssetHandle::blockUntilLoaded<re::IKRigAsset>(v6);
  if (*(v3 + 128) <= a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(*(*(v3 + 136) + 8 * a2) + 24);
  }

  re::AssetHandle::~AssetHandle(v6);
  return v4;
}

void *re::Shareable<anonymous namespace::IkRigAssetBuilder>::~Shareable(void *a1)
{
  *a1 = &unk_1F5D2EDF8;
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::Shareable<anonymous namespace::IkRigAssetBuilder>::~Shareable(void *a1)
{
  *a1 = &unk_1F5D2EDF8;
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void anonymous namespace::IkRigAssetBuilder::~IkRigAssetBuilder(_anonymous_namespace_::IkRigAssetBuilder *this)
{
  *this = &unk_1F5D2EE40;
  v2 = this + 64;
  re::DynamicArray<unsigned long>::deinit(this + 224);
  re::DynamicArray<re::StringID>::deinit(this + 184);
  re::DynamicArray<re::StringID>::deinit(this + 144);
  re::DynamicArray<re::StringID>::deinit(this + 104);
  re::DynamicArray<re::DynamicString>::deinit(v2);
  v3 = *(this + 3);
  if (v3)
  {
    if (*(this + 7))
    {
      (*(*v3 + 40))(v3);
    }

    *(this + 7) = 0;
    *(this + 4) = 0;
    *(this + 5) = 0;
    *(this + 3) = 0;
    ++*(this + 12);
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<REIkRigAssetCreate::$_0,std::allocator<REIkRigAssetCreate::$_0>,void ()(re::IKRigAsset *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::IKRigAsset *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t *std::unique_ptr<re::IKRigAsset,std::function<void ()(re::IKRigAsset*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[4];
    v5 = v2;
    if (!v3)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      JUMPOUT(0x1E2F9C25CLL);
    }

    (*(*v3 + 48))(v3, &v5);
  }

  std::__function::__value_func<void ()(re::IKRigAsset *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<REIkRigAssetCreateForMultipleSolvers::$_0,std::allocator<REIkRigAssetCreateForMultipleSolvers::$_0>,void ()(re::IKRigAsset *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *REImageBasedLightComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

void *REImageBasedLightReceiverComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t REIBLComponentSetDiffuseTexture(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, &v6);
  v3 = *(a1 + 40);
  *(a1 + 40) = v6;
  v6 = v3;
  v4 = *(a1 + 56);
  *(a1 + 56) = v7;
  v7 = v4;
  re::AssetHandle::~AssetHandle(&v6);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REIBLComponentSetSpecularTexture(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, &v6);
  v3 = *(a1 + 64);
  *(a1 + 64) = v6;
  v6 = v3;
  v4 = *(a1 + 80);
  *(a1 + 80) = v7;
  v7 = v4;
  re::AssetHandle::~AssetHandle(&v6);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REImageBasedLightComponentSetMixColor(uint64_t this, __n128 a2)
{
  *(this + 1280) = a2;
  *(this + 1296) = 0;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REImageBasedLightComponentSetMixColorGamut(uint64_t this, char a2, __n128 a3)
{
  *(this + 1280) = a3;
  *(this + 1296) = a2;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

double REImageBasedLightComponentGetMixColor(uint64_t a1)
{
  v1 = *(a1 + 1288);
  v2 = *(a1 + 1296);
  v4 = *(a1 + 1280);
  v6 = v2;
  v5 = v1;
  return COERCE_DOUBLE(re::ColorGamut3F::as(&v4, 0, 1));
}

__n128 REImageBasedLightComponentGetMixColorGamut(uint64_t a1, __n128 *a2, _BYTE *a3, __n128 a4)
{
  v4 = *(a1 + 1296);
  a4.n128_u64[0] = *(a1 + 1280);
  a4.n128_u32[2] = *(a1 + 1288);
  *a2 = a4;
  *a3 = v4;
  result.n128_f64[0] = a4.n128_f64[0];
  result.n128_f32[2] = a4.n128_f32[2];
  return result;
}

uint64_t REImageBasedLightComponentSetWPCStrength(uint64_t this, float a2)
{
  v2 = fmaxf(a2, 0.0);
  if (v2 > 1.0)
  {
    v2 = 1.0;
  }

  *(this + 1204) = v2;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REImageBasedLightComponentSetIBLNullable(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, &v6);
  v3 = *(a1 + 88);
  *(a1 + 88) = v6;
  v6 = v3;
  v4 = *(a1 + 104);
  *(a1 + 104) = v7;
  v7 = v4;
  re::AssetHandle::~AssetHandle(&v6);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REImageBasedLightComponentSetIBLBlendNullable(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, &v6);
  v3 = *(a1 + 112);
  *(a1 + 112) = v6;
  v6 = v3;
  v4 = *(a1 + 128);
  *(a1 + 128) = v7;
  v7 = v4;
  re::AssetHandle::~AssetHandle(&v6);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REImageBasedLightComponentSetBlendIBLRotation(uint64_t this, float32x4_t a2, double a3, __n128 a4, __n128 a5)
{
  v5 = (a2.f32[0] + a2.f32[0]) * a2.f32[0];
  v6 = vmuls_lane_f32(a2.f32[1] + a2.f32[1], *a2.f32, 1);
  v7 = vmuls_lane_f32(a2.f32[2] + a2.f32[2], a2, 2);
  v8 = vmuls_lane_f32(a2.f32[0] + a2.f32[0], *a2.f32, 1);
  v9 = vmuls_lane_f32(a2.f32[0] + a2.f32[0], a2, 2);
  v10 = vmuls_lane_f32(a2.f32[1] + a2.f32[1], a2, 2);
  v11 = vmuls_lane_f32(a2.f32[0] + a2.f32[0], a2, 3);
  a4.n128_f32[0] = vmuls_lane_f32(a2.f32[1] + a2.f32[1], a2, 3);
  a2.f32[0] = vmuls_lane_f32(a2.f32[2] + a2.f32[2], a2, 3);
  a5.n128_f32[0] = 1.0 - (v6 + v7);
  a5.n128_f32[1] = v8 + a2.f32[0];
  a5.n128_f32[2] = v9 - a4.n128_f32[0];
  a2.f32[0] = v8 - a2.f32[0];
  a2.f32[1] = 1.0 - (v5 + v7);
  a2.f32[2] = v10 + v11;
  a4.n128_f32[0] = v9 + a4.n128_f32[0];
  a4.n128_f32[1] = v10 - v11;
  a4.n128_f32[2] = 1.0 - (v5 + v6);
  *(this + 1216) = a5;
  *(this + 1232) = a2;
  *(this + 1248) = a4;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REImageBasedLightReceiverComponentSetIBLEntity(uint64_t a1, uint64_t a2)
{
  re::ecs2::EntityHandle::operator=((a1 + 32), a2);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REIBLAssetGetSkyboxTexture(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  if (*(v4[1] + 328) == 1)
  {
    v1 = re::AssetHandle::maybeUnregisteredMemoryAsset<re::ImageBasedLightAsset>(v4);
    if (!v1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v1 = re::AssetHandle::blockUntilLoaded<re::ImageBasedLightAsset>(v4);
    if (!v1)
    {
LABEL_7:
      v2 = 0;
      goto LABEL_8;
    }
  }

  if (!v1[1])
  {
    goto LABEL_7;
  }

  v2 = *v1;
LABEL_8:
  re::AssetHandle::~AssetHandle(v4);
  return v2;
}

uint64_t re::AssetHandle::maybeUnregisteredMemoryAsset<re::ImageBasedLightAsset>(re::ImageBasedLightAsset *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 1) + 328) == 1)
  {
    v2 = re::ImageBasedLightAsset::assetType(a1);
    result = re::AssetHandle::assetWithTypeRaw(a1, v2, 1);
    if (result)
    {
      return result;
    }

    v4 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = re::AssetHandle::assetInfo(a1);
      if (v6[17])
      {
        v7 = v6[18];
      }

      else
      {
        v7 = v6 + 137;
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v8, 0xCu);
    }
  }

  return 0;
}

uint64_t REIBLAssetGetDiffuseTexture(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  if (*(v4[1] + 328) == 1)
  {
    v1 = re::AssetHandle::maybeUnregisteredMemoryAsset<re::ImageBasedLightAsset>(v4);
    if (!v1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v1 = re::AssetHandle::blockUntilLoaded<re::ImageBasedLightAsset>(v4);
    if (!v1)
    {
LABEL_7:
      v2 = 0;
      goto LABEL_8;
    }
  }

  if (!*(v1 + 32))
  {
    goto LABEL_7;
  }

  v2 = *(v1 + 24);
LABEL_8:
  re::AssetHandle::~AssetHandle(v4);
  return v2;
}

uint64_t REIBLAssetGetSpecularTexture(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  if (*(v4[1] + 328) == 1)
  {
    v1 = re::AssetHandle::maybeUnregisteredMemoryAsset<re::ImageBasedLightAsset>(v4);
    if (!v1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v1 = re::AssetHandle::blockUntilLoaded<re::ImageBasedLightAsset>(v4);
    if (!v1)
    {
LABEL_7:
      v2 = 0;
      goto LABEL_8;
    }
  }

  if (!*(v1 + 80))
  {
    goto LABEL_7;
  }

  v2 = *(v1 + 72);
LABEL_8:
  re::AssetHandle::~AssetHandle(v4);
  return v2;
}

id REAssetManagerIBLMemoryAssetCreateWithMTLTexture(re::StringID **a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = re::ServiceLocator::serviceOrNull<re::RenderManager>(a1[248]);
  v50 = 0;
  memset(v51, 0, 24);
  v52 = 0u;
  memset(v53, 0, 28);
  v54 = 0;
  v55 = 0;
  if (v11 && (v12 = *(v11 + 20)) != 0 && (v13 = *v12 - 1, v13 <= 2))
  {
    v14 = qword_1E87231E0[v13];
  }

  else
  {
    v14 = MEMORY[0x1E695F108];
  }

  *(&v52 + 1) = *v14;
  v15 = v8;
  v40 = v8;
  v41 = 0;
  re::TextureImportData::ImportReport::SourceInfo::setFromTexture(v51, &v40);
  if (v41 != -1)
  {
    v16 = (off_1F5D2EF88[v41])(&v38, &v40);
  }

  v41 = -1;
  if (v8)
  {
  }

  v17 = re::globalAllocators(v16);
  v18 = (*(*v17[2] + 32))(v17[2], 128, 8);
  *(v18 + 96) = 0u;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *(v18 + 64) = 0u;
  *(v18 + 80) = 0u;
  *(v18 + 112) = 0u;
  re::DynamicString::setCapacity((v18 + 96), 0);
  v19 = v8;
  v38 = v8;
  v39 = 0;
  re::TextureImportData::TextureImportData(&v40, &v38, &v50);
  if (v39 != -1)
  {
    (off_1F5D2EF88[v39])(v56, &v38);
  }

  v39 = -1;
  if (v8)
  {
  }

  if (v41)
  {
    if (v41 != 1 || *(v40 + 6) && *(v40 + 3))
    {
      goto LABEL_60;
    }
  }

  else if (v40)
  {
    v4 = [v40 isShareable];
    TextureAsset = re::TextureAsset::makeTextureAsset(&v40, v42, 4, 0);
    v21 = re::TextureAsset::assetType(TextureAsset);
    (*(*a1 + 53))(&v38, a1, TextureAsset, v21, 0, 0, 0);
    re::AssetHandle::operator=(v18, &v38);
    re::AssetHandle::~AssetHandle(&v38);
    v22 = 1;
    goto LABEL_22;
  }

  v22 = 0;
  v4 = 1;
LABEL_22:
  if (v45)
  {
    if (v49)
    {
      (*(*v45 + 40))();
    }

    v49 = 0;
    v46 = 0;
    v47 = 0;
    v45 = 0;
    ++v48;
  }

  if (v43)
  {

    v43 = 0;
  }

  if (v41 != -1)
  {
    (off_1F5D2EF88[v41])(&v38, &v40);
  }

  if (!v22)
  {
    goto LABEL_86;
  }

  v23 = v9;
  v38 = v9;
  v39 = 0;
  re::TextureImportData::TextureImportData(&v40, &v38, &v50);
  if (v39 != -1)
  {
    (off_1F5D2EF88[v39])(v56, &v38);
  }

  v39 = -1;
  if (v9)
  {
  }

  if (v41)
  {
    if (v41 != 1 || *(v40 + 6) && *(v40 + 3))
    {
LABEL_60:
      std::__throw_bad_variant_access[abi:nn200100]();
      goto LABEL_61;
    }
  }

  else if (v40)
  {
    v4 &= [v40 isShareable];
    v24 = re::TextureAsset::makeTextureAsset(&v40, v42, 4, 0);
    v25 = re::TextureAsset::assetType(v24);
    (*(*a1 + 53))(&v38, a1, v24, v25, 0, 0, 0);
    re::AssetHandle::operator=(v18 + 24, &v38);
    re::AssetHandle::~AssetHandle(&v38);
    v26 = 1;
    goto LABEL_43;
  }

  v26 = 0;
LABEL_43:
  if (v45)
  {
    if (v49)
    {
      (*(*v45 + 40))();
    }

    v49 = 0;
    v46 = 0;
    v47 = 0;
    v45 = 0;
    ++v48;
  }

  if (v43)
  {

    v43 = 0;
  }

  if (v41 != -1)
  {
    (off_1F5D2EF88[v41])(&v38, &v40);
  }

  if (!v26)
  {
    goto LABEL_86;
  }

  v27 = v10;
  v38 = v10;
  v39 = 0;
  re::TextureImportData::TextureImportData(&v40, &v38, &v50);
  if (v39 != -1)
  {
    (off_1F5D2EF88[v39])(v56, &v38);
  }

  v39 = -1;
  if (v10)
  {
  }

  if (v41)
  {
    if (v41 == 1 && (!*(v40 + 6) || !*(v40 + 3)))
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

LABEL_61:
  if (v40)
  {
    LOBYTE(v4) = [v40 isShareable] & v4;
    v28 = re::TextureAsset::makeTextureAsset(&v40, v42, 4, 0);
    v29 = re::TextureAsset::assetType(v28);
    (*(*a1 + 53))(&v38, a1, v28, v29, 0, 0, 0);
    re::AssetHandle::operator=(v18 + 72, &v38);
    re::AssetHandle::~AssetHandle(&v38);
    v30 = 1;
    goto LABEL_64;
  }

LABEL_63:
  v30 = 0;
LABEL_64:
  if (v45)
  {
    if (v49)
    {
      (*(*v45 + 40))();
    }

    v49 = 0;
    v46 = 0;
    v47 = 0;
    v45 = 0;
    ++v48;
  }

  if (v43)
  {

    v43 = 0;
  }

  if (v41 != -1)
  {
    (off_1F5D2EF88[v41])(&v38, &v40);
  }

  if (!v30)
  {
LABEL_86:
    v35 = 0;
    goto LABEL_87;
  }

  CStringPtr = CFStringGetCStringPtr(*(&v52 + 1), 0x8000100u);
  re::DynamicString::operator=((v18 + 96), &v40);
  v32 = v40;
  if (v40 && (v41 & 1) != 0)
  {
    v32 = (*(*v40 + 40))();
  }

  v33 = re::ImageBasedLightAsset::assetType(v32);
  (*(*a1 + 53))(&v40, a1, v18, v33, 0, 0, 0);
  if ((v4 & 1) == 0 && *(a1 + 2176) == 1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v34 = CoreRELog::log;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v38) = 0;
      _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_DEFAULT, "REAssetManagerIBLMemoryAssetCreateWithMTLTexture: should create all textures as shared textures for efficiency", &v38, 2u);
    }
  }

  v35 = v40;
  if (v40)
  {
    v36 = v40 + 8;
  }

  re::AssetHandle::~AssetHandle(&v40);
LABEL_87:
  if (v53[0])
  {
    if (v54)
    {
      (*(*v53[0] + 40))();
    }

    v54 = 0;
    memset(v53, 0, 24);
    ++LODWORD(v53[3]);
  }

  if (v52)
  {
  }

  return v35;
}

void *RESelectableSceneContentIdentifierGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::SelectableSceneContentIdentifierComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

uint64_t RESelectableSceneContentIdentifierComponentGetIdentifier(uint64_t result)
{
  if (result)
  {
    return *(result + 28);
  }

  return result;
}

uint64_t RESelectableSceneContentIdentifierComponentSetIdentifier(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 28) = a2;
  }

  return result;
}

void *REMeshPartInstancesComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

id REMeshPartInstancesComponentGetBufferAtIndex(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 48) <= a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(*(a1 + 64) + 8 * a2);
  }

  return v3;
}

void REMeshPartInstancesComponentSetBufferAtIndex(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  for (i = *(a1 + 48); i <= a2; i = *(a1 + 48))
  {
    v8 = *(a1 + 40);
    if (i >= v8)
    {
      v9 = i + 1;
      if (v8 < i + 1)
      {
        if (*(a1 + 32))
        {
          v10 = 2 * v8;
          if (!v8)
          {
            v10 = 8;
          }

          if (v10 <= v9)
          {
            v11 = v9;
          }

          else
          {
            v11 = v10;
          }

          v5 = re::DynamicArray<re::ObjCObject>::setCapacity((a1 + 32), v11);
        }

        else
        {
          v5 = re::DynamicArray<re::ObjCObject>::setCapacity((a1 + 32), v9);
          ++*(a1 + 56);
        }
      }

      i = *(a1 + 48);
    }

    *(*(a1 + 64) + 8 * i) = 0;
    *(a1 + 48) = i + 1;
    ++*(a1 + 56);
  }

  v12 = *(a1 + 64);
  v13 = *(v12 + 8 * a2);
  *(v12 + 8 * a2) = v6;
  v14 = v6;

  re::ecs2::EntityComponentCollection::getOrAdd((*(a1 + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
}

void RENetSessionDefaultConfiguration(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
}

uint64_t RENetSessionObserverCreate(uint64_t *a1)
{
  v2 = RESyncNetSessionObserverCreate();
  RENetSessionObserverOnStart(v2, *a1);
  RENetSessionObserverOnStop(v2, a1[1]);
  RENetSessionObserverOnReceiveUserData(v2, a1[4]);
  RENetSessionObserverOnParticipantJoin(v2, a1[2]);
  RENetSessionObserverOnParticipantLeave(v2, a1[3]);
  return v2;
}

uint64_t RENetSessionObserverOnStart(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return RESyncNetSessionObserverOnStart();
  }

  return v2;
}

uint64_t RENetSessionObserverOnStop(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return RESyncNetSessionObserverOnStop();
  }

  return v2;
}

uint64_t RENetSessionObserverOnReceiveUserData(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return RESyncNetSessionObserverOnReceiveUserData();
  }

  return v2;
}

uint64_t RENetSessionObserverOnParticipantJoin(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return RESyncNetSessionObserverOnParticipantJoin();
  }

  return v2;
}

uint64_t RENetSessionObserverOnParticipantLeave(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return RESyncNetSessionObserverOnParticipantLeave();
  }

  return v2;
}

uint64_t RENetSessionObserverOnReceiveData(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return RESyncNetSessionObserverOnReceiveData();
  }

  return v3;
}

uint64_t RENetSessionObserverOnLeaderChanged(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return RESyncNetSessionObserverOnLeaderChanged();
  }

  return v2;
}

uint64_t RENetSessionObserverOnConnectionConnected(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return RESyncNetSessionObserverOnConnectionConnected();
  }

  return v2;
}

uint64_t RENetSessionObserverOnConnectionDisconnected(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return RESyncNetSessionObserverOnConnectionDisconnected();
  }

  return v2;
}

double RENetSessionLastStatsAggregated@<D0>(uint64_t a1@<X8>)
{
  RESyncNetSessionLastStatsAggregated();
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = 0uLL;
  return result;
}

double RENetSessionAveragedStatsAggregated@<D0>(uint64_t a1@<X8>)
{
  RESyncNetSessionAveragedStatsAggregated();
  *a1 = 0uLL;
  result = 0.0;
  *(a1 + 16) = 0;
  return result;
}

void *RENetParticipantGetUserContext@<X0>(uint64_t a1@<X8>)
{
  result = RESyncParticipantGetUserContext();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t RENetSessionConfigurationSetAllowLeaderMigration(uint64_t a1, int a2)
{
  if (a2)
  {
    RESyncLeaderElectionCreateLowestPeerID();
    RESyncNetSessionConfigurationSetLeaderElection();

    return RESyncRelease();
  }

  else
  {

    return RESyncNetSessionConfigurationSetLeaderElection();
  }
}

uint64_t RENetSessionConfigurationSetLeaderElectionPolicy(uint64_t a1, re::RENetLeaderElectionConsensus **a2)
{
  if (a2 == 1)
  {
    RESyncLeaderElectionCreateLowestPeerID();
    goto LABEL_5;
  }

  if (a2 == 2)
  {
    re::RENetLeaderElectionConsensus::create(0, a2);
LABEL_5:
    RESyncNetSessionConfigurationSetLeaderElection();

    return RESyncRelease();
  }

  return RESyncNetSessionConfigurationSetLeaderElection();
}

void introspect_RENetCompatibilityTokenVersion(BOOL a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1C4D38, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1C4D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C4D40))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1C4D80, "RENetCompatibilityTokenVersion", 1, 1, 1, 1);
      qword_1EE1C4D80 = &unk_1F5D0C658;
      qword_1EE1C4DC0 = &introspect_RENetCompatibilityTokenVersion(BOOL)::enumTable;
      dword_1EE1C4D90 = 9;
      __cxa_guard_release(&qword_1EE1C4D40);
    }

    if (_MergedGlobals_593)
    {
      break;
    }

    _MergedGlobals_593 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1C4D80, a2);
    v31 = 0x2734E6B19552CDCALL;
    v32 = "RENetCompatibilityTokenVersion";
    v35 = 0x31CD534126;
    v36 = "uint8_t";
    v4 = v34[0];
    v5 = v34[1];
    if (v35)
    {
      if (v35)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1C4DC0;
      v35 = v4;
      v36 = v5;
      re::TypeBuilder::beginEnumType(v34, &v31, 1, 1, &v35);
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
            *&v33.var0 = 2 * v11;
            v33.var1 = v10;
            re::TypeBuilder::addEnumConstant(v34, v15, &v33);
            if (*&v33.var0)
            {
              if (*&v33.var0)
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
              *&v33.var0 = 2 * v20;
              v33.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v34, v24, &v33);
              if (*&v33.var0)
              {
                if (*&v33.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v34, v26);
      xmmword_1EE1C4DA0 = v33;
      if (v31)
      {
        if (v31)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v32);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v30);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1C4D38))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 1;
      *(v29 + 16) = "Version1";
      qword_1EE1C4D30 = v29;
      __cxa_guard_release(&qword_1EE1C4D38);
    }
  }
}

void *allocInfo_RENetCompatibilityToken(void)
{
  if ((atomic_load_explicit(&qword_1EE1C4D48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C4D48))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C4DC8, "RENetCompatibilityToken");
    __cxa_guard_release(&qword_1EE1C4D48);
  }

  return &unk_1EE1C4DC8;
}

void initInfo_RENetCompatibilityToken(re::IntrospectionBase *a1)
{
  v12[0] = 0xB1AFC2F05AA56CE6;
  v12[1] = "RENetCompatibilityToken";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(a1 + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE1C4D50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C4D50))
  {
    v4 = re::introspectionAllocator();
    introspect_RENetCompatibilityTokenVersion(v4, v5);
    v6 = (*(*v4 + 32))(v4, 72, 8);
    *v6 = 1;
    *(v6 + 8) = "version";
    *(v6 + 16) = &qword_1EE1C4D80;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0x1800000001;
    *(v6 + 40) = 0;
    *(v6 + 48) = 0;
    *(v6 + 56) = 0;
    *(v6 + 64) = 0;
    qword_1EE1C4D70 = v6;
    v7 = re::introspectionAllocator();
    v9 = re::introspect_uint32_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "sessionProtocolVersion";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x1C00000002;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1C4D78 = v10;
    __cxa_guard_release(&qword_1EE1C4D50);
  }

  *(a1 + 2) = 0x2000000008;
  *(a1 + 6) = 8;
  *(a1 + 14) = 0;
  *(a1 + 14) = 2;
  *(a1 + 8) = &qword_1EE1C4D70;
  *(a1 + 9) = re::internal::defaultConstruct<RENetCompatibilityToken>;
  *(a1 + 10) = re::internal::defaultDestruct<RENetCompatibilityToken>;
  *(a1 + 11) = re::internal::defaultRetain<RENetCompatibilityToken>(void)::{lambda(void *)#1}::__invoke;
  *(a1 + 12) = re::internal::defaultRelease<RENetCompatibilityToken>(void)::{lambda(void *)#1}::__invoke;
  *(a1 + 13) = re::internal::defaultConstructV2<RENetCompatibilityToken>;
  *(a1 + 14) = re::internal::defaultDestructV2<RENetCompatibilityToken>;
  *(a1 + 15) = 0;
  *(a1 + 16) = 0;
  *(a1 + 17) = 0;
  re::internal::prepare(a1, v3);
  v11 = v13;
}

void re::internal::defaultConstruct<RENetCompatibilityToken>(_anonymous_namespace_ *a1, uint64_t a2, ArcSharedObject *a3)
{
  *a3 = 0u;
  *(a3 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a3, 0);
  *a3 = &unk_1F5D2EFA8;
}

void re::internal::defaultConstructV2<RENetCompatibilityToken>(_anonymous_namespace_ *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5D2EFA8;
}

void RENetCompatibilityCreateLocalToken(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 32, 8);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *v2 = &unk_1F5D2EFA8;
  *(v2 + 24) = 1;
  *(v2 + 28) = 7;
}

re *RENetCompatibilityCreateDataFromToken(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_1EE1C4D68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C4D68))
  {
    qword_1EE1C4D60 = re::internal::getOrCreateInfo("RENetCompatibilityToken", allocInfo_RENetCompatibilityToken, initInfo_RENetCompatibilityToken, &unk_1EE1C4D58, 0);
    __cxa_guard_release(&qword_1EE1C4D68);
  }

  v13 = *(qword_1EE1C4D60 + 32);
  re::IntrospectionSharedLock::IntrospectionSharedLock(&v12);
  re::TypeRegistry::typeInfo(v13, &v13, v7);
  re::TypeInfo::TypeInfo(v11, &v8);
  Mutable = CFDataCreateMutable(0, 256);
  v3 = re::globalAllocators(Mutable);
  serializeJSON(a1, v11, v11, v3[2], 0, Mutable, 0, v7);
  if ((v7[0] & 1) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (os_log_type_enabled(CoreRELog::log, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Failed to serialize RENetCompatibilityToken.", v6, 2u);
    }

    RESyncRelease();
    if (v7[0] & 1) == 0 && v9 && (v10)
    {
      (*(*v9 + 40))();
    }

    Mutable = 0;
  }

  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v12);
  return Mutable;
}

uint64_t RENetCompatibilityCreateTokenFromData(const __CFData *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1C4D68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C4D68))
  {
    qword_1EE1C4D60 = re::internal::getOrCreateInfo("RENetCompatibilityToken", allocInfo_RENetCompatibilityToken, initInfo_RENetCompatibilityToken, &unk_1EE1C4D58, 0);
    __cxa_guard_release(&qword_1EE1C4D68);
  }

  v13 = *(qword_1EE1C4D60 + 32);
  re::IntrospectionSharedLock::IntrospectionSharedLock(&v12);
  re::TypeRegistry::typeInfo(v13, &v13, buf);
  v2 = re::TypeInfo::TypeInfo(v11, &v15[4]);
  v3 = re::globalAllocators(v2);
  deserializeJSON(buf, a1, v11, v11, v3[2], 0);
  if (buf[0])
  {
    v4 = *&v15[4];
  }

  else
  {
    v8 = v16;
    v9 = v17;
    v10 = v18;
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(CoreRELog::log, OS_LOG_TYPE_DEFAULT))
    {
      if (BYTE8(v8))
      {
        v6 = v9;
      }

      else
      {
        v6 = &v8 + 9;
      }

      *buf = 136315138;
      *v15 = v6;
      _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "Failed to deserialize RENetCompatibilityToken. Message: %s", buf, 0xCu);
    }

    if (v8 && (BYTE8(v8) & 1) != 0)
    {
      (*(*v8 + 40))();
    }

    v4 = 0;
  }

  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v12);
  return v4;
}

void RENetCompatibilityToken::~RENetCompatibilityToken(RENetCompatibilityToken *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t REFrameAnalysisServiceGetBottleneck(uint64_t a1, unint64_t a2)
{
  v3 = (*(*a1 + 96))(a1);
  if (v4 <= a2)
  {
    return 0;
  }

  else
  {
    return *(v3 + a2);
  }
}

uint64_t REFrameAnalysisServiceHasModifiedRenderData(uint64_t a1)
{
  v2 = (*(*a1 + 32))(a1);
  v3 = re::ServiceLocator::serviceOrNull<re::ecs2::ECSService>(v2);
  if (v3)
  {
    (*(*v3 + 248))(v3);
  }

  v4 = *(*a1 + 64);

  return v4(a1);
}

uint64_t REFrameAnalysisServiceGetModifiedRenderDataSummary(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 88))(a1);
  v4 = *(a2 + 16);

  return v4(a2, v3);
}

void *REPreviewSupportGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::PreviewSupportComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

double RETextureDrawableQueueDescriptorCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 48, 8);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v2 + 24) = 0;
  *v2 = &unk_1F5D2F048;
  *(v2 + 32) = 0;
  *&result = 0xFFFFLL;
  *(v2 + 40) = 0xFFFFLL;
  return result;
}

uint64_t RETextureDrawableQueueDescriptorSetMipMapMode(uint64_t result, int a2)
{
  *(result + 44) = a2 != 2;
  if (a2)
  {
    v2 = a2 == 3;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  *(result + 45) = v3;
  return result;
}

uint64_t RETextureDrawableQueueCreateWithDescriptor(uint64_t a1, uint64_t a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 448, 8);
  v7 = *(a1 + 24);
  v8 = *(a1 + 40);
  *v5 = &unk_1F5D2F090;
  return result;
}

__n128 REDrawableQueueGetEyeTransform(uint64_t a1, int a2)
{
  v2 = atomic_load((*(*(a1 + 432) + 32) + 12));
  v3 = *(*(a1 + 432) + 32) + (v2 << 7);
  v4 = a2 & 1;
  if (a2 < 0)
  {
    v4 = -v4;
  }

  return *(v3 + (v4 << 6) + 80);
}

uint64_t RETextureDrawableQueueCreateNextDrawable(uint64_t a1, uint64_t a2, BOOL a3)
{
  v5[0] = 0;
  result = re::DrawableQueue::nextDrawable(a1, v5, a3);
  if (result)
  {
    re::make::shared::object<REDrawable,re::Drawable &>(&v4, result);
    return v4;
  }

  return result;
}

uint64_t RETextureDrawableQueueCreateNextDrawableWithTimeout(uint64_t a1, float a2, uint64_t a3, BOOL a4)
{
  v6[0] = 1;
  v7 = a2;
  result = re::DrawableQueue::nextDrawable(a1, v6, a4);
  if (result)
  {
    re::make::shared::object<REDrawable,re::Drawable &>(&v5, result);
    return v5;
  }

  return result;
}

uint64_t RETextureDrawableQueueCreateNextDrawableWithTimeoutAndPollingInterval(uint64_t a1, float a2, uint64_t a3, BOOL a4)
{
  v6[0] = 1;
  v7 = a2;
  result = re::DrawableQueue::nextDrawable(a1, v6, a4);
  if (result)
  {
    re::make::shared::object<REDrawable,re::Drawable &>(&v5, result);
    return v5;
  }

  return result;
}

void RETextureAssetReplaceDrawableQueue(re::TextureAsset *a1, uint64_t a2, uint64_t a3)
{
  v6 = re::TextureAsset::assetType(a1);
  v7 = *(a3 + 1808);
  v21 = v6;
  v8 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v7, &v21);
  (*(**v8 + 128))(*v8);
  v9 = *v8;
  re::AssetAPIHelper::assetHandleCreate(a1, &v18);
  re::AssetHandle::loadNow(v19, 0);
  if (!v19)
  {
    goto LABEL_36;
  }

  v10 = atomic_load(v19 + 224);
  if (v10 != 2)
  {
    goto LABEL_36;
  }

  ++*(v19 + 69);
  v11 = re::AssetHandle::loadedAsset<re::TextureAsset>(&v18);
  if (!v11)
  {
    goto LABEL_36;
  }

  v12 = v11;
  if (*(v11 + 72))
  {
    if (a2)
    {
      v13 = re::AssetHandle::assetInfo(&v18);
      LODWORD(v21) = *v13;
      re::DynamicString::DynamicString(v22, (v13 + 2));
      re::DynamicString::DynamicString(v23, (v13 + 10));
      v14 = v13[22];
      v15 = *(v13 + 10);
      v23[4] = *(v13 + 9);
      v23[5] = v15;
      v24 = v14;
      re::DynamicString::DynamicString(v25, (v13 + 24));
      re::DynamicString::DynamicString(v26, (v13 + 32));
      re::DynamicString::DynamicString(v27, (v13 + 40));
      re::DynamicString::DynamicString(v28, (v13 + 48));
      re::TextureAssetLoader::setDirectTextureForTextureAsset(v9, v12, 0, &v21);
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

      if (v22[0])
      {
        if (v22[1])
        {
          (*(*v22[0] + 40))();
        }

        memset(v22, 0, sizeof(v22));
      }

      goto LABEL_31;
    }

LABEL_32:
    v20 = a2;
    re::TextureAssetLoader::setDrawableQueueForTextureAsset(v9, v11, &v20);
    goto LABEL_33;
  }

  if (!a2)
  {
    goto LABEL_32;
  }

LABEL_31:
  v16 = (a2 + 8);
  v20 = a2;
  re::TextureAssetLoader::setDrawableQueueForTextureAsset(v9, v12, &v20);

LABEL_33:
  v17 = *(*(v12 + 56) + 400);
  if (v17)
  {
    re::AssetHandle::operator=(v17 + 32, &v18);
  }

  re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v19);
  re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v19);
LABEL_36:
  re::AssetHandle::payloadDidChangeIfPossible(&v18);
  re::AssetHandle::~AssetHandle(&v18);
}

void RETextureAssetRemoveDrawableQueue(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v10);
  if (v11)
  {
    v2 = atomic_load(v11 + 224);
    if (v2 == 2)
    {
      v3 = *(v11 + 3);
      v4 = re::TextureAsset::assetType(v1);
      v5 = *(v3 + 1808);
      v12 = v4;
      v6 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v5, &v12);
      (*(**v6 + 128))(*v6);
      if (v11)
      {
        v7 = *v6;
        v8 = atomic_load(v11 + 224);
        if (v8 == 2)
        {
          ++*(v11 + 69);
          v9 = re::AssetHandle::loadedAsset<re::TextureAsset>(&v10);
          if (v9)
          {
            v12 = 0;
            re::TextureAssetLoader::setDrawableQueueForTextureAsset(v7, v9, &v12);
            re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v11);
            re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v11);
          }
        }
      }

      re::AssetHandle::payloadDidChangeIfPossible(&v10);
    }
  }

  re::AssetHandle::~AssetHandle(&v10);
}

id REDrawableGetTexture(uint64_t a1)
{
  v1 = *(*(a1 + 24) + 16);

  return v1;
}

void REDrawablePresent(uint64_t a1)
{
  v1 = *(a1 + 24);
  re::DrawableQueue::checkAndGenerateMipmapsSynchronous(*v1, v1);
  v2 = *v1;
  v3 = *(*v1 + 47);

  re::DrawableQueue::present(v2, v1, v3);
}

void REDrawablePresentWithNextUpdate(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *v1;
  re::DrawableQueue::checkAndGenerateMipmapsSynchronous(*v1, v1);

  re::DrawableQueue::present(v2, v1, 1);
}

void REDrawablePresentWithCommandBuffer(uint64_t a1, void *a2)
{
  v16[5] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 24);
  if (*(*v5 + 47) == 1)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "REDrawablePresentWithCommandBuffer was called on a drawable queue with update synchronized presention! Please use REDrawablePresent instead. Skipping.", buf, 2u);
    }

    goto LABEL_12;
  }

  v7 = v3;
  *buf = v7;
  if (!v7)
  {
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) CommandBuffer is not initialized!", "commandBuffer.isValid()", "REDrawablePresentWithCommandBuffer", 266);
    _os_crash("assertion failure: (commandBuffer.isValid()) CommandBuffer is not initialized!");
    __break(1u);
LABEL_14:
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) Command buffer was committed before calling present() on the drawable", "status < mtl::CommandBufferStatus::kCommitted", "REDrawablePresentWithCommandBuffer", 269);
    _os_crash("assertion failure: (status < mtl::CommandBufferStatus::kCommitted) Command buffer was committed before calling present() on the drawable");
    __break(1u);
  }

  v9 = v7;
  if ([v7 status] >= 2)
  {
    goto LABEL_14;
  }

  v11 = (a1 + 8);
  v12 = *v5;
  if (*(v12 + 45) == 1)
  {
    v14 = v9;
    re::DrawableQueue::encodeMipmapsGenerationJob(v12, &v14, *(a1 + 24));
  }

  v13 = re::globalAllocators(v11)[2];
  v16[0] = &unk_1F5D2EFF0;
  v16[1] = a1;
  v16[3] = v13;
  v16[4] = v16;
  re::mtl::CommandBuffer::addCompletionHandler(buf, v16);
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v16);

LABEL_12:
}

void re::internal::Callable<REDrawablePresentWithCommandBuffer::$_0,void ()(re::mtl::CommandBuffer const&)>::operator()(uint64_t a1, id *a2)
{
  v3 = *a2;
  re::DrawableQueue::present(**(*(a1 + 8) + 24), *(*(a1 + 8) + 24), *(**(*(a1 + 8) + 24) + 47));
}

void *re::internal::Callable<REDrawablePresentWithCommandBuffer::$_0,void ()(re::mtl::CommandBuffer const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D2EFF0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<REDrawablePresentWithCommandBuffer::$_0,void ()(re::mtl::CommandBuffer const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D2EFF0;
  a2[1] = v2;
  return a2;
}

void REDrawableQueueDescriptor::~REDrawableQueueDescriptor(REDrawableQueueDescriptor *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void REDrawableQueue::~REDrawableQueue(REDrawableQueue *this)
{
  re::DrawableQueue::~DrawableQueue(this);

  JUMPOUT(0x1E6906520);
}

void re::make::shared::object<REDrawable,re::Drawable &>(re *a1, uint64_t a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 32, 8);
  ArcSharedObject::ArcSharedObject(v5, 0);
  *(v5 + 3) = a2;
  *v5 = &unk_1F5D2F0D8;
  *a1 = v5;
}

void REDrawable::~REDrawable(re::Drawable **this)
{
  *this = &unk_1F5D2F0D8;
  re::Drawable::reclaimFromClient(this[3]);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

{
  *this = &unk_1F5D2F0D8;
  re::Drawable::reclaimFromClient(this[3]);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);

  JUMPOUT(0x1E6906520);
}

void *REDebugMeshComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::DebugMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

uint64_t REDebugMeshComponentSetShaderDebugMode(uint64_t a1, const char *a2)
{
  re::DynamicString::operator=((a1 + 32), &v5);
  if (v5 && (v6 & 1) != 0)
  {
    (*(*v5 + 40))();
  }

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REDebugMeshComponentGetShaderDebugMode(uint64_t a1)
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

uint64_t REDebugMeshComponentReset(uint64_t this)
{
  if (*(this + 40))
  {
    *(this + 40) = 1;
    v1 = *(this + 48);
  }

  else
  {
    *(this + 40) = 0;
    v1 = (this + 41);
  }

  *v1 = 0;
  return re::ecs2::Component::enqueueMarkDirty(this);
}

re::ecs2::Entity *RESceneAddDebugMeshComponent(re::ecs2::ComponentHelper *a1)
{
  result = re::ecs2::ComponentHelper::privateSceneDataEntity(a1, 1);
  v2 = re::ecs2::ComponentImpl<re::ecs2::DebugMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v3 = *(result + 49);
  if (!*(result + 49))
  {
    goto LABEL_7;
  }

  v4 = (re::ecs2::ComponentImpl<re::ecs2::DebugMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 16);
  v5 = *(result + 13);
  v6 = vld1q_dup_s16(v4);
  v7 = 1;
  while (1)
  {
    v8 = vandq_s8(vceqq_s16(v6, *v5), xmmword_1E306AC00);
    v8.i16[0] = vmaxvq_u16(v8);
    if (v8.i32[0])
    {
      break;
    }

    v7 -= 8;
    ++v5;
    if (!--v3)
    {
      goto LABEL_7;
    }
  }

  if (v8.u16[0] - v7 >= *(result + 48))
  {
LABEL_7:
    v9 = (result + 48);

    return re::ecs2::EntityComponentCollection::add(v9, v2);
  }

  return result;
}

void RESceneRemoveDebugMeshComponent(re::ecs2::ComponentHelper *a1)
{
  v1 = re::ecs2::ComponentHelper::privateSceneDataEntity(a1, 0);
  if (v1)
  {
    v2 = re::ecs2::ComponentImpl<re::ecs2::DebugMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    v3 = (v1 + 48);

    re::ecs2::EntityComponentCollection::remove(v3, v2);
  }
}

uint64_t RESceneSetShaderDebugMode(re::ecs2::ComponentHelper *a1, const char *a2)
{
  v3 = re::ecs2::ComponentHelper::privateSceneDataEntity(a1, 1);
  v4 = re::ecs2::EntityComponentCollection::getOrAdd((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::DebugMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::DynamicString::operator=((v4 + 32), &v6);
  if (v6 && (v7 & 1) != 0)
  {
    (*(*v6 + 40))();
  }

  return re::ecs2::Component::enqueueMarkDirty(v4);
}

uint64_t RESceneGetShaderDebugMode(re::ecs2::ComponentHelper *a1)
{
  v1 = re::ecs2::ComponentHelper::privateSceneDataEntity(a1, 1);
  v2 = re::ecs2::EntityComponentCollection::getOrAdd((v1 + 48), re::ecs2::ComponentImpl<re::ecs2::DebugMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (*(v2 + 40))
  {
    return *(v2 + 48);
  }

  else
  {
    return v2 + 41;
  }
}

uint64_t RESceneDebugMeshComponentReset(re::ecs2::ComponentHelper *a1)
{
  v1 = re::ecs2::ComponentHelper::privateSceneDataEntity(a1, 1);
  v2 = re::ecs2::EntityComponentCollection::getOrAdd((v1 + 48), re::ecs2::ComponentImpl<re::ecs2::DebugMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (*(v2 + 40))
  {
    *(v2 + 40) = 1;
    v3 = *(v2 + 48);
  }

  else
  {
    *(v2 + 40) = 0;
    v3 = (v2 + 41);
  }

  *v3 = 0;

  return re::ecs2::Component::enqueueMarkDirty(v2);
}

uint64_t RESerializedMaterialParameterHandleCreate(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 40, 8);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  ArcSharedObject::ArcSharedObject(v3, 0);
  *(v3 + 24) = 0;
  *v3 = &unk_1F5D2F120;
  *(v3 + 32) = &str_67;
  v7 = 0;
  v8 = &str_67;
  v5 = re::StringID::operator=((v3 + 24), &v7);
  if (v7)
  {
    if (v7)
    {
    }
  }

  return v3;
}

void re::RESerializedMaterialParameterHandle::~RESerializedMaterialParameterHandle(re::RESerializedMaterialParameterHandle *this)
{
  *this = &unk_1F5D2F120;
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2F120;
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *REImagePresentationComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

void REImagePresentationComponentSetContentDimensionHint(float32x2_t *a1, float32x2_t a2, uint64_t a3)
{
  v5 = vmvn_s8(vceq_f32(*(re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a3) + 32), a2));
  if ((vpmax_u32(v5, v5).u32[0] & 0x80000000) != 0)
  {
    a1[4] = a2;
    v6 = *(*&a1[2] + 216);
    if (v6)
    {

      re::ecs2::NetworkComponent::markDirty(v6, a1);
    }
  }
}

void REImagePresentationComponentSetLoadingImageTextureAsset(uint64_t a1, uint64_t a2)
{
  re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a2);
  re::AssetAPIHelper::assetHandleCreate(a2, v5);
  re::AssetHandle::AssetHandle(v4, v5);
  re::ecs2::ImagePresentationComponent::setLoadingImageTextureAsset(a1, v4);
  re::AssetHandle::~AssetHandle(v4);
  re::AssetHandle::~AssetHandle(v5);
}

void REImagePresentationComponentSetMonoImageTextureAsset(uint64_t a1, uint64_t a2)
{
  re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a2);
  re::AssetAPIHelper::assetHandleCreate(a2, v5);
  re::AssetHandle::AssetHandle(v4, v5);
  re::ecs2::ImagePresentationComponent::setMonoImageTextureAsset(a1, v4);
  re::AssetHandle::~AssetHandle(v4);
  re::AssetHandle::~AssetHandle(v5);
}

uint64_t REImagePresentationComponentSetMonoImageTextureIndex(uint64_t a1, uint64_t a2)
{
  result = re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a2);
  *(result + 88) = a2;
  return result;
}

uint64_t REImagePresentationComponentSetMonoImageOrientation(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a2);
  *(result + 96) = v2;
  return result;
}

void REImagePresentationComponentSetStereoImageTextureAsset(uint64_t a1, uint64_t a2)
{
  re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a2);
  re::AssetAPIHelper::assetHandleCreate(a2, v5);
  re::AssetHandle::AssetHandle(v4, v5);
  re::ecs2::ImagePresentationComponent::setStereoImageTextureAsset(a1, v4);
  re::AssetHandle::~AssetHandle(v4);
  re::AssetHandle::~AssetHandle(v5);
}

uint64_t REImagePresentationComponentSetStereoImageOrientation(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a2);
  *(result + 128) = v2;
  return result;
}

void REImagePresentationComponentSetScreenHeight(uint64_t a1, float a2, uint64_t a3)
{
  if (*(re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a3) + 28) != a2)
  {
    *(a1 + 28) = a2;
    v5 = *(*(a1 + 16) + 216);
    if (v5)
    {

      re::ecs2::NetworkComponent::markDirty(v5, a1);
    }
  }
}

void REImagePresentationComponentSetDesiredViewingMode(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a2) + 132) != a2)
  {
    *(a1 + 132) = v2;
    v4 = *(*(a1 + 16) + 216);
    if (v4)
    {

      re::ecs2::NetworkComponent::markDirty(v4, a1);
    }
  }
}

void REImagePresentationComponentSetDesiredImmersiveViewingMode(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a2) + 133) != a2)
  {
    *(a1 + 133) = v2;
    v4 = *(*(a1 + 16) + 216);
    if (v4)
    {

      re::ecs2::NetworkComponent::markDirty(v4, a1);
    }
  }
}

void REImagePresentationComponentSetImageContentType(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a2) + 134) != a2)
  {
    *(a1 + 134) = v2;
    v4 = *(*(a1 + 16) + 216);
    if (v4)
    {

      re::ecs2::NetworkComponent::markDirty(v4, a1);
    }
  }
}

uint64_t REImagePresentationComponentSetStereoBaseline(float a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a2, a3);
  *(result + 136) = a1;
  return result;
}

uint64_t REImagePresentationComponentSetDisparityAdjustment(float a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a2, a3);
  *(result + 140) = a1;
  return result;
}

uint64_t REImagePresentationComponentSetHorizontalFOV(float a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a2, a3);
  *(result + 144) = a1;
  return result;
}

uint64_t REImagePresentationComponentSetCornerRadiusInPoints(float a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a2, a3);
  *(result + 152) = a1;
  return result;
}

uint64_t REImagePresentationComponentSetSpatial3DCollapseStrength(float a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a2, a3);
  *(result + 328) = a1;
  return result;
}

void REImagePresentationComponentSetMXITextureAsset(uint64_t a1, uint64_t a2)
{
  re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a2);
  re::AssetAPIHelper::assetHandleCreate(a2, v5);
  re::AssetHandle::AssetHandle(v4, v5);
  re::AssetHandle::operator=(a1 + 184, v4);
  re::AssetHandle::~AssetHandle(v4);
  re::ecs2::Component::enqueueMarkDirty(a1);
  re::AssetHandle::~AssetHandle(v5);
}

__CFArray *REImagePresentationComponentGetMXITextureAssets(uint64_t a1, uint64_t a2)
{
  v3 = re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a2);
  Mutable = CFArrayCreateMutable(0, *(v3 + 224), MEMORY[0x1E695E9C0]);
  if (*(a1 + 224))
  {
    v5 = 0;
    v6 = 1;
    do
    {
      valuePtr = *(*(a1 + 240) + 24 * v5);
      v7 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
      CFArrayAppendValue(Mutable, v7);
      CFRelease(v7);
      v5 = v6;
    }

    while (*(a1 + 224) > v6++);
  }

  return Mutable;
}

uint64_t REImagePresentationComponentSetMXITextureAssets(uint64_t a1, const __CFArray *a2)
{
  re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a2);
  v14 = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  Count = CFArrayGetCount(a2);
  if (Count)
  {
    v5 = Count;
    re::DynamicArray<re::AssetHandle>::setCapacity(v12, Count);
    v6 = 0;
    v7 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v6);
      re::AssetAPIHelper::assetHandleCreate(ValueAtIndex, v11);
      re::DynamicArray<re::AssetHandle>::add(v12, v11);
      re::AssetHandle::~AssetHandle(v11);
      v6 = v7;
    }

    while (v5 > v7++);
  }

  re::DynamicArray<re::AssetHandle>::operator=((a1 + 208), v12);
  re::ecs2::Component::enqueueMarkDirty(a1);
  return re::DynamicArray<re::AssetHandle>::deinit(v12);
}

void REImagePresentationComponentSetMXIBackgroundTextureAsset(uint64_t a1, uint64_t a2)
{
  re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a2);
  re::AssetAPIHelper::assetHandleCreate(a2, v5);
  re::AssetHandle::AssetHandle(v4, v5);
  re::AssetHandle::operator=(a1 + 248, v4);
  re::AssetHandle::~AssetHandle(v4);
  re::ecs2::Component::enqueueMarkDirty(a1);
  re::AssetHandle::~AssetHandle(v5);
}

void REImagePresentationComponentSetMXIMeshAsset(uint64_t a1, uint64_t a2)
{
  re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a2);
  re::AssetAPIHelper::assetHandleCreate(a2, v5);
  re::AssetHandle::AssetHandle(v4, v5);
  re::AssetHandle::operator=(a1 + 160, v4);
  re::AssetHandle::~AssetHandle(v4);
  re::ecs2::Component::enqueueMarkDirty(a1);
  re::AssetHandle::~AssetHandle(v5);
}

uint64_t REImagePresentationComponentSetShouldLockMeshToImageAspectRatio(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a2);
  *(result + 148) = v2;
  return result;
}

uint64_t REImagePresentationComponentSetMXIVerticalFOV(float a1, uint64_t a2, uint64_t a3)
{
  v4 = re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a2, a3);
  *(v4 + 300) = a1;

  return re::ecs2::Component::enqueueMarkDirty(v4);
}

uint64_t REImagePresentationComponentSetMXIAspectRatio(float a1, uint64_t a2, uint64_t a3)
{
  v4 = re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a2, a3);
  *(v4 + 296) = a1;

  return re::ecs2::Component::enqueueMarkDirty(v4);
}

uint64_t REImagePresentationComponentSetMXINearDistance(float a1, uint64_t a2, uint64_t a3)
{
  v4 = re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a2, a3);
  *(v4 + 304) = a1;

  return re::ecs2::Component::enqueueMarkDirty(v4);
}

uint64_t REImagePresentationComponentSetMXIFarDistance(float a1, uint64_t a2, uint64_t a3)
{
  v4 = re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a2, a3);
  *(v4 + 308) = a1;

  return re::ecs2::Component::enqueueMarkDirty(v4);
}

uint64_t REImagePresentationComponentSetMXILayerCount(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a2);
  *(v3 + 312) = v2;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REImagePresentationComponentSetMXIResolutionWidth(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a2);
  *(v3 + 316) = v2;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REImagePresentationComponentSetMXIResolutionHeight(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a2);
  *(v3 + 320) = v2;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REImagePresentationComponentSetMXIPremultipliedAlpha(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a2);
  *(v3 + 324) = v2;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

id REImagePresentationComponentGetSpatial3DImage(uint64_t a1, uint64_t a2)
{
  v2 = *(re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a2) + 336);

  return v2;
}

void REImagePresentationComponentSetSpatial3DImage(uint64_t a1, void *a2)
{
  v3 = a2;
  re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, v4);
  v5 = *(a1 + 336);
  *(a1 + 336) = v3;
}

uint64_t REImagePresentationComponentSetHasGeneratedSpatial3DImageContent(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a2);
  *(result + 345) = v2;
  return result;
}

void REImagePresentationComponentNotifySpatial3DImageGenerationStarted(uint64_t a1, uint64_t a2)
{
  v2 = re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a2);

  re::ecs2::ImagePresentationComponent::onSpatial3DImageGenerationStarted(v2);
}

void REImagePresentationComponentNotifySpatial3DImageGenerationCompleted(uint64_t a1, uint64_t a2)
{
  v2 = re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a2);

  re::ecs2::ImagePresentationComponent::onSpatial3DImageGenerationCompleted(v2);
}

void REImagePresentationComponentNotifySpatial3DImageGenerationFailed(uint64_t a1, uint64_t a2)
{
  v2 = re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a2);

  re::ecs2::ImagePresentationComponent::onSpatial3DImageGenerationFailed(v2);
}

void REImagePresentationComponentNotifySpatial3DImageGenerationCancelled(uint64_t a1, uint64_t a2)
{
  v2 = re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a2);

  re::ecs2::ImagePresentationComponent::onSpatial3DImageGenerationCancelled(v2);
}

void REImagePresentationComponentNotifySpatial3DImageGenerationProgress(uint64_t a1, float a2, uint64_t a3)
{
  v4 = re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, a3);

  re::ecs2::ImagePresentationComponent::onSpatial3DImageGenerationProgress(v4, a2);
}

void REImagePresentationComponentCreateSpatial3DImageGenerationRemoveOwnerCallback(uint64_t a1, void *a2)
{
  v3 = a2;
  re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, v4);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3321888768;
  aBlock[2] = __REImagePresentationComponentCreateSpatial3DImageGenerationRemoveOwnerCallback_block_invoke;
  aBlock[3] = &__block_descriptor_40_a8_32c90_ZTSKZ77REImagePresentationComponentCreateSpatial3DImageGenerationRemoveOwnerCallbackE3__0_e9_v16__0_v8l;
  v5 = _Block_copy(v3);

  v10 = _Block_copy(v5);
  v6 = _Block_copy(aBlock);

  v7 = _Block_copy(v6);
  v8 = *(a1 + 352);
  *(a1 + 352) = v7;
}

void *__copy_helper_block_a8_32c90_ZTSKZ77REImagePresentationComponentCreateSpatial3DImageGenerationRemoveOwnerCallbackE3__0(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 32));
  *(a1 + 32) = result;
  return result;
}

void REImagePresentationComponentCreateSpatial3DImageGenerationAddOwnerCallback(uint64_t a1, void *a2)
{
  v3 = a2;
  re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(a1, v4);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3321888768;
  aBlock[2] = __REImagePresentationComponentCreateSpatial3DImageGenerationAddOwnerCallback_block_invoke;
  aBlock[3] = &__block_descriptor_40_a8_32c87_ZTSKZ74REImagePresentationComponentCreateSpatial3DImageGenerationAddOwnerCallbackE3__0_e9_v16__0_v8l;
  v5 = _Block_copy(v3);

  v10 = _Block_copy(v5);
  v6 = _Block_copy(aBlock);

  v7 = _Block_copy(v6);
  v8 = *(a1 + 360);
  *(a1 + 360) = v7;
}

void *__copy_helper_block_a8_32c87_ZTSKZ74REImagePresentationComponentCreateSpatial3DImageGenerationAddOwnerCallbackE3__0(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 32));
  *(a1 + 32) = result;
  return result;
}

uint64_t re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::safeCast(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = &unk_1EE187000;
    if ((*(*a1 + 40))(a1, a2) == re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
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
  v5 = *(v3[457] + 32);
  v6 = (*(*v2 + 40))(v2);
  re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Component is wrong type. Expected type: %s, but got: %s", "&reinterpret_cast<Derived *>(component)->componentType() == &Derived::classComponentType()", "safeCast", 101, v5, *(v6 + 32));
  result = _os_crash("assertion failure: (&reinterpret_cast<Derived *>(component)->componentType() == &Derived::classComponentType()) Component is wrong type. Expected type: %s, but got: %s", v8, v9);
  __break(1u);
  return result;
}

void *RETintComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::TintComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

double REEngineConfigurationEnableSolariumLeanMode(uint64_t a1)
{
  *(a1 + 24) = 1;
  *(a1 + 206) = 0;
  *(a1 + 152) = xmmword_1E311FBC0;
  *(a1 + 168) = 0x100000;
  *&result = 16842753;
  *(a1 + 207) = 16842753;
  *(a1 + 211) = 1;
  return result;
}

void *REAccessibilityComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::AccessibilityComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t REAccessibilityComponentGetIdentifier(uint64_t a1)
{
  if (*(a1 + 32) != 1)
  {
    return 0;
  }

  if (*(a1 + 48))
  {
    return *(a1 + 56);
  }

  return a1 + 49;
}

uint64_t REAccessibilityComponentSetIdentifier(_anonymous_namespace_ *a1, const char *a2)
{
  if (a2)
  {
    v9[1] = v6;
    v9[4] = v8;
    *&v9[2] = v7;
    v8 = 0;
    v6 = 0;
    v7 = 0uLL;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  LOBYTE(v9[0]) = v4;
  result = re::Optional<re::DynamicString>::operator=(a1 + 32, v9);
  if (LOBYTE(v9[0]) == 1)
  {
    result = v9[1];
    if (v9[1])
    {
      if (v9[2])
      {
        result = (*(*v9[1] + 40))();
      }

      memset(&v9[1], 0, 32);
    }
  }

  if (a2)
  {
    result = v6;
    if (v6)
    {
      if (v7)
      {
        return (*(*v6 + 40))();
      }
    }
  }

  return result;
}

uint64_t REAccessibilityComponentGetLabel(uint64_t a1)
{
  if (*(a1 + 72) != 1)
  {
    return 0;
  }

  if (*(a1 + 88))
  {
    return *(a1 + 96);
  }

  return a1 + 89;
}

uint64_t REAccessibilityComponentSetLabel(_anonymous_namespace_ *a1, const char *a2)
{
  if (a2)
  {
    v9[1] = v6;
    v9[4] = v8;
    *&v9[2] = v7;
    v8 = 0;
    v6 = 0;
    v7 = 0uLL;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  LOBYTE(v9[0]) = v4;
  result = re::Optional<re::DynamicString>::operator=(a1 + 72, v9);
  if (LOBYTE(v9[0]) == 1)
  {
    result = v9[1];
    if (v9[1])
    {
      if (v9[2])
      {
        result = (*(*v9[1] + 40))();
      }

      memset(&v9[1], 0, 32);
    }
  }

  if (a2)
  {
    result = v6;
    if (v6)
    {
      if (v7)
      {
        return (*(*v6 + 40))();
      }
    }
  }

  return result;
}

uint64_t REAccessibilityComponentGetDescription(uint64_t a1)
{
  if (*(a1 + 112) != 1)
  {
    return 0;
  }

  if (*(a1 + 128))
  {
    return *(a1 + 136);
  }

  return a1 + 129;
}

uint64_t REAccessibilityComponentSetDescription(_anonymous_namespace_ *a1, const char *a2)
{
  if (a2)
  {
    v9[1] = v6;
    v9[4] = v8;
    *&v9[2] = v7;
    v8 = 0;
    v6 = 0;
    v7 = 0uLL;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  LOBYTE(v9[0]) = v4;
  result = re::Optional<re::DynamicString>::operator=(a1 + 112, v9);
  if (LOBYTE(v9[0]) == 1)
  {
    result = v9[1];
    if (v9[1])
    {
      if (v9[2])
      {
        result = (*(*v9[1] + 40))();
      }

      memset(&v9[1], 0, 32);
    }
  }

  if (a2)
  {
    result = v6;
    if (v6)
    {
      if (v7)
      {
        return (*(*v6 + 40))();
      }
    }
  }

  return result;
}

CFStringRef REAccessibilityComponentGetCustomContentLabelAtIndex(uint64_t a1, unint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 168);
  if (v3 <= a2)
  {
    v11 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
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

    v15 = 797;
    v16 = 2048;
    v17 = a2;
    v18 = 2048;
    v19 = v3;
    _os_log_send_and_compose_impl(v9, &v11, &v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
  }

  v4 = (*(a1 + 184) + 72 * a2);
  re::DynamicString::DynamicString(&v20, v4);
  re::DynamicString::DynamicString(&v22, (v4 + 32));
  LOBYTE(v24) = v4[64];
  if (BYTE8(v20))
  {
    v5 = v21;
  }

  else
  {
    v5 = &v20 + 9;
  }

  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v5, 0x8000100u);
  if (v22)
  {
    if (BYTE8(v22))
    {
      (*(*v22 + 40))();
    }

    v22 = 0u;
    v23 = 0u;
  }

  if (v20 && (BYTE8(v20) & 1) != 0)
  {
    (*(*v20 + 40))();
  }

  return v6;
}

CFStringRef REAccessibilityComponentGetCustomContentValueAtIndex(uint64_t a1, unint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 168);
  if (v3 <= a2)
  {
    v11 = 0;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
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

    v15 = 797;
    v16 = 2048;
    v17 = a2;
    v18 = 2048;
    v19 = v3;
    _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
  }

  v4 = (*(a1 + 184) + 72 * a2);
  re::DynamicString::DynamicString(v20, v4);
  re::DynamicString::DynamicString(&v21, (v4 + 32));
  LOBYTE(v23) = v4[64];
  if (BYTE8(v21))
  {
    v5 = v22;
  }

  else
  {
    v5 = &v21 + 9;
  }

  v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v5, 0x8000100u);
  if (v21)
  {
    if (BYTE8(v21))
    {
      (*(*v21 + 40))();
    }

    v21 = 0u;
    v22 = 0u;
  }

  if (*&v20[0] && (BYTE8(v20[0]) & 1) != 0)
  {
    (*(**&v20[0] + 40))();
  }

  return v6;
}

BOOL REAccessibilityComponentGetCustomContentImportanceAtIndex(uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 168);
  if (v3 <= a2)
  {
    v10 = 0;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
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

    v14 = 797;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v3;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  v4 = (*(a1 + 184) + 72 * a2);
  re::DynamicString::DynamicString(v19, v4);
  re::DynamicString::DynamicString(&v20, (v4 + 32));
  v5 = v4[64];
  LOBYTE(v22) = v5;
  if (v20)
  {
    if (BYTE8(v20))
    {
      (*(*v20 + 40))();
    }

    v20 = 0u;
    v21 = 0u;
  }

  if (*&v19[0] && (BYTE8(v19[0]) & 1) != 0)
  {
    (*(**&v19[0] + 40))();
  }

  return v5 != 0;
}

uint64_t *REAccessibilityComponentAddCustomContent(uint64_t a1, const __CFString *a2, const __CFString *a3, int a4)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v8 = re::DynamicString::setCapacity(&v16, 0);
  *(&v20 + 1) = 0;
  v21 = 0uLL;
  re::DynamicString::setCapacity(&v20, 0);
  CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
  re::DynamicString::operator=(&v16, &v14);
  if (v14 && (v15 & 1) != 0)
  {
    (*(*v14 + 40))();
  }

  v10 = CFStringGetCStringPtr(a3, 0x8000100u);
  re::DynamicString::operator=(&v20, &v14);
  if (v14 && (v15 & 1) != 0)
  {
    (*(*v14 + 40))();
  }

  v22 = a4 == 1;
  v11 = *(a1 + 168);
  if (v11 >= *(a1 + 160))
  {
    re::DynamicArray<re::ecs2::accessibility::CustomContent>::growCapacity((a1 + 152), v11 + 1);
    v11 = *(a1 + 168);
  }

  v12 = (*(a1 + 184) + 72 * v11);
  re::DynamicString::DynamicString(v12, &v16);
  re::DynamicString::DynamicString((v12 + 32), &v20);
  v12[64] = v22;
  ++*(a1 + 168);
  ++*(a1 + 176);
  if (v20)
  {
    if (BYTE8(v20))
    {
      (*(*v20 + 40))();
    }

    v20 = 0u;
    v21 = 0u;
  }

  result = v16;
  if (v16)
  {
    if (v17)
    {
      return (*(*v16 + 40))();
    }
  }

  return result;
}

uint64_t REAccessibilityComponentGetValue(uint64_t a1)
{
  if (*(a1 + 192) != 1)
  {
    return 0;
  }

  if (*(a1 + 208))
  {
    return *(a1 + 216);
  }

  return a1 + 209;
}

uint64_t REAccessibilityComponentSetValue(_anonymous_namespace_ *a1, const char *a2)
{
  if (a2)
  {
    v9[1] = v6;
    v9[4] = v8;
    *&v9[2] = v7;
    v8 = 0;
    v6 = 0;
    v7 = 0uLL;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  LOBYTE(v9[0]) = v4;
  result = re::Optional<re::DynamicString>::operator=(a1 + 192, v9);
  if (LOBYTE(v9[0]) == 1)
  {
    result = v9[1];
    if (v9[1])
    {
      if (v9[2])
      {
        result = (*(*v9[1] + 40))();
      }

      memset(&v9[1], 0, 32);
    }
  }

  if (a2)
  {
    result = v6;
    if (v6)
    {
      if (v7)
      {
        return (*(*v6 + 40))();
      }
    }
  }

  return result;
}

uint64_t REAccessibilityComponentGetSystemRotorAtIndex(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 256);
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

    v12 = 797;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 272) + 8 * a2);
}

uint64_t REAccessibilityComponentClearSystemRotors(uint64_t result)
{
  *(result + 256) = 0;
  ++*(result + 264);
  return result;
}

CFStringRef REAccessibilityComponentGetCustomRotorAtIndex(uint64_t a1, unint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 296);
  if (v3 <= a2)
  {
    v10 = 0;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
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

    v14 = 797;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v3;
    _os_log_send_and_compose_impl(v8, &v10, &v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  re::DynamicString::DynamicString(&v19, (*(a1 + 312) + 32 * a2));
  if (BYTE8(v19))
  {
    v4 = v20;
  }

  else
  {
    v4 = &v19 + 9;
  }

  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v4, 0x8000100u);
  if (v19 && (BYTE8(v19) & 1) != 0)
  {
    (*(*v19 + 40))();
  }

  return v5;
}

uint64_t REAccessibilityComponentAddCustomRotor(uint64_t a1, CFStringRef theString)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v4 = re::DynamicArray<re::DynamicString>::add((a1 + 280), &v6);
  result = v6;
  if (v6)
  {
    if (v7)
    {
      return (*(*v6 + 40))(v4);
    }
  }

  return result;
}

CFStringRef REAccessibilityComponentGetCustomActionAtIndex(uint64_t a1, unint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 344);
  if (v3 <= a2)
  {
    v10 = 0;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
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

    v14 = 797;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v3;
    _os_log_send_and_compose_impl(v8, &v10, &v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  re::DynamicString::DynamicString(&v19, (*(a1 + 360) + 32 * a2));
  if (BYTE8(v19))
  {
    v4 = v20;
  }

  else
  {
    v4 = &v19 + 9;
  }

  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v4, 0x8000100u);
  if (v19 && (BYTE8(v19) & 1) != 0)
  {
    (*(*v19 + 40))();
  }

  return v5;
}

uint64_t REAccessibilityComponentAddCustomAction(uint64_t a1, CFStringRef theString)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v4 = re::DynamicArray<re::DynamicString>::add((a1 + 328), &v6);
  result = v6;
  if (v6)
  {
    if (v7)
    {
      return (*(*v6 + 40))(v4);
    }
  }

  return result;
}

uint64_t RECustomSystemCreateSystemDependency(re *a1, int a2, re::DeformerFeatureFlags *a3, int a4)
{
  v8 = re::globalAllocators(a1);
  v9 = (*(*v8[2] + 32))(v8[2], 72, 8);
  ArcSharedObject::ArcSharedObject(v9, 0);
  *v9 = &unk_1F5D2F1C8;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 0u;
  *(v9 + 56) = 0u;
  *(v9 + 32) = -1;
  *(v9 + 40) = -1;
  *(v9 + 56) = -1;
  *(v9 + 64) = -1;
  v11 = 0;
  if (!a2)
  {
    *(v9 + 40) = a1;
    if (!a4)
    {
      *(v9 + 64) = a3;
      return v9;
    }

    if (_REECSManagerGetEngineSystemTypeIDs(a3, &v11))
    {
      *(v9 + 48) = *v11;
      return v9;
    }

LABEL_8:

    return 0;
  }

  if (a4)
  {
    goto LABEL_8;
  }

  *(v9 + 64) = a3;
  if (!_REECSManagerGetEngineSystemTypeIDs(a1, &v11))
  {
    goto LABEL_8;
  }

  *(v9 + 24) = *v11;
  return v9;
}

uint64_t REECSManagerAddCustomSystem(re *a1, uint64_t a2)
{
  if (*a2 == 2)
  {
    *v7 = *(a2 + 24);
    memset(&v7[4], 0, 20);
    v8 = vextq_s8(*(a2 + 8), *(a2 + 8), 8uLL);
    v9 = 0;
    (*(*a1 + 80))(a1, v7);
    if (*(a2 + 32) && *(a2 + 40))
    {
      v5 = 0;
      do
      {
        (*(*a1 + 88))(a1, *(*(a2 + 32) + 8 * v5++) + 24);
      }

      while (v5 < *(a2 + 40));
    }

    return 0;
  }

  if (*a2 != 1)
  {
    return 0;
  }

  re::make::shared::object<re::ecs2::CustomSystem>(a1, v7);
  *(*v7 + 240) = *(a2 + 8);
  (*(*a1 + 64))(a1, v7);
  v4 = *v7;
  if (*v7)
  {
  }

  return v4;
}

void REECSManagerRemoveCustomSystem(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a2)
  {
    v3 = (a2 + 8);
  }

  (*(*a1 + 72))(a1, &v4);
  if (v4)
  {
  }
}

uint64_t RECustomSystemEnqueueUpdate(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (v1)
  {
    v3 = *(a1 + 216);
    v4 = 8 * v1;
    do
    {
      v5 = *v3++;
      re::ecs2::System::queueToRun(a1, v5, 0.0);
      v4 -= 8;
    }

    while (v4);
  }

  return 1;
}

uint64_t RECustomSystemEnqueueUpdateWithDeadline(uint64_t a1, float a2)
{
  v2 = *(a1 + 200);
  if (v2)
  {
    v5 = *(a1 + 216);
    v6 = 8 * v2;
    do
    {
      v7 = *v5++;
      re::ecs2::System::queueToRun(a1, v7, a2);
      v6 -= 8;
    }

    while (v6);
  }

  return 1;
}

uint64_t REECSManagerSetDefaultCustomSystemScheduleType(uint64_t a1, char a2)
{
  v4 = (*(*a1 + 200))(a1);
  v5 = *(v4 + 8);
  v7 = *v4;
  v8 = v5;
  LOBYTE(v7) = a2;
  (*(*a1 + 208))(a1, &v7);
  return 1;
}

uint64_t REECSManagerSetDefaultCustomSystemOverscheduleStrategy(uint64_t a1, char a2)
{
  v4 = (*(*a1 + 200))(a1);
  v5 = *(v4 + 8);
  v7 = *v4;
  v8 = v5;
  BYTE1(v7) = a2;
  (*(*a1 + 208))(a1, &v7);
  return 1;
}

uint64_t REECSManagerSetDefaultCustomSystemUpdateInterval(uint64_t a1, float a2)
{
  v4 = (*(*a1 + 200))(a1);
  v5 = *(v4 + 8);
  v7[0] = *v4;
  v7[2] = v5;
  *&v7[1] = a2;
  (*(*a1 + 208))(a1, v7);
  return 1;
}

uint64_t RECustomSystemGetScheduleType(uint64_t a1)
{
  if (*(a1 + 200))
  {
    return *re::ecs2::System::taskOptions(a1, **(a1 + 216));
  }

  else
  {
    return 0;
  }
}

uint64_t RECustomSystemSetScheduleType(uint64_t a1, char a2)
{
  v2 = *(a1 + 200);
  if (v2)
  {
    v5 = *(a1 + 216);
    v6 = 8 * v2;
    do
    {
      v7 = *v5;
      v8 = re::ecs2::System::taskOptions(a1, *v5);
      v9 = *(v8 + 8);
      v12 = *v8;
      v13 = v9;
      LOBYTE(v12) = a2;
      re::ecs2::System::setTaskOptions(a1, v7, &v12);
      v14 = v7;
      v10 = re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::DataArrayHandle<re::ecs2::System::SystemScheduling>,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::tryGet(a1 + 320, &v14);
      if (v10 && *v10 != 1)
      {
        *v10 = 1;
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  return 1;
}

uint64_t RECustomSystemSetScheduleTypeForScene(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a2 + 376);
  v6 = re::ecs2::System::taskOptions(a1, v5);
  v7 = *(v6 + 8);
  v10 = *v6;
  v11 = v7;
  LOBYTE(v10) = a3;
  re::ecs2::System::setTaskOptions(a1, v5, &v10);
  v12 = v5;
  v8 = re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::DataArrayHandle<re::ecs2::System::SystemScheduling>,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::tryGet(a1 + 320, &v12);
  if (v8 && *v8 != 1)
  {
    *v8 = 1;
  }

  return 1;
}

uint64_t RECustomSystemGetOverscheduleStrategy(uint64_t a1)
{
  if (*(a1 + 200))
  {
    return *(re::ecs2::System::taskOptions(a1, **(a1 + 216)) + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t RECustomSystemSetOverscheduleStrategy(uint64_t a1, char a2)
{
  v2 = *(a1 + 200);
  if (v2)
  {
    v5 = *(a1 + 216);
    v6 = 8 * v2;
    do
    {
      v7 = *v5;
      v8 = re::ecs2::System::taskOptions(a1, *v5);
      v9 = *(v8 + 8);
      v12 = *v8;
      v13 = v9;
      BYTE1(v12) = a2;
      re::ecs2::System::setTaskOptions(a1, v7, &v12);
      v14 = v7;
      v10 = re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::DataArrayHandle<re::ecs2::System::SystemScheduling>,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::tryGet(a1 + 320, &v14);
      if (v10 && *v10 != 1)
      {
        *v10 = 1;
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  return 1;
}

uint64_t RECustomSystemSetOverscheduleStrategyForScene(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a2 + 376);
  v6 = re::ecs2::System::taskOptions(a1, v5);
  v7 = *(v6 + 8);
  v10 = *v6;
  v11 = v7;
  BYTE1(v10) = a3;
  re::ecs2::System::setTaskOptions(a1, v5, &v10);
  v12 = v5;
  v8 = re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::DataArrayHandle<re::ecs2::System::SystemScheduling>,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::tryGet(a1 + 320, &v12);
  if (v8 && *v8 != 1)
  {
    *v8 = 1;
  }

  return 1;
}

double RECustomSystemGetUpdateInterval(uint64_t a1)
{
  if (!*(a1 + 200))
  {
    return 0.0;
  }

  LODWORD(result) = *(re::ecs2::System::taskOptions(a1, **(a1 + 216)) + 4);
  return result;
}

uint64_t RECustomSystemSetUpdateInterval(uint64_t a1, float a2)
{
  v2 = *(a1 + 200);
  if (v2)
  {
    v5 = *(a1 + 216);
    v6 = 8 * v2;
    do
    {
      v7 = *v5;
      v8 = re::ecs2::System::taskOptions(a1, *v5);
      v9 = *(v8 + 8);
      LODWORD(v12) = *v8;
      v13 = v9;
      *(&v12 + 1) = a2;
      re::ecs2::System::setTaskOptions(a1, v7, &v12);
      v14 = v7;
      v10 = re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::DataArrayHandle<re::ecs2::System::SystemScheduling>,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::tryGet(a1 + 320, &v14);
      if (v10 && *v10 != 1)
      {
        *v10 = 1;
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  return 1;
}

uint64_t RECustomSystemSetUpdateIntervalForScene(uint64_t a1, uint64_t a2, float a3)
{
  v5 = *(a2 + 376);
  v6 = re::ecs2::System::taskOptions(a1, v5);
  v7 = *(v6 + 8);
  LODWORD(v10) = *v6;
  v11 = v7;
  *(&v10 + 1) = a3;
  re::ecs2::System::setTaskOptions(a1, v5, &v10);
  v12 = v5;
  v8 = re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::DataArrayHandle<re::ecs2::System::SystemScheduling>,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::tryGet(a1 + 320, &v12);
  if (v8 && *v8 != 1)
  {
    *v8 = 1;
  }

  return 1;
}

uint64_t RECustomSystemResetScheduleOptions(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (v1)
  {
    v3 = *(a1 + 216);
    v4 = 8 * v1;
    do
    {
      v5 = *v3++;
      re::ecs2::CustomSystem::setTaskOptionsType(a1, v5, 0);
      v4 -= 8;
    }

    while (v4);
  }

  return 1;
}

uint64_t RECustomSystemGetMaxOverscheduleSubsteps(uint64_t a1)
{
  if (*(a1 + 200))
  {
    return *(re::ecs2::System::taskOptions(a1, **(a1 + 216)) + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t RECustomSystemSetMaxOverscheduleSubsteps(uint64_t a1, char a2)
{
  v2 = *(a1 + 200);
  if (v2)
  {
    v5 = *(a1 + 216);
    v6 = 8 * v2;
    do
    {
      v7 = *v5++;
      v8 = re::ecs2::System::taskOptions(a1, v7);
      v9 = *v8;
      v12 = *(v8 + 8);
      v11 = v9;
      LOBYTE(v12) = a2;
      re::ecs2::System::setTaskOptions(a1, v7, &v11);
      v6 -= 8;
    }

    while (v6);
  }

  return 1;
}

uint64_t RECustomSystemSetMaxOverscheduleSubstepsForScene(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a2 + 376);
  v6 = re::ecs2::System::taskOptions(a1, v5);
  v7 = *v6;
  v10 = *(v6 + 8);
  v9 = v7;
  LOBYTE(v10) = a3;
  re::ecs2::System::setTaskOptions(a1, v5, &v9);
  return 1;
}

void *re::Shareable<re::ecs2::CustomSystemRegistry::SystemDependency>::~Shareable(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::Shareable<re::ecs2::CustomSystemRegistry::SystemDependency>::~Shareable(void *a1)
{
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void *RENetworkSystemObserverOnEntityDidCreate(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    _Block_release(v4);
  }

  if (aBlock)
  {
    result = _Block_copy(aBlock);
  }

  else
  {
    result = 0;
  }

  *(a1 + 24) = result;
  return result;
}

void *RENetworkSystemObserverOnEntityDidUpdate(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    _Block_release(v4);
  }

  if (aBlock)
  {
    result = _Block_copy(aBlock);
  }

  else
  {
    result = 0;
  }

  *(a1 + 32) = result;
  return result;
}

void *RENetworkSystemObserverOnEntityWillDestroy(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    _Block_release(v4);
  }

  if (aBlock)
  {
    result = _Block_copy(aBlock);
  }

  else
  {
    result = 0;
  }

  *(a1 + 40) = result;
  return result;
}

void *RENetworkSystemObserverOnComponentDidUpdate(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    _Block_release(v4);
  }

  if (aBlock)
  {
    result = _Block_copy(aBlock);
  }

  else
  {
    result = 0;
  }

  *(a1 + 56) = result;
  return result;
}

uint64_t RENetworkSystemObserverCreate(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*a1 == 1)
  {
    re::make::shared::object<NetworkSystemObserver>(v6);
    v2 = *v6;
    RENetworkSystemObserverOnEntityDidCreate(*v6, *(a1 + 8));
    RENetworkSystemObserverOnEntityDidUpdate(v2, *(a1 + 16));
    RENetworkSystemObserverOnEntityWillDestroy(v2, *(a1 + 24));
    RENetworkSystemObserverOnComponentDidUpdate(v2, *(a1 + 32));
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v3 = CoreRELog::log;
    if (os_log_type_enabled(CoreRELog::log, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *a1;
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "RENetworkSystemObserverCreate called with unknown version %d", v6, 8u);
    }

    return 0;
  }

  return v2;
}

void *RENetworkSystemObserverOnComponentDidAdd(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    _Block_release(v4);
  }

  if (aBlock)
  {
    result = _Block_copy(aBlock);
  }

  else
  {
    result = 0;
  }

  *(a1 + 48) = result;
  return result;
}

void *RENetworkSystemObserverOnComponentWillRemove(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    _Block_release(v4);
  }

  if (aBlock)
  {
    result = _Block_copy(aBlock);
  }

  else
  {
    result = 0;
  }

  *(a1 + 64) = result;
  return result;
}

void *RENetworkSystemObserverOnLocalEntityDidCreate(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    _Block_release(v4);
  }

  if (aBlock)
  {
    result = _Block_copy(aBlock);
  }

  else
  {
    result = 0;
  }

  *(a1 + 72) = result;
  return result;
}

void *RENetworkSystemObserverOnLocalEntityDidUpdate(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    _Block_release(v4);
  }

  if (aBlock)
  {
    result = _Block_copy(aBlock);
  }

  else
  {
    result = 0;
  }

  *(a1 + 80) = result;
  return result;
}

void *RENetworkSystemObserverOnLocalEntityWillDestroy(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 88);
  if (v4)
  {
    _Block_release(v4);
  }

  if (aBlock)
  {
    result = _Block_copy(aBlock);
  }

  else
  {
    result = 0;
  }

  *(a1 + 88) = result;
  return result;
}

void *RENetworkSystemObserverOnLocalComponentDidAdd(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 96);
  if (v4)
  {
    _Block_release(v4);
  }

  if (aBlock)
  {
    result = _Block_copy(aBlock);
  }

  else
  {
    result = 0;
  }

  *(a1 + 96) = result;
  return result;
}

void *RENetworkSystemObserverOnLocalComponentDidUpdate(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 104);
  if (v4)
  {
    _Block_release(v4);
  }

  if (aBlock)
  {
    result = _Block_copy(aBlock);
  }

  else
  {
    result = 0;
  }

  *(a1 + 104) = result;
  return result;
}

void *RENetworkSystemObserverOnLocalComponentWillRemove(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 112);
  if (v4)
  {
    _Block_release(v4);
  }

  if (aBlock)
  {
    result = _Block_copy(aBlock);
  }

  else
  {
    result = 0;
  }

  *(a1 + 112) = result;
  return result;
}

void *RENetworkSystemObserverOnSceneDidCreate(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 120);
  if (v4)
  {
    _Block_release(v4);
  }

  if (aBlock)
  {
    result = _Block_copy(aBlock);
  }

  else
  {
    result = 0;
  }

  *(a1 + 120) = result;
  return result;
}

void *RENetworkSystemObserverOnSceneWillDestroy(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 128);
  if (v4)
  {
    _Block_release(v4);
  }

  if (aBlock)
  {
    result = _Block_copy(aBlock);
  }

  else
  {
    result = 0;
  }

  *(a1 + 128) = result;
  return result;
}

void *RENetworkSystemObserverOnFoundDirty(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 136);
  if (v4)
  {
    _Block_release(v4);
  }

  if (aBlock)
  {
    result = _Block_copy(aBlock);
  }

  else
  {
    result = 0;
  }

  *(a1 + 136) = result;
  return result;
}

void *RENetworkSystemObserverOnDataDidArrive(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 144);
  if (v4)
  {
    _Block_release(v4);
  }

  if (aBlock)
  {
    result = _Block_copy(aBlock);
  }

  else
  {
    result = 0;
  }

  *(a1 + 144) = result;
  return result;
}

void *RENetworkSystemObserverOnTopLevelEntityDidCreate(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 152);
  if (v4)
  {
    _Block_release(v4);
  }

  if (aBlock)
  {
    result = _Block_copy(aBlock);
  }

  else
  {
    result = 0;
  }

  *(a1 + 152) = result;
  return result;
}