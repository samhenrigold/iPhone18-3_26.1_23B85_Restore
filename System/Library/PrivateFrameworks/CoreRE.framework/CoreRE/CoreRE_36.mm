void re::RealityFile::makeByReadingBuffer(re::RealityFile *this@<X0>, uint64_t a2@<X8>)
{
  if (*this)
  {
    re::make::shared::object<re::RealityFile,re::Data const&>(this, &v10);
    re::RealityFile::init(&v8, v10, v3);
    if (v8 == 1)
    {
      v4 = v10;
      if (v10)
      {
        v5 = v10 + 8;
      }

      *a2 = 1;
      *(a2 + 8) = v4;
    }

    else
    {
      v7 = v9;
      *a2 = 0;
      *(a2 + 8) = v7;
    }

    if (v10)
    {
    }
  }

  else
  {
    v6 = v10;
    v10 = 0;
    *a2 = 0;
    *(a2 + 8) = v6;

    if (v8 && (v9 & 1) != 0)
    {
      (*(*v8 + 40))();
    }
  }
}

void re::RealityFile::verifyRealityFileIntegrityAtURL(re::RealityFile *this@<X0>, _BYTE *a3@<X8>)
{
  if (this)
  {
    re::RealityArchive::verifyRealityArchiveAtFilePath(&v9, this);
    if (v9 == 1)
    {
      v4 = v10;
      *a3 = 1;
      a3[8] = v4;
      return;
    }

    v8 = v13;
    v13 = 0;
    *a3 = 0;
    *(a3 + 1) = v8;

    if ((v9 & 1) == 0)
    {
      v6 = v10;
      if (v10)
      {
        if (v11)
        {
          v7 = v12;
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    re::DynamicString::setCapacity(&v9, 0);
    v5 = v13;
    v13 = 0;
    *a3 = 0;
    *(a3 + 1) = v5;

    v6 = v9;
    if (v9 && (v10 & 1) != 0)
    {
      v7 = v11;
LABEL_11:
      (*(*v6 + 40))(v6, v7);
    }
  }
}

re::DynamicString *re::RealityFile::makeArchiveReader@<X0>(re::RealityFile *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 16);
  if (v3)
  {
    re::RealityArchive::copy(&v8, v3);
    if (v8)
    {
      v4 = v9;
      v9 = 0;
      v5 = 1;
    }

    else
    {
      v4 = v10;
      v10 = 0;

      v5 = 0;
    }

    *a2 = v5;
    *(a2 + 8) = v4;
    return re::Result<re::SharedPtr<re::RealityArchive>,re::DynamicString>::~Result(&v8);
  }

  else
  {
    v6 = v10;
    v10 = 0;
    *a2 = 0;
    *(a2 + 8) = v6;

    result = v8;
    if (v8 && (v9 & 1) != 0)
    {
      return (*(*v8 + 40))();
    }
  }

  return result;
}

uint64_t re::RealityFile::newDataByLoading@<X0>(re::RealityFile *this@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  re::RealityFile::makeArchiveReader(this, v13);
  if (v13[0])
  {
    re::RealityArchive::newDataByLoadingEntryWithName(&v10, v14, a2);
    if (v10 == 1)
    {
      v5 = v11;
      *a3 = 1;
      *(a3 + 8) = v5;
    }

    else
    {
      v8 = v9;
      v9 = 0;
      *a3 = 0;
      *(a3 + 8) = v8;

      if (v10 & 1) == 0 && v11 && (v12)
      {
        (*(*v11 + 40))();
      }
    }
  }

  else
  {
    v6 = v14;
    *a3 = 0;
    *(a3 + 8) = v6;
  }

  return re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v13);
}

uint64_t re::RealityFile::newDataByLoading@<X0>(re::RealityFile *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = (*(*a2 + 40))(a2);
    re::DynamicString::format(&v10, "%s%s", v6, "assets/", v5);
    if (v11)
    {
      v7 = *&v12[7];
    }

    else
    {
      v7 = v12;
    }

    re::RealityFile::newDataByLoading(a1, v7, a3);
  }

  else
  {
    v8 = v13;
    v13 = 0;
    *a3 = 0;
    *(a3 + 8) = v8;
  }

  result = v10;
  if (v10)
  {
    if (v11)
    {
      return (*(*v10 + 40))();
    }
  }

  return result;
}

uint64_t re::RealityFile::getInputStream@<X0>(re::RealityFile *this@<X0>, char *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  re::RealityFile::makeArchiveReader(this, v28);
  v8 = v29;
  if ((v28[0] & 1) == 0)
  {
    v10 = v29;
    *a4 = 0;
    *(a4 + 8) = v10;
    return re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v28);
  }

  v26 = 0;
  v27 = 0;
  if (re::RealityArchive::uncompressedEntryRange(v29, a2, &v27, &v26))
  {
    if (*(this + 32))
    {
      v9 = *(this + 5);
    }

    else
    {
      v9 = this + 33;
    }

    re::FileSeekableInputStream::FileSeekableInputStream(v20, v9, v27, v26);
    re::FileSeekableInputStream::FileSeekableInputStream(v22, v20);
    v23 = 0;
    LOBYTE(v24[0]) = 0;
    v25 = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<re::FileSeekableInputStream,re::CFDataSeekableInputStream,re::RealityArchiveFileSeekableInputStream>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::FileSeekableInputStream,re::CFDataSeekableInputStream,re::RealityArchiveFileSeekableInputStream>,(std::__variant_detail::_Trait)1>>(v24, v22);
    *a4 = 1;
    *(a4 + 8) = 0;
    *(a4 + 224) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<re::FileSeekableInputStream,re::CFDataSeekableInputStream,re::RealityArchiveFileSeekableInputStream>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::FileSeekableInputStream,re::CFDataSeekableInputStream,re::RealityArchiveFileSeekableInputStream>,(std::__variant_detail::_Trait)1>>((a4 + 8), v24);
    if (v25 != -1)
    {
      off_1F5CB9D38[v25](&v15, v24);
    }

    v25 = -1;
    if (v23 != -1)
    {
      off_1F5CB9D38[v23](&v15, v22);
    }

    v23 = -1;
    re::FileSeekableInputStream::~FileSeekableInputStream(v20);
    return re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v28);
  }

  if (a3)
  {
    v19 = this;
    if (this)
    {
      v11 = this + 8;
    }

    v18 = v8;
    if (v8)
    {
      v12 = v8 + 8;
      re::RealityArchiveFileSeekableInputStream::RealityArchiveFileSeekableInputStream(v20, &v19, &v18, a2);
    }

    else
    {
      re::RealityArchiveFileSeekableInputStream::RealityArchiveFileSeekableInputStream(v20, &v19, &v18, a2);
    }

    if (v19)
    {

      v19 = 0;
    }

    if (v21[17])
    {
      re::RealityArchiveFileSeekableInputStream::RealityArchiveFileSeekableInputStream(v22, v20);
      v23 = 2;
      LOBYTE(v24[0]) = 0;
      v25 = -1;
      std::__variant_detail::__ctor<std::__variant_detail::__traits<re::FileSeekableInputStream,re::CFDataSeekableInputStream,re::RealityArchiveFileSeekableInputStream>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::FileSeekableInputStream,re::CFDataSeekableInputStream,re::RealityArchiveFileSeekableInputStream>,(std::__variant_detail::_Trait)1>>(v24, v22);
      *a4 = 1;
      *(a4 + 8) = 0;
      *(a4 + 224) = -1;
      std::__variant_detail::__ctor<std::__variant_detail::__traits<re::FileSeekableInputStream,re::CFDataSeekableInputStream,re::RealityArchiveFileSeekableInputStream>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::FileSeekableInputStream,re::CFDataSeekableInputStream,re::RealityArchiveFileSeekableInputStream>,(std::__variant_detail::_Trait)1>>((a4 + 8), v24);
      if (v25 != -1)
      {
        off_1F5CB9D38[v25](&v15, v24);
      }

      v25 = -1;
      if (v23 != -1)
      {
        off_1F5CB9D38[v23](&v15, v22);
      }

      re::RealityArchiveFileSeekableInputStream::~RealityArchiveFileSeekableInputStream(v20);
      return re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v28);
    }

    re::RealityArchiveFileSeekableInputStream::~RealityArchiveFileSeekableInputStream(v20);
  }

  re::RealityArchive::newDataByLoadingEntryWithName(&v15, v8, a2);
  if (v15)
  {
    re::CFDataSeekableInputStream::CFDataSeekableInputStream(v20, cf, 1, 0);
    CFRelease(cf);
    re::CFDataSeekableInputStream::CFDataSeekableInputStream(v22, v20);
    v23 = 1;
    LOBYTE(v24[0]) = 0;
    v25 = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<re::FileSeekableInputStream,re::CFDataSeekableInputStream,re::RealityArchiveFileSeekableInputStream>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::FileSeekableInputStream,re::CFDataSeekableInputStream,re::RealityArchiveFileSeekableInputStream>,(std::__variant_detail::_Trait)1>>(v24, v22);
    *a4 = 1;
    *(a4 + 8) = 0;
    *(a4 + 224) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<re::FileSeekableInputStream,re::CFDataSeekableInputStream,re::RealityArchiveFileSeekableInputStream>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::FileSeekableInputStream,re::CFDataSeekableInputStream,re::RealityArchiveFileSeekableInputStream>,(std::__variant_detail::_Trait)1>>((a4 + 8), v24);
    if (v25 != -1)
    {
      off_1F5CB9D38[v25](&v30, v24);
    }

    v25 = -1;
    if (v23 != -1)
    {
      off_1F5CB9D38[v23](&v30, v22);
    }

    v20[0] = &unk_1F5D0A588;
    re::CFDataSeekableInputStream::postDetachCleanup(v20);
    v20[0] = &unk_1F5D0A468;
    re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v21);
  }

  else
  {
    v13 = v24[0];
    v24[0] = 0;
    *a4 = 0;
    *(a4 + 8) = v13;
  }

  if (v15 & 1) == 0 && cf && (v17)
  {
    (*(*cf + 40))();
  }

  return re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(v28);
}

void re::RealityFile::getInputStreamSources(re::RealityArchiveEntryTable **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    v13 = v78;
    v78 = 0;
    *a3 = 0;
    *(a3 + 8) = v13;

    if (v86 && (v87 & 1) != 0)
    {
      (*(*v86 + 40))();
    }

    return;
  }

  v5 = (*(*a2 + 48))(a2);
  v7 = v6;
  v87 = 0;
  LODWORD(v88) = 1;
  v8 = &v89;
  v89 = 0;
  v90 = 0;
  re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::setCapacity(&v86, v7);
  v10 = v88;
  LODWORD(v88) = v88 + 2;
  v11 = (v10 & 1) == 0;
  v12 = 2;
  if (v11)
  {
    v12 = v89;
  }

  if (v12 >= v7)
  {
    if (v7)
    {
      goto LABEL_10;
    }

LABEL_36:
    v78 = 0;
    v79 = 0;
    LODWORD(v80) = 1;
    v81 = 0;
    v82 = 0;
    if (v86)
    {
      v78 = v86;
      re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::setCapacity(&v78, v87);
      v28 = v80;
      v29 = v80 + 2;
      LODWORD(v80) = v80 + 2;
      v30 = v87;
      v31 = v79;
      if (v87 >= v79)
      {
        re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::setCapacity(&v78, v87);
        v43 = v88 & 1;
        v44 = v90;
        if (v88)
        {
          v45 = &v89;
        }

        else
        {
          v45 = v90;
        }

        v46 = v79;
        v47 = v80;
        if (v79)
        {
          if (v80)
          {
            v48 = &v81;
          }

          else
          {
            v48 = v82;
          }

          v49 = 8 * v79;
          do
          {
            v50 = *v45++;
            re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v48++, v50);
            v49 -= 8;
          }

          while (v49);
          v47 = v80;
          v46 = v79;
          v44 = v90;
          v43 = v88 & 1;
        }

        if (v43)
        {
          v44 = &v89;
        }

        if (v46 != v30)
        {
          if (v47)
          {
            v51 = &v81;
          }

          else
          {
            v51 = v82;
          }

          v52 = &v44[v46];
          v53 = &v51[v46];
          v54 = 8 * v30 - 8 * v46;
          do
          {
            v55 = *v52;
            *v53 = *v52;
            if (v55)
            {
              v56 = (v55 + 8);
            }

            ++v52;
            ++v53;
            v54 -= 8;
          }

          while (v54);
        }
      }

      else
      {
        if ((v88 & 1) == 0)
        {
          v8 = v90;
        }

        v32 = v82;
        if (v87)
        {
          if (v28)
          {
            v33 = &v81;
          }

          else
          {
            v33 = v82;
          }

          v34 = 8 * v87;
          do
          {
            v35 = *v8++;
            re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v33++, v35);
            v34 -= 8;
          }

          while (v34);
          v29 = v80;
          v32 = v82;
          v31 = v79;
        }

        if (v29)
        {
          v36 = &v81;
        }

        else
        {
          v36 = v32;
        }

        if (v30 != v31)
        {
          v37 = &v36[v30];
          v38 = 8 * v31 - 8 * v30;
          do
          {
            if (*v37)
            {

              *v37 = 0;
            }

            ++v37;
            v38 -= 8;
          }

          while (v38);
        }
      }

      v79 = v30;
      v57 = v80;
      *(a3 + 8) = 0;
      v41 = (a3 + 8);
      *(a3 + 24) = 1;
      v42 = (a3 + 24);
      *a3 = 1;
      *(a3 + 16) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      if ((v57 & 1) == 0)
      {
        re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::clear(a3 + 8);
        v58 = *(a3 + 8);
        v59 = *(a3 + 16);
        v60 = v79;
        *(a3 + 8) = v78;
        *(a3 + 16) = v60;
        v61 = *(a3 + 24);
        *(a3 + 24) = v61 & 0xFFFFFFFE;
        v63 = *(a3 + 32);
        v62 = *(a3 + 40);
        v64 = v82;
        *(a3 + 32) = v81;
        *(a3 + 40) = v64;
        v78 = v58;
        v79 = v59;
        LODWORD(v80) = v80 & 0xFFFFFFFE | v61 & 1;
        v81 = v63;
        v82 = v62;
LABEL_109:
        LODWORD(v80) = v80 + 2;
        *v42 += 2;
        re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::deinit(&v78);
        goto LABEL_110;
      }

      if (v30)
      {
        *(a3 + 8) = v78;
        re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::setCapacity((a3 + 8), v30);
        v65 = v80 & 1;
        v66 = v82;
        if (v80)
        {
          v67 = &v81;
        }

        else
        {
          v67 = v82;
        }

        v68 = *(a3 + 16);
        v69 = *(a3 + 24);
        if (v68)
        {
          if (v69)
          {
            v70 = (a3 + 32);
          }

          else
          {
            v70 = *(a3 + 40);
          }

          v71 = 8 * v68;
          do
          {
            v72 = *v70;
            *v70++ = *v67;
            *v67++ = v72;
            v71 -= 8;
          }

          while (v71);
          v69 = *v42;
          v66 = v82;
          v65 = v80 & 1;
        }

        if (v65)
        {
          v73 = &v81;
        }

        else
        {
          v73 = v66;
        }

        if (v68 != v30)
        {
          v74 = *(a3 + 40);
          if (v69)
          {
            v74 = a3 + 32;
          }

          v75 = &v73[v68];
          v76 = (v74 + 8 * v68);
          v77 = 8 * v30 - 8 * v68;
          do
          {
            *v76++ = *v75;
            *v75++ = 0;
            v77 -= 8;
          }

          while (v77);
        }

        *(a3 + 16) = v30;
        re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::clear(&v78);
        goto LABEL_109;
      }
    }

    else
    {
      *a3 = 1;
      *(a3 + 8) = 0;
      v41 = (a3 + 8);
      *(a3 + 24) = 1;
      v42 = (a3 + 24);
      *(a3 + 16) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
    }

    re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::deinit(v41);
    *v41 = v78;
    goto LABEL_109;
  }

  re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::setCapacity(&v86, v7);
LABEL_10:
  v14 = 32 * v7;
  v15 = (v5 + 16);
  while (1)
  {
    v16 = (*(v15 - 1) & 1) != 0 ? *v15 : (v15 - 7);
    re::DynamicString::format(&v78, "%s%s", v9, "assets/", v16);
    v17 = (v79 & 1) != 0 ? v80 : &v79 + 1;
    if (!re::RealityArchiveEntryTable::tryFindEntryIndex(a1[15], v17))
    {
      break;
    }

    v19 = re::globalAllocators(a1 + 1);
    v20 = (*(*v19[2] + 32))(v19[2], 88, 8);
    v83 = a1;
    re::RealityFileStreamSource::RealityFileStreamSource(v20, &v83, &v78, 0, 0xFFFFFFFFFFFFFFFFLL);

    if (v86)
    {
      v22 = v88;
      if (v88)
      {
        v23 = v87 + 1;
        if (v87 + 1 >= 3)
        {
          v24 = 4;
          goto LABEL_26;
        }
      }

      else if (v87 >= v89)
      {
        v23 = v87 + 1;
        if (v89 < v87 + 1)
        {
          v24 = 2 * v89;
LABEL_26:
          if (v24 <= v23)
          {
            v25 = v23;
          }

          else
          {
            v25 = v24;
          }

          re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::setCapacity(&v86, v25);
          v22 = v88;
        }
      }
    }

    else
    {
      re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::setCapacity(&v86, v87 + 1);
      v22 = v88 + 2;
      LODWORD(v88) = v88 + 2;
    }

    v11 = (v22 & 1) == 0;
    v26 = v90;
    v27 = v87;
    if (!v11)
    {
      v26 = &v89;
    }

    v26[v87] = v20;
    v87 = v27 + 1;
    LODWORD(v88) = v88 + 2;
    if (v78 && (v79 & 1) != 0)
    {
      (*(*v78 + 40))();
    }

    v15 += 4;
    v14 -= 32;
    if (!v14)
    {
      goto LABEL_36;
    }
  }

  if (v79)
  {
    v39 = v80;
  }

  else
  {
    v39 = &v79 + 1;
  }

  re::DynamicString::format(&v83, "The reality file does not contain an entry named '%s'.", v18, v39);
  v40 = v85;
  v85 = 0;
  *a3 = 0;
  *(a3 + 8) = v40;

  if (v83 && (v84 & 1) != 0)
  {
    (*(*v83 + 5))();
  }

  if (v78 && (v79 & 1) != 0)
  {
    (*(*v78 + 40))();
  }

