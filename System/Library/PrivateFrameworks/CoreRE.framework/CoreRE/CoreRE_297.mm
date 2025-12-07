uint64_t REMaterialParameterBlockArrayComponentSetFloatAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, char *a3, float a4)
{
  v35 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v16, &v21, &v30, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if ((*v9 || (v10 = *(v9 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v30, v10);
    ++*(v9 + 16);
    v11 = v30;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v9, v30);
    *(v9 + 8) = 0;
    if (v11)
    {
    }
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
LABEL_17:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v19, &v21, &v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1 + 8) + 32 * a2;
  ++*(v12 + 16);
  v13 = *v12;
  *&v30 = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v13, a3, 1, &v30);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetFloatWithHandleAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, uint64_t a3, float a4)
{
  v35 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v16, &v21, &v30, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if ((*v9 || (v10 = *(v9 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v30, v10);
    ++*(v9 + 16);
    v11 = v30;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v9, v30);
    *(v9 + 8) = 0;
    if (v11)
    {
    }
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
LABEL_17:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v19, &v21, &v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1 + 8) + 32 * a2;
  ++*(v12 + 16);
  v13 = *v12;
  *&v30 = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v13, (a3 + 24), 1, &v30);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

re::MaterialParameterBlock *REMaterialParameterBlockArrayComponentGetFloatAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, const char *a3, _DWORD *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
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
    v26 = a2;
    v27 = 2048;
    v28 = v8;
    _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::floatValue(v10, a3, &v19);
  if (v19 == 1)
  {
    v11 = HIDWORD(v19);
LABEL_10:
    *a4 = v11;
    return 1;
  }

  v8 = *(a1 + 11);
  if (v8 <= a2)
  {
LABEL_22:
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
    v26 = a2;
    v27 = 2048;
    v28 = v8;
    _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 13);
  result = *(v13 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(&v29, result, a3);
    if ((BYTE12(v29) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v29, 1))
    {
      v11 = *re::ShaderGraphMaterial::getConstant(*(v13 + 8 * a2), &v29);
      goto LABEL_10;
    }

    return 0;
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentSetIntAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, char *a3, int a4)
{
  v35 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v16, &v21, &v30, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if ((*v9 || (v10 = *(v9 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v30, v10);
    ++*(v9 + 16);
    v11 = v30;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v9, v30);
    *(v9 + 8) = 0;
    if (v11)
    {
    }
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
LABEL_17:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v19, &v21, &v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1 + 8) + 32 * a2;
  ++*(v12 + 16);
  v13 = *v12;
  LODWORD(v30) = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v13, a3, 3, &v30);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetIntWithHandleAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, uint64_t a3, int a4)
{
  v35 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v16, &v21, &v30, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if ((*v9 || (v10 = *(v9 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v30, v10);
    ++*(v9 + 16);
    v11 = v30;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v9, v30);
    *(v9 + 8) = 0;
    if (v11)
    {
    }
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
LABEL_17:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v19, &v21, &v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1 + 8) + 32 * a2;
  ++*(v12 + 16);
  v13 = *v12;
  LODWORD(v30) = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v13, (a3 + 24), 3, &v30);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

re::MaterialParameterBlock *REMaterialParameterBlockArrayComponentGetIntAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, const char *a3, _DWORD *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
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
    v26 = a2;
    v27 = 2048;
    v28 = v8;
    _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::intValue(v10, a3, &v19);
  if (v19 == 1)
  {
    v11 = HIDWORD(v19);
LABEL_10:
    *a4 = v11;
    return 1;
  }

  v8 = *(a1 + 11);
  if (v8 <= a2)
  {
LABEL_22:
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
    v26 = a2;
    v27 = 2048;
    v28 = v8;
    _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 13);
  result = *(v13 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(&v29, result, a3);
    if ((BYTE12(v29) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v29, 3))
    {
      v11 = *re::ShaderGraphMaterial::getConstant(*(v13 + 8 * a2), &v29);
      goto LABEL_10;
    }

    return 0;
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentSetUIntAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, char *a3, int a4)
{
  v35 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v16, &v21, &v30, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if ((*v9 || (v10 = *(v9 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v30, v10);
    ++*(v9 + 16);
    v11 = v30;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v9, v30);
    *(v9 + 8) = 0;
    if (v11)
    {
    }
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
LABEL_17:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v19, &v21, &v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1 + 8) + 32 * a2;
  ++*(v12 + 16);
  v13 = *v12;
  LODWORD(v30) = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v13, a3, 7, &v30);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetUIntWithHandleAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, uint64_t a3, int a4)
{
  v35 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v16, &v21, &v30, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if ((*v9 || (v10 = *(v9 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v30, v10);
    ++*(v9 + 16);
    v11 = v30;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v9, v30);
    *(v9 + 8) = 0;
    if (v11)
    {
    }
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
LABEL_17:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v19, &v21, &v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1 + 8) + 32 * a2;
  ++*(v12 + 16);
  v13 = *v12;
  LODWORD(v30) = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v13, (a3 + 24), 7, &v30);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

re::MaterialParameterBlock *REMaterialParameterBlockArrayComponentGetUIntAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, const char *a3, _DWORD *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
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
    v26 = a2;
    v27 = 2048;
    v28 = v8;
    _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::uintValue(v10, a3, &v19);
  if (v19 == 1)
  {
    v11 = HIDWORD(v19);
LABEL_10:
    *a4 = v11;
    return 1;
  }

  v8 = *(a1 + 11);
  if (v8 <= a2)
  {
LABEL_22:
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
    v26 = a2;
    v27 = 2048;
    v28 = v8;
    _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 13);
  result = *(v13 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(&v29, result, a3);
    if ((BYTE12(v29) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v29, 7))
    {
      v11 = *re::ShaderGraphMaterial::getConstant(*(v13 + 8 * a2), &v29);
      goto LABEL_10;
    }

    return 0;
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentSetFloat2AtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, char *a3, double a4)
{
  v35 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v16, &v21, &v30, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if ((*v9 || (v10 = *(v9 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v30, v10);
    ++*(v9 + 16);
    v11 = v30;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v9, v30);
    *(v9 + 8) = 0;
    if (v11)
    {
    }
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
LABEL_17:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v19, &v21, &v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1 + 8) + 32 * a2;
  ++*(v12 + 16);
  v13 = *v12;
  *&v30 = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v13, a3, 32, &v30);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetFloat2WithHandleAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, uint64_t a3, double a4)
{
  v35 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v16, &v21, &v30, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if ((*v9 || (v10 = *(v9 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v30, v10);
    ++*(v9 + 16);
    v11 = v30;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v9, v30);
    *(v9 + 8) = 0;
    if (v11)
    {
    }
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
LABEL_17:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v19, &v21, &v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1 + 8) + 32 * a2;
  ++*(v12 + 16);
  v13 = *v12;
  *&v30 = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v13, (a3 + 24), 32, &v30);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentGetFloat2AtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, const char *a3, void *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    v19[0] = 0;
    v33 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = MEMORY[0x1E69E9C10];
    v21 = 136315906;
    v22 = "operator[]";
    v23 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v24 = 789;
    v25 = 2048;
    v26 = a2;
    v27 = 2048;
    v28 = v8;
    _os_log_send_and_compose_impl(v14, v19, &v29, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v18);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::vector2FValue(v10, a3, v19);
  if (LOBYTE(v19[0]) == 1)
  {
    *a4 = v19[1];
    return 1;
  }

  v8 = *(a1 + 11);
  if (v8 <= a2)
  {
LABEL_22:
    v20 = 0;
    v33 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v21 = 136315906;
    v22 = "operator[]";
    v23 = 1024;
    if (v16)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v24 = 789;
    v25 = 2048;
    v26 = a2;
    v27 = 2048;
    v28 = v8;
    _os_log_send_and_compose_impl(v17, &v20, &v29, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v18, v19[0]);
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1 + 13);
  result = *(v12 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(&v29, result, a3);
    if ((BYTE12(v29) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v29, 32))
    {
      *a4 = *re::ShaderGraphMaterial::getConstant(*(v12 + 8 * a2), &v29);
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentSetInt2AtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, char *a3, double a4)
{
  v35 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v16, &v21, &v30, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if ((*v9 || (v10 = *(v9 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v30, v10);
    ++*(v9 + 16);
    v11 = v30;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v9, v30);
    *(v9 + 8) = 0;
    if (v11)
    {
    }
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
LABEL_17:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v19, &v21, &v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1 + 8) + 32 * a2;
  ++*(v12 + 16);
  v13 = *v12;
  *&v30 = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v13, a3, 4, &v30);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetInt2WithHandleAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, uint64_t a3, double a4)
{
  v35 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v16, &v21, &v30, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if ((*v9 || (v10 = *(v9 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v30, v10);
    ++*(v9 + 16);
    v11 = v30;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v9, v30);
    *(v9 + 8) = 0;
    if (v11)
    {
    }
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
LABEL_17:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v19, &v21, &v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1 + 8) + 32 * a2;
  ++*(v12 + 16);
  v13 = *v12;
  *&v30 = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v13, (a3 + 24), 4, &v30);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

re::MaterialParameterBlock *REMaterialParameterBlockArrayComponentGetInt2AtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, const char *a3, size_t *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    v20[0] = 0;
    v34 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v15, v20, &v30, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v19);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::int2Value(v10, a3, v20);
  if (LOBYTE(v20[0]) == 1)
  {
    v11 = v20[1];
LABEL_10:
    *a4 = v11;
    return 1;
  }

  v8 = *(a1 + 11);
  if (v8 <= a2)
  {
LABEL_22:
    v21 = 0;
    v34 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v18, &v21, &v30, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v19, v20[0]);
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 13);
  result = *(v13 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(&v30, result, a3);
    if ((BYTE12(v30) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v30, 4))
    {
      v11 = *re::ShaderGraphMaterial::getConstant(*(v13 + 8 * a2), &v30);
      goto LABEL_10;
    }

    return 0;
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentSetUInt2AtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, char *a3, double a4)
{
  v35 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v16, &v21, &v30, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if ((*v9 || (v10 = *(v9 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v30, v10);
    ++*(v9 + 16);
    v11 = v30;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v9, v30);
    *(v9 + 8) = 0;
    if (v11)
    {
    }
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
LABEL_17:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v19, &v21, &v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1 + 8) + 32 * a2;
  ++*(v12 + 16);
  v13 = *v12;
  *&v30 = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v13, a3, 8, &v30);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetUInt2WithHandleAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, uint64_t a3, double a4)
{
  v35 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v16, &v21, &v30, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if ((*v9 || (v10 = *(v9 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v30, v10);
    ++*(v9 + 16);
    v11 = v30;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v9, v30);
    *(v9 + 8) = 0;
    if (v11)
    {
    }
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
LABEL_17:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v19, &v21, &v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1 + 8) + 32 * a2;
  ++*(v12 + 16);
  v13 = *v12;
  *&v30 = a4;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v13, (a3 + 24), 8, &v30);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

re::MaterialParameterBlock *REMaterialParameterBlockArrayComponentGetUInt2AtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, const char *a3, size_t *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    v20[0] = 0;
    v34 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v15, v20, &v30, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v19);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::uint2Value(v10, a3, v20);
  if (LOBYTE(v20[0]) == 1)
  {
    v11 = v20[1];
LABEL_10:
    *a4 = v11;
    return 1;
  }

  v8 = *(a1 + 11);
  if (v8 <= a2)
  {
LABEL_22:
    v21 = 0;
    v34 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v18, &v21, &v30, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v19, v20[0]);
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 13);
  result = *(v13 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(&v30, result, a3);
    if ((BYTE12(v30) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v30, 8))
    {
      v11 = *re::ShaderGraphMaterial::getConstant(*(v13 + 8 * a2), &v30);
      goto LABEL_10;
    }

    return 0;
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentSetFloat3AtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, char *a3, __n128 a4)
{
  v19 = a4;
  v34 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v7 = *(a1 + 6);
  if (v7 <= a2)
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
    v26 = a2;
    v27 = 2048;
    v28 = v7;
    _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19.n128_u64[0], v19.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a1 + 8) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v29, v9);
    ++*(v8 + 16);
    v10 = v29.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v29.n128_i64[0]);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  v7 = *(a1 + 6);
  if (v7 <= a2)
  {
LABEL_17:
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
    v26 = a2;
    v27 = 2048;
    v28 = v7;
    _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19.n128_u64[0], v19.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 8) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  v29 = v19;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v12, a3, 33, &v29);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetFloat3WithHandleAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v19 = a4;
  v34 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v7 = *(a1 + 6);
  if (v7 <= a2)
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
    v26 = a2;
    v27 = 2048;
    v28 = v7;
    _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19.n128_u64[0], v19.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a1 + 8) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v29, v9);
    ++*(v8 + 16);
    v10 = v29.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v29.n128_i64[0]);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  v7 = *(a1 + 6);
  if (v7 <= a2)
  {
LABEL_17:
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
    v26 = a2;
    v27 = 2048;
    v28 = v7;
    _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19.n128_u64[0], v19.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 8) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  v29 = v19;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v12, (a3 + 24), 33, &v29);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentGetFloat3AtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, const char *a3, _OWORD *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    *v31 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    *buf = 0u;
    v22 = MEMORY[0x1E69E9C10];
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v37 = 789;
    v38 = 2048;
    v39 = a2;
    v40 = 2048;
    v41 = v8;
    _os_log_send_and_compose_impl(v23, v31, buf, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v29, v30[0]);
    _os_crash_msg();
    __break(1u);
LABEL_30:
    v30[0] = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    *buf = 0u;
    a4 = MEMORY[0x1E69E9C10];
    v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v37 = 789;
    v38 = 2048;
    v39 = a2;
    v40 = 2048;
    v41 = v8;
    _os_log_send_and_compose_impl(v25, v30, buf, 80, &dword_1E1C61000, a4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v29);
    _os_crash_msg();
    __break(1u);
LABEL_34:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_16;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::vector3FValue(v10, a3, v31);
  if (v31[0] == 1)
  {
    v11 = v32;
LABEL_10:
    *a4 = v11;
    return 1;
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    goto LABEL_30;
  }

  v13 = *(a1 + 8) + 32 * a2;
  v14 = *v13;
  if (!*v13)
  {
    v14 = *(v13 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::colorGamut3FValue(v14, a3, v30);
  if (LOBYTE(v30[0]) != 1)
  {
    v18 = *(a1 + 11);
    if (v18 <= a2)
    {
      v33 = 0;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      *buf = 0u;
      v26 = MEMORY[0x1E69E9C10];
      v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v34 = 136315906;
      v35 = "operator[]";
      v36 = 1024;
      if (v27)
      {
        v28 = 3;
      }

      else
      {
        v28 = 2;
      }

      v37 = 789;
      v38 = 2048;
      v39 = a2;
      v40 = 2048;
      v41 = v18;
      _os_log_send_and_compose_impl(v28, &v33, buf, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v29, v30[0]);
      _os_crash_msg();
      __break(1u);
    }

    v19 = *(a1 + 13);
    v20 = *(v19 + 8 * a2);
    if (!v20)
    {
      return 0;
    }

    re::MaterialParameterBlock::handle(buf, v20, a3);
    if ((buf[12] & 7) == 0 || !re::MaterialParameterHandle::isParameterType(buf, 33))
    {
      return 0;
    }

    v11 = *re::ShaderGraphMaterial::getConstant(*(v19 + 8 * a2), buf);
    goto LABEL_10;
  }

  if (CoreRELog::onceToken != -1)
  {
    goto LABEL_34;
  }

LABEL_16:
  v15 = CoreRELog::log;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "REMaterialParameterBlockArrayComponentGetFloat3AtIndex was called for parameter of type Color3.To get the right color space context for the color value, REMaterialParameterBlockArrayComponentGetColor3AtIndex should be used instead.", buf, 2u);
  }

  v12 = 1;
  *&v16 = re::ColorGamut3F::as((v30 + 4), 0, 1);
  DWORD2(v16) = v17;
  *a4 = v16;
  return v12;
}

