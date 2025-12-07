void re::VFXAsset::~VFXAsset(re::VFXAsset *this)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(this + 10) != -1)
  {
    v2 = sandbox_extension_release();
    if (v2)
    {
      v3 = *re::assetTypesLogObjects(v2);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = *__error();
        v5[0] = 67109120;
        v5[1] = v4;
        _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "VFXAsset: sandbox release error %i", v5, 8u);
      }
    }
  }

  re::DynamicString::deinit((this + 32));
  re::DynamicString::deinit(this);
}

void sub_1E1F62F44(_Unwind_Exception *a1)
{
  re::DynamicString::deinit((v1 + 4));
  re::DynamicString::deinit(v1);
  _Unwind_Resume(a1);
}

uint64_t *re::VFXAsset::assetType(re::VFXAsset *this)
{
  {
    re::VFXAsset::assetType(void)::type = "VFX";
    qword_1EE1C5788 = 0;
    re::AssetType::generateCompiledExtension(&re::VFXAsset::assetType(void)::type);
  }

  return &re::VFXAsset::assetType(void)::type;
}

uint64_t re::VFXAssetLoader::introspectionType(re::VFXAssetLoader *this)
{
  v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v3)
    {
      re::introspect<re::VFXAsset>(BOOL)::info = re::internal::getOrCreateInfo("VFXAsset", re::allocInfo_VFXAsset, re::initInfo_VFXAsset, &re::internal::introspectionInfoStorage<re::VFXAsset>, 0);
      v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v1 + 258);
}

BOOL re::VFXAssetLoader::createRuntimeData(re::StringID **a1, uint64_t a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 8);
  v3 = v2 >> 1;
  if ((v2 & 1) == 0)
  {
    v3 = v2 >> 1;
  }

  if (v3)
  {
    v5 = (a2 + 64);
    if (*(a2 + 64))
    {
      return 1;
    }

    if (v2)
    {
      v9 = *(a2 + 16);
    }

    else
    {
      v9 = a2 + 9;
    }

    v10 = MEMORY[0x1E695DFF8];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
    v12 = [v10 fileURLWithPath:v11];

    v48 = 0;
    if (re::ServiceLocator::serviceOrNull<re::RenderManager>(a1[1]))
    {
      v13 = *(re::ServiceLocator::service<re::RenderManager>(a1[1]) + 205);
      v14 = a1[1];
      {
        re::introspect<re::VFXManager>(BOOL)::info = re::introspect_VFXManager(0, v41, v42, v43, v44, v45);
      }

      v15 = re::introspect<re::VFXManager>(BOOL)::info;
      re::StringID::invalid(buf);
      v16 = (*(*v14 + 16))(v14, v15, buf);
      v17 = v16;
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      if (v17)
      {
        if (v13)
        {
          re::VFXManager::loadAndPrepareWorld(v17, v12, &v48, &v47);
        }

        else
        {
          re::VFXManager::loadWorld(v12, &v48, &v47);
        }

        if (!v48 && v47)
        {
          *(a2 + 72) = 0;
          re::ObjCObject::operator=(v5, &v47);
LABEL_27:

          return 1;
        }

        v24 = *re::assetTypesLogObjects(v18);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v39 = [v12 path];
          *buf = 138412546;
          v50 = v39;
          v51 = 2112;
          v52 = v48;
          _os_log_debug_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEBUG, "Couldn't load %@ %@, trying legacy import", buf, 0x16u);
        }

        v46 = 0;
        VFXSceneLoadOptionsClass = re::getVFXSceneLoadOptionsClass(v25);
        VFXRESceneClass = re::getVFXRESceneClass(VFXSceneLoadOptionsClass);
        if (VFXSceneLoadOptionsClass && (v28 = VFXRESceneClass) != 0)
        {
          v29 = objc_alloc_init(VFXSceneLoadOptionsClass);
          [v29 setSetupRenderer:v13];
          [v29 setAutomaticallyPrepareScene:v13];
          [v29 setEnableRuntimeScriptCompilation:*(v17 + 24)];
          v30 = [v28 alloc];
          if (v13)
          {
            v31 = *(v17 + 1);
          }

          else
          {
            v31 = 0;
          }

          v33 = [v30 initWithContentsOf:v12 commandQueue:v31 options:v29 error:&v46];
          v34 = v33;
          if (v13)
          {
          }

          if (!v46)
          {
            *(a2 + 72) = 1;
            re::ObjCObject::operator=(v5, v34);

            goto LABEL_27;
          }

          v35 = v48;
          v36 = *re::assetTypesLogObjects(v33);
          v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
          if (v35)
          {
            if (v37)
            {
              v38 = [v12 path];
              *buf = 138412546;
              v50 = v38;
              v51 = 2112;
              v52 = v48;
              _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, "Couldn't load %@ %@", buf, 0x16u);
            }
          }

          else if (v37)
          {
            v40 = [v12 path];
            *buf = 138412546;
            v50 = v40;
            v51 = 2112;
            v52 = v46;
            _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, "Couldn't load %@ %@", buf, 0x16u);
          }
        }

        else
        {
          v32 = *re::assetTypesLogObjects(VFXRESceneClass);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_ERROR, "VFX framework is not loaded", buf, 2u);
          }
        }

        return 0;
      }

      v23 = *re::assetTypesLogObjects(v16);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      *buf = 0;
      v20 = "VFX service is not loaded";
      v21 = v23;
      v22 = 2;
    }

    else
    {
      v19 = *re::assetTypesLogObjects(0);
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
LABEL_22:

        return 0;
      }

      *buf = 138412290;
      v50 = v12;
      v20 = "Can't load VFXAsset %@ null rendermanager";
      v21 = v19;
      v22 = 12;
    }

    _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, v20, buf, v22);
    goto LABEL_22;
  }

  v7 = *re::assetTypesLogObjects(a1);
  result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (!result)
  {
    return result;
  }

  *buf = 0;
  _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Can't load VFXAsset empty path", buf, 2u);
  return 0;
}

void sub_1E1F635F8(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

_anonymous_namespace_ *re::ServiceLocator::service<re::RenderManager>(re::StringID *a1)
{
  result = re::ServiceLocator::serviceOrNull<re::RenderManager>(a1);
  if (!result)
  {
    v2 = re::introspect<re::RenderManager>(0);
    re::StringID::invalid(v7);
    re::internal::missingServiceErrorMessage(&v8, v2, v7);
    re::DynamicString::~DynamicString(&v8);
    re::StringID::~StringID(v7);
    v3 = re::introspect<re::RenderManager>(0);
    re::StringID::invalid(v7);
    re::internal::missingServiceErrorMessage(&v8, v3, v7);
    if (v9)
    {
      v5 = *&v10[7];
    }

    else
    {
      v5 = v10;
    }

    re::internal::assertLog(5, v4, "assertion failure: '%s' (%s:line %i) %s", "service", "service", 69, v5);
    re::DynamicString::~DynamicString(&v8);
    re::StringID::~StringID(v7);
    result = _os_crash("assertion failure: (service) %s", v6);
    __break(1u);
  }

  return result;
}

uint64_t re::VFXAssetLoader::registerAsset(re::VFXAssetLoader *this, unsigned __int8 *a2, const re::ExistingAssetInformation *a3)
{
  v3 = *(a2 + 1);
  if (v3)
  {
    v4 = v3 >> 1;
  }

  else
  {
    v4 = v3 >> 1;
  }

  if (!v4)
  {
    return 2;
  }

  if (*(re::ServiceLocator::service<re::RenderManager>(*(this + 1)) + 205) == 1)
  {
    v8 = *(this + 1);
    v9 = *(a3 + 10);
    v10 = re::ServiceLocator::serviceOrNull<re::AssetService>(v8);
    if (v10)
    {
      if (v9 == -1)
      {
        v11 = 0;
      }

      else
      {
        v11 = v9;
      }

      re::AssetManager::fromPeerID(v10, v11, v23);
      v12 = LOBYTE(v23[0]);
      v13 = v23[1];
      v14 = re::ServiceLocator::serviceOrNull<re::ResourceFetchService>(v8);
      if (v14)
      {
        if (v12)
        {
          v15 = v13;
        }

        else
        {
          v15 = 0;
        }

        v16 = (*(*v14 + 64))(v14, v15);
LABEL_20:
        v20 = a2[72];
        v21 = *(a2 + 8);
        v22 = v21;
        if (v20 != 1 || v21)
        {
          [v21 setPeerPid:0xFFFFFFFFLL];
          [v22 setPeerTaskIdentity:v16];
          [v22 updateMemoryOwnership];
        }

        return 0;
      }

      v18 = *re::assetTypesLogObjects(0);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
LABEL_19:
        v16 = 0;
        goto LABEL_20;
      }

      LOWORD(v23[0]) = 0;
      v19 = "ResourceFetchService not available to retrieve peer task identity token";
    }

    else
    {
      v18 = *re::assetTypesLogObjects(0);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      LOWORD(v23[0]) = 0;
      v19 = "AssetManager not available to retrieve peer task identity token";
    }

    _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, v19, v23, 2u);
    goto LABEL_19;
  }

  return 0;
}

re *re::internal::destroyPersistent<re::VFXAsset>(re *result, uint64_t a2, re::VFXAsset *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::VFXAsset::~VFXAsset(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void *re::allocInfo_VFXFile(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_60))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE193E98, "VFXFile");
    __cxa_guard_release(&_MergedGlobals_60);
  }

  return &unk_1EE193E98;
}

void re::initInfo_VFXFile(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x2483894288;
  v16[1] = "VFXFile";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE193E60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193E60))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicString>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "vfxFilePath";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE193E88 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicString>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "vfxSandboxToken";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x2000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE193E90 = v14;
    __cxa_guard_release(&qword_1EE193E60);
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE193E88;
  *(this + 9) = re::internal::defaultConstruct<re::VFXFile>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::VFXFile>;
  *(this + 13) = re::internal::defaultConstructV2<re::VFXFile>;
  *(this + 14) = re::internal::defaultDestructV2<re::VFXFile>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void *re::internal::defaultConstruct<re::VFXFile>(_anonymous_namespace_ *a1, uint64_t a2, _OWORD *a3)
{
  *a3 = 0u;
  a3[1] = 0u;
  v4 = re::DynamicString::setCapacity(a3, 0);
  a3[2] = 0u;
  a3[3] = 0u;
  v5 = a3 + 2;

  return re::DynamicString::setCapacity(v5, 0);
}

double re::internal::defaultDestruct<re::VFXFile>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicString::deinit((a3 + 32));

  return re::DynamicString::deinit(a3);
}

void *re::internal::defaultConstructV2<re::VFXFile>(_anonymous_namespace_ *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  v2 = re::DynamicString::setCapacity(a1, 0);
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  v3 = (a1 + 32);

  return re::DynamicString::setCapacity(v3, 0);
}

double re::internal::defaultDestructV2<re::VFXFile>(uint64_t a1)
{
  re::DynamicString::deinit((a1 + 32));

  return re::DynamicString::deinit(a1);
}

void *re::allocInfo_VFXAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE193E70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193E70))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE193F28, "VFXAsset");
    __cxa_guard_release(&qword_1EE193E70);
  }

  return &unk_1EE193F28;
}

void re::initInfo_VFXAsset(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v15[0] = 0x46BED1B7050;
  v15[1] = "VFXAsset";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE193E80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193E80))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE193E68;
    if (!qword_1EE193E68)
    {
      v9 = re::allocInfo_VFXFile(v7);
      qword_1EE193E68 = v9;
      re::initInfo_VFXFile(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "vfxFile";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 1;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE193E78 = v13;
    __cxa_guard_release(&qword_1EE193E80);
  }

  *(this + 2) = 0x5800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE193E78;
  *(this + 9) = re::internal::defaultConstruct<re::VFXAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::VFXAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::VFXAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::VFXAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v14 = v16;
}

void *re::internal::defaultConstruct<re::VFXAsset>(_anonymous_namespace_ *a1, uint64_t a2, re::DynamicString *a3)
{
  v3 = a3;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  v4 = re::DynamicString::setCapacity(v3, 0);
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  v3 = (v3 + 32);
  result = re::DynamicString::setCapacity(v3, 0);
  *(v3 + 4) = 0;
  *(v3 + 40) = 0;
  *(v3 + 6) = -1;
  return result;
}

void *re::internal::defaultConstructV2<re::VFXAsset>(_anonymous_namespace_ *a1)
{
  v1 = a1;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  v2 = re::DynamicString::setCapacity(v1, 0);
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  v1 = (v1 + 32);
  result = re::DynamicString::setCapacity(v1, 0);
  *(v1 + 4) = 0;
  *(v1 + 40) = 0;
  *(v1 + 6) = -1;
  return result;
}

uint64_t re::introspect<re::RenderManager>(unsigned int a1)
{
  {
    re::introspect<re::RenderManager>(BOOL)::info = re::introspect_RenderManager(a1, v2, v3, v4, v5, v6);
  }

  return re::introspect<re::RenderManager>(BOOL)::info;
}

uint64_t *re::MeshAsset::assetType(re::MeshAsset *this)
{
  {
    re::MeshAsset::assetType(void)::type = "Mesh";
    qword_1EE1C5738 = 0;
    re::AssetType::generateCompiledExtension(&re::MeshAsset::assetType(void)::type);
  }

  return &re::MeshAsset::assetType(void)::type;
}

double re::MeshAsset::MeshAsset(re::MeshAsset *this)
{
  *this = &unk_1F5CBD550;
  *(this + 21) = 0;
  *(this + 44) = 0;
  *(this + 23) = 0;
  result = 0.0;
  *(this + 12) = 0u;
  *(this + 52) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 40) = 0;
  *(this + 136) = 0;
  *(this + 71) = 0;
  *(this + 144) = 0;
  *(this + 552) = 0u;
  *(this + 154) = 0;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 676) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 62) = 0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 72) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 82) = 0;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 21) = 0u;
  *(this + 39) = 0u;
  *(this + 160) = 0;
  *(this + 692) = 0x7FFFFFFFLL;
  *(this + 184) = 0;
  *(this + 44) = 0u;
  *(this + 45) = 0u;
  *(this + 740) = 0x7FFFFFFFLL;
  *(this + 304) = 0;
  *(this + 75) = 0u;
  *(this + 74) = 0u;
  *(this + 73) = 0u;
  *(this + 72) = 0u;
  *(this + 71) = 0u;
  *(this + 70) = 0u;
  *(this + 69) = 0u;
  *(this + 68) = 0u;
  *(this + 67) = 0u;
  *(this + 66) = 0u;
  *(this + 65) = 0u;
  *(this + 63) = 0u;
  *(this + 64) = 0u;
  *(this + 61) = 0u;
  *(this + 62) = 0u;
  *(this + 59) = 0u;
  *(this + 60) = 0u;
  *(this + 57) = 0u;
  *(this + 58) = 0u;
  *(this + 55) = 0u;
  *(this + 56) = 0u;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  *(this + 51) = 0u;
  *(this + 52) = 0u;
  *(this + 49) = 0u;
  *(this + 50) = 0u;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  *(this + 1220) = 0x7FFFFFFFLL;
  *(this + 1232) = 0;
  *(this + 155) = 0;
  *(this + 157) = 0;
  *(this + 156) = 0;
  *(this + 1264) = 0;
  return result;
}

uint64_t re::MeshAsset::MeshAsset(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CBD550;
  *(a1 + 8) = 0;
  re::MeshAssetData::MeshAssetData(a1 + 16, a2);
  *(a1 + 224) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 240) = 0;
  *(a1 + 544) = 0;
  *(a1 + 552) = 0;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0;
  *(a1 + 616) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 676) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 328) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 640) = 0;
  *(a1 + 624) = 0u;
  *(a1 + 692) = 0x7FFFFFFFLL;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0;
  *(a1 + 740) = 0x7FFFFFFFLL;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0;
  *(a1 + 1220) = 0x7FFFFFFFLL;
  *(a1 + 1232) = 0;
  *(a1 + 1240) = 0;
  *(a1 + 1256) = 0;
  *(a1 + 1248) = 0;
  *(a1 + 1264) = 0;
  if (!*(a1 + 152))
  {
    re::MeshAssetData::generateMetaData((a1 + 16));
  }

  re::DynamicArray<float>::operator=(a1 + 224, (a1 + 136));
  v3 = a1 + 96;
  if (!*(a1 + 112))
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(a1 + 48) + 232;
      while (!*(v5 + 16))
      {
        v5 += 512;
        if (!--v4)
        {
          goto LABEL_10;
        }
      }

      v3 = v5;
    }
  }

LABEL_10:
  v6 = *(v3 + 32);
  v7 = *(v3 + 16);
  v9[0] = v6;
  v9[1] = v7;
  re::MeshAsset::setSkeletons(a1, v9);
  return a1;
}

void re::MeshAsset::setSkeletons(void *a1, void *a2)
{
  v40[11] = *MEMORY[0x1E69E9840];
  v5 = a2[1];
  v6 = re::FixedArray<re::Skeleton>::deinit(a1 + 155);
  a1[156] = v5;
  if (v5)
  {
    if (v5 < 0x1642C8590B21643)
    {
      a1[157] = v8;
      if (!v8)
      {
        goto LABEL_25;
      }

      v10 = v5 - 1;
      if (v5 == 1)
      {
        v12 = 0uLL;
        *v8 = 0u;
        *(v8 + 176) = 0;
        *(v8 + 144) = 0u;
        *(v8 + 160) = 0u;
        *(v8 + 112) = 0u;
        *(v8 + 128) = 0u;
        *(v8 + 80) = 0u;
        *(v8 + 96) = 0u;
        *(v8 + 48) = 0u;
        *(v8 + 64) = 0u;
        *(v8 + 16) = 0u;
        v13 = (v8 + 16);
        *(v8 + 8) = &str_67;
        v11 = v8 + 172;
        *(v8 + 32) = 0u;
      }

      else
      {
        v11 = v8 + 172;
        do
        {
          *(v11 - 172) = 0uLL;
          *(v11 - 12) = 0uLL;
          *(v11 - 28) = 0uLL;
          *(v11 + 4) = 0;
          *(v11 - 44) = 0uLL;
          *(v11 - 60) = 0uLL;
          *(v11 - 76) = 0uLL;
          *(v11 - 92) = 0uLL;
          *(v11 - 108) = 0uLL;
          *(v11 - 124) = 0uLL;
          *(v11 - 140) = 0uLL;
          *(v11 - 156) = 0uLL;
          *(v11 - 164) = &str_67;
          *(v11 - 16) = 0uLL;
          *v11 = 0x7FFFFFFF;
          v11 += 184;
          --v10;
        }

        while (v10);
        v12 = 0uLL;
        *(v11 - 156) = 0u;
        v13 = (v11 - 156);
        *(v11 - 172) = 0u;
        *(v11 + 4) = 0;
        v13[8] = 0u;
        v13[9] = 0u;
        v13[6] = 0u;
        v13[7] = 0u;
        v13[4] = 0u;
        v13[5] = 0u;
        v13[2] = 0u;
        v13[3] = 0u;
        v13[1] = 0u;
        *(v11 - 164) = &str_67;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(v13 + 140) = v12;
      v13[7] = v12;
      v13[8] = v12;
      *v11 = 0x7FFFFFFF;
      v13[5] = v12;
      v13[6] = v12;
      v13[3] = v12;
      v13[4] = v12;
      v13[1] = v12;
      v13[2] = v12;
      *v13 = v12;
      while (1)
      {
        v17 = a2[1];
        if (v17 <= v16)
        {
          break;
        }

        v2 = a1[156];
        if (v2 <= v16)
        {
          goto LABEL_20;
        }

        v2 = (*a2 + v15);
        v18 = a1[157];
        v19 = v2[3];
        v40[0] = v2[4];
        v40[1] = v19;
        v20 = v2[6];
        *v35 = v2[7];
        *&v35[8] = v20;
        v21 = v2[9];
        v31[0] = v2[10];
        v31[1] = v21;
        if ((v32[0] & 1) == 0)
        {
          v8 = v33;
          if (v33)
          {
            if (BYTE8(v33))
            {
              v8 = (*(*v33 + 40))();
            }

            v34 = 0u;
            v33 = 0u;
          }
        }

        ++v16;
        v15 += 112;
        v14 += 184;
        if (v5 == v16)
        {
          return;
        }
      }

      re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, v17);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v25, v27);
      __break(1u);
LABEL_20:
      v31[0] = 0;
      memset(v40, 0, 80);
      v22 = MEMORY[0x1E69E9C10];
      v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v35 = 136315906;
      *&v35[4] = "operator[]";
      *&v35[12] = 1024;
      if (v23)
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      *&v35[14] = 468;
      v36 = 2048;
      v37 = v16;
      v38 = 2048;
      v39 = v2;
      _os_log_send_and_compose_impl(v24, v31, v40, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v35, 38, v29, v30);
      _os_crash_msg();
      __break(1u);
    }

    re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 184, v5);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v26, v28);
    __break(1u);
LABEL_25:
    re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
  }
}

uint64_t re::MeshAsset::MeshAsset(uint64_t a1, id *a2, uint64_t a3)
{
  *a1 = &unk_1F5CBD550;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 208) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 336) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 344) = *a2;
  *(a1 + 352) = 0;
  *(a1 + 544) = -1;
  v5 = *(a3 + 192);
  if (v5 != -1)
  {
    v12[0] = a1 + 352;
    (off_1F5CBD6F8[v5])(v12, a3);
    *(a1 + 544) = v5;
  }

  *(a1 + 576) = 0;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0u;
  *(a1 + 616) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 676) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0;
  *(a1 + 692) = 0x7FFFFFFFLL;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0;
  *(a1 + 740) = 0x7FFFFFFFLL;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0;
  *(a1 + 1220) = 0x7FFFFFFFLL;
  *(a1 + 1232) = 0;
  *(a1 + 1240) = 0;
  *(a1 + 1256) = 0;
  *(a1 + 1248) = 0;
  *(a1 + 1264) = 0;
  re::makeMeshCollectionWithMeshPayload(v12, (a1 + 344), (a1 + 352));
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a1 + 304, v12);
  re::DynamicArray<re::MeshModel>::deinit(v12);
  v15 = 0;
  v12[1] = 0;
  v13 = 0;
  v12[0] = 0;
  v14 = 0;
  re::makeMeshAssetInstancesWithMeshPayload((a1 + 344), v12);
  v11[0] = v15;
  v11[1] = v13;
  v6 = *(a1 + 1248);
  v10[0] = *(a1 + 1256);
  v10[1] = v6;
  v8 = re::globalAllocators(v7);
  re::MeshNameMap::init((a1 + 640), a1 + 304, v11, v10, v8[2]);
  re::DynamicArray<re::MeshAssetInstance>::deinit(v12);
  return a1;
}

void re::MeshAsset::~MeshAsset(re::MeshAsset *this)
{
  *this = &unk_1F5CBD550;
  *(this + 71) = 0;
  ++*(this + 144);
  *(this + 76) = 0;
  ++*(this + 154);
  *(this + 1264) = 0;
  re::FixedArray<re::Skeleton>::deinit(this + 155);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 148);
  re::FixedArray<CoreIKTransform>::deinit(this + 145);
  re::FixedArray<CoreIKTransform>::deinit(this + 142);
  re::FixedArray<CoreIKTransform>::deinit(this + 139);
  re::FixedArray<CoreIKTransform>::deinit(this + 136);
  re::FixedArray<CoreIKTransform>::deinit(this + 133);
  re::MeshNameMap::~MeshNameMap((this + 640));
  re::DynamicArray<unsigned long>::deinit(this + 592);
  re::DynamicArray<unsigned long>::deinit(this + 552);
  v2 = *(this + 136);
  if (v2 != -1)
  {
    (off_1F5CBD6E8[v2])(&v3, this + 352);
  }

  *(this + 136) = -1;

  re::DynamicArray<re::MeshModel>::deinit(this + 304);
  re::DynamicArray<re::AssetHandle>::deinit(this + 264);
  re::DynamicArray<unsigned long>::deinit(this + 224);
  re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(this + 184);
  re::DynamicArray<unsigned long>::deinit(this + 136);
  re::DynamicArray<re::MeshAssetSkeleton>::deinit(this + 96);
  re::DynamicArray<re::MeshAssetInstance>::deinit(this + 56);
  re::DynamicArray<re::MeshAssetModel>::deinit(this + 16);
}

{
  re::MeshAsset::~MeshAsset(this);

  JUMPOUT(0x1E6906520);
}

void *re::FixedArray<re::Skeleton>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 184 * v2;
      do
      {
        re::Skeleton::~Skeleton(v4);
        v4 = (v6 + 184);
        v5 -= 184;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void re::MeshAsset::replaceContentsWithMeshResourceDefinition(re::MeshAsset *a1, uint64_t a2, Device **a3, re::MeshManager *a4, int a5)
{
  v8 = *(a2 + 240) != 0;
  *(a1 + 1232) = v8;
  v11 = a5;
  v12 = v8;
  re::makeMeshPayloadWithMeshResourceDefinition(a2, a3, &v11, &v10);
  LOBYTE(a4) = re::MeshAsset::replaceContentsWithPayload(a1, &v10, a3, a4);

  if ((a4 & 1) == 0)
  {
    re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) Unable to replace MeshAsset contents with a model definition", "success", "replaceContentsWithMeshResourceDefinition", 552);
    _os_crash("assertion failure: (success) Unable to replace MeshAsset contents with a model definition");
    __break(1u);
  }
}

uint64_t re::MeshAsset::replaceContentsWithPayload(re::MeshAsset *this, id *a2, id *a3, re::MeshManager *a4)
{
  v56 = *MEMORY[0x1E69E9840];
  *(this + 1264) = 0;
  if (*(this + 74) && *(this + 69))
  {
    re::MeshManager::destroyCollection(a4, this + 69);
    re::DynamicArray<unsigned long>::deinit(this + 592);
    re::DynamicArray<unsigned long>::deinit(this + 552);
  }

  re::FixedArray<re::Skeleton>::deinit(this + 155);
  re::MeshNameMap::deinit((this + 640));
  *(this + 30) = 0;
  ++*(this + 62);
  if (!*a3)
  {
    goto LABEL_8;
  }

  re::ObjCObject::operator=(this + 43, a2);
  re::MeshPayload::makeMeshPayloadBuffers(&v45, a2, a3);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,re::FixedInlineArray<re::BufferSliceSourceCPU,8ul>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,re::FixedInlineArray<re::BufferSliceSourceCPU,8ul>>,(std::__variant_detail::_Trait)1>>(this + 352, &v45);
  if (v50 != -1)
  {
    (off_1F5CBD6E8[v50])(v51, &v45);
  }

  result = re::MeshPayloadBuffers::areValid((this + 352));
  if (result)
  {
LABEL_8:
    re::makeMeshCollectionWithMeshPayload(&v45, a2, (this + 352));
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 304, &v45);
    re::DynamicArray<re::MeshModel>::deinit(&v45);
    v43 = 0;
    v40[1] = 0;
    v41 = 0;
    v40[0] = 0;
    v42 = 0;
    re::makeMeshAssetSkeletonsWithMeshPayload(a2, v40);
    *&v45 = v43;
    *(&v45 + 1) = v41;
    re::MeshAsset::setSkeletons(this, &v45);
    v39 = 0;
    v36[1] = 0;
    v37 = 0;
    v36[0] = 0;
    v38 = 0;
    v31 = a2;
    re::makeMeshAssetInstancesWithMeshPayload(a2, v36);
    *&v45 = v39;
    *(&v45 + 1) = v37;
    v8 = *(this + 156);
    *v51 = *(this + 157);
    *&v51[8] = v8;
    v10 = re::globalAllocators(v9);
    re::MeshNameMap::init((this + 640), this + 304, &v45, v51, v10[2]);
    v35 = 0;
    memset(v33, 0, sizeof(v33));
    v34 = 0;
    v11 = *(this + 40);
    if (v11)
    {
      v12 = 0;
      v32 = *(this + 40);
      do
      {
        v13 = *(this + 40);
        if (v13 <= v12)
        {
          v44 = 0;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v45 = 0u;
          v28 = MEMORY[0x1E69E9C10];
          v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v51 = 136315906;
          *&v51[4] = "operator[]";
          *&v51[12] = 1024;
          if (v29)
          {
            v30 = 3;
          }

          else
          {
            v30 = 2;
          }

          *&v51[14] = 797;
          v52 = 2048;
          v53 = v12;
          v54 = 2048;
          v55 = v13;
          _os_log_send_and_compose_impl(v30, &v44, &v45, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v51, 38, v31, v32);
          _os_crash_msg();
          __break(1u);
        }

        v14 = (*(this + 42) + 864 * v12);
        v15 = v14[28];
        if (v15 && (v16 = *(v15 + 8)) != 0)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          do
          {
            v20 = v14[28];
            if (v20 && *(v20 + 8) > v18 && (v21 = *(*(v20 + 16) + 88 * v18 + 1)) != 0)
            {
              if (v18 >= v14[7])
              {
                v22 = 0;
              }

              else
              {
                v22 = *(v14[8] + 544 * v18 + 452);
              }

              v17 += v22;
              v19 += v22 * v21;
            }

            else
            {
              re::SkinningModelUtil::skinnedEndIndicesBuffer(v51, (v14 + 18), v18);
              re::ReadOnlyCPUAccessibleBufferSliceContent::make(&v45, v51);
              if (v45 == 1)
              {
                if (v46 >= 4)
                {
                  v23 = 0;
                  v24 = v46 >> 2;
                  v25 = *(&v45 + 1);
                  do
                  {
                    v26 = *v25++;
                    v19 = v19 - v23 + v26;
                    v23 = v26;
                    --v24;
                  }

                  while (v24);
                }

                v17 += v46 >> 2;
                re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent((&v45 + 8));
              }

              else if (*(&v46 + 1) && (v47 & 1) != 0)
              {
                (*(**(&v46 + 1) + 40))();
              }

              if (HIDWORD(v53) != -1)
              {
                (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[HIDWORD(v53)])(&v45, v51);
              }
            }

            ++v18;
          }

          while (v18 != v16);
          if (v17)
          {
            v27 = v19 / v17;
          }

          else
          {
            v27 = 0.0;
          }

          v11 = v32;
        }

        else
        {
          v27 = 0.0;
        }

        *&v45 = v27;
        re::DynamicArray<float>::add(v33, &v45);
        ++v12;
      }

      while (v12 != v11);
    }

    re::DynamicArray<re::RigComponentConstraint>::operator=(this + 224, v33);
    if (v33[0])
    {
      if (v35)
      {
        (*(*v33[0] + 40))();
      }
    }

    *(this + 1232) = [*v31 isLimitedRenderAsset];
    re::DynamicArray<re::MeshAssetInstance>::deinit(v36);
    re::DynamicArray<re::MeshAssetSkeleton>::deinit(v40);
    return 1;
  }

  return result;
}

__n128 re::MeshAsset::aabbFromMesh@<Q0>(uint64_t a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  v72 = *MEMORY[0x1E69E9840];
  v57 = a3;
  if (*(a1 + 632) && (*(a1 + 1264) & 1) != 0)
  {
    v6 = *(a1 + 568);
    if (*(a1 + 568))
    {
      v7 = 0;
      v8.i64[0] = 0x7F0000007FLL;
      v8.i64[1] = 0x7F0000007FLL;
      v9.i64[0] = 0x7F0000007FLL;
      v9.i64[1] = 0x7F0000007FLL;
      v62 = vnegq_f32(v8);
      v63 = v9;
      while (1)
      {
        v10 = *(a1 + 568);
        if (v10 <= v7)
        {
          goto LABEL_31;
        }

        v11 = re::DataArray<re::MeshInstance>::tryGet(*(a1 + 632) + 72, *(*(a1 + 584) + 8 * v7));
        if (v11)
        {
          v12 = v11;
          v13 = re::DataArray<re::MeshModel>::tryGet(*(a1 + 632) + 8, *(v11 + 16));
          if (v13)
          {
            v14 = 0;
            v15 = *a2;
            v16 = a2[1];
            v17 = a2[2];
            v18 = a2[3];
            v19 = v12[3];
            v20 = v12[4];
            v21 = v12[5];
            *v70 = v12[2];
            *&v70[16] = v19;
            *&v70[32] = v20;
            v71 = v21;
            do
            {
              *(&v65 + v14) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(*&v70[v14])), v16, *&v70[v14], 1), v17, *&v70[v14], 2), v18, *&v70[v14], 3);
              v14 += 16;
            }

            while (v14 != 64);
            re::AABB::transform(v13 + 16, &v65, v70);
            v22 = v62;
            v22.i32[3] = 0;
            v23 = *v70;
            v24 = *&v70[16];
            v23.i32[3] = 0;
            v25 = vminnmq_f32(v22, v23);
            v26 = v63;
            v26.i32[3] = 0;
            v24.i32[3] = 0;
            v62 = v25;
            v63 = vmaxnmq_f32(v26, v24);
          }
        }

        if (++v7 == v6)
        {
          goto LABEL_22;
        }
      }
    }
  }

  else
  {
    v10 = *(a1 + 72);
    v7 = v10;
    if (v10)
    {
      v27 = 0;
      v28 = *a2;
      v29 = a2[1];
      v30.i64[0] = 0x7F0000007FLL;
      v30.i64[1] = 0x7F0000007FLL;
      v31.i64[0] = 0x7F0000007FLL;
      v31.i64[1] = 0x7F0000007FLL;
      v62 = vnegq_f32(v30);
      v63 = v31;
      v32 = a2[2];
      v33 = a2[3];
      v60 = v29;
      v61 = *a2;
      v58 = v33;
      v59 = v32;
      while (v27 != v10)
      {
        v34 = *(a1 + 88) + 96 * v27;
        v3 = *(v34 + 80);
        v35 = *(a1 + 32);
        if (v35 <= v3)
        {
          goto LABEL_27;
        }

        v36 = 0;
        v37 = *(a1 + 48);
        v38 = *(v34 + 32);
        v39 = *(v34 + 48);
        v40 = *(v34 + 64);
        *v70 = *(v34 + 16);
        *&v70[16] = v38;
        *&v70[32] = v39;
        v71 = v40;
        do
        {
          *(&v65 + v36) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, COERCE_FLOAT(*&v70[v36])), v29, *&v70[v36], 1), v32, *&v70[v36], 2), v33, *&v70[v36], 3);
          v36 += 16;
        }

        while (v36 != 64);
        re::AABB::transform(v37 + (v3 << 9) + 16, &v65, v70);
        v33 = v58;
        v32 = v59;
        v29 = v60;
        v28 = v61;
        v42 = v62;
        v41 = v63;
        v42.i32[3] = 0;
        v43 = *v70;
        v44 = *&v70[16];
        v43.i32[3] = 0;
        v41.i32[3] = 0;
        v44.i32[3] = 0;
        v62 = vminnmq_f32(v42, v43);
        v63 = vmaxnmq_f32(v41, v44);
        if (++v27 == v10)
        {
          goto LABEL_22;
        }
      }

      *v57 = v62;
      v57[1] = v63;
      v64 = 0;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v65 = 0u;
      v35 = MEMORY[0x1E69E9C10];
      v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v70 = 136315906;
      *&v70[4] = "operator[]";
      *&v70[12] = 1024;
      if (v48)
      {
        v49 = 3;
      }

      else
      {
        v49 = 2;
      }

      *&v70[14] = 797;
      *&v70[18] = 2048;
      *&v70[20] = v10;
      *&v70[28] = 2048;
      *&v70[30] = v10;
      _os_log_send_and_compose_impl(v49, &v64, &v65, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v70, 38, v56, v57);
      _os_crash_msg();
      __break(1u);
LABEL_27:
      *v57 = v62;
      v57[1] = v63;
      v64 = 0;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v65 = 0u;
      v50 = MEMORY[0x1E69E9C10];
      v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v70 = 136315906;
      *&v70[4] = "operator[]";
      *&v70[12] = 1024;
      if (v51)
      {
        v52 = 3;
      }

      else
      {
        v52 = 2;
      }

      *&v70[14] = 797;
      *&v70[18] = 2048;
      *&v70[20] = v3;
      *&v70[28] = 2048;
      *&v70[30] = v35;
      _os_log_send_and_compose_impl(v52, &v64, &v65, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v70, 38, v56, v57);
      _os_crash_msg();
      __break(1u);
LABEL_31:
      *v57 = v62;
      v57[1] = v63;
      v64 = 0;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v65 = 0u;
      v53 = MEMORY[0x1E69E9C10];
      v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v70 = 136315906;
      *&v70[4] = "operator[]";
      *&v70[12] = 1024;
      if (v54)
      {
        v55 = 3;
      }

      else
      {
        v55 = 2;
      }

      *&v70[14] = 797;
      *&v70[18] = 2048;
      *&v70[20] = v7;
      *&v70[28] = 2048;
      *&v70[30] = v10;
      _os_log_send_and_compose_impl(v55, &v64, &v65, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v70, 38, v56, v57);
      _os_crash_msg();
      __break(1u);
    }
  }

  v45.i64[0] = 0x7F0000007FLL;
  v45.i64[1] = 0x7F0000007FLL;
  v46.i64[0] = 0x7F0000007FLL;
  v46.i64[1] = 0x7F0000007FLL;
  v62 = vnegq_f32(v45);
  v63 = v46;
LABEL_22:
  result = v63;
  *v57 = v62;
  v57[1] = v63;
  return result;
}

uint64_t re::DataArray<re::MeshInstance>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 144 * a2;
  }

  else
  {
    return 0;
  }
}

uint64_t re::DataArray<re::MeshModel>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 864 * a2;
  }

  else
  {
    return 0;
  }
}