LABEL_110:
  re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::deinit(&v86);
}

uint64_t re::RealityFile::findAssetDescriptorWithEntryName(re::RealityFile *this, char *a2)
{
  v2 = *(this + 14);
  if (!v2)
  {
    return 0;
  }

  re::AssetMap::assetDescriptorWithFileName(&v5, v2, a2);
  v3 = v5;
  if (v5)
  {
  }

  return v3;
}

unint64_t *re::AssetMap::assetDescriptorWithFileName@<X0>(uint64_t *__return_ptr a1@<X8>, re::AssetMap *this@<X0>, char *a3@<X1>)
{
  v23 = *MEMORY[0x1E69E9840];
  v12 = a3;
  result = re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::tryGet(this + 224, &v12);
  if (result)
  {
    v6 = *result;
    v7 = *(this + 25);
    if (v7 <= *result)
    {
      v13 = 0;
      memset(v22, 0, sizeof(v22));
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

      v17 = 797;
      v18 = 2048;
      v19 = v6;
      v20 = 2048;
      v21 = v7;
      _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
      _os_crash_msg();
      __break(1u);
    }

    v8 = *(*(this + 27) + 8 * v6);
    *a1 = v8;
    if (v8)
    {

      return (v8 + 8);
    }
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t re::RealityFile::findAssetDescriptorWithAssetName(re::RealityFile *this, char *a2)
{
  v2 = *(this + 14);
  if (!v2 || !*a2)
  {
    return 0;
  }

  re::AssetMap::assetDescriptorWithAssetName(&v5, v2, a2);
  v3 = v5;
  if (v5)
  {
  }

  return v3;
}

unint64_t *re::AssetMap::assetDescriptorWithAssetName@<X0>(uint64_t *__return_ptr a1@<X8>, re::AssetMap *this@<X0>, char *a3@<X1>)
{
  v23 = *MEMORY[0x1E69E9840];
  v12 = a3;
  result = re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::tryGet(this + 272, &v12);
  if (result)
  {
    v6 = *result;
    v7 = *(this + 25);
    if (v7 <= *result)
    {
      v13 = 0;
      memset(v22, 0, sizeof(v22));
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

      v17 = 797;
      v18 = 2048;
      v19 = v6;
      v20 = 2048;
      v21 = v7;
      _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
      _os_crash_msg();
      __break(1u);
    }

    v8 = *(*(this + 27) + 8 * v6);
    *a1 = v8;
    if (v8)
    {

      return (v8 + 8);
    }
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

re::SceneDescriptor *re::SceneDescriptor::SceneDescriptor(re::SceneDescriptor *this, const re::SceneDescriptor *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5CB9C10;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  v5 = re::DynamicString::setCapacity(this + 3, 0);
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  v6 = re::DynamicString::setCapacity(this + 7, 0);
  *(this + 88) = 0;
  *(this + 9) = 0u;
  *(this + 8) = 0u;
  re::DynamicString::setCapacity(this + 16, 0);
  *(this + 24) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 46) = 0;
  *(this + 20) = 0;
  re::DynamicString::operator=((this + 24), (a2 + 24));
  re::DynamicString::operator=((this + 56), (a2 + 56));
  re::Optional<re::DynamicString>::operator=(this + 88, a2 + 88);
  re::DynamicArray<re::SceneCompatibilityVariant>::operator=(this + 160, a2 + 20);
  return this;
}

_BYTE *re::Optional<re::DynamicString>::operator=(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v3 = (a1 + 8);
    if (*a2)
    {
      re::DynamicString::operator=(v3, (a2 + 8));
    }

    else
    {
      re::DynamicString::deinit(v3);
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    re::DynamicString::DynamicString((a1 + 8), (a2 + 8));
  }

  return a1;
}

uint64_t re::DynamicArray<re::SceneCompatibilityVariant>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::SceneCompatibilityVariant>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::SceneCompatibilityVariant>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::SceneCompatibilityVariant>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::SceneCompatibilityVariant>::copy(a1, a2);
    }
  }

  return a1;
}

BOOL re::SceneDescriptor::operator==(uint64_t a1, uint64_t a2)
{
  if (!re::DynamicString::operator==(a1 + 24, a2 + 24) || !re::DynamicString::operator==(a1 + 56, a2 + 56))
  {
    return 0;
  }

  if (*(a1 + 88) == 1)
  {
    if ((*(a2 + 88) & 1) == 0 || !re::DynamicString::operator==(a1 + 96, a2 + 96))
    {
      return 0;
    }
  }

  else if (*(a2 + 88))
  {
    return 0;
  }

  return re::DynamicArray<re::SceneCompatibilityVariant>::operator==(a1 + 160, a2 + 160);
}

BOOL re::DynamicArray<re::SceneCompatibilityVariant>::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 32);
  v4 = &v3[10 * v2];
  v5 = *(a2 + 32);
  while (*v3 == *v5)
  {
    v6 = v3 + 2;
    v7 = v5 + 2;
    result = re::DynamicString::operator==((v3 + 2), (v5 + 2));
    if (!result)
    {
      return result;
    }

    v3 = v6 + 8;
    v5 = v7 + 8;
    if (v6 + 8 == v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t re::SceneDescriptor::getName(re::SceneDescriptor *this)
{
  if (*(this + 64))
  {
    return *(this + 9);
  }

  else
  {
    return this + 65;
  }
}

uint64_t re::SceneDescriptor::getFileName(re::SceneDescriptor *this)
{
  v1 = (*(*this + 48))(this);
  if (v2)
  {
    if (*(v1 + 8))
    {
      return *(v1 + 16);
    }

    else
    {
      return v1 + 9;
    }
  }

  else
  {
    re::internal::assertLog(4, 0, "assertion failure: '%s' (%s:line %i) Array is empty.", "!isEmpty()", "first", 232);
    result = _os_crash("assertion failure: (!isEmpty()) Array is empty.");
    __break(1u);
  }

  return result;
}

uint64_t re::SceneDescriptor::getFileNames(re::SceneDescriptor *this)
{
  result = this + 24;
  v3 = *(this + 22);
  if (v3)
  {
    v4 = *(this + 24);
    v5 = &v4[10 * v3];
    v6 = -1;
    do
    {
      v7 = (v4 + 2);
      v9 = *v4;
      v4 += 10;
      v8 = v9;
      if (v9 <= 15 && v8 >= v6)
      {
        v6 = v8;
        result = v7;
      }
    }

    while (v4 != v5);
  }

  return result;
}

uint64_t re::AssetDescriptor::AssetDescriptor(uint64_t a1, uint64_t a2, const char *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5CB9C58;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  v7 = (a1 + 48);
  *(a1 + 56) = 0;
  v8 = *(a2 + 8);
  if (v8)
  {
    re::DynamicOverflowArray<re::DynamicString,1ul>::setCapacity((a1 + 24), v8);
    v9 = *(a1 + 40);
    LOBYTE(v10) = v9 + 2;
    *(a1 + 40) = v9 + 2;
    v11 = *(a2 + 8);
    if (v11)
    {
      v12 = *(a1 + 32);
      if (v12 == -1)
      {
        v29 = 0;
        memset(v38, 0, sizeof(v38));
        v26 = MEMORY[0x1E69E9C10];
        v30 = 136315906;
        v31 = "copy";
        v32 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v27 = 3;
        }

        else
        {
          v27 = 2;
        }

        v33 = 678;
        v34 = 2048;
        v35 = 0;
        v36 = 2048;
        v37 = 0;
        _os_log_send_and_compose_impl(v27, &v29, v38, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v28);
        _os_crash_msg();
        __break(1u);
      }

      v13 = v9 & 1;
      v14 = *a2;
      if (v12 >= v11)
      {
        if (!v13)
        {
          v7 = *(a1 + 56);
        }

        v16 = 32 * v11;
        do
        {
          v6 = re::DynamicString::operator=(v7, v14);
          v14 = (v14 + 32);
          v7 = (v7 + 32);
          v16 -= 32;
        }

        while (v16);
        goto LABEL_33;
      }

      if (*(a1 + 24))
      {
        if (v13)
        {
          if (v11 != 1)
          {
            v15 = 2;
            goto LABEL_17;
          }
        }

        else if (*v7 < v11)
        {
          v15 = 2 * *v7;
LABEL_17:
          if (v15 <= v11)
          {
            v17 = v11;
          }

          else
          {
            v17 = v15;
          }

          re::DynamicOverflowArray<re::DynamicString,1ul>::setCapacity((a1 + 24), v17);
          v10 = *(a1 + 40);
        }
      }

      else
      {
        re::DynamicOverflowArray<re::DynamicString,1ul>::setCapacity((a1 + 24), v11);
        v10 = *(a1 + 40) + 2;
        *(a1 + 40) = v10;
      }

      v18 = *(a1 + 32);
      v6 = (a1 + 48);
      if ((v10 & 1) == 0)
      {
        v6 = *(a1 + 56);
      }

      if (v18)
      {
        v19 = 32 * v18;
        v20 = v14;
        do
        {
          v21 = re::DynamicString::operator=(v6, v20);
          v20 = (v20 + 32);
          v6 = (v21 + 32);
          v19 -= 32;
        }

        while (v19);
        v10 = *(a1 + 40);
      }

      if ((v10 & 1) == 0)
      {
        v7 = *(a1 + 56);
      }

      if (v18 != v11)
      {
        v22 = (v14 + 32 * v18);
        v6 = (v7 + 32 * *(a1 + 32));
        v23 = 32 * v11 - 32 * v18;
        do
        {
          v24 = re::DynamicString::DynamicString(v6, v22);
          v22 = (v22 + 32);
          v6 = (v24 + 32);
          v23 -= 32;
        }

        while (v23);
      }

      *(a1 + 32) = v11;
LABEL_33:
      *(a1 + 40) += 2;
    }
  }

  if (!a3)
  {
    a3 = "";
  }

  return a1;
}

uint64_t re::AssetDescriptor::getName(re::AssetDescriptor *this)
{
  if (*(this + 88))
  {
    return *(this + 12);
  }

  else
  {
    return this + 89;
  }
}

char *re::AssetDescriptor::getFileName(re::AssetDescriptor *this)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!*(this + 4))
  {
    v6 = 0;
    memset(v15, 0, sizeof(v15));
    v3 = MEMORY[0x1E69E9C10];
    v7 = 136315906;
    v8 = "operator[]";
    v9 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    v10 = 866;
    v11 = 2048;
    v12 = 0;
    v13 = 2048;
    v14 = 0;
    _os_log_send_and_compose_impl(v4, &v6, v15, 80, &dword_1E1C61000, v3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v7, 38, v5);
    _os_crash_msg();
    __break(1u);
  }

  if (*(this + 40))
  {
    v1 = this + 48;
  }

  else
  {
    v1 = *(this + 7);
  }

  if (v1[8])
  {
    return *(v1 + 2);
  }

  else
  {
    return v1 + 9;
  }
}

char *re::AssetDescriptor::getFileNames(re::AssetDescriptor *this)
{
  v1 = this + 48;
  if ((*(this + 40) & 1) == 0)
  {
    return *(this + 7);
  }

  return v1;
}

void re::AssetMap::~AssetMap(re::AssetMap *this)
{
  *this = &unk_1F5CB9CA0;
  v2 = this + 24;
  re::FixedArray<re::FixedArray<re::DynamicString>>::deinit(this + 52);
  re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 46);
  re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 40);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 34);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 28);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(this + 184);
  re::FixedArray<re::RealityFileConfigurationEntryDescriptor>::deinit(this + 20);
  re::FixedArray<re::DynamicString>::deinit(this + 17);
  re::FixedArray<re::DynamicString>::deinit(this + 14);
  re::DynamicArray<re::AssetMapAssetDescriptor>::deinit(this + 64);
  re::DynamicArray<re::SceneDescriptor>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::AssetMap::~AssetMap(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::add(uint64_t a1, char **a2, uint64_t *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = re::CaseInsensitiveStringHash::operator()(&v12, *a2);
  result = re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::findEntry<char const*>(&v9, a1, *a2, v6);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    result = re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::allocEntry(a1, v10, v9);
    v8 = *a3;
    *(result + 8) = *a2;
    *(result + 16) = v8;
    ++*(a1 + 40);
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(_anonymous_namespace_ *this, void *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  *(*(v3 + 4) + 8 * v4) = *a2;
  *a2 = 0;
  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return this;
}

BOOL re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::contains(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(&v9, a2);
  v5 = *(a1 + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = *(*(a1 + 8) + 4 * (v4 % v5));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 16);
  do
  {
    result = re::DynamicString::operator==(v8 + 48 * v6 + 16, a2);
    if (result)
    {
      break;
    }

    v6 = *(v8 + 48 * v6 + 8) & 0x7FFFFFFF;
  }

  while (v6 != 0x7FFFFFFF);
  return result;
}

void re::AssetMap::assetDescriptorFromAssetsIndex(re::AssetMap *this, re::AssetMap *a2, unint64_t a3)
{
  v4 = *(a2 + 10);
  if (v4 <= a3)
  {
    re::DynamicString::format(&v16, "Index %lu is not in bounds of the assetMap assets array, which has size %zu.", a2, a3, v4);
  }

  else
  {
    v5 = *(a2 + 12) + 168 * a3;
    if (*(v5 + 16))
    {
      v6 = *(v5 + 32);
      if (*(v6 + 8))
      {
        v7 = *(v6 + 16);
      }

      else
      {
        v7 = (v6 + 9);
      }

      re::AssetMap::assetDescriptorWithFileName(&v15, a2, v7);
      v12 = v15;
      if (v15)
      {
        v13 = (v15 + 8);
        *this = 1;
        *(this + 1) = v12;

        return;
      }

      if (*(v6 + 8))
      {
        v14 = *(v6 + 16);
      }

      else
      {
        v14 = v6 + 9;
      }

      re::DynamicString::format(&v16, "No entry for fileName %s", v11, v14);
    }

    else
    {
    }
  }

  v8 = v16;
  v9 = v17;
  v10 = v18;
  *this = 0;
  *(this + 8) = v8;
  *(this + 3) = v9;
  *(this + 4) = v10;
}

unint64_t re::Hash<re::Slice<re::DynamicString>>::operator()(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 8))
  {
    return 0;
  }

  v3 = re::Hash<re::DynamicString>::operator()(&v7, *a2);
  if (*(a2 + 8) >= 2uLL)
  {
    v4 = 1;
    v5 = 32;
    do
    {
      v3 ^= (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9 + re::Hash<re::DynamicString>::operator()(&v7, (*a2 + v5));
      ++v4;
      v5 += 32;
    }

    while (v4 < *(a2 + 8));
  }

  return v3;
}

uint64_t re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::tryGet(uint64_t a1, char **a2)
{
  v4 = re::CaseInsensitiveStringHash::operator()(v6, *a2);
  re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::findEntry<char const*>(v6, a1, *a2, v4);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 32 * v7 + 16;
  }
}

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(uint64_t a1, char *a2)
{
  v7 = a2;
  v3 = re::Hash<re::DynamicString>::operator()(v5, a2);
  re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v7, v3, v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 88 * v6 + 40;
  }
}

uint64_t re::AssetMap::metadataForFileName(re::AssetMap *this, const re::DynamicString *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(this + 10);
  if (!v2)
  {
    return 0;
  }

  v4 = *(this + 12) + 120;
  v5 = 168 * v2;
  while (1)
  {
    if (!*(v4 - 104))
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

      v14 = 797;
      v15 = 2048;
      v16 = 0;
      v17 = 2048;
      v18 = 0;
      _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
      _os_crash_msg();
      __break(1u);
    }

    if (re::DynamicString::operator==(*(v4 - 88), a2))
    {
      break;
    }

    v4 += 168;
    v5 -= 168;
    if (!v5)
    {
      return 0;
    }
  }

  return v4;
}

void *re::AssetMap::assetDescriptorFromConfigurationNames@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 8);
  if (v4 == result[15] && (v5 = result, v7[0] = *(a2 + 16), v7[1] = v4, v7[0] = re::Hash<re::Slice<re::DynamicString>>::operator()(&v8, v7), (result = re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet((v5 + 46), v7)) != 0))
  {
    v6 = *result;
    *a3 = *result;
    if (v6)
    {
      return (v6 + 8);
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), &v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 56 * v6 + 16;
  }
}