uint64_t REMaterialParameterBlockArrayComponentSetColor3AtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, char *a3, uint64_t a4, __n128 a5)
{
  v20 = a5;
  v35 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v9 = *(a1 + 6);
  if (v9 <= a2)
  {
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v9;
    _os_log_send_and_compose_impl(v16, &v21, &v30, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20.n128_u64[0], v20.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(a1 + 8) + 32 * a2;
  v11 = *v10;
  if ((*v10 || (v11 = *(v10 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v30, v11);
    ++*(v10 + 16);
    v12 = v30;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v10, v30);
    *(v10 + 8) = 0;
    if (v12)
    {
    }
  }

  v9 = *(a1 + 6);
  if (v9 <= a2)
  {
LABEL_19:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v9;
    _os_log_send_and_compose_impl(v19, &v21, &v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20.n128_u64[0], v20.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 8) + 32 * a2;
  ++*(v13 + 16);
  re::ecs2::SerializableMaterialParameterBlock::setColorGamut3F(*v13, a3, v20.n128_u32[0] | (v20.n128_u32[1] << 32), v20.n128_u32[2] | (a4 << 32));

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetColor3WithHandleAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v20 = a5;
  v35 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v9 = *(a1 + 6);
  if (v9 <= a2)
  {
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v9;
    _os_log_send_and_compose_impl(v16, &v21, &v30, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20.n128_u64[0], v20.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(a1 + 8) + 32 * a2;
  v11 = *v10;
  if ((*v10 || (v11 = *(v10 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v30, v11);
    ++*(v10 + 16);
    v12 = v30;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v10, v30);
    *(v10 + 8) = 0;
    if (v12)
    {
    }
  }

  v9 = *(a1 + 6);
  if (v9 <= a2)
  {
LABEL_19:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v9;
    _os_log_send_and_compose_impl(v19, &v21, &v30, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20.n128_u64[0], v20.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 8) + 32 * a2;
  ++*(v13 + 16);
  re::ecs2::SerializableMaterialParameterBlock::setColorGamut3F(*v13, (a3 + 24), v20.n128_u32[0] | (v20.n128_u32[1] << 32), v20.n128_u32[2] | (a4 << 32));

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentGetColor3AtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, const char *a3, _OWORD *a4, _BYTE *a5)
{
  v46 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v10 = *(a1 + 6);
  if (v10 <= a2)
  {
    *v31 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v23 = MEMORY[0x1E69E9C10];
    v33 = 136315906;
    v34 = "operator[]";
    v35 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    v36 = 789;
    v37 = 2048;
    v38 = a2;
    v39 = 2048;
    v40 = v10;
    _os_log_send_and_compose_impl(v24, v31, &v41, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38);
    _os_crash_msg();
    __break(1u);
LABEL_30:
    v32 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v25 = MEMORY[0x1E69E9C10];
    v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v33 = 136315906;
    v34 = "operator[]";
    v35 = 1024;
    if (v26)
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    v36 = 789;
    v37 = 2048;
    v38 = a2;
    v39 = 2048;
    v40 = v10;
    _os_log_send_and_compose_impl(v27, &v32, &v41, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, *v31, *&v31[8]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_34;
  }

  v11 = *(a1 + 8) + 32 * a2;
  v12 = *v11;
  if (!*v11)
  {
    v12 = *(v11 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::colorGamut3FValue(v12, a3, v31);
  if (v31[0] == 1)
  {
    v13 = v31[16];
    *a4 = *&v31[4];
    *a5 = v13;
    return 1;
  }

  v10 = *(a1 + 6);
  if (v10 <= a2)
  {
    goto LABEL_30;
  }

  v15 = *(a1 + 8) + 32 * a2;
  v16 = *v15;
  if (!*v15)
  {
    v16 = *(v15 + 8);
  }

  v17 = re::ecs2::SerializableMaterialParameterBlock::valueType(v16, a3);
  if (v17 != 21 && v17 != 0)
  {
    return 0;
  }

  v10 = *(a1 + 11);
  if (v10 <= a2)
  {
LABEL_34:
    v32 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v28 = MEMORY[0x1E69E9C10];
    v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v33 = 136315906;
    v34 = "operator[]";
    v35 = 1024;
    if (v29)
    {
      v30 = 3;
    }

    else
    {
      v30 = 2;
    }

    v36 = 789;
    v37 = 2048;
    v38 = a2;
    v39 = 2048;
    v40 = v10;
    _os_log_send_and_compose_impl(v30, &v32, &v41, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, *v31, *&v31[8]);
    _os_crash_msg();
    __break(1u);
  }

  v19 = *(a1 + 13);
  result = *(v19 + 8 * a2);
  if (!result)
  {
    return result;
  }

  re::MaterialParameterBlock::handle(&v41, result, a3);
  if ((BYTE12(v41) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v41, 20))
  {
    *&v20 = re::MaterialParameterBlock::colorGamut3FValue(*(v19 + 8 * a2), &v41);
    DWORD2(v20) = v21;
    *a4 = v20;
    *a5 = v22;
    return 1;
  }

  return 0;
}

uint64_t REMaterialParameterBlockArrayComponentSetInt3AtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, char *a3, __n128 a4)
{
  v19 = a4;
  v34 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v7 = *(a1 + 6);
  if (v7 <= a2)
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
    v26 = a2;
    v27 = 2048;
    v28 = v7;
    _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19.n128_u64[0], v19.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a1 + 8) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v29, v9);
    ++*(v8 + 16);
    v10 = v29.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v29.n128_i64[0]);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  v7 = *(a1 + 6);
  if (v7 <= a2)
  {
LABEL_17:
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
    v26 = a2;
    v27 = 2048;
    v28 = v7;
    _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19.n128_u64[0], v19.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 8) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  v29 = v19;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v12, a3, 5, &v29);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetInt3WithHandleAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v19 = a4;
  v34 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v7 = *(a1 + 6);
  if (v7 <= a2)
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
    v26 = a2;
    v27 = 2048;
    v28 = v7;
    _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19.n128_u64[0], v19.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a1 + 8) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v29, v9);
    ++*(v8 + 16);
    v10 = v29.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v29.n128_i64[0]);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  v7 = *(a1 + 6);
  if (v7 <= a2)
  {
LABEL_17:
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
    v26 = a2;
    v27 = 2048;
    v28 = v7;
    _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19.n128_u64[0], v19.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 8) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  v29 = v19;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v12, (a3 + 24), 5, &v29);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

re::MaterialParameterBlock *REMaterialParameterBlockArrayComponentGetInt3AtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, const char *a3, _OWORD *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    v19[0] = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v15, v19, &v30, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::int3Value(v10, a3, v19);
  if (LOBYTE(v19[0]) == 1)
  {
    v11 = v20;
LABEL_10:
    *a4 = v11;
    return 1;
  }

  v8 = *(a1 + 11);
  if (v8 <= a2)
  {
LABEL_22:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v18, &v21, &v30, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v19[0], v19[1]);
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 13);
  result = *(v13 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(&v30, result, a3);
    if ((BYTE12(v30) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v30, 5))
    {
      v11 = *re::ShaderGraphMaterial::getConstant(*(v13 + 8 * a2), &v30);
      goto LABEL_10;
    }

    return 0;
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentSetUInt3AtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, char *a3, __n128 a4)
{
  v19 = a4;
  v34 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v7 = *(a1 + 6);
  if (v7 <= a2)
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
    v26 = a2;
    v27 = 2048;
    v28 = v7;
    _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19.n128_u64[0], v19.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a1 + 8) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v29, v9);
    ++*(v8 + 16);
    v10 = v29.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v29.n128_i64[0]);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  v7 = *(a1 + 6);
  if (v7 <= a2)
  {
LABEL_17:
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
    v26 = a2;
    v27 = 2048;
    v28 = v7;
    _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19.n128_u64[0], v19.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 8) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  v29 = v19;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v12, a3, 9, &v29);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetUInt3WithHandleAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v19 = a4;
  v34 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v7 = *(a1 + 6);
  if (v7 <= a2)
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
    v26 = a2;
    v27 = 2048;
    v28 = v7;
    _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19.n128_u64[0], v19.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a1 + 8) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v29, v9);
    ++*(v8 + 16);
    v10 = v29.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v29.n128_i64[0]);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  v7 = *(a1 + 6);
  if (v7 <= a2)
  {
LABEL_17:
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
    v26 = a2;
    v27 = 2048;
    v28 = v7;
    _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19.n128_u64[0], v19.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 8) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  v29 = v19;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v12, (a3 + 24), 9, &v29);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

re::MaterialParameterBlock *REMaterialParameterBlockArrayComponentGetUInt3AtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, const char *a3, _OWORD *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    v19[0] = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v15, v19, &v30, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::uint3Value(v10, a3, v19);
  if (LOBYTE(v19[0]) == 1)
  {
    v11 = v20;
LABEL_10:
    *a4 = v11;
    return 1;
  }

  v8 = *(a1 + 11);
  if (v8 <= a2)
  {
LABEL_22:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v18, &v21, &v30, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v19[0], v19[1]);
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 13);
  result = *(v13 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(&v30, result, a3);
    if ((BYTE12(v30) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v30, 9))
    {
      v11 = *re::ShaderGraphMaterial::getConstant(*(v13 + 8 * a2), &v30);
      goto LABEL_10;
    }

    return 0;
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentSetFloat4AtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, char *a3, __n128 a4)
{
  v19 = a4;
  v34 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v7 = *(a1 + 6);
  if (v7 <= a2)
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
    v26 = a2;
    v27 = 2048;
    v28 = v7;
    _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19.n128_u64[0], v19.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a1 + 8) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v29, v9);
    ++*(v8 + 16);
    v10 = v29.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v29.n128_i64[0]);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  v7 = *(a1 + 6);
  if (v7 <= a2)
  {
LABEL_17:
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
    v26 = a2;
    v27 = 2048;
    v28 = v7;
    _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19.n128_u64[0], v19.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 8) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  v29 = v19;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v12, a3, 34, &v29);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetFloat4WithHandleAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v19 = a4;
  v34 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v7 = *(a1 + 6);
  if (v7 <= a2)
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
    v26 = a2;
    v27 = 2048;
    v28 = v7;
    _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19.n128_u64[0], v19.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a1 + 8) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v29, v9);
    ++*(v8 + 16);
    v10 = v29.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v29.n128_i64[0]);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  v7 = *(a1 + 6);
  if (v7 <= a2)
  {
LABEL_17:
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
    v26 = a2;
    v27 = 2048;
    v28 = v7;
    _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19.n128_u64[0], v19.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 8) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  v29 = v19;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v12, (a3 + 24), 34, &v29);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentGetFloat4AtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, const char *a3, float32x4_t *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    *v31 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    *buf = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v37 = 789;
    v38 = 2048;
    v39 = a2;
    v40 = 2048;
    v41 = v8;
    _os_log_send_and_compose_impl(v22, v31, buf, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v28, *v29);
    _os_crash_msg();
    __break(1u);
LABEL_33:
    *v29 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    *buf = 0u;
    a4 = MEMORY[0x1E69E9C10];
    v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (v23)
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    v37 = 789;
    v38 = 2048;
    v39 = a2;
    v40 = 2048;
    v41 = v8;
    _os_log_send_and_compose_impl(v24, v29, buf, 80, &dword_1E1C61000, a4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v28);
    _os_crash_msg();
    __break(1u);
    goto LABEL_37;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::vector4FValue(v10, a3, v31);
  if (v31[0] == 1)
  {
    v11 = v32;
LABEL_26:
    *a4 = v11;
    return 1;
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    goto LABEL_33;
  }

  v12 = *(a1 + 8) + 32 * a2;
  v13 = *v12;
  if (!*v12)
  {
    v13 = *(v12 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::colorGamut4FValue(v13, a3, v29);
  if (v29[0] == 1)
  {
    if (CoreRELog::onceToken == -1)
    {
LABEL_15:
      v14 = CoreRELog::log;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "REMaterialParameterBlockArrayComponentGetFloat4AtIndex was called for parameter of type Color4.To get the right color space context for the color value, REMaterialParameterBlockArrayComponentGetColor4AtIndex should be used instead.", buf, 2u);
      }

      if (v30)
      {
        re::ColorHelpers::computeGamutTransformMatrix(v30, 0, buf);
        v15 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*buf, *&v29[4]), v43, *&v29[8]), v44, *&v29[12]);
        v15.i32[3] = 0;
        v11 = vmaxnmq_f32(v15, 0);
        v11.i32[3] = *&v29[16];
      }

      else
      {
        v11 = *&v29[4];
      }

      goto LABEL_26;
    }

