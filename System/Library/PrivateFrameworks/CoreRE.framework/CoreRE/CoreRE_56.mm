uint64_t re::internal::Callable<re::TextureAssetLoader::writeAssetToRealityFile(re::AssetHandle const&,re::DynamicString const&,re::RealityFileWritingParameters const&,re::AssetWriteSettings const&,re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> &,re::RealityArchiveWriter *,re::AssetCompatibilityService *,REArchiveCompressionMethod)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC3E00;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::DynamicArray<short>::operator=(uint64_t result, uint64_t *a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || v4 == v5)
    {
      v8 = *(result + 8);
      v9 = a2[1];
      *result = v5;
      *(result + 8) = v9;
      *a2 = v4;
      a2[1] = v8;
      v10 = *(result + 16);
      *(result + 16) = a2[2];
      a2[2] = v10;
      v11 = *(result + 32);
      *(result + 32) = a2[4];
      a2[4] = v11;
      ++*(a2 + 6);
      ++*(result + 24);
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503, v2, v3);
      result = _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
      __break(1u);
    }
  }

  return result;
}

void re::internal::Callable<re::TextureAssetLoader::createRuntimeData(void *,re::SeekableInputStream *,re::Slice<re::SharedPtr<re::InputStreamSource>> const&&,re::HashTable<re::DynamicString,std::variant<re::HashTable,re::Data,unsigned long>,re::Hash<re::HashTable>,re::EqualTo<re::HashTable>,true,false> const*)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream&)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = *MEMORY[0x1E69E9840];
  v7 = (a1 + 16);
  v6 = *(a1 + 16);
  v8 = *(a1 + 8);
  v9 = *(a1 + 32);
  *(v9 + 56) = *(v6 + 356);
  *(v9 + 12) = 0;
  v10 = *(v6 + 264);
  if (v10 >= 0xFFFF)
  {
    LOWORD(v10) = -1;
  }

  *(v9 + 88) = v10;
  v11 = *(v6 + 272);
  if (v11 >= 0xFFFF)
  {
    LOWORD(v11) = -1;
  }

  *(v9 + 90) = v11;
  re::FixedArray<short>::operator=((v9 + 96), (v6 + 280));
  v12 = *v7;
  if (*(*v7 + 360) == 1)
  {
    *(*(a1 + 32) + 24) = 1;
  }

  v13 = *(v12 + 376);
  v14 = v13 >> 1;
  if ((v13 & 1) == 0)
  {
    v14 = v13 >> 1;
  }

  if (v14)
  {
    if (v13)
    {
      v15 = *(v12 + 384);
    }

    else
    {
      v15 = (v12 + 377);
    }

    v16 = CFStringCreateWithCString(0, v15, 0x8000100u);
    re::TextureFromImageOptions::setColorSpace(*(a1 + 32), v16);
    CFRelease(v16);
  }

  *(*(a1 + 32) + 52) = *(v8 + 88);
  v79 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  v17 = [v79 setSwizzle_];
  v18 = *(a1 + 32);
  v19 = **(a1 + 24);
  v81 = re::globalAllocators(v17)[2];
  v20 = (*(*v81 + 32))(v81, 40, 0);
  *v20 = &unk_1F5CC3EC0;
  v20[1] = v18;
  v20[2] = v8;
  v20[3] = v7;
  v20[4] = &v79;
  v82 = v20;
  (*(*v19 + 48))(&v77, v19, v80);
  re::FunctionBase<24ul,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::destroyCallable(v80);
  if (v77)
  {
    v76 = 0;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    v75 = 0;
    v69 = 0;
    v70 = 0;
    v68 = a2;
    v71 = 0;
    if (!re::SeekableInputStreamBufferedReader::readNext(&v68, 0xFFFFFFFFFFFFFFFFLL))
    {
      re::WrappedError::make(&v60, @"REAssetLoadingErrorDomain", 6, "Unexpected error reading texture's source image data.");
      v42 = v60;
      v60 = 0;
      *a3 = 0;
      *(a3 + 8) = v42;

      goto LABEL_40;
    }

    v64 = 0;
    v65 = &v64;
    v66 = 0x2000000000;
    v67 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v69, v70, *MEMORY[0x1E695E498]);
    v21 = *(v8 + 88);
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 0x40000000;
    v59[2] = ___ZZNK2re18TextureAssetLoader17createRuntimeDataEPvPNS_19SeekableInputStreamEOKNS_5SliceINS_9SharedPtrINS_17InputStreamSourceEEEEEPKNS_9HashTableINS_13DynamicStringENSt3__17variantIJSC_NS_4DataEmEEENS_4HashISC_EENS_7EqualToISC_EELb1ELb0EEEENK3__0clERS2__block_invoke;
    v59[3] = &unk_1E871B060;
    v59[4] = &v64;
    v59[5] = &v68;
    re::DataTextureProvider::DataTextureProvider(&v60, (v8 + 40), v21, v65 + 3, v59);
    re::TextureProvider::setOptions(&v60, *(a1 + 32));
    v22 = re::TextureProvider::setTemplateDescriptor(&v60, &v79, 0);
    v23 = re::globalAllocators(v22);
    re::loadTextureDataWithProvider(&v51, &v60, v23[2], v24);
    v26 = v65[3];
    if (v26)
    {
      CFRelease(v26);
    }

    if (v51)
    {
      v27 = *v7;
      *(v27 + 128) = v54;
      *(v27 + 136) = v55[0];
      *(v27 + 148) = *(v55 + 12);
      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v27 + 168), v56);
      re::ObjCObject::operator=((v27 + 176), &v57);
      re::DynamicArray<short>::operator=(v27 + 184, v58);
      *(v27 + 224) = v58[5];
      {
        *(*(a1 + 16) + 128) |= 0x80u;
        v29 = *(a1 + 16);
        v30 = *(a1 + 32);
        v31 = *(v29 + 176);
        v32 = v31;
        v33 = *(a1 + 16);
        v34 = *(v33 + 216);
        v35 = *(v33 + 200);
        v48 = v34;
        v49[0] = v35;
        re::TextureAsset::setTexture(v29, (v8 + 40), v52, (v30 + 56), (v30 + 24), v31, &v48);
        *a3 = 1;
LABEL_39:
        re::Result<re::TextureImportData,re::DynamicString>::~Result(&v51);
        re::DataTextureProvider::~DataTextureProvider(&v60);
        _Block_object_dispose(&v64, 8);
LABEL_40:
        if (v71)
        {
          (*(*v68 + 24))(v68);
          v71 = 0;
        }

        v68 = 0;
        v69 = 0;
        v70 = 0;
        v40 = v72;
        if (v72)
        {
          v41 = v76;
          if (v76)
          {
            goto LABEL_44;
          }
        }

        goto LABEL_45;
      }

      CStringPtr = CFStringGetCStringPtr(*(*v7 + 224), 0x8000100u);
      re::DynamicString::format(&v48, "Unsupported source image format for texture: %s", v44, CStringPtr);
    }

    else
    {
      if (v52[8])
      {
        v43 = v54;
      }

      else
      {
        v43 = v53;
      }

      re::DynamicString::format(&v48, "Unexpected error creating texture from image: %s", v25, v43);
    }

    if (v49[0])
    {
      v45 = v49[1];
    }

    else
    {
      v45 = v49 + 1;
    }

    re::WrappedError::make(&v50, @"REAssetLoadingErrorDomain", 6, v45);
    v46 = v50;
    v50 = 0;
    *a3 = 0;
    *(a3 + 8) = v46;

    if (v48 && (v49[0] & 1) != 0)
    {
      (*(*v48 + 40))();
    }

    goto LABEL_39;
  }

  v36 = re::WrappedError::localizedDescription(&v78);
  re::DynamicString::format(&v60, "Failed to create runtime data for TextureAsset due to error: %s", v37, v36);
  if (v61)
  {
    v38 = v63;
  }

  else
  {
    v38 = v62;
  }

  re::WrappedError::make(&v51, @"REAssetLoadingErrorDomain", 6, v38);
  v39 = v51;
  v51 = 0;
  *a3 = 0;
  *(a3 + 8) = v39;

  v40 = v60;
  if (v60 && (v61 & 1) != 0)
  {
    v41 = v63;
LABEL_44:
    (*(*v40 + 40))(v40, v41);
  }

LABEL_45:
  if ((v77 & 1) == 0)
  {
  }

  if (v79)
  {
  }
}

uint64_t re::internal::Callable<re::TextureAssetLoader::createRuntimeData(void *,re::SeekableInputStream *,re::Slice<re::SharedPtr<re::InputStreamSource>> const&&,re::HashTable<re::DynamicString,std::variant<re::HashTable,re::Data,unsigned long>,re::Hash<re::HashTable>,re::EqualTo<re::HashTable>,true,false> const*)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC3E68;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::TextureAssetLoader::createRuntimeData(void *,re::SeekableInputStream *,re::Slice<re::SharedPtr<re::InputStreamSource>> const&&,re::HashTable<re::DynamicString,std::variant<re::HashTable,re::Data,unsigned long>,re::Hash<re::HashTable>,re::EqualTo<re::HashTable>,true,false> const*)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC3E68;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t ___ZZNK2re18TextureAssetLoader17createRuntimeDataEPvPNS_19SeekableInputStreamEOKNS_5SliceINS_9SharedPtrINS_17InputStreamSourceEEEEEPKNS_9HashTableINS_13DynamicStringENSt3__17variantIJSC_NS_4DataEmEEENS_4HashISC_EENS_7EqualToISC_EELb1ELb0EEEENK3__0clERS2__block_invoke(uint64_t a1)
{
  CFRelease(*(*(*(a1 + 32) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) = 0;
  v2 = *(a1 + 40);

  return re::SeekableInputStreamBufferedReader::detachAndDeallocate(v2);
}

uint64_t *re::internal::Callable<re::TextureAssetLoader::createRuntimeData(void *,re::SeekableInputStream *,re::Slice<re::SharedPtr<re::InputStreamSource>> const&&,re::HashTable<re::DynamicString,std::variant<re::HashTable,re::Data,unsigned long>,re::Hash<re::HashTable>,re::EqualTo<re::HashTable>,true,false> const*)::$_0::operator() const(re::SeekableInputStream&)::{lambda($_0)#1},re::Result<re::Unit,re::WrappedError> ()($_0)>::operator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v30 = &unk_1F5D0AE00;
  v31 = a2;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = (*(*a2 + 40))(a2);
  v36 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v6 = re::DynamicString::setCapacity(&v25, 0);
  v29 = 0;
  if ((atomic_load_explicit(&qword_1EE195F18, memory_order_acquire) & 1) == 0)
  {
    v6 = __cxa_guard_acquire(&qword_1EE195F18);
    if (v6)
    {
      qword_1EE195F10 = re::internal::getOrCreateInfo("SidecarImageImportOptions", re::allocInfo_SidecarImageImportOptions, re::initInfo_SidecarImageImportOptions, &unk_1EE195F00, 0);
      __cxa_guard_release(&qword_1EE195F18);
    }
  }

  v7 = qword_1EE195F10;
  v18 = *(v7 + 32);
  if (v21[0])
  {
    v9 = v26 >> 1;
    if ((v26 & 1) == 0)
    {
      v9 = v26 >> 1;
    }

    if (v9)
    {
      if (v26)
      {
        v10 = v27;
      }

      else
      {
        v10 = &v26 + 1;
      }

      v11 = CFStringCreateWithCString(0, v10, 0x8000100u);
      re::TextureFromImageOptions::setColorSpace(*(a1 + 8), v11);
      CFRelease(v11);
    }

    else
    {
      v15 = *(a1 + 8);
      v16 = *(v15 + 64);
      *(v15 + 64) = 0;
    }

    if (v29 && re::isSupportedPixelFormat(*(v5 + 40), v29, *(**(a1 + 24) + 348)))
    {
      [**(a1 + 32) setPixelFormat_];
      **(a1 + 8) = 1;
    }

    *a3 = 1;
  }

  else
  {
    if (v23)
    {
      v12 = *&v24[7];
    }

    else
    {
      v12 = v24;
    }

    re::DynamicString::format(&v18, "Unexpected error while loading source image import options: %s", v8, v12);
    if (BYTE8(v18))
    {
      v13 = v19;
    }

    else
    {
      v13 = &v18 + 9;
    }

    re::WrappedError::make(&v20, @"REAssetLoadingErrorDomain", 6, v13);
    v14 = v20;
    v20 = 0;
    *a3 = 0;
    *(a3 + 8) = v14;

    if (v18 && (BYTE8(v18) & 1) != 0)
    {
      (*(*v18 + 40))();
    }
  }

  if (v21[0] & 1) == 0 && v22 && (v23)
  {
    (*(*v22 + 40))();
  }

  result = v25;
  if (v25 && (v26 & 1) != 0)
  {
    result = (*(*v25 + 40))();
  }

  if (v33)
  {
    return (*(*v31 + 24))(v31);
  }

  return result;
}

uint64_t re::internal::Callable<re::TextureAssetLoader::createRuntimeData(void *,re::SeekableInputStream *,re::Slice<re::SharedPtr<re::InputStreamSource>> const&&,re::HashTable<re::DynamicString,std::variant<re::HashTable,re::Data,unsigned long>,re::Hash<re::HashTable>,re::EqualTo<re::HashTable>,true,false> const*)::$_0::operator() const(re::SeekableInputStream&)::{lambda($_0)#1},re::Result<re::Unit,re::WrappedError> ()($_0)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC3EC0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::TextureAssetLoader::createRuntimeData(void *,re::SeekableInputStream *,re::Slice<re::SharedPtr<re::InputStreamSource>> const&&,re::HashTable<re::DynamicString,std::variant<re::HashTable,re::Data,unsigned long>,re::Hash<re::HashTable>,re::EqualTo<re::HashTable>,true,false> const*)::$_0::operator() const(re::SeekableInputStream&)::{lambda($_0)#1},re::Result<re::Unit,re::WrappedError> ()($_0)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC3EC0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::Result<re::TextureFromImageOptions,re::DynamicString>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    re::FixedArray<CoreIKTransform>::deinit((a1 + 104));
  }

  else
  {
    re::DynamicString::deinit((a1 + 8));
  }

  return a1;
}

uint64_t re::DynamicArray<short>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<short>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<short>::copy(a1, a2);
  }

  return a1;
}

void **re::DynamicArray<short>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<short>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 2 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 2 * v5, (*(a2 + 32) + 2 * v5), 2 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 2 * v4);
  }

  v3[2] = v4;
  return result;
}

void *re::DynamicArray<short>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if ((a2 & 0x8000000000000000) != 0)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 2, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        else
        {
          v2 = 2 * a2;
          result = (*(*result + 32))(result, 2 * a2, 2);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 2 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<short>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::FixedArray<short>::init<int>(void *result, uint64_t a2, uint64_t a3, int *a4)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 < 0)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 2, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v10, v11);
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  result = (*(*a2 + 32))(a2, 2 * a3, 2);
  v6[2] = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return result;
  }

  v8 = *a4;
  v9 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *result = v8;
      result = (result + 2);
      --v9;
    }

    while (v9);
  }

  *result = v8;
  return result;
}

void re::FixedArray<re::Pair<unsigned short,unsigned short,true>>::init<>(void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 62)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 4, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v5 = 4 * a3;
  v6 = (*(*a2 + 32))(a2, 4 * a3, 2);
  a1[2] = v6;
  if (!v6)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 4);
    v8 = (v8 + v5 - 4);
  }

  *v8 = 0;
}

uint64_t re::DynamicArray<short>::DynamicArray(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    re::DynamicArray<short>::setCapacity(a1, v3);
    ++*(a1 + 24);
    re::DynamicArray<short>::copy(a1, 0, *a2, *(a2 + 8));
  }

  return a1;
}

_anonymous_namespace_ *re::DynamicArray<short>::copy(_anonymous_namespace_ *this, unint64_t a2, char *__src, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return this;
  }

  v5 = a2;
  v6 = this;
  v7 = *(this + 2);
  v8 = v7 + 1;
  if (v7 + 1 <= a2)
  {
    v21 = 0;
    memset(v27, 0, sizeof(v27));
    v14 = MEMORY[0x1E69E9C10];
    *v22 = 136315906;
    *&v22[4] = "copy";
    *&v22[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    *&v22[14] = 643;
    v23 = 2048;
    v24 = v5;
    v25 = 2048;
    v26 = v8;
    _os_log_send_and_compose_impl(v15, &v21, v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v22, 38, v18, v20);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, v5, v4, v21, *v22);
    _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v16, v17, v19);
    __break(1u);
  }

  v4 = a4;
  v9 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_15;
  }

  if (v7 >= v9)
  {
    this = memmove((*(this + 4) + 2 * a2), __src, 2 * a4);
  }

  else
  {
    re::DynamicArray<short>::growCapacity(this, a2 + a4);
    v11 = *(v6 + 2);
    v12 = v11 - v5;
    v13 = &__src[2 * (v11 - v5)];
    if (v11 != v5)
    {
      memmove((*(v6 + 4) + 2 * v5), __src, 2 * v12);
      v5 = *(v6 + 2);
    }

    this = memcpy((*(v6 + 4) + 2 * v5), v13, 2 * (v4 - v12));
    *(v6 + 2) = v9;
  }

  ++*(v6 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<short>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<short>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<short>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void re::make::shared::object<re::anonymous namespace::TextureImportSource>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 168, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0;
  ArcSharedObject::ArcSharedObject(v4, 0);
  *(v4 + 24) = 0;
  *v4 = &unk_1F5CC3F18;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 1;
  *(v4 + 72) = 0;
  *(v4 + 76) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 60) = 0;
  *(v4 + 52) = 0;
  *(v4 + 68) = 0;
  *(v4 + 88) = 6;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 96) = 0;
  *(v4 + 120) = -65536;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 152) = 0;
  *(v4 + 144) = 0;
  *(v4 + 160) = 0;
  *a2 = v4;
}

void re::anonymous namespace::TextureImportSource::~TextureImportSource(re::_anonymous_namespace_::TextureImportSource *this)
{
  *this = &unk_1F5CC3F18;
  re::FixedArray<CoreIKTransform>::deinit(this + 16);

  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CC3F18;
  re::FixedArray<CoreIKTransform>::deinit(this + 16);

  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::DynamicArray<short>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<short>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4 && a2 > v4)
    {
      bzero((*(a1 + 32) + 2 * v4), 2 * (a2 - v4));
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void re::make::shared::object<re::TextureAssetRealityFileProviderCallbacks,re::TextureAssetLoader *>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 40, 8);
  v6 = *a1;
  ArcSharedObject::ArcSharedObject(v5, 0);
  *(v5 + 24) = v6;
  *v5 = &unk_1F5CC3F78;
  *(v5 + 32) = *(v6 + 16) != 0;
  *a2 = v5;
}

void re::TextureAssetRealityFileProviderCallbacks::~TextureAssetRealityFileProviderCallbacks(re::TextureAssetRealityFileProviderCallbacks *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::TextureAssetRealityFileProviderCallbacks::tryCreateMissingAsset@<X0>(uint64_t a1@<X0>, const re::TextureAssetLoader *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  v43 = a4;
  v8 = *(a1 + 24);
  if (*(a3 + 80))
  {
    v9 = *(a3 + 88);
  }

  else
  {
    v9 = (a3 + 81);
  }

  if (*(a3 + 16))
  {
    v10 = *(a3 + 24);
  }

  else
  {
    v10 = (a3 + 17);
  }

  if (*(a5 + 8))
  {
    v11 = *(a5 + 16);
  }

  else
  {
    v11 = (a5 + 9);
  }

  v12 = re::TextureAssetRealityFileProviderCallbacks::tryCreateSourceImageTextureProvider(&v38, v8, a2, v9, v10, *(a3 + 112), v11, &v43);
  if (v38)
  {
    v13 = re::globalAllocators(v12);
    re::loadTextureDataWithProvider(&v35, &v39, v13[2], v14);
    v16 = *re::assetsLogObjects(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      if (*(a3 + 80))
      {
        v17 = *(a3 + 88);
      }

      else
      {
        v17 = a3 + 81;
      }

      if (*(a3 + 16))
      {
        v18 = *(a3 + 24);
      }

      else
      {
        v18 = a3 + 17;
      }

      *buf = 136315650;
      *&buf[4] = v17;
      *&buf[12] = 2080;
      *&buf[14] = v18;
      *&buf[22] = 2048;
      v45 = v43;
    }

    if (v35)
    {
      v33[0] = 0;
      v34 = -1;
      std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(v33, &v36);
      TextureAsset = re::TextureAsset::makeTextureAsset(v33, v37, v42, v41);
      if (TextureAsset)
      {
        v21 = TextureAsset;
        v22 = re::TextureAsset::assetType(TextureAsset);
        v23 = re::TextureAsset::assetType(void)::type;
        LOBYTE(v46) = 0;
        BYTE8(v46) = 0;
        v24 = *buf;
        v25 = *&buf[16];
        v26 = v45;
        *(a6 + 56) = v46;
        *a6 = 1;
        *(a6 + 8) = v24;
        *(a6 + 24) = v25;
        *(a6 + 32) = v26;
        *(a6 + 40) = v21;
        *(a6 + 48) = 0;
      }

      else
      {
        if (*(a3 + 80))
        {
          v28 = *(a3 + 88);
        }

        else
        {
          v28 = a3 + 81;
        }

        re::DynamicString::format(buf, "Failed to create texture asset for asset path: '%s'.", v20, v28);
        v29 = *buf;
        v30 = *&buf[16];
        v31 = v45;
        *a6 = 0;
        *(a6 + 8) = v29;
        *(a6 + 24) = v30;
        *(a6 + 32) = v31;
      }

      if (v34 != -1)
      {
        (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSB_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v34])(buf, v33);
      }
    }

    else
    {
      re::DynamicString::DynamicString(buf, &v36);
      *a6 = 0;
      v27 = v45;
      *(a6 + 8) = *buf;
      *(a6 + 32) = v27;
      *(a6 + 16) = *&buf[8];
    }

    re::Result<re::TextureImportData,re::DynamicString>::~Result(&v35);
  }

  else
  {
    re::DynamicString::DynamicString(&v35, &v39);
    *a6 = 0;
    *(a6 + 8) = v35;
    *(a6 + 32) = v37[0];
    *(a6 + 16) = v36;
  }

  result = v39;
  if (v38 == 1)
  {
    return (*v39)(&v39);
  }

  if (v39)
  {
    if (v40)
    {
      return (*(*v39 + 40))();
    }
  }

  return result;
}

_anonymous_namespace_ *re::TextureAssetRealityFileProviderCallbacks::prepareDeserializationContext(_anonymous_namespace_ *result, uint64_t a2, uint64_t a3)
{
  if (*(result + 32) == 1 && *(a2 + 104) == 1)
  {
    v6 = 0uLL;
    v7 = 0;
    re::DynamicString::setCapacity(&v5, 0);
    v8 = v5;
    v10 = v7;
    v9 = v6;
    v11 = 0;
    result = re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a3, "SkipBackcompGamutConversion", &v8);
    if (v11 != -1)
    {
      result = (*(&off_1F5CC3FE0 + v11))(&v12, &v8);
    }
  }

  if (*(a2 + 112) != 1)
  {
    re::DynamicString::format(&v5, "%d", a2, *(a2 + 112));
    v8 = v5;
    v10 = v7;
    v9 = v6;
    v11 = 0;
    result = re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data,unsigned long>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add<void>(a3, "TextureDownsampleFactor", &v8);
    if (v11 != -1)
    {
      return (*(&off_1F5CC3FE0 + v11))(&v12, &v8);
    }
  }

  return result;
}

uint64_t re::TextureAssetRealityFileProviderCallbacks::postLoadProcessing@<X0>(re::RealityFile *this@<X2>, uint64_t a2@<X0>, re::TextureAsset *a3@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (*(a4 + 80))
  {
    v8 = *(a4 + 88);
  }

  else
  {
    v8 = (a4 + 81);
  }

  re::RealityFile::makeArchiveReader(this, v43);
  if ((v43[0] & 1) == 0)
  {
    v24 = re::WrappedError::localizedDescription(&v44);
    v25 = v39;
    v26 = v40;
    v27 = v41;
    *a5 = 0;
    *(a5 + 8) = v25;
    *(a5 + 24) = v26;
    *(a5 + 32) = v27;
    return re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v43);
  }

  v29 = a3;
  v9 = v44;
  if (v44)
  {
    v10 = v44 + 8;
  }

  re::RealityArchive::entryNames(&v39, v9);
  if (!v40)
  {
LABEL_35:
    re::DynamicArray<re::DynamicString>::deinit(&v39);
    *a5 = 1;
    if (!v9)
    {
      return re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v43);
    }