void re::MeshAsset::tightAABBFromMesh(uint64_t a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  v98 = *MEMORY[0x1E69E9840];
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  v5 = vnegq_f32(v4);
  *a3 = v5;
  a3[1] = v4;
  if (*(a1 + 632))
  {
    v6 = a1;
    v68 = *(a1 + 568);
    if (*(a1 + 568))
    {
      v7 = 0;
      v5 = vnegq_f32(v4);
      do
      {
        v8 = v6[71];
        if (v8 <= v7)
        {
LABEL_59:
          *a3 = v5;
          a3[1] = v4;
          v83[0].i64[0] = 0;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v85 = 0u;
          v41 = MEMORY[0x1E69E9C10];
          v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v95[0]) = 136315906;
          *(v95 + 4) = "operator[]";
          WORD6(v95[0]) = 1024;
          if (v56)
          {
            v57 = 3;
          }

          else
          {
            v57 = 2;
          }

          *(v95 + 14) = 797;
          WORD1(v95[1]) = 2048;
          *(&v95[1] + 4) = v7;
          WORD6(v95[1]) = 2048;
          *(&v95[1] + 14) = v8;
          _os_log_send_and_compose_impl(v57, v83, &v85, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v95, 38, v63, v64);
          _os_crash_msg();
          __break(1u);
LABEL_63:
          *a3 = v39;
          a3[1] = v38;
          v84 = 0;
          v96 = 0u;
          v97 = 0u;
          memset(v95, 0, sizeof(v95));
          v58 = MEMORY[0x1E69E9C10];
          v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v90 = 136315906;
          *&v90[4] = "operator[]";
          *&v90[12] = 1024;
          if (v59)
          {
            v60 = 3;
          }

          else
          {
            v60 = 2;
          }

          *&v90[14] = 476;
          v91 = 2048;
          v92 = v3;
          v93 = 2048;
          v94 = v41;
          _os_log_send_and_compose_impl(v60, &v84, v95, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v90, 38, v63, v64);
          _os_crash_msg();
          __break(1u);
LABEL_67:
          std::__throw_bad_variant_access[abi:nn200100]();
        }

        v77 = v5;
        v78 = v4;
        v9 = re::DataArray<re::MeshInstance>::tryGet(v6[79] + 72, *(v6[73] + 8 * v7));
        if (!v9)
        {
          goto LABEL_46;
        }

        v10 = 0;
        v11 = *a2;
        v12 = a2[1];
        v13 = a2[2];
        v14 = a2[3];
        v15 = *(v9 + 48);
        v16 = *(v9 + 64);
        v17 = *(v9 + 80);
        v95[0] = *(v9 + 32);
        v95[1] = v15;
        v95[2] = v16;
        v96 = v17;
        do
        {
          *(&v85 + v10 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v11, COERCE_FLOAT(v95[v10])), v12, *&v95[v10], 1), v13, v95[v10], 2), v14, v95[v10], 3);
          ++v10;
        }

        while (v10 != 4);
        v73 = v86;
        v74 = v85;
        v75 = v88;
        v76 = v87;
        v18 = re::DataArray<re::MeshModel>::tryGet(v6[79] + 8, *(v9 + 16));
        if (v18)
        {
          v19 = v18;
          v8 = *(v18 + 56);
          v5 = v77;
          v4 = v78;
          if (*(v18 + 56))
          {
            v20 = 0;
            v22 = v75;
            v21 = v76;
            while (1)
            {
              v3 = *(v19 + 56);
              if (v3 <= v20)
              {
                *a3 = v5;
                a3[1] = v4;
                v83[0].i64[0] = 0;
                v88 = 0u;
                v89 = 0u;
                v86 = 0u;
                v87 = 0u;
                v85 = 0u;
                v31 = MEMORY[0x1E69E9C10];
                v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(v95[0]) = 136315906;
                *(v95 + 4) = "operator[]";
                WORD6(v95[0]) = 1024;
                if (v52)
                {
                  v53 = 3;
                }

                else
                {
                  v53 = 2;
                }

                *(v95 + 14) = 476;
                WORD1(v95[1]) = 2048;
                *(&v95[1] + 4) = v20;
                WORD6(v95[1]) = 2048;
                *(&v95[1] + 14) = v3;
                _os_log_send_and_compose_impl(v53, v83, &v85, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v95, 38, v63, v64);
                _os_crash_msg();
                __break(1u);
LABEL_54:
                *a3 = v77;
                a3[1] = v78;
                v79[0] = 0;
                v88 = 0u;
                v89 = 0u;
                v86 = 0u;
                v87 = 0u;
                v85 = 0u;
                v8 = MEMORY[0x1E69E9C10];
                v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(v95[0]) = 136315906;
                *(v95 + 4) = "operator[]";
                WORD6(v95[0]) = 1024;
                if (v54)
                {
                  v55 = 3;
                }

                else
                {
                  v55 = 2;
                }

                *(v95 + 14) = 476;
                WORD1(v95[1]) = 2048;
                *(&v95[1] + 4) = v3;
                WORD6(v95[1]) = 2048;
                *(&v95[1] + 14) = v31;
                _os_log_send_and_compose_impl(v55, v79, &v85, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v95, 38, v63, v64);
                _os_crash_msg();
                __break(1u);
LABEL_58:
                *a3 = v77;
                a3[1] = v78;
                re::internal::assertLog(6, v34, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v3, v34);
                _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v61, v62);
                __break(1u);
                goto LABEL_59;
              }

              v77 = v5;
              v78 = v4;
              v23 = 0;
              v24 = *(v19 + 64);
              v25 = v24 + 544 * v20;
              v3 = *(v25 + 461);
              v26 = *(v25 + 368);
              v27 = *(v25 + 384);
              v28 = *(v25 + 400);
              v95[0] = *(v25 + 352);
              v95[1] = v26;
              v95[2] = v27;
              v96 = v28;
              do
              {
                *(&v85 + v23 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v74, COERCE_FLOAT(v95[v23])), v73, *&v95[v23], 1), v21, v95[v23], 2), v22, v95[v23], 3);
                ++v23;
              }

              while (v23 != 4);
              v83[0] = v85;
              v83[1] = v86;
              v83[2] = v87;
              v83[3] = v88;
              if (v3 == 255 || !*(v25 + 452))
              {
                goto LABEL_43;
              }

              v29 = (v24 + 544 * v20);
              do
              {
                v30 = v29;
                v29 = *v29;
                v31 = v30[3];
                if (v29)
                {
                  v32 = v31 == 0;
                }

                else
                {
                  v32 = 0;
                }
              }

              while (v32);
              if (v31 <= v3)
              {
                goto LABEL_54;
              }

              if (*(v30[4] + 16 * v3 + 12) != 30)
              {
                goto LABEL_43;
              }

              v69 = v88;
              v70 = v87;
              v71 = v86;
              v72 = v85;
              v33 = re::AttributeTable::buffers(v25);
              if (v34 <= v3)
              {
                goto LABEL_58;
              }

              v35 = v33 + 24 * v3;
              *v90 = *v35;
              v36 = *(v35 + 4);
              LODWORD(v35) = *(v35 + 5);
              v85 = *v90;
              v86.i64[0] = __PAIR64__(v35, v36);
              v79[0] = 0;
              v80 = 0;
              v81 = v36;
              v82 = v35;
              *&v95[0] = v79;
              *(&v95[0] + 1) = v79;
              if (*&v90[8] == -1)
              {
                goto LABEL_67;
              }

              v84 = v95;
              (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_11BufferSliceC1ENS6_10BufferViewEmmE3__0ZNS9_C1ESA_mmE3__1EEEEEJRNS0_6__implIJPN3MTL6BufferEPKNS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v85.u32[2]])(&v84, &v85);
              re::ReadOnlyCPUAccessibleBufferSliceContent::make(&v85, v79);
              if (v85.u8[0] != 1)
              {
                break;
              }

              v37 = v25;
              v39 = v77;
              v38 = v78;
              do
              {
                v40 = v37;
                v37 = *v37;
                v41 = v40[3];
                if (v37)
                {
                  v42 = v41 == 0;
                }

                else
                {
                  v42 = 0;
                }
              }

              while (v42);
              if (v41 <= v3)
              {
                goto LABEL_63;
              }

              v43 = *(v25 + 452);
              if (v43)
              {
                v44 = *(v40[4] + 16 * v3);
                v45 = (v85.i64[1] + 8);
                do
                {
                  v46 = vaddq_f32(v69, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v72, *(v45 - 2)), v71, *(v45 - 1)), v70, *v45));
                  v47 = vdivq_f32(v46, vdupq_laneq_s32(v46, 3));
                  v39.i32[3] = 0;
                  v47.i32[3] = 0;
                  v39 = vminnmq_f32(v39, v47);
                  v38.i32[3] = 0;
                  v38 = vmaxnmq_f32(v38, v47);
                  v45 = (v45 + v44);
                  --v43;
                }

                while (v43);
              }

              v77 = v39;
              v78 = v38;
              re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&v85.u32[2]);
              if (v80 != -1)
              {
                (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v80])(&v85, v79);
              }

              v5 = v77;
              v4 = v78;
LABEL_44:
              ++v20;
              v22 = v75;
              v21 = v76;
              if (v20 == v8)
              {
                goto LABEL_47;
              }
            }

            if (v86.i64[1] && (v87.i8[0] & 1) != 0)
            {
              (*(*v86.i64[1] + 40))();
            }

            if (v80 != -1)
            {
              (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v80])(&v85, v79);
            }

LABEL_43:
            re::AABB::transform(v25 + 416, v83, &v85);
            v48 = v85;
            v50 = v77;
            v49 = v78;
            v50.i32[3] = 0;
            v48.i32[3] = 0;
            v5 = vminnmq_f32(v50, v48);
            v51 = v86;
            v49.i32[3] = 0;
            v51.i32[3] = 0;
            v4 = vmaxnmq_f32(v49, v51);
            goto LABEL_44;
          }
        }

        else
        {
LABEL_46:
          v5 = v77;
          v4 = v78;
        }

LABEL_47:
        ++v7;
        v6 = a1;
      }

      while (v7 != v68);
    }

    *a3 = v5;
    a3[1] = v4;
  }
}

re::AttributeTable *re::AttributeTable::buffers(re::AttributeTable ***this)
{
  v2 = *this;
  if (v2)
  {
    v3 = this[15] == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return re::AttributeTable::buffers(v2);
  }

  else
  {
    return this[17];
  }
}

uint64_t re::MeshAssetLoader::introspectionType(re::MeshAssetLoader *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::MeshAsset>(BOOL)::info = re::internal::getOrCreateInfo("MeshAsset", re::allocInfo_MeshAsset, re::initInfo_MeshAsset, &re::internal::introspectionInfoStorage<re::MeshAsset>, 0);
      v1 = &unk_1EE187000;
    }
  }

  return v1[43];
}

uint64_t re::MeshAsset::createRuntimeData(uint64_t a1, uint64_t a2, re *a3, int a4)
{
  v41 = *MEMORY[0x1E69E9840];
  *(a1 + 1264) = 0;
  if (!a2)
  {
    return 1;
  }

  if (*(a1 + 568) || *(a1 + 72) == 0)
  {
    return 1;
  }

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(a1 + 48);
      v35 = v6 + (v5 << 9);
      do
      {
        re::DynamicArray<re::MeshAssetBlendShapeData>::clear(v6 + 112);
        v7 = *(v6 + 208);
        if (v7)
        {
          v8 = *(v6 + 224);
          v9 = v8 + (v7 << 8);
          do
          {
            v10 = *(v8 + 16);
            if (v10)
            {
              v11 = 0;
              v12 = 80 * v10;
              v13 = (*(v8 + 32) + 16);
              while (1)
              {
                v14 = (*(v13 - 1) & 1) != 0 ? *v13 : v13 - 7;
                if (!strcmp(v14, "vertexUV1"))
                {
                  break;
                }

                v11 |= strcmp(v14, "vertexUV") == 0;
                v13 += 10;
                v12 -= 80;
                if (!v12)
                {
                  if (v11)
                  {
                    v36 = "vertexUV1";
                    v15 = re::Hash<re::DynamicString>::operator()(&v37, "vertexUV1");
                    v16 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(v8 + 200, &v36, v15, &v37);
                    if (HIDWORD(v38) == 0x7FFFFFFF)
                    {
                      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(v8 + 200, "vertexUV1", &v37);
                      if (v37)
                      {
                        if (v38)
                        {
                          (*(*v37 + 40))();
                        }
                      }
                    }
                  }

                  break;
                }
              }
            }

            v8 += 256;
          }

          while (v8 != v9);
        }

        v6 += 512;
      }

      while (v6 != v35);
    }
  }

  if (!*(a1 + 1248))
  {
    v17 = a1 + 96;
    if (!*(a1 + 112))
    {
      v18 = *(a1 + 32);
      if (v18)
      {
        v19 = *(a1 + 48) + 232;
        while (!*(v19 + 16))
        {
          v19 += 512;
          if (!--v18)
          {
            goto LABEL_33;
          }
        }

        v17 = v19;
      }
    }

LABEL_33:
    v20 = *(v17 + 32);
    v21 = *(v17 + 16);
    v37 = v20;
    v38 = v21;
    re::MeshAsset::setSkeletons(a1, &v37);
  }

  if ((atomic_load_explicit(&qword_1EE193FC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193FC0))
  {
    re::Defaults::BOOLValue(&v37, "EnableMeshPayload", v30);
    if (v37)
    {
      v31 = BYTE1(v37);
    }

    else
    {
      v31 = 1;
    }

    _MergedGlobals_61 = v31;
    __cxa_guard_release(&qword_1EE193FC0);
  }

  v22 = *(a1 + 32);
  if (v22)
  {
    v23 = (*(a1 + 48) + 488);
    v24 = v22 << 9;
    while (!*(v23 - 20) && !*(v23 - 15) && !*(v23 - 10) && !*(v23 - 5) && !*v23)
    {
      v23 += 64;
      v24 -= 512;
      if (!v24)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_51;
  }

LABEL_43:
  if ((_MergedGlobals_61 & 1) == 0)
  {
LABEL_51:
    re::createMeshCollectionFromMeshAsset(&v37, a3, (a1 + 16));
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a1 + 304, &v37);
    re::DynamicArray<re::MeshModel>::deinit(&v37);
    goto LABEL_52;
  }

  if (!*(a1 + 344))
  {
    LODWORD(v36) = a4;
    BYTE4(v36) = *(a1 + 1232);
    operator new();
  }

  if (re::MeshPayloadBuffers::areValid((a1 + 352)))
  {
    goto LABEL_50;
  }

  re::MeshPayload::makeMeshPayloadBuffers(&v37, (a1 + 344), a3);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,re::FixedInlineArray<re::BufferSliceSourceCPU,8ul>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<re::FixedInlineArray<NS::SharedPtr<MTL::Buffer>,8ul>,re::FixedInlineArray<re::BufferSliceSourceCPU,8ul>>,(std::__variant_detail::_Trait)1>>(a1 + 352, &v37);
  if (v40 != -1)
  {
    (off_1F5CBD6E8[v40])(&v36, &v37);
  }

  result = re::MeshPayloadBuffers::areValid((a1 + 352));
  if (result)
  {
LABEL_50:
    v37 = &unk_1F5CBD830;
    v38 = a1;
    v39 = &v37;
    re::runInLocalAutoreleasePool(&v37);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&v37);
LABEL_52:
    v26 = re::MeshNameMap::deinit((a1 + 640));
    v27 = *(a1 + 88);
    v28 = *(a1 + 72);
    v29 = re::globalAllocators(v26);
    re::MeshNameMap::init((a1 + 640), (a1 + 16), v27, v28, v29[2]);
    if (!*(a1 + 152))
    {
      re::MeshAssetData::generateMetaData((a1 + 16));
    }

    re::DynamicArray<float>::operator=(a1 + 224, (a1 + 136));
    return 1;
  }

  return result;
}

void re::DynamicArray<re::MeshAssetBlendShapeData>::clear(uint64_t result)
{
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 56 * v2;
    do
    {
      re::FixedArray<re::BlendShapeDefinition>::deinit(v3 + 2);
      re::StringID::destroyString(v3);
      v3 = (v3 + 56);
      v4 -= 56;
    }

    while (v4);
  }

  ++*(result + 24);
}

uint64_t re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(uint64_t a1, char *a2, void *a3)
{
  v9 = 0;
  v10 = a2;
  v7 = 0;
  v8 = 0;
  v5 = re::Hash<re::DynamicString>::operator()(&v11, a2);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v10, v5, &v7);
  if (HIDWORD(v8) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,re::DynamicString>(a1, &v7, &v10, a3);
  }

  else
  {
    return *(a1 + 16) + 80 * HIDWORD(v8) + 40;
  }
}

uint64_t re::DataArray<re::MeshInstance>::get(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = HIWORD(a2);
  v3 = *(a1 + 16);
  if (v3 <= HIWORD(a2))
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
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 32) + 16 * HIWORD(a2)) + 144 * a2;
}

uint64_t re::DataArray<re::MeshModel>::get(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = HIWORD(a2);
  v3 = *(a1 + 16);
  if (v3 <= HIWORD(a2))
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
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 32) + 16 * HIWORD(a2)) + 864 * a2;
}

uint64_t re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*a2 & 0xFFFFFFLL)) ^ ((0xBF58476D1CE4E5B9 * (*a2 & 0xFFFFFFLL)) >> 27));
  re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::findEntry<re::DataArrayHandle<re::MeshModel>>(a1, a2, v3 ^ (v3 >> 31), &v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 40 * v6 + 16;
  }
}

uint64_t re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::addNew(uint64_t a1, void *a2, _OWORD *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*a2 & 0xFFFFFFLL)) ^ ((0xBF58476D1CE4E5B9 * (*a2 & 0xFFFFFFLL)) >> 27));
  re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::findEntry<re::DataArrayHandle<re::MeshModel>>(a1, a2, v6 ^ (v6 >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 40 * HIDWORD(v10) + 16;
  }

  v7 = re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 8) = *a2;
  result = v7 + 16;
  *(v7 + 16) = *a3;
  ++*(a1 + 40);
  return result;
}

uint64_t re::MeshAsset::registerRuntimeData(re::MeshAsset *this, re::MeshManager *a2)
{
  v148 = *MEMORY[0x1E69E9840];
  *(this + 1264) = 0;
  if (*(this + 38))
  {
    if (*(this + 43))
    {
      re::registerMeshCollectionWithMeshPayload(this + 304, this + 43, a2, v122);
      if ((this + 552) != v122)
      {
        v7 = *(this + 69);
        if (v7 && *&v122[0] && v7 != *&v122[0])
        {
LABEL_138:
          re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
          _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
          __break(1u);
          goto LABEL_139;
        }

        *(this + 69) = *&v122[0];
        *&v122[0] = v7;
        v8 = *(this + 35);
        *(this + 35) = *(v122 + 8);
        *(v122 + 8) = v8;
        v9 = *(this + 73);
        *(this + 73) = v123;
        *&v123 = v9;
        ++DWORD2(v122[1]);
        ++*(this + 144);
      }

      v10 = *(&v123 + 1);
      if (this + 592 != &v123 + 8)
      {
        v11 = *(this + 74);
        if (v11 && *(&v123 + 1) && v11 != *(&v123 + 1))
        {
LABEL_139:
          re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
          _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
          __break(1u);
        }

        *(this + 74) = *(&v123 + 1);
        *(&v123 + 1) = v11;
        v12 = *(this + 600);
        *(this + 600) = v124;
        v124 = v12;
        v13 = *(this + 78);
        *(this + 78) = *(&v125 + 1);
        *(&v125 + 1) = v13;
        LODWORD(v125) = v125 + 1;
        v10 = v11;
        ++*(this + 154);
      }

      if (v10)
      {
        if (*(&v125 + 1))
        {
          (*(*v10 + 40))(v10);
        }

        *(&v125 + 1) = 0;
        v124 = 0uLL;
        *(&v123 + 1) = 0;
        LODWORD(v125) = v125 + 1;
      }

      if (*&v122[0] && v123)
      {
        (*(**&v122[0] + 40))();
      }
    }

    else
    {
      v14 = *(this + 40);
      if (v14)
      {
        v15 = *(this + 42);
        v16 = 864 * v14;
        do
        {
          *&v122[0] = re::DataArray<re::MeshModel>::create<re::MeshModel>(a2 + 8, v15);
          re::DynamicArray<re::DataArrayHandle<re::MeshModel>>::add((this + 592), v122);
          v15 += 108;
          v16 -= 864;
        }

        while (v16);
      }

      v17 = *(this + 9);
      if (v17)
      {
        v18 = *(this + 11);
        v3 = v18 + 96 * v17;
        do
        {
          re::StringID::StringID(&v132, v18);
          v2 = *(v18 + 80);
          v19 = *(this + 76);
          if (v19 <= v2)
          {
            goto LABEL_134;
          }

          v2 = *(*(this + 78) + 8 * v2);
          v122[0] = v132;
          *&v132 = 0;
          *(&v132 + 1) = &str_67;
          *&v122[1] = 0xFFFFFFFFLL;
          v123 = 0u;
          v124 = 0u;
          v125 = 0u;
          v126 = 0u;
          v127 = 0u;
          v128 = 0u;
          v129 = 0u;
          v20 = re::DataArray<re::MeshModel>::tryGet(a2 + 8, v2);
          v21 = *(v18 + 64);
          v23 = *(v18 + 16);
          v22 = *(v18 + 32);
          v125 = *(v18 + 48);
          v126 = v21;
          v123 = v23;
          v124 = v22;
          *&v122[1] = v2;
          if (v132)
          {
            if (v132)
            {
            }
          }

          *&v132 = 0;
          *(&v132 + 1) = &str_67;
          *&v143 = re::DataArray<re::MeshInstance>::create<re::MeshInstance>(a2 + 72, v122);
          re::DynamicArray<re::DataArrayHandle<re::MeshModel>>::add((this + 552), &v143);
          re::FixedArray<re::SharedPtr<re::MaterialParameterBlock>>::deinit(&v128 + 1);
          v24 = v127;
          if (v127)
          {
            if (*(&v127 + 1))
            {
              v24 = (*(*v127 + 40))();
              *(&v127 + 1) = 0;
              *&v128 = 0;
            }

            *&v127 = 0;
          }

          if (v122[0])
          {
            if (v122[0])
            {
            }
          }

          v18 += 96;
        }

        while (v18 != v3);
      }
    }

    re::DynamicArray<re::MeshModel>::deinit(this + 304);
  }

  *(this + 79) = a2;
  re::FixedArray<CoreIKTransform>::deinit(this + 133);
  re::FixedArray<CoreIKTransform>::deinit(this + 136);
  re::FixedArray<CoreIKTransform>::deinit(this + 139);
  re::FixedArray<CoreIKTransform>::deinit(this + 142);
  re::FixedArray<CoreIKTransform>::deinit(this + 145);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 148);
  v120 = *(this + 71);
  if (!v120)
  {
    goto LABEL_89;
  }

  re::StackScratchAllocator::StackScratchAllocator(v122);
  v25 = 2 * *(this + 152);
  memset(v135, 0, 36);
  *&v135[36] = 0x7FFFFFFFLL;
  re::HashSetBase<re::DataArrayHandle<re::MeshModel>,re::DataArrayHandle<re::MeshModel>,re::internal::ValueAsKey<re::DataArrayHandle<re::MeshModel>>,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::init(v135, v122, v25);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v19 = 24;
  do
  {
    v29 = *(this + 71);
    if (v29 <= v28)
    {
      goto LABEL_102;
    }

    v3 = re::DataArray<re::MeshInstance>::get(*(this + 79) + 72, *(*(this + 73) + 8 * v28));
    v30 = re::DataArray<re::MeshModel>::get(*(this + 79) + 8, *(v3 + 16));
    v2 = *(v30 + 7);
    v31 = *(v3 + 16);
    v32 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v31 & 0xFFFFFF)) ^ ((0xBF58476D1CE4E5B9 * (v31 & 0xFFFFFF)) >> 27));
    v33 = v32 ^ (v32 >> 31);
    if (!*&v135[24])
    {
      v121 = v27;
      v34 = 0;
LABEL_56:
      v46 = *&v135[36];
      if (*&v135[36] == 0x7FFFFFFF)
      {
        v46 = *&v135[32];
        v47 = *&v135[32];
        if (*&v135[32] == *&v135[24])
        {
          v48 = v30;
          re::HashSetBase<re::DataArrayHandle<re::MeshModel>,re::DataArrayHandle<re::MeshModel>,re::internal::ValueAsKey<re::DataArrayHandle<re::MeshModel>>,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::setCapacity(v135, 2 * *&v135[28]);
          v30 = v48;
          v47 = *&v135[32];
          v34 = v33 % *&v135[24];
        }

        *&v135[32] = v47 + 1;
        v49 = *&v135[16];
        v50 = *(*&v135[16] + 24 * v46 + 8);
      }

      else
      {
        v49 = *&v135[16];
        v50 = *(*&v135[16] + 24 * *&v135[36] + 8);
        *&v135[36] = v50 & 0x7FFFFFFF;
      }

      v51 = v49 + 24 * v46;
      *(v51 + 8) = v50 | 0x80000000;
      v52 = *&v135[8];
      *(v51 + 8) = *(*&v135[8] + 4 * v34) | 0x80000000;
      *v51 = v33;
      *(v51 + 16) = *(v3 + 16);
      *(v52 + 4 * v34) = v46;
      ++*&v135[28];
      ++*&v135[40];
      v53 = *(v30 + 7);
      v27 = v121;
LABEL_62:
      v27 += v53;
      goto LABEL_63;
    }

    v34 = v33 % *&v135[24];
    v35 = *(*&v135[8] + 4 * v34);
    if (v35 == 0x7FFFFFFF)
    {
      v121 = v27;
      v34 = v34;
      goto LABEL_56;
    }

    v36 = *(v3 + 16);
    v37 = HIDWORD(v31);
    v38 = WORD1(v31);
    v39 = *(*&v135[8] + 4 * (v33 % *&v135[24]));
    while (1)
    {
      v40 = *&v135[16] + 24 * v39;
      v42 = *(v40 + 16);
      v41 = v40 + 16;
      if (v42 == v36 && *(v41 + 2) == v38 && ((*(v41 + 4) ^ v37) & 0xFFFFFF) == 0)
      {
        break;
      }

      v39 = *(*&v135[16] + 24 * v39 + 8) & 0x7FFFFFFF;
      if (v39 == 0x7FFFFFFF)
      {
        v34 = v34;
        while (1)
        {
          v43 = *&v135[16] + 24 * v35;
          v45 = *(v43 + 16);
          v44 = v43 + 16;
          if (v45 == v36 && *(v44 + 2) == v38 && ((*(v44 + 4) ^ v37) & 0xFFFFFF) == 0)
          {
            break;
          }

          v35 = *(*&v135[16] + 24 * v35 + 8) & 0x7FFFFFFF;
          if (v35 == 0x7FFFFFFF)
          {
            v121 = v27;
            goto LABEL_56;
          }
        }

        v53 = *(v30 + 7);
        goto LABEL_62;
      }
    }

LABEL_63:
    v26 += v2;
    ++v28;
  }

  while (v28 != v120);
  v59 = 2 * *(this + 152);
  v28 = 0;
  v60 = 0;
  v3 = 0;
  v61 = 96;
  do
  {
    v29 = *(this + 71);
    if (v29 <= v3)
    {
      goto LABEL_106;
    }

    v62 = re::DataArray<re::MeshInstance>::get(*(this + 79) + 72, *(*(this + 73) + 8 * v3));
    v2 = v62 + 16;
    v63 = re::DataArray<re::MeshModel>::get(*(this + 79) + 8, *(v62 + 16));
    v64 = re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::tryGet(this + 1184, (v62 + 16));
    if (v64)
    {
      v29 = *(this + 137);
      if (v29 <= v3)
      {
        goto LABEL_126;
      }

      *(*(this + 138) + 96 * v3) = *v64;
      goto LABEL_79;
    }

    v65 = *(v63 + 56);
    v19 = v60;
    if (v65)
    {
      v66 = *(v63 + 64);
      v29 = *(this + 134);
      if (v60 <= v29)
      {
        v61 = *(this + 134);
      }

      else
      {
        v61 = v60;
      }

      v67 = 544 * v65;
      v68 = v60;
      while (v61 != v68)
      {
        v19 = v68 + 1;
        *(*(this + 135) + 8 * v68) = v66;
        v66 += 544;
        ++v68;
        v67 -= 544;
        if (!v67)
        {
          goto LABEL_77;
        }
      }

LABEL_98:
      *&v133 = 0;
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v143 = 0u;
      v88 = MEMORY[0x1E69E9C10];
      v89 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v136 = 136315906;
      *&v136[4] = "operator[]";
      v137 = 1024;
      if (v89)
      {
        v90 = 3;
      }

      else
      {
        v90 = 2;
      }

      v138 = 468;
      v139 = 2048;
      v140 = v61;
      v141 = 2048;
      v142 = v29;
      _os_log_send_and_compose_impl(v90, &v133, &v143, 80, &dword_1E1C61000, v88, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v136, 38, v118, v119);
      _os_crash_msg();
      __break(1u);
LABEL_102:
      *&v133 = 0;
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v143 = 0u;
      v91 = MEMORY[0x1E69E9C10];
      v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v136 = 136315906;
      *&v136[4] = "operator[]";
      v137 = 1024;
      if (v92)
      {
        v93 = 3;
      }

      else
      {
        v93 = 2;
      }

      v138 = 789;
      v139 = 2048;
      v140 = v28;
      v141 = 2048;
      v142 = v29;
      _os_log_send_and_compose_impl(v93, &v133, &v143, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v136, 38, v118, v119);
      _os_crash_msg();
      __break(1u);
LABEL_106:
      *&v133 = 0;
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v143 = 0u;
      v94 = MEMORY[0x1E69E9C10];
      v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v136 = 136315906;
      *&v136[4] = "operator[]";
      v137 = 1024;
      if (v95)
      {
        v96 = 3;
      }

      else
      {
        v96 = 2;
      }

      v138 = 789;
      v139 = 2048;
      v140 = v3;
      v141 = 2048;
      v142 = v29;
      _os_log_send_and_compose_impl(v96, &v133, &v143, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v136, 38, v118, v119);
      _os_crash_msg();
      __break(1u);
LABEL_110:
      *&v133 = 0;
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v143 = 0u;
      v97 = MEMORY[0x1E69E9C10];
      v98 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v136 = 136315906;
      *&v136[4] = "operator[]";
      v137 = 1024;
      if (v98)
      {
        v99 = 3;
      }

      else
      {
        v99 = 2;
      }

      v138 = 468;
      v139 = 2048;
      v140 = v3;
      v141 = 2048;
      v142 = v29;
      _os_log_send_and_compose_impl(v99, &v133, &v143, 80, &dword_1E1C61000, v97, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v136, 38, v118, v119);
      _os_crash_msg();
      __break(1u);
LABEL_114:
      *&v133 = 0;
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v143 = 0u;
      v100 = MEMORY[0x1E69E9C10];
      v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v136 = 136315906;
      *&v136[4] = "operator[]";
      v137 = 1024;
      if (v101)
      {
        v102 = 3;
      }

      else
      {
        v102 = 2;
      }

      v138 = 468;
      v139 = 2048;
      v140 = v3;
      v141 = 2048;
      v142 = v29;
      _os_log_send_and_compose_impl(v102, &v133, &v143, 80, &dword_1E1C61000, v100, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v136, 38, v118, v119);
      _os_crash_msg();
      __break(1u);
LABEL_118:
      *&v133 = 0;
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v143 = 0u;
      v103 = MEMORY[0x1E69E9C10];
      v104 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v136 = 136315906;
      *&v136[4] = "operator[]";
      v137 = 1024;
      if (v104)
      {
        v105 = 3;
      }

      else
      {
        v105 = 2;
      }

      v138 = 468;
      v139 = 2048;
      v140 = v3;
      v141 = 2048;
      v142 = v29;
      _os_log_send_and_compose_impl(v105, &v133, &v143, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v136, 38, v118, v119);
      _os_crash_msg();
      __break(1u);
LABEL_122:
      *&v133 = 0;
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v143 = 0u;
      v106 = MEMORY[0x1E69E9C10];
      v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v136 = 136315906;
      *&v136[4] = "operator[]";
      v137 = 1024;
      if (v107)
      {
        v108 = 3;
      }

      else
      {
        v108 = 2;
      }

      v138 = 468;
      v139 = 2048;
      v140 = v3;
      v141 = 2048;
      v142 = v29;
      _os_log_send_and_compose_impl(v108, &v133, &v143, 80, &dword_1E1C61000, v106, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v136, 38, v118, v119);
      _os_crash_msg();
      __break(1u);
LABEL_126:
      *&v133 = 0;
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v143 = 0u;
      v109 = MEMORY[0x1E69E9C10];
      v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v136 = 136315906;
      *&v136[4] = "operator[]";
      v137 = 1024;
      if (v110)
      {
        v111 = 3;
      }

      else
      {
        v111 = 2;
      }

      v138 = 468;
      v139 = 2048;
      v140 = v3;
      v141 = 2048;
      v142 = v29;
      _os_log_send_and_compose_impl(v111, &v133, &v143, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v136, 38, v118, v119);
      _os_crash_msg();
      __break(1u);
LABEL_130:
      v134 = 0;
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v143 = 0u;
      v112 = MEMORY[0x1E69E9C10];
      v113 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v136 = 136315906;
      *&v136[4] = "operator[]";
      v137 = 1024;
      if (v113)
      {
        v114 = 3;
      }

      else
      {
        v114 = 2;
      }

      v138 = 468;
      v139 = 2048;
      v140 = v3;
      v141 = 2048;
      v142 = v29;
      _os_log_send_and_compose_impl(v114, &v134, &v143, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v136, 38, v118, v119);
      _os_crash_msg();
      __break(1u);
LABEL_134:
      *v136 = 0;
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v143 = 0u;
      v115 = MEMORY[0x1E69E9C10];
      v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v135 = 136315906;
      *&v135[4] = "operator[]";
      *&v135[12] = 1024;
      if (v116)
      {
        v117 = 3;
      }

      else
      {
        v117 = 2;
      }

      *&v135[14] = 789;
      *&v135[18] = 2048;
      *&v135[20] = v2;
      *&v135[28] = 2048;
      *&v135[30] = v19;
      _os_log_send_and_compose_impl(v117, v136, &v143, 80, &dword_1E1C61000, v115, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v135, 38, v118, v119);
      _os_crash_msg();
      __break(1u);
      goto LABEL_138;
    }

LABEL_77:
    *&v133 = v60;
    *(&v133 + 1) = v19;
    re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::addNew(this + 1184, v2, &v133);
    v29 = *(this + 137);
    if (v29 <= v3)
    {
      goto LABEL_130;
    }

    v61 = 96;
    *(*(this + 138) + 96 * v3) = v133;
    v60 = v19;
LABEL_79:
    v29 = *(this + 137);
    if (v29 <= v3)
    {
      goto LABEL_110;
    }

    v69 = (*(this + 138) + 96 * v3);
    v70 = *(v62 + 32);
    v71 = *(v62 + 48);
    v72 = *(v62 + 80);
    v69[3] = *(v62 + 64);
    v69[4] = v72;
    v69[1] = v70;
    v69[2] = v71;
    v29 = *(this + 137);
    if (v29 <= v3)
    {
      goto LABEL_114;
    }

    v73 = *(v62 + 104);
    v74 = *(this + 138) + 96 * v3;
    *(v74 + 80) = *(v62 + 112);
    *(v74 + 88) = v73;
    v29 = *(this + 140);
    if (v29 <= v3)
    {
      goto LABEL_118;
    }

    *(*(this + 141) + 8 * v3) = v63 + 80;
    v29 = *(this + 143);
    if (v29 <= v3)
    {
      goto LABEL_122;
    }

    v75 = (*(this + 144) + 32 * v3);
    v76 = *(v63 + 32);
    *v75 = *(v63 + 16);
    v75[1] = v76;
    v77 = *(v63 + 56);
    if (v77)
    {
      v78 = 544 * v77;
      v79 = (*(v63 + 64) + 416);
      v80 = 32 * v28;
      while (1)
      {
        v29 = *(this + 146);
        if (v29 <= v28)
        {
          break;
        }

        ++v28;
        v81 = (*(this + 147) + v80);
        v82 = *v79;
        v83 = v79[1];
        v79 += 34;
        *v81 = v82;
        v81[1] = v83;
        v80 += 32;
        v78 -= 544;
        if (!v78)
        {
          goto LABEL_87;
        }
      }

      *&v133 = 0;
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v143 = 0u;
      v85 = MEMORY[0x1E69E9C10];
      v86 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v136 = 136315906;
      *&v136[4] = "operator[]";
      v137 = 1024;
      if (v86)
      {
        v87 = 3;
      }

      else
      {
        v87 = 2;
      }

      v138 = 468;
      v139 = 2048;
      v140 = v28;
      v141 = 2048;
      v142 = v29;
      _os_log_send_and_compose_impl(v87, &v133, &v143, 80, &dword_1E1C61000, v85, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v136, 38, v118, v119);
      _os_crash_msg();
      __break(1u);
      goto LABEL_98;
    }

LABEL_87:
    ++v3;
  }

  while (v3 != v120);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v135);
  re::StackScratchAllocator::~StackScratchAllocator(v122);
LABEL_89:
  *(this + 1264) = 1;
  v130 = 0u;
  memset(v131, 0, sizeof(v131));
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v123 = 0u;
  memset(v122, 0, sizeof(v122));
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 16, v122);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 56, &v123 + 1);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 96, &v126);
  re::DynamicArray<re::RigComponentConstraint>::operator=(this + 136, &v128 + 1);
  *(this + 44) = v131[0];
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(this + 184, v131 + 1);
  re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(v131 + 8);
  if (*(&v128 + 1))
  {
    if (*(&v130 + 1))
    {
      (*(**(&v128 + 1) + 40))();
    }

    *(&v130 + 1) = 0;
    v129 = 0uLL;
    *(&v128 + 1) = 0;
    LODWORD(v130) = v130 + 1;
  }

  re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v126);
  re::DynamicArray<re::MeshAssetInstance>::deinit(&v123 + 8);
  re::DynamicArray<re::MeshAssetModel>::deinit(v122);
  return 0;
}

_anonymous_namespace_ *re::DynamicArray<re::DataArrayHandle<re::MeshModel>>::add(_anonymous_namespace_ *this, void *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<float *>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  *(*(v3 + 4) + 8 * v4) = *a2;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

void re::MeshAssetLoader::~MeshAssetLoader(re::MeshAssetLoader *this)
{
  *this = &unk_1F5CBD570;
  *(this + 4) = 0;

  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 33);
  re::AssetHandle::~AssetHandle((this + 224));
  re::AssetHandle::~AssetHandle((this + 200));
  re::AssetHandle::~AssetHandle((this + 176));
  re::AssetHandle::~AssetHandle((this + 152));
  re::AssetHandle::~AssetHandle((this + 128));
  re::AssetHandle::~AssetHandle((this + 104));
  re::AssetHandle::~AssetHandle((this + 80));
  re::AssetHandle::~AssetHandle((this + 56));
}

{
  re::MeshAssetLoader::~MeshAssetLoader(this);

  JUMPOUT(0x1E6906520);
}

void re::MeshAssetLoader::makeSharedResourcePayload(re::MeshAssetLoader *this@<X0>, void *a2@<X1>, re::AssetSerializationScheme *a3@<X2>, RESerializedPayload **a4@<X8>)
{
  v8 = *(a2 + 43);
  if (v8 && [v8 isShareable])
  {
    *a4 = *(a2 + 43);
  }

  else
  {

    re::AssetLoader::makeSharedResourcePayload(a4, this, a2, a3);
  }
}

void re::MeshAssetLoader::resourceDidUpdate(uint64_t a1, const re::SharedResourcePayload *a2, id *a3, uint64_t a4)
{
  re::MeshPayload::dynamicCast(&v12, a3);
  if (v12)
  {
    re::MeshAsset::replaceContentsWithPayload(a2, &v12, (a1 + 8), *(a1 + 24));
    re::MeshAsset::registerRuntimeData(a2, *(a1 + 24));
  }

  else
  {
    v9 = *re::assetsLogObjects(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "Using fallback Mesh resourceDidUpdate, invalid MeshPayload found.", buf, 2u);
    }

    v10 = *a3;
    re::AssetLoader::resourceDidUpdate(a1, a2, &v10, a4);
  }
}

uint64_t re::MeshAssetLoader::initializeAssetWithSerializedDataFromPayload(uint64_t a1, id *this, const re::SharedResourcePayload *a3, uint64_t a4, uint64_t a5)
{
  re::MeshPayload::dynamicCast(&v17, this);
  v11 = v17;
  if (v17)
  {
    v12 = 1;
  }

  else
  {
    v13 = *re::assetsLogObjects(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "Using fallback Mesh resourceDidUpdate, invalid MeshPayload found.", buf, 2u);
    }

    v15 = *this;
    v12 = re::AssetLoader::initializeAssetWithSerializedDataFromPayload(a1, &v15, a3, a4, a5, 0);

    v11 = v17;
  }

  return v12;
}

