@interface UpdateNodeVisibilityIfNeeded
@end

@implementation UpdateNodeVisibilityIfNeeded

uint64_t ____UpdateNodeVisibilityIfNeeded_block_invoke(uint64_t a1, uint64_t a2)
{
  if (C3DNodeIsHidden(a2, a2) && ((*(a1 + 48) & 1) != 0 || *(a1 + 32) != a2))
  {
    return 1;
  }

  ShouldBePutInCullingSystem = C3DNodeShouldBePutInCullingSystem(a2, v4);
  if (ShouldBePutInCullingSystem)
  {
    if (*(a2 + 216) == -1)
    {
      v8 = scn_default_log(ShouldBePutInCullingSystem, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        ____UpdateNodeVisibilityIfNeeded_block_invoke_cold_1(v8, v7, v9, v10, v11, v12, v13, v14);
      }
    }
  }

  if (*(a1 + 48) == 1)
  {
    C3DScenePostPipelineEvent(*(a2 + 48), 0, a2, 0);
    v15 = *(a1 + 40);
    if (v15)
    {
      C3DSceneNodeWasAdded(v15, a2);
    }
  }

  else
  {
    v16 = *(a1 + 40);
    if (v16)
    {
      C3DSceneNodeWillBeRemoved(v16, a2);
    }
  }

  Floor = C3DNodeGetFloor(a2, v7);
  Light = C3DNodeGetLight(a2, v18);
  if (Light && (v21 = Light, v22 = CFGetTypeID(Light), Light = C3DLightGetTypeID(v22, v23), v22 == Light) && (Light = C3DLightTypeSupportsShadow(v21, v20), Light) && (Light = C3DLightGetCastsShadow(v21, v20), (Light & 1) != 0) || Floor)
  {
    SharedInstance = C3DNotificationCenterGetSharedInstance(Light, v20);
    C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", *(a1 + 40), 0, 1u);
  }

  return 0;
}

void ____UpdateNodeVisibilityIfNeeded_block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "!C3DNodeShouldBePutInCullingSystem(child) || (child->_cullingHandle != kC3DCullingHandleInvalid)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Node should already be in CullingSystem", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end