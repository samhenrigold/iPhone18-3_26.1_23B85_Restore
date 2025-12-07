uint64_t re::Ok<re::TextureImportData &,re::TextureImportData>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1> const&>(a2, a1);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 36) = *(a1 + 36);
  v4 = *(a1 + 56);
  *(a2 + 56) = v4;
  if (v4)
  {
    v5 = (v4 + 8);
  }

  *(a2 + 64) = *(a1 + 64);
  result = re::DynamicArray<short>::DynamicArray(a2 + 72, (a1 + 72));
  *(a2 + 112) = *(a1 + 112);
  return result;
}

uint64_t re::Result<re::TextureImportData,re::DynamicString>::Result(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a1 + 8, a2);
  *(a1 + 24) = *(a2 + 16);
  v4 = *(a2 + 24);
  *(a1 + 44) = *(a2 + 36);
  *(a1 + 32) = v4;
  *(a1 + 64) = *(a2 + 56);
  v5 = *(a2 + 64);
  *(a2 + 56) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 72) = v5;
  *(a1 + 80) = 0;
  v6 = *(a2 + 80);
  *(a1 + 80) = *(a2 + 72);
  *(a1 + 88) = v6;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v7 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 88);
  *(a2 + 88) = v7;
  v8 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 104);
  *(a2 + 104) = v8;
  ++*(a2 + 96);
  ++*(a1 + 104);
  *(a1 + 120) = *(a2 + 112);
  return a1;
}

uint64_t re::DynamicArray<CGImagePtr>::add(uint64_t a1, uint64_t *a2)
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

        re::DynamicArray<CGImagePtr>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<CGImagePtr>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  result = CGImagePtr::CGImagePtr(*(a1 + 32) + 112 * v5, a2);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void re::anonymous namespace::loadFromCGImageArray(uint64_t a1, uint64_t a2, uint64_t a3, re *a4, id *a5, const char *a6, CGImage *a7, re::Allocator *a8)
{
  v43[3] = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {
    v19 = v33;
    v20 = v34;
    v21 = v35;
    *a1 = 0;
    *(a1 + 8) = v19;
    *(a1 + 24) = v20;
    *(a1 + 32) = v21;
    return;
  }

  v16 = CGImageRetain(**(a2 + 32));
  CGImageRefWithColorSpace = re::createCGImageRefWithColorSpace(a4, v16, a7, 0);
  CGImagePtr::CGImagePtr(v42, CGImageRefWithColorSpace);
  v41 = 0;
  v40 = 84148994;
  re::internal::applySemanticToOptions(&v33, a7);
  re::createTextureDescriptorForCGImagePtr(v42, a4, a5, &v33, 0, v43, &v41, &v40, &v32);
  re::getDestinationColorSpace(v42, a4, &v32, a7, space);
  if (a3 == 3)
  {
    v22 = &selRef_setArrayLength_;
    goto LABEL_10;
  }

  if (a3 == 7)
  {
    v22 = &selRef_setDepth_;
LABEL_10:
    [v32 *v22];
    goto LABEL_11;
  }

  if (a3 != 5)
  {
    re::DynamicString::format(&v28, "Unsupported texture type for image array import: %d", v18, a3);
    goto LABEL_21;
  }

  if (*(a2 + 16) != 6)
  {
    re::DynamicString::format(&v28, "Image array size is expected to be 6 for a cube, but is %d", v18, *(a2 + 16));
LABEL_21:
    re::DynamicString::DynamicString(&v25, &v28);
    *a1 = 0;
    *(a1 + 8) = v25;
    v24 = v28;
    *(a1 + 32) = v27;
    *(a1 + 16) = v26;
    if (v24 && (v29 & 1) != 0)
    {
      (*(*v24 + 40))(v24, v30);
    }

    goto LABEL_12;
  }

LABEL_11:
  [v32 setTextureType_];
  v23 = objc_autoreleasePoolPush();
  re::createTextureFromCGImagePtrs(*(a2 + 32), *(a2 + 16), a4, &v32, a6, a7, a8, space, a1, v43, v41, &v40, 0);
  objc_autoreleasePoolPop(v23);
LABEL_12:
  CGColorSpaceRelease(space[0]);
  if (v32)
  {
  }

  if (v37)
  {
    if (v38)
    {
      (*(*v37 + 40))();
      v38 = 0;
      v39 = 0;
    }

    v37 = 0;
  }

  CGImageRelease(v42[0]);
  v42[0] = 0;

  CGColorSpaceRelease(v42[6]);
}

void re::internal::createTextureProviderProperties(void **__return_ptr a1@<X8>, id *this@<X0>, const re::TextureProvider *a3@<X1>)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = this + 5;
  v6 = (*(*this + 7))(this, a3);
  if (v6)
  {
    v7 = v6;
    *a1 = 0;
    a1[1] = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
    a1[2] = 0;
    v8 = CGImageRetain(v7);
    CGImageRefWithColorSpace = re::createCGImageRefWithColorSpace((this + 23), v8, (this + 6), 0);
    CGImagePtr::CGImagePtr(&v33, CGImageRefWithColorSpace);
    re::internal::applySemanticToOptions(v42, (this + 6));
    re::createTextureDescriptorForCGImagePtr(&v33, this + 23, v5, v42, 1, 0, 0, 0, v41);
    NS::SharedPtr<MTL::Texture>::operator=(a1 + 1, v41);
    if (*v41)
    {

      *v41 = 0;
    }

    if (v45)
    {
      if (v46)
      {
        (*(*v45 + 40))();
        v46 = 0;
        v47 = 0;
      }

      v45 = 0;
    }

    Width = CGImageGetWidth(v7);
    CGImageGetHeight(v7);
    AlphaInfo = CGImageGetAlphaInfo(v7);
    CGImageRelease(v33);
    v33 = 0;

    CGColorSpaceRelease(v37);
  }

  else
  {
    (*(*this + 9))(v42, this);
    if (v42[0])
    {
      goto LABEL_13;
    }

    v12 = (*(*this + 10))(&v33, this);
    if (v33 == 1)
    {
      v12 = re::DynamicArray<re::ImageSourceAndIndex>::deinit(&v34);
    }

    if (v42[0])
    {
LABEL_13:
      v12 = *(&v42[0] + 1);
      if (*(&v42[0] + 1) && v43)
      {
        v12 = (*(**(&v42[0] + 1) + 40))();
      }
    }

    v13 = MEMORY[0x1EEE9AC00](v12);
    v14 = (*(*this + 2))(&v33, this, v31, 12, v13);
    if (v33)
    {
      v32 = 0;
      if (v34 >= 0xC)
      {
        v15 = 0;
        {
          if (++v15 == 12)
          {
            v16 = (*(*this + 5))(this);
            if (v16)
            {
              v17 = v16;
              *a1 = 0;
              a1[1] = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
              a1[2] = 0;
              BytePtr = CFDataGetBytePtr(v17);
              Length = CFDataGetLength(v17);
              v20 = [this[5] swizzle];
              if (this[2])
              {
                v21 = this[3];
              }

              else
              {
                v21 = this + 17;
              }

              re::createTextureDescriptorForKTXData(this + 23, BytePtr, Length, v20, v21, (this + 6), v42, &v32, v41, 0);
              NS::SharedPtr<MTL::Texture>::operator=(a1 + 1, v41);
              if (*v41)
              {
              }

              a1[2] = @"org.khronos.ktx";
              CFRelease(v17);
              goto LABEL_38;
            }

            v22 = *re::pipelineLogObjects(0);
            if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              break;
            }

            if (this[2])
            {
              v27 = this[3];
            }

            else
            {
              v27 = this + 17;
            }

            *v41 = 136315138;
            *&v41[4] = v27;
            v28 = "Failed to get texture ktx data for data labeled '%s'";
            v29 = v41;
            goto LABEL_52;
          }
        }
      }
    }

    else
    {
      v22 = *re::pipelineLogObjects(v14);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        if (v35)
        {
          v30 = *&v36[7];
        }

        else
        {
          v30 = v36;
        }

        LODWORD(v42[0]) = 136315138;
        *(v42 + 4) = v30;
        v28 = "%s";
        v29 = v42;
LABEL_52:
        _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, v28, v29, 0xCu);
      }
    }

    *a1 = 0;
    a1[1] = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
    a1[2] = 0;
    v23 = objc_autoreleasePoolPush();
    v39 = *MEMORY[0x1E696E0A8];
    v40 = MEMORY[0x1E695E110];
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v25 = (*(*this + 3))(this, v24);
    if (v25)
    {
      v26 = v25;
      re::internal::applySemanticToOptions(v42, (this + 6));
      re::createTextureDescriptorForCGImageSource(v26, (this + 23), v5, v42, 0, 0, 1, v41);
      NS::SharedPtr<MTL::Texture>::operator=(a1 + 1, v41);
      if (*v41)
      {

        *v41 = 0;
      }

      if (v45)
      {
        if (v46)
        {
          (*(*v45 + 40))();
          v46 = 0;
          v47 = 0;
        }

        v45 = 0;
      }

      *a1 = CGImageSourceCopyPropertiesAtIndex(v26, 0, 0);
      a1[2] = CGImageSourceGetType(v26);
      CFRelease(v26);
    }

    objc_autoreleasePoolPop(v23);
LABEL_38:
    if (v33 & 1) == 0 && v34 && (v35)
    {
      (*(*v34 + 40))();
    }
  }
}

void *re::anonymous namespace::createImageProperties(re::_anonymous_namespace_ *this, uint64_t a2)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = *MEMORY[0x1E696DD50];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v9[0] = v3;
  v8[1] = *MEMORY[0x1E696DED8];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:this];
  v9[1] = v4;
  v8[2] = *MEMORY[0x1E696DEC8];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:this];
  v9[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  CFRetain(v6);
  return v6;
}

void re::loadTextureFromFile(id *a1@<X0>, const char *a2@<X1>, id *a3@<X2>, re::internal *a4@<X3>, uint64_t a5@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1E695DFF8];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v12 = [v10 fileURLWithPath:v11];

  v13 = CGImageSourceCreateWithURL(v12, 0);
  if (v13)
  {
    v14 = v13;
    isValid = re::TextureData::isValid(a5);
    if ((isValid & 1) == 0)
    {
      v16 = *re::pipelineLogObjects(isValid);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = 136315138;
        v19 = a2;
        _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Failed to create texture from file '%s' using descriptor", &v18, 0xCu);
      }
    }
  }

  else
  {
    v17 = *re::pipelineLogObjects(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315138;
      v19 = a2;
      _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Failed to create image source from file '%s' using descriptor", &v18, 0xCu);
    }

    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) &= 0xFC00u;
    *(a5 + 32) = 0;
    *(a5 + 40) = 0;
    *(a5 + 24) = 0;
    *(a5 + 56) = 0u;
    *(a5 + 72) = 0u;
    *(a5 + 84) = 0u;
    *(a5 + 104) = 0;
    *(a5 + 112) = 0;
  }
}

void re::loadTextureFileAndConvertToCubeMap(id *a1@<X0>, const char *a2@<X1>, id *a3@<X2>, __int128 *a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a6;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  memset(v64, 0, 24);
  v65 = 0u;
  memset(v66, 0, 28);
  v67 = 0uLL;
  v14 = a4[1];
  v51 = *a4;
  v52 = v14;
  v53[0] = a4[2];
  *(v53 + 12) = *(a4 + 44);
  v54 = *(a4 + 8);
  v55 = *(a4 + 72);
  v56 = *(a4 + 22);
  re::FixedArray<short>::FixedArray(&v57, a4 + 12);
  v60 = *(a4 + 120);
  DWORD1(v52) = 2;
  DWORD2(v51) = 0;
  v55 = 0uLL;
  v41 = *a3;
  re::loadTextureFromFile(a1, a2, &v41, &v51, &v42);
  if (v41)
  {

    v41 = 0;
  }

  if (v43)
  {
    if (v43 != 1)
    {
      goto LABEL_58;
    }

    if (!*(v42 + 48))
    {
      goto LABEL_11;
    }

    v15 = (v42 + 24);
  }

  else
  {
    v15 = &v42;
  }

  if (!*v15)
  {
LABEL_11:
    v17 = 0;
    *(a7 + 16) &= 0xFC00u;
    *a7 = 0;
    *(a7 + 8) = 0;
    *(a7 + 32) = 0;
    *(a7 + 40) = 0;
    *(a7 + 24) = 0;
    *(a7 + 56) = 0u;
    *(a7 + 72) = 0u;
    *(a7 + 84) = 0u;
    *(a7 + 104) = 0;
    *(a7 + 112) = 0;
    goto LABEL_28;
  }

  if (*(a4 + 2) == 2)
  {
    v16 = *(a4 + 18);
  }

  else
  {
    v16 = 0;
  }

  v18 = *(a4 + 5);
  if (v18)
  {
    v19 = v18 == 3;
  }

  else
  {
    v19 = 1;
  }

  v20 = v19;
  re::createCubeMapFromLatLongTexture(&v33, a1, &v42, v20, v16, a5, v7);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v61, &v33);
  v63 = v34;
  *v64 = v35[0];
  *&v64[12] = *(v35 + 12);
  v21 = *(&v65 + 1);
  v22 = v36;
  v36 = v65;
  v65 = v22;

  re::DynamicArray<short>::operator=(v66, v37);
  *(&v67 + 1) = v40;
  if (v37[0])
  {
    if (v39)
    {
      (*(*v37[0] + 40))();
    }

    v39 = 0;
    memset(v37, 0, sizeof(v37));
    ++v38;
  }

  if (v36)
  {

    *&v36 = 0;
  }

  if (DWORD2(v33) != -1)
  {
    (off_1F5D0BA18[DWORD2(v33)])(&v68, &v33);
  }

  v17 = 1;
LABEL_28:
  if (v46)
  {
    if (v50)
    {
      (*(*v46 + 40))();
    }

    v50 = 0;
    v47 = 0;
    v48 = 0;
    v46 = 0;
    ++v49;
  }

  if (v44)
  {

    v44 = 0;
  }

  if (v43 != -1)
  {
    (off_1F5D0BA18[v43])(&v33, &v42);
  }

  if (v57)
  {
    if (v58)
    {
      (*(*v57 + 40))();
      v58 = 0;
      v59 = 0;
    }

    v57 = 0;
  }

  if (!v17)
  {
    if (v66[0])
    {
      if (v67)
      {
        (*(*v66[0] + 40))();
      }

      *&v67 = 0;
      memset(v66, 0, 24);
      ++LODWORD(v66[3]);
    }

    goto LABEL_53;
  }

  if (!v62)
  {
    v23 = &v61;
LABEL_50:
    if (*v23)
    {
      re::TextureData::setLabel(&v61, a2);
    }

    goto LABEL_52;
  }

  if (v62 != 1)
  {
LABEL_58:
    v26 = std::__throw_bad_variant_access[abi:nn200100]();
    re::createCubeMapFromLatLongTexture(v32, v26, v27, v28, v29, v30, v31);
    return;
  }

  if (*(v61 + 48))
  {
    v23 = (v61 + 24);
    goto LABEL_50;
  }

LABEL_52:
  *a7 = 0;
  *(a7 + 8) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a7, &v61);
  *(a7 + 16) = v63;
  *(a7 + 24) = *v64;
  *(a7 + 36) = *&v64[12];
  v24 = v65;
  v65 = 0u;
  *(a7 + 56) = v24;
  *(a7 + 72) = v66[0];
  v66[0] = 0;
  *(a7 + 80) = *&v66[1];
  *&v66[1] = 0u;
  ++LODWORD(v66[3]);
  *(a7 + 96) = 1;
  v25 = v67;
  *&v67 = 0;
  *(a7 + 104) = v25;
LABEL_53:

  if (v65)
  {

    *&v65 = 0;
  }

  if (v62 != -1)
  {
    (off_1F5D0BA18[v62])(&v51, &v61);
  }
}

void re::createCubeMapFromLatLongTexture(__int128 *__return_ptr a1@<X8>, id *this@<X0>, const re::ImportGraphicsContext *a3@<X1>, const re::TextureImportData *a4@<X2>, unint64_t a5@<X3>, unint64_t a6@<X4>, int a7@<W5>)
{
  v8 = a4;
  v189 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 2) = 0;
  v12 = a1[1] & 0xFC00;
  *(a1 + 3) = 0;
  v13 = (a1 + 24);
  *(a1 + 8) = v12;
  *(a1 + 4) = 0;
  *(a1 + 5) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 72) = 0u;
  v14 = a1 + 72;
  *(a1 + 13) = 0;
  *(a1 + 14) = 0;
  if (!*this)
  {
    re::computeCubeMapFromLatLongTextureParameters(&v142, this, a3, a4, a5, a6);
    if (v142)
    {
      v105 = a7;
      v107 = [v142 pixelFormat];
      v15 = *re::pipelineLogObjects(v107);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        loga = v15;
        v100 = re::TextureData::width(a3);
        v16 = re::TextureData::width(a3);
        v17 = [v142 width];
        v18 = [v142 height];
        LODWORD(buf) = 67110144;
        v13 = (a1 + 24);
        DWORD1(buf) = v100;
        WORD4(buf) = 1024;
        *(&buf + 10) = v16;
        v14 = a1 + 72;
        HIWORD(buf) = 2048;
        *&v167[0] = v17;
        WORD4(v167[0]) = 2048;
        *(v167 + 10) = v18;
        WORD1(v167[1]) = 1024;
        DWORD1(v167[1]) = v107;
        _os_log_impl(&dword_1E1C61000, loga, OS_LOG_TYPE_DEFAULT, "Converting on CPU %dx%d texture to %zux%zux6 cubemap with format %d\n", &buf, 0x28u);
      }

      v19 = 1;
      if (!*this && (v144 & 1) != 0 && v8)
      {
        if (re::getComponentCount(v107) == 4)
        {
          ComponentCount = re::getComponentCount(v107);
          v21 = 115;
          if (ComponentCount == 2)
          {
            v21 = 65;
          }

          if (ComponentCount == 1)
          {
            v22 = 25;
          }

          else
          {
            v22 = v21;
          }

          [v142 setPixelFormat_];
          v19 = 0;
        }

        else
        {
          v19 = 1;
        }
      }

      re::convertForMetalEmulationIfNeeded(&v131, a3);
      if (v131 == 1)
      {
        if (v133 != 1)
        {
          goto LABEL_180;
        }

        v53 = &v132;
      }

      else
      {
        v53 = a3;
        if (*(a3 + 2) != 1)
        {
          goto LABEL_180;
        }
      }

      v54 = *v53;
      re::wrapAsTextureMip(*v53, 0, v156);
      v171 = v162;
      v172 = v163;
      v173 = v164;
      v174 = v165;
      v167[5] = v158;
      v168 = v159;
      v169 = v160;
      v170 = v161;
      v167[1] = v156[2];
      v167[2] = v156[3];
      v167[3] = v156[4];
      v167[4] = v157;
      buf = v156[0];
      v167[0] = v156[1];
      if (LOWORD(v156[0]))
      {
        v130 = 0;
        memset(v128, 0, sizeof(v128));
        v129 = 0;
        v56 = re::CPUTexture::Data::allocateMips(v128, &v142);
        if (v56)
        {
          v102 = v13;
          re::make::shared::object<re::CPUTexture,NS::SharedPtr<MTL::TextureDescriptor> &,re::CPUTexture::Data>(&v142, v128, &v127);
          v122.i32[0] = v125;
          v122.i32[1] = v126;
          v58 = (v19 & v144);
          if (v58 == 1)
          {
            [v142 setPixelFormat_];
          }

          if (!v127[6])
          {
            v111 = 0;
            memset(v156, 0, sizeof(v156));
            v90 = MEMORY[0x1E69E9C10];
            v91 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v147 = 136315906;
            *&v147[4] = "operator[]";
            v148 = 1024;
            if (v91)
            {
              v92 = 3;
            }

            else
            {
              v92 = 2;
            }

            v149 = 797;
            v150 = 2048;
            *&v151[0] = 0;
            WORD4(v151[0]) = 2048;
            *(v151 + 10) = 0;
            _os_log_send_and_compose_impl(v92, &v111, v156, 80, &dword_1E1C61000, v90, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v147, 38, v96, v98);
            _os_crash_msg();
            __break(1u);
          }

          MetalEmulation::wrapRenderTargetMip(v142, 0, &v122, *(v127[8] + 4), *(v127[8] + 2), v156);
          v183 = v160;
          v184 = v161;
          v185 = v162;
          v186 = v163;
          v179 = v156[4];
          v180 = v157;
          v181 = v158;
          v182 = v159;
          v175 = v156[0];
          v176 = v156[1];
          v177 = v156[2];
          v178 = v156[3];
          v59 = MetalEmulation::generateCubeMap;
          if (v58)
          {
            [v142 setPixelFormat_];
            v59 = MetalEmulation::generateCubeMapWithLinearToSRGB;
          }

          v60 = v59;
          v188 = v105;
          v187 = v145;
          v61 = [v142 width];
          v62 = [v142 height];
          HIDWORD(v63) = 393222;
          LOWORD(v63) = v61;
          WORD1(v63) = v62;
          v64 = MetalEmulation::internal::_executeShader(v60, &buf, v63);
          v120 = v127;
          if (v127)
          {
            v64 = v127 + 1;
          }

          v121 = 1;
          if (v146 == 1)
          {
            v65 = *re::pipelineLogObjects(v64);
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v156[0]) = 0;
              _os_log_impl(&dword_1E1C61000, v65, OS_LOG_TYPE_DEFAULT, "Generate MIPs for cubemap\n", v156, 2u);
            }
          }

          v67 = *(a3 + 8);
          if (*(this + 19))
          {
            v68 = *(this + 20);
          }

          else
          {
            v68 = 0;
          }

          LOBYTE(v110) = v68;
          if (v67)
          {
            re::ColorHelpers::getColorGamutFromCGColorSpaceName(v67, &v110);
          }

          LOWORD(v111) = *(a3 + 8);
          v112[0] = *(a3 + 24);
          *(v112 + 12) = *(a3 + 36);
          v69 = *(a3 + 7);
          v113 = v69;
          if (v69)
          {
            v70 = (v69 + 8);
          }

          v114 = *(a3 + 8);
          re::DynamicArray<short>::DynamicArray(v115, a3 + 9);
          v119 = *(a3 + 14);
          v71 = &v120;
          re::TextureImportData::ImportReport::SourceInfo::setFromTexture(v112, &v120);
          if (v121)
          {
            if (v121 != 1)
            {
              goto LABEL_180;
            }

            v71 = (v120 + 24);
          }

          v72 = [*v71 pixelFormat];
          v73 = re::ColorHelpers::getCGColorSpaceNameForPixelFormat(v72, v110);
          v74 = v114;
          v114 = v73;

          v116 = 0;
          ++v117;
          v75 = re::TextureImportData::TextureImportData(v147, &v120, &v111);
          if (*&v147[8])
          {
            v76 = v19;
          }

          else
          {
            v76 = 1;
          }

          if ((v76 & 1) == 0)
          {
            re::convertFloatCPUTextureTo8Unorm_sRGB(v147);
          }

          v77 = *re::pipelineLogObjects(v75);
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v156[0]) = 0;
            _os_log_impl(&dword_1E1C61000, v77, OS_LOG_TYPE_DEFAULT, "Done\n", v156, 2u);
          }

          v13 = v102;
          if (v115[0])
          {
            if (v118)
            {
              (*(*v115[0] + 40))();
            }

            v118 = 0;
            v115[1] = 0;
            v116 = 0;
            v115[0] = 0;
            ++v117;
          }

          if (v113)
          {
          }

          if (v121 != -1)
          {
            (off_1F5D0BA18[v121])(v156, &v120);
          }

          if (v127)
          {
          }
        }

        else
        {
          v79 = *re::pipelineLogObjects(v56);
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v156[0]) = 0;
            _os_log_error_impl(&dword_1E1C61000, v79, OS_LOG_TYPE_ERROR, "Failed to allocate cubemap from latlong texture data", v156, 2u);
          }

          memset(v147, 0, sizeof(v147));
          HIWORD(v149) &= 0xFC00u;
          *(v151 + 12) = 0;
          *(&v151[1] + 4) = 0;
          *(v151 + 4) = 0;
          v152 = 0u;
          memset(v153, 0, 28);
          v154 = 0;
          v155 = 0;
        }

        re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v128);
      }

      else
      {
        v78 = *re::pipelineLogObjects(v55);
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          v87 = v54[3];
          v88 = v78;
          v89 = [v87 pixelFormat];
          LODWORD(v156[0]) = 67109120;
          DWORD1(v156[0]) = v89;
          _os_log_error_impl(&dword_1E1C61000, v88, OS_LOG_TYPE_ERROR, "Texture format not supported on CPU: %d", v156, 8u);
        }

        memset(v147, 0, sizeof(v147));
        HIWORD(v149) &= 0xFC00u;
        *(v151 + 12) = 0;
        *(&v151[1] + 4) = 0;
        *(v151 + 4) = 0;
        v152 = 0u;
        memset(v153, 0, 28);
        v154 = 0;
        v155 = 0;
      }

      if (v131 == 1)
      {
        if (v137)
        {
          if (v141)
          {
            (*(*v137 + 40))(v137);
          }

          v141 = 0;
          v138 = 0;
          v139 = 0;
          v137 = 0;
          ++v140;
        }

        if (v135)
        {

          v135 = 0;
        }

        if (v133 != -1)
        {
          (off_1F5D0BA18[v133])(&buf, &v132);
        }
      }

      if (v142)
      {
      }
    }

    else
    {
      memset(v147, 0, sizeof(v147));
      HIWORD(v149) = 0;
      *(v151 + 12) = 0;
      *(&v151[1] + 4) = 0;
      *(v151 + 4) = 0;
      v152 = 0u;
      memset(v153, 0, 28);
      v154 = 0;
      v155 = 0;
    }

    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a1, v147);
    *(a1 + 8) = HIWORD(v149);
    *v13 = *(v151 + 4);
    *(v13 + 12) = v151[1];
    v80 = *(a1 + 7);
    *(a1 + 7) = v152;
    *&v152 = v80;
    if (v147 != a1)
    {
      v81 = *(&v152 + 1);
      *(&v152 + 1) = 0;
      v82 = *(a1 + 8);
      *(a1 + 8) = v81;
    }

    re::DynamicArray<short>::operator=(v14, v153);
    *(a1 + 14) = v155;
    if (v153[0])
    {
      if (v154)
      {
        (*(*v153[0] + 40))(v153[0]);
      }

      v154 = 0;
      memset(v153, 0, 24);
      ++LODWORD(v153[3]);
    }

    if (v152)
    {

      *&v152 = 0;
    }

    if (*&v147[8] != -1)
    {
      (off_1F5D0BA18[*&v147[8]])(&buf, v147);
    }

    goto LABEL_164;
  }

  re::computeCubeMapFromLatLongTextureParameters(v147, this, a3, a4, a5, a6);
  if (*v147)
  {
    v110 = a7;
    v123 = 0;
    v124 = 0;
    if (re::TextureData::isShareable(a3))
    {
      re::mtl::Device::makeSharedTexture(&v111, *v147, this);
    }

    else
    {
      re::mtl::Device::makeTexture(&v111, *v147, this);
    }

    *&buf = v111;
    DWORD2(buf) = 0;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v123, &buf);
    if (DWORD2(buf) != -1)
    {
      (off_1F5D0BA18[DWORD2(buf)])(v156, &buf);
    }

    log = [v111 newTextureViewWithPixelFormat:*&v147[8] textureType:3 levels:0 slices:1, 0, 6];
    v23 = [objc_msgSend(MEMORY[0x1E6974070] alloc)];
    if (v148)
    {
      v24 = "generateCubeMapWithLinearToSRGB";
    }

    else
    {
      v24 = "generateCubeMap";
    }

    [v23 setName_];
    v101 = v23;
    re::mtl::Library::makeFunctionWithDescriptor(this + 1, v23, v128);
    v142 = [objc_msgSend(MEMORY[0x1E6974030] alloc)];
    v97 = v142;
    v99 = v128[0];
    [v142 setComputeFunction_];
    re::mtl::Device::makeComputePipelineState(this, &v142, &v120);
    *&buf = 0x51B2FD90430C103CLL;
    *(&buf + 1) = "createCubeMapFromLatLongTextureQueue";
    re::ImportGraphicsContext::getOrCreateCommandQueue(this, &buf, 1, &v127);
    re::mtl::CommandQueue::makeCommandBuffer(&v122, &v127);
    re::mtl::CommandBuffer::makeComputeCommandEncoder(&v109, &v122);
    v25 = v120;
    v26 = [v120 threadExecutionWidth];
    v106 = v25;
    v27 = [v25 maxTotalThreadsPerThreadgroup] / v26;
    v28 = ([*v147 width] + v26 - 1) / v26;
    v29 = [*v147 width];
    v30 = (v27 + v29 - 1) / v27;
    v31 = *re::pipelineLogObjects(v29);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67110400;
      DWORD1(buf) = v28;
      WORD4(buf) = 1024;
      *(&buf + 10) = v30;
      HIWORD(buf) = 1024;
      LODWORD(v167[0]) = 6;
      WORD2(v167[0]) = 1024;
      *(v167 + 6) = v26;
      WORD5(v167[0]) = 1024;
      HIDWORD(v167[0]) = v27;
      LOWORD(v167[1]) = 1024;
      *(&v167[1] + 2) = 1;
      _os_log_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_DEFAULT, "Dispatching %dx%dx%d thread groups of size %dx%dx%d\n", &buf, 0x26u);
    }

    [v109 setComputePipelineState:v106];
    if (!*(a3 + 2))
    {
      [v109 setTexture:*a3 atIndex:0];
      [v109 setTexture:log atIndex:1];
      [v109 setBytes:&v149 + 2 length:4 atIndex:0];
      [v109 setBytes:&v110 length:4 atIndex:1];
      *&buf = v28;
      *(&buf + 1) = v30;
      *&v167[0] = 6;
      *&v156[0] = v26;
      *(&v156[0] + 1) = v27;
      *&v156[1] = 1;
      [v109 dispatchThreadgroups:&buf threadsPerThreadgroup:v156];
      objc_msgSend_endEncoding(v109);
      if ([v111 storageMode] == 1)
      {
        re::mtl::CommandBuffer::makeBlitCommandEncoder(&buf, &v122);
        objc_msgSend_endEncoding(buf);
      }

      [*&v122 commit];
      [*&v122 waitUntilCompleted];
      re::internal::getCommandBufferError(&v131, &v122);
      if ((v131 & 1) == 0)
      {
        v33 = re::TextureData::label(a3);
        if (v133)
        {
          v35 = v134;
        }

        else
        {
          v35 = &v133 + 1;
        }

        v37 = *re::pipelineLogObjects(v36);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          if (BYTE8(buf))
          {
            v86 = *&v167[0];
          }

          else
          {
            v86 = &buf + 9;
          }

          LODWORD(v156[0]) = 136315138;
          *(v156 + 4) = v86;
          _os_log_error_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_ERROR, "%s", v156, 0xCu);
        }

        v32 = buf;
        if (buf && (BYTE8(buf) & 1) != 0)
        {
          v32 = (*(*buf + 40))();
        }
      }

      if (LOBYTE(v151[0]) == 1)
      {
        v38 = *re::pipelineLogObjects(v32);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_DEFAULT, "Generate MIPs for cubemap\n", &buf, 2u);
        }
      }

      v40 = *(a3 + 8);
      if (*(this + 19))
      {
        v41 = *(this + 20);
      }

      else
      {
        v41 = 0;
      }

      v108 = v41;
      if (v40)
      {
        re::ColorHelpers::getColorGamutFromCGColorSpaceName(v40, &v108);
      }

      LOWORD(v156[0]) = *(a3 + 8);
      *(v156 + 8) = *(a3 + 24);
      *(&v156[1] + 4) = *(a3 + 36);
      v42 = *(a3 + 7);
      *(&v156[2] + 1) = v42;
      v13 = (a1 + 24);
      if (v42)
      {
        v43 = (v42 + 8);
      }

      *&v156[3] = *(a3 + 8);
      re::DynamicArray<short>::DynamicArray(&v156[3] + 8, a3 + 9);
      *&v158 = *(a3 + 14);
      v44 = &v123;
      re::TextureImportData::ImportReport::SourceInfo::setFromTexture((v156 + 8), &v123);
      if (!v124)
      {
        goto LABEL_52;
      }

      if (v124 == 1)
      {
        v44 = (v123 + 24);
LABEL_52:
        v45 = [*v44 pixelFormat];
        v46 = re::ColorHelpers::getCGColorSpaceNameForPixelFormat(v45, v108);
        v47 = *&v156[3];
        *&v156[3] = v46;

        *(&v156[4] + 1) = 0;
        LODWORD(v157) = v157 + 1;
        v49 = *re::pipelineLogObjects(v48);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1E1C61000, v49, OS_LOG_TYPE_DEFAULT, "Done\n", &buf, 2u);
        }

        re::TextureImportData::TextureImportData(&buf, &v123, v156);
        if (*(&v156[3] + 1))
        {
          if (*(&v157 + 1))
          {
            (*(**(&v156[3] + 1) + 40))();
          }

          *(&v157 + 1) = 0;
          v156[4] = 0uLL;
          *(&v156[3] + 1) = 0;
          LODWORD(v157) = v157 + 1;
        }

        if (*(&v156[2] + 1))
        {
        }

        if (v131 & 1) == 0 && v132 && (v133)
        {
          (*(*v132 + 40))();
        }

        if (v106)
        {
        }

        if (v97)
        {
        }

        if (v99)
        {
        }

        if (v101)
        {
        }

        if (log)
        {
        }

        if (v111)
        {
        }

        if (v124 != -1)
        {
          (off_1F5D0BA18[v124])(v156, &v123);
        }

        if (*v147)
        {
        }

        goto LABEL_80;
      }
    }