uint64_t re::MeshAssetLoader::postInitializeAssetFromPayload(uint64_t a1, id *a2, re::MeshAsset *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    re::DirectMeshPayload::dynamicCast(&v11, a2);
    if (v11)
    {
      v6 = *(a1 + 32);
      v7 = re::DirectMeshPayload::connectionId(&v11);
      uuid_copy(dst, [v11 identifier]);
      if (re::DirectResourceAssetTracker::findResource(v6, v7, dst))
      {
        v8 = DRResourceAsMesh();
        if (v8)
        {
          [v11 setDirectMesh:v8];
        }
      }
    }
  }

  re::MeshPayload::dynamicCast(dst, a2);
  v9 = *dst;
  if (*dst)
  {
    re::MeshAsset::replaceContentsWithPayload(a3, dst, (a1 + 8), *(a1 + 24));
    v9 = *dst;
  }

  return 1;
}

_anonymous_namespace_ *re::MeshAssetLoader::checkCredentialsOfNetworkAsset@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, _WORD *a4@<X8>)
{
  result = re::ServiceLocator::serviceOrNull<re::EntitlementService>(*(a1 + 40));
  if (a2)
  {
    if (result)
    {
      result = (*(*result + 72))(result, a3);
    }

    *a4 = 257;
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void re::MeshAssetLoader::replaceAssetContentsWithMeshResourceDefinition(re::MeshAssetLoader *this, re::AssetHandle *a2, const re::MeshResourceDefinition *a3)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    v5 = atomic_load((v4 + 896));
    if (v5 == 2)
    {
      re::AssetHandle::mutateAssetCommon(a2);
      ++*(*(a2 + 1) + 276);
      v8 = re::AssetHandle::loadedAsset<re::MeshAsset>(a2);
      if (v8)
      {
        v9 = v8;
        re::MeshAsset::replaceContentsWithMeshResourceDefinition(v8, a3, this + 1, *(this + 3), *(this + 12));
        v10 = *(a2 + 1);
        if (!v10 || (*(v10 + 258) & 1) == 0)
        {
          re::MeshAsset::registerRuntimeData(v9, *(this + 3));
          v10 = *(a2 + 1);
        }

        *(v10 + 256) = 1;
        re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v10);
        re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(*(a2 + 1));
      }
    }
  }

  re::AssetHandle::payloadDidChangeIfPossible(a2);
}

void re::MeshAssetLoader::replaceAssetContentsWithMeshPayload(uint64_t a1, re::internal::AssetEntry **a2, id *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  if (v4)
  {
    v5 = atomic_load(v4 + 224);
    if (v5 == 2)
    {
      re::AssetHandle::mutateAssetCommon(a2);
      ++*(a2[1] + 69);
      v8 = re::AssetHandle::loadedAsset<re::MeshAsset>(a2);
      if (v8)
      {
        v9 = v8;
        if (*(a1 + 32))
        {
          re::DirectMeshPayload::dynamicCast(&v23, (v8 + 344));
          re::DirectMeshPayload::dynamicCast(&v22, a3);
          if (v23)
          {
            v10 = re::DirectMeshPayload::connectionId(&v23);
            v11 = [v23 identifier];
            v26 = v10;
            uuid_copy(v27, v11);
            v12 = *(a1 + 32);
            v24 = v26;
            uuid_copy(v25, v27);
            v13 = re::AssetHandle::assetInfo(a2);
            if (v13[10] == -1)
            {
              v14 = 0;
            }

            else
            {
              v14 = v13[10];
            }

            re::DirectResourceAssetTracker::unregisterDirectResourceBackedAsset(v12, &v24, v14);
          }

          v15 = v22;
          if (v22)
          {
            v16 = re::DirectMeshPayload::connectionId(&v22);
            v17 = [v22 identifier];
            v26 = v16;
            uuid_copy(v27, v17);
            v18 = *(a1 + 32);
            v24 = v26;
            uuid_copy(v25, v27);
            v19 = re::AssetHandle::assetInfo(a2);
            if (v19[10] == -1)
            {
              v20 = 0;
            }

            else
            {
              v20 = v19[10];
            }

            re::DirectResourceAssetTracker::registerDirectResourceBackedAsset(v18, &v24, v20);
            v15 = v22;
          }
        }

        re::MeshAsset::replaceContentsWithPayload(v9, a3, (a1 + 8), *(a1 + 24));
        v21 = a2[1];
        if (!v21 || (*(v21 + 258) & 1) == 0)
        {
          re::MeshAsset::registerRuntimeData(v9, *(a1 + 24));
          v21 = a2[1];
        }

        *(v21 + 256) = 1;
        re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v21);
        re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(a2[1]);
      }
    }
  }

  re::AssetHandle::payloadDidChangeIfPossible(a2);
}

_anonymous_namespace_ *re::MeshAssetLoader::internalFindAssetHandleFields@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  v3 = a1[35];
  if (v3)
  {
    v4 = a1[37];
    v5 = 24 * v3;
    do
    {
      v7 = v4;
      result = re::DynamicArray<re::TransitionCondition *>::add(a2, &v7);
      v4 += 24;
      v5 -= 24;
    }

    while (v5);
  }

  return result;
}

void re::MeshAssetLoader::init(uint64_t a1, re::StringID *a2, uint64_t a3, int a4)
{
  v8 = re::ServiceLocator::serviceOrNull<re::RenderManager>(a2);
  v9 = v8;
  *(a1 + 16) = v8;
  if (v8)
  {
    v10 = *(v8 + 26);
  }

  else
  {
    v10 = 0;
  }

  v16 = v10;
  re::ObjCObject::operator=((a1 + 8), &v16);

  if (v9)
  {
    *(a1 + 24) = *(v9 + 4);
    *(a1 + 32) = a3;
    *(a1 + 40) = a2;
    if (a4)
    {
      v11 = *(a1 + 8);
      if (v11 && ([v11 supportsBufferWithIOSurface] & 1) != 0)
      {
        v12 = 2;
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = a3;
    *(a1 + 40) = a2;
    if (a4)
    {
LABEL_10:
      v12 = 1;
      goto LABEL_12;
    }
  }

  v12 = 0;
LABEL_12:
  *(a1 + 48) = v12;
  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = [v13 newCommandQueue];

    v15 = *(a1 + 312);
    *(a1 + 312) = v14;
  }
}

uint64_t re::MeshAssetLoader::createRuntimeData(uint64_t a1, uint64_t a2)
{
  re::MeshAssetLoader::addProceduralVertexAttributes(a1, a2 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 48);

  return re::MeshAsset::createRuntimeData(a2, v4, (a1 + 8), v5);
}

void re::MeshAssetLoader::addProceduralVertexAttributes(id *this, unint64_t a2)
{
  v154 = *MEMORY[0x1E69E9840];
  if (this[2] && this[1])
  {
    v6 = &v141;
    re::StackScratchAllocator::StackScratchAllocator(v140);
    v139 = 0;
    v136 = 0;
    v137 = 0;
    v138 = 0;
    v135 = v140;
    re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(&v135, 0);
    v7 = ++v138;
    v134 = 0;
    v131 = 0;
    v132 = 0;
    v133 = 0;
    v130 = v140;
    re::DynamicArray<re::EvaluationRegister>::setCapacity(&v130, 0);
    v8 = ++v133;
    v129 = 0;
    v126[1] = 0;
    v127 = 0;
    v128 = 0;
    v126[0] = v140;
    re::DynamicArray<BOOL>::setCapacity(v126, 0);
    ++v128;
    v116 = *(a2 + 16);
    v117 = a2;
    if (*(a2 + 16))
    {
      v123 = v7;
      v2 = 0;
      v121 = 0;
      while (1)
      {
        v9 = *(a2 + 16);
        if (v9 <= v2)
        {
          goto LABEL_128;
        }

        v118 = v2;
        v9 = *(a2 + 32) + (v2 << 9);
        v10 = *(v9 + 208);
        if (!*(v9 + 208))
        {
          goto LABEL_46;
        }

        v11 = 0;
        do
        {
          a2 = *(v9 + 208);
          if (a2 <= v11)
          {
            v141 = 0;
            v153 = 0u;
            v152 = 0u;
            v151 = 0u;
            memset(v150, 0, sizeof(v150));
            v8 = MEMORY[0x1E69E9C10];
            v67 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v142 = 136315906;
            v143 = "operator[]";
            v144 = 1024;
            if (v67)
            {
              v68 = 3;
            }

            else
            {
              v68 = 2;
            }

            v145 = 797;
            v146 = 2048;
            v147 = v11;
            v148 = 2048;
            v149 = a2;
            _os_log_send_and_compose_impl(v68, &v141, v150, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v142, 38, v113, v114);
            _os_crash_msg();
            __break(1u);
LABEL_124:
            v141 = 0;
            v153 = 0u;
            v152 = 0u;
            v151 = 0u;
            memset(v150, 0, sizeof(v150));
            v69 = MEMORY[0x1E69E9C10];
            v70 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v142 = 136315906;
            v143 = "operator[]";
            v144 = 1024;
            if (v70)
            {
              v71 = 3;
            }

            else
            {
              v71 = 2;
            }

            v145 = 797;
            v146 = 2048;
            v147 = a2;
            v148 = 2048;
            v149 = v3;
            _os_log_send_and_compose_impl(v71, &v141, v150, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v142, 38, v113, v114);
            _os_crash_msg();
            __break(1u);
LABEL_128:
            v141 = 0;
            v153 = 0u;
            v152 = 0u;
            v151 = 0u;
            memset(v150, 0, sizeof(v150));
            v72 = MEMORY[0x1E69E9C10];
            v73 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v142 = 136315906;
            v143 = "operator[]";
            v144 = 1024;
            if (v73)
            {
              v74 = 3;
            }

            else
            {
              v74 = 2;
            }

            v145 = 789;
            v146 = 2048;
            v147 = v2;
            v148 = 2048;
            v149 = v9;
            _os_log_send_and_compose_impl(v74, &v141, v150, 80, &dword_1E1C61000, v72, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v142, 38, v113, v114);
            _os_crash_msg();
            __break(1u);
LABEL_132:
            *v6 = 0;
            *(v6 + 120) = 0u;
            *(v6 + 104) = 0u;
            *(v6 + 88) = 0u;
            *(v6 + 72) = 0u;
            *(v6 + 56) = 0u;
            v75 = MEMORY[0x1E69E9C10];
            v76 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *(v6 + 8) = 136315906;
            *(v6 + 12) = "operator[]";
            *(v6 + 20) = 1024;
            if (v76)
            {
              v77 = 3;
            }

            else
            {
              v77 = 2;
            }

            *(v6 + 22) = 789;
            *(v6 + 26) = 2048;
            *(v6 + 28) = v8;
            *(v6 + 36) = 2048;
            *(v6 + 38) = v8;
            _os_log_send_and_compose_impl(v77, &v141, v150, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v142, 38, v113, v114);
            _os_crash_msg();
            __break(1u);
LABEL_136:
            *v6 = 0;
            *(v6 + 120) = 0u;
            *(v6 + 104) = 0u;
            *(v6 + 88) = 0u;
            *(v6 + 72) = 0u;
            *(v6 + 56) = 0u;
            v78 = MEMORY[0x1E69E9C10];
            v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *(v6 + 8) = 136315906;
            *(v6 + 12) = "operator[]";
            *(v6 + 20) = 1024;
            if (v79)
            {
              v80 = 3;
            }

            else
            {
              v80 = 2;
            }

            *(v6 + 22) = 789;
            *(v6 + 26) = 2048;
            *(v6 + 28) = v2;
            *(v6 + 36) = 2048;
            *(v6 + 38) = v9;
            _os_log_send_and_compose_impl(v80, &v141, v150, 80, &dword_1E1C61000, v78, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v142, 38, v113, v114);
            _os_crash_msg();
            __break(1u);
LABEL_140:
            *v6 = 0;
            *(v6 + 120) = 0u;
            *(v6 + 104) = 0u;
            *(v6 + 88) = 0u;
            *(v6 + 72) = 0u;
            *(v6 + 56) = 0u;
            v81 = MEMORY[0x1E69E9C10];
            v82 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *(v6 + 8) = 136315906;
            *(v6 + 12) = "operator[]";
            *(v6 + 20) = 1024;
            if (v82)
            {
              v83 = 3;
            }

            else
            {
              v83 = 2;
            }

            *(v6 + 22) = 789;
            *(v6 + 26) = 2048;
            *(v6 + 28) = v2;
            *(v6 + 36) = 2048;
            *(v6 + 38) = v9;
            _os_log_send_and_compose_impl(v83, &v141, v150, 80, &dword_1E1C61000, v81, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v142, 38, v113, v114);
            _os_crash_msg();
            __break(1u);
LABEL_144:
            *v6 = 0;
            *(v6 + 120) = 0u;
            *(v6 + 104) = 0u;
            *(v6 + 88) = 0u;
            *(v6 + 72) = 0u;
            *(v6 + 56) = 0u;
            v84 = MEMORY[0x1E69E9C10];
            v85 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *(v6 + 8) = 136315906;
            *(v6 + 12) = "operator[]";
            *(v6 + 20) = 1024;
            if (v85)
            {
              v86 = 3;
            }

            else
            {
              v86 = 2;
            }

            *(v6 + 22) = 789;
            *(v6 + 26) = 2048;
            *(v6 + 28) = a2;
            *(v6 + 36) = 2048;
            *(v6 + 38) = v9;
            _os_log_send_and_compose_impl(v86, &v141, v150, 80, &dword_1E1C61000, v84, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v142, 38, v113, v114);
            _os_crash_msg();
            __break(1u);
LABEL_148:
            *v6 = 0;
            *(v6 + 120) = 0u;
            *(v6 + 104) = 0u;
            *(v6 + 88) = 0u;
            *(v6 + 72) = 0u;
            *(v6 + 56) = 0u;
            v87 = MEMORY[0x1E69E9C10];
            v88 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *(v6 + 8) = 136315906;
            *(v6 + 12) = "operator[]";
            *(v6 + 20) = 1024;
            if (v88)
            {
              v89 = 3;
            }

            else
            {
              v89 = 2;
            }

            *(v6 + 22) = 797;
            *(v6 + 26) = 2048;
            *(v6 + 28) = v2;
            *(v6 + 36) = 2048;
            *(v6 + 38) = v9;
            _os_log_send_and_compose_impl(v89, &v141, v150, 80, &dword_1E1C61000, v87, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v142, 38, v113, v114);
            _os_crash_msg();
            __break(1u);
LABEL_152:
            *v6 = 0;
            *(v6 + 120) = 0u;
            *(v6 + 104) = 0u;
            *(v6 + 88) = 0u;
            *(v6 + 72) = 0u;
            *(v6 + 56) = 0u;
            v90 = MEMORY[0x1E69E9C10];
            v91 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *(v6 + 8) = 136315906;
            *(v6 + 12) = "operator[]";
            *(v6 + 20) = 1024;
            if (v91)
            {
              v92 = 3;
            }

            else
            {
              v92 = 2;
            }

            *(v6 + 22) = 789;
            *(v6 + 26) = 2048;
            *(v6 + 28) = v8;
            *(v6 + 36) = 2048;
            *(v6 + 38) = v8;
            _os_log_send_and_compose_impl(v92, &v141, v150, 80, &dword_1E1C61000, v90, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v142, 38, v113, v114);
            _os_crash_msg();
            __break(1u);
LABEL_156:
            *v6 = 0;
            *(v6 + 120) = 0u;
            *(v6 + 104) = 0u;
            *(v6 + 88) = 0u;
            *(v6 + 72) = 0u;
            *(v6 + 56) = 0u;
            v93 = MEMORY[0x1E69E9C10];
            v94 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *(v6 + 8) = 136315906;
            *(v6 + 12) = "operator[]";
            *(v6 + 20) = 1024;
            if (v94)
            {
              v95 = 3;
            }

            else
            {
              v95 = 2;
            }

            *(v6 + 22) = 789;
            *(v6 + 26) = 2048;
            *(v6 + 28) = a2;
            *(v6 + 36) = 2048;
            *(v6 + 38) = v2;
            _os_log_send_and_compose_impl(v95, &v141, v150, 80, &dword_1E1C61000, v93, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v142, 38, v113, v114);
            _os_crash_msg();
            __break(1u);
LABEL_160:
            *v6 = 0;
            *(v6 + 120) = 0u;
            *(v6 + 104) = 0u;
            *(v6 + 88) = 0u;
            *(v6 + 72) = 0u;
            *(v6 + 56) = 0u;
            v96 = MEMORY[0x1E69E9C10];
            v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *(v6 + 8) = 136315906;
            *(v6 + 12) = "operator[]";
            *(v6 + 20) = 1024;
            if (v97)
            {
              v98 = 3;
            }

            else
            {
              v98 = 2;
            }

            *(v6 + 22) = 789;
            *(v6 + 26) = 2048;
            *(v6 + 28) = a2;
            *(v6 + 36) = 2048;
            *(v6 + 38) = v2;
            _os_log_send_and_compose_impl(v98, &v141, v150, 80, &dword_1E1C61000, v96, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v142, 38, v113, v114);
            _os_crash_msg();
            __break(1u);
LABEL_164:
            *v6 = 0;
            *(v6 + 120) = 0u;
            *(v6 + 104) = 0u;
            *(v6 + 88) = 0u;
            *(v6 + 72) = 0u;
            *(v6 + 56) = 0u;
            v99 = MEMORY[0x1E69E9C10];
            v100 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *(v6 + 8) = 136315906;
            *(v6 + 12) = "operator[]";
            *(v6 + 20) = 1024;
            if (v100)
            {
              v101 = 3;
            }

            else
            {
              v101 = 2;
            }

            *(v6 + 22) = 789;
            *(v6 + 26) = 2048;
            *(v6 + 28) = v4;
            *(v6 + 36) = 2048;
            *(v6 + 38) = v8;
            _os_log_send_and_compose_impl(v101, &v141, v150, 80, &dword_1E1C61000, v99, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v142, 38, v113, v114);
            _os_crash_msg();
            __break(1u);
LABEL_168:
            *v6 = 0;
            *(v6 + 120) = 0u;
            *(v6 + 104) = 0u;
            *(v6 + 88) = 0u;
            *(v6 + 72) = 0u;
            *(v6 + 56) = 0u;
            v102 = MEMORY[0x1E69E9C10];
            v103 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *(v6 + 8) = 136315906;
            *(v6 + 12) = "operator[]";
            *(v6 + 20) = 1024;
            if (v103)
            {
              v104 = 3;
            }

            else
            {
              v104 = 2;
            }

            *(v6 + 22) = 789;
            *(v6 + 26) = 2048;
            *(v6 + 28) = v8;
            *(v6 + 36) = 2048;
            *(v6 + 38) = v9;
            _os_log_send_and_compose_impl(v104, &v141, v150, 80, &dword_1E1C61000, v102, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v142, 38, v113, v114);
            _os_crash_msg();
            __break(1u);
LABEL_172:
            *v6 = 0;
            *(v6 + 120) = 0u;
            *(v6 + 104) = 0u;
            *(v6 + 88) = 0u;
            *(v6 + 72) = 0u;
            *(v6 + 56) = 0u;
            v105 = MEMORY[0x1E69E9C10];
            v106 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *(v6 + 8) = 136315906;
            *(v6 + 12) = "operator[]";
            *(v6 + 20) = 1024;
            if (v106)
            {
              v107 = 3;
            }

            else
            {
              v107 = 2;
            }

            *(v6 + 22) = 789;
            *(v6 + 26) = 2048;
            *(v6 + 28) = v8;
            *(v6 + 36) = 2048;
            *(v6 + 38) = v9;
            _os_log_send_and_compose_impl(v107, &v141, v150, 80, &dword_1E1C61000, v105, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v142, 38, v113, v114);
            _os_crash_msg();
            __break(1u);
LABEL_176:
            *v6 = 0;
            *(v6 + 120) = 0u;
            *(v6 + 104) = 0u;
            *(v6 + 88) = 0u;
            *(v6 + 72) = 0u;
            *(v6 + 56) = 0u;
            v108 = MEMORY[0x1E69E9C10];
            v109 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *(v6 + 8) = 136315906;
            *(v6 + 12) = "operator[]";
            *(v6 + 20) = 1024;
            if (v109)
            {
              v110 = 3;
            }

            else
            {
              v110 = 2;
            }

            *(v6 + 22) = 468;
            *(v6 + 26) = 2048;
            *(v6 + 28) = v2;
            *(v6 + 36) = 2048;
            *(v6 + 38) = v2;
            _os_log_send_and_compose_impl(v110, &v141, v150, 80, &dword_1E1C61000, v108, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v142, 38, v113, v114);
            _os_crash_msg();
            __break(1u);
LABEL_180:
            re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, v2);
            _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v111, v112);
            __break(1u);
            goto LABEL_181;
          }

          v2 = *(v9 + 224) + (v11 << 8);
          v12 = *(v2 + 16);
          v125 = -1;
          v4 = v12;
          if (!v12)
          {
            goto LABEL_45;
          }

          v3 = 0;
          v6 = 8;
          while (1)
          {
            if (v12 == v3)
            {
              v141 = 0;
              v153 = 0u;
              v152 = 0u;
              v151 = 0u;
              memset(v150, 0, sizeof(v150));
              v27 = MEMORY[0x1E69E9C10];
              v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v142 = 136315906;
              v143 = "operator[]";
              v144 = 1024;
              if (v28)
              {
                v29 = 3;
              }

              else
              {
                v29 = 2;
              }

              v145 = 797;
              v146 = 2048;
              v147 = v12;
              v148 = 2048;
              v149 = v12;
              _os_log_send_and_compose_impl(v29, &v141, v150, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v142, 38, v113, v114);
              _os_crash_msg();
              __break(1u);
              goto LABEL_52;
            }

            v13 = (*(v2 + 32) + v6);
            v14 = (*v13 & 1) != 0 ? v13[1] : v13 + 1;
            if (!strcmp(v14, "patchParams"))
            {
              break;
            }

            ++v3;
            v6 += 80;
            if (v12 == v3)
            {
              goto LABEL_21;
            }
          }

          v125 = v3;
          if (v3 == 0xFF)
          {
LABEL_21:
            v6 = &v141;
            goto LABEL_45;
          }

          v15 = re::DynamicArray<unsigned char>::add(v126, &v125);
          if (v137 >= v136)
          {
            v16 = v137 + 1;
            v6 = &v141;
            if (v136 < v137 + 1)
            {
              if (v135)
              {
                v17 = 8;
                if (v136)
                {
                  v17 = 2 * v136;
                }

                if (v17 <= v16)
                {
                  v18 = v137 + 1;
                }

                else
                {
                  v18 = v17;
                }

                v15 = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(&v135, v18);
                v19 = v138;
              }

              else
              {
                v15 = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(&v135, v16);
                v19 = v138 + 1;
              }

              v123 = v19;
            }
          }

          else
          {
            v6 = &v141;
          }

          v20 = v137;
          *(v139 + 8 * v137) = v118 | (v11 << 32);
          v137 = v20 + 1;
          v138 = ++v123;
          v21 = *(v2 + 64);
          memset(v150 + 4, 0, 24);
          v22 = v132;
          if (v132 >= v131)
          {
            v23 = v132 + 1;
            if (v131 < v132 + 1)
            {
              if (v130)
              {
                v24 = 2 * v131;
                if (!v131)
                {
                  v24 = 8;
                }

                if (v24 <= v23)
                {
                  v25 = v132 + 1;
                }

                else
                {
                  v25 = v24;
                }

                re::DynamicArray<re::EvaluationRegister>::setCapacity(&v130, v25);
                LODWORD(v8) = v133;
              }

              else
              {
                re::DynamicArray<re::EvaluationRegister>::setCapacity(&v130, v23);
                LODWORD(v8) = ++v133;
              }
            }

            v22 = v132;
          }

          v26 = &v134[8 * v22];
          *v26 = v21;
          *(v26 + 1) = v150[0];
          *(v26 + 1) = *(v150 + 12);
          v132 = v22 + 1;
          v8 = (v8 + 1);
          v133 = v8;
          a2 = v125;
          v3 = *(v2 + 16);
          if (v3 <= v125)
          {
            goto LABEL_124;
          }

          v121 += *(*(v2 + 32) + 80 * v125 + 48);
LABEL_45:
          ++v11;
        }

        while (v11 != v10);
LABEL_46:
        v2 = v118 + 1;
        a2 = v117;
        if (v118 + 1 == v116)
        {
          goto LABEL_53;
        }
      }
    }

LABEL_52:
    v121 = 0;
LABEL_53:
    v9 = v132;
    if (v132)
    {
      v30 = [this[1] newBufferWithLength:v121 options:0];
      if (v30)
      {
        v31 = v30;
        if ([v30 contents])
        {
          v122 = v31;
          v124 = v9;
          a2 = 0;
          v32 = 0;
          v8 = v137;
          v33 = v139;
          v119 = v134;
          v34 = v134 + 4;
          v4 = v139 + 4;
          do
          {
            if (v8 == a2)
            {
              goto LABEL_132;
            }

            v2 = *(v4 - 4);
            v9 = *(v117 + 16);
            if (v9 <= v2)
            {
              goto LABEL_136;
            }

            v35 = *(v117 + 32) + (v2 << 9);
            v2 = *v4;
            v9 = *(v35 + 208);
            if (v9 <= v2)
            {
              goto LABEL_140;
            }

            v9 = v127;
            if (v127 <= a2)
            {
              goto LABEL_144;
            }

            v36 = *(v35 + 224) + (v2 << 8);
            v2 = *(v129 + a2);
            v9 = *(v36 + 16);
            if (v9 <= v2)
            {
              goto LABEL_148;
            }

            v37 = *(v36 + 32) + 80 * *(v129 + a2);
            memcpy([v122 contents] + v32, *(v37 + 64), *(v37 + 48));
            v39 = *(v37 + 48);
            *(v34 - 1) = v122;
            *v34 = 0;
            v34[2] = v32;
            v34[3] = v39;
            v32 += *(v37 + 48);
            ++a2;
            v34 += 8;
            v4 += 8;
            v9 = v124;
          }

          while (v124 != a2);
          v9 = 0;
          do
          {
            if (v9 == v8)
            {
              goto LABEL_152;
            }

            v40 = (v33 + 8 * v9);
            a2 = *v40;
            v2 = *(v117 + 16);
            if (v2 <= a2)
            {
              goto LABEL_156;
            }

            v41 = *(v117 + 32) + (a2 << 9);
            a2 = v40[1];
            v2 = *(v41 + 208);
            if (v2 <= a2)
            {
              goto LABEL_160;
            }

            a2 = *(v41 + 224) + (a2 << 8);
            v4 = *(a2 + 16);
            v2 = v124;
            if (v4)
            {
              v42 = 0;
              do
              {
                v43 = *(a2 + 32) + 80 * v42;
                if (*(v43 + 8))
                {
                  v44 = *(v43 + 16);
                }

                else
                {
                  v44 = (v43 + 9);
                }

                if (re::OpenSubdivUtils::isGeneratedTessellationBuffer(v44, v38))
                {
                  re::DynamicArray<re::MeshAssetBuffer>::removeAt(a2, v42);
                  v4 = *(a2 + 16);
                }

                else
                {
                  ++v42;
                }
              }

              while (v42 < v4);
            }

            ++v9;
          }

          while (v9 != v124);
          if (v124 >= 0xAAAAAAAAAAAAAABLL)
          {
            goto LABEL_180;
          }

          v45 = (*(v140[0] + 32))(v140, 24 * v124, 8);
          if (!v45)
          {
LABEL_181:
            re::internal::assertLog(4, v46, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
            _os_crash("assertion failure: (m_data) Out of memory.");
            __break(1u);
          }

          v47 = v45;
          v48 = v45;
          if (v124 != 1)
          {
            bzero(v45, 24 * v124 - 24);
            v48 = (v47 + 24 * v124 - 24);
          }

          *v48 = 0;
          v48[1] = 0;
          v48[2] = 0;
          v49 = v119;
          v120 = v47;
          re::OpenSubdivUtils::generateOpenSubdivTesselationBuffers(this[2], this + 39, v49, v124, v47, v124);
          v4 = 0;
          do
          {
            v8 = v137;
            if (v137 <= v4)
            {
              goto LABEL_164;
            }

            v51 = (v139 + 8 * v4);
            v8 = *v51;
            v9 = *(v117 + 16);
            if (v9 <= v8)
            {
              goto LABEL_168;
            }

            v52 = *(v117 + 32) + (v8 << 9);
            v8 = v51[1];
            v9 = *(v52 + 208);
            if (v9 <= v8)
            {
              goto LABEL_172;
            }

            if (v4 == v2)
            {
              goto LABEL_176;
            }

            v53 = &v120[3 * v4];
            v54 = v53[1];
            if (v54)
            {
              v55 = (*(v52 + 224) + (v8 << 8));
              v9 = v53[2] + 68;
              v56 = 72 * v54;
              do
              {
                *(v6 + 72) = 0u;
                *(v6 + 56) = 0u;
                re::DynamicString::setCapacity(v150, 0);
                *(v6 + 120) = 0;
                *&v152 = 0;
                v151 = 0uLL;
                DWORD2(v152) = 0;
                *(v6 + 128) = 256;
                v57 = strlen(*(v9 - 60));
                *(v6 + 8) = *(v9 - 60);
                *(v6 + 16) = v57;
                re::DynamicString::operator=(v150, &v142);
                BYTE8(v153) = *(v9 - 40);
                BYTE9(v153) = *(v9 - 50);
                re::DynamicArray<BOOL>::resize(&v151, *v9);
                v58 = *(v6 + 120);
                v59 = re::BufferSlice::contents((v9 - 36));
                memcpy(v58, v59, *v9);
                v60.n128_f64[0] = re::DynamicArray<re::MeshAssetBuffer>::add(v55, v150);
                v61 = *(v6 + 88);
                if (v61)
                {
                  if (*(v6 + 120))
                  {
                    (*(*v61 + 40))(v61, v60.n128_f64[0]);
                  }

                  *(v6 + 120) = 0;
                  *&v152 = 0;
                  v151 = 0uLL;
                  ++*(v6 + 112);
                }

                v50 = *(v6 + 56);
                if (v50 && (BYTE8(v150[0]) & 1) != 0)
                {
                  v50 = (*(*v50 + 40))(v50, *(v6 + 72), v60);
                }

                v9 += 72;
                v56 -= 72;
              }

              while (v56);
            }

            ++v4;
            v2 = v124;
          }

          while (v4 != v124);
          v62 = v120;
          do
          {
            if (*v62)
            {
              v63 = v62[1];
              if (v63)
              {
                v64 = 72 * v63;
                v65 = v62[2] + 32;
                do
                {
                  v66 = *(v65 + 24);
                  if (v66 != -1)
                  {
                    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v66])(v150, v65);
                  }

                  *(v65 + 24) = -1;
                  re::StringID::destroyString((v65 - 32));
                  v65 += 72;
                  v64 -= 72;
                }

                while (v64);
                (*(**v62 + 40))(*v62, v62[2]);
                v62[1] = 0;
                v62[2] = 0;
              }

              *v62 = 0;
            }

            v62 += 3;
          }

          while (v62 != &v120[3 * v124]);
          (*(v140[0] + 40))(v140, v120);
          v31 = v122;
        }
      }
    }

    if (v126[0] && v129)
    {
      (*(*v126[0] + 40))();
    }

    if (v130 && v134)
    {
      (*(*v130 + 40))();
    }

    if (v135)
    {
      if (v139)
      {
        (*(*v135 + 40))();
      }
    }

    re::StackScratchAllocator::~StackScratchAllocator(v140);
  }
}

re *re::MeshAssetLoader::createRuntimeDataWithMemoryAttribution(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(4, a2, a3, a4, a5, "assertion failure: '%s' (%s:line %i) createRuntimeDataWithMemoryAttribution: task token cannot be null", "memoryAttributionTarget != ((task_id_token_t) 0)", "createRuntimeDataWithMemoryAttribution", 1196);
    _os_crash("assertion failure: (memoryAttributionTarget != ((task_id_token_t) 0)) createRuntimeDataWithMemoryAttribution: task token cannot be null");
    __break(1u);
  }

  v8 = (*(*a1 + 24))(a1, a2, a4, a5);
  v9 = v8;
  if (a1[1])
  {
    v10 = *(a2 + 544);
    v11 = *re::assetTypesLogObjects(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v22 = a3;
      _os_log_debug_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEBUG, "Attributing mesh asset to %llu", buf, 0xCu);
      if (v10)
      {
        return v9;
      }
    }

    else if (v10)
    {
      return v9;
    }

    for (i = 0; i != 64; i += 8)
    {
      v13 = *(a2 + 352 + i);
      if (v13)
      {
        v14 = v13;
        v20 = v13;
        v15 = re::AssetHelper::attributeResourceMemory(&v20, a3);
        if ((v15 & 1) == 0)
        {
          v16 = *re::assetTypesLogObjects(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = [objc_msgSend(v20 label)];
            *buf = 134218242;
            v22 = a3;
            v23 = 2080;
            v24 = v17;
            _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Mesh asset memory attribution failed for task_id %llu and buffer %s.", buf, 0x16u);
          }
        }

        if (v20)
        {
        }
      }
    }
  }

  else
  {
    v18 = *re::assetTypesLogObjects(v8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Mesh asset memory attribution requires Metal buffers.", buf, 2u);
    }
  }

  return v9;
}

void re::MeshAssetLoader::createRuntimeData(re::MeshAssetLoader *this@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X3>, uint64_t a4@<X8>)
{
  v5 = this;
  v20[5] = *MEMORY[0x1E69E9840];
  if (!a3[1])
  {
    goto LABEL_6;
  }

  v7 = **a3;
  if (v7)
  {
    this = (v7 + 8);
  }

  v8 = re::globalAllocators(this)[2];
  v20[0] = &unk_1F5CBD738;
  v20[1] = a2;
  v20[3] = v8;
  v20[4] = v20;
  (*(*v7 + 48))(&v18, v7, v20);
  re::FunctionBase<24ul,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::destroyCallable(v20);
  if (v18)
  {

LABEL_6:
    re::MeshAssetLoader::addProceduralVertexAttributes(v5, a2 + 16);
    if (re::MeshAsset::createRuntimeData(a2, *(v5 + 3), (v5 + 8), *(v5 + 12)))
    {
      *a4 = 1;
      *(a4 + 8) = 0;
    }

    else
    {
      re::WrappedError::make(&v15, @"REAssetLoadingErrorDomain", 6, "Failed to create runtime data for mesh asset.");
      v9 = v15;
      v15 = 0;
      *a4 = 0;
      *(a4 + 8) = v9;
    }

    return;
  }

  v10 = re::WrappedError::localizedDescription(&v19);
  re::DynamicString::format(&v15, "Failed to create runtime data for MeshAsset due to error: %s", v11, v10);
  if (v16)
  {
    v12 = *&v17[7];
  }

  else
  {
    v12 = v17;
  }

  re::WrappedError::make(&v14, @"REAssetLoadingErrorDomain", 6, v12);
  v13 = v14;
  v14 = 0;
  *a4 = 0;
  *(a4 + 8) = v13;

  if (v15 && (v16 & 1) != 0)
  {
    (*(*v15 + 40))();
  }

  if ((v18 & 1) == 0)
  {
  }
}

uint64_t re::MeshAssetLoader::assetByteSize(uint64_t (***this)(re::StringID **), void *a2)
{
  v4 = (*this)[7](this);
  v5 = re::ServiceLocator::serviceOrNull<re::RenderManager>(this[5]);
  v6 = a2[43];
  if (v6)
  {
    v4 += [v6 totalPayloadSize];
    goto LABEL_3;
  }

  if (!v5)
  {
    goto LABEL_18;
  }

  v8 = a2[76];
  if (v8)
  {
    v9 = *(v5 + 4);
    v10 = a2[78];
    v11 = &v10[v8];
    do
    {
      v12 = re::DataArray<re::MeshModel>::get(v9 + 8, *v10);
      v13 = *(v12 + 56);
      if (v13)
      {
        v14 = *(v12 + 64);
        v15 = &v14[68 * v13];
        do
        {
          v16 = re::AttributeTable::buffers(v14);
          if (v17)
          {
            v18 = 24 * v17;
            v19 = (v16 + 20);
            do
            {
              v20 = *v19;
              v19 += 6;
              v4 += v20;
              v18 -= 24;
            }

            while (v18);
          }

          v14 += 68;
        }

        while (v14 != v15);
      }

      ++v10;
    }

    while (v10 != v11);
LABEL_3:
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_18:
    v7 = 1;
    return v7 * v4;
  }

LABEL_4:
  v7 = 1;
  if (!*(v5 + 26))
  {
    v7 = 2;
  }

  return v7 * v4;
}

uint64_t re::MeshAssetLoader::prepareAssetForSerialization(re::MeshAssetLoader *this, const re::MeshAsset *a2)
{
  if (*(a2 + 1264) != 1)
  {
    return 0;
  }

  v13[7] = v2;
  v13[8] = v3;
  re::MeshAsset::makeMeshAssetDataFromRegisteredMeshAsset(v6, a2);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a2 + 16, v6);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a2 + 56, v7);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a2 + 96, v8);
  re::DynamicArray<re::RigComponentConstraint>::operator=(a2 + 136, v9);
  *(a2 + 44) = v12;
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a2 + 184, v13);
  re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(v13);
  if (v9[0])
  {
    if (v11)
    {
      (*(*v9[0] + 40))();
    }

    v11 = 0;
    memset(v9, 0, sizeof(v9));
    ++v10;
  }

  re::DynamicArray<re::MeshAssetSkeleton>::deinit(v8);
  re::DynamicArray<re::MeshAssetInstance>::deinit(v7);
  re::DynamicArray<re::MeshAssetModel>::deinit(v6);
  return 2;
}

