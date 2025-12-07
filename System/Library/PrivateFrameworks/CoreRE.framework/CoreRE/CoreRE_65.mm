BOOL re::AudioAssetLoadStrategy_Base::createRuntimeDataWithRealityFile(re::AudioAssetLoadStrategy_Base *this, re::SeekableInputStream *a2, id **a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = (*(*a2 + 72))(a2);
  if (v5)
  {
    v6 = v5;
    v7 = (*(*this + 72))(this, v5, a3, 1);
    v8 = v7;
    v9 = v7 != 0;
    if (v7)
    {
      re::AudioAssetLoadStrategy_Base::setAudioFileFormat(v7, a3, v7);
      v10 = (*(*v6 + 112))(&v28, v6);
      if (v28)
      {
        v26[0] = v28;
        v27 = v29;
        v11 = (*(*v6 + 64))(v6);
        v12 = re::AudioAssetLoadStrategy_Base::generateURLFromQueryItems(v11, v26, v11);
        v13 = *re::audioLogObjects(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [(re *)v12 path];
          v15 = [(re *)v12 query];
          *buf = 138412546;
          v31 = v14;
          v32 = 2112;
          v33 = v15;
          _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "[CoreRE] [AudioFileAssetLoader/Base] Loading reality file from url: %@ with query: %@", buf, 0x16u);
        }

        objc_storeStrong(a3[1], v8);
        v16 = MEMORY[0x1E695DFF8];
        v17 = [(re *)v12 path];
        v18 = [v16 fileURLWithPath:v17];
        objc_storeStrong(a3[1] + 4, v18);

        v19 = [(re *)v12 query];
        objc_storeStrong(a3[1] + 23, v19);
      }

      else
      {
        v21 = *re::audioLogObjects(v10);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "[CoreRE] [AudioFileAssetLoader/Base] Cannot read reality file as NSURL without file path and offset. Attempting to load asset blob.", buf, 2u);
        }

        if (*(a3 + 108) != 1 || ([(re::AudioAssetLoadStrategy_Base *)v8 processingFormat], v22 = objc_claimAutoreleasedReturnValue(), v24 = re::AudioAssetLoadStrategy_Base::streamSeekableInput(v6, a3, v8, v22, v23), v22, (v24 & 1) == 0))
        {
          (*(*this + 64))(this, v6, a3);
        }
      }
    }
  }

  else
  {
    v20 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v28) = 0;
      _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioAssetLoadStrategy_Base] Could not create a detached seekable stream.", &v28, 2u);
    }

    return 0;
  }

  return v9;
}

void re::AudioAssetLoadStrategy_Base::setAudioFileFormat(re::AudioAssetLoadStrategy_Base *this, re::AudioFileAsset *a2, AVAudioFile *a3)
{
  v12 = a3;
  v4 = [(AVAudioFile *)v12 processingFormat];
  v5 = [(AVAudioFile *)v12 fileFormat];
  [v5 sampleRate];
  v7 = v6;

  if (v7 != 48000.0)
  {
    v8 = [objc_alloc(MEMORY[0x1E69583D0]) initWithLayoutTag:*(a2 + 34)];
    v9 = objc_alloc(MEMORY[0x1E6958418]);
    v10 = [(AVAudioFile *)v12 fileFormat];
    [v10 sampleRate];
    v11 = [v9 initStandardFormatWithSampleRate:v8 channelLayout:?];

    v4 = v11;
  }

  objc_storeStrong((*(a2 + 1) + 8), v4);
}

uint64_t re::AudioAssetLoadStrategy_Base::streamSeekableInput(re::AudioAssetLoadStrategy_Base *this, re::SeekableInputStream *a2, re::AudioFileAsset *a3, _REAudioFile *a4, AVAudioFormat *a5)
{
  v8 = a3;
  v9 = a4;
  objc_storeStrong((*(a2 + 1) + 8), a4);
  *(a2 + 18) = [(re::AudioFileAsset *)v8 getReaderFileLength];
  SharableFileBuffer = re::AudioFileAsset::createSharableFileBuffer(a2, this);

  return SharableFileBuffer;
}

id re::AudioAssetLoadStrategy_Base::generateURLFromQueryItems(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a2 + 8)];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%zu", *(a2 + 16)];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%zu", a3];
  v8 = [MEMORY[0x1E696AF20] componentsWithString:v5];
  v9 = [MEMORY[0x1E696AF60] queryItemWithName:@"start" value:v6];
  v10 = [MEMORY[0x1E696AF60] queryItemWithName:@"length" value:v7];
  v14[0] = v9;
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [v8 setQueryItems:v11];

  v12 = [v8 URL];

  return v12;
}

void sub_1E20A1B08(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

uint64_t re::AudioAssetLoadStrategy_Base::createRuntimeDataWithUSDZ(re::AudioAssetLoadStrategy_Base *this, re::SeekableInputStream *a2, re::AudioFileAsset *a3)
{
  *(*(a3 + 1) + 160) = (*(*(*(a3 + 1) + 48) + 40))();
  v6 = (*(*this + 72))(this, a2, a3, 0);
  v7 = v6;
  if (v6)
  {
    if (*(a3 + 108) == 1 && ([(re::AudioFileAsset *)v6 processingFormat], v8 = objc_claimAutoreleasedReturnValue(), v10 = re::AudioAssetLoadStrategy_Base::streamSeekableInput(a2, a3, v7, v8, v9), v8, (v10 & 1) != 0))
    {
      v11 = 1;
    }

    else
    {
      v11 = (*(*this + 64))(this, a2, a3);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id re::AudioAssetLoadStrategy_Base::createREAudioFile(re::AudioAssetLoadStrategy_Base *this, re::SeekableInputStream *a2, re::AudioFileAsset *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [_REAudioFile audioFileWithStream:a2 ownsStream:?];
  v5 = v4;
  if (!v4)
  {
    v6 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = *(*(a3 + 1) + 24);
      v14 = 134217984;
      v15 = v12;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAssetLoader/Base] Failed to load embedded audio asset(%llu) due to nil audio file", &v14, 0xCu);
    }

    goto LABEL_8;
  }

  v6 = [v4 processingFormat];
  v8 = re::audio::layoutTagFromFormat(v6, v7);
  *(a3 + 34) = v8;
  if (v8 == -65536)
  {
    v9 = *re::audioLogObjects(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(a3 + 1) + 24);
      v14 = 134217984;
      v15 = v13;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAssetLoader/Base] Failed to load embedded audio asset(%llu) due to missing channel layout.", &v14, 0xCu);
    }

LABEL_8:
    v10 = 0;
    goto LABEL_10;
  }

  v10 = v5;
LABEL_10:

  return v10;
}

BOOL re::AudioAssetLoadStrategy_Base::decodeSeekableStreamIntoPCMBuffer(re::AudioAssetLoadStrategy_Base *this, re::SeekableInputStream *a2, re::AudioFileAsset *a3)
{
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v10 = 0;
  v11 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  re::audio::AudioFileAssetReader::init(&v10, a2, 0);
  v5 = re::audio::AudioFileAssetReader::readFromData(&v10);
  v6 = v5;
  if (v5)
  {
    v7 = [v5 format];
    objc_storeStrong((*(a3 + 1) + 8), v7);

    *(a3 + 18) = [v6 frameLength];
    objc_storeStrong((*(a3 + 1) + 16), v6);
    re::audio::pcmBufferSize(v6, v8);
    if (re::internal::enableSignposts(0, 0))
    {
      goto LABEL_7;
    }
  }

  else if (re::internal::enableSignposts(0, 0))
  {
LABEL_7:
    (*(*a2 + 64))(a2);
    kdebug_trace();
  }

  re::audio::AudioFileAssetReader::~AudioFileAssetReader(&v10);
  return v6 != 0;
}

void sub_1E20A2034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  re::audio::AudioFileAssetReader::~AudioFileAssetReader(va);
  _Unwind_Resume(a1);
}

uint64_t *re::SceneAsset::assetType(re::SceneAsset *this)
{
  {
    re::SceneAsset::assetType(void)::type = "Scene";
    qword_1EE1C7538 = 0;
    re::AssetType::generateCompiledExtension(&re::SceneAsset::assetType(void)::type);
  }

  return &re::SceneAsset::assetType(void)::type;
}

void re::ecs2::ComponentHandleAssetData::release(re::DynamicString ***this, re::Allocator *a2)
{
  if (this[1])
  {
    v4 = re::ecs2::ComponentTypeRegistry::instance(this);
    v5 = re::ecs2::ComponentTypeRegistry::componentTypeWithHash(v4, *this);
    if (v5)
    {
      if (*(this + 16) == 1)
      {

        this[1] = 0;
      }

      else
      {
        v6 = (*(*v5 + 48))(v5);
        v7 = this[1];

        re::introspectionReleasePointer(v7, a2, 0, v6);
      }
    }
  }
}

void re::ecs2::EntityAssetData::~EntityAssetData(re::ecs2::EntityAssetData *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = *(this + 8);
    v4 = 24 * v2;
    do
    {
      re::ecs2::ComponentHandleAssetData::release(v3, *(this + 4));
      *v3 = 0;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      v3 += 24;
      v4 -= 24;
    }

    while (v4);
  }

  re::DynamicArray<re::ecs2::EntityAssetData>::deinit(this + 72);
  re::DynamicArray<unsigned long>::deinit(this + 32);
  re::StringID::destroyString((this + 8));
}

re *re::internal::destroyPersistent<re::SceneAsset>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::DynamicArray<re::ecs2::EntityAssetData>::deinit(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::SceneAssetLoader::introspectionType(re::SceneAssetLoader *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::SceneAsset>(BOOL)::info = re::internal::getOrCreateInfo("SceneAsset", re::allocInfo_SceneAsset, re::initInfo_SceneAsset, &re::internal::introspectionInfoStorage<re::SceneAsset>, 0);
      v1 = &unk_1EE187000;
    }
  }

  return v1[244];
}

void *re::SceneAssetLoader::findRegistrationDependencies@<X0>(re::SceneAssetLoader *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  result = re::DynamicArray<re::AssetHandle>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::ecs2::allocInfo_ComponentHandleAssetData(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE198D50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE198D50))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE198E80, "ComponentHandleAssetData");
    __cxa_guard_release(&qword_1EE198D50);
  }

  return &unk_1EE198E80;
}

void re::ecs2::initInfo_ComponentHandleAssetData(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0xE7C2365AE903F5AALL;
  v20[1] = "ComponentHandleAssetData";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE198D58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE198D58))
  {
    v7 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::ecs2::Component *>::get(1, v8, v9, v10, v11, v12);
    v15 = re::introspect_uint64_t(1, v14);
    v16 = (*(*v7 + 32))(v7, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "component";
    *(v16 + 16) = v13;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x800000001;
    *(v16 + 40) = 2;
    *(v16 + 48) = v15;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE198DC8 = v16;
    v17 = re::introspectionAllocator();
    v18 = (*(*v17 + 32))(v17, 8, 4);
    *v18 = 0x100000004;
    qword_1EE198DD0 = v18;
    __cxa_guard_release(&qword_1EE198D58);
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE198DC8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ComponentHandleAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ComponentHandleAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ComponentHandleAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ComponentHandleAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v19 = v21;
}

uint64_t *re::IntrospectionInfo<re::ecs2::Component *>::get(int a1, BOOL a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  {
    re::IntrospectionPointer::IntrospectionPointer(&re::IntrospectionInfo<re::ecs2::Component *>::get(BOOL)::info);
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::ecs2::Component *>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::ecs2::Component *>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v19);
    v7 = re::IntrospectionInfo<re::ecs2::Component *>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v19);
    if (v7)
    {
      return &re::IntrospectionInfo<re::ecs2::Component *>::get(BOOL)::info;
    }

    v9 = re::introspectionSharedMutex(v8);
    std::__shared_mutex_base::lock(v9);
    if (re::IntrospectionInfo<re::ecs2::Component *>::get(BOOL)::isInitialized)
    {
LABEL_22:
      v16 = re::introspectionSharedMutex(v10);
      std::__shared_mutex_base::unlock(v16);
      return &re::IntrospectionInfo<re::ecs2::Component *>::get(BOOL)::info;
    }
  }

  re::IntrospectionInfo<re::ecs2::Component *>::get(BOOL)::isInitialized = 1;
  v11 = re::ecs2::introspect_Component(1, a2, a3, a4, a5, a6);
  ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::ecs2::Component *>::get(BOOL)::info, 0);
  qword_1EE1861D0 = 0x800000001;
  dword_1EE1861D8 = 8;
  word_1EE1861DC = 0;
  *&xmmword_1EE1861E0 = 0;
  *(&xmmword_1EE1861E0 + 1) = 0xFFFFFFFFLL;
  re::IntrospectionInfo<re::ecs2::Component *>::get(BOOL)::info = &unk_1F5CBD2C0;
  qword_1EE1861F0 = v11;
  unk_1EE1861F8 = 0;
  re::IntrospectionRegistry::add(v12, v13);
  re::getPrettyTypeName(&v19, &re::IntrospectionInfo<re::ecs2::Component *>::get(BOOL)::info);
  if (BYTE8(v19))
  {
    v14 = v20;
  }

  else
  {
    v14 = &v19 + 9;
  }

  if (v19 && (BYTE8(v19) & 1) != 0)
  {
    (*(*v19 + 40))();
  }

  if (v21 >> 1 == 94623636 && (__s1 == "char*" || !strcmp(__s1, "char*")))
  {
    v15 = v19;
  }

  else
  {
    v19 = *(v11 + 32);
    v15 = v18;
  }

  xmmword_1EE1861E0 = v15;
  if (v21)
  {
    if (v21)
    {
    }
  }

  if ((a1 & 1) == 0)
  {
    goto LABEL_22;
  }

  return &re::IntrospectionInfo<re::ecs2::Component *>::get(BOOL)::info;
}

void re::internal::defaultConstruct<re::ecs2::ComponentHandleAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
}

uint64_t re::internal::defaultConstructV2<re::ecs2::ComponentHandleAssetData>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void *re::ecs2::allocInfo_EntityAssetData(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE198D68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE198D68))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE198F10, "EntityAssetData");
    __cxa_guard_release(&qword_1EE198D68);
  }

  return &unk_1EE198F10;
}

void re::ecs2::initInfo_EntityAssetData(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v24[0] = 0x1BEB5EC469A7F3EELL;
  v24[1] = "EntityAssetData";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&qword_1EE198D70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE198D70))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_uint64_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "id";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE198DD8 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::StringID>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "name";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x800000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE198DE0 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "isSelfActive";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1800000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE198DE8 = v18;
    v19 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::ecs2::ComponentHandleAssetData>>::get(v19);
    v20 = (*(*v19 + 32))(v19, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "components";
    *(v20 + 16) = &qword_1EE198E00;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0x2000000004;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE198DF0 = v20;
    v21 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::ecs2::EntityAssetData>>::get(v21);
    v22 = (*(*v21 + 32))(v21, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "children";
    *(v22 + 16) = &qword_1EE198E40;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x4800000005;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE198DF8 = v22;
    __cxa_guard_release(&qword_1EE198D70);
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE198DD8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::EntityAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::EntityAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::EntityAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::EntityAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v23 = v25;
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::ComponentHandleAssetData>>::get(re::ecs2 *a1)
{
  if ((atomic_load_explicit(&qword_1EE198DB8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE198DB8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE198E00);
      qword_1EE198E00 = &unk_1F5CC79D8;
      __cxa_guard_release(&qword_1EE198DB8);
    }
  }

  if ((_MergedGlobals_89 & 1) == 0)
  {
    v1 = qword_1EE198D60;
    if (qword_1EE198D60 || (v1 = re::ecs2::allocInfo_ComponentHandleAssetData(a1), qword_1EE198D60 = v1, re::ecs2::initInfo_ComponentHandleAssetData(v1, v2, v3, v4), (_MergedGlobals_89 & 1) == 0))
    {
      _MergedGlobals_89 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE198E00, 0);
      qword_1EE198E10 = 0x2800000003;
      dword_1EE198E18 = v5;
      word_1EE198E1C = 0;
      *&xmmword_1EE198E20 = 0;
      *(&xmmword_1EE198E20 + 1) = 0xFFFFFFFFLL;
      qword_1EE198E30 = v1;
      unk_1EE198E38 = 0;
      qword_1EE198E00 = &unk_1F5CC79D8;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE198E00);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ComponentHandleAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ComponentHandleAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ComponentHandleAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ComponentHandleAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ComponentHandleAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ComponentHandleAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ComponentHandleAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ComponentHandleAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE198E20 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::EntityAssetData>>::get(re::ecs2 *a1)
{
  if ((atomic_load_explicit(&qword_1EE198DC0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE198DC0);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE198E40);
      qword_1EE198E40 = &unk_1F5CC7A70;
      __cxa_guard_release(&qword_1EE198DC0);
    }
  }

  if ((byte_1EE198D49 & 1) == 0)
  {
    v1 = qword_1EE198D78;
    if (qword_1EE198D78 || (v1 = re::ecs2::allocInfo_EntityAssetData(a1), qword_1EE198D78 = v1, re::ecs2::initInfo_EntityAssetData(v1, v2, v3, v4), (byte_1EE198D49 & 1) == 0))
    {
      byte_1EE198D49 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE198E40, 0);
      qword_1EE198E50 = 0x2800000003;
      dword_1EE198E58 = v5;
      word_1EE198E5C = 0;
      *&xmmword_1EE198E60 = 0;
      *(&xmmword_1EE198E60 + 1) = 0xFFFFFFFFLL;
      qword_1EE198E70 = v1;
      unk_1EE198E78 = 0;
      qword_1EE198E40 = &unk_1F5CC7A70;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE198E40);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE198E60 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::ecs2::EntityAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = &str_67;
  *(a3 + 24) = 1;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 32) = 0;
  *(a3 + 56) = 0;
  *(a3 + 104) = 0;
  result = 0.0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::EntityAssetData>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = &str_67;
  *(a1 + 24) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 104) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  return result;
}

void *re::ecs2::allocInfo_SceneAssetData(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE198D80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE198D80))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE198FA0, "SceneAssetData");
    __cxa_guard_release(&qword_1EE198D80);
  }

  return &unk_1EE198FA0;
}

void re::ecs2::initInfo_SceneAssetData(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v10[0] = 0x79292AE943720F5CLL;
  v10[1] = "SceneAssetData";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE198D90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE198D90))
  {
    v7 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::ecs2::EntityAssetData>>::get(v7);
    v8 = (*(*v7 + 32))(v7, 72, 8);
    *v8 = 1;
    *(v8 + 8) = "entities";
    *(v8 + 16) = &qword_1EE198E40;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    qword_1EE198D88 = v8;
    __cxa_guard_release(&qword_1EE198D90);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE198D88;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SceneAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SceneAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SceneAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SceneAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::SceneAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
}

uint64_t re::internal::defaultConstructV2<re::ecs2::SceneAssetData>(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  return result;
}

void *re::allocInfo_SceneAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE198DA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE198DA0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE199030, "SceneAsset");
    __cxa_guard_release(&qword_1EE198DA0);
  }

  return &unk_1EE199030;
}

void re::initInfo_SceneAsset(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v15[0] = 0x103693E25C6BC8;
  v15[1] = "SceneAsset";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE198DB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE198DB0))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE198D98;
    if (!qword_1EE198D98)
    {
      v9 = re::ecs2::allocInfo_SceneAssetData(v7);
      qword_1EE198D98 = v9;
      re::ecs2::initInfo_SceneAssetData(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "sceneAssetData";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 1;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE198DA8 = v13;
    __cxa_guard_release(&qword_1EE198DB0);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE198DA8;
  *(this + 9) = re::internal::defaultConstruct<re::SceneAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SceneAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::SceneAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::SceneAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v14 = v16;
}

void re::internal::defaultConstruct<re::SceneAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
}

uint64_t re::internal::defaultConstructV2<re::SceneAsset>(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::ComponentHandleAssetData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::ComponentHandleAssetData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::ComponentHandleAssetData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::ComponentHandleAssetData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::ComponentHandleAssetData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::ecs2::ComponentHandleAssetData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::ComponentHandleAssetData>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = 0uLL;
  v11 = 0;
  re::DynamicArray<re::BufferView>::add(this, &v10);
  v8 = (*(this + 4) + 24 * *(this + 2) - 24);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<re::ecs2::ComponentHandleAssetData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 24 * a3;
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

  return *(a2 + 32) + 24 * a3;
}