LABEL_36:

    return re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v43);
  }

  v11 = v42;
  v12 = 32 * v40;
  while (1)
  {
    re::DynamicString::rfind(&v37, v11, 46);
    if (v37 == 1)
    {
      v13 = (*(v11 + 8) & 1) != 0 ? *(v11 + 2) : (v11 + 9);
      v14 = v38;
      if (!strcmp(v13 + v38, ".ktx"))
      {
        re::DynamicString::rfind(v36, v11, 46, v14);
        if (LOBYTE(v36[0]) == 1)
        {
          v15 = *(v11 + 1);
          if (v15)
          {
            v16 = *(v11 + 2);
          }

          else
          {
            v16 = v11 + 9;
          }

          v17 = v36[1];
          v18 = strncmp(v16, "assets/", 7uLL);
          v19 = v17 - 7;
          if (v18)
          {
            v19 = v17;
          }

          v20 = 7;
          if (v18)
          {
            v20 = 0;
          }

          if (!strncmp(&v16[v20], v8, v19 - 1))
          {
            v21 = (v15 & 1) != 0 ? *(v11 + 2) : v11 + 9;
            re::RealityArchive::newDataByLoadingEntryWithName(&v33, v9, v21);
            v22 = v33;
            if (v33)
            {
              v23 = v34;
              v30 = v23;
              re::TextureAssetLoader::injectMipsFromKTX(*(a2 + 24), v29, &v30);
            }

            else
            {
              re::DynamicString::DynamicString(&v30, &v34);
              *a5 = 0;
              *(a5 + 8) = v30;
              *(a5 + 32) = v32;
              *(a5 + 16) = v31;
            }

            if (v33 & 1) == 0 && v34 && (v35)
            {
              (*(*v34 + 40))();
            }

            if (!v22)
            {
              break;
            }
          }
        }
      }
    }

    v11 = (v11 + 32);
    v12 -= 32;
    if (!v12)
    {
      goto LABEL_35;
    }
  }

  re::DynamicArray<re::DynamicString>::deinit(&v39);
  if (v9)
  {
    goto LABEL_36;
  }

  return re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v43);
}

uint64_t re::IntrospectionFixedArray<short>::IntrospectionFixedArray()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE195F88, 0);
  *(&qword_1EE195F98 + 6) = 0;
  qword_1EE195F98 = 0;
  *&xmmword_1EE195FA8 = 0;
  *(&xmmword_1EE195FA8 + 1) = 0xFFFFFFFFLL;
  qword_1EE195F88 = &unk_1F5CAE268;
  qword_1EE195FC0 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE195FB8);
  qword_1EE195F88 = &unk_1F5CC4008;
  return result;
}

void *re::IntrospectionFixedArray<short>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<short>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<short>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void re::IntrospectionFixedArray<short>::init(uint64_t a1, void *a2, re *a3, int a4, uint64_t a5)
{
  v26 = *MEMORY[0x1E69E9840];
  re::FixedArray<short>::init<>(a2, a3, a5);
  if (a5)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = a2[1];
      if (v12 <= v11)
      {
        v16 = 0;
        memset(v25, 0, sizeof(v25));
        v13 = MEMORY[0x1E69E9C10];
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

        v20 = 468;
        v21 = 2048;
        v22 = v11;
        v23 = 2048;
        v24 = v12;
        _os_log_send_and_compose_impl(v14, &v16, v25, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
        _os_crash_msg();
        __break(1u);
      }

      re::introspectionInitElement(a3, a4, *(a1 + 48), (a2[2] + v10));
      ++v11;
      v10 += 2;
    }

    while (a5 != v11);
  }
}

unint64_t re::IntrospectionFixedArray<short>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
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

    v13 = 468;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 2 * a3;
}

{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
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

    v13 = 476;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16) + 2 * a3;
}

void *re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);

  return re::FixedArray<CoreIKTransform>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t *a1, void *a2, re::Allocator *a3, uint64_t a4)
{
  re::FixedArray<CoreIKTransform>::deinit(a1);
  re::FixedArray<short>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
      v11 = 2 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 2;
        v11 -= 2;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
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

    v12 = 468;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + 2 * a2;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (v1 < v3)
  {
    a1[2] = ++v1;
  }

  if (v3 <= v1)
  {
    return 0;
  }

  else
  {
    return *(v2 + 16) + 2 * v1;
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<short>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void _ZZN2re8internal15setIntroVersionINS_12TextureAssetELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS4_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS7_ENS0_8priorityILi1EEEENUlSC_S7_E_8__invokeESC_S7_(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_30;
  }

  if (re::TextureAsset::isCompletelyLoadedTexture(result) && !*(result + 264) && *(result + 272) >= *(result + 156))
  {
    if ((*(result + 348) | 4) == 7)
    {
      v4 = &v19;
      v5 = 12;
      re::getRequiredDeploymentTargetsForRelease(0xC, &v19);
      if (v20)
      {
        v12 = *&v22.var0;
      }

      else
      {
        v12 = v21;
      }

      snprintf(__str, 0x100uLL, "%s %s %s", "2D array and 3D textures are available for", v12, "and later.");
      goto LABEL_9;
    }

LABEL_30:
    *a2 = 1;
    *(a2 + 8) = 0;
    return;
  }

  v4 = &v19;
  v5 = 15;
  re::getRequiredDeploymentTargetsForRelease(0xF, &v19);
  if (v20)
  {
    v6 = *&v22.var0;
  }

  else
  {
    v6 = v21;
  }

  snprintf(__str, 0x100uLL, "%s %s %s", "Streamed textures are available for", v6, "and later.");
LABEL_9:
  v7 = v19;
  if (v19 && (v20 & 1) != 0)
  {
    v7 = (*(*v19 + 40))();
  }

  v20 = 0;
  LODWORD(v19) = v5;
  v14 = 0;
  v15 = &str_67;
  v8 = strlen(__str);
  v16[0] = 1;
  v17 = v14;
  v18 = v15;
  v14 = 0;
  v15 = &str_67;
  v9 = re::Optional<re::StringID>::operator=(&v20, v16);
  if (v16[0] == 1)
  {
    if (v17)
    {
      if (v17)
      {
      }
    }

    v17 = 0;
    v18 = &str_67;
  }

  if (v14)
  {
    if (v14)
    {
    }
  }

  v10 = v20;
  if (v20 == 1)
  {
    LOBYTE(v4) = v22.var0;
    v13 = v22;
  }

  *a2 = v19;
  *(a2 + 8) = v10;
  if (v10)
  {
    v11 = re::StringID::StringID((a2 + 16), &v13);
    if (v4)
    {
    }
  }
}

void sub_1E200DFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = REAudioPayload;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1E200F2A4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1E200F97C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void re::AudioPayload::makeBufferPayloadWithProperties(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, void *a6@<X5>, char a7@<W6>, int a8@<W7>, REAudioPayload **a9@<X8>, float a10@<S0>, double a11@<D1>, uint64_t a12, int a13, uint64_t a14)
{
  v31 = a1;
  v22 = a2;
  v23 = a6;
  v24 = [REAudioPayload alloc];
  LODWORD(v28) = a13;
  HIDWORD(v27) = a8;
  LOBYTE(v27) = a7;
  *&v25 = a10;
  v26 = [REAudioPayload initWithBuffer:v24 format:"initWithBuffer:format:length:inputMode:referenceLevel:loopCount:mixGroupName:streaming:normalizationMode:calibrationMode:calibrationLevel:layoutTag:taskToken:audioAssetID:" length:v31 inputMode:v22 referenceLevel:a3 loopCount:a4 mixGroupName:a5 streaming:v23 normalizationMode:v25 calibrationMode:a11 calibrationLevel:v27 layoutTag:a12 taskToken:v28 audioAssetID:a14];
  *a9 = v26;
}

void re::AudioPayload::makeFilePayloadWithProperties(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, unsigned int a7@<W6>, unsigned int a8@<W7>, REAudioPayload **a9@<X8>, float a10@<S0>, double a11@<D1>, double a12@<D2>, int a13, uint64_t a14, void *a15)
{
  v31 = a4;
  v25 = a15;
  v26 = [REAudioPayload alloc];
  LODWORD(v29) = a13;
  *&v27 = a10;
  v28 = [(REAudioPayload *)v26 initWithFilePath:a1 inputMode:a2 referenceLevel:a3 loopCount:v31 mixGroupName:a5 streaming:a6 normalizationMode:v27 calibrationMode:a11 calibrationLevel:a12 layoutTag:__PAIR64__(a8 taskToken:a7) targetLUFS:v29 audioAssetID:a14 urlQueryItems:v25];
  *a9 = v28;
}

void re::AudioPayload::makeFileBufferPayloadWithProperties(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, unsigned int a6@<W5>, void *a7@<X6>, char a8@<W7>, REAudioPayload **a9@<X8>, float a10@<S0>, double a11@<D1>, int a12, unsigned int a13, unsigned int a14, int a15, uint64_t a16)
{
  v33 = a1;
  v23 = a2;
  v24 = a7;
  v25 = [REAudioPayload alloc];
  LODWORD(v29) = a15;
  HIDWORD(v28) = a12;
  LOBYTE(v28) = a8;
  *&v26 = a10;
  v27 = [(REAudioPayload *)v25 initWithFileBuffer:v33 format:v23 length:a3 bufferSize:a4 inputMode:a5 referenceLevel:a6 loopCount:v26 mixGroupName:a11 streaming:v24 normalizationMode:v28 calibrationMode:__PAIR64__(a14 calibrationLevel:a13) layoutTag:v29 taskToken:a16 audioAssetID:?];
  *a9 = v27;
}

void re::AudioPayload::dynamicCast(id *this@<X0>, void *a2@<X8>)
{
  v6 = *this;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v6;
  if (isKindOfClass)
  {
    v5 = v6;
    v4 = v6;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

BOOL re::AssetCompatibilityManager::isScene(re::AssetCompatibilityManager *this, const re::AssetHandle *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    v3 = *(v2 + 280);
  }

  else
  {
    v3 = 0;
  }

  return v3 == re::SceneAsset::assetType(this);
}

uint64_t re::AssetCompatibilityManager::isAssetAvailableForVersion(re::SkeletonAsset *a1, re::AssetHandle *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 1);
  if (v7)
  {
    v8 = *(v7 + 280);
    if (v8 == re::SkeletonAsset::assetType(a1))
    {
      return 1;
    }
  }

  else
  {
    re::SkeletonAsset::assetType(a1);
  }

  return re::TypeAvailabilityUtilities::checkAssetIsAvailableForMajorVersion(a2, a3, a4, 0);
}

void re::AssetCompatibilityManager::isAssetAllowedInRealityFile(const re::AssetHandle *a2@<X1>, uint64_t x8_0@<X8>)
{
  v3 = *(a2 + 1);
  if (v3)
  {
    v4 = *(v3 + 280);
  }

  else
  {
    v4 = 0;
  }

  re::TypeAvailabilityUtilities::isAssetAllowedInRealityFile(v4, x8_0);
}

uint64_t re::AssetCompatibilityManager::emitAssetTypeBeginSignpost(re::AssetCompatibilityManager *this, const re::AssetType *a2, uint64_t a3)
{
  v4 = re::MeshAsset::assetType(this);
  if (v4 == a2)
  {
    result = re::internal::enableSignposts(0, 0);
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v5 = re::MaterialAsset::assetType(v4);
    if (v5 == a2)
    {
      result = re::internal::enableSignposts(0, 0);
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      result = re::TextureAsset::assetType(v5);
      if (result != a2)
      {
        return result;
      }

      result = re::internal::enableSignposts(0, 0);
      if (!result)
      {
        return result;
      }
    }
  }

  return kdebug_trace();
}

uint64_t re::AssetCompatibilityManager::emitAssetTypeEndSignpost(re::AssetCompatibilityManager *this, const re::AssetType *a2, uint64_t a3)
{
  v4 = re::MeshAsset::assetType(this);
  if (v4 == a2)
  {
    result = re::internal::enableSignposts(0, 0);
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v5 = re::MaterialAsset::assetType(v4);
    if (v5 == a2)
    {
      result = re::internal::enableSignposts(0, 0);
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      result = re::TextureAsset::assetType(v5);
      if (result != a2)
      {
        return result;
      }

      result = re::internal::enableSignposts(0, 0);
      if (!result)
      {
        return result;
      }
    }
  }

  return kdebug_trace();
}

uint64_t re::DynamicArray<re::Function<re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::Function<re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 40 * v4;
  *(v5 + 24) = *(a2 + 24);
  *(v5 + 32) = 0;
  result = re::FunctionBase<24ul,re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>::operator=<24ul>(v5, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::SceneAssetRemapperImplementation::remapSceneAsset(re::SceneAssetRemapperImplementation *this@<X0>, const re::AssetHandle *a2@<X1>, const re::DynamicString *a3@<X2>, uint64_t a4@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  re::AssetHandle::AssetHandle(&v27, a2);
  if (!*(this + 5))
  {
LABEL_16:
    re::AssetHandle::AssetHandle(&v30, &v27);
    *a4 = 1;
    *(a4 + 8) = v30;
    v30 = 0uLL;
    *(a4 + 24) = v31;
    v31 = 0;
    re::AssetHandle::~AssetHandle(&v30);
    goto LABEL_17;
  }

  v8 = *(a2 + 1);
  if (v8)
  {
    v9 = *(v8 + 24);
  }

  else
  {
    v9 = 0;
  }

  re::StringID::StringID(&v30, a3);
  v10 = re::make::shared::object<re::ecs2::Scene,re::StringID>(&v30, &v26);
  if (v30)
  {
    if (v30)
    {
    }
  }

  re::ecs2::ECSSerialization::loadFromAsset(v26, v9, a2, v11);
  v12 = *(this + 5);
  if (!v12)
  {
LABEL_14:
    if (v26)
    {
    }

    goto LABEL_16;
  }

  v13 = 0;
  v14 = *(this + 7);
  v15 = 40 * v12;
  while (1)
  {
    v32 = *(v14 + 24);
    v33 = 0;
    re::FunctionBase<24ul,re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>::operator=<24ul>(&v30, v14);
    v29 = v26;
    (*(*v33 + 16))(&v24);
    if (v25)
    {
      break;
    }

    v13 |= v24;
    v16 = re::FunctionBase<24ul,re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>::destroyCallable(&v30);
    v14 += 40;
    v15 -= 40;
    if (!v15)
    {
      if (v13)
      {
        v17 = re::globalAllocators(v16);
        v18 = (*(*v17[2] + 32))(v17[2], 40, 8);
        *v18 = 0u;
        *(v18 + 16) = 0u;
        *(v18 + 32) = 0;
        re::ecs2::ECSSerialization::saveIntoSceneAssetData(v26, v18, 1);
        v20 = re::SceneAsset::assetType(v19);
        (*(v9->var0 + 53))(&v30, v9, v18, v20, 0, 0, 0);
        v21 = v27;
        v27 = v30;
        v30 = v21;
        v22 = v28;
        v28 = v31;
        v31 = v22;
        re::AssetHandle::~AssetHandle(&v30);
      }

      goto LABEL_14;
    }
  }

  v23 = v25;
  *a4 = 0;
  *(a4 + 8) = v23;

  re::FunctionBase<24ul,re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>::destroyCallable(&v30);
  if (v26)
  {
  }

LABEL_17:
  re::AssetHandle::~AssetHandle(&v27);
}

void re::SceneAssetRemapperImplementation::~SceneAssetRemapperImplementation(re::SceneAssetRemapperImplementation *this)
{
  *this = &unk_1F5CC4188;
  re::DynamicArray<re::Function<re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CC4188;
  re::DynamicArray<re::Function<re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::FunctionBase<24ul,re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>::destroyCallable(uint64_t a1))(void)
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

uint64_t re::DynamicArray<re::Function<re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>>::deinit(uint64_t a1)
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
          re::FunctionBase<24ul,re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>::destroyCallable(v3);
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

_anonymous_namespace_ *re::DynamicArray<re::Function<re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::Function<re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Function<re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::Function<re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Function<re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>>::setCapacity(v5, a2);
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
              goto LABEL_28;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
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
LABEL_28:
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
          *(v11 + 24) = *(v8 + 24);
          *(v11 + 32) = 0;
          if (v8 != v11)
          {
            re::FunctionBase<24ul,re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>::destroyCallable(v11);
            v12 = *(v8 + 32);
            if (*(v11 + 24) != *(v8 + 24) || v8 == v12)
            {
              if (v12)
              {
                v14 = (*(*v12 + 40))(v12);
                v15 = v11;
                if (v14 >= 0x19)
                {
                  v16 = v14;
                  v17 = *(v11 + 24);
                  if (v17)
                  {
                    v15 = (*(*v17 + 32))(v17, v16, 0);
                  }

                  else
                  {
                    v15 = 0;
                  }
                }

                *(v11 + 32) = v15;
                (*(**(v8 + 32) + 32))(*(v8 + 32));
                re::FunctionBase<24ul,re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>::destroyCallable(v8);
              }
            }

            else
            {
              *(v11 + 32) = v12;
              *(v8 + 32) = 0;
            }
          }

          re::FunctionBase<24ul,re::SceneAssetRemapperImplementation::SceneRemappingResult ()(re::ecs2::Scene *)>::destroyCallable(v8);
          v8 += 40;
          v11 += 40;
          v10 -= 40;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_28;
    }
  }

  return result;
}

re::ecs2::Scene *re::make::shared::object<re::ecs2::Scene,re::StringID>@<X0>(re *a1@<X0>, re::ecs2::Scene **a2@<X8>)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 384, 8);
  result = re::ecs2::Scene::Scene(v5, a1);
  *a2 = result;
  return result;
}

uint64_t re::PbrEmulationLoadHelper::isWaitingForAssetDependencies(uint64_t a1, uint64_t a2)
{
  if (re::GraphicsFeatureFlags::enablePbrToSurfaceShaderConversion(void)::onceToken != -1)
  {
    dispatch_once(&re::GraphicsFeatureFlags::enablePbrToSurfaceShaderConversion(void)::onceToken, &__block_literal_global_14_1);
  }

  if (re::GraphicsFeatureFlags::enablePbrToSurfaceShaderConversion(void)::sEnablePbrToSurfaceShaderConversion != 1)
  {
    goto LABEL_26;
  }

  v4 = 0;
  v5 = atomic_load((a1 + 256));
  if ((v5 & 1) == 0 && *(a2 + 40))
  {
    v7 = re::AssetHandle::loadedAsset<re::MaterialDefinitionAsset>((a2 + 32));
    if ((atomic_load_explicit(&qword_1EE196238, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196238))
    {
      _MergedGlobals_73 = re::hashStringCaseInsensitive("Pbr", v6);
      __cxa_guard_release(&qword_1EE196238);
    }

    if ((atomic_load_explicit(&qword_1EE196248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196248))
    {
      qword_1EE196240 = re::hashStringCaseInsensitive("TransparentPbr", v6);
      __cxa_guard_release(&qword_1EE196248);
    }

    v8 = re::hashStringCaseInsensitive(*(*(v7 + 744) + 1424), v6);
    if (v8 != _MergedGlobals_73 && v8 != qword_1EE196240)
    {
LABEL_26:
      v4 = 0;
      return v4 & 1;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN2re22PbrEmulationLoadHelper29isWaitingForAssetDependenciesERKNS_12MaterialFileE_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    if (qword_1EE196250 != -1)
    {
      dispatch_once(&qword_1EE196250, block);
    }

    os_unfair_lock_lock((a1 + 128));
    v10 = *(a1 + 152);
    if (v10)
    {
      v11 = *(a1 + 168);
      v12 = v11 + 24 * v10;
      do
      {
        while (1)
        {
          v13 = *(v11 + 8);
          if (v13)
          {
            break;
          }

          v11 += 24;
          if (v11 == v12)
          {
            os_unfair_lock_unlock((a1 + 128));
LABEL_29:
            atomic_store(1u, (a1 + 256));
            goto LABEL_31;
          }
        }

        v14 = atomic_load((v13 + 896));
        v11 += 24;
      }

      while (v14 != 1 && v11 != v12);
      os_unfair_lock_unlock((a1 + 128));
      if (v14 != 1)
      {
        goto LABEL_29;
      }
    }

    else
    {
      os_unfair_lock_unlock((a1 + 128));
    }

LABEL_31:
    v17 = atomic_load((a1 + 256));
    v4 = v17 ^ 1;
  }

  return v4 & 1;
}

uint64_t re::AssetHandle::loadedAsset<re::MaterialDefinitionAsset>(re::MaterialDefinitionAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v2 = re::MaterialDefinitionAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, v2, 1);
}

uint64_t re::hashStringCaseInsensitive(re *this, const char *a2)
{
  v3 = strlen(this);
  if (v3 >= 8)
  {
    v5 = 0;
    v4 = 0;
    v6 = 8;
    do
    {
      v7 = 0;
      v8 = *(this + v5);
      v5 = v6;
      __dst = v8;
      do
      {
        *(&__dst + v7) = __tolower(*(&__dst + v7));
        ++v7;
      }

      while (v7 != 8);
      v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (__dst ^ (__dst >> 30))) ^ ((0xBF58476D1CE4E5B9 * (__dst ^ (__dst >> 30))) >> 27));
      v4 = (v4 - 0x61C8864680B583E9 + ((v9 ^ (v9 >> 31)) << 6) + ((v9 ^ (v9 >> 31)) >> 2)) ^ v9 ^ (v9 >> 31);
      v6 = v5 + 8;
    }

    while (v5 + 8 <= v3);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v10 = v3 - v5;
  if (v10)
  {
    __dst = 0;
    memcpy(&__dst, this + v5, v10);
    for (i = 0; i != v10; ++i)
    {
      *(&__dst + i) = __tolower(*(&__dst + i));
    }

    v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (__dst ^ (__dst >> 30))) ^ ((0xBF58476D1CE4E5B9 * (__dst ^ (__dst >> 30))) >> 27));
    return (v4 - 0x61C8864680B583E9 + ((v12 ^ (v12 >> 31)) << 6) + ((v12 ^ (v12 >> 31)) >> 2)) ^ v12 ^ (v12 >> 31);
  }

  return v4;
}

void ___ZN2re22PbrEmulationLoadHelper29isWaitingForAssetDependenciesERKNS_12MaterialFileE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  os_unfair_lock_lock((v1 + 128));
  if (!*(v1 + 152))
  {
    for (i = 0; i != 24; i += 8)
    {
      (*(**v1 + 8))(v3);
      re::DynamicArray<re::AssetHandle>::add((v1 + 136), v3);
      re::AssetHandle::~AssetHandle(v3);
      re::AssetHandle::loadAsync((*(v1 + 168) + 24 * *(v1 + 152) - 24));
    }
  }

  os_unfair_lock_unlock((v1 + 128));
}

void sub_1E2010FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  re::AssetHandle::~AssetHandle(va);
  os_unfair_lock_unlock(v3 + 32);
  _Unwind_Resume(a1);
}

BOOL re::AudioAssetLoadStrategy_Host::createRuntimeData(re::AudioAssetLoadStrategy_Base *a1, re::AudioFileAsset *a2, uint64_t a3, uint64_t a4, AudioSceneService *a5)
{
  v9 = *(*(a2 + 1) + 16);
  if (v9 || (v9 = *(*(a2 + 1) + 200)) != 0)
  {

LABEL_4:
    re::AudioFileAsset::completeLoad(a2, a5);
    return 1;
  }

  v11 = *(*(a2 + 1) + 208);

  if (v11)
  {
    goto LABEL_4;
  }

  if (a3)
  {
    if ((*(*a1 + 48))(a1, a3, a2))
    {
      goto LABEL_4;
    }

    return 0;
  }

  if ((*(*(*(a2 + 1) + 48) + 64))())
  {
    if ((*(*a1 + 56))(a1, *(a2 + 1) + 48, a2))
    {
      goto LABEL_4;
    }

    return 0;
  }

  RuntimeDataWithAudioFile = re::AudioAssetLoadStrategy_Base::createRuntimeDataWithAudioFile(a1, a2);
  if (RuntimeDataWithAudioFile)
  {
    goto LABEL_4;
  }

  v13 = *re::audioLogObjects(RuntimeDataWithAudioFile);
  result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *v14 = 0;
    _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAssetLoader/Host] Failed to create runtime data with audio file.", v14, 2u);
    return 0;
  }

  return result;
}