uint64_t re::MeshAsset::makeMeshAssetDataFromRegisteredMeshAsset(re::MeshAsset *this, const re::MeshAsset *a2)
{
  v165 = *MEMORY[0x1E69E9840];
  if (*(a2 + 1264) != 1)
  {
    re::DynamicArray<re::MeshAssetModel>::DynamicArray(this, a2 + 2);
    re::DynamicArray<re::MeshAssetInstance>::DynamicArray(this + 40, a2 + 7);
    re::DynamicArray<re::MeshAssetSkeleton>::DynamicArray(this + 80, a2 + 12);
    re::DynamicArray<float>::DynamicArray(this + 120, a2 + 17);
    *(this + 40) = *(a2 + 44);

    return re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::DynamicArray(this + 168, a2 + 23);
  }

  v96 = this;
  v103[0] = 0;
  v103[1] = 0;
  v105 = 0;
  v104 = 0;
  v114 = 0;
  v115 = 0;
  v118 = 0;
  memset(v116, 0, sizeof(v116));
  v117 = 0;
  v106 = 0u;
  v107 = 0u;
  v108 = 0;
  memset(v109, 0, sizeof(v109));
  v110 = 0;
  v113 = 0;
  v111 = 0u;
  v112 = 0u;
  v4 = *(a2 + 76);
  v5 = v4;
  v6 = *(a2 + 142);
  v98 = *(a2 + 79);
  re::DynamicArray<re::MeshAssetModel>::resize(v103, v4);
  v97 = v6;
  re::DynamicArray<re::MeshAssetInstance>::resize(&v106 + 8, v6);
  v101 = 0;
  v99 = 0u;
  v100 = 0u;
  v102 = 0x7FFFFFFFLL;
  if (v4)
  {
    v8 = 2 * v4;
  }

  else
  {
    v8 = 1;
  }

  v10 = *(a2 + 79);
  if (!v10)
  {
    v18 = "No Mesh Manager on MeshAsset";
LABEL_39:
    v120[0] = 0;
    *&v120[8] = 100;
    *&v120[16] = re::AssetErrorCategory(void)::instance;
    *&v120[24] = *buf;
    v121[0] = *&buf[16];
    goto LABEL_40;
  }

  v11 = *(a2 + 156);
  v12 = *(a2 + 76);
  if (v12)
  {
    v13 = *(a2 + 78);
    v14 = 8 * v12;
    while (1)
    {
      v9 = re::DataArray<re::MeshModel>::get(v10 + 8, *v13);
      v15 = *(v9 + 28);
      if (v15)
      {
        if (*(v15 + 8))
        {
          break;
        }
      }

      ++v13;
      v14 -= 8;
      if (!v14)
      {
        v12 = 0;
        v16 = 0;
        goto LABEL_18;
      }
    }

    v19 = v15 + 32;
    v12 = *(v15 + 32);
    v16 = *(v19 + 8);
LABEL_18:
    v5 = v4;
  }

  else
  {
    v16 = 0;
  }

  if (v12 != v11)
  {
    v18 = "Inverse bind transforms array doesn't match skeleton count";
    goto LABEL_39;
  }

  v95 = v5;
  *&v162[2] = 0;
  memset(v162, 0, 28);
  re::DynamicArray<re::MeshAssetSkeleton>::resize(v162, v11);
  if (!v11)
  {
LABEL_35:
    v30 = *&v162[0];
    memset(v162, 0, 24);
    v31 = *&v162[2];
    *&v162[2] = 0;
    ++DWORD2(v162[1]);
    v120[0] = 1;
    *&v120[8] = v30;
    memset(buf, 0, 24);
    *&v120[16] = *(v162 + 8);
    *&v121[0] = v31;
    *&v135 = 0;
    *&buf[24] = 2;
    *&v120[32] = 1;
    re::DynamicArray<re::MeshAssetSkeleton>::deinit(buf);
    goto LABEL_36;
  }

  v20 = 0;
  v21 = 0;
  while (1)
  {
    v22 = *&v162[1];
    if (*&v162[1] <= v21)
    {
      goto LABEL_142;
    }

    v23 = *&v162[2];
    v24 = *&v162[2] + v20;
    v25 = re::MeshAsset::skeletonAtIndex(a2, v21);
    re::StringID::operator=((v23 + v20), v25);
    v26 = v25[3];
    *buf = v25[4];
    *&buf[8] = v26;
    re::FixedArray<re::StringID>::operator=((v24 + 16), buf);
    v27 = v25[6];
    *buf = v25[7];
    *&buf[8] = v27;
    re::FixedArray<int>::operator=((v24 + 40), buf);
    v28 = v25[12];
    *buf = v25[13];
    *&buf[8] = v28;
    re::FixedArray<re::GenericSRT<float>>::operator=((v24 + 64), buf);
    v155[0] = 0;
    HIDWORD(v159) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v155, v16);
    *&v161[2] = *(v16 + 32);
    if (!re::BufferSlice::isValid(v155))
    {
      goto LABEL_32;
    }

    re::ReadOnlyCPUAccessibleBufferSliceContent::make(buf, v155);
    if ((buf[0] & 1) == 0)
    {
      v68 = "Could not access inverset bind pose data";
      goto LABEL_107;
    }

    if (*&buf[16] >= 0x40uLL && *(v23 + v20 + 48) != *&buf[16] >> 6)
    {
      break;
    }

    *v120 = *&buf[8];
    *&v120[8] = *&buf[16] >> 6;
    re::FixedArray<re::Matrix4x4<float>>::operator=((v23 + v20 + 88), v120);
    if (buf[0] == 1)
    {
      re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&buf[8]);
    }

    else if (*&buf[24] && (v135 & 1) != 0)
    {
      (*(**&buf[24] + 40))();
    }

LABEL_32:
    if (HIDWORD(v159) != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[HIDWORD(v159)])(buf, v155);
    }

    ++v21;
    v16 += 40;
    v20 += 112;
    if (v11 == v21)
    {
      goto LABEL_35;
    }
  }

  v68 = "Inverse bind pose count does not match joint count";
LABEL_107:
  v120[0] = 0;
  *&v120[8] = 100;
  *&v120[16] = re::AssetErrorCategory(void)::instance;
  *&v120[24] = v119[0];
  v121[0] = v119[1];
  if (buf[0] == 1)
  {
    re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&buf[8]);
  }

  else if (*&buf[24] && (v135 & 1) != 0)
  {
    (*(**&buf[24] + 40))();
  }

  if (HIDWORD(v159) != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[HIDWORD(v159)])(buf, v155);
  }

LABEL_36:
  v32 = re::DynamicArray<re::MeshAssetSkeleton>::deinit(v162);
  if (v120[0])
  {
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v109 + 8, &v120[8]);
    goto LABEL_41;
  }

LABEL_40:
  v33 = *re::assetsLogObjects(v32);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    if (v120[32])
    {
      v69 = *&v121[0];
    }

    else
    {
      v69 = &v120[33];
    }

    *buf = 136315138;
    *&buf[4] = v69;
    _os_log_error_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_ERROR, "Failed to make mesh asset skeleton from model: %s", buf, 0xCu);
  }

LABEL_41:
  if (v120[0] == 1)
  {
    re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v120[8]);
  }

  else if (*&v120[24] && (v120[32] & 1) != 0)
  {
    (*(**&v120[24] + 40))();
  }

  v21 = 0xBF58476D1CE4E5B9;
  v22 = buf;
  re::DirectMeshPayload::dynamicCast(buf, a2 + 43);
  v34 = *buf;

  if (v4)
  {
    v35 = 0;
    v36 = 0;
    v37 = v5 << 9;
    v38 = 0x7FFFFFFFLL;
    do
    {
      v39 = *(a2 + 76);
      if (v39 <= v36)
      {
        *v155 = 0;
        v136 = 0u;
        *v137 = 0u;
        v135 = 0u;
        memset(buf, 0, sizeof(buf));
        v71 = MEMORY[0x1E69E9C10];
        v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v162[0]) = 136315906;
        *(v162 + 4) = "operator[]";
        WORD6(v162[0]) = 1024;
        if (v72)
        {
          v73 = 3;
        }

        else
        {
          v73 = 2;
        }

        *(v162 + 14) = 797;
        WORD1(v162[1]) = 2048;
        *(&v162[1] + 4) = v36;
        WORD6(v162[1]) = 2048;
        *(&v162[1] + 14) = v39;
        _os_log_send_and_compose_impl(v73, v155, buf, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v162, 38, v95, v96);
        _os_crash_msg();
        __break(1u);
LABEL_118:
        *&v119[0] = 0;
        v163 = 0u;
        v164 = 0u;
        memset(v162, 0, sizeof(v162));
        v74 = MEMORY[0x1E69E9C10];
        v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v155 = 136315906;
        *&v155[4] = "operator[]";
        v156 = 1024;
        if (v75)
        {
          v76 = 3;
        }

        else
        {
          v76 = 2;
        }

        v157 = 789;
        v158 = 2048;
        v159 = v36;
        v160 = 2048;
        *v161 = v39;
        _os_log_send_and_compose_impl(v76, v119, v162, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v155, 38, v95, v96);
        _os_crash_msg();
        __break(1u);
LABEL_122:
        *&v119[0] = 0;
        v163 = 0u;
        v164 = 0u;
        memset(v162, 0, sizeof(v162));
        v77 = MEMORY[0x1E69E9C10];
        v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v155 = 136315906;
        *&v155[4] = "operator[]";
        v156 = 1024;
        if (v78)
        {
          v79 = 3;
        }

        else
        {
          v79 = 2;
        }

        v157 = 797;
        v158 = 2048;
        v159 = v36;
        v160 = 2048;
        *v161 = v39;
        _os_log_send_and_compose_impl(v79, v119, v162, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v155, 38, v95, v96);
        _os_crash_msg();
        __break(1u);
LABEL_126:
        *v155 = 0;
        v136 = 0u;
        *v137 = 0u;
        v135 = 0u;
        memset(buf, 0, sizeof(buf));
        v80 = MEMORY[0x1E69E9C10];
        v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v162[0]) = 136315906;
        *(v162 + 4) = "operator[]";
        WORD6(v162[0]) = 1024;
        if (v81)
        {
          v82 = 3;
        }

        else
        {
          v82 = 2;
        }

        *(v162 + 14) = 797;
        WORD1(v162[1]) = 2048;
        *(&v162[1] + 4) = v38;
        WORD6(v162[1]) = 2048;
        *(&v162[1] + 14) = v36;
        _os_log_send_and_compose_impl(v82, v155, buf, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v162, 38, v95, v96);
        _os_crash_msg();
        __break(1u);
LABEL_130:
        *v155 = 0;
        v136 = 0u;
        *v137 = 0u;
        v135 = 0u;
        memset(buf, 0, sizeof(buf));
        v83 = MEMORY[0x1E69E9C10];
        v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v162[0]) = 136315906;
        *(v162 + 4) = "operator[]";
        WORD6(v162[0]) = 1024;
        if (v84)
        {
          v85 = 3;
        }

        else
        {
          v85 = 2;
        }

        *(v162 + 14) = 789;
        WORD1(v162[1]) = 2048;
        *(&v162[1] + 4) = v38;
        WORD6(v162[1]) = 2048;
        *(&v162[1] + 14) = v22;
        _os_log_send_and_compose_impl(v85, v155, buf, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v162, 38, v95, v96);
        _os_crash_msg();
        __break(1u);
LABEL_134:
        *v155 = 0;
        v136 = 0u;
        *v137 = 0u;
        v135 = 0u;
        memset(buf, 0, sizeof(buf));
        v86 = MEMORY[0x1E69E9C10];
        v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v162[0]) = 136315906;
        *(v162 + 4) = "operator[]";
        WORD6(v162[0]) = 1024;
        if (v87)
        {
          v88 = 3;
        }

        else
        {
          v88 = 2;
        }

        *(v162 + 14) = 789;
        WORD1(v162[1]) = 2048;
        *(&v162[1] + 4) = v38;
        WORD6(v162[1]) = 2048;
        *(&v162[1] + 14) = v22;
        _os_log_send_and_compose_impl(v88, v155, buf, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v162, 38, v95, v96);
        _os_crash_msg();
        __break(1u);
LABEL_138:
        *v155 = 0;
        v136 = 0u;
        *v137 = 0u;
        v135 = 0u;
        memset(buf, 0, sizeof(buf));
        v89 = MEMORY[0x1E69E9C10];
        v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v162[0]) = 136315906;
        *(v162 + 4) = "operator[]";
        WORD6(v162[0]) = 1024;
        if (v90)
        {
          v91 = 3;
        }

        else
        {
          v91 = 2;
        }

        *(v162 + 14) = 789;
        WORD1(v162[1]) = 2048;
        *(&v162[1] + 4) = v38;
        WORD6(v162[1]) = 2048;
        *(&v162[1] + 14) = v36;
        _os_log_send_and_compose_impl(v91, v155, buf, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v162, 38, v95, v96);
        _os_crash_msg();
        __break(1u);
LABEL_142:
        *v155 = 0;
        v136 = 0u;
        *v137 = 0u;
        v135 = 0u;
        memset(buf, 0, sizeof(buf));
        v92 = MEMORY[0x1E69E9C10];
        v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v120 = 136315906;
        *&v120[4] = "operator[]";
        *&v120[12] = 1024;
        if (v93)
        {
          v94 = 3;
        }

        else
        {
          v94 = 2;
        }

        *&v120[14] = 789;
        *&v120[18] = 2048;
        *&v120[20] = v21;
        *&v120[28] = 2048;
        *&v120[30] = v22;
        _os_log_send_and_compose_impl(v94, v155, buf, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v120, 38, v95, v96);
        _os_crash_msg();
        __break(1u);
      }

      v40 = re::DataArray<re::MeshModel>::get(v98 + 8, *(*(a2 + 78) + 8 * v36));
      if (buf[0] != 1)
      {
        v63 = v135;
        v65 = *(&v136 + 1);
        v64 = v136;
        v120[0] = 0;
        *&v120[8] = *&buf[16];
        goto LABEL_78;
      }

      v39 = v104;
      if (v104 <= v36)
      {
        goto LABEL_118;
      }

      v41 = (v106 + v35);
      re::StringID::operator=((v106 + v35), &buf[16]);
      v42 = v136;
      v41[1] = v135;
      v41[2] = v42;
      v43 = *v137;
      v44 = *&v137[16];
      v45 = v138;
      v41[5] = *&v137[32];
      v41[6] = v45;
      v41[3] = v43;
      v41[4] = v44;
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v41 + 7), &v139);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v41 + 152, &v143);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v41 + 12), v147);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v41 + 232, v148);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v41 + 17), v149);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v41 + 312, v150);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v41 + 22), v151);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v41 + 392, v152);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v41 + 27), v153);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v41 + 472, v154);
      v39 = *(a2 + 76);
      if (v39 <= v36)
      {
        goto LABEL_122;
      }

      v46 = *(a2 + 78);
      memset(v162, 0, 24);
      v47 = *(v46 + 8 * v36);
      v48 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v47 & 0xFFFFFF)) ^ ((0xBF58476D1CE4E5B9 * (v47 & 0xFFFFFF)) >> 27));
      re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned int,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::findEntry<re::DataArrayHandle<re::MeshModel>>(v162, &v99, v47, v48 ^ (v48 >> 31));
      if (HIDWORD(v162[0]) == 0x7FFFFFFF)
      {
        v49 = re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned int,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::allocEntry(&v99, DWORD2(v162[0]), *&v162[0]);
        *(v49 + 8) = *(v46 + 8 * v36);
        *(v49 + 16) = v36;
        ++HIDWORD(v102);
      }

      if (buf[0])
      {
        re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(v154);
        re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v153);
        re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(v152);
        re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v151);
        re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(v150);
        re::DynamicArray<re::MeshLodLevelInfo>::deinit(v149);
        re::DynamicArray<re::MeshAssetSkeleton>::deinit(v148);
        re::DynamicArray<re::MeshAssetPart>::deinit(v147);
        re::DynamicArray<re::MeshAssetSkinningData>::deinit(&v143);
        v50 = re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(&v139);
        if ((buf[16] & 1) == 0)
        {
          goto LABEL_62;
        }

        if ((buf[16] & 1) == 0)
        {
          goto LABEL_62;
        }

        v51 = *&buf[24];
      }

      else
      {
        v52 = v135;
        if (!v135 || (BYTE8(v135) & 1) == 0)
        {
          goto LABEL_62;
        }

        v51 = v136;
      }

      (*(*v52 + 40))(v52, v51);
LABEL_62:
      ++v36;
      v35 += 512;
    }

    while (v37 != v35);
  }

  if (v97)
  {
    v53 = 0;
    v38 = 0;
    v54 = v100;
    while (1)
    {
      v36 = *(a2 + 71);
      if (v36 <= v38)
      {
        goto LABEL_126;
      }

      v36 = re::DataArray<re::MeshInstance>::get(v98 + 72, *(*(a2 + 73) + 8 * v38));
      v55 = *(v36 + 16);
      v56 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v55 & 0xFFFFFF)) ^ ((0xBF58476D1CE4E5B9 * (v55 & 0xFFFFFF)) >> 27));
      v57 = re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned int,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::findEntry<re::DataArrayHandle<re::MeshModel>>(buf, &v99, v55, v56 ^ (v56 >> 31));
      v58 = *&buf[12];
      if (*&buf[12] == 0x7FFFFFFF)
      {
        break;
      }

      v22 = *(&v107 + 1);
      if (*(&v107 + 1) <= v38)
      {
        goto LABEL_130;
      }

      re::StringID::operator=((*&v109[0] + v53), v36);
      v22 = *(&v107 + 1);
      if (*(&v107 + 1) <= v38)
      {
        goto LABEL_134;
      }

      v59 = (*&v109[0] + v53);
      v60 = *(v36 + 32);
      v61 = *(v36 + 48);
      v62 = *(v36 + 80);
      v59[3] = *(v36 + 64);
      v59[4] = v62;
      v59[1] = v60;
      v59[2] = v61;
      v36 = *(&v107 + 1);
      if (*(&v107 + 1) <= v38)
      {
        goto LABEL_138;
      }

      *(*&v109[0] + v53 + 80) = *(v54 + 32 * v58 + 16);
      ++v38;
      v53 += 96;
      if (v97 == v38)
      {
        goto LABEL_71;
      }
    }

    v63 = *buf;
    v65 = *&buf[24];
    v64 = *&buf[16];
    v120[0] = 0;
    *&v120[8] = 100;
    *&v120[16] = re::AssetErrorCategory(void)::instance;
LABEL_78:
    *&v120[24] = v63;
    *&v121[0] = v64;
    *(&v121[0] + 1) = v65;
  }

  else
  {
LABEL_71:
    re::MeshAssetData::generateMetaData(v103);
    re::DynamicArray<re::MeshAssetModel>::DynamicArray(buf, v103);
    re::DynamicArray<re::MeshAssetInstance>::DynamicArray(&v135 + 8, &v106 + 1);
    re::DynamicArray<re::MeshAssetSkeleton>::DynamicArray(&v137[16], v109 + 1);
    re::DynamicArray<float>::DynamicArray(&v138 + 8, &v111 + 1);
    v142 = v115;
    re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::DynamicArray(&v143, v116);
    v120[0] = 1;
    *&v120[8] = *buf;
    memset(buf, 0, 24);
    *&v120[16] = *&buf[8];
    v121[0] = v135;
    v121[1] = v136;
    v123[0] = *&v137[8];
    v123[1] = *&v137[24];
    v125 = v138;
    ++*&buf[24];
    v135 = 0u;
    v136 = 0u;
    *&v120[32] = 1;
    v122 = 1;
    memset(&v137[8], 0, 32);
    ++*v137;
    ++*&v137[40];
    v126 = v139;
    v138 = 0u;
    v139 = 0u;
    v128 = v141;
    ++v140;
    v124 = 1;
    v127 = 1;
    v129 = v142;
    v130 = v143;
    v141 = 0;
    v143 = 0;
    v131 = v144;
    v144 = 0u;
    v133 = v146;
    v146 = 0;
    ++v145;
    v132 = 1;
    re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(&v143);
    if (*(&v138 + 1))
    {
      if (v141)
      {
        (*(**(&v138 + 1) + 40))();
      }

      v141 = 0;
      v139 = 0uLL;
      *(&v138 + 1) = 0;
      ++v140;
    }

    re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v137[16]);
    re::DynamicArray<re::MeshAssetInstance>::deinit(&v135 + 8);
    re::DynamicArray<re::MeshAssetModel>::deinit(buf);
  }

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v99);
  re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(v116);
  if (*(&v111 + 1))
  {
    if (v114)
    {
      (*(**(&v111 + 1) + 40))();
    }

    v114 = 0;
    v112 = 0uLL;
    *(&v111 + 1) = 0;
    ++v113;
  }

  re::DynamicArray<re::MeshAssetSkeleton>::deinit(v109 + 8);
  re::DynamicArray<re::MeshAssetInstance>::deinit(&v106 + 8);
  v66 = re::DynamicArray<re::MeshAssetModel>::deinit(v103);
  if (v120[0] == 1)
  {
    re::DynamicArray<re::MeshAssetModel>::DynamicArray(v96, &v120[8]);
    re::DynamicArray<re::MeshAssetInstance>::DynamicArray(v96 + 40, v121 + 1);
    re::DynamicArray<re::MeshAssetSkeleton>::DynamicArray(v96 + 80, v123 + 1);
    re::DynamicArray<float>::DynamicArray(v96 + 120, &v125 + 1);
    *(v96 + 40) = v129;
    re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::DynamicArray(v96 + 168, &v130);
  }

  else
  {
    v67 = *re::assetsLogObjects(v66);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      if (v120[32])
      {
        v70 = *&v121[0];
      }

      else
      {
        v70 = &v120[33];
      }

      *buf = 136315138;
      *&buf[4] = v70;
      _os_log_error_impl(&dword_1E1C61000, v67, OS_LOG_TYPE_ERROR, "Failed to make mesh asset data from loaded mesh asset: %s", buf, 0xCu);
    }

    *(v96 + 11) = 0u;
    *(v96 + 12) = 0u;
    *(v96 + 9) = 0u;
    *(v96 + 10) = 0u;
    *(v96 + 7) = 0u;
    *(v96 + 8) = 0u;
    *(v96 + 5) = 0u;
    *(v96 + 6) = 0u;
    *(v96 + 3) = 0u;
    *(v96 + 4) = 0u;
    *(v96 + 1) = 0u;
    *(v96 + 2) = 0u;
    *v96 = 0u;
  }

  if (v120[0] == 1)
  {
    re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(&v130);
    if (*(&v125 + 1))
    {
      if (v128)
      {
        (*(**(&v125 + 1) + 40))();
      }

      v128 = 0;
      v126 = 0uLL;
      *(&v125 + 1) = 0;
      ++v127;
    }

    re::DynamicArray<re::MeshAssetSkeleton>::deinit(v123 + 8);
    re::DynamicArray<re::MeshAssetInstance>::deinit(v121 + 8);
    return re::DynamicArray<re::MeshAssetModel>::deinit(&v120[8]);
  }

  else
  {
    result = *&v120[24];
    if (*&v120[24] && (v120[32] & 1) != 0)
    {
      return (*(**&v120[24] + 40))();
    }
  }

  return result;
}

uint64_t re::MeshAssetLoader::cleanupSerializationState(re::MeshAssetLoader *this, _DWORD *a2)
{
  if (*(a2 + 1264) == 1)
  {
    v12 = v2;
    v13 = v3;
    v10 = 0u;
    memset(v11, 0, sizeof(v11));
    v8 = 0u;
    v9 = 0u;
    memset(v7, 0, sizeof(v7));
    memset(v6, 0, sizeof(v6));
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((a2 + 4), v6);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((a2 + 14), &v6[2] + 1);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((a2 + 24), v7);
    re::DynamicArray<re::RigComponentConstraint>::operator=((a2 + 34), &v8 + 1);
    a2[44] = v11[0];
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((a2 + 46), v11 + 1);
    re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(v11 + 8);
    if (*(&v8 + 1))
    {
      if (*(&v10 + 1))
      {
        (*(**(&v8 + 1) + 40))();
      }

      *(&v10 + 1) = 0;
      v9 = 0uLL;
      *(&v8 + 1) = 0;
      LODWORD(v10) = v10 + 1;
    }

    re::DynamicArray<re::MeshAssetSkeleton>::deinit(v7);
    re::DynamicArray<re::MeshAssetInstance>::deinit(&v6[2] + 8);
    return re::DynamicArray<re::MeshAssetModel>::deinit(v6);
  }

  return result;
}

uint64_t re::MeshAssetLoader::registerAsset(re::MeshAssetLoader *this, id *a2, const re::ExistingAssetInformation *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (v4)
  {
    re::MeshAsset::registerRuntimeData(a2, v4);
    if (*(this + 4))
    {
      re::DirectMeshPayload::dynamicCast(&v13, a2 + 43);
      v7 = v13;
      if (v13)
      {
        v8 = re::DirectMeshPayload::connectionId(&v13);
        v9 = [v13 identifier];
        v16 = v8;
        uuid_copy(v17, v9);
        v10 = *(this + 4);
        v14 = v16;
        uuid_copy(v15, v17);
        if (*(a3 + 10) == -1)
        {
          v11 = 0;
        }

        else
        {
          v11 = *(a3 + 10);
        }

        re::DirectResourceAssetTracker::registerDirectResourceBackedAsset(v10, &v14, v11);
        v7 = v13;
      }
    }
  }

  return 0;
}

uint64_t (***re::MeshAssetLoader::unregisterAsset(re::MeshAssetLoader *this, id *a2, const re::ExistingAssetInformation *a3))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  result = *(this + 3);
  if (result)
  {
    if (*(this + 4))
    {
      re::DirectMeshPayload::dynamicCast(&v12, a2 + 43);
      v7 = v12;
      if (v12)
      {
        v8 = re::DirectMeshPayload::connectionId(&v12);
        v9 = [v12 identifier];
        v15 = v8;
        uuid_copy(v16, v9);
        v10 = *(this + 4);
        v13 = v15;
        uuid_copy(v14, v16);
        if (*(a3 + 10) == -1)
        {
          v11 = 0;
        }

        else
        {
          v11 = *(a3 + 10);
        }

        re::DirectResourceAssetTracker::unregisterDirectResourceBackedAsset(v10, &v13, v11);
        v7 = v12;
      }

      result = *(this + 3);
    }

    *(a2 + 1264) = 0;
    result = re::MeshManager::destroyCollection(result, a2 + 69);
    a2[71] = 0;
    ++*(a2 + 144);
    a2[76] = 0;
    ++*(a2 + 154);
  }

  return result;
}

uint64_t re::MeshAssetLoader::defaultAssetCompileOptions(re::MeshAssetLoader *this)
{
  v2 = re::globalAllocators(this);
  v3 = (*(*v2[2] + 32))(v2[2], 64, 8);
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 2) = 257;
  *(v3 + 4) = 1;
  *(v3 + 9) = 16842752;
  *(v3 + 5) = 0;
  *(v3 + 13) = 1;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 52) = 0x7FFFFFFF;
  v4 = *(this + 255);
  *v3 = *(this + 31);
  *(v3 + 7) = v4;
  re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v3 + 16), this + 264);
  return v3;
}

re::DynamicString *re::MeshAssetLoader::setDefaultAssetCompileOptions(re::MeshAssetLoader *this, uint64_t *a2)
{
  v2 = *a2;
  *(this + 255) = *(a2 + 7);
  *(this + 31) = v2;
  return re::HashTable<re::DynamicString,re::MeshAttributeCompressionOption,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((this + 264), (a2 + 2));
}

void re::DynamicArray<re::MeshAssetBuffer>::removeAt(uint64_t a1, unint64_t a2)
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
    v6 = v5 + 80 * v3;
    v7 = (v5 + 80 * a2);
    re::DynamicString::operator=(v7, (v6 - 80));
    re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v7 + 32, (v6 - 48));
    *(v7 + 36) = *(v6 - 8);
    v3 = *(a1 + 16);
  }

  v8 = *(a1 + 32) + 80 * v3;
  v9 = (v8 - 80);
  re::DynamicArray<unsigned long>::deinit(v8 - 48);
  re::DynamicString::deinit(v9);
  --*(a1 + 16);
  ++*(a1 + 24);
}

double re::DynamicArray<re::MeshAssetBuffer>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::MeshAssetBuffer>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 80 * v4;
  result = 0.0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 24) = *(a2 + 24);
  v7 = *(a2 + 8);
  *v5 = *a2;
  *a2 = 0;
  v8 = *(a2 + 16);
  *(a2 + 24) = 0;
  v10 = *(v5 + 8);
  v9 = *(v5 + 16);
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v9;
  *(v5 + 64) = 0;
  *(v5 + 56) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 32) = 0;
  v11 = *(a2 + 40);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 40) = v11;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v12 = *(v5 + 48);
  *(v5 + 48) = *(a2 + 48);
  *(a2 + 48) = v12;
  v13 = *(v5 + 64);
  *(v5 + 64) = *(a2 + 64);
  *(a2 + 64) = v13;
  ++*(a2 + 56);
  ++*(v5 + 56);
  *(v5 + 72) = *(a2 + 72);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::BufferTable::resize(re::BufferTable *this, unint64_t a2)
{
  re::DynamicArray<re::BufferView>::resize(this + 64, a2);
  re::BucketArray<re::BufferSlice,8ul>::resize(this + 144, a2);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize(this + 25, a2);

  re::DynamicArray<unsigned long>::resize(this + 240, a2);
}

uint64_t re::BufferTable::setBuffer(re::BufferTable *this, const re::WeakStringID *a2, const re::BufferSlice *a3)
{
  v5 = re::BufferTable::getOrAddKey(this, a2);
  re::BufferTable::setBufferRef(this, v5, a3);
  v6 = re::BucketArray<re::BufferSlice,8ul>::operator[](this + 144, v5);
  v11[2] = *(a3 + 4);
  v7 = *(v6 + 24);
  if (v7 == -1)
  {
    v10 = std::__throw_bad_variant_access[abi:nn200100]();
    return re::MeshAssetLoader::preloadAssets(v10);
  }

  else
  {
    v13 = &v12;
    v11[0] = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_10BufferViewC1ERKNS6_11BufferSliceEmmE3__0ZNS9_C1ESC_mmE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v7])(&v13, v6);
    v11[1] = v8;
    re::BufferTable::setBufferView(this, v5, v11);
    return re::BufferTable::setBufferIndirectResources(this, v5, 0, 0);
  }
}

void re::MeshAssetLoader::preloadAssets(re::StringID **this)
{
  v2 = re::ServiceLocator::service<re::AssetService>(this[5]);
  if ((*(*v2 + 360))(v2))
  {
  }
}

void anonymous namespace::ensureSharedCubeRegistered(_anonymous_namespace_ *this, re::AssetHandle *a2, AssetService *a3)
{
  if (!*(this + 1))
  {
    v19[98] = v3;
    v19[99] = v4;
    re::GeomMesh::GeomMesh(v19, 0);
    re::buildCube(v19, 1, 1.0, 1u);
    MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(v19, 1uLL, 0, 0, &v17);
    v8 = v17;
    v9 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
    v10 = (*(*v9[2] + 32))(v9[2], 1272, 8);
    v11 = v10;
    if (v8 == 1)
    {
      re::MeshAsset::MeshAsset(v10, &v18);
    }

    else
    {
      re::MeshAsset::MeshAsset(v10);
    }

    re::AssetService::createNamedMemoryAsset<re::MeshAsset>(a2, v11, "sharedCubeMesh.compiledmesh", 2);
    v12 = *this;
    *this = v15;
    v15 = v12;
    v13 = *(this + 2);
    *(this + 2) = v16;
    v16 = v13;
    re::AssetHandle::~AssetHandle(&v15);
    re::AssetHandle::loadAsync(this);
    re::Result<re::MeshAssetData,re::DetailedError>::~Result(&v17, v14);
    re::GeomMesh::~GeomMesh(v19);
  }
}

void anonymous namespace::ensureSharedPlaneRegistered(_anonymous_namespace_ *this, re::AssetHandle *a2, AssetService *a3)
{
  if (!*(this + 1))
  {
    v30[98] = v3;
    v30[99] = v4;
    re::GeomMesh::GeomMesh(v30, 0);
    v24 = 65537;
    v25 = 0;
    v27 = 0;
    v28 = 257;
    __asm { FMOV            V0.2S, #1.0 }

    v26 = _D0;
    v29 = 2;
    re::buildPlane(v30, &v24);
    MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(v30, 1uLL, 0, 0, &v22);
    v13 = v22;
    v14 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
    v15 = (*(*v14[2] + 32))(v14[2], 1272, 8);
    v16 = v15;
    if (v13 == 1)
    {
      re::MeshAsset::MeshAsset(v15, &v23);
    }

    else
    {
      re::MeshAsset::MeshAsset(v15);
    }

    re::AssetService::createNamedMemoryAsset<re::MeshAsset>(a2, v16, "sharedPlaneMesh.compiledmesh", 2);
    v17 = *this;
    *this = v20;
    v20 = v17;
    v18 = *(this + 2);
    *(this + 2) = v21;
    v21 = v18;
    re::AssetHandle::~AssetHandle(&v20);
    re::AssetHandle::loadAsync(this);
    re::Result<re::MeshAssetData,re::DetailedError>::~Result(&v22, v19);
    re::GeomMesh::~GeomMesh(v30);
  }
}

void anonymous namespace::ensureSharedBillboardPlaneRegistered(_anonymous_namespace_ *this, re::AssetHandle *a2, AssetService *a3)
{
  if (!*(this + 1))
  {
    v30[98] = v3;
    v30[99] = v4;
    re::GeomMesh::GeomMesh(v30, 0);
    v24 = 65537;
    v25 = 0;
    v27 = 0;
    v28 = 257;
    __asm { FMOV            V0.2S, #1.0 }

    v26 = _D0;
    v29 = 4;
    re::buildPlane(v30, &v24);
    MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(v30, 1uLL, 0, 0, &v22);
    v13 = v22;
    v14 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
    v15 = (*(*v14[2] + 32))(v14[2], 1272, 8);
    v16 = v15;
    if (v13 == 1)
    {
      re::MeshAsset::MeshAsset(v15, &v23);
    }

    else
    {
      re::MeshAsset::MeshAsset(v15);
    }

    re::AssetService::createNamedMemoryAsset<re::MeshAsset>(a2, v16, "sharedBillboardMesh.compiledmesh", 2);
    v17 = *this;
    *this = v20;
    v20 = v17;
    v18 = *(this + 2);
    *(this + 2) = v21;
    v21 = v18;
    re::AssetHandle::~AssetHandle(&v20);
    re::AssetHandle::loadAsync(this);
    re::Result<re::MeshAssetData,re::DetailedError>::~Result(&v22, v19);
    re::GeomMesh::~GeomMesh(v30);
  }
}

void anonymous namespace::ensureSharedDoubleBillboardPlaneRegistered(_anonymous_namespace_ *this, re::AssetHandle *a2, AssetService *a3)
{
  if (!*(this + 1))
  {
    v20[98] = v3;
    v20[99] = v4;
    re::GeomMesh::GeomMesh(v20, 0);
    MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(v20, 1uLL, 0, 0, &v18);
    v9 = v18;
    v10 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
    v11 = (*(*v10[2] + 32))(v10[2], 1272, 8);
    v12 = v11;
    if (v9 == 1)
    {
      re::MeshAsset::MeshAsset(v11, &v19);
    }

    else
    {
      re::MeshAsset::MeshAsset(v11);
    }

    re::AssetService::createNamedMemoryAsset<re::MeshAsset>(a2, v12, "sharedDoubleBillboardMesh.compiledmesh", 2);
    v13 = *this;
    *this = v16;
    v16 = v13;
    v14 = *(this + 2);
    *(this + 2) = v17;
    v17 = v14;
    re::AssetHandle::~AssetHandle(&v16);
    re::AssetHandle::loadAsync(this);
    re::Result<re::MeshAssetData,re::DetailedError>::~Result(&v18, v15);
    re::GeomMesh::~GeomMesh(v20);
  }
}

void anonymous namespace::ensureSharedDoubleVertexBillboardPlaneRegistered(_anonymous_namespace_ *this, re::AssetHandle *a2, AssetService *a3)
{
  if (!*(this + 1))
  {
    v20[98] = v3;
    v20[99] = v4;
    re::GeomMesh::GeomMesh(v20, 0);
    MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(v20, 1uLL, 0, 0, &v18);
    v9 = v18;
    v10 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
    v11 = (*(*v10[2] + 32))(v10[2], 1272, 8);
    v12 = v11;
    if (v9 == 1)
    {
      re::MeshAsset::MeshAsset(v11, &v19);
    }

    else
    {
      re::MeshAsset::MeshAsset(v11);
    }

    re::AssetService::createNamedMemoryAsset<re::MeshAsset>(a2, v12, "sharedDoubleVertexdBillboardMesh.compiledmesh", 2);
    v13 = *this;
    *this = v16;
    v16 = v13;
    v14 = *(this + 2);
    *(this + 2) = v17;
    v17 = v14;
    re::AssetHandle::~AssetHandle(&v16);
    re::AssetHandle::loadAsync(this);
    re::Result<re::MeshAssetData,re::DetailedError>::~Result(&v18, v15);
    re::GeomMesh::~GeomMesh(v20);
  }
}

void anonymous namespace::ensureSharedDoubleVertexCircularPlaneRegistered(_anonymous_namespace_ *this, re::AssetHandle *a2, AssetService *a3)
{
  if (!*(this + 1))
  {
    v27[100] = v3;
    v27[101] = v4;
    re::GeomMesh::GeomMesh(v27, 0);
    v20 = 0x10000;
    v21 = 1;
    v22 = 0;
    v23 = 0;
    v24 = 65793;
    v26 = 0u;
    memset(v25, 0, sizeof(v25));
    DWORD1(v26) = 0x7FFFFFFF;
    MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(v27, 1uLL, 0, &v20, &v18);
    v9 = v18;
    v10 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
    v11 = (*(*v10[2] + 32))(v10[2], 1272, 8);
    v12 = v11;
    if (v9 == 1)
    {
      re::MeshAsset::MeshAsset(v11, &v19);
    }

    else
    {
      re::MeshAsset::MeshAsset(v11);
    }

    re::AssetService::createNamedMemoryAsset<re::MeshAsset>(a2, v12, "sharedDoubleVertexCircularPlaneMesh.compiledmesh", 2);
    v13 = *this;
    *this = v16;
    v16 = v13;
    v14 = *(this + 2);
    *(this + 2) = v17;
    v17 = v14;
    re::AssetHandle::~AssetHandle(&v16);
    re::AssetHandle::loadAsync(this);
    re::Result<re::MeshAssetData,re::DetailedError>::~Result(&v18, v15);
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v25);
    re::GeomMesh::~GeomMesh(v27);
  }
}

void anonymous namespace::ensureSharedFullscreenPlaneRegistered(_anonymous_namespace_ *this, re::AssetHandle *a2, AssetService *a3)
{
  if (!*(this + 1))
  {
    v25[98] = v3;
    v25[99] = v4;
    re::GeomMesh::GeomMesh(v25, 0);
    v19 = 65537;
    v20 = 0;
    v22 = 0;
    v23 = 257;
    v21 = 0x4000000040000000;
    v24 = 4;
    re::buildPlane(v25, &v19);
    MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(v25, 1uLL, 0, 0, &v17);
    v8 = v17;
    v9 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
    v10 = (*(*v9[2] + 32))(v9[2], 1272, 8);
    v11 = v10;
    if (v8 == 1)
    {
      re::MeshAsset::MeshAsset(v10, &v18);
    }

    else
    {
      re::MeshAsset::MeshAsset(v10);
    }

    re::AssetService::createNamedMemoryAsset<re::MeshAsset>(a2, v11, "sharedFullscreenMesh.compiledmesh", 2);
    v12 = *this;
    *this = v15;
    v15 = v12;
    v13 = *(this + 2);
    *(this + 2) = v16;
    v16 = v13;
    re::AssetHandle::~AssetHandle(&v15);
    re::AssetHandle::loadAsync(this);
    re::Result<re::MeshAssetData,re::DetailedError>::~Result(&v17, v14);
    re::GeomMesh::~GeomMesh(v25);
  }
}

void anonymous namespace::ensureSharedCircularPlaneRegistered(_anonymous_namespace_ *this, re::AssetHandle *a2, AssetService *a3)
{
  if (!*(this + 1))
  {
    v30[98] = v3;
    v30[99] = v4;
    re::GeomMesh::GeomMesh(v30, 0);
    v24 = 65537;
    v28 = 257;
    __asm { FMOV            V0.2S, #1.0 }

    v26 = _D0;
    v27 = 1056964608;
    v25 = 10;
    v29 = 2;
    re::buildPlane(v30, &v24);
    MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(v30, 1uLL, 0, 0, &v22);
    v13 = v22;
    v14 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
    v15 = (*(*v14[2] + 32))(v14[2], 1272, 8);
    v16 = v15;
    if (v13 == 1)
    {
      re::MeshAsset::MeshAsset(v15, &v23);
    }

    else
    {
      re::MeshAsset::MeshAsset(v15);
    }

    re::AssetService::createNamedMemoryAsset<re::MeshAsset>(a2, v16, "sharedCircularPlaneMesh.compiledmesh", 2);
    v17 = *this;
    *this = v20;
    v20 = v17;
    v18 = *(this + 2);
    *(this + 2) = v21;
    v21 = v18;
    re::AssetHandle::~AssetHandle(&v20);
    re::AssetHandle::loadAsync(this);
    re::Result<re::MeshAssetData,re::DetailedError>::~Result(&v22, v19);
    re::GeomMesh::~GeomMesh(v30);
  }
}

void re::MeshAssetLoader::sharedCube(re::MeshAssetLoader *this@<X0>, AssetService *a2@<X1>, uint64_t a3@<X8>)
{
  re::MeshAsset::assetType(this);
  v6 = *(this + 226);
  v9 = &re::MeshAsset::assetType(void)::type;
  v7 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v6, &v9);
  (*(**v7 + 128))(*v7);
}

void anonymous namespace::preloadedAssetHandle(_anonymous_namespace_ *this@<X0>, AssetService *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  re::MeshAsset::assetType(this);
  (*(*this + 32))(&v9, this, a2, &re::MeshAsset::assetType(void)::type);
  if (*(&v9 + 1))
  {
    v8 = atomic_load((*(&v9 + 1) + 896));
    if (v8 != 2)
    {
      if (v4)
      {
        re::AssetHandle::loadNow(*(&v9 + 1), 0);
      }

      else
      {
        re::AssetHandle::loadAsync(&v9);
      }
    }

    *a4 = v9;
    v9 = 0uLL;
    *(a4 + 16) = v10;
    v10 = 0;
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  re::AssetHandle::~AssetHandle(&v9);
}

void re::MeshAssetLoader::sharedBillboardPlane(re::MeshAssetLoader *this@<X0>, AssetService *a2@<X1>, uint64_t a3@<X8>)
{
  re::MeshAsset::assetType(this);
  v6 = *(this + 226);
  v9 = &re::MeshAsset::assetType(void)::type;
  v7 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v6, &v9);
  (*(**v7 + 128))(*v7);
}

uint64_t re::MeshAssetLoader::serializableAsset@<X0>(re::MeshAsset *a1@<X1>, uint64_t *a2@<X8>)
{
  v17[4] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    re::internal::assertLog(4, 0, "assertion failure: '%s' (%s:line %i) ", "runtimeAssetPointer != nullptr", "serializableAsset", 1732);
    _os_crash("assertion failure: (runtimeAssetPointer != nullptr) ");
    __break(1u);
  }

  if (*(a1 + 1264) == 1)
  {
    MeshAssetDataFromRegisteredMeshAsset = re::MeshAsset::makeMeshAssetDataFromRegisteredMeshAsset(v9, a1);
  }

  else
  {
    re::DynamicArray<re::MeshAssetModel>::DynamicArray(v9, a1 + 2);
    re::DynamicArray<re::MeshAssetInstance>::DynamicArray(v10, a1 + 7);
    re::DynamicArray<re::MeshAssetSkeleton>::DynamicArray(v11, a1 + 12);
    re::DynamicArray<float>::DynamicArray(v12, a1 + 17);
    v15 = *(a1 + 44);
    MeshAssetDataFromRegisteredMeshAsset = re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::DynamicArray(v16, a1 + 23);
  }

  v5 = re::globalAllocators(MeshAssetDataFromRegisteredMeshAsset);
  v6 = (*(*v5[2] + 32))(v5[2], 1272, 8);
  v7 = re::MeshAsset::MeshAsset(v6, v9);
  v17[0] = &unk_1F5CBD8B0;
  v17[3] = v17;
  a2[4] = (a2 + 1);
  *a2 = v7;
  a2[1] = &unk_1F5CBD8B0;
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v17);
  if (*a2)
  {
    re::DynamicArray<re::AssetHandle>::operator=((*a2 + 264), (a1 + 264));
  }

  re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(v16);
  if (v12[0])
  {
    if (v14)
    {
      (*(*v12[0] + 40))();
    }

    v14 = 0;
    memset(v12, 0, sizeof(v12));
    ++v13;
  }

  re::DynamicArray<re::MeshAssetSkeleton>::deinit(v11);
  re::DynamicArray<re::MeshAssetInstance>::deinit(v10);
  return re::DynamicArray<re::MeshAssetModel>::deinit(v9);
}

