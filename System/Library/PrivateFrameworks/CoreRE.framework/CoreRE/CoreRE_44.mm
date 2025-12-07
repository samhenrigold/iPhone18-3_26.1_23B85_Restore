_BYTE *re::RealityFileAssetProvider::getSource@<X0>(os_unfair_lock_s **this@<X0>, const re::AssetLoadDescriptor *a2@<X1>, uint64_t a3@<X8>)
{
  if (v17[0])
  {
    hasURL = re::RealityFileDescriptor::hasURL(v18, this[27]);
    if (hasURL)
    {
      re::RealityFileDescriptor::getURL(v18, this[27], this[28], v15);
      if (v15[0])
      {
        LOBYTE(v12) = 1;
        re::DynamicString::DynamicString(&v13, &v15[8]);
        v6 = v13;
        v13 = 0u;
        v7 = v14;
        v14 = 0u;
        *(a3 + 16) = v6;
        *(a3 + 32) = v7;
        *a3 = 1;
        *(a3 + 8) = 1;
      }

      else
      {
        re::DynamicString::DynamicString(&v12, &v15[8]);
        *a3 = 0;
        *(a3 + 8) = v12;
        *(a3 + 32) = v14;
        *(a3 + 16) = v13;
      }

      if (*&v15[8] && (v15[16] & 1) != 0)
      {
        (*(**&v15[8] + 40))();
      }
    }

    else
    {
      v8 = *v15;
      v9 = *&v15[16];
      v10 = v16;
      *a3 = 0;
      *(a3 + 8) = v8;
      *(a3 + 24) = v9;
      *(a3 + 32) = v10;
    }
  }

  else
  {
    re::DynamicString::DynamicString(v15, v18);
    *a3 = 0;
    *(a3 + 8) = *v15;
    *(a3 + 32) = v16;
    *(a3 + 16) = *&v15[8];
  }

  return re::Result<re::RealityFileAssetLoadDescriptorParameters,re::DynamicString>::~Result(v17);
}

void re::RealityFileAssetProvider::getFileName(uint64_t *__return_ptr a1@<X8>, re::RealityFileAssetProvider *this@<X0>)
{
  (*(*this + 64))(&v16);
  if (v16 == 1)
  {
    v3 = MEMORY[0x1E695DFF8];
    if (BYTE8(v18))
    {
      v4 = v19;
    }

    else
    {
      v4 = &v18 + 9;
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithCString:v4 encoding:4];
    v6 = [v3 URLWithString:v5];

    v7 = [v6 lastPathComponent];
    v8 = [v7 UTF8String];
    v9 = v13;
    v13 = 0uLL;
    v10 = v14;
    v11 = v15;
    v14 = 0;
    v15 = 0;
    *a1 = 1;
    *(a1 + 8) = 1;
    *(a1 + 1) = v9;
    a1[4] = v10;
    a1[5] = v11;

    if (v16)
    {
      if (v17 != 1)
      {
        return;
      }

      v12 = &v18;
    }

    else
    {
      v12 = &v17;
    }
  }

  else
  {
    *a1 = v16;
    v12 = &v17;
    a1[1] = v17;
    a1[4] = v19;
    *(a1 + 1) = v18;
    v19 = 0;
    v17 = 0;
    v18 = 0uLL;
  }

  re::DynamicString::deinit(v12);
}

_BYTE *re::RealityFileAssetProvider::getDescription(re::RealityFileAssetProvider *this, const re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  if ((v23[0] & 1) == 0)
  {
    v6 = "mangled";
    v7 = 7;
LABEL_8:
    v21 = v6;
    v22[0] = v7;
    re::DynamicString::operator=(a3, &v21);
    return re::Result<re::RealityFileAssetLoadDescriptorParameters,re::DynamicString>::~Result(v23);
  }

  if (v24 > 1u)
  {
    switch(v24)
    {
      case 2u:
        v5 = "Bundle";
        goto LABEL_14;
      case 3u:
        v5 = "MemoryFileID";
        goto LABEL_14;
      case 4u:
        v5 = "NameAlias";
LABEL_14:
        v21 = v5;
        v22[0] = strlen(v5);
        re::DynamicString::operator=(a3, &v21);
        goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (!v24)
  {
    v6 = "None";
    v7 = 4;
    goto LABEL_8;
  }

  if (v24 == 1)
  {
    v5 = "URL";
    goto LABEL_14;
  }

LABEL_15:
  v8 = v25[0];
  if (v25[0])
  {
    v9 = v25[0] >> 1;
  }

  else
  {
    v9 = LOBYTE(v25[0]) >> 1;
  }

  if (v9)
  {
    re::DynamicString::append(a3, "/", 1uLL);
    if (v8)
    {
      v10 = v25[1];
    }

    else
    {
      v10 = v25 + 1;
    }

    re::DynamicString::append(a3, v10, v9);
  }

  v11 = v26[0];
  if (v26[0])
  {
    v12 = v26[0] >> 1;
  }

  else
  {
    v12 = LOBYTE(v26[0]) >> 1;
  }

  if (v12)
  {
    re::DynamicString::append(a3, "/", 1uLL);
    if (v11)
    {
      v13 = v26[1];
    }

    else
    {
      v13 = v26 + 1;
    }

    re::DynamicString::append(a3, v13, v12);
  }

  v14 = v27[0];
  if (v27[0])
  {
    v15 = v27[0] >> 1;
  }

  else
  {
    v15 = LOBYTE(v27[0]) >> 1;
  }

  if (v15)
  {
    re::DynamicString::append(a3, "/", 1uLL);
    if (v14)
    {
      v16 = v27[1];
    }

    else
    {
      v16 = v27 + 1;
    }

    re::DynamicString::append(a3, v16, v15);
  }

  if (v28 != 1)
  {
    re::DynamicString::format(&v21, "<textureDownsampleLevel%d>", v4, v28);
    v17 = v22[0] & 1;
    if (v22[0])
    {
      v18 = v22[1];
    }

    else
    {
      v18 = v22 + 1;
    }

    if (v22[0])
    {
      v19 = v22[0] >> 1;
    }

    else
    {
      v19 = LOBYTE(v22[0]) >> 1;
    }

    re::DynamicString::append(a3, v18, v19);
    if (v21 && v17)
    {
      (*(*v21 + 40))();
    }
  }

  return re::Result<re::RealityFileAssetLoadDescriptorParameters,re::DynamicString>::~Result(v23);
}

_BYTE *re::RealityFileAssetProvider::getAssetPathForRelease@<X0>(re::RealityFileAssetProvider *a1@<X0>, const re::AssetLoadDescriptor *a2@<X1>, uint64_t a3@<X8>)
{
  if (v30[0])
  {
    re::RealityFileAssetProvider::getFileName(&v27, a1);
    if (v27 != 1)
    {
      v11 = v24;
      v12 = v25;
      v13 = v26;
      *a3 = 0;
      *(a3 + 8) = v11;
      *(a3 + 24) = v12;
      *(a3 + 32) = v13;
      v10 = &v28;
      goto LABEL_24;
    }

    re::DynamicString::operator+(&v21, &v24, &v32);
    if (v29[0])
    {
      v7 = v29[1];
    }

    else
    {
      v7 = v29 + 1;
    }

    if (v22)
    {
      v8 = *&v23[7];
    }

    else
    {
      v8 = v23;
    }

    re::DynamicString::format(&v18, "reality:%s/%s", v6, v7, v8);
    re::DynamicString::DynamicString(&v15, &v18);
    *a3 = 1;
    *(a3 + 8) = v15;
    v9 = v18;
    *(a3 + 32) = v17;
    *(a3 + 16) = v16;
    if (v9 && (v19 & 1) != 0)
    {
      (*(*v9 + 40))(v9, v20);
    }

    if (v21 && (v22 & 1) != 0)
    {
      (*(*v21 + 40))();
    }

    if (v24 && (BYTE8(v24) & 1) != 0)
    {
      (*(*v24 + 40))();
    }

    if ((v27 & 1) == 0)
    {
      v10 = &v28;
      goto LABEL_24;
    }

    if (v28 == 1)
    {
      v10 = (&v28 + 8);
LABEL_24:
      re::DynamicString::deinit(v10);
    }
  }

  else
  {
    re::DynamicString::DynamicString(&v27, &v31);
    *a3 = 0;
    *(a3 + 8) = v27;
    *(a3 + 32) = v29[0];
    *(a3 + 16) = v28;
  }

  return re::Result<re::RealityFileAssetLoadDescriptorParameters,re::DynamicString>::~Result(v30);
}

_BYTE *re::RealityFileAssetProvider::initMetadataStrings(uint64_t a1, const re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (v15[0] == 1)
  {
    re::RealityFileRegistry::getOrMountRealityFile(&v13, &v16, *(a1 + 192), *(a1 + 216), *(a1 + 224));
    if (v13)
    {
      v6 = v14;
      if (v14)
      {
        v7 = v14 + 1;
      }

      v8 = re::AssetMap::metadataForFileName(v6[14], &v17);
      if (v8)
      {
        re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(a3, v8);
      }
    }

    else
    {
      v9 = *re::assetsLogObjects(v5);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = v9;
        v12 = re::WrappedError::localizedDescription(&v14);
        *buf = 136315138;
        v19 = v12;
        _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Cannot init metadata due to reality file load error: %s", buf, 0xCu);
      }
    }

    re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(&v13);
  }

  return re::Result<re::RealityFileAssetLoadDescriptorParameters,re::DynamicString>::~Result(v15);
}

_BYTE *re::RealityFileAssetProvider::getPreloadableDependencies@<X0>(void *a1@<X0>, const re::AssetLoadDescriptor *a2@<X1>, re::internal::AssetTypeRegistry **a3@<X2>, char *a4@<X8>)
{
  if (v78[0])
  {
    v77 = 0;
    v74 = 0;
    v75 = 0;
    v73 = 0;
    v76 = 0;
    re::RealityFileRegistry::getMountedRealityFile(&v71, v79, a1[24], a1[27], a1[28]);
    if (v71)
    {
      v8 = v72;
      if (v72)
      {
        v9 = (v72 + 8);
      }

      if (v80[71])
      {
        v10 = *&v81[7];
      }

      else
      {
        v10 = v81;
      }

      v11 = re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(*(v8 + 112) + 320, v10);
      if (v11 && (v12 = *(v11 + 16)) != 0)
      {
        v46 = v8;
        v13 = 0;
        v14 = *(v11 + 32);
        v49 = 0;
        v47 = *a4;
        v48 = *(a4 + 1);
        v15 = 8 * v12;
        while (1)
        {
          v16 = *v14;
          if (*v14)
          {
            v17 = (v16 + 8);
          }

          v18 = (*(*v16 + 40))(v16);
          if (!v18)
          {
            break;
          }

          v20 = re::path::ext(v18, v19);
          if (*v20 != 46)
          {
            break;
          }

          v21 = (v20 + 1);
          if (!v20[1])
          {
            break;
          }

          v22 = re::internal::AssetTypeRegistry::assetTypeWithCompiledExtension(*a3, v21);
          if (!v22)
          {
            re::DynamicString::format(&v51, "Failed to find AssetType with compiled extension '%s'.", v23, v21);
            if (v52)
            {
              v42 = *(&v52 + 1);
            }

            else
            {
              v42 = &v52 + 1;
            }

            v43 = 9;
            goto LABEL_73;
          }

          v24 = v22;
          v25 = (*(*v16 + 40))(v16);
          v26 = (*(*a1 + 48))(&v51, a1, a2, v25, *v24);
          v28 = v51;
          if (v51)
          {
            v70 = 0;
            v68 = 0uLL;
            v67 = 0;
            v69 = 0;
            re::DynamicArray<re::AssetLoadDescriptor>::setCapacity(&v67, 1uLL);
            ++v69;
            v29 = re::DynamicArray<re::AssetLoadDescriptor>::add(&v67, &v52);
            if (v13 >= v74)
            {
              if (v74 < v13 + 1)
              {
                if (v73)
                {
                  v33 = 8;
                  if (v74)
                  {
                    v33 = 2 * v74;
                  }

                  if (v33 <= v13 + 1)
                  {
                    v34 = v13 + 1;
                  }

                  else
                  {
                    v34 = v33;
                  }

                  re::DynamicArray<re::DynamicArray<re::AssetLoadDescriptor>>::setCapacity(&v73, v34);
                }

                else
                {
                  re::DynamicArray<re::DynamicArray<re::AssetLoadDescriptor>>::setCapacity(&v73, v13 + 1);
                  ++v76;
                }
              }

              v13 = v75;
              v30 = v77;
            }

            else
            {
              v30 = v49;
            }

            v49 = v30;
            re::DynamicArray<re::AssetLoadDescriptor>::DynamicArray(v30 + 40 * v13, &v67);
            v13 = ++v75;
            ++v76;
            re::DynamicArray<re::AssetLoadDescriptor>::deinit(&v67);
          }

          else
          {
            v31 = &v52 + 9;
            if (BYTE8(v52))
            {
              v31 = v53;
            }

            re::DynamicString::format(&v67, "RealityFileAssetProvider failed to resolve child AssetLoadDescriptor due to error: %s", v27, v31);
            if (v68)
            {
              v32 = *(&v68 + 1);
            }

            else
            {
              v32 = &v68 + 1;
            }

            re::WrappedError::make(&v50, @"RERealityFileErrorDomain", 0x13, v32);
            v48 = v50;
            v50 = 0;

            if (v67 && (v68 & 1) != 0)
            {
              (*(*v67 + 40))();
            }

            v47 = 0;
          }

          if (v51 == 1)
          {
            if (v65)
            {
              if (BYTE8(v65))
              {
                (*(*v65 + 40))();
              }

              v66 = 0u;
              v65 = 0u;
            }

            if (v60)
            {
              if (v64)
              {
                (*(*v60 + 40))();
              }

              v64 = 0;
              v61 = 0;
              v62 = 0;
              v60 = 0;
              ++v63;
            }

            if (v55)
            {
              if (v59)
              {
                (*(*v55 + 40))();
              }

              v59 = 0;
              v56 = 0;
              v57 = 0;
              v55 = 0;
              ++v58;
            }
          }

          if (v52 && (BYTE8(v52) & 1) != 0)
          {
            (*(*v52 + 40))();
          }

          if ((v28 & 1) == 0)
          {
            *a4 = v47;
            *(a4 + 1) = v48;
LABEL_84:
            v8 = v46;
            if (v46)
            {
              goto LABEL_77;
            }

            goto LABEL_78;
          }

          ++v14;
          v15 -= 8;
          if (!v15)
          {
            re::DynamicArray<re::DynamicArray<re::AssetLoadDescriptor>>::DynamicArray(&v67, &v73);
            v35 = v67;
            v67 = 0;
            v36 = v70;
            v70 = 0;
            ++v69;
            *a4 = 1;
            *(a4 + 1) = v35;
            v51 = 0;
            v37 = v68;
            v68 = 0u;
            *(a4 + 1) = v37;
            v52 = 0u;
            *(a4 + 5) = v36;
            v54 = 0;
            LODWORD(v53) = 2;
            *(a4 + 8) = 1;
            re::DynamicArray<re::DynamicArray<re::AssetLoadDescriptor>>::deinit(&v51);
            re::DynamicArray<re::DynamicArray<re::AssetLoadDescriptor>>::deinit(&v67);
            goto LABEL_84;
          }
        }

        v40 = (*(*v16 + 40))(v16);
        re::DynamicString::format(&v51, "Failed to parse extension from archive entry name '%s'.", v41, v40);
        if (v52)
        {
          v42 = *(&v52 + 1);
        }

        else
        {
          v42 = &v52 + 1;
        }

        v43 = 18;
LABEL_73:
        re::WrappedError::make(&v67, @"RERealityFileErrorDomain", v43, v42);
        v44 = v67;
        v67 = 0;
        *a4 = 0;
        *(a4 + 1) = v44;

        if (v51 && (v52 & 1) != 0)
        {
          (*(*v51 + 40))();
        }

        v8 = v46;

        if (!v46)
        {
          goto LABEL_78;
        }
      }

      else
      {
        v70 = 0;
        v67 = 0;
        v68 = 0u;
        v69 = 1;
        *a4 = 1;
        v51 = 0;
        *(a4 + 8) = 0u;
        *(a4 + 3) = 0;
        v52 = 0u;
        *(a4 + 5) = 0;
        v54 = 0;
        LODWORD(v53) = 2;
        *(a4 + 8) = 1;
        re::DynamicArray<re::DynamicArray<re::AssetLoadDescriptor>>::deinit(&v51);
        re::DynamicArray<re::DynamicArray<re::AssetLoadDescriptor>>::deinit(&v67);
      }

LABEL_77:
    }

    else
    {
      re::DynamicArray<re::DynamicArray<re::AssetLoadDescriptor>>::DynamicArray(&v51, &v73);
      *a4 = 1;
      *(a4 + 1) = v51;
      *(a4 + 1) = v52;
      v51 = 0;
      v52 = 0uLL;
      *(a4 + 5) = v54;
      v54 = 0;
      LODWORD(v53) = v53 + 1;
      *(a4 + 8) = 1;
      re::DynamicArray<re::DynamicArray<re::AssetLoadDescriptor>>::deinit(&v51);
    }

LABEL_78:
    if (v71 == 1 && v72)
    {
    }

    re::DynamicArray<re::DynamicArray<re::AssetLoadDescriptor>>::deinit(&v73);
  }

  else
  {
    if (v79[8])
    {
      v38 = *&v80[7];
    }

    else
    {
      v38 = v80;
    }

    re::WrappedError::make(&v51, @"RERealityFileErrorDomain", 0x11, v38);
    v39 = v51;
    v51 = 0;
    *a4 = 0;
    *(a4 + 1) = v39;
  }

  return re::Result<re::RealityFileAssetLoadDescriptorParameters,re::DynamicString>::~Result(v78);
}

uint64_t re::HashTable<re::AssetType const*,re::SharedPtr<re::RealityFileAssetProvider::PerTypeLoadCallbacks>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::emplace<re::RealityFileAssetProvider::PerTypeLoadCallbacks*&>(uint64_t a1, void *a2, uint64_t *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::AssetType const*,re::SharedPtr<re::RealityFileAssetProvider::PerTypeLoadCallbacks>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addInternal<re::AssetType const* const&,re::RealityFileAssetProvider::PerTypeLoadCallbacks*&>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 32 * HIDWORD(v9) + 16;
  }
}

_BYTE *re::internal::Callable<re::RealityFileAssetProvider::RealityFileAssetProvider(re::RealityFileRegistry *,re::internal::AssetTypeRegistry const*,re::AssetProviderRegistry const*,re::NamedFileRegistry const*,re::BundleFilePathRegistry *)::$_0,re::Result<__CFData const*,__CFError *> ()(re::AssetLoadDescriptor const*,unsigned long long)>::operator()@<X0>(uint64_t a1@<X0>, const char **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if ((*a2)[8])
  {
    v5 = *(v4 + 2);
  }

  else
  {
    v5 = v4 + 9;
  }

  v6 = *(a1 + 8);
  v7 = strcmp(v5, "RealityFileAsset");
  if (!v7)
  {
    if ((v36 & 1) == 0)
    {
      v24 = v37[0];
      *a3 = 0;
      *(a3 + 8) = v24;
      return re::Result<re::RealityFileAssetLoadDescriptorParameters,__CFError *>::~Result(&v36);
    }

    re::RealityFileRegistry::getOrMountRealityFile(&v34, v37, *(v6 + 192), *(v6 + 216), *(v6 + 224));
    v14 = v35;
    if ((v34 & 1) == 0)
    {
      CFRetain(v35);
      *a3 = 0;
      *(a3 + 8) = v14;
LABEL_41:
      re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(&v34);
      return re::Result<re::RealityFileAssetLoadDescriptorParameters,__CFError *>::~Result(&v36);
    }

    if (v35)
    {
      v15 = v35 + 8;
    }

    if (v38)
    {
      v16 = *&v39[7];
    }

    else
    {
      v16 = v39;
    }

    if (!strcmp(v16, "assetMap.json") || !strcmp(v16, "header.json") || !strcmp(v16, "dedupe.json"))
    {
      re::RealityFile::newDataByLoading(v14, v16, v30);
      v20 = v30[0];
      v21 = v31;
      if (v30[0] != 1)
      {
        CFRetain(v31);
        v25 = v30[0];
        *a3 = 0;
        *(a3 + 8) = v21;
        if (v25)
        {
          goto LABEL_39;
        }

        v23 = v31;
LABEL_31:

LABEL_39:
        if (v14)
        {
        }

        goto LABEL_41;
      }
    }

    else
    {
      if (v30[0] != 1)
      {
        if (v32)
        {
          v26 = *&v33[7];
        }

        else
        {
          v26 = v33;
        }

        *a3 = 0;
        *(a3 + 8) = Error;
        if (v30[0] & 1) == 0 && v31 && (v32)
        {
          (*(*v31 + 40))();
        }

        goto LABEL_39;
      }

      re::RealityFile::newDataByLoading(v14, v31, v28);
      v20 = v28[0];
      v21 = v29;
      if (v28[0] != 1)
      {
        CFRetain(v29);
        v22 = v28[0];
        *a3 = 0;
        *(a3 + 8) = v21;
        if (v22)
        {
          goto LABEL_39;
        }

        v23 = v29;
        goto LABEL_31;
      }
    }

    *a3 = v20;
    *(a3 + 8) = v21;
    goto LABEL_39;
  }

  if (v37[0])
  {
    v11 = v37[1];
  }

  else
  {
    v11 = (v37 + 1);
  }

  *a3 = 0;
  *(a3 + 8) = v12;
  result = v36;
  if (v36)
  {
    if (v37[0])
    {
      return (*(*v36 + 40))();
    }
  }

  return result;
}

void *re::internal::Callable<re::RealityFileAssetProvider::RealityFileAssetProvider(re::RealityFileRegistry *,re::internal::AssetTypeRegistry const*,re::AssetProviderRegistry const*,re::NamedFileRegistry const*,re::BundleFilePathRegistry *)::$_0,re::Result<__CFData const*,__CFError *> ()(re::AssetLoadDescriptor const*,unsigned long long)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CBC5B0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::RealityFileAssetProvider::RealityFileAssetProvider(re::RealityFileRegistry *,re::internal::AssetTypeRegistry const*,re::AssetProviderRegistry const*,re::NamedFileRegistry const*,re::BundleFilePathRegistry *)::$_0,re::Result<__CFData const*,__CFError *> ()(re::AssetLoadDescriptor const*,unsigned long long)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CBC5B0;
  a2[1] = v2;
  return a2;
}

const char *re::internal::Callable<re::RealityFileAssetProvider::RealityFileAssetProvider(re::RealityFileRegistry *,re::internal::AssetTypeRegistry const*,re::AssetProviderRegistry const*,re::NamedFileRegistry const*,re::BundleFilePathRegistry *)::$_1,re::Result<re::AssetLoadDescriptor,__CFError *> ()(re::AssetLoadDescriptor const*,char const*,char const*)>::operator()@<X0>(const char **a1@<X1>, const char **a2@<X2>, const char **a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  if ((*a1)[8])
  {
    v8 = *(v5 + 2);
  }

  else
  {
    v8 = v5 + 9;
  }

  if (!strcmp(v8, "RealityFileAsset"))
  {
    if (v56[0])
    {
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v17 = re::DynamicString::setCapacity(&v46, 0);
      *(&v50 + 1) = 0;
      v51 = 0uLL;
      v18 = re::DynamicString::setCapacity(&v50, 0);
      *(&v52 + 1) = 0;
      v53 = 0uLL;
      re::DynamicString::setCapacity(&v52, 0);
      v54 = 0;
      v55 = 1;
      v45[0] = v57;
      re::DynamicString::operator=(&v46, &v58);
      re::DynamicString::operator=(&v50, v59);
      v36 = v6;
      v37[0] = strlen(v6);
      v19 = re::DynamicString::operator=(&v52, &v36);
      v54 = v59[64];
      re::RealityFileAssetLoadDescriptorFactory::make(v45, &v24, &v36);
      if (v24 && (v25 & 1) != 0)
      {
        (*(*v24 + 40))();
      }

      re::DynamicString::DynamicString(&v24, &v36);
      re::DynamicArray<BOOL>::DynamicArray(&v26 + 8, v38);
      re::DynamicArray<BOOL>::DynamicArray(&v29 + 8, v41);
      re::DynamicString::DynamicString((&v32 + 8), v44);
      *a4 = 1;
      *(a4 + 8) = v24;
      v24 = 0;
      v20 = v26;
      *(a4 + 16) = v25;
      *(a4 + 48) = v27;
      v21 = v30;
      *(a4 + 72) = v29;
      v25 = 0u;
      v26 = 0u;
      *(a4 + 32) = v20;
      v27 = 0u;
      ++v28;
      *(a4 + 64) = 1;
      *(a4 + 88) = v21;
      v29 = 0u;
      v30 = 0u;
      ++v31;
      *(a4 + 104) = 1;
      *(a4 + 112) = v32;
      v32 = 0u;
      v22 = v35;
      *(a4 + 136) = v34;
      *(a4 + 144) = v22;
      v34 = 0;
      v35 = 0;
      *(a4 + 128) = v33;
      if (v44[0])
      {
        if (v44[1])
        {
          (*(*v44[0] + 40))();
        }

        memset(v44, 0, sizeof(v44));
      }

      if (v41[0])
      {
        if (v43)
        {
          (*(*v41[0] + 40))();
        }

        v43 = 0;
        memset(v41, 0, sizeof(v41));
        ++v42;
      }

      if (v38[0])
      {
        if (v40)
        {
          (*(*v38[0] + 40))();
        }

        v40 = 0;
        memset(v38, 0, sizeof(v38));
        ++v39;
      }

      if (v36 && (v37[0] & 1) != 0)
      {
        (*(*v36 + 40))();
      }

      if (v52)
      {
        if (BYTE8(v52))
        {
          (*(*v52 + 40))();
        }

        v53 = 0u;
        v52 = 0u;
      }

      if (v50)
      {
        if (BYTE8(v50))
        {
          (*(*v50 + 40))();
        }

        v51 = 0u;
        v50 = 0u;
      }

      if (v46 && (v47 & 1) != 0)
      {
        (*(*v46 + 40))();
      }
    }

    else
    {
      v23 = v57;
      *a4 = 0;
      *(a4 + 8) = v23;
    }

    return re::Result<re::RealityFileAssetLoadDescriptorParameters,__CFError *>::~Result(v56);
  }

  else
  {
    re::DynamicString::format(&v36, "Cannot resolve with a parent AssetLoadDescriptor of scheme %s. Expected scheme %s.", v9, v8, "RealityFileAsset");
    if (v37[0])
    {
      v13 = v37[1];
    }

    else
    {
      v13 = (v37 + 1);
    }

    *a4 = 0;
    *(a4 + 8) = Error;
    result = v36;
    if (v36)
    {
      if (v37[0])
      {
        return (*(*v36 + 40))();
      }
    }
  }

  return result;
}