void re::AudioAssetLoadStrategy_Host::unregisterAsset(re::AudioAssetLoadStrategy_Host *this, re::AudioFileAsset *a2, AudioSceneService *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = *re::audioLogObjects(this);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a2 + 1) + 24);
    v7 = 134217984;
    v8 = v6;
    _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "[CoreRE] [AudioFileAssetLoader/Host] Unregistered audio asset: %llu", &v7, 0xCu);
  }

  else
  {

    if (!a2)
    {
      return;
    }
  }

  (*(a3->var0 + 19))(a3, *(*(a2 + 1) + 24));
}

void re::AudioAssetLoadStrategy_Host::resourceDidUpdate(int a1, uint64_t a2, id *a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a2;
  v9 = *a3;
  v12[0] = &unk_1F5CC4268;
  v12[1] = &v11;
  v12[2] = &v10;
  v12[3] = v12;
  v13 = 1;
  re::AudioAssetLoadStrategy_Base::resourceDidUpdate(a1, a2, &v9, a4, a5, v12);
  if (v13 == 1)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v12);
  }
}

void sub_1E2011338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&a13);
  }

  _Unwind_Resume(a1);
}

uint64_t re::AudioAssetLoadStrategy_Host::createRuntimeDataWithRealityFile(re::AudioAssetLoadStrategy_Host *this, re::SeekableInputStream *a2, id **a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = (*(*this + 72))(this, a2, a3, 0);
  if (v6)
  {
    v7 = *(a3 + 108);
    re::AudioAssetLoadStrategy_Base::setAudioFileFormat(this, a3, v6);
    v8 = (*(*a2 + 112))(&v24, a2);
    if (v24)
    {
      v22[0] = v24;
      v23 = v25;
      v9 = (*(*a2 + 64))(a2);
      v10 = re::AudioAssetLoadStrategy_Base::generateURLFromQueryItems(this, v22, v9);
      v11 = *re::audioLogObjects(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(re *)v10 absoluteString];
        *buf = 138412290;
        v27 = v12;
        _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "[CoreRE] [AudioFileAssetLoader/Host] Streaming reality file from url: %@", buf, 0xCu);
      }

      v15 = a3[1];
      v14 = a3 + 1;
      v13 = v15;
      v16 = 50000;
      if ((*(v14 + 33) + 1) < 2)
      {
        v16 = 100000;
      }

      v14[20] = v16;
      objc_storeStrong(v13, v6);
      objc_storeStrong(*v14 + 4, v10);
    }

    else
    {
      v18 = *re::audioLogObjects(v8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "[CoreRE] [AudioFileAssetLoader/Host] Cannot read reality file as NSURL without file path and offset. Attempting to load asset blob.", buf, 2u);
      }

      if (!v7)
      {
        v17 = (*(*this + 64))(this, a2, a3);
        goto LABEL_19;
      }

      v10 = v6;
      a3[18] = [(re *)v10 getReaderFileLength];
      v19 = (*(*a2 + 64))(a2);
      v20 = v19 / 0x64;
      if (v19 / 0x64 <= 0xC350)
      {
        v20 = 50000;
      }

      if ((*(a3 + 35) + 1) <= 1)
      {
        v20 += v19;
      }

      a3[21] = v20;
      objc_storeStrong(a3[1], v6);
    }

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  return v17;
}

uint64_t re::AudioAssetLoadStrategy_Host::createRuntimeDataWithUSDZ(re::AudioAssetLoadStrategy_Host *this, re::SeekableInputStream *a2, re::AudioFileAsset *a3)
{
  *(*(a3 + 1) + 160) = (*(*(*(a3 + 1) + 48) + 40))();
  v6 = (*(*this + 72))(this, a2, a3, 0);
  if (v6)
  {
    v7 = *(a3 + 108);
    re::AudioAssetLoadStrategy_Base::setAudioFileFormat(this, a3, v6);
    if (v7)
    {
      *(a3 + 18) = [(AVAudioFile *)v6 getReaderFileLength];
      v8 = (*(*a2 + 64))(a2);
      v9 = v8 / 0x64;
      if (v8 / 0x64 <= 0xC350)
      {
        v9 = 50000;
      }

      if ((*(a3 + 35) + 1) <= 1)
      {
        v9 += v8;
      }

      *(a3 + 21) = v9;
      objc_storeStrong(*(a3 + 1), v6);
      v10 = 1;
    }

    else
    {
      v10 = (*(*this + 64))(this, a2, a3);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id re::AudioAssetLoadStrategy_Host::createREAudioFile(re::AudioAssetLoadStrategy_Host *this, re::SeekableInputStream *a2, re::AudioFileAsset *a3, int a4)
{
  v20 = *MEMORY[0x1E69E9840];
  (*(*a2 + 112))(v17, a2);
  if (a4)
  {
    v7 = [_REAudioFile audioFileWithStream:a2 ownsStream:1];
  }

  else if (*(a3 + 108) != 1 || (v17[0] & 1) != 0)
  {
    v7 = [_REAudioFile audioFileWithStream:a2 ownsStream:0];
  }

  else
  {
    v7 = [_REAudioFile audioFileWithStream:(*(*a2 + 72))(a2) ownsStream:1];
  }

  v8 = v7;
  if (!v7)
  {
    v9 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = *(*(a3 + 1) + 24);
      *buf = 134217984;
      v19 = v15;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAssetLoader/Host] Failed to load embedded audio asset(%llu) due to nil audio file", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v9 = [v7 processingFormat];
  v11 = re::audio::layoutTagFromFormat(v9, v10);
  *(a3 + 34) = v11;
  if (v11 == -65536)
  {
    v12 = *re::audioLogObjects(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = *(*(a3 + 1) + 24);
      *buf = 134217984;
      v19 = v16;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAssetLoader/Host] Failed to load embedded audio asset(%llu) due to missing channel layout.", buf, 0xCu);
    }

LABEL_14:
    v13 = 0;
    goto LABEL_16;
  }

  v13 = v8;
LABEL_16:

  return v13;
}

__n128 std::__function::__func<re::AudioAssetLoadStrategy_Host::resourceDidUpdate(re::AudioFileAsset *,re::SharedResourcePayload,re::AssetSerializationScheme *,re::AudioSceneService *)::$_0,std::allocator<re::AudioAssetLoadStrategy_Host::resourceDidUpdate(re::AudioFileAsset *,re::SharedResourcePayload,re::AssetSerializationScheme *,re::AudioSceneService *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC4268;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<re::AudioAssetLoadStrategy_Host::resourceDidUpdate(re::AudioFileAsset *,re::SharedResourcePayload,re::AssetSerializationScheme *,re::AudioSceneService *)::$_0,std::allocator<re::AudioAssetLoadStrategy_Host::resourceDidUpdate(re::AudioFileAsset *,re::SharedResourcePayload,re::AssetSerializationScheme *,re::AudioSceneService *)::$_0>,void ()(void)>::operator()(uint64_t result)
{
  if (*(*(**(result + 8) + 8) + 24))
  {
    return (*(***(result + 16) + 152))();
  }

  return result;
}

uint64_t std::__function::__func<re::AudioAssetLoadStrategy_Host::resourceDidUpdate(re::AudioFileAsset *,re::SharedResourcePayload,re::AssetSerializationScheme *,re::AudioSceneService *)::$_0,std::allocator<re::AudioAssetLoadStrategy_Host::resourceDidUpdate(re::AudioFileAsset *,re::SharedResourcePayload,re::AssetSerializationScheme *,re::AudioSceneService *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *re::CGPerspectiveContextAsset::assetType(re::CGPerspectiveContextAsset *this)
{
  {
    re::CGPerspectiveContextAsset::assetType(void)::type = "CGPerspectiveContext";
    qword_1EE1C6588 = 0;
    re::AssetType::generateCompiledExtension(&re::CGPerspectiveContextAsset::assetType(void)::type);
  }

  return &re::CGPerspectiveContextAsset::assetType(void)::type;
}

uint64_t re::CGPerspectiveContextAssetLoader::unloadAsset(re::CGPerspectiveContextAssetLoader *this, void *a2)
{
  v3 = a2[1];
  if (v3)
  {
    CFRelease(v3);
  }

  a2[1] = 0;
  *a2 = -1;
  a2[4] = 0;
  ++*(a2 + 10);
  v4 = re::globalAllocators(v3)[2];
  v5 = a2[1];
  if (v5)
  {
    CFRelease(v5);
  }

  a2[1] = 0;
  *a2 = -1;
  a2[4] = 0;
  ++*(a2 + 10);
  re::DynamicArray<unsigned long>::deinit((a2 + 2));
  v6 = *(*v4 + 40);

  return v6(v4, a2);
}

uint64_t re::CGPerspectiveContextAssetLoader::createRuntimeData(uint64_t a1, uint64_t a2)
{
  v3 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], *(a2 + 48), *(a2 + 24), *MEMORY[0x1E695E498]);
  *(a2 + 8) = CGPerspectiveCommandsDecode(v3);
  CFRelease(v3);
  return 1;
}

uint64_t re::CGPerspectiveContextAssetLoader::introspectionType(re::CGPerspectiveContextAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE196278, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196278))
  {
    qword_1EE196270 = re::internal::getOrCreateInfo("CGPerspectiveContextAsset", re::allocInfo_CGPerspectiveContextAsset, re::initInfo_CGPerspectiveContextAsset, &unk_1EE196268, 0);
    __cxa_guard_release(&qword_1EE196278);
  }

  return qword_1EE196270;
}

void *re::allocInfo_CGPerspectiveContextAsset(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_74, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_74))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE196290, "CGPerspectiveContextAsset");
    __cxa_guard_release(&_MergedGlobals_74);
  }

  return &unk_1EE196290;
}

void re::initInfo_CGPerspectiveContextAsset(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xC5C5E34969555BB2;
  v16[1] = "CGPerspectiveContextAsset";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE196260, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196260))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_uint32_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "networkVersion";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE196280 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicArray<unsigned char>>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "commandsBuffer";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x1000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE196288 = v14;
    __cxa_guard_release(&qword_1EE196260);
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE196280;
  *(this + 9) = re::internal::defaultConstruct<re::CGPerspectiveContextAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::CGPerspectiveContextAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::CGPerspectiveContextAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::CGPerspectiveContextAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

double re::internal::defaultConstruct<re::CGPerspectiveContextAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 48) = 0;
  result = 0.0;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::CGPerspectiveContextAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a3 + 8) = 0;
  *a3 = -1;
  *(a3 + 32) = 0;
  ++*(a3 + 40);

  return re::DynamicArray<unsigned long>::deinit(a3 + 16);
}

double re::internal::defaultConstructV2<re::CGPerspectiveContextAsset>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::CGPerspectiveContextAsset>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 8) = 0;
  *a1 = -1;
  *(a1 + 32) = 0;
  ++*(a1 + 40);

  return re::DynamicArray<unsigned long>::deinit(a1 + 16);
}

uint64_t re::ecs2::ECSSerialization::saveToStream(re::ecs2::ECSSerialization *this, re::ecs2::Scene *a2, AssetService *a3, google::protobuf::io::ZeroCopyOutputStream *a4)
{
  v58 = *MEMORY[0x1E69E9840];
  v55 = 0;
  memset(v53, 0, sizeof(v53));
  v54 = 0;
  re::ecs2::ECSSerialization::saveIntoSceneAssetData(this, v53, 0);
  {
    re::introspect<re::ecs2::SceneAssetData>(BOOL)::info = re::ecs2::introspect_SceneAssetData(0, v10, v11, v12, v13, v14);
  }

  re::IntrospectionSharedLock::IntrospectionSharedLock(&v52);
  {
    re::introspect<re::ecs2::SceneAssetData>(BOOL)::info = re::ecs2::introspect_SceneAssetData(0, v15, v16, v17, v18, v19);
  }

  re::TypeInfo::TypeInfo(v51, v25);
  re::DefaultAssetSerialize::DefaultAssetSerialize(&v45, 0);
  v44 = 0u;
  v43 = 0u;
  v42 = &v45;
  re::ecs2::ECSJSONSerializer::ECSJSONSerializer(&v24);
  v25[32] = &v42;
  v5 = re::ecs2::serializeObject<re::ecs2::ECSJSONSerializer>(&v24, v53, v51, a3, v20);
  v6 = LOBYTE(v20[0]);
  if ((v20[0] & 1) == 0)
  {
    v7 = *re::assetTypesLogObjects(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v22)
      {
        v8 = *&v23[7];
      }

      else
      {
        v8 = v23;
      }

      *buf = 136315138;
      v57 = v8;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "Failed to save scene to stream. Message: %s", buf, 0xCu);
    }
  }

  if (v20[0] & 1) == 0 && v21 && (v22)
  {
    (*(*v21 + 40))();
  }

  v24 = &unk_1F5CC46A8;
  if (v37)
  {
    if (v41)
    {
      (*(*v37 + 40))();
    }

    v41 = 0;
    v38 = 0;
    v39 = 0;
    v37 = 0;
    ++v40;
  }

  if (v32)
  {
    if (v36)
    {
      (*(*v32 + 40))();
    }

    v36 = 0;
    v33 = 0;
    v34 = 0;
    v32 = 0;
    ++v35;
  }

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

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v26);
  re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(&v24);
  v45 = &unk_1F5CB98A0;
  if (v46 == 1)
  {
    if (v49)
    {
      if (BYTE8(v49))
      {
        (*(*v49 + 40))();
      }

      v50 = 0u;
      v49 = 0u;
    }

    if (v47 && (v48 & 1) != 0)
    {
      (*(*v47 + 40))();
    }
  }

  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v52);
  re::DynamicArray<re::ecs2::EntityAssetData>::deinit(v53);
  return v6;
}

double re::ecs2::ECSSerialization::saveIntoSceneAssetData(re *a1, uint64_t a2, uint64_t a3)
{
  v6 = re::globalAllocators(a1);
  v7 = v6[2];
  v8 = re::globalAllocators(v6)[2];
  if (a3)
  {
    v29 = 0;
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  v28[0] = v9;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v27 = 0x7FFFFFFFLL;
  re::HashTable<re::ecs2::Entity const*,unsigned long long,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::init(v25, v8, 3);
  v10 = *(a1 + 13);
  v11 = *(v10 + 360);
  v12 = *(v10 + 344);
  if (v12)
  {
    v13 = 8 * v12;
    do
    {
      v14 = *v11++;
      v13 -= 8;
    }

    while (v13);
    v15 = *(a1 + 13);
    v11 = *(v15 + 360);
    v12 = *(v15 + 344);
  }

  v21 = 0u;
  v22 = 0;
  v20[0] = 0;
  v20[1] = 0;
  v20[2] = a1;
  v20[3] = v25;
  v23 = v20;
  v24 = 0;
  if (v12)
  {
    v16 = 8 * v12;
    do
    {
      v17 = *v11;
      if (!a3 || (*(v17 + 305) & 0x10) == 0)
      {
        re::DynamicArray<re::ecs2::EntityAssetData>::add(a2, v19);
        re::ecs2::EntityAssetData::~EntityAssetData(v19);
      }

      ++v11;
      v16 -= 8;
    }

    while (v16);
  }

  return re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v25);
}

uint64_t re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(uint64_t a1, uint64_t a2)
{
  *(a1 + 272) = a2;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear(a1 + 288);
  re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFuncs(a1);
  result = (*(*a1 + 32))(a1);
  *(a1 + 280) = *(*(a1 + 272) + 24);
  return result;
}

re *re::ecs2::serializeObject<re::ecs2::ECSJSONSerializer>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64) != 1)
  {
    (*(*a1 + 72))(a1, "object", 1, a2, a3, a3, 0);
  }

  (*(*a1 + 56))(a1);
  result = re::Encoder<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,google::protobuf::io::ZeroCopyOutputStream>::close((a1 + 24));
  if (*(a1 + 64) == 1)
  {
    v11 = *re::assetTypesLogObjects(result);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 64);
      if (v13)
      {
        v15 = *(a1 + 72);
        re::DynamicString::DynamicString(&v16, (a1 + 88));
        v12 = (v17 & 1) != 0 ? *&v18[7] : v18;
      }

      else
      {
        v12 = v18;
      }

      *buf = 136315138;
      *&buf[4] = v12;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Serialization failed. Message: %s", buf, 0xCu);
      if (v13 == 1 && v16 && (v17 & 1) != 0)
      {
        (*(*v16 + 40))();
      }
    }

    v14 = *(a1 + 64);
    if (v14 == 1)
    {
      v15 = *(a1 + 72);
      re::DynamicString::DynamicString(&v16, (a1 + 88));
    }

    *buf = v15;
    result = re::DynamicString::DynamicString(&v20, &v16);
    *a5 = 0;
    *(a5 + 8) = *buf;
    *(a5 + 24) = v20;
    *(a5 + 48) = v22;
    *(a5 + 32) = v21;
    v22 = 0;
    v20 = 0;
    v21 = 0uLL;
    if (v14 == 1)
    {
      result = v16;
      if (v16)
      {
        if (v17)
        {
          return (*(*v16 + 40))();
        }
      }
    }
  }

  else
  {
    *a5 = 1;
  }

  return result;
}

uint64_t re::ecs2::ECSSerialization::loadFromAsset(re::ecs2::ECSSerialization *this, AssetService *a2, AssetService *a3, const re::AssetHandle *a4)
{
  re::AssetHandle::loadNow(a3[1].var0, 0);
  var0 = a3[1].var0;
  if (!var0)
  {
    return 0;
  }

  v8 = atomic_load(var0 + 224);
  if (v8 != 2)
  {
    return 0;
  }

  v9 = re::AssetHandle::loadedAsset<re::SceneAsset>(a3);
  re::ecs2::ECSSerialization::loadFromAssetData(this, a2, v9);
  return 1;
}

{
  re::AssetHandle::loadNow(a3[1].var0, 0);
  var0 = a3[1].var0;
  if (!var0)
  {
    return 0;
  }

  v8 = atomic_load(var0 + 224);
  if (v8 != 2)
  {
    return 0;
  }

  v9 = re::AssetHandle::loadedAsset<re::SceneAsset>(a3);
  re::ecs2::ECSSerialization::loadFromAssetData(this, a2, v9);
  return 1;
}

uint64_t re::AssetHandle::loadedAsset<re::SceneAsset>(re::SceneAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v2 = re::SceneAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, v2, 1);
}

uint64_t re::ecs2::ECSSerialization::loadFromAssetData(re *a1, AssetService *a2, uint64_t a3)
{
  v20[4] = *MEMORY[0x1E69E9840];
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  v6 = re::globalAllocators(a1);
  v7 = (*(*v6[2] + 32))(v6[2], 136, 8);
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 76) = 0x7FFFFFFF;
  *(v7 + 104) = 0u;
  *(v7 + 120) = 0x7FFFFFFF00000000;
  *(v7 + 128) = 0;
  *(v7 + 88) = 0u;
  v17 = &unk_1F5CC44F0;
  v18[2] = &v17;
  v20[3] = v20;
  v19 = v7;
  v20[0] = &unk_1F5CC44F0;
  v8 = std::__function::__value_func<void ()(re::internal::EntityHandleHookupTable *)>::~__value_func[abi:nn200100](&v17);
  v9 = re::globalAllocators(v8);
  v10 = (*(*v9[2] + 32))(v9[2], 48, 8);
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *v10 = 0u;
  *(v10 + 36) = 0x7FFFFFFF;
  v16[0] = &unk_1F5CC4580;
  v16[3] = v16;
  v17 = v10;
  v18[3] = v18;
  v18[0] = &unk_1F5CC4580;
  std::__function::__value_func<void ()(re::internal::MeshSortGroupFixupTable *)>::~__value_func[abi:nn200100](v16);
  v11 = *(a3 + 16);
  if (v11)
  {
    v12 = *(a3 + 32);
    v13 = 112 * v11;
    do
    {
      v14 = *(a1 + 13);
      re::Collection<re::SharedPtr<re::ecs2::Entity>>::add((v14 + 320), v16);
      if (v16[0])
      {
      }

      v12 += 112;
      v13 -= 112;
    }

    while (v13);
  }

  re::internal::EntityHandleHookupTable::hookupHandlesForAllEntitiesInTable(v19);
  std::unique_ptr<re::internal::MeshSortGroupFixupTable,std::function<void ()(re::internal::MeshSortGroupFixupTable*)>>::~unique_ptr[abi:nn200100](&v17);
  std::unique_ptr<re::internal::EntityHandleHookupTable,std::function<void ()(re::internal::EntityHandleHookupTable*)>>::~unique_ptr[abi:nn200100](&v19);
  return 1;
}

{
  v17[4] = *MEMORY[0x1E69E9840];
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  v6 = re::globalAllocators(a1);
  v7 = (*(*v6[2] + 32))(v6[2], 136, 8);
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 76) = 0x7FFFFFFF;
  *(v7 + 104) = 0u;
  *(v7 + 120) = 0x7FFFFFFF00000000;
  *(v7 + 128) = 0;
  *(v7 + 88) = 0u;
  v8 = re::globalAllocators(v7);
  v9 = (*(*v8[2] + 32))(v8[2], 48, 8);
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *v9 = 0u;
  *(v9 + 36) = 0x7FFFFFFF;
  v15[0] = &unk_1F5CC4460;
  v15[3] = v15;
  v16 = v9;
  v17[3] = v17;
  v17[0] = &unk_1F5CC4460;
  std::__function::__value_func<void ()(re::internal::MeshSortGroupFixupTable *)>::~__value_func[abi:nn200100](v15);
  v10 = *(a3 + 16);
  if (v10)
  {
    v11 = *(a3 + 32);
    v12 = 112 * v10;
    do
    {
      v13 = v15[0];
      re::ecs2::Entity::setParentInternal(v15[0], a1, 0xFFFFFFFFFFFFFFFFLL);
      if (v13)
      {
      }

      v11 += 112;
      v12 -= 112;
    }

    while (v12);
  }

  re::internal::EntityHandleHookupTable::hookupHandlesForAllEntitiesInTable(v7);
  re::internal::destroyPersistent<re::internal::EntityHandleHookupTable>(v7);
  std::unique_ptr<re::internal::MeshSortGroupFixupTable,std::function<void ()(re::internal::MeshSortGroupFixupTable*)>>::~unique_ptr[abi:nn200100](&v16);
  return 1;
}

void re::ecs2::ECSSerialization::createSerializedJsonData(re::ecs2::ECSSerialization *this@<X0>, uint64_t a2@<X8>)
{
  Mutable = CFDataCreateMutable(0, 0);
  re::CFDataBufferedOutputStream::CFDataBufferedOutputStream(v37, &Mutable, -1);
  v4 = (*(*this + 40))(this);
  v5 = (*(*v4 + 48))(v4);
  re::IntrospectionSharedLock::IntrospectionSharedLock(&v36);
  re::ecs2::ECSJSONSerializer::ECSJSONSerializer(v19);
  re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(v19, *(v5 + 32));
  re::ecs2::serializeComponent<re::ecs2::ECSJSONSerializer>(v19, this, v37, v15);
  if (v15[0])
  {
    v19[0] = &unk_1F5CC46A8;
    if (v31)
    {
      if (v35)
      {
        (*(*v31 + 40))();
      }

      v35 = 0;
      v32 = 0;
      v33 = 0;
      v31 = 0;
      ++v34;
    }

    if (v26)
    {
      if (v30)
      {
        (*(*v26 + 40))();
      }

      v30 = 0;
      v27 = 0;
      v28 = 0;
      v26 = 0;
      ++v29;
    }

    if (v21)
    {
      if (v25)
      {
        (*(*v21 + 40))();
      }

      v25 = 0;
      v22 = 0;
      v23 = 0;
      v21 = 0;
      ++v24;
    }

    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v20);
    re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(v19);
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v36);
    v6 = Mutable;
    *a2 = 1;
    *(a2 + 8) = v6;
  }

  else
  {
    CFRelease(Mutable);
    if (v17)
    {
      v8 = *&v18[7];
    }

    else
    {
      v8 = v18;
    }

    re::DynamicString::format(&v12, "Serialization failed. Message: %s", v7, v8);
    v9 = v12;
    v10 = v13;
    v11 = v14;
    *a2 = 0;
    *(a2 + 8) = v9;
    *(a2 + 24) = v10;
    *(a2 + 32) = v11;
    if (v15[0] & 1) == 0 && v16 && (v17)
    {
      (*(*v16 + 40))();
    }

    v19[0] = &unk_1F5CC46A8;
    if (v31)
    {
      if (v35)
      {
        (*(*v31 + 40))();
      }

      v35 = 0;
      v32 = 0;
      v33 = 0;
      v31 = 0;
      ++v34;
    }

    if (v26)
    {
      if (v30)
      {
        (*(*v26 + 40))();
      }

      v30 = 0;
      v27 = 0;
      v28 = 0;
      v26 = 0;
      ++v29;
    }

    if (v21)
    {
      if (v25)
      {
        (*(*v21 + 40))();
      }

      v25 = 0;
      v22 = 0;
      v23 = 0;
      v21 = 0;
      ++v24;
    }

    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v20);
    re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(v19);
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v36);
  }

  re::CFDataBufferedOutputStream::~CFDataBufferedOutputStream(v37);
}