re::AssetHandle *re::DynamicArray<re::AssetHandle>::operator=(re::AssetHandle *a1, re::AssetHandle *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::AssetHandle>::copy(a1, a2);
        ++*(a1 + 6);
      }

      else
      {
        re::DynamicArray<re::AssetHandle>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = *(a2 + 2);
      *a1 = v4;
      re::DynamicArray<re::AssetHandle>::setCapacity(a1, v5);
      ++*(a1 + 6);
      re::DynamicArray<re::AssetHandle>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t *re::MeshAssetLoader::writeAssetToRealityFile@<X0>(re::AssetHandle *this@<X1>, uint64_t a2@<X0>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, char a9)
{
  v58[5] = *MEMORY[0x1E69E9840];
  re::AssetHandle::serializableAsset(v58, this);
  v17 = v58[0];
  v18 = (*(*a7 + 32))(&v55, a7, this, *(a4 + 24), *(a4 + 41));
  if ((v55 & 1) == 0)
  {
    v24 = v56;
    *a8 = 0;
    *(a8 + 8) = v24;
LABEL_38:
    re::Result<re::Optional<std::unique_ptr<void,std::function<void ()(void *)>>>,re::WrappedError>::~Result(&v55);
    return std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v58);
  }

  if (v56)
  {
    v19 = v57;
  }

  else
  {
    v19 = v17;
  }

  v52 = 0;
  v53 = 0;
  v54 = 0;
  re::DynamicString::setCapacity(&v51, 0);
  if (*(a4 + 42) != 1)
  {
    v50 = 0;
    v47[1] = 0;
    v48 = 0;
    v47[0] = 0;
    v49 = 0;
    v46[0] = &unk_1F5D0A7B0;
    v46[1] = v47;
    v46[2] = 0;
    v21 = re::AssetHandle::legacy_assetPath(this);
    v22 = *(this + 1);
    if (v22)
    {
      v23 = *(v22 + 280);
    }

    else
    {
      v23 = 0;
    }

    v25 = re::AssetUtilities::saveCompiledAssetToStream(v46, v19, v21, v23, a5, v42);
    if (v42[0])
    {
      v26 = a9;
      if (!a9)
      {
        v26 = (*(*a2 + 264))(a2, v19, a4, v25) ^ 1;
      }

      v27 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v50, v48, *MEMORY[0x1E695E498]);
      v28 = v27;
      if (*(a3 + 1))
      {
        v29 = *(a3 + 2);
      }

      else
      {
        v29 = a3 + 9;
      }

      re::RealityFileWriter::saveEntryToArchive(v27, v29, a6, v26, 0, 0, &v37);
      CFRelease(v28);
      if (v37)
      {
        v37 = 0;
        v38 = 0;
        v39 = 1;
        v40 = 0;
        v41 = 0;
        re::DynamicOverflowArray<re::DynamicString,2ul>::add(&v37, a3);
        if (v52)
        {
          v30 = v52 >> 1;
        }

        else
        {
          v30 = v52 >> 1;
        }

        if (v30)
        {
          re::DynamicOverflowArray<re::DynamicString,2ul>::add(&v37, &v51);
        }

        re::DynamicOverflowArray<re::DynamicString,2ul>::DynamicOverflowArray(v36, &v37);
        *a8 = 1;
        re::DynamicOverflowArray<re::DynamicString,2ul>::DynamicOverflowArray(a8 + 8, v36);
        re::DynamicOverflowArray<re::DynamicString,2ul>::deinit(v36);
        re::DynamicOverflowArray<re::DynamicString,2ul>::deinit(&v37);
        goto LABEL_28;
      }

      v35 = v38;
      *a8 = 0;
      *(a8 + 8) = v35;
      if (v37)
      {
LABEL_28:
        if (v42[0] & 1) == 0 && v43 && (v44)
        {
          (*(*v43 + 40))();
        }

        if (v47[0] && v50)
        {
          (*(*v47[0] + 40))();
        }

        if (v51)
        {
          if (v52)
          {
            (*(*v51 + 40))();
          }
        }

        goto LABEL_38;
      }

      v33 = v38;
    }

    else
    {
      if (v44)
      {
        v31 = *&v45[7];
      }

      else
      {
        v31 = v45;
      }

      re::WrappedError::make(&v37, @"RERealityFileWriterErrorDomain", 5, v31);
      v32 = v37;
      v37 = 0;
      *a8 = 0;
      *(a8 + 8) = v32;
      v33 = 0;
    }

    goto LABEL_28;
  }

  re::internal::assertLog(4, v20, "assertion failure: '%s' (%s:line %i) Exporting with vvm side cars not supported in geode-era xcode trains", "!Unreachable code", "writeAssetToRealityFile", 1822);
  result = _os_crash("assertion failure: (!Unreachable code) Exporting with vvm side cars not supported in geode-era xcode trains");
  __break(1u);
  return result;
}

void re::DynamicArray<re::MeshAssetModel>::resize(uint64_t result, unint64_t a2)
{
  v4 = *(result + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v10 = a2 << 9;
    v11 = a2;
    do
    {
      v12 = (*(result + 32) + v10);
      re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(v12 + 472);
      re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v12 + 432);
      re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(v12 + 392);
      re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v12 + 352);
      re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(v12 + 312);
      re::DynamicArray<re::MeshLodLevelInfo>::deinit(v12 + 272);
      re::DynamicArray<re::MeshAssetSkeleton>::deinit(v12 + 232);
      re::DynamicArray<re::MeshAssetPart>::deinit(v12 + 192);
      re::DynamicArray<re::MeshAssetSkinningData>::deinit(v12 + 152);
      re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(v12 + 112);
      re::StringID::destroyString(v12);
      ++v11;
      v10 += 512;
    }

    while (v11 < *(result + 16));
  }

  else
  {
    if (*(result + 8) < a2)
    {
      re::DynamicArray<re::MeshAssetModel>::setCapacity(result, a2);
      v4 = *(result + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = v4 << 9;
      v7.i64[0] = 0x7F0000007FLL;
      v7.i64[1] = 0x7F0000007FLL;
      v8 = vnegq_f32(v7);
      do
      {
        v9 = *(result + 32) + v6;
        *v9 = 0;
        *(v9 + 8) = &str_67;
        *(v9 + 16) = v8;
        *(v9 + 32) = v7;
        *(v9 + 504) = 0;
        *(v9 + 48) = 0uLL;
        *(v9 + 64) = 0uLL;
        *(v9 + 80) = 0uLL;
        *(v9 + 96) = 0uLL;
        *(v9 + 112) = 0uLL;
        *(v9 + 124) = 0uLL;
        *(v9 + 144) = 0uLL;
        *(v9 + 160) = 0uLL;
        *(v9 + 176) = 0;
        *(v9 + 184) = 0uLL;
        *(v9 + 200) = 0uLL;
        *(v9 + 216) = 0;
        *(v9 + 224) = 0uLL;
        *(v9 + 240) = 0uLL;
        *(v9 + 256) = 0;
        *(v9 + 296) = 0;
        *(v9 + 264) = 0uLL;
        *(v9 + 280) = 0uLL;
        *(v9 + 336) = 0;
        *(v9 + 304) = 0uLL;
        *(v9 + 320) = 0uLL;
        *(v9 + 376) = 0;
        *(v9 + 344) = 0uLL;
        *(v9 + 360) = 0uLL;
        *(v9 + 416) = 0;
        *(v9 + 384) = 0uLL;
        *(v9 + 400) = 0uLL;
        *(v9 + 456) = 0;
        *(v9 + 424) = 0uLL;
        *(v9 + 440) = 0uLL;
        *(v9 + 464) = 0uLL;
        *(v9 + 480) = 0uLL;
        v6 += 512;
        *(v9 + 496) = 0;
        --v5;
      }

      while (v5);
    }
  }

  *(result + 16) = a2;
  ++*(result + 24);
}

void re::DynamicArray<re::MeshAssetInstance>::resize(uint64_t result, unint64_t a2)
{
  v4 = *(result + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 96 * a2;
    v9 = a2;
    do
    {
      re::StringID::destroyString((*(result + 32) + v8));
      ++v9;
      v8 += 96;
    }

    while (v9 < *(result + 16));
  }

  else
  {
    if (*(result + 8) < a2)
    {
      re::DynamicArray<re::MeshAssetInstance>::setCapacity(result, a2);
      v4 = *(result + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 96 * v4;
      do
      {
        v7 = *(result + 32) + v6;
        *v7 = 0;
        *(v7 + 8) = &str_67;
        *(v7 + 16) = 0uLL;
        *(v7 + 32) = 0uLL;
        *(v7 + 48) = 0uLL;
        *(v7 + 64) = 0uLL;
        *(v7 + 80) = 0;
        v6 += 96;
        --v5;
      }

      while (v5);
    }
  }

  *(result + 16) = a2;
  ++*(result + 24);
}

void anonymous namespace::makeMeshAssetModelFromMeshModel(_anonymous_namespace_ *this, float32x4_t *a2, id **a3, int a4)
{
  v268 = *MEMORY[0x1E69E9840];
  v215[0] = 0;
  v215[1] = &str_67;
  v7.i64[0] = 0x7F0000007FLL;
  v7.i64[1] = 0x7F0000007FLL;
  v216 = vnegq_f32(v7);
  v217 = v7;
  v242 = 0;
  v218 = 0u;
  v219 = 0u;
  v220 = 0u;
  v221 = 0u;
  memset(v222, 0, 28);
  memset(&v222[2], 0, 32);
  v224 = 0u;
  v225 = 0u;
  v223 = 0;
  v226 = 0;
  memset(v227, 0, sizeof(v227));
  v228 = 0;
  v229 = 0u;
  v230 = 0u;
  v231 = 0;
  v233 = 0;
  memset(v232, 0, sizeof(v232));
  memset(v234, 0, sizeof(v234));
  v235 = 0;
  v237 = 0;
  memset(v236, 0, sizeof(v236));
  memset(v238, 0, sizeof(v238));
  v239 = 0;
  memset(v240, 0, sizeof(v240));
  v241 = 0;
  v8 = re::StringID::operator=(v215, a2);
  v9 = a2[2];
  v216 = a2[1];
  v217 = v9;
  v10 = a2[3].u64[1];
  if (v225 < v10)
  {
    v8 = re::DynamicArray<re::MeshAssetPart>::setCapacity(&v224 + 1, a2[3].u64[1]);
  }

  v11 = a2[7].u64[1];
  v12 = a2[8].u64[0];
  if (*(&v229 + 1))
  {
    if (v11)
    {
      re::DynamicArray<re::MeshLodLevelInfo>::copy((&v229 + 8), a2[8].i64[0], a2[7].u64[1]);
      re::DynamicArray<re::MeshLodLevelInfo>::resize(&v229 + 1, v11);
      if (!v10)
      {
        goto LABEL_30;
      }

LABEL_10:
      v13 = 0;
      v12 = 0;
      v11 = v264;
      while (1)
      {
        v14 = a2[3].u64[1];
        if (v14 <= v12)
        {
          goto LABEL_292;
        }

        v15 = LOBYTE(v255[0]);
        if (v255[0])
        {
          re::DynamicArray<re::MeshAssetPart>::add((&v224 + 8), &v255[1]);
        }

        else
        {
          *v264 = v255[1];
          re::DynamicString::DynamicString(&v264[16], &v255[2]);
          *this = 0;
          *(this + 1) = *v264;
          v16 = v265;
          *(this + 4) = *&v264[16];
          *(this + 7) = v16;
          *(this + 40) = *&v264[24];
        }

        if (LOBYTE(v255[0]) == 1)
        {
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v261);
          if (BYTE8(v257))
          {
            if (BYTE8(v257))
            {
            }
          }

          *&v258 = &str_67;
          *(&v257 + 1) = 0;
          re::DynamicArray<re::MeshAssetBuffer>::deinit(&v255[1]);
        }

        else if (*&v255[2] && (BYTE8(v255[2]) & 1) != 0)
        {
          (*(**&v255[2] + 40))();
        }

        if (!v15)
        {
          goto LABEL_345;
        }

        ++v12;
        v13 += 544;
        if (v10 == v12)
        {
          goto LABEL_30;
        }
      }
    }

    v18 = *(&v230 + 1);
    *(&v230 + 1) = 0;
    if (v18)
    {
      v19 = 48 * v18;
      v11 = *&v232[0] + 8;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v11);
        v11 += 48;
        v19 -= 48;
      }

      while (v19);
    }

    ++v231;
    if (v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v11)
    {
      re::DynamicArray<re::MeshLodLevelInfo>::setCapacity(&v229 + 1, v11);
      ++v231;
      re::DynamicArray<re::MeshLodLevelInfo>::copy((&v229 + 8), v12, v11);
    }

    if (v10)
    {
      goto LABEL_10;
    }
  }

LABEL_30:
  v254 = 0;
  v251 = 0;
  v252 = 0uLL;
  v253 = 0;
  v20 = a2[3].u64[1];
  v21 = a2[14].i64[0];
  if (v21)
  {
    v22 = *(v21 + 8);
  }

  else
  {
    v22 = 0;
  }

  v23 = 0;
  v24 = 0uLL;
  v25 = 1;
  v26 = 0;
  if (!v20 || v22 != v20)
  {
LABEL_103:
    v254 = 0;
    v251 = 0;
    v252 = 0uLL;
    v253 = v25;
    v262[0] = 1;
    *&v262[8] = v26;
    *&v262[16] = v24;
    memset(v255, 0, 24);
    *&v263 = v23;
    *&v255[2] = 0;
    DWORD2(v255[1]) = 2;
    *&v262[32] = 1;
    re::DynamicArray<re::MeshAssetSkinningData>::deinit(v255);
    goto LABEL_113;
  }

  re::DynamicArray<re::MeshAssetSkinningData>::setCapacity(&v251, a2[3].u64[1]);
  v27 = 0;
  v11 = v255;
  v14 = 88;
  while (1)
  {
    v248[0] = 0;
    v250 = 0;
    v249 = 0;
    v28 = a2[14].i64[0];
    if (!v28 || *(v28 + 8) <= v27)
    {
      re::ReadOnlyCPUAccessibleBufferSliceContent::make(v264, v248);
LABEL_105:
      v262[0] = 0;
      *&v262[8] = 100;
      *&v262[16] = re::AssetErrorCategory(void)::instance;
      *&v262[24] = v255[0];
      v263 = v255[1];
LABEL_106:
      if (v264[0] == 1)
      {
        re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&v264[8]);
      }

      else if (*&v264[24] && (v264[32] & 1) != 0)
      {
        (*(**&v264[24] + 40))();
      }

      if (v249 != -1)
      {
        (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v249])(v255, v248);
      }

LABEL_113:
      re::DynamicArray<re::MeshAssetSkinningData>::deinit(&v251);
      v61 = v262[0];
      if (v262[0])
      {
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v222[2] + 8, &v262[8]);
        if (v262[0])
        {
          v62 = re::DynamicArray<re::MeshAssetSkinningData>::deinit(&v262[8]);
          goto LABEL_120;
        }
      }

      else
      {
        v63 = *&v262[24];
        *&v262[32] = 0;
        *&v262[24] = 0;
        v64 = v263;
        v263 = 0uLL;
        *this = 0;
        *(this + 1) = *&v262[8];
        *(this + 2) = v63;
        *(this + 3) = v64;
      }

      v62 = *&v262[24];
      if (*&v262[24] && (v262[32] & 1) != 0)
      {
        v62 = (*(**&v262[24] + 40))();
      }

LABEL_120:
      if (!v61)
      {
        goto LABEL_345;
      }

      *&v267[2] = 0;
      memset(v267, 0, 28);
      v65 = a2[9].i64[0];
      if (v65)
      {
        v66 = *(v65 + 40);
        if (v66 != a2[3].i64[1])
        {
          LOBYTE(v255[0]) = 0;
          *(&v255[0] + 1) = 100;
          *&v255[1] = re::AssetErrorCategory(void)::instance;
          *(&v255[1] + 8) = *v264;
          *(&v255[2] + 1) = *&v264[16];
          *&v255[3] = *&v264[24];
          goto LABEL_153;
        }

        v20 = *(v65 + 64);
        re::DynamicArray<re::MeshAssetBlendShapeData>::resize(v267, v20);
        if (v20)
        {
          v27 = 0;
          v10 = v264;
          v11 = 1;
          v12 = 56;
          while (1)
          {
            re::BlendShapeModelUtil::makeBlendShapeGroupDefinitionFromGroup(v264, &a2[9], (v11 - 1));
            if (v264[0] != 1)
            {
              break;
            }

            v14 = *&v267[1];
            if (*&v267[1] <= v27)
            {
              goto LABEL_353;
            }

            v68 = (*&v267[2] + 56 * v27);
            re::StringID::operator=(v68, &v264[8]);
            re::FixedArray<float>::operator=(v68 + 2, &v264[24]);
            v68[5] = *(&v265 + 1);
            re::Result<re::BlendShapeGroupDefinition,re::DetailedError>::~Result(v264);
            v27 = v11;
            v72 = v20 > v11;
            v11 = (v11 + 1);
            if (!v72)
            {
              goto LABEL_128;
            }
          }

          LOBYTE(v255[0]) = 0;
          *(&v255[0] + 1) = 100;
          *&v255[1] = re::AssetErrorCategory(void)::instance;
          *(&v255[1] + 8) = *v262;
          *(&v255[2] + 8) = *&v262[16];
          re::Result<re::BlendShapeGroupDefinition,re::DetailedError>::~Result(v264);
LABEL_153:
          re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(v267);
          v75 = LOBYTE(v255[0]);
          if (v255[0])
          {
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v222, v255 + 1);
            if (v255[0])
            {
              v76 = re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(v255 + 8);
              goto LABEL_160;
            }
          }

          else
          {
            v77 = *(&v255[1] + 8);
            memset(&v255[1] + 8, 0, 32);
            v78 = *(&v255[2] + 1);
            v79 = *&v255[3];
            *this = 0;
            *(this + 1) = *(v255 + 8);
            *(this + 2) = v77;
            *(this + 6) = v78;
            *(this + 7) = v79;
          }

          v76 = *(&v255[1] + 1);
          if (*(&v255[1] + 1) && (v255[2] & 1) != 0)
          {
            v76 = (*(**(&v255[1] + 1) + 40))();
          }

LABEL_160:
          if (!v75)
          {
            goto LABEL_345;
          }

          *&v264[32] = 0;
          memset(v264, 0, 28);
          v80 = a2[44].i64[0];
          if (v80)
          {
            if (*(v80 + 32) != a2[3].i64[1])
            {
              LOBYTE(v255[0]) = 0;
              *(&v255[0] + 1) = 100;
              *&v255[1] = re::AssetErrorCategory(void)::instance;
              *(&v255[1] + 8) = v267[0];
              *(&v255[2] + 8) = v267[1];
              goto LABEL_209;
            }

            v213 = *(v80 + 32);
            v81 = *(v80 + 56);
            re::DynamicArray<re::MeshAssetContactDeformerData>::resize(v264, v81);
            if (v81)
            {
              v20 = 0;
              v82 = 0;
              v27 = 0xFFFFFFFFLL;
              while (1)
              {
                v10 = *&v264[16];
                if (*&v264[16] <= v20)
                {
                  goto LABEL_357;
                }

                v83 = a2[44].i64[0];
                if (v83 && *(v83 + 32) > v82)
                {
                  v11 = *(*(v83 + 40) + 24 * v82 + 8);
                }

                else
                {
                  v11 = 0;
                }

                v12 = *&v264[32] + 48 * v20;
                *(v12 + 40) = -1;
                re::ContactDeformerModelUtil::offsetBufferName(v255, &a2[9], v82);
                v84 = re::StringID::operator=(v12, v255);
                if (v255[0])
                {
                  if (v255[0])
                  {
                  }
                }

                if (v11)
                {
                  break;
                }

LABEL_190:
                v20 = ++v82;
                if (v81 <= v82)
                {
                  goto LABEL_191;
                }
              }

              v14 = 0;
              v85 = 0;
              v10 = 0;
              while (1)
              {
                v35 = *(v12 + 24);
                if (v35 <= v10)
                {
                  break;
                }

                v86 = a2[44].i64[0];
                if (v86 && *(v86 + 32) > v82)
                {
                  v87 = *(v86 + 40) + 24 * v82;
                  if (*(v87 + 8) <= v10)
                  {
                    v88 = -1;
                  }

                  else
                  {
                    v88 = *(*(v87 + 16) + v14);
                  }

                  v89 = *(v12 + 32);
                  *(v89 + v85) = v88;
                  v91 = *(v86 + 40) + 24 * v82;
                  v90 = 0;
                  if (*(v91 + 8) > v10)
                  {
                    v90 = *(*(v91 + 16) + v14 + 4);
                  }
                }

                else
                {
                  v89 = *(v12 + 32);
                  *(v89 + v85) = -1;
                  v90 = 0;
                }

                *(v89 + v85 + 4) = v90;
                re::ContactDeformerModelUtil::heightMapForTarget(v262, &a2[9], v82, v10);
                v35 = *(v12 + 24);
                if (v35 <= v10)
                {
                  goto LABEL_288;
                }

                re::FixedArray<float>::operator=((*(v12 + 32) + v85 + 8), v262);
                if (*v262 && *&v262[8])
                {
                  (*(**v262 + 40))();
                }

                ++v10;
                v85 += 32;
                v14 += 16;
                if (v11 == v10)
                {
                  goto LABEL_190;
                }
              }

LABEL_284:
              *v262 = 0;
              v256 = 0u;
              memset(v255, 0, sizeof(v255));
              v136 = MEMORY[0x1E69E9C10];
              v137 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v267[0]) = 136315906;
              *(v267 + 4) = "operator[]";
              WORD6(v267[0]) = 1024;
              if (v137)
              {
                v138 = 3;
              }

              else
              {
                v138 = 2;
              }

              *(v267 + 14) = 468;
              WORD1(v267[1]) = 2048;
              *(&v267[1] + 4) = v10;
              WORD6(v267[1]) = 2048;
              *(&v267[1] + 14) = v35;
              _os_log_send_and_compose_impl(v138, v262, v255, 80, &dword_1E1C61000, v136, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v267, 38, v211, v212);
              _os_crash_msg();
              __break(1u);
LABEL_288:
              v251 = 0;
              v256 = 0u;
              memset(v255, 0, sizeof(v255));
              v139 = MEMORY[0x1E69E9C10];
              v140 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v267[0]) = 136315906;
              *(v267 + 4) = "operator[]";
              WORD6(v267[0]) = 1024;
              if (v140)
              {
                v141 = 3;
              }

              else
              {
                v141 = 2;
              }

              *(v267 + 14) = 468;
              WORD1(v267[1]) = 2048;
              *(&v267[1] + 4) = v10;
              WORD6(v267[1]) = 2048;
              *(&v267[1] + 14) = v35;
              _os_log_send_and_compose_impl(v141, &v251, v255, 80, &dword_1E1C61000, v139, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v267, 38, v211, v212);
              _os_crash_msg();
              __break(1u);
LABEL_292:
              *&v267[0] = 0;
              v256 = 0u;
              memset(v255, 0, sizeof(v255));
              v142 = MEMORY[0x1E69E9C10];
              v143 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v264 = 136315906;
              *&v264[4] = "operator[]";
              *&v264[12] = 1024;
              if (v143)
              {
                v144 = 3;
              }

              else
              {
                v144 = 2;
              }

              *&v264[14] = 476;
              *&v264[18] = 2048;
              *&v264[20] = v12;
              *&v264[28] = 2048;
              *&v264[30] = v14;
              _os_log_send_and_compose_impl(v144, v267, v255, 80, &dword_1E1C61000, v142, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v264, 38, v211, v212);
              _os_crash_msg();
              __break(1u);
              goto LABEL_296;
            }

LABEL_191:
            if (v213)
            {
              v92 = 0;
              v93 = a2[44].i64[0];
              v20 = *&v264[16];
              v94 = *&v264[32];
              do
              {
                if (v93 && *(v93 + 56) > v92)
                {
                  v27 = *(*(v93 + 64) + 2 * v92);
                  if (v27 != 0xFFFF && v81 > v27)
                  {
                    if (v20 <= v27)
                    {
                      goto LABEL_378;
                    }

                    *(v94 + 48 * *(*(v93 + 64) + 2 * v92) + 40) = v92;
                  }
                }

                ++v92;
              }

              while (v213 > v92);
            }

            else
            {
              v20 = *&v264[16];
            }

            v96 = *v264;
            v97 = *&v264[8];
            memset(v264, 0, 24);
            v98 = *&v264[32];
            *&v264[32] = 0;
            ++*&v264[24];
            LOBYTE(v255[0]) = 1;
            *(&v255[0] + 1) = v96;
            *&v255[1] = v97;
            *(&v255[1] + 1) = v20;
            memset(v267, 0, 24);
            *(&v255[2] + 1) = v98;
            *&v267[2] = 0;
            DWORD2(v267[1]) = 2;
            LODWORD(v255[2]) = 1;
          }

          else
          {
            *&v264[32] = 0;
            memset(v264, 0, 24);
            *&v264[24] = 1;
            LOBYTE(v255[0]) = 1;
            memset(v267, 0, 24);
            memset(v255 + 8, 0, 24);
            *(&v255[2] + 1) = 0;
            *&v267[2] = 0;
            DWORD2(v267[1]) = 2;
            LODWORD(v255[2]) = 1;
          }

          re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(v267);
LABEL_209:
          re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(v264);
          v99 = LOBYTE(v255[0]);
          if (v255[0])
          {
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v232 + 8, v255 + 1);
            if (v255[0])
            {
              v100 = re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(v255 + 8);
              goto LABEL_216;
            }
          }

          else
          {
            v101 = *(&v255[1] + 8);
            memset(&v255[1] + 8, 0, 32);
            v102 = *(&v255[2] + 1);
            v103 = *&v255[3];
            *this = 0;
            *(this + 1) = *(v255 + 8);
            *(this + 2) = v101;
            *(this + 6) = v102;
            *(this + 7) = v103;
          }

          v100 = *(&v255[1] + 1);
          if (*(&v255[1] + 1) && (v255[2] & 1) != 0)
          {
            v100 = (*(**(&v255[1] + 1) + 40))();
          }

LABEL_216:
          if (!v99)
          {
            goto LABEL_345;
          }

          *&v264[32] = 0;
          memset(v264, 0, 28);
          v104 = a2[34].i64[0];
          if (v104)
          {
            v105 = *(v104 + 32);
            if (a2[3].i64[1] != v105)
            {
              LOBYTE(v255[0]) = 0;
              *(&v255[0] + 1) = 100;
              *&v255[1] = re::AssetErrorCategory(void)::instance;
              *(&v255[1] + 8) = v267[0];
              *(&v255[2] + 8) = v267[1];
              goto LABEL_240;
            }

            v106 = *(v104 + 8);
            v20 = v106;
            v107 = v106;
            re::DynamicArray<re::MeshAssetSmoothDeformerData>::resize(v264, v106);
            if (v107)
            {
              v11 = 0;
              v12 = 16;
              while (1)
              {
                v10 = *&v264[16];
                if (*&v264[16] <= v11)
                {
                  break;
                }

                v108 = *&v264[32] + v12;
                *(*&v264[32] + v12) = -1;
                re::SmoothDeformerModelUtil::envelopeBufferNameForSmoothDataIndex(v255, &a2[9], v11);
                v109 = re::StringID::operator=((v108 - 16), v255);
                if (v255[0])
                {
                  if (v255[0])
                  {
                  }
                }

                ++v11;
                v12 += 24;
                if (v20 == v11)
                {
                  goto LABEL_226;
                }
              }

LABEL_361:
              *v262 = 0;
              v256 = 0u;
              memset(v255, 0, sizeof(v255));
              v187 = MEMORY[0x1E69E9C10];
              v188 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v267[0]) = 136315906;
              *(v267 + 4) = "operator[]";
              WORD6(v267[0]) = 1024;
              if (v188)
              {
                v189 = 3;
              }

              else
              {
                v189 = 2;
              }

              *(v267 + 14) = 789;
              WORD1(v267[1]) = 2048;
              *(&v267[1] + 4) = v11;
              WORD6(v267[1]) = 2048;
              *(&v267[1] + 14) = v10;
              _os_log_send_and_compose_impl(v189, v262, v255, 80, &dword_1E1C61000, v187, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v267, 38, v211, v212);
              _os_crash_msg();
              __break(1u);
LABEL_365:
              re::internal::assertLog(4, v47, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296);
              _os_crash("assertion failure: (!isInitialized() || m_allocator == other.m_allocator) ");
              __break(1u);
              goto LABEL_366;
            }

LABEL_226:
            if (v105)
            {
              v110 = 0;
              v111 = a2[34].i64[0];
              v27 = *&v264[16];
              v112 = *&v264[32];
              do
              {
                if (v111)
                {
                  if (*(v111 + 32) > v110)
                  {
                    v10 = *(*(v111 + 40) + 2 * v110);
                    if (v10 < v20)
                    {
                      if (v27 <= v10)
                      {
                        goto LABEL_382;
                      }

                      *(v112 + 24 * *(*(v111 + 40) + 2 * v110) + 16) = v110;
                    }
                  }
                }

                ++v110;
              }

              while (v105 != v110);
            }

            else
            {
              v27 = *&v264[16];
            }

            v113 = *v264;
            v114 = *&v264[8];
            memset(v264, 0, 24);
            v115 = *&v264[32];
            *&v264[32] = 0;
            ++*&v264[24];
            LOBYTE(v255[0]) = 1;
            *(&v255[0] + 1) = v113;
            *&v255[1] = v114;
            *(&v255[1] + 1) = v27;
            memset(v267, 0, 24);
            *(&v255[2] + 1) = v115;
            *&v267[2] = 0;
            DWORD2(v267[1]) = 2;
            LODWORD(v255[2]) = 1;
          }

          else
          {
            *&v264[32] = 0;
            memset(v264, 0, 24);
            *&v264[24] = 1;
            LOBYTE(v255[0]) = 1;
            memset(v267, 0, 24);
            memset(v255 + 8, 0, 24);
            *(&v255[2] + 1) = 0;
            *&v267[2] = 0;
            DWORD2(v267[1]) = 2;
            LODWORD(v255[2]) = 1;
          }

          re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v267);
LABEL_240:
          re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v264);
          v116 = LOBYTE(v255[0]);
          if (v255[0])
          {
            re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v234[8], v255 + 1);
            if (v255[0])
            {
              v117 = re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v255 + 8);
LABEL_247:
              if (!v116)
              {
                goto LABEL_345;
              }

              *&v264[32] = 0;
              memset(v264, 0, 28);
              v121 = a2[39].i64[0];
              if (!v121)
              {
                *&v264[32] = 0;
                memset(v264, 0, 24);
                *&v264[24] = 1;
                LOBYTE(v255[0]) = 1;
                memset(v267, 0, 24);
                memset(v255 + 8, 0, 24);
                *(&v255[2] + 1) = 0;
                *&v267[2] = 0;
                DWORD2(v267[1]) = 2;
                LODWORD(v255[2]) = 1;
LABEL_298:
                re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(v267);
LABEL_299:
                re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(v264);
                v148 = LOBYTE(v255[0]);
                if (v255[0])
                {
                  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v236 + 8, v255 + 1);
                  if (v255[0])
                  {
                    v149 = re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(v255 + 8);
LABEL_306:
                    if (!v148)
                    {
                      goto LABEL_345;
                    }

                    *&v267[2] = 0;
                    memset(v267, 0, 28);
                    v153 = a2[31].i64[1];
                    if (!v153)
                    {
                      *&v267[2] = 0;
                      memset(v267, 0, 24);
                      DWORD2(v267[1]) = 1;
                      v264[0] = 1;
                      memset(v255, 0, 24);
                      memset(&v264[8], 0, 24);
                      *&v265 = 0;
                      *&v255[2] = 0;
                      DWORD2(v255[1]) = 2;
                      *&v264[32] = 1;
                      goto LABEL_333;
                    }

                    v154 = *(v153 + 32);
                    if (a2[3].i64[1] != v154)
                    {
                      v163 = *&v255[1];
                      v164 = *&v255[0];
                      v264[0] = 0;
                      *&v264[8] = 100;
                      *&v264[16] = re::AssetErrorCategory(void)::instance;
                      *(&v265 + 1) = *(&v255[1] + 1);
                      *&v264[32] = *(&v255[0] + 1);
                      re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v267);
                      v166 = 0;
                      v167 = *&v264[32];
                      v168 = *(&v265 + 1);
                      *&v264[24] = 0u;
                      v265 = 0u;
                      *this = 0;
                      *(this + 1) = *&v264[8];
                      *(this + 6) = v163;
                      *(this + 7) = v168;
                      *(this + 4) = v164;
                      *(this + 5) = v167;
                      goto LABEL_336;
                    }

                    v155 = *(v153 + 8);
                    v20 = v155;
                    v156 = v155;
                    re::DynamicArray<re::MeshAssetSmoothDeformerData>::resize(v267, v155);
                    if (!v156)
                    {
LABEL_316:
                      if (!v154)
                      {
                        goto LABEL_331;
                      }

                      v160 = 0;
                      v161 = a2[31].i64[1];
                      v27 = *&v267[1];
                      v162 = *&v267[2];
                      do
                      {
                        if (v161)
                        {
                          if (*(v161 + 32) > v160)
                          {
                            v10 = *(*(v161 + 40) + 2 * v160);
                            if (v10 < v20)
                            {
                              if (v27 <= v10)
                              {
                                goto LABEL_390;
                              }

                              *(v162 + 24 * *(*(v161 + 40) + 2 * v160) + 16) = v160;
                            }
                          }
                        }

                        ++v160;
                      }

                      while (v154 != v160);
                      goto LABEL_332;
                    }

                    v11 = 0;
                    v157 = 16;
                    while (1)
                    {
                      v10 = *&v267[1];
                      if (*&v267[1] <= v11)
                      {
                        break;
                      }

                      v158 = *&v267[2];
                      re::OffsetsDeformerModelUtil::envelopeBufferNameForOffsetsDataIndex(v255, &a2[9], v11);
                      v159 = re::StringID::operator=((v158 + v157 - 16), v255);
                      if (v255[0])
                      {
                        if (v255[0])
                        {
                        }
                      }

                      *(v158 + v157) = -1;
                      ++v11;
                      v157 += 24;
                      if (v20 == v11)
                      {
                        goto LABEL_316;
                      }
                    }

LABEL_374:
                    v251 = 0;
                    v256 = 0u;
                    memset(v255, 0, sizeof(v255));
                    v196 = MEMORY[0x1E69E9C10];
                    v197 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v262 = 136315906;
                    *&v262[4] = "operator[]";
                    *&v262[12] = 1024;
                    if (v197)
                    {
                      v198 = 3;
                    }

                    else
                    {
                      v198 = 2;
                    }

                    *&v262[14] = 789;
                    *&v262[18] = 2048;
                    *&v262[20] = v11;
                    *&v262[28] = 2048;
                    *&v262[30] = v10;
                    _os_log_send_and_compose_impl(v198, &v251, v255, 80, &dword_1E1C61000, v196, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v262, 38, v211, v212);
                    _os_crash_msg();
                    __break(1u);
LABEL_378:
                    *v262 = 0;
                    v256 = 0u;
                    memset(v255, 0, sizeof(v255));
                    v199 = MEMORY[0x1E69E9C10];
                    v200 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v267[0]) = 136315906;
                    *(v267 + 4) = "operator[]";
                    WORD6(v267[0]) = 1024;
                    if (v200)
                    {
                      v201 = 3;
                    }

                    else
                    {
                      v201 = 2;
                    }

                    *(v267 + 14) = 789;
                    WORD1(v267[1]) = 2048;
                    *(&v267[1] + 4) = v27;
                    WORD6(v267[1]) = 2048;
                    *(&v267[1] + 14) = v20;
                    _os_log_send_and_compose_impl(v201, v262, v255, 80, &dword_1E1C61000, v199, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v267, 38, v211, v212);
                    _os_crash_msg();
                    __break(1u);