LABEL_37:
    dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    goto LABEL_15;
  }

  v16 = *(a1 + 11);
  if (v16 <= a2)
  {
    v33 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    *buf = 0u;
    v25 = MEMORY[0x1E69E9C10];
    v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (v26)
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    v37 = 789;
    v38 = 2048;
    v39 = a2;
    v40 = 2048;
    v41 = v16;
    _os_log_send_and_compose_impl(v27, &v33, buf, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v28, *v29);
    _os_crash_msg();
    __break(1u);
  }

  v17 = *(a1 + 13);
  result = *(v17 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(buf, result, a3);
    if ((buf[12] & 7) == 0 || !re::MaterialParameterHandle::isParameterType(buf, 34))
    {
      return 0;
    }

    Constant = re::ShaderGraphMaterial::getConstant(*(v17 + 8 * a2), buf);
    v20 = Constant[1];
    a4->i64[0] = *Constant;
    a4->i64[1] = v20;
    return 1;
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentSetColor4AtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, char *a3, char a4, __n128 a5)
{
  v21 = a5;
  v36 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v9 = *(a1 + 6);
  if (v9 <= a2)
  {
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

    v26 = 789;
    v27 = 2048;
    v28 = a2;
    v29 = 2048;
    v30 = v9;
    _os_log_send_and_compose_impl(v17, &v22, &v31, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21, *(&v21 + 1));
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(a1 + 8) + 32 * a2;
  v11 = *v10;
  if ((*v10 || (v11 = *(v10 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v31, v11);
    ++*(v10 + 16);
    v12 = v31;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v10, v31);
    *(v10 + 8) = 0;
    if (v12)
    {
    }
  }

  v9 = *(a1 + 6);
  if (v9 <= a2)
  {
LABEL_19:
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
    v28 = a2;
    v29 = 2048;
    v30 = v9;
    _os_log_send_and_compose_impl(v20, &v22, &v31, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21, *(&v21 + 1));
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 8) + 32 * a2;
  ++*(v13 + 16);
  v14 = *v13;
  v31 = v21;
  LOBYTE(v32) = a4;
  re::ecs2::SerializableMaterialParameterBlock::setColorGamut4F(v14, a3, &v31);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetColor4WithHandleAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, uint64_t a3, char a4, __n128 a5)
{
  v21 = a5;
  v36 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v9 = *(a1 + 6);
  if (v9 <= a2)
  {
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

    v26 = 789;
    v27 = 2048;
    v28 = a2;
    v29 = 2048;
    v30 = v9;
    _os_log_send_and_compose_impl(v17, &v22, &v31, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21, *(&v21 + 1));
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(a1 + 8) + 32 * a2;
  v11 = *v10;
  if ((*v10 || (v11 = *(v10 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v31, v11);
    ++*(v10 + 16);
    v12 = v31;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v10, v31);
    *(v10 + 8) = 0;
    if (v12)
    {
    }
  }

  v9 = *(a1 + 6);
  if (v9 <= a2)
  {
LABEL_19:
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
    v28 = a2;
    v29 = 2048;
    v30 = v9;
    _os_log_send_and_compose_impl(v20, &v22, &v31, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21, *(&v21 + 1));
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 8) + 32 * a2;
  ++*(v13 + 16);
  v14 = *v13;
  v31 = v21;
  LOBYTE(v32) = a4;
  re::ecs2::SerializableMaterialParameterBlock::setColorGamut4F(v14, (a3 + 24), &v31);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

re::MaterialParameterBlock *REMaterialParameterBlockArrayComponentGetColor4AtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, const char *a3, _OWORD *a4, _BYTE *a5)
{
  v41 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v10 = *(a1 + 6);
  if (v10 <= a2)
  {
    *v28 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v20 = MEMORY[0x1E69E9C10];
    *v31 = 136315906;
    *&v31[4] = "operator[]";
    *&v31[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    *&v31[14] = 789;
    v32 = 2048;
    v33 = a2;
    v34 = 2048;
    v35 = v10;
    _os_log_send_and_compose_impl(v21, v28, &v36, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v31, 38);
    _os_crash_msg();
    __break(1u);
LABEL_30:
    v30 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v22 = MEMORY[0x1E69E9C10];
    v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v31 = 136315906;
    *&v31[4] = "operator[]";
    *&v31[12] = 1024;
    if (v23)
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    *&v31[14] = 789;
    v32 = 2048;
    v33 = a2;
    v34 = 2048;
    v35 = v10;
    _os_log_send_and_compose_impl(v24, &v30, &v36, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v31, 38, *v28, *&v28[8]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_34;
  }

  v11 = *(a1 + 8) + 32 * a2;
  v12 = *v11;
  if (!*v11)
  {
    v12 = *(v11 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::colorGamut4FValue(v12, a3, v28);
  if (v28[0] == 1)
  {
    *a4 = *&v28[4];
    v13 = v29;
LABEL_10:
    *a5 = v13;
    return 1;
  }

  v10 = *(a1 + 6);
  if (v10 <= a2)
  {
    goto LABEL_30;
  }

  v15 = *(a1 + 8) + 32 * a2;
  v16 = *v15;
  if (!*v15)
  {
    v16 = *(v15 + 8);
  }

  v17 = re::ecs2::SerializableMaterialParameterBlock::valueType(v16, a3);
  if (v17 != 21 && v17 != 0)
  {
    return 0;
  }

  v10 = *(a1 + 11);
  if (v10 <= a2)
  {
LABEL_34:
    v30 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v25 = MEMORY[0x1E69E9C10];
    v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v31 = 136315906;
    *&v31[4] = "operator[]";
    *&v31[12] = 1024;
    if (v26)
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    *&v31[14] = 789;
    v32 = 2048;
    v33 = a2;
    v34 = 2048;
    v35 = v10;
    _os_log_send_and_compose_impl(v27, &v30, &v36, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v31, 38, *v28, *&v28[8]);
    _os_crash_msg();
    __break(1u);
  }

  v19 = *(a1 + 13);
  result = *(v19 + 8 * a2);
  if (!result)
  {
    return result;
  }

  re::MaterialParameterBlock::handle(&v36, result, a3);
  if ((BYTE12(v36) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v36, 21))
  {
    re::MaterialParameterBlock::colorGamut4FValue(*(v19 + 8 * a2), &v36, v31);
    *a4 = *v31;
    v13 = v31[16];
    goto LABEL_10;
  }

  return 0;
}

uint64_t REMaterialParameterBlockArrayComponentSetInt4AtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, char *a3, __n128 a4)
{
  v19 = a4;
  v34 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v7 = *(a1 + 6);
  if (v7 <= a2)
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
    v26 = a2;
    v27 = 2048;
    v28 = v7;
    _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19.n128_u64[0], v19.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a1 + 8) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v29, v9);
    ++*(v8 + 16);
    v10 = v29.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v29.n128_i64[0]);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  v7 = *(a1 + 6);
  if (v7 <= a2)
  {
LABEL_17:
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
    v26 = a2;
    v27 = 2048;
    v28 = v7;
    _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19.n128_u64[0], v19.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 8) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  v29 = v19;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v12, a3, 6, &v29);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetInt4WithHandleAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v19 = a4;
  v34 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v7 = *(a1 + 6);
  if (v7 <= a2)
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
    v26 = a2;
    v27 = 2048;
    v28 = v7;
    _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19.n128_u64[0], v19.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a1 + 8) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v29, v9);
    ++*(v8 + 16);
    v10 = v29.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v29.n128_i64[0]);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  v7 = *(a1 + 6);
  if (v7 <= a2)
  {
LABEL_17:
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
    v26 = a2;
    v27 = 2048;
    v28 = v7;
    _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19.n128_u64[0], v19.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 8) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  v29 = v19;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v12, (a3 + 24), 6, &v29);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

re::MaterialParameterBlock *REMaterialParameterBlockArrayComponentGetInt4AtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, const char *a3, _OWORD *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    v19[0] = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v15, v19, &v30, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::int4Value(v10, a3, v19);
  if (LOBYTE(v19[0]) == 1)
  {
    v11 = v20;
LABEL_10:
    *a4 = v11;
    return 1;
  }

  v8 = *(a1 + 11);
  if (v8 <= a2)
  {
LABEL_22:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v18, &v21, &v30, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v19[0], v19[1]);
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 13);
  result = *(v13 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(&v30, result, a3);
    if ((BYTE12(v30) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v30, 6))
    {
      v11 = *re::ShaderGraphMaterial::getConstant(*(v13 + 8 * a2), &v30);
      goto LABEL_10;
    }

    return 0;
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentSetUInt4AtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, char *a3, __n128 a4)
{
  v19 = a4;
  v34 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v7 = *(a1 + 6);
  if (v7 <= a2)
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
    v26 = a2;
    v27 = 2048;
    v28 = v7;
    _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19.n128_u64[0], v19.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a1 + 8) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v29, v9);
    ++*(v8 + 16);
    v10 = v29.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v29.n128_i64[0]);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  v7 = *(a1 + 6);
  if (v7 <= a2)
  {
LABEL_17:
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
    v26 = a2;
    v27 = 2048;
    v28 = v7;
    _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19.n128_u64[0], v19.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 8) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  v29 = v19;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v12, a3, 10, &v29);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetUInt4WithHandleAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v19 = a4;
  v34 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v7 = *(a1 + 6);
  if (v7 <= a2)
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
    v26 = a2;
    v27 = 2048;
    v28 = v7;
    _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19.n128_u64[0], v19.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a1 + 8) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v29, v9);
    ++*(v8 + 16);
    v10 = v29.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v29.n128_i64[0]);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  v7 = *(a1 + 6);
  if (v7 <= a2)
  {
LABEL_17:
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
    v26 = a2;
    v27 = 2048;
    v28 = v7;
    _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19.n128_u64[0], v19.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 8) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  v29 = v19;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v12, (a3 + 24), 10, &v29);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