void re::ecs2::serializeComponent<re::ecs2::ECSJSONSerializer>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 272);
  re::IntrospectionSharedLock::IntrospectionSharedLock(&v34);
  v9 = (*(*a2 + 40))(a2);
  (*(*v9 + 56))(&v26);
  re::TypeRegistry::typeInfo(v8, &v26, &v32);
  if ((v32 & 1) == 0)
  {
    v11 = (*(*a2 + 40))(a2);
    v12 = (*(*v11 + 48))(v11);
    PrettyTypeName = re::getPrettyTypeName(&v26, v12);
    v14 = *re::assetTypesLogObjects(PrettyTypeName);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (v27)
      {
        v16 = *(&v27 + 1);
      }

      else
      {
        v16 = &v27 + 1;
      }

      *buf = 136315138;
      *&buf[4] = v16;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Serialization failed. Type info (%s) not found.", buf, 0xCu);
    }

    if (v27)
    {
      v17 = *(&v27 + 1);
    }

    else
    {
      v17 = &v27 + 1;
    }

    re::DynamicString::format(buf, "Serialization failed. Type info (%s) not found.", v15, v17);
    v18 = *buf;
    v19 = v36;
    v20 = v37;
    *a4 = 0;
    *(a4 + 8) = 400;
    *(a4 + 16) = re::FoundationErrorCategory(void)::instance;
    *(a4 + 24) = v18;
    *(a4 + 40) = v19;
    *(a4 + 48) = v20;
    v21 = v26;
    if (!v26 || (v27 & 1) == 0)
    {
      goto LABEL_34;
    }

    v22 = *(&v27 + 1);
LABEL_15:
    (*(*v21 + 40))(v21, v22);
    goto LABEL_34;
  }

  if (*(a1 + 64) != 1)
  {
    (*(*a1 + 72))(a1, "component", 1, a2, v33, v33, 0);
  }

  (*(*a1 + 56))(a1);
  v23 = re::Encoder<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,google::protobuf::io::ZeroCopyOutputStream>::close((a1 + 24));
  if (*(a1 + 64) != 1)
  {
    *a4 = 1;
    goto LABEL_34;
  }

  v24 = *re::assetTypesLogObjects(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    LOBYTE(v26) = *(a1 + 64);
    if (v26)
    {
      v27 = *(a1 + 72);
      re::DynamicString::DynamicString(&v28, (a1 + 88));
      v25 = (v29 & 1) != 0 ? v31 : v30;
    }

    else
    {
      v25 = v30;
    }

    *buf = 136315138;
    *&buf[4] = v25;
    _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEFAULT, "Serialization failed. Message: %s", buf, 0xCu);
    if (v26 == 1 && v28 && (v29 & 1) != 0)
    {
      (*(*v28 + 40))();
    }
  }

  LOBYTE(v26) = *(a1 + 64);
  if (v26 == 1)
  {
    v27 = *(a1 + 72);
    re::DynamicString::DynamicString(&v28, (a1 + 88));
  }

  *buf = v27;
  re::DynamicString::DynamicString(&v36, &v28);
  *a4 = 0;
  *(a4 + 8) = *buf;
  *(a4 + 24) = v36;
  *(a4 + 48) = v38;
  *(a4 + 32) = v37;
  v38 = 0;
  v36 = 0;
  v37 = 0uLL;
  if (v26 == 1)
  {
    v21 = v28;
    if (v28)
    {
      if (v29)
      {
        v22 = v31;
        goto LABEL_15;
      }
    }
  }

LABEL_34:
  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v34);
}

re::ecs2::Component *re::ecs2::ECSSerialization::addOrUpdateComponentFromJsonStream(uint64_t a1, AssetService *a2, uint64_t a3, const re::ecs2::ComponentTypeBase *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = re::ecs2::EntityComponentCollection::getOrAdd((a1 + 48), a4);
  if (v6)
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v40);
    re::ecs2::ECSJSONDeserializer::ECSJSONDeserializer(v17, a2);
    v7 = (*(*v6 + 40))(v6);
    v8 = (*(*v7 + 48))(v7);
    re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(v17, *(v8 + 32));
    re::ecs2::deserializeComponent<re::ecs2::ECSJSONDeserializer>(v17, v6, a3, v13);
    if ((v13[0] & 1) == 0)
    {
      v10 = *re::assetTypesLogObjects(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if (v15)
        {
          v11 = *&v16[7];
        }

        else
        {
          v11 = v16;
        }

        *buf = 136315138;
        v42 = v11;
        _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "Deserialization failed. Message: %s", buf, 0xCu);
      }

      v6 = 0;
    }

    if (v13[0] & 1) == 0 && v14 && (v15)
    {
      (*(*v14 + 40))();
    }

    v17[0] = &unk_1F5CC4600;
    v34 = &unk_1F5CB95A0;
    if (v35 == 1)
    {
      if (v38)
      {
        if (BYTE8(v38))
        {
          (*(*v38 + 40))();
        }

        v38 = 0u;
        v39 = 0u;
      }

      if (v36)
      {
        if (BYTE8(v36))
        {
          (*(*v36 + 40))();
        }

        v36 = 0u;
        v37 = 0u;
      }
    }

    v17[0] = &unk_1F5CBB1E0;
    if (v29)
    {
      if (v33)
      {
        (*(*v29 + 40))();
      }

      v33 = 0;
      v30 = 0;
      v31 = 0;
      v29 = 0;
      ++v32;
    }

    if (v24)
    {
      if (v28)
      {
        (*(*v24 + 40))();
      }

      v28 = 0;
      v25 = 0;
      v26 = 0;
      v24 = 0;
      ++v27;
    }

    if (v19)
    {
      if (v23)
      {
        (*(*v19 + 40))();
      }

      v23 = 0;
      v20 = 0;
      v21 = 0;
      v19 = 0;
      ++v22;
    }

    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v18);
    re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(v17);
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v40);
  }

  return v6;
}

void re::ecs2::deserializeComponent<re::ecs2::ECSJSONDeserializer>(uint64_t a1@<X0>, re::ecs2::Component *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 272);
  re::IntrospectionSharedLock::IntrospectionSharedLock(&v36);
  v9 = (*(*a2 + 40))(a2);
  (*(*v9 + 56))(&v28);
  re::TypeRegistry::typeInfo(v8, &v28, &v34);
  if ((v34 & 1) == 0)
  {
    v12 = (*(*a2 + 40))(a2);
    v13 = (*(*v12 + 48))(v12);
    PrettyTypeName = re::getPrettyTypeName(&v28, v13);
    v15 = *re::assetTypesLogObjects(PrettyTypeName);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (v29)
      {
        v17 = *(&v29 + 1);
      }

      else
      {
        v17 = &v29 + 1;
      }

      *buf = 136315138;
      *&buf[4] = v17;
      _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "Deserialization failed. Type info (%s) not found.", buf, 0xCu);
    }

    if (v29)
    {
      v18 = *(&v29 + 1);
    }

    else
    {
      v18 = &v29 + 1;
    }

    re::DynamicString::format(buf, "Deserialization failed. Type info (%s) not found.", v16, v18);
    v19 = *buf;
    v20 = *&buf[16];
    v21 = v38;
    *a4 = 0;
    *(a4 + 8) = 400;
    *(a4 + 16) = re::FoundationErrorCategory(void)::instance;
    *(a4 + 24) = v19;
    *(a4 + 40) = v20;
    *(a4 + 48) = v21;
    v22 = v28;
    if (!v28 || (v29 & 1) == 0)
    {
      goto LABEL_34;
    }

    v23 = *(&v29 + 1);
LABEL_15:
    (*(*v22 + 40))(v22, v23);
    goto LABEL_34;
  }

  if (*(a1 + 64) != 1)
  {
    (*(*a1 + 72))(a1, "component", 1, a2, v35, v35, 0);
  }

  (*(*a1 + 56))(a1);
  v24 = re::Encoder<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::SeekableInputStream>::close((a1 + 24));
  if (*(a1 + 64) != 1)
  {
    re::ecs2::Component::markDirty(a2);
    *a4 = 1;
    goto LABEL_34;
  }

  v25 = *re::assetTypesLogObjects(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = re::TypeInfo::name(v35)[1];
    LOBYTE(v28) = *(a1 + 64);
    if (v28)
    {
      v29 = *(a1 + 72);
      re::DynamicString::DynamicString(&v30, (a1 + 88));
      v27 = (v31 & 1) != 0 ? v33 : v32;
    }

    else
    {
      v27 = v32;
    }

    *buf = 136315394;
    *&buf[4] = v26;
    *&buf[12] = 2080;
    *&buf[14] = v27;
    _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_DEFAULT, "Deserialization failed. Type %s. Message: %s", buf, 0x16u);
    if (v28 == 1 && v30 && (v31 & 1) != 0)
    {
      (*(*v30 + 40))();
    }
  }

  LOBYTE(v28) = *(a1 + 64);
  if (v28 == 1)
  {
    v29 = *(a1 + 72);
    re::DynamicString::DynamicString(&v30, (a1 + 88));
  }

  *buf = v29;
  re::DynamicString::DynamicString(&buf[16], &v30);
  *a4 = 0;
  *(a4 + 8) = *buf;
  *(a4 + 24) = *&buf[16];
  *(a4 + 48) = v39;
  *(a4 + 32) = v38;
  v39 = 0;
  *&buf[16] = 0;
  v38 = 0uLL;
  if (v28 == 1)
  {
    v22 = v30;
    if (v30)
    {
      if (v31)
      {
        v23 = v33;
        goto LABEL_15;
      }
    }
  }

LABEL_34:
  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v36);
}

void re::ecs2::ECSJSONDeserializer::~ECSJSONDeserializer(re::ecs2::ECSJSONDeserializer *this)
{
  *this = &unk_1F5CC4600;
  *(this + 64) = &unk_1F5CB95A0;
  if (*(this + 520) == 1)
  {
    re::DynamicString::deinit((this + 568));
    re::DynamicString::deinit((this + 536));
  }

  *this = &unk_1F5CBB1E0;
  re::DynamicArray<unsigned long>::deinit(this + 472);
  re::DynamicArray<unsigned long>::deinit(this + 432);
  re::DynamicArray<unsigned long>::deinit(this + 392);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 43);

  re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(this);
}

{
  *this = &unk_1F5CC4600;
  *(this + 64) = &unk_1F5CB95A0;
  if (*(this + 520) == 1)
  {
    re::DynamicString::deinit((this + 568));
    re::DynamicString::deinit((this + 536));
  }

  *this = &unk_1F5CBB1E0;
  re::DynamicArray<unsigned long>::deinit(this + 472);
  re::DynamicArray<unsigned long>::deinit(this + 432);
  re::DynamicArray<unsigned long>::deinit(this + 392);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 43);
  re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::ECSSerialization::loadFromStream(re *a1, AssetService *a2, uint64_t a3, BOOL a4)
{
  v89 = *MEMORY[0x1E69E9840];
  {
    re::introspect<re::ecs2::SceneAssetData>(BOOL)::info = re::ecs2::introspect_SceneAssetData(0, v31, v32, v33, v34, v35);
  }

  re::IntrospectionSharedLock::IntrospectionSharedLock(&v73);
  {
    re::introspect<re::ecs2::SceneAssetData>(BOOL)::info = re::ecs2::introspect_SceneAssetData(0, v36, v37, v38, v39, v40);
  }

  re::TypeInfo::TypeInfo(v72, &v45);
  re::ecs2::ECSJSONDeserializer::ECSJSONDeserializer(&v44, a2);
  v43 = 0;
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  if (v47 != 1)
  {
    (*(v44 + 9))(&v44, "object", 1, v41, v72, v72, 0);
  }

  (*(v44 + 7))(&v44);
  v9 = re::Encoder<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::SeekableInputStream>::close(&v46);
  v10 = v47;
  if (v47 == 1)
  {
    v11 = *re::assetTypesLogObjects(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = re::TypeInfo::name(v72)[1];
      v83[0] = v47;
      if (v47)
      {
        *&v84[4] = v48;
        re::DynamicString::DynamicString(&v85, v49);
        v13 = (v86 & 1) != 0 ? v88 : v87;
      }

      else
      {
        v13 = v87;
      }

      *buf = 136315394;
      *v79 = v12;
      *&v79[8] = 2080;
      *&v79[10] = v13;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Deserialization failed. Type %s. Message: %s", buf, 0x16u);
      if (v83[0] == 1 && v85 && (v86 & 1) != 0)
      {
        (*(*v85 + 40))(v85, v88, v14, v15, v16);
      }
    }

    v83[0] = v47;
    if (v47 == 1)
    {
      *&v84[4] = v48;
      re::DynamicString::DynamicString(&v85, v49);
    }

    v74 = *&v84[4];
    v17 = re::DynamicString::DynamicString(&v75, &v85);
    v80 = v75;
    buf[0] = 0;
    *&v79[4] = v74;
    v82 = v77;
    v81 = v76;
    v77 = 0;
    v75 = 0;
    v76 = 0uLL;
    if (v83[0] == 1)
    {
      v17 = v85;
      if (v85)
      {
        if (v86)
        {
          v17 = (*(*v85 + 40))(v85, v88, v18, v19, v20);
        }
      }
    }

    v21 = *re::assetTypesLogObjects(v17);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT) || ((v81 & 1) != 0 ? (v25 = *(&v81 + 1)) : (v25 = &v81 + 1), *v83 = 136315138, *v84 = v25, _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "Failed to load scene from stream. Message: %s", v83, 0xCu), (buf[0] & 1) == 0))
    {
      if (v80 && (v81 & 1) != 0)
      {
        (*(*v80 + 40))(v80, *(&v81 + 1), v22, v23, v24);
      }
    }
  }

  else
  {
    re::ecs2::ECSSerialization::loadFromAssetData(a1, a2, v41);
  }

  re::DynamicArray<re::ecs2::EntityAssetData>::deinit(v41);
  v44 = &unk_1F5CC4600;
  v66 = &unk_1F5CB95A0;
  if (v67 == 1)
  {
    if (v70)
    {
      if (BYTE8(v70))
      {
        (*(*v70 + 40))(v70, v71, v26, v27, v28, v29);
      }

      v70 = 0u;
      v71 = 0u;
    }

    if (v68)
    {
      if (BYTE8(v68))
      {
        (*(*v68 + 40))(v68, v69, v26, v27, v28, v29);
      }

      v68 = 0u;
      v69 = 0u;
    }
  }

  v44 = &unk_1F5CBB1E0;
  if (v61)
  {
    if (v65)
    {
      (*(*v61 + 40))(v61, v65, v26, v27, v28, v29);
    }

    v65 = 0;
    v62 = 0;
    v63 = 0;
    v61 = 0;
    ++v64;
  }

  if (v56)
  {
    if (v60)
    {
      (*(*v56 + 40))(v56, v60, v26, v27, v28, v29);
    }

    v60 = 0;
    v57 = 0;
    v58 = 0;
    v56 = 0;
    ++v59;
  }

  if (v51)
  {
    if (v55)
    {
      (*(*v51 + 40))(v51, v55, v26, v27, v28, v29);
    }

    v55 = 0;
    v52 = 0;
    v53 = 0;
    v51 = 0;
    ++v54;
  }

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v50);
  re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(&v44);
  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v73);
  return v10 ^ 1u;
}

uint64_t anonymous namespace::generateEntityIDLookupTable(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  if (*a3 == 1)
  {
    v5 = *(a3 + 8) + 1;
    *(a3 + 8) = v5;
  }

  else
  {
    v5 = *(a1 + 312);
  }

  v11 = v5;
  result = re::HashTable<re::ecs2::Entity const*,unsigned long long,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addNew(a2, &v12, &v11);
  v7 = *(v12 + 344);
  if (v7)
  {
    v8 = *(v12 + 360);
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      v9 -= 8;
    }

    while (v9);
  }

  return result;
}

void anonymous namespace::convertToEntityAssetData(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(*(a3 + 24) + 24);
  *(a5 + 8) = 0;
  v10 = (a5 + 8);
  v34 = a1;
  *(a5 + 16) = &str_67;
  *(a5 + 24) = 1;
  *(a5 + 32) = 0;
  v11 = (a5 + 32);
  *(a5 + 56) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 104) = 0;
  *(a5 + 96) = 0;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a1 ^ (a1 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a1 ^ (a1 >> 30))) >> 27));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v9, &v34, v12 ^ (v12 >> 31), &v31);
  *a5 = *(*(v9 + 16) + 32 * v31.n128_u32[3] + 16);
  re::StringID::operator=(v10, (v34 + 288));
  v13 = v34;
  *(a5 + 24) = (*(v34 + 304) & 8) != 0;
  v14 = *(v13 + 72);
  *v11 = a2;
  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v11, 0);
  ++*(a5 + 56);
  if (*(a5 + 40) < v14)
  {
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v11, v14);
  }

  v15 = v34;
  v16 = *(v34 + 72);
  if (v16)
  {
    v17 = *(v34 + 88);
    v18 = 8 * v16;
    do
    {
      v19 = *v17;
      v20 = (*(**v17 + 40))(*v17);
      if ((*(v20 + 40) & 1) == 0)
      {
        v21 = v20;
        v22 = *((*(*v19 + 40))(v19) + 24) >> 1;
        v23 = v21[1];
        if (v23)
        {
          v24 = v23(v19);
          v31.n128_u64[0] = v22;
          v31.n128_u64[1] = v24;
          LOBYTE(v32) = 1;
          re::DynamicArray<re::BufferView>::add(v11, &v31);
        }

        else
        {
          (*(*v21 + 32))(&v33, v21);
          v25 = (*(*v19 + 40))(v19);
          v26 = (*(*v25 + 48))(v25);
          v31 = a2;
          v32 = a3;
          v27 = v33;
          v33 = 0;
          v31.n128_u64[0] = v22;
          v31.n128_u64[1] = v27;
          LOBYTE(v32) = 1;
          re::DynamicArray<re::BufferView>::add(v11, &v31);
          if (v33)
          {
          }
        }
      }

      ++v17;
      v18 -= 8;
    }

    while (v18);
    v15 = v34;
  }

  v28 = *(v15 + 344);
  if (*(a5 + 80) < v28)
  {
    re::DynamicArray<re::ecs2::EntityAssetData>::setCapacity((a5 + 72), v28);
    v15 = v34;
    v28 = *(v34 + 344);
  }

  if (v28)
  {
    v29 = *(v15 + 360);
    v30 = 8 * v28;
    do
    {
      if (!a4 || (*(v34 + 305) & 0x10) == 0)
      {
        re::DynamicArray<re::ecs2::EntityAssetData>::add(a5 + 72, &v31);
        re::ecs2::EntityAssetData::~EntityAssetData(&v31);
      }

      ++v29;
      v30 -= 8;
    }

    while (v30);
  }
}

uint64_t re::DynamicArray<re::ecs2::EntityAssetData>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= *(a1 + 8))
  {
    re::DynamicArray<re::ecs2::EntityAssetData>::growCapacity(a1, v4 + 1);
    v4 = *(a1 + 16);
  }

  result = re::ecs2::EntityAssetData::EntityAssetData(*(a1 + 32) + 112 * v4, a2);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

double re::ecs2::ECSSerialization::saveEntityHierarchyIntoSceneAssetData(re *a1, uint64_t a2, uint64_t a3)
{
  if (!a3 || (*(a1 + 305) & 0x10) == 0)
  {
    v6 = re::globalAllocators(a1);
    v7 = v6[2];
    v8 = re::globalAllocators(v6)[2];
    if (a3)
    {
      v23 = 0;
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    v22[0] = v9;
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    v21 = 0x7FFFFFFFLL;
    re::HashTable<re::ecs2::Entity const*,unsigned long long,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::init(v19, v8, 3);
    v18 = 0;
    v10 = a1;
    v16 = 0u;
    v17 = 0u;
    do
    {
      v11 = v10;
      v10 = *(v10 + 4);
    }

    while (v10);
    v12 = *(v11 + 3);
    v15[0] = 0;
    v15[1] = 0;
    v15[2] = v12;
    v15[3] = v19;
    *(&v17 + 1) = v15;
    re::DynamicArray<re::ecs2::EntityAssetData>::add(a2, v14);
    re::ecs2::EntityAssetData::~EntityAssetData(v14);
    return re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v19);
  }

  return result;
}

void anonymous namespace::convertFromEntityAssetData(re::ecs2::EntityFactory *a1, uint64_t a2, AssetService *a3, _anonymous_namespace_ *a4, re::internal::MeshSortGroupFixupTable *a5)
{
  v34 = *a2;
  v10 = *(a2 + 48);
  v11 = re::ecs2::EntityFactory::instance(a1);
  re::ecs2::EntityFactory::make(a1, v11, v10);
  v12 = *a1;
  re::StringID::operator=(v12 + 36, (a2 + 8));
  re::ecs2::Entity::setSelfEnabled(v12, *(a2 + 24));
  v13 = re::DirectAssetDeserialize::DirectAssetDeserialize(&v39, a3, 0);
  v38 = 0u;
  v37 = 0u;
  v36 = &v39;
  v14 = *(a2 + 48);
  if (v14)
  {
    v15 = 24 * v14;
    v16 = (*(a2 + 64) + 8);
    do
    {
      v17 = re::ecs2::ComponentTypeRegistry::instance(v13);
      v18 = re::ecs2::ComponentTypeRegistry::componentTypeWithHash(v17, *(v16 - 1));
      if (v18)
      {
        v19 = *(v18 + 1);
        if (v19)
        {
          v20 = v19(*v16, v18);
          v21 = v20;
          v35 = v20;
          if (v20)
          {
            v22 = (v20 + 8);
          }

          re::ecs2::EntityComponentCollection::add((v12 + 6), &v35, 1);
          if (v35)
          {

            v35 = 0;
          }

          if (v21)
          {
          }
        }

        else
        {
          v24 = re::ecs2::EntityComponentCollection::add((v12 + 6), v18);
          v25 = re::globalAllocators(v24)[2];
          v26 = (*(*v24 + 40))(v24);
          v27 = (*(*v26 + 48))(v26);
          v28 = *v16;
          *buf = v25;
          v46 = 0;
          v47 = &v36;
        }
      }

      else
      {
        v23 = *re::assetTypesLogObjects(0);
        v13 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEFAULT, "Unknown component type hash", buf, 2u);
        }
      }

      v16 += 3;
      v15 -= 24;
    }

    while (v15);
  }

  v29 = re::ecs2::EntityComponentCollection::get((v12 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v29)
  {
    re::internal::MeshSortGroupFixupTable::fixupMeshSortGroup(a5, v29);
  }

  re::internal::EntityHandleHookupTable::registerEntity(a4, v12, v34, 0);
  v30 = *(a2 + 88);
  if (v30)
  {
    v31 = *(a2 + 104);
    v32 = 112 * v30;
    do
    {
      v33 = *buf;
      re::ecs2::Entity::setParentInternal(*buf, v12, 0xFFFFFFFFFFFFFFFFLL);
      if (v33)
      {
      }

      v31 += 112;
      v32 -= 112;
    }

    while (v32);
  }

  v39 = &unk_1F5CB95A0;
  if (v40 == 1)
  {
    if (v43)
    {
      if (BYTE8(v43))
      {
        (*(*v43 + 40))();
      }

      v44 = 0u;
      v43 = 0u;
    }

    if (v41)
    {
      if (v42)
      {
        (*(*v41 + 40))();
      }
    }
  }
}

re *re::internal::destroyPersistent<re::internal::EntityHandleHookupTable>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v1 + 11);
    v3.n128_f64[0] = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v1 + 5);
    v4 = *v1;
    if (*v1)
    {
      v5 = *(v1 + 4);
      if (v5)
      {
        v6 = *(v1 + 2);
        if (v6)
        {
          v7 = 48 * v6;
          v8 = (v5 + 8);
          do
          {
            v8 = std::unique_ptr<re::internal::EntityHandleHookupTable,std::function<void ()(re::internal::EntityHandleHookupTable*)>>::~unique_ptr[abi:nn200100](v8) + 6;
            v7 -= 48;
          }

          while (v7);
          v4 = *v1;
          v5 = *(v1 + 4);
        }

        (*(*v4 + 40))(v4, v5, v3);
      }

      *(v1 + 4) = 0;
      *(v1 + 1) = 0;
      *(v1 + 2) = 0;
      *v1 = 0;
      ++*(v1 + 6);
    }

    v9 = *(*v2 + 40);

    return v9(v2, v1, v3);
  }

  return result;
}