LABEL_382:
                    *v262 = 0;
                    v256 = 0u;
                    memset(v255, 0, sizeof(v255));
                    v202 = MEMORY[0x1E69E9C10];
                    v203 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v267[0]) = 136315906;
                    *(v267 + 4) = "operator[]";
                    WORD6(v267[0]) = 1024;
                    if (v203)
                    {
                      v204 = 3;
                    }

                    else
                    {
                      v204 = 2;
                    }

                    *(v267 + 14) = 789;
                    WORD1(v267[1]) = 2048;
                    *(&v267[1] + 4) = v10;
                    WORD6(v267[1]) = 2048;
                    *(&v267[1] + 14) = v27;
                    _os_log_send_and_compose_impl(v204, v262, v255, 80, &dword_1E1C61000, v202, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v267, 38, v211, v212);
                    _os_crash_msg();
                    __break(1u);
LABEL_386:
                    *v262 = 0;
                    v256 = 0u;
                    memset(v255, 0, sizeof(v255));
                    v205 = MEMORY[0x1E69E9C10];
                    v206 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v267[0]) = 136315906;
                    *(v267 + 4) = "operator[]";
                    WORD6(v267[0]) = 1024;
                    if (v206)
                    {
                      v207 = 3;
                    }

                    else
                    {
                      v207 = 2;
                    }

                    *(v267 + 14) = 789;
                    WORD1(v267[1]) = 2048;
                    *(&v267[1] + 4) = v10;
                    WORD6(v267[1]) = 2048;
                    *(&v267[1] + 14) = v27;
                    _os_log_send_and_compose_impl(v207, v262, v255, 80, &dword_1E1C61000, v205, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v267, 38, v211, v212);
                    _os_crash_msg();
                    __break(1u);
LABEL_390:
                    v251 = 0;
                    v256 = 0u;
                    memset(v255, 0, sizeof(v255));
                    v208 = MEMORY[0x1E69E9C10];
                    v209 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v262 = 136315906;
                    *&v262[4] = "operator[]";
                    *&v262[12] = 1024;
                    if (v209)
                    {
                      v210 = 3;
                    }

                    else
                    {
                      v210 = 2;
                    }

                    *&v262[14] = 789;
                    *&v262[18] = 2048;
                    *&v262[20] = v10;
                    *&v262[28] = 2048;
                    *&v262[30] = v27;
                    _os_log_send_and_compose_impl(v210, &v251, v255, 80, &dword_1E1C61000, v208, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v262, 38, v211, v212);
                    _os_crash_msg();
                    __break(1u);
                  }
                }

                else
                {
                  v150 = *(&v255[1] + 8);
                  memset(&v255[1] + 8, 0, 32);
                  v151 = *(&v255[2] + 1);
                  v152 = *&v255[3];
                  *this = 0;
                  *(this + 1) = *(v255 + 8);
                  *(this + 2) = v150;
                  *(this + 6) = v151;
                  *(this + 7) = v152;
                }

                v149 = *(&v255[1] + 1);
                if (*(&v255[1] + 1) && (v255[2] & 1) != 0)
                {
                  v149 = (*(**(&v255[1] + 1) + 40))();
                }

                goto LABEL_306;
              }

              v11 = *(v121 + 32);
              if (a2[3].i64[1] != v11)
              {
                LOBYTE(v255[0]) = 0;
                *(&v255[0] + 1) = 100;
                *&v255[1] = re::AssetErrorCategory(void)::instance;
                *(&v255[1] + 8) = v267[0];
                *(&v255[2] + 8) = v267[1];
                goto LABEL_299;
              }

              v122 = *(v121 + 8);
              v20 = v122;
              v123 = v122;
              re::DynamicArray<re::MeshAssetWrapDeformerData>::resize(v264, v122);
              if (!v123)
              {
LABEL_269:
                if (v11)
                {
                  v130 = 0;
                  v131 = a2[39].i64[0];
                  v27 = *&v264[16];
                  v132 = *&v264[32];
                  do
                  {
                    if (v131)
                    {
                      if (*(v131 + 32) > v130)
                      {
                        v10 = *(*(v131 + 40) + 2 * v130);
                        if (v10 < v20)
                        {
                          if (v27 <= v10)
                          {
                            goto LABEL_386;
                          }

                          *(v132 + 112 * *(*(v131 + 40) + 2 * v130) + 104) = v130;
                        }
                      }
                    }

                    ++v130;
                  }

                  while (v11 != v130);
                  goto LABEL_297;
                }

LABEL_296:
                v27 = *&v264[16];
LABEL_297:
                v145 = *v264;
                v146 = *&v264[8];
                memset(v264, 0, 24);
                v147 = *&v264[32];
                *&v264[32] = 0;
                ++*&v264[24];
                LOBYTE(v255[0]) = 1;
                *(&v255[0] + 1) = v145;
                *&v255[1] = v146;
                *(&v255[1] + 1) = v27;
                memset(v267, 0, 24);
                *(&v255[2] + 1) = v147;
                *&v267[2] = 0;
                DWORD2(v267[1]) = 2;
                LODWORD(v255[2]) = 1;
                goto LABEL_298;
              }

              v12 = 0;
              v124 = 104;
              while (1)
              {
                v10 = *&v264[16];
                if (*&v264[16] <= v12)
                {
                  break;
                }

                v125 = *&v264[32];
                v126 = *&v264[32] + v124;
                v127 = (*&v264[32] + v124 - 104);
                re::WrapDeformerModelUtil::targetMeshInstanceNameForWrapDataIndex(v255, &a2[9], v12);
                v128 = re::StringID::operator=(v127, v255);
                if (v255[0])
                {
                  if (v255[0])
                  {
                  }
                }

                re::WrapDeformerModelUtil::envelopeBufferNameForWrapDataIndex(v255, &a2[9], v12);
                v129 = re::StringID::operator=((v126 - 88), v255);
                if (v255[0])
                {
                  if (v255[0])
                  {
                  }
                }

                re::WrapDeformerModelUtil::faceIndicesForWrapDataIndex(v255, &a2[9], v12);
                re::FixedArray<float>::operator=((v125 + v124 - 72), v255);
                if (*&v255[0] && *(&v255[0] + 1))
                {
                  (*(**&v255[0] + 40))();
                }

                re::WrapDeformerModelUtil::faceCoordinatesForWrapDataIndex(v255, &a2[9], v12);
                re::FixedArray<float>::operator=((v125 + v124 - 48), v255);
                if (*&v255[0] && *(&v255[0] + 1))
                {
                  (*(**&v255[0] + 40))();
                }

                re::WrapDeformerModelUtil::positionOffsetsForWrapDataIndex(v255, &a2[9], v12);
                re::FixedArray<float>::operator=((v125 + v124 - 24), v255);
                if (*&v255[0] && *(&v255[0] + 1))
                {
                  (*(**&v255[0] + 40))();
                }

                *(v125 + v124) = -1;
                ++v12;
                v124 += 112;
                if (v20 == v12)
                {
                  goto LABEL_269;
                }
              }

LABEL_366:
              *v262 = 0;
              v256 = 0u;
              memset(v255, 0, sizeof(v255));
              v190 = MEMORY[0x1E69E9C10];
              v191 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v267[0]) = 136315906;
              *(v267 + 4) = "operator[]";
              WORD6(v267[0]) = 1024;
              if (v191)
              {
                v192 = 3;
              }

              else
              {
                v192 = 2;
              }

              *(v267 + 14) = 789;
              WORD1(v267[1]) = 2048;
              *(&v267[1] + 4) = v12;
              WORD6(v267[1]) = 2048;
              *(&v267[1] + 14) = v10;
              _os_log_send_and_compose_impl(v192, v262, v255, 80, &dword_1E1C61000, v190, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v267, 38, v211, v212);
              _os_crash_msg();
              __break(1u);
LABEL_370:
              *v262 = 0;
              v256 = 0u;
              memset(v255, 0, sizeof(v255));
              v193 = MEMORY[0x1E69E9C10];
              v194 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v264 = 136315906;
              *&v264[4] = "operator[]";
              *&v264[12] = 1024;
              if (v194)
              {
                v195 = 3;
              }

              else
              {
                v195 = 2;
              }

              *&v264[14] = 789;
              *&v264[18] = 2048;
              *&v264[20] = v10;
              *&v264[28] = 2048;
              *&v264[30] = v27;
              _os_log_send_and_compose_impl(v195, v262, v255, 80, &dword_1E1C61000, v193, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v264, 38, v211, v212);
              _os_crash_msg();
              __break(1u);
              goto LABEL_374;
            }
          }

          else
          {
            v118 = *(&v255[1] + 8);
            memset(&v255[1] + 8, 0, 32);
            v119 = *(&v255[2] + 1);
            v120 = *&v255[3];
            *this = 0;
            *(this + 1) = *(v255 + 8);
            *(this + 2) = v118;
            *(this + 6) = v119;
            *(this + 7) = v120;
          }

          v117 = *(&v255[1] + 1);
          if (*(&v255[1] + 1) && (v255[2] & 1) != 0)
          {
            v117 = (*(**(&v255[1] + 1) + 40))();
          }

          goto LABEL_247;
        }

LABEL_128:
        if (v66)
        {
          v69 = 0;
          v70 = a2[9].i64[0];
          v27 = *&v267[1];
          v71 = *&v267[2];
          do
          {
            if (v70 && *(v70 + 40) > v69)
            {
              v10 = *(*(v70 + 48) + 4 * v69);
              v72 = v10 != -1 && v20 > v10;
              if (v72)
              {
                if (v27 <= v10)
                {
                  goto LABEL_370;
                }

                *(v71 + 56 * v10 + 48) = v69;
              }
            }

            ++v69;
          }

          while (v66 != v69);
        }

        else
        {
          v27 = *&v267[1];
        }

        v73 = v267[0];
        memset(v267, 0, 24);
        v74 = *&v267[2];
        *&v267[2] = 0;
        ++DWORD2(v267[1]);
        LOBYTE(v255[0]) = 1;
        *(v255 + 8) = v73;
        *(&v255[1] + 1) = v27;
        memset(v264, 0, 24);
        *(&v255[2] + 1) = v74;
        *&v264[32] = 0;
        *&v264[24] = 2;
        LODWORD(v255[2]) = 1;
      }

      else
      {
        *&v267[2] = 0;
        memset(v267, 0, 24);
        DWORD2(v267[1]) = 1;
        LOBYTE(v255[0]) = 1;
        memset(v264, 0, 24);
        memset(v255 + 8, 0, 24);
        *(&v255[2] + 1) = 0;
        *&v264[32] = 0;
        *&v264[24] = 2;
        LODWORD(v255[2]) = 1;
      }

      re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(v264);
      goto LABEL_153;
    }

    v12 = *(v28 + 16) + 88 * v27;
    v29 = *v12;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v248, v12 + 48);
    v250 = *(v12 + 80);
    re::ReadOnlyCPUAccessibleBufferSliceContent::make(v264, v248);
    if ((v264[0] & 1) == 0)
    {
      goto LABEL_105;
    }

    v246 = 0uLL;
    v247 = 0;
    if (v29)
    {
      v31 = *&v264[8];
      v32 = *&v264[16];
      v12 = *&v264[16] >> 2;
      if (v32 >= 4)
      {
        v34 = 0;
        v35 = *(&v246 + 1);
        v36 = (v247 + 4);
        while (v35 != v34)
        {
          v37 = *(v31 + 4 * v34);
          *(v36 - 1) = v37 >> 22;
          *v36 = (v37 & 0x3FFFFF) * 0.00000023842;
          v36 += 2;
          if (v12 == ++v34)
          {
            goto LABEL_46;
          }
        }

        *v266 = 0;
        v256 = 0u;
        memset(v255, 0, sizeof(v255));
        v133 = MEMORY[0x1E69E9C10];
        v134 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v267[0]) = 136315906;
        *(v267 + 4) = "operator[]";
        WORD6(v267[0]) = 1024;
        if (v134)
        {
          v135 = 3;
        }

        else
        {
          v135 = 2;
        }

        *(v267 + 14) = 468;
        WORD1(v267[1]) = 2048;
        *(&v267[1] + 4) = v35;
        WORD6(v267[1]) = 2048;
        *(&v267[1] + 14) = v35;
        _os_log_send_and_compose_impl(v135, v266, v255, 80, &dword_1E1C61000, v133, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v267, 38, v211, v212);
        _os_crash_msg();
        __break(1u);
        goto LABEL_284;
      }
    }

    else
    {
      *&v255[0] = *&v264[8];
      *(&v255[0] + 1) = *&v264[16] >> 3;
      v33 = re::FixedArray<re::SkinningInfluence>::operator=(&v246, v255);
    }

LABEL_46:
    v38 = a2[14].i64[0];
    if (v38)
    {
      if (*(v38 + 8) > v27)
      {
        break;
      }
    }

    v244 = 0uLL;
    v245 = 0;
LABEL_55:
    re::SkinningModelUtil::skinnedEndIndicesBuffer(v267, &a2[9], v27);
    re::ReadOnlyCPUAccessibleBufferSliceContent::make(v255, v267);
    v48 = LOBYTE(v255[0]);
    if (v255[0])
    {
      v49 = 0;
      v12 = *&v255[1] >> 2;
      v243[0] = *(&v255[0] + 1);
      v243[1] = (*&v255[1] >> 2);
      memset(v266, 0, 24);
      if (*&v255[1] >= 4uLL)
      {
        re::FixedArray<int>::copy(v266, v243);
        v49 = *v266;
      }

      v50 = v244;
      if (v244 && v244 != v49)
      {
        goto LABEL_365;
      }

      v51 = *(&v244 + 1);
      v52 = v245;
      *&v244 = v49;
      *(&v244 + 1) = *&v266[8];
      *v266 = v50;
      *&v266[8] = v51;
      v245 = *&v266[16];
      *&v266[16] = v52;
      if (v50 && v51)
      {
        (*(*v50 + 40))(v50);
      }
    }

    else
    {
      v262[0] = 0;
      *&v262[8] = 100;
      *&v262[16] = re::AssetErrorCategory(void)::instance;
      *&v262[24] = *v266;
      v263 = *&v266[16];
    }

    if (LOBYTE(v255[0]) == 1)
    {
      re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent((v255 + 8));
    }

    else if (*(&v255[1] + 1) && (v255[2] & 1) != 0)
    {
      (*(**(&v255[1] + 1) + 40))();
    }

    if (DWORD2(v267[1]) != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[DWORD2(v267[1])])(v255, v267);
    }

    if (!v48)
    {
      if (v244 && *(&v244 + 1))
      {
        (*(*v244 + 40))();
      }

      if (v246 && *(&v246 + 1))
      {
        (*(*v246 + 40))();
      }

      goto LABEL_106;
    }

LABEL_72:
    v53 = a2[14].i64[0];
    if (v53 && *(v53 + 8) > v27)
    {
      v54 = *(*(v53 + 16) + 88 * v27 + 4);
    }

    else
    {
      v54 = -1;
    }

    LODWORD(v255[0]) = v54;
    *(v255 + 8) = v246;
    v55 = v247;
    v247 = 0;
    v246 = 0uLL;
    *(&v255[1] + 1) = v55;
    v255[2] = v244;
    v244 = 0uLL;
    v255[3] = v245;
    v245 = 0;
    v256 = 0uLL;
    v12 = a2[3].u64[1];
    if (v12 <= v27)
    {
      v243[0] = 0;
      memset(v267, 0, sizeof(v267));
      v178 = MEMORY[0x1E69E9C10];
      v179 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v266 = 136315906;
      *&v266[4] = "operator[]";
      *&v266[12] = 1024;
      if (v179)
      {
        v180 = 3;
      }

      else
      {
        v180 = 2;
      }

      *&v266[14] = 476;
      *&v266[18] = 2048;
      *&v266[20] = v27;
      *&v266[28] = 2048;
      *&v266[30] = v12;
      _os_log_send_and_compose_impl(v180, v243, v267, 80, &dword_1E1C61000, v178, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v266, 38, v211, v212);
      _os_crash_msg();
      __break(1u);
LABEL_353:
      v251 = 0;
      v256 = 0u;
      memset(v255, 0, sizeof(v255));
      v181 = MEMORY[0x1E69E9C10];
      v182 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v262 = 136315906;
      *&v262[4] = "operator[]";
      *&v262[12] = 1024;
      if (v182)
      {
        v183 = 3;
      }

      else
      {
        v183 = 2;
      }

      *&v262[14] = 789;
      *&v262[18] = 2048;
      *&v262[20] = v27;
      *&v262[28] = 2048;
      *&v262[30] = v14;
      _os_log_send_and_compose_impl(v183, &v251, v255, 80, &dword_1E1C61000, v181, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v262, 38, v211, v212);
      _os_crash_msg();
      __break(1u);
LABEL_357:
      *v262 = 0;
      v256 = 0u;
      memset(v255, 0, sizeof(v255));
      v184 = MEMORY[0x1E69E9C10];
      v185 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v267[0]) = 136315906;
      *(v267 + 4) = "operator[]";
      WORD6(v267[0]) = 1024;
      if (v185)
      {
        v186 = 3;
      }

      else
      {
        v186 = 2;
      }

      *(v267 + 14) = 789;
      WORD1(v267[1]) = 2048;
      *(&v267[1] + 4) = v20;
      WORD6(v267[1]) = 2048;
      *(&v267[1] + 14) = v10;
      _os_log_send_and_compose_impl(v186, v262, v255, 80, &dword_1E1C61000, v184, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v267, 38, v211, v212);
      _os_crash_msg();
      __break(1u);
      goto LABEL_361;
    }

    v56 = (a2[4].i64[0] + 544 * v27);
    v57 = v56[25];
    v59 = v56[22];
    v58 = v56[23];
    v259 = v56[24];
    v260 = v57;
    v257 = v59;
    v258 = v58;
    v60 = re::DynamicArray<re::MeshAssetSkinningData>::add(&v251, v255);
    if (*(&v255[3] + 1))
    {
      if (v256)
      {
        (*(**(&v255[3] + 1) + 40))(v60);
        v256 = 0uLL;
      }

      *(&v255[3] + 1) = 0;
    }

    if (*&v255[2])
    {
      if (*(&v255[2] + 1))
      {
        (*(**&v255[2] + 40))(v60);
        *(&v255[2] + 1) = 0;
        *&v255[3] = 0;
      }

      *&v255[2] = 0;
    }

    if (*(&v255[0] + 1) && *&v255[1])
    {
      (*(**(&v255[0] + 1) + 40))(v60);
    }

    if (v244 && *(&v244 + 1))
    {
      (*(*v244 + 40))(v60);
    }

    if (v246 && *(&v246 + 1))
    {
      (*(*v246 + 40))(v60);
    }

    if (v264[0] == 1)
    {
      re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&v264[8]);
    }

    else if (*&v264[24] && (v264[32] & 1) != 0)
    {
      (*(**&v264[24] + 40))(v60);
    }

    if (v249 != -1)
    {
      (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL6BufferEEEN2re20BufferSliceSourceCPUEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSF_EEEDcOSG_DpOT0____fmatrix[v249])(v255, v248);
    }

    if (++v27 == v20)
    {
      v26 = v251;
      v24 = v252;
      v23 = v254;
      v25 = v253 + 1;
      goto LABEL_103;
    }
  }

  v39 = *(*(v38 + 16) + 88 * v27 + 1);
  v244 = 0uLL;
  v245 = 0;
  if (!v39)
  {
    goto LABEL_55;
  }

  v40 = *(&v246 + 1);
  v41 = *(&v246 + 1) / v39;
  if (v40 < v39)
  {
    goto LABEL_72;
  }

  v42 = 0;
  v43 = *(&v244 + 1);
  v44 = v245;
  v45 = v39;
  while (v43 != v42)
  {
    *(v44 + 4 * v42) = v45;
    v45 += v39;
    if (++v42 >= v41)
    {
      goto LABEL_72;
    }
  }

  *v266 = 0;
  v256 = 0u;
  memset(v255, 0, sizeof(v255));
  v169 = MEMORY[0x1E69E9C10];
  v170 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  LODWORD(v267[0]) = 136315906;
  *(v267 + 4) = "operator[]";
  WORD6(v267[0]) = 1024;
  if (v170)
  {
    v171 = 3;
  }

  else
  {
    v171 = 2;
  }

  *(v267 + 14) = 468;
  WORD1(v267[1]) = 2048;
  *(&v267[1] + 4) = v43;
  WORD6(v267[1]) = 2048;
  *(&v267[1] + 14) = v43;
  _os_log_send_and_compose_impl(v171, v266, v255, 80, &dword_1E1C61000, v169, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v267, 38, v211, v212);
  _os_crash_msg();
  __break(1u);
LABEL_331:
  v27 = *&v267[1];
LABEL_332:
  v172 = v267[0];
  memset(v267, 0, 24);
  v173 = *&v267[2];
  *&v267[2] = 0;
  ++DWORD2(v267[1]);
  v264[0] = 1;
  *&v264[8] = v172;
  *&v264[24] = v27;
  memset(v255, 0, 24);
  *&v265 = v173;
  *&v255[2] = 0;
  DWORD2(v255[1]) = 2;
  *&v264[32] = 1;
LABEL_333:
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v255);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v267);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v238[8], &v264[8]);
  if (v264[0])
  {
    re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v264[8]);
    goto LABEL_342;
  }

  v166 = 1;
LABEL_336:
  if (*&v264[24])
  {
    if (v264[32])
    {
      (*(**&v264[24] + 40))();
    }

    if (v166)
    {
LABEL_342:
      if (v255[0])
      {
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v240 + 8, v255 + 1);
        re::Result<re::DynamicArray<re::MeshAssetJiggleDeformerData>,re::DetailedError>::~Result(v255);
        v218 = v255[0];
        v219 = v255[1];
        v220 = v255[2];
        v221 = v255[3];
        re::MeshAssetModel::MeshAssetModel(v255, v215);
        *this = 1;
        re::MeshAssetModel::MeshAssetModel(this + 16, v255);
        re::types::Ok<re::MeshAssetModel>::~Ok(v255);
      }

      else
      {
        v174 = *(&v255[1] + 8);
        memset(&v255[1] + 8, 0, 32);
        v175 = *(&v255[2] + 1);
        v176 = *&v255[3];
        *this = 0;
        *(this + 1) = *(v255 + 8);
        *(this + 2) = v174;
        *(this + 6) = v175;
        *(this + 7) = v176;
        re::Result<re::DynamicArray<re::MeshAssetJiggleDeformerData>,re::DetailedError>::~Result(v255);
      }
    }
  }

  else if (v166)
  {
    goto LABEL_342;
  }

LABEL_345:
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(v240 + 8);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v238[8]);
  re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(v236 + 8);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v234[8]);
  re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(v232 + 8);
  re::DynamicArray<re::MeshLodLevelInfo>::deinit(&v229 + 8);
  re::DynamicArray<re::MeshAssetSkeleton>::deinit(v227 + 8);
  re::DynamicArray<re::MeshAssetPart>::deinit(&v224 + 8);
  re::DynamicArray<re::MeshAssetSkinningData>::deinit(&v222[2] + 8);
  v177 = re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(v222);
  if (v215[0])
  {
    if (v215[0])
    {
    }
  }
}

void *re::MeshAssetLoader::downgradeMeshAssetFromFall2021@<X0>(void *this@<X0>, _BYTE *a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  if (this)
  {
    v4 = this;
    v5 = this[4];
    if (v5)
    {
      v6 = 0;
      v7 = 232;
      do
      {
        v8 = v4[4];
        if (v8 <= v6)
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
          v18 = v6;
          v19 = 2048;
          v20 = v8;
          _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
          _os_crash_msg();
          __break(1u);
        }

        this = re::DynamicArray<re::MeshAssetSkeleton>::operator=(v4[6] + v7, v4 + 12);
        ++v6;
        v7 += 512;
      }

      while (v5 != v6);
    }
  }

  *a3 = 1;
  return this;
}

uint64_t re::DynamicArray<re::MeshAssetSkeleton>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::MeshAssetSkeleton>::copy(a1, a2);
      }

      else
      {
        v6 = *(a1 + 16);
        *(a1 + 16) = 0;
        if (v6)
        {
          v7 = *(a1 + 32);
          v8 = 112 * v6;
          do
          {
            re::FixedArray<CoreIKTransform>::deinit(v7 + 11);
            re::FixedArray<CoreIKTransform>::deinit(v7 + 8);
            re::FixedArray<CoreIKTransform>::deinit(v7 + 5);
            re::FixedArray<re::StringID>::deinit(v7 + 2);
            re::StringID::destroyString(v7);
            v7 += 14;
            v8 -= 112;
          }

          while (v8);
        }
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::MeshAssetSkeleton>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::MeshAssetSkeleton>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::MeshAssetLoader::assetNonIntrospectionNonSharedDataByteSize(re::MeshAssetLoader *this, void *a2)
{
  v88 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v3 = 4 * a2[29] + 8 * a2[75] + 8 * a2[70] + 1272;
  v4 = a2[79];
  if (v4)
  {
    v71 = a2[76];
    if (v71)
    {
      v5 = 0;
      v69 = a2[79];
      v70 = a2;
      do
      {
        v6 = v2[76];
        if (v6 <= v5)
        {
          goto LABEL_67;
        }

        v7 = re::DataArray<re::MeshModel>::get(v4 + 8, *(v2[78] + 8 * v5));
        v9 = v7;
        v72 = v5;
        if (*v7)
        {
          v10 = strlen(*(v7 + 8)) + 1;
        }

        else
        {
          v10 = 0;
        }

        v73 = v3;
        v11 = v9[7];
        if (v11)
        {
          v12 = 0;
          v13 = v9[8];
          do
          {
            v14 = v13 + 544 * v12;
            v15 = v14;
            do
            {
              v16 = v15[3];
              v15 = *v15;
              if (v15)
              {
                v17 = v16 == 0;
              }

              else
              {
                v17 = 0;
              }
            }

            while (v17);
            v18 = (v13 + 544 * v12);
            do
            {
              v19 = v18;
              v18 = *v18;
            }

            while (v18 && !v19[15]);
            v20 = v19[7] + v16 + (v19[7] >> 4);
            v21 = (v13 + 544 * v12);
            do
            {
              v22 = v21;
              v21 = *v21;
            }

            while (v21 && !v22[15]);
            v23 = 24 * v22[14];
            v24 = (v13 + 544 * v12);
            do
            {
              v25 = v24[15];
              v24 = *v24;
              if (v24)
              {
                v26 = v25 == 0;
              }

              else
              {
                v26 = 0;
              }
            }

            while (v26);
            v27 = (v13 + 544 * v12);
            do
            {
              v28 = v27[15];
              v27 = *v27;
              if (v27)
              {
                v29 = v28 == 0;
              }

              else
              {
                v29 = 0;
              }
            }

            while (v29);
            v30 = (v28 & 7) != 0;
            if (*(v14 + 488))
            {
              v31 = strlen(*(v14 + 496)) + 1;
            }

            else
            {
              v31 = 0;
            }

            v32 = (v25 + 8 * v30) & 0xFFFFFFFFFFFFFFF8;
            v33 = *(v14 + 336);
            v34 = v23 + v32 + v31 + 16 * (v20 + v33) + 544;
            if (v33)
            {
              v35 = (*(v14 + 344) + 8);
              do
              {
                if (*(v35 - 1))
                {
                  v36 = strlen(*v35) + 1;
                }

                else
                {
                  v36 = 0;
                }

                v34 += v36;
                v35 += 2;
                --v33;
              }

              while (v33);
            }

            v10 += v34;
            ++v12;
          }

          while (v12 != v11);
        }

        v38 = re::BlendShapeModelUtil::computeBlendShapeModelSizeExcludingMetalBuffers((v9 + 18), v8);
        v39 = v9[28];
        if (v39)
        {
          v40 = 40 * *(v39 + 32) + 88 * *(v39 + 8) + 48;
        }

        else
        {
          v40 = 0;
        }

        v41 = re::ContactDeformerModelUtil::computeContactModelSizeExcludingMetalBuffers((v9 + 18), v37);
        v43 = re::SmoothDeformerModelUtil::computeSmoothDeformerModelSizeExcludingMetalBuffers((v9 + 18), v42);
        v45 = re::WrapDeformerModelUtil::computeWrapDeformerModelSizeExcludingMetalBuffers((v9 + 18), v44);
        v47 = re::OffsetsDeformerModelUtil::computeOffsetsDeformerModelSizeExcludingMetalBuffers((v9 + 18), v46);
        v3 = v73 + v10 + v38 + v40 + v41 + v43 + v45 + v47 + re::JiggleDeformerModelUtil::computeJiggleDeformerModelSizeExcludingMetalBuffers((v9 + 18), v48) + 8;
        v5 = v72 + 1;
        v4 = v69;
        v2 = v70;
      }

      while (v72 + 1 != v71);
      v4 = v70[79];
    }

    v49 = v2[71];
    if (v49)
    {
      v5 = 0;
      do
      {
        v6 = v2[71];
        if (v6 <= v5)
        {
          goto LABEL_71;
        }

        v50 = re::DataArray<re::MeshInstance>::get(v4 + 72, *(v2[73] + 8 * v5));
        v51 = v50;
        if (*v50)
        {
          v52 = strlen(*(v50 + 8)) + 1;
        }

        else
        {
          v52 = 0;
        }

        v3 += 144 + v52 + 4 * *(v51 + 104) + 8 * *(v51 + 128);
      }

      while (v49 != ++v5);
    }
  }

  v53 = 24 * v2[34];
  v54 = v2[43];
  if (v54)
  {
    v55 = [v54 estimatePayloadContainerOverheadSize];
  }

  else
  {
    v55 = 0;
  }

  v57 = v2[29];
  v58 = v3 + v53 + v55 + 4 * v57 + re::MeshNameMap::estimateFootprint((v2 + 80)) + 96 * v2[137] + 8 * (v2[140] + v2[134]) + 32 * (v2[146] + v2[143]) - 424;
  v59 = v2[156];
  if (v59)
  {
    v60 = 0;
    v6 = 0;
    while (1)
    {
      v5 = v2[156];
      if (v5 <= v6)
      {
        break;
      }

      v58 += re::Skeleton::estimatedFootprint((v2[157] + v60));
      ++v6;
      v60 += 184;
      if (v59 == v6)
      {
        return v58 + 864 * v2[39];
      }
    }

    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v61 = MEMORY[0x1E69E9C10];
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v62 = 3;
    }

    else
    {
      v62 = 2;
    }

    v78 = 476;
    v79 = 2048;
    v80 = v6;
    v81 = 2048;
    v82 = v5;
    _os_log_send_and_compose_impl(v62, &v74, &v83, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v69, v70);
    _os_crash_msg();
    __break(1u);
LABEL_67:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v63 = MEMORY[0x1E69E9C10];
    v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v64)
    {
      v65 = 3;
    }

    else
    {
      v65 = 2;
    }

    v78 = 797;
    v79 = 2048;
    v80 = v5;
    v81 = 2048;
    v82 = v6;
    _os_log_send_and_compose_impl(v65, &v74, &v83, 80, &dword_1E1C61000, v63, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v69, v70);
    _os_crash_msg();
    __break(1u);
LABEL_71:
    v74 = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    v66 = MEMORY[0x1E69E9C10];
    v67 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v75 = 136315906;
    v76 = "operator[]";
    v77 = 1024;
    if (v67)
    {
      v68 = 3;
    }

    else
    {
      v68 = 2;
    }

    v78 = 797;
    v79 = 2048;
    v80 = v5;
    v81 = 2048;
    v82 = v6;
    _os_log_send_and_compose_impl(v68, &v74, &v83, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v75, 38, v69, v70);
    _os_crash_msg();
    __break(1u);
  }

  return v58 + 864 * v2[39];
}

uint64_t *re::MeshAsset::makeMeshAssetDataByCombiningPartsWithSharedMaterial(re::MeshAsset *this)
{
  MEMORY[0x1EEE9AC00](this);
  v5 = v4;
  v523 = *MEMORY[0x1E69E9840];
  memset(v445, 0, sizeof(v445));
  v446 = 0;
  v454 = 0;
  v455 = 0;
  v458 = 0;
  memset(v456, 0, sizeof(v456));
  v457 = 0;
  memset(v447, 0, sizeof(v447));
  v448 = 0;
  memset(v449, 0, sizeof(v449));
  v450 = 0;
  v453 = 0;
  v451 = 0u;
  v452 = 0u;
  if (v3[1264] == 1)
  {
    re::MeshAsset::makeMeshAssetDataFromRegisteredMeshAsset(&v464, v3);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v445, &v464);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v447[8], &v466 + 1);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v449[8], v469);
    re::DynamicArray<re::RigComponentConstraint>::operator=(&v451 + 8, v470);
    v455 = v473;
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v456, v474);
    re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(v474);
    if (v470[0])
    {
      if (v472)
      {
        (*(*v470[0] + 40))();
      }

      v472 = 0;
      memset(v470, 0, sizeof(v470));
      ++v471;
    }

    re::DynamicArray<re::MeshAssetSkeleton>::deinit(v469);
    re::DynamicArray<re::MeshAssetInstance>::deinit(&v466 + 8);
    v3 = re::DynamicArray<re::MeshAssetModel>::deinit(&v464);
    v6 = v445;
  }

  else
  {
    v6 = v3 + 16;
  }

  v7 = *(v6 + 2);
  if (!v7)
  {
    v67 = v464;
    v68 = v465;
    *v5 = 0;
    *(v5 + 8) = 100;
    *(v5 + 16) = re::AssetErrorCategory(void)::instance;
    *(v5 + 24) = v67;
    *(v5 + 40) = v68;
    goto LABEL_455;
  }

  v417 = v5;
  v8 = &v475;
  v475 = 0;
  v476 = 0;
  v477 = 1;
  v478 = 0;
  v479 = 0;
  v9 = re::DynamicOverflowArray<unsigned int,128ul>::setCapacity(&v475, v7);
  v10 = v477;
  v477 += 2;
  v11 = (v10 & 1) == 0;
  v12 = 128;
  if (v11)
  {
    v12 = v478;
  }

  if (v12 < v7)
  {
    v9 = re::DynamicOverflowArray<unsigned int,128ul>::setCapacity(&v475, v7);
  }

  v13 = &v478;
  v14 = v476;
  if (v476 < v7)
  {
    do
    {
      if (v477)
      {
        v15 = &v478;
      }

      else
      {
        v15 = v479;
      }

      *(v15 + v14) = 0;
      v14 = (v14 + 1);
    }

    while (v7 != v14);
  }

  v476 = v7;
  v477 += 2;
  v16 = *(v6 + 2);
  v440 = 0;
  v441 = 0;
  v442 = 1;
  v443 = 0;
  v444 = 0;
  v429 = v6;
  if (v16)
  {
    v9 = re::DynamicOverflowArray<re::DynamicOverflowArray<unsigned long long,64ul>,128ul>::setCapacity(&v440, v16);
    v17 = v442;
    v442 += 2;
    v11 = (v17 & 1) == 0;
    v18 = 128;
    if (v11)
    {
      v18 = v443;
    }

    if (v18 < v16)
    {
      v9 = re::DynamicOverflowArray<re::DynamicOverflowArray<unsigned long long,64ul>,128ul>::setCapacity(&v440, v16);
    }

    v19 = v16 - v441;
    if (v16 > v441)
    {
      v20 = 67 * v441;
      do
      {
        if (v442)
        {
          v21 = &v443;
        }

        else
        {
          v21 = v444;
        }

        v22 = &v21[v20];
        *v22 = 0;
        v22[1] = 0;
        *(v22 + 4) = 1;
        v22[3] = 0;
        v22[4] = 0;
        v20 += 67;
        --v19;
      }

      while (v19);
    }

    v441 = v16;
    v442 += 2;
    v23 = v462;
    v24 = 0;
    if (*(v6 + 2))
    {
      v25 = 0;
      while (1)
      {
        v26 = v441;
        if (v441 <= v25)
        {
          goto LABEL_489;
        }

        v27 = (v429[4] + (v25 << 9));
        v28 = v444;
        if (v442)
        {
          v28 = &v443;
        }

        v29 = &v28[67 * v25];
        v30 = v27[26];
        v31 = *(v29 + 1);
        if (v31 >= v30)
        {
          if (v31 <= v30)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        }

        if (*v29)
        {
          if (*(v29 + 4))
          {
            goto LABEL_41;
          }
        }

        else
        {
          v9 = re::DynamicOverflowArray<unsigned long long,64ul>::setCapacity(v29, v30);
          v23 = v462;
          v33 = *(v29 + 4) + 2;
          *(v29 + 4) = v33;
          if (v33)
          {
LABEL_41:
            v32 = 64;
            goto LABEL_42;
          }
        }

        v32 = *(v29 + 3);
LABEL_42:
        if (v32 < v30)
        {
          v9 = re::DynamicOverflowArray<unsigned long long,64ul>::setCapacity(v29, v30);
          v23 = v462;
        }

        v34 = *(v29 + 1);
        if (v34 < v30)
        {
          do
          {
            v35 = (v29 + 24);
            if ((*(v29 + 16) & 1) == 0)
            {
              v35 = *(v29 + 4);
            }

            v35[v34++] = 0;
          }

          while (v30 != v34);
        }

LABEL_48:
        *(v29 + 1) = v30;
        *(v29 + 4) += 2;
LABEL_49:
        v13 = &v478;
        if (v27[16] || v27[21] || v27[36] || v27[41] || v27[46] || v27[51] || v27[56] || v27[61])
        {
          goto LABEL_57;
        }

        v38 = v27[26];
        if (v38)
        {
          v39 = (v27[28] + 64);
          v40 = v38 << 8;
          while (!*v39)
          {
            v39 += 64;
            v40 -= 256;
            if (!v40)
            {
              goto LABEL_68;
            }
          }

LABEL_57:
          v26 = v476;
          if (v476 <= v25)
          {
            goto LABEL_493;
          }

          v24 = (v24 + 1);
          if (v477)
          {
            v36 = &v478;
          }

          else
          {
            v36 = v479;
          }

          *(v36 + v25) = v24;
          v37 = v429[2];
          goto LABEL_62;
        }

LABEL_68:
        v424 = v24;
        v9 = re::DynamicOverflowArray<unsigned int,128ul>::operator[](&v475, v25);
        *v9 = 0;
        v37 = v429[2];
        if (v37 <= v25)
        {
          goto LABEL_591;
        }

        v41 = v429[4];
        v23 = v462;
        v24 = v24;
        if (*(v41 + (v25 << 9) + 208))
        {
          v42 = 0;
          while (1)
          {
            v43 = *(v41 + (v25 << 9) + 224) + (v42 << 8);
            v44 = *(v43 + 44);
            v9 = re::MeshPartFlags::flattenToRenderFlags((v43 + 192));
            v45 = *(v43 + 232);
            if (v45)
            {
              v46 = 0;
              v47 = *(v43 + 216);
              while (1)
              {
                v48 = *v47;
                v47 += 20;
                if (v48 < 0)
                {
                  break;
                }

                if (v45 == ++v46)
                {
                  LODWORD(v46) = *(v43 + 232);
                  break;
                }
              }
            }

            else
            {
              LODWORD(v46) = 0;
            }

            v49 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v44) ^ ((0xBF58476D1CE4E5B9 * v44) >> 27));
            v50 = 0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30));
            v51 = (((v49 ^ (v49 >> 31)) << 6) - 0x61C8864680B583E9 + ((v49 ^ (v49 >> 31)) >> 2) + ((0x94D049BB133111EBLL * (v50 ^ (v50 >> 27))) ^ ((0x94D049BB133111EBLL * (v50 ^ (v50 >> 27))) >> 31))) ^ v49 ^ (v49 >> 31);
            if (v46 != v45)
            {
              v52 = *(v43 + 216);
              do
              {
                v9 = re::Hash<re::DynamicString>::operator()(&v464, (v52 + 80 * v46 + 8));
                v51 ^= (v51 << 6) - 0x61C8864680B583E9 + (v51 >> 2) + v9;
                if (*(v43 + 232) <= (v46 + 1))
                {
                  v53 = v46 + 1;
                }

                else
                {
                  v53 = *(v43 + 232);
                }

                v52 = *(v43 + 216);
                while (v53 - 1 != v46)
                {
                  LODWORD(v46) = v46 + 1;
                  if ((*(v52 + 80 * v46) & 0x80000000) != 0)
                  {
                    goto LABEL_87;
                  }
                }

                LODWORD(v46) = v53;
LABEL_87:
                ;
              }

              while (v46 != v45);
            }

            v54 = *(v43 + 16);
            if (v54)
            {
              v55 = *(v43 + 32);
              v56 = v55 + 80 * v54;
              v8 = &v475;
              do
              {
                if (*(v55 + 8))
                {
                  v57 = *(v55 + 16);
                }

                else
                {
                  v57 = (v55 + 9);
                }

                v9 = strncmp(v57, "original", 8uLL);
                if (v9)
                {
                  {
                    v58 = *(v55 + 48);
                    if (v58)
                    {
                      v59 = *(v55 + 64);
                      do
                      {
                        v60 = *v59++;
                        v61 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v60) ^ ((0xBF58476D1CE4E5B9 * v60) >> 27));
                        v51 ^= (v51 << 6) - 0x61C8864680B583E9 + (v51 >> 2) + (v61 ^ (v61 >> 31));
                        --v58;
                      }

                      while (v58);
                    }
                  }

                  v9 = re::Hash<re::DynamicString>::operator()(&v464, v55);
                  v62 = ((v51 << 6) - 0x61C8864680B583E9 + (v51 >> 2) + v9) ^ v51;
                  v63 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(v55 + 72)) ^ ((0xBF58476D1CE4E5B9 * *(v55 + 72)) >> 27));
                  v51 = ((v62 << 6) - 0x61C8864680B583E9 + (v62 >> 2) + (v63 ^ (v63 >> 31))) ^ v62;
                }

                v55 += 80;
              }

              while (v55 != v56);
            }

            else
            {
              v8 = &v475;
            }

            v37 = v441;
            if (v441 <= v25)
            {
              goto LABEL_595;
            }

            v64 = v444;
            if (v442)
            {
              v64 = &v443;
            }

            v65 = &v64[67 * v25];
            v37 = v65[1];
            v23 = v462;
            v13 = &v478;
            v24 = v424;
            if (v37 <= v42)
            {
              break;
            }

            if (v65[2])
            {
              v66 = v65 + 3;
            }

            else
            {
              v66 = v65[4];
            }

            v66[v42] = v51;
            v37 = v429[2];
            if (v37 <= v25)
            {
              goto LABEL_591;
            }

            ++v42;
            v41 = v429[4];
            if (v42 >= *(v41 + (v25 << 9) + 208))
            {
              goto LABEL_62;
            }
          }