re::MaterialParameterBlock *REMaterialParameterBlockArrayComponentGetUInt4AtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, const char *a3, _OWORD *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    v19[0] = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v15, v19, &v30, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::uint4Value(v10, a3, v19);
  if (LOBYTE(v19[0]) == 1)
  {
    v11 = v20;
LABEL_10:
    *a4 = v11;
    return 1;
  }

  v8 = *(a1 + 11);
  if (v8 <= a2)
  {
LABEL_22:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v18, &v21, &v30, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v19[0], v19[1]);
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 13);
  result = *(v13 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(&v30, result, a3);
    if ((BYTE12(v30) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v30, 10))
    {
      v11 = *re::ShaderGraphMaterial::getConstant(*(v13 + 8 * a2), &v30);
      goto LABEL_10;
    }

    return 0;
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentSetFloat2x2AtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, char *a3, double a4, double a5)
{
  v37 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v10 = *(a1 + 6);
  if (v10 <= a2)
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
    v29 = a2;
    v30 = 2048;
    v31 = v10;
    _os_log_send_and_compose_impl(v18, &v23, &v32, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v22);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v11 = *(a1 + 8) + 32 * a2;
  v12 = *v11;
  if ((*v11 || (v12 = *(v11 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v32, v12);
    ++*(v11 + 16);
    v13 = v32;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v11, v32);
    *(v11 + 8) = 0;
    if (v13)
    {
    }
  }

  v10 = *(a1 + 6);
  if (v10 <= a2)
  {
LABEL_17:
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
    v29 = a2;
    v30 = 2048;
    v31 = v10;
    _os_log_send_and_compose_impl(v21, &v23, &v32, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v22);
    _os_crash_msg();
    __break(1u);
  }

  v14 = *(a1 + 8) + 32 * a2;
  ++*(v14 + 16);
  v15 = *v14;
  *&v32 = a4;
  *(&v32 + 1) = a5;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v15, a3, 48, &v32);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetFloat2x2WithHandleAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, uint64_t a3, double a4, double a5)
{
  v37 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v10 = *(a1 + 6);
  if (v10 <= a2)
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
    v29 = a2;
    v30 = 2048;
    v31 = v10;
    _os_log_send_and_compose_impl(v18, &v23, &v32, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v22);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v11 = *(a1 + 8) + 32 * a2;
  v12 = *v11;
  if ((*v11 || (v12 = *(v11 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v32, v12);
    ++*(v11 + 16);
    v13 = v32;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v11, v32);
    *(v11 + 8) = 0;
    if (v13)
    {
    }
  }

  v10 = *(a1 + 6);
  if (v10 <= a2)
  {
LABEL_17:
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
    v29 = a2;
    v30 = 2048;
    v31 = v10;
    _os_log_send_and_compose_impl(v21, &v23, &v32, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v22);
    _os_crash_msg();
    __break(1u);
  }

  v14 = *(a1 + 8) + 32 * a2;
  ++*(v14 + 16);
  v15 = *v14;
  *&v32 = a4;
  *(&v32 + 1) = a5;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v15, (a3 + 24), 48, &v32);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentGetFloat2x2AtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, const char *a3, void *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    v19 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v26 = 789;
    v27 = 2048;
    v28 = a2;
    v29 = 2048;
    v30 = v8;
    _os_log_send_and_compose_impl(v15, &v19, &v31, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::matrix2x2FValue(v10, a3, &v19);
  if (v19 == 1)
  {
    v11 = v21;
    *a4 = v20;
    a4[1] = v11;
    return 1;
  }

  v8 = *(a1 + 11);
  if (v8 <= a2)
  {
LABEL_22:
    v22 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 136315906;
    v24 = "operator[]";
    v25 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v26 = 789;
    v27 = 2048;
    v28 = a2;
    v29 = 2048;
    v30 = v8;
    _os_log_send_and_compose_impl(v18, &v22, &v31, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v19, v20);
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 13);
  result = *(v13 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(&v31, result, a3);
    if ((BYTE12(v31) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v31, 48))
    {
      *a4 = *re::ShaderGraphMaterial::getConstant(*(v13 + 8 * a2), &v31);
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentSetFloat3x3AtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, char *a3, __n128 a4, __n128 a5, __n128 a6)
{
  v21 = a4;
  v38 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v9 = *(a1 + 6);
  if (v9 <= a2)
  {
    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v28 = 789;
    v29 = 2048;
    v30 = a2;
    v31 = 2048;
    v32 = v9;
    _os_log_send_and_compose_impl(v17, &v24, &v33, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v21.n128_u64[0], v21.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v10 = *(a1 + 8) + 32 * a2;
  v11 = *v10;
  if ((*v10 || (v11 = *(v10 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v33, v11);
    ++*(v10 + 16);
    v12 = v33.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v10, v33.n128_i64[0]);
    *(v10 + 8) = 0;
    if (v12)
    {
    }
  }

  v9 = *(a1 + 6);
  if (v9 <= a2)
  {
LABEL_17:
    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v28 = 789;
    v29 = 2048;
    v30 = a2;
    v31 = 2048;
    v32 = v9;
    _os_log_send_and_compose_impl(v20, &v24, &v33, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v21.n128_u64[0], v21.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 8) + 32 * a2;
  ++*(v13 + 16);
  v14 = *v13;
  v33 = v21;
  v34 = a5;
  v35 = a6;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v14, a3, 49, &v33);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetFloat3x3WithHandleAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6)
{
  v21 = a4;
  v38 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v9 = *(a1 + 6);
  if (v9 <= a2)
  {
    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v28 = 789;
    v29 = 2048;
    v30 = a2;
    v31 = 2048;
    v32 = v9;
    _os_log_send_and_compose_impl(v17, &v24, &v33, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v21.n128_u64[0], v21.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v10 = *(a1 + 8) + 32 * a2;
  v11 = *v10;
  if ((*v10 || (v11 = *(v10 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v33, v11);
    ++*(v10 + 16);
    v12 = v33.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v10, v33.n128_i64[0]);
    *(v10 + 8) = 0;
    if (v12)
    {
    }
  }

  v9 = *(a1 + 6);
  if (v9 <= a2)
  {
LABEL_17:
    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v28 = 789;
    v29 = 2048;
    v30 = a2;
    v31 = 2048;
    v32 = v9;
    _os_log_send_and_compose_impl(v20, &v24, &v33, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v21.n128_u64[0], v21.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
  }

  v13 = *(a1 + 8) + 32 * a2;
  ++*(v13 + 16);
  v14 = *v13;
  v33 = v21;
  v34 = a5;
  v35 = a6;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v14, (a3 + 24), 49, &v33);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentGetFloat3x3AtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, const char *a3, uint64_t a4)
{
  v48 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    *v36 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v22 = MEMORY[0x1E69E9C10];
    v29 = 136315906;
    v30 = "operator[]";
    v31 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    *v32 = 789;
    *&v32[4] = 2048;
    *&v32[6] = a2;
    v33 = 2048;
    *v34 = v8;
    _os_log_send_and_compose_impl(v23, v36, &v43, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v29, 38, v27, v28);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::matrix3x3FValue(v10, a3, &v29);
  if (v29 == 1)
  {
    v11 = *&v32[2];
    v12 = *&v34[2];
    v13 = v35;
    *(a4 + 8) = *&v32[10];
    *a4 = v11;
    *(a4 + 24) = DWORD2(v12);
    *(a4 + 16) = v12;
    *(a4 + 40) = DWORD2(v13);
    *(a4 + 32) = v13;
    return 1;
  }

  v8 = *(a1 + 11);
  if (v8 <= a2)
  {
LABEL_22:
    v28 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v24 = MEMORY[0x1E69E9C10];
    v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v36 = 136315906;
    *&v36[4] = "operator[]";
    v37 = 1024;
    if (v25)
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v38 = 789;
    v39 = 2048;
    v40 = a2;
    v41 = 2048;
    v42 = v8;
    _os_log_send_and_compose_impl(v26, &v28, &v43, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v36, 38, v27);
    _os_crash_msg();
    __break(1u);
  }

  v15 = *(a1 + 13);
  result = *(v15 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(&v43, result, a3);
    if ((BYTE12(v43) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v43, 49))
    {
      Constant = re::ShaderGraphMaterial::getConstant(*(v15 + 8 * a2), &v43);
      v17 = *(Constant + 8);
      v18 = *(Constant + 24);
      v19 = *(Constant + 16);
      v20 = *(Constant + 40);
      v21 = *(Constant + 32);
      *a4 = *Constant;
      *(a4 + 8) = v17;
      *(a4 + 16) = v19;
      *(a4 + 24) = v18;
      *(a4 + 32) = v21;
      *(a4 + 40) = v20;
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentSetFloat4x4AtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, char *a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v22 = a4;
  v40 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v10 = *(a1 + 6);
  if (v10 <= a2)
  {
    v26 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v27 = 136315906;
    v28 = "operator[]";
    v29 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v30 = 789;
    v31 = 2048;
    v32 = a2;
    v33 = 2048;
    v34 = v10;
    _os_log_send_and_compose_impl(v18, &v26, &v35, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v22.n128_u64[0], v22.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v11 = *(a1 + 8) + 32 * a2;
  v12 = *v11;
  if ((*v11 || (v12 = *(v11 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v35, v12);
    ++*(v11 + 16);
    v13 = v35.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v11, v35.n128_i64[0]);
    *(v11 + 8) = 0;
    if (v13)
    {
    }
  }

  v10 = *(a1 + 6);
  if (v10 <= a2)
  {
LABEL_17:
    v26 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v27 = 136315906;
    v28 = "operator[]";
    v29 = 1024;
    if (v20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v30 = 789;
    v31 = 2048;
    v32 = a2;
    v33 = 2048;
    v34 = v10;
    _os_log_send_and_compose_impl(v21, &v26, &v35, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v22.n128_u64[0], v22.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
  }

  v14 = *(a1 + 8) + 32 * a2;
  ++*(v14 + 16);
  v15 = *v14;
  v35 = v22;
  v36 = a5;
  v37 = a6;
  v38 = a7;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v15, a3, 50, &v35);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentSetFloat4x4WithHandleAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v22 = a4;
  v40 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v10 = *(a1 + 6);
  if (v10 <= a2)
  {
    v26 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v27 = 136315906;
    v28 = "operator[]";
    v29 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v30 = 789;
    v31 = 2048;
    v32 = a2;
    v33 = 2048;
    v34 = v10;
    _os_log_send_and_compose_impl(v18, &v26, &v35, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v22.n128_u64[0], v22.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v11 = *(a1 + 8) + 32 * a2;
  v12 = *v11;
  if ((*v11 || (v12 = *(v11 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v35, v12);
    ++*(v11 + 16);
    v13 = v35.n128_u64[0];
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v11, v35.n128_i64[0]);
    *(v11 + 8) = 0;
    if (v13)
    {
    }
  }

  v10 = *(a1 + 6);
  if (v10 <= a2)
  {
LABEL_17:
    v26 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v27 = 136315906;
    v28 = "operator[]";
    v29 = 1024;
    if (v20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v30 = 789;
    v31 = 2048;
    v32 = a2;
    v33 = 2048;
    v34 = v10;
    _os_log_send_and_compose_impl(v21, &v26, &v35, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v22.n128_u64[0], v22.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
  }

  v14 = *(a1 + 8) + 32 * a2;
  ++*(v14 + 16);
  v15 = *v14;
  v35 = v22;
  v36 = a5;
  v37 = a6;
  v38 = a7;
  re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(v15, (a3 + 24), 50, &v35);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

re::MaterialParameterBlock *REMaterialParameterBlockArrayComponentGetFloat4x4AtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, const char *a3, _OWORD *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    *v31 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    *v28 = 789;
    *&v28[4] = 2048;
    *&v28[6] = a2;
    *&v28[14] = 2048;
    *&v28[16] = v8;
    _os_log_send_and_compose_impl(v19, v31, &v38, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23, v24);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if (!*v9)
  {
    v10 = *(v9 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::matrix4x4FValue(v10, a3, &v25);
  if (v25 == 1)
  {
    v11 = *&v28[2];
    v12 = *&v28[18];
    v13 = v29;
    v14 = v30;
LABEL_10:
    *a4 = v11;
    a4[1] = v12;
    a4[2] = v13;
    a4[3] = v14;
    return 1;
  }

  v8 = *(a1 + 11);
  if (v8 <= a2)
  {
LABEL_22:
    v24 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v20 = MEMORY[0x1E69E9C10];
    v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v31 = 136315906;
    *&v31[4] = "operator[]";
    v32 = 1024;
    if (v21)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v33 = 789;
    v34 = 2048;
    v35 = a2;
    v36 = 2048;
    v37 = v8;
    _os_log_send_and_compose_impl(v22, &v24, &v38, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v31, 38, v23);
    _os_crash_msg();
    __break(1u);
  }

  v16 = *(a1 + 13);
  result = *(v16 + 8 * a2);
  if (result)
  {
    re::MaterialParameterBlock::handle(&v38, result, a3);
    if ((BYTE12(v38) & 7) != 0 && re::MaterialParameterHandle::isParameterType(&v38, 50))
    {
      Constant = re::ShaderGraphMaterial::getConstant(*(v16 + 8 * a2), &v38);
      v11 = *Constant;
      v12 = Constant[1];
      v13 = Constant[2];
      v14 = Constant[3];
      goto LABEL_10;
    }

    return 0;
  }

  return result;
}

void REMaterialParameterBlockArrayComponentSetTextureAtIndexFromAsset(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, char *a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a4, &v19);
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v7 = *(a1 + 6);
  if (v7 <= a2)
  {
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v13 = MEMORY[0x1E69E9C10];
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v14)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v7;
    _os_log_send_and_compose_impl(v15, &v21, &v30, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v19, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a1 + 8) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v30, v9);
    ++*(v8 + 16);
    v10 = v30;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v30);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  v7 = *(a1 + 6);
  if (v7 <= a2)
  {
LABEL_17:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v7;
    _os_log_send_and_compose_impl(v18, &v21, &v30, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v19, v20);
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 8) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  re::AssetHandle::AssetHandle(&v30, &v19);
  re::ecs2::SerializableMaterialParameterBlock::setTexture(v12, a3, &v30);
  re::AssetHandle::~AssetHandle(&v30);
  re::ecs2::Component::enqueueMarkDirty(a1);
  re::AssetHandle::~AssetHandle(&v19);
}

void REMaterialParameterBlockArrayComponentSetTextureWithHandleAtIndexFromAsset(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a4, &v19);
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v7 = *(a1 + 6);
  if (v7 <= a2)
  {
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v13 = MEMORY[0x1E69E9C10];
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v14)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v7;
    _os_log_send_and_compose_impl(v15, &v21, &v30, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v19, v20);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a1 + 8) + 32 * a2;
  v9 = *v8;
  if ((*v8 || (v9 = *(v8 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v30, v9);
    ++*(v8 + 16);
    v10 = v30;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v8, v30);
    *(v8 + 8) = 0;
    if (v10)
    {
    }
  }

  v7 = *(a1 + 6);
  if (v7 <= a2)
  {
LABEL_17:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v7;
    _os_log_send_and_compose_impl(v18, &v21, &v30, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v19, v20);
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 8) + 32 * a2;
  ++*(v11 + 16);
  v12 = *v11;
  re::AssetHandle::AssetHandle(&v30, &v19);
  re::ecs2::SerializableMaterialParameterBlock::setTexture(v12, (a3 + 24), &v30);
  re::AssetHandle::~AssetHandle(&v30);
  re::ecs2::Component::enqueueMarkDirty(a1);
  re::AssetHandle::~AssetHandle(&v19);
}

uint64_t REMaterialParameterBlockArrayComponentGetTextureAssetAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, const char *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v6 = *(a1 + 6);
  if (v6 <= a2)
  {
    v14 = 0;
    memset(v22, 0, sizeof(v22));
    v11 = MEMORY[0x1E69E9C10];
    *v15 = 136315906;
    *&v15[4] = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v17 = 789;
    v18 = 2048;
    v19 = a2;
    v20 = 2048;
    v21 = v6;
    _os_log_send_and_compose_impl(v12, &v14, v22, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v15, 38, v13);
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(a1 + 8) + 32 * a2;
  v8 = *v7;
  if (!*v7)
  {
    v8 = *(v7 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::textureValue(v8, a3, v22);
  if (LOBYTE(v22[0]) != 1)
  {
    return 0;
  }

  re::AssetHandle::AssetHandle(v15, (v22 + 8));
  v9 = *v15;
  re::AssetHandle::~AssetHandle(v15);
  if (v22[0])
  {
    re::AssetHandle::~AssetHandle((v22 + 8));
  }

  return v9;
}

uint64_t REMaterialParameterBlockArrayComponentSetBufferDataAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, char *a3, const void *a4, unint64_t a5)
{
  v41 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_impl();
  if (!result)
  {
    return result;
  }

  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  __dst = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v25 = 0;
  re::DynamicArray<BOOL>::resize(&v22, a5);
  memcpy(__dst, a4, a5);
  v11 = *(a1 + 6);
  if (v11 <= a2)
  {
    v27 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v28 = 136315906;
    v29 = "operator[]";
    v30 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v31 = 789;
    v32 = 2048;
    v33 = a2;
    v34 = 2048;
    v35 = v11;
    _os_log_send_and_compose_impl(v18, &v27, &v36, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v22, v23);
    _os_crash_msg();
    __break(1u);
    goto LABEL_21;
  }

  v12 = *(a1 + 8) + 32 * a2;
  v13 = *v12;
  if ((*v12 || (v13 = *(v12 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v36, v13);
    ++*(v12 + 16);
    v14 = v36;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v12, v36);
    *(v12 + 8) = 0;
    if (v14)
    {
    }
  }

  v11 = *(a1 + 6);
  if (v11 <= a2)
  {
LABEL_21:
    v27 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v28 = 136315906;
    v29 = "operator[]";
    v30 = 1024;
    if (v20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v31 = 789;
    v32 = 2048;
    v33 = a2;
    v34 = 2048;
    v35 = v11;
    _os_log_send_and_compose_impl(v21, &v27, &v36, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v22, v23);
    _os_crash_msg();
    __break(1u);
  }

  v15 = *(a1 + 8) + 32 * a2;
  ++*(v15 + 16);
  re::ecs2::SerializableMaterialParameterBlock::setBufferData(*v15, a3, &v22);
  re::ecs2::Component::enqueueMarkDirty(a1);
  result = v22;
  if (v22)
  {
    if (__dst)
    {
      return (*(*v22 + 40))();
    }
  }

  return result;
}

void REMaterialParameterBlockArrayComponentSetSamplerAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, char *a3, void *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a4;
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
    v23 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v15 = MEMORY[0x1E69E9C10];
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v27 = 789;
    v28 = 2048;
    v29 = a2;
    v30 = 2048;
    v31 = v8;
    _os_log_send_and_compose_impl(v16, &v23, &v32, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v20, v21);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if ((*v9 || (v10 = *(v9 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v32, v10);
    ++*(v9 + 16);
    v11 = v32;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v9, v32);
    *(v9 + 8) = 0;
    if (v11)
    {
    }
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
LABEL_19:
    v23 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v27 = 789;
    v28 = 2048;
    v29 = a2;
    v30 = 2048;
    v31 = v8;
    _os_log_send_and_compose_impl(v19, &v23, &v32, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v20, v21);
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1 + 8) + 32 * a2;
  ++*(v12 + 16);
  v13 = *v12;
  v21 = v7;
  v14 = v7;
  re::MaterialSamplerData::fromDescriptor(&v21, &v32);
  re::OptionalMaterialSamplerData::OptionalMaterialSamplerData(v22, &v32);
  re::ecs2::SerializableMaterialParameterBlock::setSampler(v13, a3, v22);
  if (v7)
  {
  }

  re::ecs2::Component::enqueueMarkDirty(a1);
}

id REMaterialParameterBlockArrayComponentCopySamplerAtIndex(uint64_t a1, unint64_t a2, char *a3)
{
  if (*(a1 + 48) <= a2)
  {
    goto LABEL_7;
  }

  v3 = *(a1 + 64) + 32 * a2;
  v4 = *v3;
  if (!*v3)
  {
    v4 = *(v3 + 8);
  }

  re::ecs2::SerializableMaterialParameterBlock::samplerValue(v4, a3, v9);
  if (v9[0] == 1)
  {
    re::OptionalMaterialSamplerData::makeSamplerData(v7, &v10);
    re::MaterialSamplerData::makeDescriptor(&v8, v7);
    v5 = v8;
    if (v8)
    {
    }
  }

  else
  {
LABEL_7:
    v5 = 0;
  }

  return v5;
}

uint64_t REMaterialParameterBlockArrayComponentBindTextureToSamplerWithDefaultArrayAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, const char *a3, const char *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
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
    v26 = a2;
    v27 = 2048;
    v28 = v8;
    _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if ((*v9 || (v10 = *(v9 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v29, v10);
    ++*(v9 + 16);
    v11 = v29;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v9, v29);
    *(v9 + 8) = 0;
    if (v11)
    {
    }
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
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
    v26 = a2;
    v27 = 2048;
    v28 = v8;
    _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1 + 8) + 32 * a2;
  ++*(v12 + 16);
  re::ecs2::SerializableMaterialParameterBlock::bindTextureToSampler(*v12, a3, a4);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentGetSamplerNameBoundToTexture(uint64_t a1, unint64_t a2, char *a3)
{
  if (*(a1 + 48) <= a2)
  {
    return 0;
  }

  v3 = *(a1 + 64) + 32 * a2;
  v4 = *v3;
  if (!*v3)
  {
    v4 = *(v3 + 8);
  }

  return re::ecs2::SerializableMaterialParameterBlock::tryGetSamplerNameBoundToTexture(v4, a3);
}

void REMaterialParameterBlockArrayComponentSetUVIndexForTextureAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, const char *a3, unsigned int a4)
{
  v34 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
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
    v26 = a2;
    v27 = 2048;
    v28 = v8;
    _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if ((*v9 || (v10 = *(v9 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v29, v10);
    ++*(v9 + 16);
    v11 = v29;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v9, v29);
    *(v9 + 8) = 0;
    if (v11)
    {
    }
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
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
    v26 = a2;
    v27 = 2048;
    v28 = v8;
    _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1 + 8) + 32 * a2;
  ++*(v12 + 16);
  v13 = *v12;

  re::ecs2::SerializableMaterialParameterBlock::setUVIndexForTexture(v13, a3, a4);
}

uint64_t REMaterialParameterBlockArrayComponentGetUVIndexForTextureAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, const char *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v6 = *(a1 + 6);
  if (v6 <= a2)
  {
    v13 = 0;
    memset(v22, 0, sizeof(v22));
    v10 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v17 = 789;
    v18 = 2048;
    v19 = a2;
    v20 = 2048;
    v21 = v6;
    _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(a1 + 8) + 32 * a2;
  v8 = *v7;
  if (!*v7)
  {
    v8 = *(v7 + 8);
  }

  return re::ecs2::SerializableMaterialParameterBlock::uvIndexForTexture(v8, a3);
}

uint64_t REMaterialParameterBlockArrayComponentSerializeToFile(_anonymous_namespace_ *a1, unint64_t a2, uint64_t a3, re::FileStreamWriter *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a3, v39);
  re::AssetHandle::AssetHandle(v28, v39);
  re::ecs2::MaterialParameterBlockArrayComponent::createFlattenedMaterialFileFromBlock(a1, a2, v28, &v29);
  re::AssetHandle::~AssetHandle(v28);
  v7 = re::FileStreamWriter::open(&v23, a4);
  if (v23)
  {
    {
      if (v7)
      {
        re::introspect<re::MaterialFile>(BOOL)::info = re::introspect_MaterialFile(0, v18, v19, v20, v21, v22);
      }
    }

    v8 = re::introspect<re::MaterialFile>(BOOL)::info;
    v9 = re::globalAllocators(v7)[2];
    v40 = v8[2];
    v11 = re::serializeJson("object", &v24, v10, &v40, &v29, 0, v9);
    if (v11)
    {
      v12 = 1;
      goto LABEL_15;
    }

    v16 = *re::ecsCoreLogObjects(v11);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v40) = 136315138;
      *(&v40 + 4) = a4;
      _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "Failed to serialize material file to path %s", &v40, 0xCu);
    }
  }

  else
  {
    v13 = *re::ecsCoreLogObjects(v7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      re::formattedErrorMessage<re::DetailedError>(&v24, &v40);
      v15 = (BYTE8(v40) & 1) != 0 ? v41 : (&v40 + 9);
      *buf = 136315138;
      v43 = v15;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);

      if (v40)
      {
        if (BYTE8(v40))
        {
          (*(*v40 + 40))();
        }
      }
    }
  }

  v12 = 0;
LABEL_15:
  if (v23 == 1)
  {
    if (v25 && v26 == 1)
    {
      fclose(v25);
    }
  }

  else if (v26 && (v27 & 1) != 0)
  {
    (*(*v26 + 40))();
  }

  re::DynamicArray<re::FunctionLink>::deinit(&v38);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v37);
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v36);
  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v35);
  re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v34);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v33);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v32);
  re::AssetHandle::~AssetHandle(&v31);
  if (v29 && (v30 & 1) != 0)
  {
    (*(*v29 + 40))();
  }

  re::AssetHandle::~AssetHandle(v39);
  return v12;
}

size_t REMaterialParameterBlockArrayComponentHashTechniqueName(const char *a1)
{
  v3[2] = *MEMORY[0x1E69E9840];
  result = strlen(a1);
  if (result)
  {
    MurmurHash3_x64_128(a1, result, 0, v3);
    return (v3[1] + (v3[0] << 6) + (v3[0] >> 2) - 0x61C8864680B583E9) ^ v3[0];
  }

  return result;
}

uint64_t REMaterialParameterBlockArrayComponentAddHashedPassTechniqueMappingAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, const char *a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = strlen(a3);
  if (v8)
  {
    MurmurHash3_x64_128(a3, v8, 0, &v31);
    v9 = (*(&v31 + 1) + (v31 << 6) + (v31 >> 2) - 0x61C8864680B583E9) ^ v31;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 6);
  if (v10 <= a2)
  {
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

    v26 = 789;
    v27 = 2048;
    v28 = a2;
    v29 = 2048;
    v30 = v10;
    _os_log_send_and_compose_impl(v17, &v22, &v31, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(a1 + 8) + 32 * a2;
  v12 = *v11;
  if ((*v11 || (v12 = *(v11 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v31, v12);
    ++*(v11 + 16);
    v13 = v31;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v11, v31);
    *(v11 + 8) = 0;
    if (v13)
    {
    }
  }

  v10 = *(a1 + 6);
  if (v10 <= a2)
  {
LABEL_20:
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
    v28 = a2;
    v29 = 2048;
    v30 = v10;
    _os_log_send_and_compose_impl(v20, &v22, &v31, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
    _os_crash_msg();
    __break(1u);
  }

  v14 = *(a1 + 8) + 32 * a2;
  ++*(v14 + 16);
  re::ecs2::SerializableMaterialParameterBlock::addPassTechniqueMapping(*v14, v9, a4);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentAddPassTechniqueMappingAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, const char *a3, char *__s)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v8 = strlen(__s);
  if (v8)
  {
    MurmurHash3_x64_128(__s, v8, 0, v11);
    v9 = (v11[1] + (v11[0] << 6) + (v11[0] >> 2) - 0x61C8864680B583E9) ^ v11[0];
  }

  else
  {
    v9 = 0;
  }

  return REMaterialParameterBlockArrayComponentAddHashedPassTechniqueMappingAtIndex(a1, a2, a3, v9);
}

uint64_t REMaterialParameterBlockArrayComponentRemovePassTechniqueMappingAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, const char *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v6 = strlen(a3);
  if (v6)
  {
    MurmurHash3_x64_128(a3, v6, 0, &v29);
    v7 = (*(&v29 + 1) + (v29 << 6) + (v29 >> 2) - 0x61C8864680B583E9) ^ v29;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
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
    v26 = a2;
    v27 = 2048;
    v28 = v8;
    _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
    goto LABEL_20;
  }

  v9 = *(a1 + 8) + 32 * a2;
  v10 = *v9;
  if ((*v9 || (v10 = *(v9 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v29, v10);
    ++*(v9 + 16);
    v11 = v29;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v9, v29);
    *(v9 + 8) = 0;
    if (v11)
    {
    }
  }

  v8 = *(a1 + 6);
  if (v8 <= a2)
  {
LABEL_20:
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
    v26 = a2;
    v27 = 2048;
    v28 = v8;
    _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(a1 + 8) + 32 * a2;
  ++*(v12 + 16);
  re::ecs2::SerializableMaterialParameterBlock::markPassTechniqueMappingRemoved(*v12, v7);
  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentGetHashedPassTechniqueMappingAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, re::MaterialParameterBlock *a2, const char *a3, void *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v8 = strlen(a3);
  if (v8)
  {
    MurmurHash3_x64_128(a3, v8, 0, &v30);
    v9 = (*(&v30 + 1) + (v30 << 6) + (v30 >> 2) - 0x61C8864680B583E9) ^ v30;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 6);
  if (v10 <= a2)
  {
    v19 = 0;
    v34 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v10;
    _os_log_send_and_compose_impl(v15, &v19, &v30, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v18);
    _os_crash_msg();
    __break(1u);
LABEL_24:
    v21 = 0;
    v34 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    a4 = MEMORY[0x1E69E9C10];
    v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v16)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v10;
    _os_log_send_and_compose_impl(v17, &v21, &v30, 80, &dword_1E1C61000, a4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v18, v19);
    _os_crash_msg();
    __break(1u);
LABEL_28:
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
    goto LABEL_16;
  }

  v11 = (*(a1 + 8) + 32 * a2);
  v12 = *v11;
  if (!*v11)
  {
    v12 = v11[1];
  }

  re::ecs2::SerializableMaterialParameterBlock::tryGetPassTechniqueMapping(v12, v9, &v19);
  if (v19 == 1)
  {
    result = &v20;
LABEL_17:
    *a4 = *result;
    return 1;
  }

  v10 = *(a1 + 11);
  if (v10 <= a2)
  {
    goto LABEL_24;
  }

  a2 = *(*(a1 + 13) + 8 * a2);
  if (!a2)
  {
    return 0;
  }

  if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
  {
    goto LABEL_28;
  }

LABEL_16:
  result = re::MaterialParameterBlock::tryGetPassTechniqueMapping(a2, v9, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
  if (result)
  {
    goto LABEL_17;
  }

  return result;
}

unsigned __int8 *getBinding(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, const char *a3, int a4, void *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v10 = *(a1 + 6);
  if (v10 <= a2)
  {
    v18 = 0;
    memset(v27, 0, sizeof(v27));
    v15 = MEMORY[0x1E69E9C10];
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v22 = 789;
    v23 = 2048;
    v24 = a2;
    v25 = 2048;
    v26 = v10;
    _os_log_send_and_compose_impl(v16, &v18, v27, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 8) + 32 * a2;
  v12 = *v11;
  if (!*v11)
  {
    v12 = *(v11 + 8);
  }

  result = re::ecs2::SerializableMaterialParameterBlock::parameterBinding(v12, a3);
  if (result)
  {
    if (*result == a4)
    {
      v14 = *(result + 4);
      *a5 = *(result + 2);
      a5[1] = v14;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t setBinding(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, const char *a3, char *a4, char *a5, unsigned int a6)
{
  v38 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v12 = *(a1 + 6);
  if (v12 <= a2)
  {
    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v28 = 789;
    v29 = 2048;
    v30 = a2;
    v31 = 2048;
    v32 = v12;
    _os_log_send_and_compose_impl(v19, &v24, &v33, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v13 = *(a1 + 8) + 32 * a2;
  v14 = *v13;
  if ((*v13 || (v14 = *(v13 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v33, v14);
    ++*(v13 + 16);
    v15 = v33;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v13, v33);
    *(v13 + 8) = 0;
    if (v15)
    {
    }
  }

  v12 = *(a1 + 6);
  if (v12 <= a2)
  {
LABEL_19:
    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v20 = MEMORY[0x1E69E9C10];
    v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    if (v21)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v28 = 789;
    v29 = 2048;
    v30 = a2;
    v31 = 2048;
    v32 = v12;
    _os_log_send_and_compose_impl(v22, &v24, &v33, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
    _os_crash_msg();
    __break(1u);
  }

  v16 = *(a1 + 8) + 32 * a2;
  ++*(v16 + 16);
  re::ecs2::SerializableMaterialParameterBlock::setParameterBinding(*v16, a3, a6, a4, a5);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialParameterBlockArrayComponentRemoveBindingAtIndex(re::ecs2::MaterialParameterBlockArrayComponent *a1, unint64_t a2, char *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  re::ecs2::MaterialParameterBlockArrayComponent::upgradeBlocksToBlockHandles(a1);
  if (*(a1 + 6) <= a2)
  {
    re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(a1, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  if (*(a1 + 11) <= a2)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize(a1 + 72, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }

  v6 = *(a1 + 6);
  if (v6 <= a2)
  {
    v18 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    v12 = MEMORY[0x1E69E9C10];
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v22 = 789;
    v23 = 2048;
    v24 = a2;
    v25 = 2048;
    v26 = v6;
    _os_log_send_and_compose_impl(v13, &v18, &v27, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v7 = *(a1 + 8) + 32 * a2;
  v8 = *v7;
  if ((*v7 || (v8 = *(v7 + 8)) != 0) && (objc_isUniquelyReferenced() & 1) == 0)
  {
    re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(&v27, v8);
    ++*(v7 + 16);
    v9 = v27;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v7, v27);
    *(v7 + 8) = 0;
    if (v9)
    {
    }
  }

  v6 = *(a1 + 6);
  if (v6 <= a2)
  {
LABEL_19:
    v18 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (v15)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v22 = 789;
    v23 = 2048;
    v24 = a2;
    v25 = 2048;
    v26 = v6;
    _os_log_send_and_compose_impl(v16, &v18, &v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
    _os_crash_msg();
    __break(1u);
  }

  v10 = *(a1 + 8) + 32 * a2;
  ++*(v10 + 16);
  re::ecs2::SerializableMaterialParameterBlock::markParameterBindingRemoved(*v10, a3);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

re::ecs2::SerializableMaterialParameterBlock *re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock,re::ecs2::SerializableMaterialParameterBlock const&>(re *a1, const re::ecs2::SerializableMaterialParameterBlock *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 520, 8);
  result = re::ecs2::SerializableMaterialParameterBlock::SerializableMaterialParameterBlock(v5, a2);
  *a1 = result;
  return result;
}

uint64_t REPeerAttributionServiceGetContextCount(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return *(a1 + 124);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) The given REPeerAttributionService is null.", "service", "REPeerAttributionServiceGetContextCount", 7, v2, v3);
  result = _os_crash("assertion failure: (service) The given REPeerAttributionService is null.");
  __break(1u);
  return result;
}

unint64_t *REPeerAttributionServiceCreateOrGetContextWithPeerID(re::PeerAttributionService *a1, unint64_t a2)
{
  if (a1)
  {

    return re::PeerAttributionService::getOrCreateContextForPeerId(a1, a2);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) The given REPeerAttributionService is null.", "service", "REPeerAttributionServiceCreateOrGetContextWithPeerID", 14, v2, v3);
    result = _os_crash("assertion failure: (service) The given REPeerAttributionService is null.");
    __break(1u);
  }

  return result;
}

uint64_t REPeerAttributionServiceDestroyContext(re::PeerAttributionService *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      re::PeerAttributionService::destroyContext(a1, a2);
      return 1;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) The given REPeerAttributionService is null.", "service", "REPeerAttributionServiceDestroyContext", 21);
    _os_crash("assertion failure: (service) The given REPeerAttributionService is null.");
    __break(1u);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) The given REPeerAttributionContext is null.", "context", "REPeerAttributionServiceDestroyContext", 22);
  result = _os_crash("assertion failure: (context) The given REPeerAttributionContext is null.");
  __break(1u);
  return result;
}

uint64_t REPeerAttributionContextGetProfilerAttributionHandle(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return a1 + 16;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) The given REPeerAttributionContext is null.", "context", "REPeerAttributionContextGetProfilerAttributionHandle", 31, v2, v3);
  result = _os_crash("assertion failure: (context) The given REPeerAttributionContext is null.");
  __break(1u);
  return result;
}

uint64_t REAssetManagerMemoryAssetCreateWithRemotePlayer(uint64_t a1, void *a2)
{
  re::VideoAsset::makeVideoMutableMemoryAsset(a1, a2);
  v2 = v5[0];
  if (v5[0])
  {
    v3 = (v5[0] + 8);
  }

  re::AssetHandle::~AssetHandle(v5);
  return v2;
}

id REVideoAssetGetAVPlayer(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::loadedAsset<re::VideoAsset>(v4);
  if (v1)
  {
    v2 = re::VideoAsset::getAVPlayer(v1);
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v4);

  return v2;
}

id _RETestingVideoAssetGetInternalPlayer(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::loadedAsset<re::VideoAsset>(v4);
  if (v1)
  {
    v2 = re::VideoAsset::testingGetInternalAVPlayer(v1);
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v4);

  return v2;
}

uint64_t REAssetManagerMemoryAssetCreateWithAVSampleBufferVideoRenderer(re::VideoAsset *a1, AssetService *a2, AVSampleBufferVideoRenderer *a3)
{
  re::VideoAsset::makeVideoMutableMemoryAsset(a1, a2, a3);
  v3 = v6[0];
  if (v6[0])
  {
    v4 = (v6[0] + 8);
  }

  re::AssetHandle::~AssetHandle(v6);
  return v3;
}

id REVideoAssetGetAVSampleBufferVideoRenderer(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::loadedAsset<re::VideoAsset>(v4);
  if (v1)
  {
    v2 = re::VideoAsset::getAVSampleBufferVideoRenderer(v1);
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v4);

  return v2;
}

void REVideoAssetSetAVSampleBufferVideoRenderer(uint64_t a1, void *a2)
{
  v3 = a2;
  re::AssetAPIHelper::assetHandleCreate(a1, &v7);
  re::AssetHandle::loadNow(v8, 0);
  if (v8)
  {
    v4 = atomic_load(v8 + 224);
    if (v4 == 2)
    {
      re::AssetHandle::mutateAssetCommon(&v7);
      ++*(v8 + 69);
      v5 = re::AssetHandle::loadedAsset<re::VideoAsset>(&v7);
      if (v5)
      {
        re::VideoAsset::setAVSampleBufferVideoRenderer(v5, v3);
        v6 = v8;
        *(v8 + 256) = 1;
        re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v6);
        re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v8);
      }
    }
  }

  re::AssetHandle::~AssetHandle(&v7);
}

void REVideoAssetSetAVPlayer(uint64_t a1, void *a2)
{
  v3 = a2;
  re::AssetAPIHelper::assetHandleCreate(a1, &v7);
  re::AssetHandle::loadNow(v8, 0);
  if (v8)
  {
    v4 = atomic_load(v8 + 224);
    if (v4 == 2)
    {
      re::AssetHandle::mutateAssetCommon(&v7);
      ++*(v8 + 69);
      v5 = re::AssetHandle::loadedAsset<re::VideoAsset>(&v7);
      if (v5)
      {
        re::VideoAsset::setAVPlayer(v5, v3);
        v6 = v8;
        *(v8 + 256) = 1;
        re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v6);
        re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v8);
      }
    }
  }

  re::AssetHandle::~AssetHandle(&v7);
}

id REVideoAssetGetVideoReceiverID(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::loadedAsset<re::VideoAsset>(v4);
  if (v1)
  {
    v2 = re::VideoAsset::getReceiverEndpoint(v1);
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v4);

  return v2;
}

uint64_t REAssetManagerVideoMemoryAssetCreate(re::VideoAsset *a1, AssetService *a2)
{
  re::VideoAsset::makeVideoMutableMemoryAsset(a1);
  v2 = v5[0];
  if (v5[0])
  {
    v3 = (v5[0] + 8);
  }

  re::AssetHandle::~AssetHandle(v5);
  return v2;
}

uint64_t REAssetManagerVideoMemoryAssetCreateWithoutTarget(re::VideoAsset *a1, AssetService *a2)
{
  re::VideoAsset::makeVideoMutableMemoryAssetWithoutTarget(a1);
  v2 = v5[0];
  if (v5[0])
  {
    v3 = (v5[0] + 8);
  }

  re::AssetHandle::~AssetHandle(v5);
  return v2;
}

uint64_t REAssetManagerAVSampleBufferVideoRendererMemoryAssetCreate(re::VideoAsset *a1, AssetService *a2, AVSampleBufferVideoRenderer *a3)
{
  re::VideoAsset::makeVideoMutableMemoryAsset(a1, a2, a3);
  v3 = v6[0];
  if (v6[0])
  {
    v4 = (v6[0] + 8);
  }

  re::AssetHandle::~AssetHandle(v6);
  return v3;
}

void REAssetManagerPreloadVideoAssetOnce(uint64_t a1, uint64_t a2, char a3)
{
  re::AssetAPIHelper::assetHandleCreate(a2, v13);
  v6 = re::AssetHandle::loadedAsset<re::VideoAsset>(v13);
  if (v6)
  {
    v7 = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3321888768;
    v10[2] = __REAssetManagerPreloadVideoAssetOnce_block_invoke;
    v10[3] = &__block_descriptor_81_a8_40c22_ZTSN2re11AssetHandleE_e5_v8__0l;
    v10[4] = v6;
    v12 = a3;
    re::AssetHandle::AssetHandle(v11, v13);
    v9 = *(v7 + 112);
    v8 = (v7 + 112);
    v11[3] = a1;
    v11[4] = a2;
    if (v9 != -1)
    {
      dispatch_once(v8, v10);
    }

    re::AssetHandle::~AssetHandle(v11);
  }

  re::AssetHandle::~AssetHandle(v13);
}

void __REAssetManagerPreloadVideoAssetOnce_block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 948) = *(a1 + 80);
  re::AssetHandle::AssetHandle(v5, (a1 + 40));
  re::AssetHandle::payloadDidChangeIfPossible(v5);
  AssetRequest = REAssetManagerCreateAssetRequest(*(a1 + 64));
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __REAssetManagerPreloadVideoAssetOnce_block_invoke_2;
  v4[3] = &__block_descriptor_40_e8_v12__0B8l;
  v4[4] = AssetRequest;
  v3 = _Block_copy(v4);
  REAssetLoadRequestSetLoadAndWaitForResourceSharingClients(AssetRequest, 1, 1, 0);
  REAssetLoadRequestAddAsset(AssetRequest, *(a1 + 72));
  REAssetLoadRequestSetCompletionHandler(AssetRequest, v3);

  re::AssetHandle::~AssetHandle(v5);
}

void __REAssetManagerPreloadVideoAssetOnce_block_invoke_2(re *a1, int a2)
{
  v4 = *re::videoLogObjects(a1);
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "[REAssetManagerPreloadVideoAsset] Completed preloading video asset load request", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "[REAssetManagerPreloadVideoAsset] Failed to create an asset load request", v5, 2u);
  }
}

id REVideoAssetGetRemotePlayer(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::loadedAsset<re::VideoAsset>(v4);
  if (v1)
  {
    v2 = re::VideoAsset::getRemotePlayer(v1);
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v4);

  return v2;
}

void REVideoAssetSetRemotePlayer(uint64_t a1, void *a2)
{
  v3 = a2;
  re::AssetAPIHelper::assetHandleCreate(a1, &v7);
  re::AssetHandle::loadNow(v8, 0);
  if (v8)
  {
    v4 = atomic_load(v8 + 224);
    if (v4 == 2)
    {
      re::AssetHandle::mutateAssetCommon(&v7);
      ++*(v8 + 69);
      v5 = re::AssetHandle::loadedAsset<re::VideoAsset>(&v7);
      if (v5)
      {
        re::VideoAsset::setRemotePlayer(v5, v3);
        v6 = v8;
        *(v8 + 256) = 1;
        re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v6);
        re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v8);
      }
    }
  }

  re::AssetHandle::~AssetHandle(&v7);
}

void *REVideoComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

double REVideoAssetGetDimensions(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::loadedAsset<re::VideoAsset>(v4);
  if (v1)
  {
    v2 = COERCE_DOUBLE(re::VideoAsset::dimensions(v1));
  }

  else
  {
    v2 = 0.0;
  }

  re::AssetHandle::~AssetHandle(v4);
  return v2;
}

uint64_t REVideoAssetGetAudioInputMode(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::loadedAsset<re::VideoAsset>(v4);
  if (v1)
  {
    v2 = *(v1 + 24);
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v4);
  return v2;
}

void REVideoAssetSetAudioInputMode(uint64_t a1, char a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v6);
  re::AssetHandle::loadNow(v7, 0);
  if (v7)
  {
    v3 = atomic_load(v7 + 224);
    if (v3 == 2)
    {
      re::AssetHandle::mutateAssetCommon(&v6);
      ++*(v7 + 69);
      v4 = re::AssetHandle::loadedAsset<re::VideoAsset>(&v6);
      if (v4)
      {
        *(v4 + 24) = a2;
        v5 = v7;
        *(v7 + 256) = 1;
        re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v5);
        re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v7);
      }
    }
  }

  re::AssetManager::assetPayloadDidChange(*(v7 + 3), v7);
  re::AssetHandle::~AssetHandle(&v6);
}

float REVideoAssetGetReverbSendLevelDecibels(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::loadedAsset<re::VideoAsset>(v4);
  if (v1)
  {
    v2 = *(v1 + 28);
  }

  else
  {
    v2 = 0.0;
  }

  re::AssetHandle::~AssetHandle(v4);
  return v2;
}

void REVideoAssetSetReverbSendLevelDecibels(uint64_t a1, float a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v6);
  if (v7)
  {
    v3 = atomic_load(v7 + 224);
    if (v3 == 2)
    {
      re::AssetHandle::mutateAssetCommon(&v6);
      ++*(v7 + 69);
      v4 = re::AssetHandle::blockUntilLoaded<re::VideoAsset>(&v6);
      if (v4)
      {
        *(v4 + 28) = a2;
        v5 = v7;
        *(v7 + 256) = 1;
        re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v5);
        re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v7);
        re::AssetManager::assetPayloadDidChange(*(v7 + 3), v7);
      }
    }
  }

  re::AssetHandle::~AssetHandle(&v6);
}

void REVideoAssetSetFileAssetPlaybackMode(uint64_t a1, int a2)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v6);
  if (v7)
  {
    v3 = atomic_load(v7 + 224);
    if (v3 == 2)
    {
      re::AssetHandle::mutateAssetCommon(&v6);
      ++*(v7 + 69);
      v4 = re::AssetHandle::blockUntilLoaded<re::VideoAsset>(&v6);
      if (v4)
      {
        re::VideoAsset::updateAutoPlay(v4, a2, 0);
        v5 = v7;
        *(v7 + 256) = 1;
        re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v5);
        re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v7);
      }
    }
  }

  re::AssetHandle::~AssetHandle(&v6);
}

void REVideoAssetSetFileAssets(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a1, &v14);
  re::AssetHandle::loadNow(v15, 0);
  if (v15)
  {
    v5 = atomic_load(v15 + 224);
    if (v5 == 2)
    {
      re::AssetHandle::mutateAssetCommon(&v14);
      ++*(v15 + 69);
      v6 = re::AssetHandle::loadedAsset<re::VideoAsset>(&v14);
      if (v6)
      {
        v7 = v6;
        v20 = 0;
        memset(v18, 0, sizeof(v18));
        v19 = 0;
        if (a2)
        {
          while (1)
          {
            re::AssetAPIHelper::assetHandleCreate(*a3, &v16);
            if (!v17)
            {
              break;
            }

            v9 = *(v17 + 280);
            if (v9 != re::VideoFileAsset::assetType(v8))
            {
              goto LABEL_9;
            }

            re::DynamicArray<re::AssetHandle>::add(v18, &v16);
LABEL_13:
            re::AssetHandle::~AssetHandle(&v16);
            ++a3;
            if (!--a2)
            {
              goto LABEL_19;
            }
          }

          re::VideoFileAsset::assetType(v8);
LABEL_9:
          if (CoreRELog::onceToken != -1)
          {
            dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
          }

          v10 = CoreRELog::log;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v11 = re::AssetHandle::assetInfo(&v16);
            if (v11[17])
            {
              v12 = v11[18];
            }

            else
            {
              v12 = v11 + 137;
            }

            *buf = 136315138;
            v22 = v12;
            _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Not a video file asset: '%s'", buf, 0xCu);
          }

          goto LABEL_13;
        }

LABEL_19:
        re::DynamicArray<re::AssetHandle>::operator=((v7 + 144), v18);
        re::VideoAsset::updateAutoPlay(v7, *(v7 + 192), 0);
        re::DynamicArray<re::AssetHandle>::deinit(v18);
        v13 = v15;
        *(v15 + 256) = 1;
        re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v13);
        re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v15);
      }
    }
  }

  re::AssetManager::assetPayloadDidChange(*(v15 + 3), v15);
  re::AssetHandle::~AssetHandle(&v14);
}