void re::SceneDescriptor::~SceneDescriptor(re::SceneDescriptor *this)
{
  *this = &unk_1F5CB9C10;
  re::DynamicArray<re::SceneCompatibilityVariant>::deinit(this + 160);
  re::DynamicString::deinit((this + 128));
  if (*(this + 88) == 1)
  {
    re::DynamicString::deinit((this + 96));
  }

  re::DynamicString::deinit((this + 56));
  re::DynamicString::deinit((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CB9C10;
  re::DynamicArray<re::SceneCompatibilityVariant>::deinit(this + 160);
  re::DynamicString::deinit((this + 128));
  if (*(this + 88) == 1)
  {
    re::DynamicString::deinit((this + 96));
  }

  re::DynamicString::deinit((this + 56));
  re::DynamicString::deinit((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::AssetDescriptor::~AssetDescriptor(re::AssetDescriptor *this)
{
  *this = &unk_1F5CB9C58;
  v2 = (this + 24);
  re::DynamicString::deinit((this + 80));
  re::DynamicOverflowArray<re::DynamicString,2ul>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CB9C58;
  v2 = (this + 24);
  re::DynamicString::deinit((this + 80));
  re::DynamicOverflowArray<re::DynamicString,2ul>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN2re23FileSeekableInputStreamENS8_25CFDataSeekableInputStreamENS8_37RealityArchiveFileSeekableInputStreamEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSD_1EJS9_SA_SB_EEEEEEDcSF_DpT0_(int a1, re::CFDataSeekableInputStream *this)
{
  *this = &unk_1F5D0A588;
  re::CFDataSeekableInputStream::postDetachCleanup(this);
  *this = &unk_1F5D0A468;

  return re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(this + 32);
}

void re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_214, 4 * v2);
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
          re::DynamicString::deinit((v6 + v5 + 8));
          v3 = *(a1 + 32);
        }

        ++v4;
        v5 += 48;
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

_OWORD *re::make::shared::unsafelyInplace<re::PrereleaseHeader>(_OWORD *a1)
{
  a1[9] = 0u;
  a1[7] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  a1[8] = 0u;
  v2 = a1 + 8;
  a1[6] = 0u;
  v3 = a1 + 6;
  a1[4] = 0u;
  v4 = a1 + 4;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5CB9D60;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  v6 = re::DynamicString::setCapacity(a1 + 3, 0);
  a1[5] = 0u;
  *v4 = 0u;
  v7 = re::DynamicString::setCapacity(v4, 0);
  a1[7] = 0u;
  *v3 = 0u;
  v8 = re::DynamicString::setCapacity(v3, 0);
  a1[9] = 0u;
  *v2 = 0u;
  re::DynamicString::setCapacity(v2, 0);
  return a1;
}

void re::PrereleaseHeader::~PrereleaseHeader(re::PrereleaseHeader *this)
{
  *this = &unk_1F5CB9D60;
  v2 = (this + 24);
  re::DynamicString::deinit((this + 128));
  re::DynamicString::deinit((this + 96));
  re::DynamicString::deinit((this + 64));
  re::DynamicString::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CB9D60;
  v2 = (this + 24);
  re::DynamicString::deinit((this + 128));
  re::DynamicString::deinit((this + 96));
  re::DynamicString::deinit((this + 64));
  re::DynamicString::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::TypeBuilderHelper::registerOptional<re::DynamicString>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
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
    re::TypeBuilder::beginOptionalType(v10, a2, 0x28uLL, 8uLL, &v9);
    re::TypeBuilder::setOptionalAccessors(v10, re::TypeBuilderHelper::registerOptional<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

ArcSharedObject *re::IntrospectionOptional<re::DynamicString>::IntrospectionOptional(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CBA310;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  *a1 = &unk_1F5CB9DA8;
  return a1;
}

void *re::IntrospectionOptional<re::DynamicString>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::DynamicString>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::IntrospectionOptionalBase::childInfo(re::IntrospectionOptionalBase *this, uint64_t a2)
{
  if (!a2)
  {
    return *(this + 6);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Index out of range.", "index == 0", "childInfo", 1375, v2, v3);
  result = _os_crash("assertion failure: (index == 0) Index out of range.");
  __break(1u);
  return result;
}

uint64_t re::IntrospectionOptional<re::DynamicString>::setHasValue(_anonymous_namespace_ *a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v6 = 0uLL;
    v7 = 0;
    re::DynamicString::setCapacity(&v5, 0);
    v8[0] = 1;
    v9 = v5;
    v11 = v7;
    v10 = v6;
  }

  else
  {
    v8[0] = 0;
  }

  result = re::Optional<re::DynamicString>::operator=(a2, v8);
  if (v8[0] == 1)
  {
    result = v9;
    if (v9)
    {
      if (v10)
      {
        return (*(*v9 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::IntrospectionOptional<re::DynamicString>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 8;
}

{
  return a2 + 8;
}

void re::IntrospectionOptionalBase::~IntrospectionOptionalBase(re::IntrospectionOptionalBase *this)
{
  *this = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptionalBase::hasValue(re::IntrospectionOptionalBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "hasValue", 1367);
  _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
}

void re::IntrospectionOptionalBase::setHasValue(re::IntrospectionOptionalBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "setHasValue", 1368);
  _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
}

void re::IntrospectionOptionalBase::value(re::IntrospectionOptionalBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "value", 1369);
  _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
}

{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "value", 1370);
  _os_crash("assertion failure: (!Unreachable code) ");
  __break(1u);
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 8;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, const re::DynamicString *a2)
{
  if (a2)
  {
    v4[0] = 1;
    re::DynamicString::DynamicString(&v5, a2);
  }

  else
  {
    v4[0] = 0;
  }

  result = re::Optional<re::DynamicString>::operator=(a1, v4);
  if (v4[0] == 1)
  {
    result = v5;
    if (v5)
    {
      if (v6)
      {
        return (*(*v5 + 40))();
      }
    }
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::SceneCompatibilityVariant>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::SceneCompatibilityVariant>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::SceneCompatibilityVariant>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::SceneCompatibilityVariant>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::SceneCompatibilityVariant>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::SceneCompatibilityVariant>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::SceneCompatibilityVariant>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::SceneCompatibilityVariant>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::SceneCompatibilityVariant>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::SceneCompatibilityVariant>::addElement(re::Allocator **a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  v14 = 0;
  v11 = 0;
  v13 = 0u;
  re::DynamicString::setCapacity(&v12, 0);
  v8 = re::DynamicArray<re::SceneCompatibilityVariant>::add(a4, &v11);
  if (v12 && (v13 & 1) != 0)
  {
    (*(*v12 + 40))(v8);
  }

  v9 = (*(a4 + 4) + 40 * *(a4 + 2) - 40);
  re::introspectionInitElement(a2, a3, a1[6], v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::SceneCompatibilityVariant>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void re::DynamicArray<re::SceneCompatibilityVariant>::resize(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 40 * a2 + 8;
    v9 = a2;
    do
    {
      re::DynamicString::deinit((*(v3 + 4) + v8));
      ++v9;
      v8 += 40;
    }

    while (v9 < *(v3 + 2));
  }

  else
  {
    if (*(result + 1) < a2)
    {
      result = re::DynamicArray<re::SceneCompatibilityVariant>::setCapacity(result, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 40 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *v7 = 0;
        *(v7 + 24) = 0u;
        *(v7 + 8) = 0u;
        v7 += 8;
        result = re::DynamicString::setCapacity(v7, 0);
        v6 += 40;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::SceneCompatibilityVariant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::SceneCompatibilityVariant>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::SceneCompatibilityVariant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::SceneCompatibilityVariant>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::SceneCompatibilityVariant>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::SceneCompatibilityVariant>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::SceneCompatibilityVariant>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 40 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 40;
        v11 -= 40;
      }

      while (v11);
    }
  }
}

void re::DynamicArray<re::SceneCompatibilityVariant>::clear(uint64_t result)
{
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = 40 * v2;
    v4 = (*(result + 32) + 8);
    do
    {
      re::DynamicString::deinit(v4);
      v4 = (v4 + 40);
      v3 -= 40;
    }

    while (v3);
  }

  ++*(result + 24);
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::SceneCompatibilityVariant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SceneCompatibilityVariant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SceneCompatibilityVariant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SceneCompatibilityVariant>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::DynamicString>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
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
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionDynamicArray<re::DynamicString>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::DynamicString>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::DynamicString>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::DynamicString>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::DynamicString>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::DynamicString>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::DynamicString>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::DynamicString>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::DynamicString>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::DynamicString>::addElement(re::Allocator **a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  re::DynamicString::setCapacity(&v11, 0);
  v8 = re::DynamicArray<re::DynamicString>::add(a4, &v11);
  if (v11 && (v12 & 1) != 0)
  {
    (*(*v11 + 40))(v8);
  }

  v9 = (*(a4 + 4) + 32 * *(a4 + 2) - 32);
  re::introspectionInitElement(a2, a3, a1[6], v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::DynamicString>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::TypeBuilderHelper::registerDynamicArray<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::DynamicString>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::operator()(uint64_t a1, uint64_t a2, void *a3, re::Allocator *a4, unint64_t a5)
{
  if (*a2 == a4)
  {
    re::DynamicArray<re::DynamicString>::clear(a2);
  }

  else
  {
    re::DynamicArray<re::DynamicString>::deinit(a2);
    *a2 = a4;
    re::DynamicArray<re::DynamicString>::setCapacity(a2, a5);
    ++*(a2 + 24);
  }

  re::DynamicArray<re::DynamicString>::resize(a2, a5);
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

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, re **a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X8>)
{
  re::TypeRegistry::typeID(&v26, a1, a2);
  if (v26)
  {
    *a5 = v26;
  }

  else
  {
    *&v19 = 0x449AD97C4B77BED4;
    *(&v19 + 1) = "_CompareFunc";
    v10 = re::TypeRegistry::typeID(&v25, a1, &v19);
    if (v19)
    {
      if (v19)
      {
      }
    }

    if (!v25)
    {
      v21[0] = 0x449AD97C4B77BED4;
      v21[1] = "_CompareFunc";
      re::TypeRegistry::declareType(&v19, v21, a1, 8, 1u, 0);
      v25 = v19;
      if (v21[0])
      {
        if (v21[0])
        {
        }
      }
    }

    re::TypeRegistry::typeInfo(a1, a3, &v19);
    re::TypeInfo::TypeInfo(v24, &v19 + 8);
    if (!v25 || (v12 = *v24[2], *&v19 = *(&v25 + 1), *(&v19 + 1) = v12, v20 = -1, (v13 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v24[0] + 768, &v19)) == 0) || !*v13)
    {
      v14 = *a3;
      v22 = v25;
      v23 = v14;
      re::TypeRegistry::addAttribute(a1, &v23, 0xFFFFFFFFLL, &v22, re::internal::less<re::StringID>, 0);
    }

    re::StackScratchAllocator::StackScratchAllocator(v21);
    re::TypeBuilder::TypeBuilder(&v19, v21);
    v15 = *a3;
    v17 = *a4;
    v18 = v15;
    re::TypeBuilder::beginDictionaryType(&v19, a2, 1, 0x30uLL, 8uLL, &v18, &v17);
    re::TypeBuilder::setConstructor(&v19, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(&v19, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setDictionaryAccessors(&v19, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
    re::TypeBuilder::setDictionaryIterator(&v19, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a5, &v19, a1);
    re::TypeBuilder::~TypeBuilder(&v19, v16);
    re::StackScratchAllocator::~StackScratchAllocator(v21);
  }
}

void *re::IntrospectionHashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4, StringID *a5)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  re::DynamicString::setCapacity(&v12, 0);
  v10 = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a4, a5, &v12);
  if (v12 && (v13 & 1) != 0)
  {
    (*(*v12 + 40))();
  }

  re::introspectionInitElement(a2, a3, a1[8], v10);
  return v10;
}

uint64_t re::IntrospectionHashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 14;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
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
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 56 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 24);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 56 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v11;
LABEL_16:
    ;
  }

  while (v6 != v5);
  return result;
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

  return re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
  }
}

re::DynamicString *re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, StringID *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 56 * v6 + 24;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 56 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 14;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 56 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 56 * *(a1 + 32) + 24;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

void re::TypeBuilderHelper::registerFixedArray<re::DynamicString>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
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
    re::TypeBuilder::beginListType(v10, a2, 1, 0x18uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerFixedArray<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerFixedArray<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerFixedArray<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerFixedArray<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerFixedArray<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a4, v10, a1);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionFixedArray<re::DynamicString>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<re::DynamicString>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<re::DynamicString>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void *re::IntrospectionFixedArray<re::DynamicString>::init(uint64_t a1, void *a2, re *a3, int a4, unint64_t a5)
{
  v27 = *MEMORY[0x1E69E9840];
  result = re::FixedArray<re::DynamicString>::init<>(a2, a3, a5);
  if (a5)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = a2[1];
      if (v13 <= v12)
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
        v23 = v12;
        v24 = 2048;
        v25 = v13;
        _os_log_send_and_compose_impl(v15, &v17, v26, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
        _os_crash_msg();
        __break(1u);
      }

      result = re::introspectionInitElement(a3, a4, *(a1 + 48), (a2[2] + v11));
      ++v12;
      v11 += 32;
    }

    while (a5 != v12);
  }

  return result;
}

unint64_t re::IntrospectionFixedArray<re::DynamicString>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 16) + 32 * a3;
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

  return *(a2 + 16) + 32 * a3;
}

void *re::TypeBuilderHelper::registerFixedArray<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

void *re::TypeBuilderHelper::registerFixedArray<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(void *a1)
{
  re::FixedArray<re::DynamicString>::deinit(a1);

  return re::FixedArray<re::DynamicString>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(void *a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  re::FixedArray<re::DynamicString>::deinit(a1);
  v8 = re::FixedArray<re::DynamicString>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
      v11 = 32 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 32;
        v11 -= 32;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerFixedArray<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 16) + 32 * a2;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
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
    return *(v2 + 16) + 32 * v1;
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::DynamicString>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::SceneDescriptor>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::SceneDescriptor>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::SceneDescriptor>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::SceneDescriptor>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::SceneDescriptor>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::SceneDescriptor>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::SceneDescriptor>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::SceneDescriptor>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::SceneDescriptor>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::SceneDescriptor>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4)
{
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  re::SceneDescriptor::SceneDescriptor(v11);
  v8 = *(a4 + 16);
  if (v8 >= *(a4 + 8))
  {
    re::DynamicArray<re::SceneDescriptor>::growCapacity(a4, v8 + 1);
    v8 = *(a4 + 16);
  }

  re::SceneDescriptor::SceneDescriptor((*(a4 + 32) + 200 * v8), v11);
  ++*(a4 + 16);
  ++*(a4 + 24);
  *&v11[0] = &unk_1F5CB9C10;
  re::DynamicArray<re::SceneCompatibilityVariant>::deinit(v16);
  if (v14)
  {
    if (BYTE8(v14))
    {
      (*(*v14 + 40))();
    }

    v14 = 0u;
    v15 = 0u;
  }

  if (BYTE8(v11[5]) == 1 && v12)
  {
    if (BYTE8(v12))
    {
      (*(*v12 + 40))();
    }

    v12 = 0u;
    v13 = 0u;
  }

  if (*(&v11[3] + 1))
  {
    if (v11[4])
    {
      (*(**(&v11[3] + 1) + 40))();
    }

    memset(&v11[3] + 8, 0, 32);
  }

  if (*(&v11[1] + 1))
  {
    if (v11[2])
    {
      (*(**(&v11[1] + 1) + 40))();
    }

    memset(&v11[1] + 8, 0, 32);
  }

  *&v11[0] = &unk_1F5CCF868;
  objc_destructInstance(v11 + 8);
  v9 = (*(a4 + 32) + 200 * *(a4 + 16) - 200);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::SceneDescriptor>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 200 * a3;
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

  return *(a2 + 32) + 200 * a3;
}

uint64_t re::DynamicArray<re::SceneDescriptor>::deinit(uint64_t a1)
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
        v5 = 200 * v4;
        v6 = *(a1 + 32);
        v7 = v6;
        do
        {
          v8 = *v7;
          v7 += 25;
          (*v8)(v3);
          v6 += 25;
          v3 = v7;
          v5 -= 200;
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

void *re::DynamicArray<re::SceneDescriptor>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 200 * a2;
    v9 = a2;
    do
    {
      result = (**(v3[4] + v8))(v3[4] + v8);
      ++v9;
      v8 += 200;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::SceneDescriptor>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 200 * v4;
      do
      {
        v7 = v3[4] + v6;
        *(v7 + 192) = 0;
        *(v7 + 160) = 0u;
        *(v7 + 176) = 0u;
        *(v7 + 128) = 0u;
        *(v7 + 144) = 0u;
        *(v7 + 96) = 0u;
        *(v7 + 112) = 0u;
        *(v7 + 64) = 0u;
        *(v7 + 80) = 0u;
        *(v7 + 32) = 0u;
        *(v7 + 48) = 0u;
        *v7 = 0u;
        *(v7 + 16) = 0u;
        result = re::SceneDescriptor::SceneDescriptor(v7);
        v6 += 200;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::SceneDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::SceneDescriptor>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::SceneDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 200 * v8;
      v11 = v9;
      v12 = *(a1 + 32);
      do
      {
        v13 = *v12;
        v12 += 25;
        (*v13)(v11);
        v9 += 25;
        v11 = v12;
        v10 -= 200;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::SceneDescriptor>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::SceneDescriptor>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v14 = re::DynamicArray<re::SceneDescriptor>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v19);
    re::TypeInfo::TypeInfo(v18, &v20);
    v15 = *(a1 + 16);
    if (v15)
    {
      v16 = *(a1 + 32);
      v17 = 200 * v15;
      do
      {
        re::TypeInfo::destruct(v18, v16, a3, 0);
        re::TypeInfo::construct(v18, v16, a3, 0);
        v16 += 200;
        v17 -= 200;
      }

      while (v17);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::SceneDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 200 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SceneDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SceneDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 200 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::SceneDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::AssetMapAssetDescriptor>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::AssetMapAssetDescriptor>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::AssetMapAssetDescriptor>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::AssetMapAssetDescriptor>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::AssetMapAssetDescriptor>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::AssetMapAssetDescriptor>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::AssetMapAssetDescriptor>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::AssetMapAssetDescriptor>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::AssetMapAssetDescriptor>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::AssetMapAssetDescriptor>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v8 = 0uLL;
  v24 = 0u;
  v23 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v9 = *(this + 2);
  if (v9 >= *(this + 1))
  {
    re::DynamicArray<re::AssetMapAssetDescriptor>::growCapacity(this, v9 + 1);
    v8 = 0uLL;
    v9 = *(this + 2);
  }

  v10 = *(this + 4) + 168 * v9;
  *v10 = v8;
  v14 = v8;
  *(v10 + 16) = 0;
  v15 = 0;
  *(v10 + 32) = 0;
  *(&v16 + 1) = 0;
  LODWORD(v16) = 1;
  *(v10 + 24) = 1;
  *(v10 + 40) = v8;
  v17 = v8;
  *(v10 + 56) = 0;
  *&v18 = 0;
  *(v10 + 72) = 0;
  *&v19 = 0;
  DWORD2(v18) = 1;
  *(v10 + 64) = 1;
  *(v10 + 80) = 0;
  *(v10 + 120) = 0;
  *&v22 = 0;
  *(v10 + 128) = 0;
  *(&v22 + 1) = 0;
  *(v10 + 136) = 0;
  *&v23 = 0;
  *(v10 + 144) = 0;
  DWORD2(v23) = 0;
  *(v10 + 148) = 0;
  HIDWORD(v23) = 0;
  *(v10 + 152) = 0;
  LODWORD(v24) = 0;
  *(v10 + 156) = 0x7FFFFFFF;
  DWORD1(v24) = 0x7FFFFFFF;
  *(v10 + 160) = 1;
  ++*(this + 2);
  ++*(this + 6);
  v11.n128_f64[0] = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v22);
  if (BYTE8(v19) == 1 && v20)
  {
    if (BYTE8(v20))
    {
      (*(*v20 + 40))(v11.n128_f64[0]);
    }

    v11 = 0uLL;
    v21 = 0u;
    v20 = 0u;
  }

  if (v17)
  {
    if (v19)
    {
      (*(*v17 + 40))(v11);
    }

    *&v19 = 0;
    *&v18 = 0;
    v17 = 0uLL;
    ++DWORD2(v18);
  }

  re::DynamicArray<re::DynamicString>::deinit(&v14);
  v12 = (*(this + 4) + 168 * *(this + 2) - 168);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v12);
  return v12;
}

unint64_t re::IntrospectionDynamicArray<re::AssetMapAssetDescriptor>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 168 * a3;
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

  return *(a2 + 32) + 168 * a3;
}

uint64_t re::DynamicArray<re::AssetMapAssetDescriptor>::deinit(uint64_t a1)
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
        v5 = 168 * v4;
        v6 = (v3 + 120);
        do
        {
          re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v6);
          if (*(v6 - 40) == 1)
          {
            re::DynamicString::deinit((v6 - 4));
          }

          re::DynamicArray<unsigned long>::deinit((v6 - 10));
          re::DynamicArray<re::DynamicString>::deinit((v6 - 15));
          v6 += 21;
          v5 -= 168;
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

void *re::DynamicArray<re::AssetMapAssetDescriptor>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 168 * a2;
    v9 = a2;
    do
    {
      v10 = v3[4] + v8;
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((v10 + 120));
      if (*(v10 + 80) == 1)
      {
        re::DynamicString::deinit((v10 + 88));
      }

      re::DynamicArray<unsigned long>::deinit(v10 + 40);
      result = re::DynamicArray<re::DynamicString>::deinit(v10);
      ++v9;
      v8 += 168;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::AssetMapAssetDescriptor>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 168 * v4;
      do
      {
        v7 = v3[4] + v6;
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 24) = 0;
        *(v7 + 16) = 0;
        *(v7 + 72) = 0;
        *(v7 + 80) = 0;
        *(v7 + 32) = 0uLL;
        *(v7 + 48) = 0uLL;
        *(v7 + 64) = 0;
        *(v7 + 152) = 0uLL;
        *(v7 + 120) = 0uLL;
        *(v7 + 136) = 0uLL;
        v6 += 168;
        *(v7 + 156) = 0x7FFFFFFF;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::AssetMapAssetDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::AssetMapAssetDescriptor>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::AssetMapAssetDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = (*(a1 + 32) + 120);
      v10 = 168 * v8;
      do
      {
        re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
        if (*(v9 - 40) == 1)
        {
          re::DynamicString::deinit((v9 - 4));
        }

        re::DynamicArray<unsigned long>::deinit((v9 - 10));
        re::DynamicArray<re::DynamicString>::deinit((v9 - 15));
        v9 += 21;
        v10 -= 168;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::AssetMapAssetDescriptor>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::AssetMapAssetDescriptor>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v11 = re::DynamicArray<re::AssetMapAssetDescriptor>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 168 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 168;
        v14 -= 168;
      }

      while (v14);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::AssetMapAssetDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 168 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AssetMapAssetDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AssetMapAssetDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 168 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AssetMapAssetDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionFixedArray<re::RealityFileConfigurationEntryDescriptor>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionFixedArray<re::RealityFileConfigurationEntryDescriptor>::~IntrospectionFixedArray(void *a1)
{
  *a1 = &unk_1F5CAE268;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionFixedArray<re::RealityFileConfigurationEntryDescriptor>::construct(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void re::IntrospectionFixedArray<re::RealityFileConfigurationEntryDescriptor>::init(uint64_t a1, void *a2, re *a3, int a4, unint64_t a5)
{
  v26 = *MEMORY[0x1E69E9840];
  re::FixedArray<re::RealityFileConfigurationEntryDescriptor>::init<>(a2, a3, a5);
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
      v10 += 32;
    }

    while (a5 != v11);
  }
}

unint64_t re::IntrospectionFixedArray<re::RealityFileConfigurationEntryDescriptor>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 16) + 32 * a3;
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

  return *(a2 + 16) + 32 * a3;
}

void *re::FixedArray<re::RealityFileConfigurationEntryDescriptor>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = 32 * v2;
      v5 = (result[2] + 8);
      do
      {
        re::FixedArray<re::DynamicString>::deinit(v5);
        v5 += 4;
        v4 -= 32;
      }

      while (v4);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::TypeBuilderHelper::registerFixedArray<re::RealityFileConfigurationEntryDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = a3;
  return result;
}

void *re::TypeBuilderHelper::registerFixedArray<re::RealityFileConfigurationEntryDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(void *a1)
{
  re::FixedArray<re::RealityFileConfigurationEntryDescriptor>::deinit(a1);

  return re::FixedArray<re::RealityFileConfigurationEntryDescriptor>::deinit(a1);
}

void re::TypeBuilderHelper::registerFixedArray<re::RealityFileConfigurationEntryDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(void *a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  re::FixedArray<re::RealityFileConfigurationEntryDescriptor>::deinit(a1);
  re::FixedArray<re::RealityFileConfigurationEntryDescriptor>::init<>(a1, a3, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = a1[1];
    if (v9)
    {
      v10 = a1[2];
      v11 = 32 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 32;
        v11 -= 32;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerFixedArray<re::RealityFileConfigurationEntryDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 16) + 32 * a2;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::RealityFileConfigurationEntryDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::RealityFileConfigurationEntryDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1)
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
    return *(v2 + 16) + 32 * v1;
  }
}

uint64_t re::TypeBuilderHelper::registerFixedArray<re::RealityFileConfigurationEntryDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

double re::make::shared::unsafelyInplace<re::AssetMap>(uint64_t a1)
{
  *(a1 + 432) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 24) = 0;
  *a1 = &unk_1F5CB9CA0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 260) = 0x7FFFFFFFLL;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 308) = 0x7FFFFFFFLL;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0;
  *(a1 + 356) = 0x7FFFFFFFLL;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 404) = 0x7FFFFFFFLL;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 416) = 0;
  return result;
}