LABEL_180:
    v93 = std::__throw_bad_variant_access[abi:nn200100]();
    re::loadTextureFileAndConvertTo3DTexture(v95, v93, v94);
    return;
  }

  *&buf = 0;
  DWORD2(buf) = 0;
  LOWORD(v167[0]) = 0;
  v167[1] = 0uLL;
  *(&v167[0] + 1) = 0;
  *(&v167[2] + 8) = 0u;
  *(&v167[3] + 8) = 0u;
  *(&v167[4] + 4) = 0u;
  *(&v167[5] + 1) = 0;
  *&v168 = 0;
LABEL_80:
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a1, &buf);
  *(a1 + 8) = v167[0];
  *v13 = *(v167 + 8);
  *(v13 + 12) = *(&v167[1] + 4);
  v50 = *(a1 + 7);
  *(a1 + 7) = *(&v167[2] + 1);
  *(&v167[2] + 1) = v50;
  if (&buf != a1)
  {
    v51 = *&v167[3];
    *&v167[3] = 0;
    v52 = *(a1 + 8);
    *(a1 + 8) = v51;
  }

  re::DynamicArray<short>::operator=(a1 + 72, &v167[3] + 1);
  *(a1 + 14) = v168;
  if (*(&v167[3] + 1))
  {
    if (*(&v167[5] + 1))
    {
      (*(**(&v167[3] + 1) + 40))();
    }

    *(&v167[5] + 1) = 0;
    v167[4] = 0uLL;
    *(&v167[3] + 1) = 0;
    ++LODWORD(v167[5]);
  }

  if (*(&v167[2] + 1))
  {

    *(&v167[2] + 1) = 0;
  }

  if (DWORD2(buf) != -1)
  {
    (off_1F5D0BA18[DWORD2(buf)])(v156, &buf);
  }

LABEL_164:
  v83 = re::TextureData::label(a1);
  if (v83)
  {
    re::DynamicString::format(&buf, "%s_cubeMap", v84, v83);
    if (BYTE8(buf))
    {
      v85 = *&v167[0];
    }

    else
    {
      v85 = &buf + 9;
    }

    re::TextureData::setLabel(a1, v85);
    if (buf)
    {
      if (BYTE8(buf))
      {
        (*(*buf + 40))();
      }
    }
  }
}

void re::loadTextureFileAndConvertTo3DTexture(uint64_t *__return_ptr a1@<X8>, id *this@<X0>, const re::mtl::Device *a3@<X1>)
{
  v48 = *MEMORY[0x1E69E9840];
  v42 = 0;
  v6 = MEMORY[0x1E695DFF8];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
  v8 = [v6 fileURLWithPath:v7];

  v9 = CGImageSourceCreateWithURL(v8, 0);
  if (!v9)
  {
    v29 = *re::pipelineLogObjects(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = a3;
      _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, "Failed to create CGImageSource from file: %s\n", &buf, 0xCu);
    }

    goto LABEL_13;
  }

  v10 = v9;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v9, 0, 0);
  if (!ImageAtIndex)
  {
    v30 = *re::pipelineLogObjects(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = a3;
      _os_log_error_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_ERROR, "Failed to load CGImage from file: %s\n", &buf, 0xCu);
    }

    CFRelease(v10);
LABEL_13:
    *a1 = 0;
    *(a1 + 2) = 0;
    goto LABEL_23;
  }

  v12 = ImageAtIndex;
  v40 = this;
  v41 = a1;
  Width = CGImageGetWidth(ImageAtIndex);
  Height = CGImageGetHeight(v12);
  v15 = Height;
  v16 = Height;
  v17 = Height * Width;
  *(&v18 + 1) = ((Height * Width) >> 64) & 1;
  *&v18 = v17;
  if ((v18 >> 61))
  {
    v31 = *re::pipelineLogObjects(Height);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_ERROR, "Failure reading LUT texture file: image size - Invalid or Out of range ", &buf, 2u);
    }

    CFRelease(v10);
    CFRelease(v12);
    *v41 = 0;
    *(v41 + 2) = 0;
  }

  else
  {
    v39 = v8;
    v19 = re::globalAllocators(Height);
    v20 = (*(*v19[2] + 32))(v19[2], 8 * v17, 0);
    ColorSpace = CGImageGetColorSpace(v12);
    v38 = v20;
    v22 = CGBitmapContextCreate(v20, Width, v16, 0x10uLL, 8 * Width, ColorSpace, 0x1105u);
    if (!v22)
    {
      v32 = *re::pipelineLogObjects(0);
      v8 = v39;
      v28 = v41;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = a3;
        _os_log_error_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_ERROR, "Failed to create a bitmap context for file: %s\n", &buf, 0xCu);
      }

      CFRelease(v10);
      CFRelease(v12);
      goto LABEL_20;
    }

    v23 = v22;
    CGContextSetBlendMode(v22, kCGBlendModeCopy);
    v49.size.width = Width;
    v49.size.height = v15;
    v49.origin.x = 0.0;
    v49.origin.y = 0.0;
    CGContextDrawImage(v23, v49, v12);
    CFRelease(v12);
    CFRelease(v10);
    CGContextRelease(v23);
    v25 = cbrt(v17);
    if (v25 != v25)
    {
      v26 = *re::pipelineLogObjects(v24);
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
      v8 = v39;
      v28 = v41;
      if (v27)
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = a3;
        _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, "Incorrect number of color entries for the 3D LUT file: %s\n", &buf, 0xCu);
      }

LABEL_20:
      if (v38)
      {
        v33 = re::globalAllocators(v27);
        (*(*v33[2] + 40))(v33[2], v38);
      }

      *v28 = 0;
      *(v28 + 2) = 0;
      goto LABEL_23;
    }

    v34 = v25;
    v35 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
    [v35 setTextureType_];
    [v35 setPixelFormat_];
    [v35 setWidth_];
    [v35 setHeight_];
    [v35 setDepth_];
    [v35 setUsage_];
    [v35 setSampleCount_];
    [v35 setMipmapLevelCount_];
    [v35 setStorageMode_];
    re::mtl::Device::makeTexture(&buf, v35, v40);
    NS::SharedPtr<MTL::Texture>::operator=(&v42, &buf);
    v8 = v39;
    if (buf)
    {
    }

    [v42 setLabel_];
    buf = 0uLL;
    v44 = 0;
    v45 = v34;
    v46 = v34;
    v47 = v34;
    v36 = [v42 replaceRegion:&buf mipmapLevel:0 slice:0 withBytes:v38 bytesPerRow:8 * v34 bytesPerImage:8 * (v34 * v34)];
    if (v38)
    {
      v37 = re::globalAllocators(v36);
      (*(*v37[2] + 40))(v37[2], v38);
    }

    *v41 = v42;
    *(v41 + 2) = 0;
    if (v35)
    {
    }
  }

LABEL_23:

  if (v42)
  {
  }
}

void re::load3DTextureFromLutDataFile(uint64_t *__return_ptr a1@<X8>, id *this@<X0>, const re::mtl::Device *a3@<X1>, const char *a4@<X2>)
{
  v80 = *MEMORY[0x1E69E9840];
  v67 = 0;
  re::FileStreamReader::open(&v62, a3);
  if (v62)
  {
    v76[0] = 0;
    v8 = v64;
    fgetpos(__stream, v76);
    v9 = v76[0];
    v10 = v8 - v76[0];
    __ptr = 0;
    v58[1] = 0;
    v59 = 0;
    v58[0] = 0;
    v60 = 0;
    v11 = v8 - v76[0] + 1;
    re::DynamicArray<BOOL>::resize(v58, v11);
    if (v59 == v11 && (v12 = fread(__ptr, 1uLL, v10, __stream), v12 == v10))
    {
      v13 = v59;
      if (v59 <= v10)
      {
        v68 = 0;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        memset(v76, 0, sizeof(v76));
        v49 = MEMORY[0x1E69E9C10];
        v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v69 = 136315906;
        *&v69[4] = "operator[]";
        v70 = 1024;
        if (v50)
        {
          v51 = 3;
        }

        else
        {
          v51 = 2;
        }

        v71 = 789;
        v72 = 2048;
        v73 = v10;
        v74 = 2048;
        v75 = v13;
        _os_log_send_and_compose_impl(v51, &v68, v76, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v69, 38, v52, v54);
        _os_crash_msg();
        __break(1u);
      }

      *(__ptr + v10) = 0;
      v14 = __ptr;
      v15 = strstr(__ptr, "LUT_3D_SIZE ");
      *v69 = v15;
      if (!v15)
      {
        goto LABEL_12;
      }

      v17 = strtof(v15 + 12, v69);
      v57 = v17;
      v18 = v17 * v17 * v17;
      if ((8 * v18) >= 0x4000001)
      {
        v19 = *re::pipelineLogObjects(v16);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          LODWORD(v76[0]) = 136315650;
          *(v76 + 4) = "LUT_3D_SIZE ";
          WORD2(v76[1]) = 1024;
          *(&v76[1] + 6) = v57;
          WORD1(v76[2]) = 2080;
          *(&v76[2] + 4) = a3;
          v20 = "Unexpected %s '%d' (too large) for LUT file '%s'";
          v21 = v19;
          v22 = 28;
LABEL_45:
          _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, v20, v76, v22);
        }

LABEL_12:
        *a1 = 0;
        *(a1 + 2) = 0;
LABEL_13:
        if (v58[0] && __ptr)
        {
          (*(*v58[0] + 40))();
        }

        goto LABEL_16;
      }

      v56 = v17 * v17;
      v25 = re::globalAllocators(v16);
      v26 = (*(*v25[2] + 32))(v25[2], 8 * v18, 0);
      if (v26)
      {
        if (v57)
        {
          v27 = v26;
          v28 = &v14[v10];
          v29 = v18 > 0;
          v30 = *v69;
          _CF = v18 < 1 || *v69 == 0 || *v69 >= v28;
          v55 = v27;
          if (!_CF)
          {
            v34 = 0;
            v35 = &v14[v8 - v9];
            v53 = v35;
            while (*v30)
            {
              if (v30 < v28)
              {
                v36 = v35 - v30;
                do
                {
                  if (*v30)
                  {
                    v37 = *v30 == 10;
                  }

                  else
                  {
                    v37 = 1;
                  }

                  if (v37)
                  {
                    break;
                  }

                  *v69 = ++v30;
                  --v36;
                }

                while (v36);
              }

              if (v30 == v28 || !*v30)
              {
                break;
              }

              *v69 = ++v30;
              if (v30 < v28 && *v30 - 48 <= 9)
              {
                _S0 = strtof(v30, v69);
                __asm { FCVT            H0, S0 }

                v41 = (v55 + 8 * v34);
                *v41 = LOWORD(_S0);
                _S0 = strtof(*v69, v69);
                __asm { FCVT            H0, S0 }

                *(v55 + 4 * v34 + 1) = LOWORD(_S0);
                _S0 = strtof(*v69, v69);
                v35 = v53;
                __asm { FCVT            H0, S0 }

                v41[2] = LOWORD(_S0);
                v41[3] = COERCE_UNSIGNED_INT(1.0);
                ++v34;
                v30 = *v69;
              }

              v29 = v34 < v18;
              if (v34 >= v18 || !v30 || v30 >= v28)
              {
                goto LABEL_36;
              }
            }

            v29 = 1;
            goto LABEL_68;
          }

LABEL_36:
          if (v30)
          {
LABEL_68:
            if (v30 < v28)
            {
              v44 = &v14[v10] - v30;
              v45 = v30 + 1;
              while (*(v45 - 1) == 10)
              {
                *v69 = v45++;
                if (!--v44)
                {
                  goto LABEL_78;
                }
              }

              if (!*(v45 - 1))
              {
                v29 = 1;
              }

              if (!v29)
              {
                v46 = *re::pipelineLogObjects(v30);
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(v76[0]) = 136315138;
                  *(v76 + 4) = a3;
                  _os_log_impl(&dword_1E1C61000, v46, OS_LOG_TYPE_DEFAULT, "Size of LUT file is larger than its header indicates. It may be loaded incorrectly: '%s'", v76, 0xCu);
                }
              }
            }

LABEL_78:
            v47 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
            [v47 setTextureType_];
            [v47 setPixelFormat_];
            [v47 setWidth_];
            [v47 setHeight_];
            [v47 setDepth_];
            [v47 setUsage_];
            [v47 setSampleCount_];
            [v47 setMipmapLevelCount_];
            [v47 setStorageMode_];
            re::mtl::Device::makeTexture(v76, v47, this);
            NS::SharedPtr<MTL::Texture>::operator=(&v67, v76);
            if (v76[0])
            {
            }

            [v67 setLabel_];
            memset(v76, 0, 24);
            v76[3] = v57;
            *&v77 = v57;
            *(&v77 + 1) = v57;
            v48 = re::globalAllocators([v67 replaceRegion:v76 mipmapLevel:0 slice:0 withBytes:v55 bytesPerRow:8 * v57 bytesPerImage:8 * v56]);
            (*(*v48[2] + 40))(v48[2], v55);
            *a1 = v67;
            *(a1 + 2) = 0;
            if (v47)
            {
            }

            goto LABEL_13;
          }

          v24 = *re::pipelineLogObjects(0);
          if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }

          LODWORD(v76[0]) = 136315138;
          *(v76 + 4) = a3;
          v20 = "Failed to parse LUT from file '%s'";
        }

        else
        {
          v24 = *re::pipelineLogObjects(v26);
          if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }

          LODWORD(v76[0]) = 136315138;
          *(v76 + 4) = a3;
          v20 = "Failed to find size of LUT from file '%s'";
        }
      }

      else
      {
        v24 = *re::pipelineLogObjects(0);
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_12;
        }

        LODWORD(v76[0]) = 136315138;
        *(v76 + 4) = a3;
        v20 = "Not enough memory to load LUT file '%s'";
      }
    }

    else
    {
      v24 = *re::pipelineLogObjects(v12);
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      LODWORD(v76[0]) = 136315138;
      *(v76 + 4) = a3;
      v20 = "Failed to read content of LUT file '%s'";
    }

    v21 = v24;
    v22 = 12;
    goto LABEL_45;
  }

  v23 = *re::pipelineLogObjects(v7);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    if (v65)
    {
      v33 = *&v66[7];
    }

    else
    {
      v33 = v66;
    }

    LODWORD(v76[0]) = 136315394;
    *(v76 + 4) = a3;
    WORD2(v76[1]) = 2080;
    *(&v76[1] + 6) = v33;
    _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "Attempt to open LUT file '%s' did not succeed: %s", v76, 0x16u);
  }

  *a1 = 0;
  *(a1 + 2) = 0;
LABEL_16:
  if (v62 == 1)
  {
    if (__stream && v65 == 1)
    {
      fclose(__stream);
    }
  }

  else if (v64 && (v65 & 1) != 0)
  {
    (*(*v64 + 40))();
  }

  if (v67)
  {
  }
}

id re::computeCubeMapFromLatLongTextureParameters(re *this, id *a2, const re::TextureImportData *a3, int a4, unint64_t a5, unsigned int a6)
{
  v43 = *MEMORY[0x1E69E9840];
  result = re::TextureData::textureType(a3);
  *this = 0;
  if (result == 2)
  {
    *(this + 12) = 0;
    *(this + 20) = 0;
    v13 = re::TextureData::width(a3);
    v14 = re::TextureData::height(a3);
    v16 = v14;
    if (a5)
    {
      if (a5 >= 0x2000)
      {
        a5 = 0x2000;
      }
    }

    else
    {
      v17 = (v13 * 0.318309886);
      if (v17 <= 1)
      {
        v17 = 1;
      }

      v18 = (v17 - 1) | ((v17 - 1) >> 1) | (((v17 - 1) | ((v17 - 1) >> 1)) >> 2);
      v19 = v18 | (v18 >> 4) | ((v18 | (v18 >> 4)) >> 8);
      v20 = v19 | (v19 >> 16) | ((v19 | (v19 >> 16)) >> 32);
      if (v17 - ((v20 + 1) >> 1) >= v20 + 1 - v17)
      {
        a5 = v20 + 1;
      }

      else
      {
        a5 = (v20 + 1) >> 1;
      }
    }

    v21 = v14 / 2;
    if (v14 / 2 <= (v13 / 4))
    {
      v21 = v13 / 4;
    }

    v22 = v21 / a5;
    if (v22 <= 1)
    {
      v22 = 1;
    }

    if (a6)
    {
      v23 = a6;
    }

    else
    {
      v23 = v22 + 1;
    }

    if (v23 >= 0x40)
    {
      v23 = 64;
    }

    *(this + 4) = v23;
    v24 = 64 - __clz(a5 + 1);
    v25 = v24 - 1;
    if (a5 == -1)
    {
      v26 = 0;
    }

    else
    {
      v26 = ~(-1 << (v24 - 1));
    }

    if (a5 == -1)
    {
      v25 = 0;
    }

    if ((v26 & (a5 + 1)) == 0)
    {
      v24 = v25;
    }

    if (a4)
    {
      v27 = v24;
    }

    else
    {
      v27 = 1;
    }

    v28 = re::internal::chooseWritableTextureFormat(a2, a3, 0, 0, this + 12, v15);
    *(this + 2) = v28;
    v29 = *re::pipelineLogObjects(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v34) = 67110144;
      HIDWORD(v34) = v13;
      v35 = 1024;
      v36 = v16;
      v37 = 2048;
      v38 = a5;
      v39 = 2048;
      v40 = a5;
      v41 = 1024;
      v42 = v28;
      _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, "Converting %dx%d texture to %zux%zux6 cubemap with format %d\n", &v34, 0x28u);
    }

    if (*(this + 12) == 1)
    {
      *(this + 2) = re::translateSRGBPixelFormatToLinear(v28);
      v30 = 19;
    }

    else
    {
      v30 = 3;
    }

    v34 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
    NS::SharedPtr<MTL::Texture>::operator=(this, &v34);
    if (v34)
    {
    }

    [*this setTextureType_];
    [*this setWidth_];
    [*this setHeight_];
    [*this setPixelFormat_];
    [*this setMipmapLevelCount_];
    [*this setSampleCount_];
    [*this setUsage_];
    v31 = *this;
    if (re::TextureData::isShareable(a3))
    {
      v32 = 2;
    }

    else
    {
      v32 = 0;
    }

    result = [v31 setStorageMode_];
    if (v27 > 1)
    {
      v33 = a4;
    }

    else
    {
      v33 = 0;
    }

    *(this + 20) = v33;
  }

  else
  {
    *(this + 2) = 0;
    *(this + 12) = 0;
    *(this + 4) = 0;
    *(this + 20) = 0;
  }

  return result;
}

void re::anonymous namespace::generateMipmapsSynchronous(os_unfair_lock_s **this, const re::ImportGraphicsContext *a2, re::TextureData *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v15[0] = 1;
  v4 = *(a2 + 2);
  if (v4)
  {
    if (v4 == 1)
    {
      re::generateCPUTextureMipmaps(buf, *a2);
      v5 = re::Result<re::Unit,re::DynamicString>::operator=(v15, buf);
      if ((buf[0] & 1) == 0)
      {
        v5 = *&buf[8];
        if (*&buf[8])
        {
          if (buf[16])
          {
            v5 = (*(**&buf[8] + 40))();
          }
        }
      }

      goto LABEL_13;
    }

LABEL_24:
    std::__throw_bad_variant_access[abi:nn200100]();
  }

  v7 = objc_autoreleasePoolPush();
  *buf = 0x5C8C10EB3EC8C2FBLL;
  *&buf[8] = "generateMipmapsQueue";
  re::ImportGraphicsContext::getOrCreateCommandQueue(this, buf, 1, &v14);
  re::mtl::CommandQueue::makeCommandBuffer(&v13, &v14);
  re::mtl::CommandBuffer::makeBlitCommandEncoder(&v12, &v13);
  if (*(a2 + 2))
  {
    goto LABEL_24;
  }

  re::mtl::BlitCommandEncoder::generateMipmaps(&v12, *a2);
  objc_msgSend_endEncoding(v12);
  [v13 commit];
  [v13 waitUntilCompleted];
  re::internal::getCommandBufferError(buf, &v13);
  re::Result<re::Unit,re::DynamicString>::operator=(v15, buf);
  if (buf[0] & 1) == 0 && *&buf[8] && (buf[16])
  {
    (*(**&buf[8] + 40))();
  }

  objc_autoreleasePoolPop(v7);
LABEL_13:
  if ((v15[0] & 1) == 0)
  {
    v8 = *re::pipelineLogObjects(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      v10 = re::TextureData::label(a2);
      if (v17)
      {
        v11 = *&v18[7];
      }

      else
      {
        v11 = v18;
      }

      *buf = 136315394;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = v11;
    }

    if (v15[0] & 1) == 0 && v16 && (v17)
    {
      (*(*v16 + 40))();
    }
  }
}

void re::TextureImportData::ImportReport::SourceInfo::setFromTexture(re::TextureImportData::ImportReport::SourceInfo *this, const re::TextureData *a2)
{
  *this = re::TextureData::width(a2);
  *(this + 1) = re::TextureData::height(a2);
  *(this + 2) = re::TextureData::depth(a2);
  re::TextureData::mipmapLevelCount(a2);
  *(this + 5) = v4;
  *(this + 3) = re::TextureData::arrayLength(a2);
  if (re::TextureData::textureType(a2) - 5 >= 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 6;
  }

  *(this + 4) = v5;
  re::TextureData::pixelFormat(a2);
  *(this + 6) = v6;
  v7 = *(this + 4);
  if (v7)
  {

    *(this + 4) = 0;
  }
}

void re::encodeProcessTextureCommands(id *a1, id *a2, id *a3, id *a4, id *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = *MEMORY[0x1E69E9840];
  v11 = [*a5 mipmapLevelCount];
  v34 = a4;
  v12 = [*a4 mipmapLevelCount];
  if (v11 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  v14 = *a5;
  v15 = [*a5 arrayLength];
  if ([v14 textureType] - 5 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 6 * v15;
  }

  v38 = v16;
  v17 = [*a2 maxTotalThreadsPerThreadgroup];
  v31 = [*a2 threadExecutionWidth];
  if (v13)
  {
    v39 = 0;
    *&v18 = 136317186;
    v30 = v18;
    do
    {
      if (v38)
      {
        for (i = 0; i != v38; ++i)
        {
          v40 = [*v34 newTextureViewWithPixelFormat:a6 textureType:a8 levels:v39 slices:1, i, 1, v30];
          v20 = [*a5 newTextureViewWithPixelFormat:a7 textureType:a8 levels:v39 slices:1, i, 1];
          v21 = *a5;
          v22 = *a1;
          [v21 pixelFormat];
          [*a5 width];
          [*a5 height];
          [*a5 depth];
          [*a5 sampleCount];
          MTLGetTextureLevelInfoForDeviceWithOptions();

          v24 = v17 / 0;
          if (v17 / 0 <= 1)
          {
            v25 = 1;
          }

          else
          {
            v25 = v17 / 0;
          }

          if (v25 >= (v31 / ((v17 / v31) >> 1) <= v17))
          {
            v26 = v31 / ((v17 / v31) >> 1) <= v17;
          }

          else
          {
            v26 = v25;
          }

          if (v26 > v24)
          {
            v27 = 1;
          }

          else
          {
            v27 = v24;
          }

          if (re::pipelineHighFrequencyLoggingEnabled(void)::onceToken != -1)
          {
            dispatch_once(&re::pipelineHighFrequencyLoggingEnabled(void)::onceToken, &__block_literal_global_47);
          }

          if (re::pipelineHighFrequencyLoggingEnabled(void)::shouldLog == 1)
          {
            v28 = *re::pipelineLogObjects(v23);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              *buf = v30;
              *&buf[4] = "Converting texture gamut";
              *&buf[12] = 1024;
              *&buf[14] = 0xFFFFFFFF / 0;
              *&buf[18] = 1024;
              *&buf[20] = (v27 - 1) / v27;
              v43 = 1024;
              v44 = v26 - 1;
              v45 = 1024;
              v46 = 0;
              v47 = 1024;
              v48 = v27;
              v49 = 1024;
              v50 = v26;
              v51 = 2048;
              v52 = v39;
              v53 = 2048;
              v54 = i;
              _os_log_debug_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEBUG, "%s: dispatching %dx%dx%d thread groups of size %dx%dx%d for mipmap level %zu, slice %zu", buf, 0x44u);
            }
          }

          [*a3 setTexture:v40 atIndex:0];
          [*a3 setTexture:v20 atIndex:1];
          v29 = *a3;
          *buf = 0xFFFFFFFF / 0;
          *&buf[8] = (v27 - 1) / v27;
          *&buf[16] = (v26 - 1);
          v41[0] = 0;
          v41[1] = v27;
          v41[2] = v26;
          [v29 dispatchThreadgroups:buf threadsPerThreadgroup:v41];
          if (v20)
          {
          }

          if (v40)
          {
          }
        }
      }

      ++v39;
    }

    while (v39 != v13);
  }
}