uint64_t REVideoAssetGetFileAssetCount(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::loadedAsset<re::VideoAsset>(v4);
  if (v1)
  {
    v2 = *(v1 + 160);
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v4);
  return v2;
}

uint64_t REVideoAssetGetFileAsset(uint64_t a1, unint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  re::AssetAPIHelper::assetHandleCreate(a1, v11);
  v3 = re::AssetHandle::loadedAsset<re::VideoAsset>(v11);
  if (!v3)
  {
LABEL_8:
    v6 = 0;
    goto LABEL_12;
  }

  v4 = *(v3 + 160);
  if (v4 < a2)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = a2;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Invalid file asset index: %d", buf, 8u);
    }

    goto LABEL_8;
  }

  if (v4 <= a2)
  {
    v12 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    *buf = 0u;
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
    _os_log_send_and_compose_impl(v10, &v12, buf, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11[0], v11[1]);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*(v3 + 176) + 24 * a2);
LABEL_12:
  re::AssetHandle::~AssetHandle(v11);
  return v6;
}

id REVideoFileAssetGetAVAsset(uint64_t a1)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v4);
  v1 = re::AssetHandle::blockUntilLoaded<re::VideoFileAsset>(v4);
  if (v1)
  {
    v2 = **(v1 + 40);
  }

  else
  {
    v2 = 0;
  }

  re::AssetHandle::~AssetHandle(v4);

  return v2;
}