void *re::DynamicArray<re::ecs2::ComponentHandleAssetData>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 24 * v5;
      if (24 * v5 >= 1)
      {
        v7 = v3[4] + 24 * v4;
        v8 = v6 / 0x18 + 1;
        do
        {
          *v7 = 0;
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
          v7 += 24;
          --v8;
        }

        while (v8 > 1);
      }
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ComponentHandleAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ComponentHandleAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::ecs2::ComponentHandleAssetData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 24 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 24;
        v11 -= 24;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ComponentHandleAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 24 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ComponentHandleAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ComponentHandleAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 24 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ComponentHandleAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::EntityAssetData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::EntityAssetData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::EntityAssetData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::EntityAssetData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::EntityAssetData>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::EntityAssetData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::ecs2::EntityAssetData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::EntityAssetData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::ecs2::EntityAssetData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::EntityAssetData>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4)
{
  v17 = 0;
  v18 = 0;
  v15 = 0u;
  v16 = 0u;
  v10 = 0u;
  v12 = 1;
  v11 = &str_67;
  v13 = 0uLL;
  v14 = 0uLL;
  re::DynamicArray<re::ecs2::EntityAssetData>::add(a4, &v10);
  re::ecs2::EntityAssetData::~EntityAssetData(&v10);
  v8 = (*(a4 + 32) + 112 * *(a4 + 16) - 112);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<re::ecs2::EntityAssetData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 112 * a3;
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

  return *(a2 + 32) + 112 * a3;
}

void re::DynamicArray<re::ecs2::EntityAssetData>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 112 * a2;
    v9 = a2;
    do
    {
      re::ecs2::EntityAssetData::~EntityAssetData((*(a1 + 32) + v8));
      ++v9;
      v8 += 112;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::ecs2::EntityAssetData>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 112 * v4;
      do
      {
        v7 = *(a1 + 32) + v6;
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = &str_67;
        *(v7 + 24) = 1;
        *(v7 + 40) = 0;
        *(v7 + 48) = 0;
        *(v7 + 32) = 0;
        *(v7 + 56) = 0;
        *(v7 + 104) = 0;
        *(v7 + 64) = 0uLL;
        *(v7 + 80) = 0uLL;
        v6 += 112;
        *(v7 + 96) = 0;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::EntityAssetData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::ecs2::EntityAssetData>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::ecs2::EntityAssetData>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::ecs2::EntityAssetData>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::ecs2::EntityAssetData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 112 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 112;
        v11 -= 112;
      }

      while (v11);
    }
  }
}

re::ecs2::EntityAssetData *re::DynamicArray<re::ecs2::EntityAssetData>::clear(re::ecs2::EntityAssetData *result)
{
  v1 = result;
  v2 = *(result + 2);
  *(result + 2) = 0;
  if (v2)
  {
    result = *(result + 4);
    v3 = 112 * v2;
    do
    {
      re::ecs2::EntityAssetData::~EntityAssetData(result);
      result = (v4 + 112);
      v3 -= 112;
    }

    while (v3);
  }

  ++*(v1 + 6);
  return result;
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 112 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 112 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::EntityAssetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t *re::RigGraphAsset::assetType(re::RigGraphAsset *this)
{
  {
    re::RigGraphAsset::assetType(void)::type = "RigGraph";
    qword_1EE1C7158 = 0;
    re::AssetType::generateCompiledExtension(&re::RigGraphAsset::assetType(void)::type);
  }

  return &re::RigGraphAsset::assetType(void)::type;
}

uint64_t *re::RigGraphAsset::createAutoRetargetBipedToBipedRigGraphAsset@<X0>(re::RigGraphAsset *this@<X0>, const re::ecs2::Entity *a2@<X1>, unint64_t a3@<X2>, const int *a4@<X4>, uint64_t a5@<X3>, uint64_t a6@<X8>)
{
  v191 = *MEMORY[0x1E69E9840];
  v12 = re::globalAllocators(this);
  v13 = (*(*v12[2] + 32))(v12[2], 160, 8);
  *v13 = 0u;
  v13[1] = 0u;
  v13[2] = 0u;
  v13[3] = 0u;
  v13[4] = 0u;
  v13[5] = 0u;
  v13[6] = 0u;
  v13[7] = 0u;
  v13[8] = 0u;
  v13[9] = 0u;
  *&v176[0] = &unk_1F5CC7C80;
  *(&v176[1] + 1) = v176;
  v162 = v13;
  v164 = v163;
  v163[0] = &unk_1F5CC7C80;
  std::__function::__value_func<void ()(re::RigGraphAsset *)>::~__value_func[abi:nn200100](v176);
  if (!*(this + 31))
  {
    *&v176[0] = 0;
    v79 = "Source entity must have a skeletal pose";
LABEL_126:
    v80 = 39;
LABEL_127:
    re::internal::makeError(v79, v80, v176);
    v88 = *&v176[0];
    *a6 = 0;
    *(a6 + 8) = v88;
    return std::unique_ptr<re::RigGraphAsset,std::function<void ()(re::RigGraphAsset*)>>::~unique_ptr[abi:nn200100](&v162, v81, v82, v83, v84, v85, v86, v87);
  }

  v14 = *(a2 + 24);
  if (!v14 || !*(a2 + 31))
  {
    *&v176[0] = 0;
    v79 = "Target entity must have a skeletal mesh";
    goto LABEL_126;
  }

  v15 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((v14 + 32));
  if (!v15)
  {
    *&v176[0] = 0;
    v79 = "Invalid skeletal mesh";
    v80 = 21;
    goto LABEL_127;
  }

  v114 = v15;
  v16 = v162;
  re::DynamicArray<re::RigGraphDefinition>::setCapacity(v16, 0);
  ++*(v16 + 24);
  v113 = (v16 + 40);
  re::DynamicArray<re::MeshRigGraphIndex>::setCapacity((v16 + 40), 0);
  ++*(v16 + 64);
  re::DynamicArray<re::RigGraphBoundInputParameterData>::setCapacity((v16 + 80), 0);
  ++*(v16 + 104);
  v115 = *(v114 + 312);
  if (v115)
  {
    v110 = this;
    v111 = a2;
    v109 = (v16 + 80);
    v17 = 0;
    v112 = a6;
    do
    {
      v118 = v17;
      v141 = 0xF97D88DA606B5F84;
      v142 = "retargetRigGraph";
      v141 = 0;
      v142 = &str_67;
      if (a3)
      {
        v138[0] = 0;
        v138[1] = &str_67;
        v19 = v138;
        v137[0] = 0;
        v137[1] = &str_67;
        v21 = v137;
        v22 = v138;
        v23 = v137;
      }

      else
      {
        v140[0] = 0;
        v140[1] = &str_67;
        v19 = v140;
        v139[0] = 0;
        v139[1] = &str_67;
        v21 = v139;
        v22 = v140;
        v23 = v139;
      }

      re::internal::RigGraphDefinitionBuilder::addNode(v176, v22, v23);
      re::StringID::destroyString(v21);
      re::StringID::destroyString(v19);
      *&v136.var0 = 0;
      v136.var1 = &str_67;
      *&v156.var0 = 0;
      v156.var1 = &str_67;
      v157 = 0;
      v158 = &str_67;
      v135[0] = 0;
      re::internal::RigGraphDefinitionBuilder::addGraphInput(v176, &v136, &v156, v135);
      if (v157)
      {
        if (v157)
        {
        }
      }

      v158 = &str_67;
      v157 = 0;
      if (*&v156.var0)
      {
        if (*&v156.var0)
        {
        }
      }

      v156.var1 = &str_67;
      *&v156.var0 = 0;
      if (*&v136.var0)
      {
        if (*&v136.var0)
        {
        }
      }

      *&v136.var0 = 0;
      v136.var1 = &str_67;
      *&v134.var0 = 0;
      v134.var1 = &str_67;
      *&v150.var0 = 0;
      v150.var1 = &str_67;
      v151 = 0;
      v152 = &str_67;
      v133[0] = 0;
      re::internal::RigGraphDefinitionBuilder::addGraphInput(v176, &v134, &v150, v133);
      if (v151)
      {
        if (v151)
        {
        }
      }

      v152 = &str_67;
      v151 = 0;
      if (*&v150.var0)
      {
        if (*&v150.var0)
        {
        }
      }

      v150.var1 = &str_67;
      *&v150.var0 = 0;
      if (*&v134.var0)
      {
        if (*&v134.var0)
        {
        }
      }

      *&v134.var0 = 0;
      v134.var1 = &str_67;
      *&v132.var0 = 0;
      v132.var1 = &str_67;
      *&v144.var0 = 0;
      v144.var1 = &str_67;
      v145 = 0;
      v146 = &str_67;
      v131[0] = 0;
      re::internal::RigGraphDefinitionBuilder::addGraphInput(v176, &v132, &v144, v131);
      if (v145)
      {
        if (v145)
        {
        }
      }

      v146 = &str_67;
      v145 = 0;
      if (*&v144.var0)
      {
        if (*&v144.var0)
        {
        }
      }

      v144.var1 = &str_67;
      *&v144.var0 = 0;
      if (*&v132.var0)
      {
        if (*&v132.var0)
        {
        }
      }

      *&v132.var0 = 0;
      v132.var1 = &str_67;
      *&v130.var0 = 0;
      v130.var1 = &str_67;
      *v190 = 0;
      *&v190[8] = &str_67;
      *&v190[16] = 0;
      *&v190[24] = &str_67;
      v129[0] = 0;
      re::internal::RigGraphDefinitionBuilder::addGraphInput(v176, &v130, v190, v129);
      if (v190[16])
      {
        if (v190[16])
        {
        }
      }

      *&v190[16] = 0;
      *&v190[24] = &str_67;
      if (v190[0])
      {
        if (v190[0])
        {
        }
      }

      *v190 = 0;
      *&v190[8] = &str_67;
      if (*&v130.var0)
      {
        if (*&v130.var0)
        {
        }
      }

      *&v130.var0 = 0;
      v130.var1 = &str_67;
      *&v128.var0 = 0;
      v128.var1 = &str_67;
      *&v125.var0 = 0;
      v125.var1 = &str_67;
      v126 = 0;
      v127 = &str_67;
      v124[0] = 0;
      re::internal::RigGraphDefinitionBuilder::addGraphOutput(v176, &v128, &v125, v124);
      if (v126)
      {
        if (v126)
        {
        }
      }

      v126 = 0;
      v127 = &str_67;
      if (*&v125.var0)
      {
        if (*&v125.var0)
        {
        }
      }

      *&v125.var0 = 0;
      v125.var1 = &str_67;
      if (*&v128.var0)
      {
        if (*&v128.var0)
        {
        }
      }

      *&v128.var0 = 0;
      v128.var1 = &str_67;
      if (a3)
      {
        memset(&v165[8], 0, 24);
        re::DynamicString::setCapacity(v165, 100 * a3);
        v41 = 1;
        re::DynamicString::append(v165, "{", 1uLL);
        v42 = 0;
        do
        {
          re::DynamicString::appendf(v165, ".value[%u]={.jointIndex=%d,.rotationOffset=[%f,%f,%f,%f]}", v41 - 1, *(a5 + 4 * v42), COERCE_FLOAT(*&a4[4 * v42]), COERCE_FLOAT(HIDWORD(*&a4[4 * v42])), COERCE_FLOAT(*&a4[4 * v42 + 2]), COERCE_FLOAT(HIDWORD(*&a4[4 * v42])));
          if (a3 - 1 <= v42)
          {
            v43 = 125;
          }

          else
          {
            v43 = 44;
          }

          __src = v43;
          v44 = re::DynamicString::append(v165, &__src, 1uLL);
          v42 = v41++;
        }

        while (v42 < a3);
        *&v121.var0 = 0;
        v121.var1 = &str_67;
        v122 = 0;
        v123 = &str_67;
        if (v165[8])
        {
          v47 = *&v165[16];
        }

        else
        {
          v47 = &v165[9];
        }

        *&v120.var0 = 0;
        v120.var1 = &str_67;
        re::internal::RigGraphDefinitionBuilder::addGraphInputValue(v176, &v121, &v120);
        if (*&v120.var0)
        {
          if (*&v120.var0)
          {
          }
        }

        *&v120.var0 = 0;
        v120.var1 = &str_67;
        if (v122)
        {
          if (v122)
          {
          }
        }

        v122 = 0;
        v123 = &str_67;
        if (*&v121.var0)
        {
          if (*&v121.var0)
          {
          }
        }

        *&v121.var0 = 0;
        v121.var1 = &str_67;
        if (*v165 && (v165[8] & 1) != 0)
        {
          (*(**v165 + 40))();
        }
      }

      *v165 = *&v176[0];
      v49 = *(v176 + 8);
      *&v176[0] = 0;
      *(&v176[0] + 1) = &str_67;
      *&v165[8] = v49;
      memset(&v176[1], 0, 24);
      *&v165[24] = *(&v176[1] + 8);
      ++DWORD2(v176[2]);
      LODWORD(v166) = 1;
      v167[0] = v177;
      v167[1] = v178;
      v177 = 0u;
      v178 = 0u;
      v169[0] = v180;
      v180 = 0u;
      v169[1] = v181;
      v181 = 0u;
      ++v179;
      ++v182;
      v168 = 1;
      v170 = 1;
      v171[0] = v183;
      v171[1] = v184;
      v183 = 0u;
      v184 = 0u;
      v175 = v189;
      v173[0] = v186;
      v186 = 0u;
      v173[1] = v187;
      v187 = 0u;
      v189 = 0;
      ++v185;
      ++v188;
      v172 = 1;
      v174 = 1;
      re::DynamicArray<re::RigGraphDefinition>::add(v16, v165);
      re::DynamicArray<re::RigGraphInputValue>::deinit(v173 + 8);
      re::DynamicArray<re::RigGraphConnection>::deinit(v171 + 1);
      re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v169 + 8);
      re::DynamicArray<re::RigGraphParameterProxy>::deinit(v167 + 8);
      v50 = re::DynamicArray<re::RigGraphParameterProxy>::deinit(&v165[16]);
      if (v165[0])
      {
        if (v165[0])
        {
        }
      }

      re::DynamicArray<re::RigGraphInputValue>::deinit(&v186 + 8);
      re::DynamicArray<re::RigGraphConnection>::deinit(&v183 + 1);
      re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v180 + 8);
      re::DynamicArray<re::RigGraphParameterProxy>::deinit(&v177 + 8);
      v51 = re::DynamicArray<re::RigGraphParameterProxy>::deinit(&v176[1]);
      if (v176[0])
      {
        if (v176[0])
        {
        }
      }

      a6 = (v118 + 1);
      v17 = a6;
    }

    while (a6 != v115);
    v52 = *(v114 + 76);
    if (v52)
    {
      v53 = *(v114 + 312);
      v54 = *(v114 + 78);
      v116 = &v54[v52];
      v117 = *(v114 + 79);
      while (1)
      {
        v55 = re::DataArray<re::MeshModel>::tryGet(v117 + 8, *v54);
        if (!v55)
        {
          *&v176[0] = 0;
          re::internal::makeError("Unable to get mesh model", 24, v176);
          v90 = *&v176[0];
          a6 = v112;
          goto LABEL_187;
        }

        v56 = v55;
        v119 = v54;
        v57 = *(v55 + 56);
        if (v57)
        {
          break;
        }

LABEL_105:
        v54 = v119 + 1;
        if (v119 + 1 == v116)
        {
          goto LABEL_106;
        }
      }

      v58 = 0;
      v59 = 4;
      v60 = 488;
      while (1)
      {
        v61 = *(v56 + 56);
        if (v61 <= v58)
        {
          break;
        }

        v62 = *(v56 + 224);
        if (v62)
        {
          if (*(v62 + 8) > v58)
          {
            v63 = *(v62 + 16);
            v64 = *(v63 + v59);
            if (v64 < v53)
            {
              a6 = *(v56 + 64);
              v65 = re::MeshAsset::skeletonAtIndex(v114, *(v63 + v59));
              re::StringID::StringID(v165, v65);
              LOBYTE(v176[0]) = 2;
              re::StringID::StringID((v176 + 8), v56);
              re::StringID::StringID((&v176[1] + 8), (a6 + v60));
              re::StringID::StringID((&v176[2] + 8), v165);
              DWORD2(v177) = v64;
              v66 = re::DynamicArray<re::MeshRigGraphIndex>::add(v113, v176);
              if (BYTE8(v176[2]))
              {
                if (BYTE8(v176[2]))
                {
                }
              }

              *&v177 = &str_67;
              *(&v176[2] + 1) = 0;
              if (BYTE8(v176[1]))
              {
                if (BYTE8(v176[1]))
                {
                }
              }

              *&v176[2] = &str_67;
              *(&v176[1] + 1) = 0;
              if (BYTE8(v176[0]))
              {
                if (BYTE8(v176[0]))
                {
                }
              }

              if (v165[0])
              {
                if (v165[0])
                {
                }
              }
            }
          }
        }

        ++v58;
        v60 += 544;
        v59 += 88;
        if (v57 == v58)
        {
          goto LABEL_105;
        }
      }

      *&v156.var0 = 0;
      v177 = 0u;
      v178 = 0u;
      memset(v176, 0, sizeof(v176));
      v101 = MEMORY[0x1E69E9C10];
      v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v165 = 136315906;
      *&v165[4] = "operator[]";
      *&v165[12] = 1024;
      if (v102)
      {
        v103 = 3;
      }

      else
      {
        v103 = 2;
      }

      *&v165[14] = 476;
      *&v165[18] = 2048;
      *&v165[20] = v58;
      *&v165[28] = 2048;
      *&v165[30] = v61;
      _os_log_send_and_compose_impl(v103, &v156, v176, 80, &dword_1E1C61000, v101, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v165, 38, v107, v108);
      v99 = _os_crash_msg();
      __break(1u);
      goto LABEL_197;
    }

LABEL_106:
    *&v165[8] = 0;
    *v165 = 0;
    *&v165[16] = 1;
    v166 = 0;
    *&v165[24] = 0;
    *&v165[32] = 0;
    LODWORD(v167[0]) = 0;
    v156.var1 = 0;
    *&v156.var0 = 0;
    LODWORD(v157) = 1;
    v160 = 0;
    v158 = 0;
    v159 = 0;
    v161 = 0;
    re::internal::RetargetRigGraphAssetBuilder::appendParentNamesAndIds(v110, v165, &v156);
    v150.var1 = 0;
    *&v150.var0 = 0;
    LODWORD(v151) = 1;
    v154 = 0;
    v152 = 0;
    v153 = 0;
    v155 = 0;
    v144.var1 = 0;
    *&v144.var0 = 0;
    LODWORD(v145) = 1;
    v148 = 0;
    v146 = 0;
    v147 = 0;
    v149 = 0;
    re::internal::RetargetRigGraphAssetBuilder::appendParentNamesAndIds(v111, &v150, &v144);
    if (v160)
    {
      v67 = 0;
      v68 = -1;
      while (1)
      {
        v69 = re::BucketArray<unsigned long long,5ul>::operator[](&v156, v67);
        if (v148)
        {
          v70 = 0;
          var1 = v144.var1;
          v72 = v147;
          if (v145)
          {
            v72 = &v146;
          }

          while (1)
          {
            if (v144.var1 <= (v70 / 5))
            {
              *&v125.var0 = 0;
              v177 = 0u;
              v178 = 0u;
              memset(v176, 0, sizeof(v176));
              v104 = MEMORY[0x1E69E9C10];
              v105 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v190 = 136315906;
              *&v190[4] = "operator[]";
              *&v190[12] = 1024;
              if (v105)
              {
                v106 = 3;
              }

              else
              {
                v106 = 2;
              }

              *&v190[14] = 866;
              *&v190[18] = 2048;
              *&v190[20] = v70 / 5;
              *&v190[28] = 2048;
              *&v190[30] = var1;
              _os_log_send_and_compose_impl(v106, &v125, v176, 80, &dword_1E1C61000, v104, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v107, v108);
              _os_crash_msg();
              __break(1u);
            }

            if (*(v72[v70 / 5] + v70 + -5 * (v70 / 5)) == *v69)
            {
              break;
            }

            if (v148 == ++v70)
            {
              goto LABEL_117;
            }
          }
        }

        else
        {
          v70 = 0;
        }

        if (v70 != v148)
        {
          break;
        }

LABEL_117:
        ++v67;
        ++v68;
        if (v67 >= v160)
        {
          goto LABEL_118;
        }
      }

      if (v165[16])
      {
        v91 = &v165[24];
      }

      else
      {
        v91 = *&v165[32];
      }

      *&v176[0] = v91;
      *(&v176[0] + 1) = *&v165[8];
      *&v176[1] = v67;
      for (; v70; --v70)
      {
        re::DynamicString::appendf(v190, "relative[parent].");
      }

      if (v67)
      {
        do
        {
          v92 = *(re::BucketSlice<re::StringSlice,5ul>::operator[](v176, v68) + 8);
          v93 = re::BucketSlice<re::StringSlice,5ul>::operator[](v176, v68);
          re::DynamicString::appendf(v190, "%.*s.", v92, *v93);
          --v68;
        }

        while (v68 != -1);
      }

      a6 = v112;
      v75 = v109;
    }

    else
    {
LABEL_118:
      v73 = *&v165[32];
      v74 = v166;
      if (v165[16])
      {
        v73 = &v165[24];
      }

      *&v176[0] = v73;
      *(&v176[0] + 1) = *&v165[8];
      *&v176[1] = v166;
      v75 = v109;
      if (v74)
      {
        v76 = v74 - 1;
        do
        {
          v77 = *(re::BucketSlice<re::StringSlice,5ul>::operator[](v176, v76) + 8);
          v78 = re::BucketSlice<re::StringSlice,5ul>::operator[](v176, v76);
          re::DynamicString::appendf(v190, "%.*s.", v77, *v78);
          --v76;
        }

        while (v76 != -1);
      }

      a6 = v112;
    }

    re::BucketArray<unsigned long long,5ul>::deinit(&v144);
    if (*&v144.var0 && (v145 & 1) == 0)
    {
      (*(**&v144.var0 + 40))();
    }

    re::BucketArray<re::StringSlice,5ul>::deinit(&v150);
    if (*&v150.var0 && (v151 & 1) == 0)
    {
      (*(**&v150.var0 + 40))();
    }

    re::BucketArray<unsigned long long,5ul>::deinit(&v156);
    if (*&v156.var0 && (v157 & 1) == 0)
    {
      (*(**&v156.var0 + 40))();
    }

    re::BucketArray<re::StringSlice,5ul>::deinit(v165);
    if (*v165 && (v165[16] & 1) == 0)
    {
      (*(**v165 + 40))();
    }

    if (v190[8])
    {
      v94 = *&v190[8] >> 1;
    }

    else
    {
      v94 = v190[8] >> 1;
    }

    if (v94)
    {
      *&v176[0] = 0xFE85F7454D5070B4;
      *(&v176[0] + 1) = "sourceHierarchy";
      re::DynamicString::operator+(v165, v190, "SkeletalPose.skeletalPoses[0]");
      re::StringID::StringID(&v176[1], v165);
      LODWORD(v176[2]) = 0;
      v95 = re::DynamicArray<re::RigGraphBoundInputParameterData>::add(v75, v176);
      if (v176[1])
      {
        if (v176[1])
        {
        }
      }

      *(&v176[1] + 1) = &str_67;
      *&v176[1] = 0;
      if (v176[0])
      {
        if (v176[0])
        {
        }
      }

      *(&v176[0] + 1) = &str_67;
      *&v176[0] = 0;
      if (*v165 && (v165[8] & 1) != 0)
      {
        (*(**v165 + 40))();
      }

      *&v176[0] = 0xEFC647C93FEC3E86;
      *(&v176[0] + 1) = "sourceModelToWorldTransform";
      re::DynamicString::operator+(v165, v190, "Transform.transform");
      re::StringID::StringID(&v176[1], v165);
      LODWORD(v176[2]) = 0;
      v96 = re::DynamicArray<re::RigGraphBoundInputParameterData>::add(v75, v176);
      if (v176[1])
      {
        if (v176[1])
        {
        }
      }

      v90 = &str_67;
      *(&v176[1] + 1) = &str_67;
      *&v176[1] = 0;
      if (v176[0])
      {
        if (v176[0])
        {
        }
      }

      *(&v176[0] + 1) = &str_67;
      *&v176[0] = 0;
      if (*v165 && (v165[8] & 1) != 0)
      {
        (*(**v165 + 40))();
      }

      *&v176[0] = 0x52855BF5A9F7771ALL;
      *(&v176[0] + 1) = "targetModelToWorldTransform";
      *&v176[1] = 0x7A8A31107D1B226;
      *(&v176[1] + 1) = "entity://Transform.transform";
      LODWORD(v176[2]) = 0;
      v97 = re::DynamicArray<re::RigGraphBoundInputParameterData>::add(v75, v176);
      if (v176[1])
      {
      }

      if (v176[0])
      {
      }
    }

    else
    {
      *&v176[0] = 0;
      re::internal::makeError("Unable to construct bind path to source entity", 46, v176);
      v90 = *&v176[0];
    }

    if (*v190 && (v190[8] & 1) != 0)
    {
      (*(**v190 + 40))();
    }

    if (v94)
    {
      v98 = v162;
      v99 = v164;
      v162 = 0;
      *&v176[0] = v98;
      if (v164)
      {
        if (v164 != v163)
        {
          v164 = 0;
          *a6 = 1;
          *&v176[2] = v99;
          *&v176[0] = 0;
          *(a6 + 8) = v98;
LABEL_191:
          if (v99 == (v176 + 8))
          {
LABEL_197:
            *(a6 + 40) = a6 + 16;
            (*(*v99 + 24))(v99);
            goto LABEL_198;
          }

          *(a6 + 40) = v99;
          *&v176[2] = 0;
LABEL_198:
          std::unique_ptr<re::RigGraphAsset,std::function<void ()(re::RigGraphAsset*)>>::~unique_ptr[abi:nn200100](v176, v81, v82, v83, v84, v85, v86, v87);
          return std::unique_ptr<re::RigGraphAsset,std::function<void ()(re::RigGraphAsset*)>>::~unique_ptr[abi:nn200100](&v162, v81, v82, v83, v84, v85, v86, v87);
        }

        *&v176[2] = v176 + 8;
        (*(*v164 + 24))();
        v100 = *&v176[0];
        v99 = *&v176[2];
        *a6 = 1;
        *&v176[0] = 0;
        *(a6 + 8) = v100;
        if (v99)
        {
          goto LABEL_191;
        }
      }

      else
      {
        *a6 = 1;
        *&v176[2] = 0;
        *&v176[0] = 0;
        *(a6 + 8) = v98;
      }

      *(a6 + 40) = 0;
      goto LABEL_198;
    }
  }

  else
  {
    *&v176[0] = 0;
    re::internal::makeError("No skeleton to build retarget for", 33, v176);
    v90 = *&v176[0];
  }