uint64_t re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::open(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = a1;
  v8 = *(a1 + 272);
  if (*(v8 + 24) != *(a1 + 280))
  {
    re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(a1);
    a1 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(v7, v8);
  }

  *(v7 + 24) = a2;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  if (!a3)
  {
  }

  *(v7 + 48) = a3;
  if (!a4)
  {
  }

  *(v7 + 56) = a4;
  v15[0] = 0;
  re::Optional<re::DetailedError>::operator=(v7 + 64, v15);
  if (v15[0] == 1 && *&v17[1] && (v17[3] & 1) != 0)
  {
    (*(**&v17[1] + 40))();
  }

  *(v7 + 120) = *(v7 + 48);
  re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity((v7 + 120), 0x40uLL);
  ++*(v7 + 144);
  v15[0] = 0;
  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::add((v7 + 120), v15);
  if (!re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance)
  {
  }

  *(v7 + 216) = *(v7 + 56);
  re::DynamicArray<char>::setCapacity((v7 + 216), 0);
  ++*(v7 + 240);
  v10 = (*(**(v7 + 48) + 32))(*(v7 + 48), 64, 8);
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 512;
  *(v10 + 56) = 324;
  *(v10 + 60) = 0;
  *(v7 + 192) = v10;
  v11 = (*(**(v7 + 48) + 32))(*(v7 + 48), 48, 8);
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  *(v11 + 40) = 256;
  *(v7 + 184) = v11;
  v12 = *(v7 + 192);
  *v12 = v11;
  *(v12 + 60) = 0;
  *(v12 + 32) = *(v12 + 24);
  v13 = *(*v7 + 48);

  return v13(v7);
}

uint64_t re::ecs2::deserializeComponent<re::ecs2::ECSJSONDeserializer>@<X0>(char *a1@<X2>, uint64_t a2@<X0>, re::ecs2::Component *a3@<X1>, int a4@<W3>, uint64_t a5@<X8>)
{
  re::FixedArrayInputStream::FixedArrayInputStream(v9, a1, a4, -1);
  re::ecs2::deserializeComponent<re::ecs2::ECSJSONDeserializer>(a2, a3, v9, a5);
  return re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v9);
}

re *re::ecs2::serializeEntity<re::ecs2::ECSJSONSerializer>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  re::ecs2::serializeEntity<re::ecs2::ECSJSONSerializer>(a1, a2, a3);
  (*(*a1 + 56))(a1);
  result = re::Encoder<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,google::protobuf::io::ZeroCopyOutputStream>::close((a1 + 24));
  if (*(a1 + 64) == 1)
  {
    v11 = *re::assetTypesLogObjects(result);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 64);
      if (v13)
      {
        v15 = *(a1 + 72);
        re::DynamicString::DynamicString(&v16, (a1 + 88));
        v12 = (v17 & 1) != 0 ? *&v18[7] : v18;
      }

      else
      {
        v12 = v18;
      }

      *buf = 136315138;
      *&buf[4] = v12;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Serialization failed. Message: %s", buf, 0xCu);
      if (v13 == 1 && v16 && (v17 & 1) != 0)
      {
        (*(*v16 + 40))();
      }
    }

    v14 = *(a1 + 64);
    if (v14 == 1)
    {
      v15 = *(a1 + 72);
      re::DynamicString::DynamicString(&v16, (a1 + 88));
    }

    *buf = v15;
    result = re::DynamicString::DynamicString(&v20, &v16);
    *a5 = 0;
    *(a5 + 8) = *buf;
    *(a5 + 24) = v20;
    *(a5 + 48) = v22;
    *(a5 + 32) = v21;
    v22 = 0;
    v20 = 0;
    v21 = 0uLL;
    if (v14 == 1)
    {
      result = v16;
      if (v16)
      {
        if (v17)
        {
          return (*(*v16 + 40))();
        }
      }
    }
  }

  else
  {
    *a5 = 1;
  }

  return result;
}

void re::ecs2::serializeEntity<re::ecs2::ECSJSONSerializer>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 64) & 1) == 0)
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v29);
    v6 = *(a1 + 272);
    v26[0] = 0xD481AB84CBDDALL;
    v26[1] = "Component*";
    v7 = re::TypeRegistry::typeInfo(&v27, v6, v26);
    if (v26[0])
    {
      if (v26[0])
      {
      }
    }

    if (v27)
    {
      v8 = (*(*a1 + 80))(a1, v28);
      if (v8)
      {
        v9 = v8;
        if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, "entity", 1, 0))
        {
          v26[0] = *(a2 + 312);
          re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>(a1 + 24, "id", 1, v26, 0);
          v10 = *(a2 + 296);
          if (v10)
          {
            v11 = strlen(*(a2 + 296));
          }

          else
          {
            v11 = 0;
          }

          v25 = v11;
          if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, "name", 2, &v25, 0))
          {
            if (v25)
            {
              re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(a1 + 24, v10, 0);
            }

            re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString((a1 + 24));
          }

          v24 = (*(a2 + 304) & 8) != 0;
          re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(a1 + 24, "isSelfActive", 10, &v24, 0);
          if ((a3 & 2) != 0)
          {
            v13 = *(a2 + 304);
            LOBYTE(v18) = (v13 & 2) != 0;
            LOBYTE(v17) = (v13 & 0x20) != 0;
            v23 = (v13 & 4) != 0;
            v22 = BYTE1(v13) & 1;
            v21 = (v13 & 0x40) != 0;
            v20 = (v13 & 0x80) != 0;
            v19 = v13 & 1;
            re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(a1 + 24, "isEnabledInHierarchy", 20, &v18, 0);
            re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(a1 + 24, "isSelfAnchored", 21, &v17, 0);
            re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(a1 + 24, "isAnchoredInHierarchy", 22, &v23, 0);
            re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(a1 + 24, "selfRequiresAnchoring", 23, &v22, 0);
            re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(a1 + 24, "isGhosted", 24, &v21, 0);
            re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(a1 + 24, "isSceneEntity", 25, &v20, 0);
            re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(a1 + 24, "isActive", 26, &v19, 0);
          }

          v18 = *(a2 + 72);
          if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, "components", 40, &v18, 0))
          {
            if (v18)
            {
              v14 = 0;
              while ((*(a1 + 64) & 1) == 0)
              {
                v17 = *re::ecs2::EntityComponentCollection::operator[](a2 + 48, v14);
                v9(a1, "component", v14++, &v17, v28, v28, 0);
                if (v18 <= v14)
                {
                  goto LABEL_26;
                }
              }

              goto LABEL_12;
            }

LABEL_26:
            re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
          }

          if (a3)
          {
            v17 = *(a2 + 344);
            if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, "children", 50, &v17, 0))
            {
              if (v17)
              {
                v15 = 0;
                while ((*(a1 + 64) & 1) == 0)
                {
                  v16 = re::ecs2::EntityComponentCollection::operator[](a2 + 320, v15);
                  re::ecs2::serializeEntity<re::ecs2::ECSJSONSerializer>(a1, *v16, a3);
                  if (++v15 >= v17)
                  {
                    goto LABEL_33;
                  }
                }

                goto LABEL_12;
              }

LABEL_33:
              re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
            }
          }

          re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
        }
      }

      else
      {
        v12 = re::TypeInfo::name(v28);
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v12[1]);
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, "entity", "Failed to get serialization function for type Component*.");
      }
    }

    else
    {
      re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, "entity", "Type Component* not found in type registry.");
    }

LABEL_12:
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v29);
  }
}

void re::ecs2::serializeComponent<re::ecs2::ECSOPACKSerializer>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 208);
  re::IntrospectionSharedLock::IntrospectionSharedLock(&v34);
  v9 = (*(*a2 + 40))(a2);
  (*(*v9 + 56))(&v26);
  re::TypeRegistry::typeInfo(v8, &v26, &v32);
  if ((v32 & 1) == 0)
  {
    v11 = (*(*a2 + 40))(a2);
    v12 = (*(*v11 + 48))(v11);
    PrettyTypeName = re::getPrettyTypeName(&v26, v12);
    v14 = *re::assetTypesLogObjects(PrettyTypeName);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (v27)
      {
        v16 = *(&v27 + 1);
      }

      else
      {
        v16 = &v27 + 1;
      }

      *buf = 136315138;
      *&buf[4] = v16;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Serialization failed. Type info (%s) not found.", buf, 0xCu);
    }

    if (v27)
    {
      v17 = *(&v27 + 1);
    }

    else
    {
      v17 = &v27 + 1;
    }

    re::DynamicString::format(buf, "Serialization failed. Type info (%s) not found.", v15, v17);
    v18 = *buf;
    v19 = v36;
    v20 = v37;
    *a4 = 0;
    *(a4 + 8) = 400;
    *(a4 + 16) = re::FoundationErrorCategory(void)::instance;
    *(a4 + 24) = v18;
    *(a4 + 40) = v19;
    *(a4 + 48) = v20;
    v21 = v26;
    if (!v26 || (v27 & 1) == 0)
    {
      goto LABEL_34;
    }

    v22 = *(&v27 + 1);
LABEL_15:
    (*(*v21 + 40))(v21, v22);
    goto LABEL_34;
  }

  if (*(a1 + 64) != 1)
  {
    (*(*a1 + 72))(a1, "component", 1, a2, v33, v33, 0);
  }

  (*(*a1 + 56))(a1);
  v23 = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::close((a1 + 24));
  if (*(a1 + 64) != 1)
  {
    *a4 = 1;
    goto LABEL_34;
  }

  v24 = *re::assetTypesLogObjects(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    LOBYTE(v26) = *(a1 + 64);
    if (v26)
    {
      v27 = *(a1 + 72);
      re::DynamicString::DynamicString(&v28, (a1 + 88));
      v25 = (v29 & 1) != 0 ? v31 : v30;
    }

    else
    {
      v25 = v30;
    }

    *buf = 136315138;
    *&buf[4] = v25;
    _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEFAULT, "Serialization failed. Message: %s", buf, 0xCu);
    if (v26 == 1 && v28 && (v29 & 1) != 0)
    {
      (*(*v28 + 40))();
    }
  }

  LOBYTE(v26) = *(a1 + 64);
  if (v26 == 1)
  {
    v27 = *(a1 + 72);
    re::DynamicString::DynamicString(&v28, (a1 + 88));
  }

  *buf = v27;
  re::DynamicString::DynamicString(&v36, &v28);
  *a4 = 0;
  *(a4 + 8) = *buf;
  *(a4 + 24) = v36;
  *(a4 + 48) = v38;
  *(a4 + 32) = v37;
  v38 = 0;
  v36 = 0;
  v37 = 0uLL;
  if (v26 == 1)
  {
    v21 = v28;
    if (v28)
    {
      if (v29)
      {
        v22 = v31;
        goto LABEL_15;
      }
    }
  }

LABEL_34:
  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v34);
}

uint64_t re::ecs2::deserializeComponent<re::ecs2::ECSOPACKDeserializer>@<X0>(uint64_t a1@<X0>, re::ecs2::Component *a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  re::FixedArrayInputStream::FixedArrayInputStream(v9, a3, a4, -1);
  re::ecs2::deserializeComponent<re::ecs2::ECSOPACKDeserializer>(a1, a2, v9, a5);
  return re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v9);
}

void re::ecs2::deserializeComponent<re::ecs2::ECSOPACKDeserializer>(uint64_t a1@<X0>, re::ecs2::Component *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 208);
  re::IntrospectionSharedLock::IntrospectionSharedLock(&v36);
  v9 = (*(*a2 + 40))(a2);
  (*(*v9 + 56))(&v28);
  re::TypeRegistry::typeInfo(v8, &v28, &v34);
  if ((v34 & 1) == 0)
  {
    v12 = (*(*a2 + 40))(a2);
    v13 = (*(*v12 + 48))(v12);
    PrettyTypeName = re::getPrettyTypeName(&v28, v13);
    v15 = *re::assetTypesLogObjects(PrettyTypeName);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (v29)
      {
        v17 = *(&v29 + 1);
      }

      else
      {
        v17 = &v29 + 1;
      }

      *buf = 136315138;
      *&buf[4] = v17;
      _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "Deserialization failed. Type info (%s) not found.", buf, 0xCu);
    }

    if (v29)
    {
      v18 = *(&v29 + 1);
    }

    else
    {
      v18 = &v29 + 1;
    }

    re::DynamicString::format(buf, "Deserialization failed. Type info (%s) not found.", v16, v18);
    v19 = *buf;
    v20 = *&buf[16];
    v21 = v38;
    *a4 = 0;
    *(a4 + 8) = 400;
    *(a4 + 16) = re::FoundationErrorCategory(void)::instance;
    *(a4 + 24) = v19;
    *(a4 + 40) = v20;
    *(a4 + 48) = v21;
    v22 = v28;
    if (!v28 || (v29 & 1) == 0)
    {
      goto LABEL_34;
    }

    v23 = *(&v29 + 1);
LABEL_15:
    (*(*v22 + 40))(v22, v23);
    goto LABEL_34;
  }

  if (*(a1 + 64) != 1)
  {
    (*(*a1 + 72))(a1, "component", 1, a2, v35, v35, 0);
  }

  (*(*a1 + 56))(a1);
  v24 = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::close((a1 + 24));
  if (*(a1 + 64) != 1)
  {
    re::ecs2::Component::markDirty(a2);
    *a4 = 1;
    goto LABEL_34;
  }

  v25 = *re::assetTypesLogObjects(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = re::TypeInfo::name(v35)[1];
    LOBYTE(v28) = *(a1 + 64);
    if (v28)
    {
      v29 = *(a1 + 72);
      re::DynamicString::DynamicString(&v30, (a1 + 88));
      v27 = (v31 & 1) != 0 ? v33 : v32;
    }

    else
    {
      v27 = v32;
    }

    *buf = 136315394;
    *&buf[4] = v26;
    *&buf[12] = 2080;
    *&buf[14] = v27;
    _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_DEFAULT, "Deserialization failed. Type %s. Message: %s", buf, 0x16u);
    if (v28 == 1 && v30 && (v31 & 1) != 0)
    {
      (*(*v30 + 40))();
    }
  }

  LOBYTE(v28) = *(a1 + 64);
  if (v28 == 1)
  {
    v29 = *(a1 + 72);
    re::DynamicString::DynamicString(&v30, (a1 + 88));
  }

  *buf = v29;
  re::DynamicString::DynamicString(&buf[16], &v30);
  *a4 = 0;
  *(a4 + 8) = *buf;
  *(a4 + 24) = *&buf[16];
  *(a4 + 48) = v39;
  *(a4 + 32) = v38;
  v39 = 0;
  *&buf[16] = 0;
  v38 = 0uLL;
  if (v28 == 1)
  {
    v22 = v30;
    if (v30)
    {
      if (v31)
      {
        v23 = v33;
        goto LABEL_15;
      }
    }
  }

LABEL_34:
  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v36);
}

re *re::ecs2::serializeEntity<re::ecs2::ECSOPACKSerializer>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  re::ecs2::serializeEntity<re::ecs2::ECSOPACKSerializer>(a1, a2, a3);
  (*(*a1 + 56))(a1);
  result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::close((a1 + 24));
  if (*(a1 + 64) == 1)
  {
    v11 = *re::assetTypesLogObjects(result);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 64);
      if (v13)
      {
        v15 = *(a1 + 72);
        re::DynamicString::DynamicString(&v16, (a1 + 88));
        v12 = (v17 & 1) != 0 ? *&v18[7] : v18;
      }

      else
      {
        v12 = v18;
      }

      *buf = 136315138;
      *&buf[4] = v12;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Serialization failed. Message: %s", buf, 0xCu);
      if (v13 == 1 && v16 && (v17 & 1) != 0)
      {
        (*(*v16 + 40))();
      }
    }

    v14 = *(a1 + 64);
    if (v14 == 1)
    {
      v15 = *(a1 + 72);
      re::DynamicString::DynamicString(&v16, (a1 + 88));
    }

    *buf = v15;
    result = re::DynamicString::DynamicString(&v20, &v16);
    *a5 = 0;
    *(a5 + 8) = *buf;
    *(a5 + 24) = v20;
    *(a5 + 48) = v22;
    *(a5 + 32) = v21;
    v22 = 0;
    v20 = 0;
    v21 = 0uLL;
    if (v14 == 1)
    {
      result = v16;
      if (v16)
      {
        if (v17)
        {
          return (*(*v16 + 40))();
        }
      }
    }
  }

  else
  {
    *a5 = 1;
  }

  return result;
}

void re::ecs2::serializeEntity<re::ecs2::ECSOPACKSerializer>(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if ((a1[64] & 1) == 0)
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v29);
    v6 = *(a1 + 26);
    v26[0] = 0xD481AB84CBDDALL;
    v26[1] = "Component*";
    v7 = re::TypeRegistry::typeInfo(&v27, v6, v26);
    if (v26[0])
    {
      if (v26[0])
      {
      }
    }

    if (v27)
    {
      v8 = (*(*a1 + 80))(a1, v28);
      if (v8)
      {
        v9 = v8;
        if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginObject((a1 + 24), "entity", 1, 0))
        {
          v26[0] = *(a2 + 312);
          re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned long long>((a1 + 24), "id", 1, v26, 0);
          v10 = *(a2 + 296);
          if (v10)
          {
            v11 = strlen(*(a2 + 296));
          }

          else
          {
            v11 = 0;
          }

          v25 = v11;
          if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginString((a1 + 24), "name", 2, &v25, 0))
          {
            if (v25)
            {
              re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeString((a1 + 24), v10, 0);
            }

            re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endString((a1 + 24));
          }

          v24 = (*(a2 + 304) & 8) != 0;
          re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBool((a1 + 24), "isSelfActive", 10, &v24, 0);
          if ((a3 & 2) != 0)
          {
            v13 = *(a2 + 304);
            LOBYTE(v18) = (v13 & 2) != 0;
            LOBYTE(v17) = (v13 & 0x20) != 0;
            v23 = (v13 & 4) != 0;
            v22 = BYTE1(v13) & 1;
            v21 = (v13 & 0x40) != 0;
            v20 = (v13 & 0x80) != 0;
            v19 = v13 & 1;
            re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBool((a1 + 24), "isEnabledInHierarchy", 20, &v18, 0);
            re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBool((a1 + 24), "isSelfAnchored", 21, &v17, 0);
            re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBool((a1 + 24), "isAnchoredInHierarchy", 22, &v23, 0);
            re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBool((a1 + 24), "selfRequiresAnchoring", 23, &v22, 0);
            re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBool((a1 + 24), "isGhosted", 24, &v21, 0);
            re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBool((a1 + 24), "isSceneEntity", 25, &v20, 0);
            re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBool((a1 + 24), "isActive", 26, &v19, 0);
          }

          v18 = *(a2 + 72);
          if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray((a1 + 24), "components", 40, &v18, 0))
          {
            if (v18)
            {
              v14 = 0;
              while ((a1[64] & 1) == 0)
              {
                v17 = *re::ecs2::EntityComponentCollection::operator[](a2 + 48, v14);
                v9(a1, "component", v14++, &v17, v28, v28, 0);
                if (v18 <= v14)
                {
                  goto LABEL_26;
                }
              }

              goto LABEL_12;
            }

LABEL_26:
            re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
          }

          if (a3)
          {
            v17 = *(a2 + 344);
            if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray((a1 + 24), "children", 50, &v17, 0))
            {
              if (v17)
              {
                v15 = 0;
                while ((a1[64] & 1) == 0)
                {
                  v16 = re::ecs2::EntityComponentCollection::operator[](a2 + 320, v15);
                  re::ecs2::serializeEntity<re::ecs2::ECSOPACKSerializer>(a1, *v16, a3);
                  if (++v15 >= v17)
                  {
                    goto LABEL_33;
                  }
                }

                goto LABEL_12;
              }

LABEL_33:
              re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
            }
          }

          re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endObject((a1 + 24));
        }
      }

      else
      {
        v12 = re::TypeInfo::name(v28);
        re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v12[1]);
        re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, "entity", "Failed to get serialization function for type Component*.");
      }
    }

    else
    {
      re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, "entity", "Type Component* not found in type registry.");
    }

LABEL_12:
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v29);
  }
}

void *re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(void *a1)
{
  *a1 = &unk_1F5CC4710;
  v2 = (a1 + 1);
  re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(a1);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(a1 + 36);
  re::DynamicArray<unsigned long>::deinit((a1 + 27));
  re::Encoder<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,google::protobuf::io::ZeroCopyOutputStream>::~Encoder(a1 + 24);
  re::StringID::destroyString(v2);
  return a1;
}

void *re::SerializerV1<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5CC46A8;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);

  return re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);
}

void re::SerializerV1<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5CC46A8;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);
  re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::untrackObject(uint64_t result)
{
  if (*(result + 336) == 1)
  {
    --*(result + 488);
    ++*(result + 496);
  }

  return result;
}

void re::SerializerV1<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doOpen(uint64_t a1)
{
  *(a1 + 337) = 0;
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 344);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
  *(a1 + 448) = 0;
  ++*(a1 + 456);
  *(a1 + 488) = 0;
  ++*(a1 + 496);
}

void re::SerializerV1<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doClose(uint64_t a1)
{
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 344);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
  *(a1 + 448) = 0;
  ++*(a1 + 456);
  *(a1 + 488) = 0;
  ++*(a1 + 496);
}

void re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doRegisterSerializeFuncs(uint64_t a1)
{
  v26 = 6059476;
  v27 = "BOOL";
  v2 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeBool<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 6104748;
  v27 = "char";
  v3 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeChar<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x172E117BCLL;
  v27 = "int8_t";
  v4 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeI8<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93A4A92;
  v27 = "int16_t";
  v5 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeI16<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93BFE06;
  v27 = "int32_t";
  v6 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeI32<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93EC744;
  v27 = "int64_t";
  v7 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeI64<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 6655224;
  v27 = "long";
  v8 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeI64<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x31CD534126;
  v27 = "uint8_t";
  v9 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeU8<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD0D4E68;
  v27 = "uint16_t";
  v10 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeU16<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD0F01DCLL;
  v27 = "uint32_t";
  v11 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeU32<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD11CB1ALL;
  v27 = "uint64_t";
  v12 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeU64<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x1947BDF6CLL;
  v27 = "size_t";
  v13 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeU64<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 195052728;
  v27 = "float";
  v14 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeFloat<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x161EEF7A2;
  v27 = "double";
  v15 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeDouble<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 189247272;
  v27 = "char*";
  v16 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeCString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2686EB529B3EE220;
  v27 = "DynamicString";
  v17 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x458DDB01A18;
  v27 = "StringID";
  v18 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v26, re::serializeStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v19 = *(a1 + 272);
  v26 = 0x258C98EAAF29A10ALL;
  v27 = "CallbackSerializerAttribute";
  v20 = re::TypeRegistry::typeID(&v30, v19, &v26);
  if (v26)
  {
    if (v26)
    {
    }
  }

  if (v30)
  {
    v21 = *(a1 + 272);
    v25 = v30;
    re::TypeRegistry::attributesByAttributeType(v21, &v25, &v26);
    if (v28)
    {
      v22 = (v29 + 24);
      v23 = 48 * v28;
      do
      {
        v24 = *v22;
        v22 += 6;
        v32 = re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        v31 = v24 | 0xFFFFFFFF00000000;
        re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace(a1 + 288, &v31, &v32);
        v23 -= 48;
      }

      while (v23);
    }

    if (v26)
    {
      if (v29)
      {
        (*(*v26 + 40))();
      }
    }
  }
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a1 + 488);
  if (!v14)
  {
    if (a7)
    {
      v15 = 0;
    }

    else
    {
      v15 = a4;
    }

    v16 = **(a5 + 2);
    *&v20 = *a5;
    *(&v20 + 1) = v16;
    re::internal::SharedObjectGraph::beginObject((a1 + 336), v15, &v20);
  }

  v17 = (*(*a1 + 80))(a1, a5);
  if (v17)
  {
    result = v17(a1, a2, a3, a4, a5, a6, a7);
    if (!v14 && *(a1 + 336) == 1)
    {
      --*(a1 + 488);
      ++*(a1 + 496);
    }
  }

  else
  {
    v19 = re::TypeInfo::name(a5);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v19[1]);
    return 0;
  }

  return result;
}