void REVideoAssetSetDiffuseSpillMapDimensions(uint64_t a1, int32x2_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = vmin_s32(vmax_s32(a2, 0), 0x10000000100);
  v3 = vceq_s32(v11, a2);
  if ((vpmin_u32(v3, v3).u32[0] & 0x80000000) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v9) = 67109888;
      HIDWORD(v9) = a2.i32[0];
      *buf = v9;
      LOWORD(v13) = 1024;
      *(buf | 0xA) = a2.i32[1];
      HIWORD(v13) = 1024;
      v14 = v11.i32[0];
      v15 = 1024;
      v16 = v11.i32[1];
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "[REVideoAssetSetDiffuseSpillMapDimensions] Invalid spill map dimensions: %d %d, diffuse spill map clamped to %d %d", buf, 0x1Au);
    }
  }

  if (a1)
  {
    re::AssetAPIHelper::assetHandleCreate(a1, buf);
    if (v13)
    {
      v5 = atomic_load(v13 + 224);
      if (v5 == 2)
      {
        re::AssetHandle::mutateAssetCommon(buf);
        ++*(v13 + 69);
        v6 = re::AssetHandle::blockUntilLoaded<re::VideoAsset>(buf);
        if (v6)
        {
          *(v6 + 232) = v11;
          v7 = v13;
          *(v13 + 256) = 1;
          re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v7);
          re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v13);
        }

        re::AssetHandle::payloadDidChangeIfPossible(buf);
      }
    }

    re::AssetHandle::~AssetHandle(buf);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v8 = CoreRELog::log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "[REVideoAssetSetDiffuseSpillMapDimensions] Invalid video asset reference", buf, 2u);
    }
  }
}

void REVideoAssetSetSpecularSpillMapDimensions(uint64_t a1, int32x2_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = vmin_s32(vmax_s32(a2, 0), 0x80000000800);
  v3 = vceq_s32(v11, a2);
  if ((vpmin_u32(v3, v3).u32[0] & 0x80000000) == 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v4 = CoreRELog::log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v9) = 67109888;
      HIDWORD(v9) = a2.i32[0];
      *buf = v9;
      LOWORD(v13) = 1024;
      *(buf | 0xA) = a2.i32[1];
      HIWORD(v13) = 1024;
      v14 = v11.i32[0];
      v15 = 1024;
      v16 = v11.i32[1];
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "[REVideoAssetSetSpecularSpillMapDimensions] Invalid spill map dimensions: %d %d, specular spill map clamped to %d %d", buf, 0x1Au);
    }
  }

  if (a1)
  {
    re::AssetAPIHelper::assetHandleCreate(a1, buf);
    if (v13)
    {
      v5 = atomic_load(v13 + 224);
      if (v5 == 2)
      {
        re::AssetHandle::mutateAssetCommon(buf);
        ++*(v13 + 69);
        v6 = re::AssetHandle::blockUntilLoaded<re::VideoAsset>(buf);
        if (v6)
        {
          *(v6 + 248) = v11;
          v7 = v13;
          *(v13 + 256) = 1;
          re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v7);
          re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v13);
        }

        re::AssetHandle::payloadDidChangeIfPossible(buf);
      }
    }

    re::AssetHandle::~AssetHandle(buf);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v8 = CoreRELog::log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "[REVideoAssetSetSpecularSpillMapDimensions] Invalid video asset reference", buf, 2u);
    }
  }
}

void REVideoAssetSetDiffuseSpillMapBlurSigma(uint64_t a1, int a2)
{
  if (a1)
  {
    re::AssetAPIHelper::assetHandleCreate(a1, &v7);
    if (v8)
    {
      v3 = atomic_load(v8 + 224);
      if (v3 == 2)
      {
        re::AssetHandle::mutateAssetCommon(&v7);
        ++*(v8 + 69);
        v4 = re::AssetHandle::blockUntilLoaded<re::VideoAsset>(&v7);
        if (v4)
        {
          re::VideoAsset::setDiffuseSpillMapBlurSigma(v4, a2);
          v5 = v8;
          *(v8 + 256) = 1;
          re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v5);
          re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v8);
        }

        re::AssetHandle::payloadDidChangeIfPossible(&v7);
      }
    }

    re::AssetHandle::~AssetHandle(&v7);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "[REVideoAssetSetDiffuseSpillMapBlurSigma] Invalid video asset reference", &v7, 2u);
    }
  }
}

void REVideoAssetSetSpecularSpillMapBlurSigma(uint64_t a1, int a2)
{
  if (a1)
  {
    re::AssetAPIHelper::assetHandleCreate(a1, &v7);
    if (v8)
    {
      v3 = atomic_load(v8 + 224);
      if (v3 == 2)
      {
        re::AssetHandle::mutateAssetCommon(&v7);
        ++*(v8 + 69);
        v4 = re::AssetHandle::blockUntilLoaded<re::VideoAsset>(&v7);
        if (v4)
        {
          re::VideoAsset::setSpecularSpillMapBlurSigma(v4, a2);
          v5 = v8;
          *(v8 + 256) = 1;
          re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v5);
          re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(v8);
        }

        re::AssetHandle::payloadDidChangeIfPossible(&v7);
      }
    }

    re::AssetHandle::~AssetHandle(&v7);
  }

  else
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "[REVideoAssetSetSpecularSpillMapBlurSigma] Invalid video asset reference", &v7, 2u);
    }
  }
}

void REVideoComponentSetVideoAsset(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, v4);
  re::AssetHandle::AssetHandle(v3, v4);
  re::AssetHandle::operator=(a1 + 208, v3);
  *(a1 + 73) = 0;
  re::AssetHandle::~AssetHandle(v3);
  re::AssetHandle::~AssetHandle(v4);
}

void REVideoComponentSetMaterialAsset(uint64_t a1, uint64_t a2)
{
  re::AssetAPIHelper::assetHandleCreate(a2, v3);
  re::AssetHandle::operator=(a1 + 32, v3);
  re::AssetHandle::~AssetHandle(v3);
}