void re::convertMetalTextureColorSpace(re::TextureData *this@<X1>, uint64_t a4@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  re::TextureData::pixelFormat(this);
  v6 = v5;
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  MTLPixelFormatGetInfoForDevice();
  re::isHDR(v6);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) &= 0xFC00u;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 24) = 0;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 84) = 0u;
  *(a4 + 104) = 0;
  *(a4 + 112) = 0;
}

id re::createDescriptorFromTexture@<X0>(id *a1@<X0>, id *a2@<X1>, void *a3@<X8>)
{
  v6 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  *a3 = v6;
  [v6 setTextureType_];
  [v6 setWidth_];
  [v6 setHeight_];
  [v6 setDepth_];
  [v6 setArrayLength_];
  [v6 setMipmapLevelCount_];
  [v6 setSampleCount_];
  [v6 setPixelFormat_];
  [v6 setUsage_];
  [v6 setCpuCacheMode_];
  [v6 setStorageMode_];
  v7 = [*a2 compressionType];
  if (([v6 respondsToSelector_] & 1) != 0 || objc_msgSend(v6, sel_methodSignatureForSelector_, sel_setCompressionType_))
  {
    [v6 setCompressionType_];
  }

  if (!*a1 || (result = [*a1 supportsTextureSwizzle], result))
  {
    v9 = [*a2 swizzle];

    return [v6 setSwizzle_];
  }

  return result;
}

id MTL::TextureDescriptor::setCompressionType(void *a1)
{
  if (([a1 respondsToSelector_] & 1) != 0 || (result = objc_msgSend(a1, sel_methodSignatureForSelector_, sel_setCompressionType_)) != 0)
  {

    return [a1 setCompressionType_];
  }

  return result;
}

void re::convertTextureColorSpace(int a1@<W0>, id *a2@<X1>, uint64_t a4@<X8>)
{
  if (*(a2 + 2))
  {
    re::convertCPUTextureColorSpace(a1, a2, a4);
  }

  else
  {
    re::convertMetalTextureColorSpace(a2, a4);
  }
}

void re::createTextureSlice(const re::ImportGraphicsContext *a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, int a5, uint64_t a6, uint64_t a7)
{
  v57 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v39 = 0;
  v11 = *(a1 + 2);
  if (v11 == 1)
  {
    v16 = *a1;
    v17 = *(v16 + 48);
    if (v17 <= a2)
    {
      *v45 = 0;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      buf = 0u;
      v23 = MEMORY[0x1E69E9C10];
      v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v42 = 136315906;
      *&v42[4] = "operator[]";
      *&v42[12] = 1024;
      if (v24)
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      *&v42[14] = 797;
      *&v42[18] = 2048;
      *&v42[20] = a2;
      v43 = 2048;
      *v44 = v17;
      _os_log_send_and_compose_impl(v25, v45, &buf, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v42, 38, v32, v33[0]);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v33[0] = *(*(v16 + 64) + 40 * a2 + 32) + v37 * a3;
      v33[1] = v37;
      *&v44[2] = 0;
      memset(v42, 0, sizeof(v42));
      re::DynamicArray<unsigned char>::DynamicArray(&buf, v33);
      re::DynamicArray<re::DynamicArray<unsigned int>>::add(v42, &buf);
      v18 = buf;
      if (buf && v54)
      {
        v18 = (*(*buf + 40))(buf);
      }

      if (*&v42[16])
      {
        if (!*(*&v44[2] + 32))
        {
          v22 = *re::pipelineLogObjects(v18);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "Failed to allocate CPU texture slice.", &buf, 2u);
          }

          *a4 = 0;
          *(a4 + 8) = 0;
          re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v42);
          goto LABEL_27;
        }

        v19 = [*(v16 + 24) copy];
        *v45 = v19;
        [v19 setMipmapLevelCount_];
        [v19 setWidth_];
        [v19 setHeight_];
        [v19 setDepth_];
        re::make::shared::object<re::CPUTexture,NS::SharedPtr<MTL::TextureDescriptor> &,re::CPUTexture::Data>(v45, v42, &v40);
        *&buf = v40;
        if (v40)
        {
          v20 = (v40 + 8);
        }

        DWORD2(buf) = 1;
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v38, &buf);
        if (DWORD2(buf) != -1)
        {
          (off_1F5D0BA18[DWORD2(buf)])(&v41, &buf);
        }

        DWORD2(buf) = -1;
        if (v40)
        {
        }

        if (*v45)
        {
        }

        re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(v42);
        goto LABEL_22;
      }
    }

    v40 = 0;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    buf = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v45 = 136315906;
    *&v45[4] = "operator[]";
    v46 = 1024;
    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v47 = 789;
    v48 = 2048;
    v49 = 0;
    v50 = 2048;
    v51 = 0;
    _os_log_send_and_compose_impl(v28, &v40, &buf, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v45, 38, v32, v33[0]);
    _os_crash_msg();
    __break(1u);
  }

  if (v11)
  {
    v29 = std::__throw_bad_variant_access[abi:nn200100]();
    re::decompressTexture(v29, v30, v31, a5, a6, a7);
    return;
  }

  v12 = *a1;
  re::TextureData::pixelFormat(a1);
  v14 = [v12 newTextureViewWithPixelFormat:v13 textureType:2 levels:a2 slices:1, a3, 1];
  if (v14)
  {
    v15 = v14;
    v34 = v14;
    LODWORD(v35) = 0;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v38, &v34);
    if (v35 != -1)
    {
      (off_1F5D0BA18[v35])(&buf, &v34);
    }

LABEL_22:
    v21 = re::TextureData::label(a1);
    re::TextureData::setLabel(&v38, v21);
    *a4 = 0;
    *(a4 + 8) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a4, &v38);
    goto LABEL_27;
  }

  *a4 = 0;
  *(a4 + 8) = 0;
LABEL_27:
  if (v39 != -1)
  {
    (off_1F5D0BA18[v39])(&v34, &v38);
  }
}

void re::decompressTexture(id *this@<X0>, const re::ImportGraphicsContext *a2@<X1>, uint64_t a3@<X8>, int a4, uint64_t a5, uint64_t a6)
{
  re::TextureData::pixelFormat(a2);
  if (*(a2 + 2))
  {

    re::decompressCPUTexture(a3, a2);
  }

  else
  {
    v10 = v9;
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    *v28 = 0u;
    MTLPixelFormatGetInfoForDevice();
    if (*(a2 + 2))
    {
      v18 = std::__throw_bad_variant_access[abi:nn200100]();
      re::estimateTextureMemorySize(v18, v19, v20, v21, v22, v23, v24, v25, a4, a5, a6);
    }

    else
    {
      isHDR = re::isHDR(v10);
      v12 = 70;
      if ((v28[1] & 0x800) != 0)
      {
        v12 = 71;
      }

      if (isHDR)
      {
        v13 = 115;
      }

      else
      {
        v13 = v12;
      }

      re::createDescriptorFromTexture(this, a2, v28);
      v14 = v28[0];
      [v28[0] setPixelFormat_];
      [v14 setUsage_];
      [v14 setSwizzle_];
      if ([*a2 isShareable])
      {
        SharedTexture = re::mtl::Device::makeSharedTexture(&v27, v14, this);
      }

      else
      {
        SharedTexture = re::mtl::Device::makeTexture(&v27, v14, this);
      }

      if (v27)
      {
        re::copyTexture(this, a2, &v27, [*a2 swizzle], 0);
        *a3 = v27;
        *(a3 + 8) = 0;
        v16 = re::TextureData::label(a2);
        re::TextureData::setLabel(a3, v16);
      }

      else
      {
        v17 = *re::pipelineLogObjects(SharedTexture);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *v26 = 0;
          _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Decompress Metal texture: failed to create target texture.", v26, 2u);
        }

        *a3 = 0;
        *(a3 + 8) = 0;
      }

      if (v27)
      {
      }

      if (v14)
      {
      }
    }
  }
}

unint64_t re::estimateTextureMemorySize(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11)
{
  v11 = *(a11 + 16);
  if (v11 >= a2)
  {
    v11 = a2;
  }

  if (*a11)
  {
    v12 = *(a11 + 8);
  }

  else
  {
    v12 = 0;
  }

  if (*a11)
  {
    v13 = v11;
  }

  else
  {
    v13 = a2;
  }

  if (v12 < v13)
  {
    do
    {
      MTLGetTextureLevelInfoForDeviceWithOptions();
      ++v12;
    }

    while (v13 != v12);
  }

  return 0;
}

unint64_t re::estimateTextureMemorySize(id *this, const re::mtl::Device *a2, const re::TextureData *a3)
{
  v3 = a3;
  re::TextureData::mipmapLevelCount(a2);
  if (!v6)
  {
    if ((v3 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_8;
  }

  for (i = 0; i < v9; ++i)
  {
    v8 = *this;
    re::TextureData::pixelFormat(a2);
    re::TextureData::width(a2);
    re::TextureData::height(a2);
    re::TextureData::depth(a2);
    MTLGetTextureLevelInfoForDeviceWithOptions();

    if (re::TextureData::textureType(a2) == 3)
    {
      re::TextureData::arrayLength(a2);
    }

    else
    {
      re::TextureData::textureType(a2);
    }

    re::TextureData::mipmapLevelCount(a2);
  }

  if (v3)
  {
LABEL_8:
    re::TextureData::compressionType(a2);
  }

  return 0;
}

uint64_t re::internal::applyCompressionOptionsToTextureDescriptor(void **a1, _DWORD *a2, uint64_t a3, int a4, id *a5)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a2[6] == 1)
  {
    return 0;
  }

  [*a5 pixelFormat];
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  *buf = 0u;
  MTLPixelFormatGetInfoForDevice();
  v9 = a2[6];
  if ((v9 - 3) < 2)
  {
    ASTCDefaultMode = a2[8];
    if (!ASTCDefaultMode)
    {
      ASTCDefaultMode = re::getASTCDefaultMode([*a5 pixelFormat]);
      v9 = a2[6];
    }

    v12 = a2[7];
    if (v12 <= 1)
    {
      v12 = 1;
    }

    if (v9 == 3)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    MTLPixelFormat = re::getMTLPixelFormat(v13, ASTCDefaultMode);
    if ([*a5 pixelFormat] == MTLPixelFormat)
    {
      return 0;
    }

    isSupportedPixelFormat = re::isSupportedPixelFormat(*a1, MTLPixelFormat, [*a5 textureType]);
    if (isSupportedPixelFormat)
    {
      v16 = MTLPixelFormat == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      [*a5 setPixelFormat_];
      return 1;
    }

    v17 = *re::pipelineLogObjects(isSupportedPixelFormat);
    result = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_INFO, "PixelFormatASTC_4x4_LDR not supported by device", buf, 2u);
    return 0;
  }

  if (v9)
  {
    if (v9 == 2)
    {
      v10 = *a5;
      if (([*a5 respondsToSelector_] & 1) != 0 || objc_msgSend(v10, sel_methodSignatureForSelector_, sel_setCompressionType_))
      {
        [v10 setCompressionType_];
      }
    }
  }

  else if (*a1)
  {
    v18 = *a5;
    *buf = [*a5 storageMode];
    v36 = [*a5 pixelFormat];
    v19 = [*a5 usage];
    v34 = 2;
    v35 = v19;
    TextureCompressionType = re::mtl::getTextureCompressionType(a1, buf, &v36, &v35, &v34);
    if (([v18 respondsToSelector_] & 1) != 0 || objc_msgSend(v18, sel_methodSignatureForSelector_, sel_setCompressionType_))
    {
      [v18 setCompressionType_];
    }
  }

  v21 = *a5;
  if (([*a5 respondsToSelector_] & 1) == 0)
  {
    result = [v21 methodSignatureForSelector_];
    if (!result)
    {
      return result;
    }
  }

  if ([v21 compressionType] != 1)
  {
    return 0;
  }

  [*a5 pixelFormat];
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  *buf = 0u;
  InfoForDevice = MTLPixelFormatGetInfoForDevice();
  if ((*&buf[8] & 0x400) == 0)
  {
    [*a5 pixelFormat];
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    *buf = 0u;
    v23 = MTLPixelFormatGetInfoForDevice();
    if ((*&buf[8] & 0x4000000) == 0)
    {
      v24 = *re::pipelineLogObjects(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = *a5;
        v26 = v24;
        v27 = [v25 pixelFormat];
        *buf = 67109120;
        *&buf[4] = v27;
        _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_INFO, "Lossy compression not supported for pixel format '%u'", buf, 8u);
      }

      goto LABEL_38;
    }

    if (*a1)
    {
      v30 = [*a1 supportsFamily:1008];
      if ((v30 & 1) == 0)
      {
        v32 = *re::pipelineLogObjects(v30);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v33 = "Ignoring lossy compression request: requires MTLGPUFamilyApple8";
          goto LABEL_49;
        }

LABEL_50:
        MTL::TextureDescriptor::setCompressionType(*a5);
        return 0;
      }
    }

    v31 = [*a5 usage];
    if ((v31 & 0x10) != 0)
    {
      v32 = *re::pipelineLogObjects(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v33 = "Ignoring lossy compression request for texture with MTLTextureUsagePixelFormatView";
LABEL_49:
        _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_INFO, v33, buf, 2u);
        goto LABEL_50;
      }

      goto LABEL_50;
    }

    return 1;
  }

  v28 = *re::pipelineLogObjects(InfoForDevice);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_INFO, "Ignoring lossy compression request for compressed pixel format", buf, 2u);
  }

LABEL_38:
  v29 = *a5;
  if (([v29 respondsToSelector_] & 1) != 0 || (result = objc_msgSend(v29, sel_methodSignatureForSelector_, sel_setCompressionType_)) != 0)
  {
    [v29 setCompressionType_];
    return 0;
  }

  return result;
}

void re::createCompressedTextureData(re::TextureData *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, id *a4@<X3>, id *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = a1;
  v113 = *MEMORY[0x1E69E9840];
  re::TextureData::pixelFormat(a1);
  *&v111 = 0;
  memset(v110, 0, sizeof(v110));
  MTLPixelFormatGetInfoForDevice();
  v106 = *a3;
  ASTCDefaultMode = DWORD1(v106);
  if (!DWORD1(v106))
  {
    re::TextureData::pixelFormat(v12);
    ASTCDefaultMode = re::getASTCDefaultMode(v15);
    DWORD1(v106) = ASTCDefaultMode;
  }

  MTLPixelFormat = re::getMTLPixelFormat(v106, ASTCDefaultMode);
  if (!MTLPixelFormat || (v18 = MTLPixelFormat, (v19 = *a4) != 0) && (v20 = re::TextureData::textureType(v12), MTLPixelFormat = re::isSupportedPixelFormat(v19, v18, v20), (MTLPixelFormat & 1) == 0))
  {
    v22 = v110[0];
    v23 = v110[1];
    *a7 = 0;
    *(a7 + 8) = v22;
    *(a7 + 24) = v23;
    return;
  }

  re::internal::synchronizeTextureMipmaps(v12, v17);
  if (a5)
  {
    v21 = *a5;
LABEL_14:
    v25 = v21;
    v105 = v21;
    goto LABEL_15;
  }

  v24 = *(v12 + 8);
  if (v24 == 1)
  {
    v21 = [*(*v12 + 24) copy];
    goto LABEL_14;
  }

  if (v24)
  {
    goto LABEL_124;
  }

  re::createDescriptorFromTexture(a4, v12, &v105);
  v25 = v105;
LABEL_15:
  if (([v25 respondsToSelector_] & 1) != 0 || objc_msgSend(v25, sel_methodSignatureForSelector_, sel_setCompressionType_))
  {
    [v25 setCompressionType_];
  }

  v26 = v105;
  [v105 setPixelFormat_];
  v101[0] = 0;
  if (re::TextureData::label(v12))
  {
    v27 = re::TextureData::label(v12);
    LOBYTE(v110[0]) = 1;
    *(&v110[0] + 1) = *v91;
    *&v110[2] = v92;
    v110[1] = *&v91[8];
    *&v92 = 0;
    memset(v91, 0, sizeof(v91));
    re::Optional<re::DynamicString>::operator=(v101, v110);
    if (LOBYTE(v110[0]) == 1 && *(&v110[0] + 1))
    {
      if (v110[1])
      {
        (*(**(&v110[0] + 1) + 40))(*(&v110[0] + 1), *(&v110[1] + 1));
      }

      memset(v110 + 8, 0, 32);
    }

    if (*v91 && (v91[8] & 1) != 0)
    {
      (*(**v91 + 40))();
    }
  }

  v99 = 0;
  v100 = 0;
  if (!*(v12 + 8))
  {
    v81 = v26;
    v85 = a7;
    v86 = a6;
    v84 = objc_autoreleasePoolPush();
    re::TextureData::mipmapLevelCount(v12);
    v37 = v36;
    FaceOrArrayLength = re::internal::getFaceOrArrayLength(v12, v38);
    v98 = 0;
    v95 = 0;
    v96 = 0;
    v94 = 0;
    v97 = 0;
    v87 = FaceOrArrayLength;
    v40 = v37 * FaceOrArrayLength;
    v41 = re::TextureData::depth(v12);
    if (v41 <= 1)
    {
      v42 = 1;
    }

    else
    {
      v42 = v41;
    }

    if (v95 < v40 * v42)
    {
      re::DynamicArray<re::internal::TextureInMetalBuffers>::setCapacity(&v94, v40 * v42);
    }

    LOBYTE(v92) = 0;
    *(&v92 + 4) = 0;
    HIDWORD(v92) = 0;
    *&v91[16] = 0;
    *v91 = 0;
    *&v91[8] = 8;
    v93 = dispatch_get_global_queue(21, 0);
    if (v37)
    {
      v43 = 0;
      for (i = v37; i != v43; v37 = i)
      {
        v44 = re::TextureData::depth(v12);
        if (v87)
        {
          v45 = 0;
          if (v44 >> v43 <= 1)
          {
            v46 = 1;
          }

          else
          {
            v46 = v44 >> v43;
          }

          while (2)
          {
            v47 = 0;
            do
            {
              v108[0] = &unk_1F5D0BBB8;
              v108[1] = &v94;
              v108[3] = v108;
              re::copyTextureBytesToASTCCompression(a4, v12, &v106, a2, v43, v45, v47, v91, v110, v108);
              std::__function::__value_func<re::Result<re::Unit,re::DynamicString> ()(re::ASTCResultBuffer const&)>::~__value_func[abi:nn200100](v108);
              if ((v110[0] & 1) == 0)
              {
                re::DynamicString::DynamicString(v109, (v110 + 8));
                *a7 = 0;
                v54 = *&v109[24];
                *(a7 + 8) = *v109;
                *(a7 + 32) = v54;
                *(a7 + 16) = *&v109[8];
                if (v110[0] & 1) == 0 && *(&v110[0] + 1) && (v110[1])
                {
                  (*(**(&v110[0] + 1) + 40))();
                }

                if (*(&v92 + 1))
                {
                  astcenc_context_free(*(&v92 + 1));
                  *(&v92 + 1) = 0;
                }

                re::DynamicArray<re::internal::TextureInMetalBuffers>::deinit(&v94);
                objc_autoreleasePoolPop(v84);
                goto LABEL_79;
              }

              ++v47;
            }

            while (v46 != v47);
            if (++v45 != v87)
            {
              continue;
            }

            break;
          }
        }

        ++v43;
      }
    }

    if (v86)
    {
      v48 = *(v86 + 24);
      if (!v48)
      {
LABEL_125:
        v79 = std::__throw_bad_function_call[abi:nn200100]();
        re::parseTextureFromImageOptions(v80, v79);
        return;
      }

      (*(*v48 + 48))(v48);
    }

    if (!*(v12 + 8))
    {
      if ([*v12 isShareable])
      {
        SharedTexture = re::mtl::Device::makeSharedTexture(&v90, v81, a4);
      }

      else
      {
        SharedTexture = re::mtl::Device::makeTexture(&v90, v81, a4);
      }

      if (v90)
      {
        *&v110[0] = 0x5D676084A50D34ACLL;
        *(&v110[0] + 1) = "copyCompressedTextureQueue";
        memset(v89, 0, sizeof(v89));
        re::internal::BlitCommandQueue::init(v89, a4, v110);
        if (v37)
        {
          v55 = 0;
          v56 = 0;
          v83 = v37;
          do
          {
            v57 = re::TextureData::depth(v12);
            if (v87)
            {
              v58 = 0;
              if (v57 >> v55 <= 1)
              {
                v59 = 1;
              }

              else
              {
                v59 = v57 >> v55;
              }

              v60 = 224 * v56;
              while (2)
              {
                v61 = v56;
                v56 += v59;
                v62 = v59;
                v63 = v60;
                do
                {
                  v64 = v96;
                  if (v96 <= v61)
                  {
                    v107 = 0;
                    v111 = 0u;
                    v112 = 0u;
                    memset(v110, 0, sizeof(v110));
                    v67 = MEMORY[0x1E69E9C10];
                    v73 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v109 = 136315906;
                    *&v109[4] = "operator[]";
                    *&v109[12] = 1024;
                    if (v73)
                    {
                      v74 = 3;
                    }

                    else
                    {
                      v74 = 2;
                    }

                    *&v109[14] = 789;
                    *&v109[18] = 2048;
                    *&v109[20] = v61;
                    *&v109[28] = 2048;
                    *&v109[30] = v64;
                    _os_log_send_and_compose_impl(v74, &v107, v110, 80, &dword_1E1C61000, v67, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v109, 38, v81, v83);
                    _os_crash_msg();
                    __break(1u);
                    goto LABEL_109;
                  }

                  v65 = v98;
                  v66 = re::internal::BlitCommandQueue::blitCommandEncoder(v89);
                  v88[0] = 0;
                  re::internal::TextureInMetalBuffers::replaceTextureSlice(v65 + v63, &v90, v55, v58, v66, v88);
                  ++v61;
                  v63 += 224;
                  --v62;
                }

                while (v62);
                ++v58;
                v60 += 224 * v59;
                if (v58 != v87)
                {
                  continue;
                }

                break;
              }
            }

            ++v55;
          }

          while (v55 != v83);
        }

        re::internal::BlitCommandQueue::commit(v89);
        v67 = v110;
        re::internal::BlitCommandQueue::waitUntilCompleted(v110, v89);
        LOBYTE(v12) = v110[0];
        if (v110[0])
        {
          *v109 = v90;
          *&v109[8] = 0;
          std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v99, v109);
          v70 = v84;
          a7 = v85;
          if (*&v109[8] != -1)
          {
            (off_1F5D0BA18[*&v109[8]])(&v107, v109);
          }
        }

        else
        {
LABEL_109:
          if (v110[1])
          {
            v75 = *(&v110[1] + 1);
          }

          else
          {
            v75 = v67 + 17;
          }

          v76 = *v109;
          v77 = *&v109[16];
          v78 = *&v109[24];
          v70 = v84;
          a7 = v85;
          *v85 = 0;
          *(v85 + 8) = v76;
          *(v85 + 24) = v77;
          *(v85 + 32) = v78;
        }

        if (v110[0] & 1) == 0 && *(&v110[0] + 1) && (v110[1])
        {
          (*(**(&v110[0] + 1) + 40))();
        }

        re::internal::BlitCommandQueue::~BlitCommandQueue(v89, v69);
      }

      else
      {
        LOBYTE(v12) = 0;
        v71 = v110[0];
        v72 = v110[1];
        *a7 = 0;
        *(a7 + 8) = v71;
        *(a7 + 24) = v72;
        v70 = v84;
      }

      if (v90)
      {
      }

      if (*(&v92 + 1))
      {
        astcenc_context_free(*(&v92 + 1));
        *(&v92 + 1) = 0;
      }

      re::DynamicArray<re::internal::TextureInMetalBuffers>::deinit(&v94);
      objc_autoreleasePoolPop(v70);
      if ((v12 & 1) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_39;
    }

LABEL_124:
    std::__throw_bad_variant_access[abi:nn200100]();
    goto LABEL_125;
  }

  re::TextureData::pixelFormat(v12);
  v29 = v28;
  v30 = re::TextureData::swizzle(v12);
  v31 = 1;
  if ((v30 & 0xFF0000) != 0x50000 && v30 != 5 && (v30 & 0xFF00) != 0x500)
  {
    v31 = HIBYTE(v30) == 5;
  }

  if (*(v12 + 8) != 1)
  {
    goto LABEL_124;
  }

  v32 = re::MTLToASTCPixelFormat(v29, v31);
  re::internal::createCompressedCPUTextureData(*v12, v32, a2, &v105, &v106, 0, v110);
  if (v110[0])
  {
    *v91 = *(&v110[0] + 1);
    if (*(&v110[0] + 1))
    {
      v34 = (*(&v110[0] + 1) + 8);
    }

    *&v91[8] = 1;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v99, v91);
    if (*&v91[8] != -1)
    {
      (off_1F5D0BA18[*&v91[8]])(&v94, v91);
    }

    re::Result<re::SharedPtr<re::RealityArchive>,re::DynamicString>::~Result(v110);
LABEL_39:
    if (v101[0] == 1)
    {
      if (v103)
      {
        v35 = *&v104[7];
      }

      else
      {
        v35 = v104;
      }

      re::TextureData::setLabel(&v99, v35);
    }

    LOBYTE(v110[0]) = 0;
    DWORD2(v110[0]) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(v110, &v99);
    *a7 = 1;
    *(a7 + 8) = 0;
    *(a7 + 16) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(a7 + 8, v110);
    if (DWORD2(v110[0]) != -1)
    {
      (off_1F5D0BA18[DWORD2(v110[0])])(v91, v110);
    }

    goto LABEL_79;
  }

  if (v110[1])
  {
    v50 = *(&v110[1] + 1);
  }

  else
  {
    v50 = &v110[1] + 1;
  }

  re::DynamicString::format(v91, "Failed to create compressed texture: %s.", v33, v50);
  v51 = *v91;
  v52 = *&v91[16];
  v53 = v92;
  *a7 = 0;
  *(a7 + 8) = v51;
  *(a7 + 24) = v52;
  *(a7 + 32) = v53;
  re::Result<re::SharedPtr<re::RealityArchive>,re::DynamicString>::~Result(v110);
LABEL_79:
  if (v100 != -1)
  {
    (off_1F5D0BA18[v100])(v110, &v99);
  }

  if (v101[0] == 1 && v102 && (v103 & 1) != 0)
  {
    (*(*v102 + 40))();
  }

  if (v105)
  {
  }
}