uint64_t re::make::shared::unsafelyInplace<re::RealityFileHeader>(uint64_t a1)
{
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
  *a1 = &unk_1F5CB9160;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  v3 = re::DynamicString::setCapacity((a1 + 24), 0);
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  re::DynamicString::setCapacity((a1 + 56), 0);
  *(a1 + 88) = 2;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0x7FFFFFFFLL;
  *(a1 + 152) = 0;
  return a1;
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, re **a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X8>)
{
  re::TypeRegistry::typeID(&v26, a1, a2);
  if (v26)
  {
    *a5 = v26;
  }

  else
  {
    *&v19 = 0x449AD97C4B77BED4;
    *(&v19 + 1) = "_CompareFunc";
    v10 = re::TypeRegistry::typeID(&v25, a1, &v19);
    if (v19)
    {
      if (v19)
      {
      }
    }

    if (!v25)
    {
      v21[0] = 0x449AD97C4B77BED4;
      v21[1] = "_CompareFunc";
      re::TypeRegistry::declareType(&v19, v21, a1, 8, 1u, 0);
      v25 = v19;
      if (v21[0])
      {
        if (v21[0])
        {
        }
      }
    }

    re::TypeRegistry::typeInfo(a1, a3, &v19);
    re::TypeInfo::TypeInfo(v24, &v19 + 8);
    if (!v25 || (v12 = *v24[2], *&v19 = *(&v25 + 1), *(&v19 + 1) = v12, v20 = -1, (v13 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v24[0] + 768, &v19)) == 0) || !*v13)
    {
      v14 = *a3;
      v22 = v25;
      v23 = v14;
      re::TypeRegistry::addAttribute(a1, &v23, 0xFFFFFFFFLL, &v22, re::internal::less<re::DynamicString>, 0);
    }

    re::StackScratchAllocator::StackScratchAllocator(v21);
    re::TypeBuilder::TypeBuilder(&v19, v21);
    v15 = *a3;
    v17 = *a4;
    v18 = v15;
    re::TypeBuilder::beginDictionaryType(&v19, a2, 1, 0x30uLL, 8uLL, &v18, &v17);
    re::TypeBuilder::setConstructor(&v19, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(&v19, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setDictionaryAccessors(&v19, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
    re::TypeBuilder::setDictionaryIterator(&v19, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(a5, &v19, a1);
    re::TypeBuilder::~TypeBuilder(&v19, v16);
    re::StackScratchAllocator::~StackScratchAllocator(v21);
  }
}

void *re::IntrospectionHashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, const re::DynamicString *a5)
{
  v12 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v8 = re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a4, a5, v10);
  re::DynamicArray<re::DynamicString>::deinit(v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 22;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
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
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 88 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 40);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 88 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v11;
LABEL_16:
    ;
  }

  while (v6 != v5);
  return result;
}

void re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_214, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 88;
      }

      while (v4 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, uint64_t *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v12, a2);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, v6, &v9, a2);
  v7 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::DynamicArray<re::DynamicString>>(a1, &v9, a2, a3);
  }

  ++*(a1 + 40);
  return re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(*(a1 + 16) + 88 * v7 + 40, a3);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

  return re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

    re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, const re::DynamicString *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, v4, v6, a2);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 88 * v7 + 40;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 88 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 22;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 88 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 88 * *(a1 + 32) + 40;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

re::RealityFile *re::make::shared::object<re::RealityFile,char const*&>@<X0>(re *a1@<X0>, re::RealityFile **a2@<X8>)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 136, 8);
  result = re::RealityFile::RealityFile(v5, *a1);
  *a2 = result;
  return result;
}

re::RealityFile *re::make::shared::object<re::RealityFile,re::Data const&>@<X0>(re *a1@<X0>, re::RealityFile **a2@<X8>)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 136, 8);
  result = re::RealityFile::RealityFile(v5, a1);
  *a2 = result;
  return result;
}

re::DynamicString *re::Result<re::SharedPtr<re::RealityArchive>,re::DynamicString>::~Result(re::DynamicString *this)
{
  v2 = this + 8;
  if (*this == 1)
  {
    if (*v2)
    {

      *v2 = 0;
    }
  }

  else
  {
    re::DynamicString::deinit((this + 8));
  }

  return this;
}

re::FileSeekableInputStream *std::__variant_detail::__ctor<std::__variant_detail::__traits<re::FileSeekableInputStream,re::CFDataSeekableInputStream,re::RealityArchiveFileSeekableInputStream>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::FileSeekableInputStream,re::CFDataSeekableInputStream,re::RealityArchiveFileSeekableInputStream>,(std::__variant_detail::_Trait)1>>(re::FileSeekableInputStream *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 54);
  if (v4 != -1)
  {
    result = off_1F5CB9D38[v4](&v7, result);
  }

  v3[54] = -1;
  v5 = *(a2 + 216);
  if (v5 != -1)
  {
    v6 = v3;
    result = (off_1F5CBA2E8[v5])(&v6, a2);
    v3[54] = v5;
  }

  return result;
}

void re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::deinit(void *a1)
{
  if (*a1)
  {
    v2 = a1[1];
    if (v2)
    {
      if (a1[2])
      {
        v3 = a1 + 3;
      }

      else
      {
        v3 = a1[4];
      }

      v4 = 8 * v2;
      do
      {
        if (*v3)
        {

          *v3 = 0;
        }

        ++v3;
        v4 -= 8;
      }

      while (v4);
    }

    v5 = *(a1 + 4);
    if ((v5 & 1) == 0)
    {
      (*(**a1 + 40))(*a1, a1[4]);
      v5 = *(a1 + 4);
    }

    *a1 = 0;
    a1[1] = 0;
    *(a1 + 4) = (v5 | 1) + 2;
  }
}

uint64_t *re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::setCapacity(uint64_t *a1, unint64_t a2)
{
  result = *a1;
  if (a2 && !result)
  {
    result = re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::setCapacity(a1, a2);
    v6 = *(a1 + 4) + 2;
LABEL_4:
    *(a1 + 4) = v6;
    return result;
  }

  v7 = *(a1 + 4);
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = a1[3];
  }

  if (v8 != a2)
  {
    v9 = a1[1];
    if (v9 <= a2 && (a2 > 2 || (v7 & 1) == 0))
    {
      if (a2 < 3)
      {
        v14 = a1 + 3;
        if (v7)
        {
          v15 = a1 + 3;
        }

        else
        {
          v15 = a1[4];
        }

        if (v9)
        {
          v16 = 8 * v9;
          do
          {
            *v14++ = *v15;
            *v15++ = 0;
            v16 -= 8;
          }

          while (v16);
        }

        result = (*(*result + 40))(result);
        v6 = *(a1 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 61)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 8, a2);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", v20, v22);
        __break(1u);
      }

      else
      {
        v2 = 8 * a2;
        result = (*(*result + 32))(result, 8 * a2, 8);
        if (result)
        {
          v11 = result;
          v12 = *(a1 + 4);
          if (v12)
          {
            v13 = a1 + 3;
          }

          else
          {
            v13 = a1[4];
          }

          v17 = a1[1];
          if (v17)
          {
            v18 = 8 * v17;
            v19 = result;
            do
            {
              *v19++ = *v13;
              *v13++ = 0;
              v18 -= 8;
            }

            while (v18);
            v12 = *(a1 + 4);
          }

          if ((v12 & 1) == 0)
          {
            result = (*(**a1 + 40))(*a1, a1[4]);
            v12 = *(a1 + 4);
          }

          *(a1 + 4) = v12 & 0xFFFFFFFE;
          a1[3] = a2;
          a1[4] = v11;
          return result;
        }
      }

      re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*a1 + 8));
      result = _os_crash("assertion failure: (newData) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", v21, v23);
      __break(1u);
    }
  }

  return result;
}

void re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::clear(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 24;
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 32);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  v5 = 8 * v2;
  do
  {
    if (*v4)
    {

      *v4 = 0;
    }

    v4 += 8;
    v5 -= 8;
  }

  while (v5);
  v3 = *(a1 + 16);
LABEL_10:
  *(a1 + 16) = v3 + 2;
}

void re::DynamicOverflowArray<re::DynamicString,1ul>::setCapacity(void *a1, unint64_t a2)
{
  v5 = *a1;
  if (!v5)
  {
    re::DynamicOverflowArray<re::DynamicString,1ul>::setCapacity(a1, a2);
    v8 = *(a1 + 4) + 2;
LABEL_5:
    *(a1 + 4) = v8;
    return;
  }

  v6 = *(a1 + 4);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = a1[3];
  }

  if (v7 == a2)
  {
    return;
  }

  v9 = a1[1];
  if (v9 > a2 || a2 <= 1 && (v6 & 1) != 0)
  {
    return;
  }

  if (a2 < 2)
  {
    v15 = a1[4];
    if (v9)
    {
      *(a1 + 3) = 0u;
      if (v6)
      {
        v16 = (a1 + 3);
      }

      else
      {
        v16 = v15;
      }

      *(a1 + 5) = 0uLL;
      a1[6] = *(v16 + 3);
      v17 = *(v16 + 1);
      a1[3] = *v16;
      *v16 = 0;
      v18 = *(v16 + 2);
      *(v16 + 3) = 0;
      v20 = a1[4];
      v19 = a1[5];
      a1[4] = v17;
      a1[5] = v18;
      *(v16 + 1) = v20;
      *(v16 + 2) = v19;
      re::DynamicString::deinit(v16);
      v5 = *a1;
    }

    (*(*v5 + 40))(v5, v15);
    v8 = *(a1 + 4) | 1;
    goto LABEL_5;
  }

  if (a2 >> 59)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 32, a2);
    _os_crash("assertion failure: (!overflow) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", v28, v30);
    __break(1u);
    goto LABEL_32;
  }

  v2 = 32 * a2;
  v10 = (*(*v5 + 32))(v5, 32 * a2, 8);
  if (!v10)
  {
LABEL_32:
    re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*a1 + 8));
    _os_crash("assertion failure: (newData) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", v29, v31);
    __break(1u);
    return;
  }

  v12 = v10;
  v13 = *(a1 + 4);
  if (v13)
  {
    v14 = (a1 + 3);
  }

  else
  {
    v14 = a1[4];
  }

  v21 = a1[1];
  if (v21)
  {
    v22 = (v14 + 32 * v21);
    v23 = v10;
    do
    {
      *v23 = 0u;
      *(v23 + 16) = 0u;
      *(v23 + 24) = *(v14 + 3);
      v24 = *(v14 + 1);
      *v23 = *v14;
      *v14 = 0;
      v25 = *(v14 + 2);
      *(v14 + 3) = 0;
      v27 = *(v23 + 8);
      v26 = *(v23 + 16);
      *(v23 + 8) = v24;
      *(v23 + 16) = v25;
      *(v14 + 1) = v27;
      *(v14 + 2) = v26;
      re::DynamicString::deinit(v14);
      v14 = (v14 + 32);
      v23 += 32;
    }

    while (v14 != v22);
    v13 = *(a1 + 4);
  }

  if ((v13 & 1) == 0)
  {
    (*(**a1 + 40))(*a1, a1[4]);
    v13 = *(a1 + 4);
  }

  *(a1 + 4) = v13 & 0xFFFFFFFE;
  a1[3] = a2;
  a1[4] = v12;
}

double re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 88;
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

_DWORD *re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free(_DWORD *result)
{
  if ((*result & 0x80000000) != 0)
  {
    *result &= ~0x80000000;
    v2 = result + 10;
    re::DynamicString::deinit((result + 2));

    return re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v2);
  }

  return result;
}