LABEL_187:
  *a6 = 0;
  *(a6 + 8) = v90;
  return std::unique_ptr<re::RigGraphAsset,std::function<void ()(re::RigGraphAsset*)>>::~unique_ptr[abi:nn200100](&v162, v81, v82, v83, v84, v85, v86, v87);
}

void re::internal::makeError(char *cStr, uint64_t a2, CFErrorRef *a3)
{
  if (!*a3)
  {
    userInfoValues[3] = v3;
    userInfoValues[4] = v4;
    userInfoValues[0] = CFStringCreateWithCString(0, cStr, 0x8000100u);
    v6 = *MEMORY[0x1E695E620];
    *a3 = CFErrorCreateWithUserInfoKeysAndValues(0, @"RERigGraphAssetErrorDomain", 0, &v6, userInfoValues, 1);
    if (userInfoValues[0])
    {
      CFRelease(userInfoValues[0]);
    }
  }
}

uint64_t *re::RigGraphAsset::createIKSolverRigGraphAsset@<X0>(re::RigGraphAsset *this@<X0>, const re::MeshAsset *a2@<X1>, uint64_t a3@<X8>)
{
  v162 = *MEMORY[0x1E69E9840];
  v7 = re::globalAllocators(v6);
  v8 = (*(*v7[2] + 32))(v7[2], 160, 8);
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  v8[3] = 0u;
  v8[4] = 0u;
  v8[5] = 0u;
  v8[6] = 0u;
  v8[7] = 0u;
  v8[8] = 0u;
  v8[9] = 0u;
  *&v138[0] = &unk_1F5CC7D00;
  *(&v138[1] + 1) = v138;
  v154 = v153;
  v152 = v8;
  v153[0] = &unk_1F5CC7D00;
  std::__function::__value_func<void ()(re::RigGraphAsset *)>::~__value_func[abi:nn200100](v138);
  v9 = v152;
  re::DynamicArray<re::RigGraphDefinition>::setCapacity(v9, 0);
  v9 += 40;
  ++*(v9 - 16);
  re::DynamicArray<re::MeshRigGraphIndex>::setCapacity(v9, 0);
  ++*(v9 + 24);
  v83 = *(a2 + 32);
  if (!*(a2 + 32))
  {
    *&v138[0] = 0;
    re::internal::makeError("No solver to build execution graph for", 38, v138);
    v62 = *&v138[0];
    *a3 = 0;
    *(a3 + 8) = v62;
    return std::unique_ptr<re::RigGraphAsset,std::function<void ()(re::RigGraphAsset*)>>::~unique_ptr[abi:nn200100](&v152, v55, v56, v57, v58, v59, v60, v61);
  }

  v80 = v153;
  v81 = a3;
  v11 = 0;
  v86 = v152;
  v82 = a2;
  do
  {
    v12 = *(a2 + 4);
    if (v12 <= v11)
    {
      goto LABEL_131;
    }

    re::StringID::StringID(&v118, (*(a2 + 5) + 16 * v11));
    v12 = *(a2 + 10);
    if (v12 <= v11)
    {
      goto LABEL_135;
    }

    re::StringID::StringID(&v117, (*(a2 + 11) + 16 * v11));
    re::StringID::StringID(&v116, v138);
    if (*&v138[0] && (BYTE8(v138[0]) & 1) != 0)
    {
      (*(**&v138[0] + 40))();
    }

    re::StringID::StringID(&v115, v138);
    if (*&v138[0] && (BYTE8(v138[0]) & 1) != 0)
    {
      (*(**&v138[0] + 40))();
    }

    re::StringID::StringID(&v114, v138);
    if (*&v138[0] && (BYTE8(v138[0]) & 1) != 0)
    {
      (*(**&v138[0] + 40))();
    }

    re::StringID::StringID(&v113, v138);
    if (*&v138[0] && (BYTE8(v138[0]) & 1) != 0)
    {
      (*(**&v138[0] + 40))();
    }

    re::StringID::StringID(v112, &v116);
    if (v112[0])
    {
      if (v112[0])
      {
      }
    }

    v112[0] = 0;
    v112[1] = &str_67;
    re::StringID::StringID(v111, &v118);
    v109 = 0xA0DBB863F4861A8CLL;
    v110 = "IKParametersComponentSolverNode";
    re::internal::RigGraphDefinitionBuilder::addNode(v138, v111, &v109);
    if (v109)
    {
    }

    v109 = 0;
    v110 = &str_67;
    if (v111[0])
    {
      if (v111[0])
      {
      }
    }

    v111[0] = 0;
    v111[1] = &str_67;
    re::StringID::StringID(&v108, &v115);
    *&v105.var0 = 0x2789F63FDC13D20;
    v105.var1 = "inHierarchy";
    v106 = 0x3C4B6E418F8AFE4ALL;
    v107 = "RigHierarchy";
    v104[0] = 0;
    re::internal::RigGraphDefinitionBuilder::addGraphInput(v138, &v108, &v105, v104);
    v106 = 0;
    v107 = &str_67;
    *&v105.var0 = 0;
    v105.var1 = &str_67;
    if (*&v108.var0)
    {
      if (*&v108.var0)
      {
      }
    }

    *&v108.var0 = 0;
    v108.var1 = &str_67;
    re::StringID::StringID(&v103, &v114);
    *&v100.var0 = 0x11F4B3FE87F3AF2ALL;
    v100.var1 = "inSolverRootModelSpaceTransform";
    v101 = 164778;
    v102 = "SRT";
    v99[0] = 0;
    re::internal::RigGraphDefinitionBuilder::addGraphInput(v138, &v103, &v100, v99);
    v101 = 0;
    v102 = &str_67;
    *&v100.var0 = 0;
    v100.var1 = &str_67;
    if (*&v103.var0)
    {
      if (*&v103.var0)
      {
      }
    }

    *&v103.var0 = 0;
    v103.var1 = &str_67;
    *&v96.var0 = 0x4363292BB5C214F0;
    v96.var1 = "inSolverInstanceName";
    v97 = 0x128749862;
    v98 = "String";
    re::StringID::StringID(&v93, &v118);
    re::StringID::StringID(&v95, v127);
    if (*&v127[0] && (BYTE8(v127[0]) & 1) != 0)
    {
      (*(**&v127[0] + 40))();
    }

    re::internal::RigGraphDefinitionBuilder::addGraphInputValue(v138, &v96, &v95);
    if (*&v95.var0)
    {
      if (*&v95.var0)
      {
      }
    }

    *&v95.var0 = 0;
    v95.var1 = &str_67;
    if (v93)
    {
      if (v93)
      {
      }
    }

    v93 = 0;
    v94 = &str_67;
    v97 = 0;
    v98 = &str_67;
    *&v96.var0 = 0;
    v96.var1 = &str_67;
    re::StringID::StringID(&v92, &v113);
    *&v89.var0 = 0x51075CF812B0B50ELL;
    v89.var1 = "outHierarchy";
    v90 = 0x3C4B6E418F8AFE4ALL;
    v91 = "RigHierarchy";
    v88[0] = 0;
    re::internal::RigGraphDefinitionBuilder::addGraphOutput(v138, &v92, &v89, v88);
    v90 = 0;
    v91 = &str_67;
    *&v89.var0 = 0;
    v89.var1 = &str_67;
    if (*&v92.var0)
    {
      if (*&v92.var0)
      {
      }
    }

    *&v92.var0 = 0;
    v92.var1 = &str_67;
    *&v127[0] = *&v138[0];
    v24 = *(v138 + 8);
    *&v138[0] = 0;
    *(&v138[0] + 1) = &str_67;
    *(v127 + 8) = v24;
    memset(&v138[1], 0, 24);
    *(&v127[1] + 8) = *(&v138[1] + 8);
    ++DWORD2(v138[2]);
    DWORD2(v127[2]) = 1;
    v128 = v139;
    v129 = v140;
    v139 = 0u;
    v140 = 0u;
    v131[0] = v142;
    v142 = 0u;
    v131[1] = v143;
    v143 = 0u;
    ++v141;
    ++v144;
    v130 = 1;
    v132 = 1;
    v133[0] = v145;
    v133[1] = v146;
    v145 = 0u;
    v146 = 0u;
    v137 = v151;
    v135[0] = v148;
    v148 = 0u;
    v135[1] = v149;
    v149 = 0u;
    v151 = 0;
    ++v147;
    ++v150;
    v134 = 1;
    v136 = 1;
    re::DynamicArray<re::RigGraphDefinition>::add(v86, v127);
    re::DynamicArray<re::RigGraphInputValue>::deinit(v135 + 8);
    re::DynamicArray<re::RigGraphConnection>::deinit(v133 + 1);
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v131 + 8);
    re::DynamicArray<re::RigGraphParameterProxy>::deinit(&v128 + 8);
    v25 = re::DynamicArray<re::RigGraphParameterProxy>::deinit(&v127[1]);
    if (v127[0])
    {
      if (v127[0])
      {
      }
    }

    re::StringID::StringID(v127, &v114);
    *&v127[1] = 0x7A8A31107D1B226;
    *(&v127[1] + 1) = "entity://Transform.transform";
    LODWORD(v127[2]) = 0;
    v26 = re::DynamicArray<re::RigGraphBoundInputParameterData>::add((v86 + 80), v127);
    if (v127[1])
    {
      if (v127[1])
      {
      }
    }

    *(&v127[1] + 1) = &str_67;
    *&v127[1] = 0;
    if (v127[0])
    {
      if (v127[0])
      {
      }
    }

    v12 = *(this + 156);
    if (!v12)
    {
      goto LABEL_85;
    }

    v27 = *(this + 79);
    if (!v27)
    {
      goto LABEL_85;
    }

    v28 = *(this + 1264);
    v29 = v28 ? 608 : 32;
    if (!*(this + v29))
    {
      goto LABEL_85;
    }

    v30 = 0;
    v87 = v11;
    v84 = *(this + 79);
    do
    {
      v31 = *(this + 76);
      if (v31 <= v30)
      {
        *v155 = 0;
        v128 = 0u;
        v129 = 0u;
        memset(v127, 0, sizeof(v127));
        v68 = MEMORY[0x1E69E9C10];
        v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v120 = 136315906;
        *&v120[4] = "operator[]";
        v121 = 1024;
        if (v69)
        {
          v70 = 3;
        }

        else
        {
          v70 = 2;
        }

        v122 = 797;
        v123 = 2048;
        *v124 = v30;
        *&v124[8] = 2048;
        *&v124[10] = v31;
        _os_log_send_and_compose_impl(v70, v155, v127, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v120, 38, v153, v81);
        _os_crash_msg();
        __break(1u);
LABEL_127:
        *v155 = 0;
        v128 = 0u;
        v129 = 0u;
        memset(v127, 0, sizeof(v127));
        v71 = MEMORY[0x1E69E9C10];
        v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v120 = 136315906;
        *&v120[4] = "operator[]";
        v121 = 1024;
        if (v72)
        {
          v73 = 3;
        }

        else
        {
          v73 = 2;
        }

        v122 = 797;
        v123 = 2048;
        *v124 = v31;
        *&v124[8] = 2048;
        *&v124[10] = v10;
        _os_log_send_and_compose_impl(v73, v155, v127, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v120, 38, v80, v81);
        _os_crash_msg();
        __break(1u);
LABEL_131:
        *v120 = 0;
        v139 = 0u;
        v140 = 0u;
        memset(v138, 0, sizeof(v138));
        v74 = MEMORY[0x1E69E9C10];
        v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v127[0]) = 136315906;
        *(v127 + 4) = "operator[]";
        WORD6(v127[0]) = 1024;
        if (v75)
        {
          v76 = 3;
        }

        else
        {
          v76 = 2;
        }

        *(v127 + 14) = 476;
        WORD1(v127[1]) = 2048;
        *(&v127[1] + 4) = v11;
        WORD6(v127[1]) = 2048;
        *(&v127[1] + 14) = v12;
        _os_log_send_and_compose_impl(v76, v120, v138, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v80, v81);
        _os_crash_msg();
        __break(1u);
LABEL_135:
        *v120 = 0;
        v139 = 0u;
        v140 = 0u;
        memset(v138, 0, sizeof(v138));
        v77 = MEMORY[0x1E69E9C10];
        v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v127[0]) = 136315906;
        *(v127 + 4) = "operator[]";
        WORD6(v127[0]) = 1024;
        if (v78)
        {
          v79 = 3;
        }

        else
        {
          v79 = 2;
        }

        *(v127 + 14) = 476;
        WORD1(v127[1]) = 2048;
        *(&v127[1] + 4) = v11;
        WORD6(v127[1]) = 2048;
        *(&v127[1] + 14) = v12;
        _os_log_send_and_compose_impl(v79, v120, v138, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v127, 38, v80, v81);
        _os_crash_msg();
        __break(1u);
      }

      v32 = *(*(this + 78) + 8 * v30);
      v31 = WORD1(v32);
      v10 = *(v27 + 24);
      if (v10 <= WORD1(v32))
      {
        goto LABEL_127;
      }

      v85 = v30;
      v33 = *(*(v27 + 40) + 16 * WORD1(v32)) + 864 * v32;
      v34 = *(v33 + 224);
      if (!v34)
      {
        goto LABEL_81;
      }

      v35 = *(v34 + 8);
      if (!v35)
      {
        goto LABEL_81;
      }

      v36 = 0;
      v37 = 488;
      v38 = 4;
      do
      {
        v39 = *(v33 + 224);
        if (v39 && *(v39 + 8) > v36)
        {
          v10 = *(*(v39 + 16) + v38);
        }

        else
        {
          v10 = 0xFFFFFFFFLL;
        }

        if (v12 > v10)
        {
          v120[0] = 2;
          re::StringID::StringID(&v120[8], v33);
          v40 = *(v33 + 56);
          if (v40 <= v36)
          {
            v119 = 0;
            v128 = 0u;
            v129 = 0u;
            memset(v127, 0, sizeof(v127));
            v63 = MEMORY[0x1E69E9C10];
            v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v155 = 136315906;
            *&v155[4] = "operator[]";
            v156 = 1024;
            if (v64)
            {
              v65 = 3;
            }

            else
            {
              v65 = 2;
            }

            v157 = 476;
            v158 = 2048;
            v159 = v36;
            v160 = 2048;
            v161 = v40;
            _os_log_send_and_compose_impl(v65, &v119, v127, 80, &dword_1E1C61000, v63, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v155, 38, v153, v81);
            _os_crash_msg();
            __break(1u);
            goto LABEL_115;
          }

          re::StringID::StringID(&v124[4], (*(v33 + 64) + v37));
          v41 = re::MeshAsset::skeletonAtIndex(this, v10);
          re::StringID::StringID(v125, v41);
          v126 = v87;
          v42 = re::DynamicArray<re::MeshRigGraphIndex>::add((v86 + 40), v120);
          if (v125[0])
          {
            if (v125[0])
            {
            }
          }

          v125[1] = &str_67;
          v125[0] = 0;
          if (v124[4])
          {
            if (v124[4])
            {
            }
          }

          *&v124[12] = &str_67;
          *&v124[4] = 0;
          if (v120[8])
          {
            if (v120[8])
            {
            }
          }
        }

        ++v36;
        v38 += 88;
        v37 += 544;
      }

      while (v35 != v36);
      v28 = *(this + 1264);
      v11 = v87;