void *re::internal::Callable<re::RealityFileAssetProvider::RealityFileAssetProvider(re::RealityFileRegistry *,re::internal::AssetTypeRegistry const*,re::AssetProviderRegistry const*,re::NamedFileRegistry const*,re::BundleFilePathRegistry *)::$_1,re::Result<re::AssetLoadDescriptor,__CFError *> ()(re::AssetLoadDescriptor const*,char const*,char const*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CBC618;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::RealityFileAssetProvider::RealityFileAssetProvider(re::RealityFileRegistry *,re::internal::AssetTypeRegistry const*,re::AssetProviderRegistry const*,re::NamedFileRegistry const*,re::BundleFilePathRegistry *)::$_1,re::Result<re::AssetLoadDescriptor,__CFError *> ()(re::AssetLoadDescriptor const*,char const*,char const*)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CBC618;
  a2[1] = v2;
  return a2;
}

uint64_t re::FunctionBase<24ul,re::Result<__CFData const*,__CFError *> ()(re::AssetLoadDescriptor const*,unsigned long long)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,re::Result<__CFData const*,__CFError *> ()(re::AssetLoadDescriptor const*,unsigned long long)>::destroyCallable(a1);
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

uint64_t re::FunctionBase<24ul,__CFError * ()(re::AssetLoadDescriptor const*,unsigned long long,re::internal::AssetReference *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,__CFError * ()(re::AssetLoadDescriptor const*,unsigned long long,re::internal::AssetReference *)>::destroyCallable(a1);
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

uint64_t re::FunctionBase<24ul,re::Result<re::AssetLoadDescriptor,__CFError *> ()(re::AssetLoadDescriptor const*,char const*,char const*)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,re::Result<re::AssetLoadDescriptor,__CFError *> ()(re::AssetLoadDescriptor const*,char const*,char const*)>::destroyCallable(a1);
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

__n128 re::Ok<re::RealityFileAssetLoadDescriptorParameters &,re::RealityFileAssetLoadDescriptorParameters>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  re::DynamicString::DynamicString((a1 + 8), (a2 + 8));
  re::DynamicString::DynamicString((a1 + 40), (a2 + 40));
  re::DynamicString::DynamicString((a1 + 72), (a2 + 72));
  result = *(a2 + 104);
  *(a1 + 104) = result;
  return result;
}

uint64_t re::internal::Callable<re::RealityFileAssetProvider::loadParameters(re::AssetLoadDescriptor const*,re::RealityFileAssetLoadDescriptorParameters const*,unsigned long long,re::AssetSerializationScheme &)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::operator()@<X0>(uint64_t a1@<X0>, re *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(*a2 + 64))(a2);
  v7 = *(a1 + 16);
  **(a1 + 8) += v6;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 72);
  if (*(*(a1 + 64) + 28))
  {
    v11 = *(a1 + 64);
  }

  else
  {
    v11 = 0;
  }

  v23[0] = 1;
  v24 = v10;
  re::AssetUtilities::loadCompiledAssetFromStream(a2, v7, (a1 + 24), v8, v9, 0, v11, v23, v25);
  if (v25[0])
  {
    v13 = *(a1 + 88);
    v14 = v27[0];
    *v13 = v26;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v13 + 1, v14);
    *a3 = 1;
  }

  else
  {
    if (v27[0])
    {
      v15 = v27[1];
    }

    else
    {
      v15 = v27 + 1;
    }

    re::DynamicString::format(&v20, "Failed to load compiled data for asset path '%s', due to error: %s.", v12, *(a1 + 80), v15);
    if (v21)
    {
      v16 = *&v22[7];
    }

    else
    {
      v16 = v22;
    }

    re::WrappedError::make(&v19, @"RERealityFileErrorDomain", 7, v16);
    v17 = v19;
    v19 = 0;
    *a3 = 0;
    *(a3 + 8) = v17;

    if (v20 && (v21 & 1) != 0)
    {
      (*(*v20 + 40))();
    }
  }

  return re::Result<re::AssetUtilities::CompiledAssetLoadResult,re::DynamicString>::~Result(v25);
}

uint64_t re::internal::Callable<re::RealityFileAssetProvider::loadParameters(re::AssetLoadDescriptor const*,re::RealityFileAssetLoadDescriptorParameters const*,unsigned long long,re::AssetSerializationScheme &)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CBC680;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  return a2;
}

uint64_t re::internal::Callable<re::RealityFileAssetProvider::loadParameters(re::AssetLoadDescriptor const*,re::RealityFileAssetLoadDescriptorParameters const*,unsigned long long,re::AssetSerializationScheme &)::$_0,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CBC680;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  return a2;
}

uint64_t (***re::FunctionBase<24ul,re::Result<re::Unit,re::WrappedError> ()(re::SeekableInputStream &)>::destroyCallable(uint64_t a1))(void)
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

re::DynamicString *re::types::Ok<re::AssetLoadResult>::~Ok(re::DynamicString *this)
{
  v2 = *(this + 5);
  if (v2)
  {

    *(this + 5) = 0;
  }

  re::DynamicString::deinit(this);
  return this;
}

void *re::DynamicArray<re::DynamicArray<re::AssetLoadDescriptor>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::DynamicArray<re::AssetLoadDescriptor>>::setCapacity(v5, a2);
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
        v10 = v8 + 40 * v9;
        v11 = v7 + 4;
        do
        {
          *v11 = 0;
          *(v11 - 3) = 0;
          *(v11 - 2) = 0;
          *(v11 - 4) = 0;
          *(v11 - 2) = 0;
          v12 = *(v8 + 8);
          *(v11 - 4) = *v8;
          *(v11 - 3) = v12;
          *v8 = 0;
          *(v8 + 8) = 0;
          v13 = *(v11 - 2);
          *(v11 - 2) = *(v8 + 16);
          *(v8 + 16) = v13;
          v14 = *v11;
          *v11 = *(v8 + 32);
          *(v8 + 32) = v14;
          ++*(v8 + 24);
          ++*(v11 - 2);
          re::DynamicArray<re::AssetLoadDescriptor>::deinit(v8);
          v8 += 40;
          v11 += 5;
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

uint64_t re::DynamicArray<re::DynamicArray<re::AssetLoadDescriptor>>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::DynamicArray<re::AssetLoadDescriptor>>::setCapacity(a1, v5);
    ++*(a1 + 24);
    v6 = a2[2];
    v7 = *(a1 + 16);
    if (v6 >= v7)
    {
      re::DynamicArray<re::DynamicArray<re::AssetLoadDescriptor>>::setCapacity(a1, a2[2]);
      v13 = a2[4];
      v14 = *(a1 + 16);
      v15 = *(a1 + 32);
      if (v14)
      {
        v16 = 40 * v14;
        do
        {
          re::DynamicArray<re::AssetLoadDescriptor>::operator=(v15, v13);
          v13 += 5;
          v15 += 40;
          v16 -= 40;
        }

        while (v16);
        v15 = *(a1 + 32);
        v14 = *(a1 + 16);
        v13 = a2[4];
      }

      if (v14 != v6)
      {
        v17 = 5 * v14;
        v18 = &v13[v17];
        v19 = v15 + 8 * v17;
        v20 = 40 * v6 - 8 * v17;
        do
        {
          v21 = re::DynamicArray<re::AssetLoadDescriptor>::DynamicArray(v19, v18);
          v18 += 5;
          v19 = v21 + 40;
          v20 -= 40;
        }

        while (v20);
      }
    }

    else
    {
      v8 = *(a1 + 32);
      if (v6)
      {
        v9 = a2[4];
        v10 = 40 * v6;
        do
        {
          re::DynamicArray<re::AssetLoadDescriptor>::operator=(v8, v9);
          v9 += 5;
          v8 += 40;
          v10 -= 40;
        }

        while (v10);
        v8 = *(a1 + 32);
        v7 = *(a1 + 16);
      }

      if (v6 != v7)
      {
        v11 = v8 + 40 * v6;
        v12 = 40 * v7 - 40 * v6;
        do
        {
          re::DynamicArray<re::AssetLoadDescriptor>::deinit(v11);
          v11 += 40;
          v12 -= 40;
        }

        while (v12);
      }
    }

    *(a1 + 16) = v6;
  }

  return a1;
}

uint64_t re::HashTable<re::AssetType const*,re::SharedPtr<re::RealityFileAssetProvider::PerTypeLoadCallbacks>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addInternal<re::AssetType const* const&,re::RealityFileAssetProvider::PerTypeLoadCallbacks*&>(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v7 = re::HashTable<re::AssetType const*,re::SharedPtr<re::RealityFileAssetProvider::PerTypeLoadCallbacks>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  *(v7 + 8) = *a3;
  v8 = *a4;
  *(v7 + 16) = *a4;
  v9 = v7 + 16;
  if (v8)
  {
    v10 = (v8 + 8);
  }

  ++*(a1 + 40);
  return v9;
}

uint64_t re::HashTable<re::AssetType const*,re::SharedPtr<re::RealityFileAssetProvider::PerTypeLoadCallbacks>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = *(a1 + 16);
          *&v25[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v14 = *&v25[32];
          *(a1 + 24) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 16);
            do
            {
              if ((*(v17 - 2) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::AssetType const*,re::SharedPtr<re::RealityFileAssetProvider::PerTypeLoadCallbacks>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24), v17[1]);
                *(v18 + 8) = *(v17 - 1);
                *(v18 + 16) = *v17;
                *v17 = 0;
              }

              v17 += 4;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + 32 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 32 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 32 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v22 + 24) = a3;
  *(v23 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v19 + 32 * v5;
}

uint64_t re::RealityFileStreamSource::RealityFileStreamSource(uint64_t a1, uint64_t *a2, const re::DynamicString *a3, unint64_t a4, unint64_t a5)
{
  v21[2] = *MEMORY[0x1E69E9840];
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5CBC6E8;
  v10 = *a2;
  *(a1 + 24) = *a2;
  if (v10)
  {
    v11 = (v10 + 8);
  }

  re::DynamicString::DynamicString((a1 + 32), a3);
  *(a1 + 64) = a4;
  *(a1 + 72) = a5;
  if (*(a1 + 40))
  {
    v12 = *(a1 + 48);
  }

  else
  {
    v12 = (a1 + 41);
  }

  v13 = *(a1 + 24);
  v14 = strlen(v12);
  if (v14)
  {
    MurmurHash3_x64_128(v12, v14, 0, v21);
    v15 = ((v21[1] - 0x61C8864680B583E9 + (v21[0] << 6) + (v21[0] >> 2)) ^ v21[0]) - 0x61C8864680B583E9;
    a4 = *(a1 + 64);
    a5 = *(a1 + 72);
  }

  else
  {
    v15 = 0x9E3779B97F4A7C17;
  }

  v16 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
  v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a4 ^ (a4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a4 ^ (a4 >> 30))) >> 27));
  v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a5 ^ (a5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a5 ^ (a5 >> 30))) >> 27));
  v19 = (((v16 ^ (v16 >> 31)) >> 2) + ((v16 ^ (v16 >> 31)) << 6) + v15) ^ v16 ^ (v16 >> 31);
  *(a1 + 80) = ((v19 << 6) - 0x61C8864680B583E9 + (v19 >> 2) + (((v18 ^ (v18 >> 31)) - 0x61C8864680B583E9 + ((v17 ^ (v17 >> 31)) << 6) + ((v17 ^ (v17 >> 31)) >> 2)) ^ v17 ^ (v17 >> 31))) ^ v19;
  return a1;
}

uint64_t re::RealityFileStreamSource::createSlice@<X0>(re::RealityFileStreamSource *this@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a3 == -1)
  {
    v9 = *(this + 9);
    v10 = v9 - a2;
    if (v9 < a2)
    {
      v10 = 0;
    }

    if (v9 == -1)
    {
      v8 = -1;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v7 = *(this + 9);
    if (a3 + a2 <= v7)
    {
      v8 = a3;
    }

    else
    {
      v8 = v7 - a2;
    }
  }

  v11 = *(this + 8);
  v12 = re::DynamicString::DynamicString(&v19, (this + 32));
  v13 = re::globalAllocators(v12);
  v14 = (*(*v13[2] + 32))(v13[2], 88, 8);
  v15 = v14;
  v16 = *(this + 3);
  v21 = v16;
  if (v16)
  {
    v17 = (v16 + 8);
    re::RealityFileStreamSource::RealityFileStreamSource(v15, &v21, &v19, v11 + a2, v8);
  }

  else
  {
    re::RealityFileStreamSource::RealityFileStreamSource(v14, &v21, &v19, v11 + a2, v8);
  }

  *a4 = v15;
  result = v19;
  if (v19)
  {
    if (v20)
    {
      return (*(*v19 + 40))();
    }
  }

  return result;
}

uint64_t re::RealityFileStreamSource::invokeWithStream@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(a1 + 48);
  }

  else
  {
    v7 = (a1 + 41);
  }

  v8 = strrchr(v7, 46);
  if (v8)
  {
    v9 = strcmp(v8, ".compiledtexture") == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = *(a1 + 48);
  }

  else
  {
    v10 = (a1 + 41);
  }

  re::RealityFile::getInputStream(*(a1 + 24), v10, v9, v15);
  if ((v15[0] & 1) == 0)
  {
    v11 = v16[0];
    *a3 = 0;
    *(a3 + 8) = v11;
    return re::Result<re::RealityFileEntryStream,re::WrappedError>::~Result(v15);
  }

  if (!*(a1 + 64) && *(a1 + 72) == -1)
  {
    if (v17 < 3)
    {
      (*(**(a2 + 32) + 16))(*(a2 + 32), v16);
      return re::Result<re::RealityFileEntryStream,re::WrappedError>::~Result(v15);
    }
  }

  else if (v17 < 3)
  {
    (*(v16[0] + 4))(v16);
    re::SeekableInputStreamSlice::SeekableInputStreamSlice(v14, v16, *(a1 + 72));
    (*(**(a2 + 32) + 16))(*(a2 + 32), v14);
    re::SeekableInputStreamSlice::detach(v14);
    return re::Result<re::RealityFileEntryStream,re::WrappedError>::~Result(v15);
  }

  v13 = std::__throw_bad_variant_access[abi:nn200100]();
  return re::RealityFileStreamSource::id(v13);
}

uint64_t re::RealityArchiveFileSeekableInputStream::RealityArchiveFileSeekableInputStream(uint64_t a1, void *a2, uint64_t *a3, char *a4)
{
  *a1 = &unk_1F5CBC738;
  v7 = (a1 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v9 = re::DynamicString::setCapacity((a1 + 40), 0);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F5CBC828;
  *(a1 + 152) = 0;
  v11 = *a3;
  *(a1 + 160) = *a3;
  if (!v11)
  {
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    goto LABEL_7;
  }

  v12 = (v11 + 8);
  *(a1 + 168) = 0;
  v13 = *(a1 + 160);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  if (!v13)
  {
LABEL_7:
    re::DynamicString::format(&v21, "No archive provided for entry name %s.", v10, a4);
    goto LABEL_8;
  }

  Entry = re::RealityArchive::findEntry(v13, a4);
  if (Entry)
  {
    v16 = Entry;
    if (re::isDoubleCompressed(Entry))
    {
      re::DynamicString::format(&v21, "Cannot stream double compressed archive entry named %s.", v17, a4);
    }

    else
    {
      *(a1 + 72) = zip_entry_data_offset(v16);
      v20 = *(v16 + 40);
      *(a1 + 80) = vextq_s8(v20, v20, 8uLL);
      if (v20.i64[0])
      {
        reality_v1_entry_load_data_begin(v16);
      }

      re::DynamicString::format(&v21, "Zero length for archive entry named %s.", v19, a4);
    }
  }

  else
  {
    re::DynamicString::format(&v21, "Could not find archive entry named %s.", v15, a4);
  }

LABEL_8:
  re::DynamicString::operator=((a1 + 40), &v21);
  if (v21 && (v22 & 1) != 0)
  {
    (*(*v21 + 40))();
  }

  return a1;
}

uint64_t re::RealityArchiveFileSeekableInputStream::RealityArchiveFileSeekableInputStream(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CBC738;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a2 + 24);
  *(a2 + 32) = 0;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  v8 = (a1 + 40);
  re::DynamicString::setCapacity(v8, 0);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F5CBC828;
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 152) = 0;
  *(a1 + 160) = *(a2 + 160);
  v9 = *(a2 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = v9;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 128) = 1;
  *(a2 + 176) = 0;
  return a1;
}

void re::RealityArchiveFileSeekableInputStream::~RealityArchiveFileSeekableInputStream(re::RealityArchiveFileSeekableInputStream *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    reality_v1_entry_load_data_end(v2);
  }

  if (*(this + 22))
  {
    (*(**(this + 18) + 40))(*(this + 18));
  }

  v3 = *(this + 20);
  if (v3)
  {

    *(this + 20) = 0;
  }

  v4 = *(this + 19);
  if (v4)
  {

    *(this + 19) = 0;
  }

  re::DynamicString::deinit((this + 40));
  re::DynamicString::deinit((this + 8));
}

{
  re::RealityArchiveFileSeekableInputStream::~RealityArchiveFileSeekableInputStream(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::RealityArchiveFileSeekableInputStream::Next(re::RealityArchiveFileSeekableInputStream *this, const void **a2, int *a3)
{
  v5 = *(this + 21);
  if (!v5)
  {
    goto LABEL_6;
  }

  v7 = *(this + 14);
  v8 = *(this + 12);
  if (v8 <= v7)
  {
    *(this + 15) = v8;
    v9 = reality_v1_entry_load_data_read(*(this + 22), 0x20000uLL, v5);
    *(this + 13) = v9;
    v10 = *(this + 21);
    if (v10 && *v10 != 1)
    {
      v12 = *(this + 12) + v9;
      *(this + 12) = v12;
      *(this + 14) = v12;
      *a2 = *(this + 22);
      *a3 = v9;
      return 1;
    }

LABEL_6:
    result = 0;
    *a2 = 0;
    *a3 = 0;
    return result;
  }

  *a2 = (*(this + 22) + v7 - *(this + 15));
  *a3 = v8 - v7;
  *(this + 14) = v8;
  return 1;
}

void *re::RealityArchiveFileSeekableInputStream::BackUp(void *this, unsigned int a2)
{
  if ((a2 & 0x80000000) == 0 && this[21])
  {
    v2 = this[14] - a2;
    if (v2 <= this[15])
    {
      v2 = this[15];
    }

    this[14] = v2;
  }

  return this;
}

uint64_t re::RealityArchiveFileSeekableInputStream::ByteCount(re::RealityArchiveFileSeekableInputStream *this)
{
  if (*(this + 21))
  {
    return *(this + 14);
  }

  else
  {
    return 0;
  }
}

uint64_t re::RealityArchiveFileSeekableInputStream::Skip(re::RealityArchiveFileSeekableInputStream *this, unsigned int a2)
{
  result = 0;
  if ((a2 & 0x80000000) != 0)
  {
    return result;
  }

  v5 = *(this + 21);
  if (!v5)
  {
    return result;
  }

  *(this + 23) += a2;
  v6 = *(this + 14);
  v7 = v6 + a2;
  if (*(this + 13) - v6 + *(this + 15) < a2)
  {
    if (*v5)
    {
LABEL_5:
      data_seek_to_chunk_for_offset = reality_v1_entry_load_data_seek_to_chunk_for_offset(v7, v5);
      if (data_seek_to_chunk_for_offset != -1)
      {
        *(this + 14) = data_seek_to_chunk_for_offset;
        *(this + 15) = data_seek_to_chunk_for_offset;
        *(this + 12) = data_seek_to_chunk_for_offset;
        *(this + 13) = 0;
        goto LABEL_9;
      }

      return 0;
    }

    if (!*(v5 + 32) && !zip_entry_offset_is_in_current_chunk(v7, *(v5 + 24)))
    {
      v5 = *(this + 21);
      goto LABEL_5;
    }

LABEL_9:
    while (1)
    {
      v9 = *(this + 15);
      v10 = *(this + 13) + v9;
      if (v10 >= v7)
      {
        break;
      }

      if ((re::RealityArchiveFileSeekableInputStream::Next(this, &v13, &v12) & 1) == 0)
      {
        return 1;
      }
    }

    v11 = *(this + 14) - (v10 - v7);
    if (v11 <= v9)
    {
      v7 = *(this + 15);
    }

    else
    {
      v7 = v11;
    }
  }

  *(this + 14) = v7;
  return 1;
}

uint64_t re::RealityArchiveFileSeekableInputStream::Seek(re::RealityArchiveFileSeekableInputStream *this, unint64_t a2)
{
  v3 = *(this + 21);
  if (!v3)
  {
    return 0;
  }

  if (*(this + 15) <= a2)
  {
    data_seek_to_chunk_for_offset = *(this + 12);
    goto LABEL_7;
  }

  data_seek_to_chunk_for_offset = reality_v1_entry_load_data_seek_to_chunk_for_offset(a2, v3);
  if (data_seek_to_chunk_for_offset == -1)
  {
    return 0;
  }

  *(this + 14) = data_seek_to_chunk_for_offset;
  *(this + 15) = data_seek_to_chunk_for_offset;
  *(this + 12) = data_seek_to_chunk_for_offset;
  *(this + 13) = 0;
LABEL_7:
  if (data_seek_to_chunk_for_offset >= a2)
  {
    *(this + 14) = a2;
  }

  else
  {
    re::RealityArchiveFileSeekableInputStream::Skip(this, a2 - *(this + 28));
  }

  return 1;
}

void *re::RealityArchiveFileSeekableInputStream::GetSource@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = this[19];
  *a2 = v2;
  if (v2)
  {
    return (v2 + 8);
  }

  return this;
}

uint64_t re::RealityArchiveFileSeekableInputStream::CreateDetached(re::RealityArchiveFileSeekableInputStream *this)
{
  if (!*(this + 21))
  {
    return 0;
  }

  v2 = re::globalAllocators(this);
  v3 = (*(*v2[2] + 32))(v2[2], 192, 8);
  return re::RealityArchiveFileSeekableInputStream::RealityArchiveFileSeekableInputStream(v3, this);
}

void re::RealityFileStreamSource::~RealityFileStreamSource(re::RealityFileStreamSource *this)
{
  *this = &unk_1F5CBC6E8;
  re::DynamicString::deinit((this + 32));
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CBC6E8;
  re::DynamicString::deinit((this + 32));
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Result<re::RealityFileEntryStream,re::WrappedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 224);
    if (v2 != -1)
    {
      off_1F5CBC800[v2](&v4, (a1 + 8));
    }

    *(a1 + 224) = -1;
  }

  else
  {
  }

  return a1;
}