double re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(uint64_t *a1)
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
        v5 = a1[2];
        v6 = *(v5 + v3);
        if (v6 < 0)
        {
          v7 = v5 + v3;
          *(v5 + v3) = v6 & 0x7FFFFFFF;
          re::FixedArray<re::DynamicString>::deinit((v5 + v3 + 24));
          v8 = *(v7 + 16);
          if (v8)
          {

            *(v7 + 16) = 0;
          }
        }

        ++v4;
        v3 += 56;
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

void *re::FixedArray<re::FixedArray<re::DynamicString>>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 24 * v2;
      do
      {
        re::FixedArray<re::DynamicString>::deinit(v4);
        v4 += 3;
        v5 -= 24;
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

uint64_t re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::findEntry<char const*>(uint64_t result, uint64_t a2, char *a3, unint64_t a4)
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
    LODWORD(v8) = 0x7FFFFFFF;
    goto LABEL_12;
  }

  v10 = *(a2 + 16);
  result = strcasecmp(*(v10 + 32 * v8 + 8), a3);
  if (!result)
  {
    v6 = v8;
    goto LABEL_11;
  }

  v11 = *(v10 + 32 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = strcasecmp(*(v10 + 32 * v11 + 8), a3);
      if (!result)
      {
        break;
      }

      v11 = *(v10 + 32 * v12) & 0x7FFFFFFF;
      LODWORD(v8) = v12;
      if (v11 == 0x7FFFFFFF)
      {
        LODWORD(v8) = v12;
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

uint64_t re::CaseInsensitiveStringHash::operator()(int a1, char *__s)
{
  v3 = strlen(__s);
  if (v3 >= 8)
  {
    v5 = 0;
    v4 = 0;
    v6 = 8;
    do
    {
      v7 = 0;
      v8 = *&__s[v5];
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
    memcpy(&__dst, &__s[v5], v10);
    for (i = 0; i != v10; ++i)
    {
      *(&__dst + i) = __tolower(*(&__dst + i));
    }

    v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (__dst ^ (__dst >> 30))) ^ ((0xBF58476D1CE4E5B9 * (__dst ^ (__dst >> 30))) >> 27));
    return (v4 - 0x61C8864680B583E9 + ((v12 ^ (v12 >> 31)) << 6) + ((v12 ^ (v12 >> 31)) >> 2)) ^ v12 ^ (v12 >> 31);
  }

  return v4;
}

uint64_t re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
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
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = a1[2];
          *&v27[16] = v13;
          a1[2] = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 3);
          v14 = *&v27[32];
          *(a1 + 3) = v15;
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
                v19 = re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::allocEntry(a1, v18[1] % *(a1 + 6), v18[1]);
                v20 = *v18;
                *(v19 + 8) = *(v18 - 1);
                *(v19 + 16) = v20;
              }

              ++v17;
              v18 += 4;
            }

            while (v17 < v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v27);
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

      a2 = a3 % *(a1 + 6);
      v6 = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    v21 = a1[2];
    v22 = *(v21 + 32 * v5);
  }

  else
  {
    v21 = a1[2];
    v22 = *(v21 + 32 * v5);
    *(a1 + 9) = v22 & 0x7FFFFFFF;
  }

  v24 = v21 + 32 * v5;
  *v24 = v22 | 0x80000000;
  v25 = a1[1];
  *v24 = *(v25 + 4 * a2) | 0x80000000;
  *(v24 + 24) = a3;
  *(v25 + 4 * a2) = v5;
  ++*(a1 + 7);
  return v21 + 32 * v5;
}

void re::HashTable<char const*,unsigned long,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 32 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_214, 4 * v10);
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

uint64_t re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
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
          memset(v35, 0, 36);
          *&v35[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v35, v9, v8);
          v11 = *v35;
          *v35 = *a1;
          *a1 = v11;
          v12 = *&v35[16];
          v13 = a1[2];
          *&v35[16] = v13;
          a1[2] = v12;
          v15 = *&v35[24];
          *&v35[24] = *(a1 + 3);
          v14 = *&v35[32];
          *(a1 + 3) = v15;
          ++*&v35[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 40;
            do
            {
              v19 = v13 + v18;
              if ((*(v13 + v18 - 40) & 0x80000000) != 0)
              {
                v20 = re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v19 + 40) % *(a1 + 6), *(v19 + 40));
                *(v20 + 24) = 0u;
                *(v20 + 8) = 0u;
                *(v20 + 32) = *(v19 - 8);
                v21 = *(v19 - 24);
                *(v20 + 8) = *(v19 - 32);
                *(v19 - 32) = 0;
                v22 = *(v19 - 16);
                *(v19 - 8) = 0;
                v24 = *(v20 + 16);
                v23 = *(v20 + 24);
                *(v20 + 16) = v21;
                *(v20 + 24) = v22;
                *(v19 - 24) = v24;
                *(v19 - 16) = v23;
                v13 = *&v35[16];
                v25 = *&v35[16] + v18;
                *(v20 + 72) = 0;
                *(v20 + 64) = 0;
                *(v20 + 48) = 0;
                *(v20 + 56) = 0;
                *(v20 + 40) = 0;
                v26 = *(v25 + 8);
                *(v20 + 40) = *v25;
                *(v20 + 48) = v26;
                *v25 = 0;
                *(v25 + 8) = 0;
                v27 = *(v20 + 56);
                *(v20 + 56) = *(v25 + 16);
                *(v25 + 16) = v27;
                v28 = *(v20 + 72);
                *(v20 + 72) = *(v25 + 32);
                *(v25 + 32) = v28;
                ++*(v25 + 24);
                ++*(v20 + 64);
              }

              ++v17;
              v18 += 88;
            }

            while (v17 < v16);
          }

          re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v35);
        }
      }

      else
      {
        if (v8)
        {
          v31 = 2 * v7;
        }

        else
        {
          v31 = 3;
        }
      }

      a2 = a3 % *(a1 + 6);
      v6 = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    v29 = a1[2];
    v30 = *(v29 + 88 * v5);
  }

  else
  {
    v29 = a1[2];
    v30 = *(v29 + 88 * v5);
    *(a1 + 9) = v30 & 0x7FFFFFFF;
  }

  v32 = v29 + 88 * v5;
  *v32 = v30 | 0x80000000;
  v33 = a1[1];
  *v32 = *(v33 + 4 * a2) | 0x80000000;
  *(v33 + 4 * a2) = v5;
  *(v32 + 80) = a3;
  ++*(a1 + 7);
  return v29 + 88 * v5;
}

void re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 88 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_214, 4 * v10);
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

uint64_t re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(result + 16);
  if (*(v7 + 56 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 56 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 56 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 56 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(v29, v9, v8);
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
            v18 = (v13 + 24);
            do
            {
              if ((*(v18 - 3) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, v18[3] % *(a1 + 6), v18[3]);
                v20 = *(v18 - 1);
                v19[1] = *(v18 - 2);
                v19[2] = v20;
                *(v18 - 1) = 0;
                v19[4] = 0;
                v19[5] = 0;
                v19[3] = 0;
                v21 = v18[1];
                v19[3] = *v18;
                v19[4] = v21;
                *v18 = 0;
                v18[1] = 0;
                v22 = v19[5];
                v19[5] = v18[2];
                v18[2] = v22;
              }

              v18 += 7;
              ++v17;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(v29);
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
    v24 = *(v23 + 56 * v5);
  }

  else
  {
    v23 = a1[2];
    v24 = *(v23 + 56 * v5);
    *(a1 + 9) = v24 & 0x7FFFFFFF;
  }

  v26 = v23 + 56 * v5;
  *v26 = v24 | 0x80000000;
  v27 = a1[1];
  *v26 = *(v27 + 4 * a2) | 0x80000000;
  *(v27 + 4 * a2) = v5;
  *(v26 + 48) = a3;
  ++*(a1 + 7);
  return v23 + 56 * v5;
}

void re::HashTable<unsigned long,re::AssetMap::ConfigurationEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 56 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_214, 4 * v10);
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

void *re::allocInfo_NetworkAssetLoadDescriptorParameters(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_44, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_44))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE192948, "NetworkAssetLoadDescriptorParameters");
    __cxa_guard_release(&_MergedGlobals_44);
  }

  return &unk_1EE192948;
}

void re::initInfo_NetworkAssetLoadDescriptorParameters(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v12[0] = 0xA7193B92A74838C2;
  v12[1] = "NetworkAssetLoadDescriptorParameters";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE192940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE192940))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_uint64_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "networkAssetId";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE192938 = v10;
    __cxa_guard_release(&qword_1EE192940);
  }

  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE192938;
  *(this + 9) = re::internal::defaultConstruct<re::NetworkAssetLoadDescriptorParameters>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::NetworkAssetLoadDescriptorParameters>;
  *(this + 13) = re::internal::defaultConstructV2<re::NetworkAssetLoadDescriptorParameters>;
  *(this + 14) = re::internal::defaultDestructV2<re::NetworkAssetLoadDescriptorParameters>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v11 = v13;
}

re::DynamicString *re::NetworkAssetLoadDescriptor::init(uint64_t a1, const re::IntrospectionBase *a2, re::DynamicString *a3)
{
  v8[0] = "NetworkAsset";
  v8[1] = 12;
  v6 = re::DynamicString::operator=(a1, v8);
  v8[0] = a2;
  re::AssetLoadDescriptor::setIntrospectableData(v6, re::NetworkAssetProvider::s_loadDescriptorParametersIntrospect, v8, 0);
  return re::DynamicString::operator=((a1 + 112), a3);
}

_anonymous_namespace_ *re::NetworkAssetProvider::NetworkAssetProvider(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5CBA390;
  *(a1 + 5) = 0;
  v8 = &unk_1EE187000;
  {
    v8 = &unk_1EE187000;
    if (v10)
    {
      re::introspect<re::NetworkAssetLoadDescriptorParameters>(BOOL)::info = re::internal::getOrCreateInfo("NetworkAssetLoadDescriptorParameters", re::allocInfo_NetworkAssetLoadDescriptorParameters, re::initInfo_NetworkAssetLoadDescriptorParameters, &re::internal::introspectionInfoStorage<re::NetworkAssetLoadDescriptorParameters>, 0);
      v8 = &unk_1EE187000;
    }
  }

  re::NetworkAssetProvider::s_loadDescriptorParametersIntrospect = v8[170];
  *(a1 + 4) = a4;
  *(a1 + 5) = a2;
  *(a1 + 3) = a3;
  return a1;
}

void re::NetworkAssetProvider::~NetworkAssetProvider(re::NetworkAssetProvider *this)
{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::NetworkAssetProvider::load(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) load for network providers should never be called", "!Unreachable code", "load", 58);
  _os_crash("assertion failure: (!Unreachable code) load for network providers should never be called");
  __break(1u);
}

__n128 re::NetworkAssetProvider::resolveChild@<Q0>(re::NetworkAssetProvider *this@<X0>, const re::AssetLoadDescriptor *a2@<X1>, const char *a3@<X2>, const char *a4@<X3>, uint64_t a5@<X8>)
{
  if (*(a2 + 8))
  {
    v10 = *(a2 + 2);
  }

  else
  {
    v10 = a2 + 9;
  }

  if (strcmp(v10, "NetworkAsset"))
  {
    re::DynamicString::format(&v39, "Cannot resolve with a parent AssetLoadDescriptor of scheme %s. Expected scheme %s.", v11, v10, "NetworkAsset");
LABEL_32:
    result = v39;
    v24 = v40;
    v25 = v41;
    *a5 = 0;
    *(a5 + 8) = result;
    *(a5 + 24) = v24;
    *(a5 + 32) = v25;
    return result;
  }

  re::AssetLoadDescriptor::getIntrospectableData<re::NetworkAssetLoadDescriptorParameters>(a2, &v50, 0);
  v12 = v50;
  (*(**(this + 5) + 96))(&v39);
  if ((v39.n128_u8[0] & 1) == 0)
  {
    re::DynamicString::format(&v39, "Could not find AssetId for dependency with relative path %s from parent asset with AssetId %lu.", v13, a3, v12);
    goto LABEL_32;
  }

  v14 = (*(**(this + 5) + 96))(&v39);
  if ((v39.n128_u8[0] & 1) == 0)
  {
    if (*(a2 + 8))
    {
      v23 = *(a2 + 2);
    }

    else
    {
      v23 = a2 + 9;
    }

    re::DynamicString::format(&v39, "Dependent asset %s not found for Parent { scheme: %s, AssetId %llu. }", v15, a3, v23, v12);
    goto LABEL_32;
  }

  v16 = v39.n128_u64[1];
  v39.n128_u64[1] = 0;
  v40 = 0;
  v41 = 0;
  v17 = re::DynamicString::setCapacity(&v39, 0);
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v48 = 0;
  memset(v49, 0, sizeof(v49));
  v18 = re::DynamicString::setCapacity(&v49[1], 0);
  re::NetworkAssetLoadDescriptor::init(&v39, v16, v38);
  if (*&v38[0])
  {
    if (BYTE8(v38[0]))
    {
      (*(**&v38[0] + 40))();
    }

    memset(v38, 0, sizeof(v38));
  }

  re::DynamicString::DynamicString(&v26, &v39);
  re::DynamicArray<BOOL>::DynamicArray(&v28 + 8, &v42);
  re::DynamicArray<BOOL>::DynamicArray(&v31 + 8, &v46 + 1);
  re::DynamicString::DynamicString(&v34.n128_i8[8], &v49[1]);
  *(a5 + 16) = v27;
  *(a5 + 48) = v29;
  v19 = v32;
  *(a5 + 72) = v31;
  *a5 = 1;
  *(a5 + 8) = v26;
  v26 = 0;
  v20 = v28;
  v28 = 0u;
  v27 = 0u;
  *(a5 + 32) = v20;
  v29 = 0u;
  ++v30;
  *(a5 + 64) = 1;
  *(a5 + 88) = v19;
  v31 = 0u;
  v32 = 0u;
  ++v33;
  *(a5 + 104) = 1;
  result = v34;
  *(a5 + 112) = v34;
  v34 = 0u;
  v22 = v37;
  *(a5 + 136) = v36;
  *(a5 + 144) = v22;
  v36 = 0;
  v37 = 0;
  *(a5 + 128) = v35;
  if (v49[1])
  {
    if (v49[2])
    {
      (*(*v49[1] + 40))();
    }

    result = 0uLL;
    memset(&v49[1], 0, 32);
  }

  if (*(&v46 + 1))
  {
    if (v49[0])
    {
      (*(**(&v46 + 1) + 40))();
    }

    v49[0] = 0;
    v47 = 0uLL;
    *(&v46 + 1) = 0;
    ++v48;
  }

  if (v42)
  {
    if (v46)
    {
      (*(*v42 + 40))();
    }

    *&v46 = 0;
    v43 = 0;
    v44 = 0;
    v42 = 0;
    ++v45;
  }

  if (v39.n128_u64[0])
  {
    if (v39.n128_u8[8])
    {
      (*(*v39.n128_u64[0] + 40))();
    }
  }

  return result;
}

uint64_t re::NetworkAssetProvider::getDescription(re::NetworkAssetProvider *this, const re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  re::AssetLoadDescriptor::getIntrospectableData<re::NetworkAssetLoadDescriptorParameters>(a2, &v8, 0);
  re::DynamicString::format(&v6, "%llu", v4, v8);
  re::DynamicString::operator=(a3, &v6);
  result = v6;
  if (v6)
  {
    if (v7)
    {
      return (*(*v6 + 40))();
    }
  }

  return result;
}

uint64_t re::AssetType::generateCompiledExtension(re::AssetType *this)
{
  v2 = strlen(*this);
  re::DynamicString::append(&v12, *this, v2);
  v3 = v14;
  v4 = v13 & 1;
  if (v13)
  {
    v5 = &v14[v13 >> 1];
  }

  else
  {
    v5 = &v13 + (v13 >> 1) + 1;
  }

  if (v13)
  {
    v6 = v14;
  }

  else
  {
    v6 = &v13 + 1;
  }

  if (v6 != v5)
  {
    do
    {
      *v6 = __tolower(*v6);
      ++v6;
    }

    while (v6 != v5);
    v3 = v14;
    v4 = v13 & 1;
  }

  if (v4)
  {
    v7 = v3;
  }

  else
  {
    v7 = &v13 + 1;
  }

  v8 = strlen(v7);
  v9 = malloc_type_malloc(v8 + 1, 0x100004077774924uLL);
  if (v13)
  {
    v10 = v14;
  }

  else
  {
    v10 = &v13 + 1;
  }

  *(this + 1) = strcpy(v9, v10);
  result = v12;
  if (v12)
  {
    if (v13)
    {
      return (*(*v12 + 40))();
    }
  }

  return result;
}

void re::internal::AssetTypeRegistry::deinit(re::internal::AssetTypeRegistry *this)
{
  re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::clear(this);
  re::HashTable<char const*,re::AssetType const*,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::clear(this + 48);
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *(this + 16);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      re::internal::destroyPersistent<re::internal::AssetTypeRegistry::OwnedAssetType>("deinit", 26, v5);
      v4 -= 8;
    }

    while (v4);
  }

  *(this + 14) = 0;
  ++*(this + 30);
}

void re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_3, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100]((v6 + v4 + 16));
          v3 = *(a1 + 32);
        }

        v4 += 64;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

void re::HashTable<char const*,re::AssetType const*,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_13, 4 * v2);
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

        v4 += 8;
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

re *re::internal::destroyPersistent<re::internal::AssetTypeRegistry::OwnedAssetType>(re *result, uint64_t a2, re::DynamicString *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::internal::destroyPersistent<re::AssetType>("~OwnedAssetType", 120, *(a3 + 4));
    v5.n128_f64[0] = re::DynamicString::deinit(a3);
    v6 = *(*v4 + 40);

    return v6(v4, a3, v5);
  }

  return result;
}

void re::internal::AssetTypeRegistry::~AssetTypeRegistry(re::internal::AssetTypeRegistry *this)
{
  re::internal::AssetTypeRegistry::deinit(this);
  re::DynamicArray<unsigned long>::deinit(this + 96);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 6);
  re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::deinit(this);
}