LABEL_81:
      v27 = v84;
      v30 = v85 + 1;
      if (v28)
      {
        v43 = 608;
      }

      else
      {
        v43 = 32;
      }
    }

    while (v30 < *(this + v43));
LABEL_85:
    re::DynamicArray<re::RigGraphInputValue>::deinit(&v148 + 8);
    re::DynamicArray<re::RigGraphConnection>::deinit(&v145 + 1);
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v142 + 8);
    re::DynamicArray<re::RigGraphParameterProxy>::deinit(&v139 + 8);
    v44 = re::DynamicArray<re::RigGraphParameterProxy>::deinit(&v138[1]);
    if (v138[0])
    {
      if (v138[0])
      {
      }
    }

    a2 = v82;
    if (*&v113.var0)
    {
      if (*&v113.var0)
      {
      }
    }

    if (*&v114.var0)
    {
      if (*&v114.var0)
      {
      }
    }

    if (*&v115.var0)
    {
      if (*&v115.var0)
      {
      }
    }

    if (*&v116.var0)
    {
      if (*&v116.var0)
      {
      }
    }

    if (v117)
    {
      if (v117)
      {
      }
    }

    if (*&v118.var0)
    {
      if (*&v118.var0)
      {
      }
    }

    ++v11;
  }

  while (v11 != v83);
  v52 = v152;
  v53 = v154;
  v152 = 0;
  *&v138[0] = v52;
  if (!v154)
  {
LABEL_115:
    *v81 = 1;
    v54 = v81;
    *&v138[2] = 0;
    *&v138[0] = 0;
    *(v81 + 8) = v52;
LABEL_116:
    *(v54 + 40) = 0;
    goto LABEL_121;
  }

  if (v154 == v153)
  {
    *&v138[2] = v138 + 8;
    (*(*v154 + 24))();
    v66 = *&v138[0];
    v53 = *&v138[2];
    *v81 = 1;
    v54 = v81;
    *&v138[0] = 0;
    *(v81 + 8) = v66;
    if (v53)
    {
      goto LABEL_118;
    }

    goto LABEL_116;
  }

  v154 = 0;
  *v81 = 1;
  v54 = v81;
  *&v138[2] = v53;
  *&v138[0] = 0;
  *(v81 + 8) = v52;
LABEL_118:
  if (v53 == (v138 + 8))
  {
    *(v54 + 40) = v54 + 16;
    (*(*v53 + 24))(v53);
  }

  else
  {
    *(v54 + 40) = v53;
    *&v138[2] = 0;
  }

LABEL_121:
  std::unique_ptr<re::RigGraphAsset,std::function<void ()(re::RigGraphAsset*)>>::~unique_ptr[abi:nn200100](v138, v45, v46, v47, v48, v49, v50, v51);
  return std::unique_ptr<re::RigGraphAsset,std::function<void ()(re::RigGraphAsset*)>>::~unique_ptr[abi:nn200100](&v152, v55, v56, v57, v58, v59, v60, v61);
}

void re::internal::RigGraphDefinitionBuilder::addNode(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  *a2 = 0;
  a2[1] = &str_67;
  v4 = a3[1];
  v7 = *a3;
  v8 = v4;
  *a3 = 0;
  a3[1] = &str_67;
  v5 = re::DynamicArray<re::RigGraphNodeDescription>::add((a1 + 96), v6);
  if (v7)
  {
    if (v7)
    {
    }
  }

  v7 = 0;
  v8 = &str_67;
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }
}

void re::internal::RigGraphDefinitionBuilder::addGraphInput(void *a1, const StringID *a2, const StringID *a3, unsigned __int8 *a4)
{
  *&v35.var0 = 7118140;
  v35.var1 = "this";
  re::StringID::StringID(&v36, a3 + 1);
  re::StringID::StringID(&v37, a2);
  re::StringID::invalid(&v38);
  re::StringID::invalid(&v39);
  re::StringID::StringID(&v30, (a1[16] + 32 * a1[14] - 32));
  re::StringID::StringID(&v31, a3 + 1);
  re::StringID::StringID(&v32, a3);
  re::StringID::invalid(&v33);
  re::StringID::invalid(&v34);
  re::StringID::StringID(v14, &v35);
  re::StringID::StringID(&v15, &v36);
  re::StringID::StringID(&v17, &v37);
  re::StringID::StringID(&v19, &v38);
  re::StringID::StringID(&v21, &v39);
  re::StringID::StringID(&v23, &v30);
  re::StringID::StringID(&v25, &v31);
  re::StringID::StringID(v27, &v32);
  re::StringID::StringID(v28, &v33);
  re::StringID::StringID(v29, &v34);
  v8 = re::DynamicArray<re::RigGraphConnection>::add((a1 + 17), v14);
  if (v29[0])
  {
    if (v29[0])
    {
    }
  }

  v29[0] = 0;
  v29[1] = &str_67;
  if (v28[0])
  {
    if (v28[0])
    {
    }
  }

  v28[0] = 0;
  v28[1] = &str_67;
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  v27[0] = 0;
  v27[1] = &str_67;
  if (v25)
  {
    if (v25)
    {
    }
  }

  v25 = 0;
  v26 = &str_67;
  if (v23)
  {
    if (v23)
    {
    }
  }

  v23 = 0;
  v24 = &str_67;
  if (v21)
  {
    if (v21)
    {
    }
  }

  v21 = 0;
  v22 = &str_67;
  if (v19)
  {
    if (v19)
    {
    }
  }

  v19 = 0;
  v20 = &str_67;
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

  v15 = 0;
  v16 = &str_67;
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  re::StringID::StringID(v14, &v30);
  re::StringID::StringID(&v15, &v31);
  re::StringID::StringID(&v17, &v32);
  re::StringID::StringID(&v19, &v33);
  re::StringID::StringID(&v21, &v34);
  re::StringID::StringID(&v23, a2);
  v13[0] = 0;
  v13[1] = "";
  v10 = *a4;
  v9 = a4 + 8;
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v13;
  }

  re::StringID::StringID(&v25, v11);
  v12 = re::DynamicArray<re::RigGraphParameterProxy>::add((a1 + 2), v14);
  if (v25)
  {
    if (v25)
    {
    }
  }

  v25 = 0;
  v26 = &str_67;
  if (v23)
  {
    if (v23)
    {
    }
  }

  v23 = 0;
  v24 = &str_67;
  if (v21)
  {
    if (v21)
    {
    }
  }

  v21 = 0;
  v22 = &str_67;
  if (v19)
  {
    if (v19)
    {
    }
  }

  v19 = 0;
  v20 = &str_67;
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

  v15 = 0;
  v16 = &str_67;
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  if (*&v34.var0)
  {
    if (*&v34.var0)
    {
    }
  }

  *&v34.var0 = 0;
  v34.var1 = &str_67;
  if (*&v33.var0)
  {
    if (*&v33.var0)
    {
    }
  }

  *&v33.var0 = 0;
  v33.var1 = &str_67;
  if (*&v32.var0)
  {
    if (*&v32.var0)
    {
    }
  }

  *&v32.var0 = 0;
  v32.var1 = &str_67;
  if (*&v31.var0)
  {
    if (*&v31.var0)
    {
    }
  }

  *&v31.var0 = 0;
  v31.var1 = &str_67;
  if (*&v30.var0)
  {
    if (*&v30.var0)
    {
    }
  }

  if (*&v39.var0)
  {
    if (*&v39.var0)
    {
    }
  }

  *&v39.var0 = 0;
  v39.var1 = &str_67;
  if (*&v38.var0)
  {
    if (*&v38.var0)
    {
    }
  }

  *&v38.var0 = 0;
  v38.var1 = &str_67;
  if (*&v37.var0)
  {
    if (*&v37.var0)
    {
    }
  }

  *&v37.var0 = 0;
  v37.var1 = &str_67;
  if (*&v36.var0)
  {
    if (*&v36.var0)
    {
    }
  }

  *&v36.var0 = 0;
  v36.var1 = &str_67;
  if (*&v35.var0)
  {
    if (*&v35.var0)
    {
    }
  }
}

void re::internal::RigGraphDefinitionBuilder::addGraphInputValue(void *a1, const StringID *a2, const StringID *a3)
{
  re::StringID::StringID(&v13, (a1[16] + 32 * a1[14] - 32));
  re::StringID::StringID(&v14, a2 + 1);
  re::StringID::StringID(&v15, a2);
  re::StringID::invalid(&v16);
  re::StringID::invalid(&v17);
  re::StringID::StringID(&v7, &v13);
  re::StringID::StringID(v8, &v14);
  re::StringID::StringID(v9, &v15);
  re::StringID::StringID(v10, &v16);
  re::StringID::StringID(v11, &v17);
  re::StringID::StringID(v12, a3);
  v6 = re::DynamicArray<re::RigGraphInputValue>::add((a1 + 22), &v7);
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  v12[0] = 0;
  v12[1] = &str_67;
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  v11[0] = 0;
  v11[1] = &str_67;
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  v10[0] = 0;
  v10[1] = &str_67;
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  v9[0] = 0;
  v9[1] = &str_67;
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  v8[0] = 0;
  v8[1] = &str_67;
  if (v7)
  {
    if (v7)
    {
    }
  }

  if (*&v17.var0)
  {
    if (*&v17.var0)
    {
    }
  }

  *&v17.var0 = 0;
  v17.var1 = &str_67;
  if (*&v16.var0)
  {
    if (*&v16.var0)
    {
    }
  }

  *&v16.var0 = 0;
  v16.var1 = &str_67;
  if (*&v15.var0)
  {
    if (*&v15.var0)
    {
    }
  }

  *&v15.var0 = 0;
  v15.var1 = &str_67;
  if (*&v14.var0)
  {
    if (*&v14.var0)
    {
    }
  }

  *&v14.var0 = 0;
  v14.var1 = &str_67;
  if (*&v13.var0)
  {
    if (*&v13.var0)
    {
    }
  }
}

void re::internal::RigGraphDefinitionBuilder::addGraphOutput(void *a1, const StringID *a2, const StringID *a3, unsigned __int8 *a4)
{
  *&v35.var0 = 7118140;
  v35.var1 = "this";
  re::StringID::StringID(&v36, a3 + 1);
  re::StringID::StringID(&v37, a2);
  re::StringID::invalid(&v38);
  re::StringID::invalid(&v39);
  re::StringID::StringID(&v30, (a1[16] + 32 * a1[14] - 32));
  re::StringID::StringID(&v31, a3 + 1);
  re::StringID::StringID(&v32, a3);
  re::StringID::invalid(&v33);
  re::StringID::invalid(&v34);
  re::StringID::StringID(v14, &v30);
  re::StringID::StringID(&v15, &v31);
  re::StringID::StringID(&v17, &v32);
  re::StringID::StringID(&v19, &v33);
  re::StringID::StringID(&v21, &v34);
  re::StringID::StringID(&v23, &v35);
  re::StringID::StringID(&v25, &v36);
  re::StringID::StringID(v27, &v37);
  re::StringID::StringID(v28, &v38);
  re::StringID::StringID(v29, &v39);
  v8 = re::DynamicArray<re::RigGraphConnection>::add((a1 + 17), v14);
  if (v29[0])
  {
    if (v29[0])
    {
    }
  }

  v29[0] = 0;
  v29[1] = &str_67;
  if (v28[0])
  {
    if (v28[0])
    {
    }
  }

  v28[0] = 0;
  v28[1] = &str_67;
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  v27[0] = 0;
  v27[1] = &str_67;
  if (v25)
  {
    if (v25)
    {
    }
  }

  v25 = 0;
  v26 = &str_67;
  if (v23)
  {
    if (v23)
    {
    }
  }

  v23 = 0;
  v24 = &str_67;
  if (v21)
  {
    if (v21)
    {
    }
  }

  v21 = 0;
  v22 = &str_67;
  if (v19)
  {
    if (v19)
    {
    }
  }

  v19 = 0;
  v20 = &str_67;
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

  v15 = 0;
  v16 = &str_67;
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  re::StringID::StringID(v14, &v30);
  re::StringID::StringID(&v15, &v31);
  re::StringID::StringID(&v17, &v32);
  re::StringID::StringID(&v19, &v33);
  re::StringID::StringID(&v21, &v34);
  re::StringID::StringID(&v23, a2);
  v13[0] = 0;
  v13[1] = "";
  v10 = *a4;
  v9 = a4 + 8;
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v13;
  }

  re::StringID::StringID(&v25, v11);
  v12 = re::DynamicArray<re::RigGraphParameterProxy>::add((a1 + 7), v14);
  if (v25)
  {
    if (v25)
    {
    }
  }

  v25 = 0;
  v26 = &str_67;
  if (v23)
  {
    if (v23)
    {
    }
  }

  v23 = 0;
  v24 = &str_67;
  if (v21)
  {
    if (v21)
    {
    }
  }

  v21 = 0;
  v22 = &str_67;
  if (v19)
  {
    if (v19)
    {
    }
  }

  v19 = 0;
  v20 = &str_67;
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

  v15 = 0;
  v16 = &str_67;
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  if (*&v34.var0)
  {
    if (*&v34.var0)
    {
    }
  }

  *&v34.var0 = 0;
  v34.var1 = &str_67;
  if (*&v33.var0)
  {
    if (*&v33.var0)
    {
    }
  }

  *&v33.var0 = 0;
  v33.var1 = &str_67;
  if (*&v32.var0)
  {
    if (*&v32.var0)
    {
    }
  }

  *&v32.var0 = 0;
  v32.var1 = &str_67;
  if (*&v31.var0)
  {
    if (*&v31.var0)
    {
    }
  }

  *&v31.var0 = 0;
  v31.var1 = &str_67;
  if (*&v30.var0)
  {
    if (*&v30.var0)
    {
    }
  }

  if (*&v39.var0)
  {
    if (*&v39.var0)
    {
    }
  }

  *&v39.var0 = 0;
  v39.var1 = &str_67;
  if (*&v38.var0)
  {
    if (*&v38.var0)
    {
    }
  }

  *&v38.var0 = 0;
  v38.var1 = &str_67;
  if (*&v37.var0)
  {
    if (*&v37.var0)
    {
    }
  }

  *&v37.var0 = 0;
  v37.var1 = &str_67;
  if (*&v36.var0)
  {
    if (*&v36.var0)
    {
    }
  }

  *&v36.var0 = 0;
  v36.var1 = &str_67;
  if (*&v35.var0)
  {
    if (*&v35.var0)
    {
    }
  }
}

uint64_t re::DynamicArray<re::RigGraphDefinition>::add(uint64_t a1, uint64_t *a2)
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

        re::DynamicArray<re::RigGraphDefinition>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::RigGraphDefinition>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  result = re::RigGraphDefinition::RigGraphDefinition(*(a1 + 32) + 216 * v5, a2);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::RigGraphBoundInputParameterData>::add(_anonymous_namespace_ *result, uint64_t *a2)
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

        result = re::DynamicArray<re::RigGraphBoundInputParameterData>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::RigGraphBoundInputParameterData>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = *(v3 + 4) + 40 * v5;
  v12 = *a2;
  *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v11 = *a2 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  *(v11 + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v13 = a2[2];
  *(v11 + 16) = *(v11 + 16) & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
  *(v11 + 16) = a2[2] & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
  *(v11 + 24) = a2[3];
  a2[2] = 0;
  a2[3] = &str_67;
  *(v11 + 32) = *(a2 + 8);
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::MeshRigGraphIndex>::add(_anonymous_namespace_ *result, uint64_t a2)
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

        result = re::DynamicArray<re::MeshRigGraphIndex>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::MeshRigGraphIndex>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = *(v3 + 4) + (v5 << 6);
  *v11 = *a2;
  v12 = *(a2 + 8);
  *(v11 + 8) = *(v11 + 8) & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  *(v11 + 8) = *(a2 + 8) & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  *(v11 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = &str_67;
  v13 = *(a2 + 24);
  *(v11 + 24) = *(v11 + 24) & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
  *(v11 + 24) = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
  *(v11 + 32) = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = &str_67;
  v14 = *(a2 + 40);
  *(v11 + 40) = *(v11 + 40) & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
  *(v11 + 40) = *(a2 + 40) & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
  *(v11 + 48) = *(a2 + 48);
  *(a2 + 40) = 0;
  *(a2 + 48) = &str_67;
  *(v11 + 56) = *(a2 + 56);
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

uint64_t re::RigGraphAssetLoader::createRuntimeData(uint64_t a1, uint64_t a2)
{
  v99 = *MEMORY[0x1E69E9840];
  re::StackScratchAllocator::StackScratchAllocator(v50);
  v92[0] = 0;
  v92[1] = 0;
  v93 = 1;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  v97 = 0;
  memset(v98, 0, sizeof(v98));
  re::RigEnvironment::init(v92, v50);
  v36[0] = 0;
  v36[1] = 0;
  v37 = 1;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v41 = 0;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v45 = 0;
  v49 = 0;
  v46 = 0u;
  v47 = 0u;
  v48 = 0;
  re::RigGraphCompilation::init(v36, v50);
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = 216 * v4;
    while (1)
    {
      *v56 = 0;
      v55 = 0u;
      v54 = 0u;
      *&v56[4] = 0x7FFFFFFFLL;
      v51 = v50;
      v52 = v5;
      v53 = v92;
      re::RigGraphDefinitionValidator::validate(&v51, v3, v73);
      if ((v73[0] & 1) == 0)
      {
        break;
      }

      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v54);
      v5 += 216;
      v6 -= 216;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    v29 = *re::assetTypesLogObjects(v7);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      if (v75)
      {
        v35 = v76;
      }

      else
      {
        v35 = &v75 + 1;
      }

      *buf = 136315138;
      v91 = v35;
      _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, "Could not validate RigGraphAssetDefinition: Error = %s", buf, 0xCu);
    }

    if (v73[0] & 1) == 0 && v74 && (v75)
    {
      (*(*v74 + 40))(v74, v76, v30, v31);
    }

    re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v54);
    v9 = 0;
  }

  else
  {
LABEL_5:
    v8 = *a2;
    v9 = 1;
    if (*a2)
    {
      v76 = 0;
      v75 = 0;
      v77 = 1;
      v80 = 0;
      v78 = 0;
      v79 = 0;
      v81 = 0;
      v84 = 0;
      v82 = 0;
      v83 = 0;
      v89 = 0;
      v86 = 0u;
      v87 = 0u;
      v85 = 0;
      v88 = 0;
      v73[1] = 0;
      v73[2] = 0;
      v73[0] = v8;
      LOBYTE(v74) = 0;
      re::RigGraphCompilation::init(&v75, v8);
      *(a2 + 120) = *a2;
      re::DynamicArray<re::RigGraphNode>::setCapacity((a2 + 120), 0);
      ++*(a2 + 144);
      if (*(a2 + 16))
      {
        v10 = 0;
        v11 = 0;
        do
        {
          v12 = re::RigGraphSystem::buildFromDefinition(*a2, (*(a2 + 32) + v10), &v51);
          v13 = *(a2 + 128);
          v14 = *(a2 + 136);
          if (v14 >= v13)
          {
            v15 = v14 + 1;
            if (v13 < v14 + 1)
            {
              if (*(a2 + 120))
              {
                if (v13)
                {
                  v16 = 2 * v13;
                }

                else
                {
                  v16 = 8;
                }

                if (v16 <= v15)
                {
                  v17 = v14 + 1;
                }

                else
                {
                  v17 = v16;
                }

                re::DynamicArray<re::RigGraphNode>::setCapacity((a2 + 120), v17);
              }

              else
              {
                re::DynamicArray<re::RigGraphNode>::setCapacity((a2 + 120), v15);
                ++*(a2 + 144);
              }
            }

            v14 = *(a2 + 136);
          }

          v18 = *(a2 + 152) + 200 * v14;
          *(v18 + 32) = 0;
          *(v18 + 8) = 0;
          *(v18 + 16) = 0;
          *v18 = 0;
          *(v18 + 24) = 0;
          *v18 = v51;
          v51 = 0;
          *(v18 + 8) = v52;
          v52 = 0;
          v19 = *(v18 + 16);
          *(v18 + 16) = v53;
          v53 = v19;
          v20 = *(v18 + 32);
          *(v18 + 32) = *(&v54 + 1);
          *(&v54 + 1) = v20;
          LODWORD(v54) = v54 + 1;
          ++*(v18 + 24);
          *(v18 + 72) = 0;
          *(v18 + 48) = 0;
          *(v18 + 56) = 0;
          *(v18 + 40) = 0;
          *(v18 + 64) = 0;
          *(v18 + 40) = v55;
          *&v55 = 0;
          *(v18 + 48) = *(&v55 + 1);
          *(&v55 + 1) = 0;
          v21 = *(v18 + 56);
          *(v18 + 56) = *v56;
          *v56 = v21;
          v22 = *(v18 + 72);
          *(v18 + 72) = v57;
          v57 = v22;
          ++*&v56[8];
          ++*(v18 + 64);
          *(v18 + 112) = 0;
          *(v18 + 88) = 0;
          *(v18 + 96) = 0;
          *(v18 + 80) = 0;
          *(v18 + 104) = 0;
          *(v18 + 80) = v58;
          v58 = 0;
          *(v18 + 88) = v59;
          v59 = 0;
          v23 = *(v18 + 96);
          *(v18 + 96) = v60;
          v60 = v23;
          v24 = *(v18 + 112);
          *(v18 + 112) = v62;
          v62 = v24;
          ++v61;
          ++*(v18 + 104);
          *(v18 + 152) = 0;
          *(v18 + 128) = 0;
          *(v18 + 136) = 0;
          *(v18 + 120) = 0;
          *(v18 + 144) = 0;
          *(v18 + 120) = v63;
          v63 = 0;
          *(v18 + 128) = v64;
          v64 = 0;
          v25 = *(v18 + 136);
          *(v18 + 136) = v65;
          v65 = v25;
          v26 = *(v18 + 152);
          *(v18 + 152) = v67;
          v67 = v26;
          ++v66;
          ++*(v18 + 144);
          *(v18 + 192) = 0;
          *(v18 + 168) = 0;
          *(v18 + 176) = 0;
          *(v18 + 160) = 0;
          *(v18 + 184) = 0;
          *(v18 + 160) = v68;
          v68 = 0;
          *(v18 + 168) = v69;
          v69 = 0;
          v27 = *(v18 + 176);
          *(v18 + 176) = v70;
          v70 = v27;
          v28 = *(v18 + 192);
          *(v18 + 192) = v72;
          v72 = v28;
          ++v71;
          ++*(v18 + 184);
          ++*(a2 + 136);
          ++*(a2 + 144);
          re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(&v68);
          re::DynamicArray<re::StringID>::deinit(&v63);
          re::DynamicArray<re::RigGraphNodeChild>::deinit(&v58);
          re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v55);
          re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(&v51);
          ++v11;
          v10 += 216;
        }

        while (v11 < *(a2 + 16));
      }

      re::RigGraphCompilation::~RigGraphCompilation(&v75);
      v9 = 1;
    }
  }

  re::RigGraphCompilation::~RigGraphCompilation(v36);
  re::BindNode::deinit(&v98[8]);
  re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit(v92);
  if (v92[0] && (v93 & 1) == 0)
  {
    (*(*v92[0] + 40))(v92[0], v95, v32, v33);
  }

  re::StackScratchAllocator::~StackScratchAllocator(v50);
  return v9;
}