void re::parseTextureFromImageOptions(uint64_t *__return_ptr a1@<X8>, re *this@<X0>)
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = *this;
  v69 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:0 error:&v69];
  v5 = v69;
  v6 = v5;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4 == 0;
  }

  if (v7)
  {
    v8 = [v5 localizedDescription];
    v9 = [v8 UTF8String];
    re::DynamicString::format(&v60, "JSON deocing error: %s\n%s", v10, v9, re::kTextureFromImageOptionsJSONFormatHelp);
    v11 = v60;
    v12 = *v61;
    v13 = *&v61[8];
    *a1 = 0;
    *(a1 + 1) = v11;
    a1[3] = v12;
    a1[4] = v13;
  }

  else
  {
    v43 = a1;
    v44 = v5;
    v60 = 0uLL;
    *v61 = 1;
    *&v61[24] = 0;
    v61[28] = 0;
    *&v61[32] = 0;
    v61[36] = 0;
    memset(&v61[4], 0, 17);
    *&v61[40] = 6;
    v63 = 0uLL;
    v62 = 0;
    v64 = -65536;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v45 = v4;
    v14 = v4;
    v15 = [v14 countByEnumeratingWithState:&v56 objects:v70 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v57;
      while (1)
      {
        v19 = 0;
        do
        {
          if (*v57 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v56 + 1) + 8 * v19);
          v21 = [v14 valueForKey:v20];
          if ([v20 isEqualToString:@"semantic"])
          {
            if ([v21 isEqualToString:@"color"])
            {
              v22 = 3;
            }

            else if ([v21 isEqualToString:@"normal"])
            {
              v22 = 5;
            }

            else
            {
              if (![v21 isEqualToString:@"raw"])
              {
                v41 = [v21 UTF8String];
                re::DynamicString::format(&v46, "Unsupported semantic: %s\n%s", v35, v41, re::kTextureFromImageOptionsJSONFormatHelp);
                goto LABEL_47;
              }

              v22 = 1;
            }

            *&v61[40] = v22;
            *&v60 = 0x300000002;
          }

          else if ([v20 isEqualToString:@"compression"])
          {
            if ([v21 isEqualToString:@"none"])
            {
              v23 = 1;
LABEL_30:
              *&v61[8] = v23;
              goto LABEL_31;
            }

            if ([v21 isEqualToString:@"GPULossy"])
            {
              v23 = 2;
              goto LABEL_30;
            }

            if ([v21 isEqualToString:@"ASTC_4x4"])
            {
              v23 = 3;
              goto LABEL_30;
            }

            if ([v21 isEqualToString:@"ASTC_6x6"])
            {
              *&v61[8] = 0x500000004;
            }

            else if ([v21 isEqualToString:@"ASTC_8x8"])
            {
              *&v61[8] = 0x800000004;
            }

            else
            {
              if (![v21 isEqualToString:@"ASTC_10x10"])
              {
                v42 = [v21 UTF8String];
                re::DynamicString::format(&v46, "Unsupported compression: %s\n%s", v38, v42, re::kTextureFromImageOptionsJSONFormatHelp);
                goto LABEL_47;
              }

              *&v61[8] = 0xC00000004;
            }

            *&v61[24] = 0;
          }

          else
          {
            if (![v20 isEqualToString:@"colorSpace"])
            {
              v39 = [v20 UTF8String];
              re::DynamicString::format(&v46, "Unsupported key: %s\n%s", v33, v39, re::kTextureFromImageOptionsJSONFormatHelp);
LABEL_47:
              v36 = v46;
              v37 = v47;
              *v43 = 0;
              *(v43 + 1) = v36;
              *(v43 + 3) = v37;

              goto LABEL_48;
            }

            v25 = re::CGColorSpaceNameFromOCIOString(v21, v24);
            if (!v25)
            {
              v40 = [v21 UTF8String];
              re::DynamicString::format(&v46, "Unsupported colorSpace: %s\n%s", v34, v40, re::kTextureFromImageOptionsJSONFormatHelp);
              goto LABEL_47;
            }

            v26 = v25;
            v62 = v26;

            CFRelease(v26);
            v17 = v26;
          }

LABEL_31:

          ++v19;
        }

        while (v16 != v19);
        v27 = [v14 countByEnumeratingWithState:&v56 objects:v70 count:16];
        v16 = v27;
        if (!v27)
        {
          goto LABEL_43;
        }
      }
    }

    v17 = 0;
LABEL_43:

    v46 = v60;
    v47 = *v61;
    v48[0] = *&v61[16];
    *(v48 + 12) = *&v61[28];
    v49 = v17;
    v50 = v63;
    v51 = v64;
    re::FixedArray<short>::FixedArray(&v52, &v65);
    v28 = v47;
    *(v43 + 1) = v46;
    v29 = v68;
    v55 = v68;
    *v43 = 1;
    *(v43 + 3) = v28;
    *(v43 + 5) = v48[0];
    *(v43 + 52) = *(v48 + 12);
    v43[9] = v49;
    *(v43 + 5) = v50;
    *(v43 + 24) = v51;
    v30 = v52;
    v31 = v53;
    v49 = 0;
    v52 = 0;
    v53 = 0;
    v43[13] = v30;
    v43[14] = v31;
    v32 = v54;
    v54 = 0;
    v43[15] = v32;
    *(v43 + 128) = v29;
LABEL_48:
    v6 = v44;
    v4 = v45;
    if (v65)
    {
      if (v66)
      {
        (*(*v65 + 40))();
        v66 = 0;
        v67 = 0;
      }

      v65 = 0;
    }
  }
}

void *re::introspect_TextureCompressionType(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    v9 = re::introspectionAllocator();
    v10 = (*(*v9 + 32))(v9, 24, 8);
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = "Unspecified";
    re::introspect_TextureCompressionType(BOOL)::enumAttributes = v10;
    v11 = re::introspectionAllocator();
    v12 = (*(*v11 + 32))(v11, 24, 8);
    *v12 = 1;
    *(v12 + 8) = 1;
    *(v12 + 16) = "None";
    qword_1EE1C63A8 = v12;
    v13 = re::introspectionAllocator();
    v14 = (*(*v13 + 32))(v13, 24, 8);
    *v14 = 1;
    *(v14 + 8) = 2;
    *(v14 + 16) = "MetalLossy";
    qword_1EE1C63B0 = v14;
    v15 = re::introspectionAllocator();
    v16 = (*(*v15 + 32))(v15, 24, 8);
    *v16 = 1;
    *(v16 + 8) = 3;
    *(v16 + 16) = "ASTC_4x4";
    qword_1EE1C63B8 = v16;
    v17 = re::introspectionAllocator();
    v18 = (*(*v17 + 32))(v17, 24, 8);
    *v18 = 1;
    *(v18 + 8) = 4;
    *(v18 + 16) = "ASTC";
    qword_1EE1C63C0 = v18;
  }

  {
    v19 = re::IntrospectionBasic::IntrospectionBasic(&re::introspect_TextureCompressionType(BOOL)::info, "TextureCompressionType", 4, 4, 1, 1);
    *v19 = &unk_1F5D0C658;
    *(v19 + 8) = &re::introspect_TextureCompressionType(BOOL)::enumTable;
    *(v19 + 4) = 9;
  }

  if (v2)
  {
    if (re::introspect_TextureCompressionType(BOOL)::isInitialized)
    {
      return &re::introspect_TextureCompressionType(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v21);
    v3 = re::introspect_TextureCompressionType(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v21);
    if (v3)
    {
      return &re::introspect_TextureCompressionType(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::introspect_TextureCompressionType(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::introspect_TextureCompressionType(BOOL)::info;
    }
  }

  re::introspect_TextureCompressionType(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_TextureCompressionType(BOOL)::info, a2);
  v20[0] = 0x661208C0D60D1E8ALL;
  v20[1] = "TextureCompressionType";
  xmmword_1EE1C6378 = v21;
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::introspect_TextureCompressionType(BOOL)::info;
}

void re::introspect_ASTCBlockSize(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BBEF8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BBF00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BBF00))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BBF68, "ASTCBlockSize", 4, 4, 1, 1);
      qword_1EE1BBF68 = &unk_1F5D0C658;
      qword_1EE1BBFA8 = &re::introspect_ASTCBlockSize(BOOL)::enumTable;
      dword_1EE1BBF78 = 9;
      __cxa_guard_release(&qword_1EE1BBF00);
    }

    if (_MergedGlobals_483)
    {
      break;
    }

    _MergedGlobals_483 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BBF68, a2);
    v59 = 0xC9871D6D0725621ALL;
    v60 = "ASTCBlockSize";
    v63 = 208862;
    v64 = "int";
    v4 = v62[0];
    v5 = v62[1];
    if (v63)
    {
      if (v63)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1BBFA8;
      v63 = v4;
      v64 = v5;
      re::TypeBuilder::beginEnumType(v62, &v59, 1, 1, &v63);
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
            *&v61.var0 = 2 * v11;
            v61.var1 = v10;
            re::TypeBuilder::addEnumConstant(v62, v15, &v61);
            if (*&v61.var0)
            {
              if (*&v61.var0)
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
              *&v61.var0 = 2 * v20;
              v61.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v62, v24, &v61);
              if (*&v61.var0)
              {
                if (*&v61.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v62, v26);
      xmmword_1EE1BBF88 = v61;
      if (v59)
      {
        if (v59)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v60);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v58);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1BBEF8))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Invalid";
      qword_1EE1BBFF8 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "4x4";
      qword_1EE1BC000 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "5x4";
      qword_1EE1BC008 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "5x5";
      qword_1EE1BC010 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 4;
      *(v37 + 16) = "6x5";
      qword_1EE1BC018 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 5;
      *(v39 + 16) = "6x6";
      qword_1EE1BC020 = v39;
      v40 = re::introspectionAllocator();
      v41 = (*(*v40 + 32))(v40, 24, 8);
      *v41 = 1;
      *(v41 + 8) = 6;
      *(v41 + 16) = "8x5";
      qword_1EE1BC028 = v41;
      v42 = re::introspectionAllocator();
      v43 = (*(*v42 + 32))(v42, 24, 8);
      *v43 = 1;
      *(v43 + 8) = 7;
      *(v43 + 16) = "8x6";
      qword_1EE1BC030 = v43;
      v44 = re::introspectionAllocator();
      v45 = (*(*v44 + 32))(v44, 24, 8);
      *v45 = 1;
      *(v45 + 8) = 8;
      *(v45 + 16) = "8x8";
      qword_1EE1BC038 = v45;
      v46 = re::introspectionAllocator();
      v47 = (*(*v46 + 32))(v46, 24, 8);
      *v47 = 1;
      *(v47 + 8) = 9;
      *(v47 + 16) = "10x5";
      qword_1EE1BC040 = v47;
      v48 = re::introspectionAllocator();
      v49 = (*(*v48 + 32))(v48, 24, 8);
      *v49 = 1;
      *(v49 + 8) = 10;
      *(v49 + 16) = "10x6";
      qword_1EE1BC048 = v49;
      v50 = re::introspectionAllocator();
      v51 = (*(*v50 + 32))(v50, 24, 8);
      *v51 = 1;
      *(v51 + 8) = 11;
      *(v51 + 16) = "10x8";
      qword_1EE1BC050 = v51;
      v52 = re::introspectionAllocator();
      v53 = (*(*v52 + 32))(v52, 24, 8);
      *v53 = 1;
      *(v53 + 8) = 12;
      *(v53 + 16) = "10x10";
      qword_1EE1BC058 = v53;
      v54 = re::introspectionAllocator();
      v55 = (*(*v54 + 32))(v54, 24, 8);
      *v55 = 1;
      *(v55 + 8) = 13;
      *(v55 + 16) = "12x10";
      qword_1EE1BC060 = v55;
      v56 = re::introspectionAllocator();
      v57 = (*(*v56 + 32))(v56, 24, 8);
      *v57 = 1;
      *(v57 + 8) = 14;
      *(v57 + 16) = "12x12";
      qword_1EE1BC068 = v57;
      __cxa_guard_release(&qword_1EE1BBEF8);
    }
  }
}

void re::introspect_ASTCMode(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BBF08, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BBF10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BBF10))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BBFB0, "ASTCMode", 4, 4, 1, 1);
      qword_1EE1BBFB0 = &unk_1F5D0C658;
      qword_1EE1BBFF0 = &re::introspect_ASTCMode(BOOL)::enumTable;
      dword_1EE1BBFC0 = 9;
      __cxa_guard_release(&qword_1EE1BBF10);
    }

    if (byte_1EE1BBEF1)
    {
      break;
    }

    byte_1EE1BBEF1 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BBFB0, a2);
    v37 = 0x36433FB06C8;
    v38 = "ASTCMode";
    v41 = 208862;
    v42 = "int";
    v4 = v40[0];
    v5 = v40[1];
    if (v41)
    {
      if (v41)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1BBFF0;
      v41 = v4;
      v42 = v5;
      re::TypeBuilder::beginEnumType(v40, &v37, 1, 1, &v41);
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
            *&v39.var0 = 2 * v11;
            v39.var1 = v10;
            re::TypeBuilder::addEnumConstant(v40, v15, &v39);
            if (*&v39.var0)
            {
              if (*&v39.var0)
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
              *&v39.var0 = 2 * v20;
              v39.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v40, v24, &v39);
              if (*&v39.var0)
              {
                if (*&v39.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v40, v26);
      xmmword_1EE1BBFD0 = v39;
      if (v37)
      {
        if (v37)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v38);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v36);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1BBF08))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Unspecified";
      qword_1EE1BBF28 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "LinearLDR";
      qword_1EE1BBF30 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "SRGB_LDR";
      qword_1EE1BBF38 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "LinearHDR";
      qword_1EE1BBF40 = v35;
      __cxa_guard_release(&qword_1EE1BBF08);
    }
  }
}

void *re::allocInfo_ASTCCompressionOptions(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BBF18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BBF18))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BC070, "ASTCCompressionOptions");
    __cxa_guard_release(&qword_1EE1BBF18);
  }

  return &unk_1EE1BC070;
}

void re::initInfo_ASTCCompressionOptions(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v22[0] = 0x9ADC94622CF054B2;
  v22[1] = "ASTCCompressionOptions";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE1BBF20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BBF20))
  {
    v7 = re::introspectionAllocator();
    re::introspect_ASTCBlockSize(v7, v8);
    v9 = (*(*v7 + 32))(v7, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "blockSize";
    *(v9 + 16) = &qword_1EE1BBF68;
    *(v9 + 24) = 0;
    *(v9 + 32) = 1;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE1BBF48 = v9;
    v10 = re::introspectionAllocator();
    re::introspect_ASTCMode(v10, v11);
    v12 = (*(*v10 + 32))(v10, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "mode";
    *(v12 + 16) = &qword_1EE1BBFB0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x400000002;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE1BBF50 = v12;
    v13 = re::introspectionAllocator();
    v15 = re::introspect_BOOL(1, v14);
    v16 = (*(*v13 + 32))(v13, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "premultipliedAlpha";
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x800000003;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE1BBF58 = v16;
    v17 = re::introspectionAllocator();
    v19 = re::introspect_float(1, v18);
    v20 = (*(*v17 + 32))(v17, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "quality";
    *(v20 + 16) = v19;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0xC00000004;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE1BBF60 = v20;
    __cxa_guard_release(&qword_1EE1BBF20);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1BBF48;
  *(this + 9) = re::internal::defaultConstruct<re::ASTCCompressionOptions>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ASTCCompressionOptions>;
  *(this + 13) = re::internal::defaultConstructV2<re::ASTCCompressionOptions>;
  *(this + 14) = re::internal::defaultDestructV2<re::ASTCCompressionOptions>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v21 = v23;
}

void re::internal::defaultConstruct<re::ASTCCompressionOptions>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 12) = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
}

uint64_t re::internal::defaultConstructV2<re::ASTCCompressionOptions>(uint64_t result)
{
  *(result + 12) = 0;
  *result = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t re::types::Ok<re::TextureImportData>::~Ok(uint64_t a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 72);

  v2 = *(a1 + 56);
  if (v2)
  {

    *(a1 + 56) = 0;
  }

  v3 = *(a1 + 8);
  if (v3 != -1)
  {
    (off_1F5D0BA18[v3])(&v5, a1);
  }

  *(a1 + 8) = -1;
  return a1;
}

__n128 std::__function::__func<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_0,std::allocator<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D0BA38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_0,std::allocator<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_0>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  if (*v1)
  {
    *v1 = 0;
    return (*(**(result + 16) + 96))();
  }

  return result;
}

uint64_t std::__function::__func<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_0,std::allocator<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::DynamicArray<CGImagePtr>::deinit(uint64_t a1)
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
        v5 = 112 * v4;
        do
        {
          CGImagePtr::~CGImagePtr(v3);
          v3 = (v3 + 112);
          v5 -= 112;
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

void *re::DynamicArray<CGImagePtr>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<CGImagePtr>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x70uLL))
        {
          v2 = 112 * a2;
          result = (*(*result + 32))(result, 112 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 112, a2);
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
        v10 = 112 * v9;
        v11 = v7;
        do
        {
          CGImagePtr::CGImagePtr(v11, v8);
          CGImagePtr::~CGImagePtr(v8);
          v8 += 14;
          v11 += 112;
          v10 -= 112;
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

__n128 std::__function::__func<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_1,std::allocator<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_1>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D0BAB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

const void *std::__function::__func<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_1,std::allocator<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_1>,void ()(void)>::operator()(uint64_t a1)
{
  result = **(a1 + 8);
  if (result)
  {
    CFRelease(result);
    **(a1 + 8) = 0;
    v3 = *(**(a1 + 16) + 96);

    return v3();
  }

  return result;
}

uint64_t std::__function::__func<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_1,std::allocator<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_2,std::allocator<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_2>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D0BB38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_2,std::allocator<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_2>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  if (*v1)
  {
    *v1 = 0;
    return (*(**(result + 16) + 96))();
  }

  return result;
}

uint64_t std::__function::__func<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_2,std::allocator<re::loadTextureDataWithProvider(re::TextureProvider &,re::Allocator *)::$_2>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::DynamicArray<re::internal::TextureInMetalBuffers>::deinit(uint64_t a1)
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
        v5 = 224 * v4;
        do
        {
          re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v3);
          v3 = (v3 + 224);
          v5 -= 224;
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

void *re::DynamicArray<re::internal::TextureInMetalBuffers>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::internal::TextureInMetalBuffers>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xE0uLL))
        {
          v2 = 224 * a2;
          result = (*(*result + 32))(result, 224 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 224, a2);
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
LABEL_18:
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
        v11 = v8 + 224 * v9;
        do
        {
          v12 = &v7[v10 / 8];
          v13 = v8 + v10;
          v14 = *(v8 + v10);
          v15 = *(v8 + v10 + 8);
          *v12 = v14;
          v12[1] = v15;
          re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::DynamicOverflowArray(&v7[v10 / 8 + 2], (v8 + v10 + 16));
          re::DynamicArray<BOOL>::DynamicArray(&v7[v10 / 8 + 17], (v8 + v10 + 136));
          v16 = *(v8 + v10 + 176);
          *(v12 + 92) = *(v8 + v10 + 184);
          v12[22] = v16;
          LODWORD(v16) = *(v8 + v10 + 192);
          *(v12 + 192) = v16;
          if (v16 == 1)
          {
            v17 = *(v13 + 200);
            v12[27] = *(v13 + 216);
            *(v12 + 25) = v17;
          }

          re::internal::TextureInMetalBuffers::~TextureInMetalBuffers((v8 + v10));
          v10 += 224;
        }

        while (v13 + 224 != v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t std::__function::__func<re::createCompressedTextureData(re::TextureData const&,re::TextureSemantic,re::ASTCCompressionOptions const&,re::ImportGraphicsContext const&,NS::SharedPtr<MTL::TextureDescriptor> const*,std::function<void ()(void)> const*)::$_0,std::allocator<re::createCompressedTextureData(re::TextureData const&,re::TextureSemantic,re::ASTCCompressionOptions const&,re::ImportGraphicsContext const&,NS::SharedPtr<MTL::TextureDescriptor> const*,std::function<void ()(void)> const*)::$_0>,re::Result<re::Unit,re::DynamicString> ()(re::ASTCResultBuffer const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D0BBB8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<re::createCompressedTextureData(re::TextureData const&,re::TextureSemantic,re::ASTCCompressionOptions const&,re::ImportGraphicsContext const&,NS::SharedPtr<MTL::TextureDescriptor> const*,std::function<void ()(void)> const*)::$_0,std::allocator<re::createCompressedTextureData(re::TextureData const&,re::TextureSemantic,re::ASTCCompressionOptions const&,re::ImportGraphicsContext const&,NS::SharedPtr<MTL::TextureDescriptor> const*,std::function<void ()(void)> const*)::$_0>,re::Result<re::Unit,re::DynamicString> ()(re::ASTCResultBuffer const&)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *(a1 + 8);
  (*(*a2 + 24))(v5, a2);
  re::DynamicArray<re::internal::TextureInMetalBuffers>::add(v4, v5);
  re::internal::TextureInMetalBuffers::~TextureInMetalBuffers(v5);
  *a3 = 1;
}

uint64_t std::__function::__func<re::createCompressedTextureData(re::TextureData const&,re::TextureSemantic,re::ASTCCompressionOptions const&,re::ImportGraphicsContext const&,NS::SharedPtr<MTL::TextureDescriptor> const*,std::function<void ()(void)> const*)::$_0,std::allocator<re::createCompressedTextureData(re::TextureData const&,re::TextureSemantic,re::ASTCCompressionOptions const&,re::ImportGraphicsContext const&,NS::SharedPtr<MTL::TextureDescriptor> const*,std::function<void ()(void)> const*)::$_0>,re::Result<re::Unit,re::DynamicString> ()(re::ASTCResultBuffer const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::DynamicArray<re::internal::TextureInMetalBuffers>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::internal::TextureInMetalBuffers>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 224 * v4;
  v6 = *a2;
  v7 = *(a2 + 8);
  *v5 = v6;
  *(v5 + 8) = v7;
  re::DynamicOverflowArray<re::internal::TextureInMetalBuffers::Buffer,1ul>::DynamicOverflowArray(v5 + 16, (a2 + 16));
  result = re::DynamicArray<BOOL>::DynamicArray(v5 + 136, (a2 + 136));
  v9 = *(a2 + 176);
  *(v5 + 184) = *(a2 + 184);
  *(v5 + 176) = v9;
  LODWORD(v9) = *(a2 + 192);
  *(v5 + 192) = v9;
  if (v9 == 1)
  {
    v10 = *(a2 + 200);
    *(v5 + 216) = *(a2 + 216);
    *(v5 + 200) = v10;
  }

  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::internal::TextureInMetalBuffers>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::internal::TextureInMetalBuffers>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::internal::TextureInMetalBuffers>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

BOOL re::meshHasSkinningData(re *this, const re::GeomMesh *a2)
{
  v3 = re::internal::GeomAttributeManager::attributeByName((this + 64), "skeletonPath");
  v4 = re::internal::GeomAttributeManager::attributeByName((this + 64), "skinnedAnimationGeometryBindTransform");
  v5 = re::internal::GeomAttributeManager::attributeByName((this + 64), "skinnedAnimationWeights");
  v6 = re::internal::GeomAttributeManager::attributeByName((this + 64), "skinnedAnimationJointIndices");
  v7 = re::internal::GeomAttributeManager::attributeByName((this + 64), "skinnedAnimationInfluenceEndIndices");
  if (v3)
  {
    v8 = v4 == 0;
  }

  else
  {
    v8 = 1;
  }

  return !v8 && v5 != 0 && v6 != 0 && v7 != 0;
}

uint64_t re::repairTangentsAndBitangentsAllVertexRateInternal(re *this, re::GeomMesh *a2, re::GeomAttribute *a3, re::GeomAttribute *a4, re::GeomAttribute *a5)
{
  v69 = *MEMORY[0x1E69E9840];
  v8 = re::GeomAttribute::accessValues<int>(a2);
  v10 = v9;
  v11 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a3);
  v13 = v12;
  result = re::GeomAttribute::modifyValues<re::Vector3<float>>(a4);
  v16 = *(this + 4);
  if (v16)
  {
    v17 = 0;
    v18 = 0;
    v19 = v15;
    v20 = 16 * v16;
    do
    {
      if (16 * v13 == v17)
      {
        v55 = 0;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v64 = 0u;
        v46 = MEMORY[0x1E69E9C10];
        v56 = 136315906;
        v57 = "operator[]";
        v58 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v47 = 3;
        }

        else
        {
          v47 = 2;
        }

        v59 = 621;
        v60 = 2048;
        v61 = v13;
        v62 = 2048;
        v63 = v13;
        _os_log_send_and_compose_impl(v47, &v55, &v64, 80, &dword_1E1C61000, v46, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v56, 38, v54);
        _os_crash_msg();
        __break(1u);
LABEL_28:
        v55 = 0;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v64 = 0u;
        v48 = MEMORY[0x1E69E9C10];
        v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v56 = 136315906;
        v57 = "operator[]";
        v58 = 1024;
        if (v49)
        {
          v50 = 3;
        }

        else
        {
          v50 = 2;
        }

        v59 = 621;
        v60 = 2048;
        v61 = v19;
        v62 = 2048;
        v63 = v19;
        _os_log_send_and_compose_impl(v50, &v55, &v64, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v56, 38, v54);
        _os_crash_msg();
        __break(1u);
LABEL_32:
        v55 = 0;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v64 = 0u;
        v51 = MEMORY[0x1E69E9C10];
        v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v56 = 136315906;
        v57 = "operator[]";
        v58 = 1024;
        if (v52)
        {
          v53 = 3;
        }

        else
        {
          v53 = 2;
        }

        v59 = 613;
        v60 = 2048;
        v61 = v18;
        v62 = 2048;
        v63 = v10;
        _os_log_send_and_compose_impl(v53, &v55, &v64, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v56, 38, v54);
        _os_crash_msg();
        __break(1u);
      }

      if (16 * v15 == v17)
      {
        goto LABEL_28;
      }

      v21 = vmulq_f32(*(v11 + v17), *(v11 + v17));
      if (fabsf(v21.f32[2] + vaddv_f32(*v21.f32)) < 1.0e-10 || (v22 = vmulq_f32(*(result + v17), *(result + v17)), fabsf(v22.f32[2] + vaddv_f32(*v22.f32)) < 1.0e-10))
      {
        if (v18 >= v10)
        {
          goto LABEL_32;
        }

        v23 = *(v8 + v17);
        v24 = vext_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL), 4uLL);
        v25 = vmvn_s8(vceq_f32(v24, v24));
        if ((v25.i8[0] & 1) == 0 && (v25.i8[4] & 1) == 0)
        {
          v26 = vmulq_f32(v23, v23);
          v27 = v26.f32[2] + vaddv_f32(*v26.f32);
          if (fabsf(v27) >= 1.0e-10)
          {
            v28 = v27;
            v29 = vrsqrte_f32(LODWORD(v27));
            v30 = vmul_f32(v29, vrsqrts_f32(LODWORD(v28), vmul_f32(v29, v29)));
            v31 = vmulq_n_f32(v23, vmul_f32(v30, vrsqrts_f32(LODWORD(v28), vmul_f32(v30, v30))).f32[0]);
            v32 = (v11 + v17);
            *v32 = 0;
            v32[1] = 0;
            v33 = vabsq_f32(v31);
            if (v33.f32[1] <= v33.f32[2])
            {
              v34 = 1;
            }

            else
            {
              v34 = 2;
            }

            if (v33.f32[0] <= v33.f32[2] && v33.f32[0] <= v33.f32[1])
            {
              v34 = 0;
            }

            *(v32 + v34) = 1065353216;
            v36 = vmulq_f32(v31, v31);
            v37 = v36.f32[2] + vaddv_f32(*v36.f32);
            v38 = *v32;
            v39 = *v32;
            if (v37 > 0.0)
            {
              v40 = vmulq_f32(v38, v31);
              v39 = vmulq_n_f32(v31, (v40.f32[2] + vaddv_f32(*v40.f32)) / v37);
            }

            v41 = vsubq_f32(v38, v39);
            v42 = vmulq_f32(v41, v41);
            *&v43 = v42.f32[2] + vaddv_f32(*v42.f32);
            *v42.f32 = vrsqrte_f32(v43);
            *v42.f32 = vmul_f32(*v42.f32, vrsqrts_f32(v43, vmul_f32(*v42.f32, *v42.f32)));
            v44 = vmulq_n_f32(v41, vmul_f32(*v42.f32, vrsqrts_f32(v43, vmul_f32(*v42.f32, *v42.f32))).f32[0]);
            *(v11 + v17) = v44;
            v45 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL), vnegq_f32(v31)), v44, vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL));
            *(result + v17) = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
          }
        }
      }

      ++v18;
      v17 += 16;
    }

    while (v20 != v17);
  }

  return result;
}