uint64_t re::internal::AssetTypeRegistry::registerAssetType(uint64_t a1, char **a2, uint64_t *a3)
{
  v6 = a2;
  re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::add(a1, &v6, a3);
  v5 = *v6;
  return re::HashTable<char const*,re::AssetType const*,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::add(a1 + 48, &v5, &v6);
}

uint64_t re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::add(uint64_t a1, void *a2, uint64_t *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::findEntry<re::AssetType const*>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addInternal<re::AssetType const* const&,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + (HIDWORD(v9) << 6) + 16;
  }
}

uint64_t re::HashTable<char const*,re::AssetType const*,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::add(uint64_t a1, char **a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = re::CaseInsensitiveStringHash::operator()(&v12, *a2);
  re::HashTable<char const*,re::AssetType const*,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::findEntry<char const*>(a1, a2, v6, &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v10) + 16;
  }

  v7 = re::HashTable<char const*,re::AssetType const*,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 8) = *a2;
  *(v7 + 16) = *a3;
  result = v7 + 16;
  ++*(a1 + 40);
  return result;
}

void re::internal::AssetTypeRegistry::registerOwnedAssetType(char *a1@<X1>, uint64_t a2@<X0>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a2;
  v35[4] = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 32);
  if (v8)
  {
    v9 = 0;
    v10 = *(a2 + 16);
    while (1)
    {
      v11 = *v10;
      v10 += 16;
      if (v11 < 0)
      {
        break;
      }

      if (v8 == ++v9)
      {
        LODWORD(v9) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 == v8)
  {
LABEL_19:
    v14 = re::globalAllocators(a2);
    v15 = (*(*v14[2] + 32))(v14[2], 40, 8);
    v17 = re::globalAllocators(v16);
    v18 = (*(*v17[2] + 32))(v17[2], 24, 8);
    v19 = v18;
    if (*(v15 + 8))
    {
      v20 = *(v15 + 16);
    }

    else
    {
      v20 = v15 + 9;
    }

    *v18 = v20;
    *(v18 + 2) = 0;
    CompiledExtension = re::AssetType::generateCompiledExtension(v18);
    *(v15 + 32) = v19;
    v22 = *(v6 + 104);
    v23 = *(v6 + 112);
    if (v23 >= v22)
    {
      v24 = v23 + 1;
      if (v22 < v23 + 1)
      {
        if (*(v6 + 96))
        {
          v25 = 2 * v22;
          v26 = v22 == 0;
          v27 = 8;
          if (!v26)
          {
            v27 = v25;
          }

          if (v27 <= v24)
          {
            v28 = v24;
          }

          else
          {
            v28 = v27;
          }

          re::DynamicArray<float *>::setCapacity((v6 + 96), v28);
        }

        else
        {
          re::DynamicArray<float *>::setCapacity((v6 + 96), v24);
          ++*(v6 + 120);
        }
      }

      v23 = *(v6 + 112);
    }

    *(*(v6 + 128) + 8 * v23) = v15;
    *(v6 + 112) = v23 + 1;
    ++*(v6 + 120);
    v30 = *(v15 + 32);
    v31 = *a3;
    *a3 = 0;
    v34 = v31;
    std::__function::__value_func<void ()(re::AssetLoader *)>::__value_func[abi:nn200100](v35, (a3 + 1));
    re::internal::AssetTypeRegistry::registerAssetType(v6, v30, &v34);
    std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100](&v34);
    v32 = *(v15 + 32);
    *a4 = 1;
    *(a4 + 8) = v32;
  }

  else
  {
    v12 = *(a2 + 16);
    while (1)
    {
      a2 = strcasecmp(a1, **(v12 + (v9 << 6) + 8));
      if (!a2)
      {
        break;
      }

      if (v8 <= v9 + 1)
      {
        v13 = v9 + 1;
      }

      else
      {
        v13 = v8;
      }

      while (v13 - 1 != v9)
      {
        LODWORD(v9) = v9 + 1;
        if ((*(v12 + (v9 << 6)) & 0x80000000) != 0)
        {
          goto LABEL_18;
        }
      }

      LODWORD(v9) = v13;
LABEL_18:
      if (v9 == v8)
      {
        goto LABEL_19;
      }
    }

    re::WrappedError::make(&v33, @"REAssetTypeRegistrationErrorDomain", 5, 0);
    v29 = v33;
    v33 = 0;
    *a4 = 0;
    *(a4 + 8) = v29;
  }
}

unint64_t re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::findEntry<re::AssetType const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), &v5);
  return *(a1 + 16) + (v6 << 6) + 16;
}

uint64_t re::internal::AssetTypeRegistry::assetTypeWithExtension(re::internal::AssetTypeRegistry *this, const char *a2)
{
  v4 = *(this + 8);
  if (!v4)
  {
    LODWORD(v5) = 0;
    goto LABEL_15;
  }

  v5 = 0;
  v6 = *(this + 2);
  do
  {
    v7 = *v6;
    v6 += 16;
    if (v7 < 0)
    {
      goto LABEL_15;
    }

    ++v5;
  }

  while (v4 != v5);
  for (LODWORD(v5) = *(this + 8); ; LODWORD(v5) = v9)
  {
LABEL_15:
    if (v5 == v4)
    {
      return 0;
    }

    v8 = *(this + 2) + (v5 << 6);
    if ((*(**(v8 + 16) + 112))(*(v8 + 16), a2))
    {
      break;
    }

    v9 = *(this + 8);
    if (v9 <= v5 + 1)
    {
      v9 = v5 + 1;
    }

    while (v9 - 1 != v5)
    {
      LODWORD(v5) = v5 + 1;
      if ((*(*(this + 2) + (v5 << 6)) & 0x80000000) != 0)
      {
        goto LABEL_15;
      }
    }
  }

  return *(v8 + 8);
}

uint64_t re::internal::AssetTypeRegistry::assetTypeWithName(re::internal::AssetTypeRegistry *this, char *a2)
{
  v4 = a2;
  if (re::HashTable<char const*,re::AssetType const*,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::containsKey(this + 48, &v4))
  {
    return *re::HashTable<char const*,re::AssetType const*,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::operator[](this + 48, &v4);
  }

  else
  {
    return 0;
  }
}

BOOL re::HashTable<char const*,re::AssetType const*,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::containsKey(uint64_t a1, char **a2)
{
  v4 = re::CaseInsensitiveStringHash::operator()(&v6, *a2);
  re::HashTable<char const*,re::AssetType const*,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::findEntry<char const*>(a1, a2, v4, &v6);
  return v7 != 0x7FFFFFFF;
}

uint64_t re::HashTable<char const*,re::AssetType const*,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::operator[](uint64_t a1, char **a2)
{
  v4 = re::CaseInsensitiveStringHash::operator()(&v6, *a2);
  re::HashTable<char const*,re::AssetType const*,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::findEntry<char const*>(a1, a2, v4, &v6);
  return *(a1 + 16) + 32 * v7 + 16;
}

uint64_t re::internal::AssetTypeRegistry::assetTypeWithCompiledExtension(re::internal::AssetTypeRegistry *this, const char *__s2)
{
  v3 = *(this + 8);
  if (v3)
  {
    v4 = 0;
    v5 = *(this + 2);
    while (1)
    {
      v6 = *v5;
      v5 += 16;
      if (v6 < 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        LODWORD(v4) = *(this + 8);
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
    return 0;
  }

  v7 = *(this + 2);
  while (1)
  {
    v8 = *(v7 + (v4 << 6) + 8);
    if (!strcmp(*(v8 + 8), __s2))
    {
      return v8;
    }

    if (v3 <= v4 + 1)
    {
      v9 = v4 + 1;
    }

    else
    {
      v9 = v3;
    }

    while (v9 - 1 != v4)
    {
      LODWORD(v4) = v4 + 1;
      if ((*(v7 + (v4 << 6)) & 0x80000000) != 0)
      {
        goto LABEL_18;
      }
    }

    LODWORD(v4) = v9;
LABEL_18:
    if (v4 == v3)
    {
      return 0;
    }
  }
}

re *re::internal::destroyPersistent<re::AssetType>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    free(*(a3 + 8));
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

double re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::deinit(uint64_t *a1)
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
          std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>::~unique_ptr[abi:nn200100]((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 64;
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

uint64_t re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addInternal<re::AssetType const* const&,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>>(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v7 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  *(v7 + 8) = *a3;
  v8 = *a4;
  *a4 = 0;
  *(v7 + 16) = v8;
  v9 = v7 + 16;
  std::__function::__value_func<void ()(re::AssetLoader *)>::__value_func[abi:nn200100](v7 + 24, (a4 + 1));
  ++*(a1 + 40);
  return v9;
}

uint64_t re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::findEntry<re::AssetType const*>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_10;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(result + 16);
  if (*(v7 + (v6 << 6) + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_10:
    LODWORD(v6) = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + (v6 << 6)) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + (v8 << 6) + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + (v8 << 6)) & 0x7FFFFFFF;
      LODWORD(v6) = v9;
      if (v8 == 0x7FFFFFFF)
      {
        LODWORD(v6) = v9;
        goto LABEL_11;
      }
    }

    v5 = v8;
  }

LABEL_11:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
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
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = a1[2];
          *&v26[16] = v13;
          a1[2] = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 3);
          v14 = *&v26[32];
          *(a1 + 3) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::allocEntry(a1, *(v13 + 56) % *(a1 + 6), *(v13 + 56));
                *(v18 + 8) = *(v13 + 8);
                v19 = *(v13 + 16);
                *(v13 + 16) = 0;
                *(v18 + 16) = v19;
                std::__function::__value_func<void ()(re::AssetLoader *)>::__value_func[abi:nn200100](v18 + 24, v13 + 24);
              }

              ++v17;
              v13 += 64;
            }

            while (v17 < v16);
          }

          re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 6);
      v6 = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    v20 = a1[2];
    v21 = *(v20 + (v5 << 6));
  }

  else
  {
    v20 = a1[2];
    v21 = *(v20 + (v5 << 6));
    *(a1 + 9) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + (v5 << 6);
  *v23 = v21 | 0x80000000;
  v24 = a1[1];
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v23 + 56) = a3;
  *(v24 + 4 * a2) = v5;
  ++*(a1 + 7);
  return v20 + (v5 << 6);
}

void re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + (v10 << 6), 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_13, 4 * v10);
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

uint64_t re::HashTable<char const*,re::AssetType const*,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::findEntry<char const*>@<X0>(uint64_t result@<X0>, const char **a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_11;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_11:
    LODWORD(v8) = 0x7FFFFFFF;
    goto LABEL_12;
  }

  v9 = *(result + 16);
  v10 = *a2;
  result = strcasecmp(*(v9 + 32 * v8 + 8), *a2);
  if (!result)
  {
    v6 = v8;
    goto LABEL_11;
  }

  v11 = *(v9 + 32 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = strcasecmp(*(v9 + 32 * v11 + 8), v10);
      if (!result)
      {
        break;
      }

      v11 = *(v9 + 32 * v12) & 0x7FFFFFFF;
      LODWORD(v8) = v12;
      if (v11 == 0x7FFFFFFF)
      {
        LODWORD(v8) = v12;
        goto LABEL_12;
      }
    }

    v6 = v12;
  }

LABEL_12:
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

uint64_t re::HashTable<char const*,re::AssetType const*,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
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
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<char const*,re::AssetType const*,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = a1[2];
          *&v26[16] = v13;
          a1[2] = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 3);
          v14 = *&v26[32];
          *(a1 + 3) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 16);
            do
            {
              if ((*(v18 - 2) & 0x80000000) != 0)
              {
                v19 = re::HashTable<char const*,re::AssetType const*,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::allocEntry(a1, v18[1] % *(a1 + 6), v18[1]);
                *(v19 + 8) = *(v18 - 1);
                *(v19 + 16) = *v18;
              }

              ++v17;
              v18 += 4;
            }

            while (v17 < v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 6);
      v6 = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    v20 = a1[2];
    v21 = *(v20 + 32 * v5);
  }

  else
  {
    v20 = a1[2];
    v21 = *(v20 + 32 * v5);
    *(a1 + 9) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 32 * v5;
  *v23 = v21 | 0x80000000;
  v24 = a1[1];
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v23 + 24) = a3;
  *(v24 + 4 * a2) = v5;
  ++*(a1 + 7);
  return v20 + 32 * v5;
}

void re::HashTable<char const*,re::AssetType const*,re::CaseInsensitiveStringHash,re::CaseInsensitiveStringEqualTo,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 32 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_13, 4 * v10);
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

void anonymous namespace::assetEntryAllocator(_anonymous_namespace_ *this)
{
  {
    byte_1EE1C7A60 = 0;
    *algn_1EE1C7A58 = "AssetEntry allocator";
  }
}

void re::internal::SharedAssetPointer::makeSharedAssetPointer(_anonymous_namespace_ **__return_ptr a1@<X8>, re::internal::SharedAssetPointer *this@<X0>)
{
  v4 = re::globalAllocators(this);
  v5 = (*(*v4[2] + 32))(v4[2], 32, 8);
  ArcSharedObject::ArcSharedObject(v5, 0);
  *(v5 + 3) = this;
  *v5 = &unk_1F5CBA430;
  *a1 = v5;
}

re *re::internal::SharedAssetPointer::dispose(re *this)
{
  if (this)
  {
    v1 = this;
    v2 = re::globalAllocators(this)[2];
    (**v1)(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return this;
}

uint64_t re::internal::AssetEntry::makeAssetEntry@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  result = re::internal::AssetEntry::AssetEntry(v4, 1, v2);
  *a2 = result;
  return result;
}

void re::internal::AssetEntry::makeAssetEntry(re::internal::AssetEntry *this@<X0>, void *a2@<X1>, const re::AssetType *a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a3;
  *a4 = re::internal::AssetEntry::AssetEntry(v8, 1, 0);
  re::internal::SharedAssetPointer::makeSharedAssetPointer(&v9, this);
  re::internal::AssetEntry::LoadState::setAssetPointer((v8 + 896), &v9);
  if (v9)
  {
  }

  *(v8 + 280) = a2;
  *(v8 + 258) = v4;
}

void re::internal::AssetEntry::LoadState::setAssetPointer(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[3];
  os_unfair_lock_lock(v4);
  re::internal::AssetEntry::LoadState::setAssetPointer_locked(a1, a2);

  os_unfair_lock_unlock(v4);
}

uint64_t re::internal::AssetEntry::AssetEntry(uint64_t a1, char a2, int a3)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 24) = 0;
  *a1 = &unk_1F5CBA460;
  *(a1 + 256) = 0;
  *(a1 + 257) = a2;
  *(a1 + 258) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 352) = 0;
  *(a1 + 368) = 0;
  *(a1 + 384) = 0;
  *(a1 + 512) = 0;
  *(a1 + 276) = 0u;
  *(a1 + 292) = 0u;
  *(a1 + 308) = 0;
  *(a1 + 548) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0x7FFFFFFF00000000;
  *(a1 + 592) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0x7FFFFFFF00000000;
  *(a1 + 640) = 0;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 1;
  *(a1 + 672) = 0u;
  *(a1 + 704) = 0;
  *(a1 + 708) = 0;
  *(a1 + 720) = 0;
  *(a1 + 548) = a3;
  *(a1 + 768) = 0;
  *(a1 + 896) = 0;
  *(a1 + 904) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 804) = 0u;
  *(a1 + 920) = a1 + 512;
  *(a1 + 928) = 0;
  *(a1 + 936) = 0;
  *(a1 + 944) = 0;
  *(a1 + 952) = 0;
  *(a1 + 960) = 0;
  *(a1 + 968) = 0;
  objc_initWeak((a1 + 1024), 0);
  *(a1 + 1032) = 0;
  *(a1 + 1040) = 0;
  *(a1 + 792) = atomic_fetch_add(&re::internal::AssetEntry::AssetEntry(BOOL,re::AssetNetworkSharingMode)::uniqueHashID, 1uLL);
  return a1;
}

void re::internal::AssetEntry::~AssetEntry(re::internal::AssetEntry *this)
{
  *this = &unk_1F5CBA460;
  objc_destroyWeak(this + 128);
  *(this + 128) = 0;
  v3 = *(this + 114);
  if (v3)
  {

    *(this + 114) = 0;
  }

  v4 = *(this + 113);
  if (v4)
  {

    *(this + 113) = 0;
  }

  if (*(this + 720) == 1)
  {
    v2.n128_f64[0] = re::DynamicString::deinit((this + 728));
  }

  v5 = *(this + 81);
  if (v5)
  {
    v6 = *(this + 166);
    if ((v6 & 1) == 0)
    {
      (*(*v5 + 40))(v5, *(this + 85), v2);
      v6 = *(this + 166);
    }

    *(this + 81) = 0;
    *(this + 82) = 0;
    *(this + 166) = (v6 | 1) + 2;
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 75);
  re::HashTable<re::DynamicString,re::Optional<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 69);
  v10 = *(this + 65);
  if (v10)
  {
    re::details::release<re::ResourceRequest>(v10, v7, v8, v9);
    *(this + 65) = 0;
  }

  re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::deinit(this + 288);
  v11 = *(this + 33);
  if (v11)
  {

    *(this + 33) = 0;
  }

  re::DynamicString::deinit((this + 224));
  re::DynamicString::deinit((this + 192));
  re::DynamicString::deinit((this + 160));
  re::DynamicString::deinit((this + 128));
  re::DynamicString::deinit((this + 72));
  re::DynamicString::deinit((this + 40));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::internal::AssetEntry::~AssetEntry(this);

  JUMPOUT(0x1E6906510);
}