uint64_t re::RigGraphAssetLoader::introspectionType(re::RigGraphAssetLoader *this)
{
  v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v3)
    {
      re::introspect<re::RigGraphAsset>(BOOL)::info = re::internal::getOrCreateInfo("RigGraphAsset", re::allocInfo_RigGraphAsset, re::initInfo_RigGraphAsset, &re::internal::introspectionInfoStorage<re::RigGraphAsset>, 0);
      v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v1 + 127);
}

void *re::allocInfo_RigGraphBoundInputParameterDataV1(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1990C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1990C8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1992F8, "RigGraphBoundInputParameterDataV1");
    __cxa_guard_release(&qword_1EE1990C8);
  }

  return &unk_1EE1992F8;
}

void re::initInfo_RigGraphBoundInputParameterDataV1(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v23[0] = 0x43DF5FA6F6F04B48;
  v23[1] = "RigGraphBoundInputParameterDataV1";
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }

  *(this + 2) = v24;
  if ((atomic_load_explicit(&qword_1EE1990D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1990D0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "name";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1991B0 = v10;
    v11 = re::introspectionAllocator();
    re::introspect_RigGraphBindNodeType(v11, v12);
    v13 = (*(*v11 + 32))(v11, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "bindNodeType";
    *(v13 + 16) = &qword_1EE1992B0;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0x1000000002;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE1991B8 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::IntrospectionInfo<re::StringID>::get(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "bindingPath";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x1800000003;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1991C0 = v17;
    v18 = re::introspectionAllocator();
    v20 = re::introspect_uint32_t(1, v19);
    v21 = (*(*v18 + 32))(v18, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "rigGraphIndex";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x2800000004;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1991C8 = v21;
    __cxa_guard_release(&qword_1EE1990D0);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1991B0;
  *(this + 9) = re::internal::defaultConstruct<re::RigGraphBoundInputParameterDataV1>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigGraphBoundInputParameterDataV1>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigGraphBoundInputParameterDataV1>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigGraphBoundInputParameterDataV1>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v22 = v24;
}

re::StringID *re::internal::defaultConstruct<re::RigGraphBoundInputParameterDataV1>(re::StringID *a1, uint64_t a2, uint64_t a3)
{
  re::StringID::invalid(a3);
  *(a3 + 16) = 0;
  result = re::StringID::invalid((a3 + 24));
  *(a3 + 40) = 0;
  return result;
}

void re::internal::defaultDestruct<re::RigGraphBoundInputParameterDataV1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 24));

  re::StringID::destroyString(a3);
}

re::StringID *re::internal::defaultConstructV2<re::RigGraphBoundInputParameterDataV1>(uint64_t a1)
{
  re::StringID::invalid(a1);
  *(a1 + 16) = 0;
  result = re::StringID::invalid((a1 + 24));
  *(a1 + 40) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::RigGraphBoundInputParameterDataV1>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 24));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_MeshRigGraphIndex(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1990E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1990E0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE199388, "MeshRigGraphIndex");
    __cxa_guard_release(&qword_1EE1990E0);
  }

  return &unk_1EE199388;
}

void re::initInfo_MeshRigGraphIndex(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v24[0] = 0x26A8B32DA977788ELL;
  v24[1] = "MeshRigGraphIndex";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&qword_1EE1990E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1990E8))
  {
    v7 = re::introspectionAllocator();
    v13 = re::introspect_MeshIdentifierAsset(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "meshIdentifier";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 1;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE199168 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::StringID>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "skeletonName";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2800000002;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE199170 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_uint32_t(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "rigGraphIndex";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x3800000003;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE199178 = v22;
    __cxa_guard_release(&qword_1EE1990E8);
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE199168;
  *(this + 9) = re::internal::defaultConstruct<re::MeshRigGraphIndex>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshRigGraphIndex>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshRigGraphIndex>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshRigGraphIndex>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v23 = v25;
}

void re::internal::defaultConstruct<re::MeshRigGraphIndex>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = &str_67;
  *(a3 + 24) = 0;
  *(a3 + 32) = &str_67;
  *(a3 + 40) = 0;
  *(a3 + 48) = &str_67;
  *(a3 + 56) = 0;
}

void re::internal::defaultDestruct<re::MeshRigGraphIndex>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 40));
  re::StringID::destroyString((a3 + 24));

  re::StringID::destroyString((a3 + 8));
}

uint64_t re::internal::defaultConstructV2<re::MeshRigGraphIndex>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = &str_67;
  *(result + 24) = 0;
  *(result + 32) = &str_67;
  *(result + 40) = 0;
  *(result + 48) = &str_67;
  *(result + 56) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::MeshRigGraphIndex>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 40));
  re::StringID::destroyString((a1 + 24));

  re::StringID::destroyString((a1 + 8));
}

void re::introspect_RigGraphBindNodeType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1990F8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE199100, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199100))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1992B0, "RigGraphBindNodeType", 1, 1, 1, 1);
      qword_1EE1992B0 = &unk_1F5D0C658;
      qword_1EE1992F0 = &re::introspect_RigGraphBindNodeType(BOOL)::enumTable;
      dword_1EE1992C0 = 9;
      __cxa_guard_release(&qword_1EE199100);
    }

    if (_MergedGlobals_90)
    {
      break;
    }

    _MergedGlobals_90 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1992B0, a2);
    v35 = 0xA871E7EADD22D22ELL;
    v36 = "RigGraphBindNodeType";
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
      v6 = qword_1EE1992F0;
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
      xmmword_1EE1992D0 = v37;
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
    if (__cxa_guard_acquire(&qword_1EE1990F8))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Scene";
      qword_1EE199180 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "Entity";
      qword_1EE199188 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "EcsService";
      qword_1EE199190 = v33;
      __cxa_guard_release(&qword_1EE1990F8);
    }
  }
}

void *re::allocInfo_RigGraphBoundInputParameterData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE199108, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199108))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE199418, "RigGraphBoundInputParameterData");
    __cxa_guard_release(&qword_1EE199108);
  }

  return &unk_1EE199418;
}

void re::initInfo_RigGraphBoundInputParameterData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v27[0] = 0x24087D919F4A9292;
  v27[1] = "RigGraphBoundInputParameterData";
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  *(this + 2) = v28;
  if ((atomic_load_explicit(&qword_1EE199110, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199110))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "name";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1991D0 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::StringID>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "bindingPath";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x1000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1991D8 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_uint32_t(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "rigGraphIndex";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2000000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1991E0 = v18;
    v19 = re::introspectionAllocator();
    v20 = v19;
    v21 = qword_1EE1990D8;
    if (!qword_1EE1990D8)
    {
      v21 = re::allocInfo_RigGraphBoundInputParameterDataV1(v19);
      qword_1EE1990D8 = v21;
      re::initInfo_RigGraphBoundInputParameterDataV1(v21, v22, v23, v24);
    }

    v25 = (*(*v20 + 32))(v20, 64, 8);
    *v25 = 6;
    *(v25 + 8) = 2;
    *(v25 + 16) = v21;
    *(v25 + 24) = 0;
    *(v25 + 32) = re::rigGraphBoundInputParameterDataUpgradeV1ToV2;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    qword_1EE1991E8 = v25;
    __cxa_guard_release(&qword_1EE199110);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1991D0;
  *(this + 9) = re::internal::defaultConstruct<re::RigGraphBoundInputParameterData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigGraphBoundInputParameterData>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigGraphBoundInputParameterData>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigGraphBoundInputParameterData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v26 = v28;
}

uint64_t re::rigGraphBoundInputParameterDataUpgradeV1ToV2(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  re::DynamicString::find(&v15, &v17, "scene://", 8, 0);
  if (v15 != 1)
  {
    re::DynamicString::find(&v14, &v17, "entity://", 9, 0);
    if (v14 != 1)
    {
      re::DynamicString::find(&v13, &v17, "service://", 10, 0);
      if (v13 != 1)
      {
        v6 = *(a2 + 16);
        if (v6 <= 2)
        {
          v7 = off_1E871B288[v6];
          v8 = strlen(v7);
          re::DynamicString::insert(&v17, 0, v7, v8);
        }
      }
    }
  }

  v9 = re::StringID::operator=(a3, a2);
  if (v18)
  {
    v10 = *&v19[7];
  }

  else
  {
    v10 = v19;
  }

  v15 = 0;
  v16 = &str_67;
  v11 = re::StringID::operator=((a3 + 16), &v15);
  if (v15)
  {
    if (v15)
    {
    }
  }

  *(a3 + 32) = *(a2 + 40);
  if (v17 && (v18 & 1) != 0)
  {
    (*(*v17 + 40))();
  }

  return 1;
}

re::StringID *re::internal::defaultConstruct<re::RigGraphBoundInputParameterData>(re::StringID *a1, uint64_t a2, _DWORD *a3)
{
  re::StringID::invalid(a3);
  result = re::StringID::invalid((a3 + 4));
  a3[8] = 0;
  return result;
}

void re::internal::defaultDestruct<re::RigGraphBoundInputParameterData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 16));

  re::StringID::destroyString(a3);
}

re::StringID *re::internal::defaultConstructV2<re::RigGraphBoundInputParameterData>(re::StringID *a1)
{
  re::StringID::invalid(a1);
  result = re::StringID::invalid((a1 + 16));
  *(a1 + 8) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::RigGraphBoundInputParameterData>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 16));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_RigGraphAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE199120, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199120))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1994A8, "RigGraphAssetData");
    __cxa_guard_release(&qword_1EE199120);
  }

  return &unk_1EE1994A8;
}

void re::initInfo_RigGraphAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v19[0] = 0xFBB5838EDEC9EC38;
  v19[1] = "RigGraphAssetData";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE199128, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199128))
  {
    v7 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::RigGraphDefinition>>::get(v7, v8, v9, v10, v11, v12);
    v13 = (*(*v7 + 32))(v7, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "rigGraphDefinitions";
    *(v13 + 16) = &qword_1EE1991F0;
    *(v13 + 24) = 0;
    *(v13 + 32) = 1;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE199198 = v13;
    v14 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::MeshRigGraphIndex>>::get(v14);
    v15 = (*(*v14 + 32))(v14, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "meshRigGraphs";
    *(v15 + 16) = &qword_1EE199230;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x2800000002;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1991A0 = v15;
    v16 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::RigGraphBoundInputParameterData>>::get(v16);
    v17 = (*(*v16 + 32))(v16, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "boundInputParameters";
    *(v17 + 16) = &qword_1EE199270;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x5000000003;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1991A8 = v17;
    __cxa_guard_release(&qword_1EE199128);
  }

  *(this + 2) = 0x7800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE199198;
  *(this + 9) = re::internal::defaultConstruct<re::RigGraphAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigGraphAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigGraphAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigGraphAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v18 = v20;
}

void re::IntrospectionInfo<re::DynamicArray<re::RigGraphDefinition>>::get(uint64_t a1, BOOL a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  if ((atomic_load_explicit(&qword_1EE199150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199150))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1991F0);
    qword_1EE1991F0 = &unk_1F5CC7D80;
    __cxa_guard_release(&qword_1EE199150);
  }

  if ((byte_1EE1990C1 & 1) == 0)
  {
    v6 = re::introspect_RigGraphDefinition(1, a2, a3, a4, a5, a6);
    if ((byte_1EE1990C1 & 1) == 0)
    {
      v7 = v6;
      byte_1EE1990C1 = 1;
      v8 = *(v6 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1991F0, 0);
      qword_1EE199200 = 0x2800000003;
      dword_1EE199208 = v8;
      word_1EE19920C = 0;
      *&xmmword_1EE199210 = 0;
      *(&xmmword_1EE199210 + 1) = 0xFFFFFFFFLL;
      qword_1EE199220 = v7;
      unk_1EE199228 = 0;
      qword_1EE1991F0 = &unk_1F5CC7D80;
      re::IntrospectionRegistry::add(v9, v10);
      re::getPrettyTypeName(&v18, &qword_1EE1991F0);
      if (v19)
      {
        v11 = *&v20[7];
      }

      else
      {
        v11 = v20;
      }

      if (v18 && (v19 & 1) != 0)
      {
        (*(*v18 + 40))();
      }

      v15 = *(v7 + 32);
      if (v22)
      {
        v14 = v22;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v21);
        re::TypeBuilder::TypeBuilder(&v18, v21);
        v17 = v15;
        re::TypeBuilder::beginListType(&v18, &v16, 1, 0x28uLL, 8uLL, &v17);
        re::TypeBuilder::setConstructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v18, 1);
        re::TypeBuilder::setListAccessors(&v18, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v18, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v18, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v18, v13);
        re::StackScratchAllocator::~StackScratchAllocator(v21);
      }

      xmmword_1EE199210 = v14;
      if (v16)
      {
        if (v16)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshRigGraphIndex>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE199158, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE199158);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE199230);
      qword_1EE199230 = &unk_1F5CC7E18;
      __cxa_guard_release(&qword_1EE199158);
    }
  }

  if ((byte_1EE1990C2 & 1) == 0)
  {
    v1 = qword_1EE1990F0;
    if (qword_1EE1990F0 || (v1 = re::allocInfo_MeshRigGraphIndex(a1), qword_1EE1990F0 = v1, re::initInfo_MeshRigGraphIndex(v1, v2, v3, v4), (byte_1EE1990C2 & 1) == 0))
    {
      byte_1EE1990C2 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE199230, 0);
      qword_1EE199240 = 0x2800000003;
      dword_1EE199248 = v5;
      word_1EE19924C = 0;
      *&xmmword_1EE199250 = 0;
      *(&xmmword_1EE199250 + 1) = 0xFFFFFFFFLL;
      qword_1EE199260 = v1;
      unk_1EE199268 = 0;
      qword_1EE199230 = &unk_1F5CC7E18;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE199230);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshRigGraphIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshRigGraphIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshRigGraphIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshRigGraphIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshRigGraphIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshRigGraphIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshRigGraphIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshRigGraphIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE199250 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::RigGraphBoundInputParameterData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE199160, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE199160);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE199270);
      qword_1EE199270 = &unk_1F5CC7EB0;
      __cxa_guard_release(&qword_1EE199160);
    }
  }

  if ((byte_1EE1990C3 & 1) == 0)
  {
    v1 = qword_1EE199118;
    if (qword_1EE199118 || (v1 = re::allocInfo_RigGraphBoundInputParameterData(a1), qword_1EE199118 = v1, re::initInfo_RigGraphBoundInputParameterData(v1, v2, v3, v4), (byte_1EE1990C3 & 1) == 0))
    {
      byte_1EE1990C3 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE199270, 0);
      qword_1EE199280 = 0x2800000003;
      dword_1EE199288 = v5;
      word_1EE19928C = 0;
      *&xmmword_1EE199290 = 0;
      *(&xmmword_1EE199290 + 1) = 0xFFFFFFFFLL;
      qword_1EE1992A0 = v1;
      unk_1EE1992A8 = 0;
      qword_1EE199270 = &unk_1F5CC7EB0;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE199270);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphBoundInputParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphBoundInputParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphBoundInputParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphBoundInputParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphBoundInputParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphBoundInputParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphBoundInputParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphBoundInputParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE199290 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::RigGraphAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::RigGraphAssetData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigGraphBoundInputParameterData>::deinit(a3 + 80);
  re::DynamicArray<re::MeshRigGraphIndex>::deinit(a3 + 40);

  return re::DynamicArray<re::RigGraphDefinition>::deinit(a3);
}

double re::internal::defaultConstructV2<re::RigGraphAssetData>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::RigGraphAssetData>(uint64_t a1)
{
  re::DynamicArray<re::RigGraphBoundInputParameterData>::deinit(a1 + 80);
  re::DynamicArray<re::MeshRigGraphIndex>::deinit(a1 + 40);

  return re::DynamicArray<re::RigGraphDefinition>::deinit(a1);
}

void *re::allocInfo_RigGraphAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE199138, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199138))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE199538, "RigGraphAsset");
    __cxa_guard_release(&qword_1EE199138);
  }

  return &unk_1EE199538;
}

void re::initInfo_RigGraphAsset(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v15[0] = 0x4D22379AE5FD16A4;
  v15[1] = "RigGraphAsset";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE199148, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE199148))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE199130;
    if (!qword_1EE199130)
    {
      v9 = re::allocInfo_RigGraphAssetData(v7);
      qword_1EE199130 = v9;
      re::initInfo_RigGraphAssetData(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "rigGraphAssetData";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 1;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE199140 = v13;
    __cxa_guard_release(&qword_1EE199148);
  }

  *(this + 2) = 0xA000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE199140;
  *(this + 9) = re::internal::defaultConstruct<re::RigGraphAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RigGraphAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::RigGraphAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::RigGraphAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v14 = v16;
}

double re::internal::defaultConstruct<re::RigGraphAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *(a3 + 152) = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::RigGraphAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigGraphNode>::deinit(a3 + 120);
  re::DynamicArray<re::RigGraphBoundInputParameterData>::deinit(a3 + 80);
  re::DynamicArray<re::MeshRigGraphIndex>::deinit(a3 + 40);

  return re::DynamicArray<re::RigGraphDefinition>::deinit(a3);
}

double re::internal::defaultConstructV2<re::RigGraphAsset>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 152) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::RigGraphAsset>(uint64_t a1)
{
  re::DynamicArray<re::RigGraphNode>::deinit(a1 + 120);
  re::DynamicArray<re::RigGraphBoundInputParameterData>::deinit(a1 + 80);
  re::DynamicArray<re::MeshRigGraphIndex>::deinit(a1 + 40);

  return re::DynamicArray<re::RigGraphDefinition>::deinit(a1);
}