void REVideoComponentAddRealityKitDefaultAttachmentsOnAllMaterials(uint64_t a1)
{
  REVideoComponentAddAttachmentOnAllMaterials(a1, @"REVideoAttachmentChannelID1TexturePlane0", "texturePlane0");
  REVideoComponentAddAttachmentOnAllMaterials(a1, @"REVideoAttachmentChannelID1TexturePlane1", "texturePlane1");
  REVideoComponentAddAttachmentOnAllMaterials(a1, @"REVideoAttachmentChannelID1TexturePlane2", "texturePlane2");
  REVideoComponentAddAttachmentOnAllMaterials(a1, @"REVideoAttachmentChannelID2TexturePlane0", "texturePlane0ChannelID2");
  REVideoComponentAddAttachmentOnAllMaterials(a1, @"REVideoAttachmentChannelID2TexturePlane1", "texturePlane1ChannelID2");
  REVideoComponentAddAttachmentOnAllMaterials(a1, @"REVideoAttachmentChannelID2TexturePlane2", "texturePlane2ChannelID2");
  REVideoComponentAddAttachmentOnAllMaterials(a1, @"REVideoAttachmentConstantYCbCrMatrix", "YCbCrMatrixOption");
  REVideoComponentAddAttachmentOnAllMaterials(a1, @"REVideoAttachmentConstantImageFunction", "imageFunction");
  REVideoComponentAddAttachmentOnAllMaterials(a1, @"REVideoAttachmentChannelID1TextureSpill", "textureSpill");

  REVideoComponentAddAttachmentOnAllMaterials(a1, @"REVideoAttachmentChannelID2TextureSpill", "textureSpill2");
}

void REVideoComponentAddAttachmentOnAllMaterials(uint64_t a1, id a2, const char *a3)
{
  v6 = a2;
  v7 = [a2 UTF8String];
  *&v10.var0 = 0;
  v10.var1 = &str_67;
  v11 = 0;
  v12 = &str_67;
  v9 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((a1 + 120), &v10);
  if (v11)
  {
    if (v11)
    {
    }
  }

  v11 = 0;
  v12 = &str_67;
  if (*&v10.var0)
  {
    if (*&v10.var0)
    {
    }
  }
}

void REVideoComponentRemoveRealityKitDefaultAttachmentsOnAllMaterials(uint64_t a1)
{
  REVideoComponentRemoveAttachmentFromAllMaterials(a1, @"REVideoAttachmentChannelID1TexturePlane0", "texturePlane0");
  REVideoComponentRemoveAttachmentFromAllMaterials(a1, @"REVideoAttachmentChannelID1TexturePlane1", "texturePlane1");
  REVideoComponentRemoveAttachmentFromAllMaterials(a1, @"REVideoAttachmentChannelID1TexturePlane2", "texturePlane2");
  REVideoComponentRemoveAttachmentFromAllMaterials(a1, @"REVideoAttachmentChannelID2TexturePlane0", "texturePlane0ChannelID2");
  REVideoComponentRemoveAttachmentFromAllMaterials(a1, @"REVideoAttachmentChannelID2TexturePlane1", "texturePlane1ChannelID2");
  REVideoComponentRemoveAttachmentFromAllMaterials(a1, @"REVideoAttachmentChannelID2TexturePlane2", "texturePlane2ChannelID2");
  REVideoComponentRemoveAttachmentFromAllMaterials(a1, @"REVideoAttachmentConstantYCbCrMatrix", "YCbCrMatrixOption");
  REVideoComponentRemoveAttachmentFromAllMaterials(a1, @"REVideoAttachmentConstantImageFunction", "imageFunction");
  REVideoComponentRemoveAttachmentFromAllMaterials(a1, @"REVideoAttachmentChannelID1TextureSpill", "textureSpill");

  REVideoComponentRemoveAttachmentFromAllMaterials(a1, @"REVideoAttachmentChannelID2TextureSpill", "textureSpill2");
}

void REVideoComponentRemoveAttachmentFromAllMaterials(uint64_t a1, id a2, const char *a3)
{
  v6 = a2;
  v7 = [a2 UTF8String];
  *&v10.var0 = 0;
  v10.var1 = &str_67;
  v11 = 0;
  v12 = &str_67;
  re::ecs2::VideoComponent::removeAttachment(a1, &v10);
  if (v11)
  {
    if (v11)
    {
    }
  }

  v11 = 0;
  v12 = &str_67;
  if (*&v10.var0)
  {
    if (*&v10.var0)
    {
    }
  }
}

uint64_t REVideoComponentSetOptOutOfAudioControl(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 331) = a2;
  }

  return result;
}

uint64_t REVideoComponentGetOptOutOfAudioControl(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 331);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t REVideoComponentSetLightSpillTraitEnabled(uint64_t result)
{
  if (result)
  {
    *(result + 332) |= 1u;
  }

  return result;
}

uint64_t REVideoComponentGetLightSpillTraitEnabled(uint64_t result)
{
  if (result)
  {
    return *(result + 332) & 1;
  }

  return result;
}

re::ecs2::VideoComponent *REVideoComponentGetReadyToRender(re::ecs2::VideoComponent *result)
{
  if (result)
  {
    return re::ecs2::VideoComponent::getReadyToRender(result);
  }

  return result;
}

__CFString *REVideoComponentGetStereoMode(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    return @"REVideoStereoModeMono";
  }

  else
  {
    return @"REVideoStereoModeStereo";
  }
}

_anonymous_namespace_ *REComponentIsAvailableForMajorVersion(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 32))(&v7);
  v3 = v7;
  v5 = re::TypeAvailabilityUtilities::checkComponentIsAvailableForMajorVersion(v7, a2, 1u, v4);

  return v5;
}

uint64_t REAssetIsAvailableForRealityFileVersion(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, v7);
  v5 = re::TypeAvailabilityUtilities::checkAssetIsAvailableForMajorVersion(v7, a2, a3, 0);
  re::AssetHandle::~AssetHandle(v7);
  return v5;
}

uint64_t REComponentGetInitialRelease(uint64_t a1)
{
  (*(*a1 + 32))(&v6);
  v1 = v6;
  RequiredReleaseInfo = REComponentGetRequiredReleaseInfo(v6, 1u);
  v3 = *(RequiredReleaseInfo + 24);
  if (v3 == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = re::TypeAvailabilityUtilities::convertToMajorVersion(v3);
  }

  return v4;
}

uint64_t REComponentGetRequiredReleaseInfo(uint64_t a1, unsigned int a2)
{
  re::make::shared::object<RERealityKitReleaseInfo>(&v10);
  re::TypeAvailabilityUtilities::getComponentInitialRelease(a1, a2, &v7);
  v4 = v10;
  *(v10 + 24) = v7;
  v5 = re::Optional<re::StringID>::operator=(v4 + 32, v8);
  if (v8[0] == 1 && (v9 & 1) != 0)
  {
    if (v9)
    {
    }
  }

  return v4;
}

uint64_t RERealityKitReleaseInfoGetRelease(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 == -1)
  {
    return 0;
  }

  else
  {
    return re::TypeAvailabilityUtilities::convertToMajorVersion(v1);
  }
}

uint64_t REAssetGetInitialRelease(uint64_t a1)
{
  RequiredReleaseInfo = REAssetGetRequiredReleaseInfo(a1, 1, 2);
  v2 = *(RequiredReleaseInfo + 24);
  if (v2 == -1)
  {
    v3 = 0;
  }

  else
  {
    v3 = re::TypeAvailabilityUtilities::convertToMajorVersion(v2);
  }

  return v3;
}

uint64_t REAssetGetRequiredReleaseInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::AssetAPIHelper::assetHandleCreate(a1, &v15);
  re::make::shared::object<RERealityKitReleaseInfo>(&v14);
  if (!v16)
  {
    re::SceneAsset::assetType(v5);
    goto LABEL_5;
  }

  v6 = *(v16 + 280);
  if (v6 != re::SceneAsset::assetType(v5))
  {
LABEL_5:
    re::TypeAvailabilityUtilities::getAssetInitialRelease(&v15, a2, &v11);
    v7 = v14;
    *(v14 + 24) = v11;
    v8 = v7 + 32;
    goto LABEL_6;
  }

  re::TypeAvailabilityUtilities::getSceneRequiredReleaseInfo(&v15, a2, a3, &v11);
  v7 = v14;
  *(v14 + 24) = v11;
  v8 = v7 + 32;
LABEL_6:
  v9 = re::Optional<re::StringID>::operator=(v8, v12);
  if (v12[0] == 1 && (v13 & 1) != 0)
  {
    if (v13)
    {
    }
  }

  re::AssetHandle::~AssetHandle(&v15);
  return v7;
}

__CFString *RERealityKitReleaseInfoGetAdjustmentLog(re::StringID *a1)
{
  v4 = *(a1 + 32);
  v1 = v4;
  if (v4 == 1 && (a1 = re::StringID::StringID(&v5, (a1 + 40)), v1 = v4, (v4 & 1) != 0))
  {
    a1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
    v2 = a1;
  }

  else
  {
    v2 = &stru_1F5D319D0;
    if ((v1 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (v5)
  {
    if (v5)
    {
    }
  }

LABEL_8:

  return v2;
}

void re::make::shared::object<RERealityKitReleaseInfo>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 56, 8);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  ArcSharedObject::ArcSharedObject(v3, 0);
  *v3 = &unk_1F5D2D068;
  *(v3 + 24) = -1;
  *(v3 + 32) = 0;
  *a1 = v3;
}

void RERealityKitReleaseInfo::~RERealityKitReleaseInfo(RERealityKitReleaseInfo *this)
{
  *this = &unk_1F5D2D068;
  if (*(this + 32) == 1)
  {
    re::StringID::destroyString((this + 40));
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D2D068;
  if (*(this + 32) == 1)
  {
    re::StringID::destroyString((this + 40));
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *RETransformComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

void RETransformComponentSetLocalPose(float32x4_t *a1, int8x16_t a2, float32x4_t a3)
{
  v3 = a2;
  v18 = *MEMORY[0x1E69E9840];
  v4 = vext_s8(*a2.i8, *&vextq_s8(a2, a2, 8uLL), 4uLL);
  v5 = vmvn_s8(vceq_f32(v4, v4));
  if ((v5.i8[0] & 1) != 0 || (v5.i8[4] & 1) != 0 || (vaddvq_s32(vbicq_s8(xmmword_1E3102070, vceqq_f32(a3, a3))) & 0xF) != 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v8 = CoreRELog::log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "RETransformComponentSetLocalPose";
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Call to %s contains NaN. Skipping.", &buf, 0xCu);
    }
  }

  else
  {
    if (a1[1].i64[0])
    {
      v13 = a3;
      v14 = v3;
      v7 = re::BindPoint::baseValueUntyped(&a1[5]);
      a3 = v13;
      v3 = v14;
    }

    else
    {
      v7 = a1 + 2;
    }

    v9 = v7->i64[1];
    *&buf = v7->i64[0];
    *(&buf + 1) = v9;
    v10.i64[0] = buf;
    v10.i64[1] = v9;
    v16 = a3;
    v17 = v3;
    v11 = vceqq_f32(v10, v10);
    v11.i32[3] = v11.i32[2];
    if ((vminvq_u32(v11) & 0x80000000) == 0 || (vminvq_u32(vceqq_f32(v7[1], a3)) & 0x80000000) == 0 || (v12 = vceqq_f32(v7[2], v3), v12.i32[3] = v12.i32[2], (vminvq_u32(v12) & 0x80000000) == 0))
    {
      re::ecs2::TransformComponent::setLocalSRT(a1, &buf, 0);
      re::ecs2::Component::enqueueMarkDirty(a1);
    }
  }
}

void RETransformComponentSetLocalSRT(float32x4_t *a1, int8x16_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = a2;
  v20 = *MEMORY[0x1E69E9840];
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v5 = vext_s8(*a2.i8, *&vextq_s8(a2, a2, 8uLL), 4uLL);
  v6 = vmvn_s8(vceq_f32(v5, v5));
  if (v6.i8[0] & 1) != 0 || (v6.i8[4] & 1) != 0 || (vaddvq_s32(vbicq_s8(xmmword_1E3102070, vceqq_f32(a3, a3))) & 0xF) != 0 || (v7 = vextq_s8(a4, a4, 4uLL).u64[0], v8 = vmvn_s8(vceq_f32(v7, v7)), (v8.i8[0]) || (v8.i8[4])
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v11 = CoreRELog::log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "RETransformComponentSetLocalSRT";
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Call to %s contains NaN. Skipping.", buf, 0xCu);
    }
  }

  else
  {
    if (a1[1].i64[0])
    {
      v15 = a3;
      v16 = a4;
      v14 = v4;
      v10 = re::BindPoint::baseValueUntyped(&a1[5]);
      v4 = v14;
      a3 = v15;
      a4 = v16;
    }

    else
    {
      v10 = a1 + 2;
    }

    v12 = vceqq_f32(*v10, v4);
    v12.i32[3] = v12.i32[2];
    if ((vminvq_u32(v12) & 0x80000000) == 0 || (vminvq_u32(vceqq_f32(v10[1], a3)) & 0x80000000) == 0 || (v13 = vceqq_f32(v10[2], a4), v13.i32[3] = v13.i32[2], (vminvq_u32(v13) & 0x80000000) == 0))
    {
      re::ecs2::TransformComponent::setLocalSRT(a1, v17, 0);

      re::ecs2::Component::enqueueMarkDirty(a1);
    }
  }
}

__n128 RETransformComponentGetLocalUnanimatedSRT(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = re::BindPoint::baseValueUntyped((a1 + 80));
  }

  else
  {
    v1 = a1 + 32;
  }

  return *v1;
}

void RETransformComponentSetLocalTranslation(float32x4_t *a1, int8x16_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = vext_s8(*a2.i8, *&vextq_s8(a2, a2, 8uLL), 4uLL);
  v3 = vmvn_s8(vceq_f32(v2, v2));
  if (v3.i8[0] & 1) != 0 || (v3.i8[4])
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v10 = "RETransformComponentSetLocalTranslation";
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Call to %s contains NaN. Skipping.", buf, 0xCu);
    }
  }

  else
  {
    if (a1[1].i64[0])
    {
      v8 = a2;
      v5 = re::BindPoint::baseValueUntyped(&a1[5]);
      a2 = v8;
    }

    else
    {
      v5 = a1 + 2;
    }

    v7 = vceqq_f32(v5[2], a2);
    v7.i32[3] = v7.i32[2];
    if ((vminvq_u32(v7) & 0x80000000) == 0)
    {
      re::ecs2::TransformComponent::setLocalPosition(a1, a2.i64[0], a2.i64[1], 0);

      re::ecs2::Component::enqueueMarkDirty(a1);
    }
  }
}

void RETransformComponentSetLocalOrientation(float32x4_t *a1, float32x4_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(a2, a2)))))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v2 = CoreRELog::log;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "RETransformComponentSetLocalOrientation";
      _os_log_error_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_ERROR, "Call to %s contains NaN. Skipping.", buf, 0xCu);
    }
  }

  else
  {
    if (a1[1].i64[0])
    {
      v5 = a2;
      v4 = re::BindPoint::baseValueUntyped(&a1[5]);
      a2 = v5;
    }

    else
    {
      v4 = a1 + 2;
    }

    if ((vminvq_u32(vceqq_f32(a2, v4[1])) & 0x80000000) == 0)
    {
      re::ecs2::TransformComponent::setLocalOrientation(a1, a2.i64[0], a2.i64[1], 0);

      re::ecs2::Component::enqueueMarkDirty(a1);
    }
  }
}

void RETransformComponentSetLocalScale(float32x4_t *a1, int8x16_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = vext_s8(*a2.i8, *&vextq_s8(a2, a2, 8uLL), 4uLL);
  v3 = vmvn_s8(vceq_f32(v2, v2));
  if (v3.i8[0] & 1) != 0 || (v3.i8[4])
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v10 = "RETransformComponentSetLocalScale";
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Call to %s contains NaN. Skipping.", buf, 0xCu);
    }
  }

  else
  {
    if (a1[1].i64[0])
    {
      v8 = a2;
      v5 = re::BindPoint::baseValueUntyped(&a1[5]);
      a2 = v8;
    }

    else
    {
      v5 = a1 + 2;
    }

    v7 = vceqq_f32(*v5, a2);
    v7.i32[3] = v7.i32[2];
    if ((vminvq_u32(v7) & 0x80000000) == 0)
    {
      re::ecs2::TransformComponent::setLocalScale(a1, a2.i64[0], a2.i64[1], 0);

      re::ecs2::Component::enqueueMarkDirty(a1);
    }
  }
}