void re::make::shared::object<re::RealityFileStreamSource,re::SharedPtr<re::RealityFile> &,re::DynamicString>(re *a1, uint64_t *a2, const re::DynamicString *a3)
{
  v6 = re::globalAllocators(a1);
  v7 = (*(*v6[2] + 32))(v6[2], 88, 8);
  v8 = v7;
  v9 = *a2;
  v11 = v9;
  if (v9)
  {
    v10 = (v9 + 8);
    re::RealityFileStreamSource::RealityFileStreamSource(v8, &v11, a3, 0, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    re::RealityFileStreamSource::RealityFileStreamSource(v7, &v11, a3, 0, 0xFFFFFFFFFFFFFFFFLL);
  }

  *a1 = v8;
}

uint64_t re::AssetLoader::registerAsset(re::AssetLoader *this, void *a2, const re::ExistingAssetInformation *a3)
{
  (*(*this + 120))(v9);
  if (v10)
  {
    v3 = 0;
    v4 = v11;
    v5 = 24 * v10;
    while (1)
    {
      v6 = *(v4 + 1);
      if (v6)
      {
        v7 = atomic_load((v6 + 896));
        if (v7 != 2)
        {
          if (v7 == 3)
          {
            v3 = 2;
            goto LABEL_11;
          }

          re::AssetHandle::loadAsync(v4);
          v3 = 1;
        }
      }

      v4 = (v4 + 24);
      v5 -= 24;
      if (!v5)
      {
        goto LABEL_11;
      }
    }
  }

  v3 = 0;
LABEL_11:
  re::DynamicArray<re::AssetHandle>::deinit(v9);
  return v3;
}

uint64_t re::AssetLoader::findDependencies@<X0>(re::AssetLoader *this@<X0>, const re::IntrospectionBase **a2@<X1>, uint64_t a3@<X8>)
{
  v8[4] = *MEMORY[0x1E69E9840];
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
  v5 = (*(*this + 128))(this);
  v7[0] = &unk_1F5CBC880;
  v7[1] = a3;
  v7[3] = v7;
  v8[0] = &unk_1F5CB9490;
  v8[1] = v7;
  v8[3] = v8;
  re::IntrospectionWalker::walk(v5, a2, v8);
  std::__function::__value_func<void ()(re::IntrospectionBase const&,void const*)>::~__value_func[abi:nn200100](v8);
  return std::__function::__value_func<void ()(re::AssetHandle *)>::~__value_func[abi:nn200100](v7);
}

uint64_t re::AssetLoader::internalFindAssetHandleFields@<X0>(re::AssetLoader *this@<X0>, const re::IntrospectionBase **a2@<X1>, uint64_t a3@<X8>)
{
  v8[4] = *MEMORY[0x1E69E9840];
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
  v5 = (*(*this + 128))(this);
  v7[0] = &unk_1F5CBC910;
  v7[1] = a3;
  v7[3] = v7;
  v8[0] = &unk_1F5CB9490;
  v8[1] = v7;
  v8[3] = v8;
  re::IntrospectionWalker::walk(v5, a2, v8);
  std::__function::__value_func<void ()(re::IntrospectionBase const&,void const*)>::~__value_func[abi:nn200100](v8);
  return std::__function::__value_func<void ()(re::AssetHandle *)>::~__value_func[abi:nn200100](v7);
}

uint64_t re::AssetLoader::createRuntimeDataWithMemoryAttribution(re *a1)
{
  v1 = *re::assetsLogObjects(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_1E1C61000, v1, OS_LOG_TYPE_ERROR, "createRuntimeDataWithMemoryAttribution must be implemented if a loader declares supportsMemoryAttribution().", v3, 2u);
  }

  return 0;
}

void re::AssetLoader::createRuntimeData(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if ((*(*a1 + 24))(a1, a2, a3, a4))
  {
    v6 = 0;
    v7 = 1;
  }

  else
  {
    re::WrappedError::make(&v8, @"REAssetLoadingErrorDomain", 6, "Failed to create runtime data for asset.");
    v6 = v8;
    v8 = 0;

    v7 = 0;
  }

  *a5 = v7;
  *(a5 + 8) = v6;
}

uint64_t re::AssetLoader::assetIntrospectionByteSize(re::AssetLoader *this, re::AssetUtilities *a2)
{
  v3 = (*(*this + 128))(this);

  return re::AssetUtilities::computeIntrospectedDataSizeV2(a2, v3, v4);
}

uint64_t re::AssetLoader::cloneAsset(re::AssetLoader *this, const re::IntrospectionBase **a2, re::AssetSerializationScheme *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  re::AssetLoader::makeSharedResourcePayload(&v16, this, a2, a3);
  v4 = (*(*this + 136))(this);
  v5 = v16;
  if (v16)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = (*(*this + 128))(this);
    if (v7)
    {
      v8 = v7;
      if (*(v7 + 4) == 8)
      {
        v9 = *re::assetsLogObjects(v7);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v13 = *(v8 + 6);
          *buf = 136315138;
          v18 = v13;
          _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Failed to clone asset of type %s.", buf, 0xCu);
        }
      }
    }

    v10 = 0;
  }

  else
  {
    v10 = v4;
    buf[0] = 0;
    v11 = v16;
    v15 = v11;
    (*(*this + 224))(this, &v15, v10, re::PassthroughAssetSerialization::instance(void)::instance, buf, 0);

    v14 = v11;
    (*(*this + 240))(this, &v14, v10, "unknown clone asset");
  }

  return v10;
}

void re::AssetLoader::makeSharedResourcePayload(RESerializedPayload **__return_ptr a1@<X8>, re::AssetLoader *this@<X0>, const re::IntrospectionBase **a3@<X1>, re::AssetSerializationScheme *a4@<X2>)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = (*(*this + 128))(this);
  v16 = a4;
  v17 = 0u;
  v18 = 0u;
  v14[0] = this;
  v14[1] = a3;
  v9 = re::globalAllocators(v8)[2];
  *&buf = &unk_1F5CBC990;
  *(&buf + 1) = v14;
  v20 = v9;
  p_buf = &buf;
  re::SerializedPayload::make(v8, a3, &v16, &buf, &v15);
  v10 = v15;
  v15 = 0;
  v11 = p_buf;
  if (p_buf)
  {
    v11 = (**p_buf)(p_buf);
    if (p_buf != &buf)
    {
      v11 = (*(*v20 + 40))(v20);
    }
  }

  if (!v10)
  {
    if (*(v8 + 16) == 8)
    {
      v12 = *(v8 + 48);
    }

    else
    {
      v12 = "<unknown>";
    }

    v13 = *re::assetsLogObjects(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v12;
      _os_log_fault_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_FAULT, "Asset type '%s' has not adopted resource sharing", &buf, 0xCu);
    }
  }

  *a1 = v10;
}

uint64_t re::AssetLoader::cloneAsset(re::AssetLoader *this, void *a2)
{
  re::DefaultAssetSerialize::DefaultAssetSerialize(&v6, 0);
  v4 = (*(*this + 160))(this, a2, &v6);
  v6 = &unk_1F5CB98A0;
  if (v7 == 1)
  {
    if (v10)
    {
      if (BYTE8(v10))
      {
        (*(*v10 + 40))(v10);
      }

      v11 = 0u;
      v10 = 0u;
    }

    if (v8 && (v9 & 1) != 0)
    {
      (*(*v8 + 40))(v8);
    }
  }

  return v4;
}

void *re::AssetLoader::allocateAsset(re::AssetLoader *this)
{
  v1 = (*(*this + 128))(this);
  v2 = *(v1 + 20);
  v3 = re::globalAllocators(v1);
  v4 = (*(*v3[2] + 32))(v3[2], *(v1 + 20), 1);
  bzero(v4, v2);
  (*(v1 + 72))(v1, 0, v4);
  return v4;
}

uint64_t re::AssetLoader::createRuntimeDataWithPayload(uint64_t a1, const re::SharedResourcePayload *a2, id *this, uint64_t a4)
{
  re::SerializedPayload::dynamicCast(&v12, this);
  if (v12)
  {
    re::SerializedPayload::blobData(&v9, &v12);
    re::DataSeekableInputStream::DataSeekableInputStream(v10, &v9, 1, 0);

    v7 = (*(*a1 + 24))(a1, a2, v10, a4);
    v10[0] = &unk_1F5D0A4F8;

    v10[0] = &unk_1F5D0A468;
    re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v11);
  }

  else
  {
    v7 = (*(*a1 + 24))(a1, a2, 0, a4);
  }

  return v7;
}

re *re::AssetLoader::initializeAssetWithSerializedDataFromPayloadWithoutRuntimeData(uint64_t a1, id *a2, re::DynamicString ***a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = (*(*a1 + 128))(a1);
  if (*(v7 + 16) != 8)
  {
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) ", "info->type == IntrospectionType::kStructure", "initializeAssetWithSerializedDataFromPayloadWithoutRuntimeData", 246);
    _os_crash("assertion failure: (info->type == IntrospectionType::kStructure) ");
    __break(1u);
  }

  v9 = v7;
  re::SerializedPayload::dynamicCast(&v22, a2);
  if (v22)
  {
    *v25 = a4;
    *&v25[8] = 0u;
    v26 = 0u;
    v11 = re::globalAllocators(v10);
    v12 = re::SerializedPayload::deserializeIntoStruct(&v22, v9, a3, v25, v11[2]);
    v13 = v12;
    if ((v12 & 1) == 0)
    {
      v14 = *re::assetsLogObjects(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        re::SerializedPayload::typeName(&v19, &v22);
        if (v20)
        {
          v15 = *&v21[7];
        }

        else
        {
          v15 = v21;
        }

        *buf = 136315138;
        v24 = v15;
        _os_log_fault_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_FAULT, "Failed to deserialize payload for asset type '%s'", buf, 0xCu);
        if (v19 && (v20 & 1) != 0)
        {
          (*(*v19 + 40))();
        }
      }
    }
  }

  else
  {
    v16 = *re::assetsLogObjects(v10);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v18 = *(v9 + 48);
      *v25 = 136315138;
      *&v25[4] = v18;
      _os_log_fault_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_FAULT, "Unexpected payload object ignored by asset type '%s' (expected a serialized payload)", v25, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

uint64_t re::AssetLoader::initializeAssetWithSerializedDataFromPayload(uint64_t a1, id *this, const re::SharedResourcePayload *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  re::SerializedPayload::dynamicCast(&v24, this);
  if (!v24)
  {
    v19 = *re::assetsLogObjects(v12);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEBUG, "No serialized payload found", buf, 2u);
    }

    goto LABEL_11;
  }

  v23 = *this;
  v13 = (*(*a1 + 328))(a1, &v23, a3, a4);

  if (v13)
  {
    re::SerializedPayload::serializedData(buf, &v24);
    v14 = [*buf length];
    if ((*a5 & 1) == 0)
    {
      *a5 = 1;
    }

    *(a5 + 8) = v14;

    v21 = *this;
    v15 = re::AssetLoader::createRuntimeDataWithPayload(a1, a3, &v21, a6);

    if ((v15 & 1) == 0)
    {
      v17 = *re::assetsLogObjects(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEBUG, "createRuntimeData returned false for asset created from a payload", buf, 2u);
      }

      goto LABEL_8;
    }

LABEL_11:
    v18 = 1;
    goto LABEL_12;
  }

LABEL_8:
  v18 = 0;
LABEL_12:

  return v18;
}

uint64_t re::AssetLoader::postInitializeAssetFromPayloadWithLogging(uint64_t a1, id *a2, uint64_t a3, const char *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  rep = std::chrono::system_clock::now().__d_.__rep_;
  v15 = *a2;
  v9 = (*(*a1 + 232))(a1, &v15, a3);

  v10.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  v11 = rep - v10.__d_.__rep_;
  if (rep - v10.__d_.__rep_ >= 2000)
  {
    v12 = *re::assetsLogObjects(v10.__d_.__rep_);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = "unknown asset";
      if (a4)
      {
        v13 = a4;
      }

      *buf = 136315394;
      v17 = v13;
      v18 = 2048;
      v19 = v11 / 1000;
      _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Asset '%s' was in postInitializeAssetFromPayload for '%lld' ms.", buf, 0x16u);
    }
  }

  return v9;
}

void re::AssetLoader::resourceDidUpdate(uint64_t a1, re::DynamicString ***a2, id *a3, uint64_t a4)
{
  v7 = *a3;
  re::AssetLoader::initializeAssetWithSerializedDataFromPayloadWithoutRuntimeData(a1, &v7, a2, a4);
}

uint64_t re::AssetLoader::serializableAsset@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F5CBCA50;
  v3[3] = v3;
  a2[4] = a2 + 1;
  *a2 = a1;
  a2[1] = &unk_1F5CBCA50;
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v3);
}

void re::AssetLoader::writeAssetToRealityFile(uint64_t a1@<X0>, re::AssetHandle *a2@<X1>, const re::DynamicString *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v19[5] = *MEMORY[0x1E69E9840];
  re::AssetLoader::writeCompiledAssetToRealityFile(&v18, a2, a1, a3, a4, a5, a6, a7, a8, a10);
  if (v18)
  {
    v14[0] = 0;
    v14[1] = 0;
    v15 = 1;
    v16 = 0;
    v17 = 0;
    re::DynamicOverflowArray<re::DynamicString,2ul>::add(v14, a3);
    re::DynamicOverflowArray<re::DynamicString,2ul>::DynamicOverflowArray(v13, v14);
    *a9 = 1;
    re::DynamicOverflowArray<re::DynamicString,2ul>::DynamicOverflowArray(a9 + 8, v13);
    re::DynamicOverflowArray<re::DynamicString,2ul>::deinit(v13);
    re::DynamicOverflowArray<re::DynamicString,2ul>::deinit(v14);
  }

  else
  {
    v12 = v19[0];
    *a9 = 0;
    *(a9 + 8) = v12;
  }

  if (v18 == 1)
  {
    std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v19);
  }

  else
  {
  }
}

uint64_t *re::AssetLoader::writeCompiledAssetToRealityFile@<X0>(uint64_t *__return_ptr a1@<X8>, re::AssetHandle *this@<X1>, uint64_t a3@<X0>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>, char a10)
{
  v77 = *MEMORY[0x1E69E9840];
  re::AssetHandle::serializableAsset(&v62, this);
  v19 = v62;
  (*(*a9 + 32))(&v57, a9, this, *(a5 + 24), *(a5 + 41));
  if ((v57 & 1) == 0)
  {
    v24 = v58;
    *a1 = 0;
    a1[1] = v24;
    goto LABEL_55;
  }

  if (v58)
  {
    v20 = v59;
  }

  else
  {
    v20 = v19;
  }

  (*(*a3 + 304))(a3, v20, a7, *(*(this + 1) + 264));
  bytes = 0;
  v52[1] = 0;
  length = 0;
  v51[2] = 0;
  v52[0] = 0;
  v54 = 0;
  v51[0] = &unk_1F5D0A7B0;
  v51[1] = v52;
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

  re::AssetUtilities::saveCompiledAssetToStreamChunked(v51, v20, v21, v23, a6, &v45);
  if ((v45 & 1) == 0)
  {
    if (v47)
    {
      v33 = v49;
    }

    else
    {
      v33 = v48;
    }

    re::WrappedError::make(v73, @"RERealityFileWriterErrorDomain", 5, v33);
    v34 = v73[0];
    v73[0] = 0;
    *a1 = 0;
    a1[1] = v34;
    v35 = 0;
    goto LABEL_31;
  }

  v25 = a10;
  if (!a10)
  {
    v25 = (*(*a3 + 264))(a3, v20, a5) ^ 1;
  }

  v26 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], bytes, length, *MEMORY[0x1E695E498]);
  if (!v49)
  {
    v56 = 0;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    memset(v73, 0, sizeof(v73));
    v39 = MEMORY[0x1E69E9C10];
    v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v65 = 136315906;
    v66 = "operator[]";
    v67 = 1024;
    if (v40)
    {
      v41 = 3;
    }

    else
    {
      v41 = 2;
    }

    v68 = 789;
    v69 = 2048;
    v70 = 0;
    v71 = 2048;
    v72 = 0;
    _os_log_send_and_compose_impl(v41, &v56, v73, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v65, 38, v42, v43);
    _os_crash_msg();
    __break(1u);
  }

  v27 = v26;
  if (*(a5 + 24) < 15 || v25 == 1)
  {
    v29 = 0;
  }

  else
  {
    v29 = v49;
  }

  if (*(a4 + 8))
  {
    v30 = *(a4 + 16);
  }

  else
  {
    v30 = (a4 + 9);
  }

  re::RealityFileWriter::saveEntryToArchive(v26, v30, a8, v25, v29, v50, &v43);
  CFRelease(v27);
  if ((v43 & 1) == 0)
  {
    v36 = v44;
    *a1 = 0;
    a1[1] = v36;
    if (v43)
    {
      goto LABEL_45;
    }

    v35 = v44;
LABEL_31:

    goto LABEL_45;
  }

  if (v58 != 1)
  {
    v31 = v62;
    v32 = v64;
    v62 = 0;
    v73[0] = v31;
    if (v64)
    {
      if (v64 != &v63)
      {
        v64 = 0;
        goto LABEL_37;
      }

      goto LABEL_40;
    }

LABEL_38:
    *a1 = 1;
    *&v74 = 0;
    v73[0] = 0;
    a1[1] = v31;
    goto LABEL_39;
  }

  v31 = v59;
  v32 = v61;
  v59 = 0;
  v73[0] = v31;
  if (!v61)
  {
    goto LABEL_38;
  }

  if (v61 != &v60)
  {
    v61 = 0;
LABEL_37:
    *a1 = 1;
    *&v74 = v32;
    v73[0] = 0;
    a1[1] = v31;
    goto LABEL_41;
  }

LABEL_40:
  *&v74 = &v73[1];
  (*(*v32 + 24))(v32, &v73[1]);
  v37 = v73[0];
  v32 = v74;
  *a1 = 1;
  v73[0] = 0;
  a1[1] = v37;
  if (v32)
  {
LABEL_41:
    if (v32 == &v73[1])
    {
      a1[5] = (a1 + 2);
      (*(*v32 + 24))(v32);
    }

    else
    {
      a1[5] = v32;
      *&v74 = 0;
    }

    goto LABEL_44;
  }

LABEL_39:
  a1[5] = 0;
LABEL_44:
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v73);
LABEL_45:
  if (v45 == 1)
  {
    if (!v46 || !v50)
    {
      goto LABEL_52;
    }

LABEL_51:
    (*(*v46 + 40))();
    goto LABEL_52;
  }

  if (v46 && (v47 & 1) != 0)
  {
    goto LABEL_51;
  }

LABEL_52:
  if (v52[0] && bytes)
  {
    (*(*v52[0] + 40))();
  }

LABEL_55:
  re::Result<re::Optional<std::unique_ptr<void,std::function<void ()(void *)>>>,re::WrappedError>::~Result(&v57);
  return std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v62);
}

uint64_t std::__function::__func<re::AssetLoader::findDependencies(void *)::$_0,std::allocator<re::AssetLoader::findDependencies(void *)::$_0>,void ()(re::AssetHandle *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CBC880;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::AssetLoader::findDependencies(void *)::$_0,std::allocator<re::AssetLoader::findDependencies(void *)::$_0>,void ()(re::AssetHandle *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::AssetHandle *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<re::AssetLoader::internalFindAssetHandleFields(void *)::$_0,std::allocator<re::AssetLoader::internalFindAssetHandleFields(void *)::$_0>,void ()(re::AssetHandle *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CBC910;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::AssetLoader::internalFindAssetHandleFields(void *)::$_0,std::allocator<re::AssetLoader::internalFindAssetHandleFields(void *)::$_0>,void ()(re::AssetHandle *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::internal::CallableRef<re::AssetLoader::makeSharedResourcePayload(void *,re::AssetSerializationScheme *)::$_0,BOOL ()(re::StreamWriter &)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CBC9F8;
  *(a2 + 8) = *v2;
  return a2;
}

uint64_t re::internal::Callable<re::AssetLoader::makeSharedResourcePayload(void *,re::AssetSerializationScheme *)::$_0,BOOL ()(re::StreamWriter &)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CBC9F8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::AssetLoader::makeSharedResourcePayload(void *,re::AssetSerializationScheme *)::$_0,BOOL ()(re::StreamWriter &)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CBC9F8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t std::__function::__func<re::AssetLoader::serializableAsset(void *)::$_0,std::allocator<re::AssetLoader::serializableAsset(void *)::$_0>,void ()(void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::DynamicOverflowArray<re::DynamicString,2ul>::DynamicOverflowArray(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[1];
    *a1 = v3;
    re::DynamicOverflowArray<re::DynamicString,2ul>::setCapacity(a1, v5);
    *(a1 + 16) += 2;
    re::DynamicOverflowArray<re::DynamicString,2ul>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::DynamicOverflowArray<re::DynamicString,2ul>::DynamicOverflowArray(uint64_t a1, uint64_t a2)
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
      re::DynamicOverflowArray<re::DynamicString,2ul>::move(a1, a2);
    }

    else
    {
      re::DynamicOverflowArray<re::DynamicString,2ul>::deinit(a1);
      *a1 = *a2;
      *(a2 + 16) += 2;
      *(a1 + 16) += 2;
    }
  }

  else
  {
    re::DynamicOverflowArray<re::DynamicString,2ul>::clear(a1);
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(a1, a2);
  }

  return a1;
}

void re::DynamicOverflowArray<re::DynamicString,2ul>::move(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  if (v4 < *(a1 + 8))
  {
    if (*(a2 + 16))
    {
      v5 = (a2 + 24);
    }

    else
    {
      v5 = *(a2 + 32);
    }

    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = (a1 + 24);
      if (!v4)
      {
LABEL_7:
        if ((v6 & 1) == 0)
        {
LABEL_8:
          v8 = *(a1 + 32);
          goto LABEL_21;
        }

LABEL_20:
        v8 = a1 + 24;
LABEL_21:
        v16 = *(a1 + 8);
        if (v4 != v16)
        {
          v17 = (v8 + 32 * v4);
          v18 = 32 * v16 - 32 * v4;
          do
          {
            re::DynamicString::deinit(v17);
            v17 = (v17 + 32);
            v18 -= 32;
          }

          while (v18);
        }

        goto LABEL_36;
      }
    }

    else
    {
      v7 = *(a1 + 32);
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    v14 = 32 * v4;
    do
    {
      v15 = re::DynamicString::operator=(v7, v5);
      v5 = (v5 + 32);
      v7 = (v15 + 32);
      v14 -= 32;
    }

    while (v14);
    if ((*(a1 + 16) & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

  re::DynamicOverflowArray<re::DynamicString,2ul>::setCapacity(a1, v4);
  if (*(a2 + 16))
  {
    v9 = (a2 + 24);
  }

  else
  {
    v9 = *(a2 + 32);
  }

  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  if ((v11 & 1) == 0)
  {
    v12 = *(a1 + 32);
    if (!v10)
    {
      goto LABEL_14;
    }

LABEL_26:
    v19 = 32 * v10;
    do
    {
      v20 = re::DynamicString::operator=(v12, v9);
      v9 = (v9 + 32);
      v12 = (v20 + 32);
      v19 -= 32;
    }

    while (v19);
    if ((*(a1 + 16) & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

  v12 = (a1 + 24);
  if (v10)
  {
    goto LABEL_26;
  }

LABEL_14:
  if ((v11 & 1) == 0)
  {
LABEL_15:
    v13 = *(a1 + 32);
    goto LABEL_30;
  }

LABEL_29:
  v13 = a1 + 24;
LABEL_30:
  v21 = *(a1 + 8);
  if (*(a2 + 16))
  {
    v22 = a2 + 24;
  }

  else
  {
    v22 = *(a2 + 32);
  }

  if (v21 != v4)
  {
    v23 = (v22 + 32 * v4);
    v24 = (v22 + 32 * v21);
    v25 = v13 + 32 * v21;
    do
    {
      *v25 = 0uLL;
      *(v25 + 16) = 0uLL;
      *(v25 + 24) = v24[3];
      v26 = v24[1];
      *v25 = *v24;
      *v24 = 0;
      v27 = v24[2];
      v24[3] = 0;
      v29 = *(v25 + 8);
      v28 = *(v25 + 16);
      *(v25 + 8) = v26;
      *(v25 + 16) = v27;
      v24[1] = v29;
      v24[2] = v28;
      v24 += 4;
      v25 += 32;
    }

    while (v24 != v23);
  }

LABEL_36:
  *(a1 + 8) = v4;
  re::DynamicOverflowArray<re::DynamicString,2ul>::clear(a2);
  *(a2 + 16) += 2;
  *(a1 + 16) += 2;
}

uint64_t re::Result<re::Optional<std::unique_ptr<void,std::function<void ()(void *)>>>,re::WrappedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    if (*(a1 + 8) == 1)
    {
      std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100]((a1 + 16));
    }
  }

  else
  {
  }

  return a1;
}

re::AssetLoadRequest *re::AssetLoadRequest::makeAssetLoadRequest@<X0>(re::AssetLoadRequest *this@<X0>, re::AssetLoadRequest **a2@<X8>)
{
  result = re::AssetLoadRequest::AssetLoadRequest(v3);
  *a2 = result;
  return result;
}

void anonymous namespace::assetLoadRequestAllocator(_anonymous_namespace_ *this)
{
  {
    byte_1EE1C7928 = 0;
    unk_1EE1C7920 = "AssetLoadRequest allocator";
  }
}

re::AssetLoadRequest *re::AssetLoadRequest::AssetLoadRequest(re::AssetLoadRequest *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = 0;
  *this = &unk_1F5CBCAD0;
  v4 = re::AssetLoadRequest::Data::Data(v3);
  v5 = *(this + 3);
  *(this + 3) = v4;
  if (v5)
  {
  }

  return this;
}

id *re::AssetLoadRequest::Data::Data(id *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5CBCB00;
  inited = objc_initWeak(this + 3, 0);
  this[7] = 0;
  *(this + 64) = 0;
  *(this + 40) = 0;
  *(this + 82) = 0;
  this[11] = 0;
  this[13] = 0;
  this[14] = 0;
  this[15] = 0;
  re::DynamicString::setCapacity(this + 12, 0);
  this[16] = 0;
  this[17] = 0;
  *(this + 144) = 0;
  *(this + 64) = 0;
  re::AssetLoadRequest::Data::State::State((this + 33));
  return this;
}

re::AssetLoadRequest::Data::State *re::AssetLoadRequest::Data::State::State(re::AssetLoadRequest::Data::State *this)
{
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  v2 = re::DynamicArray<re::AssetLoadRequest::Data::LoadingAssetHandle>::setCapacity(this, 0);
  ++*(this + 6);
  *(this + 18) = 0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 76) = 0x7FFFFFFFLL;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 28) = 1;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 34) = 0;
  *(this + 18) = 0;
  *(this + 149) = 0;
  return this;
}

void re::AssetLoadRequest::init(re::AssetLoadRequest *this, re::AssetManager *a2)
{
  v3 = *(a2 + 321);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  objc_initWeak(&location, v4);
  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=((*(this + 3) + 24), &location);
  objc_destroyWeak(&location);
}

id *re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(id *location, id *a2)
{
  if (a2 != location)
  {
    objc_destroyWeak(location);
    *location = 0;
    objc_moveWeak(location, a2);
  }

  return location;
}

void re::AssetLoadRequest::setShouldLoadAndWaitForResourceSharingClients(re::AssetLoadRequest *this@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(this + 3);
  os_unfair_lock_lock(v8 + 64);
  v9 = *(this + 3);
  if (v9[416] == 1)
  {
    v10 = "Cannot call AssetLoadRequest::setShouldLoadAndWaitForResourceSharingClients after the AssetLoadRequest already has assets added.";
  }

  else
  {
    if (!a3 || (a2 & 1) != 0)
    {
      v9[80] = a2;
      v9[81] = a3;
      *a4 = 1;
      goto LABEL_8;
    }

    v10 = "Cannot call AssetLoadRequest::setShouldLoadAndWaitForResourceSharingClients(BOOL shouldLoad, BOOL shouldWait) with shouldLoad set to false and shouldWait set to true. An AssetLoadRequest can't wait for preloading if it will not initiate preloading.";
  }

  re::WrappedError::make(&v12, @"REAssetRefErrorDomain", 4, v10);
  v11 = v12;
  v12 = 0;
  *a4 = 0;
  *(a4 + 8) = v11;

LABEL_8:
  os_unfair_lock_unlock(v8 + 64);
}

void re::AssetLoadRequest::setShouldBlockECSSendsUntilCompleted(re::AssetLoadRequest *this@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *(this + 3);
  os_unfair_lock_lock(v6 + 64);
  v7 = *(this + 3);
  if (*(v7 + 416) == 1)
  {
    re::WrappedError::make(&v10, @"REAssetRefErrorDomain", 4, "Cannot call AssetLoadRequest::setShouldBlockECSSendsUntilCompleted after the AssetLoadRequest already has assets added.");
    v8 = v10;
    v10 = 0;
    *(a3 + 8) = v8;

    v9 = 0;
  }

  else
  {
    *(v7 + 82) = a2;
    v9 = 1;
  }

  *a3 = v9;
  os_unfair_lock_unlock(v6 + 64);
}

void re::AssetLoadRequest::Data::getResourceClientPeerIDs(re::AssetLoadRequest::Data *this, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a2 + 24));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = *(WeakRetained + 2);
    os_unfair_lock_lock((v5 + 2432));
    re::DynamicOverflowArray<unsigned long long,1ul>::DynamicOverflowArray(this, (v5 + 2440));
    os_unfair_lock_unlock((v5 + 2432));
  }

  else
  {
    v6 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Attempted to get resource client peer ids for asset load request, but asset manager was gone already", v7, 2u);
    }

    *this = 0;
    *(this + 1) = 0;
    *(this + 4) = 1;
    *(this + 3) = 0;
    *(this + 4) = 0;
  }
}