LABEL_599:
          v227 = v480;
          *&v492[0] = 0;
          v23[9] = 0u;
          v23[10] = 0u;
          v23[7] = 0u;
          v23[8] = 0u;
          v23[6] = 0u;
          v401 = MEMORY[0x1E69E9C10];
          v402 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v480 = 136315906;
          *&v480[4] = "operator[]";
          *&v480[12] = 1024;
          if (v402)
          {
            v403 = 3;
          }

          else
          {
            v403 = 2;
          }

          *&v480[14] = 858;
          *&v480[18] = 2048;
          *&v480[20] = v42;
          *&v480[28] = 2048;
          *&v480[30] = v37;
          _os_log_send_and_compose_impl(v403, v492, &v464, 80, &dword_1E1C61000, v401, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v480, 38, v407, v408);
          _os_crash_msg();
          __break(1u);
LABEL_603:
          v13 = -1;
LABEL_604:
          v461 = 0;
          v521 = 0u;
          v522 = 0u;
          memset(v520, 0, sizeof(v520));
          v404 = MEMORY[0x1E69E9C10];
          v405 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v513 = 136315906;
          *&v513[4] = "operator[]";
          v514 = 1024;
          if (v405)
          {
            v406 = 3;
          }

          else
          {
            v406 = 2;
          }

          v515 = 797;
          v516 = 2048;
          v517 = v13;
          v518 = 2048;
          v519 = v227;
          _os_log_send_and_compose_impl(v406, &v461, v520, 80, &dword_1E1C61000, v404, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v513, 38, v407, v408);
          _os_crash_msg();
          __break(1u);
LABEL_608:
          re::internal::assertLog(4, v130, "assertion failure: '%s' (%s:line %i) ", "combinedPartCount + nonCombinedCount == partTotal", "combineParts", 3671);
          _os_crash("assertion failure: (combinedPartCount + nonCombinedCount == partTotal) ");
          __break(1u);
LABEL_609:
          re::internal::assertLog(4, v232, "assertion failure: '%s' (%s:line %i) Unsupported index type.", "false", "copyAndOffsetTriangleIndices", 3505);
          _os_crash("assertion failure: (false) Unsupported index type.");
          __break(1u);
        }

LABEL_62:
        if (++v25 >= v37)
        {
          goto LABEL_115;
        }
      }
    }

    v37 = 0;
  }

  else
  {
    LODWORD(v24) = 0;
    v37 = 0;
  }

LABEL_115:
  if (v37 != v24)
  {
    v425 = v24;
    v464 = 0uLL;
    LODWORD(v465) = 1;
    v466 = 0uLL;
    v71 = v429;
    v72 = v429[7];
    if (!v72)
    {
      goto LABEL_430;
    }

    v73 = 0;
    v24 = 0;
    v37 = v429[9];
    v74 = v37 + 96 * v72;
    v427 = v74;
    do
    {
      v75 = *(v37 + 80);
      v76 = v476;
      if (v476 <= v75)
      {
        goto LABEL_497;
      }

      v77 = v479;
      if (v477)
      {
        v77 = &v478;
      }

      if (!*(v77 + v75))
      {
        var0 = v71[2];
        if (var0 <= v75)
        {
          goto LABEL_529;
        }

        v8 = (v71[4] + (v75 << 9));
        v79 = v8[26];
        v73 += v79;
        if (v79)
        {
          v430 = *(v37 + 80);
          v419 = v73;
          v80 = 0;
          while (1)
          {
            v25 = *(&v464 + 1);
            v81 = &v8[28][32 * v80];
            v83 = *(v81 + 28);
            v13 = (v81 + 7);
            v82 = v83;
            if (*(&v464 + 1) <= v83)
            {
              v25 = v82 + 1;
              if (v464)
              {
                v84 = v465;
              }

              else
              {
                v71 = v429;
                v84 = v465 + 2;
                LODWORD(v465) = v465 + 2;
              }

              v11 = (v84 & 1) == 0;
              v85 = 64;
              if (v11)
              {
                v85 = v466;
              }

              if (v85 <= v82)
              {
              }

              if (*(&v464 + 1) <= v82)
              {
                v86 = v82 - *(&v464 + 1) + 1;
                v87 = 322 * *(&v464 + 1);
                do
                {
                  if (v465)
                  {
                    v88 = &v466;
                  }

                  else
                  {
                    v88 = *(&v466 + 1);
                  }

                  v89 = &v88[v87];
                  *v89 = 0;
                  *(v89 + 1) = 0;
                  *(v89 + 4) = 1;
                  *(v89 + 4) = 0;
                  *(v89 + 5) = 0;
                  v87 += 322;
                  --v86;
                }

                while (v86);
              }

              *(&v464 + 1) = v82 + 1;
              LODWORD(v465) = v465 + 2;
              v82 = *v13;
            }

            if (v25 <= v82)
            {
              *&v462[0].var0 = 0;
              memset(v480, 0, 80);
              v301 = MEMORY[0x1E69E9C10];
              v302 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v492[0]) = 136315906;
              *(v492 + 4) = "operator[]";
              WORD6(v492[0]) = 1024;
              if (v302)
              {
                v303 = 3;
              }

              else
              {
                v303 = 2;
              }

              *(v492 + 14) = 858;
              WORD1(v492[1]) = 2048;
              *(&v492[1] + 4) = v82;
              WORD6(v492[1]) = 2048;
              *(&v492[1] + 14) = v25;
              _os_log_send_and_compose_impl(v303, v462, v480, 80, &dword_1E1C61000, v301, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v492, 38, v407, v408);
              _os_crash_msg();
              __break(1u);
LABEL_464:
              *&v462[0].var0 = 0;
              memset(v480, 0, 80);
              v304 = MEMORY[0x1E69E9C10];
              v305 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v492[0]) = 136315906;
              *(v492 + 4) = "operator[]";
              WORD6(v492[0]) = 1024;
              if (v305)
              {
                v306 = 3;
              }

              else
              {
                v306 = 2;
              }

              *(v492 + 14) = 858;
              WORD1(v492[1]) = 2048;
              *(&v492[1] + 4) = v25;
              WORD6(v492[1]) = 2048;
              *(&v492[1] + 14) = v82;
              _os_log_send_and_compose_impl(v306, v462, v480, 80, &dword_1E1C61000, v304, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v492, 38, v407, v408);
              _os_crash_msg();
              __break(1u);
LABEL_468:
              v461 = 0;
              v521 = 0u;
              v522 = 0u;
              memset(v520, 0, sizeof(v520));
              v307 = MEMORY[0x1E69E9C10];
              v308 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v513 = 136315906;
              *&v513[4] = "operator[]";
              v514 = 1024;
              if (v308)
              {
                v309 = 3;
              }

              else
              {
                v309 = 2;
              }

              v515 = 797;
              v516 = 2048;
              v517 = v25;
              v518 = 2048;
              v519 = v82;
              _os_log_send_and_compose_impl(v309, &v461, v520, 80, &dword_1E1C61000, v307, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v513, 38, v407, v408);
              _os_crash_msg();
              __break(1u);
LABEL_472:
              var0 = v445;
              v461 = 0;
              v521 = 0u;
              v522 = 0u;
              memset(v520, 0, sizeof(v520));
              v310 = MEMORY[0x1E69E9C10];
              v311 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v513 = 136315906;
              *&v513[4] = "operator[]";
              v514 = 1024;
              if (v311)
              {
                v312 = 3;
              }

              else
              {
                v312 = 2;
              }

              v515 = 797;
              v516 = 2048;
              v517 = v25;
              v518 = 2048;
              v519 = v82;
              _os_log_send_and_compose_impl(v312, &v461, v520, 80, &dword_1E1C61000, v310, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v513, 38, v407, v408);
              _os_crash_msg();
              __break(1u);
              goto LABEL_476;
            }

            if (v465)
            {
              v90 = &v466;
            }

            else
            {
              v90 = *(&v466 + 1);
            }

            v91 = &v90[322 * v82];
            *&v480[8] = *(v37 + 16);
            *&v480[24] = *(v37 + 32);
            *&v480[40] = *(v37 + 48);
            *&v480[56] = *(v37 + 64);
            if (*v91)
            {
              v92 = *(v91 + 1);
              v93 = *(v91 + 4);
              if ((v93 & 1) == 0)
              {
                v94 = *(v91 + 4);
                v96 = v92 >= v94;
                v95 = v92 + 1;
                v96 = !v96 || v94 >= v95;
                if (v96)
                {
                  goto LABEL_159;
                }

                v97 = 2 * v94;
                goto LABEL_155;
              }

              if (v92 - 64 < 0xFFFFFFFFFFFFFFBFLL)
              {
                v95 = v92 + 1;
                v97 = 128;
LABEL_155:
                if (v97 <= v95)
                {
                  v99 = v95;
                }

                else
                {
                  v99 = v97;
                }

                v93 = *(v91 + 4);
              }
            }

            else
            {
              v98 = *(v91 + 1);
              v93 = *(v91 + 4) + 2;
              *(v91 + 4) = v93;
            }

LABEL_159:
            if (v93)
            {
              v100 = v91 + 2;
            }

            else
            {
              v100 = *(v91 + 5);
            }

            v101 = &v100[5 * *(v91 + 1)];
            *v101 = v430;
            *(v101 + 1) = v80;
            v103 = *&v480[32];
            v102 = *&v480[48];
            v104 = *&v480[64];
            *(v101 + 24) = *&v480[16];
            *(v101 + 9) = v104;
            *(v101 + 56) = v102;
            *(v101 + 40) = v103;
            *(v101 + 8) = *v480;
            ++*(v91 + 1);
            *(v91 + 4) += 2;
            if (v24)
            {
              v24 = 1;
            }

            else
            {
              v25 = *v13;
              v82 = *(&v464 + 1);
              if (*(&v464 + 1) <= v25)
              {
                goto LABEL_464;
              }

              v105 = *(&v466 + 1);
              if (v465)
              {
                v105 = &v466;
              }

              v24 = *(&v105[322 * *v13] + 1) > 1uLL;
            }

            if (++v80 >= v8[26])
            {
              v73 = v419;
              v74 = v427;
              v13 = &v478;
              break;
            }
          }
        }
      }

      v37 += 96;
    }

    while (v37 != v74);
    if (v24)
    {
      v420 = v73;
      v439 = 0;
      v437 = 0uLL;
      v436 = 0;
      v438 = 0;
      re::DynamicArray<re::MeshAssetModel>::resize(&v436, (v425 + 1));
      v106 = v71[7];
      v435 = 0;
      v433 = 0uLL;
      v434 = 0;
      re::DynamicArray<re::MeshAssetInstance>::setCapacity(&v432, v106);
      ++v434;
      v108 = v439;
      re::StringID::destroyString(v439);
      *v108 = 0x523B6FD560ALL;
      *(v108 + 1) = "combined";
      v414 = v108;
      *&v462[0].var0 = 0;
      v462[0].var1 = &str_67;
      v462[1] = xmmword_1E3047670;
      v462[2] = xmmword_1E3047680;
      v462[3] = xmmword_1E30476A0;
      v462[4] = xmmword_1E30474D0;
      v463 = 0;
      re::DynamicArray<re::MeshAssetInstance>::add(&v432, v462);
      v24 = v480;
      if (v425)
      {
        v110 = v71[2];
        if (v110)
        {
          var0 = 0;
          v111 = 472;
          do
          {
            v112 = v476;
            if (v476 <= var0)
            {
              goto LABEL_539;
            }

            if (v477)
            {
              v113 = *(&v478 + var0);
              if (v113)
              {
LABEL_180:
                v114 = *(&v437 + 1);
                if (*(&v437 + 1) <= v113)
                {
                  goto LABEL_547;
                }

                v115 = (v71[4] + v111);
                v37 = v439 + 512 * v113;
                re::StringID::operator=(v37, v115 - 59);
                v116 = *(v115 - 55);
                *(v37 + 16) = *(v115 - 57);
                *(v37 + 32) = v116;
                v117 = *(v115 - 53);
                v118 = *(v115 - 51);
                v119 = *(v115 - 47);
                *(v37 + 80) = *(v115 - 49);
                *(v37 + 96) = v119;
                *(v37 + 48) = v117;
                *(v37 + 64) = v118;
                re::DynamicArray<re::MeshAssetBlendShapeData>::operator=(v37 + 112, v115 - 45);
                re::DynamicArray<re::MeshAssetSkinningData>::operator=(v37 + 152, v115 - 40, v120);
                re::DynamicArray<re::MeshAssetPart>::operator=(v37 + 192, v115 - 35);
                re::DynamicArray<re::MeshAssetSkeleton>::operator=(v37 + 232, v115 - 30);
                re::DynamicArray<re::MeshLodLevelInfo>::operator=(v37 + 272, v115 - 25);
                re::DynamicArray<re::MeshAssetContactDeformerData>::operator=(v37 + 312, v115 - 20);
                re::DynamicArray<re::MeshAssetSmoothDeformerData>::operator=(v37 + 352, v115 - 15);
                re::DynamicArray<re::MeshAssetWrapDeformerData>::operator=(v37 + 392, v115 - 10);
                re::DynamicArray<re::MeshAssetSmoothDeformerData>::operator=(v37 + 432, v115 - 5);
                re::DynamicArray<re::MeshAssetJiggleDeformerData>::operator=(v37 + 472, v115);
                v110 = v71[2];
              }
            }

            else
            {
              v113 = *(v479 + var0);
              if (v113)
              {
                goto LABEL_180;
              }
            }

            ++var0;
            v111 += 512;
          }

          while (var0 < v110);
        }

        v121 = v71[7];
        if (v121)
        {
          v114 = v71[9];
          v122 = 96 * v121;
          do
          {
            var0 = v114[5].var0;
            v37 = v476;
            if (v476 <= var0)
            {
              goto LABEL_543;
            }

            v123 = v479;
            if (v477)
            {
              v123 = &v478;
            }

            if (*(v123 + var0))
            {
              re::StringID::StringID(v480, v114);
              v124 = v114[1];
              v125 = v114[2];
              v126 = v114[4];
              *&v480[48] = v114[3];
              *&v480[64] = v126;
              *&v480[16] = v124;
              *&v480[32] = v125;
              v37 = v476;
              if (v476 <= var0)
              {
                goto LABEL_551;
              }

              if (v477)
              {
                v127 = &v478;
              }

              else
              {
                v127 = v479;
              }

              *&v480[80] = *(v127 + var0);
              re::DynamicArray<re::MeshAssetInstance>::add(&v432, v480);
              if (v480[0])
              {
                if (v480[0])
                {
                }
              }
            }

            v114 += 6;
            v122 -= 96;
          }

          while (v122);
        }
      }

      v129 = *(&v464 + 1);
      v130 = *(&v464 + 1) + 4;
      if (v414[12].i64[1] < (*(&v464 + 1) + 4))
      {
        re::DynamicArray<re::MeshAssetPart>::setCapacity(v414[12].i64, v130);
        v129 = *(&v464 + 1);
      }

      v131 = v420;
      if (v129)
      {
        v132 = 0;
        v411 = 0;
        v133 = 0;
        v134 = v465;
        v135.i64[0] = 0x7F0000007FLL;
        v135.i64[1] = 0x7F0000007FLL;
        v409 = vnegq_f32(v135);
        while (1)
        {
          if (v134)
          {
            v136 = &v466;
          }

          else
          {
            v136 = *(&v466 + 1);
          }

          v412 = v133;
          v137 = &v136[322 * v133];
          if (v137[1])
          {
            v138 = (v137 + 2);
          }

          else
          {
            v138 = *(v137 + 5);
          }

          v139 = *(v137 + 1);
          *v480 = &v440;
          v140 = 126 - 2 * __clz(v139);
          if (v139)
          {
            v141 = v140;
          }

          else
          {
            v141 = 0;
          }

          var0 = *(&v464 + 1);
          v142 = v412;
          if (*(&v464 + 1) <= v412)
          {
            goto LABEL_535;
          }

          v25 = 0;
          v143 = &v466 + 322 * v412;
          v130 = 536;
          while (1)
          {
            v134 = v465;
            if (v465)
            {
              v145 = *(v143 + 1);
              v144 = &v466;
            }

            else
            {
              v144 = *(&v466 + 1);
              v145 = *(*(&v466 + 1) + 5152 * v142 + 8);
            }

            if (v25 >= v145)
            {
              break;
            }

            v146 = &v144[322 * v142];
            var0 = *(v146 + 1);
            if (var0 <= v25)
            {
              goto LABEL_558;
            }

            if (v146[1])
            {
              v147 = v146 + 2;
            }

            else
            {
              v147 = *(v146 + 5);
            }

            v148 = &v147[5 * v25];
            v13 = v148->u32[0];
            var0 = v71[2];
            if (var0 <= v13)
            {
LABEL_562:
              v520[0] = 0;
              *(v24 + 48) = 0u;
              *(v24 + 64) = 0u;
              *(v24 + 16) = 0u;
              *(v24 + 32) = 0u;
              *v24 = 0u;
              v374 = MEMORY[0x1E69E9C10];
              v375 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v492[0]) = 136315906;
              *(v492 + 4) = "operator[]";
              WORD6(v492[0]) = 1024;
              if (v375)
              {
                v376 = 3;
              }

              else
              {
                v376 = 2;
              }

              *(v492 + 14) = 797;
              WORD1(v492[1]) = 2048;
              *(&v492[1] + 4) = v13;
              WORD6(v492[1]) = 2048;
              *(&v492[1] + 14) = var0;
              _os_log_send_and_compose_impl(v376, v520, v480, 80, &dword_1E1C61000, v374, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v492, 38, v407, v408);
              _os_crash_msg();
              __break(1u);
LABEL_566:
              v520[0] = 0;
              *(v24 + 48) = 0u;
              *(v24 + 64) = 0u;
              *(v24 + 16) = 0u;
              *(v24 + 32) = 0u;
              *v24 = 0u;
              v377 = MEMORY[0x1E69E9C10];
              v378 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v492[0]) = 136315906;
              *(v492 + 4) = "operator[]";
              WORD6(v492[0]) = 1024;
              if (v378)
              {
                v379 = 3;
              }

              else
              {
                v379 = 2;
              }

              *(v492 + 14) = 797;
              WORD1(v492[1]) = 2048;
              *(&v492[1] + 4) = v37;
              WORD6(v492[1]) = 2048;
              *(&v492[1] + 14) = var0;
              _os_log_send_and_compose_impl(v379, v520, v480, 80, &dword_1E1C61000, v377, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v492, 38, v407, v408);
              _os_crash_msg();
              __break(1u);
LABEL_570:
              v25 = v507;
              v520[0] = 0;
              *(v24 + 48) = 0u;
              *(v24 + 64) = 0u;
              *(v24 + 16) = 0u;
              *(v24 + 32) = 0u;
              *v24 = 0u;
              v380 = MEMORY[0x1E69E9C10];
              v381 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v492[0]) = 136315906;
              *(v492 + 4) = "operator[]";
              WORD6(v492[0]) = 1024;
              if (v381)
              {
                v382 = 3;
              }

              else
              {
                v382 = 2;
              }

              *(v492 + 14) = 866;
              WORD1(v492[1]) = 2048;
              *(&v492[1] + 4) = v13;
              WORD6(v492[1]) = 2048;
              *(&v492[1] + 14) = var0;
              _os_log_send_and_compose_impl(v382, v520, v480, 80, &dword_1E1C61000, v380, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v492, 38, v407, v408);
              _os_crash_msg();
              __break(1u);
LABEL_574:
              v181 = v507;
              v520[0] = 0;
              *(v24 + 48) = 0u;
              *(v24 + 64) = 0u;
              *(v24 + 16) = 0u;
              *(v24 + 32) = 0u;
              *v24 = 0u;
              v383 = MEMORY[0x1E69E9C10];
              v384 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v492[0]) = 136315906;
              *(v492 + 4) = "operator[]";
              WORD6(v492[0]) = 1024;
              if (v384)
              {
                v385 = 3;
              }

              else
              {
                v385 = 2;
              }

              *(v492 + 14) = 866;
              WORD1(v492[1]) = 2048;
              *(&v492[1] + 4) = v37;
              WORD6(v492[1]) = 2048;
              *(&v492[1] + 14) = v13;
              _os_log_send_and_compose_impl(v385, v520, v480, 80, &dword_1E1C61000, v383, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v492, 38, v407, v408);
              _os_crash_msg();
              __break(1u);
              goto LABEL_578;
            }

            v149 = v71[4] + (v13 << 9);
            v37 = v148->u32[1];
            var0 = *(v149 + 208);
            if (var0 <= v37)
            {
              goto LABEL_566;
            }

            var0 = v441;
            if (v441 <= v13)
            {
              goto LABEL_570;
            }

            v150 = v444;
            if (v442)
            {
              v150 = &v443;
            }

            v151 = &v150[67 * v13];
            v13 = v151[1];
            if (v13 <= v37)
            {
              goto LABEL_574;
            }

            if (v151[2])
            {
              v152 = v151 + 3;
            }

            else
            {
              v152 = v151[4];
            }

            v413 = v132;
            v153 = *(v149 + 224) + (v37 << 8);
            v154 = v152[v37];
            v155 = v25 + 1;
            v423 = -1;
            v156 = 5 * v25;
            v157 = v25 + 1;
            if ((v465 & 1) == 0)
            {
LABEL_230:
              v158 = *(&v466 + 1);
              if (v157 < *(*(&v466 + 1) + 5152 * v142 + 8))
              {
                goto LABEL_233;
              }

LABEL_245:
              if (-v423 < 2)
              {
                goto LABEL_250;
              }

              if (v465)
              {
                v164 = &v466;
              }

              else
              {
                v164 = *(&v466 + 1);
              }

              goto LABEL_270;
            }

            while (1)
            {
              v158 = &v466;
              if (v157 >= *(v143 + 1))
              {
                break;
              }

LABEL_233:
              v159 = &v158[322 * v142];
              v37 = *(v159 + 1);
              if (v37 <= v157)
              {
                goto LABEL_505;
              }

              if (v159[1])
              {
                v160 = v159 + 2;
              }

              else
              {
                v160 = *(v159 + 5);
              }

              v161 = &v160[v156];
              v37 = LODWORD(v160[v156 + 5]);
              if (v441 <= v37)
              {
                goto LABEL_509;
              }

              v162 = &v150[67 * v37];
              v37 = *(v161 + 21);
              v13 = v162[1];
              if (v13 <= v37)
              {
                goto LABEL_513;
              }

              if (v162[2])
              {
                v163 = v162 + 3;
              }

              else
              {
                v163 = v162[4];
              }

              if (v154 != v163[v37])
              {
                goto LABEL_245;
              }

              ++v157;
              v156 += 5;
              --v423;
              if ((v465 & 1) == 0)
              {
                goto LABEL_230;
              }
            }

            v164 = &v466;
            if (-v423 == 1 || v423 == 0)
            {
LABEL_250:
              v165 = v414;
              v166 = v414[13].u64[0];
              if (v166 >= v414[12].i64[1])
              {
                re::DynamicArray<re::MeshAssetPart>::growCapacity(&v414[12], v166 + 1);
                v166 = v414[13].u64[0];
              }

              v37 = v414[14].i64[0] + (v166 << 8);
              re::DynamicArray<re::MeshAssetBuffer>::DynamicArray(v37, v153);
              v167 = *(v153 + 40);
              *(v37 + 52) = *(v153 + 52);
              *(v37 + 40) = v167;
              re::StringID::StringID((v37 + 72), (v153 + 72));
              v168 = *(v153 + 112);
              *(v37 + 96) = *(v153 + 96);
              *(v37 + 112) = v168;
              v169 = *(v153 + 128);
              v170 = *(v153 + 144);
              v171 = *(v153 + 176);
              *(v37 + 160) = *(v153 + 160);
              *(v37 + 176) = v171;
              *(v37 + 128) = v169;
              *(v37 + 144) = v170;
              v172 = *(v153 + 192);
              *(v37 + 192) = v172;
              if (v172 == 1)
              {
                *(v37 + 193) = *(v153 + 193);
              }

              v173 = *(v153 + 194);
              *(v37 + 194) = v173;
              if (v173 == 1)
              {
                *(v37 + 195) = *(v153 + 195);
              }

              v174 = *(v153 + 196);
              *(v37 + 196) = v174;
              if (v174 == 1)
              {
                *(v37 + 197) = *(v153 + 197);
              }

              v175 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v37 + 200, v153 + 200);
              ++v414[13].i64[0];
              ++v414[13].i32[2];
              v176 = *(v153 + 16);
              if (v176)
              {
                v177 = 0;
                if (v480[8])
                {
                  v37 = *&v480[16];
                }

                else
                {
                  v37 = &v480[9];
                }

                v178 = (*(v153 + 32) + 16);
                v179 = 80 * v176;
                do
                {
                  if (*(v178 - 1))
                  {
                    v180 = *v178;
                  }

                  else
                  {
                    v180 = v178 - 7;
                  }

                  if (!strcmp(v37, v180))
                  {
                    goto LABEL_269;
                  }

                  ++v177;
                  v178 += 10;
                  v179 -= 80;
                }

                while (v179);
                v177 = -1;
LABEL_269:
                v181 = v177;
                v165 = v414;
              }

              else
              {
                v181 = -1;
              }

              v130 = 536;
              v143 = &v466 + 322 * v412;
              if (*v480 && (v480[8] & 1) != 0)
              {
                (*(**v480 + 40))();
                v143 = &v466 + 322 * v412;
                v130 = 536;
              }

              v265 = v165[14].i64[0] + (v165[13].i64[0] << 8);
              v25 = *(v265 - 240);
              if (v25 > v181)
              {
                v266 = *(v265 - 224) + 80 * v181;
                v267 = *(v266 + 48);
                v268 = *(v266 + 64);
                v269 = vaddq_f32(v148[4], vaddq_f32(v148[3], vmlaq_f32(vmulq_f32(v148[1], 0), 0, v148[2])));
                v142 = v412;
                if (v269.f32[2] == 1.0 || fabsf(v269.f32[2] + -1.0) < (((fabsf(v269.f32[2]) + 1.0) + 1.0) * 0.0001))
                {
                  v270 = vmulq_f32(v269, v269);
                  v271 = vaddv_f32(vadd_f32(*v270.i8, *&vextq_s8(v270, v270, 8uLL)));
                  if (v271 == 1.0)
                  {
                    goto LABEL_412;
                  }

                  if (fabsf(v271 + -1.0) < (((fabsf(v271) + 1.0) + 1.0) * 0.0001) || v267 <= 0xB)
                  {
                    goto LABEL_412;
                  }

LABEL_410:
                  v273 = v267 / 0xC;
                  v274 = (v268 + 8);
                  do
                  {
                    v275 = vaddq_f32(v148[4], vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v148[1], *(v274 - 2)), v148[2], *(v274 - 1)), v148[3], *v274));
                    *(v274 - 1) = v275.i64[0];
                    *v274 = v275.f32[2];
                    v274 += 3;
                    --v273;
                  }

                  while (v273);
                }

                else if (v267 >= 0xC)
                {
                  goto LABEL_410;
                }

LABEL_412:
                v276 = *(v153 + 96);
                v277 = v165[1];
                v278 = v165[2];
                v277.i32[3] = 0;
                v276.i32[3] = 0;
                v165[1] = vminnmq_f32(v277, v276);
                v278.i32[3] = 0;
                v279 = *(v153 + 112);
                v279.i32[3] = 0;
                v165[2] = vmaxnmq_f32(v278, v279);
                ++v411;
                v132 = v413;
                goto LABEL_413;
              }

LABEL_578:
              v520[0] = 0;
              *(v24 + 48) = 0u;
              *(v24 + 64) = 0u;
              *(v24 + 16) = 0u;
              *(v24 + 32) = 0u;
              *v24 = 0u;
              v386 = MEMORY[0x1E69E9C10];
              v387 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v492[0]) = 136315906;
              *(v492 + 4) = "operator[]";
              WORD6(v492[0]) = 1024;
              if (v387)
              {
                v388 = 3;
              }

              else
              {
                v388 = 2;
              }

              *(v492 + 14) = 789;
              WORD1(v492[1]) = 2048;
              *(&v492[1] + 4) = v181;
              WORD6(v492[1]) = 2048;
              *(&v492[1] + 14) = v25;
              _os_log_send_and_compose_impl(v388, v520, v480, 80, &dword_1E1C61000, v386, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v492, 38, v407, v408);
              _os_crash_msg();
              __break(1u);
LABEL_582:
              re::internal::assertLog(4, v193, "assertion failure: '%s' (%s:line %i) Combine vertex count overflow.", "combinedPart.indexType == mtl::IndexType::kUInt32 || combinedPart.vertexCount < 65535", "combineParts", 3660);
              _os_crash("assertion failure: (combinedPart.indexType == mtl::IndexType::kUInt32 || combinedPart.vertexCount < 65535) Combine vertex count overflow.");
              __break(1u);
LABEL_583:
              *v513 = 0;
              v521 = 0u;
              v522 = 0u;
              memset(v520, 0, sizeof(v520));
              v389 = MEMORY[0x1E69E9C10];
              v390 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v507[0]) = 136315906;
              *(v507 + 4) = "operator[]";
              WORD2(v507[1]) = 1024;
              if (v390)
              {
                v391 = 3;
              }

              else
              {
                v391 = 2;
              }

              *(&v507[1] + 6) = 797;
              WORD1(v507[2]) = 2048;
              *(&v507[2] + 4) = v181;
              WORD2(v507[3]) = 2048;
              *(&v507[3] + 6) = v25;
              _os_log_send_and_compose_impl(v391, v513, v520, 80, &dword_1E1C61000, v389, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v507, 38, v407, v408);
              _os_crash_msg();
              __break(1u);
LABEL_587:
              *v513 = 0;
              v521 = 0u;
              v522 = 0u;
              memset(v520, 0, sizeof(v520));
              v392 = MEMORY[0x1E69E9C10];
              v393 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v507[0]) = 136315906;
              *(v507 + 4) = "operator[]";
              WORD2(v507[1]) = 1024;
              if (v393)
              {
                v394 = 3;
              }

              else
              {
                v394 = 2;
              }

              *(&v507[1] + 6) = 797;
              WORD1(v507[2]) = 2048;
              *(&v507[2] + 4) = v181;
              WORD2(v507[3]) = 2048;
              *(&v507[3] + 6) = v25;
              _os_log_send_and_compose_impl(v394, v513, v520, 80, &dword_1E1C61000, v392, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v507, 38, v407, v408);
              _os_crash_msg();
              __break(1u);
LABEL_591:
              *&v492[0] = 0;
              v467 = 0u;
              v468 = 0u;
              v465 = 0u;
              v466 = 0u;
              v464 = 0u;
              v395 = MEMORY[0x1E69E9C10];
              v396 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v480 = 136315906;
              *&v480[4] = "operator[]";
              *&v480[12] = 1024;
              if (v396)
              {
                v397 = 3;
              }

              else
              {
                v397 = 2;
              }

              *&v480[14] = 797;
              *&v480[18] = 2048;
              *&v480[20] = v25;
              *&v480[28] = 2048;
              *&v480[30] = v37;
              _os_log_send_and_compose_impl(v397, v492, &v464, 80, &dword_1E1C61000, v395, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v480, 38, v407, v408);
              _os_crash_msg();
              __break(1u);
LABEL_595:
              v42 = v480;
              *&v492[0] = 0;
              v467 = 0u;
              v468 = 0u;
              v465 = 0u;
              v466 = 0u;
              v464 = 0u;
              v398 = MEMORY[0x1E69E9C10];
              v399 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v480 = 136315906;
              *&v480[4] = "operator[]";
              *&v480[12] = 1024;
              if (v399)
              {
                v400 = 3;
              }

              else
              {
                v400 = 2;
              }

              *&v480[14] = 858;
              *&v480[18] = 2048;
              *&v480[20] = v25;
              *&v480[28] = 2048;
              *&v480[30] = v37;
              _os_log_send_and_compose_impl(v400, v492, &v464, 80, &dword_1E1C61000, v398, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v480, 38, v407, v408);
              _os_crash_msg();
              __break(1u);
              goto LABEL_599;
            }

LABEL_270:
            v182 = &v164[322 * v142];
            if (v182[1])
            {
              v183 = v182 + 2;
            }

            else
            {
              v183 = *(v182 + 5);
            }

            *&v492[2] = 0;
            memset(v492, 0, 28);
            BYTE12(v492[2]) = 1;
            WORD4(v493) = -1;
            *&v494[8] = 0;
            *&v494[16] = &str_67;
            v184.i64[0] = 0x7F0000007FLL;
            v184.i64[1] = 0x7F0000007FLL;
            *&v495[8] = v409;
            v496 = v184;
            BYTE2(v501) = 0;
            v502 = 0;
            memset(v504, 0, sizeof(v504));
            v505 = 0;
            v497 = 0u;
            v498 = 0u;
            v499 = 0u;
            v500 = 0u;
            LOBYTE(v501) = 0;
            v506 = 0x7FFFFFFFLL;
            WORD4(v493) = *(v153 + 56);
            v185 = *(v153 + 52);
            LODWORD(v493) = 0;
            DWORD1(v493) = v185;
            DWORD2(v492[2]) = 0;
            HIDWORD(v493) = 0;
            *v494 = 0;
            BYTE12(v492[2]) = *(v153 + 44);
            if (*(v153 + 192) == 1)
            {
              LOBYTE(v501) = 1;
              BYTE1(v501) = *(v153 + 193);
            }

            if (*(v153 + 194) == 1)
            {
              BYTE2(v501) = 1;
              HIBYTE(v501) = *(v153 + 195);
            }

            v410 = v157;
            if (*(v153 + 196) == 1)
            {
              v502 = 1;
              v503 = *(v153 + 197);
            }

            v186 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(v504, v153 + 200);
            v187 = *(v153 + 160);
            v188 = *(v153 + 176);
            v190 = *(v153 + 128);
            v189 = *(v153 + 144);
            v191 = -v423;
            v499 = v187;
            v500 = v188;
            v497 = v190;
            v498 = v189;
            *&v480[8] = 0;
            *&v480[16] = 1;
            v37 = &v480[24];
            *&v480[24] = 0;
            *&v480[32] = 0;
            v192 = re::DynamicOverflowArray<unsigned long,256ul>::setCapacity(v480, 0x100uLL);
            v194 = v480[16] + 2;
            *&v480[16] += 2;
            if (*&v480[8] >= -v423)
            {
              v13 = v492;
              v196 = v423;
              if (*&v480[8] <= -v423)
              {
                goto LABEL_294;
              }
            }

            else
            {
              v13 = v492;
              if (!*v480)
              {
                re::DynamicOverflowArray<unsigned long,256ul>::setCapacity(v480, v191);
                v194 = v480[16] + 2;
                *&v480[16] += 2;
              }

              v11 = (v194 & 1) == 0;
              v195 = 256;
              if (v11)
              {
                v195 = *&v480[24];
              }

              v196 = v423;
              if (v195 < v191)
              {
                re::DynamicOverflowArray<unsigned long,256ul>::setCapacity(v480, v191);
              }

              v197 = *&v480[8];
              if (*&v480[8] < v191)
              {
                do
                {
                  if (v480[16])
                  {
                    v198 = &v480[24];
                  }

                  else
                  {
                    v198 = *&v480[32];
                  }

                  *&v198[8 * v197++] = 0;
                }

                while (v423 + v197);
              }
            }

            *&v480[8] = -v423;
            *&v480[16] += 2;