uint64_t (*re::SerializerV1<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, re::TypeInfo *this))(int, int, int, int, re::TypeInfo *this)
{
  v4 = re::TypeInfo::name(this);
  if (*v4 >> 1 == 94623636)
  {
    v6 = v4[1];
    v7 = re::SerializerV1<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString;
    if (v6 == "char*")
    {
      return v7;
    }

    v8 = strcmp(v6, "char*");
    v7 = re::SerializerV1<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString;
    if (!v8)
    {
      return v7;
    }
  }

  if (*(this + 12) != 9)
  {
    goto LABEL_9;
  }

  v9 = *(*(this + 2) + 88);
  v7 = re::SerializerV1<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer;
  if (v9 >= 2)
  {
    if (v9 != 2)
    {
      re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Invalid PointerSharing type.", "!Unreachable code", "doResolveSerializeFunc", 84);
      result = _os_crash("assertion failure: (!Unreachable code) Invalid PointerSharing type.");
      __break(1u);
      return result;
    }

    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) External references are not supported by the SerializerV1.", "!Unreachable code", "doResolveSerializeFunc", 82);
    _os_crash("assertion failure: (!Unreachable code) External references are not supported by the SerializerV1.");
    __break(1u);
LABEL_9:
    if (*this == *(a1 + 272))
    {
      LODWORD(v12) = **(this + 2);
      HIDWORD(v12) = -1;
      v10 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 288, &v12);
      v7 = re::serializeType<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
      if (v10)
      {
        return *v10;
      }
    }

    else
    {
      return re::serializeType<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
    }
  }

  return v7;
}

void re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(void *result)
{
  if (result[34])
  {
    (*(*result + 40))(result);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((result + 36));
    result[34] = 0;
  }
}

void re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(void *a1)
{
  re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(*a1 + 80))(a1, a5);
  if (v14)
  {

    return v14(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v16 = re::TypeInfo::name(a5);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v16[1]);
    return 0;
  }
}

uint64_t (*re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(int, int, int, int, re::TypeInfo *this)
{
  if (*a2 != *(a1 + 272))
  {
    return re::serializeType<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
  }

  v6[1] = v2;
  v6[2] = v3;
  LODWORD(v6[0]) = **(a2 + 16);
  HIDWORD(v6[0]) = -1;
  v5 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 288, v6);
  if (v5)
  {
    return *v5;
  }

  else
  {
    return re::serializeType<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
  }
}

void re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_6, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 6;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

_BYTE *re::Encoder<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,google::protobuf::io::ZeroCopyOutputStream>::~Encoder(_BYTE *a1)
{
  re::Encoder<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,google::protobuf::io::ZeroCopyOutputStream>::close(a1);
  re::DynamicArray<unsigned long>::deinit((a1 + 96));
  if (a1[40] == 1)
  {
    re::DynamicString::deinit((a1 + 64));
  }

  return a1;
}

_anonymous_namespace_ *re::Encoder<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,google::protobuf::io::ZeroCopyOutputStream>::close(_anonymous_namespace_ *result)
{
  if (*result)
  {
    v1 = result;
    re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::doClose(result);
    if ((*(v1 + 40) & 1) == 0)
    {
      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(v1, 0);
    }

    result = re::DynamicArray<unsigned long>::deinit(v1 + 96);
    if (*(v1 + 4) >= 1)
    {
      result = (*(**v1 + 24))();
      *(v1 + 1) = 0;
      *(v1 + 4) = 0;
    }

    *v1 = 0;
    *(v1 + 3) = 0;
    *(v1 + 4) = 0;
  }

  return result;
}

void *re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::doClose(void *result)
{
  if (result[21])
  {
    v1 = result;
    result = result[20];
    if (result)
    {
      String = rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::GetString(result);
      v3 = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v1, String, *(v1[20] + 24) - *(v1[20] + 16));
      if ((v3 & 1) == 0)
      {
        re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, &v8);
        if (v8)
        {
          if (v9)
          {
            (*(*v8 + 40))();
          }
        }
      }

      v4 = v1[20];
      if (v4)
      {
        v5 = v1[3];
        rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Destroy(v1[20]);
        (*(*v5 + 40))(v5, v4);
      }

      v1[20] = 0;
      v6 = v1[21];
      if (v6)
      {
        v7 = v1[3];
        rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Destroy(v6 + 8);
        (*(*v7 + 40))(v7, v6);
      }

      v1[21] = 0;
      return re::DynamicArray<unsigned long>::deinit((v1 + 24));
    }
  }

  return result;
}

uint64_t re::serializeType<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, char *a4, re::TypeInfo *this, uint64_t a6, uint64_t a7)
{
  if (this == a6)
  {
    goto LABEL_19;
  }

  if (*this == *a6)
  {
    v14 = **(this + 2);
    v15 = **(a6 + 16);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_19;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_19;
  }

  if (*(this + 12) != *(a6 + 12))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, this, a6);
    return 0;
  }

  v18 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
  if (v18)
  {
    v19 = *(v18 + 16);
  }

  else
  {
    v19 = -1;
  }

  v20 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 16));
  if (v20)
  {
    v21 = *(v20 + 16);
  }

  else
  {
    v21 = -1;
  }

  if (v19 != v21)
  {
    re::TypeInfo::name(this);
    re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
    re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 16));
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, a2, "Cannot serialize type %s version %u as version %u. Downgrading versions is not supported.");
    return 0;
  }

LABEL_19:
  v22 = *(this + 12);
  if (v22 <= 4)
  {
    if (*(this + 12) > 2u)
    {
      if (v22 == 3)
      {

        return re::serializeOptional<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
      }

      else
      {
        if (v22 != 4)
        {
          goto LABEL_57;
        }

        return re::serializeArray<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
      }
    }

    else if (v22 == 1)
    {

      return re::serializeBasic<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
    }

    else
    {
      if (v22 != 2)
      {
        goto LABEL_57;
      }

      return re::serializeEnum<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
    }
  }

  else if (*(this + 12) <= 6u)
  {
    if (v22 == 5)
    {

      return re::serializeList<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
    }

    else
    {
      if (v22 != 6)
      {
        goto LABEL_57;
      }

      return re::serializeDictionary<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
    }
  }

  else
  {
    switch(v22)
    {
      case 7u:

        return re::serializeUnion<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
      case 8u:

        return re::serializeObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
      case 9u:
        re::TypeInfo::name(this);
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, a2, "Pointer type (%s) needs to be handled explicitly by the serializer.");
        return 0;
      default:
LABEL_57:
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, a2, "Invalid type category. Value = %d");
        return 0;
    }
  }
}

uint64_t re::serializeBasic<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, rapidjson::internal **a4, re::TypeInfo *this, const re::TypeInfo *a6, uint64_t a7)
{
  v7 = a7;
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_24:
      re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, this, a6);
      return 0;
    }

    v17 = **(this + 2);
    v18 = **(a6 + 2);
    if (v17 != v18)
    {
      goto LABEL_24;
    }

    v20 = WORD1(v17) == WORD1(v18);
    v19 = (v18 ^ v17) & 0xFFFFFF00000000;
    v20 = v20 && v19 == 0;
    if (!v20)
    {
      goto LABEL_24;
    }
  }

LABEL_4:
  v14 = re::TypeInfo::name(this);
  v15 = *v14 >> 1;
  if (v15 > 0x16749DFF02)
  {
    if (*v14 >> 1 > 0x303EE88E58CLL)
    {
      if (*v14 >> 1 > 0x2A8CEB1C43F60843)
      {
        if (v15 == 0x2A8CEB1C43F60844)
        {
          goto LABEL_62;
        }

        if (v15 != 0x3AFE951B1F1F3391)
        {
          if (v15 != 0x412A40E9CB79BA35)
          {
            goto LABEL_77;
          }

          goto LABEL_56;
        }

        goto LABEL_59;
      }

      if (v15 == 0x303EE88E58DLL)
      {
        goto LABEL_56;
      }

      if (v15 != 0x2710786C3AC82DA1)
      {
        goto LABEL_77;
      }
    }

    else
    {
      if (*v14 >> 1 <= 0x18E6A9A092)
      {
        if (v15 != 0x16749DFF03)
        {
          if (v15 == 0x16749F63A2)
          {
LABEL_43:

            return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<long long>(a1 + 24, a2, a3, a4, v7);
          }

          goto LABEL_77;
        }

        goto LABEL_65;
      }

      if (v15 != 0x18E6A9A093)
      {
        if (v15 != 0x303EE86A734)
        {
          if (v15 != 0x303EE8780EELL)
          {
            goto LABEL_77;
          }

LABEL_62:

          return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>(a1 + 24, a2, a3, a4, v7);
        }

LABEL_59:

        return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned short>(a1 + 24, a2, a3, a4, v7);
      }
    }

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned char>(a1 + 24, a2, a3, a4, v7);
  }

  if (*v14 >> 1 > 0x685847B)
  {
    if (*v14 >> 1 <= 0xB9708BDD)
    {
      if (v15 != 109413500)
      {
        if (v15 == 2969009105)
        {

          return re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, a2, a3, a4, v7);
        }

LABEL_77:
        v21 = re::TypeInfo::name(this);
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, a2, "Unsupported basic type %s.", v21[1]);
        return 0;
      }

LABEL_68:

      return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<short>(a1 + 24, a2, a3, a4, v7);
    }

    if (v15 == 3111160798)
    {

      return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<signed char>(a1 + 24, a2, a3, a4, v7);
    }

    if (v15 != 3393056694)
    {
      if (v15 != 0x16749D2549)
      {
        goto LABEL_77;
      }

      goto LABEL_68;
    }

LABEL_56:

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>(a1 + 24, a2, a3, a4, v7);
  }

  if (*v14 >> 1 <= 0x2E9355)
  {
    if (v15 != 104431)
    {
      if (v15 == 3029738)
      {

        return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(a1 + 24, a2, a3, a4, v7);
      }

      goto LABEL_77;
    }

LABEL_65:

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<int>(a1 + 24, a2, a3, a4, v7);
  }

  if (v15 != 3052374)
  {
    if (v15 != 3327612)
    {
      if (v15 == 97526364)
      {

        return re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1 + 24, a2, a3, a4, v7);
      }

      goto LABEL_77;
    }

    goto LABEL_43;
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeChar(a1 + 24, a2, a3, a4, v7);
}

uint64_t re::serializeOptional<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  if (a5 == a6)
  {
    goto LABEL_11;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_11;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_11;
  }

  if (*(a5 + 12) != *(a6 + 12))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
    v21 = 0;
    return v21 & 1;
  }

LABEL_11:
  if (a7)
  {
    v24[0] = 0;
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional((a1 + 24), a2, a3, v24, 0);
    if (v24[0] == 1)
    {
      v18 = *(a1 + 34);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v26);
      re::TypeInfo::TypeInfo(v25, &v27);
      re::internal::translateType(&v26, v18, v25);
      if ((a1[64] & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, 0, &v26, &v26, 1);
      }
    }
  }

  else
  {
    re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v26);
    re::TypeInfo::TypeInfo(v25, &v27);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v26);
    re::TypeInfo::TypeInfo(v24, &v27);
    re::TypeInfo::TypeInfo(&v26, a5);
    v23 = (*(v28 + 88))(a4) != 0;
    v19 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional((a1 + 24), a2, a3, &v23, 0);
    if (v23)
    {
      v20 = (*(v28 + 88))(a4, v19);
      if ((a1[64] & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, v20, v25, v24, 0);
      }
    }
  }

  re::EncoderBinary<re::SeekableInputStream>::endOptional((a1 + 24));
  v21 = a1[64] ^ 1;
  return v21 & 1;
}

uint64_t re::serializeArray<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  if (a5 == a6)
  {
    goto LABEL_13;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(a6 + 12) != 4)
  {
    goto LABEL_54;
  }

  v18 = *(a5 + 2);
  v19 = *(a6 + 2);
  v20 = *(v19 + 92) & 0xFFFFFF;
  if ((*(v18 + 92) & 0xFFFFFF) != 0)
  {
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_54:
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
    goto LABEL_55;
  }

  if (v20 || *(v18 + 96) != *(v19 + 96))
  {
    goto LABEL_54;
  }

LABEL_13:
  if (a7)
  {
    v21 = *(a1 + 34);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v50);
    re::TypeInfo::TypeInfo(v48, v51);
    re::internal::translateType(v49, v21, v48);
    v22 = (*(*a1 + 80))(a1, v49);
    if (v22)
    {
      v23 = v22;
      v24 = *(a6 + 2);
      v25 = *(v24 + 92) & 0xFFFFFF;
      if (v25)
      {
        v26 = 0;
        v27 = 8;
      }

      else
      {
        v26 = *(v24 + 96);
        v27 = 4;
      }

      v50 = v26;
      if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 24), a2, a3, &v50, v27))
      {
        v40 = v50;
        if (v25)
        {
          v41 = v50 == 0;
        }

        else
        {
          v41 = 1;
        }

        v42 = v41;
        if (!v41)
        {
          v47[0] = 0;
          v47[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, 0, v47);
          v40 = v50;
        }

        if (v40)
        {
          v43 = 0;
          do
          {
            v23(a1, 0, 0, 0, v49, v49, 1);
            ++v43;
          }

          while (v43 < v50);
        }

        if (v42)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

LABEL_55:
      v38 = 0;
      return v38 & 1;
    }

LABEL_36:
    v39 = re::TypeInfo::name(v49);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v39[1]);
    goto LABEL_55;
  }

  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v50);
  re::TypeInfo::TypeInfo(v49, v51);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v50);
  re::TypeInfo::TypeInfo(v48, v51);
  re::TypeInfo::TypeInfo(&v50, a5);
  v28 = (*(*a1 + 80))(a1, v49);
  if (!v28)
  {
    goto LABEL_36;
  }

  v29 = v28;
  v46 = re::ArrayAccessor::size(&v50, a4);
  v30 = *(*(a5 + 2) + 92) & 0xFFFFFF;
  if (v30)
  {
    v31 = 8;
  }

  else
  {
    v31 = 4;
  }

  if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 24), a2, a3, &v46, v31))
  {
    goto LABEL_55;
  }

  v32 = v46;
  if (v30)
  {
    v33 = v46 == 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = v33;
  if (!v33)
  {
    v35 = *a4;
    v45[0] = 0;
    v45[1] = 0xFFFFFFFFLL;
    (*(*a1 + 16))(a1, v35, v45);
    v32 = v46;
  }

  if (v32)
  {
    v36 = 0;
    do
    {
      v37 = re::ArrayAccessor::elementAt(&v50, a4, v36);
      v29(a1, 0, 0, v37, v49, v48, 0);
      ++v36;
    }

    while (v36 < v46);
  }

  if (v34)
  {
    goto LABEL_35;
  }

LABEL_34:
  (*(*a1 + 24))(a1);
LABEL_35:
  re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
  v38 = a1[64] ^ 1;
  return v38 & 1;
}

uint64_t re::serializeList<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  if (a5 == a6)
  {
    goto LABEL_11;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_11;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_11;
  }

  if (*(a5 + 12) != *(a6 + 12))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
    goto LABEL_28;
  }

LABEL_11:
  if (!a7)
  {
    re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v38);
    re::TypeInfo::TypeInfo(v37, &v39);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v38);
    re::TypeInfo::TypeInfo(v36, &v39);
    re::TypeInfo::TypeInfo(&v38, a5);
    v24 = (*(*a1 + 80))(a1, v37);
    if (!v24)
    {
      goto LABEL_25;
    }

    v25 = v24;
    v35 = (*(v40 + 88))(a4);
    v26 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, a3, &v35, 0);
    v22 = 0;
    if (!v26)
    {
      return v22 & 1;
    }

    if (*(v40 + 104))
    {
      if (v35)
      {
        for (i = 0; i < v35; ++i)
        {
          v28 = (*(v40 + 104))(a4, i);
          v25(a1, 0, 0, v28, v37, v36, 0);
        }
      }

      goto LABEL_24;
    }

    v30 = *(v40 + 112);
    if (v30 && *(v40 + 120) && *(v40 + 128))
    {
      v31 = v30(a4, *(a1 + 56));
      v32 = (*(v40 + 120))();
      if (v32)
      {
        v33 = v32;
        do
        {
          v25(a1, 0, 0, v33, v37, v36, 0);
          v33 = (*(v40 + 120))(v31);
        }

        while (v33);
      }

      (*(v40 + 128))(v31, *(a1 + 56));
      goto LABEL_24;
    }

    re::TypeInfo::TypeInfo(v34, &v38);
    re::TypeInfo::name(v34);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, a2, "List type %s does not provide an indexer or iterator.");
LABEL_28:
    v22 = 0;
    return v22 & 1;
  }

  v18 = *(a1 + 272);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v38);
  re::TypeInfo::TypeInfo(v36, &v39);
  re::internal::translateType(v37, v18, v36);
  v19 = (*(*a1 + 80))(a1, v37);
  if (!v19)
  {
LABEL_25:
    re::TypeInfo::name(v37);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s");
    goto LABEL_28;
  }

  v20 = v19;
  v38 = 0;
  v21 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(a1 + 24, a2, a3, &v38, 0);
  v22 = 0;
  if (v21)
  {
    if (v38)
    {
      for (j = 0; j < v38; ++j)
      {
        v20(a1, 0, 0, 0, v37, v37, 1);
      }
    }

LABEL_24:
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 24));
    v22 = *(a1 + 64) ^ 1;
  }

  return v22 & 1;
}

uint64_t re::serializeDictionary<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, uint64_t a7)
{
  v109 = *MEMORY[0x1E69E9840];
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v104);
  re::TypeInfo::TypeInfo(&v85, &v104.n128_i64[1]);
  v15 = re::TypeInfo::name(&v85);
  v16 = BYTE4(v86);
  if (BYTE4(v86) != 1)
  {
LABEL_10:
    if (v16 == 8)
    {
      v21 = *v15 >> 1;
      if (v21 == 0x22C6ED80D0CLL)
      {
        v24 = v15[1];
        v19 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (v24 == "StringID")
        {
          goto LABEL_79;
        }

        v25 = strcmp(v24, "StringID");
        v19 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (!v25)
        {
          goto LABEL_79;
        }
      }

      else if (v21 == 0x134375A94D9F7110)
      {
        v22 = v15[1];
        v19 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (v22 == "DynamicString")
        {
          goto LABEL_79;
        }

        v23 = strcmp(v22, "DynamicString");
        v19 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (!v23)
        {
          goto LABEL_79;
        }
      }
    }

    goto LABEL_18;
  }

  if (!re::TypeInfo::isInteger(&v85))
  {
    v16 = BYTE4(v86);
    goto LABEL_10;
  }

  v17 = *v15 >> 1;
  if (v17 <= 0x303EE8780EDLL)
  {
    if (v17 != 3393056694)
    {
      if (v17 == 0x303EE86A734)
      {
        v18 = v15[1];
        v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
        if (v18 == "uint16_t")
        {
          goto LABEL_79;
        }

        v20 = strcmp(v18, "uint16_t");
        v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
        if (!v20)
        {
          goto LABEL_79;
        }
      }

      goto LABEL_73;
    }

    v59 = v15[1];
    v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
    if (v59 == "size_t")
    {
      goto LABEL_79;
    }

    v60 = "size_t";
    goto LABEL_69;
  }

  if (v17 == 0x303EE8780EELL)
  {
    v64 = v15[1];
    v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
    if (v64 == "uint32_t")
    {
      goto LABEL_79;
    }

    v65 = strcmp(v64, "uint32_t");
    v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
    if (!v65)
    {
      goto LABEL_79;
    }

    goto LABEL_73;
  }

  if (v17 == 0x303EE88E58DLL)
  {
    v59 = v15[1];
    v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
    if (v59 == "uint64_t")
    {
      goto LABEL_79;
    }

    v60 = "uint64_t";
LABEL_69:
    v63 = strcmp(v59, v60);
    v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
    if (!v63)
    {
      goto LABEL_79;
    }
  }

LABEL_73:
  v104.n128_u64[0] = 0x18E6A9A093;
  v104.n128_u64[1] = "uint8_t";
  v66 = re::StringID::operator==(v15, &v104);
  v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>;
  if (v66)
  {
    goto LABEL_79;
  }

  v104.n128_u64[0] = 0x16749F63A2;
  v104.n128_u64[1] = "int64_t";
  if (re::StringID::operator==(v15, &v104))
  {
    v37 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(a1, a2, a3, a4, a5, a6, a7);
    return v37 & 1;
  }

  *v99 = 3327612;
  *&v99[8] = "long";
  v67 = re::StringID::operator==(v15, v99);
  v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>;
  if (v67 || (v104.n128_u64[0] = 104431, v104.n128_u64[1] = "int", v68 = re::StringID::operator==(v15, &v104), v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>, v68) || (v104.n128_u64[0] = 109413500, v104.n128_u64[1] = "short", v69 = re::StringID::operator==(v15, &v104), v19 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>, v69))
  {
LABEL_79:
    v37 = v19(a1, a2, a3, a4, a5, a6, a7);
    return v37 & 1;
  }

LABEL_18:
  if (a5 == a6)
  {
    goto LABEL_28;
  }

  if (*a5 == *a6)
  {
    v26 = **(a5 + 2);
    v27 = **(a6 + 2);
    if (v26 == v27)
    {
      v29 = WORD1(v26) == WORD1(v27);
      v28 = (v27 ^ v26) & 0xFFFFFF00000000;
      v29 = v29 && v28 == 0;
      if (v29)
      {
        goto LABEL_28;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, v14))
  {
    goto LABEL_28;
  }

  if (*(a5 + 12) != *(a6 + 12))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_66:
    v37 = 0;
    return v37 & 1;
  }

LABEL_28:
  if (a7)
  {
    v30 = *(a1 + 272);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v104);
    re::TypeInfo::TypeInfo(v99, &v104.n128_i64[1]);
    re::internal::translateType(&v85, v30, v99);
    v31 = *(a1 + 272);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v104);
    re::TypeInfo::TypeInfo(v97, &v104.n128_i64[1]);
    re::internal::translateType(v99, v31, v97);
    v32 = (*(*a1 + 80))(a1, &v85);
    if (v32)
    {
      v33 = v32;
      v34 = (*(*a1 + 80))(a1, v99);
      if (v34)
      {
        v35 = v34;
        v104.n128_u64[0] = 0;
        v36 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(a1 + 24, a2, a3, &v104, 0);
        v37 = 0;
        if (v36)
        {
          if (v104.n128_u64[0])
          {
            v38 = 0;
            do
            {
              v39 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(a1 + 24, 1);
              v33(a1, "key", 0, 0, &v85, &v85, 1, v39);
              v35(a1, "value", 0, 0, v99, v99, 1);
              re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionaryEntry((a1 + 24));
              ++v38;
            }

            while (v38 < v104.n128_u64[0]);
          }

LABEL_85:
          re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionary((a1 + 24));
          v37 = *(a1 + 64) ^ 1;
          return v37 & 1;
        }

        return v37 & 1;
      }

      v61 = v99;
    }

    else
    {
      v61 = &v85;
    }

    goto LABEL_65;
  }

  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v104);
  re::TypeInfo::TypeInfo(v97, &v104.n128_i64[1]);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v104);
  re::TypeInfo::TypeInfo(v96, &v104.n128_i64[1]);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v104);
  re::TypeInfo::TypeInfo(v95, &v104.n128_i64[1]);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v104);
  re::TypeInfo::TypeInfo(v94, &v104.n128_i64[1]);
  re::TypeInfo::TypeInfo(v92, a5);
  v40 = (*(*a1 + 80))(a1, v97);
  if (!v40)
  {
    v61 = v97;
LABEL_65:
    v62 = re::TypeInfo::name(v61);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v62[1]);
    goto LABEL_66;
  }

  v41 = v40;
  v42 = (*(*a1 + 80))(a1, v96);
  if (!v42)
  {
    v61 = v96;
    goto LABEL_65;
  }

  v43 = v42;
  v91 = (*(v93 + 96))(a4);
  v44 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(a1 + 24, a2, a3, &v91, 0);
  v37 = 0;
  if (v44)
  {
    if (v91)
    {
      v45 = *a5;
      v104.n128_u64[0] = 0x449AD97C4B77BED4;
      v104.n128_u64[1] = "_CompareFunc";
      v46 = re::TypeRegistry::typeID(v90, v45, &v104);
      if (v104.n128_u8[0])
      {
        if (v104.n128_u8[0])
        {
        }
      }

      if (v90[0] && (v47 = *v97[2], v104.n128_u64[0] = v90[1], v104.n128_u64[1] = v47, LODWORD(v105) = -1, (v48 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v97[0] + 768, &v104)) != 0) && (v49 = *v48) != 0)
      {
        v89 = 0;
        v86 = 0;
        v87 = 0;
        v88 = 0;
        v85 = *(a1 + 56);
        re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v85, v91);
        ++v88;
        v50 = (*(v93 + 120))(a4, *(a1 + 56));
        if ((*(v93 + 128))())
        {
          do
          {
            v51 = (*(v93 + 136))(v50);
            v52 = (*(v93 + 144))(v50);
            v104.n128_u64[0] = v51;
            v104.n128_u64[1] = v52;
            v53 = re::DynamicArray<re::RigNodeConstraint>::add(&v85, &v104);
          }

          while (((*(v93 + 128))(v50, v53) & 1) != 0);
        }

        v54.n128_f64[0] = (*(v93 + 152))(v50, *(a1 + 56));
        v104.n128_u64[0] = v49;
        std::__sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<void const*,void *,true> *,BOOL re::serializeDictionary<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1}>(v89, &v89[16 * v87], &v104, v54);
        if (v91)
        {
          v55 = 0;
          for (i = 0; i < v91; ++i)
          {
            v57 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(a1 + 24, 0);
            if (v87 <= i)
            {
              v98 = 0;
              v107 = 0u;
              v108 = 0u;
              v105 = 0u;
              v106 = 0u;
              v104 = 0u;
              v76 = MEMORY[0x1E69E9C10];
              v77 = v87;
              v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v99 = 136315906;
              *&v99[4] = "operator[]";
              *&v99[12] = 1024;
              if (v78)
              {
                v79 = 3;
              }

              else
              {
                v79 = 2;
              }

              *&v99[14] = 789;
              v100 = 2048;
              v101 = i;
              v102 = 2048;
              v103 = v77;
              _os_log_send_and_compose_impl(v79, &v98, &v104, 80, &dword_1E1C61000, v76, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v99, 38, v84, v85);
              _os_crash_msg();
              __break(1u);
LABEL_90:
              v98 = 0;
              v107 = 0u;
              v108 = 0u;
              v105 = 0u;
              v106 = 0u;
              v104 = 0u;
              v80 = MEMORY[0x1E69E9C10];
              v81 = v58;
              v82 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v99 = 136315906;
              *&v99[4] = "operator[]";
              *&v99[12] = 1024;
              if (v82)
              {
                v83 = 3;
              }

              else
              {
                v83 = 2;
              }

              *&v99[14] = 789;
              v100 = 2048;
              v101 = i;
              v102 = 2048;
              v103 = v81;
              _os_log_send_and_compose_impl(v83, &v98, &v104, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v99, 38, v84, v85);
              _os_crash_msg();
              __break(1u);
            }

            (v41)(a1, "key", 0, *&v89[v55], v97, v95, 0, v57);
            v58 = v87;
            if (v87 <= i)
            {
              goto LABEL_90;
            }

            v43(a1, "value", 0, *&v89[v55 + 8], v96, v94, 0);
            re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionaryEntry((a1 + 24));
            v55 += 16;
          }
        }

        if (v85 && v89)
        {
          (*(*v85 + 40))();
        }
      }

      else
      {
        v71 = (*(v93 + 120))(a4, *(a1 + 56));
        (*(v93 + 128))();
        if (v91)
        {
          for (j = 0; j < v91; ++j)
          {
            v73 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(a1 + 24, 0);
            v74 = (*(v93 + 136))(v71, v73);
            v41(a1, "key", 0, v74, v97, v95, 0);
            v75 = (*(v93 + 144))(v71);
            v43(a1, "value", 0, v75, v96, v94, 0);
            re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionaryEntry((a1 + 24));
            (*(v93 + 128))(v71);
          }
        }

        (*(v93 + 152))(v71, *(a1 + 56));
      }
    }

    goto LABEL_85;
  }

  return v37 & 1;
}