uint64_t re::DynamicOverflowArray<unsigned long long,1ul>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicOverflowArray<unsigned long long,1ul>::copy(a1, a2);
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
      re::DynamicOverflowArray<unsigned long long,1ul>::setCapacity(a1, v5);
      *(a1 + 16) += 2;
      re::DynamicOverflowArray<unsigned long long,1ul>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::AssetLoadRequest::Data::addAssetToLoadingSet_stateLocked(uint64_t a1, os_unfair_lock_s **a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a2[1] || re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::contains(a1 + 304, a2))
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 24));
  if (!WeakRetained)
  {
    v26 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v29 = re::AssetHandle::assetInfo(a2);
      if (v29[17])
      {
        v30 = v29[18];
      }

      else
      {
        v30 = v29 + 137;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v30;
      _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, "Attempted to add an asset '%s' to loading set, but asset manager was gone already", &buf, 0xCu);
    }

    return 1;
  }

  v7 = WeakRetained;
  v8 = WeakRetained[2];
  re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::add(a1 + 304, a2);
  v9 = atomic_load(&a2[1][224]._os_unfair_lock_opaque);
  canShareAssetOverNetwork = re::AssetManager::canShareAssetOverNetwork(v8, a2);
  v46 = 0;
  buf = 0uLL;
  v48 = 0;
  re::AssetHandle::operator=(&buf, a2);
  v47 = canShareAssetOverNetwork;
  if (*(a1 + 80) == 1)
  {
    v11 = canShareAssetOverNetwork ^ 1;
    if (!a3[1])
    {
      v11 = 1;
    }

    if ((v11 & 1) == 0)
    {
      if (*(v8 + 1920))
      {
        if ((*(v8 + 2219) & 1) == 0)
        {
          v12 = *(re::AssetHandle::assetInfo(a2) + 10);
          if ((v12 + 1) >= 2)
          {
            v13 = a2[1];
            os_unfair_lock_lock(v13 + 128);
            v14 = a3[1];
            if (v14)
            {
              v15 = *a3;
              v16 = *a3 + 8 * v14;
              v17 = a2[1];
              v18 = *&v17[164]._os_unfair_lock_opaque;
              do
              {
                v19 = v17 + 168;
                if ((v17[166]._os_unfair_lock_opaque & 1) == 0)
                {
                  v19 = *&v17[170]._os_unfair_lock_opaque;
                }

                if (!v18)
                {
LABEL_34:
                  os_unfair_lock_unlock(v13 + 128);
                  goto LABEL_35;
                }

                v20 = v19 + 2;
                v21 = 32 * v18;
                while (*&v20[-2]._os_unfair_lock_opaque != *v15)
                {
                  v20 += 8;
                  v21 -= 32;
                  if (!v21)
                  {
                    goto LABEL_34;
                  }
                }

                os_unfair_lock_opaque = v20->_os_unfair_lock_opaque;
                ++v15;
                if (os_unfair_lock_opaque)
                {
                  v23 = v15 == v16;
                }

                else
                {
                  v23 = 1;
                }
              }

              while (!v23);
              v24 = v13 + 128;
              v25 = os_unfair_lock_opaque;
              os_unfair_lock_unlock(v24);
              if (v25)
              {
                goto LABEL_37;
              }

LABEL_35:
              re::AssetManager::tryToPerformSyncActionPreloadOnLocalPeerOrQueueForLater(v8, v12);
            }

            else
            {
              os_unfair_lock_unlock(v13 + 128);
            }
          }
        }
      }
    }
  }

LABEL_37:
  if (*(a1 + 81) == 1)
  {
    *v44 = *a3;
  }

  else
  {
    memset(v44, 0, sizeof(v44));
  }

  CombinedLoadState = re::AssetManager::getCombinedLoadState(v8, &buf, v47, v9, v44);
  if (CombinedLoadState == 2)
  {
    re::DynamicArray<re::AssetLoadRequest::Data::LoadingAssetHandle>::add(a1 + 264, &buf);
    v33 = *(a1 + 352);
    if (v33)
    {
      re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::add(v33 + 24, a2);
    }

    if (*(a1 + 81) == 1)
    {
      *v44 = *a3;
    }

    else
    {
      memset(v44, 0, sizeof(v44));
    }

    re::AssetLoadRequest::Data::processFailedAsset_stateLocked(a1, a2[1], v44);
    v27 = 0;
    goto LABEL_69;
  }

  if (CombinedLoadState == 1)
  {
    v27 = re::AssetLoadRequest::Data::checkAssetDependencies_stateLocked(a1, &buf, a3);
LABEL_69:
    re::AssetHandle::~AssetHandle(&buf);

    return v27;
  }

  if (v9 <= 1)
  {
    if (!v9)
    {
      v40 = *re::assetsLogObjects(CombinedLoadState);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v42 = re::AssetHandle::assetInfo(a2);
        if (v42[17])
        {
          v43 = v42[18];
        }

        else
        {
          v43 = v42 + 137;
        }

        *v44 = 136315138;
        *&v44[4] = v43;
        _os_log_debug_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_DEBUG, "AssetLoadRequest async loading '%s'", v44, 0xCu);
      }

      re::AssetManager::loadAssetAsync(v8, a2[1], 0);
      goto LABEL_67;
    }

    if (v9 == 1)
    {
      v34 = *re::assetsLogObjects(CombinedLoadState);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        v35 = re::AssetHandle::assetInfo(a2);
        if (v35[17])
        {
          v36 = v35[18];
        }

        else
        {
          v36 = v35 + 137;
        }

        *v44 = 136315138;
        *&v44[4] = v36;
        v37 = "AssetLoadRequest already loading '%s'";
LABEL_63:
        _os_log_debug_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_DEBUG, v37, v44, 0xCu);
        goto LABEL_67;
      }
    }

    goto LABEL_67;
  }

  if (v9 == 2)
  {
    v34 = *re::assetsLogObjects(CombinedLoadState);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_67;
    }

    v38 = re::AssetHandle::assetInfo(a2);
    if (v38[17])
    {
      v39 = v38[18];
    }

    else
    {
      v39 = v38 + 137;
    }

    *v44 = 136315138;
    *&v44[4] = v39;
    v37 = "AssetLoadRequest already loaded '%s', but still waiting on peer";
    goto LABEL_63;
  }

  if (v9 != 3)
  {
LABEL_67:
    v27 = re::AssetLoadRequest::Data::checkAssetDependencies_stateLocked(a1, &buf, a3);
    re::DynamicArray<re::AssetLoadRequest::Data::LoadingAssetHandle>::add(a1 + 264, &buf);
    v41 = *(a1 + 352);
    if (v41)
    {
      re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::add(v41 + 24, a2);
    }

    goto LABEL_69;
  }

  re::internal::assertLog(4, v32, "assertion failure: '%s' (%s:line %i) The combined load state is not kFailed even though the local load state is kLoadFailed.", "!Unreachable code", "addAssetToLoadingSet_stateLocked", 280, *v44, *&v44[8]);
  result = _os_crash("assertion failure: (!Unreachable code) The combined load state is not kFailed even though the local load state is kLoadFailed.");
  __break(1u);
  return result;
}

uint64_t re::AssetLoadRequest::Data::checkAssetDependencies_stateLocked(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(a2 + 25))
  {
    return 1;
  }

  v6 = *(a2 + 8);
  v24 = 0;
  hasLoadingAssetPointer = re::internal::AssetEntry::hasLoadingAssetPointer(v6);
  v8 = 904;
  if (hasLoadingAssetPointer)
  {
    v8 = 912;
  }

  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v24, *(v6 + v8));
  if (!v24)
  {
    return 1;
  }

  *(a2 + 25) = 1;
  v10 = *re::assetsLogObjects(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    if (*(v6 + 168))
    {
      v22 = *(v6 + 176);
    }

    else
    {
      v22 = v6 + 169;
    }

    *buf = 136315138;
    *&buf[4] = v22;
    _os_log_debug_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEBUG, "AssetLoadRequest getting dependencies for '%s'", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 24));
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v13 = *(*(WeakRetained + 2) + 1808);
    *buf = *(v6 + 280);
    v14 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v13, buf);
    (*(**v14 + 128))(*v14);
    (*(**v14 + 120))(buf);
    if (v26)
    {
      v15 = v27;
      v16 = 24 * v26 - 24;
      do
      {
        v17 = re::AssetLoadRequest::Data::addAssetToLoadingSet_stateLocked(a1, v15, a3);
        if (!v17)
        {
          break;
        }

        v15 += 3;
        v18 = v16;
        v16 -= 24;
      }

      while (v18);
    }

    else
    {
      v17 = 1;
    }

    re::DynamicArray<re::AssetHandle>::deinit(buf);

    v20 = v24;
    if (v17)
    {
      if (v24)
      {
      }

      return 1;
    }
  }

  else
  {
    v19 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      if (*(v6 + 168))
      {
        v23 = *(v6 + 176);
      }

      else
      {
        v23 = v6 + 169;
      }

      *buf = 136315138;
      *&buf[4] = v23;
      _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "Attempted to add asset dependencies for '%s' to asset load request, but asset manager was gone already", buf, 0xCu);
    }

    v20 = v24;
  }

  if (v20)
  {
  }

  return 0;
}

re::AssetHandle *re::DynamicArray<re::AssetLoadRequest::Data::LoadingAssetHandle>::add(uint64_t a1, re::AssetHandle *a2)
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

        re::DynamicArray<re::AssetLoadRequest::Data::LoadingAssetHandle>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::AssetLoadRequest::Data::LoadingAssetHandle>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  result = re::AssetHandle::AssetHandle((*(a1 + 32) + 32 * v5), a2);
  *(result + 12) = *(a2 + 12);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void re::AssetLoadRequest::Data::processFailedAsset_stateLocked(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a2 + 512));
  v7 = *(a2 + 920);
  if (*(v7 + 208) == 1)
  {
    if (*(v7 + 224))
    {
      v8 = *(v7 + 232);
    }

    else
    {
      v8 = (v7 + 225);
    }
  }

  else
  {
    v8 = "Load failure on peer.";
  }

  v9 = *re::assetsLogObjects(v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 168))
    {
      v26 = *(a2 + 176);
    }

    else
    {
      v26 = a2 + 169;
    }

    *buf = 136315394;
    *&buf[4] = v26;
    v29 = 2080;
    *v30 = v8;
    _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "AssetLoadRequest failed because asset failed to load '%s' (%s)", buf, 0x16u);
  }

  *(a1 + 400) = 2;
  if (*(a2 + 168))
  {
    v11 = *(a2 + 176);
  }

  else
  {
    v11 = a2 + 169;
  }

  re::DynamicString::format(buf, "failed to load '%s' (%s)", v10, v11, v8);
  if (buf[8])
  {
    v12 = *&v30[2];
  }

  else
  {
    v12 = &buf[9];
  }

  re::WrappedError::make(&v27, @"REAssetLoadRequestErrorDomain", 0xC8, v12);
  v13 = (a1 + 408);
  if (v13 != &v27)
  {
    v14 = v27;
    v27 = 0;
    v15 = *v13;
    *v13 = v14;
  }

  v16 = *(a3 + 8);
  if (v16)
  {
    v17 = *a3;
    v18 = *a3 + 8 * v16;
    v19 = *(a2 + 656);
    while (1)
    {
      v20 = a2 + 672;
      if ((*(a2 + 664) & 1) == 0)
      {
        v20 = *(a2 + 680);
      }

      if (v19)
      {
        v21 = (v20 + 28);
        v22 = 32 * v19;
        while (*(v21 - 7) != *v17)
        {
          v21 += 8;
          v22 -= 32;
          if (!v22)
          {
            goto LABEL_26;
          }
        }

        if ((*(v21 - 1) & 1) != 0 && *v21 == 400)
        {
          break;
        }
      }

LABEL_26:
      if (++v17 == v18)
      {
        goto LABEL_27;
      }
    }

    re::DynamicString::append(buf, " Resource memory limit hit cannot load asset!", 0x2DuLL);
    if (buf[8])
    {
      v23 = *&v30[2];
    }

    else
    {
      v23 = &buf[9];
    }

    re::WrappedError::make(&v27, @"REResourceLimitErrorDomain", 0x12C, v23);
    if (v13 != &v27)
    {
      v24 = v27;
      v27 = 0;
      v25 = *v13;
      *v13 = v24;
    }
  }

LABEL_27:
  if (*buf && (buf[8] & 1) != 0)
  {
    (*(**buf + 40))();
  }

  os_unfair_lock_unlock((a2 + 512));
}

void re::AssetLoadRequest::Data::update(re::AssetLoadRequest::Data *this)
{
  v81 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 64);
  v4 = *(this + 100) - 1;
  if (v4 <= 1)
  {
    if (*(this + 418) != 1)
    {
      goto LABEL_84;
    }

    *(this + 418) = 0;
  }

  v5 = *(this + 84);
  if (v5)
  {
    v6 = 0;
    v7 = (*(this + 40) + 8);
    while (1)
    {
      v8 = *v7;
      v7 += 10;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(this + 84);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
LABEL_19:
    v12 = 1;
    if (v4 < 2)
    {
      goto LABEL_82;
    }

    re::AssetLoadRequest::Data::getResourceClientPeerIDs(v68, this);
    v63 = 0;
    v64 = 0;
    v65 = 1;
    v66 = 0;
    v67 = 0;
    if (*(this + 420) == 1)
    {
      v14 = *(this + 46);
      re::DynamicOverflowArray<unsigned long long,1ul>::setCapacity(&v63, v14);
      v15 = v65;
      v65 += 2;
      if (v15)
      {
        v16 = 1;
      }

      else
      {
        v16 = v66;
      }

      if (v16 < v14)
      {
        re::DynamicOverflowArray<unsigned long long,1ul>::setCapacity(&v63, v14);
      }

      if (*(this + 376))
      {
        v17 = (this + 384);
      }

      else
      {
        v17 = *(this + 49);
      }

      v19 = *(this + 46);
      if (v19)
      {
        v20 = 8 * v19;
        do
        {
          *v71 = *v17;
          re::DynamicOverflowArray<unsigned long long,1ul>::indexOf(v68, v71, buf);
          if (buf[0] == 1)
          {
            re::DynamicOverflowArray<unsigned long long,1ul>::add(&v63, v71);
          }

          ++v17;
          v20 -= 8;
        }

        while (v20);
      }
    }

    WeakRetained = objc_loadWeakRetained(this + 3);
    v22 = WeakRetained;
    if (WeakRetained)
    {
      if (*(this + 35) < 1)
      {
LABEL_60:
        v12 = 0;
      }

      else
      {
        v23 = WeakRetained[2];
        v24 = *(this + 35) & 0x7FFFFFFFLL;
        v25 = v24 + 1;
        v26 = 32 * v24 - 32;
        while (1)
        {
          v27 = v25 - 2;
          v28 = *(this + 35);
          if (v28 <= v25 - 2)
          {
            v70 = 0;
            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            *buf = 0u;
            v49 = MEMORY[0x1E69E9C10];
            v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v71 = 136315906;
            *&v71[4] = "operator[]";
            *&v71[12] = 1024;
            if (v50)
            {
              v51 = 3;
            }

            else
            {
              v51 = 2;
            }

            *&v71[14] = 789;
            v72 = 2048;
            v73 = v25 - 2;
            v74 = 2048;
            v75 = v28;
            _os_log_send_and_compose_impl(v51, &v70, buf, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v71, 38, v61, v62);
            _os_crash_msg();
            __break(1u);
LABEL_100:
            v70 = 0;
            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            *buf = 0u;
            v52 = MEMORY[0x1E69E9C10];
            v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v71 = 136315906;
            *&v71[4] = "operator[]";
            *&v71[12] = 1024;
            if (v53)
            {
              v54 = 3;
            }

            else
            {
              v54 = 2;
            }

            *&v71[14] = 789;
            v72 = 2048;
            v73 = v25 - 2;
            v74 = 2048;
            v75 = v1;
            _os_log_send_and_compose_impl(v54, &v70, buf, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v71, 38, v61, v62);
            _os_crash_msg();
            __break(1u);
LABEL_104:
            v70 = 0;
            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            *buf = 0u;
            v55 = MEMORY[0x1E69E9C10];
            v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v71 = 136315906;
            *&v71[4] = "operator[]";
            *&v71[12] = 1024;
            if (v56)
            {
              v57 = 3;
            }

            else
            {
              v57 = 2;
            }

            *&v71[14] = 789;
            v72 = 2048;
            v73 = v25 - 2;
            v74 = 2048;
            v75 = v1;
            _os_log_send_and_compose_impl(v57, &v70, buf, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v71, 38, v61, v62);
            _os_crash_msg();
            __break(1u);
LABEL_108:
            v70 = 0;
            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            *buf = 0u;
            v58 = MEMORY[0x1E69E9C10];
            v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v71 = 136315906;
            *&v71[4] = "operator[]";
            *&v71[12] = 1024;
            if (v59)
            {
              v60 = 3;
            }

            else
            {
              v60 = 2;
            }

            *&v71[14] = 789;
            v72 = 2048;
            v73 = v25 - 2;
            v74 = 2048;
            v75 = v1;
            _os_log_send_and_compose_impl(v60, &v70, buf, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v71, 38, v61, v62);
            _os_crash_msg();
            __break(1u);
          }

          re::AssetHandle::AssetHandle(&v61, (*(this + 37) + v26));
          v29 = atomic_load((v62 + 896));
          v1 = *(this + 35);
          if (v1 <= v27)
          {
            goto LABEL_100;
          }

          v30 = *(this + 37);
          v31 = (v65 & 1) != 0 ? &v66 : v67;
          *buf = v31;
          *&buf[8] = v64;
          if ((re::AssetLoadRequest::Data::checkAssetDependencies_stateLocked(this, v30 + v26, buf) & 1) == 0)
          {
            break;
          }

          v1 = *(this + 35);
          if (v1 <= v27)
          {
            goto LABEL_104;
          }

          v1 = *(*(this + 37) + v26 + 24);
          if (*(this + 81) == 1)
          {
            re::DynamicOverflowArray<unsigned long long,1ul>::DynamicOverflowArray(buf, &v63);
            v32 = v78;
            v33 = *&buf[8];
            if (v77)
            {
              v32 = &v77 + 8;
            }
          }

          else
          {
            v33 = 0;
            memset(buf, 0, sizeof(buf));
            LODWORD(v77) = 1;
            v32 = &v77 + 8;
            *(&v77 + 1) = 0;
            *&v78 = 0;
          }

          *v71 = v32;
          *&v71[8] = v33;
          CombinedLoadState = re::AssetManager::getCombinedLoadState(v23, &v61, v1, v29, v71);
          if (*buf && (v77 & 1) == 0)
          {
            (*(**buf + 40))();
          }

          if (CombinedLoadState)
          {
            v1 = *(this + 35);
            if (v1 <= v27)
            {
              goto LABEL_108;
            }

            if (v1 - 1 > v27)
            {
              v35 = *(this + 37);
              v36 = v35 + 32 * v1;
              v37 = (v35 + v26);
              v38 = *(v36 - 24);
              v39 = *v37;
              *v37 = 0;
              *(v37 + 1) = v38;
              *v37 = *(v36 - 32);
              *(v36 - 32) = v39;
              v40 = *(v37 + 2);
              *(v37 + 2) = *(v36 - 16);
              *(v36 - 16) = v40;
              *(v37 + 12) = *(v36 - 8);
              v1 = *(this + 35);
            }

            re::AssetHandle::~AssetHandle((*(this + 37) + 32 * v1 - 32));
            --*(this + 35);
            ++*(this + 72);
            if (CombinedLoadState != 1)
            {
              if (*(this + 81))
              {
                re::DynamicOverflowArray<unsigned long long,1ul>::DynamicOverflowArray(buf, &v63);
                v42 = *&buf[8];
                if (v77)
                {
                  v43 = &v77 + 8;
                }

                else
                {
                  v43 = v78;
                }
              }

              else
              {
                v42 = 0;
                memset(buf, 0, sizeof(buf));
                LODWORD(v77) = 1;
                v43 = &v77 + 8;
                *(&v77 + 1) = 0;
                *&v78 = 0;
              }

              *v71 = v43;
              *&v71[8] = v42;
              re::AssetLoadRequest::Data::processFailedAsset_stateLocked(this, v62, v71);
              if (*buf)
              {
                v44 = v77;
                if ((v77 & 1) == 0)
                {
                  (*(**buf + 40))();
                  v44 = v77;
                }

                LODWORD(v77) = (v44 | 1) + 2;
              }

              break;
            }
          }

          re::AssetHandle::~AssetHandle(&v61);
          --v25;
          v26 -= 32;
          if (v25 <= 1)
          {
            goto LABEL_60;
          }
        }

        re::AssetHandle::~AssetHandle(&v61);
        v12 = 1;
      }
    }

    else
    {
      v41 = *re::assetsLogObjects(0);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_ERROR, "Attempted to update asset load request, but asset manager was gone already", buf, 2u);
      }

      v12 = 0;
    }

    if (v63 && (v65 & 1) == 0)
    {
      (*(*v63 + 40))();
    }

    if (v68[0] && (v69 & 1) == 0)
    {
      (*(*v68[0] + 40))();
    }

    if (v22)
    {
      goto LABEL_82;
    }

LABEL_84:
    os_unfair_lock_unlock(this + 64);
    return;
  }

  while (1)
  {
    v9 = *(*(this + 40) + 40 * v6 + 24);
    if (!atomic_load((v9 + 896)))
    {
      break;
    }

    v11 = *(this + 84);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(this + 40) + 40 * v6 + 8) & 0x80000000) != 0)
      {
        goto LABEL_18;
      }
    }

    LODWORD(v6) = v11;
LABEL_18:
    if (v6 == v5)
    {
      goto LABEL_19;
    }
  }

  v18 = *re::assetsLogObjects(v3);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    if (*(v9 + 168))
    {
      v48 = *(v9 + 176);
    }

    else
    {
      v48 = v9 + 169;
    }

    *buf = 136315138;
    *&buf[4] = v48;
    _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "AssetLoadRequest failed because asset got unloaded '%s'", buf, 0xCu);
  }

  v12 = 1;
LABEL_82:
  if (*(this + 35))
  {
    v45 = 0;
  }

  else
  {
    v45 = *(this + 416);
  }

  re::AssetLoadRequest::Data::checkForLongLoadAndLogDetails_stateLocked(this);
  os_unfair_lock_unlock(this + 64);
  if (v12)
  {
    v46 = this;
    v47 = 0;
  }

  else
  {
    if ((v45 & 1) == 0)
    {
      return;
    }

    v46 = this;
    v47 = 1;
  }

  re::AssetLoadRequest::Data::complete(v46, v47, 0);
}