LABEL_294:
            v199 = 0;
            v428 = &v183[5 * v25];
            v200 = v493;
            v201 = DWORD2(v492[2]);
            v202 = v71[4];
            v203 = v428 + 1;
            do
            {
              v181 = *(v203 - 1);
              v25 = v71[2];
              if (v25 <= v181)
              {
                goto LABEL_517;
              }

              v204 = v202 + (v181 << 9);
              v181 = *v203;
              v25 = *(v204 + 208);
              if (v25 <= v181)
              {
                goto LABEL_521;
              }

              v25 = *&v480[8];
              if (*&v480[8] <= v199)
              {
                goto LABEL_525;
              }

              v205 = (*(v204 + 224) + (v181 << 8));
              if (v480[16])
              {
                v206 = &v480[24];
              }

              else
              {
                v206 = *&v480[32];
              }

              *&v206[8 * v199] = v200;
              v200 += v205[3].u32[0];
              LODWORD(v493) = v200;
              v201 += v205[2].i32[2];
              DWORD2(v492[2]) = v201;
              v207 = v205[6];
              v208 = *&v495[8];
              v209 = v496;
              v208.i32[3] = 0;
              v207.i32[3] = 0;
              *&v495[8] = vminnmq_f32(v208, v207);
              v210 = v205[7];
              v209.i32[3] = 0;
              v210.i32[3] = 0;
              v496 = vmaxnmq_f32(v209, v210);
              ++v199;
              v203 += 20;
            }

            while (v196 + v199);
            HIDWORD(v493) = v200;
            if (BYTE12(v492[2]) != 1 && v200 > 0xFFFE)
            {
              goto LABEL_582;
            }

            v181 = *v428;
            v25 = v71[2];
            if (v25 <= v181)
            {
              goto LABEL_583;
            }

            v211 = v202 + (v181 << 9);
            v181 = v428[1];
            v25 = *(v211 + 208);
            if (v25 <= v181)
            {
              goto LABEL_587;
            }

            v212 = *(v211 + 224) + (v181 << 8);
            v37 = *(v212 + 16);
            if (*(&v492[0] + 1) < v37)
            {
              re::DynamicArray<re::MeshAssetBuffer>::setCapacity(v492, *(v212 + 16));
              v37 = *(v212 + 16);
            }

            if (!v37)
            {
              goto LABEL_389;
            }

            v25 = 0;
            v213 = 2;
            if (v191 > 2)
            {
              v213 = -v423;
            }

            v426 = v213;
            v422 = *&v480[8];
            v421 = v480[16];
            v418 = *&v480[32];
            v415 = v212;
            do
            {
              v8 = (*(v212 + 32) + 80 * v25);
              if (v8[1])
              {
                v24 = v8[2];
              }

              else
              {
                v24 = v8 + 9;
              }

              v214 = strncmp(v24, "original", 8uLL);
              if (!v214)
              {
                goto LABEL_388;
              }

              v459 = 0;
              v460 = &str_67;
              v431 = re::sizeFromVertexFormat(*(v8 + 72), v215);
              v216 = v8[6] / v431;
              v416 = v25;
              if (v423 != -1)
              {
                v24 = v428;
                if (!isNonCombinableConstantBuffer)
                {
                  var0 = v71[2];
                  v26 = 1;
                  while (1)
                  {
                    v219 = &v428[20 * v26];
                    v25 = *v219;
                    if (var0 <= v25)
                    {
                      break;
                    }

                    v220 = v71[4] + (v25 << 9);
                    v25 = v219[1];
                    v221 = *(v220 + 208);
                    if (v221 <= v25)
                    {
                      goto LABEL_480;
                    }

                    v222 = *(v220 + 224) + (v25 << 8);
                    v25 = *(v222 + 16);
                    if (!v25)
                    {
                      goto LABEL_557;
                    }

                    v221 = 0;
                    v37 = *(v222 + 32);
                    v13 = 80 * v25;
                    while (1)
                    {
                      isNonCombinableConstantBuffer = re::DynamicString::operator==(v8, v37);
                      if (isNonCombinableConstantBuffer)
                      {
                        break;
                      }

                      v37 += 80;
                      v221 = (v221 + 1);
                      v13 -= 80;
                      if (!v13)
                      {
                        goto LABEL_557;
                      }
                    }

                    if (v25 <= v221)
                    {
                      goto LABEL_484;
                    }

                    if (*(v8 + 72) != *(v37 + 72))
                    {
                      goto LABEL_488;
                    }

                    v216 += *(v37 + 48) / v431;
                    if (++v26 == v426)
                    {
                      goto LABEL_329;
                    }
                  }

LABEL_476:
                  v221 = v507;
                  *v513 = 0;
                  v521 = 0u;
                  v522 = 0u;
                  memset(v520, 0, sizeof(v520));
                  v313 = MEMORY[0x1E69E9C10];
                  v314 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  LODWORD(v507[0]) = 136315906;
                  *(v507 + 4) = "operator[]";
                  WORD2(v507[1]) = 1024;
                  if (v314)
                  {
                    v315 = 3;
                  }

                  else
                  {
                    v315 = 2;
                  }

                  *(&v507[1] + 6) = 797;
                  WORD1(v507[2]) = 2048;
                  *(&v507[2] + 4) = v25;
                  WORD2(v507[3]) = 2048;
                  *(&v507[3] + 6) = var0;
                  _os_log_send_and_compose_impl(v315, v513, v520, 80, &dword_1E1C61000, v313, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v507, 38, v407, v408);
                  _os_crash_msg();
                  __break(1u);
LABEL_480:
                  *v513 = 0;
                  v521 = 0u;
                  v522 = 0u;
                  memset(v520, 0, sizeof(v520));
                  v316 = MEMORY[0x1E69E9C10];
                  v317 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  LODWORD(v507[0]) = 136315906;
                  *(v507 + 4) = "operator[]";
                  WORD2(v507[1]) = 1024;
                  if (v317)
                  {
                    v318 = 3;
                  }

                  else
                  {
                    v318 = 2;
                  }

                  *(&v507[1] + 6) = 797;
                  WORD1(v507[2]) = 2048;
                  *(&v507[2] + 4) = v25;
                  WORD2(v507[3]) = 2048;
                  *(&v507[3] + 6) = v221;
                  _os_log_send_and_compose_impl(v318, v513, v520, 80, &dword_1E1C61000, v316, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v507, 38, v407, v408);
                  _os_crash_msg();
                  __break(1u);
LABEL_484:
                  *v513 = 0;
                  v521 = 0u;
                  v522 = 0u;
                  memset(v520, 0, sizeof(v520));
                  v26 = MEMORY[0x1E69E9C10];
                  v319 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  LODWORD(v507[0]) = 136315906;
                  *(v507 + 4) = "operator[]";
                  WORD2(v507[1]) = 1024;
                  if (v319)
                  {
                    v320 = 3;
                  }

                  else
                  {
                    v320 = 2;
                  }

                  *(&v507[1] + 6) = 797;
                  WORD1(v507[2]) = 2048;
                  *(&v507[2] + 4) = v221;
                  WORD2(v507[3]) = 2048;
                  *(&v507[3] + 6) = v25;
                  _os_log_send_and_compose_impl(v320, v513, v520, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v507, 38, v407, v408);
                  _os_crash_msg();
                  __break(1u);
LABEL_488:
                  re::internal::assertLog(4, v218, "assertion failure: '%s' (%s:line %i) ", "srcBuffer.format == buffer.format", "combineAttributeBuffers", 3556);
                  _os_crash("assertion failure: (srcBuffer.format == buffer.format) ");
                  __break(1u);
LABEL_489:
                  *&v492[0] = 0;
                  v23[9] = 0u;
                  v23[10] = 0u;
                  v23[7] = 0u;
                  v23[8] = 0u;
                  v23[6] = 0u;
                  v321 = MEMORY[0x1E69E9C10];
                  v322 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *(v8 + 134) = 136315906;
                  *&v480[4] = "operator[]";
                  *&v480[12] = 1024;
                  if (v322)
                  {
                    v323 = 3;
                  }

                  else
                  {
                    v323 = 2;
                  }

                  *&v480[14] = 858;
                  *&v480[18] = 2048;
                  *&v480[20] = v25;
                  *&v480[28] = 2048;
                  *&v480[30] = v26;
                  _os_log_send_and_compose_impl(v323, v492, &v464, 80, &dword_1E1C61000, v321, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v480, 38, v407, v408);
                  _os_crash_msg();
                  __break(1u);
LABEL_493:
                  *&v492[0] = 0;
                  v23[9] = 0u;
                  v23[10] = 0u;
                  v23[7] = 0u;
                  v23[8] = 0u;
                  v23[6] = 0u;
                  v76 = MEMORY[0x1E69E9C10];
                  v324 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v480 = 136315906;
                  *&v480[4] = "operator[]";
                  *&v480[12] = 1024;
                  if (v324)
                  {
                    v325 = 3;
                  }

                  else
                  {
                    v325 = 2;
                  }

                  *&v480[14] = 858;
                  *&v480[18] = 2048;
                  *&v480[20] = v25;
                  *&v480[28] = 2048;
                  *&v480[30] = v26;
                  _os_log_send_and_compose_impl(v325, v492, &v464, 80, &dword_1E1C61000, v76, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v480, 38, v407, v408);
                  _os_crash_msg();
                  __break(1u);
LABEL_497:
                  v224 = v445;
                  *&v462[0].var0 = 0;
                  memset(v480, 0, 80);
                  v37 = v75;
                  v326 = MEMORY[0x1E69E9C10];
                  v327 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  LODWORD(v492[0]) = 136315906;
                  *(v492 + 4) = "operator[]";
                  WORD6(v492[0]) = 1024;
                  if (v327)
                  {
                    v328 = 3;
                  }

                  else
                  {
                    v328 = 2;
                  }

                  *(v492 + 14) = 858;
                  WORD1(v492[1]) = 2048;
                  *(&v492[1] + 4) = v37;
                  WORD6(v492[1]) = 2048;
                  *(&v492[1] + 14) = v76;
                  _os_log_send_and_compose_impl(v328, v462, v480, 80, &dword_1E1C61000, v326, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v492, 38, v407, v408);
                  _os_crash_msg();
                  __break(1u);
LABEL_501:
                  v461 = 0;
                  v521 = 0u;
                  v522 = 0u;
                  memset(v520, 0, sizeof(v520));
                  v329 = MEMORY[0x1E69E9C10];
                  v330 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v513 = 136315906;
                  *&v513[4] = "operator[]";
                  v514 = 1024;
                  if (v330)
                  {
                    v331 = 3;
                  }

                  else
                  {
                    v331 = 2;
                  }

                  v515 = 866;
                  v516 = 2048;
                  v517 = v224;
                  v518 = 2048;
                  v519 = v422;
                  _os_log_send_and_compose_impl(v331, &v461, v520, 80, &dword_1E1C61000, v329, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v513, 38, v407, v408);
                  _os_crash_msg();
                  __break(1u);
LABEL_505:
                  var0 = v507;
                  v520[0] = 0;
                  *(v24 + 48) = 0u;
                  *(v24 + 64) = 0u;
                  *(v24 + 16) = 0u;
                  *(v24 + 32) = 0u;
                  *v24 = 0u;
                  v332 = MEMORY[0x1E69E9C10];
                  v333 = v157;
                  v334 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  LODWORD(v492[0]) = 136315906;
                  *(v492 + 4) = "operator[]";
                  WORD6(v492[0]) = 1024;
                  if (v334)
                  {
                    v335 = 3;
                  }

                  else
                  {
                    v335 = 2;
                  }

                  *(v492 + 14) = 858;
                  WORD1(v492[1]) = 2048;
                  *(&v492[1] + 4) = v333;
                  WORD6(v492[1]) = 2048;
                  *(&v492[1] + 14) = v37;
                  _os_log_send_and_compose_impl(v335, v520, v480, 80, &dword_1E1C61000, v332, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v492, 38, v407, v408);
                  _os_crash_msg();
                  __break(1u);
LABEL_509:
                  v25 = v507;
                  v520[0] = 0;
                  *(v24 + 48) = 0u;
                  *(v24 + 64) = 0u;
                  *(v24 + 16) = 0u;
                  *(v24 + 32) = 0u;
                  *v24 = 0u;
                  v336 = MEMORY[0x1E69E9C10];
                  v337 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  LODWORD(v492[0]) = 136315906;
                  *(v492 + 4) = "operator[]";
                  WORD6(v492[0]) = 1024;
                  if (v337)
                  {
                    v338 = 3;
                  }

                  else
                  {
                    v338 = 2;
                  }

                  *(v492 + 14) = 866;
                  WORD1(v492[1]) = 2048;
                  *(&v492[1] + 4) = v37;
                  WORD6(v492[1]) = 2048;
                  *(&v492[1] + 14) = var0;
                  _os_log_send_and_compose_impl(v338, v520, v480, 80, &dword_1E1C61000, v336, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v492, 38, v407, v408);
                  _os_crash_msg();
                  __break(1u);
LABEL_513:
                  v181 = v507;
                  v520[0] = 0;
                  *(v24 + 48) = 0u;
                  *(v24 + 64) = 0u;
                  *(v24 + 16) = 0u;
                  *(v24 + 32) = 0u;
                  *v24 = 0u;
                  v339 = MEMORY[0x1E69E9C10];
                  v340 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  LODWORD(v492[0]) = 136315906;
                  *(v492 + 4) = "operator[]";
                  WORD6(v492[0]) = 1024;
                  if (v340)
                  {
                    v341 = 3;
                  }

                  else
                  {
                    v341 = 2;
                  }

                  *(v492 + 14) = 866;
                  WORD1(v492[1]) = 2048;
                  *(&v492[1] + 4) = v37;
                  WORD6(v492[1]) = 2048;
                  *(&v492[1] + 14) = v13;
                  _os_log_send_and_compose_impl(v341, v520, v480, 80, &dword_1E1C61000, v339, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v492, 38, v407, v408);
                  _os_crash_msg();
                  __break(1u);
LABEL_517:
                  *v513 = 0;
                  v521 = 0u;
                  v522 = 0u;
                  memset(v520, 0, sizeof(v520));
                  v342 = MEMORY[0x1E69E9C10];
                  v343 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *(v13 + 256) = 136315906;
                  *(v507 + 4) = "operator[]";
                  WORD2(v507[1]) = 1024;
                  if (v343)
                  {
                    v344 = 3;
                  }

                  else
                  {
                    v344 = 2;
                  }

                  *(&v507[1] + 6) = 797;
                  WORD1(v507[2]) = 2048;
                  *(&v507[2] + 4) = v181;
                  WORD2(v507[3]) = 2048;
                  *(&v507[3] + 6) = v25;
                  _os_log_send_and_compose_impl(v344, v513, v520, 80, &dword_1E1C61000, v342, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v507, 38, v407, v408);
                  _os_crash_msg();
                  __break(1u);
LABEL_521:
                  v199 = v507;
                  *v513 = 0;
                  v521 = 0u;
                  v522 = 0u;
                  memset(v520, 0, sizeof(v520));
                  v345 = MEMORY[0x1E69E9C10];
                  v346 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  LODWORD(v507[0]) = 136315906;
                  *(v507 + 4) = "operator[]";
                  WORD2(v507[1]) = 1024;
                  if (v346)
                  {
                    v347 = 3;
                  }

                  else
                  {
                    v347 = 2;
                  }

                  *(&v507[1] + 6) = 797;
                  WORD1(v507[2]) = 2048;
                  *(&v507[2] + 4) = v181;
                  WORD2(v507[3]) = 2048;
                  *(&v507[3] + 6) = v25;
                  _os_log_send_and_compose_impl(v347, v513, v520, 80, &dword_1E1C61000, v345, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v507, 38, v407, v408);
                  _os_crash_msg();
                  __break(1u);
LABEL_525:
                  var0 = v507;
                  *v513 = 0;
                  v521 = 0u;
                  v522 = 0u;
                  memset(v520, 0, sizeof(v520));
                  v348 = MEMORY[0x1E69E9C10];
                  v349 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  LODWORD(v507[0]) = 136315906;
                  *(v507 + 4) = "operator[]";
                  WORD2(v507[1]) = 1024;
                  if (v349)
                  {
                    v350 = 3;
                  }

                  else
                  {
                    v350 = 2;
                  }

                  *(&v507[1] + 6) = 858;
                  WORD1(v507[2]) = 2048;
                  *(&v507[2] + 4) = v199;
                  WORD2(v507[3]) = 2048;
                  *(&v507[3] + 6) = v25;
                  _os_log_send_and_compose_impl(v350, v513, v520, 80, &dword_1E1C61000, v348, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v507, 38, v407, v408);
                  _os_crash_msg();
                  __break(1u);
LABEL_529:
                  v351 = v75;
                  *&v462[0].var0 = 0;
                  memset(v480, 0, 80);
                  v352 = MEMORY[0x1E69E9C10];
                  v353 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  LODWORD(v492[0]) = 136315906;
                  *(v492 + 4) = "operator[]";
                  WORD6(v492[0]) = 1024;
                  if (v353)
                  {
                    v354 = 3;
                  }

                  else
                  {
                    v354 = 2;
                  }

                  *(v492 + 14) = 797;
                  WORD1(v492[1]) = 2048;
                  *(&v492[1] + 4) = v351;
                  WORD6(v492[1]) = 2048;
                  *(&v492[1] + 14) = var0;
                  _os_log_send_and_compose_impl(v354, v462, v480, 80, &dword_1E1C61000, v352, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v492, 38, v407, v408);
                  _os_crash_msg();
                  __break(1u);
LABEL_533:
                  re::internal::assertLog(4, v232, "assertion failure: '%s' (%s:line %i) ", "bufferOffset + count * sizeof(IndexType) <= destBufferSize", "copyAndOffsetTriangleIndices", 3490);
                  _os_crash("assertion failure: (bufferOffset + count * sizeof(IndexType) <= destBufferSize) ");
                  __break(1u);
LABEL_534:
                  re::internal::assertLog(4, v232, "assertion failure: '%s' (%s:line %i) ", "bufferOffset + count * sizeof(IndexType) <= destBufferSize", "copyAndOffsetTriangleIndices", 3490);
                  _os_crash("assertion failure: (bufferOffset + count * sizeof(IndexType) <= destBufferSize) ");
                  __break(1u);
                  goto LABEL_535;
                }
              }

LABEL_329:
              memset(v507, 0, 32);
              var0 = v507;
              re::DynamicString::setCapacity(v507, 0);
              v511 = 0;
              v508 = 0;
              v509 = 0;
              v507[4] = 0;
              v510 = 0;
              v512 = 256;
              if (*(v8 + 73) == 1 && v216 != v493)
              {
                goto LABEL_555;
              }

              re::DynamicString::operator=(v507, v8);
              v512 = *(v8 + 36);
              re::DynamicArray<BOOL>::resize(&v507[4], (v216 * v431 + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v24 = 0;
              v224 = 0;
              do
              {
                var0 = &v428[20 * v224];
                v25 = *var0;
                v82 = v71[2];
                if (v82 <= v25)
                {
                  goto LABEL_468;
                }

                v225 = v71[4] + (v25 << 9);
                v25 = *(var0 + 4);
                v82 = *(v225 + 208);
                if (v82 <= v25)
                {
                  goto LABEL_472;
                }

                v226 = *(v225 + 224) + (v25 << 8);
                v227 = *(v226 + 16);
                if (!v227)
                {
                  goto LABEL_603;
                }

                v228 = 0;
                v229 = *(v226 + 32);
                v230 = 80 * v227;
                v231 = v229;
                while (!re::DynamicString::operator==(v8, v231))
                {
                  ++v228;
                  v231 += 80;
                  v230 -= 80;
                  if (!v230)
                  {
                    v228 = -1;
                    break;
                  }
                }

                v13 = v228;
                if (v227 <= v228)
                {
                  goto LABEL_604;
                }

                v233 = v229 + 80 * v228;
                v37 = *(v233 + 48);
                v25 = v37 / v431;
                if (v459 >> 1 == 0x2B3FAC222C23CAEDLL)
                {
                  if (v460 != "vertexPosition" && strcmp(v460, "vertexPosition"))
                  {
                    goto LABEL_363;
                  }

                  v235 = *(v233 + 64);
                  v236 = vaddq_f32(*(var0 + 64), vaddq_f32(*(var0 + 48), vmlaq_f32(vmulq_f32(*(var0 + 16), 0), 0, *(var0 + 32))));
                  if ((v236.f32[2] == 1.0 || fabsf(v236.f32[2] + -1.0) < (((fabsf(v236.f32[2]) + 1.0) + 1.0) * 0.0001)) && ((v237 = vmulq_f32(v236, v236), v238 = vaddv_f32(vadd_f32(*v237.i8, *&vextq_s8(v237, v237, 8uLL))), v238 == 1.0) || fabsf(v238 + -1.0) < (((fabsf(v238) + 1.0) + 1.0) * 0.0001)))
                  {
                    memcpy((v511 + v24), v235, 12 * v25);
                  }

                  else if (v37 >= v431)
                  {
                    v247 = (v511 + v24 + 8);
                    v248 = v235 + 2;
                    v249 = v37 / v431;
                    do
                    {
                      v250 = *(v248 - 2);
                      v251 = *(v248 - 1);
                      v252 = *v248;
                      v248 += 3;
                      v253 = vaddq_f32(*(var0 + 64), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(var0 + 16), v250), *(var0 + 32), v251), *(var0 + 48), v252));
                      *(v247 - 1) = v253.i64[0];
                      *v247 = v253.i32[2];
                      v247 += 3;
                      --v249;
                    }

                    while (v249);
                  }
                }

                else
                {
                  if (v459 >> 1 != 0x5353CF4AA93DFAB9 || v460 != "indexTriangles" && strcmp(v460, "indexTriangles"))
                  {
                    goto LABEL_363;
                  }

                  if (v422 <= v224)
                  {
                    goto LABEL_501;
                  }

                  v234 = (v421 & 1) != 0 ? &v480[24] : v418;
                  v239 = *&v234[8 * v224];
                  if (!v239)
                  {
LABEL_363:
                    re::DynamicArray<REFrameAnalysisBottleneck>::copy(&v507[4], v24, *(v229 + 80 * v13 + 64), v37);
                    goto LABEL_364;
                  }

                  v240 = *(v233 + 72);
                  if (v240 == 36)
                  {
                    if ((v37 & 0xFFFFFFFFFFFFFFFCLL) + v24 > v509)
                    {
                      goto LABEL_534;
                    }

                    if (v37 >= 4)
                    {
                      v254 = *(v233 + 64);
                      v255 = v37 >> 2;
                      v256 = (v511 + v24);
                      do
                      {
                        v257 = *v254++;
                        *v256++ = v257 + v239;
                        --v255;
                      }

                      while (v255);
                    }
                  }

                  else
                  {
                    if (v240 != 49)
                    {
                      goto LABEL_609;
                    }

                    if ((v37 & 0xFFFFFFFFFFFFFFFELL) + v24 > v509)
                    {
                      goto LABEL_533;
                    }

                    if (v37 >= 2)
                    {
                      v241 = *(v233 + 64);
                      v242 = v37 >> 1;
                      v243 = (v511 + v24);
                      do
                      {
                        v244 = *v241++;
                        *v243++ = v244 + v239;
                        --v242;
                      }

                      while (v242);
                    }
                  }
                }

LABEL_364:
                v24 += v25 * v431;
                ++v224;
                v71 = v429;
              }

              while (v224 < -v423 && !v245);
              if (v24 / v431 != v216)
              {
                goto LABEL_556;
              }

              v258.n128_f64[0] = re::DynamicArray<re::MeshAssetBuffer>::add(v492, v507);
              v25 = v416;
              if (v507[4])
              {
                if (v511)
                {
                  (*(*v507[4] + 40))(v258.n128_f64[0]);
                }

                v511 = 0;
                v508 = 0;
                v509 = 0;
                v507[4] = 0;
                ++v510;
              }

              v259 = v507[0];
              if (v507[0] && (v507[1] & 1) != 0)
              {
                v259 = (*(*v507[0] + 40))(v258);
              }

              if (v459)
              {
                if (v459)
                {
                }
              }

              v212 = v415;
              v37 = *(v415 + 16);
LABEL_388:
              ++v25;
            }

            while (v25 < v37);
LABEL_389:
            v260 = v414[1];
            v261 = v414[2];
            v260.i32[3] = 0;
            v262 = *&v495[8];
            v262.i32[3] = 0;
            v414[1] = vminnmq_f32(v260, v262);
            v263 = v496;
            v261.i32[3] = 0;
            v263.i32[3] = 0;
            v414[2] = vmaxnmq_f32(v261, v263);
            re::DynamicArray<re::MeshAssetPart>::add(&v414[12], v492);
            v24 = v480;
            if (*v480 && (v480[16] & 1) == 0)
            {
              (*(**v480 + 40))();
            }

            re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v504);
            if (v494[8])
            {
              if (v494[8])
              {
              }
            }

            v132 = v413 - v423;
            *&v494[8] = 0;
            *&v494[16] = &str_67;
            re::DynamicArray<re::MeshAssetBuffer>::deinit(v492);
            v155 = v410;
            v143 = &v466 + 322 * v412;
            v142 = v412;
            v130 = 536;
LABEL_413:
            var0 = *(&v464 + 1);
            v25 = v155;
            if (*(&v464 + 1) <= v142)
            {
LABEL_535:
              v112 = v507;
              v520[0] = 0;
              *(v24 + 48) = 0u;
              *(v24 + 64) = 0u;
              *(v24 + 16) = 0u;
              *(v24 + 32) = 0u;
              *v24 = 0u;
              v355 = MEMORY[0x1E69E9C10];
              v356 = v142;
              v357 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v492[0]) = 136315906;
              *(v492 + 4) = "operator[]";
              WORD6(v492[0]) = 1024;
              if (v357)
              {
                v358 = 3;
              }

              else
              {
                v358 = 2;
              }

              *(v492 + 14) = 858;
              WORD1(v492[1]) = 2048;
              *(&v492[1] + 4) = v356;
              WORD6(v492[1]) = 2048;
              *(&v492[1] + 14) = var0;
              _os_log_send_and_compose_impl(v358, v520, v480, 80, &dword_1E1C61000, v355, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v492, 38, v407, v408);
              _os_crash_msg();
              __break(1u);
LABEL_539:
              v114 = v507;
              v520[0] = 0;
              *(v24 + 48) = 0u;
              *(v24 + 64) = 0u;
              *(v24 + 16) = 0u;
              *(v24 + 32) = 0u;
              *v24 = 0u;
              v359 = MEMORY[0x1E69E9C10];
              v360 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v492[0]) = 136315906;
              *(v492 + 4) = "operator[]";
              WORD6(v492[0]) = 1024;
              if (v360)
              {
                v361 = 3;
              }

              else
              {
                v361 = 2;
              }

              *(v492 + 14) = 858;
              WORD1(v492[1]) = 2048;
              *(&v492[1] + 4) = var0;
              WORD6(v492[1]) = 2048;
              *(&v492[1] + 14) = v112;
              _os_log_send_and_compose_impl(v361, v520, v480, 80, &dword_1E1C61000, v359, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v492, 38, v407, v408);
              _os_crash_msg();
              __break(1u);
LABEL_543:
              v113 = v507;
              v520[0] = 0;
              *(v24 + 48) = 0u;
              *(v24 + 64) = 0u;
              *(v24 + 16) = 0u;
              *(v24 + 32) = 0u;
              *v24 = 0u;
              v362 = MEMORY[0x1E69E9C10];
              v363 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v492[0]) = 136315906;
              *(v492 + 4) = "operator[]";
              WORD6(v492[0]) = 1024;
              if (v363)
              {
                v364 = 3;
              }

              else
              {
                v364 = 2;
              }

              *(v492 + 14) = 858;
              WORD1(v492[1]) = 2048;
              *(&v492[1] + 4) = var0;
              WORD6(v492[1]) = 2048;
              *(&v492[1] + 14) = v37;
              _os_log_send_and_compose_impl(v364, v520, v480, 80, &dword_1E1C61000, v362, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v492, 38, v407, v408);
              _os_crash_msg();
              __break(1u);
LABEL_547:
              var0 = v507;
              v520[0] = 0;
              *(v24 + 48) = 0u;
              *(v24 + 64) = 0u;
              *(v24 + 16) = 0u;
              *(v24 + 32) = 0u;
              *v24 = 0u;
              v365 = MEMORY[0x1E69E9C10];
              v366 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v492[0]) = 136315906;
              *(v492 + 4) = "operator[]";
              WORD6(v492[0]) = 1024;
              if (v366)
              {
                v367 = 3;
              }

              else
              {
                v367 = 2;
              }

              *(v492 + 14) = 789;
              WORD1(v492[1]) = 2048;
              *(&v492[1] + 4) = v113;
              WORD6(v492[1]) = 2048;
              *(&v492[1] + 14) = v114;
              _os_log_send_and_compose_impl(v367, v520, v480, 80, &dword_1E1C61000, v365, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v492, 38, v407, v408);
              _os_crash_msg();
              __break(1u);
LABEL_551:
              v25 = v492;
              v507[0] = 0;
              v493 = 0u;
              *v494 = 0u;
              memset(v492, 0, sizeof(v492));
              v368 = MEMORY[0x1E69E9C10];
              v369 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v520[0]) = 136315906;
              *(v520 + 4) = "operator[]";
              WORD2(v520[1]) = 1024;
              if (v369)
              {
                v370 = 3;
              }

              else
              {
                v370 = 2;
              }

              *(&v520[1] + 6) = 858;
              WORD1(v520[2]) = 2048;
              *(&v520[2] + 4) = var0;
              WORD2(v520[3]) = 2048;
              *(&v520[3] + 6) = v37;
              _os_log_send_and_compose_impl(v370, v507, v492, 80, &dword_1E1C61000, v368, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v520, 38, v407, v408);
              _os_crash_msg();
              __break(1u);
LABEL_555:
              re::internal::assertLog(4, v223, "assertion failure: '%s' (%s:line %i) ", "srcBuffer.stepFunction != mtl::VertexStepFunction::kPerVertex || newElementCount == combinedPart.vertexCount", "combineAttributeBuffers", 3563);
              _os_crash("assertion failure: (srcBuffer.stepFunction != mtl::VertexStepFunction::kPerVertex || newElementCount == combinedPart.vertexCount) ");
              __break(1u);
LABEL_556:
              re::internal::assertLog(4, v246, "assertion failure: '%s' (%s:line %i) ", "bufferOffset / elementSize == newElementCount", "combineAttributeBuffers", 3589);
              _os_crash("assertion failure: (bufferOffset / elementSize == newElementCount) ");
              __break(1u);
LABEL_557:
              re::internal::assertLog(4, v218, "assertion failure: '%s' (%s:line %i) ", "bufferIndex >= 0", "combineAttributeBuffers", 3554);
              _os_crash("assertion failure: (bufferIndex >= 0) ");
              __break(1u);
LABEL_558:
              v520[0] = 0;
              *(v24 + 48) = 0u;
              *(v24 + 64) = 0u;
              *(v24 + 16) = 0u;
              *(v24 + 32) = 0u;
              *v24 = 0u;
              v371 = MEMORY[0x1E69E9C10];
              v372 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v492[0]) = 136315906;
              *(v492 + 4) = "operator[]";
              WORD6(v492[0]) = 1024;
              if (v372)
              {
                v373 = 3;
              }

              else
              {
                v373 = 2;
              }

              *(v492 + 14) = 858;
              WORD1(v492[1]) = 2048;
              *(&v492[1] + 4) = v25;
              WORD6(v492[1]) = 2048;
              *(&v492[1] + 14) = var0;
              _os_log_send_and_compose_impl(v373, v520, v480, 80, &dword_1E1C61000, v371, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v492, 38, v407, v408);
              _os_crash_msg();
              __break(1u);
              goto LABEL_562;
            }
          }

          v133 = v142 + 1;
          v131 = v420;
          if (v133 >= var0)
          {
            LODWORD(v129) = v411 + v132;
            break;
          }
        }
      }

      if (v129 != v131)
      {
        goto LABEL_608;
      }

      v486 = 0;
      v487 = 0;
      v491 = 0;
      v488 = 0;
      v489 = 0u;
      v490 = 0;
      v481 = 0u;
      v482 = 0;
      v483 = 0u;
      v484 = 0u;
      v485 = 0;
      *v480 = v436;
      v436 = 0;
      *&v480[8] = v437;
      v437 = 0u;
      v280 = v439;
      v439 = 0;
      ++v438;
      *&v480[24] = 1;
      *&v480[32] = v280;
      *&v480[40] = v432;
      v432 = 0;
      *&v480[48] = v433;
      v433 = 0u;
      *&v480[72] = v435;
      *&v480[80] = 0;
      v435 = 0;
      ++v434;
      *&v480[64] = 1;
      re::MeshAssetData::generateMetaData(v480);
      *(v417 + 16) = *&v480[8];
      v281 = *&v480[48];
      *(v417 + 40) = *&v480[32];
      *(v417 + 56) = v281;
      v282 = v481;
      *(v417 + 80) = *&v480[72];
      *(v417 + 96) = v282;
      v283 = v484;
      *(v417 + 120) = v483;
      v284 = *v480;
      *v480 = 0;
      ++*&v480[24];
      ++*&v480[64];
      ++v482;
      v285 = v486;
      v486 = 0;
      ++v485;
      LODWORD(v499) = v487;
      v286 = v487;
      v287 = v488;
      v488 = 0;
      v288 = v491;
      v491 = 0;
      ++v490;
      *v417 = 1;
      *(v417 + 8) = v284;
      memset(v492, 0, 24);
      *&v480[8] = 0u;
      DWORD2(v492[1]) = 2;
      *(v417 + 32) = 1;
      memset(&v480[32], 0, 32);
      v492[2] = 0u;
      v493 = 0u;
      *v494 = 2;
      *(v417 + 72) = 1;
      *&v480[72] = 0u;
      *&v494[8] = 0u;
      v481 = 0u;
      *v495 = 0u;
      *&v495[16] = 2;
      *(v417 + 112) = 1;
      v483 = 0u;
      v484 = 0u;
      *(v417 + 136) = v283;
      v496 = 0u;
      v497 = 0u;
      *(v417 + 160) = v285;
      *(&v498 + 1) = 0;
      LODWORD(v498) = 2;
      *(v417 + 152) = 1;
      *(v417 + 168) = v286;
      *(v417 + 176) = v287;
      *(&v499 + 1) = 0;
      v289 = v489;
      v489 = 0u;
      *(v417 + 184) = v289;
      v500 = 0u;
      *(v417 + 208) = v288;
      v504[0] = 0;
      v501 = 2;
      *(v417 + 200) = 1;
      re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(&v499 + 8);
      if (v496.i64[1])
      {
        if (*(&v498 + 1))
        {
          (*(*v496.i64[1] + 40))();
        }

        *(&v498 + 1) = 0;
        v497 = 0uLL;
        v496.i64[1] = 0;
        LODWORD(v498) = v498 + 1;
      }

      re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v494[16]);
      re::DynamicArray<re::MeshAssetInstance>::deinit(&v492[2] + 8);
      re::DynamicArray<re::MeshAssetModel>::deinit(v492);
      re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(&v488);
      if (*(&v483 + 1))
      {
        if (v486)
        {
          (*(**(&v483 + 1) + 40))();
        }

        v486 = 0;
        v484 = 0uLL;
        *(&v483 + 1) = 0;
        ++v485;
      }

      re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v480[80]);
      re::DynamicArray<re::MeshAssetInstance>::deinit(&v480[40]);
      v290 = re::DynamicArray<re::MeshAssetModel>::deinit(v480);
      if (*&v462[0].var0)
      {
        if (*&v462[0].var0)
        {
        }
      }

      re::DynamicArray<re::MeshAssetInstance>::deinit(&v432);
      re::DynamicArray<re::MeshAssetModel>::deinit(&v436);
    }

    else
    {
LABEL_430:
      v291 = *v480;
      v292 = *&v480[16];
      v293 = *&v480[24];
      *v417 = 0;
      *(v417 + 8) = 100;
      *(v417 + 16) = re::AssetErrorCategory(void)::instance;
      *(v417 + 24) = v291;
      *(v417 + 40) = v292;
      *(v417 + 48) = v293;
    }

    if (v464)
    {
      v294 = v465;
      if (*(&v464 + 1))
      {
        if (v465)
        {
          v295 = &v466;
        }

        else
        {
          v295 = *(&v466 + 1);
        }

        v296 = 5152 * *(&v464 + 1);
        do
        {
          v295 += 322;
          v296 -= 5152;
        }

        while (v296);
        v294 = v465;
      }

      if ((v294 & 1) == 0)
      {
        (*(*v464 + 40))(v464, *(&v466 + 1));
      }
    }

    goto LABEL_441;
  }

  v69 = v464;
  v70 = v465;
  *v5 = 0;
  *(v5 + 8) = 100;
  *(v5 + 16) = re::AssetErrorCategory(void)::instance;
  *(v5 + 24) = v69;
  *(v5 + 40) = v70;
LABEL_441:
  if (v440)
  {
    v297 = v442;
    if (v441)
    {
      if (v442)
      {
        v298 = &v443;
      }

      else
      {
        v298 = v444;
      }

      v299 = 536 * v441;
      do
      {
        re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v298);
        v298 += 67;
        v299 -= 536;
      }

      while (v299);
      v297 = v442;
    }

    if ((v297 & 1) == 0)
    {
      (*(*v440 + 40))(v440, v444);
    }

    v440 = 0;
    v441 = 0;
  }

  if (v475 && (v477 & 1) == 0)
  {
    (*(*v475 + 40))();
  }

LABEL_455:
  re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(v456);
  if (*(&v451 + 1))
  {
    if (v454)
    {
      (*(**(&v451 + 1) + 40))();
    }

    v454 = 0;
    v452 = 0uLL;
    *(&v451 + 1) = 0;
    ++v453;
  }

  re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v449[8]);
  re::DynamicArray<re::MeshAssetInstance>::deinit(&v447[8]);
  return re::DynamicArray<re::MeshAssetModel>::deinit(v445);
}