uint64_t re::repairTangentsAndBitangentsSlowInternal(re *this, re::GeomMesh *a2, re::GeomAttribute *a3, re::GeomAttribute *a4, re::GeomAttribute *a5)
{
  v7 = a2;
  v81 = *MEMORY[0x1E69E9840];
  v62 = re::GeomAttribute::accessValues<int>(a2);
  v63 = v9;
  v10 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a3);
  v12 = v11;
  result = re::GeomAttribute::modifyValues<re::Vector3<float>>(a4);
  v15 = result;
  v16 = v14;
  v66[0] = 0;
  if (*(v7 + 16) == 3)
  {
    result = re::internal::accessFaceVaryingAttributeSubmesh(v7, v14);
    v66[1] = result;
  }

  else
  {
    v66[0] = this;
  }

  v65[0] = 0;
  if (*(a3 + 16) == 3)
  {
    result = re::internal::accessFaceVaryingAttributeSubmesh(a3, v14);
    v65[1] = result;
  }

  else
  {
    v65[0] = this;
  }

  v64[0] = 0;
  if (*(a4 + 16) == 3)
  {
    result = re::internal::accessFaceVaryingAttributeSubmesh(a4, v14);
    v64[1] = result;
  }

  else
  {
    v64[0] = this;
  }

  v61 = *(this + 10);
  if (*(this + 10))
  {
    v17 = 0;
    v60 = this;
    do
    {
      v18 = *(this + 5);
      if (v18 <= v17)
      {
        goto LABEL_54;
      }

      v18 = 0;
      if (*(*(this + 7) + 16 * v17 + 12) == -1)
      {
        v19 = 3;
      }

      else
      {
        v19 = 4;
      }

      do
      {
        v20 = re::repairTangentsAndBitangentsSlowInternal(re::GeomMesh &,re::GeomAttribute *,re::GeomAttribute *,re::GeomAttribute *)::FaceVertexAdaptor::vertexIndexOnFace(v65, v17, v18);
        result = re::repairTangentsAndBitangentsSlowInternal(re::GeomMesh &,re::GeomAttribute *,re::GeomAttribute *,re::GeomAttribute *)::FaceVertexAdaptor::vertexIndexOnFace(v64, v17, v18);
        if (v20 != -1 && result != -1)
        {
          if (v20 >= v12)
          {
            v67 = 0;
            v79 = 0u;
            v80 = 0u;
            v78 = 0u;
            v76 = 0u;
            v77 = 0u;
            v47 = MEMORY[0x1E69E9C10];
            v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v68 = 136315906;
            v69 = "operator[]";
            if (v48)
            {
              v49 = 3;
            }

            else
            {
              v49 = 2;
            }

            v70 = 1024;
            v71 = 621;
            v72 = 2048;
            v73 = v20;
            v74 = 2048;
            v75 = v12;
            _os_log_send_and_compose_impl(v49, &v67, &v76, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v68, 38, v59, v60);
            _os_crash_msg();
            __break(1u);
LABEL_46:
            v67 = 0;
            v79 = 0u;
            v80 = 0u;
            v78 = 0u;
            v76 = 0u;
            v77 = 0u;
            v50 = MEMORY[0x1E69E9C10];
            v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v68 = 136315906;
            v69 = "operator[]";
            if (v51)
            {
              v52 = 3;
            }

            else
            {
              v52 = 2;
            }

            v70 = 1024;
            v71 = 621;
            v72 = 2048;
            v73 = v7;
            v74 = 2048;
            v75 = v16;
            _os_log_send_and_compose_impl(v52, &v67, &v76, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v68, 38, v59, v60);
            _os_crash_msg();
            __break(1u);
LABEL_50:
            v67 = 0;
            v79 = 0u;
            v80 = 0u;
            v78 = 0u;
            v76 = 0u;
            v77 = 0u;
            v53 = MEMORY[0x1E69E9C10];
            v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v68 = 136315906;
            v69 = "operator[]";
            if (v54)
            {
              v55 = 3;
            }

            else
            {
              v55 = 2;
            }

            v70 = 1024;
            v71 = 613;
            v72 = 2048;
            v73 = v20;
            v74 = 2048;
            v75 = v63;
            _os_log_send_and_compose_impl(v55, &v67, &v76, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v68, 38, v59, v60);
            _os_crash_msg();
            __break(1u);
LABEL_54:
            v67 = 0;
            v79 = 0u;
            v80 = 0u;
            v78 = 0u;
            v76 = 0u;
            v77 = 0u;
            v56 = MEMORY[0x1E69E9C10];
            v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v68 = 136315906;
            v69 = "operator[]";
            v70 = 1024;
            if (v57)
            {
              v58 = 3;
            }

            else
            {
              v58 = 2;
            }

            v71 = 797;
            v72 = 2048;
            v73 = v17;
            v74 = 2048;
            v75 = v18;
            _os_log_send_and_compose_impl(v58, &v67, &v76, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v68, 38, v59, v60);
            _os_crash_msg();
            __break(1u);
          }

          LODWORD(v7) = result;
          if (result >= v16)
          {
            goto LABEL_46;
          }

          v22 = (v10 + 16 * v20);
          v7 = (v15 + 16 * result);
          v23 = vmulq_f32(*v22, *v22);
          if (fabsf(v23.f32[2] + vaddv_f32(*v23.f32)) < 1.0e-10 || (v24 = vmulq_f32(*v7, *v7), fabsf(v24.f32[2] + vaddv_f32(*v24.f32)) < 1.0e-10))
          {
            result = re::repairTangentsAndBitangentsSlowInternal(re::GeomMesh &,re::GeomAttribute *,re::GeomAttribute *,re::GeomAttribute *)::FaceVertexAdaptor::vertexIndexOnFace(v66, v17, v18);
            if (result != -1)
            {
              v20 = result;
              if (result >= v63)
              {
                goto LABEL_50;
              }

              v25 = *(v62 + 16 * result);
              v26 = vext_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL), 4uLL);
              v27 = vmvn_s8(vceq_f32(v26, v26));
              if ((v27.i8[0] & 1) == 0 && (v27.i8[4] & 1) == 0)
              {
                v28 = vmulq_f32(v25, v25);
                v29 = v28.f32[2] + vaddv_f32(*v28.f32);
                if (fabsf(v29) >= 1.0e-10)
                {
                  v30 = v29;
                  v31 = vrsqrte_f32(LODWORD(v29));
                  v32 = vmul_f32(v31, vrsqrts_f32(LODWORD(v30), vmul_f32(v31, v31)));
                  v33 = vmulq_n_f32(v25, vmul_f32(v32, vrsqrts_f32(LODWORD(v30), vmul_f32(v32, v32))).f32[0]);
                  v22->i64[0] = 0;
                  v22->i64[1] = 0;
                  v34 = vabsq_f32(v33);
                  v35 = 2;
                  if (v34.f32[1] <= v34.f32[2])
                  {
                    v35 = 1;
                  }

                  if (v34.f32[0] <= v34.f32[2] && v34.f32[0] <= v34.f32[1])
                  {
                    v35 = 0;
                  }

                  v22->i32[v35] = 1065353216;
                  v37 = vmulq_f32(v33, v33);
                  v38 = v37.f32[2] + vaddv_f32(*v37.f32);
                  v39 = *v22;
                  v40 = *v22;
                  if (v38 > 0.0)
                  {
                    v41 = vmulq_f32(v39, v33);
                    v40 = vmulq_n_f32(v33, (v41.f32[2] + vaddv_f32(*v41.f32)) / v38);
                  }

                  v42 = vsubq_f32(v39, v40);
                  v43 = vmulq_f32(v42, v42);
                  *&v44 = v43.f32[2] + vaddv_f32(*v43.f32);
                  *v43.f32 = vrsqrte_f32(v44);
                  *v43.f32 = vmul_f32(*v43.f32, vrsqrts_f32(v44, vmul_f32(*v43.f32, *v43.f32)));
                  v45 = vmulq_n_f32(v42, vmul_f32(*v43.f32, vrsqrts_f32(v44, vmul_f32(*v43.f32, *v43.f32))).f32[0]);
                  *v22 = v45;
                  v46 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL), vnegq_f32(v33)), v45, vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL));
                  *v7 = vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL);
                }
              }
            }
          }
        }

        v18 = (v18 + 1);
      }

      while (v18 < v19);
      ++v17;
      this = v60;
    }

    while (v17 != v61);
  }

  return result;
}

uint64_t re::repairTangentsAndBitangentsSlowInternal(re::GeomMesh &,re::GeomAttribute *,re::GeomAttribute *,re::GeomAttribute *)::FaceVertexAdaptor::vertexIndexOnFace(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (*a1)
  {
    v5 = a2;
    v6 = *(v4 + 40);
    if (v6 > a2)
    {
      v32 = *(*(v4 + 56) + 16 * a2);
      v7 = &v32;
      return *(v7 + a3);
    }

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

    v27 = 797;
    v28 = 2048;
    v29 = v5;
    v30 = 2048;
    v31 = v6;
    _os_log_send_and_compose_impl(v16, &v23, &v32, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v21, v22);
    _os_crash_msg();
    __break(1u);
    goto LABEL_24;
  }

  v10 = a1[1];
  LODWORD(v32) = a2;
  v11 = *(v10 + 140);
  if (v11 == 2)
  {
    v13 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v10 + 144), &v32);
    if (v13 == -1)
    {
      return 0xFFFFFFFFLL;
    }

    v12 = (*(v10 + 152) + 8 * v13 + 4);
LABEL_14:
    LODWORD(a2) = *v12;
    if (*v12 == -1)
    {
      return 0xFFFFFFFFLL;
    }

    v10 = a1[1];
LABEL_16:
    v5 = a2;
    v14 = *(v10 + 24);
    if (v14 > a2)
    {
      v7 = (*(v10 + 40) + 16 * a2);
      return *(v7 + a3);
    }

LABEL_24:
    v23 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = v14;
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v27 = 797;
    v28 = 2048;
    v29 = v5;
    v30 = 2048;
    v31 = v18;
    _os_log_send_and_compose_impl(v20, &v23, &v32, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v21, v22);
    _os_crash_msg();
    __break(1u);
  }

  if (v11 == 1)
  {
    if (*(v10 + 160) <= a2)
    {
      return 0xFFFFFFFFLL;
    }

    v12 = (*(v10 + 176) + 4 * a2);
    goto LABEL_14;
  }

  if (*(v10 + 140))
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    result = _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
    return result;
  }

  if (*(v10 + 144) > a2)
  {
    goto LABEL_16;
  }

  return 0xFFFFFFFFLL;
}

uint64_t re::remapSubdivisionSurfaceAttributes(re *a1, const re::GeomMesh *a2, unint64_t a3)
{
  v7 = a2;
  v8 = a1;
  v142 = *MEMORY[0x1E69E9840];
  result = re::meshHasSubdivCreases(a1, a2);
  if (result)
  {
    v127 = 0;
    v124[1] = 0;
    v125 = 0;
    v124[0] = 0;
    v126 = 0;
    re::DynamicArray<unsigned int>::resize(v124, *(v7 + 16), &re::kInvalidMeshIndex);
    v10 = *(v8 + 16);
    if (v10)
    {
      v11 = 0;
      while (1)
      {
        v12 = re::GeomIndexMap::operator[](a3, v11);
        v13 = v12;
        v14 = v125;
        if (v125 <= v12)
        {
          break;
        }

        *(v127 + 4 * v12) = v11;
        v11 = (v11 + 1);
        if (v10 == v11)
        {
          goto LABEL_6;
        }
      }

      v128 = 0;
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v137 = 0u;
      v60 = MEMORY[0x1E69E9C10];
      v61 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v129 = 136315906;
      v130 = "operator[]";
      v131 = 1024;
      if (v61)
      {
        v62 = 3;
      }

      else
      {
        v62 = 2;
      }

      v132 = 789;
      v133 = 2048;
      v134 = v13;
      v135 = 2048;
      v136 = v14;
      _os_log_send_and_compose_impl(v62, &v128, &v137, 80, &dword_1E1C61000, v60, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v129, 38, v119, v121);
      _os_crash_msg();
      __break(1u);
      goto LABEL_63;
    }

LABEL_6:
    v122 = v8;
    v14 = re::internal::GeomAttributeManager::attributeByName((v7 + 64), "osdEdgeCreaseWeights");
    v120 = v7;
    v15 = re::internal::GeomAttributeManager::attributeByName((v7 + 64), "osdEdgeCreaseIndices");
    if (v15)
    {
      v16 = v15;
      v17 = (*(*v14 + 16))(v14);
      v18 = re::GeomAttribute::accessValues<int>(v16);
      v11 = v18;
      a3 = v19;
      v7 = 0;
      if (v17)
      {
        v20 = v125;
        v8 = v19;
        v21 = (v18 + 4);
        v3 = 1;
        v22 = v17;
        while (v3 - 1 < v19)
        {
          v4 = *(v21 - 1);
          if (v125 <= v4)
          {
            goto LABEL_67;
          }

          if (v3 >= v19)
          {
            goto LABEL_71;
          }

          v5 = *v21;
          if (v125 <= v5)
          {
            goto LABEL_75;
          }

          if (*(v127 + 4 * v4) == -1 || *(v127 + 4 * v5) == -1)
          {
            v7 = v7;
          }

          else
          {
            v7 = (v7 + 1);
          }

          v21 += 2;
          v3 += 2;
          if (!--v22)
          {
            goto LABEL_20;
          }
        }

LABEL_63:
        v20 = (a3 + 1);
        v128 = 0;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v137 = 0u;
        v63 = MEMORY[0x1E69E9C10];
        v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v129 = 136315906;
        v130 = "operator[]";
        v131 = 1024;
        if (v64)
        {
          v65 = 3;
        }

        else
        {
          v65 = 2;
        }

        v132 = 613;
        v133 = 2048;
        v134 = v20 & 0xFFFFFFFE;
        v135 = 2048;
        v136 = v8;
        _os_log_send_and_compose_impl(v65, &v128, &v137, 80, &dword_1E1C61000, v63, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v129, 38, v120, v122);
        _os_crash_msg();
        __break(1u);
LABEL_67:
        v128 = 0;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v137 = 0u;
        v66 = MEMORY[0x1E69E9C10];
        v67 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v129 = 136315906;
        v130 = "operator[]";
        v131 = 1024;
        if (v67)
        {
          v68 = 3;
        }

        else
        {
          v68 = 2;
        }

        v132 = 789;
        v133 = 2048;
        v134 = v4;
        v135 = 2048;
        v136 = v20;
        _os_log_send_and_compose_impl(v68, &v128, &v137, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v129, 38, v120, v122);
        _os_crash_msg();
        __break(1u);
LABEL_71:
        v128 = 0;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v137 = 0u;
        v69 = MEMORY[0x1E69E9C10];
        v70 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v129 = 136315906;
        v130 = "operator[]";
        v131 = 1024;
        if (v70)
        {
          v71 = 3;
        }

        else
        {
          v71 = 2;
        }

        v132 = 613;
        v133 = 2048;
        v134 = v3;
        v135 = 2048;
        v136 = v8;
        _os_log_send_and_compose_impl(v71, &v128, &v137, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v129, 38, v120, v122);
        _os_crash_msg();
        __break(1u);
LABEL_75:
        v128 = 0;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v137 = 0u;
        v72 = MEMORY[0x1E69E9C10];
        v73 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v129 = 136315906;
        v130 = "operator[]";
        v131 = 1024;
        if (v73)
        {
          v74 = 3;
        }

        else
        {
          v74 = 2;
        }

        v132 = 789;
        v133 = 2048;
        v134 = v5;
        v135 = 2048;
        v136 = v20;
        _os_log_send_and_compose_impl(v74, &v128, &v137, 80, &dword_1E1C61000, v72, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v129, 38, v120, v122);
        _os_crash_msg();
        __break(1u);
        goto LABEL_79;
      }

LABEL_20:
      v24 = v17;
      v25 = re::internal::GeomAttributeManager::attributeByName((v122 + 64), "osdEdgeCreaseWeights");
      v26 = re::internal::GeomAttributeManager::attributeByName((v122 + 64), "osdEdgeCreaseIndices");
      (*(*v25 + 24))(v25, v7);
      (*(*v26 + 24))(v26, (2 * v7));
      v14 = re::GeomAttribute::accessValues<int>(v14);
      v7 = v27;
      v4 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v25);
      v29 = v28;
      v30 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v26);
      if (v24)
      {
        v32 = v14;
        v33 = v24;
        LODWORD(v14) = v31;
        v34 = v29;
        LODWORD(v35) = 0;
        v36 = 0;
        v5 = 0;
        v8 = v125;
        v37 = v127;
        v38 = v7;
        while (v35 < a3)
        {
          v7 = *(v11 + 4 * v35);
          if (v8 <= v7)
          {
            goto LABEL_91;
          }

          v3 = (v35 + 1);
          if (v3 >= a3)
          {
            goto LABEL_95;
          }

          v3 = *(v11 + 4 * v3);
          if (v8 <= v3)
          {
            goto LABEL_99;
          }

          v39 = *(v37 + 4 * v7);
          v40 = *(v37 + 4 * v3);
          if (v39 != -1 && v40 != -1)
          {
            if (v36 >= v38)
            {
              goto LABEL_123;
            }

            if (v5 >= v34)
            {
              goto LABEL_127;
            }

            *(v4 + 4 * v5) = *(v32 + v36);
            v7 = (2 * v5);
            if (v7 >= v31)
            {
              goto LABEL_131;
            }

            *(v30 + 4 * v7) = v39;
            v7 = v7 | 1;
            if (v7 >= v31)
            {
              goto LABEL_135;
            }

            *(v30 + 4 * v7) = v40;
            v5 = (v5 + 1);
          }

          ++v36;
          LODWORD(v35) = v35 + 2;
          if (v33 == v36)
          {
            goto LABEL_36;
          }
        }

        goto LABEL_87;
      }
    }

LABEL_36:
    v14 = re::internal::GeomAttributeManager::attributeByName((v120 + 64), "osdVertexCreaseWeights");
    v42 = re::internal::GeomAttributeManager::attributeByName((v120 + 64), "osdVertexCreaseIndices");
    if (v42)
    {
      v43 = v42;
      a3 = (*(*v14 + 16))(v14);
      v44 = re::GeomAttribute::accessValues<int>(v43);
      v36 = v44;
      v11 = v45;
      v8 = 0;
      if (a3)
      {
        v7 = v125;
        v3 = v45;
        v46 = a3;
        v47 = v45;
        v48 = v44;
        while (v47)
        {
          v4 = *v48;
          if (v125 <= v4)
          {
            goto LABEL_83;
          }

          if (*(v127 + 4 * v4) == -1)
          {
            v8 = v8;
          }

          else
          {
            v8 = (v8 + 1);
          }

          ++v48;
          --v47;
          if (!--v46)
          {
            goto LABEL_45;
          }
        }

LABEL_79:
        v128 = 0;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v137 = 0u;
        v75 = MEMORY[0x1E69E9C10];
        v76 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v129 = 136315906;
        v130 = "operator[]";
        v131 = 1024;
        if (v76)
        {
          v77 = 3;
        }

        else
        {
          v77 = 2;
        }

        v132 = 613;
        v133 = 2048;
        v134 = v3;
        v135 = 2048;
        v136 = v3;
        _os_log_send_and_compose_impl(v77, &v128, &v137, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v129, 38, v120, v122);
        _os_crash_msg();
        __break(1u);
LABEL_83:
        v128 = 0;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v137 = 0u;
        v35 = MEMORY[0x1E69E9C10];
        v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v129 = 136315906;
        v130 = "operator[]";
        v131 = 1024;
        if (v78)
        {
          v79 = 3;
        }

        else
        {
          v79 = 2;
        }

        v132 = 789;
        v133 = 2048;
        v134 = v4;
        v135 = 2048;
        v136 = v7;
        _os_log_send_and_compose_impl(v79, &v128, &v137, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v129, 38, v120, v122);
        _os_crash_msg();
        __break(1u);
LABEL_87:
        v128 = 0;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v137 = 0u;
        v80 = MEMORY[0x1E69E9C10];
        v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v129 = 136315906;
        v130 = "operator[]";
        if (v81)
        {
          v82 = 3;
        }

        else
        {
          v82 = 2;
        }

        v131 = 1024;
        v132 = 613;
        v133 = 2048;
        v134 = v35;
        v135 = 2048;
        v136 = a3;
        _os_log_send_and_compose_impl(v82, &v128, &v137, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v129, 38, v120, v122);
        _os_crash_msg();
        __break(1u);
LABEL_91:
        v128 = 0;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v137 = 0u;
        v83 = MEMORY[0x1E69E9C10];
        v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v129 = 136315906;
        v130 = "operator[]";
        v131 = 1024;
        if (v84)
        {
          v85 = 3;
        }

        else
        {
          v85 = 2;
        }

        v132 = 789;
        v133 = 2048;
        v134 = v7;
        v135 = 2048;
        v136 = v8;
        _os_log_send_and_compose_impl(v85, &v128, &v137, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v129, 38, v120, v122);
        _os_crash_msg();
        __break(1u);
LABEL_95:
        v128 = 0;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v137 = 0u;
        v86 = MEMORY[0x1E69E9C10];
        v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v129 = 136315906;
        v130 = "operator[]";
        v131 = 1024;
        if (v87)
        {
          v88 = 3;
        }

        else
        {
          v88 = 2;
        }

        v132 = 613;
        v133 = 2048;
        v134 = v3;
        v135 = 2048;
        v136 = a3;
        _os_log_send_and_compose_impl(v88, &v128, &v137, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v129, 38, v120, v122);
        _os_crash_msg();
        __break(1u);
LABEL_99:
        v128 = 0;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v137 = 0u;
        v89 = MEMORY[0x1E69E9C10];
        v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v129 = 136315906;
        v130 = "operator[]";
        v131 = 1024;
        if (v90)
        {
          v91 = 3;
        }

        else
        {
          v91 = 2;
        }

        v132 = 789;
        v133 = 2048;
        v134 = v3;
        v135 = 2048;
        v136 = v8;
        _os_log_send_and_compose_impl(v91, &v128, &v137, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v129, 38, v120, v122);
        _os_crash_msg();
        __break(1u);
LABEL_103:
        v128 = 0;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v137 = 0u;
        v56 = MEMORY[0x1E69E9C10];
        v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v129 = 136315906;
        v130 = "operator[]";
        v131 = 1024;
        if (v92)
        {
          v93 = 3;
        }

        else
        {
          v93 = 2;
        }

        v132 = 613;
        v133 = 2048;
        v134 = v11;
        v135 = 2048;
        v136 = v11;
        _os_log_send_and_compose_impl(v93, &v128, &v137, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v129, 38, v120, v123);
        _os_crash_msg();
        __break(1u);
LABEL_107:
        v128 = 0;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v137 = 0u;
        v94 = MEMORY[0x1E69E9C10];
        v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v129 = 136315906;
        v130 = "operator[]";
        v131 = 1024;
        if (v95)
        {
          v96 = 3;
        }

        else
        {
          v96 = 2;
        }

        v132 = 789;
        v133 = 2048;
        v134 = a3;
        v135 = 2048;
        v136 = v56;
        _os_log_send_and_compose_impl(v96, &v128, &v137, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v129, 38, v120, v123);
        _os_crash_msg();
        __break(1u);
LABEL_111:
        v128 = 0;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v137 = 0u;
        v97 = MEMORY[0x1E69E9C10];
        v98 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v129 = 136315906;
        v130 = "operator[]";
        v131 = 1024;
        if (v98)
        {
          v99 = 3;
        }

        else
        {
          v99 = 2;
        }

        v132 = 613;
        v133 = 2048;
        v134 = v5;
        v135 = 2048;
        v136 = v3;
        _os_log_send_and_compose_impl(v99, &v128, &v137, 80, &dword_1E1C61000, v97, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v129, 38, v120, v123);
        _os_crash_msg();
        __break(1u);
LABEL_115:
        v128 = 0;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v137 = 0u;
        v36 = MEMORY[0x1E69E9C10];
        v100 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v129 = 136315906;
        v130 = "operator[]";
        v131 = 1024;
        if (v100)
        {
          v101 = 3;
        }

        else
        {
          v101 = 2;
        }

        v132 = 621;
        v133 = 2048;
        v134 = v4;
        v135 = 2048;
        v136 = v123;
        _os_log_send_and_compose_impl(v101, &v128, &v137, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v129, 38, v120, v123);
        _os_crash_msg();
        __break(1u);
LABEL_119:
        v128 = 0;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v137 = 0u;
        v102 = MEMORY[0x1E69E9C10];
        v103 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v129 = 136315906;
        v130 = "operator[]";
        v131 = 1024;
        if (v103)
        {
          v104 = 3;
        }

        else
        {
          v104 = 2;
        }

        v132 = 621;
        v133 = 2048;
        v134 = v4;
        v135 = 2048;
        v136 = v14;
        _os_log_send_and_compose_impl(v104, &v128, &v137, 80, &dword_1E1C61000, v102, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v129, 38, v120, v123);
        _os_crash_msg();
        __break(1u);
LABEL_123:
        v128 = 0;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v137 = 0u;
        v105 = MEMORY[0x1E69E9C10];
        v106 = v38;
        v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v129 = 136315906;
        v130 = "operator[]";
        v131 = 1024;
        if (v107)
        {
          v108 = 3;
        }

        else
        {
          v108 = 2;
        }

        v132 = 613;
        v133 = 2048;
        v134 = v36;
        v135 = 2048;
        v136 = v106;
        _os_log_send_and_compose_impl(v108, &v128, &v137, 80, &dword_1E1C61000, v105, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v129, 38, v120, v122);
        _os_crash_msg();
        __break(1u);
LABEL_127:
        v128 = 0;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v137 = 0u;
        v109 = MEMORY[0x1E69E9C10];
        v110 = v34;
        v111 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v129 = 136315906;
        v130 = "operator[]";
        if (v111)
        {
          v112 = 3;
        }

        else
        {
          v112 = 2;
        }

        v131 = 1024;
        v132 = 621;
        v133 = 2048;
        v134 = v5;
        v135 = 2048;
        v136 = v110;
        _os_log_send_and_compose_impl(v112, &v128, &v137, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v129, 38, v120, v122);
        _os_crash_msg();
        __break(1u);
LABEL_131:
        v128 = 0;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v137 = 0u;
        v113 = MEMORY[0x1E69E9C10];
        v114 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v129 = 136315906;
        v130 = "operator[]";
        v131 = 1024;
        if (v114)
        {
          v115 = 3;
        }

        else
        {
          v115 = 2;
        }

        v132 = 621;
        v133 = 2048;
        v134 = v7;
        v135 = 2048;
        v136 = v14;
        _os_log_send_and_compose_impl(v115, &v128, &v137, 80, &dword_1E1C61000, v113, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v129, 38, v120, v122);
        _os_crash_msg();
        __break(1u);
LABEL_135:
        v128 = 0;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v137 = 0u;
        v116 = MEMORY[0x1E69E9C10];
        v117 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v129 = 136315906;
        v130 = "operator[]";
        v131 = 1024;
        if (v117)
        {
          v118 = 3;
        }

        else
        {
          v118 = 2;
        }

        v132 = 621;
        v133 = 2048;
        v134 = v7;
        v135 = 2048;
        v136 = v14;
        _os_log_send_and_compose_impl(v118, &v128, &v137, 80, &dword_1E1C61000, v116, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v129, 38, v120, v122);
        _os_crash_msg();
        __break(1u);
      }

LABEL_45:
      v49 = re::internal::GeomAttributeManager::attributeByName((v122 + 64), "osdVertexCreaseWeights");
      v50 = re::internal::GeomAttributeManager::attributeByName((v122 + 64), "osdVertexCreaseIndices");
      (*(*v49 + 24))(v49, v8);
      (*(*v50 + 24))(v50, v8);
      v51 = re::GeomAttribute::accessValues<int>(v14);
      LODWORD(v3) = v52;
      v7 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v49);
      v123 = v53;
      v54 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v50);
      if (a3)
      {
        LODWORD(v14) = v55;
        v5 = 0;
        v4 = 0;
        v56 = v125;
        v57 = v127;
        v3 = v3;
        v11 = v11;
        v58 = a3;
        while (v11 != v5)
        {
          a3 = *(v36 + 4 * v5);
          if (v56 <= a3)
          {
            goto LABEL_107;
          }

          v59 = *(v57 + 4 * a3);
          if (v59 != -1)
          {
            if (v5 >= v3)
            {
              goto LABEL_111;
            }

            if (v4 >= v123)
            {
              goto LABEL_115;
            }

            *(v7 + 4 * v4) = *(v51 + 4 * v5);
            if (v4 >= v55)
            {
              goto LABEL_119;
            }

            *(v54 + 4 * v4++) = v59;
          }

          if (v58 == ++v5)
          {
            goto LABEL_55;
          }
        }

        goto LABEL_103;
      }
    }

LABEL_55:
    result = v124[0];
    if (v124[0])
    {
      if (v127)
      {
        return (*(*v124[0] + 40))();
      }
    }
  }

  return result;
}

uint64_t re::GeomIndexMap::operator[](uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v3 = *(a1 + 12);
  if (v3 == 2)
  {
    v5 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((a1 + 16), &v6);
    if (v5 != -1)
    {
      return *(*(a1 + 24) + 8 * v5 + 4);
    }

    return 0xFFFFFFFFLL;
  }

  if (v3 == 1)
  {
    if (*(a1 + 32) > a2)
    {
      return *(*(a1 + 48) + 4 * a2);
    }

    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 12))
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    result = _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
  }

  else if (*(a1 + 16) <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a2;
  }

  return result;
}