void re::AssetLoadRequest::Data::checkForLongLoadAndLogDetails_stateLocked(double *this)
{
  v72[4] = *MEMORY[0x1E69E9840];
  if (*(this + 144) == 1)
  {
    v1 = this;
    v2.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    LOBYTE(v3) = *(v1 + 144);
    v4 = v1[17] + (v2.__d_.__rep_ - *(v1 + 16)) / 1000000000.0 * v3;
    {
      v6 = *(v1 + 35);
      v7 = *re::assetsLogObjects(v5);
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        v9 = *(v1 + 11);
        v11 = "and contains these assets:";
        *buf = 134218498;
        *&buf[4] = v9;
        if (!v6)
        {
          v11 = "";
        }

        *&buf[12] = 2048;
        *&buf[14] = LoggingThreshold;
        v70 = 2080;
        v71 = v11;
        _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "AssetLoadRequest with first assetId %llu exceeded loading threshold of %f seconds %s", buf, 0x20u);
      }

      v61 = 0;
      while (1)
      {
        v12 = v1;
        v13 = *(v1 + 35);
        if (!v13)
        {
          goto LABEL_78;
        }

        v14 = *(&unk_1E305C254 + v61);
        v15 = *(v12 + 37);
        v16 = (v15 + 32 * v13);
        v17 = (v14 - 1);
        do
        {
          v18 = *(v15 + 1);
          os_unfair_lock_lock((v18 + 512));
          v19 = atomic_load((v18 + 896));
          if (v19 != v14)
          {
            goto LABEL_77;
          }

          re::AssetHandle::AssetHandle(v62, v15);
          v20 = re::AssetHandle::assetInfo(v62);
          if (*(v20 + 136))
          {
            v21 = *(v20 + 144);
          }

          else
          {
            v21 = v20 + 137;
          }

          *buf = 0;
          *&buf[8] = 0;
          *&buf[16] = 1;
          v71 = 0;
          v72[0] = 0;
          if (!*(v18 + 648))
          {
            goto LABEL_65;
          }

          v22 = *(v18 + 656);
          *buf = *(v18 + 648);
          v20 = re::DynamicOverflowArray<re::internal::AssetEntry::State::ResourceSharingClientLoadState,1ul>::setCapacity(buf, v22);
          v23 = buf[16];
          *&buf[16] += 2;
          v24 = *(v18 + 656);
          if (v24 < *&buf[8])
          {
            v25 = *(v18 + 680);
            if (*(v18 + 664))
            {
              v25 = v18 + 672;
            }

            if (!v24)
            {
              *&buf[8] = 0;
LABEL_65:
              if (*(v12 + 80) == 1)
              {
                v58 = *re::assetsLogObjects(v20);
                v20 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
                if (v20)
                {
                  *v63 = 136315138;
                  v64 = v21;
                  _os_log_impl(&dword_1E1C61000, v58, OS_LOG_TYPE_DEFAULT, "%s has not received any backboardd client load states", v63, 0xCu);
                }
              }

              v59 = *re::assetsLogObjects(v20);
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
              {
                v60 = "Unloaded";
                if (v17 <= 2)
                {
                  v60 = off_1E871ACF8[v17];
                }

                *v63 = 136315394;
                v64 = v21;
                v65 = 2080;
                v66 = v60;
                v55 = v59;
                v56 = "%s has local load state: %s";
                v57 = 22;
LABEL_72:
                _os_log_impl(&dword_1E1C61000, v55, OS_LOG_TYPE_DEFAULT, v56, v63, v57);
              }

              goto LABEL_73;
            }

            v26 = (v23 & 1) == 0;
            v27 = (v25 + 32 * v24);
            v28 = v72[0];
            if (!v26)
            {
              v28 = &v71;
            }

            v29 = v28 + 3;
            v30 = (v25 + 28);
            while (2)
            {
              v31 = *(v30 - 7);
              *(v29 - 1) = *(v30 - 3);
              *(v29 - 3) = v31;
              if (*v29)
              {
                if ((*(v30 - 1) & 1) == 0)
                {
                  *v29 = 0;
                  goto LABEL_28;
                }

LABEL_27:
                *(v29 + 1) = *v30;
              }

              else if (*(v30 - 1))
              {
                *v29 = 1;
                goto LABEL_27;
              }

LABEL_28:
              v32 = v30 - 7;
              v29 += 4;
              v30 += 8;
              if (v32 + 8 == v27)
              {
                goto LABEL_55;
              }

              continue;
            }
          }

          v20 = re::DynamicOverflowArray<re::internal::AssetEntry::State::ResourceSharingClientLoadState,1ul>::setCapacity(buf, *(v18 + 656));
          v33 = *(v18 + 664) & 1;
          v34 = *(v18 + 680);
          if (v33)
          {
            v35 = v18 + 672;
          }

          else
          {
            v35 = *(v18 + 680);
          }

          v36 = *&buf[8];
          v37 = buf[16];
          if (!*&buf[8])
          {
            goto LABEL_46;
          }

          v38 = (v35 + 32 * *&buf[8]);
          if (buf[16])
          {
            v39 = &v71;
          }

          else
          {
            v39 = v72[0];
          }

          v40 = v39 + 3;
          v41 = (v35 + 28);
          do
          {
            v42 = *(v41 - 7);
            *(v40 - 1) = *(v41 - 3);
            *(v40 - 3) = v42;
            if (*v40)
            {
              if ((*(v41 - 1) & 1) == 0)
              {
                *v40 = 0;
                goto LABEL_44;
              }
            }

            else
            {
              if ((*(v41 - 1) & 1) == 0)
              {
                goto LABEL_44;
              }

              *v40 = 1;
            }

            *(v40 + 1) = *v41;
LABEL_44:
            v43 = v41 - 7;
            v40 += 4;
            v41 += 8;
          }

          while (v43 + 8 != v38);
          v37 = buf[16];
          v36 = *&buf[8];
          v34 = *(v18 + 680);
          v33 = *(v18 + 664) & 1;
LABEL_46:
          if (v33)
          {
            v34 = v18 + 672;
          }

          if (v36 != v24)
          {
            v44 = (v34 + 32 * v24);
            v45 = v72[0];
            if (v37)
            {
              v45 = &v71;
            }

            v46 = (v34 + 32 * v36);
            v47 = &v45[4 * v36];
            do
            {
              v48 = *v46;
              v47[2] = *(v46 + 2);
              *v47 = v48;
              v49 = *(v46 + 24);
              *(v47 + 24) = v49;
              if (v49 == 1)
              {
                *(v47 + 7) = *(v46 + 7);
              }

              v46 += 2;
              v47 += 4;
            }

            while (v46 != v44);
          }

LABEL_55:
          *&buf[8] = v24;
          if (!v24)
          {
            goto LABEL_65;
          }

          v50 = *re::assetsLogObjects(v20);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            v51 = "Unloaded";
            if (v17 <= 2)
            {
              v51 = off_1E871ACF8[v17];
            }

            v52 = (v72[0] + 8);
            if (buf[16])
            {
              v52 = v72;
            }

            v53 = *v52 - 1;
            v54 = "Unloaded";
            if (v53 <= 2)
            {
              v54 = off_1E871ACF8[v53];
            }

            *v63 = 136315650;
            v64 = v21;
            v65 = 2080;
            v66 = v51;
            v67 = 2080;
            v68 = v54;
            v55 = v50;
            v56 = "%s has local load state: %s and backboardd load state is: %s";
            v57 = 32;
            goto LABEL_72;
          }

LABEL_73:
          if (*buf)
          {
            if ((buf[16] & 1) == 0)
            {
              (*(**buf + 40))();
            }
          }

          re::AssetHandle::~AssetHandle(v62);
LABEL_77:
          os_unfair_lock_unlock((v18 + 512));
          v15 = (v15 + 32);
        }

        while (v15 != v16);
LABEL_78:
        v61 += 4;
        v1 = v12;
        if (v61 == 16)
        {
          v12[17] = v12[17] + (std::chrono::steady_clock::now().__d_.__rep_ - *(v12 + 16)) / 1000000000.0;
          *(v12 + 144) = 0;
          return;
        }
      }
    }
  }
}

void re::AssetLoadRequest::Data::complete(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v29 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  os_unfair_lock_lock((a1 + 256));
  *(a1 + 400) = v6;
  os_unfair_lock_unlock((a1 + 256));
  v8 = *re::assetsLogObjects(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 88);
    if (*(a1 + 104))
    {
      v10 = *(a1 + 112);
    }

    else
    {
      v10 = a1 + 105;
    }

    v11 = "failed";
    *buf = 134218498;
    v24 = v9;
    v25 = 2080;
    if (v4)
    {
      v11 = "succeeded";
    }

    v26 = v10;
    v27 = 2080;
    v28 = v11;
    _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "AssetLoadRequest with first assetId %llu (%s) %s loading.", buf, 0x20u);
  }

  if (*(a1 + 144) == 1)
  {
    *(a1 + 136) = *(a1 + 136) + (std::chrono::steady_clock::now().__d_.__rep_ - *(a1 + 128)) / 1000000000.0;
    *(a1 + 144) = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 24));
  if (WeakRetained)
  {
    v13 = WeakRetained;
    if (*(a1 + 56))
    {
      v14 = *(WeakRetained + 2);
      os_unfair_lock_lock((a1 + 256));
      v15 = *(a1 + 417);
      *(a1 + 417) = 1;
      os_unfair_lock_unlock((a1 + 256));
      if ((v15 & 1) == 0)
      {
        v16 = (a1 + 8);
        if (a3 == 1 || *(a1 + 64))
        {
          if (*(a1 + 64))
          {
            v18 = (a1 + 72);
          }

          else
          {
            v18 = (v14 + 776);
          }

          v19 = *v18;
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 0x40000000;
          v20[2] = ___ZN2re16AssetLoadRequest4Data8completeEbNS0_11QueueOptionE_block_invoke;
          v20[3] = &__block_descriptor_tmp_2;
          v20[4] = a1;
          v22 = v4;
          v21 = v6;
          dispatch_async(v19, v20);
        }

        else
        {
          std::function<void ()(BOOL)>::operator()(a1 + 32, v4);
          os_unfair_lock_lock((a1 + 256));
          *(a1 + 417) = 0;
          os_unfair_lock_unlock((a1 + 256));
        }
      }
    }
  }

  else
  {
    v17 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Attempted to perform complete() for asset load request, but asset manager was gone already", buf, 2u);
    }
  }
}

float re::AssetLoadRequest::Data::progress(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 64);
  v2 = 1.0;
  if (this[100]._os_unfair_lock_opaque != 1)
  {
    v2 = 1.0 - exp2f(-(this[83]._os_unfair_lock_opaque - *&this[70]._os_unfair_lock_opaque));
  }

  os_unfair_lock_unlock(this + 64);
  return v2;
}

uint64_t re::AssetLoadRequest::Data::tryStopRequest(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 64);
  v2 = BYTE1(this[104]._os_unfair_lock_opaque);
  if ((v2 & 1) == 0 && !this[100]._os_unfair_lock_opaque)
  {
    this[100]._os_unfair_lock_opaque = 2;
    re::WrappedError::make(&v7, @"REAssetLoadRequestErrorDomain", 0x64, "Cancelled");
    v3 = &this[102];
    if (&this[102] != &v7)
    {
      v4 = v7;
      v7 = 0;
      v5 = *v3;
      *v3 = v4;
    }
  }

  os_unfair_lock_unlock(this + 64);
  return v2 ^ 1u;
}

void re::AssetLoadRequest::Data::setCompletionHandler(uint64_t a1, uint64_t a2, id *a3)
{
  v18[3] = *MEMORY[0x1E69E9840];
  if (*(a1 + 56))
  {
    os_unfair_lock_lock((a1 + 256));
    *(a1 + 400) = 0;
    *(a1 + 416) = 0;
    os_unfair_lock_unlock((a1 + 256));
  }

  WeakRetained = objc_loadWeakRetained((a1 + 24));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v8 = a1 + 32;
    v9 = *(WeakRetained + 2);
    std::__function::__value_func<void ()(BOOL)>::__value_func[abi:nn200100](v15, a2);
    if (v15 != (a1 + 32))
    {
      v10 = v17;
      v11 = *(a1 + 56);
      if (v17 == v15)
      {
        if (v11 == v8)
        {
          (*(*v17 + 24))();
          (*(*v17 + 32))(v17);
          v17 = 0;
          (*(**(a1 + 56) + 24))(*(a1 + 56), v15);
          (*(**(a1 + 56) + 32))(*(a1 + 56));
          *(a1 + 56) = 0;
          v17 = v15;
          (*(v18[0] + 24))(v18, a1 + 32);
          (*(v18[0] + 32))(v18);
        }

        else
        {
          (*(*v17 + 24))();
          (*(*v17 + 32))(v17);
          v17 = *(a1 + 56);
        }

        *(a1 + 56) = v8;
      }

      else if (v11 == v8)
      {
        (*(*v11 + 24))(*(a1 + 56), v15);
        (*(**(a1 + 56) + 32))(*(a1 + 56));
        *(a1 + 56) = v17;
        v17 = v15;
      }

      else
      {
        v17 = *(a1 + 56);
        *(a1 + 56) = v10;
      }
    }

    std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](v15);
    if (!a3 || (v13 = *(v9 + 776), v14 = *a3, v13, v14 == v13))
    {
      v15[0] = 0;
    }

    else
    {
      v15[0] = 1;
      v16 = *a3;
    }

    re::Optional<re::dispatch::Queue>::operator=(a1 + 64, v15);
    if (v15[0] == 1)
    {
    }
  }

  else
  {
    v12 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Attempted to set completion handler for asset load request, but asset manager was gone already", v15, 2u);
    }
  }
}

uint64_t re::Optional<re::dispatch::Queue>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      if (a1 != a2)
      {
        v3 = *(a2 + 8);
        *(a2 + 8) = 0;
        v4 = *(a1 + 8);
        *(a1 + 8) = v3;
      }
    }

    else
    {

      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    v5 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a1 + 8) = v5;
  }

  return a1;
}

void ___ZN2re16AssetLoadRequest4Data8completeEbNS0_11QueueOptionE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::function<void ()(BOOL)>::operator()(v1 + 32, *(a1 + 44));
  os_unfair_lock_lock((v1 + 256));
  *(v1 + 417) = 0;
  os_unfair_lock_unlock((v1 + 256));
}

void std::function<void ()(BOOL)>::operator()(uint64_t a1, char a2)
{
  v5 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    (*(*v2 + 48))(v2, &v5);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
    re::AssetLoadRequest::Data::waitForCompletion(v3, v4);
  }
}

void re::AssetLoadRequest::Data::waitForCompletion(uint64_t a1, int a2)
{
  v38[2] = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    v7 = *re::assetsLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 88);
      if (*(a1 + 104))
      {
        v9 = *(a1 + 112);
      }

      else
      {
        v9 = a1 + 105;
      }

      v35 = *(a1 + 81);
      v36 = *(a1 + 82);
      *buf = 134218754;
      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = v9;
      *&buf[22] = 1024;
      LODWORD(v38[0]) = v35;
      WORD2(v38[0]) = 1024;
      *(v38 + 6) = v36;
      _os_log_debug_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEBUG, "Blocking a non-engine queue waiting for AssetLoadRequest. First asset is %llu (%s). m_shouldWaitForPeers = %u. m_shouldBlockECSUpdatesUntilCompleted = %u.", buf, 0x22u);
    }
  }

  else if (!a2)
  {
    v4 = *re::assetsLogObjects(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 88);
      if (*(a1 + 104))
      {
        v6 = *(a1 + 112);
      }

      else
      {
        v6 = a1 + 105;
      }

      v10 = *(a1 + 81);
      v11 = *(a1 + 82);
      *buf = 134218754;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = v6;
      *&buf[22] = 1024;
      LODWORD(v38[0]) = v10;
      WORD2(v38[0]) = 1024;
      *(v38 + 6) = v11;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Blocking engine queue waiting for AssetLoadRequest! First asset is %llu (%s). m_shouldWaitForPeers = %u.m_shouldBlockECSUpdatesUntilCompleted = %u.", buf, 0x22u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 24));
  if (!WeakRetained)
  {
    v32 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 104))
      {
        v33 = *(a1 + 112);
      }

      else
      {
        v33 = a1 + 105;
      }

      *buf = 136315138;
      *&buf[4] = v33;
      _os_log_error_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_ERROR, "Attempted to waitForCompletion() for '%s', but asset manager was gone already", buf, 0xCu);
    }

    return;
  }

  v13 = WeakRetained;
  v14 = WeakRetained[2];
  while (1)
  {
    os_unfair_lock_lock((a1 + 256));
    v16 = *(a1 + 417);
    v17 = *(a1 + 400);
    if ((v17 - 1) <= 1)
    {
      break;
    }

    if (v17 || *(a1 + 280))
    {
      goto LABEL_18;
    }

    v23 = 0;
    v19 = 1;
LABEL_29:
    re::AssetLoadRequest::Data::checkForLongLoadAndLogDetails_stateLocked(a1);
    os_unfair_lock_unlock((a1 + 256));
    if ((v23 & 1) != 0 || v19)
    {
      re::AssetLoadRequest::Data::complete(a1, v19, a2);
    }

    else if (v16)
    {
LABEL_32:
      if (a2 == 1)
      {
LABEL_49:
        usleep(0x3E8u);
      }
    }

    else
    {
      if (a2 == 1)
      {
        re::AssetManager::waitForLoadQueueToComplete(v14, 1);
        goto LABEL_49;
      }

      if (!a2)
      {
        os_unfair_lock_lock((a1 + 256));
        if (*(a1 + 280))
        {
          v25 = 0;
          v26 = 8;
          do
          {
            v27 = *(*(a1 + 296) + v26);
            if (v27)
            {
              os_unfair_lock_lock((v14 + 2048));
              os_unfair_lock_lock((v27 + 512));
              v28 = *(v27 + 528);
              os_unfair_lock_unlock((v27 + 512));
              if (v28)
              {
                v29 = *(v28 + 8);
                os_unfair_lock_unlock((v14 + 2048));
                if (v29)
                {
                  re::internal::AssetBackgroundLoader::loadNow(*(v14 + 1800), v29, 1);
                }
              }

              else
              {
                os_unfair_lock_unlock((v14 + 2048));
              }
            }

            ++v25;
            v26 += 32;
          }

          while (v25 < *(a1 + 280));
        }

        os_unfair_lock_unlock((a1 + 256));
        *buf = &unk_1F5CB8C60;
        *&buf[8] = v14;
        v38[0] = buf;
        re::runInLocalAutoreleasePool(buf);
        std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](buf);
        if (*(a1 + 81))
        {
          os_unfair_lock_lock((a1 + 256));
          v30 = *(a1 + 400);
          os_unfair_lock_unlock((a1 + 256));
          if (!v30)
          {
            usleep(0x3E8u);
          }
        }

        goto LABEL_32;
      }
    }
  }

  if ((*(a1 + 417) & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_18:
  if (a2 || (*(a1 + 81) & 1) == 0 || (*(v14 + 2220) & 1) != 0)
  {
    v18 = *(a1 + 280);
    if (v18)
    {
      v19 = 32 * v18;
      v20 = (*(a1 + 296) + 8);
      while (1)
      {
        v21 = *v20;
        os_unfair_lock_lock(*v20 + 128);
        if (BYTE1(v21[136]._os_unfair_lock_opaque) == 1)
        {
          break;
        }

        os_unfair_lock_unlock(v21 + 128);
        v20 += 4;
        v19 -= 32;
        if (!v19)
        {
          v23 = 0;
          goto LABEL_29;
        }
      }

      v24 = *re::assetsLogObjects(v22);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        if (v21[42]._os_unfair_lock_opaque)
        {
          v31 = *&v21[44]._os_unfair_lock_opaque;
        }

        else
        {
          v31 = &v21[42]._os_unfair_lock_opaque + 1;
        }

        *buf = 136315138;
        *&buf[4] = v31;
        _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, "AssetLoadRequest failed because waitForCompletion can't be called on an asset that is loading over the network. For '%s'", buf, 0xCu);
      }

      os_unfair_lock_unlock(v21 + 128);
      v19 = 0;
      v23 = 1;
    }

    else
    {
      v23 = 0;
      v19 = 0;
    }

    goto LABEL_29;
  }

  v34 = *re::assetsLogObjects(v15);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_ERROR, "AssetLoadRequest failed because waitForCompletion was called while this request is configured to wait for peers to load with AssetLoadRequest::setShouldLoadAndWaitForResourceSharingClients() or REAssetLoadRequestSetLoadAndWaitForResourceSharingClients.", buf, 2u);
  }

LABEL_60:
  os_unfair_lock_unlock((a1 + 256));
}

double anonymous namespace::longLoadLoggingThreshold(_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&qword_1EE193A00, memory_order_acquire) & 1) == 0)
  {
    v6[2] = v1;
    v6[3] = v2;
    if (__cxa_guard_acquire(&qword_1EE193A00))
    {
      re::Defaults::doubleValue(v6, "longLoadLoggingThreshold", v4);
      v5 = *&v6[1];
      if (!LOBYTE(v6[0]))
      {
        v5 = 4.0;
      }

      _MergedGlobals_55 = *&v5;
      __cxa_guard_release(&qword_1EE193A00);
    }
  }

  return *&_MergedGlobals_55;
}

void re::AssetLoadRequest::getStatistics(re::AssetLoadRequest *this@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(this + 3);
  os_unfair_lock_lock((v3 + 256));
  v5 = *(v3 + 352);
  if (v5)
  {
    *a2 = v5;
LABEL_6:
    v7 = (v5 + 8);
    goto LABEL_7;
  }

  re::make::shared::object<re::AssetLoadRequest::LoadStatistics>(v4, &v8);
  v6 = *(v3 + 352);
  v5 = v8;
  *(v3 + 352) = v8;
  v8 = v6;
  if (v6)
  {

    v5 = *(v3 + 352);
  }

  *a2 = v5;
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_7:
  os_unfair_lock_unlock((v3 + 256));
}