re::internal::AssetEntry::LoadState *re::internal::AssetEntry::LoadState::unloadAssetPointer_locked(re::internal::AssetEntry::LoadState *this, re::AssetLoader *a2)
{
  v2 = *(this + 1);
  if (!v2 || !*(v2 + 24))
  {
    return this;
  }

  v4 = this;
  v5 = [v2 + 8 retainCount];
  v6 = *(v4 + 1);
  if (v5 == 1)
  {
    (*(*a2 + 16))(a2, *(v6 + 24));
    v6 = *(v4 + 1);
    *(v6 + 24) = 0;
LABEL_7:

    *(v4 + 1) = 0;
    goto LABEL_8;
  }

  if (v6)
  {
    goto LABEL_7;
  }

LABEL_8:

  return re::internal::AssetEntry::LoadState::refreshLoadState_locked(v4);
}

uint64_t re::internal::AssetEntry::assetPointer(re::internal::AssetEntry *this)
{
  v1 = *(this + 113);
  if (!v1)
  {
    return 0;
  }

  v2 = (v1 + 8);
  v3 = *(v1 + 24);

  return v3;
}

uint64_t re::internal::AssetEntry::LoadState::clearAndReturnAssetPointer_locked(re::internal::AssetEntry::LoadState *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v3 = [v1 + 8 retainCount];
    if (v3 < 2)
    {
      v6 = *(this + 1);
      v5 = *(v6 + 24);
      *(v6 + 24) = 0;

      *(this + 1) = 0;
      re::internal::AssetEntry::LoadState::refreshLoadState_locked(this);
      return v5;
    }

    v4 = *re::assetsLogObjects(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "clearAndReturnAssetPointer() not supported for Assets that share AssetPointer", v8, 2u);
    }
  }

  return 0;
}

BOOL re::internal::AssetEntry::hasAssetPointer(re::internal::AssetEntry *this)
{
  v1 = *(this + 113);
  if (!v1)
  {
    return 0;
  }

  v2 = (v1 + 8);
  v3 = *(v1 + 24) != 0;

  return v3;
}

BOOL re::internal::AssetEntry::hasLoadingAssetPointer(re::internal::AssetEntry *this)
{
  v1 = *(this + 114);
  if (!v1)
  {
    return 0;
  }

  v2 = (v1 + 8);
  v3 = *(v1 + 24) != 0;

  return v3;
}

unint64_t *re::internal::AssetEntry::ownerPeerID@<X0>(uint64_t *__return_ptr a1@<X8>, unint64_t *this@<X0>)
{
  v3 = atomic_load(this + 100);
  if (v3)
  {
    *a1 = 1;
    a1[1] = v3;
  }

  else if (*(this + 30) == 4)
  {
    if (this[6])
    {
      v4 = this[7];
    }

    else
    {
      v4 = this + 49;
    }

    v6 = 0;
    this = sscanf(v4, "%llu", &v6);
    if (this == 1)
    {
      a1[1] = v6;
      v5 = 1;
    }

    else
    {
      v5 = 0;
    }

    *a1 = v5;
  }

  else
  {
    *a1 = 0;
  }

  return this;
}

unint64_t *re::internal::AssetEntry::fromPeerID@<X0>(uint64_t *__return_ptr a1@<X8>, unint64_t *this@<X0>)
{
  v3 = atomic_load(this + 101);
  if (v3)
  {
    *a1 = 1;
    a1[1] = v3;
  }

  else if (*(this + 30) == 4)
  {
    if (this[6])
    {
      v4 = this[7];
    }

    else
    {
      v4 = this + 49;
    }

    v6 = 0;
    this = sscanf(v4, "%llu", &v6);
    if (this == 1)
    {
      a1[1] = v6;
      v5 = 1;
    }

    else
    {
      v5 = 0;
    }

    *a1 = v5;
  }

  else
  {
    *a1 = 0;
  }

  return this;
}

void re::internal::AssetEntry::setOwnerPeerID(atomic_ullong *this, unint64_t a2)
{
  v2 = 0;
  atomic_compare_exchange_strong(this + 100, &v2, a2);
  if (v2)
  {
    v3 = *re::assetsLogObjects(this);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "m_ownerPeerID was assigned a new value after it was already set.", v4, 2u);
    }
  }
}

void re::internal::AssetEntry::setFromPeerID(atomic_ullong *this, unint64_t a2)
{
  v2 = 0;
  atomic_compare_exchange_strong(this + 101, &v2, a2);
  if (v2)
  {
    v3 = *re::assetsLogObjects(this);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "m_fromPeerID was assigned a new value after it was already set.", v4, 2u);
    }
  }
}

void re::internal::AssetEntry::setResourceClientLoadState(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char *a5)
{
  os_unfair_lock_lock((a1 + 512));
  if (*(a1 + 664))
  {
    v10 = a1 + 672;
  }

  else
  {
    v10 = *(a1 + 680);
  }

  v11 = *(a1 + 656);
  if (v11)
  {
    v12 = (v10 + 28);
    v13 = 32 * v11;
    while (*(v12 - 7) != a2)
    {
      v12 += 8;
      v13 -= 32;
      if (!v13)
      {
        goto LABEL_8;
      }
    }

    *(v12 - 5) = a3;
    *(v12 - 3) = a4;
    if (*(v12 - 1))
    {
      if ((*a5 & 1) == 0)
      {
        *(v12 - 4) = 0;
        goto LABEL_11;
      }
    }

    else
    {
      if ((*a5 & 1) == 0)
      {
        goto LABEL_11;
      }

      *(v12 - 4) = 1;
    }

    *v12 = *(a5 + 1);
    goto LABEL_11;
  }

LABEL_8:
  *&v14 = a2;
  DWORD2(v14) = a3;
  v15 = a4;
  v16 = *a5;
  if (v16 == 1)
  {
    v17 = *(a5 + 1);
  }

  re::DynamicOverflowArray<re::internal::AssetEntry::State::ResourceSharingClientLoadState,1ul>::add(a1 + 648, &v14);
LABEL_11:
  os_unfair_lock_unlock((a1 + 512));
}

uint64_t re::DynamicOverflowArray<re::internal::AssetEntry::State::ResourceSharingClientLoadState,1ul>::add(uint64_t a1, __int128 *a2)
{
  result = re::DynamicOverflowArray<re::internal::AssetEntry::State::ResourceSharingClientLoadState,1ul>::ensureCapacity(a1);
  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  v6 = v5 + 32 * *(a1 + 8);
  v7 = *a2;
  *(v6 + 16) = *(a2 + 2);
  *v6 = v7;
  v8 = *(a2 + 24);
  *(v6 + 24) = v8;
  if (v8 == 1)
  {
    *(v6 + 28) = *(a2 + 7);
  }

  ++*(a1 + 8);
  *(a1 + 16) += 2;
  return result;
}

void anonymous namespace::assetManagerDetachLock(_anonymous_namespace_ *this)
{
  {
  }
}

void re::internal::AssetEntry::addToAssetManager_assetTablesLocked(re::internal::AssetEntry *this, re::AssetManager *a2, const re::AssetPath *a3, char a4)
{
  *(this + 257) = a4;
  *(this + 3) = a2;
  *(this + 35) = *(a3 + 9);
  re::ExistingAssetInformation::setupFromPath((this + 32), a3);
  re::AssetManager::getDescription_assetTablesLocked(*(this + 3), *(this + 24), this, 0, &v8);
  re::DynamicString::operator=((this + 192), &v8);
  re::ExistingAssetInformation::CachedLogName::updateLogName((this + 160), v6);
  if (v8 && (v9 & 1) != 0)
  {
    (*(*v8 + 40))();
  }

  if (*(a2 + 240))
  {
    v7 = *(this + 14);
    if ((v7 + 1) >= 2)
    {
      re::NetworkActionQueue::queueSyncActionShareLoadState((a2 + 1152), v7);
    }
  }
}

void re::internal::AssetEntry::removeFromAssetManager(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 128);
  atomic_load(&this[224]._os_unfair_lock_opaque);
  *&this[6]._os_unfair_lock_opaque = 0;
  re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::clear(&this[72]);
  os_unfair_lock_unlock(this + 128);
}

void re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 8 * v2;
    do
    {
      objc_destroyWeak(v3);
      *v3++ = 0;
      v4 -= 8;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

void re::internal::AssetEntry::cancelResourceRequest_stateLocked(uint64_t this)
{
  if (*(this + 520))
  {
    (*(**(*(this + 24) + 1832) + 96))(*(*(this + 24) + 1832));
    v5 = *(this + 520);
    if (v5)
    {
      re::details::release<re::ResourceRequest>(v5, v2, v3, v4);
      *(this + 520) = 0;
    }
  }
}

void re::internal::AssetEntry::addExplicitParentDependency(re::internal::AssetEntry *this, re::internal::AssetEntry *a2)
{
  if (a2)
  {
    v3 = a2 + 8;
  }

  else
  {
    v3 = 0;
  }

  objc_initWeak(&location, v3);
  re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::add((this + 288), &location);
  objc_destroyWeak(&location);
}

void re::internal::AssetEntry::getMetadataString(os_unfair_lock_s *a1@<X0>, char *a2@<X1>, int a3@<W2>, _BYTE *a4@<X8>)
{
  if (a3)
  {
    os_unfair_lock_lock(a1 + 128);
  }

  v8 = re::HashTable<re::DynamicString,re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase const>>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(&a1[138], a2);
  if (!v8)
  {
    v13 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(&a1[150], a2);
    v14 = 1;
    if (!v13)
    {
      goto LABEL_10;
    }

    v12 = v13;
    *a4 = 1;
    v11 = (a4 + 8);
    goto LABEL_8;
  }

  v9 = v8;
  v10 = *v8;
  *a4 = v10;
  if (v10 == 1)
  {
    v11 = (a4 + 8);
    v12 = (v9 + 8);
LABEL_8:
    re::DynamicString::DynamicString(v11, v12);
  }

  v14 = 0;
LABEL_10:
  if (a3)
  {
    os_unfair_lock_unlock(a1 + 128);
  }

  if (v14)
  {
    *a4 = 0;
  }
}

void re::internal::AssetEntry::setOrClearMetadata_stateLocked(re::internal::AssetEntry *this, const re::StringID *a2, const char *a3)
{
  v6 = *(a2 + 1);
  v7 = strcmp(v6, "__RuntimeAssetSize");
  if (v7)
  {
    if (a3)
    {
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  v17 = v6;
  v10 = re::Hash<re::DynamicString>::operator()(buf, v6);
  v7 = re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(this + 552, &v17, v10, buf);
  if (HIDWORD(v21[0]) == 0x7FFFFFFF)
  {
    v6 = *(a2 + 1);
    if (a3)
    {
LABEL_3:
      buf[0] = 1;
      v21[0] = v17;
      v21[3] = v19;
      *&v21[1] = v18;
      v19 = 0;
      v17 = 0;
      v18 = 0uLL;
      re::HashTable<re::DynamicString,re::Optional<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(this + 552, v6, buf);
      if (buf[0] == 1 && v21[0])
      {
        if (v21[1])
        {
          (*(*v21[0] + 40))();
        }

        memset(v21, 0, sizeof(v21));
      }

      v8 = v17;
      if (!v17 || (v18 & 1) == 0)
      {
        goto LABEL_18;
      }

      v9 = *(&v18 + 1);
      goto LABEL_17;
    }

LABEL_13:
    buf[0] = 0;
    re::HashTable<re::DynamicString,re::Optional<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(this + 552, v6, buf);
    if (buf[0] != 1)
    {
      goto LABEL_18;
    }

    v8 = v21[0];
    if (!v21[0] || (v21[1] & 1) == 0)
    {
      goto LABEL_18;
    }

    v9 = v21[2];
LABEL_17:
    (*(*v8 + 40))(v8, v9);
LABEL_18:
    if (re::StringID::operator==(a2, re::internal::AssetEntry::kDebugNameMetadataKeyID))
    {
      re::ExistingAssetInformation::CachedLogName::setDebugMetadata((this + 160), a3);
    }

    return;
  }

  if (a3)
  {
    v11 = *re::assetsLogObjects(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "Can't override runtime asset size if it was automatically set during load.", buf, 2u);
    }
  }

  else
  {
    v17 = *(a2 + 1);
    v12 = re::Hash<re::DynamicString>::operator()(buf, v17);
    re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(this + 552, &v17, v12, buf);
    v13 = HIDWORD(v21[0]);
    if (HIDWORD(v21[0]) != 0x7FFFFFFF)
    {
      v14 = *(this + 71);
      v15 = *(v14 + 88 * HIDWORD(v21[0])) & 0x7FFFFFFF;
      if (LODWORD(v21[1]) == 0x7FFFFFFF)
      {
        *(*(this + 70) + 4 * LODWORD(v21[0])) = v15;
        v13 = HIDWORD(v21[0]);
      }

      else
      {
        *(v14 + 88 * LODWORD(v21[1])) = *(v14 + 88 * LODWORD(v21[1])) & 0x80000000 | v15;
      }

      re::HashTable<re::DynamicString,re::Optional<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((v14 + 88 * v13));
      v16 = HIDWORD(v21[0]);
      *(*(this + 71) + 88 * HIDWORD(v21[0])) = *(*(this + 71) + 88 * HIDWORD(v21[0])) & 0x80000000 | *(this + 147);
      *(this + 147) = v16;
      --*(this + 145);
      ++*(this + 148);
    }
  }
}

re::DynamicString *re::HashTable<re::DynamicString,re::Optional<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(uint64_t a1, char *a2, void *a3)
{
  v17 = 0;
  v18 = a2;
  v15 = 0;
  v16 = 0;
  v5 = re::Hash<re::DynamicString>::operator()(&v19, a2);
  re::HashTable<re::DynamicString,std::variant<re::DynamicString,re::Data>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v18, v5, &v15);
  v6 = HIDWORD(v16);
  if (HIDWORD(v16) == 0x7FFFFFFF)
  {
    v7 = re::HashTable<re::DynamicString,re::Optional<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v16, v15);
    v8 = v18;
    v10 = *a3;
    *(v7 + 40) = v10;
    if (v10 == 1)
    {
      *(v7 + 48) = 0u;
      *(v7 + 64) = 0u;
      *(v7 + 72) = a3[4];
      v11 = a3[2];
      *(v7 + 48) = a3[1];
      a3[1] = 0;
      v12 = a3[3];
      a3[4] = 0;
      v14 = *(v7 + 56);
      v13 = *(v7 + 64);
      *(v7 + 56) = v11;
      *(v7 + 64) = v12;
      a3[2] = v14;
      a3[3] = v13;
    }

    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    return re::Optional<re::DynamicString>::operator=(*(a1 + 16) + 88 * v6 + 40, a3);
  }

  return result;
}

double re::internal::AssetEntry::updateMetadata(uint64_t this, char a2)
{
  if (*(*(this + 24) + 1920))
  {
    v3 = *(this + 112);
    if ((v3 + 1) >= 2)
    {
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      v28 = 0x7FFFFFFFLL;
      if ((a2 & 1) == 0)
      {
        os_unfair_lock_lock((this + 512));
      }

      re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(&v25, &v21);
      re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v21);
      v6 = v27;
      if (v27)
      {
        v7 = 0;
        v8 = v26;
        while (1)
        {
          v9 = *v8;
          v8 += 16;
          if (v9 < 0)
          {
            break;
          }

          if (v27 == ++v7)
          {
            LODWORD(v7) = v27;
            break;
          }
        }
      }

      else
      {
        LODWORD(v7) = 0;
      }

      if (v7 != v27)
      {
        v10 = v26;
        do
        {
          v11 = v10 + (v7 << 6);
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v12 = re::DynamicString::setCapacity(&v21, 0);
          if (*(v11 + 24) == 1)
          {
            v12 = re::DynamicString::operator=(&v21, (v11 + 32));
          }

          v13 = *(v11 + 16);
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v14 = re::Hash<re::DynamicString>::operator()(&v32, &v18);
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(this + 600, v14, &v29, &v18);
          if (HIDWORD(v30) == 0x7FFFFFFF)
          {
            v15 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(this + 600, v30, v29);
            *(v15 + 8) = v18;
            *(v15 + 32) = v20;
            *(v15 + 16) = v19;
            v20 = 0;
            v18 = 0;
            v19 = 0uLL;
            re::DynamicString::DynamicString((v15 + 40), &v21);
            ++*(this + 640);
          }

          if (v18 && (v19 & 1) != 0)
          {
            (*(*v18 + 40))();
          }

          v5 = v21;
          if (v21 && (v22 & 1) != 0)
          {
            v5 = (*(*v21 + 40))();
          }

          if (v27 <= v7 + 1)
          {
            v16 = v7 + 1;
          }

          else
          {
            v16 = v27;
          }

          v10 = v26;
          while (v16 - 1 != v7)
          {
            LODWORD(v7) = v7 + 1;
            if ((*(v26 + (v7 << 6)) & 0x80000000) != 0)
            {
              goto LABEL_32;
            }
          }

          LODWORD(v7) = v16;
LABEL_32:
          ;
        }

        while (v7 != v6);
      }

      if ((a2 & 1) == 0)
      {
        os_unfair_lock_unlock((this + 512));
      }

      re::NetworkActionQueue::queueSyncActionShareMetadata((*(this + 24) + 1152), v3);
      return re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v25);
    }
  }

  return result;
}

void anonymous namespace::convertOut(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 36) = 0x7FFFFFFFLL;
  v4 = *(result + 32);
  if (v4)
  {
    v5 = 0;
    v6 = *(result + 16);
    while (1)
    {
      v7 = *v6;
      v6 += 22;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(result + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v4)
  {
    v8 = *(result + 16);
    do
    {
      v9 = v8 + 88 * v5;
      re::StringID::StringID(v12, (v9 + 8));
      v10 = re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a2, v12, (v9 + 40));
      if (v12[0])
      {
        if (v12[0])
        {
        }
      }

      if (*(result + 32) <= (v5 + 1))
      {
        v11 = v5 + 1;
      }

      else
      {
        v11 = *(result + 32);
      }

      v8 = *(result + 16);
      while (v11 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + 88 * v5) & 0x80000000) != 0)
        {
          goto LABEL_20;
        }
      }

      LODWORD(v5) = v11;
LABEL_20:
      ;
    }

    while (v5 != v4);
  }
}

uint64_t re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, v5);
        }

        re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