void *re::remapSkinningAttributes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v87 = *MEMORY[0x1E69E9840];
  v6 = re::internal::GeomAttributeManager::attributeByName((a2 + 64), "skinnedAnimationWeights");
  v7 = re::internal::GeomAttributeManager::attributeByName((v4 + 64), "skinnedAnimationJointIndices");
  result = re::internal::GeomAttributeManager::attributeByName((v4 + 64), "skinnedAnimationInfluenceEndIndices");
  if (v6)
  {
    if (v7)
    {
      v9 = result;
      if (result)
      {
        v69 = re::internal::GeomAttributeManager::attributeByName((a1 + 64), "skinnedAnimationWeights");
        v10 = re::internal::GeomAttributeManager::attributeByName((a1 + 64), "skinnedAnimationJointIndices");
        v11 = re::internal::GeomAttributeManager::attributeByName((a1 + 64), "skinnedAnimationInfluenceEndIndices");
        v67 = re::GeomAttribute::accessValues<int>(v6);
        v71 = v12;
        v66 = re::GeomAttribute::accessValues<int>(v7);
        v72 = v13;
        v14 = re::GeomAttribute::accessValues<int>(v9);
        LODWORD(v6) = v15;
        v16 = *(a1 + 16);
        if (v16)
        {
          v17 = 0;
          v18 = 0;
          do
          {
            v19 = re::GeomIndexMap::operator[](a3, v18);
            LODWORD(v20) = v19;
            if (v19)
            {
              v4 = v19 - 1;
              if (v4 >= v6)
              {
                goto LABEL_64;
              }

              v21 = *(v14 + 4 * v4);
            }

            else
            {
              v21 = 0;
            }

            if (v19 >= v6)
            {
              goto LABEL_60;
            }

            v17 = (*(v14 + 4 * v19) + v17 - v21);
            v18 = (v18 + 1);
          }

          while (v16 != v18);
        }

        else
        {
          v17 = 0;
        }

        (*(*v69 + 24))(v69, v17);
        (*(*v10 + 24))(v10, v17);
        (*(*v11 + 24))(v11, v16);
        v65 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v69);
        v68 = v22;
        v64 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v10);
        v70 = v23;
        result = re::GeomAttribute::modifyValues<re::Vector3<float>>(v11);
        if (!v16)
        {
          return result;
        }

        v25 = result;
        v26 = 0;
        LODWORD(v20) = 0;
        v17 = v24;
        do
        {
          result = re::GeomIndexMap::operator[](a3, v26);
          LODWORD(v18) = result;
          if (result)
          {
            v4 = (result - 1);
            if (v4 >= v6)
            {
              goto LABEL_76;
            }

            v27 = *(v14 + 4 * v4);
          }

          else
          {
            v27 = 0;
          }

          if (result >= v6)
          {
            goto LABEL_68;
          }

          v28 = *(v14 + 4 * result);
          v29 = v28 - v27;
          if (v28 <= v27)
          {
            goto LABEL_41;
          }

          v30 = v17;
          v31 = 0;
          v32 = v20;
          if (v27 <= v72)
          {
            v18 = v72;
          }

          else
          {
            v18 = v27;
          }

          v33 = v65 + 4 * v20;
          if (v20 <= v70)
          {
            v17 = v70;
          }

          else
          {
            v17 = v20;
          }

          v34 = v64 + 4 * v20;
          if (v27 <= v71)
          {
            v4 = v71;
          }

          else
          {
            v4 = v27;
          }

          v35 = v67 + 4 * v27;
          if (v20 <= v68)
          {
            v20 = v68;
          }

          else
          {
            v20 = v20;
          }

          v36 = v66 + 4 * v27;
          result = (v4 - v27);
          v37 = v18 - v27;
          do
          {
            if (v37 == v31)
            {
              v73 = 0;
              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              v82 = 0u;
              v38 = MEMORY[0x1E69E9C10];
              v74 = 136315906;
              v75 = "operator[]";
              v76 = 1024;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v39 = 3;
              }

              else
              {
                v39 = 2;
              }

              v77 = 613;
              v78 = 2048;
              v79 = v18;
              v80 = 2048;
              v81 = v72;
              _os_log_send_and_compose_impl(v39, &v73, &v82, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v74, 38, v62, v64);
              _os_crash_msg();
              __break(1u);
LABEL_48:
              v73 = 0;
              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              v82 = 0u;
              v40 = MEMORY[0x1E69E9C10];
              v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v74 = 136315906;
              v75 = "operator[]";
              v76 = 1024;
              if (v41)
              {
                v42 = 3;
              }

              else
              {
                v42 = 2;
              }

              v77 = 621;
              v78 = 2048;
              v79 = v17;
              v80 = 2048;
              v81 = v70;
              _os_log_send_and_compose_impl(v42, &v73, &v82, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v74, 38, v62, v64);
              _os_crash_msg();
              __break(1u);
LABEL_52:
              v73 = 0;
              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              v82 = 0u;
              v43 = MEMORY[0x1E69E9C10];
              v44 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v74 = 136315906;
              v75 = "operator[]";
              v76 = 1024;
              if (v44)
              {
                v45 = 3;
              }

              else
              {
                v45 = 2;
              }

              v77 = 613;
              v78 = 2048;
              v79 = v4;
              v80 = 2048;
              v81 = v71;
              _os_log_send_and_compose_impl(v45, &v73, &v82, 80, &dword_1E1C61000, v43, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v74, 38, v62, v64);
              _os_crash_msg();
              __break(1u);
LABEL_56:
              v73 = 0;
              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              v82 = 0u;
              v6 = MEMORY[0x1E69E9C10];
              v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v74 = 136315906;
              v75 = "operator[]";
              v76 = 1024;
              if (v46)
              {
                v47 = 3;
              }

              else
              {
                v47 = 2;
              }

              v77 = 621;
              v78 = 2048;
              v79 = v20;
              v80 = 2048;
              v81 = v68;
              _os_log_send_and_compose_impl(v47, &v73, &v82, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v74, 38, v62, v64);
              _os_crash_msg();
              __break(1u);
LABEL_60:
              v73 = 0;
              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              v82 = 0u;
              v48 = MEMORY[0x1E69E9C10];
              v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v74 = 136315906;
              v75 = "operator[]";
              if (v49)
              {
                v50 = 3;
              }

              else
              {
                v50 = 2;
              }

              v76 = 1024;
              v77 = 613;
              v78 = 2048;
              v79 = v20;
              v80 = 2048;
              v81 = v6;
              _os_log_send_and_compose_impl(v50, &v73, &v82, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v74, 38, v62, v63);
              _os_crash_msg();
              __break(1u);
LABEL_64:
              v73 = 0;
              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              v82 = 0u;
              v51 = MEMORY[0x1E69E9C10];
              v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v74 = 136315906;
              v75 = "operator[]";
              v76 = 1024;
              if (v52)
              {
                v53 = 3;
              }

              else
              {
                v53 = 2;
              }

              v77 = 613;
              v78 = 2048;
              v79 = v4;
              v80 = 2048;
              v81 = v6;
              _os_log_send_and_compose_impl(v53, &v73, &v82, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v74, 38, v62, v63);
              _os_crash_msg();
              __break(1u);
LABEL_68:
              v73 = 0;
              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              v82 = 0u;
              v54 = MEMORY[0x1E69E9C10];
              v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v74 = 136315906;
              v75 = "operator[]";
              if (v55)
              {
                v56 = 3;
              }

              else
              {
                v56 = 2;
              }

              v76 = 1024;
              v77 = 613;
              v78 = 2048;
              v79 = v18;
              v80 = 2048;
              v81 = v6;
              _os_log_send_and_compose_impl(v56, &v73, &v82, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v74, 38, v62, v64);
              _os_crash_msg();
              __break(1u);
LABEL_72:
              v73 = 0;
              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              v82 = 0u;
              v6 = MEMORY[0x1E69E9C10];
              v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v74 = 136315906;
              v75 = "operator[]";
              v76 = 1024;
              if (v57)
              {
                v58 = 3;
              }

              else
              {
                v58 = 2;
              }

              v77 = 621;
              v78 = 2048;
              v79 = v17;
              v80 = 2048;
              v81 = v17;
              _os_log_send_and_compose_impl(v58, &v73, &v82, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v74, 38, v62, v64);
              _os_crash_msg();
              __break(1u);
LABEL_76:
              v73 = 0;
              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              v82 = 0u;
              v59 = MEMORY[0x1E69E9C10];
              v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v74 = 136315906;
              v75 = "operator[]";
              v76 = 1024;
              if (v60)
              {
                v61 = 3;
              }

              else
              {
                v61 = 2;
              }

              v77 = 613;
              v78 = 2048;
              v79 = v4;
              v80 = 2048;
              v81 = v6;
              _os_log_send_and_compose_impl(v61, &v73, &v82, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v74, 38, v62, v64);
              _os_crash_msg();
              __break(1u);
            }

            if (!(v31 + v32 - v17))
            {
              goto LABEL_48;
            }

            *(v34 + 4 * v31) = *(v36 + 4 * v31);
            if (result == v31)
            {
              goto LABEL_52;
            }

            if (!(v31 + v32 - v20))
            {
              goto LABEL_56;
            }

            *(v33 + 4 * v31) = *(v35 + 4 * v31);
            v31 = (v31 + 1);
          }

          while (v29 != v31);
          LODWORD(v20) = v32 + v31;
          v17 = v30;
LABEL_41:
          if (v26 == v17)
          {
            goto LABEL_72;
          }

          *(v25 + 4 * v26++) = v20;
        }

        while (v26 != v16);
      }
    }
  }

  return result;
}

void re::makeConditionedMeshForGPU(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v13 = a1;
  v449 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v372, 4510, *(a1 + 16), *(a1 + 40), *(a1 + 8), *(a1 + 40) - *(a1 + 8));
  re::GeomMesh::copy(v13, a3);
  v14 = 0;
  v15 = *(v13 + 16);
  *buf = 0xFFFFFFFF00000000;
  *&buf[8] = -1;
  buf[12] = 0;
  if ((v15 - 1) <= 0xFFFFFFFD)
  {
    *&buf[8] = v15 - 1;
    v14 = v15;
    *&buf[4] = 0;
    *buf = v15;
  }

  LODWORD(v383) = v14;
  re::GeomIndexMap::operator=(a4, buf);
  if (buf[12])
  {
    if (buf[12] == 2)
    {
      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v383);
    }

    else
    {
      if (buf[12] != 1)
      {
        re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
        _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
        __break(1u);
        goto LABEL_609;
      }

      if (v383 && v385)
      {
        (*(*v383 + 40))();
      }
    }
  }

  v17 = 0;
  v18 = *(v13 + 40);
  *buf = 0xFFFFFFFF00000000;
  *&buf[8] = -1;
  buf[12] = 0;
  if ((v18 - 1) <= 0xFFFFFFFD)
  {
    *&buf[8] = v18 - 1;
    v17 = v18;
    *&buf[4] = 0;
    *buf = v18;
  }

  LODWORD(v383) = v17;
  re::GeomIndexMap::operator=(a5, buf);
  if (buf[12])
  {
    if (buf[12] == 2)
    {
      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v383);
      goto LABEL_19;
    }

    if (buf[12] == 1)
    {
      if (v383)
      {
        v19 = v385;
        if (v385)
        {
          (*(*v383 + 40))();
        }
      }

      goto LABEL_19;
    }

LABEL_609:
    re::internal::assertLog(4, v19, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
    goto LABEL_610;
  }

LABEL_19:
  v371 = a2;
  if (*(a2 + 4) == 1)
  {
    v20 = *(a3 + 424);
    if (v20)
    {
      v21 = 0;
      v6 = 1;
      do
      {
        v22 = re::internal::GeomAttributeContainer::attributeByIndex((a3 + 400), v21);
        v25 = *(v22 + 17);
        if (v25 > 0xA)
        {
          goto LABEL_607;
        }

        if (((1 << v25) & 0x60F) != 0)
        {
          re::mergeDiscreteFaceVaryingAttributeValues(a3, *(v22 + 8), v24);
        }

        else
        {
          re::mergeContinuousFaceVaryingAttributeValues(a3, *(v22 + 8), v24, 0.00000999999975);
        }

        ++v21;
      }

      while (v20 != v21);
    }
  }

  v26 = *(v13 + 16);
  v27 = *(v13 + 40);
  HasSkinningData = re::meshHasSkinningData(a3, v19);
  v28 = v371;
  v366 = a5;
  v367 = v13;
  if (*(v371 + 3) == 1 && (v26 / v27) > 1.2)
  {
    v6 = a4;
    *(v446 + 1) = 257;
    LODWORD(v446[3]) = 981668463;
    v446[4] = 0;
    LOBYTE(v446[0]) = 0;
    *&v446[1] = xmmword_1E30FF820;
    v29 = *(a3 + 200);
    *&v430[2] = 0;
    memset(v428, 0, sizeof(v428));
    if (v29)
    {
      re::DynamicArray<float *>::setCapacity(v428, v29);
      v30 = 0;
      v7 = "vertexNormal";
      do
      {
        *buf = re::internal::GeomAttributeContainer::attributeByIndex((a3 + 176), v30);
        v31 = *(*buf + 8);
        if (strcmp("vertexPosition", v31) && strcmp("vertexUV", v31) && strcmp("vertexNormal", v31) && strcmp("vertexTangent", v31) && strcmp("vertexBitangent", v31))
        {
          re::DynamicArray<re::TransitionCondition *>::add(v428, buf);
        }

        ++v30;
      }

      while (v29 != v30);
      v8 = *&v428[16];
      v28 = v371;
    }

    else
    {
      v8 = 0;
    }

    a4 = v6;
    if (HasSkinningData || v8)
    {
      if (HasSkinningData)
      {
        v32 = re::internal::GeomAttributeManager::attributeByName((a3 + 64), "skinnedAnimationWeights");
        re::GeomAttribute::accessValues<int>(v32);
        v33 = re::internal::GeomAttributeManager::attributeByName((a3 + 64), "skinnedAnimationJointIndices");
        re::GeomAttribute::accessValues<int>(v33);
        v34 = re::internal::GeomAttributeManager::attributeByName((a3 + 64), "skinnedAnimationInfluenceEndIndices");
        re::GeomAttribute::accessValues<int>(v34);
      }

      *&v445[24] = 0;
      operator new();
    }

    re::mergeVertices(a3, a3, v6, v446);
    if (*v428 && *&v430[2])
    {
      (*(**v428 + 40))();
    }
  }

  v35 = re::internal::GeomAttributeManager::attributeByName((a3 + 64), "vertexNormal");
  if (!v35 || *(v35 + 17) != 7)
  {
    goto LABEL_57;
  }

  v36 = re::internal::GeomAttributeManager::attributeByName((a3 + 64), "vertexNormal");
  v37 = v36[16];
  if (v37 == 4)
  {
    goto LABEL_54;
  }

  if (v37 == 2)
  {
    if (*(v28 + 7) == 1)
    {
      re::internal::GeomBaseMesh::replaceFaceAttributeWithFaceVaryingAttribute((a3 + 16), "vertexNormal");
    }

    else
    {
      re::internal::GeomAttributeManager::deleteAttribute((a3 + 64), "vertexNormal");
      re::computeSmoothFaceVaryingNormals(a3, v53, 0.7854);
    }
  }

  else if (!v36[16])
  {
LABEL_54:
    v38 = *re::pipelineLogObjects(v36);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_DEFAULT, "Recalculating normals defined at an unsupported rate.", buf, 2u);
    }

    re::internal::GeomAttributeManager::deleteAttribute((a3 + 64), "vertexNormal");
  }

LABEL_57:
  v39 = re::internal::GeomAttributeManager::attributeByName((a3 + 64), "vertexNormal");
  if (!v39 || *(v39 + 17) != 7)
  {
    if (*(v28 + 5) == 1)
    {
      re::computeSmoothFaceVaryingNormals(a3, v40, 0.7854);
    }

    else
    {
      re::computeSmoothVertexNormals(a3, v40);
    }
  }

  v41 = re::internal::GeomAttributeManager::attributeByName((a3 + 64), "vertexTangent");
  if (!v41 || *(v41 + 17) != 7 || (v42 = re::internal::GeomAttributeManager::attributeByName((a3 + 64), "vertexBitangent")) == 0 || *(v42 + 17) != 7)
  {
    if (re::internal::GeomAttributeManager::attributeByName((v13 + 64), "vertexUV"))
    {
      v44 = re::internal::GeomAttributeManager::attributeByName((v13 + 64), "vertexUV");
      if ((v44[16] | 2) == 3)
      {
        buf[4] = 1;
        *buf = 1;
        re::computeTangentsAndBitangents(a3, "vertexUV", "vertexTangent", "vertexBitangent", "vertexNormal", buf);
      }

      else
      {
        v52 = *re::pipelineLogObjects(v44);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v52, OS_LOG_TYPE_DEFAULT, "Cannot generate tangents+bitangents on mesh without vertex or face-varying rate uvs.", buf, 2u);
        }
      }
    }
  }

  if (*(v28 + 2) == 1)
  {
    v45 = re::internal::GeomAttributeManager::attributeByName((a3 + 64), "vertexNormal");
    v46 = re::internal::GeomAttributeManager::attributeByName((a3 + 64), "vertexTangent");
    v47 = re::internal::GeomAttributeManager::attributeByName((a3 + 64), "vertexBitangent");
    if (v45)
    {
      if (v46)
      {
        if (v47)
        {
          if (v45[17] == 7 && v46[17] == 7 && v47[17] == 7)
          {
            v49 = v45[16];
            if ((v49 & 0xFFFFFFFD) == 1)
            {
              v50 = v46[16];
              if ((v50 & 0xFFFFFFFD) == 1)
              {
                v51 = v47[16];
                if ((v51 & 0xFFFFFFFD) == 1)
                {
                  if (v49 == 1 && v50 == 1 && v51 == 1)
                  {
                    re::repairTangentsAndBitangentsAllVertexRateInternal(a3, v45, v46, v47, v48);
                  }

                  else
                  {
                    re::repairTangentsAndBitangentsSlowInternal(a3, v45, v46, v47, v48);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (*(a3 + 8) != *(a3 + 40))
  {
  }

  v54 = re::meshHasSkinningData(a3, v43);
  if (v54 || (*v28 & 1) != 0)
  {
    v57 = 1;
  }

  else
  {
    v57 = *(v28 + 9);
  }

  v368 = v57;
  v370 = a3;
  v359 = a4;
  if (*(v28 + 8) != 1)
  {
    goto LABEL_246;
  }

  v363 = v54;
  *&v436[2] = 0;
  memset(v434, 0, sizeof(v434));
  v380 = 0;
  v377[1] = 0;
  v378 = 0;
  v376 = 0;
  v377[0] = 0;
  v379 = 0;
  v373[1] = 0;
  v374 = 0;
  v373[0] = 0;
  v375 = 0;
  re::GeomConnectivityManifold::GeomConnectivityManifold(buf);
  v412 = 0;
  v411 = 0;
  v414 = 0;
  v413 = 0;
  v427 = 0;
  v415 = 0u;
  v416 = 0u;
  v417 = 0;
  v418 = 0u;
  v419 = 0u;
  v420 = 0;
  v421 = 0u;
  v422 = 0u;
  v423 = 0;
  v424 = 0u;
  v425 = 0u;
  v426 = 0;
  if (!re::GeomConnectivityManifold::buildIfManifold(a3, buf, v58))
  {
    goto LABEL_143;
  }

  v59 = re::GeomMesh::accessVertexPositions(a3);
  v61 = v60;
  v7 = buf;
  re::DynamicArray<re::Vector3<float>>::resize(&v424 + 8, v60);
  if (v61)
  {
    v6 = 0;
    do
    {
      v28 = *(&v425 + 1);
      if (*(&v425 + 1) <= v6)
      {
        goto LABEL_503;
      }

      *&v62 = *v59;
      DWORD2(v62) = *(v59 + 8);
      *(v427 + 16 * v6++) = v62;
      v59 += 16;
    }

    while (v61 != v6);
  }

  v63 = DWORD2(v383);
  re::DynamicArray<float>::resize(&v411, DWORD2(v383));
  if (v63)
  {
    v65 = 0;
    v28 = *(&v383 + 1);
    v66 = *(&v425 + 1);
    v67 = v427;
    v7 = v413;
    v68 = v415;
    v69 = (*(&v384 + 1) + 4);
    v64.i32[0] = 0.5;
    while (v28 != v65)
    {
      v6 = *(v69 - 1);
      if (v66 <= v6)
      {
        goto LABEL_511;
      }

      a5 = *v69;
      if (v66 <= a5)
      {
        goto LABEL_515;
      }

      v13 = v69[1];
      if (v66 <= v13)
      {
        goto LABEL_519;
      }

      if (v7 == v65)
      {
        goto LABEL_523;
      }

      v70 = *(v67 + 16 * v6);
      v71 = vsubq_f32(*(v67 + 16 * a5), v70);
      v72 = vsubq_f32(*(v67 + 16 * v13), v70);
      v73 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v72, v72), v72, 0xCuLL), vnegq_f32(v71)), v72, vextq_s8(vuzp1q_s32(v71, v71), v71, 0xCuLL));
      v74 = vmulq_f32(v73, v73);
      *(v68 + 4 * v65++) = sqrtf(v74.f32[1] + (v74.f32[2] + v74.f32[0])) * 0.5;
      v69 += 4;
      if (v63 == v65)
      {
        goto LABEL_109;
      }
    }

    goto LABEL_507;
  }

LABEL_109:
  v75 = *buf;
  v7 = buf;
  LODWORD(v446[0]) = 0;
  re::DynamicArray<float>::resize(&v415 + 1, *buf, v446, v64);
  *&v430[2] = 0;
  memset(v428, 0, sizeof(v428));
  if (!v75)
  {
    goto LABEL_123;
  }

  for (i = 0; i != v75; ++i)
  {
    re::GeomConnectivityManifold::fetchVertexIncidentFaces(buf, i, v428);
    v78 = *&v430[2];
    if (*&v428[16])
    {
      a5 = v413;
      v79 = v415;
      v80 = 4 * *&v428[16];
      v81 = *&v430[2];
      v28 = *(&v416 + 1);
      v82 = v418;
      while (1)
      {
        v6 = *v81;
        if (a5 <= v6)
        {
          break;
        }

        if (v28 <= i)
        {
          goto LABEL_261;
        }

        *(v82 + 4 * i) = *(v79 + 4 * v6) + *(v82 + 4 * i);
        ++v81;
        v80 -= 4;
        if (!v80)
        {
          goto LABEL_118;
        }
      }

      *v438 = 0;
      v447 = 0u;
      v448 = 0u;
      memset(v446, 0, sizeof(v446));
      i = MEMORY[0x1E69E9C10];
      v131 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v445 = 136315906;
      *&v445[4] = "operator[]";
      *&v445[12] = 1024;
      if (v131)
      {
        v132 = 3;
      }

      else
      {
        v132 = 2;
      }

      *&v445[14] = 789;
      *&v445[18] = 2048;
      *&v445[20] = v6;
      *&v445[28] = 2048;
      *&v445[30] = a5;
      _os_log_send_and_compose_impl(v132, v438, v446, 80, &dword_1E1C61000, i, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v445, 38, v352, v353);
      _os_crash_msg();
      __break(1u);
LABEL_261:
      *v438 = 0;
      v6 = v428;
      v447 = 0u;
      v448 = 0u;
      memset(v446, 0, sizeof(v446));
      v133 = MEMORY[0x1E69E9C10];
      v134 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v445 = 136315906;
      *&v445[4] = "operator[]";
      *&v445[12] = 1024;
      if (v134)
      {
        v135 = 3;
      }

      else
      {
        v135 = 2;
      }

      *&v445[14] = 789;
      *&v445[18] = 2048;
      *&v445[20] = i;
      *&v445[28] = 2048;
      *&v445[30] = v28;
      _os_log_send_and_compose_impl(v135, v438, v446, 80, &dword_1E1C61000, v133, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v445, 38, v352, v353);
      _os_crash_msg();
      __break(1u);
LABEL_265:
      v381 = 0;
      v447 = 0u;
      v448 = 0u;
      memset(v446, 0, sizeof(v446));
      v136 = MEMORY[0x1E69E9C10];
      v137 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v438[0] = 136315906;
      *&v438[1] = "operator[]";
      v439 = 1024;
      if (v137)
      {
        v138 = 3;
      }

      else
      {
        v138 = 2;
      }

      v440 = 789;
      v441 = 2048;
      v442 = a5;
      v443 = 2048;
      v444 = v28;
      _os_log_send_and_compose_impl(v138, &v381, v446, 80, &dword_1E1C61000, v136, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v438, 38, v352, v353);
      _os_crash_msg();
      __break(1u);
LABEL_269:
      v381 = 0;
      v447 = 0u;
      v448 = 0u;
      memset(v446, 0, sizeof(v446));
      v139 = MEMORY[0x1E69E9C10];
      v140 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v438[0] = 136315906;
      *&v438[1] = "operator[]";
      v439 = 1024;
      if (v140)
      {
        v141 = 3;
      }

      else
      {
        v141 = 2;
      }

      v440 = 789;
      v441 = 2048;
      v442 = v13;
      v443 = 2048;
      v444 = v6;
      _os_log_send_and_compose_impl(v141, &v381, v446, 80, &dword_1E1C61000, v139, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v438, 38, v352, v353);
      _os_crash_msg();
      __break(1u);
LABEL_273:
      v381 = 0;
      v447 = 0u;
      v448 = 0u;
      memset(v446, 0, sizeof(v446));
      v142 = MEMORY[0x1E69E9C10];
      v143 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v438[0] = 136315906;
      *&v438[1] = "operator[]";
      v439 = 1024;
      if (v143)
      {
        v144 = 3;
      }

      else
      {
        v144 = 2;
      }

      v440 = 789;
      v441 = 2048;
      v442 = a5;
      v443 = 2048;
      v444 = v28;
      _os_log_send_and_compose_impl(v144, &v381, v446, 80, &dword_1E1C61000, v142, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v438, 38, v352, v353);
      _os_crash_msg();
      __break(1u);
LABEL_277:
      v381 = 0;
      v447 = 0u;
      v448 = 0u;
      memset(v446, 0, sizeof(v446));
      v145 = MEMORY[0x1E69E9C10];
      v146 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v438[0] = 136315906;
      *&v438[1] = "operator[]";
      v439 = 1024;
      if (v146)
      {
        v147 = 3;
      }

      else
      {
        v147 = 2;
      }

      v440 = 797;
      v441 = 2048;
      v442 = v6;
      v443 = 2048;
      v444 = v8;
      _os_log_send_and_compose_impl(v147, &v381, v446, 80, &dword_1E1C61000, v145, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v438, 38, v352, v353);
      _os_crash_msg();
      __break(1u);
LABEL_281:
      v381 = 0;
      v447 = 0u;
      v448 = 0u;
      memset(v446, 0, sizeof(v446));
      v148 = MEMORY[0x1E69E9C10];
      v149 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v438[0] = 136315906;
      *&v438[1] = "operator[]";
      v439 = 1024;
      if (v149)
      {
        v150 = 3;
      }

      else
      {
        v150 = 2;
      }

      v440 = 789;
      v441 = 2048;
      v442 = a5 + 1;
      v443 = 2048;
      v444 = v8;
      _os_log_send_and_compose_impl(v150, &v381, v446, 80, &dword_1E1C61000, v148, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v438, 38, v352, v353);
      _os_crash_msg();
      __break(1u);
LABEL_285:
      *v438 = 0;
      v447 = 0u;
      v448 = 0u;
      memset(v446, 0, sizeof(v446));
      v151 = MEMORY[0x1E69E9C10];
      v152 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v445 = 136315906;
      *&v445[4] = "operator[]";
      *&v445[12] = 1024;
      if (v152)
      {
        v153 = 3;
      }

      else
      {
        v153 = 2;
      }

      *&v445[14] = 789;
      *&v445[18] = 2048;
      *&v445[20] = v28;
      *&v445[28] = 2048;
      *&v445[30] = v6;
      _os_log_send_and_compose_impl(v153, v438, v446, 80, &dword_1E1C61000, v151, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v445, 38, v352, v353);
      _os_crash_msg();
      __break(1u);
LABEL_289:
      *v438 = 0;
      v86 = v428;
      v447 = 0u;
      v448 = 0u;
      memset(v446, 0, sizeof(v446));
      v154 = MEMORY[0x1E69E9C10];
      v155 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v445 = 136315906;
      *&v445[4] = "operator[]";
      *&v445[12] = 1024;
      if (v155)
      {
        v156 = 3;
      }

      else
      {
        v156 = 2;
      }

      *&v445[14] = 789;
      *&v445[18] = 2048;
      *&v445[20] = v28;
      *&v445[28] = 2048;
      *&v445[30] = v6;
      _os_log_send_and_compose_impl(v156, v438, v446, 80, &dword_1E1C61000, v154, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v445, 38, v352, v353);
      _os_crash_msg();
      __break(1u);
LABEL_293:
      v381 = 0;
      v28 = v428;
      v447 = 0u;
      v448 = 0u;
      memset(v446, 0, sizeof(v446));
      v157 = MEMORY[0x1E69E9C10];
      v158 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v428 = 136315906;
      *&v428[4] = "operator[]";
      *&v428[12] = 1024;
      if (v158)
      {
        v159 = 3;
      }

      else
      {
        v159 = 2;
      }

      *&v428[14] = 789;
      *&v428[18] = 2048;
      *&v428[20] = v6;
      v429 = 2048;
      *v430 = v86;
      _os_log_send_and_compose_impl(v159, &v381, v446, 80, &dword_1E1C61000, v157, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v352, v353);
      _os_crash_msg();
      __break(1u);
LABEL_297:
      v381 = 0;
      v447 = 0u;
      v448 = 0u;
      memset(v446, 0, sizeof(v446));
      v160 = MEMORY[0x1E69E9C10];
      v161 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v428 = 136315906;
      *&v428[4] = "operator[]";
      *&v428[12] = 1024;
      if (v161)
      {
        v162 = 3;
      }

      else
      {
        v162 = 2;
      }

      *&v428[14] = 789;
      *&v428[18] = 2048;
      *&v428[20] = v28;
      v429 = 2048;
      *v430 = v86;
      _os_log_send_and_compose_impl(v162, &v381, v446, 80, &dword_1E1C61000, v160, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v352, v353);
      _os_crash_msg();
      __break(1u);
LABEL_301:
      v381 = 0;
      v6 = v428;
      v447 = 0u;
      v448 = 0u;
      memset(v446, 0, sizeof(v446));
      v163 = MEMORY[0x1E69E9C10];
      v164 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v428 = 136315906;
      *&v428[4] = "operator[]";
      *&v428[12] = 1024;
      if (v164)
      {
        v165 = 3;
      }

      else
      {
        v165 = 2;
      }

      *&v428[14] = 789;
      *&v428[18] = 2048;
      *&v428[20] = v8;
      v429 = 2048;
      *v430 = v86;
      _os_log_send_and_compose_impl(v165, &v381, v446, 80, &dword_1E1C61000, v163, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v352, v353);
      _os_crash_msg();
      __break(1u);
LABEL_305:
      v381 = 0;
      v447 = 0u;
      v448 = 0u;
      memset(v446, 0, sizeof(v446));
      v166 = MEMORY[0x1E69E9C10];
      v167 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v428 = 136315906;
      *&v428[4] = "operator[]";
      *&v428[12] = 1024;
      if (v167)
      {
        v168 = 3;
      }

      else
      {
        v168 = 2;
      }

      *&v428[14] = 789;
      *&v428[18] = 2048;
      *&v428[20] = v6;
      v429 = 2048;
      *v430 = a3;
      _os_log_send_and_compose_impl(v168, &v381, v446, 80, &dword_1E1C61000, v166, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v352, v353);
      _os_crash_msg();
      __break(1u);
LABEL_309:
      v381 = 0;
      v447 = 0u;
      v448 = 0u;
      memset(v446, 0, sizeof(v446));
      v169 = MEMORY[0x1E69E9C10];
      v170 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v428 = 136315906;
      *&v428[4] = "operator[]";
      *&v428[12] = 1024;
      if (v170)
      {
        v171 = 3;
      }

      else
      {
        v171 = 2;
      }

      *&v428[14] = 789;
      *&v428[18] = 2048;
      *&v428[20] = v28;
      v429 = 2048;
      *v430 = v7;
      _os_log_send_and_compose_impl(v171, &v381, v446, 80, &dword_1E1C61000, v169, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v352, v353);
      _os_crash_msg();
      __break(1u);
LABEL_313:
      v381 = 0;
      v447 = 0u;
      v448 = 0u;
      memset(v446, 0, sizeof(v446));
      v128 = MEMORY[0x1E69E9C10];
      v172 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v428 = 136315906;
      *&v428[4] = "operator[]";
      *&v428[12] = 1024;
      if (v172)
      {
        v173 = 3;
      }

      else
      {
        v173 = 2;
      }

      *&v428[14] = 789;
      *&v428[18] = 2048;
      *&v428[20] = v8;
      v429 = 2048;
      *v430 = v7;
      _os_log_send_and_compose_impl(v173, &v381, v446, 80, &dword_1E1C61000, v128, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v352, v353);
      _os_crash_msg();
      __break(1u);
LABEL_317:
      v130.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v446[2]);
      goto LABEL_318;
    }

    v28 = *(&v416 + 1);
LABEL_118:
    if (v28 <= i)
    {
      goto LABEL_547;
    }

    *&v76 = *(v418 + 4 * i) / 3.0;
    *(v418 + 4 * i) = LODWORD(v76);
  }

  if (*v428 && v78)
  {
    v76 = (*(**v428 + 40))();
  }

LABEL_123:
  *(&v419 + 1) = 0;
  ++v420;
  LODWORD(v446[0]) = 0;
  re::DynamicArray<float>::resize(&v418 + 1, v405, v446, *&v76);
  *(&v422 + 1) = 0;
  ++v423;
  LODWORD(v446[0]) = 0;
  re::DynamicArray<float>::resize(&v421 + 1, *buf, v446, v83);
  v28 = *(&v383 + 1);
  if (DWORD2(v383))
  {
    v84 = 0;
    a5 = v438;
    v13 = v445;
    a4 = 2;
    while (v28 > v84)
    {
      *v445 = *(*(&v384 + 1) + 16 * v84);
      re::GeomConnectivityManifold::faceIncidentEdges(buf, v84, v438);
      v85 = 0;
      v86 = *(&v425 + 1);
      v87 = v427;
      a3 = *(&v419 + 1);
      v88 = v421;
      v7 = *(&v422 + 1);
      v89 = v424;
      do
      {
        v6 = *&v445[4 * v85];
        if (v86 <= v6)
        {
          goto LABEL_293;
        }

        v90 = v85 + 1;
        if (v85 == 2)
        {
          v91 = 0;
        }

        else
        {
          v91 = v85 + 1;
        }

        v28 = *&v445[4 * v91];
        if (v86 <= v28)
        {
          goto LABEL_297;
        }

        if (v85)
        {
          v92 = (v85 - 1);
        }

        else
        {
          v92 = 2;
        }

        v8 = *&v445[4 * v92];
        if (v86 <= v8)
        {
          goto LABEL_301;
        }

        v93 = *(v87 + 16 * v6);
        v94 = vsubq_f32(*(v87 + 16 * v28), v93);
        v95 = vsubq_f32(*(v87 + 16 * v8), v93);
        v96 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v95, v95), v95, 0xCuLL), vnegq_f32(v94)), v95, vextq_s8(vuzp1q_s32(v94, v94), v94, 0xCuLL));
        v97 = vmulq_f32(v96, v96);
        v98 = sqrtf(v97.f32[1] + (v97.f32[2] + v97.f32[0]));
        v99 = 0.0;
        if (v98 > 0.0)
        {
          v100 = vmulq_f32(v94, v95);
          v99 = (v100.f32[2] + vaddv_f32(*v100.f32)) / v98;
        }

        v6 = v438[v91];
        if (a3 <= v6)
        {
          goto LABEL_305;
        }

        *(v88 + 4 * v6) = *(v88 + 4 * v6) - v99;
        if (v7 <= v28)
        {
          goto LABEL_309;
        }

        *(v89 + 4 * v28) = v99 + *(v89 + 4 * v28);
        if (v7 <= v8)
        {
          goto LABEL_313;
        }

        *(v89 + 4 * v8) = v99 + *(v89 + 4 * v8);
        v85 = v90;
      }

      while (v90 != 3);
      ++v84;
      v28 = *(&v383 + 1);
      a3 = v370;
      if (v84 >= DWORD2(v383))
      {
        goto LABEL_143;
      }
    }

LABEL_603:
    *v445 = 0;
    v447 = 0u;
    v448 = 0u;
    memset(v446, 0, sizeof(v446));
    v349 = MEMORY[0x1E69E9C10];
    v350 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v428 = 136315906;
    *&v428[4] = "operator[]";
    *&v428[12] = 1024;
    if (v350)
    {
      v351 = 3;
    }

    else
    {
      v351 = 2;
    }

    *&v428[14] = 797;
    *&v428[18] = 2048;
    *&v428[20] = v84;
    v429 = 2048;
    *v430 = v28;
    _os_log_send_and_compose_impl(v351, v445, v446, 80, &dword_1E1C61000, v349, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v352, v353);
    _os_crash_msg();
    __break(1u);
LABEL_607:
    re::internal::assertLog(4, v23, "assertion failure: '%s' (%s:line %i) Unsupported attribute type.", "!Unreachable code", "makeConditionedMeshForGPU", 717);
    _os_crash("assertion failure: (!Unreachable code) Unsupported attribute type.");
    __break(1u);
  }