double re::AssetLoadRequest::LoadStatistics::forEachStat(uint64_t *a1, uint64_t a2)
{
  v2 = a1;
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v55 = 0x7FFFFFFFLL;
  v3 = *(a1 + 14);
  if (v3)
  {
    v4 = 0;
    v5 = (a1[5] + 8);
    while (1)
    {
      v6 = *v5;
      v5 += 10;
      if (v6 < 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        LODWORD(v4) = *(a1 + 14);
        break;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 == v3)
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_33;
  }

  do
  {
    v9 = *(*(v2 + 40) + 40 * v4 + 24);
    if (*(v9 + 936) == 1 && *(v9 + 952) == 1)
    {
      v46 = (*(v9 + 944) - *(v9 + 928)) & 0xFFFFFFFFFFFFFF00;
      v10 = (*(v9 + 944) - *(v9 + 928));
      v11 = 1;
    }

    else
    {
      v11 = 0;
      v10 = 0;
      v46 = 0;
    }

    v12 = *(v9 + 960);
    v13 = *(v9 + 968);
    v14 = **(v9 + 280);
    v15 = re::Hash<re::DynamicString>::operator()(&v47, v14);
    v16 = re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::findEntry<char const*>(&v47, &v52, v14, v15);
    if (HIDWORD(v48) == 0x7FFFFFFF)
    {
      v51 = 0uLL;
      if (!v11)
      {
        goto LABEL_18;
      }

LABEL_17:
      *&v51 = (v46 | v10) + v51;
      goto LABEL_18;
    }

    v17 = v3;
    v18 = v53 + 72 * HIDWORD(v48);
    re::DynamicString::DynamicString(&v47, (v18 + 16));
    v19 = *(v18 + 48);
    v3 = v17;
    v51 = v19;
    if (v11)
    {
      goto LABEL_17;
    }

LABEL_18:
    if (v13)
    {
      *(&v51 + 1) += v12;
    }

    v56 = 0;
    v57 = 0;
    v58 = 0;
    v20 = re::Hash<re::DynamicString>::operator()(&v59, v14);
    re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::findEntry<char const*>(&v56, &v52, v14, v20);
    if (HIDWORD(v57) == 0x7FFFFFFF)
    {
      v21 = re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::allocEntry(&v52, v57, v56);
      *(v21 + 8) = v14;
      re::DynamicString::DynamicString((v21 + 16), &v47);
      *(v21 + 48) = v51;
      ++HIDWORD(v55);
    }

    a1 = v47;
    if (v47 && (v48 & 1) != 0)
    {
      a1 = (*(*v47 + 40))();
    }

    v22 = *(v2 + 56);
    if (v22 <= v4 + 1)
    {
      v22 = v4 + 1;
    }

    while (v22 - 1 != v4)
    {
      LODWORD(v4) = v4 + 1;
      if ((*(*(v2 + 40) + 40 * v4 + 8) & 0x80000000) != 0)
      {
        goto LABEL_31;
      }
    }

    LODWORD(v4) = v22;
LABEL_31:
    ;
  }

  while (v4 != v3);
  v8 = HIDWORD(v53);
  v7 = v54;
LABEL_33:
  *&v51 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v23 = re::DynamicArray<re::AssetLoadRequest::LoadStatistics::AssetTypeStats>::setCapacity(&v47, v8);
  v24 = ++v50;
  if (v7)
  {
    v25 = 0;
    v26 = v53;
    while (1)
    {
      v27 = *v26;
      v26 += 18;
      if (v27 < 0)
      {
        break;
      }

      if (v7 == ++v25)
      {
        LODWORD(v25) = v7;
        break;
      }
    }
  }

  else
  {
    LODWORD(v25) = 0;
  }

  if (v25 == v7)
  {
    v28 = v51;
    v29 = v49;
  }

  else
  {
    v30 = v53;
    v29 = v49;
    do
    {
      if (v29 >= v48)
      {
        if (v48 < v29 + 1)
        {
          if (v47)
          {
            if (v48)
            {
              v31 = 2 * v48;
            }

            else
            {
              v31 = 8;
            }

            if (v31 <= v29 + 1)
            {
              v32 = v29 + 1;
            }

            else
            {
              v32 = v31;
            }

            re::DynamicArray<re::AssetLoadRequest::LoadStatistics::AssetTypeStats>::setCapacity(&v47, v32);
            v24 = v50;
          }

          else
          {
            re::DynamicArray<re::AssetLoadRequest::LoadStatistics::AssetTypeStats>::setCapacity(&v47, v29 + 1);
            v24 = v50 + 1;
          }
        }

        v29 = v49;
      }

      v33 = v30 + 72 * v25;
      v28 = v51;
      v23 = re::DynamicString::DynamicString((v51 + 48 * v29), (v33 + 16));
      *(v23 + 2) = *(v33 + 48);
      v49 = ++v29;
      v50 = ++v24;
      if (v7 <= v25 + 1)
      {
        v34 = v25 + 1;
      }

      else
      {
        v34 = v7;
      }

      while (v34 - 1 != v25)
      {
        LODWORD(v25) = v25 + 1;
        if ((*(v30 + 72 * v25) & 0x80000000) != 0)
        {
          goto LABEL_61;
        }
      }

      LODWORD(v25) = v34;
LABEL_61:
      ;
    }

    while (v25 != v7);
  }

  v35 = 126 - 2 * __clz(v29);
  if (v29)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,re::AssetLoadRequest::LoadStatistics::forEachStat(void({block_pointer})(re::AssetLoadRequest::LoadStatistics::AssetTypeStats const&))::$_0 &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats*>,false>(&v28[48 * v29], &v28[48 * v29], v28, v28, v36, 1);
  if (v29)
  {
    v37 = v29 - 1;
    if (v29 - 1 >= 9)
    {
      v37 = 9;
    }

    v38 = v37 + 1;
    v39 = v28;
    do
    {
      (*(a2 + 16))(a2, v39);
      v39 += 48;
      --v38;
    }

    while (v38);
  }

  v40 = v47;
  if (v47)
  {
    v41 = v28 == 0;
  }

  else
  {
    v41 = 1;
  }

  if (!v41)
  {
    if (v29)
    {
      v42 = 48 * v29;
      v43 = v28;
      do
      {
        re::DynamicString::deinit(v43);
        v43 = (v43 + 48);
        v42 -= 48;
      }

      while (v42);
    }

    (*(*v40 + 40))(v40, v28);
  }

  return re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::deinit(&v52);
}

void re::AssetLoadRequest::addAsset(re::AssetLoadRequest *this, const re::AssetHandle *a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  v58 = 0;
  v55[1] = 0;
  v56 = 0;
  v55[0] = 0;
  v57 = 0;
  v69 = 0;
  *v67 = 0u;
  v68 = 0u;
  v70 = 0x7FFFFFFFLL;
  WeakRetained = objc_loadWeakRetained((v4 + 24));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = WeakRetained[2];
    re::AssetManager::getAssetDependenciesFromAssetProvidersRecursive(v7, v55, v67, a2, 1, v53);
    if ((v53[0] & 1) == 0)
    {
      v9 = *re::assetsLogObjects(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v45 = re::AssetHandle::assetInfo(a2);
        if (v45[17])
        {
          v46 = v45[18];
        }

        else
        {
          v46 = v45 + 137;
        }

        v47 = re::WrappedError::localizedDescription(&v54);
        *buf = 136315394;
        *&buf[4] = v46;
        *&buf[12] = 2080;
        *&buf[14] = v47;
        _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Failed to add dependencies of asset '%s' to the load request due to error: %s", buf, 0x16u);
      }

      v10 = v56;
      v56 = 0;
      if (v10)
      {
        v11 = v58;
        v12 = 24 * v10;
        do
        {
          re::AssetHandle::~AssetHandle(v11);
          v11 = (v13 + 24);
          v12 -= 24;
        }

        while (v12);
      }

      ++v57;
    }

    re::AssetLoadRequest::Data::getResourceClientPeerIDs(buf, v4);
    os_unfair_lock_lock((v4 + 256));
    v14 = *(v4 + 400);
    v16 = *re::assetsLogObjects(v15);
    if (v14 == 2)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v48 = re::AssetHandle::assetInfo(a2);
        if (v48[17])
        {
          v49 = v48[18];
        }

        else
        {
          v49 = v48 + 137;
        }

        *v59 = 136315138;
        *&v59[4] = v49;
        _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "AssetLoadRequest can't add asset '%s' because it is in the kError state", v59, 0xCu);
      }

      os_unfair_lock_unlock((v4 + 256));
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v50 = re::AssetHandle::assetInfo(a2);
        if (v50[17])
        {
          v51 = v50[18];
        }

        else
        {
          v51 = v50 + 137;
        }

        *v59 = 136315138;
        *&v59[4] = v51;
        _os_log_debug_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEBUG, "AssetLoadRequest add '%s'", v59, 0xCu);
      }

      if (*(v4 + 420))
      {
        v20 = buf;
        v21 = (v4 + 360);
      }

      else
      {
        *(v4 + 420) = 1;
        v20 = (v4 + 360);
        v21 = buf;
      }

      re::DynamicOverflowArray<unsigned long long,1ul>::operator=(v20, v21);
      if (*(v4 + 400))
      {
        *(v4 + 400) = 0;
      }

      if ((*(v4 + 416) & 1) == 0)
      {
        v22 = *(re::AssetHandle::assetInfo(a2) + 10);
        if (v22 == -1)
        {
          v22 = 0;
        }

        *(v4 + 88) = v22;
        v23 = re::AssetHandle::assetInfo(a2);
        if (*(v23 + 17))
        {
          v24 = *(v23 + 18);
        }

        else
        {
          v24 = v23 + 137;
        }

        v25 = strlen(v24);
        *v59 = v24;
        *&v59[8] = v25;
        v26 = re::DynamicString::operator=((v4 + 96), v59);
        v27 = *re::assetsLogObjects(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = *(v4 + 88);
          if (*(v4 + 104))
          {
            v29 = *(v4 + 112);
          }

          else
          {
            v29 = v4 + 105;
          }

          v30 = *(v4 + 81);
          v31 = *(v4 + 82);
          *v59 = 134218754;
          *&v59[4] = v28;
          *&v59[12] = 2080;
          *&v59[14] = v29;
          v60 = 1024;
          v61 = v30;
          v62 = 1024;
          v63 = v31;
          _os_log_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_DEFAULT, "AssetLoadRequest started loading first asset with id %llu (%s). m_shouldWaitForPeers = %u, m_shouldBlockECSUpdatesUntilCompleted = %u", v59, 0x22u);
        }

        *(v4 + 128) = std::chrono::steady_clock::now();
        *(v4 + 144) = 1;
      }

      *(v4 + 416) = 1;
      if (buf[16])
      {
        v32 = &v65;
      }

      else
      {
        v32 = v66;
      }

      *v59 = v32;
      *&v59[8] = *&buf[8];
      *(v4 + 418) = re::AssetLoadRequest::Data::addAssetToLoadingSet_stateLocked(v4, a2, v59) ^ 1;
      if (v56)
      {
        v33 = v58;
        v34 = 24 * v56;
        do
        {
          if (buf[16])
          {
            v35 = &v65;
          }

          else
          {
            v35 = v66;
          }

          *v59 = v35;
          *&v59[8] = *&buf[8];
          *(v4 + 418) = *(v4 + 418) & 1 | ((re::AssetLoadRequest::Data::addAssetToLoadingSet_stateLocked(v4, v33, v59) & 1) == 0);
          v33 += 3;
          v34 -= 24;
        }

        while (v34);
      }

      os_unfair_lock_unlock((v4 + 256));
      atomic_store(1u, (v7 + 1032));
    }

    if (*buf && (buf[16] & 1) == 0)
    {
      (*(**buf + 40))();
    }

    if ((v53[0] & 1) == 0)
    {
    }
  }

  else
  {
    v17 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = re::AssetHandle::assetInfo(a2);
      if (v18[17])
      {
        v19 = v18[18];
      }

      else
      {
        v19 = v18 + 137;
      }

      *buf = 136315138;
      *&buf[4] = v19;
      _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Attempted to add an asset '%s' to load request, but asset manager was gone already", buf, 0xCu);
    }
  }

  re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(v67);
  re::DynamicArray<re::AssetHandle>::deinit(v55);
  v36 = objc_loadWeakRetained((*(this + 3) + 24));
  if (v36)
  {
    v37 = v36;
    if (*(*(this + 3) + 82) == 1)
    {
      v38 = *(v36 + 2);
      v39 = *(a2 + 1);
      if (v39)
      {
        *(v39 + 272) = 1;
      }

      v40 = *(v38 + 1928);
      if (v40)
      {
        v52 = this;
        v41 = this + 8;
        (*(*v40 + 8))(v40, &v52);
        if (v52)
        {

          v52 = 0;
        }
      }
    }
  }

  else
  {
    v42 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = re::AssetHandle::assetInfo(a2);
      if (v43[17])
      {
        v44 = v43[18];
      }

      else
      {
        v44 = v43 + 137;
      }

      *v67 = 136315138;
      *&v67[4] = v44;
      _os_log_error_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_ERROR, "Attempted to add asset '%s' to asset load request, but asset manager was gone already", v67, 0xCu);
    }
  }
}

void re::AssetLoadRequest::error(re::AssetLoadRequest *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 3);
  os_unfair_lock_lock((v3 + 256));
  *a2 = *(v3 + 408);

  os_unfair_lock_unlock((v3 + 256));
}

uint64_t re::AssetLoadRequest::setCompletionHandler(uint64_t a1, uint64_t a2, id *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 24);
  std::__function::__value_func<void ()(BOOL)>::__value_func[abi:nn200100](v6, a2);
  re::AssetLoadRequest::Data::setCompletionHandler(v4, v6, a3);
  return std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](v6);
}

void re::AssetLoadRequest::~AssetLoadRequest(re::AssetLoadRequest *this)
{
  v2 = *(this + 3);
  os_unfair_lock_lock((v2 + 256));
  *(v2 + 419) = 1;
  os_unfair_lock_unlock((v2 + 256));
  WeakRetained = objc_loadWeakRetained((*(this + 3) + 24));
  if (WeakRetained)
  {
    atomic_store(1u, (WeakRetained[2] + 1032));
  }

  v4 = *(this + 3);
  if (v4)
  {

    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::AssetLoadRequest::~AssetLoadRequest(this);

  JUMPOUT(0x1E6906520);
}

void re::AssetLoadRequest::Data::~Data(re::AssetLoadRequest::Data *this)
{
  re::AssetLoadRequest::Data::~Data(this);

  JUMPOUT(0x1E6906510);
}

{

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 360);
  v2 = *(this + 44);
  if (v2)
  {

    *(this + 44) = 0;
  }

  v3.n128_f64[0] = re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(this + 38);
  v4 = *(this + 33);
  if (v4)
  {
    v5 = *(this + 37);
    if (v5)
    {
      v6 = *(this + 35);
      if (v6)
      {
        v7 = 32 * v6;
        do
        {
          re::AssetHandle::~AssetHandle(v5);
          v5 = (v5 + 32);
          v7 -= 32;
        }

        while (v7);
        v4 = *(this + 33);
        v5 = *(this + 37);
      }

      (*(*v4 + 40))(v4, v5, v3);
    }

    *(this + 37) = 0;
    *(this + 34) = 0;
    *(this + 35) = 0;
    *(this + 33) = 0;
    ++*(this + 72);
  }

  re::DynamicString::deinit((this + 96));
  if (*(this + 64) == 1)
  {
  }

  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](this + 32);
  objc_destroyWeak(this + 3);
  *(this + 3) = 0;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

double re::make::shared::object<re::AssetLoadRequest::LoadStatistics>@<D0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 72, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0;
  ArcSharedObject::ArcSharedObject(v4, 0);
  *v4 = &unk_1F5CBCB60;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v4 + 60) = 0x7FFFFFFFLL;
  *a2 = v4;
  return result;
}

void re::AssetLoadRequest::LoadStatistics::~LoadStatistics(re::AssetLoadRequest::LoadStatistics *this)
{
  re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(this + 3);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(this + 3);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *re::DynamicArray<re::AssetLoadRequest::Data::LoadingAssetHandle>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::AssetLoadRequest::Data::LoadingAssetHandle>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v14, v16);
          __break(1u);
        }

        else
        {
          v2 = 32 * a2;
          result = (*(*result + 32))(result, 32 * a2, 8);
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
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v15, v17);
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
        v10 = 32 * v9;
        v11 = v7;
        do
        {
          *v11 = 0;
          v11[1] = 0;
          v11[2] = 0;
          v11[1] = *(v8 + 8);
          *(v8 + 8) = 0;
          v12 = *v11;
          *v11 = 0;
          *v11 = *v8;
          *v8 = v12;
          v13 = v11[2];
          v11[2] = *(v8 + 16);
          *(v8 + 16) = v13;
          *(v11 + 12) = *(v8 + 24);
          re::AssetHandle::~AssetHandle(v8);
          v8 += 32;
          v11 += 4;
          v10 -= 32;
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

double re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::deinit(uint64_t *a1)
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
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicString::deinit((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 72;
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

uint64_t re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::findEntry<char const*>(uint64_t result, uint64_t a2, char *__s2, unint64_t a4)
{
  v5 = result;
  v6 = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    goto LABEL_11;
  }

  v7 = a4 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_11:
    v8 = 0x7FFFFFFF;
    goto LABEL_12;
  }

  v10 = *(a2 + 16);
  result = strcmp(*(v10 + 72 * v8 + 8), __s2);
  if (!result)
  {
    v6 = v8;
    goto LABEL_11;
  }

  v11 = *(v10 + 72 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = strcmp(*(v10 + 72 * v11 + 8), __s2);
      if (!result)
      {
        break;
      }

      v11 = *(v10 + 72 * v12) & 0x7FFFFFFF;
      v8 = v12;
      if (v11 == 0x7FFFFFFF)
      {
        v8 = v12;
        goto LABEL_12;
      }
    }

    v6 = v12;
  }

LABEL_12:
  *v5 = a4;
  *(v5 + 8) = v7;
  *(v5 + 12) = v6;
  *(v5 + 16) = v8;
  return result;
}

uint64_t re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v29, v9, v8);
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
            v17 = v13 + 32;
            do
            {
              if ((*(v17 - 32) & 0x80000000) != 0)
              {
                v18 = re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::allocEntry(a1, *(v17 + 32) % *(a1 + 6), *(v17 + 32));
                *(v18 + 8) = *(v17 - 24);
                *(v18 + 16) = 0u;
                *(v18 + 32) = 0u;
                *(v18 + 40) = *(v17 + 8);
                v19 = *(v17 - 8);
                *(v18 + 16) = *(v17 - 16);
                *(v17 - 16) = 0;
                v20 = *v17;
                *(v17 + 8) = 0;
                v22 = *(v18 + 24);
                v21 = *(v18 + 32);
                *(v18 + 24) = v19;
                *(v18 + 32) = v20;
                *(v17 - 8) = v22;
                *v17 = v21;
                *(v18 + 48) = *(v17 + 16);
              }

              v17 += 72;
              --v16;
            }

            while (v16);
          }

          re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::deinit(v29);
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
    v24 = *(v23 + 72 * v5);
  }

  else
  {
    v23 = a1[2];
    v24 = *(v23 + 72 * v5);
    *(a1 + 9) = v24 & 0x7FFFFFFF;
  }

  v26 = v23 + 72 * v5;
  *v26 = v24 | 0x80000000;
  v27 = a1[1];
  *v26 = *(v27 + 4 * a2) | 0x80000000;
  *(v27 + 4 * a2) = v5;
  *(v26 + 64) = a3;
  ++*(a1 + 7);
  return v23 + 72 * v5;
}

void re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 72 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
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

void *re::DynamicArray<re::AssetLoadRequest::LoadStatistics::AssetTypeStats>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::AssetLoadRequest::LoadStatistics::AssetTypeStats>::setCapacity(v5, a2);
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
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v16, v18);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v17, v19);
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
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v12 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 16);
          *(v8 + 24) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 8) = v15;
          *(v8 + 16) = v14;
          *(v11 + 2) = *(v8 + 32);
          re::DynamicString::deinit(v8);
          v8 += 48;
          v11 += 6;
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

void std::__introsort<std::_ClassicAlgPolicy,re::AssetLoadRequest::LoadStatistics::forEachStat(void({block_pointer})(re::AssetLoadRequest::LoadStatistics::AssetTypeStats const&))::$_0 &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats*>,false>(uint64_t result, char *a2, _OWORD *a3, char *a4, uint64_t a5, char a6)
{
  v9 = a2;
  i = a2;
LABEL_2:
  v11 = i;
  v12 = result;
LABEL_3:
  result = v12;
  for (i = v11; ; i = v9)
  {
    v13 = 0xAAAAAAAAAAAAAAABLL * ((i - a4) >> 4);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        if (*(a4 + 4) < *(i - 2))
        {
          v73 = a4 + 48;
          v74 = i;
          goto LABEL_204;
        }

        return;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::AssetLoadRequest::LoadStatistics::forEachStat(void({block_pointer})(re::AssetLoadRequest::LoadStatistics::AssetTypeStats const&))::$_0 &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats*>,0>(result, v9, (v9 - 48), (v9 - 48), (v9 - 96), (v9 - 96), a3, (a4 + 48));
      return;
    }

    if (v13 == 5)
    {
      v70 = v9 - 48;
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::AssetLoadRequest::LoadStatistics::forEachStat(void({block_pointer})(re::AssetLoadRequest::LoadStatistics::AssetTypeStats const&))::$_0 &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats*>,0>(result, v9, (v9 - 48), (v9 - 48), (v9 - 96), (v9 - 96), (v9 - 144), (v9 - 144));
      if (*(a4 + 4) < *(v9 - 20))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>((v9 - 144), (a4 + 48));
        if (*(v9 - 20) < *(v9 - 14))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>((v9 - 96), (v9 - 144));
          if (*(v9 - 14) < *(v9 - 8))
          {
            v75 = (v9 - 48);
            v76 = v9 - 96;
            goto LABEL_189;
          }
        }
      }

      return;
    }