double RETransformComponentGetWorldUnanimatedMatrix4x4F(re::TransformService **a1)
{
  flushDirtyComponentsQueue(a1[2]);
  v3 = a1[2];
  if (v3 && (v4 = re::TransformService::transformServiceFromEntity(a1[2], v2)) != 0)
  {
    re::TransformService::worldMatrix(v4, v3, 2, &v6);
  }

  else
  {
    re::ecs2::TransformComponent::worldMatrix4x4F(a1, 0, &v6);
  }

  return *v6.i64;
}

double RETransformComponentGetWorldMatrix4x4F(re::TransformService **a1)
{
  flushDirtyComponentsQueue(a1[2]);
  v3 = a1[2];
  if (v3 && (v4 = re::TransformService::transformServiceFromEntity(a1[2], v2)) != 0)
  {
    re::TransformService::worldMatrix(v4, v3, 0, &v6);
  }

  else
  {
    re::ecs2::TransformComponent::worldMatrix4x4F(a1, 1, &v6);
  }

  return *v6.i64;
}

double RETransformComponentGetParentWorldMatrix4x4F(uint64_t a1)
{
  flushDirtyComponentsQueue(*(a1 + 16));
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = re::TransformService::transformServiceFromEntity(*(a1 + 16), v2);
    if (v4)
    {
      re::TransformService::parentWorldMatrix(v4, v3, 0, &v7);
      return *v7.i64;
    }

    v5 = *(a1 + 16);
    if (v5)
    {
      re::ecs2::TransformComponent::parentWorldMatrix4x4F(v5, 1, &v7);
      return *v7.i64;
    }
  }

  *&result = 1065353216;
  return result;
}

double RETransformComponentGetParentWorldUnanimatedMatrix4x4F(uint64_t a1)
{
  flushDirtyComponentsQueue(*(a1 + 16));
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = re::TransformService::transformServiceFromEntity(*(a1 + 16), v2);
    if (v4)
    {
      re::TransformService::parentWorldMatrix(v4, v3, 2, &v7);
      return *v7.i64;
    }

    v5 = *(a1 + 16);
    if (v5)
    {
      re::ecs2::TransformComponent::parentWorldMatrix4x4F(v5, 0, &v7);
      return *v7.i64;
    }
  }

  *&result = 1065353216;
  return result;
}

double RETransformComponentGetWorldPose(uint64_t a1)
{
  flushDirtyComponentsQueue(*(a1 + 16));
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = re::TransformService::transformServiceFromEntity(*(a1 + 16), v2);
  if (!v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      re::ecs2::TransformComponent::worldSRT(v5, 1, v8);
      return *&v9;
    }

LABEL_6:
    v6 = *(a1 + 48);
    v8[0] = *(a1 + 32);
    v8[1] = v6;
    v9 = *(a1 + 64);
    return *&v9;
  }

  re::TransformService::worldTransform(v4, v3, 0, v8);
  return *&v9;
}

__n128 RETransformComponentGetWorldPosition(uint64_t a1)
{
  flushDirtyComponentsQueue(*(a1 + 16));
  v3 = *(a1 + 16);
  if (!v3)
  {
    return *(a1 + 64);
  }

  v4 = re::TransformService::transformServiceFromEntity(*(a1 + 16), v2);
  if (v4)
  {
    re::TransformService::worldTransform(v4, v3, 0, v7);
    result.n128_u64[0] = v8;
    return result;
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    re::ecs2::TransformComponent::worldMatrix4x4F(v7, v6, 1);
    result.n128_u64[0] = v9;
  }

  else
  {
    return *(a1 + 64);
  }

  return result;
}

double RETransformComponentGetWorldOrientation(uint64_t a1)
{
  flushDirtyComponentsQueue(*(a1 + 16));
  v3 = *(a1 + 16);
  if (!v3)
  {
    return *(a1 + 48);
  }

  v4 = re::TransformService::transformServiceFromEntity(*(a1 + 16), v2);
  if (v4)
  {
    re::TransformService::worldTransform(v4, v3, 0, v9);
    return *&v9[2];
  }

  v7 = *(a1 + 16);
  if (!v7)
  {
    return *(a1 + 48);
  }

  re::ecs2::TransformComponent::worldOrientation(v7, 1, v5);
  return v8;
}

double RETransformComponentGetWorldScale(uint64_t a1)
{
  flushDirtyComponentsQueue(*(a1 + 16));
  v3 = *(a1 + 16);
  if (!v3)
  {
    return *(a1 + 32);
  }

  v4 = re::TransformService::transformServiceFromEntity(*(a1 + 16), v2);
  if (v4)
  {
    re::TransformService::worldTransform(v4, v3, 0, v9);
    return v9[0];
  }

  v7 = *(a1 + 16);
  if (!v7)
  {
    return *(a1 + 32);
  }

  re::ecs2::TransformComponent::worldScale(v7, 1, v5);
  return v8;
}

double RETransformComponentGetWorldSRT(uint64_t a1)
{
  flushDirtyComponentsQueue(*(a1 + 16));
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = re::TransformService::transformServiceFromEntity(*(a1 + 16), v2);
  if (!v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      re::ecs2::TransformComponent::worldSRT(v5, 1, v8);
      return *v8;
    }

LABEL_6:
    v6 = *(a1 + 48);
    v8[0] = *(a1 + 32);
    v8[1] = v6;
    v8[2] = *(a1 + 64);
    return *v8;
  }

  re::TransformService::worldTransform(v4, v3, 0, v8);
  return *v8;
}

void RETransformComponentSetWorldMatrix4x4F(uint64_t a1, __n128 a2, simd_float4 a3, simd_float4 a4, simd_float4 a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v12.columns[0] = a2;
  v12.columns[1] = a3;
  v12.columns[2] = a4;
  v12.columns[3] = a5;
  if (containsNaN(&v12))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "RETransformComponentSetWorldMatrix4x4F";
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Call to %s contains NaN. Skipping.", buf, 0xCu);
    }
  }

  else
  {
    *buf = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    v14 = xmmword_1E30474D0;
    v15 = 0u;
    v13 = 0u;
    re::decomposeScaleRotationTranslation<float>(buf, &v15, &v14, &v13);
    v11[0] = v15;
    v11[1] = v14;
    v11[2] = v13;
    re::ecs2::TransformComponent::setWorldSRT(a1, v11, 0);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }
}

BOOL containsNaN(simd_float4x4 *a1)
{
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(a1->columns[0], a1->columns[0])))) & 1) != 0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(a1->columns[1], a1->columns[1])))) & 1) != 0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(a1->columns[2], a1->columns[2])))))
  {
    return 1;
  }

  v2 = a1->columns[3];
  result = 1;
  v3 = vext_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL), 4uLL);
  v4 = vmvn_s8(vceq_f32(v3, v3));
  if ((v4.i8[0] & 1) == 0)
  {
    return (v4.i8[4] & 1) != 0;
  }

  return result;
}

void RETransformComponentSetWorldAnimatedMatrix4x4F(uint64_t a1, __n128 a2, simd_float4 a3, simd_float4 a4, simd_float4 a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v12.columns[0] = a2;
  v12.columns[1] = a3;
  v12.columns[2] = a4;
  v12.columns[3] = a5;
  if (containsNaN(&v12))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v6 = CoreRELog::log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "RETransformComponentSetWorldAnimatedMatrix4x4F";
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Call to %s contains NaN. Skipping.", buf, 0xCu);
    }
  }

  else
  {
    *buf = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    v14 = xmmword_1E30474D0;
    v15 = 0u;
    v13 = 0u;
    re::decomposeScaleRotationTranslation<float>(buf, &v15, &v14, &v13);
    v11[0] = v15;
    v11[1] = v14;
    v11[2] = v13;
    re::ecs2::TransformComponent::setWorldSRT(a1, v11, 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }
}

void RETransformComponentSetWorldPose(uint64_t a1, const re::ecs2::Entity *a2, int8x16_t a3, float32x4_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = vext_s8(*a3.i8, *&vextq_s8(a3, a3, 8uLL), 4uLL);
  v5 = vmvn_s8(vceq_f32(v4, v4));
  if ((v5.i8[0] & 1) != 0 || (v5.i8[4] & 1) != 0 || (vaddvq_s32(vbicq_s8(xmmword_1E3102070, vceqq_f32(a4, a4))) & 0xF) != 0)
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v13 = CoreRELog::log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "RETransformComponentSetWorldPose";
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Call to %s contains NaN. Skipping.", buf, 0xCu);
    }
  }

  else
  {
    v7 = re::TransformService::transformServiceFromEntity(*(a1 + 16), a2);
    flushDirtyComponentsQueue(*(a1 + 16));
    v9 = *(a1 + 16);
    if (v7)
    {
      re::TransformService::worldTransform(v7, v9, 0, buf);
      v11 = a3;
      v10 = *buf;
      v12 = a4;
    }

    else
    {
      if (v9)
      {
        re::ecs2::TransformComponent::worldScale(*(a1 + 16), 1, v8);
      }

      else
      {
        v14 = *(a1 + 32);
        v15 = *(a1 + 40);
      }

      v12 = a4;
      v11 = a3;
      *&v10 = v14;
      *(&v10 + 1) = v15;
    }

    *buf = v10;
    v19 = v12;
    v20 = v11;
    re::ecs2::TransformComponent::setWorldSRT(a1, buf, 0);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }
}

void RETransformComponentSetWorldPosition(void *a1, int8x16_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = vext_s8(*a2.i8, *&vextq_s8(a2, a2, 8uLL), 4uLL);
  v3 = vmvn_s8(vceq_f32(v2, v2));
  if (v3.i8[0] & 1) != 0 || (v3.i8[4])
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "RETransformComponentSetWorldPosition";
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Call to %s contains NaN. Skipping.", &v6, 0xCu);
    }
  }

  else
  {
    re::ecs2::TransformComponent::setWorldPosition(a1, a2.i64[0], a2.i64[1]);

    re::ecs2::Component::enqueueMarkDirty(a1);
  }
}

void RETransformComponentSetWorldOrientation(void *a1, float32x4_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(a2, a2)))))
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v2 = CoreRELog::log;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315138;
      v5 = "RETransformComponentSetWorldOrientation";
      _os_log_error_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_ERROR, "Call to %s contains NaN. Skipping.", &v4, 0xCu);
    }
  }

  else
  {
    re::ecs2::TransformComponent::setWorldOrientation(a1, a2.i64[0], a2.i64[1]);

    re::ecs2::Component::enqueueMarkDirty(a1);
  }
}

void RETransformComponentSetWorldScale(void *a1, int8x16_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = vext_s8(*a2.i8, *&vextq_s8(a2, a2, 8uLL), 4uLL);
  v3 = vmvn_s8(vceq_f32(v2, v2));
  if (v3.i8[0] & 1) != 0 || (v3.i8[4])
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v5 = CoreRELog::log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "RETransformComponentSetWorldScale";
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Call to %s contains NaN. Skipping.", &v6, 0xCu);
    }
  }

  else
  {
    re::ecs2::TransformComponent::setWorldScale(a1, a2.i64[0], a2.i64[1]);

    re::ecs2::Component::enqueueMarkDirty(a1);
  }
}

void RETransformComponentSetWorldSRT(uint64_t a1, int8x16_t a2, float32x4_t a3, int8x16_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v4 = vext_s8(*a2.i8, *&vextq_s8(a2, a2, 8uLL), 4uLL);
  v5 = vmvn_s8(vceq_f32(v4, v4));
  if (v5.i8[0] & 1) != 0 || (v5.i8[4] & 1) != 0 || (vaddvq_s32(vbicq_s8(xmmword_1E3102070, vceqq_f32(a3, a3))) & 0xF) != 0 || (v6 = vextq_s8(a4, a4, 4uLL).u64[0], v7 = vmvn_s8(vceq_f32(v6, v6)), (v7.i8[0]) || (v7.i8[4])
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v12 = "RETransformComponentSetWorldSRT";
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Call to %s contains NaN. Skipping.", buf, 0xCu);
    }
  }

  else
  {
    re::ecs2::TransformComponent::setWorldSRT(a1, v10, 0);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }
}

void RETransformComponentSetWorldAnimatedSRT(uint64_t a1, int8x16_t a2, float32x4_t a3, int8x16_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v4 = vext_s8(*a2.i8, *&vextq_s8(a2, a2, 8uLL), 4uLL);
  v5 = vmvn_s8(vceq_f32(v4, v4));
  if (v5.i8[0] & 1) != 0 || (v5.i8[4] & 1) != 0 || (vaddvq_s32(vbicq_s8(xmmword_1E3102070, vceqq_f32(a3, a3))) & 0xF) != 0 || (v6 = vextq_s8(a4, a4, 4uLL).u64[0], v7 = vmvn_s8(vceq_f32(v6, v6)), (v7.i8[0]) || (v7.i8[4])
  {
    if (CoreRELog::onceToken != -1)
    {
      dispatch_once(&CoreRELog::onceToken, &__block_literal_global_74);
    }

    v9 = CoreRELog::log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v12 = "RETransformComponentSetWorldAnimatedSRT";
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Call to %s contains NaN. Skipping.", buf, 0xCu);
    }
  }

  else
  {
    re::ecs2::TransformComponent::setWorldSRT(a1, v10, 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
  }
}

uint64_t REStateMachineAssetCreateAsset(re *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = re::globalAllocators(a1);
  v9 = (*(*v8[2] + 32))(v8[2], 104, 8);
  v10 = v9;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 5) = 0u;
  *(v9 + 12) = 0;
  v30 = 0;
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  if (a2)
  {
    v11 = (a3 + 16);
    do
    {
      v12 = *(v11 - 2);
      v22 = 0;
      v23 = &str_67;
      v13 = *(v11 - 1);
      v24 = 0;
      v25 = &str_67;
      v15 = *v11;
      v26 = 0;
      v27 = &str_67;
      v9 = re::DynamicArray<re::StateMachineInitializationData>::add(v28, &v22);
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

      v24 = 0;
      v25 = &str_67;
      if (v22)
      {
        if (v22)
        {
        }
      }

      v11 += 3;
      --a2;
    }

    while (a2);
  }

  inited = re::StateMachineAsset::initWithInitData(v10, v28, a4 + 24);
  v18 = re::StateMachineAsset::assetType(inited);
  (*(*a1 + 424))(&v22, a1, v10, v18, 0, 0, 0);
  v19 = v22;
  if (v22)
  {
    v20 = (v22 + 8);
  }

  re::AssetHandle::~AssetHandle(&v22);
  re::DynamicArray<re::RenderGraphOutputData>::deinit(v28);
  return v19;
}

uint64_t REStateMachineAssetCreate(re *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = re::globalAllocators(a1);
  v9 = (*(*v8[2] + 32))(v8[2], 104, 8);
  v10 = v9;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 5) = 0u;
  *(v9 + 12) = 0;
  v30 = 0;
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  if (a2)
  {
    v11 = (a3 + 16);
    do
    {
      v12 = *(v11 - 2);
      v22 = 0;
      v23 = &str_67;
      v13 = *(v11 - 1);
      v24 = 0;
      v25 = &str_67;
      v15 = *v11;
      v26 = 0;
      v27 = &str_67;
      v9 = re::DynamicArray<re::StateMachineInitializationData>::add(v28, &v22);
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

      v24 = 0;
      v25 = &str_67;
      if (v22)
      {
        if (v22)
        {
        }
      }

      v11 += 3;
      --a2;
    }

    while (a2);
  }

  inited = re::StateMachineAsset::initWithInitData(v10, v28, (a4 + 24));
  v18 = re::StateMachineAsset::assetType(inited);
  (*(*a1 + 424))(&v22, a1, v10, v18, 0, 0, 0);
  v19 = v22;
  if (v22)
  {
    v20 = (v22 + 8);
  }

  re::AssetHandle::~AssetHandle(&v22);
  re::DynamicArray<re::RenderGraphOutputData>::deinit(v28);
  return v19;
}