LABEL_143:
  a3 = *(a3 + 16);
  LODWORD(v446[0]) = 0;
  re::DynamicArray<unsigned int>::resize(v377, a3, v446);
  if (a3)
  {
    a4 = 0;
    v7 = v437;
    while (1)
    {
      *&v445[32] = 0;
      memset(v445, 0, 28);
      re::GeomConnectivityManifold::fetchVertexIncidentEdges(buf, a4, v445);
      v6 = *&v445[16];
      memset(v428, 0, sizeof(v428));
      v433 = 0;
      *&v430[2] = 0u;
      v431 = 0u;
      v432 = 0;
      re::DynamicArray<float>::resize(v428, (*&v445[16] + 1));
      re::DynamicArray<float>::resize(&v430[10], (v6 + 1));
      if (!*&v428[16])
      {
        goto LABEL_559;
      }

      **&v430[2] = a4;
      v28 = *(&v422 + 1);
      if (*(&v422 + 1) <= a4)
      {
        goto LABEL_563;
      }

      if (!*(&v431 + 1))
      {
        goto LABEL_567;
      }

      *v433 = *(v424 + 4 * a4) * 0.5;
      v101 = v6;
      if (v6)
      {
        break;
      }

LABEL_156:
      if (*v445 && *&v445[32])
      {
        (*(**v445 + 40))();
      }

      if (*(&v431 + 1))
      {
        v28 = 0;
        v102 = 1;
        do
        {
          v6 = *&v428[16];
          if (*&v428[16] <= v28)
          {
            goto LABEL_285;
          }

          re::DynamicArray<int>::add(v434, (*&v430[2] + 4 * v28));
          v6 = *(&v431 + 1);
          if (*(&v431 + 1) <= v28)
          {
            goto LABEL_289;
          }

          re::DynamicArray<float>::add(v373, &v433[v28]);
          v28 = v102;
        }

        while (*(&v431 + 1) > v102++);
      }

      v28 = v378;
      if (a4)
      {
        v6 = a4 - 1;
        if (v378 <= a4 - 1)
        {
          goto LABEL_595;
        }

        v104 = v380[v6] + *&v428[16];
      }

      else
      {
        v104 = *&v428[16];
      }

      if (v378 <= a4)
      {
        goto LABEL_571;
      }

      v380[a4] = v104;
      if (*&v430[10])
      {
        if (v433)
        {
          (*(**&v430[10] + 40))();
        }

        v433 = 0;
        v431 = 0uLL;
        *&v430[10] = 0;
        ++v432;
      }

      if (*v428 && *&v430[2])
      {
        (*(**v428 + 40))();
      }

      if (++a4 == a3)
      {
        goto LABEL_177;
      }
    }

    a5 = 0;
    v28 = *&v445[16];
    while (v28 > a5)
    {
      re::GeomConnectivityManifold::edgeVertices(buf, *(*&v445[32] + 4 * a5), v437);
      v13 = a5 + 1;
      v6 = *&v428[16];
      if (*&v428[16] <= a5 + 1)
      {
        goto LABEL_269;
      }

      *(*&v430[2] + 4 * a5 + 4) = v437[a4 == v437[0]];
      v28 = *&v445[16];
      if (*&v445[16] <= a5)
      {
        goto LABEL_273;
      }

      v6 = *(*&v445[32] + 4 * a5);
      v8 = *(&v419 + 1);
      if (*(&v419 + 1) <= v6)
      {
        goto LABEL_277;
      }

      v8 = *(&v431 + 1);
      if (*(&v431 + 1) <= v13)
      {
        goto LABEL_281;
      }

      v433[++a5] = *(v421 + 4 * v6) * 0.5;
      if (v101 == v13)
      {
        goto LABEL_156;
      }
    }

    goto LABEL_265;
  }

LABEL_177:
  a3 = v370;
  v105 = re::GeomMesh::addAttribute(v370, "cotangentLaplacianIndices", 4, 3);
  (*(*v105 + 24))(v105, *&v434[16]);
  v106 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v105);
  v108 = *&v434[16];
  if (*&v434[16])
  {
    v109 = *&v436[2];
    v110 = v107;
    v111 = v107;
    while (v111)
    {
      v112 = *v109++;
      *v106++ = v112;
      --v111;
      if (!--v108)
      {
        goto LABEL_181;
      }
    }

LABEL_531:
    *v445 = 0;
    v447 = 0u;
    v448 = 0u;
    memset(v446, 0, sizeof(v446));
    v298 = MEMORY[0x1E69E9C10];
    v299 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v428 = 136315906;
    *&v428[4] = "operator[]";
    *&v428[12] = 1024;
    if (v299)
    {
      v300 = 3;
    }

    else
    {
      v300 = 2;
    }

    *&v428[14] = 621;
    *&v428[18] = 2048;
    *&v428[20] = v110;
    v429 = 2048;
    *v430 = v110;
    _os_log_send_and_compose_impl(v300, v445, v446, 80, &dword_1E1C61000, v298, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v352, v353);
    _os_crash_msg();
    __break(1u);
LABEL_535:
    *v445 = 0;
    v447 = 0u;
    v448 = 0u;
    memset(v446, 0, sizeof(v446));
    v301 = MEMORY[0x1E69E9C10];
    v302 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v428 = 136315906;
    *&v428[4] = "operator[]";
    *&v428[12] = 1024;
    if (v302)
    {
      v303 = 3;
    }

    else
    {
      v303 = 2;
    }

    *&v428[14] = 621;
    *&v428[18] = 2048;
    *&v428[20] = v110;
    v429 = 2048;
    *v430 = v110;
    _os_log_send_and_compose_impl(v303, v445, v446, 80, &dword_1E1C61000, v301, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v352, v353);
    _os_crash_msg();
    __break(1u);
LABEL_539:
    *v445 = 0;
    v447 = 0u;
    v448 = 0u;
    memset(v446, 0, sizeof(v446));
    i = MEMORY[0x1E69E9C10];
    v304 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v428 = 136315906;
    *&v428[4] = "operator[]";
    *&v428[12] = 1024;
    if (v304)
    {
      v305 = 3;
    }

    else
    {
      v305 = 2;
    }

    *&v428[14] = 621;
    *&v428[18] = 2048;
    *&v428[20] = v110;
    v429 = 2048;
    *v430 = v110;
    _os_log_send_and_compose_impl(v305, v445, v446, 80, &dword_1E1C61000, i, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v352, v353);
    _os_crash_msg();
    __break(1u);
LABEL_543:
    v377[0] = 0;
    v447 = 0u;
    v448 = 0u;
    memset(v446, 0, sizeof(v446));
    v306 = MEMORY[0x1E69E9C10];
    v307 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v434 = 136315906;
    *&v434[4] = "operator[]";
    if (v307)
    {
      v308 = 3;
    }

    else
    {
      v308 = 2;
    }

    *&v434[12] = 1024;
    *&v434[14] = 613;
    *&v434[18] = 2048;
    *&v434[20] = i;
    v435 = 2048;
    *v436 = v13;
    _os_log_send_and_compose_impl(v308, v377, v446, 80, &dword_1E1C61000, v306, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v434, 38, v352, v353);
    _os_crash_msg();
    __break(1u);
LABEL_547:
    *v438 = 0;
    v447 = 0u;
    v448 = 0u;
    memset(v446, 0, sizeof(v446));
    v309 = MEMORY[0x1E69E9C10];
    v310 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v445 = 136315906;
    *&v445[4] = "operator[]";
    *&v445[12] = 1024;
    if (v310)
    {
      v311 = 3;
    }

    else
    {
      v311 = 2;
    }

    *&v445[14] = 789;
    *&v445[18] = 2048;
    *&v445[20] = i;
    *&v445[28] = 2048;
    *&v445[30] = v28;
    _os_log_send_and_compose_impl(v311, v438, v446, 80, &dword_1E1C61000, v309, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v445, 38, v352, v353);
    _os_crash_msg();
    __break(1u);
LABEL_551:
    v377[0] = 0;
    v447 = 0u;
    v448 = 0u;
    memset(v446, 0, sizeof(v446));
    v312 = MEMORY[0x1E69E9C10];
    v313 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v434 = 136315906;
    *&v434[4] = "operator[]";
    if (v313)
    {
      v314 = 3;
    }

    else
    {
      v314 = 2;
    }

    *&v434[12] = 1024;
    *&v434[14] = 613;
    *&v434[18] = 2048;
    *&v434[20] = v7;
    v435 = 2048;
    *v436 = v8;
    _os_log_send_and_compose_impl(v314, v377, v446, 80, &dword_1E1C61000, v312, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v434, 38, v352, v353);
    _os_crash_msg();
    __break(1u);
LABEL_555:
    v377[0] = 0;
    v447 = 0u;
    v448 = 0u;
    memset(v446, 0, sizeof(v446));
    v315 = MEMORY[0x1E69E9C10];
    v316 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v434 = 136315906;
    *&v434[4] = "operator[]";
    *&v434[12] = 1024;
    if (v316)
    {
      v317 = 3;
    }

    else
    {
      v317 = 2;
    }

    *&v434[14] = 621;
    *&v434[18] = 2048;
    *&v434[20] = a5;
    v435 = 2048;
    *v436 = a5;
    _os_log_send_and_compose_impl(v317, v377, v446, 80, &dword_1E1C61000, v315, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v434, 38, v352, v353);
    _os_crash_msg();
    __break(1u);
LABEL_559:
    v381 = 0;
    v447 = 0u;
    v448 = 0u;
    memset(v446, 0, sizeof(v446));
    v318 = MEMORY[0x1E69E9C10];
    v319 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v438[0] = 136315906;
    *&v438[1] = "operator[]";
    v439 = 1024;
    if (v319)
    {
      v320 = 3;
    }

    else
    {
      v320 = 2;
    }

    v440 = 789;
    v441 = 2048;
    v442 = 0;
    v443 = 2048;
    v444 = 0;
    _os_log_send_and_compose_impl(v320, &v381, v446, 80, &dword_1E1C61000, v318, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v438, 38, v352, v353);
    _os_crash_msg();
    __break(1u);
LABEL_563:
    v381 = 0;
    v447 = 0u;
    v448 = 0u;
    memset(v446, 0, sizeof(v446));
    v321 = MEMORY[0x1E69E9C10];
    v322 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v438[0] = 136315906;
    *&v438[1] = "operator[]";
    v439 = 1024;
    if (v322)
    {
      v323 = 3;
    }

    else
    {
      v323 = 2;
    }

    v440 = 797;
    v441 = 2048;
    v442 = a4;
    v443 = 2048;
    v444 = v28;
    _os_log_send_and_compose_impl(v323, &v381, v446, 80, &dword_1E1C61000, v321, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v438, 38, v352, v353);
    _os_crash_msg();
    __break(1u);
LABEL_567:
    v381 = 0;
    v447 = 0u;
    v448 = 0u;
    memset(v446, 0, sizeof(v446));
    v324 = MEMORY[0x1E69E9C10];
    v325 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v438[0] = 136315906;
    *&v438[1] = "operator[]";
    v439 = 1024;
    if (v325)
    {
      v326 = 3;
    }

    else
    {
      v326 = 2;
    }

    v440 = 789;
    v441 = 2048;
    v442 = 0;
    v443 = 2048;
    v444 = 0;
    _os_log_send_and_compose_impl(v326, &v381, v446, 80, &dword_1E1C61000, v324, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v438, 38, v352, v353);
    _os_crash_msg();
    __break(1u);
LABEL_571:
    *v438 = 0;
    v447 = 0u;
    v448 = 0u;
    memset(v446, 0, sizeof(v446));
    v327 = MEMORY[0x1E69E9C10];
    v328 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v445 = 136315906;
    *&v445[4] = "operator[]";
    *&v445[12] = 1024;
    if (v328)
    {
      v329 = 3;
    }

    else
    {
      v329 = 2;
    }

    *&v445[14] = 789;
    *&v445[18] = 2048;
    *&v445[20] = a4;
    *&v445[28] = 2048;
    *&v445[30] = v28;
    _os_log_send_and_compose_impl(v329, v438, v446, 80, &dword_1E1C61000, v327, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v445, 38, v352, v353);
    _os_crash_msg();
    __break(1u);
LABEL_575:
    v377[0] = 0;
    v447 = 0u;
    v448 = 0u;
    memset(v446, 0, sizeof(v446));
    v231 = MEMORY[0x1E69E9C10];
    v330 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v434 = 136315906;
    *&v434[4] = "operator[]";
    if (v330)
    {
      v331 = 3;
    }

    else
    {
      v331 = 2;
    }

    *&v434[12] = 1024;
    *&v434[14] = 613;
    *&v434[18] = 2048;
    *&v434[20] = a5;
    v435 = 2048;
    *v436 = a4;
    _os_log_send_and_compose_impl(v331, v377, v446, 80, &dword_1E1C61000, v231, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v434, 38, v352, v353);
    _os_crash_msg();
    __break(1u);
LABEL_579:
    v377[0] = 0;
    v6 = v428;
    v447 = 0u;
    v448 = 0u;
    memset(v446, 0, sizeof(v446));
    v332 = MEMORY[0x1E69E9C10];
    v333 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v434 = 136315906;
    *&v434[4] = "operator[]";
    *&v434[12] = 1024;
    if (v333)
    {
      v334 = 3;
    }

    else
    {
      v334 = 2;
    }

    *&v434[14] = 621;
    *&v434[18] = 2048;
    *&v434[20] = v231;
    v435 = 2048;
    *v436 = v231;
    _os_log_send_and_compose_impl(v334, v377, v446, 80, &dword_1E1C61000, v332, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v434, 38, v352, v353);
    _os_crash_msg();
    __break(1u);
LABEL_583:
    v377[0] = 0;
    v447 = 0u;
    v448 = 0u;
    memset(v446, 0, sizeof(v446));
    v335 = MEMORY[0x1E69E9C10];
    v336 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v434 = 136315906;
    *&v434[4] = "operator[]";
    *&v434[12] = 1024;
    if (v336)
    {
      v337 = 3;
    }

    else
    {
      v337 = 2;
    }

    *&v434[14] = 789;
    *&v434[18] = 2048;
    *&v434[20] = v6;
    v435 = 2048;
    *v436 = v28;
    _os_log_send_and_compose_impl(v337, v377, v446, 80, &dword_1E1C61000, v335, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v434, 38, v352, v353);
    _os_crash_msg();
    __break(1u);
LABEL_587:
    v377[0] = 0;
    v447 = 0u;
    v448 = 0u;
    memset(v446, 0, sizeof(v446));
    v338 = MEMORY[0x1E69E9C10];
    v339 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v434 = 136315906;
    *&v434[4] = "operator[]";
    *&v434[12] = 1024;
    if (v339)
    {
      v340 = 3;
    }

    else
    {
      v340 = 2;
    }

    *&v434[14] = 621;
    *&v434[18] = 2048;
    *&v434[20] = v28;
    v435 = 2048;
    *v436 = v28;
    _os_log_send_and_compose_impl(v340, v377, v446, 80, &dword_1E1C61000, v338, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v434, 38, v352, v353);
    _os_crash_msg();
    __break(1u);
LABEL_591:
    v377[0] = 0;
    v447 = 0u;
    v448 = 0u;
    memset(v446, 0, sizeof(v446));
    v341 = MEMORY[0x1E69E9C10];
    v342 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v434 = 136315906;
    *&v434[4] = "operator[]";
    *&v434[12] = 1024;
    if (v342)
    {
      v343 = 3;
    }

    else
    {
      v343 = 2;
    }

    *&v434[14] = 789;
    *&v434[18] = 2048;
    *&v434[20] = v6;
    v435 = 2048;
    *v436 = a5;
    _os_log_send_and_compose_impl(v343, v377, v446, 80, &dword_1E1C61000, v341, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v434, 38, v352, v353);
    _os_crash_msg();
    __break(1u);
LABEL_595:
    *v438 = 0;
    v447 = 0u;
    v448 = 0u;
    memset(v446, 0, sizeof(v446));
    v344 = MEMORY[0x1E69E9C10];
    v345 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v445 = 136315906;
    *&v445[4] = "operator[]";
    *&v445[12] = 1024;
    if (v345)
    {
      v346 = 3;
    }

    else
    {
      v346 = 2;
    }

    *&v445[14] = 789;
    *&v445[18] = 2048;
    *&v445[20] = v6;
    *&v445[28] = 2048;
    *&v445[30] = v28;
    _os_log_send_and_compose_impl(v346, v438, v446, 80, &dword_1E1C61000, v344, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v445, 38, v352, v353);
    _os_crash_msg();
    __break(1u);
LABEL_599:
    v377[0] = 0;
    v447 = 0u;
    v448 = 0u;
    memset(v446, 0, sizeof(v446));
    v84 = MEMORY[0x1E69E9C10];
    v347 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v434 = 136315906;
    *&v434[4] = "operator[]";
    *&v434[12] = 1024;
    if (v347)
    {
      v348 = 3;
    }

    else
    {
      v348 = 2;
    }

    *&v434[14] = 613;
    *&v434[18] = 2048;
    *&v434[20] = v6;
    v435 = 2048;
    *v436 = a4;
    _os_log_send_and_compose_impl(v348, v377, v446, 80, &dword_1E1C61000, v84, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v434, 38, v352, v353);
    _os_crash_msg();
    __break(1u);
    goto LABEL_603;
  }

LABEL_181:
  v113 = re::GeomMesh::addAttribute(v370, "cotangentLaplacianEndIndices", 4, 3);
  (*(*v113 + 24))(v113, v378);
  v114 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v113);
  v116 = v378;
  a4 = v359;
  a5 = v366;
  v13 = v367;
  v28 = v371;
  if (v378)
  {
    v117 = v380;
    v110 = v115;
    v118 = v115;
    while (v118)
    {
      v119 = *v117++;
      *v114++ = v119;
      --v118;
      if (!--v116)
      {
        goto LABEL_185;
      }
    }

    goto LABEL_535;
  }

LABEL_185:
  v120 = re::GeomMesh::addAttribute(v370, "cotangentLaplacianWeights", 4, 4);
  (*(*v120 + 24))(v120, v374);
  v121 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v120);
  v122 = v374;
  if (v374)
  {
    v123 = v376;
    v110 = v55;
    v124 = v55;
    while (v124)
    {
      v125 = *v123++;
      *v121++ = v125;
      --v124;
      if (!--v122)
      {
        goto LABEL_189;
      }
    }

    goto LABEL_539;
  }

LABEL_189:
  if (*(&v424 + 1))
  {
    v55 = v427;
    if (v427)
    {
      (*(**(&v424 + 1) + 40))();
    }

    v427 = 0;
    v425 = 0uLL;
    *(&v424 + 1) = 0;
    ++v426;
  }

  if (*(&v421 + 1))
  {
    v55 = v424;
    if (v424)
    {
      (*(**(&v421 + 1) + 40))();
    }

    *&v424 = 0;
    v422 = 0uLL;
    *(&v421 + 1) = 0;
    ++v423;
  }

  if (*(&v418 + 1))
  {
    v55 = v421;
    if (v421)
    {
      (*(**(&v418 + 1) + 40))();
    }

    *&v421 = 0;
    v419 = 0uLL;
    *(&v418 + 1) = 0;
    ++v420;
  }

  if (*(&v415 + 1))
  {
    v55 = v418;
    if (v418)
    {
      (*(**(&v415 + 1) + 40))();
    }

    *&v418 = 0;
    v416 = 0uLL;
    *(&v415 + 1) = 0;
    ++v417;
  }

  if (v411)
  {
    v55 = v415;
    if (v415)
    {
      (*(*v411 + 40))();
    }

    *&v415 = 0;
    v412 = 0;
    v413 = 0;
    v411 = 0;
    ++v414;
  }

  if (v408)
  {
    v126 = v410;
    if ((v410 & 1) == 0)
    {
      (*(*v408 + 40))();
      v126 = v410;
    }

    v408 = 0;
    v409 = 0;
    v410 = (v126 | 1) + 2;
  }

  if (v403)
  {
    v55 = v407;
    if (v407)
    {
      (*(*v403 + 40))();
    }

    v407 = 0;
    v404 = 0;
    v405 = 0;
    v403 = 0;
    ++v406;
  }

  if (v398)
  {
    v55 = v402;
    if (v402)
    {
      (*(*v398 + 40))();
    }

    v402 = 0;
    v399 = 0;
    v400 = 0;
    v398 = 0;
    ++v401;
  }

  if (v393)
  {
    v55 = v397;
    if (v397)
    {
      (*(*v393 + 40))();
    }

    v397 = 0;
    v394 = 0;
    v395 = 0;
    v393 = 0;
    ++v396;
  }

  if (v388)
  {
    v55 = v392;
    if (v392)
    {
      (*(*v388 + 40))();
    }

    v392 = 0;
    v389 = 0;
    v390 = 0;
    v388 = 0;
    ++v391;
  }

  if (v385)
  {
    v55 = v387;
    if (v387)
    {
      (*(*v385 + 40))();
    }

    v387 = 0;
    *&v386 = 0;
    v385 = 0uLL;
    ++DWORD2(v386);
  }

  if (*&buf[8])
  {
    v55 = *(&v384 + 1);
    if (*(&v384 + 1))
    {
      (*(**&buf[8] + 40))();
    }
  }

  if (v373[0])
  {
    v55 = v376;
    if (v376)
    {
      (*(*v373[0] + 40))();
    }
  }

  if (v377[0])
  {
    v55 = v380;
    if (v380)
    {
      (*(*v377[0] + 40))();
    }
  }

  if (*v434)
  {
    v55 = *&v436[2];
    if (*&v436[2])
    {
      (*(**v434 + 40))();
    }
  }

  v54 = v363;