uint64_t re::serializeUnion<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  if (a5 != a6)
  {
    if (*a5 != *a6)
    {
      if (re::areSameTranslatedVersion(a5, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_19:
      re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
      goto LABEL_20;
    }

    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 != v17)
    {
      goto LABEL_19;
    }

    v19 = WORD1(v16) == WORD1(v17);
    v18 = (v17 ^ v16) & 0xFFFFFF00000000;
    v19 = v19 && v18 == 0;
    if (!v19)
    {
      goto LABEL_19;
    }
  }

LABEL_4:
  v14 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 24), a2, a3, 16);
  if (!a7)
  {
    if (v14)
    {
      re::TypeInfo::TypeInfo(v23, a5);
      Tag = re::UnionAccessor::readTag(v23, a4);
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>((a1 + 24), "tag", 0, &Tag, 0);
      if (Tag < *(*(a5 + 2) + 96))
      {
        re::TypeInfo::unionMember(v21, a5, Tag);
        if ((a1[64] & 1) == 0)
        {
          (*(*a1 + 72))(a1, "value", 0, a4, v21, v21, 0);
        }
      }

      goto LABEL_13;
    }

LABEL_20:
    v15 = 0;
    return v15 & 1;
  }

  if (!v14)
  {
    goto LABEL_20;
  }

  v21[0] = 0;
  re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>((a1 + 24), "tag", 0, v21, 0);
  if (v21[0] < *(*(a6 + 2) + 96))
  {
    re::TypeInfo::unionMember(v23, a6, v21[0]);
    if ((a1[64] & 1) == 0)
    {
      (*(*a1 + 72))(a1, "value", 0, 0, v23, v23, 1);
    }
  }

LABEL_13:
  re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
  v15 = a1[64] ^ 1;
  return v15 & 1;
}

uint64_t re::serializeObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, uint64_t **this, uint64_t **a6, uint64_t a7)
{
  v50 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    if (*(this[2] + 49))
    {
      v28 = *(a1 + 272);
      v40[0] = 0x2686EB529B3EE220;
      v40[1] = "DynamicString";
      re::TypeRegistry::typeInfo(&v41, v28, v40);
      v29 = re::TypeInfo::TypeInfo(&v47, v42);
      if (v40[0])
      {
        if (v40[0])
        {
        }
      }

      v30 = &v47;
      v31 = &v47;
      v32 = a1;
      v33 = a2;
      v34 = a3;
    }

    else
    {
      v14 = re::TypeInfo::name(this);
      if ((*v14 & 0xFFFFFFFFFFFFFFFELL) != 0x2686EB529B3EE220)
      {
        goto LABEL_6;
      }

      v15 = v14[1];
      if (v15 != "DynamicString")
      {
        if (strcmp(v15, "DynamicString"))
        {
          goto LABEL_6;
        }
      }

      v32 = a1;
      v33 = a2;
      v34 = a3;
      v30 = this;
      v31 = this;
    }

    re::serializeDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(v32, v33, v34, 0, v30, v31, 1);
LABEL_40:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

LABEL_6:
  v16 = this[2];
  v17 = *(v16 + 12);
  if ((v17 & 0x10) == 0 && *(this + 12) == 8)
  {
    v18 = v16[20];
    if (v18)
    {
      v19 = *this;
      v20 = *a6;
      v41 = &unk_1F5CC4778;
      v42[0] = a1;
      v42[1] = v19;
      v42[2] = v20;
      v43[0] = 0;
      v43[1] = 0;
      v44 = 1;
      v45 = 0;
      v46 = 0;
      v47 = a2;
      v48 = a3;
      v49 = 0;
      v21 = re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>,4ul>::add(v43, &v47);
      v18(&v41, a4, v21);
      v22 = *(a1 + 64) ^ 1;
      v41 = &unk_1F5CC4778;
      if (v43[0])
      {
        if ((v44 & 1) == 0)
        {
          (*(*v43[0] + 40))();
        }
      }

      return v22 & 1;
    }
  }

  if ((v17 & 4) == 0)
  {
    v23 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
    v22 = 0;
    if (!v23)
    {
      return v22 & 1;
    }

    v24 = re::DataArray<re::TextureAtlasTile>::tryGet((*this + 12), *this[2]);
    if (!v24 || *(v24 + 16) >= 2u)
    {
      v26 = re::DataArray<re::TextureAtlasTile>::tryGet((*this + 12), *this[2]);
      if (v26)
      {
        v27 = *(v26 + 16);
      }

      else
      {
        v27 = -1;
      }

      LODWORD(v41) = v27;
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>(a1 + 24, "@version", 0, &v41, 0);
    }

    if (this == a6)
    {
      goto LABEL_32;
    }

    if (*this == *a6)
    {
      v36 = *this[2];
      v37 = *a6[2];
      if (v36 == v37 && WORD1(v36) == WORD1(v37) && ((v37 ^ v36) & 0xFFFFFF00000000) == 0)
      {
        goto LABEL_32;
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, v25))
    {
LABEL_32:
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, this, a7);
LABEL_39:
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
      goto LABEL_40;
    }

    if (*(this + 12) == *(a6 + 12))
    {
      re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, this, a6, a7);
    }

    else
    {
      v38 = re::TypeInfo::name(this)[1];
      v39 = re::TypeInfo::name(a6);
      re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Type categories of types %s (runtime) and %s (stream) don't match.", v38, v39[1]);
    }

    goto LABEL_39;
  }

  return re::internal::serializeObjectWithOneMember<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
}

uint64_t re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(uint64_t a1, const char *a2, uint64_t a3, float *a4, char a5)
{
  v16 = a2;
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v16);
    }

    v9 = *a4;
    v10 = *(a1 + 168);
    if (fabsf(v9) != INFINITY)
    {
      v14 = v9;
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(*(a1 + 168));
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteDouble(v10, v14);
      if ((a5 & 2) != 0)
      {
        return v5 ^ 1u;
      }

      goto LABEL_8;
    }

    v11 = "-Infinity";
    if (v9 > 0.0)
    {
      v11 = "Infinity";
    }

    v15 = v11;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(v10, &v15);
    if ((a5 & 2) == 0)
    {
LABEL_8:
      v12 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v12 - 16);
    }
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(uint64_t a1, const char *a2, uint64_t a3, double *a4, char a5)
{
  v15 = a2;
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v15);
    }

    v9 = *a4;
    v10 = *(a1 + 168);
    if (fabs(v9) != INFINITY)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(*(a1 + 168));
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteDouble(v10, v9);
      if ((a5 & 2) != 0)
      {
        return v5 ^ 1u;
      }

      goto LABEL_8;
    }

    v11 = "-Infinity";
    if (v9 > 0.0)
    {
      v11 = "Infinity";
    }

    v14 = v11;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(v10, &v14);
    if ((a5 & 2) == 0)
    {
LABEL_8:
      v12 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v12 - 16);
    }
  }

  return v5 ^ 1u;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v51 = *MEMORY[0x1E69E9840];
  if (a5 == a6)
  {
    goto LABEL_13;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(a5 + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v45), re::TypeInfo::TypeInfo(v44, &v46), v44[12] != 1) || !re::TypeInfo::isInteger(v44))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_38:
    v22 = 0;
    return v22 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_35:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

  v18 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v45);
  re::TypeInfo::TypeInfo(v44, &v46);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v45);
  re::TypeInfo::TypeInfo(v43, &v46);
  re::TypeInfo::TypeInfo(v41, a5);
  v19 = (*(*a1 + 80))(a1, v44);
  if (!v19)
  {
    v39 = re::TypeInfo::name(v44);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v39[1]);
    goto LABEL_38;
  }

  v20 = v19;
  v21 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
  v22 = 0;
  if (v21)
  {
    v23 = (*(v42 + 96))(a4);
    if (v23)
    {
      v49 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v45 = v18;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v45, v23);
      ++v48;
      v24 = (*(v42 + 120))(a4, v18);
      if ((*(v42 + 128))())
      {
        do
        {
          v25 = (*(v42 + 136))(v24);
          v26 = (*(v42 + 144))(v24);
          v50[0].n128_u64[0] = v25;
          v50[0].n128_u64[1] = v26;
          v27 = re::DynamicArray<re::RigNodeConstraint>::add(&v45, v50);
        }

        while (((*(v42 + 128))(v24, v27) & 1) != 0);
      }

      (*(v42 + 152))(v24, v18);
      v29 = 126 - 2 * __clz(v47);
      if (v47)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*,false>(v49, &v49[v47], v50, v30, 1, v28);
      if (v47)
      {
        v32 = v49;
        v33 = &v49[v47];
        do
        {
          v34 = v32->n128_u64[1];
          v35 = *v32->n128_u64[0];
          if (HIDWORD(v35))
          {
            if (v35 <= 0x2540BE3FFLL)
            {
              v37 = v50;
            }

            else
            {
              v37 = std::__itoa::__base_10_u32[abi:nn200100](v50, v35 / 0x2540BE400);
              v35 %= 0x2540BE400uLL;
            }

            v37->n128_u16[0] = std::__itoa::__digits_base_10[v35 / 0x5F5E100];
            v38 = v35 % 0x5F5E100;
            v37->n128_u16[1] = std::__itoa::__digits_base_10[v38 / 0xF4240uLL];
            v38 %= 0xF4240u;
            v37->n128_u16[2] = std::__itoa::__digits_base_10[v38 / 0x2710uLL];
            v38 %= 0x2710u;
            v37->n128_u16[3] = std::__itoa::__digits_base_10[v38 / 0x64u];
            v37->n128_u16[4] = std::__itoa::__digits_base_10[v38 % 0x64u];
            v36 = &v37->n128_i8[10];
          }

          else
          {
            v36 = std::__itoa::__base_10_u32[abi:nn200100](v50, *v32->n128_u64[0]);
          }

          *v36 = 0;
          v20(a1, v50, 0, v34, v44, v43, 0);
          ++v32;
        }

        while (v32 != v33);
      }

      if (v45 && v49)
      {
        (*(*v45 + 40))(v31);
      }
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_35;
  }

  return v22 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v48 = *MEMORY[0x1E69E9840];
  if (a5 == a6)
  {
    goto LABEL_13;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(a5 + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v42), re::TypeInfo::TypeInfo(v41, &v43), v41[12] != 1) || !re::TypeInfo::isInteger(v41))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_32:
    v22 = 0;
    return v22 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_29:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

  v18 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v42);
  re::TypeInfo::TypeInfo(v41, &v43);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v42);
  re::TypeInfo::TypeInfo(v40, &v43);
  re::TypeInfo::TypeInfo(v38, a5);
  v19 = (*(*a1 + 80))(a1, v41);
  if (!v19)
  {
    v36 = re::TypeInfo::name(v41);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v36[1]);
    goto LABEL_32;
  }

  v20 = v19;
  v21 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
  v22 = 0;
  if (v21)
  {
    v23 = (*(v39 + 96))(a4);
    if (v23)
    {
      v46 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v42 = v18;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v42, v23);
      ++v45;
      v24 = (*(v39 + 120))(a4, v18);
      if ((*(v39 + 128))())
      {
        do
        {
          v25 = (*(v39 + 136))(v24);
          v26 = (*(v39 + 144))(v24);
          v47[0].n128_u64[0] = v25;
          v47[0].n128_u64[1] = v26;
          v27 = re::DynamicArray<re::RigNodeConstraint>::add(&v42, v47);
        }

        while (((*(v39 + 128))(v24, v27) & 1) != 0);
      }

      (*(v39 + 152))(v24, v18);
      v29 = 126 - 2 * __clz(v44);
      if (v44)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*,false>(v46, &v46[v44], v47, v30, 1, v28);
      if (v44)
      {
        v32 = v46;
        v33 = &v46[v44];
        do
        {
          v34 = v32->n128_u64[0];
          v35 = v32->n128_u64[1];
          ++v32;
          *std::__itoa::__base_10_u32[abi:nn200100](v47, *v34) = 0;
          v20(a1, v47, 0, v35, v41, v40, 0);
        }

        while (v32 != v33);
      }

      if (v42 && v46)
      {
        (*(*v42 + 40))(v31);
      }
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_29;
  }

  return v22 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v48 = *MEMORY[0x1E69E9840];
  if (a5 == a6)
  {
    goto LABEL_13;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(a5 + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v42), re::TypeInfo::TypeInfo(v41, &v43), v41[12] != 1) || !re::TypeInfo::isInteger(v41))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_32:
    v22 = 0;
    return v22 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_29:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

  v18 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v42);
  re::TypeInfo::TypeInfo(v41, &v43);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v42);
  re::TypeInfo::TypeInfo(v40, &v43);
  re::TypeInfo::TypeInfo(v38, a5);
  v19 = (*(*a1 + 80))(a1, v41);
  if (!v19)
  {
    v36 = re::TypeInfo::name(v41);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v36[1]);
    goto LABEL_32;
  }

  v20 = v19;
  v21 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
  v22 = 0;
  if (v21)
  {
    v23 = (*(v39 + 96))(a4);
    if (v23)
    {
      v46 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v42 = v18;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v42, v23);
      ++v45;
      v24 = (*(v39 + 120))(a4, v18);
      if ((*(v39 + 128))())
      {
        do
        {
          v25 = (*(v39 + 136))(v24);
          v26 = (*(v39 + 144))(v24);
          v47[0].n128_u64[0] = v25;
          v47[0].n128_u64[1] = v26;
          v27 = re::DynamicArray<re::RigNodeConstraint>::add(&v42, v47);
        }

        while (((*(v39 + 128))(v24, v27) & 1) != 0);
      }

      (*(v39 + 152))(v24, v18);
      v29 = 126 - 2 * __clz(v44);
      if (v44)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*,false>(v46, &v46[v44], v47, v30, 1, v28);
      if (v44)
      {
        v32 = v46;
        v33 = &v46[v44];
        do
        {
          v34 = v32->n128_u64[0];
          v35 = v32->n128_u64[1];
          ++v32;
          *std::__itoa::__base_10_u32[abi:nn200100](v47, *v34) = 0;
          v20(a1, v47, 0, v35, v41, v40, 0);
        }

        while (v32 != v33);
      }

      if (v42 && v46)
      {
        (*(*v42 + 40))(v31);
      }
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_29;
  }

  return v22 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v48 = *MEMORY[0x1E69E9840];
  if (a5 == a6)
  {
    goto LABEL_13;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(a5 + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v42), re::TypeInfo::TypeInfo(v41, &v43), v41[12] != 1) || !re::TypeInfo::isInteger(v41))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_32:
    v22 = 0;
    return v22 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_29:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

  v18 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v42);
  re::TypeInfo::TypeInfo(v41, &v43);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v42);
  re::TypeInfo::TypeInfo(v40, &v43);
  re::TypeInfo::TypeInfo(v38, a5);
  v19 = (*(*a1 + 80))(a1, v41);
  if (!v19)
  {
    v36 = re::TypeInfo::name(v41);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v36[1]);
    goto LABEL_32;
  }

  v20 = v19;
  v21 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
  v22 = 0;
  if (v21)
  {
    v23 = (*(v39 + 96))(a4);
    if (v23)
    {
      v46 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v42 = v18;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v42, v23);
      ++v45;
      v24 = (*(v39 + 120))(a4, v18);
      if ((*(v39 + 128))())
      {
        do
        {
          v25 = (*(v39 + 136))(v24);
          v26 = (*(v39 + 144))(v24);
          v47[0].n128_u64[0] = v25;
          v47[0].n128_u64[1] = v26;
          v27 = re::DynamicArray<re::RigNodeConstraint>::add(&v42, v47);
        }

        while (((*(v39 + 128))(v24, v27) & 1) != 0);
      }

      (*(v39 + 152))(v24, v18);
      v29 = 126 - 2 * __clz(v44);
      if (v44)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*,false>(v46, &v46[v44], v47, v30, 1, v28);
      if (v44)
      {
        v32 = v46;
        v33 = &v46[v44];
        do
        {
          v34 = v32->n128_u64[0];
          v35 = v32->n128_u64[1];
          ++v32;
          *std::__itoa::__base_10_u32[abi:nn200100](v47, *v34) = 0;
          v20(a1, v47, 0, v35, v41, v40, 0);
        }

        while (v32 != v33);
      }

      if (v42 && v46)
      {
        (*(*v42 + 40))(v31);
      }
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_29;
  }

  return v22 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v53[0] = *MEMORY[0x1E69E9840];
  if (a5 == a6)
  {
    goto LABEL_13;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(a5 + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v47), re::TypeInfo::TypeInfo(v46, &v48), v46[12] != 1) || !re::TypeInfo::isInteger(v46))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_42:
    v22 = 0;
    return v22 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_39:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

  v18 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v47);
  re::TypeInfo::TypeInfo(v46, &v48);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v47);
  re::TypeInfo::TypeInfo(v45, &v48);
  re::TypeInfo::TypeInfo(v43, a5);
  v19 = (*(*a1 + 80))(a1, v46);
  if (!v19)
  {
    v41 = re::TypeInfo::name(v46);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v41[1]);
    goto LABEL_42;
  }

  v20 = v19;
  v21 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
  v22 = 0;
  if (v21)
  {
    v23 = (*(v44 + 96))(a4);
    if (v23)
    {
      v51 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v47 = v18;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v47, v23);
      ++v50;
      v24 = (*(v44 + 120))(a4, v18);
      if ((*(v44 + 128))())
      {
        do
        {
          v25 = (*(v44 + 136))(v24);
          v26 = (*(v44 + 144))(v24);
          v52[0].n128_u64[0] = v25;
          v52[0].n128_u64[1] = v26;
          v27 = re::DynamicArray<re::RigNodeConstraint>::add(&v47, v52);
        }

        while (((*(v44 + 128))(v24, v27) & 1) != 0);
      }

      (*(v44 + 152))(v24, v18);
      v29 = 126 - 2 * __clz(v49);
      if (v49)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*,false>(v51, &v51[v49], v52, v30, 1, v28);
      if (v49)
      {
        v32 = v51;
        v33 = &v51[v49];
        do
        {
          v34 = *v32->n128_u64[0];
          if ((v34 & 0x8000000000000000) != 0)
          {
            v52[0].n128_u8[0] = 45;
            v34 = -v34;
            v35 = (v52[0].n128_u64 + 1);
          }

          else
          {
            v35 = v52;
          }

          v36 = v32->n128_u64[1];
          if (v53 - v35 > 19 || (v37 = (1233 * (64 - __clz(v34 | 1))) >> 12, v38 = v37 - (std::__itoa::__pow10_64[v37] > v34) + 1, v39 = v53, v53 - v35 >= v38))
          {
            if (HIDWORD(v34))
            {
              if (v34 > 0x2540BE3FFLL)
              {
                v35 = std::__itoa::__base_10_u32[abi:nn200100](v35, v34 / 0x2540BE400);
                v34 %= 0x2540BE400uLL;
              }

              v35->n128_u16[0] = std::__itoa::__digits_base_10[v34 / 0x5F5E100];
              v40 = v34 % 0x5F5E100;
              v35->n128_u16[1] = std::__itoa::__digits_base_10[v40 / 0xF4240uLL];
              v40 %= 0xF4240u;
              v35->n128_u16[2] = std::__itoa::__digits_base_10[v40 / 0x2710uLL];
              v40 %= 0x2710u;
              v35->n128_u16[3] = std::__itoa::__digits_base_10[v40 / 0x64u];
              v35->n128_u16[4] = std::__itoa::__digits_base_10[v40 % 0x64u];
              v39 = &v35->n128_i8[10];
            }

            else
            {
              v39 = std::__itoa::__base_10_u32[abi:nn200100](v35, v34);
            }
          }

          *v39 = 0;
          v20(a1, v52, 0, v36, v46, v45, 0);
          ++v32;
        }

        while (v32 != v33);
      }

      if (v47 && v51)
      {
        (*(*v47 + 40))(v31);
      }
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_39;
  }

  return v22 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v52[0] = *MEMORY[0x1E69E9840];
  if (a5 == a6)
  {
    goto LABEL_13;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(a5 + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v46), re::TypeInfo::TypeInfo(v45, &v47), v45[12] != 1) || !re::TypeInfo::isInteger(v45))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_38:
    v22 = 0;
    return v22 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_35:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

  v18 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v46);
  re::TypeInfo::TypeInfo(v45, &v47);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v46);
  re::TypeInfo::TypeInfo(v44, &v47);
  re::TypeInfo::TypeInfo(v42, a5);
  v19 = (*(*a1 + 80))(a1, v45);
  if (!v19)
  {
    v40 = re::TypeInfo::name(v45);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v40[1]);
    goto LABEL_38;
  }

  v20 = v19;
  v21 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
  v22 = 0;
  if (v21)
  {
    v23 = (*(v43 + 96))(a4);
    if (v23)
    {
      v50 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v46 = v18;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v46, v23);
      ++v49;
      v24 = (*(v43 + 120))(a4, v18);
      if ((*(v43 + 128))())
      {
        do
        {
          v25 = (*(v43 + 136))(v24);
          v26 = (*(v43 + 144))(v24);
          v51[0].n128_u64[0] = v25;
          v51[0].n128_u64[1] = v26;
          v27 = re::DynamicArray<re::RigNodeConstraint>::add(&v46, v51);
        }

        while (((*(v43 + 128))(v24, v27) & 1) != 0);
      }

      (*(v43 + 152))(v24, v18);
      v29 = 126 - 2 * __clz(v48);
      if (v48)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*,false>(v50, &v50[v48], v51, v30, 1, v28);
      if (v48)
      {
        v32 = v50;
        v33 = &v50[v48];
        do
        {
          v34 = *v32->n128_u64[0];
          if ((v34 & 0x80000000) != 0)
          {
            v51[0].n128_u8[0] = 45;
            v34 = -v34;
            v35 = (v51[0].n128_u64 + 1);
          }

          else
          {
            v35 = v51;
          }

          v36 = v32->n128_u64[1];
          if (v52 - v35 > 9 || (v37 = (1233 * (32 - __clz(v34 | 1))) >> 12, v38 = (((__PAIR64__(v37, v34) - std::__itoa::__pow10_32[v37]) >> 32) + 1), v39 = v52, v52 - v35 >= v38))
          {
            v39 = std::__itoa::__base_10_u32[abi:nn200100](v35, v34);
          }

          *v39 = 0;
          v20(a1, v51, 0, v36, v45, v44, 0);
          ++v32;
        }

        while (v32 != v33);
      }

      if (v46 && v50)
      {
        (*(*v46 + 40))(v31);
      }
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_35;
  }

  return v22 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v52[0] = *MEMORY[0x1E69E9840];
  if (a5 == a6)
  {
    goto LABEL_13;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(a5 + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v46), re::TypeInfo::TypeInfo(v45, &v47), v45[12] != 1) || !re::TypeInfo::isInteger(v45))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_38:
    v22 = 0;
    return v22 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_35:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

  v18 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v46);
  re::TypeInfo::TypeInfo(v45, &v47);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v46);
  re::TypeInfo::TypeInfo(v44, &v47);
  re::TypeInfo::TypeInfo(v42, a5);
  v19 = (*(*a1 + 80))(a1, v45);
  if (!v19)
  {
    v40 = re::TypeInfo::name(v45);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v40[1]);
    goto LABEL_38;
  }

  v20 = v19;
  v21 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
  v22 = 0;
  if (v21)
  {
    v23 = (*(v43 + 96))(a4);
    if (v23)
    {
      v50 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v46 = v18;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v46, v23);
      ++v49;
      v24 = (*(v43 + 120))(a4, v18);
      if ((*(v43 + 128))())
      {
        do
        {
          v25 = (*(v43 + 136))(v24);
          v26 = (*(v43 + 144))(v24);
          v51[0].n128_u64[0] = v25;
          v51[0].n128_u64[1] = v26;
          v27 = re::DynamicArray<re::RigNodeConstraint>::add(&v46, v51);
        }

        while (((*(v43 + 128))(v24, v27) & 1) != 0);
      }

      (*(v43 + 152))(v24, v18);
      v29 = 126 - 2 * __clz(v48);
      if (v48)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*,false>(v50, &v50[v48], v51, v30, 1, v28);
      if (v48)
      {
        v32 = v50;
        v33 = &v50[v48];
        do
        {
          v34 = *v32->n128_u64[0];
          if ((v34 & 0x80000000) != 0)
          {
            v51[0].n128_u8[0] = 45;
            v34 = -v34;
            v35 = (v51[0].n128_u64 + 1);
          }

          else
          {
            v35 = v51;
          }

          v36 = v32->n128_u64[1];
          if (v52 - v35 > 9 || (v37 = (1233 * (32 - __clz(v34 | 1))) >> 12, v38 = (((__PAIR64__(v37, v34) - std::__itoa::__pow10_32[v37]) >> 32) + 1), v39 = v52, v52 - v35 >= v38))
          {
            v39 = std::__itoa::__base_10_u32[abi:nn200100](v35, v34);
          }

          *v39 = 0;
          v20(a1, v51, 0, v36, v45, v44, 0);
          ++v32;
        }

        while (v32 != v33);
      }

      if (v46 && v50)
      {
        (*(*v46 + 40))(v31);
      }
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_35;
  }

  return v22 & 1;
}