LABEL_11:
    if (i - a4 <= 1151)
    {
      if (a6)
      {
        if (v9 != a4)
        {
          v77 = (v9 - 48);
          if (v9 - 48 != a4)
          {
            v78 = 0;
            do
            {
              v79 = v77 - 1;
              if (*(v77 - 2) < *(v77 + 4))
              {
                *&v142 = *(v77 - 6);
                *(v77 - 6) = 0;
                *&v143 = *(v77 - 4);
                *(v77 - 4) = 0;
                *(&v143 + 1) = *(v77 - 3);
                *(v77 - 3) = 0;
                *(&v142 + 1) = *(v77 - 5);
                *(v77 - 5) = 0;
                v144 = *v79;
                v80 = v78;
                do
                {
                  v81 = &v9[v80];
                  v82 = &v9[v80 - 48];
                  re::DynamicString::operator=(&v9[v80 - 96], v82);
                  *&v9[v80 - 64] = *&v9[v80 - 16];
                  if (!v80)
                  {
                    break;
                  }

                  v80 += 48;
                }

                while (v144 < *(v81 + 4));
                re::DynamicString::operator=(v82, &v142);
                *(v81 - 1) = v144;
                if (v142)
                {
                  if (BYTE8(v142))
                  {
                    (*(*v142 + 40))();
                  }
                }
              }

              v77 = v79 - 2;
              v78 -= 48;
            }

            while (v79 - 2 != a4);
          }
        }
      }

      else if (v9 != a4)
      {
        v127 = (v9 - 48);
        if (v9 - 48 != a4)
        {
          v128 = v9 - 96;
          do
          {
            v129 = v127 - 1;
            if (*(v127 - 2) < *(v127 + 4))
            {
              *&v142 = *(v127 - 6);
              *(v127 - 6) = 0;
              *&v143 = *(v127 - 4);
              *(v127 - 4) = 0;
              *(&v143 + 1) = *(v127 - 3);
              *(v127 - 3) = 0;
              *(&v142 + 1) = *(v127 - 5);
              *(v127 - 5) = 0;
              v144 = *v129;
              v130 = v128;
              do
              {
                v131 = (v130 + 48);
                v132 = re::DynamicString::operator=(v130, (v130 + 48));
                *(v132 + 2) = *(v132 + 5);
                v133 = *(v132 + 16);
                v130 = v131;
              }

              while (v144 < v133);
              v134 = re::DynamicString::operator=(v131, &v142);
              *(v134 + 2) = v144;
              if (v142)
              {
                if (BYTE8(v142))
                {
                  (*(*v142 + 40))();
                }
              }
            }

            v127 = v129 - 2;
            v128 -= 48;
          }

          while (v129 - 2 != a4);
        }
      }

      return;
    }

    if (!a5)
    {
      v83 = v9 - a4;
      if (v9 != a4 && v83 >= 49)
      {
        v84 = 0xAAAAAAAAAAAAAAABLL * (v83 >> 4);
        v85 = (v84 - 2) >> 1;
        v86 = v85;
        do
        {
          v87 = v86;
          if (v83 >= 0x60)
          {
            v88 = -48 * v86;
            v89 = 0xAAAAAAAAAAAAAAABLL * ((48 * v86) >> 4);
            if (v85 >= v89)
            {
              v90 = 2 * v89;
              v91 = (2 * v89) | 1;
              v92 = &v9[-48 * v91];
              v93 = v90 + 2;
              if (v93 < v84)
              {
                v94 = *(v92 - 2) >= *(v92 - 8);
                v95 = -48;
                if (*(v92 - 2) >= *(v92 - 8))
                {
                  v95 = 0;
                }

                v92 += v95;
                if (!v94)
                {
                  v91 = v93;
                }
              }

              v96 = &v9[v88];
              v97 = &v9[v88];
              v99 = *(v97 - 2);
              v98 = (v97 - 16);
              if (*(v92 - 2) >= v99)
              {
                v142 = 0u;
                v143 = 0u;
                *&v142 = *(v96 - 6);
                *(v96 - 6) = 0;
                v100 = v143;
                *&v143 = *(v96 - 4);
                *(v96 - 4) = v100;
                *(&v143 + 1) = *(v96 - 3);
                *(v96 - 3) = 0;
                v101 = *(&v142 + 1);
                *(&v142 + 1) = *(v96 - 5);
                *(v96 - 5) = v101;
                v144 = *v98;
                do
                {
                  v102 = v96;
                  v96 = v92;
                  v103 = (v92 - 48);
                  re::DynamicString::operator=((v102 - 48), (v92 - 48));
                  *(v102 - 1) = *(v96 - 1);
                  if (v85 < v91)
                  {
                    break;
                  }

                  v104 = (2 * v91) | 1;
                  v92 = &v9[-48 * v104];
                  if (2 * v91 + 2 < v84)
                  {
                    v105 = *(v92 - 2) >= *(v92 - 8);
                    v106 = -48;
                    if (*(v92 - 2) >= *(v92 - 8))
                    {
                      v106 = 0;
                    }

                    v92 += v106;
                    if (!v105)
                    {
                      v104 = 2 * v91 + 2;
                    }
                  }

                  v91 = v104;
                }

                while (*(v92 - 2) >= v144);
                re::DynamicString::operator=(v103, &v142);
                *(v96 - 1) = v144;
                if (v142 && (BYTE8(v142) & 1) != 0)
                {
                  (*(*v142 + 40))();
                }

                v83 = v9 - a4;
              }
            }
          }

          v86 = v87 - 1;
        }

        while (v87);
        v107 = 0xAAAAAAAAAAAAAAABLL * (v83 >> 4);
        do
        {
          v108 = 0;
          v137 = *(v9 - 6);
          *(v9 - 6) = 0;
          v139 = *(v9 - 4);
          *(v9 - 4) = 0;
          v140 = *(v9 - 3);
          *(v9 - 3) = 0;
          v138 = *(v9 - 5);
          *(v9 - 5) = 0;
          v141 = *(v9 - 1);
          v109 = v9;
          do
          {
            v110 = &v109[48 * ~v108];
            v111 = (2 * v108) | 1;
            v112 = 2 * v108 + 2;
            if (v112 < v107)
            {
              v113 = *(v110 - 2);
              v114 = *(v110 - 8);
              v115 = v113 >= v114;
              v116 = v113 >= v114 ? 0 : -48;
              v110 += v116;
              if (!v115)
              {
                v111 = v112;
              }
            }

            v117 = v110 - 48;
            re::DynamicString::operator=((v109 - 48), (v110 - 48));
            *(v109 - 1) = *(v110 - 1);
            v109 = v110;
            v108 = v111;
          }

          while (v111 <= ((v107 - 2) >> 1));
          v118 = (v110 - 16);
          v119 = a4 + 48;
          if (v110 == a4 + 48)
          {
            re::DynamicString::operator=((v110 - 48), &v137);
            *v118 = v141;
          }

          else
          {
            re::DynamicString::operator=((v110 - 48), a4);
            *v118 = *(a4 + 2);
            re::DynamicString::operator=(a4, &v137);
            *(a4 + 2) = v141;
            if (v9 - v117 >= 49)
            {
              v120 = (-2 - 0x5555555555555555 * ((v9 - v117) >> 4)) >> 1;
              v121 = &v9[-48 * v120];
              if (*(v121 - 2) < *v118)
              {
                v142 = 0u;
                v143 = 0u;
                *&v142 = *(v110 - 6);
                *(v110 - 6) = 0;
                v122 = v143;
                *&v143 = *(v110 - 4);
                *(v110 - 4) = v122;
                *(&v143 + 1) = *(v110 - 3);
                *(v110 - 3) = 0;
                v123 = *(&v142 + 1);
                *(&v142 + 1) = *(v110 - 5);
                *(v110 - 5) = v123;
                v144 = *v118;
                do
                {
                  v124 = v121;
                  v125 = (v121 - 48);
                  re::DynamicString::operator=((v110 - 48), (v121 - 48));
                  *(v110 - 1) = *(v124 - 1);
                  if (!v120)
                  {
                    break;
                  }

                  v120 = (v120 - 1) >> 1;
                  v121 = &v9[-48 * v120];
                  v110 = v124;
                }

                while (*(v121 - 2) < v144);
                re::DynamicString::operator=(v125, &v142);
                *(v124 - 1) = v144;
                if (v142)
                {
                  if (BYTE8(v142))
                  {
                    (*(*v142 + 40))();
                  }
                }
              }
            }
          }

          if (v137 && (v138 & 1) != 0)
          {
            (*(*v137 + 40))();
          }

          a4 = v119;
        }

        while (v107-- > 2);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = *(a4 + 4);
    if (v13 >= 0x81)
    {
      v16 = &v9[-48 * v14];
      v17 = *(v16 - 2);
      if (v17 >= *(v9 - 2))
      {
        if (v15 < v17)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(&v9[-48 * v14], (a4 + 48));
          if (*(v16 - 2) < *(v9 - 2))
          {
            v19 = v9;
            v18 = &v9[-48 * v14];
            goto LABEL_28;
          }
        }
      }

      else
      {
        if (v15 < v17)
        {
          v18 = a4 + 48;
          v19 = v9;
          goto LABEL_28;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(v9, &v9[-48 * v14]);
        if (*(a4 + 4) < *(v16 - 2))
        {
          v18 = a4 + 48;
          v19 = &v9[-48 * v14];
LABEL_28:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(v19, v18);
        }
      }

      v24 = &i[-48 * v14];
      v25 = *(v24 + 4);
      v26 = *(a4 + 10);
      if (v25 >= *(i - 8))
      {
        if (v26 < v25)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>((v24 + 48), (a4 + 96));
          if (*(v24 + 4) < *(i - 8))
          {
            v27 = v24 + 48;
LABEL_35:
            v28 = (i - 48);
LABEL_41:
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(v28, v27);
          }
        }
      }

      else
      {
        if (v26 < v25)
        {
          v27 = a4 + 96;
          goto LABEL_35;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>((i - 48), (v24 + 48));
        if (*(a4 + 10) < *(v24 + 4))
        {
          v28 = (v24 + 48);
          v27 = a4 + 96;
          goto LABEL_41;
        }
      }

      v29 = &i[48 * ~v14];
      v30 = *(v29 - 16);
      v31 = *(a4 + 16);
      if (v30 >= *(i - 14))
      {
        if (v31 < v30)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(&i[48 * ~v14], (a4 + 144));
          if (*(v29 - 16) < *(i - 14))
          {
            v33 = (i - 96);
            v32 = &i[48 * ~v14];
            goto LABEL_50;
          }
        }
      }

      else
      {
        if (v31 < v30)
        {
          v32 = a4 + 144;
          v33 = (i - 96);
          goto LABEL_50;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>((i - 96), &i[48 * ~v14]);
        if (*(a4 + 16) < *(v29 - 16))
        {
          v32 = a4 + 144;
          v33 = &i[48 * ~v14];
LABEL_50:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(v33, v32);
        }
      }

      v34 = &i[-48 * v14];
      v36 = (v34 - 16);
      v35 = *(v34 - 16);
      v37 = *(v29 - 16);
      if (v35 >= *(v24 + 4))
      {
        if (v37 < v35)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(v34, v29);
          if (*(v34 - 16) < *(v24 + 4))
          {
            v38 = (v24 + 48);
            v39 = v34;
            goto LABEL_59;
          }
        }
      }

      else
      {
        v38 = (v24 + 48);
        if (v37 < v35)
        {
          goto LABEL_55;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(v38, v34);
        if (*(v29 - 16) < *(v34 - 16))
        {
          v38 = v34;
LABEL_55:
          v39 = v29;
LABEL_59:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(v38, v39);
        }
      }

      v142 = 0u;
      v143 = 0u;
      *&v142 = *(i - 6);
      *(i - 6) = 0;
      v40 = v143;
      *&v143 = *(i - 4);
      *(i - 4) = v40;
      *(&v143 + 1) = *(i - 3);
      *(i - 3) = 0;
      v41 = *(&v142 + 1);
      *(&v142 + 1) = *(i - 5);
      *(i - 5) = v41;
      v144 = *(i - 1);
      re::DynamicString::operator=((i - 48), (v34 - 48));
      *(i - 1) = *v36;
      re::DynamicString::operator=((v34 - 48), &v142);
      *v36 = v144;
      if (v142 && (BYTE8(v142) & 1) != 0)
      {
        (*(*v142 + 40))();
      }

      goto LABEL_63;
    }

    v20 = &i[-48 * v14];
    v21 = *(v9 - 2);
    if (v21 >= *(v20 - 2))
    {
      if (v15 < v21)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(v9, (a4 + 48));
        if (*(v9 - 2) < *(v20 - 2))
        {
          v23 = &i[-48 * v14];
          v22 = v9;
          goto LABEL_38;
        }
      }
    }

    else
    {
      if (v15 < v21)
      {
        v22 = a4 + 48;
        v23 = &i[-48 * v14];
LABEL_38:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(v23, v22);
        goto LABEL_63;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(&i[-48 * v14], v9);
      if (*(a4 + 4) < *(v9 - 2))
      {
        v22 = a4 + 48;
        v23 = v9;
        goto LABEL_38;
      }
    }

LABEL_63:
    --a5;
    if ((a6 & 1) != 0 || (v42 = (i - 16), *(i + 4) < *(i - 2)))
    {
      v55 = 0;
      v142 = 0u;
      v143 = 0u;
      v56 = i - 48;
      *&v142 = *(i - 6);
      *v56 = 0;
      v57 = v143;
      *&v143 = *(i - 4);
      *(v56 + 2) = v57;
      *(&v143 + 1) = *(i - 3);
      *(v56 + 3) = 0;
      v58 = *(&v142 + 1);
      *(&v142 + 1) = *(i - 5);
      *(v56 + 1) = v58;
      v144 = *(i - 1);
      do
      {
        v59 = *&i[v55 - 64];
        v55 -= 48;
      }

      while (v59 < v144);
      v60 = &i[v55];
      v61 = a4;
      if (v55 == -48)
      {
        v64 = a4;
        while (v60 > v64)
        {
          v62 = v64 + 48;
          v65 = *(v64 + 4);
          v64 += 48;
          if (v65 < v144)
          {
            goto LABEL_96;
          }
        }

        v62 = v64;
      }

      else
      {
        do
        {
          v62 = v61 + 48;
          v63 = *(v61 + 4);
          v61 += 48;
        }

        while (v63 >= v144);
      }

LABEL_96:
      if (v60 <= v62)
      {
        v11 = v60;
      }

      else
      {
        v66 = v62;
        v11 = v60;
        do
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(v11, v66);
          do
          {
            v67 = *(v11 - 8);
            v11 -= 48;
          }

          while (v67 < v144);
          do
          {
            v68 = *(v66 + 32);
            v66 += 48;
          }

          while (v68 >= v144);
        }

        while (v11 > v66);
      }

      v12 = (v11 + 48);
      if (v11 + 48 != i)
      {
        re::DynamicString::operator=((i - 48), v11);
        *(i - 1) = *(v11 + 2);
      }

      re::DynamicString::operator=(v11, &v142);
      *(v11 + 2) = v144;
      if (v142 && (BYTE8(v142) & 1) != 0)
      {
        (*(*v142 + 40))();
      }

      if (v60 > v62)
      {
LABEL_112:
        std::__introsort<std::_ClassicAlgPolicy,re::AssetLoadRequest::LoadStatistics::forEachStat(void({block_pointer})(re::AssetLoadRequest::LoadStatistics::AssetTypeStats const&))::$_0 &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats*>,false>(result, i, v11 + 3, v11 + 48, a5, a6 & 1);
        a6 = 0;
        v9 = v11;
        goto LABEL_3;
      }

      v69 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::AssetLoadRequest::LoadStatistics::forEachStat(void({block_pointer})(re::AssetLoadRequest::LoadStatistics::AssetTypeStats const&))::$_0 &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats*>>(result, i, (v11 + 48), (v11 + 48));
      if (!std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::AssetLoadRequest::LoadStatistics::forEachStat(void({block_pointer})(re::AssetLoadRequest::LoadStatistics::AssetTypeStats const&))::$_0 &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats*>>(v11, v11, a3, a4))
      {
        v9 = v11;
        if (v69)
        {
          goto LABEL_3;
        }

        goto LABEL_112;
      }

      a4 = v11 + 48;
      a3 = v11 + 48;
      v9 = i;
      if (v69)
      {
        return;
      }

      goto LABEL_2;
    }

    v142 = 0u;
    v143 = 0u;
    v43 = i - 48;
    *&v142 = *(i - 6);
    *v43 = 0;
    v44 = v143;
    *&v143 = *(i - 4);
    *(v43 + 2) = v44;
    *(&v143 + 1) = *(i - 3);
    *(v43 + 3) = 0;
    v45 = *(&v142 + 1);
    *(&v142 + 1) = *(i - 5);
    *(v43 + 1) = v45;
    v144 = *v42;
    if (v144 >= *(a4 + 4))
    {
      v48 = i - 64;
      do
      {
        v9 = v48 + 16;
        if (v48 + 16 <= a4)
        {
          break;
        }

        v49 = *v48;
        v48 -= 48;
      }

      while (v144 >= v49);
    }

    else
    {
      v46 = i;
      do
      {
        v9 = v46 - 48;
        v47 = *(v46 - 8);
        v46 -= 48;
      }

      while (v144 >= v47);
    }

    v50 = a4;
    if (v9 > a4)
    {
      v51 = a4;
      do
      {
        v50 = v51 + 48;
        v52 = *(v51 + 4);
        v51 += 48;
      }

      while (v144 < v52);
    }

    while (v9 > v50)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(v9, v50);
      do
      {
        v53 = *(v9 - 8);
        v9 -= 48;
      }

      while (v144 >= v53);
      do
      {
        v54 = *(v50 + 4);
        v50 += 48;
      }

      while (v144 < v54);
    }

    if (v9 + 48 != i)
    {
      re::DynamicString::operator=((i - 48), v9);
      *v42 = *(v9 + 2);
    }

    re::DynamicString::operator=(v9, &v142);
    *(v9 + 2) = v144;
    if (v142)
    {
      if (BYTE8(v142))
      {
        (*(*v142 + 40))();
      }
    }

    a6 = 0;
  }

  v70 = v9 - 48;
  v71 = *(v9 - 8);
  v72 = *(a4 + 4);
  if (v71 < *(v9 - 2))
  {
    if (v72 < v71)
    {
      v73 = a4 + 48;
      v74 = v9;
      goto LABEL_204;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(v9, (v9 - 48));
    if (*(a4 + 4) >= *(v9 - 8))
    {
      return;
    }

    v73 = a4 + 48;
    v74 = (v9 - 48);
LABEL_204:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(v74, v73);
    return;
  }

  if (v72 < v71)
  {
    v76 = a4 + 48;
    v75 = (v9 - 48);
LABEL_189:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(v75, v76);
    if (*(v9 - 8) < *(v9 - 2))
    {
      v74 = v9;
      v73 = v70;
      goto LABEL_204;
    }
  }
}

uint64_t std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 48);
  v3 = a1 - 48;
  v5 = *(v3 + 24);
  v9 = v4;
  v12 = v5;
  *(v3 + 24) = 0;
  v6 = *(v3 + 16);
  v10 = *(v3 + 8);
  v7 = (a2 - 48);
  *v3 = 0;
  v11 = v6;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  v13 = *(v3 + 32);
  *(re::DynamicString::operator=(v3, (a2 - 48)) + 2) = *(a2 - 16);
  re::DynamicString::operator=(v7, &v9);
  *(a2 - 16) = v13;
  result = v9;
  if (v9)
  {
    if (v10)
    {
      return (*(*v9 + 40))();
    }
  }

  return result;
}

void std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::AssetLoadRequest::LoadStatistics::forEachStat(void({block_pointer})(re::AssetLoadRequest::LoadStatistics::AssetTypeStats const&))::$_0 &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats*>,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a4 - 16);
  v13 = *(a6 - 16);
  if (v12 >= *(a2 - 16))
  {
    if (v13 < v12)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(a4, a6);
      if (*(a4 - 16) < *(a2 - 16))
      {
        v14 = a2;
        v15 = a4;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v14 = a2;
    if (v13 < v12)
    {
LABEL_5:
      v15 = a6;
LABEL_9:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(v14, v15);
      goto LABEL_10;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(a2, a4);
    if (*(a6 - 16) < *(a4 - 16))
    {
      v14 = a4;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a8 - 16) < *(a6 - 16))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(a6, a8);
    if (*(a6 - 16) < *(a4 - 16))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(a4, a6);
      if (*(a4 - 16) < *(a2 - 16))
      {

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(a2, a4);
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::AssetLoadRequest::LoadStatistics::forEachStat(void({block_pointer})(re::AssetLoadRequest::LoadStatistics::AssetTypeStats const&))::$_0 &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a4) >> 4);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v7 = a2 - 48;
        v10 = *(a2 - 64);
        v11 = *(a4 + 32);
        if (v10 < *(a2 - 16))
        {
          if (v11 >= v10)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(a2, a2 - 48);
            if (*(a4 + 32) >= *(a2 - 64))
            {
              return 1;
            }

            v12 = a4 + 48;
            v13 = a2 - 48;
            goto LABEL_16;
          }

LABEL_15:
          v12 = a4 + 48;
          v13 = a2;
LABEL_16:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(v13, v12);
          return 1;
        }

        if (v11 >= v10)
        {
          return 1;
        }

        v9 = a4 + 48;
        v8 = a2 - 48;
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::AssetLoadRequest::LoadStatistics::forEachStat(void({block_pointer})(re::AssetLoadRequest::LoadStatistics::AssetTypeStats const&))::$_0 &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats*>,0>(a1, a2, a2 - 48, a2 - 48, a2 - 96, a2 - 96, a3, a4 + 48);
        return 1;
      case 5:
        v7 = a2 - 48;
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::AssetLoadRequest::LoadStatistics::forEachStat(void({block_pointer})(re::AssetLoadRequest::LoadStatistics::AssetTypeStats const&))::$_0 &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats*>,0>(a1, a2, a2 - 48, a2 - 48, a2 - 96, a2 - 96, a2 - 144, a2 - 144);
        if (*(a4 + 32) >= *(a2 - 160))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(a2 - 144, a4 + 48);
        if (*(a2 - 160) >= *(a2 - 112))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(a2 - 96, a2 - 144);
        if (*(a2 - 112) >= *(a2 - 64))
        {
          return 1;
        }

        v8 = a2 - 48;
        v9 = a2 - 96;
        break;
      default:
        goto LABEL_17;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(v8, v9);
    if (*(a2 - 64) >= *(a2 - 16))
    {
      return 1;
    }

    v13 = a2;
    v12 = v7;
    goto LABEL_16;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if (*(a4 + 32) >= *(a2 - 16))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v14 = a2 - 96;
  v15 = *(a2 - 64);
  v16 = *(a2 - 112);
  if (v15 >= *(a2 - 16))
  {
    if (v16 >= v15)
    {
      goto LABEL_31;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(a2 - 48, a2 - 96);
    if (*(a2 - 64) >= *(a2 - 16))
    {
      goto LABEL_31;
    }

    v17 = a2;
    v18 = a2 - 48;
    goto LABEL_30;
  }

  v17 = a2;
  if (v16 < v15)
  {
LABEL_21:
    v18 = a2 - 96;
LABEL_30:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(v17, v18);
    goto LABEL_31;
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &,std::reverse_iterator<re::AssetLoadRequest::LoadStatistics::AssetTypeStats *> &>(a2, a2 - 48);
  if (*(a2 - 112) < *(a2 - 64))
  {
    v17 = a2 - 48;
    goto LABEL_21;
  }

LABEL_31:
  v19 = a2 - 144;
  if (a2 - 144 == a4)
  {
    return 1;
  }

  v20 = 0;
  v21 = 0;
  while (1)
  {
    v22 = v19 - 48;
    if (*(v19 - 16) < *(v14 - 16))
    {
      break;
    }

LABEL_41:
    v20 -= 48;
    v14 = v19;
    v19 -= 48;
    if (v22 == a4)
    {
      return 1;
    }
  }

  v33 = *(v19 - 24);
  *(v19 - 24) = 0;
  v23 = *(v19 - 40);
  v30 = *(v19 - 48);
  v31 = v23;
  v24 = *(v19 - 32);
  *(v19 - 48) = 0;
  v32 = v24;
  *(v19 - 40) = 0;
  *(v19 - 32) = 0;
  v34 = *(v19 - 16);
  v25 = v20;
  do
  {
    v26 = a2 + v25;
    v27 = (a2 + v25 - 144);
    re::DynamicString::operator=((a2 + v25 - 192), v27);
    *(a2 + v25 - 160) = *(a2 + v25 - 112);
    if (v25 == 96)
    {
      break;
    }

    v25 += 48;
  }

  while (v34 < *(v26 - 64));
  re::DynamicString::operator=(v27, &v30);
  *(v26 - 112) = v34;
  if (++v21 != 8)
  {
    if (v30 && (v31 & 1) != 0)
    {
      (*(*v30 + 40))();
    }

    goto LABEL_41;
  }

  v28 = v22 == a4;
  if (v30 && (v31 & 1) != 0)
  {
    (*(*v30 + 40))();
  }

  return v28;
}

uint64_t std::__function::__value_func<void ()(BOOL)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *re::allocInfo_NetworkAssetSerializationService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_56, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_56))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE193A10, "NetworkAssetSerializationService");
    __cxa_guard_release(&_MergedGlobals_56);
  }

  return &unk_1EE193A10;
}

void re::initInfo_NetworkAssetSerializationService(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xD4DD228B7CB34A8ELL;
  v8[1] = "NetworkAssetSerializationService";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_NetworkAssetSerializationService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::SerializedPayload::make(uint64_t a1@<X0>, const re::IntrospectionBase **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, RESerializedPayload **a5@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16) == 8)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a1 + 48)];
    v27 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    re::DynamicArray<char>::setCapacity(v23, 0x100uLL);
    ++v26;
    v22[0] = &unk_1F5D0A7B0;
    v22[1] = v23;
    v22[2] = 0;
    if (v11)
    {
      v12 = v25;
      v13 = *(a4 + 32);
      if (!v13)
      {
        v16 = 0;
        v17 = 0;
        v15 = v27;
LABEL_14:
        v21 = [[RESerializedPayload alloc] initWithTypeName:v10 serializedBytes:v15 size:v12 blobBytes:v17 size:v16];
        *a5 = v21;

LABEL_19:
        if (*v23)
        {
          if (v27)
          {
            (*(**v23 + 40))();
          }
        }

        return;
      }

      v14 = (*(*v13 + 16))(v13, v22);
      if (v14)
      {
        v15 = v27;
        v16 = v25 - v12;
        if (v25 == v12)
        {
          v17 = 0;
        }

        else
        {
          v17 = v27 + v12;
        }

        goto LABEL_14;
      }

      v19 = *re::foundationSerializationLogObjects(v14);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v29 = v10;
        v20 = "Failed to serialize blob for payload of type %@";
        goto LABEL_17;
      }
    }

    else
    {
      v19 = *re::foundationSerializationLogObjects(v11);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v29 = v10;
        v20 = "Failed to serialize payload of type %@";
LABEL_17:
        _os_log_fault_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_FAULT, v20, buf, 0xCu);
      }
    }

    *a5 = 0;
    goto LABEL_19;
  }

  v18 = *re::foundationSerializationLogObjects(a1);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    *v23 = 0;
    _os_log_fault_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_FAULT, "Serializing payloads for types other than structs is not supported", v23, 2u);
  }

  *a5 = 0;
}

void re::SerializedPayload::dynamicCast(uint64_t *__return_ptr a1@<X8>, id *this@<X0>)
{
  v4 = *this;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
}

re *re::SerializedPayload::deserializeIntoStruct(id *a1, uint64_t a2, re::DynamicString ***a3, uint64_t a4, uint64_t a5)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16) == 8)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a2 + 48)];
    v11 = *a1;
    v12 = [v11 typeName];
    v13 = [v10 isEqualToString:v12];

    if (v13)
    {
      v15 = [v11 serializedData];

      *buf = &unk_1F5D0B130;
      *&buf[8] = [v15 bytes];
      *&buf[16] = [v15 length];
      v29 = 0;
      v17 = v16;
      if ((v16 & 1) == 0)
      {
        v18 = *re::foundationSerializationLogObjects(v16);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          v24 = v18;
          v25 = [v11 typeName];
          v26 = 138412290;
          v27 = v25;
          _os_log_fault_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_FAULT, "Failed to deserialize payload of type %@", &v26, 0xCu);
        }
      }
    }

    else
    {
      v20 = *re::foundationSerializationLogObjects(v14);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        v22 = v20;
        v23 = [v11 typeName];
        *buf = 138412546;
        *&buf[4] = v10;
        *&buf[12] = 2112;
        *&buf[14] = v23;
        _os_log_fault_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_FAULT, "Tried to deserialize a payload into a structure with an unexpected type name (expected '%@', got '%@')", buf, 0x16u);
      }

      v17 = 0;
    }
  }

  else
  {
    v19 = *re::foundationSerializationLogObjects(a1);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_FAULT, "Serializing payloads for types other than structs is not supported", buf, 2u);
    }

    return 0;
  }

  return v17;
}

void re::SerializedPayload::typeName(re::DynamicString *__return_ptr a1@<X8>, id *this@<X0>)
{
  v5 = [*this typeName];
  v3 = v5;
  v4 = [v5 UTF8String];
}

void re::SerializedPayload::serializedData(uint64_t *__return_ptr a1@<X8>, id *this@<X0>)
{
  v3 = [*this serializedData];
  *a1 = v3;
}

void re::SerializedPayload::blobData(uint64_t *__return_ptr a1@<X8>, id *this@<X0>)
{
  v3 = [*this blobData];
  *a1 = v3;
}

uint64_t re::AssetSignpost::fireImpulse(re::AssetSignpost *this, uint64_t a2, const char *a3, const char *a4)
{
  result = re::internal::enableSignposts(0, 0);
  if (result)
  {
    if (a3)
    {
      strncpy(__dst, a3, 8uLL);
    }

    return kdebug_trace();
  }

  return result;
}

re::internal::AriadneSignpostScopeGuard *re::AssetSignpost::ScopeGuard::ScopeGuard(re::AssetSignpost::ScopeGuard *this, int a2, _BOOL8 a3, const char *__src)
{
  if (__src)
  {
    strncpy(__dst, __src, 8uLL);
    __src = *__dst;
  }

  return re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(this, a2, a3, __src, 0, 0);
}

void re::RealityFileRegistry::init(void **this)
{
  v2 = dispatch_queue_create("com.apple.CoreRE.reality-file-registry-queue", 0);
  re::ObjCObject::operator=(this, v2);

  this[10] = 8;
}

void re::RealityFileRegistry::getOrMountRealityFile(dispatch_queue_t *this@<X0>, const re::DynamicString *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3812000000;
  v18 = __Block_byref_object_copy__0;
  v19 = __Block_byref_object_dispose__0;
  v20 = "";
  v21 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3812000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  v14 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZN2re19RealityFileRegistry21getOrMountRealityFileERKNS_13DynamicStringE_block_invoke;
  v7[3] = &unk_1E871AD18;
  v7[6] = this;
  v7[7] = a2;
  v7[4] = &v15;
  v7[5] = &v8;
  dispatch_sync(*this, v7);
  v4 = v16[6];
  if (v4)
  {
    v5 = v4 + 8;
    v6 = 1;
  }

  else
  {
    v4 = v9[6];
    v6 = 0;
  }

  *a3 = v6;
  *(a3 + 8) = v4;
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v15, 8);
  if (v21)
  {
  }
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {

    *(a1 + 48) = 0;
  }
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

{
  *(result + 80) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *(result + 72) = 0;
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v3 = *(result + 64);
  *(result + 64) = *(a2 + 64);
  *(a2 + 64) = v3;
  v4 = *(result + 80);
  *(result + 80) = *(a2 + 80);
  *(a2 + 80) = v4;
  ++*(a2 + 72);
  ++*(result + 72);
  return result;
}

void __Block_byref_object_dispose__2(uint64_t a1)
{
}