void *re::DynamicArray<re::RigGraphBoundInputParameterData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigGraphBoundInputParameterData>::setCapacity(v5, a2);
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
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
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
        v10 = &v8[5 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          LOBYTE(v12) = v8[2];
          v11[2] = v11[2] & 0xFFFFFFFFFFFFFFFELL | v8[2] & 1;
          v11[2] = v8[2] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[3] = v8[3];
          v8[3] = &str_67;
          v8[2] = 0;
          *(v11 + 8) = *(v8 + 8);
          re::StringID::destroyString((v8 + 2));
          re::StringID::destroyString(v8);
          v11 += 5;
          v8 += 5;
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

size_t re::internal::RetargetRigGraphAssetBuilder::appendParentNamesAndIds(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v24 = a2 + 24;
  v6 = a3 + 24;
  do
  {
    v7 = *(a1 + 296);
    result = strlen(v7);
    v9 = result;
    v10 = *(a2 + 40);
    v11 = *(a2 + 8);
    if (5 * v11 < v10 + 1)
    {
      result = re::BucketArray<re::StringSlice,5ul>::setBucketsCapacity(a2, (v10 + 5) / 5);
      v11 = *(a2 + 8);
    }

    if (v11 <= v10 / 5)
    {
      v25 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v19 = MEMORY[0x1E69E9C10];
      v26 = 136315906;
      v27 = "operator[]";
      v28 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v29 = 858;
      v30 = 2048;
      v31 = v10 / 5;
      v32 = 2048;
      v33 = v11;
      _os_log_send_and_compose_impl(v20, &v25, &v34, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
      _os_crash_msg();
      __break(1u);
LABEL_19:
      v25 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      v21 = MEMORY[0x1E69E9C10];
      v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v26 = 136315906;
      v27 = "operator[]";
      v28 = 1024;
      if (v22)
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      v29 = 858;
      v30 = 2048;
      v31 = v9;
      v32 = 2048;
      v33 = v7;
      _os_log_send_and_compose_impl(v23, &v25, &v34, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v24);
      _os_crash_msg();
      __break(1u);
    }

    v12 = *(a2 + 32);
    if (*(a2 + 16))
    {
      v12 = v24;
    }

    v13 = *(v12 + 8 * (v10 / 5));
    ++*(a2 + 40);
    ++*(a2 + 48);
    v14 = (v13 + 16 * (v10 % 5));
    *v14 = v7;
    v14[1] = v9;
    v15 = *(a1 + 312);
    v16 = *(a3 + 40);
    v7 = *(a3 + 8);
    if (5 * v7 < v16 + 1)
    {
      result = re::BucketArray<unsigned long long,5ul>::setBucketsCapacity(a3, (v16 + 5) / 5);
      v7 = *(a3 + 8);
    }

    v9 = v16 / 5;
    if (v7 <= v16 / 5)
    {
      goto LABEL_19;
    }

    v17 = *(a3 + 32);
    if (*(a3 + 16))
    {
      v17 = v6;
    }

    v18 = *(v17 + 8 * v9);
    ++*(a3 + 40);
    ++*(a3 + 48);
    *(v18 + 8 * (v16 % 5)) = v15;
    a1 = *(a1 + 32);
  }

  while (a1 && (*(a1 + 304) & 0x80) == 0);
  return result;
}

unint64_t re::BucketArray<unsigned long long,5ul>::operator[](uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v4);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
LABEL_8:
    v13 = 0;
    memset(v22, 0, sizeof(v22));
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

    v17 = 858;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 / 5;
  v3 = *(a1 + 8);
  if (v3 <= a2 / 5)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  return *(v5 + 8 * v2) + 8 * (a2 % 5);
}

void *re::BucketArray<re::StringSlice,5ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::StringSlice,5ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::StringSlice,5ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (5 * a2 > *(result + 5))
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 80, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t *re::BucketArray<unsigned long long,5ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<unsigned long long,5ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<unsigned long long,5ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (5 * a2 > result[5])
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 40, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

unint64_t re::BucketSlice<re::StringSlice,5ul>::operator[](void *a1, unint64_t a2)
{
  v2 = a1[2];
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 296, a2, v2);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v6, v8);
    __break(1u);
  }

  else
  {
    v3 = a2 / 5;
    v4 = a1[1];
    if (v4 > a2 / 5)
    {
      return *(*a1 + 8 * v3) + 16 * (a2 % 5);
    }
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v3, v4);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v7, v9);
  __break(1u);
  return result;
}

uint64_t re::BucketArray<unsigned long long,5ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<unsigned long long,5ul>::operator[](a1, i);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::BucketArray<re::StringSlice,5ul>::deinit(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      if (*(a1 + 8) <= i / 5)
      {
        v7 = i / 5;
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

        v15 = 858;
        v16 = 2048;
        v17 = v7;
        v18 = 2048;
        v19 = v3;
        _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
        _os_crash_msg();
        __break(1u);
      }
    }
  }

  else if (!v3)
  {
    goto LABEL_8;
  }

  do
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  while (*(a1 + 8));
LABEL_8:
  result = *a1;
  if (*a1)
  {
    v6 = *(a1 + 16);
    if ((v6 & 1) == 0)
    {
      result = (*(*result + 40))(result, *(a1 + 32));
      v6 = *(a1 + 16);
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = (v6 | 1) + 2;
  }

  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::internal::RigGraphDefinitionBuilder::RigGraphDefinitionBuilder(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  re::StringID::invalid(a1);
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
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
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  v6 = re::StringID::operator=(a1, a3);
  v6[12] = a2;
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(v6 + 12, 0);
  ++*(a1 + 120);
  *(a1 + 136) = a2;
  re::DynamicArray<re::RigGraphConnection>::setCapacity((a1 + 136), 0);
  ++*(a1 + 160);
  *(a1 + 16) = a2;
  re::DynamicArray<re::RigGraphParameterProxy>::setCapacity((a1 + 16), 0);
  ++*(a1 + 40);
  *(a1 + 56) = a2;
  re::DynamicArray<re::RigGraphParameterProxy>::setCapacity((a1 + 56), 0);
  ++*(a1 + 80);
  return a1;
}

uint64_t re::RigGraphDefinition::RigGraphDefinition(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *result = *result & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *result = *a2 & 0xFFFFFFFFFFFFFFFELL | v2 & 1;
  *(result + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  *(result + 48) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  v3 = a2[3];
  *(result + 16) = a2[2];
  *(result + 24) = v3;
  a2[2] = 0;
  a2[3] = 0;
  v4 = *(result + 32);
  *(result + 32) = a2[4];
  a2[4] = v4;
  v5 = *(result + 48);
  *(result + 48) = a2[6];
  a2[6] = v5;
  ++*(a2 + 10);
  ++*(result + 40);
  *(result + 88) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 56) = 0;
  *(result + 80) = 0;
  v6 = a2[8];
  *(result + 56) = a2[7];
  *(result + 64) = v6;
  a2[7] = 0;
  a2[8] = 0;
  v7 = *(result + 72);
  *(result + 72) = a2[9];
  a2[9] = v7;
  v8 = *(result + 88);
  *(result + 88) = a2[11];
  a2[11] = v8;
  ++*(a2 + 20);
  ++*(result + 80);
  *(result + 128) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 96) = 0;
  *(result + 120) = 0;
  v9 = a2[13];
  *(result + 96) = a2[12];
  *(result + 104) = v9;
  a2[12] = 0;
  a2[13] = 0;
  v10 = *(result + 112);
  *(result + 112) = a2[14];
  a2[14] = v10;
  v11 = *(result + 128);
  *(result + 128) = a2[16];
  a2[16] = v11;
  ++*(a2 + 30);
  ++*(result + 120);
  *(result + 168) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 136) = 0;
  *(result + 160) = 0;
  v12 = a2[18];
  *(result + 136) = a2[17];
  *(result + 144) = v12;
  a2[17] = 0;
  a2[18] = 0;
  v13 = *(result + 152);
  *(result + 152) = a2[19];
  a2[19] = v13;
  v14 = *(result + 168);
  *(result + 168) = a2[21];
  a2[21] = v14;
  ++*(a2 + 40);
  ++*(result + 160);
  *(result + 208) = 0;
  *(result + 184) = 0;
  *(result + 192) = 0;
  *(result + 176) = 0;
  *(result + 200) = 0;
  v15 = a2[23];
  *(result + 176) = a2[22];
  *(result + 184) = v15;
  a2[22] = 0;
  a2[23] = 0;
  v16 = *(result + 192);
  *(result + 192) = a2[24];
  a2[24] = v16;
  v17 = *(result + 208);
  *(result + 208) = a2[26];
  a2[26] = v17;
  ++*(a2 + 50);
  ++*(result + 200);
  return result;
}