uint64_t re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, re *a6, int a7)
{
  if (a5 == a6)
  {
    goto LABEL_14;
  }

  v14 = *a6;
  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v15 = *(a6 + 2);
    v17 = *v15;
    if (v16 == *v15)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_14;
    }

    v14 = *a6;
    v15 = *(a6 + 2);
  }

  re::TypeRegistry::typeInfo(v14, v15[10], &v45);
  re::TypeInfo::TypeInfo(v44, &v46);
  v20 = re::TypeInfo::name(v44);
  if (*v20 >> 1 != 0x22C6ED80D0CLL || (v21 = v20[1], v21 != "StringID") && strcmp(v21, "StringID"))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_35:
    v26 = 0;
    return v26 & 1;
  }

LABEL_14:
  if (a7)
  {
LABEL_33:
    v26 = *(a1 + 64) ^ 1;
    return v26 & 1;
  }

  v22 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v45);
  re::TypeInfo::TypeInfo(v44, &v46);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v45);
  re::TypeInfo::TypeInfo(v43, &v46);
  re::TypeInfo::TypeInfo(v41, a5);
  v23 = (*(*a1 + 80))(a1, v44);
  if (!v23)
  {
    v38 = re::TypeInfo::name(v44);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v38[1]);
    goto LABEL_35;
  }

  v24 = v23;
  v25 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
  v26 = 0;
  if (v25)
  {
    v27 = (*(v42 + 96))(a4);
    if (v27)
    {
      v49 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v45 = v22;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v45, v27);
      ++v48;
      v28 = (*(v42 + 120))(a4, v22);
      if ((*(v42 + 128))())
      {
        do
        {
          v29 = (*(v42 + 136))(v28);
          v30 = (*(v42 + 144))(v28);
          v40.n128_u64[0] = v29;
          v40.n128_u64[1] = v30;
          v31 = re::DynamicArray<re::RigNodeConstraint>::add(&v45, &v40);
        }

        while (((*(v42 + 128))(v28, v31) & 1) != 0);
      }

      (*(v42 + 152))(v28, v22);
      v32 = 126 - 2 * __clz(v47);
      if (v47)
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*,false>(v49, &v49[16 * v47], &v40, v33, 1);
      if (v47)
      {
        v34 = v49;
        v35 = &v49[16 * v47];
        do
        {
          v36 = *v34;
          if (*(*v34 + 8))
          {
            v37 = *(v36 + 16);
          }

          else
          {
            v37 = v36 + 9;
          }

          v24(a1, v37, 0, *(v34 + 1), v44, v43, 0);
          v34 += 16;
        }

        while (v34 != v35);
      }

      if (v45 && v49)
      {
        (*(*v45 + 40))();
      }
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_33;
  }

  return v26 & 1;
}

uint64_t re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, re *a6, int a7)
{
  if (a5 == a6)
  {
    goto LABEL_14;
  }

  v14 = *a6;
  if (*a5 == *a6)
  {
    v16 = **(a5 + 2);
    v15 = *(a6 + 2);
    v17 = *v15;
    if (v16 == *v15)
    {
      v19 = WORD1(v16) == WORD1(v17);
      v18 = (v17 ^ v16) & 0xFFFFFF00000000;
      v19 = v19 && v18 == 0;
      if (v19)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_14;
    }

    v14 = *a6;
    v15 = *(a6 + 2);
  }

  re::TypeRegistry::typeInfo(v14, v15[10], &v46);
  re::TypeInfo::TypeInfo(v45, &v47);
  v20 = re::TypeInfo::name(v45);
  if (*v20 >> 1 != 0x134375A94D9F7110 || (v21 = v20[1], v21 != "DynamicString") && strcmp(v21, "DynamicString"))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_32:
    v26 = 0;
    return v26 & 1;
  }

LABEL_14:
  if (a7)
  {
LABEL_30:
    v26 = *(a1 + 64) ^ 1;
    return v26 & 1;
  }

  v22 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v46);
  re::TypeInfo::TypeInfo(v45, &v47);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v46);
  re::TypeInfo::TypeInfo(v44, &v47);
  re::TypeInfo::TypeInfo(v42, a5);
  v23 = (*(*a1 + 80))(a1, v45);
  if (!v23)
  {
    v39 = re::TypeInfo::name(v45);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v39[1]);
    goto LABEL_32;
  }

  v24 = v23;
  v25 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
  v26 = 0;
  if (v25)
  {
    v27 = (*(v43 + 96))(a4);
    if (v27)
    {
      v50 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v46 = v22;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v46, v27);
      ++v49;
      v28 = (*(v43 + 120))(a4, v22);
      if ((*(v43 + 128))())
      {
        do
        {
          v29 = (*(v43 + 136))(v28);
          v30 = (*(v43 + 144))(v28);
          v41.n128_u64[0] = v29;
          v41.n128_u64[1] = v30;
          v31 = re::DynamicArray<re::RigNodeConstraint>::add(&v46, &v41);
        }

        while (((*(v43 + 128))(v28, v31) & 1) != 0);
      }

      (*(v43 + 152))(v28, v22);
      v33 = 126 - 2 * __clz(v48);
      if (v48)
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*,false>(v50, &v50[v48], &v41, v34, 1, v32);
      if (v48)
      {
        v35 = v50;
        v36 = &v50[v48];
        do
        {
          v38 = v35->n128_u64[0];
          v37 = v35->n128_u64[1];
          ++v35;
          v24(a1, *(v38 + 8), 0, v37, v45, v44, 0);
        }

        while (v35 != v36);
      }

      if (v46 && v50)
      {
        (*(*v46 + 40))();
      }
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_30;
  }

  return v26 & 1;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*,false>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = &a2[-1];
  v10 = &a2[-2];
  v11 = &a2[-3];
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        v47 = a2[-1].n128_u64[0];
        v43 = &a2[-1];
        if (*v47 >= *v12->n128_u64[0])
        {
          return result;
        }

LABEL_77:
        v71 = *v12;
        *v12 = *v43;
        result = v71;
        goto LABEL_78;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      v42 = v12 + 1;
      v44 = a2[-1].n128_u64[0];
      v43 = &a2[-1];
      v45 = *v12[1].n128_u64[0];
      v46 = *v44;
      if (v45 < *v12->n128_u64[0])
      {
        if (v46 < v45)
        {
          goto LABEL_77;
        }

        v70 = *v12;
        *v12 = *v42;
        result = v70;
        *v42 = v70;
        if (**v43 >= *v12[1].n128_u64[0])
        {
          return result;
        }

        result = *v42;
        *v42 = *v43;
LABEL_78:
        *v43 = result;
        return result;
      }

      if (v46 >= v45)
      {
        return result;
      }

      result = *v42;
      *v42 = *v43;
      *v43 = result;
      goto LABEL_104;
    }

    if (v15 == 4)
    {
      break;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*,0>(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*>(v12, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*>(v12, a2);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*,re::Pair<unsigned long long const*,void *,true>*>(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = &v12[v15 >> 1];
    v17 = v16;
    v18 = **v9;
    if (v15 >= 0x81)
    {
      v19 = *v16->n128_u64[0];
      if (v19 >= *v12->n128_u64[0])
      {
        if (v18 < v19)
        {
          v55 = *v16;
          *v16 = *v9;
          *v9 = v55;
          if (*v16->n128_u64[0] < *v12->n128_u64[0])
          {
            v56 = *v12;
            *v12 = *v16;
            *v16 = v56;
          }
        }
      }

      else
      {
        if (v18 >= v19)
        {
          v59 = *v12;
          *v12 = *v16;
          *v16 = v59;
          if (**v9 >= *v16->n128_u64[0])
          {
            goto LABEL_28;
          }

          v53 = *v16;
          *v16 = *v9;
        }

        else
        {
          v53 = *v12;
          *v12 = *v9;
        }

        *v9 = v53;
      }

LABEL_28:
      v21 = v12 + 1;
      v22 = v16 - 1;
      v23 = *v16[-1].n128_u64[0];
      v24 = **v10;
      if (v23 >= *v12[1].n128_u64[0])
      {
        if (v24 < v23)
        {
          v60 = *v22;
          *v22 = *v10;
          *v10 = v60;
          if (*v22->n128_u64[0] < *v21->n128_u64[0])
          {
            v26 = *v21;
            *v21 = *v22;
            *v22 = v26;
          }
        }
      }

      else
      {
        if (v24 >= v23)
        {
          v27 = *v21;
          *v21 = *v22;
          *v22 = v27;
          if (**v10 >= *v22->n128_u64[0])
          {
            goto LABEL_40;
          }

          v62 = *v22;
          *v22 = *v10;
          v25 = v62;
        }

        else
        {
          v25 = *v21;
          *v21 = *v10;
        }

        *v10 = v25;
      }

LABEL_40:
      v28 = v12 + 2;
      v30 = v16[1].n128_u64[0];
      v29 = v16 + 1;
      v31 = *v30;
      v32 = **v11;
      if (*v30 >= *v12[2].n128_u64[0])
      {
        if (v32 < v31)
        {
          v63 = *v29;
          *v29 = *v11;
          *v11 = v63;
          if (*v29->n128_u64[0] < *v28->n128_u64[0])
          {
            v34 = *v28;
            *v28 = *v29;
            *v29 = v34;
          }
        }
      }

      else
      {
        if (v32 >= v31)
        {
          v35 = *v28;
          *v28 = *v29;
          *v29 = v35;
          if (**v11 >= *v29->n128_u64[0])
          {
            goto LABEL_49;
          }

          v64 = *v29;
          *v29 = *v11;
          v33 = v64;
        }

        else
        {
          v33 = *v28;
          *v28 = *v11;
        }

        *v11 = v33;
      }

LABEL_49:
      v36 = *v17->n128_u64[0];
      v37 = *v29->n128_u64[0];
      if (v36 >= *v22->n128_u64[0])
      {
        if (v37 < v36)
        {
          v66 = *v17;
          *v17 = *v29;
          *v29 = v66;
          if (*v17->n128_u64[0] < *v22->n128_u64[0])
          {
            v67 = *v22;
            *v22 = *v17;
            *v17 = v67;
          }
        }

        goto LABEL_58;
      }

      if (v37 >= v36)
      {
        v68 = *v22;
        *v22 = *v17;
        *v17 = v68;
        if (*v29->n128_u64[0] >= *v17->n128_u64[0])
        {
LABEL_58:
          v69 = *v12;
          *v12 = *v17;
          *v17 = v69;
          goto LABEL_59;
        }

        v65 = *v17;
        *v17 = *v29;
      }

      else
      {
        v65 = *v22;
        *v22 = *v29;
      }

      *v29 = v65;
      goto LABEL_58;
    }

    v20 = *v12->n128_u64[0];
    if (v20 >= *v17->n128_u64[0])
    {
      if (v18 < v20)
      {
        v57 = *v12;
        *v12 = *v9;
        *v9 = v57;
        if (*v12->n128_u64[0] < *v17->n128_u64[0])
        {
          v58 = *v17;
          *v17 = *v12;
          *v12 = v58;
        }
      }
    }

    else
    {
      if (v18 < v20)
      {
        v54 = *v17;
        *v17 = *v9;
LABEL_36:
        *v9 = v54;
        goto LABEL_59;
      }

      v61 = *v17;
      *v17 = *v12;
      *v12 = v61;
      if (**v9 < *v12->n128_u64[0])
      {
        v54 = *v12;
        *v12 = *v9;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && *v12[-1].n128_u64[0] >= *v12->n128_u64[0])
    {
      v12 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned long long const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &>(v12, a2);
      goto LABEL_66;
    }

    v38 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned long long const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &>(v12, a2);
    if ((v39 & 1) == 0)
    {
      goto LABEL_64;
    }

    v40 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*>(v12, v38, result);
    v12 = v38 + 1;
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*>(v38 + 1, a2, v41))
    {
      a4 = -v14;
      a2 = v38;
      if (v40)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v40)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*,false>(a1, v38, a3, -v14, a5 & 1, result);
      v12 = v38 + 1;
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v42 = v12 + 1;
  v48 = v12 + 2;
  v49 = v12[2].n128_u64[0];
  v50 = *v12[1].n128_u64[0];
  v51 = *v49;
  if (v50 >= *v12->n128_u64[0])
  {
    if (v51 < v50)
    {
      result = *v42;
      *v42 = *v48;
      *v48 = result;
      if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
      {
        v73 = *v12;
        *v12 = *v42;
        result = v73;
        *v42 = v73;
      }
    }
  }

  else
  {
    if (v51 < v50)
    {
      v72 = *v12;
      *v12 = *v48;
      result = v72;
      goto LABEL_100;
    }

    v74 = *v12;
    *v12 = *v42;
    result = v74;
    *v42 = v74;
    if (*v49 < *v12[1].n128_u64[0])
    {
      result = *v42;
      *v42 = *v48;
LABEL_100:
      *v48 = result;
    }
  }

  if (**v9 >= *v48->n128_u64[0])
  {
    return result;
  }

  result = *v48;
  *v48 = *v9;
  *v9 = result;
  if (*v48->n128_u64[0] >= *v42->n128_u64[0])
  {
    return result;
  }

  result = *v42;
  *v42 = *v48;
  *v48 = result;
LABEL_104:
  if (*v12[1].n128_u64[0] < *v12->n128_u64[0])
  {
    v75 = *v12;
    *v12 = *v42;
    result = v75;
    *v42 = v75;
  }

  return result;
}

void *std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*>(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[2];
        if (*v6 < **v4)
        {
          v7 = v4[3];
          v8 = v3;
          while (1)
          {
            *(result + v8 + 16) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = **(result + v8 - 16);
            v8 -= 16;
            if (*v6 >= v9)
            {
              v10 = (result + v8 + 16);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          v10[1] = v7;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 16;
    while (v2 != a2)
    {
      v3 = v2;
      v4 = *(result + 16);
      if (*v4 < **result)
      {
        v5 = *(result + 24);
        v6 = v3;
        do
        {
          *v6 = *(v6 - 16);
          v7 = *(v6 - 32);
          v6 -= 16;
        }

        while (*v4 < *v7);
        *v6 = v4;
        *(v6 + 8) = v5;
      }

      v2 = v3 + 16;
      result = v3;
    }
  }

  return result;
}

unint64_t **std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned long long const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &>(unint64_t **a1, unint64_t **a2)
{
  v2 = *a1;
  v3 = *a1;
  v4 = **a1;
  if (v4 >= **(a2 - 2))
  {
    v7 = a1 + 2;
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v7 += 2;
    }

    while (v4 >= **v5);
  }

  else
  {
    v5 = a1;
    do
    {
      v6 = v5[2];
      v5 += 2;
    }

    while (v4 >= *v6);
  }

  if (v5 < a2)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
    }

    while (v4 < *v8);
  }

  while (v5 < a2)
  {
    v13 = *v5;
    *v5 = *a2;
    *a2 = v13;
    v9 = *v3;
    do
    {
      v10 = v5[2];
      v5 += 2;
    }

    while (v9 >= *v10);
    do
    {
      v11 = *(a2 - 2);
      a2 -= 2;
    }

    while (v9 < *v11);
  }

  if (v5 - 2 != a1)
  {
    *a1 = *(v5 - 1);
  }

  *(v5 - 1) = v2;
  return v5;
}

unint64_t **std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<unsigned long long const*,void *,true> *,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &>(unint64_t **a1, unint64_t **a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *a1;
  v5 = **a1;
  do
  {
    v6 = *a1[v2 + 2];
    v2 += 2;
  }

  while (v6 < v5);
  v7 = &a1[v2];
  v8 = &a1[v2 - 2];
  if (v2 == 2)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      v10 = *(a2 - 2);
      a2 -= 2;
    }

    while (*v10 >= v5);
  }

  else
  {
    do
    {
      v9 = *(a2 - 2);
      a2 -= 2;
    }

    while (*v9 >= v5);
  }

  if (v7 < a2)
  {
    v11 = &a1[v2];
    v12 = a2;
    do
    {
      v13 = *v11;
      *v11 = *v12;
      *v12 = v13;
      v14 = *v4;
      do
      {
        v15 = v11[2];
        v11 += 2;
      }

      while (*v15 < v14);
      do
      {
        v16 = *(v12 - 2);
        v12 -= 2;
      }

      while (*v16 >= v14);
    }

    while (v11 < v12);
    v8 = v11 - 2;
  }

  if (v8 != a1)
  {
    *a1 = *v8;
  }

  *v8 = v3;
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = a1 + 1;
      v7 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v8 = *a1[1].n128_u64[0];
      v9 = *v7;
      if (v8 < *a1->n128_u64[0])
      {
        if (v9 >= v8)
        {
          v30 = *a1;
          *a1 = *v6;
          *v6 = v30;
          if (*v4->n128_u64[0] >= *a1[1].n128_u64[0])
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v25 = *v6;
      *v6 = *v4;
      *v4 = v25;
LABEL_50:
      if (*a1[1].n128_u64[0] < *a1->n128_u64[0])
      {
        v43 = *a1;
        *a1 = *v6;
        *v6 = v43;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v6 = a1 + 1;
    v18 = a1 + 2;
    v19 = a1[2].n128_u64[0];
    v20 = a2 - 1;
    v21 = a1->n128_u64[0];
    v22 = *a1[1].n128_u64[0];
    v23 = *v19;
    if (v22 >= *a1->n128_u64[0])
    {
      if (v23 < v22)
      {
        v28 = *v6;
        *v6 = *v18;
        *v18 = v28;
        if (*v6->n128_u64[0] < *v21)
        {
          v29 = *a1;
          *a1 = *v6;
          *v6 = v29;
        }
      }

      goto LABEL_47;
    }

    if (v23 >= v22)
    {
      v40 = *a1;
      *a1 = *v6;
      *v6 = v40;
      if (*v19 >= *a1[1].n128_u64[0])
      {
        goto LABEL_47;
      }

      v24 = *v6;
      *v6 = *v18;
    }

    else
    {
      v24 = *a1;
      *a1 = *v18;
    }

    *v18 = v24;
LABEL_47:
    if (*v20->n128_u64[0] >= *v18->n128_u64[0])
    {
      return 1;
    }

    v41 = *v18;
    *v18 = *v20;
    *v20 = v41;
    if (*v18->n128_u64[0] >= *v6->n128_u64[0])
    {
      return 1;
    }

    v42 = *v6;
    *v6 = *v18;
    *v18 = v42;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (*v5 >= *a1->n128_u64[0])
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = a1 + 2;
  v12 = a1[2].n128_u64[0];
  v13 = a1 + 1;
  v14 = a1->n128_u64[0];
  v15 = *a1[1].n128_u64[0];
  v16 = *v12;
  if (v15 >= *a1->n128_u64[0])
  {
    if (v16 < v15)
    {
      v26 = *v13;
      *v13 = *v11;
      *v11 = v26;
      if (*v13->n128_u64[0] < *v14)
      {
        v27 = *a1;
        *a1 = *v13;
        *v13 = v27;
      }
    }
  }

  else
  {
    if (v16 >= v15)
    {
      v31 = *a1;
      *a1 = *v13;
      *v13 = v31;
      if (*v12 >= *a1[1].n128_u64[0])
      {
        goto LABEL_33;
      }

      v17 = *v13;
      *v13 = *v11;
    }

    else
    {
      v17 = *a1;
      *a1 = *v11;
    }

    *v11 = v17;
  }

LABEL_33:
  v32 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  while (1)
  {
    v35 = v32->n128_u64[0];
    if (*v32->n128_u64[0] < *v11->n128_u64[0])
    {
      v36 = v32->n128_u64[1];
      v37 = v33;
      while (1)
      {
        *(a1 + v37 + 48) = *(a1 + v37 + 32);
        if (v37 == -32)
        {
          break;
        }

        v38 = **(a1[1].n128_u64 + v37);
        v37 -= 16;
        if (*v35 >= v38)
        {
          v39 = (a1 + v37 + 48);
          goto LABEL_41;
        }
      }

      v39 = a1;
LABEL_41:
      v39->n128_u64[0] = v35;
      v39->n128_u64[1] = v36;
      if (++v34 == 8)
      {
        return &v32[1] == a2;
      }
    }

    v11 = v32;
    v33 += 16;
    if (++v32 == a2)
    {
      return 1;
    }
  }
}

__int128 *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*,re::Pair<unsigned long long const*,void *,true>*>(unint64_t **a1, unint64_t **a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (**v12 < **a1)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v23 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[2 * v14];
          v17 = (v16 + 2);
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else
          {
            v20 = v16[4];
            v19 = (v16 + 4);
            if (**(v19 - 2) >= *v20)
            {
              v14 = v18;
            }

            else
            {
              v17 = v19;
            }
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v17 == --v6)
        {
          *v17 = v23;
        }

        else
        {
          *v17 = *v6;
          *v6 = v23;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*>(a1, (v17 + 1), a4, ((v17 + 1) - a1) >> 4);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}