{
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(a1 + 48);
}

void ___ZN2re19RealityFileRegistry21getOrMountRealityFileERKNS_13DynamicStringE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = re::RealityFileRegistryLRUCache::tryGet((v2 + 8), *(a1 + 56));
  if (v3)
  {
    v4 = v3;
    v5 = re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(v2 + 32, *(a1 + 56));
    if (v5)
    {
      ++*(*v5 + 56);
    }

    v6 = *v4;
    v7 = (*(*(a1 + 32) + 8) + 48);

    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v7, v6);
  }

  else
  {
    v8 = *(a1 + 56);
    if (*(v8 + 8))
    {
      v9 = *(v8 + 16);
    }

    else
    {
      v9 = (v8 + 9);
    }

    re::RealityFile::makeByOpeningFileAtURL(v9, v20);
    if (v20[0])
    {
      v10 = *(a1 + 56);
      v11 = re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(v2 + 32, v10);
      if (v11)
      {
        v12 = *v11;
        v14 = **v11;
        v13 = (*v11)[1];
        *(v14 + 8) = v13;
        *v13 = v14;
        --*(v2 + 24);
        std::__destroy_at[abi:nn200100]<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,0>((v12 + 2));
        operator delete(v12);
        re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(v2 + 32, v10);
      }

      while (*(v2 + 80) <= *(v2 + 60))
      {
        v15 = (v2 + 8);
        do
        {
          if (v15 == *(v2 + 16))
          {
            goto LABEL_19;
          }

          v15 = *v15;
        }

        while (v15[14]);
        re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(v2 + 32, v15 + 2);
        v17 = *v15;
        v16 = *(v15 + 1);
        *(v17 + 8) = v16;
        *v16 = v17;
        --*(v2 + 24);
        std::__destroy_at[abi:nn200100]<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,0>((v15 + 4));
        operator delete(v15);
      }

LABEL_19:
      v18 = v21;
      if (v21)
      {
        v19 = v21 + 8;
      }

      re::DynamicString::DynamicString(v22, v10);
      v22[4] = v18;
      v23 = 1;
      operator new();
    }

    re::ObjCObject::operator=((*(*(a1 + 40) + 8) + 48), &v21);
    re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v20);
  }
}

uint64_t **re::RealityFileRegistryLRUCache::tryGet(re::RealityFileRegistryLRUCache *this, const re::DynamicString *a2)
{
  result = re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(this + 24, a2);
  if (result)
  {
    v4 = *(this + 1);
    v5 = *result;
    if (v4 != *result)
    {
      v6 = v5[1];
      if (v6 != v4)
      {
        v7 = *v5;
        *(v7 + 8) = v6;
        *v6 = v7;
        v8 = *v4;
        *(v8 + 8) = v5;
        *v5 = v8;
        *v4 = v5;
        v5[1] = v4;
      }
    }

    return (v5 + 6);
  }

  return result;
}

void re::RealityFileRegistry::getMountedRealityFile(dispatch_queue_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3812000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = "";
  v13 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZN2re19RealityFileRegistry21getMountedRealityFileERKNS_13DynamicStringE_block_invoke;
  v6[3] = &unk_1E871AD40;
  v6[5] = a1;
  v6[6] = a2;
  v6[4] = &v7;
  dispatch_sync(*a1, v6);
  v4 = v8[6];
  if (v4)
  {
    *(a3 + 8) = v4;
    v5 = (v4 + 8);
    LOBYTE(v4) = 1;
  }

  *a3 = v4;
  _Block_object_dispose(&v7, 8);
  if (v13)
  {
  }
}

void ___ZN2re19RealityFileRegistry21getMountedRealityFileERKNS_13DynamicStringE_block_invoke(uint64_t a1)
{
  v2 = re::RealityFileRegistryLRUCache::tryGet((*(a1 + 40) + 8), *(a1 + 48));
  if (v2)
  {
    v3 = *v2;
    v4 = (*(*(a1 + 32) + 8) + 48);

    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v4, v3);
  }
}

uint64_t re::RealityFileRegistry::unmountRealityFile(dispatch_queue_t *a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2re19RealityFileRegistry18unmountRealityFileERKNS_13DynamicStringE_block_invoke;
  block[3] = &unk_1E871AD40;
  block[5] = a1;
  block[6] = a2;
  block[4] = &v5;
  dispatch_sync(*a1, block);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t ___ZN2re19RealityFileRegistry18unmountRealityFileERKNS_13DynamicStringE_block_invoke(void *a1)
{
  v2 = a1[5];
  result = re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(v2 + 32, a1[6]);
  if (result)
  {
    v4 = *(*result + 56);
    if (v4)
    {
      result = re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(v2 + 32, a1[6]);
      if (result)
      {
        --*(*result + 56);
      }

      LOBYTE(v4) = 1;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *(*(a1[4] + 8) + 24) = v4;
  return result;
}

uint64_t re::RealityFileRegistry::mountRealityFileFromBuffer@<X0>(dispatch_queue_t *this@<X0>, const re::Data *a2@<X1>, uint64_t a3@<X8>)
{
  re::RealityFile::makeByReadingBuffer(a2, v12);
  if (v12[0])
  {
    uuid_generate_random(out);
    v5 = (*&out[8] + (*out << 6) + (*out >> 2) - 0x61C8864680B583E9) ^ *out;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3321888768;
    v9[2] = ___ZN2re19RealityFileRegistry26mountRealityFileFromBufferERKNS_4DataE_block_invoke;
    v9[3] = &__block_descriptor_64_a8_48c69_ZTSN2re6ResultINS_9SharedPtrINS_11RealityFileEEENS_12WrappedErrorEEE_e5_v8__0l;
    v9[4] = this;
    v9[5] = v5;
    v10[0] = v12[0];
    if (v12[0] == 1)
    {
      v11 = v13;
      if (v13)
      {
        v6 = v13 + 8;
      }
    }

    else
    {
      v11 = v13;
    }

    dispatch_sync(*this, v9);
    *a3 = 1;
    *(a3 + 8) = v5;
    re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v10);
  }

  else
  {
    v7 = v13;
    *a3 = 0;
    *(a3 + 8) = v7;
  }

  return re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v12);
}

void *___ZN2re19RealityFileRegistry26mountRealityFileFromBufferERKNS_4DataE_block_invoke(void *a1)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v3 = a1[4];
  v2 = a1[5];
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v2 ^ (v2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v2 ^ (v2 >> 30))) >> 27));
  result = re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v7, v3 + 88, v2, v4 ^ (v4 >> 31));
  if (HIDWORD(v8) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long long,re::SharedPtr<re::RealityFile>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v3 + 88, v8, v7);
    v6 = a1[7];
    result[1] = a1[5];
    result[2] = v6;
    if (v6)
    {
      result = (v6 + 8);
    }

    ++*(v3 + 128);
  }

  return result;
}

void re::RealityFileRegistry::tryGetRealityFile(dispatch_queue_t *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2re19RealityFileRegistry17tryGetRealityFileEy_block_invoke;
  block[3] = &unk_1E871AD40;
  block[4] = &v8;
  block[5] = this;
  block[6] = a2;
  dispatch_sync(*this, block);
  v4 = v9[3];
  if (v4)
  {
    v5 = *v4;
    *a3 = v5;
    if (v5)
    {
      v6 = (v5 + 8);
    }
  }

  else
  {
    *a3 = 0;
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t ___ZN2re19RealityFileRegistry17tryGetRealityFileEy_block_invoke(void *a1)
{
  v3 = a1[5];
  v2 = a1[6];
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v2 ^ (v2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v2 ^ (v2 >> 30))) >> 27));
  result = re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v7, v3 + 88, v2, v4 ^ (v4 >> 31));
  if (v8 == 0x7FFFFFFF)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v3 + 104) + 32 * v8 + 16;
  }

  *(*(a1[4] + 8) + 24) = v6;
  return result;
}

uint64_t re::RealityFileRegistry::unmountRealityFile(dispatch_queue_t *this, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2re19RealityFileRegistry18unmountRealityFileEy_block_invoke;
  block[3] = &unk_1E871AD40;
  block[4] = &v5;
  block[5] = this;
  block[6] = a2;
  dispatch_sync(*this, block);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void ___ZN2re19RealityFileRegistry18unmountRealityFileEy_block_invoke(void *a1)
{
  v3 = a1[5];
  v2 = a1[6];
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v2 ^ (v2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v2 ^ (v2 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v12, v3 + 88, v2, v4 ^ (v4 >> 31));
  v5 = v14;
  if (v14 != 0x7FFFFFFF)
  {
    v6 = *(v3 + 104);
    v7 = (v6 + 32 * v14);
    v8 = *v7 & 0x7FFFFFFF;
    if (v15 == 0x7FFFFFFF)
    {
      *(*(v3 + 96) + 4 * v13) = v8;
    }

    else
    {
      *(v6 + 32 * v15) = *(v6 + 32 * v15) & 0x80000000 | v8;
    }

    v9 = *v7;
    if (*v7 < 0)
    {
      v9 &= ~0x80000000;
      *v7 = v9;
      v10 = *(v7 + 2);
      if (v10)
      {

        *(v7 + 2) = 0;
        v6 = *(v3 + 104);
        v9 = *(v6 + 32 * v5);
      }
    }

    v11 = *(v3 + 128);
    *(v6 + 32 * v5) = *(v3 + 124) | v9 & 0x80000000;
    --*(v3 + 116);
    *(v3 + 124) = v5;
    *(v3 + 128) = v11 + 1;
  }

  *(*(a1[4] + 8) + 24) = v5 != 0x7FFFFFFF;
}

void re::RealityFileRegistry::getOrMountRealityFile(uint64_t *__return_ptr a1@<X8>, re::RealityFileDescriptor *this@<X1>, dispatch_queue_t *a3@<X0>, os_unfair_lock_s *a4@<X2>, os_unfair_lock_s *a5@<X3>)
{
  v7 = *this;
  if ((v7 - 1) < 2)
  {
LABEL_4:
    re::RealityFileDescriptor::getURL(this, a4, a5, &v26);
    if (v26)
    {
      v8 = re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a3 + 4), &v27);
      if (v8)
      {
        v9 = *(*v8 + 56) != 0;
      }

      else
      {
        v9 = 0;
      }

      re::RealityFileRegistry::getOrMountRealityFile(a3, &v27, a1);
      if (*a1 == 1 && !v9)
      {
        v16 = re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a3 + 4), &v27);
        if (v16)
        {
          --*(*v16 + 56);
        }
      }
    }

    else
    {
      if (v28)
      {
        v10 = v30;
      }

      else
      {
        v10 = v29;
      }

      re::WrappedError::make(&v21, @"RERealityFileErrorDomain", 0xD, v10);
      v11 = v21;
      v21 = 0;
      *a1 = 0;
      a1[1] = v11;
    }

LABEL_25:
    if (v27)
    {
      if (v28)
      {
        (*(*v27 + 40))();
      }
    }

    return;
  }

  if (v7 != 3)
  {
    if (v7 != 4)
    {
      re::WrappedError::make(&v26, @"RERealityFileErrorDomain", 0xA, "The realityFileDescriptor is invalid.");
      v15 = v26;
      v26 = 0;
      *a1 = 0;
      a1[1] = v15;

      return;
    }

    goto LABEL_4;
  }

  re::RealityFileDescriptor::getMemoryFileID(this, &v26);
  if (v26)
  {
    re::RealityFileRegistry::tryGetRealityFile(a3, v27, &v25);
    v13 = v25;
    if (v25)
    {
      v14 = (v25 + 8);
      *a1 = 1;
      a1[1] = v13;
    }

    else
    {
      re::DynamicString::format(&v21, "No reality file is registered with MemoryFileID %llu.", v12, v27);
      if (v22)
      {
        v19 = *&v23[7];
      }

      else
      {
        v19 = v23;
      }

      re::WrappedError::make(&v24, @"RERealityFileErrorDomain", 0xC, v19);
      v20 = v24;
      v24 = 0;
      *a1 = 0;
      a1[1] = v20;

      if (v21 && (v22 & 1) != 0)
      {
        (*(*v21 + 40))();
      }
    }
  }

  else
  {
    if (v28)
    {
      v17 = v30;
    }

    else
    {
      v17 = v29;
    }

    re::WrappedError::make(&v21, @"RERealityFileErrorDomain", 0xC, v17);
    v18 = v21;
    v21 = 0;
    *a1 = 0;
    a1[1] = v18;
  }

  if ((v26 & 1) == 0)
  {
    goto LABEL_25;
  }
}

void re::RealityFileRegistry::getMountedRealityFile(uint64_t *__return_ptr a1@<X8>, re::RealityFileDescriptor *this@<X1>, dispatch_queue_t *a3@<X0>, os_unfair_lock_s *a4@<X2>, os_unfair_lock_s *a5@<X3>)
{
  v7 = *this;
  if ((v7 - 1) < 2)
  {
    goto LABEL_4;
  }

  if (v7 != 3)
  {
    if (v7 != 4)
    {
      *a1 = 0;
      return;
    }

LABEL_4:
    re::RealityFileDescriptor::getURL(this, a4, a5, v10);
    if (v10[0])
    {
      re::RealityFileRegistry::getMountedRealityFile(a3, &v11, a1);
      goto LABEL_12;
    }

LABEL_11:
    *a1 = 0;
LABEL_12:
    if (v11)
    {
      if (v12)
      {
        (*(*v11 + 40))();
      }
    }

    return;
  }

  re::RealityFileDescriptor::getMemoryFileID(this, v10);
  if (v10[0] != 1)
  {
    goto LABEL_11;
  }

  re::RealityFileRegistry::tryGetRealityFile(a3, v11, &v9);
  v8 = v9;
  if (v9)
  {
    a1[1] = v9;
    v8 = 1;
  }

  *a1 = v8;
  if ((v10[0] & 1) == 0)
  {
    goto LABEL_12;
  }
}

uint64_t re::RealityFileRegistry::unmountRealityFile(dispatch_queue_t *a1, re::RealityFileDescriptor *this, os_unfair_lock_s *a3, os_unfair_lock_s *a4)
{
  v5 = *this;
  if ((v5 - 1) >= 2)
  {
    if (v5 == 3)
    {
      re::RealityFileDescriptor::getMemoryFileID(this, v8);
      if (v8[0] == 1)
      {
        v6 = re::RealityFileRegistry::unmountRealityFile(a1, v9);
        if (v8[0])
        {
          return v6;
        }

        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (v5 != 4)
    {
      return 0;
    }
  }

  re::RealityFileDescriptor::getURL(this, a3, a4, v8);
  if (v8[0] != 1)
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  v6 = re::RealityFileRegistry::unmountRealityFile(a1, &v9);
LABEL_10:
  if (v9 && (v10 & 1) != 0)
  {
    (*(*v9 + 40))();
  }

  return v6;
}

uint64_t re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v6, a1, a2, v4);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 56 * v7 + 40;
  }
}

void re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v11, a2);
  re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v11, a1, a2, v4);
  v5 = v13;
  if (v13 != 0x7FFFFFFF)
  {
    v6 = *(a1 + 16);
    v7 = (v6 + 56 * v13);
    v8 = *v7 & 0x7FFFFFFF;
    if (v14 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v12) = v8;
    }

    else
    {
      *(v6 + 56 * v14) = *(v6 + 56 * v14) & 0x80000000 | v8;
    }

    v9 = *v7;
    if (*v7 < 0)
    {
      *v7 = v9 & 0x7FFFFFFF;
      re::DynamicString::deinit((v7 + 2));
      v6 = *(a1 + 16);
      v9 = *(v6 + 56 * v5);
    }

    *(v6 + 56 * v5) = *(a1 + 36) | v9 & 0x80000000;
    --*(a1 + 28);
    v10 = *(a1 + 40) + 1;
    *(a1 + 36) = v5;
    *(a1 + 40) = v10;
  }
}

uint64_t re::HashTable<unsigned long long,re::SharedPtr<re::RealityFile>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = *(a1 + 16);
          *&v27[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v14 = *&v27[32];
          *(a1 + 24) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 16);
            do
            {
              if ((*(v18 - 2) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,re::SharedPtr<re::RealityFile>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v18[1] % *(a1 + 24), v18[1]);
                v20 = *v18;
                *(v19 + 8) = *(v18 - 1);
                *(v19 + 16) = v20;
                *v18 = 0;
              }

              ++v17;
              v18 += 4;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v27);
        }
      }

      else
      {
        if (v8)
        {
          v23 = 2 * v7;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 32 * v5);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 32 * v5);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = v21 + 32 * v5;
  *v24 = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *v24 = *(v25 + 4 * a2) | 0x80000000;
  *(v24 + 24) = a3;
  *(v25 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v21 + 32 * v5;
}

uint64_t re::Result<re::SharedPtr<re::RealityFile>,re::WrappedError>::Result(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  *a1 = v3;
  v4 = *(a2 + 1);
  if (v3 == 1)
  {
    *(a1 + 8) = v4;
    if (v4)
    {
      v5 = (v4 + 8);
    }
  }

  else
  {
    *(a1 + 8) = v4;
  }

  return a1;
}

BOOL re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(_BOOL8 result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = result;
  v6 = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a4 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(a2 + 16);
  result = re::DynamicString::operator==(v10 + 56 * v8 + 8, a3);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 56 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::DynamicString::operator==(v10 + 56 * v11 + 8, a3);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 56 * v12) & 0x7FFFFFFF;
      v8 = v12;
      if (v11 == 0x7FFFFFFF)
      {
        v8 = v12;
        goto LABEL_7;
      }
    }

    v6 = v12;
  }

LABEL_7:
  *v5 = a4;
  *(v5 + 8) = v7;
  *(v5 + 12) = v6;
  *(v5 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v31, 0, 36);
          *&v31[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v31, v9, v8);
          v11 = *v31;
          *v31 = *a1;
          *a1 = v11;
          v12 = *&v31[16];
          v13 = *(a1 + 16);
          *&v31[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v31[24];
          *&v31[24] = *(a1 + 24);
          v14 = *&v31[32];
          *(a1 + 24) = v15;
          ++*&v31[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v13 + v17 + 48) % *(a1 + 24), *(v13 + v17 + 48));
                v20 = (*&v31[16] + v17);
                *(v19 + 24) = 0u;
                *(v19 + 8) = 0u;
                *(v19 + 32) = v20[4];
                v21 = v20[2];
                *(v19 + 8) = v20[1];
                v20[1] = 0;
                v22 = v20[3];
                v20[4] = 0;
                v24 = *(v19 + 16);
                v23 = *(v19 + 24);
                *(v19 + 16) = v21;
                *(v19 + 24) = v22;
                v20[2] = v24;
                v20[3] = v23;
                v13 = *&v31[16];
                *(v19 + 40) = *(*&v31[16] + v17 + 40);
                v16 = *&v31[32];
              }

              ++v18;
              v17 += 56;
            }

            while (v18 < v16);
          }

          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v31);
        }
      }

      else
      {
        if (v8)
        {
          v27 = 2 * v7;
        }

        else
        {
          v27 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v25 = *(a1 + 16);
    v26 = *(v25 + 56 * v5);
  }

  else
  {
    v25 = *(a1 + 16);
    v26 = *(v25 + 56 * v5);
    *(a1 + 36) = v26 & 0x7FFFFFFF;
  }

  v28 = v25 + 56 * v5;
  *v28 = v26 | 0x80000000;
  v29 = *(a1 + 8);
  *v28 = *(v29 + 4 * a2) | 0x80000000;
  *(v29 + 4 * a2) = v5;
  *(v28 + 48) = a3;
  ++*(a1 + 28);
  return v25 + 56 * v5;
}

void re::ResourceSharingManager::xpcInterface(uint64_t *__return_ptr a1@<X8>)
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5D43E20];
  *a1 = v2;
}

double re::ResourceSharingManager::ResourceSharingManager(re::ResourceSharingManager *this)
{
  *this = &unk_1F5CBCBD8;
  *(this + 1) = &unk_1F5CBCC40;
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  return result;
}

void re::ResourceSharingManager::~ResourceSharingManager(id *this)
{
  re::ResourceSharingManager::deinit(this);
  re::DynamicArray<re::ResourceSharingManager::Connection>::deinit((this + 8));
  v2 = this[7];
  if (v2)
  {

    this[7] = 0;
  }
}

{
  re::ResourceSharingManager::~ResourceSharingManager(this);

  JUMPOUT(0x1E6906520);
}

void **re::ResourceSharingManager::deinit(void **this)
{
  if (*(this + 16) == 1)
  {
    block[7] = v1;
    block[8] = v2;
    v3 = this;
    (*(*this[3] + 240))(this[3], 0);
    v4 = v3[5];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN2re22ResourceSharingManager6deinitEv_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v3;
    dispatch_sync(v4, block);
    re::DynamicArray<re::ResourceSharingManager::Connection>::deinit((v3 + 8));
    v5 = v3[7];
    if (v5)
    {

      v3[7] = 0;
    }

    v3[6] = 0;
    re::ObjCObject::operator=(v3 + 5, 0);
    this = re::ObjCObject::operator=(v3 + 4, 0);
    v3[3] = 0;
    *(v3 + 16) = 0;
  }

  return this;
}

void non-virtual thunk tore::ResourceSharingManager::~ResourceSharingManager(id *this)
{
  re::ResourceSharingManager::~ResourceSharingManager(this - 1);
}

{
  re::ResourceSharingManager::~ResourceSharingManager(this - 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ResourceSharingManager::init(re::ResourceSharingManager *this, AssetService *a2, id *a3, uint64_t a4)
{
  *(this + 3) = a2;
  re::ObjCObject::operator=(this + 4, a3);
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_get_global_queue(21, 0);
  v8 = dispatch_queue_create_with_target_V2("com.apple.RealityKit.resource-sharing", v6, v7);
  re::ObjCObject::operator=(this + 5, v8);

  *(this + 6) = a4;
  re::make::shared::object<re::internal::ResourceRequestQueue>(v9, &v14);
  v11 = *(this + 7);
  *(this + 7) = v14;
  v14 = v11;
  if (v11)
  {
  }

  v12 = this + 64;
  re::DynamicArray<re::ResourceSharingManager::Connection>::setCapacity(v12, 2uLL);
  ++*(v12 + 6);
  result = (*(**(v12 - 5) + 240))(*(v12 - 5), v12 - 56);
  *(v12 - 48) = 1;
  return result;
}

void ___ZN2re22ResourceSharingManager6deinitEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = *(v1 + 96);
    v4 = 168 * v2;
    do
    {
      re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(v3 + 72);
      re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(v3 + 120);
      re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(v3 + 24);
      v5 = *(v3 + 16);
      v7 = re::PeerIDValidator::instance(v6);
      re::PeerIDValidator::remove_impl(v7, v5);
      [*v3 invalidate];
      [*(v3 + 8) invalidate];
      re::ObjCObject::operator=(v3, 0);
      v8 = *(v3 + 8);
      *(v3 + 8) = 0;

      v3 += 168;
      v4 -= 168;
    }

    while (v4);
  }
}

uint64_t re::DynamicArray<re::ResourceSharingManager::Connection>::deinit(uint64_t a1)
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
        v5 = (v3 + 72);
        v6 = 168 * v4;
        do
        {
          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v5 + 6);
          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v5);
          re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(v5 - 6);

          v5 += 21;
          v6 -= 168;
        }

        while (v6);
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

void re::ResourceSharingManager::connect(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(a1 + 32));
  v6 = [[REResourceSharingClientObject alloc] initWithAssetService:*(a1 + 24) resourceSharingManager:a1 peerID:a3];
  re::xpc::Connection::makeWithListenerEndpoint(a2, &v26);
  v7 = v6;
  *&buf = v7;
  re::xpc::Connection::setExportedObject(&v26, &buf);

  re::ResourceSharingManager::xpcInterface(&buf);
  re::xpc::Connection::setExportedInterface(&v26, &buf);

  re::ResourceFetchManager::xpcInterface(&buf);
  re::xpc::Connection::setRemoteObjectInterface(&v26, &buf);

  re::xpc::Connection::setQueue(&v26, (a1 + 40));
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = ___ZN2re22ResourceSharingManager7connectERKNS_3xpc16ListenerEndpointEy_block_invoke;
  v24[3] = &unk_1E871AA90;
  v8 = v7;
  v25 = v8;
  [v26 setInterruptionHandler:v24];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = ___ZN2re22ResourceSharingManager7connectERKNS_3xpc16ListenerEndpointEy_block_invoke_54;
  v22[3] = &unk_1E871AA90;
  v9 = v8;
  v23 = v9;
  v10 = *re::resourceSharingLogObjects([v26 setInvalidationHandler:v22]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a3;
    _os_log_debug_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEBUG, "Establishing new resource connection with peer ID %llu", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x2020000000;
  v29 = 1;
  v11 = *(a1 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN2re22ResourceSharingManager7connectERKNS_3xpc16ListenerEndpointEy_block_invoke_55;
  block[3] = &unk_1F5CBCC78;
  p_buf = &buf;
  v19 = a1;
  v20 = a3;
  v12 = v11;
  v21 = v26;
  v13 = v9;
  v17 = v13;
  dispatch_sync(v12, block);

  if (*(*(&buf + 1) + 24) == 1)
  {
    v14 = objc_opt_new();
    [v26 resume];
    re::xpc::Connection::remoteObjectProxy(&v15, &v26);
    [v15 associateConnectionWithPeerID:*(a1 + 48) clientPorts:v14];

    (*(**(a1 + 24) + 384))();
  }

  _Block_object_dispose(&buf, 8);
}