LABEL_246:
  if ((v368 & 1) == 0)
  {
LABEL_342:
    v188 = 0;
    v189 = *(a3 + 16);
    *v428 = 0xFFFFFFFF00000000;
    *&v428[8] = -1;
    v428[12] = 0;
    if (v189 - 1 <= 0xFFFFFFFD)
    {
      *&v428[8] = v189 - 1;
      v188 = v189;
      *v428 = v189;
    }

    *&v428[16] = v188;
    v190 = *(a3 + 424);
    if (!*(a3 + 424))
    {
      goto LABEL_430;
    }

    *&v445[32] = 0;
    memset(v445, 0, 28);
    re::DynamicArray<double>::resize(v445, v190);
    v191 = 0;
    do
    {
      v192 = re::internal::GeomAttributeContainer::attributeByIndex((a3 + 400), v191);
      v6 = *&v445[16];
      if (*&v445[16] <= v191)
      {
        goto LABEL_491;
      }

      *(*&v445[32] + 8 * v191++) = *(v192 + 8);
    }

    while (v190 != v191);
    v6 = buf;
    re::GeomMesh::GeomMesh(buf, 0);
    re::internal::buildMeshByConvertingFaceVaryingToVertexHelper(a3, v445, v428, buf);
    if (v368)
    {
      v193 = re::internal::GeomAttributeManager::attributeByName((v370 + 64), "vertexAdjacencies");
      v194 = re::internal::GeomAttributeManager::attributeByName((v370 + 64), "accumulatedVertexValence");
      v195 = re::internal::GeomAttributeManager::attributeByName(&v386, "vertexAdjacencies");
      v28 = re::internal::GeomAttributeManager::attributeByName(&v386, "accumulatedVertexValence");
      v196 = v383;
      v197 = re::GeomAttribute::accessValues<int>(v194);
      LODWORD(v8) = v198;
      v362 = re::GeomAttribute::accessValues<int>(v193);
      v6 = v199;
      a5 = 0;
      if (v196)
      {
        v7 = 0;
        do
        {
          v200 = re::GeomIndexMap::operator[](v428, v7);
          LODWORD(v13) = v200;
          if (v200 >= v8)
          {
            goto LABEL_527;
          }

          if (v200)
          {
            v201 = *(v197 + 4 * (v200 - 1));
          }

          else
          {
            v201 = 0;
          }

          a5 = (*(v197 + 4 * v200) + a5 - v201);
          v7 = (v7 + 1);
        }

        while (v196 != v7);
      }

      (*(*v28 + 24))(v28, v196);
      (*(*v195 + 24))(v195, a5);
      v28 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v28);
      v203 = v202;
      v361 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v195);
      v364 = v204;
      if (v196)
      {
        v13 = 0;
        a4 = 0;
        a5 = v203;
        while (1)
        {
          v205 = re::GeomIndexMap::operator[](v428, v13);
          LODWORD(v7) = v205;
          if (v205 >= v8)
          {
            goto LABEL_551;
          }

          v206 = v205 ? *(v197 + 4 * (v205 - 1)) : 0;
          v207 = *(v197 + 4 * v205);
          v208 = v207 >= v206;
          v209 = v207 - v206;
          if (v209 != 0 && v208)
          {
            break;
          }

LABEL_374:
          if (v13 == a5)
          {
            goto LABEL_555;
          }

          *(v28 + 4 * v13++) = a4;
          if (v13 == v196)
          {
            goto LABEL_376;
          }
        }

        if (v206 <= v6)
        {
          v7 = v6;
        }

        else
        {
          v7 = v206;
        }

        v210 = (v361 + 4 * a4);
        if (a4 <= v364)
        {
          v211 = v364;
        }

        else
        {
          v211 = a4;
        }

        v212 = (v211 - a4);
        v213 = v362 + v206;
        v214 = v7 - v206;
        while (v214)
        {
          if (!v212)
          {
            goto LABEL_471;
          }

          v215 = *v213++;
          *v210++ = v215;
          a4 = (a4 + 1);
          --v212;
          --v214;
          if (!--v209)
          {
            goto LABEL_374;
          }
        }

        v377[0] = 0;
        v211 = v428;
        v447 = 0u;
        v448 = 0u;
        memset(v446, 0, sizeof(v446));
        v252 = MEMORY[0x1E69E9C10];
        v253 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v434 = 136315906;
        *&v434[4] = "operator[]";
        *&v434[12] = 1024;
        if (v253)
        {
          v254 = 3;
        }

        else
        {
          v254 = 2;
        }

        *&v434[14] = 613;
        *&v434[18] = 2048;
        *&v434[20] = v7;
        v435 = 2048;
        *v436 = v6;
        _os_log_send_and_compose_impl(v254, v377, v446, 80, &dword_1E1C61000, v252, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v434, 38, v352, v353);
        _os_crash_msg();
        __break(1u);
LABEL_471:
        v377[0] = 0;
        v6 = v428;
        v447 = 0u;
        v448 = 0u;
        memset(v446, 0, sizeof(v446));
        v255 = MEMORY[0x1E69E9C10];
        v256 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v434 = 136315906;
        *&v434[4] = "operator[]";
        *&v434[12] = 1024;
        if (v256)
        {
          v257 = 3;
        }

        else
        {
          v257 = 2;
        }

        *&v434[14] = 621;
        *&v434[18] = 2048;
        *&v434[20] = v211;
        v435 = 2048;
        *v436 = v364;
        _os_log_send_and_compose_impl(v257, v377, v446, 80, &dword_1E1C61000, v255, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v434, 38, v352, v353);
        _os_crash_msg();
        __break(1u);
LABEL_475:
        v377[0] = 0;
        v447 = 0u;
        v448 = 0u;
        memset(v446, 0, sizeof(v446));
        v258 = MEMORY[0x1E69E9C10];
        v259 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *&v434[4] = "operator[]";
        *&v434[12] = 1024;
        *&v434[14] = 613;
        if (v259)
        {
          v260 = 3;
        }

        else
        {
          v260 = 2;
        }

        *v434 = 136315906;
        *&v434[18] = 2048;
        *&v434[20] = (v196 + a5);
        v435 = 2048;
        *v436 = v364;
        _os_log_send_and_compose_impl(v260, v377, v446, 80, &dword_1E1C61000, v258, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v434, 38, v352, v353);
        _os_crash_msg();
        __break(1u);
LABEL_479:
        v377[0] = 0;
        v447 = 0u;
        v448 = 0u;
        memset(v446, 0, sizeof(v446));
        v261 = MEMORY[0x1E69E9C10];
        v262 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *&v434[4] = "operator[]";
        *&v434[12] = 1024;
        *&v434[14] = 621;
        if (v262)
        {
          v263 = 3;
        }

        else
        {
          v263 = 2;
        }

        *v434 = 136315906;
        *&v434[18] = 2048;
        *&v434[20] = (v28 + a5);
        v435 = 2048;
        *v436 = v362;
        _os_log_send_and_compose_impl(v263, v377, v446, 80, &dword_1E1C61000, v261, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v434, 38, v352, v353);
        _os_crash_msg();
        __break(1u);
LABEL_483:
        v377[0] = 0;
        v447 = 0u;
        v448 = 0u;
        memset(v446, 0, sizeof(v446));
        v264 = MEMORY[0x1E69E9C10];
        v265 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v434 = 136315906;
        *&v434[4] = "operator[]";
        if (v265)
        {
          v266 = 3;
        }

        else
        {
          v266 = 2;
        }

        *&v434[12] = 1024;
        *&v434[14] = 613;
        *&v434[18] = 2048;
        *&v434[20] = a5 + v196;
        v435 = 2048;
        *v436 = v361;
        _os_log_send_and_compose_impl(v266, v377, v446, 80, &dword_1E1C61000, v264, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v434, 38, v352, v353);
        _os_crash_msg();
        __break(1u);
LABEL_487:
        v377[0] = 0;
        v447 = 0u;
        v448 = 0u;
        memset(v446, 0, sizeof(v446));
        v191 = MEMORY[0x1E69E9C10];
        v267 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v434 = 136315906;
        *&v434[4] = "operator[]";
        if (v267)
        {
          v268 = 3;
        }

        else
        {
          v268 = 2;
        }

        *&v434[12] = 1024;
        *&v434[14] = 621;
        *&v434[18] = 2048;
        *&v434[20] = a5 + v28;
        v435 = 2048;
        *v436 = v358;
        _os_log_send_and_compose_impl(v268, v377, v446, 80, &dword_1E1C61000, v191, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v434, 38, v352, v353);
        _os_crash_msg();
        __break(1u);
LABEL_491:
        *v434 = 0;
        v385 = 0u;
        v386 = 0u;
        v384 = 0u;
        *buf = 0u;
        v383 = 0u;
        v179 = MEMORY[0x1E69E9C10];
        v269 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v446[0]) = 136315906;
        *(v446 + 4) = "operator[]";
        WORD2(v446[1]) = 1024;
        if (v269)
        {
          v270 = 3;
        }

        else
        {
          v270 = 2;
        }

        *(&v446[1] + 6) = 789;
        WORD1(v446[2]) = 2048;
        *(&v446[2] + 4) = v191;
        WORD2(v446[3]) = 2048;
        *(&v446[3] + 6) = v6;
        _os_log_send_and_compose_impl(v270, v434, buf, 80, &dword_1E1C61000, v179, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v446, 38, v352, v353);
        _os_crash_msg();
        __break(1u);
LABEL_495:
        *v434 = 0;
        v385 = 0u;
        v386 = 0u;
        v384 = 0u;
        *buf = 0u;
        v383 = 0u;
        v271 = MEMORY[0x1E69E9C10];
        v272 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v445 = 136315906;
        *&v445[4] = "operator[]";
        *&v445[12] = 1024;
        if (v272)
        {
          v273 = 3;
        }

        else
        {
          v273 = 2;
        }

        *&v445[14] = 621;
        *&v445[18] = 2048;
        *&v445[20] = v179;
        *&v445[28] = 2048;
        *&v445[30] = v179;
        _os_log_send_and_compose_impl(v273, v434, buf, 80, &dword_1E1C61000, v271, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v445, 38, v352, v353);
        _os_crash_msg();
        __break(1u);
LABEL_499:
        *v434 = 0;
        v385 = 0u;
        v386 = 0u;
        v384 = 0u;
        *buf = 0u;
        v383 = 0u;
        v274 = MEMORY[0x1E69E9C10];
        v275 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v445 = 136315906;
        *&v445[4] = "operator[]";
        *&v445[12] = 1024;
        if (v275)
        {
          v276 = 3;
        }

        else
        {
          v276 = 2;
        }

        *&v445[14] = 621;
        *&v445[18] = 2048;
        *&v445[20] = v179;
        *&v445[28] = 2048;
        *&v445[30] = v179;
        _os_log_send_and_compose_impl(v276, v434, buf, 80, &dword_1E1C61000, v274, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v445, 38, v352, v353);
        _os_crash_msg();
        __break(1u);
LABEL_503:
        *v445 = 0;
        v447 = 0u;
        v448 = 0u;
        memset(v446, 0, sizeof(v446));
        v277 = MEMORY[0x1E69E9C10];
        v278 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v428 = 136315906;
        *&v428[4] = "operator[]";
        *&v428[12] = 1024;
        if (v278)
        {
          v279 = 3;
        }

        else
        {
          v279 = 2;
        }

        *&v428[14] = 789;
        *&v428[18] = 2048;
        *&v428[20] = v6;
        v429 = 2048;
        *v430 = v28;
        _os_log_send_and_compose_impl(v279, v445, v446, 80, &dword_1E1C61000, v277, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v352, v353);
        _os_crash_msg();
        __break(1u);
LABEL_507:
        *v445 = 0;
        v66 = v428;
        v447 = 0u;
        v448 = 0u;
        memset(v446, 0, sizeof(v446));
        v280 = MEMORY[0x1E69E9C10];
        v281 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v428 = 136315906;
        *&v428[4] = "operator[]";
        *&v428[12] = 1024;
        if (v281)
        {
          v282 = 3;
        }

        else
        {
          v282 = 2;
        }

        *&v428[14] = 797;
        *&v428[18] = 2048;
        *&v428[20] = v28;
        v429 = 2048;
        *v430 = v28;
        _os_log_send_and_compose_impl(v282, v445, v446, 80, &dword_1E1C61000, v280, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v352, v353);
        _os_crash_msg();
        __break(1u);
LABEL_511:
        *v445 = 0;
        v28 = v428;
        v447 = 0u;
        v448 = 0u;
        memset(v446, 0, sizeof(v446));
        v283 = MEMORY[0x1E69E9C10];
        v284 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v428 = 136315906;
        *&v428[4] = "operator[]";
        *&v428[12] = 1024;
        if (v284)
        {
          v285 = 3;
        }

        else
        {
          v285 = 2;
        }

        *&v428[14] = 789;
        *&v428[18] = 2048;
        *&v428[20] = v6;
        v429 = 2048;
        *v430 = v66;
        _os_log_send_and_compose_impl(v285, v445, v446, 80, &dword_1E1C61000, v283, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v352, v353);
        _os_crash_msg();
        __break(1u);
LABEL_515:
        *v445 = 0;
        v447 = 0u;
        v448 = 0u;
        memset(v446, 0, sizeof(v446));
        v286 = MEMORY[0x1E69E9C10];
        v287 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v428 = 136315906;
        *&v428[4] = "operator[]";
        *&v428[12] = 1024;
        if (v287)
        {
          v288 = 3;
        }

        else
        {
          v288 = 2;
        }

        *&v428[14] = 789;
        *&v428[18] = 2048;
        *&v428[20] = a5;
        v429 = 2048;
        *v430 = v66;
        _os_log_send_and_compose_impl(v288, v445, v446, 80, &dword_1E1C61000, v286, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v352, v353);
        _os_crash_msg();
        __break(1u);
LABEL_519:
        *v445 = 0;
        v447 = 0u;
        v448 = 0u;
        memset(v446, 0, sizeof(v446));
        v289 = MEMORY[0x1E69E9C10];
        v290 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v428 = 136315906;
        *&v428[4] = "operator[]";
        *&v428[12] = 1024;
        if (v290)
        {
          v291 = 3;
        }

        else
        {
          v291 = 2;
        }

        *&v428[14] = 789;
        *&v428[18] = 2048;
        *&v428[20] = v13;
        v429 = 2048;
        *v430 = v66;
        _os_log_send_and_compose_impl(v291, v445, v446, 80, &dword_1E1C61000, v289, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v352, v353);
        _os_crash_msg();
        __break(1u);
LABEL_523:
        *v445 = 0;
        v447 = 0u;
        v448 = 0u;
        memset(v446, 0, sizeof(v446));
        v292 = MEMORY[0x1E69E9C10];
        v293 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v428 = 136315906;
        *&v428[4] = "operator[]";
        *&v428[12] = 1024;
        if (v293)
        {
          v294 = 3;
        }

        else
        {
          v294 = 2;
        }

        *&v428[14] = 789;
        *&v428[18] = 2048;
        *&v428[20] = v7;
        v429 = 2048;
        *v430 = v7;
        _os_log_send_and_compose_impl(v294, v445, v446, 80, &dword_1E1C61000, v292, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v428, 38, v352, v353);
        _os_crash_msg();
        __break(1u);
LABEL_527:
        v377[0] = 0;
        v110 = v428;
        v447 = 0u;
        v448 = 0u;
        memset(v446, 0, sizeof(v446));
        v295 = MEMORY[0x1E69E9C10];
        v296 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v434 = 136315906;
        *&v434[4] = "operator[]";
        if (v296)
        {
          v297 = 3;
        }

        else
        {
          v297 = 2;
        }

        *&v434[12] = 1024;
        *&v434[14] = 613;
        *&v434[18] = 2048;
        *&v434[20] = v13;
        v435 = 2048;
        *v436 = v8;
        _os_log_send_and_compose_impl(v297, v377, v446, 80, &dword_1E1C61000, v295, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v434, 38, v352, v353);
        _os_crash_msg();
        __break(1u);
        goto LABEL_531;
      }
    }

LABEL_376:
    if (*(v371 + 8) == 1)
    {
      v365 = re::internal::GeomAttributeManager::attributeByName((v370 + 64), "cotangentLaplacianIndices");
      v216 = re::internal::GeomAttributeManager::attributeByName((v370 + 64), "cotangentLaplacianEndIndices");
      v362 = re::internal::GeomAttributeManager::attributeByName((v370 + 64), "cotangentLaplacianWeights");
      v7 = re::internal::GeomAttributeManager::attributeByName(&v386, "cotangentLaplacianIndices");
      a5 = re::internal::GeomAttributeManager::attributeByName(&v386, "cotangentLaplacianEndIndices");
      v6 = v216;
      v217 = re::internal::GeomAttributeManager::attributeByName(&v386, "cotangentLaplacianWeights");
      v8 = v383;
      v218 = re::GeomAttribute::accessValues<int>(v216);
      if (v8)
      {
        v28 = v218;
        LODWORD(v13) = v219;
        a4 = 0;
        v220 = 0;
        while (1)
        {
          v221 = re::GeomIndexMap::operator[](v428, v220);
          i = v221;
          if (v221 >= v13)
          {
            goto LABEL_543;
          }

          if (v221)
          {
            v222 = *(v28 + 4 * (v221 - 1));
          }

          else
          {
            v222 = 0;
          }

          a4 = (*(v28 + 4 * v221) + a4 - v222);
          v220 = (v220 + 1);
          if (v8 == v220)
          {
            goto LABEL_386;
          }
        }
      }

      a4 = 0;
LABEL_386:
      (*(*v7 + 24))(v7, a4);
      (*(*v217 + 24))(v217, a4);
      (*(*a5 + 24))(a5, v8);
      v357 = re::GeomAttribute::accessValues<int>(v365);
      v364 = v223;
      v13 = re::GeomAttribute::accessValues<int>(v6);
      a4 = v224;
      v356 = re::GeomAttribute::accessValues<int>(v362);
      LODWORD(v361) = v225;
      v355 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v7);
      LODWORD(v362) = v226;
      v7 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a5);
      v228 = v227;
      v354 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v217);
      v358 = v229;
      if (v8)
      {
        v230 = 0;
        v28 = 0;
        v231 = v228;
        while (1)
        {
          v232 = re::GeomIndexMap::operator[](v428, v230);
          a5 = v232;
          if (v232)
          {
            v6 = (v232 - 1);
            if (v6 >= a4)
            {
              goto LABEL_599;
            }

            LODWORD(v196) = *(v13 + 4 * v6);
          }

          else
          {
            LODWORD(v196) = 0;
          }

          if (v232 >= a4)
          {
            goto LABEL_575;
          }

          v233 = (*(v13 + 4 * v232) - v196);
          if (v233)
          {
            break;
          }

LABEL_411:
          if (v230 == v231)
          {
            goto LABEL_579;
          }

          v28 = (v233 + v28);
          *(v7 + 4 * v230++) = v28;
          if (v230 == v8)
          {
            goto LABEL_413;
          }
        }

        a5 = 0;
        LODWORD(v234) = v364 - v196;
        if (v364 >= v196)
        {
          v234 = v234;
        }

        else
        {
          v234 = 0;
        }

        LODWORD(v235) = v362 - v28;
        if (v362 >= v28)
        {
          v235 = v235;
        }

        else
        {
          v235 = 0;
        }

        LODWORD(v236) = v361 - v196;
        if (v361 >= v196)
        {
          v236 = v236;
        }

        else
        {
          v236 = 0;
        }

        LODWORD(v237) = v358 - v28;
        if (v358 >= v28)
        {
          v237 = v237;
        }

        else
        {
          v237 = 0;
        }

        while (v234 != a5)
        {
          if (v235 == a5)
          {
            goto LABEL_479;
          }

          *(v355 + 4 * v28 + 4 * a5) = *(v357 + 4 * v196 + 4 * a5);
          if (v236 == a5)
          {
            goto LABEL_483;
          }

          if (v237 == a5)
          {
            goto LABEL_487;
          }

          *(v354 + 4 * v28 + 4 * a5) = *(v356 + 4 * v196 + 4 * a5);
          if (v233 == ++a5)
          {
            goto LABEL_411;
          }
        }

        goto LABEL_475;
      }
    }

LABEL_413:
    a4 = v359;
    re::remapIndexMap(v428, v359, v446);
    re::GeomIndexMap::operator=(v359, v446);
    a3 = v370;
    a5 = v366;
    v13 = v367;
    if (!BYTE4(v446[1]))
    {
      goto LABEL_420;
    }

    if (BYTE4(v446[1]) == 2)
    {
      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v446[2]);
LABEL_420:
      re::GeomMesh::operator=(v370, buf);
      re::GeomMesh::~GeomMesh(buf);
      if (*v445)
      {
        v55 = *&v445[32];
        if (*&v445[32])
        {
          (*(**v445 + 40))();
        }
      }

      v28 = v371;
      switch(v428[12])
      {
        case 0:
          goto LABEL_430;
        case 2:
          re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v428[16]);
LABEL_430:
          v239 = *(a3 + 16);
          if (*(v28 + 1) != 1)
          {
            goto LABEL_463;
          }

          v240 = *(a3 + 40);
          if (*(a3 + 8) != v240 || (v239 / v240) >= 1.2)
          {
            goto LABEL_463;
          }

          v241 = 0;
          *v428 = 0xFFFFFFFF00000000;
          *&v428[8] = -1;
          v428[12] = 0;
          if (v240 - 1 <= 0xFFFFFFFD)
          {
            *&v428[8] = v240 - 1;
            v241 = v240;
            *v428 = v240;
          }

          *&v428[16] = v241;
          re::internal::makeVertexCacheCoherentMesh(a3, v428, buf);
          re::remapIndexMap(v428, a5, v446);
          re::GeomIndexMap::operator=(a5, v446);
          if (!BYTE4(v446[1]))
          {
            goto LABEL_442;
          }

          if (BYTE4(v446[1]) == 2)
          {
            re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v446[2]);
LABEL_442:
            if (v368)
            {
              v243 = re::internal::GeomAttributeManager::attributeByName(&v386, "vertexAdjacencies");
              *&v445[32] = 0;
              memset(v445, 0, 28);
              re::DynamicArray<float>::resize(v445, DWORD2(v384));
              a5 = DWORD2(v384);
              if (DWORD2(v384))
              {
                v244 = 0;
                do
                {
                  v245 = re::GeomIndexMap::operator[](v428, v244);
                  v6 = v245;
                  v28 = *&v445[16];
                  if (*&v445[16] <= v245)
                  {
                    goto LABEL_583;
                  }

                  *(*&v445[32] + 4 * v245) = v244;
                  v244 = (v244 + 1);
                }

                while (a5 != v244);
              }

              v246 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v243);
              LODWORD(v28) = v247;
              v248 = (*(*v243 + 16))(v243);
              if (v248)
              {
                a5 = *&v445[16];
                v249 = *&v445[32];
                v28 = v28;
                v250 = v248;
                v251 = v28;
                while (v251)
                {
                  v6 = *v246;
                  if (a5 <= v6)
                  {
                    goto LABEL_591;
                  }

                  *v246++ = *(v249 + 4 * v6);
                  --v251;
                  if (!--v250)
                  {
                    goto LABEL_452;
                  }
                }

                goto LABEL_587;
              }

LABEL_452:
              if (*v445 && *&v445[32])
              {
                (*(**v445 + 40))();
              }
            }

            re::GeomMesh::operator=(a3, buf);
            re::GeomMesh::~GeomMesh(buf);
            switch(v428[12])
            {
              case 0:
                goto LABEL_462;
              case 2:
                re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v428[16]);
LABEL_462:
                v239 = *(a3 + 16);
LABEL_463:
                if (v239 != *(v13 + 16) && HasSkinningData)
                {
                  re::remapSkinningAttributes(a3, v13, a4);
                }

                *a6 = 1;
                re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v372, v55, v56);
                return;
              case 1:
                if (*&v428[16])
                {
                  v55 = v431;
                  if (v431)
                  {
                    (*(**&v428[16] + 40))();
                  }
                }

                goto LABEL_462;
            }

            goto LABEL_613;
          }

          if (BYTE4(v446[1]) == 1)
          {
            if (v446[2] && v447)
            {
              (*(*v446[2] + 40))();
            }

            goto LABEL_442;
          }

LABEL_612:
          re::internal::assertLog(4, v242, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
          _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
          __break(1u);
LABEL_613:
          re::internal::assertLog(4, v55, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
          _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
          __break(1u);
          goto LABEL_614;
        case 1:
          if (*&v428[16])
          {
            v55 = v431;
            if (v431)
            {
              (*(**&v428[16] + 40))();
            }
          }

          goto LABEL_430;
      }

LABEL_611:
      re::internal::assertLog(4, v55, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
      _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
      __break(1u);
      goto LABEL_612;
    }

    if (BYTE4(v446[1]) == 1)
    {
      if (v446[2] && v447)
      {
        (*(*v446[2] + 40))();
      }

      goto LABEL_420;
    }

LABEL_610:
    re::internal::assertLog(4, v238, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
    goto LABEL_611;
  }

  if (!v54 || (*(v28 + 8) & 1) != 0 || (v127 = re::internal::GeomAttributeManager::attributeByName((a3 + 64), "vertexNormal")) == 0 || *(v127 + 16) != 3)
  {
LABEL_328:
    v446[4] = 0;
    memset(v446, 0, 28);
    *&v430[2] = 0;
    memset(v428, 0, sizeof(v428));
    re::computeVertexFaceConnectivity(a3, v446, v428);
    v174 = re::GeomMesh::addAttribute(a3, "vertexAdjacencies", 4, 3);
    (*(*v174 + 24))(v174, LODWORD(v446[2]));
    v175 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v174);
    v177 = v446[2];
    if (v446[2])
    {
      v178 = v446[4];
      v179 = v176;
      v180 = v176;
      while (v180)
      {
        v181 = *v178++;
        *v175++ = v181;
        --v180;
        if (!--v177)
        {
          goto LABEL_332;
        }
      }

      goto LABEL_495;
    }

LABEL_332:
    v182 = re::GeomMesh::addAttribute(a3, "accumulatedVertexValence", 4, 3);
    (*(*v182 + 24))(v182, *(a3 + 16));
    v183 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v182);
    v184 = *&v428[16];
    if (*&v428[16])
    {
      v185 = *&v430[2];
      v179 = v55;
      v186 = v55;
      while (v186)
      {
        v187 = *v185++;
        *v183++ = v187;
        --v186;
        if (!--v184)
        {
          goto LABEL_336;
        }
      }

      goto LABEL_499;
    }

LABEL_336:
    if (*v428)
    {
      v55 = *&v430[2];
      if (*&v430[2])
      {
        (*(**v428 + 40))();
      }
    }

    if (v446[0])
    {
      v55 = v446[4];
      if (v446[4])
      {
        (*(*v446[0] + 40))();
      }
    }

    goto LABEL_342;
  }

  *&v430[2] = 0;
  memset(v428, 0, sizeof(v428));
  *buf = 0xFFFFFFFF00000000;
  *&buf[8] = -1;
  buf[12] = 0;
  v128 = buf;
  LODWORD(v383) = 0;
  re::DynamicArray<re::TransitionCondition *>::add(v428, &re::GeomAttributeNames::kDefaultNormal);
  re::internal::buildMeshBySplittingFaceVaryingToVertexHelper(a3, v428, buf, a3);
  re::remapIndexMap(buf, a4, v446);
  re::GeomIndexMap::operator=(a4, v446);
  if (!BYTE4(v446[1]))
  {
    goto LABEL_318;
  }

  if (BYTE4(v446[1]) == 2)
  {
    goto LABEL_317;
  }

  if (BYTE4(v446[1]) != 1)
  {
LABEL_614:
    re::internal::assertLog(4, v129, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
    __break(1u);
    goto LABEL_615;
  }

  if (v446[2])
  {
    v129 = v447;
    if (v447)
    {
      (*(*v446[2] + 40))();
    }
  }

LABEL_318:
  switch(buf[12])
  {
    case 0u:
LABEL_325:
      if (*v428 && *&v430[2])
      {
        (*(**v428 + 40))(v130);
      }

      goto LABEL_328;
    case 2u:
      v130.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((v128 + 16));
      goto LABEL_325;
    case 1u:
      if (v383 && v385)
      {
        (*(*v383 + 40))(v130);
      }

      goto LABEL_325;
  }

LABEL_615:
  re::internal::assertLog(4, v129, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  _os_crash("assertion failure: (!Unreachable code) Invalid mapping type -- indicative of a use after free or memory corruption");
  __break(1u);
}