void *re::DynamicArray<re::RigGraphDefinition>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigGraphDefinition>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xD8uLL))
        {
          v2 = 216 * a2;
          result = (*(*result + 32))(result, 216 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 216, a2);
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
        v10 = 0;
        v11 = 216 * v9;
        do
        {
          re::RigGraphDefinition::RigGraphDefinition(&v7[v10 / 8], (v8 + v10));
          re::DynamicArray<re::RigGraphInputValue>::deinit(v8 + v10 + 176);
          re::DynamicArray<re::RigGraphConnection>::deinit((v8 + v10 + 136));
          re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v8 + v10 + 96);
          re::DynamicArray<re::RigGraphParameterProxy>::deinit(v8 + v10 + 56);
          re::DynamicArray<re::RigGraphParameterProxy>::deinit(v8 + v10 + 16);
          re::StringID::destroyString((v8 + v10));
          v10 += 216;
        }

        while (v11 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::MeshRigGraphIndex>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshRigGraphIndex>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 58)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 64, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v18, v20);
          __break(1u);
        }

        else
        {
          v2 = a2 << 6;
          result = (*(*result + 32))(result, a2 << 6, 8);
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
        v10 = v8 + (v9 << 6);
        v11 = v7;
        do
        {
          *v11 = *v8;
          v13 = (v8 + 8);
          v12 = *(v8 + 8);
          v11[1] = v11[1] & 0xFFFFFFFFFFFFFFFELL | *(v8 + 8) & 1;
          v11[1] = *(v8 + 8) & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[2] = *(v8 + 16);
          *(v8 + 16) = &str_67;
          *(v8 + 8) = 0;
          v15 = (v8 + 24);
          v14 = *(v8 + 24);
          v11[3] = v11[3] & 0xFFFFFFFFFFFFFFFELL | *(v8 + 24) & 1;
          v11[3] = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
          v11[4] = *(v8 + 32);
          *(v8 + 32) = &str_67;
          *(v8 + 24) = 0;
          v17 = *(v8 + 40);
          v16 = v8 + 40;
          v11[5] = v11[5] & 0xFFFFFFFFFFFFFFFELL | v17 & 1;
          v11[5] = *v16 & 0xFFFFFFFFFFFFFFFELL | v17 & 1;
          v11[6] = *(v16 + 8);
          *v16 = 0;
          *(v16 + 8) = &str_67;
          *(v11 + 14) = *(v16 + 16);
          re::StringID::destroyString(v16);
          re::StringID::destroyString(v15);
          re::StringID::destroyString(v13);
          v11 += 8;
          v8 = v16 + 24;
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

uint64_t std::__function::__func<re::RigGraphAsset::createAutoRetargetBipedToBipedRigGraphAsset(re::ecs2::Entity const&,re::ecs2::Entity const&,unsigned long,int const*,simd_quatf const*)::$_0,std::allocator<re::RigGraphAsset::createAutoRetargetBipedToBipedRigGraphAsset(re::ecs2::Entity const&,re::ecs2::Entity const&,unsigned long,int const*,simd_quatf const*)::$_0>,void ()(re::RigGraphAsset*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20makeDefaultUniquePtrINS2_13RigGraphAssetEJEEENS_10unique_ptrIT_NS_8functionIFvPS6_EEEEEDpOT0_EUlPS4_E_NS_9allocatorISG_EEFvSF_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *re::DynamicArray<re::RigGraphNode>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigGraphNode>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xC8uLL))
        {
          v2 = 200 * a2;
          result = (*(*result + 32))(result, 200 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 200, a2);
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
        v10 = 200 * v9;
        v11 = v7;
        do
        {
          re::RigGraphNode::RigGraphNode(v11, v8);
          re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(v8 + 160);
          re::DynamicArray<re::StringID>::deinit(v8 + 120);
          re::DynamicArray<re::RigGraphNodeChild>::deinit(v8 + 80);
          re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(v8 + 40);
          re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(v8);
          v8 += 200;
          v11 += 200;
          v10 -= 200;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigGraphDefinition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigGraphDefinition>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigGraphDefinition>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigGraphDefinition>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigGraphDefinition>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigGraphDefinition>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RigGraphDefinition>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigGraphDefinition>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RigGraphDefinition>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigGraphDefinition>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v20 = 0;
  v18 = 0u;
  memset(v19, 0, sizeof(v19));
  v17 = 0u;
  memset(v16, 0, sizeof(v16));
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  re::StringID::invalid(&v11);
  v12 = 0uLL;
  DWORD2(v13) = 0;
  *&v13 = 0;
  v20 = 0;
  v14 = 0u;
  v15 = 0u;
  LODWORD(v16[0]) = 0;
  memset(v16 + 8, 0, 36);
  v17 = 0u;
  v18 = 0u;
  memset(v19 + 8, 0, 36);
  LODWORD(v19[0]) = 0;
  re::DynamicArray<re::RigGraphDefinition>::add(a4, &v11);
  re::DynamicArray<re::RigGraphInputValue>::deinit(&v19[1]);
  re::DynamicArray<re::RigGraphConnection>::deinit(&v17 + 1);
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v16[1]);
  re::DynamicArray<re::RigGraphParameterProxy>::deinit(&v14 + 8);
  v8 = re::DynamicArray<re::RigGraphParameterProxy>::deinit(&v12);
  if (v11)
  {
    if (v11)
    {
    }
  }

  v9 = (*(a4 + 32) + 216 * *(a4 + 16) - 216);
  re::introspectionInitElement(a2, a3, a1[6], v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::RigGraphDefinition>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 216 * a3;
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

  return *(a2 + 32) + 216 * a3;
}

void re::DynamicArray<re::RigGraphDefinition>::resize(re::StringID *result, unint64_t a2)
{
  v4 = *(result + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 216 * a2;
    v9 = a2;
    do
    {
      v10 = (*(result + 4) + v8);
      re::DynamicArray<re::RigGraphInputValue>::deinit(v10 + 176);
      re::DynamicArray<re::RigGraphConnection>::deinit(v10 + 17);
      re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v10 + 96);
      re::DynamicArray<re::RigGraphParameterProxy>::deinit(v10 + 56);
      re::DynamicArray<re::RigGraphParameterProxy>::deinit(v10 + 16);
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 216;
    }

    while (v9 < *(result + 2));
  }

  else
  {
    if (*(result + 1) < a2)
    {
      re::DynamicArray<re::RigGraphDefinition>::setCapacity(result, a2);
      v4 = *(result + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 216 * v4 + 208;
      do
      {
        v7 = (*(result + 4) + v6);
        re::StringID::invalid((v7 - 26));
        *(v7 - 24) = 0;
        *(v7 - 23) = 0;
        *(v7 - 42) = 0;
        *(v7 - 22) = 0;
        *v7 = 0;
        *(v7 - 10) = 0u;
        *(v7 - 9) = 0u;
        *(v7 - 32) = 0;
        *(v7 - 15) = 0u;
        *(v7 - 13) = 0u;
        *(v7 - 22) = 0;
        *(v7 - 5) = 0u;
        *(v7 - 4) = 0u;
        *(v7 - 12) = 0;
        *(v7 - 5) = 0u;
        *(v7 - 3) = 0u;
        v6 += 216;
        *(v7 - 2) = 0;
        --v5;
      }

      while (v5);
    }
  }

  *(result + 2) = a2;
  ++*(result + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigGraphDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigGraphDefinition>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigGraphDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = 0;
      v10 = *(a1 + 32);
      v11 = 216 * v8;
      do
      {
        re::DynamicArray<re::RigGraphInputValue>::deinit(v10 + v9 + 176);
        re::DynamicArray<re::RigGraphConnection>::deinit((v10 + v9 + 136));
        re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(v10 + v9 + 96);
        re::DynamicArray<re::RigGraphParameterProxy>::deinit(v10 + v9 + 56);
        re::DynamicArray<re::RigGraphParameterProxy>::deinit(v10 + v9 + 16);
        re::StringID::destroyString((v10 + v9));
        v9 += 216;
      }

      while (v11 != v9);
    }
  }

  else
  {
    re::DynamicArray<re::RigGraphDefinition>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigGraphDefinition>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::RigGraphDefinition>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v17);
    re::TypeInfo::TypeInfo(v16, &v18);
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = 216 * v13;
      do
      {
        re::TypeInfo::destruct(v16, v14, a3, 0);
        re::TypeInfo::construct(v16, v14, a3, 0);
        v14 += 216;
        v15 -= 216;
      }

      while (v15);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 216 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 216 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphDefinition>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MeshRigGraphIndex>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MeshRigGraphIndex>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MeshRigGraphIndex>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MeshRigGraphIndex>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MeshRigGraphIndex>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MeshRigGraphIndex>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MeshRigGraphIndex>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MeshRigGraphIndex>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MeshRigGraphIndex>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MeshRigGraphIndex>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  v15 = 0;
  v17 = 0;
  v11 = 0u;
  v13 = 0;
  v12 = &str_67;
  v14 = &str_67;
  v16 = &str_67;
  v8 = re::DynamicArray<re::MeshRigGraphIndex>::add(a4, &v11);
  if (v15)
  {
  }

  if (v13)
  {
  }

  if (BYTE8(v11))
  {
  }

  v9 = (*(a4 + 4) + (*(a4 + 2) << 6) - 64);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::MeshRigGraphIndex>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + (a3 << 6);
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

  return *(a2 + 32) + (a3 << 6);
}

void re::DynamicArray<re::MeshRigGraphIndex>::resize(void *result, unint64_t a2)
{
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = (a2 << 6) | 0x28;
    v9 = a2;
    do
    {
      v10 = (result[4] + v8);
      re::StringID::destroyString(v10);
      re::StringID::destroyString((v10 - 16));
      re::StringID::destroyString((v10 - 32));
      ++v9;
      v8 += 64;
    }

    while (v9 < result[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      re::DynamicArray<re::MeshRigGraphIndex>::setCapacity(result, a2);
      v4 = result[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = (v4 << 6) | 0x20;
      do
      {
        v7 = result[4] + v6;
        *(v7 - 32) = 0;
        *(v7 - 24) = 0;
        *(v7 - 16) = &str_67;
        *(v7 - 8) = 0;
        *v7 = &str_67;
        *(v7 + 8) = 0;
        *(v7 + 16) = &str_67;
        *(v7 + 24) = 0;
        v6 += 64;
        --v5;
      }

      while (v5);
    }
  }

  result[2] = a2;
  ++*(result + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MeshRigGraphIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MeshRigGraphIndex>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MeshRigGraphIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = v8 << 6;
      v10 = (*(a1 + 32) + 40);
      do
      {
        re::StringID::destroyString(v10);
        re::StringID::destroyString((v10 - 16));
        re::StringID::destroyString((v10 - 32));
        v10 = (v10 + 64);
        v9 -= 64;
      }

      while (v9);
    }
  }

  else
  {
    re::DynamicArray<re::MeshRigGraphIndex>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MeshRigGraphIndex>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::MeshRigGraphIndex>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = v12 << 6;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 64;
        v14 -= 64;
      }

      while (v14);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshRigGraphIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + (a2 << 6);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshRigGraphIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshRigGraphIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + (v5 << 6);
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshRigGraphIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RigGraphBoundInputParameterData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigGraphBoundInputParameterData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigGraphBoundInputParameterData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigGraphBoundInputParameterData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigGraphBoundInputParameterData>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigGraphBoundInputParameterData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RigGraphBoundInputParameterData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigGraphBoundInputParameterData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RigGraphBoundInputParameterData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigGraphBoundInputParameterData>::addElement(re::Allocator **a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  re::StringID::invalid(&v11);
  re::StringID::invalid(&v12);
  LODWORD(v13) = 0;
  v8 = re::DynamicArray<re::RigGraphBoundInputParameterData>::add(a4, &v11);
  if (v12)
  {
    if (v12)
    {
    }
  }

  *&v12 = 0;
  *(&v12 + 1) = &str_67;
  if (v11)
  {
    if (v11)
    {
    }
  }

  v9 = (*(a4 + 4) + 40 * *(a4 + 2) - 40);
  re::introspectionInitElement(a2, a3, a1[6], v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::RigGraphBoundInputParameterData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 40 * a3;
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

  return *(a2 + 32) + 40 * a3;
}

void re::DynamicArray<re::RigGraphBoundInputParameterData>::resize(re::StringID *result, unint64_t a2)
{
  v4 = *(result + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 40 * a2;
    v9 = a2;
    do
    {
      v10 = *(result + 4) + v8;
      re::StringID::destroyString((v10 + 16));
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 40;
    }

    while (v9 < *(result + 2));
  }

  else
  {
    if (*(result + 1) < a2)
    {
      re::DynamicArray<re::RigGraphBoundInputParameterData>::setCapacity(result, a2);
      v4 = *(result + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 40 * v4;
      do
      {
        v7 = (*(result + 4) + v6);
        re::StringID::invalid(v7);
        re::StringID::invalid((v7 + 4));
        v7[8] = 0;
        v6 += 40;
        --v5;
      }

      while (v5);
    }
  }

  *(result + 2) = a2;
  ++*(result + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigGraphBoundInputParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigGraphBoundInputParameterData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigGraphBoundInputParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 40 * v8;
      do
      {
        re::StringID::destroyString((v9 + 16));
        re::StringID::destroyString(v9);
        v9 += 40;
        v10 -= 40;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::RigGraphBoundInputParameterData>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigGraphBoundInputParameterData>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::RigGraphBoundInputParameterData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 40 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 40;
        v14 -= 40;
      }

      while (v14);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphBoundInputParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 40 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphBoundInputParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphBoundInputParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 40 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphBoundInputParameterData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::MaterialDefinitionAsset::~MaterialDefinitionAsset(re::MaterialDefinitionAsset *this)
{
  *this = &unk_1F5CC8128;
  v2 = *(this + 278);
  if (v2)
  {
    v3 = re::globalAllocators(this)[2];
    re::MaterialDefinitionFile::~MaterialDefinitionFile(v2);
    (*(*v3 + 40))(v3, v2);
  }

  re::FixedArray<re::DynamicString>::deinit(this + 309);
  re::FixedArray<re::DynamicString>::deinit(this + 306);
  re::FixedArray<re::DynamicString>::deinit(this + 303);
  re::FixedArray<re::DynamicString>::deinit(this + 300);
  re::FixedArray<re::DynamicString>::deinit(this + 297);
  re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 291);
  re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(this + 285);
  re::DynamicArray<unsigned long>::deinit(this + 2232);
  re::MaterialDefinitionBuilder::~MaterialDefinitionBuilder((this + 776));
  re::AssetHandle::~AssetHandle((this + 752));
  v4 = *(this + 93);
  if (v4)
  {

    *(this + 93) = 0;
  }

  re::MaterialDefinitionFile::~MaterialDefinitionFile((this + 8));
}

{
  re::MaterialDefinitionAsset::~MaterialDefinitionAsset(this);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::MaterialDefinitionAsset::assetType(re::MaterialDefinitionAsset *this)
{
  {
    re::MaterialDefinitionAsset::assetType(void)::type = "MaterialDefinition";
    qword_1EE1C67E0 = 0;
    re::AssetType::generateCompiledExtension(&re::MaterialDefinitionAsset::assetType(void)::type);
  }

  return &re::MaterialDefinitionAsset::assetType(void)::type;
}

re *re::MaterialDefinitionAsset::setMergedFile(re *this, re::MaterialDefinitionFile *a2)
{
  v2 = *(this + 278);
  if (v2 != a2)
  {
    v4 = this;
    if (v2)
    {
      v5 = re::globalAllocators(this)[2];
      re::MaterialDefinitionFile::~MaterialDefinitionFile(v2);
      this = (*(*v5 + 40))(v5, v2);
    }

    *(v4 + 278) = a2;
  }

  return this;
}

uint64_t re::MaterialDefinitionAsset::getOriginalConstantParameterType(re::MaterialDefinitionAsset *this, const char *a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      v3 = a2[1];
      if (v3)
      {
        v4 = a2 + 2;
        do
        {
          v2 = 31 * v2 + v3;
          v5 = *v4++;
          v3 = v5;
        }

        while (v5);
      }

      v2 &= ~0x8000000000000000;
    }
  }

  else
  {
    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = v2;
  result = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 2280, &v7);
  if (result)
  {
    return *(result + 20);
  }

  return result;
}

uint64_t *re::MaterialDefinitionAsset::tryGetOriginalColorGamut3FParameterValue@<X0>(re::MaterialDefinitionAsset *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
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

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = v4;
  result = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 2280, &v12);
  if (result && *(result + 20) == 20)
  {
    v9 = *result;
    v10 = *(result + 2);
    v11 = *(result + 16);
    *a3 = 1;
    *(a3 + 4) = v9;
    *(a3 + 16) = v11;
    *(a3 + 12) = v10;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t re::MaterialDefinitionAsset::tryGetOriginalColorGamut4FParameterValue@<X0>(re::MaterialDefinitionAsset *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
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

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v4;
  result = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 2280, &v9);
  if (result && *(result + 20) == 21)
  {
    *a3 = 1;
    *(a3 + 4) = *result;
    *(a3 + 20) = *(result + 16);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t re::MaterialDefinitionAsset::initializeParameterBindings(re::MaterialDefinitionAsset *this, re::AssetManager *a2, re::RenderManager *a3, const char *a4)
{
  v96 = *MEMORY[0x1E69E9840];
  v4 = *(this + 624);
  if (v4 > 2)
  {
    return 0;
  }

  v6 = a4;
  v7 = a3;
  v9 = *(this + 281);
  if (!v9)
  {
    v5 = 0;
LABEL_34:
    if (v4 <= 0)
    {
      FlattenedMaterialFile = re::makeFlattenedMaterialFile((this + 8), a2);
      if (!FlattenedMaterialFile)
      {
        return 1;
      }

      re::MaterialDefinitionAsset::setMergedFile(this, FlattenedMaterialFile);
      *(this + 624) = 1;
    }

    else if (v4 != 1)
    {
      goto LABEL_50;
    }

    re::parseShaderParameterData(v7, v6, *(this + 278) + 144, &v83);
    re::makeMaterialDefinitionBuilder(v7);
    v25 = v75;
    if (v75)
    {
      re::MaterialDefinitionBuilder::operator=((this + 776), &v76);
      re::AssetHandle::operator=(this + 752, (*(this + 278) + 120));
      re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator=(this + 2280, v88);
      if (v89[0])
      {
        re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(this + 2328, v89);
      }

      *(this + 624) = 2;
    }

    else
    {
      v26 = *re::assetTypesLogObjects(v24);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        if (v77)
        {
          v61 = *&v78[7];
        }

        else
        {
          v61 = v78;
        }

        *buf = 136315394;
        v91 = v6;
        v92 = 2080;
        *v93 = v61;
        _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, "Failed to prepare material definition builder '%s': %s.", buf, 0x16u);
      }
    }

    if (v75 == 1)
    {
      re::MaterialDefinitionBuilder::~MaterialDefinitionBuilder(&v76);
    }

    else if (v76 && (v77 & 1) != 0)
    {
      (*(*v76 + 40))();
    }

    re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v89);
    re::HashTable<re::WeakStringID,re::ColorConstantTable::ColorValue,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(v88);
    re::ShaderParameterTable::~ShaderParameterTable(&v83);
    if (v25)
    {
LABEL_50:
      if (v5)
      {
        return v5;
      }

      if (*(this + 624) > 2)
      {
        return 0;
      }

      re::parseTextureParameterData(v7, *(this + 278) + 144, &v75);
      v27 = *(this + 278);
      buildKeySetFromParameters<re::DynamicString>(&v83, v27 + 144);
      re::FixedArray<float>::operator=(this + 297, &v83);
      re::FixedArray<re::DynamicString>::deinit(&v83);
      buildKeySetFromParameters<re::DynamicString>(&v83, v27 + 192);
      re::FixedArray<float>::operator=(this + 300, &v83);
      v28 = re::FixedArray<re::DynamicString>::deinit(&v83);
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v29 = *(v27 + 268);
      v30 = *(v27 + 272);
      if (v30)
      {
        v31 = 0;
        v32 = *(v27 + 256);
        while (1)
        {
          v33 = *v32;
          v32 += 22;
          if (v33 < 0)
          {
            break;
          }

          if (v30 == ++v31)
          {
            LODWORD(v31) = *(v27 + 272);
            break;
          }
        }
      }

      else
      {
        LODWORD(v31) = 0;
      }

      if (v31 == v30)
      {
LABEL_70:
        re::FixedArray<float>::operator=(this + 303, &v72);
        v39 = re::FixedArray<re::DynamicString>::deinit(&v72);
        v72 = 0;
        v73 = 0;
        v74 = 0;
        v40 = *(v27 + 316);
        v41 = *(v27 + 320);
        if (v41)
        {
          v42 = 0;
          v43 = *(v27 + 304);
          while (1)
          {
            v44 = *v43;
            v43 += 40;
            if (v44 < 0)
            {
              break;
            }

            if (v41 == ++v42)
            {
              LODWORD(v42) = *(v27 + 320);
              break;
            }
          }
        }

        else
        {
          LODWORD(v42) = 0;
        }

        if (v42 == v41)
        {
LABEL_86:
          re::FixedArray<float>::operator=(this + 306, &v72);
          v47 = re::FixedArray<re::DynamicString>::deinit(&v72);
          v72 = 0;
          v73 = 0;
          v74 = 0;
          v48 = *(v27 + 364);
          v49 = *(v27 + 368);
          if (v49)
          {
            v50 = 0;
            v51 = *(v27 + 352);
            while (1)
            {
              v52 = *v51;
              v51 += 38;
              if (v52 < 0)
              {
                break;
              }

              if (v49 == ++v50)
              {
                LODWORD(v50) = *(v27 + 368);
                break;
              }
            }
          }

          else
          {
            LODWORD(v50) = 0;
          }

          if (v50 == v49)
          {
LABEL_102:
            re::FixedArray<float>::operator=(this + 309, &v72);
            re::FixedArray<re::DynamicString>::deinit(&v72);
            re::MaterialDefinitionAsset::setMergedFile(this, 0);
            re::TextureParameterTable::operator=(this + 1368, &v75);
            v55 = v81;
            if (v81)
            {
              v56 = 0;
              v57 = v80;
              while (1)
              {
                v58 = *v57;
                v57 += 22;
                if (v58 < 0)
                {
                  break;
                }

                if (v81 == ++v56)
                {
                  LODWORD(v56) = v81;
                  break;
                }
              }
            }

            else
            {
              LODWORD(v56) = 0;
            }

            if (v56 != v81)
            {
              v59 = v80;
              do
              {
                re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(this + 2328, &v59[22 * v56 + 2], &v59[22 * v56 + 10]);
                if (v81 <= v56 + 1)
                {
                  v60 = v56 + 1;
                }

                else
                {
                  v60 = v81;
                }

                v59 = v80;
                while (v60 - 1 != v56)
                {
                  LODWORD(v56) = v56 + 1;
                  if (v80[22 * v56] < 0)
                  {
                    goto LABEL_118;
                  }
                }

                LODWORD(v56) = v60;
LABEL_118:
                ;
              }

              while (v56 != v55);
            }

            *(this + 624) = 3;
            re::HashTable<re::DynamicString,re::ParameterBinding,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v79);
            re::TextureParameterTable::~TextureParameterTable(&v75);
            return 0;
          }

          v53 = 0;
          while (1)
          {
            v36 = v53;
            v37 = v73;
            if (v73 <= v53)
            {
              break;
            }

            re::DynamicString::operator=((v74 + 32 * v53), (*(v27 + 352) + 152 * v50 + 8));
            v53 = v36 + 1;
            v54 = *(v27 + 368);
            if (v54 <= v50 + 1)
            {
              v54 = v50 + 1;
            }

            while (v54 - 1 != v50)
            {
              LODWORD(v50) = v50 + 1;
              if ((*(*(v27 + 352) + 152 * v50) & 0x80000000) != 0)
              {
                goto LABEL_101;
              }
            }

            LODWORD(v50) = v54;
LABEL_101:
            if (v50 == v49)
            {
              goto LABEL_102;
            }
          }

LABEL_132:
          v82 = 0;
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          v83 = 0u;
          v68 = MEMORY[0x1E69E9C10];
          v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *buf = 136315906;
          v91 = "operator[]";
          v92 = 1024;
          if (v69)
          {
            v70 = 3;
          }

          else
          {
            v70 = 2;
          }

          *v93 = 468;
          *&v93[4] = 2048;
          *&v93[6] = v36;
          v94 = 2048;
          v95 = v37;
          _os_log_send_and_compose_impl(v70, &v82, &v83, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v71, v72);
          _os_crash_msg();
          __break(1u);
        }

        v45 = 0;
        while (1)
        {
          v36 = v45;
          v37 = v73;
          if (v73 <= v45)
          {
            break;
          }

          re::DynamicString::operator=((v74 + 32 * v45), (*(v27 + 304) + 160 * v42 + 8));
          v45 = v36 + 1;
          v46 = *(v27 + 320);
          if (v46 <= v42 + 1)
          {
            v46 = v42 + 1;
          }

          while (v46 - 1 != v42)
          {
            LODWORD(v42) = v42 + 1;
            if ((*(*(v27 + 304) + 160 * v42) & 0x80000000) != 0)
            {
              goto LABEL_85;
            }
          }

          LODWORD(v42) = v46;
LABEL_85:
          if (v42 == v41)
          {
            goto LABEL_86;
          }
        }
      }

      else
      {
        v35 = 0;
        while (1)
        {
          v36 = v35;
          v37 = v73;
          if (v73 <= v35)
          {
            break;
          }

          re::DynamicString::operator=((v74 + 32 * v35), (*(v27 + 256) + 88 * v31 + 8));
          v35 = v36 + 1;
          v38 = *(v27 + 272);
          if (v38 <= v31 + 1)
          {
            v38 = v31 + 1;
          }

          while (v38 - 1 != v31)
          {
            LODWORD(v31) = v31 + 1;
            if ((*(*(v27 + 256) + 88 * v31) & 0x80000000) != 0)
            {
              goto LABEL_69;
            }
          }

          LODWORD(v31) = v38;
LABEL_69:
          if (v31 == v30)
          {
            goto LABEL_70;
          }
        }

        v82 = 0;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v83 = 0u;
        v62 = MEMORY[0x1E69E9C10];
        v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *buf = 136315906;
        v91 = "operator[]";
        v92 = 1024;
        if (v63)
        {
          v64 = 3;
        }

        else
        {
          v64 = 2;
        }

        *v93 = 468;
        *&v93[4] = 2048;
        *&v93[6] = v36;
        v94 = 2048;
        v95 = v37;
        _os_log_send_and_compose_impl(v64, &v82, &v83, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v71, v72);
        _os_crash_msg();
        __break(1u);
      }

      v82 = 0;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      v65 = MEMORY[0x1E69E9C10];
      v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      v91 = "operator[]";
      v92 = 1024;
      if (v66)
      {
        v67 = 3;
      }

      else
      {
        v67 = 2;
      }

      *v93 = 468;
      *&v93[4] = 2048;
      *&v93[6] = v36;
      v94 = 2048;
      v95 = v37;
      _os_log_send_and_compose_impl(v67, &v82, &v83, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v71, v72);
      _os_crash_msg();
      __break(1u);
      goto LABEL_132;
    }

    return 1;
  }

  v71 = a3;
  v5 = 0;
  v11 = 0;
  v12 = *(this + 283);
  v13 = 8 * v9;
  do
  {
    v14 = *v12;
    v15 = *(*v12 + 1);
    if (v15)
    {
      goto LABEL_6;
    }

    re::AssetHandle::serializationString(*v12, &v75);
    v17 = v75;
    if (v76)
    {
      v18 = v76 >> 1;
    }

    else
    {
      v18 = v76 >> 1;
    }

    if (v75)
    {
      v19 = (v76 & 1) == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v17 = (*(*v75 + 40))();
    }

    if (!v18)
    {
      v15 = *(v14 + 1);
      if (!v15)
      {
        goto LABEL_27;
      }

LABEL_6:
      v16 = atomic_load((v15 + 896));
      if (v16 == 2)
      {
        goto LABEL_27;
      }

      if (v16 == 3)
      {
        return 1;
      }

      re::AssetHandle::loadAsync(v14);
    }

    v20 = *(v14 + 1);
    if (v20)
    {
      v21 = *(v20 + 280);
    }

    else
    {
      v21 = 0;
    }

    v22 = re::TextureAsset::assetType(v17);
    if (v21 == v22)
    {
      v11 = 2;
    }

    else
    {
      v11 = v11;
    }

    if (v21 == v22)
    {
      v5 = v5;
    }

    else
    {
      v5 = 2;
    }

LABEL_27:
    ++v12;
    v13 -= 8;
  }

  while (v13);
  v6 = a4;
  v7 = v71;
  if (!v5)
  {
    v4 = *(this + 624);
    v5 = v11;
    goto LABEL_34;
  }

  return v5;
}

void *buildKeySetFromParameters<re::DynamicString>(_anonymous_namespace_ *a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  v4 = *(a2 + 28);
  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = 0;
    v8 = *(a2 + 16);
    while (1)
    {
      v9 = *v8;
      v8 += 20;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  if (v7 != v6)
  {
    v10 = 0;
    do
    {
      v11 = v10;
      v12 = *(a1 + 1);
      if (v12 <= v10)
      {
        v17 = 0;
        memset(v26, 0, sizeof(v26));
        v14 = MEMORY[0x1E69E9C10];
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v15 = 3;
        }

        else
        {
          v15 = 2;
        }

        v21 = 468;
        v22 = 2048;
        v23 = v11;
        v24 = 2048;
        v25 = v12;
        _os_log_send_and_compose_impl(v15, &v17, v26, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
        _os_crash_msg();
        __break(1u);
      }

      result = re::DynamicString::operator=((*(a1 + 2) + 32 * v10), (*(a2 + 16) + 80 * v7 + 8));
      v10 = v11 + 1;
      v13 = *(a2 + 32);
      if (v13 <= v7 + 1)
      {
        v13 = v7 + 1;
      }

      while (v13 - 1 != v7)
      {
        LODWORD(v7) = v7 + 1;
        if ((*(*(a2 + 16) + 80 * v7) & 0x80000000) != 0)
        {
          goto LABEL_16;
        }
      }

      LODWORD(v7) = v13;
LABEL_16:
      ;
    }

    while (v7 != v6);
  }

  return result;
}

void re::MaterialDefinitionLoader::preloadAssets(re::MaterialDefinitionLoader *this)
{
  (*(**(this + 2) + 8))(&v4);
  v2 = *(this + 2);
  *(this + 2) = v4;
  v4 = v2;
  v3 = *(this + 6);
  *(this + 6) = v5;
  v5 = v3;
  re::AssetHandle::~AssetHandle(&v4);
  if ((*(**(this + 2) + 360))())
  {
    re::AssetHandle::loadAsync((this + 32));
  }
}

uint64_t re::MaterialDefinitionLoader::introspectionType(re::MaterialDefinitionLoader *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::MaterialDefinitionAsset>(BOOL)::info = re::internal::getOrCreateInfo("MaterialDefinitionAsset", re::allocInfo_MaterialDefinitionAsset, re::initInfo_MaterialDefinitionAsset, &re::internal::introspectionInfoStorage<re::MaterialDefinitionAsset>, 0);
      v1 = &unk_1EE187000;
    }
  }

  return v1[189];
}

BOOL re::MaterialDefinitionLoader::createRuntimeData(re::AssetLoader *this, const re::IntrospectionBase **a2)
{
  v2 = *(this + 3);
  if (!v2 || !*(v2 + 26))
  {
    return 1;
  }

  v5 = *(this + 2);
  if ((a2[284] & 1) == 0)
  {
    re::AssetLoader::internalFindAssetHandleFields(this, a2, v8);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((a2 + 279), v8);
    if (v8[0] && v8[4])
    {
      (*(*v8[0] + 40))();
    }

    *(a2 + 2272) = 1;
    v2 = *(this + 3);
  }

  if (a2[2])
  {
    v6 = a2[3];
  }

  else
  {
    v6 = a2 + 17;
  }

  return re::MaterialDefinitionAsset::initializeParameterBindings(a2, v5, v2, v6) != 1;
}

uint64_t re::MaterialDefinitionLoader::registerAsset(re::MaterialDefinitionLoader *this, re::MaterialDefinitionAsset *a2, const re::ExistingAssetInformation *a3)
{
  v4 = this;
  v31 = *MEMORY[0x1E69E9840];
  v26 = a2;
  v5 = *(this + 2);
  if ((*(a2 + 2216) & 1) == 0)
  {
    if (*(a3 + 10) == -1)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a3 + 10);
    }

    os_unfair_lock_lock((v5 + 128));
    re::AssetManager::lookupExistingAsset_assetTablesLocked(&v27, v5, v7);
    os_unfair_lock_unlock((v5 + 128));
    if (v27 == 1)
    {
      v8 = re::globalAllocators(this)[2];
      v29[0] = &unk_1F5CC80D0;
      v29[1] = a3;
      v29[2] = &v26;
      v29[3] = v8;
      v29[4] = v29;
      re::AssetManager::readLoadDescriptorsForAsset(v5, v28, v29);
      this = re::FunctionBase<24ul,void ()(re::DynamicArray<re::AssetLoadDescriptor> const&)>::destroyCallable(v29);
      v9 = v27;
      *(v26 + 2216) = 1;
      if (v9)
      {
        re::AssetHandle::~AssetHandle(v28);
      }
    }

    else
    {
      *(a2 + 2216) = 1;
    }
  }

  v10 = *(v4 + 3);
  if (!v10 || !*(v10 + 208))
  {
    return 0;
  }

  {
    v12 = *(v26 + 51);
    if (v12)
    {
      v13 = 664 * v12;
      v14 = (*(v26 + 53) + 112);
      do
      {
        if (*(v14 + 1))
        {
          v15 = *(v14 + 2);
        }

        else
        {
          v15 = v14 + 9;
        }

        if (!strcmp(v15, "vsRealityPbrOpenSubdiv"))
        {
          v27 = "vsRealityPbr";
          v28[0] = 12;
          re::DynamicString::operator=(v14, &v27);
        }

        v14 += 664;
        v13 -= 664;
      }

      while (v13);
    }
  }

  if (*(a3 + 17))
  {
    v16 = *(a3 + 18);
  }

  else
  {
    v16 = a3 + 137;
  }

  v17 = re::MaterialDefinitionAsset::initializeParameterBindings(v26, v5, *(v4 + 3), v16);
  if (v17 != 1)
  {
    if (v17 == 2)
    {
      return 1;
    }

    v19 = v26;
    v20 = *(v4 + 3);
    if (*(a3 + 17))
    {
      v21 = *(a3 + 18);
    }

    else
    {
      v21 = a3 + 137;
    }

    v22 = *(v20 + 24);
    re::MaterialDefinitionBuilder::MaterialDefinitionBuilder(&v27, v26 + 97);
    re::MaterialManager::createMaterialDefinition(v22, &v27, buf);
    v23 = *(v19 + 93);
    *(v19 + 93) = *buf;
    *buf = v23;
    if (v23)
    {

      *buf = 0;
    }

    re::MaterialDefinitionBuilder::~MaterialDefinitionBuilder(&v27);
    if (*(v19 + 93))
    {
      return 0;
    }

    v25 = *re::assetTypesLogObjects(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = v21;
      _os_log_error_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_ERROR, "Failed to prepare material definition '%s'", buf, 0xCu);
    }
  }

  return 2;
}