void re::internal::AssetEntry::copyMetadataAndMemoryAttributionIDToNetworkAssetService(re::internal::AssetEntry *this)
{
  re::AssetManager::assertOnEngineQueue(*(this + 3));
  if (*(*(this + 3) + 1920))
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    v6 = 0x7FFFFFFFLL;
    os_unfair_lock_lock(this + 128);
    re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(v4, v3);
    re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v3);
    os_unfair_lock_unlock(this + 128);
    if (*(this + 14) == -1)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 14);
    }

    (*(**(*(this + 3) + 1920) + 48))(*(*(this + 3) + 1920), v2, v4, this + 336);
    re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v4);
  }
}

void re::internal::AssetEntry::setMetadata(uint64_t a1, uint64_t a2)
{
  re::AssetManager::assertOnEngineQueue(*(a1 + 24));
  if (*(*(a1 + 24) + 1920) && (*(a1 + 112) + 1) >= 2)
  {
    os_unfair_lock_lock((a1 + 512));
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1 + 600);
    v5 = *(a2 + 32);
    if (v5)
    {
      v6 = 0;
      v7 = *(a2 + 16);
      while (1)
      {
        v8 = *v7;
        v7 += 14;
        if (v8 < 0)
        {
          break;
        }

        if (v5 == ++v6)
        {
          LODWORD(v6) = *(a2 + 32);
          break;
        }
      }
    }

    else
    {
      LODWORD(v6) = 0;
    }

    if (v6 != v5)
    {
      v9 = *(a2 + 16);
      do
      {
        v10 = (v9 + 56 * v6);
        v11 = v10[2];
        v13 = v10[4];
        v14 = v10[5];
        if ((v13 & 1) == 0)
        {
          v14 = v10 + 33;
        }

        v15 = v13 >> 1;
        v16 = v13 >> 1;
        if (v10[4])
        {
          v17 = v15;
        }

        else
        {
          v17 = v16;
        }

        v20[0] = v14;
        v20[1] = v17;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        if (v17)
        {
          v18 = v17 + 1;
        }

        else
        {
          v18 = 0;
        }

        re::DynamicString::setCapacity(&v21, v18);
        re::DynamicString::operator=(&v21, v20);
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(a1 + 600, &v25, &v21);
        if (v21 && (v22 & 1) != 0)
        {
          (*(*v21 + 40))();
        }

        v4 = v25;
        if (v25 && (v26 & 1) != 0)
        {
          v4 = (*(*v25 + 40))();
        }

        if (*(a2 + 32) <= (v6 + 1))
        {
          v19 = v6 + 1;
        }

        else
        {
          v19 = *(a2 + 32);
        }

        v9 = *(a2 + 16);
        while (v19 - 1 != v6)
        {
          LODWORD(v6) = v6 + 1;
          if ((*(v9 + 56 * v6) & 0x80000000) != 0)
          {
            goto LABEL_33;
          }
        }

        LODWORD(v6) = v19;
LABEL_33:
        ;
      }

      while (v6 != v5);
    }

    os_unfair_lock_unlock((a1 + 512));
  }
}

uint64_t re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(uint64_t a1, void *a2, void *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v11, a2);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, v6, &v8, a2);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString,re::DynamicString>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 80 * HIDWORD(v9) + 40;
  }
}

void re::internal::AssetEntry::updateMutatedRuntimeAssetSize(os_unfair_lock_s *this)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*&this[6]._os_unfair_lock_opaque)
  {
    v12.__r_.__value_.__r.__words[0] = 0;
    v12.__r_.__value_.__l.__size_ = &str_67;
    os_unfair_lock_lock(this + 128);
    re::internal::AssetEntry::setOrClearMetadata_stateLocked(this, &v12, 0);
    os_unfair_lock_unlock(this + 128);
    if (v12.__r_.__value_.__s.__data_[0])
    {
      if (v12.__r_.__value_.__s.__data_[0])
      {
      }
    }

    if (LOBYTE(this[88]._os_unfair_lock_opaque) == 1)
    {
      LOBYTE(this[88]._os_unfair_lock_opaque) = 0;
    }

    v3 = *&this[6]._os_unfair_lock_opaque;
    if (*(v3 + 2200) == 1)
    {
      os_unfair_lock_lock(this + 128);
      v4 = re::AssetManager::assetByteSize_entryLocked(v3, this);
      os_unfair_lock_unlock(this + 128);
      v5 = std::to_string(&v12, v4);
      v10 = 0;
      v11 = &str_67;
      if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v12;
      }

      else
      {
        v6 = v12.__r_.__value_.__r.__words[0];
      }

      os_unfair_lock_lock(this + 128);
      re::internal::AssetEntry::setOrClearMetadata_stateLocked(this, &v10, v6);
      os_unfair_lock_unlock(this + 128);
      if (v10)
      {
        if (v10)
        {
        }
      }

      re::internal::AssetEntry::updateMetadata(this, 0);
      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    v8 = *re::assetsLogObjects(this);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      if (this[42]._os_unfair_lock_opaque)
      {
        v9 = *&this[44]._os_unfair_lock_opaque;
      }

      else
      {
        v9 = &this[42]._os_unfair_lock_opaque + 1;
      }

      LODWORD(v12.__r_.__value_.__l.__data_) = 136315138;
      *(v12.__r_.__value_.__r.__words + 4) = v9;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Updating mutated asset size failed. Asset isn't in an asset manager '%s'.", &v12, 0xCu);
    }
  }
}

void re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(re::internal::AssetEntry *this)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2)
  {
    if (*(this + 368) == 1)
    {
      *(this + 368) = 0;
    }

    if (*(this + 384) == 1)
    {
      *(this + 384) = 0;
    }

    if (*(v2 + 2217) == 1)
    {
      os_unfair_lock_lock(this + 128);
      re::AssetManager::assetNonSharedDataByteSize_entryStateLocked(v2, this);

      os_unfair_lock_unlock(this + 128);
    }
  }

  else
  {
    v3 = *re::assetsLogObjects(this);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      if (*(this + 168))
      {
        v4 = *(this + 22);
      }

      else
      {
        v4 = this + 169;
      }

      v5 = 136315138;
      v6 = v4;
      _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Updating mutated asset size failed. Asset isn't in an asset manager '%s'.", &v5, 0xCu);
    }
  }
}

void re::internal::AssetEntry::LoadState::setAssetPointer_locked(uint64_t *a1, uint64_t *a2)
{
  v5 = a1[1];
  v3 = a1 + 1;
  v4 = v5;
  if (v5)
  {
    v6 = *(v4 + 24) != 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  v8 = *(v7 + 24) != 0;
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v3, v7);
  if (v6 != v8)
  {

    re::internal::AssetEntry::LoadState::refreshLoadState_locked(a1);
  }
}

__uint64_t re::internal::AssetEntry::LoadState::refreshLoadState_locked(__uint64_t this)
{
  v1 = this;
  v2 = *(this + 24);
  if (*(v2 + 192) == 1)
  {
    v3 = 1;
LABEL_5:
    atomic_store(v3, this);
    return this;
  }

  if (*(v2 + 208) == 1)
  {
    v3 = 3;
    goto LABEL_5;
  }

  v4 = *(this + 8);
  if (v4 && *(v4 + 24) && !*(this + 16))
  {
    atomic_store(2u, this);
    this = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    *(v1 + 48) = this;
    *(v1 + 56) = 1;
  }

  else
  {
    atomic_store(0, this);
  }

  return this;
}

void re::internal::AssetEntry::LoadState::clearAndResetAssetPointer_locked(re::internal::AssetEntry::LoadState *this)
{
  v2 = *(this + 1);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  *(this + 1) = 0;
  if (v3)
  {

    re::internal::AssetEntry::LoadState::refreshLoadState_locked(this);
  }
}

void re::internal::AssetEntry::LoadState::resetAssetPointer_locked(re::internal::AssetEntry::LoadState *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v3 = *(v1 + 24);

    *(this + 1) = 0;
    if (v3)
    {

      re::internal::AssetEntry::LoadState::refreshLoadState_locked(this);
    }
  }
}

void re::internal::AssetEntry::LoadState::setLoadingAssetPointer_locked(__uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 16);
  v5 = (a1 + 16);
  v6 = v7;
  if (v7)
  {
    v8 = *(v6 + 24) != 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = *a2;
  v10 = *(v9 + 24);
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v5, v9);
  if (v8 != (v10 != 0))
  {
    refreshed = re::internal::AssetEntry::LoadState::refreshLoadState_locked(a1);
  }

  if (v10)
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = *re::assetsLogObjects(refreshed);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 134217984;
      v15 = a3;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "setLoadingAssetPointer_locked is being called on AssetEntry %llu while it already has a loading asset pointer. This could cause a crash, or cause the AssetEntry to end up with the wrong data loaded. This might be caused by high-frequency mutations of an asset.", &v14, 0xCu);
    }
  }
}

void re::internal::AssetEntry::LoadState::clearAndResetLoadingAssetPointer_locked(re::internal::AssetEntry::LoadState *this)
{
  v2 = *(this + 2);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  *(this + 2) = 0;
  if (v3)
  {

    re::internal::AssetEntry::LoadState::refreshLoadState_locked(this);
  }
}

void re::internal::AssetEntry::LoadState::resetLoadingAssetPointer_locked(re::internal::AssetEntry::LoadState *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v3 = *(v1 + 24);

    *(this + 2) = 0;
    if (v3)
    {

      re::internal::AssetEntry::LoadState::refreshLoadState_locked(this);
    }
  }
}

__uint64_t re::internal::AssetEntry::LoadState::clearLoadFailure_locked(re::internal::AssetEntry::LoadState *this)
{
  v2 = *(this + 3);
  if (*(v2 + 196) == 1)
  {
    *(v2 + 196) = 0;
  }

  v4[0] = 0;
  re::Optional<re::DynamicString>::operator=(v2 + 208, v4);
  if (v4[0] == 1 && v5 && (v6 & 1) != 0)
  {
    (*(*v5 + 40))();
  }

  return re::internal::AssetEntry::LoadState::refreshLoadState_locked(this);
}

__uint64_t re::internal::AssetEntry::LoadState::setLoadFailure_locked(__uint64_t a1, int a2, re::DynamicString *a3)
{
  v4 = *(a1 + 24);
  if ((*(v4 + 196) & 1) == 0)
  {
    *(v4 + 196) = 1;
  }

  *(v4 + 200) = a2;
  v6[0] = 1;
  re::DynamicString::DynamicString(&v7, a3);
  re::Optional<re::DynamicString>::operator=(*(a1 + 24) + 208, v6);
  if (v6[0] == 1 && v7 && (v8 & 1) != 0)
  {
    (*(*v7 + 40))();
  }

  return re::internal::AssetEntry::LoadState::refreshLoadState_locked(a1);
}

void re::internal::AssetEntry::setIsLoading_locked(re::internal::AssetEntry *this, BOOL a2)
{
  if (re::internal::AssetEntry::LoadState::setIsLoading_locked((this + 896), a2))
  {
    v3 = *(this + 3);
    if (v3)
    {
      v4 = atomic_load(this + 224);
      v5 = v4;
      re::AssetManager::entryLoadStateChanged(v3, this, &v5);
    }
  }
}

BOOL re::internal::AssetEntry::LoadState::setIsLoading_locked(re::internal::AssetEntry::LoadState *this, int a2)
{
  v3 = *(this + 3);
  v4 = *(v3 + 192);
  if (v4 != a2)
  {
    *(v3 + 192) = a2;
    if (a2 && (*(this + 40) & 1) == 0)
    {
      *(this + 4) = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      *(this + 40) = 1;
    }

    re::internal::AssetEntry::LoadState::refreshLoadState_locked(this);
  }

  return v4 != a2;
}

void re::internal::AssetEntry::makeAssetReference(uint64_t *__return_ptr a1@<X8>, re::internal::AssetEntry *this@<X0>)
{
  WeakRetained = objc_loadWeakRetained(this + 128);
  v5 = WeakRetained - 8;
  if (!WeakRetained)
  {
    v5 = 0;
  }

  *a1 = v5;
  if (!WeakRetained)
  {
    os_unfair_lock_lock(this + 258);
    v6 = objc_loadWeakRetained(this + 128);
    v7 = v6 - 8;
    if (!v6)
    {
      v7 = 0;
    }

    *a1 = v7;
    if (!v6)
    {
      v8 = re::internal::AssetEntry::AssetReferenceStorage::allocate((this + 1040));
      v9 = re::internal::AssetReference::AssetReference(v8, this);
      *a1 = v9;
      if (v9)
      {
        v10 = v9 + 8;
      }

      else
      {
        v10 = 0;
      }

      objc_storeWeak(this + 128, v10);
    }

    os_unfair_lock_unlock(this + 258);
  }
}

uint64_t re::internal::AssetEntry::AssetReferenceStorage::allocate(re::internal::AssetEntry::AssetReferenceStorage *this)
{
  if (*this)
  {
    v1 = *(*re::globalAllocators(this)[2] + 32);

    return v1();
  }

  else
  {
    *this = 1;
    return this + 8;
  }
}

void re::internal::AssetReference::dispose(re::internal::AssetReference *this)
{
  v2 = *(this + 3);
  *(this + 3) = 0;
  (**this)(this);
  os_unfair_lock_lock((v2 + 1032));
  if ((v2 + 1048) == this)
  {
    *(v2 + 1040) = 0;
  }

  else
  {
    v4 = re::globalAllocators(v3);
    (*(*v4[2] + 40))(v4[2], this);
  }

  os_unfair_lock_unlock((v2 + 1032));
  v6 = *(v2 + 24);
  if (v6)
  {
    re::AssetManager::enqueueUnreferencedUnloadRequest(v6, v2);
  }
}

void re::internal::AssetReference::~AssetReference(re::internal::AssetReference *this)
{
  *this = &unk_1F5CBA490;
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CBA490;
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::internal::SharedAssetPointer::~SharedAssetPointer(re::internal::SharedAssetPointer *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, uint64_t *a2, unsigned __int8 *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID,re::Optional<re::DynamicString> const&>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + (HIDWORD(v9) << 6) + 24;
  }
}

uint64_t re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID,re::Optional<re::DynamicString> const&>(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4)
{
  v7 = re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 8) = *(v7 + 8) & 0xFFFFFFFFFFFFFFFELL | *a3 & 1;
  *(v7 + 8) = *a3 & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  *(v7 + 16) = a3[1];
  *a3 = 0;
  a3[1] = &str_67;
  LODWORD(v8) = *a4;
  *(v7 + 24) = v8;
  v9 = v7 + 24;
  if (v8 == 1)
  {
    re::DynamicString::DynamicString((v7 + 32), (a4 + 8));
  }

  ++*(a1 + 40);
  return v9;
}

uint64_t re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    LODWORD(v8) = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(result + 16);
  result = re::StringID::operator==((v10 + (v8 << 6) + 8), a2);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + (v8 << 6)) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::StringID::operator==((v10 + (v11 << 6) + 8), a2);
      if (result)
      {
        break;
      }

      v11 = *(v10 + (v12 << 6)) & 0x7FFFFFFF;
      LODWORD(v8) = v12;
      if (v11 == 0x7FFFFFFF)
      {
        LODWORD(v8) = v12;
        goto LABEL_7;
      }
    }

    v6 = v12;
  }

LABEL_7:
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + (v4 << 6));
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + (v4 << 6));
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v4 << 6;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + (v4 << 6);
}

void re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(_anonymous_namespace_ *result, uint64_t a2)
{
  v2 = a2;
  v4 = *result;
  if (*result)
  {
    if (v2 && *(result + 6) != v2 && *(result + 7) <= v2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, v2);
      v5 = *v9;
      *v9 = *result;
      *result = v5;
      v6 = *&v9[16];
      *&v9[16] = *(result + 2);
      *(result + 2) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(result + 24);
      *(result + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(result, v9);
      re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
    }
  }

  else
  {
    if (v2)
    {
      v8 = v2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(uint64_t result, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v3 = result;
    v4 = 0;
    v5 = 56;
    do
    {
      v6 = *(a2 + 16) + v5;
      if ((*(v6 - 56) & 0x80000000) != 0)
      {
        v7 = 0xBF58476D1CE4E5B9 * ((*(v6 - 48) >> 31) ^ (*(v6 - 48) >> 1));
        v8 = (0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) ^ ((0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) >> 31);
        result = re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v3, v8 % *(v3 + 24), v8);
        v9 = *(a2 + 16) + v5;
        v10 = *(v9 - 48);
        *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        *(result + 8) = *(v9 - 48) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        *(result + 16) = *(v9 - 40);
        *(v9 - 48) = 0;
        *(v9 - 40) = &str_67;
        v11 = (*(a2 + 16) + v5);
        LODWORD(v10) = *(v11 - 32);
        *(result + 24) = v10;
        if (v10 == 1)
        {
          *(result + 32) = 0u;
          *(result + 48) = 0u;
          *(result + 56) = *v11;
          v12 = *(v11 - 2);
          *(result + 32) = *(v11 - 3);
          *(v11 - 3) = 0;
          v13 = *(v11 - 1);
          *v11 = 0;
          v15 = *(result + 40);
          v14 = *(result + 48);
          *(result + 40) = v12;
          *(result + 48) = v13;
          *(v11 - 2) = v15;
          *(v11 - 1) = v14;
        }
      }

      ++v4;
      v5 += 64;
    }

    while (v4 < *(a2 + 32));
  }

  return result;
}

void re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + (v10 << 6), 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_27, 4 * v10);
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

re::internal::AssetReference *re::internal::AssetReference::AssetReference(re::internal::AssetReference *this, re::internal::AssetEntry *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = a2;
  *this = &unk_1F5CBA490;
  if (a2)
  {
    v4 = a2 + 8;
  }

  return this;
}

double re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 64;
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

double re::HashTable<re::StringID,re::Optional<re::DynamicString>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(_DWORD *result)
{
  if ((*result & 0x80000000) != 0)
  {
    *result &= ~0x80000000;
    re::StringID::destroyString((result + 2));
    if (*(result + 24) == 1)
    {

      return re::DynamicString::deinit((result + 8));
    }
  }

  return v2;
}