void re::MaterialDefinitionLoader::unregisterAsset(re::MaterialDefinitionLoader *this, char *a2, const re::ExistingAssetInformation *a3)
{
  v4 = *(a2 + 93);
  if (v4)
  {

    v5 = *(a2 + 47);
    v6 = *(a2 + 96);
    *(a2 + 760) = 0u;
    *(a2 + 744) = 0u;
    v7 = v5;
    v8 = v6;
    re::AssetHandle::~AssetHandle(&v7);
  }

  re::MaterialDefinitionBuilder::destroy((a2 + 776));
  a2[2272] = 0;
  *(a2 + 281) = 0;
  ++*(a2 + 564);
}

re *re::internal::destroyPersistent<re::MaterialDefinitionAsset>(re *result, uint64_t a2, void (***a3)(void))
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    (**a3)(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void *re::MaterialDefinitionLoader::findDependencies@<X0>(re::MaterialDefinitionLoader *this@<X0>, const re::IntrospectionBase **a2@<X1>, uint64_t a3@<X8>)
{
  if ((a2[284] & 1) == 0)
  {
    re::AssetLoader::internalFindAssetHandleFields(this, a2, v11);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((a2 + 279), v11);
    this = v11[0];
    if (v11[0] && v11[4])
    {
      this = (*(*v11[0] + 40))();
    }

    *(a2 + 2272) = 1;
  }

  v5 = a2[281];
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  result = re::DynamicArray<re::AssetHandle>::setCapacity(a3, v5);
  ++*(a3 + 24);
  v7 = a2[281];
  if (v7)
  {
    v8 = a2[283];
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      result = re::DynamicArray<re::AssetHandle>::add(a3, v10);
      v9 -= 8;
    }

    while (v9);
  }

  return result;
}

void *re::allocInfo_MaterialDefinitionAsset(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_91, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_91))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1995E8, "MaterialDefinitionAsset");
    __cxa_guard_release(&_MergedGlobals_91);
  }

  return &unk_1EE1995E8;
}

void re::initInfo_MaterialDefinitionAsset(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v18[0] = 0xD03B453A4494F22CLL;
  v18[1] = "MaterialDefinitionAsset";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1995D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1995D0))
  {
    v7 = re::introspectionAllocator();
    v13 = re::introspect_MaterialDefinitionFile(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "definitionFile";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x800000001;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1995D8 = v14;
    v15 = re::introspectionAllocator();
    v16 = (*(*v15 + 32))(v15, 64, 8);
    *v16 = 6;
    *(v16 + 8) = 1;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *(v16 + 40) = 1;
    *(v16 + 48) = downgradeMaterialDefinitionAssetFromFall2023;
    *(v16 + 56) = 2;
    qword_1EE1995E0 = v16;
    __cxa_guard_release(&qword_1EE1995D0);
  }

  *(this + 2) = 0x9C800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1995D8;
  *(this + 9) = re::internal::defaultConstruct<re::MaterialDefinitionAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MaterialDefinitionAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::MaterialDefinitionAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::MaterialDefinitionAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v17 = v19;
}

void re::MaterialDefinitionLoader::~MaterialDefinitionLoader(re::MaterialDefinitionLoader *this)
{
  *this = &unk_1F5CC7F58;
  re::AssetHandle::~AssetHandle((this + 32));
}

{
  *this = &unk_1F5CC7F58;
  re::AssetHandle::~AssetHandle((this + 32));

  JUMPOUT(0x1E6906520);
}

void re::MaterialDefinitionFile::~MaterialDefinitionFile(re::MaterialDefinitionFile *this)
{
  re::MaterialDefinitionFile::deinit(this);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 86);
  re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::deinit(this + 648);
  re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 75);
  re::DynamicArray<re::DebugMapping>::deinit(this + 560);
  re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 64);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 58);
  re::DynamicArray<re::MaterialTechniqueGroupData>::deinit(this + 424);
  re::DynamicArray<re::MaterialTechniqueData>::deinit(this + 384);
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 42);
  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 36);
  re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 30);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 24);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 18);
  re::AssetHandle::~AssetHandle((this + 120));
  re::AssetHandle::~AssetHandle((this + 96));
  re::DynamicString::deinit((this + 64));
  re::DynamicString::deinit((this + 32));
  re::DynamicString::deinit(this);
}

uint64_t re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::deinit(uint64_t a1)
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
        v5 = 104 * v4;
        do
        {
          re::MaterialTechniqueQualityLevelSetData::~MaterialTechniqueQualityLevelSetData(v3);
          v3 += 13;
          v5 -= 104;
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

void re::MaterialTechniqueQualityLevelSetData::~MaterialTechniqueQualityLevelSetData(const re::DynamicString **this)
{
  re::MaterialTechniqueQualityLevelSetData::deinit(this);
  re::DynamicArray<re::DynamicString>::deinit((this + 8));
  re::DynamicString::deinit((this + 4));
  re::DynamicString::deinit(this);
}

double re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::DynamicString,re::Optional<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 96;
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

uint64_t re::DynamicArray<re::DebugMapping>::deinit(uint64_t a1)
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
        v5 = 80 * v4;
        do
        {
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v3 + 4);
          re::DynamicString::deinit(v3);
          v3 += 10;
          v5 -= 80;
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

double re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 96;
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

double re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(_DWORD *a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    v2 = (a1 + 10);
    re::DynamicString::deinit((a1 + 2));

    return re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v2);
  }

  return result;
}

uint64_t re::DynamicArray<re::MaterialTechniqueGroupData>::deinit(uint64_t a1)
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
        v5 = &v3[9 * v4];
        do
        {
          re::MaterialTechniqueGroupData::deinit(v3);
          re::DynamicArray<re::DynamicString>::deinit((v3 + 4));
          re::DynamicString::deinit(v3);
          v3 += 9;
        }

        while (v3 != v5);
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

uint64_t re::DynamicArray<re::MaterialTechniqueData>::deinit(uint64_t a1)
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
        v5 = 664 * v4;
        do
        {
          re::MaterialTechniqueData::~MaterialTechniqueData(v3);
          v3 = (v3 + 664);
          v5 -= 664;
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

void re::MaterialTechniqueData::~MaterialTechniqueData(re::MaterialTechniqueData *this)
{
  re::DynamicString::deinit(this);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 76);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 70);
  re::DynamicArray<re::DynamicString>::deinit(this + 512);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 58);
  re::DynamicArray<re::DynamicString>::deinit(this + 424);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 47);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 41);
  re::DynamicString::deinit((this + 296));
  re::DynamicArray<unsigned long>::deinit(this + 256);
  if (*(this + 21))
  {
    re::DynamicString::deinit((this + 168));
  }

  re::DynamicString::deinit((this + 168));
  re::AssetHandle::~AssetHandle((this + 144));
  if (*(this + 14))
  {
    re::DynamicString::deinit((this + 112));
  }

  re::DynamicString::deinit((this + 112));
  re::AssetHandle::~AssetHandle((this + 88));
  re::AssetHandle::~AssetHandle((this + 64));
  re::DynamicString::deinit((this + 32));
  re::DynamicString::deinit(this);
}

void re::internal::Callable<re::MaterialDefinitionLoader::registerAsset(void *,re::ExistingAssetInformation const&)::$_0,void ()(re::DynamicArray<re::AssetLoadDescriptor> const&)>::operator()(re *a1, uint64_t a2)
{
  v2 = a1;
  v22[5] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = *(a2 + 32);
    v5 = 144 * v3;
    while (1)
    {
      re::DynamicString::DynamicString(v13, v4);
      re::DynamicArray<BOOL>::DynamicArray(v16, v4 + 4);
      re::DynamicArray<BOOL>::DynamicArray(v19, v4 + 9);
      re::DynamicString::DynamicString(v22, (v4 + 14));
      isEngineAssetDescriptor = re::FrameworkAssetProvider::isEngineAssetDescriptor(v13, v6);
      if (v22[0])
      {
        if (v22[1])
        {
          (*(*v22[0] + 40))();
        }

        memset(v22, 0, 32);
      }

      if (v19[0])
      {
        if (v21)
        {
          (*(*v19[0] + 40))();
        }

        v21 = 0;
        memset(v19, 0, sizeof(v19));
        ++v20;
      }

      if (v16[0])
      {
        if (v18)
        {
          (*(*v16[0] + 40))();
        }

        v18 = 0;
        memset(v16, 0, sizeof(v16));
        ++v17;
      }

      a1 = *v13;
      if (*v13 && (v13[8] & 1) != 0)
      {
        a1 = (*(**v13 + 40))();
      }

      if (isEngineAssetDescriptor)
      {
        break;
      }

      v4 += 18;
      v5 -= 144;
      if (!v5)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
LABEL_20:
    v8 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v2 + 1);
      if (*(v9 + 136))
      {
        v10 = *(v9 + 144);
      }

      else
      {
        v10 = v9 + 137;
      }

      v11 = **(v2 + 2);
      if (*(v11 + 16))
      {
        v12 = *(v11 + 24);
      }

      else
      {
        v12 = v11 + 17;
      }

      *v13 = 136315394;
      *&v13[4] = v10;
      v14 = 2080;
      v15 = v12;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "[%s] [%s] Loading of non-engine MaterialDefinitions is deprecated. Please move to using our public material APIs, such as CustomMaterial or ShaderGraphMaterial.", v13, 0x16u);
    }
  }
}

uint64_t re::internal::Callable<re::MaterialDefinitionLoader::registerAsset(void *,re::ExistingAssetInformation const&)::$_0,void ()(re::DynamicArray<re::AssetLoadDescriptor> const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC80D0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::MaterialDefinitionLoader::registerAsset(void *,re::ExistingAssetInformation const&)::$_0,void ()(re::DynamicArray<re::AssetLoadDescriptor> const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC80D0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

re::MaterialDefinitionAsset *re::MaterialDefinitionAsset::MaterialDefinitionAsset(re::MaterialDefinitionAsset *this)
{
  *this = &unk_1F5CC8128;
  re::MaterialDefinitionFile::MaterialDefinitionFile((this + 8));
  *(this + 744) = 0u;
  *(this + 760) = 0u;
  re::MaterialDefinitionBuilder::MaterialDefinitionBuilder((this + 776));
  *(this + 2216) = 0;
  *(this + 283) = 0;
  *(this + 2272) = 0;
  *(this + 2280) = 0u;
  *(this + 2296) = 0u;
  *(this + 578) = 0;
  *(this + 139) = 0u;
  *(this + 140) = 0u;
  *(this + 564) = 0;
  *(this + 2316) = 0x7FFFFFFFLL;
  *(this + 2328) = 0u;
  *(this + 2344) = 0u;
  *(this + 590) = 0;
  *(this + 2364) = 0x7FFFFFFFLL;
  *(this + 2376) = 0u;
  *(this + 2392) = 0u;
  *(this + 2408) = 0u;
  *(this + 2424) = 0u;
  *(this + 2440) = 0u;
  *(this + 2456) = 0u;
  *(this + 2472) = 0u;
  *(this + 2484) = 0u;
  return this;
}

re::MaterialDefinitionFile *re::MaterialDefinitionFile::MaterialDefinitionFile(re::MaterialDefinitionFile *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  v2 = re::DynamicString::setCapacity(this, 0);
  *(this + 3) = 0u;
  *(this + 2) = 0u;
  v3 = re::DynamicString::setCapacity(this + 4, 0);
  *(this + 5) = 0u;
  *(this + 4) = 0u;
  re::DynamicString::setCapacity(this + 8, 0);
  *(this + 44) = 0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 6) = 0u;
  *(this + 180) = 0x7FFFFFFFLL;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 56) = 0;
  *(this + 228) = 0x7FFFFFFFLL;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 68) = 0;
  *(this + 276) = 0x7FFFFFFFLL;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 80) = 0;
  *(this + 324) = 0x7FFFFFFFLL;
  *(this + 92) = 0;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 372) = 0x7FFFFFFFLL;
  *(this + 24) = 0u;
  *(this + 102) = 0;
  *(this + 50) = 0;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 112) = 0;
  *(this + 484) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 500) = 0x7FFFFFFFLL;
  *(this + 136) = 0;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 548) = 0x7FFFFFFFLL;
  *(this + 146) = 0;
  *(this + 72) = 0;
  *(this + 35) = 0u;
  *(this + 620) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 636) = 0x7FFFFFFFLL;
  *(this + 168) = 0;
  *(this + 83) = 0;
  *(this + 648) = 0u;
  *(this + 708) = 0u;
  *(this + 680) = 0u;
  *(this + 696) = 0u;
  *(this + 724) = 0x7FFFFFFFLL;
  return this;
}

re::MaterialDefinitionBuilder *re::MaterialDefinitionBuilder::MaterialDefinitionBuilder(re::MaterialDefinitionBuilder *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  v2 = re::DynamicString::setCapacity(this, 0);
  *(this + 3) = 0u;
  *(this + 2) = 0u;
  re::DynamicString::setCapacity(this + 4, 0);
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 24) = &unk_1F5CC38C8;
  *(this + 25) = 0;
  *(this + 13) = 0u;
  *(this + 56) = 0;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 108) = 0;
  *(this + 55) = 0;
  *(this + 28) = 0u;
  *(this + 98) = 0;
  *(this + 248) = 0u;
  *(this + 232) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 116) = 1;
  *(this + 472) = 0u;
  *(this + 124) = 0;
  *(this + 61) = 0;
  *(this + 65) = 0;
  *(this + 132) = 0;
  *(this + 504) = 0u;
  *(this + 72) = 0;
  *(this + 146) = 0;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 142) = 0;
  *(this + 103) = 0;
  *(this + 792) = 0u;
  *(this + 808) = 0u;
  *(this + 760) = 0u;
  *(this + 776) = 0u;
  *(this + 728) = 0u;
  *(this + 744) = 0u;
  *(this + 43) = 0u;
  *(this + 44) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 90) = &unk_1F5CC8148;
  *(this + 908) = 0u;
  *(this + 55) = 0u;
  *(this + 56) = 0u;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  *(this + 52) = 0u;
  *(this + 276) = 0;
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
  *(this + 58) = 0u;
  *(this + 1108) = 0x7FFFFFFFLL;
  *(this + 288) = 0;
  *(this + 71) = 0u;
  *(this + 70) = 0u;
  *(this + 1156) = 0x7FFFFFFFLL;
  *(this + 300) = 0;
  *(this + 74) = 0u;
  *(this + 73) = 0u;
  *(this + 1204) = 0x7FFFFFFFLL;
  *(this + 312) = 0;
  *(this + 77) = 0u;
  *(this + 76) = 0u;
  *(this + 1252) = 0x7FFFFFFFLL;
  *(this + 324) = 0;
  *(this + 80) = 0u;
  *(this + 79) = 0u;
  *(this + 1300) = 0x7FFFFFFFLL;
  *(this + 352) = 0;
  *(this + 87) = 0u;
  *(this + 86) = 0u;
  *(this + 85) = 0u;
  *(this + 84) = 0u;
  *(this + 83) = 0u;
  *(this + 82) = 0u;
  *(this + 1412) = 0x7FFFFFFFLL;
  *(this + 89) = 0u;
  return this;
}

void re::TextureHandleTable::textureAt(re::TextureHandleTable *this@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = *(this + 11);
  if (v5 <= a2)
  {
    v12 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    *v20 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    *v13 = 136315906;
    *&v13[4] = "operator[]";
    v14 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v15 = 789;
    v16 = 2048;
    v17 = a2;
    v18 = 2048;
    v19 = v5;
    _os_log_send_and_compose_impl(v10, &v12, v20, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(this + 13) + 40 * a2;
  if (*(v6 + 32))
  {
    if ((*(v6 + 16) & 1) == 0)
    {
      re::TextureHandle::metalTexture(v13, v6);
      v7 = *v13;
      v8 = [v7 newTextureViewWithPixelFormat:objc_msgSend(v7 textureType:sel_pixelFormat) levels:objc_msgSend(v7 slices:sel_textureType) swizzle:0, objc_msgSend(*v13, sel_mipmapLevelCount), 0, objc_msgSend(v7, sel_arrayLength), *(v6 + 33)];
      LOBYTE(v20[0]) = 1;
      v20[1] = v8;
      re::Optional<NS::SharedPtr<MTL::Texture>>::operator=(v6 + 16, v20);
      if (LOBYTE(v20[0]) == 1 && v20[1])
      {
      }

      if (v7)
      {
      }
    }

    *a3 = *(v6 + 24);
  }

  else
  {

    re::TextureHandle::metalTexture(a3, v6);
  }
}

uint64_t re::Optional<NS::SharedPtr<MTL::Texture>>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      NS::SharedPtr<MTL::Texture>::operator=((a1 + 8), (a2 + 8));
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3)
      {

        *(a1 + 8) = 0;
      }

      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
  }

  return a1;
}

uint64_t *re::CollisionShapeAsset::assetType(re::CollisionShapeAsset *this)
{
  {
    re::CollisionShapeAsset::assetType(void)::type = "CollisionShape";
    qword_1EE1C6C20 = 0;
    re::AssetType::generateCompiledExtension(&re::CollisionShapeAsset::assetType(void)::type);
  }

  return &re::CollisionShapeAsset::assetType(void)::type;
}

uint64_t *re::PhysicsMaterialAsset::assetType(re::PhysicsMaterialAsset *this)
{
  {
    re::PhysicsMaterialAsset::assetType(void)::type = "PhysicsMaterial";
    qword_1EE1C69C8 = 0;
    re::AssetType::generateCompiledExtension(&re::PhysicsMaterialAsset::assetType(void)::type);
  }

  return &re::PhysicsMaterialAsset::assetType(void)::type;
}

uint64_t *re::IndexedTriangleMeshAsset::assetType(re::IndexedTriangleMeshAsset *this)
{
  {
    re::IndexedTriangleMeshAsset::assetType(void)::type = "IndexedTriangleMesh";
    qword_1EE1C6650 = 0;
    re::AssetType::generateCompiledExtension(&re::IndexedTriangleMeshAsset::assetType(void)::type);
  }

  return &re::IndexedTriangleMeshAsset::assetType(void)::type;
}