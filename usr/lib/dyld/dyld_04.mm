void *lsl::Vector<AuthenticatedValue<dyld4::Loader const*>>::erase(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  result = (v3 + 8 * v4);
  if (result != a2)
  {
    v6 = a2 + 1;
    for (i = (a2 - v3) >> 3; v6 != result; ++a2)
    {
      *(v6 - 1) = *v6;
      *v6++ = 0;
    }

    *(a1 + 16) = v4 - 1;
    if (v4 - 1 >= i)
    {
      v8 = i;
    }

    else
    {
      v8 = v4 - 1;
    }

    return (v3 + 8 * v8);
  }

  return result;
}

char *_platform_strncpy(char *a1, char *__s1, size_t __n)
{
  v6 = _platform_strnlen(__s1, __n);
  v7 = __n - v6;
  if (__n <= v6)
  {
    memmove(a1, __s1, __n);
  }

  else
  {
    v8 = v6;
    memmove(a1, __s1, v6);
    _platform_memset(&a1[v8], 0, v7);
  }

  return a1;
}

uint64_t dyld3::kdebug_trace_dyld_image(dyld3 *this, void *a2, void **a3, unsigned __int8 (*a4)[16], fsobj_id a5, fsid a6, const void *a7, uint64_t a8, const void *a9)
{
  v12 = a7;
  v13 = a5;
  return dyld3::kdebug_trace_dyld_region(this, 16777228, v12, a2, a3, a4, v13, a6, a9);
}

uint64_t lsl::Vector<dyld4::ExternallyViewableState::ImageInfo>::reserve(uint64_t result, unint64_t a2)
{
  if (*(result + 24) < a2)
  {
    if (a2 >= 0x10)
    {
      v3 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
      v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
      v2 = (v4 | (v4 >> 16) | ((v4 | (v4 >> 16)) >> 32)) + 1;
    }

    else
    {
      v2 = 16;
    }

    return lsl::Vector<dyld4::ExternallyViewableState::ImageInfo>::reserveExact(result, v2);
  }

  return result;
}

void ___ZN5dyld46Loader11forEachPathER11DiagnosticsRNS_12RuntimeStateEPKcRKNS0_11LoadOptionsEU13block_pointerFvS6_NS_13ProcessConfig13PathOverrides4TypeERbE_block_invoke(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  if (a3 != 10 || (*(v5 + 1) & 1) != 0 || (v6 = **(a1 + 56), v6 == 47) || v6 == 64)
  {
    v7 = *(a1 + 64);
    v8 = *(a1 + 32);
    v9 = (*(*(a1 + 40) + 8) + 24);

    dyld4::Loader::forEachResolvedAtPathVar(v7, a2, v5, a3, v9, v8);
  }

  else
  {
    strcpy(__dst, "@rpath/");
    strlcat(__dst, a2, 0x400uLL);
    dyld4::Loader::forEachResolvedAtPathVar(*(a1 + 64), __dst, *(a1 + 48), 14, (*(*(a1 + 40) + 8) + 24), *(a1 + 32));
    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      strcpy(v10, "/usr/lib/");
      strlcat(v10, *(a1 + 56), 0x400uLL);
      (*(*(a1 + 32) + 16))();
      if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && *(*(*(a1 + 64) + 8) + 305) == 1)
      {
        (*(*(a1 + 32) + 16))();
      }
    }
  }
}

uint64_t dyld4::ProcessConfig::PathOverrides::forEachImageSuffix(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v10 = *(a1 + 104);
  if (v10)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 0x40000000;
    v13[2] = ___ZNK5dyld413ProcessConfig13PathOverrides18forEachImageSuffixEPKcNS1_4TypeERbU13block_pointerFvS3_S4_S5_E_block_invoke;
    v13[3] = &unk_A04F0;
    v13[4] = a5;
    v13[5] = a1;
    v13[6] = a2;
    v13[7] = a4;
    result = dyld4::ProcessConfig::PathOverrides::forEachInColonList(v10, 0, a4, v13);
    if ((*a4 & 1) == 0)
    {
      return (*(a5 + 16))(a5, a2, a3, a4);
    }
  }

  else
  {
    v12 = *(a5 + 16);

    return v12(a5);
  }

  return result;
}

uint64_t lsl::Vector<dyld_image_info>::insert<dyld_image_info*>(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  v7 = a2 - *(a1 + 8);
  v8 = a4 - a3;
  v9 = (a4 - a3) >> 3;
  v10 = 0xAAAAAAAAAAAAAAABLL * v9;
  lsl::Vector<dyld4::InterposeTupleSpecific>::reserve(a1, *(a1 + 16) - 0x5555555555555555 * v9);
  v11 = 24 * *(a1 + 16);
  if (v11 != v7)
  {
    memmove((*(a1 + 8) + v8 + v7), (*(a1 + 8) + v7), v11 - v7);
  }

  if (a4 != a3)
  {
    memmove((*(a1 + 8) + v7), a3, v8);
  }

  v12 = *(a1 + 8);
  *(a1 + 16) += v10;
  return v12 + v7;
}

uint64_t *dyld4::ExternallyViewableState::addImages(uint64_t a1, uint64_t a2, lsl::Allocator::Pool **a3, void *a4)
{
  v7 = mach_absolute_time();
  v8 = *(a1 + 24);
  if (v7 <= v8)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v7;
  }

  *(a1 + 24) = v9;
  v35 = a3;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v31 = a3;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  lsl::Vector<dyld_image_info>::insert<dyld_image_info*>(&v35, 0, *(*(a1 + 40) + 8), (*(*(a1 + 40) + 8) + 24 * *(*(a1 + 40) + 16)));
  lsl::Vector<dyld_image_info>::insert<dyld_image_info*>(&v31, 0, *(*(a1 + 48) + 8), (*(*(a1 + 48) + 8) + 24 * *(*(a1 + 48) + 16)));
  v10 = a4[1];
  if (v10)
  {
    v11 = (*a4 + 32);
    v12 = 40 * v10;
    do
    {
      v14 = *(v11 - 2);
      v13 = *(v11 - 1);
      lsl::Vector<dyld4::InterposeTupleSpecific>::reserve(&v35, v37 + 1);
      v15 = v37++;
      v16 = &v36[24 * v15];
      *v16 = v13;
      v16[1] = v14;
      v16[2] = 0;
      if ((*v11 & 1) == 0)
      {
        *&v39 = v13;
        mach_o::Header::getUuid(v13, &v39 + 8);
        lsl::Vector<dyld4::InterposeTupleSpecific>::reserve(&v31, v33 + 1);
        v17 = v33++;
        v18 = &v32[24 * v17];
        v19 = v39;
        *(v18 + 2) = v40;
        *v18 = v19;
      }

      v11 += 40;
      v12 -= 40;
    }

    while (v12);
  }

  dyld4::ExternallyViewableState::generateAtlas(&v39, a1, a3);
  atomic_store(0, (*(a1 + 32) + 8));
  v20 = *(a1 + 32);
  *(v20 + 96) = 0;
  v21 = *(v20 + 4);
  *(*(a1 + 40) + 16) = 0;
  *(*(a1 + 48) + 16) = 0;
  dyld4::ExternallyViewableState::activateAtlas(a1, *a1, &v39);
  lsl::Vector<dyld4::InterposeTupleSpecific>::reserve(*(a1 + 40), v37);
  lsl::Vector<dyld4::InterposeTupleSpecific>::reserve(*(a1 + 48), v33);
  lsl::Vector<dyld_image_info>::insert<dyld_image_info*>(*(a1 + 40), *(*(a1 + 40) + 8), v36, &v36[24 * v37]);
  lsl::Vector<dyld_image_info>::insert<dyld_image_info*>(*(a1 + 48), *(*(a1 + 48) + 8), v32, &v32[24 * v33]);
  v22 = *(a1 + 32);
  *(v22 + 4) = v37;
  *(v22 + 88) = v33;
  atomic_store(*(a1 + 24), (v22 + 184));
  atomic_store(*(*(a1 + 40) + 8), (*(a1 + 32) + 8));
  v23 = *(a1 + 32);
  *(v23 + 96) = *(*(a1 + 48) + 8);
  v24 = v37 - v21;
  v25 = atomic_load((v23 + 8));
  result = dyld4::ExternallyViewableState::triggerNotifications(a1, 0, v24, (v25 + 24 * v21), v26, v27, v28, v29);
  if (*(&v39 + 1))
  {
    result = lsl::Vector<std::byte>::resize(&v39, 0);
  }

  if (v32)
  {
    result = lsl::Vector<AAREncoder::File>::resize(&v31, 0);
  }

  if (v36)
  {
    return lsl::Vector<AAREncoder::File>::resize(&v35, 0);
  }

  return result;
}

void dyld4::Loader::forEachResolvedAtPathVar(const dyld4::RuntimeState *a1, char *__s1, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  v12 = _platform_strncmp(__s1, "@rpath/", 7uLL);
  if (v12 || *(a3 + 6) != 1)
  {
    if (dyld4::Loader::expandAtLoaderPath(a1, __s1, a3, *(*(a3 + 16) + 8), 0, v20))
    {
      (*(a6 + 16))(a6, v20, 12, a5);
    }

    else if (dyld4::Loader::expandAtExecutablePath(a1, __s1, v14, 0, v20))
    {
      (*(a6 + 16))(a6, v20, 13, a5);
    }

    else
    {
      if (v12)
      {
        goto LABEL_18;
      }

      if (a4 == 14)
      {
        v15 = 14;
      }

      else
      {
        v15 = 11;
      }

      for (i = *(a3 + 16); i; i = *i)
      {
        if (*a5 == 1)
        {
          break;
        }

        v17 = dyld4::Loader::mf(i[1], a1);
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 0x40000000;
        v18[2] = ___ZN5dyld46Loader24forEachResolvedAtPathVarERNS_12RuntimeStateEPKcRKNS0_11LoadOptionsENS_13ProcessConfig13PathOverrides4TypeERbU13block_pointerFvS4_SA_SB_E_block_invoke;
        v18[3] = &unk_A14D8;
        v18[6] = i;
        v18[7] = a3;
        v18[8] = v20;
        v18[9] = __s1 + 6;
        v18[4] = a6;
        v18[5] = a1;
        v19 = v15;
        v18[10] = a5;
        mach_o::Header::forEachRPath(v17, v18);
      }

      if ((*a5 & 1) == 0)
      {
LABEL_18:
        if (*__s1 != 64)
        {
          (*(a6 + 16))(a6, __s1, a4, a5);
        }
      }
    }
  }

  else
  {
    v13 = *(a6 + 16);

    v13(a6, __s1, a4, a5);
  }
}

char *dyld4::Loader::expandAtLoaderPath(dyld4::RuntimeState *a1, char *__s1, uint64_t a3, dyld4::Loader *a4, int a5, char *a6)
{
  if (_platform_strncmp(__s1, "@loader_path", 0xCuLL))
  {
    return 0;
  }

  v15 = __s1[12];
  v14 = __s1 + 12;
  v13 = v15;
  if (v15 != 47 && v13 != 0)
  {
    return 0;
  }

  v17 = *(a1 + 1);
  if (*(a3 + 6) == 1)
  {
    if (*(v17 + 328) == 1)
    {
      dyld4::RuntimeState::log(a1, "    @loader_path not allowed in DYLD_INSERT_LIBRARIES\n");
    }

    return 0;
  }

  if ((*(v17 + 305) & 1) == 0 && a5 && *(a1 + 3) == a4)
  {
    if (*(v17 + 328) == 1)
    {
      dyld4::RuntimeState::log(a1, "    @loader_path in LC_RPATH from main executable not expanded due to security policy\n");
    }

    return 0;
  }

  v18 = dyld4::Loader::path(a4, a1);
  strlcpy(a6, v18, 0x400uLL);
  result = strrchr(a6, 47);
  if (result)
  {
    strlcpy(result, v14, a6 - result + 1024);
    return (&dword_0 + 1);
  }

  return result;
}

char *dyld4::Loader::expandAtExecutablePath(dyld4::RuntimeState *a1, char *__s1, uint64_t a3, uint64_t a4, char *a5)
{
  if (_platform_strncmp(__s1, "@executable_path", 0x10uLL))
  {
    return 0;
  }

  v10 = __s1[16];
  if (v10 != 47 && v10 != 0)
  {
    return 0;
  }

  v12 = *(a1 + 1);
  if ((*(v12 + 305) & 1) == 0)
  {
    if (*(v12 + 328) == 1)
    {
      dyld4::RuntimeState::log(a1, "    @executable_path not expanded due to security policy\n");
    }

    return 0;
  }

  v13 = *(v12 + 32);

  return dyld4::Loader::expandAndNormalizeAtExecutablePath(v13, __s1, a5, v8);
}

void ___ZN5dyld46Loader9getLoaderER11DiagnosticsRNS_12RuntimeStateEPKcRKNS0_11LoadOptionsE_block_invoke(uint64_t a1, char *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a3;
  if (__PAIR64__(*(a1 + 81), *(a1 + 80)) == 0x100000001 && (*(a1 + 82) & 1) == 0 && *(a1 + 48) != a2)
  {
    return;
  }

  v8 = *(a1 + 56);
  if (*(*(v8 + 1) + 328) == 1)
  {
    v9 = dyld4::ProcessConfig::PathOverrides::typeName(a3);
    dyld4::RuntimeState::log(v8, "  possible path(%s): %s\n", v9, a2);
    v8 = *(a1 + 56);
  }

  v10 = 0;
  *&v83 = v8 + 32;
  *(&v83 + 1) = v8 + 64;
  while (1)
  {
    v11 = *(&v83 + v10);
    if (*(*(a1 + 64) + 5) != 1 || v11 != *(a1 + 56) + 64)
    {
      v12 = *(v11 + 16);
      if (v12)
      {
        break;
      }
    }

LABEL_13:
    v10 += 8;
    if (v10 == 16)
    {
      v17 = *(*(a1 + 56) + 8);
      if ((*(v17 + 307) & 1) == 0)
      {
        v18 = *a2;
        if (v18 != 47 && v18 != 64)
        {
          v42 = Diagnostics::noError(*(a1 + 72));
          v43 = *(a1 + 72);
          if (v42)
          {
            Diagnostics::error(v43, "tried: '%s' (relative path not allowed in hardened program)", a2);
          }

          else
          {
            Diagnostics::appendError(v43, ", '%s' (relative path not allowed in hardened program)");
          }

          return;
        }
      }

      *v81 = 0;
      if (dyld4::ProcessConfig::DyldCache::indexOfPath((v17 + 368), a2, v81))
      {
        v19 = 0;
        v20 = *(a1 + 56);
        *&v83 = v20 + 32;
        *(&v83 + 1) = v20 + 64;
        while (1)
        {
          v21 = *(&v83 + v19);
          if (*(*(a1 + 64) + 5) != 1 || v21 != *(a1 + 56) + 64)
          {
            v22 = *(v21 + 16);
            if (v22)
            {
              break;
            }
          }

LABEL_25:
          v19 += 8;
          if (v19 == 16)
          {
            goto LABEL_26;
          }
        }

        v23 = *(v21 + 8);
        v24 = 8 * v22;
        v25 = v23;
        while (1)
        {
          v26 = *v25;
          if (dyld4::Loader::representsCachedDylibIndex(*v25, v81[0]))
          {
            break;
          }

          ++v25;
          ++v23;
          v24 -= 8;
          if (!v24)
          {
            goto LABEL_25;
          }
        }

        *(*(*(a1 + 32) + 8) + 24) = v26;
        *a4 = 1;
        Diagnostics::clearError(*(a1 + 72));
        v41 = *(a1 + 56);
        if (*(*(v41 + 1) + 328) == 1)
        {
          dyld4::Loader::path(v26, v41);
          dyld4::RuntimeState::log(v41, "  found: already-loaded-by-dylib-index: %s -> %s\n");
        }

        return;
      }

LABEL_26:
      if (*(*(a1 + 64) + 5))
      {
        return;
      }

      v27 = *(a1 + 56);
      v28 = *(v27 + 80);
      if (v28)
      {
        if ((*(*(v27 + 1) + 328) & 1) == 0 || (dyld4::RuntimeState::log(v27, "searching %llu pseudo-dylibs:\n", *(v27 + 80)), v27 = *(a1 + 56), (v28 = *(v27 + 80)) != 0))
        {
          v29 = *(v27 + 79);
          v30 = &v29[v28];
          v31 = v29;
          while (1)
          {
            v32 = dyld4::PseudoDylib::loadableAtPath(*v31, a2);
            if (v32)
            {
              v33 = v32;
              v34 = *(a1 + 56);
              if (*(*(v34 + 1) + 328) == 1)
              {
                dyld4::RuntimeState::log(v34, "  found: pseduo-dylib: %s\n", a2);
              }

              Diagnostics::Diagnostics(&v83);
              *(*(*(a1 + 32) + 8) + 24) = dyld4::JustInTimeLoader::makePseudoDylibLoader(&v83, *(a1 + 56), v33, *(a1 + 64), *v31);
              if (v33 != a2)
              {
                dyld4::PseudoDylib::disposeString(*v31, v33);
              }

              if (Diagnostics::hasError(&v83))
              {
                v35 = Diagnostics::noError(*(a1 + 72));
                v36 = *(a1 + 72);
                v37 = Diagnostics::errorMessage(&v83);
                if (v35)
                {
                  Diagnostics::error(v36, "tried: '%s' (%s)", a2, v37);
                }

                else
                {
                  Diagnostics::appendError(v36, ", '%s' (%s)", a2, v37);
                }

                v38 = *(a1 + 56);
                if (*(*(v38 + 1) + 328) == 1)
                {
                  v39 = Diagnostics::errorMessage(&v83);
                  dyld4::RuntimeState::log(v38, "  found: pseudo-dylib-error: %s => %s\n", a2, v39);
                }
              }

              if (*(*(*(a1 + 32) + 8) + 24))
              {
                Diagnostics::clearError(*(a1 + 72));
                *a4 = 1;
                v53 = &v83;
                goto LABEL_148;
              }

              Diagnostics::~Diagnostics(&v83);
            }

            ++v31;
            ++v29;
            if (v31 == v30)
            {
              v27 = *(a1 + 56);
              break;
            }
          }
        }

        if (*(*(v27 + 1) + 328) == 1 && !*(*(*(a1 + 32) + 8) + 24))
        {
          dyld4::RuntimeState::log(v27, "   no pseudo-dylibs matched\n");
        }
      }

      v80 = 0;
      v83 = 0u;
      v84 = 0u;
      if (*(a1 + 80) == 1)
      {
        if (v5 != 3 && v5 != 9 && dyld4::ProcessConfig::DyldCache::indexOfPath((*(*(a1 + 56) + 8) + 368), a2, (*(*(a1 + 40) + 8) + 24)))
        {
          if (dyld4::ProcessConfig::DyldCache::isOverridablePath((*(*(a1 + 56) + 8) + 368), a2) && dyld4::ProcessConfig::fileExists(*(*(a1 + 56) + 8), a2, &v83, &v80))
          {
            goto LABEL_104;
          }

LABEL_72:
          Diagnostics::Diagnostics(&v77);
          *(*(*(a1 + 32) + 8) + 24) = dyld4::Loader::makeDyldCacheLoader(&v77, *(a1 + 56), a2, *(a1 + 64), *(*(*(a1 + 40) + 8) + 24));
          if ((*(*(*(a1 + 56) + 8) + 328) & 1) != 0 && Diagnostics::hasError(&v77))
          {
            v48 = "  found: dylib-from-cache-error: %s => %s\n";
            goto LABEL_141;
          }

LABEL_142:
          if (*(*(*(a1 + 32) + 8) + 24))
          {
            *a4 = 1;
            Diagnostics::clearError(*(a1 + 72));
          }

          else
          {
            v74 = Diagnostics::noError(*(a1 + 72));
            v75 = *(a1 + 72);
            v76 = Diagnostics::errorMessage(&v77);
            if (v74)
            {
              Diagnostics::error(v75, "tried: '%s' (%s)", a2, v76);
            }

            else
            {
              Diagnostics::appendError(v75, ", '%s' (%s)", a2, v76);
            }
          }

          v53 = &v77;
LABEL_148:
          Diagnostics::~Diagnostics(v53);
          return;
        }

        if (dyld4::ProcessConfig::fileExists(*(*(a1 + 56) + 8), a2, &v83, &v80))
        {
          v49 = *(a1 + 82);
          goto LABEL_105;
        }

LABEL_78:
        v50 = *(*(a1 + 64) + 32);
        if (v50 && v5 != 3 && v5 != 9)
        {
          (*(v50 + 16))(v50, a2);
        }

        v51 = Diagnostics::noError(*(a1 + 72));
        v52 = *(a1 + 72);
        if (v51)
        {
          Diagnostics::error(v52, "tried: ");
        }

        else
        {
          Diagnostics::appendError(v52, ", ");
        }

        v54 = &unk_91735;
        if (v5 != 3 && v5 != 9 && (!_platform_strncmp(a2, "/usr/lib/", 9uLL) || !_platform_strncmp(a2, "/System/Library/", 0x10uLL) || !_platform_strncmp(a2, "/System/iOSSupport/usr/lib/", 0x1BuLL) || !_platform_strncmp(a2, "/System/iOSSupport/System/Library/", 0x22uLL) || !_platform_strncmp(a2, "/System/DriverKit/", 0x12uLL)))
        {
          if (*(*(*(a1 + 56) + 8) + 368))
          {
            v54 = ", not in dyld cache";
          }

          else
          {
            v54 = ", no dyld cache";
          }
        }

        v55 = v80;
        if (v80 == 1)
        {
          if (dyld4::SyscallDelegate::sandboxBlockedStat(*(*(a1 + 56) + 8), a2))
          {
            Diagnostics::appendError(*(a1 + 72), "'%s' (blocked by sandbox)%s", a2, v54);
            v56 = *(a1 + 56);
            if (*(*(v56 + 1) + 328) == 1)
            {
              dyld4::RuntimeState::log(v56, "    stat(%s) blocked by file system sandbox\n");
            }

            return;
          }

          v55 = v80;
        }

        else if (v80 == 2)
        {
          Diagnostics::appendError(*(a1 + 72), "'%s' (no such file%s)");
          return;
        }

        v67 = *(a1 + 72);
        if (v55 == 78)
        {
          Diagnostics::appendError(v67, "'%s' (cannot override a protected system dylib)%s", a2, v54);
          v69 = *(a1 + 56);
          if (*(*(v69 + 1) + 328) == 1)
          {
            dyld4::RuntimeState::log(v69, "    %s cannot override a protected system dylib\n");
          }
        }

        else if (v55 == 666)
        {
          Diagnostics::appendError(v67, "'%s' (not a file%s)", a2, v54);
          v68 = *(a1 + 56);
          if (*(*(v68 + 1) + 328) == 1)
          {
            dyld4::RuntimeState::log(v68, "    stat(%s) returned path is not a regular file\n");
          }
        }

        else
        {
          Diagnostics::appendError(v67, "'%s' (errno=%d%s)", a2, v55, v54);
          v70 = *(a1 + 56);
          if (*(*(v70 + 1) + 328) == 1)
          {
            dyld4::RuntimeState::log(v70, "    stat(%s) returned: errno=%d\n");
          }
        }

        return;
      }

      v44 = dyld4::ProcessConfig::fileExists(*(*(a1 + 56) + 8), a2, &v83, &v80);
      if ((v44 & 1) == 0 && (v5 == 3 || v5 == 9))
      {
        goto LABEL_78;
      }

      v45 = dyld4::ProcessConfig::DyldCache::indexOfPath((*(*(a1 + 56) + 8) + 368), a2, (*(*(a1 + 40) + 8) + 24));
      v47 = v45;
      if ((v44 & 1) == 0)
      {
LABEL_71:
        if (v47)
        {
          goto LABEL_72;
        }

        goto LABEL_78;
      }

      if ((*(a1 + 81) | v45))
      {
        if ((*(*(*(a1 + 56) + 8) + 314) & 1) == 0 && dyld4::ProcessConfig::DyldCache::isProtectedLibSystemPath(*(a1 + 48), v46))
        {
          v80 = 78;
          goto LABEL_71;
        }

LABEL_104:
        v49 = 1;
LABEL_105:
        if (BYTE8(v84))
        {
LABEL_106:
          v57 = 0;
          v58 = *(a1 + 56);
          v82[0] = v58 + 32;
          v82[1] = v58 + 64;
          while (1)
          {
            v59 = v82[v57];
            if (*(*(a1 + 64) + 5) != 1 || v59 != *(a1 + 56) + 64)
            {
              v60 = *(v59 + 16);
              if (v60)
              {
                break;
              }
            }

LABEL_117:
            if (++v57 == 2)
            {
              goto LABEL_118;
            }
          }

          v61 = *(v59 + 8);
          v62 = 8 * v60;
          v63 = v61;
          while (1)
          {
            v64 = *v63;
            dyld4::Loader::fileID(*v63, &v77);
            if (v79 == 1 && *(&v83 + 1) == v77.i64[1] && BYTE8(v84) == 1 && v83 == v77.i64[0] && v84 == v78)
            {
              break;
            }

            ++v63;
            ++v61;
            v62 -= 8;
            if (!v62)
            {
              goto LABEL_117;
            }
          }

          *(*(*(a1 + 32) + 8) + 24) = v64;
          *a4 = 1;
          Diagnostics::clearError(*(a1 + 72));
          v66 = *(a1 + 56);
          if (*(*(v66 + 1) + 328) == 1)
          {
            dyld4::Loader::path(v64, *(a1 + 56));
            dyld4::RuntimeState::log(v66, "  found: already-loaded-by-inode-mtime: %s\n");
          }

          return;
        }

LABEL_118:
        Diagnostics::Diagnostics(&v77);
        if (v49)
        {
          v65 = *(a1 + 56);
          if (*(*(v65 + 1) + 328) == 1)
          {
            dyld4::RuntimeState::log(v65, "  found: dylib-from-disk-to-override-cache: %s\n", a2);
            v65 = *(a1 + 56);
          }

          *(*(*(a1 + 32) + 8) + 24) = dyld4::Loader::makeDiskLoader(&v77, v65, a2, *(a1 + 64), 1, *(*(*(a1 + 40) + 8) + 24), 0);
          if (*(*(*(a1 + 56) + 8) + 328) != 1 || !Diagnostics::hasError(&v77))
          {
            goto LABEL_142;
          }

          v48 = "  found: dylib-from-disk-to-override-cache-error: %s => %s\n";
          goto LABEL_141;
        }
      }

      else
      {
        if (BYTE8(v84))
        {
          v49 = 0;
          goto LABEL_106;
        }

        Diagnostics::Diagnostics(&v77);
      }

      v71 = *(a1 + 56);
      if (*(*(v71 + 1) + 328) == 1)
      {
        dyld4::RuntimeState::log(v71, "  found: dylib-from-disk: %s\n", a2);
        v71 = *(a1 + 56);
      }

      *(*(*(a1 + 32) + 8) + 24) = dyld4::Loader::makeDiskLoader(&v77, v71, a2, *(a1 + 64), 0, 0, 0);
      if (*(*(*(a1 + 56) + 8) + 328) != 1 || !Diagnostics::hasError(&v77))
      {
        goto LABEL_142;
      }

      v48 = "  found: dylib-from-disk-error: %s => %s\n";
LABEL_141:
      v72 = *(a1 + 56);
      v73 = Diagnostics::errorMessage(&v77);
      dyld4::RuntimeState::log(v72, v48, a2, v73);
      goto LABEL_142;
    }
  }

  v13 = *(v11 + 8);
  v14 = 8 * v12;
  v15 = v13;
  while (1)
  {
    v16 = *v15;
    if (dyld4::Loader::matchesPath(*v15, *(a1 + 56), a2))
    {
      break;
    }

    ++v15;
    ++v13;
    v14 -= 8;
    if (!v14)
    {
      goto LABEL_13;
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = v16;
  *a4 = 1;
  Diagnostics::clearError(*(a1 + 72));
  v40 = *(a1 + 56);
  if (*(*(v40 + 1) + 328) == 1)
  {
    dyld4::RuntimeState::log(v40, "  found: already-loaded-by-path: %s\n");
  }
}

uint64_t dyld4::Loader::representsCachedDylibIndex(dyld4::Loader *this, uint64_t a2)
{
  if (*this != 1815378276)
  {
    dyld4::Loader::representsCachedDylibIndex();
  }

  if (*(this + 2))
  {

    return dyld4::PrebuiltLoader::hiddenFromFlat(this);
  }

  else
  {

    return dyld4::JustInTimeLoader::representsCachedDylibIndex(this, a2);
  }
}

void dyld4::RuntimeState::notifyDtrace(uint64_t a1, uint64_t a2)
{
  if (dyld4::SyscallDelegate::dtraceUserProbesEnabled(*(a1 + 8)))
  {
    v24 = &v24;
    __chkstk_darwin();
    v5 = (&v25[-1] - ((v4 + 1295) & 0xFFFFFFFFFFFFFFF0));
    v5->dofiod_count = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2000000000;
    v30 = 0;
    v6 = *(a2 + 8);
    if (v6)
    {
      v7 = *a2;
      v8 = 8 * v6;
      do
      {
        v9 = *v7++;
        Diagnostics::Diagnostics(v26);
        v10 = dyld4::Loader::analyzer(v9, a1);
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 0x40000000;
        v25[2] = ___ZN5dyld412RuntimeState12notifyDtraceERKNSt3__14spanIPKNS_6LoaderELm18446744073709551615EEE_block_invoke;
        v25[3] = &unk_A0F18;
        v25[6] = v5;
        v25[7] = v10;
        v25[8] = v9;
        v25[4] = &v27;
        v25[5] = a1;
        dyld3::MachOFile::forEachDOFSection(v10, v26, v25);
        Diagnostics::~Diagnostics(v26);
        v8 -= 8;
      }

      while (v8);
      if (v5->dofiod_count)
      {
        dyld4::SyscallDelegate::dtraceRegisterUserProbes(*(a1 + 8), v5);
        if (*(v28 + 24) == 1)
        {
          v11 = *(a2 + 8);
          if (v11)
          {
            v12 = *a2;
            v13 = *a2 + 8 * v11;
            do
            {
              v14 = *v12;
              if ((*(*v12 + 2) & 0x20) == 0)
              {
                v15 = dyld4::Loader::analyzer(*v12, a1);
                dofiod_count = v5->dofiod_count;
                if (v5->dofiod_count)
                {
                  v17 = v15;
                  v18 = 0;
                  p_dofhp_dof = &v5->dofiod_helpers[0].dofhp_dof;
                  do
                  {
                    if (*(p_dofhp_dof - 1) == v17)
                    {
                      v20 = *p_dofhp_dof;
                      lsl::Vector<dyld4::InterposeTupleAll>::reserve(a1 + 848, *(a1 + 864) + 1);
                      v21 = *(a1 + 856);
                      v22 = *(a1 + 864);
                      *(a1 + 864) = v22 + 1;
                      v23 = v21 + 16 * v22;
                      *v23 = v14;
                      *(v23 + 8) = v20;
                      dofiod_count = v5->dofiod_count;
                    }

                    ++v18;
                    p_dofhp_dof += 10;
                  }

                  while (v18 < dofiod_count);
                }
              }

              ++v12;
            }

            while (v12 != v13);
          }
        }
      }
    }

    _Block_object_dispose(&v27, 8);
  }
}

uint64_t Diagnostics::error(uint64_t a1, char *a2, const char **a3)
{
  v14 = a3;
  Diagnostics::clearError(a1);
  v13 = v14;
  v12 = 0;
  v5 = _simple_vsnprintf(&v12, 1uLL, a2, v14);
  if (v5 <= -2)
  {
    Diagnostics::error();
  }

  v6 = v5;
  v7 = (vm_page_size + v5) & -vm_page_size;
  v11 = 0;
  if (vm_allocate(mach_task_self_, &v11, v7, 1006632961))
  {
    Diagnostics::error();
  }

  v8 = v11;
  if (v11)
  {
    *a1 = v11;
    v9 = v8;
  }

  else
  {
    v9 = 0;
    *a1 = 0;
  }

  result = _simple_vsnprintf(v9, v7, a2, v13);
  if ((result & 0x80000000) != 0)
  {
    Diagnostics::error();
  }

  if (result != v6)
  {
    Diagnostics::error();
  }

  *(a1 + 8) = v7;
  *(a1 + 12) = v6 + 1;
  return result;
}

uint64_t dyld4::ExternallyViewableState::notifyMonitorOfDyldBeforeInitializers(dyld4::ExternallyViewableState *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  LODWORD(v11) = 520552496;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  dyld3::ScopedTimer::startTimer(&v11, a2, a3, a4, a5, a6, a7, a8);
  dyld4::RemoteNotificationResponder::RemoteNotificationResponder(v10, *(*(this + 4) + 200));
  if (dyld4::RemoteNotificationResponder::active(v10))
  {
    dyld4::RemoteNotificationResponder::notifyMonitorOfDyldBeforeInitializers(v10);
  }

  dyld4::RemoteNotificationResponder::~RemoteNotificationResponder(v10);
  return dyld3::ScopedTimer::endTimer(&v11);
}

uint64_t __simple_bprintf(uint64_t result, uint64_t (*a2)(uint64_t), char *__s, const char **a4)
{
  if (*__s)
  {
    v4 = __s;
    v6 = result;
    while (1)
    {
      result = _platform_strchr(v4, 37);
      if (!result)
      {
        break;
      }

      v7 = result;
      v8 = result - v4;
      if (result - v4 >= 1)
      {
        do
        {
          v10 = *v4++;
          v9 = v10;
          if (a2 && (result = a2(v9)) != 0)
          {
            v11 = *result;
            if (*result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *(v6 + 8);
                if (v13 < *(v6 + 16))
                {
                  goto LABEL_12;
                }

                result = (*(v6 + 32))(v6);
                if (result)
                {
                  break;
                }

LABEL_13:
                v14 = *v12++;
                v11 = v14;
                if (!v14)
                {
                  goto LABEL_19;
                }
              }

              v13 = *(v6 + 8);
LABEL_12:
              *(v6 + 8) = v13 + 1;
              *v13 = v11;
              goto LABEL_13;
            }
          }

          else
          {
            v15 = *(v6 + 8);
            if (v15 < *(v6 + 16))
            {
              goto LABEL_18;
            }

            result = (*(v6 + 32))(v6);
            if (result)
            {
              v15 = *(v6 + 8);
LABEL_18:
              *(v6 + 8) = v15 + 1;
              *v15 = v9;
            }
          }

LABEL_19:
          v16 = v8-- <= 1;
        }

        while (!v16);
      }

      v17 = (v7 + 1);
      if (*(v7 + 1) != 37)
      {
        result = _platform_strncmp((v7 + 1), ".*s", 3uLL);
        if (result)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            v25 = *v17;
            if (v25 > 0x6B)
            {
              if (*v17 <= 0x6Eu)
              {
                if (v25 != 108)
                {
                  goto LABEL_162;
                }

                ++v22;
                ++v17;
                goto LABEL_38;
              }

              if (*v17 <= 0x74u)
              {
                if (v25 == 111)
                {
                  ++a4;
                  result = oct(v6);
                  goto LABEL_184;
                }

                if (v25 != 112)
                {
                  if (v25 == 115)
                  {
                    v40 = a4++;
                    v41 = *v40;
                    if (v41)
                    {
                      v42 = v41;
                    }

                    else
                    {
                      v42 = "(null)";
                    }

                    result = _platform_strlen(v42);
                    v43 = v24 - result;
                    if (v24 - result >= 1)
                    {
                      if (v23)
                      {
                        v44 = 48;
                      }

                      else
                      {
                        v44 = 32;
                      }

                      do
                      {
                        if (a2 && (result = a2(v44)) != 0)
                        {
                          v45 = *result;
                          if (*result)
                          {
                            v46 = (result + 1);
                            while (1)
                            {
                              v47 = *(v6 + 8);
                              if (v47 < *(v6 + 16))
                              {
                                goto LABEL_89;
                              }

                              result = (*(v6 + 32))(v6);
                              if (result)
                              {
                                break;
                              }

LABEL_90:
                              v48 = *v46++;
                              v45 = v48;
                              if (!v48)
                              {
                                goto LABEL_96;
                              }
                            }

                            v47 = *(v6 + 8);
LABEL_89:
                            *(v6 + 8) = v47 + 1;
                            *v47 = v45;
                            goto LABEL_90;
                          }
                        }

                        else
                        {
                          v49 = *(v6 + 8);
                          if (v49 < *(v6 + 16))
                          {
                            goto LABEL_95;
                          }

                          result = (*(v6 + 32))(v6);
                          if (result)
                          {
                            v49 = *(v6 + 8);
LABEL_95:
                            *(v6 + 8) = v49 + 1;
                            *v49 = v44;
                          }
                        }

LABEL_96:
                        v16 = v43-- <= 1;
                      }

                      while (!v16);
                    }

                    v50 = *v42;
                    if (*v42)
                    {
                      while (1)
                      {
                        if (a2 && (result = a2(v50)) != 0)
                        {
                          v51 = *result;
                          if (*result)
                          {
                            v52 = (result + 1);
                            while (1)
                            {
                              v53 = *(v6 + 8);
                              if (v53 < *(v6 + 16))
                              {
                                goto LABEL_106;
                              }

                              result = (*(v6 + 32))(v6);
                              if (result)
                              {
                                break;
                              }

LABEL_107:
                              v54 = *v52++;
                              v51 = v54;
                              if (!v54)
                              {
                                goto LABEL_113;
                              }
                            }

                            v53 = *(v6 + 8);
LABEL_106:
                            *(v6 + 8) = v53 + 1;
                            *v53 = v51;
                            goto LABEL_107;
                          }
                        }

                        else
                        {
                          v55 = *(v6 + 8);
                          if (v55 < *(v6 + 16))
                          {
                            goto LABEL_112;
                          }

                          result = (*(v6 + 32))(v6);
                          if (result)
                          {
                            v55 = *(v6 + 8);
LABEL_112:
                            *(v6 + 8) = v55 + 1;
                            *v55 = v50;
                          }
                        }

LABEL_113:
                        v56 = *++v42;
                        v50 = v56;
                        if (!v56)
                        {
                          goto LABEL_184;
                        }
                      }
                    }

                    goto LABEL_184;
                  }

LABEL_162:
                  if (!a2 || (result = a2(*v17)) == 0)
                  {
                    v79 = *(v6 + 8);
                    if (v79 >= *(v6 + 16))
                    {
                      result = (*(v6 + 32))(v6);
                      if (!result)
                      {
                        goto LABEL_184;
                      }

                      v79 = *(v6 + 8);
                    }

                    *(v6 + 8) = v79 + 1;
                    *v79 = v25;
                    goto LABEL_184;
                  }

                  v74 = *result;
                  if (*result)
                  {
                    v75 = (result + 1);
                    while (1)
                    {
                      v76 = *(v6 + 8);
                      if (v76 < *(v6 + 16))
                      {
                        goto LABEL_169;
                      }

                      result = (*(v6 + 32))(v6);
                      if (result)
                      {
                        break;
                      }

LABEL_170:
                      v77 = *v75++;
                      v74 = v77;
                      if (!v77)
                      {
                        goto LABEL_184;
                      }
                    }

                    v76 = *(v6 + 8);
LABEL_169:
                    *(v6 + 8) = v76 + 1;
                    *v76 = v74;
                    goto LABEL_170;
                  }

LABEL_184:
                  v4 = (v17 + 1);
                  goto LABEL_185;
                }

                ++a4;
                v71 = v6;
LABEL_161:
                result = hex(v71);
                goto LABEL_184;
              }

              if (v25 == 117)
              {
                v72 = a4++;
                if (v22)
                {
                  v73 = *v72;
                }

                else
                {
                  v73 = *v72;
                }

                result = udec(v6, a2, v73, v24, v23);
                goto LABEL_184;
              }

              if (v25 != 120)
              {
                if (v25 == 121)
                {
                  v69 = a4++;
                  if (v22)
                  {
                    v70 = *v69;
                  }

                  else
                  {
                    v70 = *v69;
                  }

                  result = ydec(v6, a2, v70, v24, v23);
                  goto LABEL_184;
                }

                goto LABEL_162;
              }

LABEL_156:
              ++a4;
              v71 = v6;
              goto LABEL_161;
            }

            if (*v17 > 0x57u)
            {
              break;
            }

            if (v25 - 49 >= 9)
            {
              if (v25 != 48)
              {
                goto LABEL_162;
              }

              ++v23;
              v28 = *++v17;
              v25 = v28;
            }

            if (v25 - 48 <= 9)
            {
              do
              {
                v26 = v25 - 48;
                v27 = *++v17;
                LOBYTE(v25) = v27;
                v24 = 10 * v24 + v26;
              }

              while ((v27 - 48) < 0xA);
            }

LABEL_38:
            result = _platform_strncmp(v17, ".*s", 3uLL);
            if (!result)
            {
              goto LABEL_52;
            }
          }

          if (*v17 > 0x63u)
          {
            if (v25 == 100 || v25 == 105)
            {
              ++a4;
              result = dec(v6);
              goto LABEL_184;
            }

            goto LABEL_162;
          }

          if (v25 == 88)
          {
            goto LABEL_156;
          }

          if (v25 != 99)
          {
            goto LABEL_162;
          }

          if (v24 >= 2)
          {
            if (v23)
            {
              v57 = 48;
            }

            else
            {
              v57 = 32;
            }

            do
            {
              if (a2 && (result = a2(v57)) != 0)
              {
                v58 = *result;
                if (*result)
                {
                  v59 = (result + 1);
                  while (1)
                  {
                    v60 = *(v6 + 8);
                    if (v60 < *(v6 + 16))
                    {
                      goto LABEL_129;
                    }

                    result = (*(v6 + 32))(v6);
                    if (result)
                    {
                      break;
                    }

LABEL_130:
                    v61 = *v59++;
                    v58 = v61;
                    if (!v61)
                    {
                      goto LABEL_136;
                    }
                  }

                  v60 = *(v6 + 8);
LABEL_129:
                  *(v6 + 8) = v60 + 1;
                  *v60 = v58;
                  goto LABEL_130;
                }
              }

              else
              {
                v62 = *(v6 + 8);
                if (v62 < *(v6 + 16))
                {
                  goto LABEL_135;
                }

                result = (*(v6 + 32))(v6);
                if (result)
                {
                  v62 = *(v6 + 8);
LABEL_135:
                  *(v6 + 8) = v62 + 1;
                  *v62 = v57;
                }
              }

LABEL_136:
              v16 = v24-- <= 2;
            }

            while (!v16);
          }

          v63 = a4++;
          v64 = *v63;
          if (!a2 || (result = a2(*v63)) == 0)
          {
            v78 = *(v6 + 8);
            if (v78 >= *(v6 + 16))
            {
              result = (*(v6 + 32))(v6);
              if (!result)
              {
                goto LABEL_184;
              }

              v78 = *(v6 + 8);
            }

            *(v6 + 8) = v78 + 1;
            *v78 = v64;
            goto LABEL_184;
          }

          v65 = *result;
          if (!*result)
          {
            goto LABEL_184;
          }

          v66 = (result + 1);
          while (1)
          {
            v67 = *(v6 + 8);
            if (v67 < *(v6 + 16))
            {
              goto LABEL_145;
            }

            result = (*(v6 + 32))(v6);
            if (result)
            {
              break;
            }

LABEL_146:
            v68 = *v66++;
            v65 = v68;
            if (!v68)
            {
              goto LABEL_184;
            }
          }

          v67 = *(v6 + 8);
LABEL_145:
          *(v6 + 8) = v67 + 1;
          *v67 = v65;
          goto LABEL_146;
        }

LABEL_52:
        v30 = a4;
        v31 = *a4;
        a4 += 2;
        if (v31 < 1)
        {
LABEL_70:
          v17 += 2;
          goto LABEL_184;
        }

        v32 = v30[1];
        while (1)
        {
          v34 = *v32++;
          v33 = v34;
          if (a2 && (result = a2(v33)) != 0)
          {
            v35 = *result;
            if (*result)
            {
              v36 = (result + 1);
              while (1)
              {
                v37 = *(v6 + 8);
                if (v37 < *(v6 + 16))
                {
                  goto LABEL_61;
                }

                result = (*(v6 + 32))(v6);
                if (result)
                {
                  break;
                }

LABEL_62:
                v38 = *v36++;
                v35 = v38;
                if (!v38)
                {
                  goto LABEL_68;
                }
              }

              v37 = *(v6 + 8);
LABEL_61:
              *(v6 + 8) = v37 + 1;
              *v37 = v35;
              goto LABEL_62;
            }
          }

          else
          {
            v39 = *(v6 + 8);
            if (v39 < *(v6 + 16))
            {
              goto LABEL_67;
            }

            result = (*(v6 + 32))(v6);
            if (result)
            {
              v39 = *(v6 + 8);
LABEL_67:
              *(v6 + 8) = v39 + 1;
              *v39 = v33;
            }
          }

LABEL_68:
          v16 = v31-- <= 1;
          if (v16)
          {
            goto LABEL_70;
          }
        }
      }

      if (a2)
      {
        result = a2(37);
        if (result)
        {
          v18 = *result;
          if (*result)
          {
            v19 = (result + 1);
            while (1)
            {
              v20 = *(v6 + 8);
              if (v20 < *(v6 + 16))
              {
                goto LABEL_29;
              }

              result = (*(v6 + 32))(v6);
              if (result)
              {
                break;
              }

LABEL_30:
              v21 = *v19++;
              v18 = v21;
              if (!v21)
              {
                goto LABEL_51;
              }
            }

            v20 = *(v6 + 8);
LABEL_29:
            *(v6 + 8) = v20 + 1;
            *v20 = v18;
            goto LABEL_30;
          }

          goto LABEL_51;
        }
      }

      v29 = *(v6 + 8);
      if (v29 < *(v6 + 16))
      {
        goto LABEL_50;
      }

      result = (*(v6 + 32))(v6);
      if (result)
      {
        v29 = *(v6 + 8);
LABEL_50:
        *(v6 + 8) = v29 + 1;
        *v29 = 37;
      }

LABEL_51:
      v4 = (v7 + 2);
LABEL_185:
      if (!*v4)
      {
        return result;
      }
    }

    while (1)
    {
      v85 = *v4;
      if (!*v4)
      {
        return result;
      }

      if (a2 && (result = a2(*v4)) != 0)
      {
        v80 = *result;
        if (*result)
        {
          v81 = (result + 1);
          while (1)
          {
            v82 = *(v6 + 8);
            if (v82 < *(v6 + 16))
            {
              goto LABEL_194;
            }

            result = (*(v6 + 32))(v6);
            if (result)
            {
              break;
            }

LABEL_195:
            v83 = *v81++;
            v80 = v83;
            if (!v83)
            {
              goto LABEL_201;
            }
          }

          v82 = *(v6 + 8);
LABEL_194:
          *(v6 + 8) = v82 + 1;
          *v82 = v80;
          goto LABEL_195;
        }
      }

      else
      {
        v84 = *(v6 + 8);
        if (v84 >= *(v6 + 16))
        {
          result = (*(v6 + 32))(v6);
          if (!result)
          {
            goto LABEL_201;
          }

          v84 = *(v6 + 8);
        }

        *(v6 + 8) = v84 + 1;
        *v84 = v85;
      }

LABEL_201:
      ++v4;
    }
  }

  return result;
}

uint64_t Diagnostics::appendError(Diagnostics *this, char *a2, ...)
{
  va_start(va, a2);
  if (*this && *(this + 3) && *(this + 2))
  {
    va_copy(v15, va);
    va_copy(v16, va);
    v14 = 0;
    v4 = _simple_vsnprintf(&v14, 1uLL, a2, va);
    if (v4 <= -2)
    {
      Diagnostics::appendError();
    }

    v5 = v4;
    v6 = *(this + 3);
    v7 = *(this + 2) - v6;
    if (v7 >= v4 + 1)
    {
      v11 = *this;
    }

    else
    {
      v8 = (v6 + v4 + vm_page_size) & -vm_page_size;
      __dst = 0;
      if (vm_allocate(mach_task_self_, &__dst, v8, 1006632961))
      {
        Diagnostics::appendError();
      }

      if (*this)
      {
        v9 = *this;
      }

      else
      {
        v9 = 0;
      }

      memmove(__dst, v9, *(this + 2));
      if (*this)
      {
        v12 = *this;
      }

      else
      {
        v12 = 0;
      }

      vm_deallocate(mach_task_self_, v12, *(this + 2));
      if (__dst)
      {
        v11 = __dst;
      }

      else
      {
        v11 = 0;
      }

      *this = v11;
      *(this + 2) = v8;
      LODWORD(v6) = *(this + 3);
      v7 = v8 - v6;
    }

    result = _simple_vsnprintf(v11 + (v6 - 1), v7, a2, v15);
    if ((result & 0x80000000) != 0)
    {
      Diagnostics::appendError();
    }

    if (result != v5)
    {
      Diagnostics::appendError();
    }

    *(this + 3) += v5;
  }

  else
  {
    va_copy(v16, va);
    return Diagnostics::error(this, a2, va);
  }

  return result;
}

dyld4::Loader *dyld4::Loader::makeDyldCacheLoader(Diagnostics *a1, dyld4::RuntimeState *a2, char *a3, uint64_t a4, int a5)
{
  if (*(a4 + 5))
  {
    return 0;
  }

  v7 = a4;
  PrebuiltLoader = dyld4::RuntimeState::findPrebuiltLoader(a2, a3);
  if (PrebuiltLoader && ((v5 = PrebuiltLoader, v12 = dyld4::PrebuiltLoader::mf(PrebuiltLoader, a2), v13 = *(a2 + 1), v16 = *(v13 + 112), v17 = *(v13 + 120), !a3) ? (v14 = 0) : (v14 = _platform_strlen(a3)), mach_o::Header::loadableIntoProcess(v12, &v16, a3, v14)))
  {
    if (*(*(a2 + 1) + 328) == 1)
    {
      dyld4::RuntimeState::log(a2, "  found: prebuilt-dylib-from-cache: (0x%04X) %s\n", a5, a3);
    }
  }

  else
  {
    if (*(*(a2 + 1) + 328) == 1)
    {
      dyld4::RuntimeState::log(a2, "  found: dylib-from-cache: (0x%04X) %s\n", a5, a3);
    }

    return dyld4::JustInTimeLoader::makeJustInTimeLoaderDyldCache(a1, a2, a3, v7, a5);
  }

  return v5;
}

dyld4::PrebuiltLoader *dyld4::RuntimeState::findPrebuiltLoader(dyld4::RuntimeState *this, const char *__s2)
{
  v9 = 0;
  if (!*(this + 119) || !DyldSharedCache::hasImagePath(*(*(this + 1) + 368), __s2, &v9))
  {
    goto LABEL_5;
  }

  v4 = *(this + 119);
  if (*(v4 + 12) <= v9)
  {
    dyld4::RuntimeState::findPrebuiltLoader();
  }

  v5 = (v4 + *(v4 + *(v4 + 16) + 4 * v9));
  if ((dyld4::PrebuiltLoader::isValid(v5, this) & 1) == 0)
  {
LABEL_5:
    v6 = *(this + 122);
    if (!v6)
    {
      return 0;
    }

    Loader = dyld4::PrebuiltLoaderSet::findLoader(v6, this, __s2);
    if (!Loader)
    {
      return 0;
    }

    v5 = Loader;
    if ((dyld4::PrebuiltLoader::isValid(Loader, this) & 1) == 0)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t ___ZN5dyld44APIs17findImageMappedAtEPKvPPKN5dyld311MachOLoadedEPbPPKcPS2_PyPhPPKNS_6LoaderE_block_invoke_3(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 6);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + 5);
    v5 = 8 * v2;
    v6 = v4;
    while (1)
    {
      v7 = *v6;
      if (((*(*v6 + 2) >> 1) & 1) == *(v3 + 112))
      {
        v8 = *v6;
        v15 = 0;
        v16 = 0;
        v14 = 0;
        result = dyld4::Loader::contains(v7, v1, *(v3 + 48), &v16, &v15, &v14);
        if (result)
        {
          break;
        }
      }

      ++v6;
      ++v4;
      v5 -= 8;
      if (!v5)
      {
        return result;
      }
    }

    if (*(v3 + 56))
    {
      result = dyld4::Loader::loadAddress(v8, v1);
      **(v3 + 56) = result;
    }

    v9 = *(v3 + 64);
    if (v9)
    {
      *v9 = (*(v8 + 4) & 0x20) != 0;
    }

    if (*(v3 + 72))
    {
      result = dyld4::Loader::path(v8, v1);
      **(v3 + 72) = result;
    }

    v10 = *(v3 + 80);
    if (v10)
    {
      *v10 = v16;
    }

    v11 = *(v3 + 88);
    if (v11)
    {
      *v11 = v15;
    }

    v12 = *(v3 + 96);
    if (v12)
    {
      *v12 = v14;
    }

    v13 = *(v3 + 104);
    if (v13)
    {
      *v13 = v8;
    }

    *(*(*(v3 + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t dyld4::JustInTimeLoader::contains(dyld4::JustInTimeLoader *this, dyld4::RuntimeState *a2, unint64_t a3, const void **a4, unint64_t *a5, unsigned __int8 *a6)
{
  v6 = *(this + 4);
  if (v6 <= a3)
  {
    v8 = *(this + 13);
    if (v8 && *v8 <= a3 && *v8 + v8[1] > a3)
    {
      v7 = 1;
    }

    else
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2000000000;
      v14 = 0;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 0x40000000;
      v10[2] = ___ZNK5dyld416JustInTimeLoader8containsERNS_12RuntimeStateEPKvPS4_PyPh_block_invoke;
      v10[3] = &unk_A1AA8;
      v10[6] = a3;
      v10[7] = a4;
      v10[8] = a5;
      v10[9] = a6;
      v10[4] = &v11;
      v10[5] = v6 - mach_o::Header::preferredLoadAddress(v6);
      mach_o::Header::forEachSegment(v6, v10);
      v7 = *(v12 + 24);
      _Block_object_dispose(&v11, 8);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

vm_address_t *_simple_sfree(vm_address_t *address)
{
  if (address)
  {
    v1 = address;
    if (((vm_page_size - 1) & *address) != 0)
    {
      v2 = address[2] - address + 1;
    }

    else
    {
      vm_deallocate(mach_task_self_, *address, address[2] - *address + 1);
      v2 = vm_page_size;
    }

    v3 = mach_task_self_;

    return vm_deallocate(v3, v1, v2);
  }

  return address;
}

uint64_t ___ZNK5dyld416JustInTimeLoader8containsERNS_12RuntimeStateEPKvPS4_PyPh_block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v3 = *(result + 48);
  v4 = *(result + 40) + *(a2 + 16);
  if (v4 <= v3)
  {
    v5 = *(a2 + 24);
    if (v3 < v5 + v4)
    {
      **(result + 56) = v4;
      v6 = *(result + 72);
      **(result + 64) = v5;
      *v6 = *(a2 + 47);
      *(*(*(result + 32) + 8) + 24) = 1;
      *a3 = 1;
    }
  }

  return result;
}

uint64_t dyld4::APIs::_dyld_get_image_slide(dyld4::APIs *this, mach_header *a2)
{
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "_dyld_get_image_slide(%p)", a2);
  }

  hasMachOMagic = dyld3::MachOFile::hasMachOMagic(a2);
  v6 = *(this + 1);
  if (hasMachOMagic)
  {
    if (DyldSharedCache::inDyldCache(*(v6 + 368), a2, v5))
    {
      v6 = *(this + 1);
      Slide = *(v6 + 392);
    }

    else
    {
      Slide = dyld3::MachOLoaded::getSlide(a2);
      v6 = *(this + 1);
    }
  }

  else
  {
    Slide = 0;
  }

  if (*(v6 + 324) == 1)
  {
    dyld4::RuntimeState::log(this, " => 0x%lX\n", Slide);
  }

  return Slide;
}

uint64_t dyld4::APIs::dyld_process_is_restricted(dyld4::APIs *this)
{
  v1 = *(this + 1);
  if (*(v1 + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "dyld_process_is_restricted()");
    v3 = *(this + 1);
    v4 = *(v3 + 307) ^ 1;
    if (*(v3 + 324))
    {
      dyld4::RuntimeState::log(this, " => %d\n", v4 & 1);
    }
  }

  else
  {
    v4 = *(v1 + 307) ^ 1;
  }

  return v4 & 1;
}

__n128 dyld4::JustInTimeLoader::fileID@<Q0>(dyld4::JustInTimeLoader *this@<X0>, uint64_t a2@<X8>)
{
  result = *(this + 56);
  v3 = *(this + 72);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void dyld4::APIs::_libdyld_initialize(dyld4::APIs *this)
{
  v2 = lsl::MemoryManager::memoryManager(this);
  v3 = *(v2 + 6);
  if (v3 && lsl::ProtectedStack::onStackInAnyFrameInThisThread(v3))
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v10 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v10 & 0xFE) == 2)
        {
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
          __isb(0xFu);
          v11 = MEMORY[0xFFFFFC0D0];
          if (v11 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            v12 = *(v2 + 6);
            v22[0] = _NSConcreteStackBlock;
            v22[1] = 0x40000000;
            v22[2] = ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld44APIs19_libdyld_initializeEvE3__0EEvT__block_invoke;
            v22[3] = &__block_descriptor_tmp_214;
            v22[4] = this;
            lsl::ProtectedStack::withNestedProtectedStack(v12, v22, v4, v5, v6, v7, v8, v9, v21);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v13 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v13 & 0xFE) == 2)
                {
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
                  __isb(0xFu);
                  v14 = MEMORY[0xFFFFFC0D8];
                  if (v14 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_33:
    __break(1u);
    return;
  }

  if (*(v2 + 33) == 1)
  {
    if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
    {
      goto LABEL_33;
    }

    if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
    {
      **(this + 14) = *(this + 10);

      dyld4::RuntimeState::initialize(this);
    }

    else
    {
      if (!MEMORY[0xFFFFFC10C])
      {
        goto LABEL_33;
      }

      if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
      {
        goto LABEL_33;
      }

      v15 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v15 & 0xFE) != 2)
      {
        goto LABEL_33;
      }

      _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
      __isb(0xFu);
      v16 = MEMORY[0xFFFFFC0D0];
      if (v16 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
      {
        goto LABEL_33;
      }

      **(this + 14) = *(this + 10);
      dyld4::RuntimeState::initialize(this);
      if (!MEMORY[0xFFFFFC10C])
      {
        goto LABEL_33;
      }

      if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
      {
        goto LABEL_33;
      }

      v17 = MEMORY[0xFFFFFC10C];
      __dmb(0xAu);
      if ((v17 & 0xFE) != 2)
      {
        goto LABEL_33;
      }

      _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
      __isb(0xFu);
      v18 = MEMORY[0xFFFFFC0D8];
      if (v18 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    lsl::MemoryManager::lockGuard(v22, v2);
    v19 = *(v2 + 3);
    if (!v19)
    {
      lsl::MemoryManager::writeProtect(v2, 0);
      v19 = *(v2 + 3);
    }

    *(v2 + 3) = v19 + 1;
    lsl::Lock::unlock(v22[0]);
    **(this + 14) = *(this + 10);
    dyld4::RuntimeState::initialize(this);
    lsl::MemoryManager::lockGuard(v22, v2);
    v20 = *(v2 + 3) - 1;
    *(v2 + 3) = v20;
    if (!v20)
    {
      lsl::MemoryManager::writeProtect(v2, 1);
    }

    lsl::Lock::unlock(v22[0]);
  }
}

uint64_t dyld4::LibSystemHelpersWrapper::pthread_key_create_free(dyld4::LibSystemHelpersWrapper *this, unint64_t *a2)
{
  v28 = a2;
  v11 = lsl::MemoryManager::memoryManager(this);
  result = *(v11 + 6);
  if (result)
  {
    result = lsl::ProtectedStack::onStackInCurrentFrame(result, v4, v5, v6, v7, v8, v9, v10, v26);
    if (result)
    {
      v19 = *(v11 + 6);
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 0x40000000;
      v29[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld423LibSystemHelpersWrapper23pthread_key_create_freeEPmEUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeES8__block_invoke;
      v29[3] = &__block_descriptor_tmp_163;
      v29[4] = this;
      v29[5] = &v28;
      return lsl::ProtectedStack::withNestedRegularStack(v19, v29, v13, v14, v15, v16, v17, v18, v27);
    }
  }

  if (*(v11 + 33) != 1)
  {
    goto LABEL_8;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v22 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v22 & 0xFE) == 2)
        {
          result = MEMORY[0xFFFFFC0D8];
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v23 = MEMORY[0xFFFFFC0D8];
          if (v23 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            result = (*(**this + 48))(*this, a2);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v24 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v24 & 0xFE) == 2)
                {
                  v20 = result;
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v25 = MEMORY[0xFFFFFC0D0];
                  if (v25 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return v20;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_20;
  }

LABEL_8:
  v21 = *(**this + 48);

  return v21();
}

dyld4::PrebuiltLoader *dyld4::Loader::makeDiskLoader(Diagnostics *a1, dyld4::RuntimeState *this, char *__s2, _BYTE *a4, int a5, unsigned int a6, uint64_t a7)
{
  if (a4[5])
  {
    return 0;
  }

  v19 = v7;
  v20 = v8;
  result = dyld4::RuntimeState::findPrebuiltLoader(this, __s2);
  if (!result)
  {
    if (a5)
    {
      v17 = *(this + 1);
      if (*(v17 + 221) == 1)
      {
        v18 = 0;
        if (dyld4::ProcessConfig::DyldCache::indexOfPath((v17 + 368), __s2, &v18))
        {
          a6 = v18;
        }
      }
    }

    return dyld4::JustInTimeLoader::makeJustInTimeLoaderDisk(a1, this, __s2, a4, a5, a6, a7);
  }

  return result;
}

uint64_t dyld4::JustInTimeLoader::makeJustInTimeLoaderDisk(Diagnostics *a1, uint64_t a2, dyld3 *a3, _BYTE *a4, char a5, int a6, uint64_t a7)
{
  v48 = 0;
  v49 = &v48;
  v50 = 0x2000000000;
  v51 = 0;
  v14 = *(a2 + 8);
  v15 = *(*(v14 + 208) + 12);
  v47 = -1;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  if (v15)
  {
    v16 = &v43;
  }

  else
  {
    v16 = 0;
  }

  v17 = dyld4::SyscallDelegate::mapFileReadOnly(v14, a1, a3, &v47, &v46, &v44, v16, v69);
  if (!v17)
  {
    goto LABEL_20;
  }

  v18 = v17;
  v41 = 0;
  v42 = 0;
  v19 = *(a2 + 8);
  *v65 = *(v19 + 112);
  v66 = *(v19 + 120);
  v20 = dyld3::MachOFile::compatibleSlice(a1, &v42, &v41, v17, v46, a3, v65, v43, *(v19 + 208), *(v19 + 289));
  if (v20)
  {
    v21 = v20;
    if (dyld3::MachOFile::isDylib(v20))
    {
      if ((a4[7] & 1) == 0)
      {
        Diagnostics::error(a1, "cannot load dylib '%s'");
      }
    }

    else if (dyld3::MachOFile::isBundle(v21))
    {
      if ((a4[8] & 1) == 0)
      {
        Diagnostics::error(a1, "cannot link against bundle '%s'");
      }
    }

    else if (dyld3::MachOFile::isMainExecutable(v21))
    {
      if ((a4[9] & 1) == 0)
      {
        if (a4[1] == 1)
        {
          Diagnostics::error(a1, "cannot link against a main executable '%s'");
        }

        else
        {
          Diagnostics::error(a1, "cannot dlopen a main executable '%s'");
        }
      }
    }

    else
    {
      Diagnostics::error(a1, "unloadable mach-o file type %d '%s'");
    }

    if (!Diagnostics::hasError(a1))
    {
      if (mach_o::Header::noDynamicAccess(v21) && (a4[1] & 1) == 0)
      {
        Diagnostics::error(a1, "cannot dlopen() image marked for no dynamic access '%s'", a3);
      }

      else
      {
        mach_o::Header::valid(v21, v46, v65);
        if (*v65)
        {
          v24 = mach_o::Error::message(v65);
          Diagnostics::error(a1, "%s", v24);
          dyld4::SyscallDelegate::unmapFile(*(a2 + 8), v18, v46);
          close(v47);
          v22 = v49[3];
          mach_o::Error::~Error(v65);
          goto LABEL_21;
        }

        mach_o::Error::~Error(v65);
        v38 = a4[4];
        if (a4[10])
        {
          v37 = 0;
        }

        else if (*a4)
        {
          v37 = 1;
        }

        else
        {
          v37 = dyld3::MachOAnalyzer::neverUnload(v21);
        }

        v25 = dyld3::MachOFile::mappedSize(v21);
        v36 = BYTE8(v45);
        v39 = v21 - v18;
        v34 = v44;
        v35 = v25;
        v33 = v45;
        hasCodeSignature = mach_o::Header::hasCodeSignature(v21, v40, &v40[1]);
        v27 = hasCodeSignature;
        if (!hasCodeSignature || !v40[1])
        {
          goto LABEL_37;
        }

        *v67 = 0;
        v68 = 0;
        mach_o::Header::getUuid(v21, v67);
        dyld4::Loader::uuidToStr(v67, v65, v28);
        v29 = dyld4::SyscallDelegate::registerSignature(*(a2 + 8), a1, v69, v65, v47, v39, v40[0], v40[1]);
        dyld4::SyscallDelegate::unmapFile(*(a2 + 8), v18, v46);
        if (!v29)
        {
          goto LABEL_19;
        }

        v30 = dyld4::SyscallDelegate::mmap(*(a2 + 8), 0, v46, 1, 2, v47, 0);
        if (v30 == -1)
        {
          v31 = v46;
          v32 = __error();
          Diagnostics::error(a1, "mmap for %s (size=0x%0lX) failed with errno=%d", a3, v31, *v32);
          goto LABEL_19;
        }

        v18 = v30;
        v21 = (v30 + v42);
        if ((v30 + v42))
        {
LABEL_37:
          v52[0] = _NSConcreteStackBlock;
          v52[1] = 0x40000000;
          v52[2] = ___ZN5dyld416JustInTimeLoader24makeJustInTimeLoaderDiskER11DiagnosticsRNS_12RuntimeStateEPKcRKNS_6Loader11LoadOptionsEbjPKN6mach_o6LayoutE_block_invoke;
          v52[3] = &unk_A1C90;
          v52[6] = a2;
          v52[7] = v69;
          v58 = v47;
          v59 = *v40;
          v61 = v27;
          v62 = v37;
          v52[8] = v35;
          v52[9] = v39;
          v52[11] = v34;
          v52[12] = v33;
          v53 = v36;
          v52[4] = &v48;
          v52[5] = a1;
          v55 = v45;
          v54 = v44;
          v63 = v38;
          v64 = a5;
          v60 = a6;
          v56 = a7;
          v57 = a4;
          dyld4::JustInTimeLoader::withRegions(v21, v52);
        }
      }
    }
  }

  dyld4::SyscallDelegate::unmapFile(*(a2 + 8), v18, v46);
LABEL_19:
  close(v47);
LABEL_20:
  v22 = v49[3];
LABEL_21:
  _Block_object_dispose(&v48, 8);
  return v22;
}

unint64_t dyld3::MachOFile::mappedSize(dyld3::MachOFile *this)
{
  v3 = 0;
  dyld3::MachOFile::analyzeSegmentsLayout(this, &v3, &v2);
  return v3;
}

void dyld3::MachOFile::analyzeSegmentsLayout(dyld3::MachOFile *this, unint64_t *a2, BOOL *a3)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = -1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = ___ZNK5dyld39MachOFile21analyzeSegmentsLayoutERyRb_block_invoke;
  v10[3] = &unk_A3740;
  v10[4] = &v23;
  v10[5] = &v19;
  v10[6] = &v15;
  v10[7] = &v11;
  mach_o::Header::forEachSegment(this, v10);
  v6 = *(this + 1);
  if (v6 == 33554444 || v6 == 16777228 || v6 == 12 && *(this + 3) != 11 && *(this + 2) == 12)
  {
    v7 = 0x3FFFLL;
  }

  else
  {
    v7 = 4095;
  }

  v8 = (v16[3] - v20[3] + v7) & ~v7;
  v9 = v12[3];
  *a2 = v8;
  *a3 = *(v24 + 24) | (v8 != v9);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
}

void *___ZNK5dyld39MachOFile21analyzeSegmentsLayoutERyRb_block_invoke(void *result, uint64_t a2)
{
  if (*(a2 + 8) != 10 || (**a2 == 0x455A454741505F5FLL ? (v2 = *(*a2 + 8) == 20306) : (v2 = 0), !v2))
  {
    if ((*(a2 + 47) & 2) != 0)
    {
      v3 = *(a2 + 36);
      v4 = *(a2 + 24);
      if (v4 != v3)
      {
        *(*(result[4] + 8) + 24) = 1;
        v3 = v4;
      }
    }

    else
    {
      v3 = *(a2 + 24);
    }

    if (!v3)
    {
      *(*(result[4] + 8) + 24) = 1;
    }

    v5 = *(a2 + 16);
    v6 = *(result[5] + 8);
    if (v5 < *(v6 + 24))
    {
      *(v6 + 24) = v5;
      v5 = *(a2 + 16);
      v3 = *(a2 + 24);
    }

    v7 = v3 + v5;
    v8 = *(result[6] + 8);
    if (v7 > *(v8 + 24))
    {
      *(v8 + 24) = v7;
      v3 = *(a2 + 24);
    }

    *(*(result[7] + 8) + 24) += v3;
  }

  return result;
}

uint64_t mach_o::Header::hasCodeSignature(mach_o::Header *this, unsigned int *a2, unsigned int *a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = ___ZNK6mach_o6Header16hasCodeSignatureERjS1__block_invoke;
  v9[3] = &unk_A5288;
  v9[5] = a2;
  v9[6] = a3;
  v9[4] = &v10;
  mach_o::Header::forEachLoadCommand(this, v9, &v6);
  mach_o::Error::~Error(&v6);
  if (*(this + 1) == 16777223 && (mach_o::Header::platformAndVersions(&v6, this), v6 == &mach_o::PlatformInfo_macOS::singleton) && !v7 && v8 >> 8 < 0xA09)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v11 + 24);
  }

  _Block_object_dispose(&v10, 8);
  return v4 & 1;
}

uint64_t dyld4::FileManager::uuidForFileSystem(dyld4::FileManager *this, unsigned int a2)
{
  v3 = *(this + 2);
  *&v23[8] = 0;
  *&v23[16] = 0;
  v4 = a2;
  *v23 = a2;
  lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::find(v3, v23, &v12);
  v26[4] = v17;
  v26[5] = v18;
  v26[6] = v19;
  v25 = v12;
  v26[0] = v13;
  v26[1] = v14;
  v26[2] = v15;
  v26[3] = v16;
  *&v28[7] = *&v21[7];
  v27 = v20;
  *v28 = *v21;
  v29 = v22;
  v5 = *(this + 2);
  memset(v23, 0, 135);
  v12 = v5;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  if (!lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator<=>(&v25, &v12))
  {
    dyld4::FileManager::reloadFSInfos(this);
    v6 = *(this + 2);
    v31 = 0;
    v32 = 0;
    v30 = v4;
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::find(v6, &v30, &v12);
    *&v23[72] = v17;
    *&v23[88] = v18;
    *&v23[104] = v19;
    *v23 = v12;
    *&v23[8] = v13;
    *&v23[24] = v14;
    *&v23[40] = v15;
    *&v23[56] = v16;
    *&v23[135] = *&v21[7];
    *&v23[120] = v20;
    *&v23[128] = *v21;
    v24 = v22;
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::swap(&v25, v23);
  }

  v7 = *(this + 2);
  memset(v23, 0, 135);
  v12 = v7;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  if (!lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator<=>(&v25, &v12))
  {
    v8 = *(this + 2);
    *&v23[8] = 0;
    *&v23[16] = 0;
    *v23 = v4;
    lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::insert(v8, v23, &v12);
    v9 = *(this + 2);
    v31 = 0;
    v32 = 0;
    v30 = v4;
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::find(v9, &v30, &v12);
    *&v23[72] = v17;
    *&v23[88] = v18;
    *&v23[104] = v19;
    *v23 = v12;
    *&v23[8] = v13;
    *&v23[24] = v14;
    *&v23[40] = v15;
    *&v23[56] = v16;
    *&v23[135] = *&v21[7];
    *&v23[120] = v20;
    *&v23[128] = *v21;
    v24 = v22;
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::swap(&v25, v23);
  }

  v10 = *(this + 2);
  memset(v23, 0, 135);
  v12 = v10;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  if (!lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator<=>(&v25, &v12))
  {
    dyld4::FileManager::uuidForFileSystem();
  }

  return *(*(v26 + v29 - 1) + 24 * v28[v29 - 1] + 8);
}

uint64_t ___ZNK6mach_o6Header16hasCodeSignatureERjS1__block_invoke(uint64_t result, _DWORD *a2, _BYTE *a3)
{
  if (*a2 == 29)
  {
    v3 = *(result + 48);
    **(result + 40) = a2[2];
    *v3 = a2[3];
    *(*(*(result + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

double lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::find@<D0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::const_iterator(&v23, a1, a2);
  v13 = a1;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  if (lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator<=>(&v23, &v13) && (v6 = v32, *a2 >= *(*(v24 + v32 - 1) + 24 * v31[v32 - 1])))
  {
    v8 = v28;
    *(a3 + 72) = v27;
    *(a3 + 88) = v8;
    *(a3 + 104) = v29;
    v9 = v24[1];
    *(a3 + 8) = v24[0];
    *(a3 + 24) = v9;
    result = *&v25;
    v10 = v26;
    *(a3 + 40) = v25;
    *a3 = v23;
    v11 = v30;
    *(a3 + 56) = v10;
    *(a3 + 135) = *&v31[7];
    v12 = *v31;
    *(a3 + 120) = v11;
    *(a3 + 128) = v12;
    *(a3 + 143) = v6;
  }

  else
  {
    *a3 = a1;
    result = 0.0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 136) = 0;
  }

  return result;
}

dyld4::FileRecord *dyld4::FileRecord::FileRecord(dyld4::FileRecord *this, dyld4::FileManager *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 3) = dyld4::FileManager::uuidForFileSystem(a2, a4);
  *(this + 4) = v7;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = a5;
  *(this + 8) = 0x1FFFFFFFFLL;
  *(this + 36) = 0;
  *(this + 74) = 1;
  if (*(this + 1) && a5 && *(this + 2))
  {
    *(this + 17) = 0;
  }

  return this;
}

uint64_t lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::const_iterator(uint64_t result, uint64_t *a2, unint64_t *a3)
{
  *result = a2;
  *(result + 8) = 0u;
  v3 = result + 8;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 88) = 0u;
  *(result + 104) = 0u;
  *(result + 120) = 0u;
  *(result + 136) = 0;
  if (*(a2 + 32))
  {
    v4 = 0;
    v5 = *a2;
    v6 = result + 128;
    do
    {
      *(v3 + 8 * v4) = v5;
      v7 = *(v5 + 240) & 0x7F;
      if ((*(v5 + 240) & 0x7F) != 0)
      {
        v8 = v5;
        do
        {
          v9 = v7 >> 1;
          v10 = &v8[3 * (v7 >> 1)];
          v12 = *v10;
          v11 = v10 + 3;
          v7 += ~(v7 >> 1);
          if (v12 < *a3)
          {
            v8 = v11;
          }

          else
          {
            v7 = v9;
          }
        }

        while (v7);
      }

      else
      {
        v8 = (v5 + 24 * (*(v5 + 240) & 0x7F));
      }

      v13 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v5) >> 3);
      *(v6 + v4) = v13;
      v14 = *(v3 + 8 * v4);
      if ((*(v14 + 240) & 0x7F) != v13 && *(v14 + 24 * v13) < *a3)
      {
        *(result + 143) = v4 + 1;
        return result;
      }

      v15 = *(a2 + 32);
      if (v4 + 1 != v15)
      {
        if ((*(v14 + 240) & 0x80) != 0)
        {
          lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
        }

        v5 = *(v14 + 8 * v13 + 168);
      }

      ++v4;
    }

    while (v4 < v15);
    for (*(result + 143) = v15; v15; *(result + 143) = v15)
    {
      if (*(v6 + v15 - 1) != (*(*(result + 8 * v15) + 240) & 0x7F))
      {
        break;
      }

      LOBYTE(v15) = v15 - 1;
    }
  }

  return result;
}

uint64_t lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator<=>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 143);
  v3 = *(a1 + 143);
  if (v2 >= v3)
  {
    v4 = *(a1 + 143);
  }

  else
  {
    v4 = *(a2 + 143);
  }

  if (v4)
  {
    v5 = (a1 + 128);
    v6 = (a2 + 128);
    while (1)
    {
      v8 = *v5++;
      v7 = v8;
      v9 = *v6++;
      v10 = v7 >= v9;
      if (v7 != v9)
      {
        break;
      }

      if (!--v4)
      {
        goto LABEL_8;
      }
    }

    if (v10)
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
LABEL_8:
    v11 = v3 == v2;
    if (v3 < v2)
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

void dyld4::FileManager::reloadFSInfos(dyld4::SyscallDelegate **this)
{
  memset(v19, 0, sizeof(v19));
  v22 = v19;
  *&v23 = 272;
  if ((lsl::MemoryManager::Buffer::align(&v22, 16, 0x30uLL) & 1) == 0)
  {
    __stackAllocatorInternal();
  }

  v2 = v22;
  lsl::MemoryManager::Buffer::consumeSpace(&v22, 0x30uLL);
  if ((lsl::MemoryManager::Buffer::align(&v22, 16, 0x40uLL) & 1) == 0)
  {
    __stackAllocatorInternal();
  }

  v3 = v22;
  lsl::MemoryManager::Buffer::consumeSpace(&v22, 0x40uLL);
  v4 = lsl::MemoryManager::Buffer::align(&v22, 16, v23 - 16);
  if ((v4 & 1) == 0)
  {
    __stackAllocatorInternal();
  }

  lsl::MemoryManager::memoryManager(v4);
  lsl::Allocator::Allocator(v2);
  lsl::Allocator::Pool::Pool(v3, v2, 0, v22, v23, v22, v23, 0, 0);
  lsl::Allocator::setInitialPool(v2, v3);
  v5 = dyld4::SyscallDelegate::getfsstat(*this, 0, 0, 2);
  if (v5 != -1)
  {
    LODWORD(v6) = v5;
    while (1)
    {
      v7 = lsl::Allocator::malloc(v2, 2168 * v6);
      if (dyld4::SyscallDelegate::getfsstat(*this, v7, 2168 * v6, 2) == v6)
      {
        break;
      }

      lsl::Allocator::free(v2, v7);
      LODWORD(v6) = dyld4::SyscallDelegate::getfsstat(*this, 0, 0, 2);
      if (v6 == -1)
      {
        goto LABEL_23;
      }
    }

    if (v6 >= 1)
    {
      _X21 = v7;
      v6 = v6;
      do
      {
        __asm { PRFM            #0, [X21,#0x1998] }

        v14 = _X21->f_fsid.val[0];
        v15 = this[2];
        *&v40[8] = 0;
        *&v40[16] = 0;
        *v40 = v14;
        lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::find(v15, v40, &v22);
        v33 = v22;
        v36[2] = v27;
        v36[3] = v28;
        v36[4] = v29;
        v34 = v23;
        v35 = v24;
        v36[0] = v25;
        v36[1] = v26;
        *&v38[7] = *&v31[7];
        v37 = v30;
        *v38 = *v31;
        v39 = v32;
        v16 = this[2];
        v45 = 0u;
        memset(v46, 0, sizeof(v46));
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        memset(v40, 0, sizeof(v40));
        v22 = v16;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0;
        memset(v31, 0, sizeof(v31));
        v32 = 0;
        if (!lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator<=>(&v33, &v22))
        {
          if ((_X21->f_flags & 0x4000) != 0)
          {
            *v40 = 5;
            *&v40[12] = 0;
            *&v40[16] = 0;
            *&v40[4] = 0x8006000000000006;
            if (!dyld4::SyscallDelegate::getattrlist(*this, _X21->f_mntonname, v40, &v33, 0x40uLL, 0) && (BYTE8(v34) & 1) != 0)
            {
              v17 = this[2];
              v20 = v14;
              v21 = *(v36 + 8);
            }

            else
            {
              v17 = this[2];
              v21 = 0uLL;
              v20 = v14;
            }

            v18 = &v20;
          }

          else
          {
            v17 = this[2];
            v34 = 0uLL;
            v33 = v14;
            v18 = &v33;
          }

          lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::insert(v17, v18, &v22);
        }

        ++_X21;
        --v6;
      }

      while (v6);
    }

    lsl::Allocator::free(v2, v7);
  }

LABEL_23:
  lsl::Allocator::~Allocator(v2);
}

void dyld4::JustInTimeLoader::withRegions(mach_o::Header *a1, uint64_t a2)
{
  Address = mach_o::Header::preferredLoadAddress(a1);
  mach_o::Header::segmentCount(a1);
  v5 = __chkstk_darwin();
  v10 = 0;
  v11 = &v10;
  v12 = 0x4002000000;
  v13 = __Block_byref_object_copy__74;
  v14 = __Block_byref_object_dispose__75;
  v15 = v8 - v6;
  v16 = v7;
  v17 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = ___ZN5dyld416JustInTimeLoader11withRegionsEPKN5dyld39MachOFileEU13block_pointerFvRKNS1_5ArrayINS_6Loader6RegionEEEE_block_invoke;
  v8[3] = &unk_A1C68;
  v9 = v5;
  v8[4] = &v10;
  v8[5] = Address;
  mach_o::Header::forEachSegment(a1, v8);
  (*(a2 + 16))(a2, v11 + 5);
  _Block_object_dispose(&v10, 8);
}

uint64_t mach_o::Header::segmentCount(mach_o::Header *this)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = ___ZNK6mach_o6Header12segmentCountEv_block_invoke;
  v3[3] = &unk_A53D8;
  v3[4] = &v4;
  mach_o::Header::forEachLoadCommand(this, v3, &v8);
  mach_o::Error::~Error(&v8);
  v1 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v1;
}

int getfsstat64(statfs *a1, int a2, int a3)
{
  v9 = mac_syscall(SYS_getfsstat64, a1, *&a2, *&a3, v4, v5, v6, v7, v8);
  if (v3)
  {
    LODWORD(v9) = cerror_nocancel(v9);
  }

  return v9;
}

uint64_t ___ZNK6mach_o6Header12segmentCountEv_block_invoke(uint64_t result, _DWORD *a2)
{
  if (*a2 == 25 || *a2 == 1)
  {
    ++*(*(*(result + 32) + 8) + 24);
  }

  return result;
}

double ___ZN5dyld416JustInTimeLoader11withRegionsEPKN5dyld39MachOFileEU13block_pointerFvRKNS1_5ArrayINS_6Loader6RegionEEEE_block_invoke(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 47);
  v5 = *(a2 + 36);
  if (v4 == 3 && !v5 && *(a2 + 24) > v5)
  {
    goto LABEL_10;
  }

  v12.n128_u64[0] = (*(a2 + 16) - *(result + 40)) & 0x7FFFFFFFFFFFFFFLL | ((*(a2 + 40) & 0x10 | v4 & 7u) << 59);
  v12.n128_u32[2] = *(a2 + 32);
  v12.n128_u32[3] = v5;
  if (v4 == 1 && *(result + 48) - 1 == *(a2 + 44))
  {
    v12.n128_u32[3] = *(a2 + 24);
  }

  *&v7 = dyld3::Array<dyld4::Reaper::LoaderAndUse>::push_back((*(*(result + 32) + 8) + 40), &v12).n128_u64[0];
  if (*(a2 + 47) == 3)
  {
LABEL_10:
    v8 = *(a2 + 36);
    v9 = *(a2 + 24);
    if (v9 > v8)
    {
      v10 = *(result + 32);
      v11.n128_u64[0] = (*(a2 + 16) - *(result + 40) + v8) & 0x7FFFFFFFFFFFFFFLL | 0x5800000000000000;
      v11.n128_u32[2] = 0;
      v11.n128_u32[3] = v9 - v8;
      *&v7 = dyld3::Array<dyld4::Reaper::LoaderAndUse>::push_back((*(v10 + 8) + 40), &v11).n128_u64[0];
    }
  }

  return v7;
}

int getattrlist(const char *a1, void *a2, void *a3, size_t a4, unsigned int a5)
{
  result = mac_syscall(SYS_getattrlist, a1, a2, a3, a4, a5);
  if (v5)
  {
    return cerror_nocancel(result);
  }

  return result;
}

__n128 dyld3::Array<dyld4::Reaper::LoaderAndUse>::push_back(uint64_t *a1, __n128 *a2)
{
  v2 = a1[2];
  if (v2 >= a1[1])
  {
    ___ZN5dyld4L17handleDyldInCacheERN3lsl9AllocatorEPKN6mach_o6HeaderEPKNS_10KernelArgsES6__block_invoke_cold_1();
  }

  v3 = *a1;
  a1[2] = v2 + 1;
  result = *a2;
  *(v3 + 16 * v2) = *a2;
  return result;
}

double lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::insert@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = *a2;
  v10 = *(a2 + 8);
  lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::const_iterator(v22, a1, &v9);
  lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::insert_internal(a1, v22, &v9, &v11);
  v5 = v11;
  *(a3 + 72) = v16;
  *(a3 + 88) = v17;
  *(a3 + 104) = v18;
  *(a3 + 8) = v12;
  *(a3 + 24) = v13;
  *(a3 + 40) = v14;
  result = *&v15;
  *(a3 + 56) = v15;
  *(a3 + 135) = *&v20[7];
  v7 = *v20;
  *(a3 + 120) = v19;
  *(a3 + 128) = v7;
  v8 = v21;
  *a3 = v5;
  *(a3 + 143) = v8;
  return result;
}

void ___ZN5dyld416JustInTimeLoader24makeJustInTimeLoaderDiskER11DiagnosticsRNS_12RuntimeStateEPKcRKNS_6Loader11LoadOptionsEbjPKN6mach_o6LayoutE_block_invoke(uint64_t a1, void *a2)
{
  LOWORD(v6) = *(a1 + 193);
  v3 = dyld4::Loader::mapSegments(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 176), *(a1 + 64), (a1 + 180), *(a1 + 192), a2, v6, a1 + 72);
  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = dyld4::JustInTimeLoader::make(*(a1 + 48), v3, *(a1 + 56), (a1 + 128), *(a1 + 72), *(a1 + 193), *(a1 + 194), *(a1 + 195), *(a1 + 188));
    v4 = *(a1 + 48);
    if (*(*(v4 + 1) + 320) == 1)
    {
      dyld4::Loader::logLoad(*(*(*(a1 + 32) + 8) + 24), v4, *(a1 + 56));
    }

    if (*(*(a1 + 168) + 3) == 1)
    {
      v5 = *(*(*(a1 + 32) + 8) + 24);
      *(v5 + 40) |= 0x80000uLL;
    }
  }
}

void lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::insert_internal(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1)
  {
    v24 = a1;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    if (lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator<=>(a2, &v24))
    {
      v8 = *(a2 + 143);
      if (*a3 >= *(*(a2 + 8 + 8 * (v8 - 1)) + 24 * *(a2 + 128 + v8 - 1)))
      {
        v13 = 0;
        v19 = *(a2 + 88);
        *(a4 + 72) = *(a2 + 72);
        *(a4 + 88) = v19;
        *(a4 + 104) = *(a2 + 104);
        v20 = *(a2 + 24);
        *(a4 + 8) = *(a2 + 8);
        *(a4 + 24) = v20;
        v21 = *(a2 + 56);
        *(a4 + 40) = *(a2 + 40);
        *a4 = *a2;
        *(a4 + 135) = *(a2 + 135);
        v22 = *(a2 + 120);
        *(a4 + 56) = v21;
        v23 = *(a2 + 128);
        *(a4 + 120) = v22;
        *(a4 + 128) = v23;
        *(a4 + 143) = v8;
        goto LABEL_11;
      }
    }

    v24 = a1;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    if (lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator<=>(a2, &v24) && *(a2 + 143) == *(a1 + 32))
    {
      lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::prepareForInsertion(a2);
      v9 = (a2 + 128);
      v10 = *(a2 + 143) - 1;
      v11 = *(a2 + 128 + v10);
    }

    else
    {
      lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator--(a2);
      lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::prepareForInsertion(a2);
      v9 = (a2 + 128);
      v16 = *(a2 + 143) + a2 + 128;
      v11 = *(v16 - 1) + 1;
      *(v16 - 1) = v11;
      v10 = *(a2 + 143) - 1;
    }

    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::insert(*(a2 + 8 + 8 * v10), v11, a3);
    ++*(a1 + 24);
    *a4 = *a2;
    *(a4 + 72) = *(a2 + 72);
    *(a4 + 88) = *(a2 + 88);
    *(a4 + 104) = *(a2 + 104);
    v17 = *(a2 + 120);
    *(a4 + 8) = *(a2 + 8);
    *(a4 + 24) = *(a2 + 24);
    *(a4 + 40) = *(a2 + 40);
    *(a4 + 56) = *(a2 + 56);
    v18 = *v9;
    *(a4 + 135) = *(v9 + 7);
    *(a4 + 120) = v17;
    *(a4 + 128) = v18;
    v15 = *(a2 + 143);
    v13 = 1;
  }

  else
  {
    v12 = lsl::Allocator::aligned_alloc(*(a1 + 8), 0x100uLL, 0x100uLL);
    *(v12 + 240) = 0x80;
    *v12 = 0u;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *(v12 + 3) = 0u;
    *(v12 + 4) = 0u;
    *(v12 + 5) = 0u;
    *(v12 + 6) = 0u;
    *(v12 + 7) = 0u;
    *(v12 + 8) = 0u;
    *(v12 + 9) = 0u;
    *(v12 + 10) = 0u;
    *(v12 + 11) = 0u;
    *(v12 + 12) = 0u;
    *(v12 + 13) = 0u;
    *(v12 + 14) = 0u;
    *a1 = v12;
    v13 = 1;
    *(a1 + 32) = 1;
    *(a2 + 8) = v12;
    *(a2 + 143) = 1;
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::insert(v12, 0, a3);
    ++*(a1 + 24);
    *a4 = *a2;
    *(a4 + 72) = *(a2 + 72);
    *(a4 + 88) = *(a2 + 88);
    *(a4 + 104) = *(a2 + 104);
    *(a4 + 8) = *(a2 + 8);
    *(a4 + 24) = *(a2 + 24);
    *(a4 + 40) = *(a2 + 40);
    *(a4 + 56) = *(a2 + 56);
    *(a4 + 135) = *(a2 + 135);
    v14 = *(a2 + 128);
    *(a4 + 120) = *(a2 + 120);
    *(a4 + 128) = v14;
    v15 = *(a2 + 143);
  }

  *(a4 + 143) = v15;
LABEL_11:
  *(a4 + 144) = v13;
}

__n128 lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::insert(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 240);
  if (v3 >= 0)
  {
    v4 = 7;
  }

  else
  {
    v4 = 10;
  }

  if ((v3 & 0x7F) == v4)
  {
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::insert();
  }

  if (v4 == a2)
  {
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::insert();
  }

  if (24 * a2 != 24 * (v3 & 0x7F))
  {
    v5 = a1 + 24 * (v3 & 0x7F);
    v6 = v5;
    do
    {
      v7 = *(v6 - 24);
      v6 -= 24;
      *v5 = v7;
      *(v5 + 8) = *(v6 + 8);
      v5 -= 24;
    }

    while (v6 != a1 + 24 * a2);
    LOBYTE(v3) = *(a1 + 240);
  }

  *(a1 + 240) = v3 + 1;
  v8 = a1 + 24 * a2;
  *v8 = *a3;
  result = *(a3 + 8);
  *(v8 + 8) = result;
  return result;
}

unsigned __int8 *lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::prepareForInsertion(unsigned __int8 *result)
{
  v1 = result[143];
  if (v1 != *(*result + 32))
  {
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::prepareForInsertion();
  }

  v2 = result;
  v3 = result + 8;
  if (*(*&result[8 * v1] + 240) >= 0)
  {
    v4 = 7;
  }

  else
  {
    v4 = 10;
  }

  if ((*(*&result[8 * v1] + 240) & 0x7F) == v4)
  {
    if (!result[143])
    {
      goto LABEL_15;
    }

    v5 = 0;
    v6 = 0;
    do
    {
      if (*(*&v3[8 * v5] + 240) >= 0)
      {
        v7 = 7;
      }

      else
      {
        v7 = 10;
      }

      if ((*(*&v3[8 * v5] + 240) & 0x7F) != v7)
      {
        v6 = v5;
      }

      ++v5;
    }

    while (v1 != v5);
    if (!v6)
    {
LABEL_15:
      if (*(*v3 + 240) >= 0)
      {
        v8 = 7;
      }

      else
      {
        v8 = 10;
      }

      if ((*(*v3 + 240) & 0x7F) == v8)
      {
        result = lsl::Allocator::aligned_alloc(*(*result + 8), 0x100uLL, 0x100uLL);
        v9 = **v2;
        result[240] = 0;
        *result = 0u;
        *(result + 1) = 0u;
        *(result + 2) = 0u;
        *(result + 3) = 0u;
        *(result + 4) = 0u;
        *(result + 5) = 0u;
        *(result + 6) = 0u;
        *(result + 7) = 0u;
        *(result + 8) = 0u;
        *(result + 9) = 0u;
        *(result + 20) = 0;
        *(result + 21) = v9;
        **v2 = result;
        if (v2[143] && (result = memmove(v2 + 129, v2 + 128, v2[143]), v2[143]))
        {
          result = memmove(v3 + 8, v3, 8 * v2[143]);
          LOBYTE(v1) = v2[143] + 1;
        }

        else
        {
          LOBYTE(v1) = 1;
        }

        v6 = 0;
        v2[128] = 0;
        v10 = *v2;
        *(v2 + 1) = **v2;
        ++*(v10 + 32);
        v2[143] = v1;
      }

      else
      {
        v6 = 0;
      }
    }

    if (v6 + 1 < v1)
    {
      v11 = v2 + 128;
      v12 = v6;
      do
      {
        v13 = v12;
        result = lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::splitChild(*&v3[8 * v12], v11[v12], *(*v2 + 8));
        v14 = *&v3[8 * v12];
        if (*(v14 + 240) < 0)
        {
          lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
        }

        v15 = v11[v12];
        v16 = *(v14 + 8 * v15 + 168);
        v17 = v2[v12 + 129];
        if (v17 > (*(v16 + 240) & 0x7Fu))
        {
          v18 = v15 + 1;
          v11[v12] = v18;
          v2[v12 + 129] = v17 + (~*(v16 + 240) | 0x80);
          v19 = *&v3[8 * v12];
          if (*(v19 + 240) < 0)
          {
            lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
          }

          *&v2[8 * v12 + 16] = *(v19 + 8 * v18 + 168);
        }

        ++v12;
      }

      while (v13 + 2 < v2[143]);
    }
  }

  return result;
}

void dyld4::APIs::getPlatformAndVersions(const mach_o::Header *a1@<X1>, uint64_t a2@<X8>)
{
  mach_o::Header::platformAndVersions(&v5, a1);
  if (mach_o::Platform::empty(&v5))
  {
    mach_o::Platform::current(&v4);
    *a2 = 0;
    *(a2 + 8) = 0;
    v3 = xmmword_8CA20;
  }

  else
  {
    *a2 = v5;
    *(a2 + 8) = v6;
    v3 = v7;
  }

  *(a2 + 16) = v3;
}

uint64_t *lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::swap(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  for (i = 1; i != 16; ++i)
  {
    v4 = result[i];
    result[i] = a2[i];
    a2[i] = v4;
  }

  v5 = 0;
  v6 = result + 16;
  v7 = a2 + 16;
  do
  {
    v8 = *(v6 + v5);
    *(v6 + v5) = *(v7 + v5);
    *(v7 + v5++) = v8;
  }

  while (v5 != 15);
  v9 = *(result + 143);
  *(result + 143) = *(a2 + 143);
  *(a2 + 143) = v9;
  return result;
}

double lsl::OrderedSet<lsl::UUID,std::less<lsl::UUID>>::insert@<D0>(uint64_t *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = *a2;
  lsl::BTree<lsl::UUID,std::less<lsl::UUID>,false>::const_iterator::const_iterator(v20, a1, &v19);
  lsl::BTree<lsl::UUID,std::less<lsl::UUID>,false>::insert_internal(a1, v20, &v19, &v8);
  v5 = v8;
  *(a3 + 40) = v11;
  *(a3 + 56) = v12;
  *(a3 + 72) = v13;
  *(a3 + 88) = v14;
  *(a3 + 8) = v9;
  result = *&v10;
  *(a3 + 24) = v10;
  *(a3 + 104) = v15;
  *(a3 + 112) = v16;
  v7 = v17;
  *a3 = v5;
  *(a3 + 116) = v7;
  *(a3 + 120) = v18;
  return result;
}

void lsl::BTree<lsl::UUID,std::less<lsl::UUID>,false>::insert_internal(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1)
  {
    v22 = a1;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    memset(v28, 0, sizeof(v28));
    if (lsl::BTree<lsl::UUID,std::less<lsl::UUID>,false>::const_iterator::operator<=>(a2, &v22))
    {
      v8 = 0;
      v9 = *(a2 + 116);
      while (1)
      {
        v10 = a3->n128_u8[v8];
        v11 = *(*(a2 + 8 + 8 * (v9 - 1)) + 16 * *(a2 + 104 + v9 - 1) + v8);
        if (v10 < v11)
        {
          break;
        }

        if (v11 < v10 || v8++ == 15)
        {
          v13 = 0;
          v14 = *(a2 + 56);
          *(a4 + 40) = *(a2 + 40);
          *(a4 + 56) = v14;
          v15 = *(a2 + 88);
          *(a4 + 72) = *(a2 + 72);
          *(a4 + 88) = v15;
          v16 = *(a2 + 24);
          *(a4 + 8) = *(a2 + 8);
          *a4 = *a2;
          *(a4 + 24) = v16;
          *(a4 + 104) = *(a2 + 104);
          *(a4 + 112) = *(a2 + 112);
          *(a4 + 116) = v9;
          goto LABEL_17;
        }
      }
    }

    v22 = a1;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    memset(v28, 0, sizeof(v28));
    if (lsl::BTree<lsl::UUID,std::less<lsl::UUID>,false>::const_iterator::operator<=>(a2, &v22) && *(a2 + 116) == *(a1 + 32))
    {
      lsl::BTree<lsl::UUID,std::less<lsl::UUID>,false>::const_iterator::prepareForInsertion(a2);
      v17 = a2 + 104;
      v18 = *(a2 + 116) - 1;
      v19 = *(a2 + 104 + v18);
    }

    else
    {
      lsl::BTree<lsl::UUID,std::less<lsl::UUID>,false>::const_iterator::operator--(a2);
      lsl::BTree<lsl::UUID,std::less<lsl::UUID>,false>::const_iterator::prepareForInsertion(a2);
      v17 = a2 + 104;
      v21 = *(a2 + 116) + a2 + 104;
      v19 = *(v21 - 1) + 1;
      *(v21 - 1) = v19;
      v18 = *(a2 + 116) - 1;
    }

    lsl::BTree<lsl::UUID,std::less<lsl::UUID>,false>::NodeCore<15u,10u>::insert(*(a2 + 8 + 8 * v18), v19, a3);
    ++*(a1 + 24);
    *a4 = *a2;
    *(a4 + 40) = *(a2 + 40);
    *(a4 + 56) = *(a2 + 56);
    *(a4 + 72) = *(a2 + 72);
    *(a4 + 88) = *(a2 + 88);
    *(a4 + 8) = *(a2 + 8);
    *(a4 + 24) = *(a2 + 24);
    *(a4 + 104) = *v17;
    *(a4 + 112) = *(v17 + 8);
    *(a4 + 116) = *(a2 + 116);
    v13 = 1;
  }

  else
  {
    v20 = lsl::Allocator::aligned_alloc(*(a1 + 8), 0x100uLL, 0x100uLL);
    *(v20 + 248) = 0x80;
    *v20 = 0u;
    *(v20 + 1) = 0u;
    *(v20 + 2) = 0u;
    *(v20 + 3) = 0u;
    *(v20 + 4) = 0u;
    *(v20 + 5) = 0u;
    *(v20 + 6) = 0u;
    *(v20 + 7) = 0u;
    *(v20 + 8) = 0u;
    *(v20 + 9) = 0u;
    *(v20 + 10) = 0u;
    *(v20 + 11) = 0u;
    *(v20 + 12) = 0u;
    *(v20 + 13) = 0u;
    *(v20 + 14) = 0u;
    *a1 = v20;
    v13 = 1;
    *(a1 + 32) = 1;
    *(a2 + 8) = v20;
    *(a2 + 116) = 1;
    lsl::BTree<lsl::UUID,std::less<lsl::UUID>,false>::NodeCore<15u,10u>::insert(v20, 0, a3);
    ++*(a1 + 24);
    *a4 = *a2;
    *(a4 + 40) = *(a2 + 40);
    *(a4 + 56) = *(a2 + 56);
    *(a4 + 72) = *(a2 + 72);
    *(a4 + 88) = *(a2 + 88);
    *(a4 + 8) = *(a2 + 8);
    *(a4 + 24) = *(a2 + 24);
    *(a4 + 104) = *(a2 + 104);
    *(a4 + 112) = *(a2 + 112);
    *(a4 + 116) = *(a2 + 116);
  }

LABEL_17:
  *(a4 + 120) = v13;
}

uint64_t lsl::BTree<lsl::UUID,std::less<lsl::UUID>,false>::const_iterator::const_iterator(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 101) = 0u;
  if (*(a2 + 32))
  {
    v7 = 0;
    v8 = *a2;
    v9 = a1 + 104;
    while (1)
    {
      *(v4 + 8 * v7) = v8;
      v10 = lsl::BTree<lsl::UUID,std::less<lsl::UUID>,false>::NodeCore<15u,10u>::lower_bound_index(v8, a3);
      *(v9 + v7) = v10;
      v11 = *(v4 + 8 * v7);
      v12 = *(v11 + 248);
      if (v10 != (v12 & 0x7F))
      {
        break;
      }

LABEL_11:
      v17 = *(a2 + 32);
      if (v7 + 1 != v17)
      {
        if (v12 < 0)
        {
          lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
        }

        v8 = *(v11 + 8 * v10 + 160);
      }

      if (++v7 >= v17)
      {
        for (*(a1 + 116) = v17; v17; *(a1 + 116) = v17)
        {
          if (*(v9 + v17 - 1) != (*(*(v4 + 8 * v17 - 8) + 248) & 0x7F))
          {
            break;
          }

          LOBYTE(v17) = v17 - 1;
        }

        return a1;
      }
    }

    v13 = 0;
    while (1)
    {
      v14 = *(v11 + 16 * v10 + v13);
      v15 = *(a3 + v13);
      if (v14 < v15)
      {
        break;
      }

      if (v15 < v14 || v13++ == 15)
      {
        goto LABEL_11;
      }
    }

    *(a1 + 116) = v7 + 1;
  }

  return a1;
}

__n128 lsl::BTree<lsl::UUID,std::less<lsl::UUID>,false>::NodeCore<15u,10u>::insert(uint64_t a1, unsigned int a2, __n128 *a3)
{
  v3 = *(a1 + 248);
  if (v3 >= 0)
  {
    v4 = 10;
  }

  else
  {
    v4 = 15;
  }

  if ((v3 & 0x7F) == v4)
  {
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::insert();
  }

  if (v4 == a2)
  {
    lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::NodeCore<10u,7u>::insert();
  }

  if (16 * a2 != 16 * (v3 & 0x7F))
  {
    memmove((a1 + 16 * a2 + 16), (a1 + 16 * a2), 16 * (v3 & 0x7F) - 16 * a2);
    LOBYTE(v3) = *(a1 + 248);
  }

  *(a1 + 248) = v3 + 1;
  result = *a3;
  *(a1 + 16 * a2) = *a3;
  return result;
}

uint64_t lsl::Vector<dyld4::InterposeTupleAll>::reserve(uint64_t result, unint64_t a2)
{
  if (*(result + 24) < a2)
  {
    if (a2 >= 0x10)
    {
      v3 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
      v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
      v2 = (v4 | (v4 >> 16) | ((v4 | (v4 >> 16)) >> 32)) + 1;
    }

    else
    {
      v2 = 16;
    }

    return lsl::Vector<dyld4::RuntimeState::DynamicReference>::reserveExact(result, v2);
  }

  return result;
}

uint64_t lsl::Vector<dyld4::RuntimeState::DynamicReference>::reserveExact(uint64_t result, unint64_t a2)
{
  if (*(result + 24) < a2)
  {
    v3 = result;
    result = lsl::Allocator::realloc(*result, *(result + 8), 16 * a2);
    if ((result & 1) == 0)
    {
      result = lsl::Allocator::aligned_alloc(*v3, 0x10uLL, 16 * a2);
      v4 = result;
      v5 = *(v3 + 16);
      if (v5)
      {
        v6 = 0;
        for (i = 0; i < v5; ++i)
        {
          *(result + v6) = *(*(v3 + 8) + v6);
          v5 = *(v3 + 16);
          v6 += 16;
        }
      }

      v8 = *(v3 + 8);
      if (v8)
      {
        result = lsl::Allocator::free(*v3, v8);
        v5 = *(v3 + 16);
      }

      if (v5 >= a2)
      {
        v5 = a2;
      }

      *(v3 + 8) = v4;
      *(v3 + 16) = v5;
    }

    *(v3 + 24) = a2;
  }

  return result;
}

uint64_t dyld4::FileRecord::objectID(dyld4::FileRecord *this)
{
  result = *(this + 1);
  if (!result)
  {
    dyld4::FileRecord::stat(this);
    return *(this + 1);
  }

  return result;
}

uint64_t lsl::BTree<lsl::UUID,std::less<lsl::UUID>,false>::NodeCore<15u,10u>::deallocate(unint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 248);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = 8 * (v4 + 1);
    v6 = (a1 + 160);
    do
    {
      v7 = *v6++;
      lsl::BTree<lsl::UUID,std::less<lsl::UUID>,false>::NodeCore<15u,10u>::deallocate(v7, a2);
      v5 -= 8;
    }

    while (v5);
  }

  return lsl::Allocator::free(a2, a1);
}

uint64_t *lsl::Vector<AAREncoder::Link>::resize(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (result[3] >= a2)
  {
    if (a2)
    {
      result[2] = a2;
      result[3] = a2;
      v4 = *result;
      v5 = v3[1];

      return lsl::Allocator::realloc(v4, v5, 16 * a2);
    }

    else
    {
      v7 = result + 1;
      v6 = result[1];
      if (v6)
      {
        result = lsl::Allocator::free(*result, v6);
      }

      *v7 = 0;
      v3[2] = 0;
      v3[3] = 0;
    }
  }

  else
  {
    result = lsl::Vector<dyld4::InterposeTupleAll>::reserve(result, a2);
    v3[2] = a2;
    v3[3] = a2;
  }

  return result;
}

BOOL dyld4::PrebuiltLoader::matchesPath(dyld4::PrebuiltLoader *this, const dyld4::RuntimeState *a2, const char *__s1)
{
  if ((*(this + 2) & 2) != 0 || (v5 = *(this + 3) & 0x7FFF, *(a2 + 48) <= v5))
  {
    if (*(this + 16))
    {
      v6 = this + *(this + 16);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = *(*(a2 + 47) + 8 * v5);
  }

  return !_platform_strcmp(__s1, v6) || *(this + 20) && !_platform_strcmp(__s1, this + *(this + 20));
}

uint64_t dyld4::RuntimeLocks::takeDlopenLockBeforeFork(dyld4::RuntimeLocks *this)
{
  result = *this;
  if (result)
  {
    return (*(*result + 96))(result, this + 32, 0);
  }

  return result;
}

void dyld4::APIs::dlopen_from(char const*,int,void *)::$_0::operator()(uint64_t a1)
{
  v2 = *a1;
  bzero(v99, 0x550uLL);
  v3 = __stackAllocatorInternal(v99, 1360);
  v88 = v3;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserveExact(&v88, 0x80uLL);
  memset(v98, 0, 464);
  v76 = __stackAllocatorInternal(v98, 464);
  v84 = v76;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v4 = lsl::Vector<dyld4::RuntimeState::DynamicReference>::reserveExact(&v84, 8uLL);
  v5 = v2[14];
  v78 = v2;
  v6 = *(a1 + 24);
  v79 = *(a1 + 8);
  v80 = v6;
  v81 = *(a1 + 40);
  v82 = &v84;
  v83 = &v88;
  v7 = lsl::MemoryManager::memoryManager(v4);
  *&v97 = v5;
  *(&v97 + 1) = &v78;
  v8 = *(v7 + 6);
  if (v8 && lsl::ProtectedStack::onStackInAnyFrameInThisThread(v8))
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v15 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v15 & 0xFE) == 2)
        {
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
          __isb(0xFu);
          v16 = MEMORY[0xFFFFFC0D0];
          if (v16 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            v17 = *(v7 + 6);
            v92 = _NSConcreteStackBlock;
            v93 = 0x40000000;
            v94 = ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld412RuntimeLocks37withLoadersWriteLockAndProtectedStackIZZNS2_4APIs11dlopen_fromEPKciPvENK3__0clEvEUlvE_EEvT_EUlvE_EEvSB__block_invoke;
            v95 = &__block_descriptor_tmp_225;
            v96 = v97;
            lsl::ProtectedStack::withNestedProtectedStack(v17, &v92, v9, v10, v11, v12, v13, v14, v73);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v24 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v24 & 0xFE) == 2)
                {
                  v25 = MEMORY[0xFFFFFC0D8];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
                  __isb(0xFu);
                  v26 = 0xFFFFFC0D8;
                  v27 = MEMORY[0xFFFFFC0D8];
                  if (v27 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    goto LABEL_31;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_82:
    __break(1u);
  }

  if (*(v7 + 33) != 1)
  {
    lsl::MemoryManager::lockGuard(&v92, v7);
    v32 = *(v7 + 3);
    if (!v32)
    {
      lsl::MemoryManager::writeProtect(v7, 0);
      v32 = *(v7 + 3);
    }

    *(v7 + 3) = v32 + 1;
    lsl::Lock::unlock(v92);
    dyld4::RuntimeLocks::withLoadersWriteLockAndProtectedStack<dyld4::APIs::dlopen_from(char const*,int,void *)::$_0::operator() const(void)::{lambda(void)#1}>(dyld4::APIs::dlopen_from(char const*,int,void *)::$_0::operator() const(void)::{lambda(void)#1})::{lambda(void)#1}::operator()(&v97);
    lsl::MemoryManager::lockGuard(&v92, v7);
    v33 = *(v7 + 3) - 1;
    *(v7 + 3) = v33;
    if (!v33)
    {
      lsl::MemoryManager::writeProtect(v7, 1);
    }

    v25 = lsl::Lock::unlock(v92);
    goto LABEL_31;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
    goto LABEL_82;
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) == 0)
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v28 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v28 & 0xFE) == 2)
        {
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
          __isb(0xFu);
          v29 = MEMORY[0xFFFFFC0D0];
          if (v29 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            dyld4::RuntimeLocks::withLoadersWriteLockAndProtectedStack<dyld4::APIs::dlopen_from(char const*,int,void *)::$_0::operator() const(void)::{lambda(void)#1}>(dyld4::APIs::dlopen_from(char const*,int,void *)::$_0::operator() const(void)::{lambda(void)#1})::{lambda(void)#1}::operator()(&v97);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v30 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v30 & 0xFE) == 2)
                {
                  v25 = MEMORY[0xFFFFFC0D8];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
                  __isb(0xFu);
                  v26 = 0xFFFFFC0D8;
                  v31 = MEMORY[0xFFFFFC0D8];
                  if (v31 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    goto LABEL_31;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_82;
  }

  dyld4::RuntimeLocks::withLoadersWriteLockAndProtectedStack<dyld4::APIs::dlopen_from(char const*,int,void *)::$_0::operator() const(void)::{lambda(void)#1}>(dyld4::APIs::dlopen_from(char const*,int,void *)::$_0::operator() const(void)::{lambda(void)#1})::{lambda(void)#1}::operator()(&v97);
LABEL_31:
  if (!v86)
  {
    goto LABEL_63;
  }

  __chkstk_darwin(v25, v26, v18, v19, v20, v21, v22, v23, v73);
  memset(v72, 0, sizeof(v72));
  v34 = __stackAllocatorInternal(v72, 400);
  v78 = v34;
  v79 = 0uLL;
  *&v80 = 0;
  v35 = lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserveExact(&v78, 8uLL);
  v43 = v86;
  if (!v86)
  {
    goto LABEL_60;
  }

  v74 = v34;
  v75 = v3;
  v77 = v2;
  v44 = 0;
  v45 = 0;
  while (1)
  {
    v46 = (v85 + 16 * v45);
    if (*(&v79 + 1))
    {
      v47 = 8 * *(&v79 + 1);
      v48 = v79;
      while (*v48 != *v46)
      {
        ++v48;
        v47 -= 8;
        if (!v47)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v48 = v79;
    }

    if (v48 == (v79 + 8 * *(&v79 + 1)))
    {
      break;
    }

    v49 = v45 + 1;
LABEL_57:
    v45 = v49;
    if (v49 == v43)
    {
      goto LABEL_58;
    }
  }

LABEL_42:
  __chkstk_darwin(v35, v36, v37, v38, v39, v40, v41, v42, v72[0]);
  v50 = &v72[-50];
  v70 = 0u;
  v71 = 0u;
  *&v72[-8] = 0u;
  *&v72[-6] = 0u;
  *&v72[-12] = 0u;
  *&v72[-10] = 0u;
  *&v72[-16] = 0u;
  *&v72[-14] = 0u;
  *&v72[-20] = 0u;
  *&v72[-18] = 0u;
  *&v72[-24] = 0u;
  *&v72[-22] = 0u;
  *&v72[-28] = 0u;
  *&v72[-26] = 0u;
  *&v72[-32] = 0u;
  *&v72[-30] = 0u;
  *(v50 + 7) = 0u;
  *(v50 + 8) = 0u;
  *(v50 + 5) = 0u;
  *(v50 + 6) = 0u;
  *(v50 + 3) = 0u;
  *(v50 + 4) = 0u;
  *(v50 + 1) = 0u;
  *(v50 + 2) = 0u;
  *v50 = 0u;
  v51 = __stackAllocatorInternal(&v72[-50], 400);
  v92 = v51;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserveExact(&v92, 8uLL);
  lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(&v92, v94 + 1);
  v52 = v46[1];
  v53 = v94;
  v54 = v94 + 1;
  v94 = (v94 + 1);
  *(v93 + 8 * v53) = v52;
  v49 = v45 + 1;
  v55 = v86;
  if (v45 + 1 != v86)
  {
    v56 = 16 * v45;
    v57 = v49;
    do
    {
      v58 = v85 + v56;
      if (*(v85 + v56 + 16) == *v46)
      {
        lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(&v92, v54 + 1);
        v59 = *(v58 + 24);
        v60 = v94;
        v54 = v94 + 1;
        v94 = (v94 + 1);
        *(v93 + 8 * v60) = v59;
        v55 = v86;
      }

      ++v57;
      v56 += 16;
    }

    while (v57 != v55);
  }

  if (*(*v46 + 4))
  {
    v61 = 0;
  }

  else
  {
    v61 = *v46;
  }

  v62 = *(v61 + 104);
  v63 = dyld4::PseudoDylib::finalizeRequestedSymbols(v62, v93, v54);
  v64 = v63;
  if (v63)
  {
    dyld4::APIs::setErrorString(v77, "dlopen(%s, 0x%04X): %s", **(a1 + 32), **(a1 + 16), v63);
    dyld4::PseudoDylib::disposeString(v62, v64);
    v44 = 1;
  }

  else
  {
    lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(&v78, *(&v79 + 1) + 1);
    v65 = *v46;
    v66 = (*(&v79 + 1))++;
    *(v79 + 8 * v66) = v65;
  }

  if (v93)
  {
    lsl::Vector<char const*>::resize(&v92, 0);
  }

  lsl::Allocator::~Allocator(v51);
  if (!v64)
  {
    v43 = v86;
    goto LABEL_57;
  }

LABEL_58:
  v34 = v74;
  v3 = v75;
  v2 = v77;
  if (v44)
  {
    **(a1 + 40) = 0;
    **(a1 + 24) = 0;
  }

LABEL_60:
  if (v79)
  {
    lsl::Vector<char const*>::resize(&v78, 0);
  }

  lsl::Allocator::~Allocator(v34);
LABEL_63:
  if (**(a1 + 24) && (**(a1 + 16) & 0x10) == 0)
  {
    if (v90)
    {
      v78 = v89;
      *&v79 = v90;
      dyld4::RuntimeState::notifyLoad(v2, &v78, v18, v19, v20, v21, v22, v23);
    }

    if (*(v2 + 1113) == 1)
    {
      dyld4::Loader::runInitializersBottomUpPlusUpwardLinks(**(a1 + 24), v2);
    }

    else if (*(v2[1] + 323) == 1)
    {
      v67 = dyld4::Loader::path(**(a1 + 24), v2);
      dyld4::RuntimeState::log(v2, "dlopen() within libSystem's initializer, so skipping initialization of %s\n", v67);
    }

    **(a1 + 40) = dyld4::handleFromLoader(**(a1 + 24), **(a1 + 48));
  }

  if (*(v2[1] + 324) == 1)
  {
    v68 = dyld4::LibSystemHelpersWrapper::pthread_getspecific((v2 + 20), v2[137]);
    if (v68 && *v68 == 1)
    {
      dyld4::Loader::leafName(**(a1 + 32), v69);
      dyld4::RuntimeState::log(v2, "      dlopen(%s) => NULL, '%s'\n");
    }

    else
    {
      dyld4::Loader::leafName(**(a1 + 32), v69);
      dyld4::RuntimeState::log(v2, "      dlopen(%s) => %p\n");
    }
  }

  if (v85)
  {
    lsl::Vector<AAREncoder::Link>::resize(&v84, 0);
  }

  lsl::Allocator::~Allocator(v76);
  if (v89)
  {
    lsl::Vector<char const*>::resize(&v88, 0);
  }

  lsl::Allocator::~Allocator(v3);
}

void dyld4::JustInTimeLoader::applyFixups()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  dyld4::Loader::applyFixupsCheckCachePatching(v0, v7, v5);
  if ((*(v11 + 2) & 2) != 0)
  {
    dyld4::Loader::applyFunctionVariantFixups(v11, v10, v8);
    *(v11 + 5) |= 0x20000uLL;
  }

  else if (!*(v11 + 13))
  {
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 0x40000000;
    v44[2] = ___ZNK5dyld416JustInTimeLoader11applyFixupsER11DiagnosticsRNS_12RuntimeStateERNS_34DyldCacheDataConstLazyScopedWriterEbPN3lsl6VectorINSt3__14pairIPKNS_6LoaderEPKcEEEE_block_invoke;
    v44[3] = &__block_descriptor_tmp_24_0;
    v44[4] = v8;
    v44[5] = v6;
    v34 = 0;
    v35 = &v34;
    v36 = 0x5002000000;
    v37 = __Block_byref_object_copy__25;
    v38 = __Block_byref_object_dispose__26;
    v39 = &v47;
    v40 = 512;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x5002000000;
    v27 = __Block_byref_object_copy__25;
    v28 = __Block_byref_object_dispose__26;
    v29 = &v46;
    v30 = 32;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x5002000000;
    v17 = __Block_byref_object_copy__27;
    v18 = __Block_byref_object_dispose__28;
    v19 = &v45;
    v20 = 4;
    v21 = 0;
    address = 0;
    size = 0;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 0x40000000;
    v13[2] = ___ZNK5dyld416JustInTimeLoader11applyFixupsER11DiagnosticsRNS_12RuntimeStateERNS_34DyldCacheDataConstLazyScopedWriterEbPN3lsl6VectorINSt3__14pairIPKNS_6LoaderEPKcEEEE_block_invoke_29;
    v13[3] = &unk_A1BA8;
    v13[6] = v11;
    v13[7] = v8;
    v13[4] = &v34;
    v13[5] = &v14;
    v13[8] = v2;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 0x40000000;
    v12[2] = ___ZNK5dyld416JustInTimeLoader11applyFixupsER11DiagnosticsRNS_12RuntimeStateERNS_34DyldCacheDataConstLazyScopedWriterEbPN3lsl6VectorINSt3__14pairIPKNS_6LoaderEPKcEEEE_block_invoke_2;
    v12[3] = &unk_A1BD0;
    v12[6] = v11;
    v12[7] = v8;
    v12[4] = &v24;
    v12[5] = &v14;
    dyld4::Loader::forEachBindTarget(v11, v10, v8, v44, v4, v13, v12);
    if (!Diagnostics::hasError(v10))
    {
      dyld4::Loader::applyFixupsGeneric(v11, v10, v8, *(v11 + 6), (v35 + 5), (v25 + 5), 1, (v15 + 5));
      dyld4::Loader::applyFunctionVariantFixups(v11, v10, v8);
      if (dyld4::Loader::hasConstantSegmentsToProtect(v11))
      {
        dyld4::Loader::makeSegmentsReadOnly(v11, v8);
      }

      if (Diagnostics::noError(v10))
      {
        *(v11 + 5) |= 0x20000uLL;
      }
    }

    _Block_object_dispose(&v14, 8);
    v21 = 0;
    if (address)
    {
      vm_deallocate(mach_task_self_, address, size);
    }

    _Block_object_dispose(&v24, 8);
    v31 = 0;
    if (v32)
    {
      vm_deallocate(mach_task_self_, v32, v33);
    }

    _Block_object_dispose(&v34, 8);
    v41 = 0;
    if (v42)
    {
      vm_deallocate(mach_task_self_, v42, v43);
    }
  }
}

void dyld4::RuntimeLocks::withLoadersWriteLockAndProtectedStack<dyld4::APIs::dlopen_from(char const*,int,void *)::$_0::operator() const(void)::{lambda(void)#1}>(dyld4::APIs::dlopen_from(char const*,int,void *)::$_0::operator() const(void)::{lambda(void)#1})::{lambda(void)#1}::operator()(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  if (v3)
  {
    v4 = (*(*v3 + 96))(v3, v2 + 2, 0);
    v5 = a1[1];
    v6 = lsl::MemoryManager::memoryManager(v4);
    if (lsl::ProtectedStack::onStackInAnyFrameInThisThread(v6[6]))
    {
      dyld4::RuntimeLocks::withLoadersWriteLockAndProtectedStack<dyld4::RuntimeState::decDlRefCount(dyld4::Loader const*)::$_0>(dyld4::RuntimeState::decDlRefCount(dyld4::Loader const*)::$_0)::{lambda(void)#1}::operator()();
    }

    v7 = v6[6];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = ___ZN3lsl13MemoryManager18withProtectedStackIZZN5dyld412RuntimeLocks37withLoadersWriteLockAndProtectedStackIZZNS2_4APIs11dlopen_fromEPKciPvENK3__0clEvEUlvE_EEvT_ENKUlvE_clEvEUlvE_EEvSB__block_invoke;
    v9[3] = &__block_descriptor_tmp_227;
    v9[4] = v5;
    lsl::ProtectedStack::withProtectedStack(v7, v9);
    lsl::ProtectedStack::reset(v6[6]);
    (*(**v2 + 104))(*v2, v2 + 2);
  }

  else
  {
    v8 = a1[1];

    dyld4::APIs::dlopen_from(char const*,int,void *)::$_0::operator() const(void)::{lambda(void)#1}::operator()(v8);
  }
}

void dyld3::MachOAnalyzer::withVMLayout(dyld3::MachOLoaded *a1, Diagnostics *a2, uint64_t a3)
{
  v11 = a2;
  Slide = dyld3::MachOLoaded::getSlide(a1);
  v34 = 0;
  v35 = &v34;
  v36 = 0x2000000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2000000000;
  v33 = 0;
  v6 = mach_o::Header::segmentCount(a1);
  v7 = __chkstk_darwin();
  v9 = &v10 - 2 * v8;
  if (v7)
  {
    bzero(v9, 48 * ((48 * v6 - 48) / 0x30) + 48);
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 0x40000000;
  v29[2] = ___ZNK5dyld313MachOAnalyzer12withVMLayoutER11DiagnosticsU13block_pointerFvRKN6mach_o6LayoutEE_block_invoke;
  v29[3] = &unk_A4120;
  v29[4] = &v34;
  v29[5] = &v30;
  v29[6] = Slide;
  v29[7] = v9;
  mach_o::Header::forEachSegment(a1, v29);
  v13[0] = 0;
  memset(&v13[2], 0, 21);
  v13[8] = 0;
  memset(&v13[10], 0, 21);
  v13[16] = 0;
  memset(&v13[18], 0, 21);
  memset(&v13[26], 0, 21);
  v13[24] = 0;
  v13[32] = 0;
  memset(&v13[34], 0, 21);
  memset(&v13[42], 0, 21);
  v13[40] = 0;
  v13[48] = 0;
  memset(&v13[50], 0, 21);
  memset(&v13[58], 0, 21);
  v13[56] = 0;
  v13[64] = 0;
  memset(&v13[66], 0, 21);
  v13[72] = 0;
  memset(&v13[74], 0, 21);
  v13[80] = 0;
  memset(&v13[82], 0, 21);
  v13[88] = 0;
  memset(&v13[90], 0, 21);
  v13[96] = 0;
  memset(&v13[98], 0, 21);
  v14 = 0;
  v15 = 0;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  v28 = 0;
  dyld3::MachOAnalyzer::getLinkeditLayout(a1, v11, v35[3], v31[3], v13);
  mach_o::Layout::Layout(v12, a1, v9, v6, v13);
  (*(a3 + 16))(a3, v12);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
}

uint64_t lsl::ProtectedStack::withProtectedStack(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = a1 + 3;
    v3 = a1[3];
    if (v3)
    {
      v5 = a1[3];
    }

    else
    {
      v5 = 0;
    }

    if (v5 != *a1)
    {
      lsl::ProtectedStack::withProtectedStack();
    }

    v8 = a1 + 4;
    if (a1[4])
    {
      lsl::ProtectedStack::withProtectedStack();
    }

    v9 = a1 + 5;
    if (a1[5])
    {
      lsl::ProtectedStack::withProtectedStack();
    }

    *v9 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    if (v3)
    {
      v10 = v3;
    }

    else
    {
      v10 = 0;
    }

    result = callWithProtectedStack(v10, a1 + 4, a2);
    *v9 = 0;
    if (*v4)
    {
      v11 = *v4;
    }

    else
    {
      v11 = 0;
    }

    if (v11 != *a1)
    {
      lsl::ProtectedStack::withProtectedStack();
    }

    if (*v8)
    {
      lsl::ProtectedStack::withProtectedStack();
    }
  }

  else
  {
    v6 = *(a2 + 16);

    return v6(a2);
  }

  return result;
}

uint64_t callWithProtectedStack(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  *a2 = v8;
  v6 = (a1 - 48);
  *v6 = a2;
  v6[1] = v5;
  v6[2] = 0;
  v6[3] = v8;
  v6[4] = v3;
  v6[5] = v4;
  result = (*(a3 + 16))();
  *v8[0] = v8[1];
  return result;
}

uint64_t callWithRegularStack(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  *a2 = v8;
  v8[0] = a2;
  v8[1] = v5;
  v6 = (a1 - 32);
  *v6 = 0;
  v6[1] = v8;
  v6[2] = v3;
  v6[3] = v4;
  result = (*(a3 + 16))(a3, *(a3 + 16));
  *v8[4] = v8[5];
  return result;
}

void dyld4::Loader::forEachBindTarget(dyld4::Loader *a1, Diagnostics *a2, dyld4::RuntimeState *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = ___ZNK5dyld46Loader17forEachBindTargetER11DiagnosticsRNS_12RuntimeStateEU13block_pointerFvjjRKNS0_14ResolvedSymbolEEbU13block_pointerFvS7_RbESC__block_invoke;
  v7[3] = &unk_A1750;
  v8 = a5;
  v7[8] = a2;
  v7[9] = a3;
  v7[4] = a4;
  v7[5] = a6;
  v7[6] = a7;
  v7[7] = a1;
  dyld4::Loader::withLayout(a1, a2, a3, v7);
}

void dyld4::APIs::dlopen_from(char const*,int,void *)::$_0::operator() const(void)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 288);
  v5 = *(*a1 + 352);
  Diagnostics::Diagnostics(v104);
  v6 = *(v2 + 24);
  v103[0] = 0;
  v103[1] = v6;
  v102[0] = v103;
  v7 = *(a1 + 16);
  v8 = **(a1 + 8);
  v102[1] = v8;
  v101 = 0;
  v94 = 0;
  v9 = *v7;
  *(&v94 + 3) = (v9 & 4) != 0;
  WORD2(v94) = (v9 & 0x80) != 0;
  BYTE5(v94) = (v9 & 0x10) != 0;
  HIBYTE(v94) = 1;
  v95 = 1;
  v10 = *(v2 + 8);
  v11 = *(v10 + 112) == &mach_o::PlatformInfo_macOS::singleton && *(v10 + 120) == 0;
  v96 = v11;
  v97 = v9 < 0;
  if (v8)
  {
    LODWORD(v8) = HIBYTE(*(v8 + 4)) & 1;
    v12 = v102;
  }

  else
  {
    v12 = v103;
  }

  v98 = v8;
  v99 = v12;
  v100 = 0;
  **(a1 + 24) = dyld4::Loader::getLoader(v104, v2, **(a1 + 32), &v94);
  v13 = **(a1 + 24);
  if (!v13)
  {
    v80 = **(a1 + 32);
    v81 = **(a1 + 16);
    v82 = Diagnostics::errorMessage(v104);
    dyld4::APIs::setErrorString(v2, "dlopen(%s, 0x%04X): %s", v80, v81, v82);
    goto LABEL_74;
  }

  if ((**(a1 + 16) & 4) == 0 && dyld4::Loader::hiddenFromFlat(v13, 0))
  {
    dyld4::Loader::hiddenFromFlat(**(a1 + 24), 1);
  }

  v14 = *(a1 + 16);
  if ((*v14 & 0x10) != 0)
  {
    dyld4::RuntimeState::incDlRefCount(v2, **(a1 + 24));
    **(a1 + 40) = dyld4::handleFromLoader(**(a1 + 24), **(a1 + 48));
    goto LABEL_74;
  }

  v15 = *(a1 + 24);
  if ((*v14 & 0x80) != 0 && (*(*v15 + 4) & 0x63) == 0)
  {
    *(*v15 + 40) |= 0x200000uLL;
    v14 = *(a1 + 16);
    v15 = *(a1 + 24);
  }

  v92 = v99;
  v93 = 0;
  v93 = *v15;
  *&v88 = 256;
  DWORD2(v88) = 0;
  v90 = 0;
  v91 = 0;
  v89 = 0;
  BYTE4(v88) = (*v14 & 0x80) != 0;
  BYTE7(v88) = 1;
  BYTE11(v88) = *(*v15 + 5) & 1;
  v89 = &v92;
  dyld4::Loader::loadDependents(*v15, v104, v2, &v88);
  v16 = 8 * *(v2 + 48) - v3;
  __chkstk_darwin(v17, v18, v19, v20, v21, v22, v23, v24, v83[0]);
  v26 = (v83 - v25);
  bzero(v83 - v25, v16 + 336);
  v27 = __stackAllocatorInternal(v26, v16 + 336);
  v84 = v27;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserveExact(&v84, *(v2 + 48) - v3);
  if (v3 != *(v2 + 48))
  {
    v28 = v86;
    v29 = v3;
    do
    {
      v30 = *(*(v2 + 40) + 8 * v29);
      lsl::Vector<dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>>::reserve(&v84, v28 + 1);
      v31 = v86;
      v28 = ++v86;
      v85[v31] = v30;
      ++v29;
    }

    while (v29 != *(v2 + 48));
  }

  dyld4::DyldCacheDataConstLazyScopedWriter::DyldCacheDataConstLazyScopedWriter(v83, v2);
  if (Diagnostics::noError(v104) && v86)
  {
    if (*(*(v2 + 8) + 226) == 1)
    {
      v105 = v85;
      *&v106 = v86;
      dyld4::Loader::addWeakDefsToMap(v2, &v105);
    }

    LODWORD(v105) = 520552460;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0;
    dyld3::ScopedTimer::startTimer(&v105, v32, v33, v34, v35, v36, v37, v38);
    if (v86)
    {
      v39 = v85;
      v40 = 8 * v86;
      do
      {
        v41 = *v39;
        dyld4::Loader::applyFixups(*v39, v104);
        if (Diagnostics::hasError(v104))
        {
          break;
        }

        dyld4::Loader::applyCachePatches(v41, v2, v83);
        ++v39;
        v40 -= 8;
      }

      while (v40);
    }

    dyld3::ScopedTimer::endTimer(&v105);
    v42 = Diagnostics::noError(v104);
    if (v42)
    {
      __chkstk_darwin(v42, v43, v44, v45, v46, v47, v48, v49, v83[0]);
      v51 = v83 - ((v50 + 23) & 0xFFFFFFFFFFFFFFF0);
      v52 = v86;
      v105 = v51;
      v106 = v86;
      if (v86)
      {
        v53 = 0;
        v54 = v85;
        v55 = 8 * v86;
        do
        {
          v56 = *v54;
          if ((*(*v54 + 2) & 0x22) == 0x20)
          {
            if (v53 >= v52)
            {
              ___ZN5dyld4L17handleDyldInCacheERN3lsl9AllocatorEPKN6mach_o6HeaderEPKNS_10KernelArgsES6__block_invoke_cold_1();
            }

            *(&v106 + 1) = v53 + 1;
            v105[v53++] = v56;
          }

          ++v54;
          v55 -= 8;
        }

        while (v55);
        if (v53)
        {
          dyld4::RuntimeState::addPermanentRanges(v2);
          v52 = v86;
        }
      }

      v113 = v85;
      v114 = v52;
      dyld4::RuntimeState::notifyDtrace(v2, &v113);
      v113 = v85;
      v114 = v86;
      dyld4::RuntimeState::rebindMissingFlatLazySymbols(v2, &v113);
    }
  }

  if (Diagnostics::noError(v104))
  {
    dyld4::RuntimeState::incDlRefCount(v2, **(a1 + 24));
  }

  if (Diagnostics::hasError(v104))
  {
    v57 = **(a1 + 32);
    v58 = **(a1 + 16);
    v59 = Diagnostics::errorMessage(v104);
    dyld4::APIs::setErrorString(v2, "dlopen(%s, 0x%04X): %s", v57, v58, v59);
    v105 = v85;
    *&v106 = v86;
    dyld4::RuntimeState::removeMissingFlatLazySymbols(v2, &v105);
    v61 = v85;
    v60 = v86;
    if (*(v2 + 416))
    {
      if (!v86)
      {
LABEL_47:
        if (*(v2 + 48) > v3)
        {
          *(v2 + 48) = v3;
        }

        **(a1 + 40) = 0;
        **(a1 + 24) = 0;
        *(v2 + 320) = 0;
        if (*(v2 + 288) > v4)
        {
          *(v2 + 288) = v4;
        }

        if (*(v2 + 352) > v5)
        {
          *(v2 + 352) = v5;
        }

        goto LABEL_53;
      }

      v62 = 8 * v86;
      do
      {
        v63 = *v61++;
        dyld4::RuntimeState::removeDynamicDependencies(v2, v63);
        v62 -= 8;
      }

      while (v62);
      v61 = v85;
      v60 = v86;
    }

    if (v60)
    {
      v64 = 8 * v60;
      do
      {
        v65 = *v61++;
        dyld4::Loader::unmap(v65, v2, 1);
        v64 -= 8;
      }

      while (v64);
    }

    goto LABEL_47;
  }

LABEL_53:
  if (**(a1 + 24) && (**(a1 + 16) & 0x10) == 0 && Diagnostics::noError(v104))
  {
    v113 = **(a1 + 24);
    dyld4::RuntimeState::partitionDelayLoads(v2, v85, v86, &v113, 1, *(a1 + 64));
    if (*(*(v2 + 8) + 352))
    {
      strcpy(&v105, "dlopen");
      v66 = **(a1 + 8);
      if (v66)
      {
        v67 = dyld4::Loader::leafName(v66, v2);
        strlcpy(&v105, v67, 0x100uLL);
        strlcat(&v105, ": dlopen(", 0x100uLL);
        v68 = dyld4::Loader::leafName(**(a1 + 24), v2);
        strlcat(&v105, v68, 0x100uLL);
        strlcat(&v105, ")", 0x100uLL);
      }

      dyld4::Loader::logChainToLinksWith(**(a1 + 24), v2, &v105);
    }

    v69 = *(a1 + 64);
    v70 = *(v69 + 16);
    if (v70)
    {
      v105 = *(v69 + 8);
      *&v106 = v70;
      dyld4::RuntimeState::notifyDebuggerLoad(v2, &v105);
      v71 = *(a1 + 64);
      v72 = *(v71 + 16);
      if (v72)
      {
        v73 = *(v71 + 8);
        v74 = 8 * v72;
        do
        {
          v75 = *v73;
          if ((*(*v73 + 2) & 0x1000) != 0)
          {
            v76 = *(*(v2 + 8) + 368);
            v77 = dyld4::Loader::analyzer(*v73, v2);
            dyld4::LibSystemHelpersWrapper::setUpThreadLocals((v2 + 160), v76, v77, &v105);
            if (v105)
            {
              v78 = dyld4::Loader::path(v75, v2);
              v79 = mach_o::Error::message(&v105);
              Diagnostics::error(v104, "failed to set up thread local variables for '%s': %s", v78, v79);
            }

            mach_o::Error::~Error(&v105);
          }

          ++v73;
          v74 -= 8;
        }

        while (v74);
      }
    }

    dyld4::RuntimeState::doSingletonPatching(v2, v83);
    dyld4::RuntimeState::notifyObjCPatching(v2);
  }

  dyld4::DyldCacheDataConstLazyScopedWriter::~DyldCacheDataConstLazyScopedWriter(v83);
  if (v85)
  {
    lsl::Vector<char const*>::resize(&v84, 0);
  }

  lsl::Allocator::~Allocator(v27);
LABEL_74:
  Diagnostics::~Diagnostics(v104);
}

void dyld4::Loader::withLayout(dyld4::Loader *a1, Diagnostics *a2, dyld4::RuntimeState *a3, uint64_t a4)
{
  if (*a1 != 1815378276)
  {
    dyld4::Loader::withLayout();
  }

  if (*(a1 + 2))
  {

    dyld4::PrebuiltLoader::withLayout(a1, a2, a3, a4);
  }

  else
  {

    dyld4::JustInTimeLoader::withLayout(a1, a2, a3, a4);
  }
}

void *___ZNK5dyld313MachOAnalyzer12withVMLayoutER11DiagnosticsU13block_pointerFvRKN6mach_o6LayoutEE_block_invoke(void *result, uint64_t **a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 8);
  v4 = *(a2 + 9);
  v5 = a2[2] + result[6];
  v6 = *(a2 + 47);
  v7 = *a2;
  v8 = a2[1];
  if (v8 == (&dword_8 + 2))
  {
    v13 = *v7;
    v14 = *(v7 + 4);
    if (v13 == 0x44454B4E494C5F5FLL && v14 == 21577)
    {
      *(*(result[4] + 8) + 24) = v3;
      *(*(result[5] + 8) + 24) = v5;
      v12 = 2;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v8 != (&dword_4 + 2))
  {
LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  v9 = *v7;
  v10 = *(v7 + 2);
  v12 = v9 == 1163157343 && v10 == 21592;
LABEL_14:
  v16 = result[7] + 48 * *(a2 + 22);
  *v16 = v2;
  *(v16 + 16) = v3;
  *(v16 + 24) = v4;
  *(v16 + 32) = v5;
  *(v16 + 40) = v6;
  *(v16 + 44) = v12;
  return result;
}

uint64_t dyld3::MachOAnalyzer::getLinkeditLayout(_DWORD *a1, Diagnostics *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  v8 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = ___ZNK5dyld313MachOAnalyzer17getLinkeditLayoutER11DiagnosticsyPKhRN6mach_o14LinkeditLayoutE_block_invoke;
  v6[3] = &__block_descriptor_tmp_255_0;
  v6[4] = a1;
  v6[5] = a5;
  v6[6] = &v8;
  v6[7] = &v7;
  dyld3::MachOFile::forEachLoadCommand(a1, a2, v6);
  return 1;
}

uint64_t ___ZNK5dyld313MachOAnalyzer17getLinkeditLayoutER11DiagnosticsyPKhRN6mach_o14LinkeditLayoutE_block_invoke(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *a2;
  if (*a2 <= 28)
  {
    if (v4 > -2147483597)
    {
      switch(v4)
      {
        case -2147483596:
          v58 = *(result + 40);
          v59 = **(result + 56) - **(result + 48);
          v60 = *(a2 + 8);
          v61 = *(a2 + 12);
          *(v58 + 384) = v60;
          *(v58 + 392) = v59 + v60;
          v62 = *(result + 40);
          *(v62 + 400) = v61;
          *(v62 + 408) = 0;
          *(v62 + 412) = 1;
          *(v62 + 416) = a2;
          break;
        case 2:
          v63 = *(result + 32);
          *(v3[5] + 620) = 1;
          result = dyld3::MachOFile::is64(v63);
          if (result)
          {
            v64 = 16;
          }

          else
          {
            v64 = 12;
          }

          v65 = v3[5];
          v66 = v3[6];
          v67 = *(a2 + 8);
          v68 = *(a2 + 12);
          *(v65 + 192) = v67;
          v69 = *v66;
          v70 = v3[7];
          *(v65 + 200) = *v70 - v69 + v67;
          v71 = v3[5];
          *(v71 + 208) = v68 * v64;
          *(v71 + 216) = v68;
          *(v71 + 220) = 1;
          v72 = *(a2 + 16);
          LODWORD(v67) = *(a2 + 20);
          *(v71 + 224) = v72;
          *(v71 + 232) = *v70 - v69 + v72;
          v73 = v3[5];
          *(v73 + 240) = v67;
          *(v73 + 252) = 1;
          break;
        case 11:
          v5 = *(result + 40);
          v6 = *(result + 48);
          *(v5 + 621) = 1;
          v7 = *(a2 + 72);
          *v5 = v7;
          v8 = *v6;
          v9 = *(result + 56);
          *(v5 + 8) = *v9 - v8 + v7;
          v10 = *(result + 40);
          *(v10 + 16) = 0;
          *(v10 + 24) = *(a2 + 76);
          *(v10 + 28) = 1;
          v11 = *(a2 + 64);
          *(v10 + 32) = v11;
          *(v10 + 40) = *v9 - v8 + v11;
          v12 = *(result + 40);
          *(v12 + 48) = 0;
          *(v12 + 56) = *(a2 + 68);
          *(v12 + 60) = 1;
          v13 = *(a2 + 56);
          *(v12 + 64) = v13;
          *(v12 + 72) = *v9 - v8 + v13;
          v14 = *(result + 40);
          *(v14 + 80) = 0;
          *(v14 + 88) = *(a2 + 60);
          *(v14 + 92) = 1;
          *(v14 + 96) = 0;
          *(v14 + 104) = 0;
          v15 = *(result + 40);
          *(v15 + 112) = 0;
          *(v15 + 116) = *(a2 + 8);
          *(v15 + 124) = 1;
          *(v15 + 128) = 0;
          *(v15 + 136) = 0;
          v16 = *(result + 40);
          *(v16 + 144) = 0;
          *(v16 + 148) = *(a2 + 16);
          *(v16 + 156) = 1;
          *(v16 + 160) = 0;
          *(v16 + 168) = 0;
          v17 = *(result + 40);
          *(v17 + 176) = 0;
          *(v17 + 180) = *(a2 + 24);
          *(v17 + 188) = 1;
          break;
      }

      return result;
    }

    if (v4 != -2147483614)
    {
      if (v4 == -2147483597)
      {
        v23 = *(result + 40);
        v24 = *(result + 48);
        v25 = *(a2 + 8);
        v26 = *(a2 + 12);
        *(v23 + 424) = v25;
        *(v23 + 432) = **(result + 56) - *v24 + v25;
        v27 = *(result + 40);
        *(v27 + 440) = v26;
        *(v27 + 448) = 0;
        *(v27 + 452) = 1;
      }

      return result;
    }

LABEL_18:
    v34 = *(result + 40);
    v33 = *(result + 48);
    *(v34 + 616) = v4;
    v35 = *(a2 + 8);
    v36 = *(a2 + 12);
    *(v34 + 256) = v35;
    v37 = *v33;
    v38 = *(result + 56);
    *(v34 + 264) = *v38 - v37 + v35;
    v39 = *(result + 40);
    *(v39 + 272) = v36;
    *(v39 + 284) = 1;
    v40 = *(a2 + 16);
    v41 = *(a2 + 20);
    *(v39 + 288) = v40;
    *(v39 + 296) = *v38 - v37 + v40;
    v42 = *(result + 40);
    *(v42 + 304) = v41;
    *(v42 + 316) = 1;
    v43 = *(a2 + 32);
    v44 = *(a2 + 36);
    *(v42 + 352) = v43;
    *(v42 + 360) = *v38 - v37 + v43;
    v45 = *(result + 40);
    *(v45 + 368) = v44;
    v46 = *(a2 + 24);
    v47 = *(a2 + 28);
    *(v45 + 320) = v46;
    v48 = *v38 - v37;
    *(v45 + 380) = 1;
    *(v45 + 328) = v48 + v46;
    v49 = *(result + 40);
    *(v49 + 336) = v47;
    *(v49 + 348) = 1;
    v50 = *(a2 + 40);
    v51 = *(a2 + 44);
    *(v49 + 424) = v50;
    *(v49 + 432) = *v38 - v37 + v50;
    v52 = *(result + 40);
    *(v52 + 440) = v51;
    *(v52 + 452) = 1;
    return result;
  }

  if (v4 <= 33)
  {
    if (v4 == 29)
    {
      v53 = *(result + 40);
      v54 = *(result + 48);
      v55 = *(a2 + 8);
      v56 = *(a2 + 12);
      *(v53 + 584) = v55;
      *(v53 + 592) = **(result + 56) - *v54 + v55;
      v57 = *(result + 40);
      *(v57 + 600) = v56;
      *(v57 + 608) = 0;
      *(v57 + 612) = 1;
    }

    else if (v4 == 30)
    {
      v28 = *(result + 40);
      v29 = *(result + 48);
      v30 = *(a2 + 8);
      v31 = *(a2 + 12);
      *(v28 + 488) = v30;
      *(v28 + 496) = **(result + 56) - *v29 + v30;
      v32 = *(result + 40);
      *(v32 + 504) = v31;
      *(v32 + 512) = 0;
      *(v32 + 516) = 1;
    }
  }

  else
  {
    switch(v4)
    {
      case '""':
        goto LABEL_18;
      case '&':
        v74 = *(result + 40);
        v75 = *(result + 48);
        v76 = *(a2 + 8);
        v77 = *(a2 + 12);
        *(v74 + 520) = v76;
        *(v74 + 528) = **(result + 56) - *v75 + v76;
        v78 = *(result + 40);
        *(v78 + 536) = v77;
        *(v78 + 544) = 0;
        *(v78 + 548) = 1;
        break;
      case ')':
        v18 = *(result + 40);
        v19 = *(result + 48);
        v20 = *(a2 + 8);
        v21 = *(a2 + 12);
        *(v18 + 552) = v20;
        *(v18 + 560) = **(result + 56) - *v19 + v20;
        v22 = *(result + 40);
        *(v22 + 568) = v21;
        *(v22 + 576) = 0;
        *(v22 + 580) = 1;
        break;
    }
  }

  return result;
}

void *mach_o::Layout::Layout(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  result[3] = a5;
  return result;
}

void mach_o::Fixups::forEachBindTarget(dyld3::MachOFile ***a1, Diagnostics *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!dyld3::MachOFile::isPreload(**a1))
  {
    if (dyld3::MachOFile::hasChainedFixups(**a1))
    {

      mach_o::Fixups::forEachBindTarget_ChainedFixups(a1, a2, a5);
    }

    else if (dyld3::MachOFile::hasOpcodeFixups(**a1))
    {

      mach_o::Fixups::forEachBindTarget_Opcodes(a1, a2, a3, a5, a6);
    }
  }
}

void ___ZNK5dyld46Loader17forEachBindTargetER11DiagnosticsRNS_12RuntimeStateEU13block_pointerFvjjRKNS0_14ResolvedSymbolEEbU13block_pointerFvS7_RbESC__block_invoke(uint64_t a1, const mach_o::Layout *a2)
{
  v3 = *(a1 + 56);
  v4 = mach_o::SymbolTable::SymbolTable(&v18, a2);
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2000000000;
  v17 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2000000000;
  v15 = 0;
  v5 = *(a1 + 80);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = ___ZNK5dyld46Loader17forEachBindTargetER11DiagnosticsRNS_12RuntimeStateEU13block_pointerFvjjRKNS0_14ResolvedSymbolEEbU13block_pointerFvS7_RbESC__block_invoke_2;
  v8[3] = &unk_A1700;
  v10 = v16;
  v11 = v3;
  v6 = *(a1 + 72);
  v12 = *(a1 + 64);
  v13 = v6;
  v9 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = ___ZNK5dyld46Loader17forEachBindTargetER11DiagnosticsRNS_12RuntimeStateEU13block_pointerFvjjRKNS0_14ResolvedSymbolEEbU13block_pointerFvS7_RbESC__block_invoke_3;
  v7[3] = &unk_A1728;
  v7[7] = v3;
  v7[8] = v6;
  v7[4] = v9;
  v7[5] = *(a1 + 48);
  v7[6] = v14;
  mach_o::Fixups::forEachBindTarget(v4, v12, v5, 0, v8, v7);
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v16, 8);
}

void mach_o::Fixups::forEachBindTarget_ChainedFixups(dyld3::MachOFile ***a1, Diagnostics *a2, uint64_t a3)
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2000000000;
  v9 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = ___ZNK6mach_o6Fixups31forEachBindTarget_ChainedFixupsER11DiagnosticsU13block_pointerFvRKNS0_14BindTargetInfoERbE_block_invoke;
  v7[3] = &unk_A3AC8;
  v7[4] = a3;
  v7[5] = v8;
  mach_o::Fixups::forEachChainedFixupTarget(a1, a2, v7);
  if (Diagnostics::noError(a2) && dyld3::MachOFile::isMainExecutable(**a1) && dyld3::MachOFile::hasWeakDefs(**a1))
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = ___ZNK6mach_o6Fixups31forEachBindTarget_ChainedFixupsER11DiagnosticsU13block_pointerFvRKNS0_14BindTargetInfoERbE_block_invoke_2;
    v6[3] = &unk_A3AF0;
    v6[4] = a3;
    v6[5] = v8;
    dyld3::MachOFile::forEachTreatAsWeakDef(v6);
  }

  _Block_object_dispose(v8, 8);
}

dyld3::MachOFile ***mach_o::Fixups::forEachChainedFixupTarget(dyld3::MachOFile ***result, Diagnostics *this, uint64_t a3)
{
  v6 = (*result)[3];
  if (*(v6 + 316) == 1)
  {
    v10[5] = v3;
    v10[6] = v4;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v10[2] = ___ZNK6mach_o6Fixups25forEachChainedFixupTargetER11DiagnosticsU13block_pointerFviPKcybRbE_block_invoke;
    v10[3] = &unk_A3B18;
    v10[4] = a3;
    return mach_o::Fixups::parseOrgArm64eChainedFixups(result, this, 0, v10, 0);
  }

  else if (*(v6 + 412) == 1)
  {
    v7 = *(v6 + 52);
    v9 = *(v6 + 49);

    return dyld3::MachOFile::forEachChainedFixupTarget(this, v9, v7, a3);
  }

  return result;
}

Diagnostics *dyld3::MachOFile::forEachChainedFixupTarget(Diagnostics *this, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v4 = this;
  v5 = a2[2];
  v6 = *(a3 + 12);
  if (v5 <= v6)
  {
    v8 = a2[3];
    if (v6 >= v8)
    {
      v26 = 0;
      v11 = a2 + v8;
      v12 = v6 - v8;
      v13 = a2[5];
      switch(v13)
      {
        case 3u:
          if (!a2[4])
          {
            return this;
          }

          v22 = 0;
          v23 = (a2 + v5 + 8);
          while (1)
          {
            v24 = *(v23 - 1);
            if (v12 < HIDWORD(v24))
            {
              break;
            }

            if (*(v23 - 1) <= 0xFFF0u)
            {
              v25 = *(v23 - 1);
            }

            else
            {
              v25 = v24;
            }

            this = (*(a4 + 16))(a4, v25, &v11[HIDWORD(v24)], *v23, (v24 >> 16) & 1, &v26);
            if ((v26 & 1) == 0)
            {
              ++v22;
              v23 += 2;
              if (v22 < a2[4])
              {
                continue;
              }
            }

            return this;
          }

          break;
        case 2u:
          if (!a2[4])
          {
            return this;
          }

          v18 = 0;
          v19 = (a2 + v5 + 4);
          while (1)
          {
            v20 = *(v19 - 1);
            if (*(v19 - 1) >> 9 > v12)
            {
              break;
            }

            if (*(v19 - 1) <= 0xF0u)
            {
              v21 = *(v19 - 1);
            }

            else
            {
              v21 = v20;
            }

            this = (*(a4 + 16))(a4, v21, &v11[v20 >> 9], *v19, (v20 >> 8) & 1, &v26);
            if ((v26 & 1) == 0)
            {
              ++v18;
              v19 += 2;
              if (v18 < a2[4])
              {
                continue;
              }
            }

            return this;
          }

          break;
        case 1u:
          if (!a2[4])
          {
            return this;
          }

          v14 = 0;
          v15 = a2 + v5;
          while (1)
          {
            v16 = *&v15[4 * v14];
            if (*&v15[4 * v14] >> 9 > v12)
            {
              break;
            }

            if (*&v15[4 * v14] <= 0xF0u)
            {
              v17 = *&v15[4 * v14];
            }

            else
            {
              v17 = v16;
            }

            this = (*(a4 + 16))(a4, v17, &v11[v16 >> 9], 0, (v16 >> 8) & 1, &v26);
            if ((v26 & 1) == 0 && ++v14 < a2[4])
            {
              continue;
            }

            return this;
          }

          break;
        default:
          v9 = "unknown imports format";
          goto LABEL_4;
      }

      return Diagnostics::error(v4, "malformed import table, string overflow");
    }
  }

  v9 = "malformed import table";
LABEL_4:

  return Diagnostics::error(this, v9);
}

void dyld4::Loader::resolveSymbol(dyld4::Loader *this@<X0>, dyld4::RuntimeState *a2@<X2>, Diagnostics *a3@<X1>, int a4@<W3>, char *a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  HIDWORD(v52) = a7;
  v59 = 0;
  v60 = &v59;
  v61 = 0x5802000000;
  v62 = __Block_byref_object_copy__134;
  v63 = __Block_byref_object_dispose__135;
  v64 = 0;
  v65 = a5;
  v66 = 0;
  v67 = 0;
  v68 = 2;
  v70 = 0;
  v69 = 0;
  v17 = a4 - 1;
  if (a4 >= 1 && dyld4::Loader::dependentCount(this, a3) >= a4)
  {
    v20 = dyld4::Loader::dependent(this, a2, v17, 0);
  }

  else
  {
    if (a4 <= -2)
    {
      if (a4 == -3)
      {
        v27 = *(*(a2 + 1) + 322);
        *v76 = 0;
        v77 = v76;
        v78 = 0x2000000000;
        v79 = 0;
        v28 = *(a2 + 14);
        v56[0] = _NSConcreteStackBlock;
        v56[1] = 0x40000000;
        v56[2] = ___ZNK5dyld46Loader13resolveSymbolER11DiagnosticsRNS_12RuntimeStateEiPKcbbU13block_pointerFvjjRKNS0_14ResolvedSymbolEEb_block_invoke_2;
        v56[3] = &unk_A1820;
        v57 = v27;
        v56[8] = a2;
        v56[9] = a5;
        v56[6] = v76;
        v56[7] = this;
        v56[10] = a3;
        v56[4] = a8;
        v56[5] = &v59;
        dyld4::RuntimeLocks::withLoadersReadLock(v28, v56);
        if (v77[24] == 1)
        {
          v30 = v60[5];
          if (v30 != this)
          {
            dyld4::RuntimeState::addDynamicReference(a2, this, v30);
          }

          if (*(a2 + 52) && (dyld4::Loader::hiddenFromFlat(v60[5], 0) & 1) == 0)
          {
            v31 = v60[5];
            v32 = v60[7] & 0x3FFFFFFFFFFFFFFFLL | (*(v60 + 76) << 62) | (*(v60 + 77) << 63);
            v33 = *(a2 + 52);
            v72 = 0;
            v73 = 0;
            v71 = a5;
            v34 = dyld3::Map<char const*,dyld4::WeakDefMapValue,dyld3::HashCString,dyld3::EqualCString>::insert(v33, &v71);
            *(v34 + 8) = v31;
            *(v34 + 16) = v32;
          }
        }

        else if (a6)
        {
          v38 = v60;
          *(v60 + 18) = 2;
          v38[7] = 0;
        }

        else
        {
          if ((*(this + 2) & 0x400) != 0)
          {
            dyld4::Loader::uuidToStr(this + 8, &v71, v29);
          }

          else
          {
            v71 = 0x64697575206F6ELL;
          }

          v47 = dyld4::Loader::path(this, a2);
          Diagnostics::error(a3, "Symbol not found: %s\n  Referenced from: <%s> %s\n  Expected as weak-def export from some loaded dylib", a5, &v71, v47);
        }

        v48 = v60;
        v49 = *(v60 + 7);
        *a9 = *(v60 + 5);
        a9[1] = v49;
        a9[2] = *(v48 + 9);
        v46 = v76;
        goto LABEL_53;
      }

      if (a4 == -2)
      {
        v71 = 0;
        v72 = &v71;
        v73 = 0x2000000000;
        v74 = 0;
        v18 = *(a2 + 14);
        v58[0] = _NSConcreteStackBlock;
        v58[1] = 0x40000000;
        v58[2] = ___ZNK5dyld46Loader13resolveSymbolER11DiagnosticsRNS_12RuntimeStateEiPKcbbU13block_pointerFvjjRKNS0_14ResolvedSymbolEEb_block_invoke;
        v58[3] = &unk_A17F8;
        v58[6] = this;
        v58[7] = a2;
        v58[8] = a3;
        v58[9] = a5;
        v58[4] = &v59;
        v58[5] = &v71;
        dyld4::RuntimeLocks::withLoadersReadLock(v18, v58);
        if (*(v72 + 24) == 1)
        {
          v19 = v60[5];
          if (v19 != this)
          {
            dyld4::RuntimeState::addDynamicReference(a2, this, v19);
          }
        }

        else if (a6)
        {
          v37 = v60;
          *(v60 + 18) = 2;
          v37[7] = 0;
        }

        else if (HIDWORD(v52))
        {
          v41 = v60;
          v60[5] = 0;
          v41[6] = a5;
          v41[7] = dyld4::missing_symbol_abort;
          v41[8] = 0;
          *(v41 + 18) = 2;
          *(v41 + 19) = 0x10000;
        }

        else
        {
          Diagnostics::error(a3, "symbol not found in flat namespace '%s'", a5);
        }

        v44 = v60;
        v45 = *(v60 + 7);
        *a9 = *(v60 + 5);
        a9[1] = v45;
        a9[2] = *(v44 + 9);
        v46 = &v71;
LABEL_53:
        _Block_object_dispose(v46, 8);
        goto LABEL_61;
      }

      goto LABEL_20;
    }

    v20 = this;
    if (a4)
    {
      if (a4 != -1)
      {
LABEL_20:
        v26 = dyld4::Loader::path(this, a2);
        Diagnostics::error(a3, "unknown library ordinal %d in %s when binding '%s'", a4, v26, a5);
LABEL_59:
        v25 = v60;
        goto LABEL_60;
      }

      v20 = *(a2 + 3);
    }
  }

  v60[5] = v20;
  if (!v20 || (__chkstk_darwin(), v22 = *(a2 + 6), v71 = &v53[-((v21 + 23) & 0xFFFFFFFFFFFFFFF0) - 8], v72 = v22, v73 = 0, !dyld4::Loader::hasExportedSymbol(v60[5], a3, a2, a5, 0, 1u, v60 + 5, &v71)))
  {
    v55 = 0;
    v54 = 0;
    if (a6)
    {
      v25 = v60;
      *(v60 + 18) = 2;
      v25[7] = 0;
    }

    else if (HIDWORD(v52))
    {
      v25 = v60;
      v60[5] = 0;
      v25[6] = a5;
      v25[7] = dyld4::missing_symbol_abort;
      v25[9] = 2;
    }

    else
    {
      v35 = dyld4::Loader::overridesDylibInCache(this, &v55, &v54);
      v25 = v60;
      if (!v35)
      {
        v39 = v60[5];
        if (v39)
        {
          v40 = dyld4::Loader::path(v39, a2);
        }

        else
        {
          v40 = "unknown";
        }

        if ((*(a2 + 1113) & 1) == 0)
        {
          v42 = dyld4::Loader::path(this, a2);
          dyld4::RuntimeState::setLaunchMissingSymbol(a2, a5, v40, v42);
        }

        if ((*(this + 2) & 0x400) != 0)
        {
          dyld4::Loader::uuidToStr(this + 8, v76, v36);
        }

        else
        {
          strcpy(v76, "no uuid");
        }

        v43 = v60[5];
        if (v43 && (*(v43 + 4) & 0x400) != 0)
        {
          dyld4::Loader::uuidToStr((v43 + 8), v75, v36);
        }

        else
        {
          strcpy(v75, "no uuid");
        }

        Diagnostics::Diagnostics(v53);
        dyld4::Loader::tooNewErrorAddendum(this, v53, a2);
        if (Diagnostics::hasError(a3))
        {
          v50 = Diagnostics::errorMessage(a3);
          strlcpy(&v71, v50, 0x400uLL);
          Diagnostics::clearError(a3);
          dyld4::Loader::path(this, a2);
          Diagnostics::errorMessage(v53);
          Diagnostics::error(a3, "%s\n  Referenced from: <%s> %s%s\n  Expected in:     <%s> %s");
        }

        else
        {
          dyld4::Loader::path(this, a2);
          Diagnostics::errorMessage(v53);
          Diagnostics::error(a3, "Symbol not found: %s\n  Referenced from: <%s> %s%s\n  Expected in:     <%s> %s");
        }

        Diagnostics::~Diagnostics(v53);
        goto LABEL_59;
      }

      *(v60 + 18) = 2;
      v25[7] = 195903495;
    }

LABEL_60:
    v51 = *(v25 + 7);
    *a9 = *(v25 + 5);
    a9[1] = v51;
    a9[2] = *(v25 + 9);
    goto LABEL_61;
  }

  v23 = v60;
  v24 = *(v60 + 7);
  *a9 = *(v60 + 5);
  a9[1] = v24;
  a9[2] = *(v23 + 9);
LABEL_61:
  _Block_object_dispose(&v59, 8);
}

BOOL ___ZNK5dyld46Loader17forEachBindTargetER11DiagnosticsRNS_12RuntimeStateEU13block_pointerFvjjRKNS0_14ResolvedSymbolEEbU13block_pointerFvS7_RbESC__block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(*(*(a1 + 48) + 8) + 24) != *a2)
  {
    ___ZNK5dyld46Loader17forEachBindTargetER11DiagnosticsRNS_12RuntimeStateEU13block_pointerFvjjRKNS0_14ResolvedSymbolEEbU13block_pointerFvS7_RbESC__block_invoke_2_cold_1();
  }

  dyld4::Loader::resolveSymbol(*(a1 + 56), *(a1 + 72), *(a1 + 64), *(a2 + 4), *(a2 + 8), *(a2 + 24), *(a2 + 25), *(a1 + 32), &v7);
  v8 += *(a2 + 16);
  (*(*(a1 + 40) + 16))(*(a1 + 40));
  result = Diagnostics::hasError(*(a1 + 64));
  if (result)
  {
    *a3 = 1;
  }

  ++*(*(*(a1 + 48) + 8) + 24);
  return result;
}

uint64_t ___ZNK6mach_o6Fixups31forEachBindTarget_ChainedFixupsER11DiagnosticsU13block_pointerFvRKNS0_14BindTargetInfoERbE_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v8 = a1 + 32;
  v7 = *(a1 + 32);
  v10[0] = *(*(*(v8 + 8) + 8) + 24);
  v10[1] = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = 0;
  result = (*(v7 + 16))(v7, v10, a6, a4);
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t dyld4::Loader::hiddenFromFlat(dyld4::Loader *this, _BOOL8 a2)
{
  if (*this != 1815378276)
  {
    dyld4::Loader::hiddenFromFlat();
  }

  if (*(this + 2))
  {

    return dyld4::PrebuiltLoader::hiddenFromFlat(this);
  }

  else
  {

    return dyld4::JustInTimeLoader::hiddenFromFlat(this, a2);
  }
}

uint64_t dyld4::JustInTimeLoader::dependent(dyld4::JustInTimeLoader *this, int a2, unsigned int a3, char *a4)
{
  v4 = *(this + 5);
  if (a3 >= (v4 >> 39))
  {
    dyld4::JustInTimeLoader::dependent();
  }

  if (a4)
  {
    if ((v4 & 0x800000) != 0)
    {
      v8 = &mach_o::LinkedDylibAttributes::regular;
    }

    else
    {
      v8 = dyld4::JustInTimeLoader::dependentAttrs(this, a3);
    }

    *a4 = *v8;
  }

  return *(this + a3 + 58);
}

uint64_t dyld4::RuntimeState::incDlRefCount(uint64_t this, const dyld4::Loader *a2)
{
  if ((*(a2 + 2) & 0x20) == 0)
  {
    v3 = this;
    v4 = *(this + 1040);
    if (v4)
    {
      v5 = (*(this + 1032) + 8);
      v6 = 16 * v4;
      while (*(v5 - 1) != a2)
      {
        v5 += 2;
        v6 -= 16;
        if (!v6)
        {
          goto LABEL_6;
        }
      }

      ++*v5;
    }

    else
    {
LABEL_6:
      this = lsl::Vector<dyld4::InterposeTupleAll>::reserve(this + 1024, v4 + 1);
      v7 = *(v3 + 1032);
      v8 = *(v3 + 1040);
      *(v3 + 1040) = v8 + 1;
      v9 = (v7 + 16 * v8);
      *v9 = a2;
      v9[1] = 1;
    }
  }

  return this;
}

uint64_t dyld4::Loader::hasExportedSymbol(dyld4::PseudoDylib **a1, Diagnostics *a2, dyld4::Loader ***a3, const unsigned __int8 *a4, uint64_t a5, unsigned int a6, dyld4::PseudoDylib ***a7, dyld4::Loader ***a8)
{
  v87 = a6;
  if (a8)
  {
    v15 = a8[2];
    if (v15)
    {
      v16 = *a8;
      v17 = 8 * v15;
      while (*v16 != a1)
      {
        ++v16;
        v17 -= 8;
        if (!v17)
        {
          goto LABEL_6;
        }
      }

      return 0;
    }

LABEL_6:
    v92 = a1;
    dyld3::Array<dyld4::Loader const*>::push_back(a8, &v92);
  }

  v86 = a4;
  v18 = 0;
  v19 = 1;
  if (a5 > 1)
  {
    if (a5 == 2)
    {
      v18 = 3;
      v20 = 1;
    }

    else
    {
      v20 = 0;
      v21 = 0;
      if (a5 != 3)
      {
        goto LABEL_18;
      }

      v19 = 0;
      v20 = 1;
      v18 = a5;
    }

    v21 = 1;
  }

  else
  {
    if (a5)
    {
      v20 = 0;
      v21 = 0;
      if (a5 != 1)
      {
        goto LABEL_18;
      }

      v19 = 0;
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v21 = 1;
    }

    v18 = a5;
  }

LABEL_18:
  v84 = v21;
  v83 = v20;
  Address = dyld4::Loader::loadAddress(a1, a3);
  v90 = 0;
  v89 = 0;
  v85 = a7;
  if (!dyld4::Loader::getExportsTrie(a1, &v90, &v89))
  {
    v45 = dyld4::Loader::mf(a1, a3);
    v92 = 0;
    v93 = &v92;
    v94 = 0x2000000000;
    v95 = 0;
    v88[0] = _NSConcreteStackBlock;
    v88[1] = 0x40000000;
    v88[2] = ___ZNK5dyld46Loader17hasExportedSymbolER11DiagnosticsRNS_12RuntimeStateEPKcNS0_18ExportedSymbolModeENS0_12ResolverModeEPNS0_14ResolvedSymbolEPN5dyld35ArrayIPKS0_EE_block_invoke;
    v88[3] = &unk_A18A0;
    v26 = v86;
    v88[6] = a2;
    v88[7] = v86;
    v88[8] = a7;
    v88[9] = v45;
    v88[10] = a3;
    v88[4] = &v92;
    v88[5] = a1;
    dyld4::Loader::withLayout(a1, a2, a3, v88);
    v46 = *(v93 + 24);
    _Block_object_dispose(&v92, 8);
    if (v46)
    {
      return 1;
    }

LABEL_37:
    v48 = v85;
    if (a1)
    {
      if ((*(a1 + 2) & 1) == 0)
      {
        v49 = a1[13];
        if (v49)
        {
          v50 = a1[13];
          v91 = 0;
          v92 = v26;
          v96 = 0;
          v51 = dyld4::PseudoDylib::lookupSymbols(v49, &v92, 1, &v96, 1, &v91, 1);
          v47 = v51 == 0;
          if (v51)
          {
            v52 = v51;
            Diagnostics::error(a2, "pseudo-dylib lookup error: %s", v51);
            dyld4::PseudoDylib::disposeString(v50, v52);
            return v47;
          }

          if (v91)
          {
            v76 = v86;
            *v85 = a1;
            v48[1] = v76;
            v77 = v96;
            v48[2] = (v77 - dyld4::Loader::mf(a1, a3));
            *(v48 + 8) = 1;
            *(v48 + 36) = (v91 & 4) != 0;
            v78 = dyld4::Loader::resolvedAddress(a3, v48);
            v48[3] = v78;
            v80 = dyld4::Loader::interpose(a3, v78, 0, v79);
            v48[3] = v80;
            if (*(v48 + 36) == 1)
            {
              v48[3] = v80;
            }

            v81 = v91;
            *(v48 + 37) = (v91 & 2) != 0;
            *(v48 + 38) = 0;
            *(v48 + 39) = (v81 & 8) != 0;
            return v47;
          }

          v26 = v86;
        }
      }
    }

    if (v84)
    {
      v47 = dyld4::Loader::dependentCount(a1, v28);
      if (!v47)
      {
        return v47;
      }

      v64 = 0;
      while (1)
      {
        LOBYTE(v92) = 0;
        v65 = dyld4::Loader::dependent(a1, a3, v64, &v92);
        if (v65)
        {
          if ((v92 & 2) != 0 || ((v92 & 0xC) != 0 ? (v66 = 1) : (v66 = v83 ^ 1), (v66 & 1) == 0))
          {
            if (dyld4::Loader::hasExportedSymbol(v65, a2, a3, v26, v18, v87, v85, a8))
            {
              break;
            }
          }
        }

        if (v47 == ++v64)
        {
          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  v24 = (Address + v90);
  v25 = v89;
  v26 = v86;
  v27 = dyld3::MachOFile::trieWalk(a2, v24, (v24 + v89), v86, v23);
  if (v27)
  {
    v30 = v19;
  }

  else
  {
    v30 = 1;
  }

  if (v30)
  {
    goto LABEL_37;
  }

  v96 = v27;
  v32 = dyld3::MachOFile::read_uleb128(a2, &v96, (v24 + v25), v29);
  if ((v32 & 8) != 0)
  {
    v54 = dyld3::MachOFile::read_uleb128(a2, &v96, (v24 + v25), v31);
    v55 = v96;
    if (*v96)
    {
      v56 = _platform_strcmp(v96, v86) != 0;
    }

    else
    {
      v56 = 0;
      v55 = v86;
    }

    if (!v54 || v54 > dyld4::Loader::dependentCount(a1, v53))
    {
      v67 = dyld4::Loader::path(a1, a3);
      Diagnostics::error(a2, "re-export ordinal %lld in %s out of range for %s", v54, v67, v86);
      return 0;
    }

    LOBYTE(v91) = 0;
    v69 = dyld4::Loader::dependent(a1, a3, v54 - 1, &v91);
    if (!v69)
    {
      return 0;
    }

    if (a5 == 1 && v56)
    {
      v70 = 0;
    }

    else
    {
      v70 = a5;
    }

    v71 = !v56;
    if (!a8)
    {
      v71 = 1;
    }

    if (v71)
    {
      return dyld4::Loader::hasExportedSymbol(v69, a2, a3, v55, v70, v87, v85, a8);
    }

    else
    {
      v72 = __chkstk_darwin();
      v74 = a3[6];
      v92 = (&v82 - ((v73 + 23) & 0xFFFFFFFFFFFFFFF0));
      v93 = v74;
      v94 = 0;
      return dyld4::Loader::hasExportedSymbol(v72, a2, a3, v55, v75, v87, v85, &v92);
    }
  }

  else
  {
    hasError = Diagnostics::hasError(a2);
    if ((v32 & 0x20) == 0)
    {
      if (!hasError)
      {
        v35 = dyld3::MachOFile::read_uleb128(a2, &v96, (v24 + v25), v34);
        if (!v87 && (v32 & 0x10) != 0)
        {
          v37 = dyld3::MachOFile::read_uleb128(a2, &v96, (v24 + v25), v36);
          v38 = dyld4::Loader::loadAddress(a1, a3);
          v35 = ((v38 + v37))() - v38;
          v26 = v86;
        }

        v39 = v85;
        *v85 = a1;
        v39[1] = v26;
        v39[2] = v35;
        if ((v32 & 3) == 2)
        {
          v40 = 2;
        }

        else
        {
          v40 = 1;
        }

        *(v39 + 8) = v40;
        v41 = dyld4::Loader::mf(a1, a3);
        *(v39 + 36) = dyld3::MachOFile::inCodeSection(v41, *(v39 + 4));
        v42 = dyld4::Loader::resolvedAddress(a3, v39);
        v39[3] = v42;
        v44 = dyld4::Loader::interpose(a3, v42, 0, v43);
        v39[3] = v44;
        if (*(v39 + 36) == 1)
        {
          v39[3] = v44;
        }

        *(v39 + 37) = (v32 & 4) != 0;
        *(v39 + 19) = 0;
        return 1;
      }

      return 0;
    }

    if (hasError)
    {
      return 0;
    }

    dyld3::MachOFile::read_uleb128(a2, &v96, (v24 + v25), v34);
    v58 = dyld3::MachOFile::read_uleb128(a2, &v96, (v24 + v25), v57);
    v59 = v86;
    v60 = v58;
    v61 = dyld4::Loader::selectFromFunctionVariants(a1, a2, a3, v86, v58);
    v62 = Diagnostics::hasError(a2);
    if (!v62)
    {
      v63 = v85;
      *v85 = a1;
      v63[1] = v59;
      v63[2] = v61;
      *(v63 + 8) = 1;
      *(v63 + 18) = 1;
      *(v63 + 38) = 0;
      *(v63 + 40) = 1;
      *(v63 + 21) = v60;
    }

    return !v62;
  }
}

BOOL dyld4::Loader::getExportsTrie(dyld4::Loader *this, unint64_t *a2, unsigned int *a3)
{
  if (*this != 1815378276)
  {
    dyld4::Loader::getExportsTrie();
  }

  if (*(this + 2))
  {

    return dyld4::PrebuiltLoader::getExportsTrie(this, a2, a3);
  }

  else
  {

    return dyld4::JustInTimeLoader::getExportsTrie(this, a2, a3);
  }
}

void dyld4::RuntimeState::notifyObjCPatching(dyld4::RuntimeState *this)
{
  if (*(this + 87) && *(this + 40))
  {
    dyld4::RuntimeState::setDyldPatchedObjCClasses(this);
    v2 = *(this + 40);
    if (v2)
    {
      v3 = (*(this + 39) + 16);
      v4 = 32 * v2;
      do
      {
        v6 = *(v3 - 1);
        v5 = v3[1];
        dyld4::ReadOnlyCallback<void (*)(mach_header const*,void *,mach_header const*,void const*)>::operator()<mach_header const* const&,void *,mach_header const* const&,void const*>((this + 696), v3 - 2, &v6, v3, &v5);
        v3 += 4;
        v4 -= 32;
      }

      while (v4);
    }

    if (*(*(this + 1) + 325))
    {
      dyld4::RuntimeState::log(this, "objc-patch-class-notifier called with %lld patches:\n", *(this + 40));
    }

    *(this + 40) = 0;
  }
}

BOOL dyld4::PrebuiltLoader::getExportsTrie(dyld4::PrebuiltLoader *this, unint64_t *a2, unsigned int *a3)
{
  *a2 = *(this + 8);
  v3 = *(this + 18);
  *a3 = v3;
  return v3 != 0;
}

void lsl::ProtectedStack::reset(lsl::ProtectedStack *this)
{
  if (*this)
  {
    bzero((*this - 0x4000), 0x4000uLL);
  }
}

uint64_t dyld4::RuntimeLocks::releaseDlopenLockInForkParent(dyld4::RuntimeLocks *this)
{
  result = *this;
  if (result)
  {
    return (*(*result + 104))(result, this + 32);
  }

  return result;
}

uint64_t dyld3::MachOFile::inCodeSection(dyld3::MachOFile *this, int a2)
{
  if (*(this + 1) == 16777228 && (*(this + 2) & 0xFFFFFF) == 2)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2000000000;
    v10 = 0;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = ___ZNK5dyld39MachOFile13inCodeSectionEj_block_invoke;
    v5[3] = &unk_A3628;
    v6 = a2;
    v5[4] = &v7;
    v5[5] = mach_o::Header::preferredLoadAddress(this);
    mach_o::Header::forEachSection(this, v5);
    v3 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

const dyld4::RuntimeState *dyld4::Loader::resolvedAddress(const dyld4::RuntimeState *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2 < 2)
  {
    return (*(a2 + 16) + dyld4::Loader::loadAddress(*a2, result));
  }

  if (v2 == 2)
  {
    return *(a2 + 16);
  }

  return result;
}

uint64_t ___ZNK5dyld39MachOFile13inCodeSectionEj_block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v3 = *(a2 + 56) - *(result + 40);
  v4 = *(result + 48);
  if (v3 <= v4 && v3 + *(a2 + 64) > v4)
  {
    *(*(*(result + 32) + 8) + 24) = (*(a2 + 44) & 0x80000400) != 0;
    *a3 = 1;
  }

  return result;
}

dyld4::RuntimeState *dyld4::Loader::interpose(dyld4::Loader *this, dyld4::RuntimeState *a2, dyld4::Loader *a3, const dyld4::Loader *a4)
{
  v4 = a2;
  if (a2)
  {
    v6 = *(this + 36);
    if (v6)
    {
      v7 = *(this + 35);
      v8 = 16 * v6;
      while (v7[1] != a2)
      {
        v7 += 2;
        v8 -= 16;
        if (!v8)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_21;
    }

LABEL_6:
    v9 = *(this + 44);
    if (v9)
    {
      v7 = *(this + 43);
      v10 = 16 * v9;
      while (v7[1] != a2)
      {
        v7 += 2;
        v10 -= 16;
        if (!v10)
        {
          goto LABEL_10;
        }
      }

LABEL_21:
      v11 = *(this + 1);
      goto LABEL_22;
    }

LABEL_10:
    v11 = *(this + 1);
    if (*(v11 + 311) == 1)
    {
      v12 = *(this + 28);
      if (v12)
      {
        v7 = (*(this + 27) + 8);
        v13 = 24 * v12;
        while (v7[1] != a2 || *(v7 - 1) != a3)
        {
          v7 += 3;
          v13 -= 24;
          if (!v13)
          {
            goto LABEL_16;
          }
        }

        if (*(v11 + 326) != 1)
        {
          return *v7;
        }

        v16 = *v7;
        if (!a3)
        {
          v17 = &unk_91735;
          goto LABEL_26;
        }

        goto LABEL_24;
      }

LABEL_16:
      v14 = *(this + 24);
      if (v14)
      {
        v7 = *(this + 23);
        v15 = 16 * v14;
        while (v7[1] != a2)
        {
          v7 += 2;
          v15 -= 16;
          if (!v15)
          {
            return v4;
          }
        }

LABEL_22:
        if (*(v11 + 326) != 1)
        {
          return *v7;
        }

        v16 = *v7;
        if (!a3)
        {
          v17 = "dlsym";
          goto LABEL_26;
        }

LABEL_24:
        v17 = dyld4::Loader::path(a3, this);
LABEL_26:
        dyld4::RuntimeState::log(this, "  interpose replaced 0x%08lX with 0x%08lX in %s\n", v4, v16, v17);
        return *v7;
      }
    }
  }

  return v4;
}

vm_address_t *___ZNK5dyld416JustInTimeLoader11applyFixupsER11DiagnosticsRNS_12RuntimeStateERNS_34DyldCacheDataConstLazyScopedWriterEbPN3lsl6VectorINSt3__14pairIPKNS_6LoaderEPKcEEEE_block_invoke_29(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = dyld4::Loader::resolvedAddress(v4, a2);
  v18 = dyld4::Loader::interpose(v4, v6, v5, v7);
  v8 = *(a1 + 56);
  v9 = *(v8 + 1);
  if (*(a2 + 40))
  {
    if ((*(v9 + 329) & 1) != 0 || *(v9 + 322) == 1)
    {
      if (*a2)
      {
        dyld4::Loader::leafName(*a2, *(a1 + 56));
        v8 = *(a1 + 56);
      }

      dyld4::Loader::leafName(v5, v8);
      dyld4::RuntimeState::log(v8, "<%s/bind#%llu> -> %p <%s/variant-table#%d('%s')>)\n");
    }
  }

  else if (*(v9 + 322))
  {
    if (*a2)
    {
      dyld4::Loader::leafName(*a2, *(a1 + 56));
      v8 = *(a1 + 56);
    }

    dyld4::Loader::leafName(v5, v8);
    dyld4::RuntimeState::log(v8, "<%s/bind#%llu> -> %p <%s/%s>)\n");
  }

  if (*(a2 + 38) == 1)
  {
    v10 = *(a1 + 32);
    v11 = *(*(a1 + 40) + 8);
    v17.n128_u64[0] = *(a2 + 1);
    v17.n128_u32[2] = *(*(v10 + 8) + 56);
    dyld3::OverflowSafeArray<dyld4::RuntimeState::HiddenCacheAddr,4294967295ull>::push_back((v11 + 40), &v17);
  }

  if (*(a2 + 39) == 1)
  {
    v12 = *(a1 + 64);
    if (v12)
    {
      v16 = *a2;
      lsl::Vector<dyld4::InterposeTupleAll>::reserve(v12, *(v12 + 16) + 1);
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      *(v12 + 16) = v14 + 1;
      *(v13 + 16 * v14) = v16;
    }
  }

  return dyld3::OverflowSafeArray<dyld4::Loader *,4294967295ull>::push_back((*(*(a1 + 32) + 8) + 40), &v18);
}

BOOL dyld4::JustInTimeLoader::getExportsTrie(dyld4::JustInTimeLoader *this, unint64_t *a2, unsigned int *a3)
{
  v3 = *(this + 28);
  if (v3)
  {
    *a2 = v3;
    *a3 = *(this + 29);
  }

  return v3 != 0;
}

uint64_t dyld4::APIs::dyld_get_program_sdk_version(dyld4::APIs *this, uint64_t a2, const mach_o::Header *a3)
{
  SdkVersion = dyld4::APIs::getSdkVersion(this, *(*(this + 1) + 16), a3);
  v5 = SdkVersion;
  if (*(*(this + 1) + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "dyld_get_program_sdk_version() => 0x%08X\n", SdkVersion);
  }

  return v5;
}

uint64_t dyld4::APIs::getSdkVersion(dyld4::APIs *this, const mach_header *a2, const mach_o::Header *a3)
{
  dyld4::APIs::getImagePlatformAndVersions(&v10, this, a2, a3);
  v4 = *(this + 1);
  if (v10 != *(v4 + 112) || v11 != *(v4 + 120))
  {
    return 0;
  }

  v5 = v12;
  mach_o::Platform::basePlatform(&v10, &v8);
  if (v8 == &mach_o::PlatformInfo_bridgeOS::singleton && !v9)
  {
    return (v5 + 589824);
  }

  if (v8 == &mach_o::PlatformInfo_watchOS::singleton)
  {
    if (v5 < 0x1A0000 && v9 == 0)
    {
      return (v5 + 458752);
    }

    else
    {
      return v5;
    }
  }

  return v5;
}

dyld4::PseudoDylib **dyld4::APIs::dlsym(dyld4::Loader **this, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  LODWORD(v86[0]) = 520617996;
  v86[1] = a2;
  v86[2] = 0;
  v86[3] = 0;
  v86[4] = a3;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0;
  dyld3::ScopedTimer::startTimer(v86, a2, a3, a4, a5, a6, a7, a8);
  if (*(this[1] + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "dlsym(%p, %s)\n", a2, a3);
  }

  dyld4::APIs::clearErrorString(this);
  if (!_platform_strcmp(a3, "pthread_jit_write_with_callback_np") || !_platform_strncmp(a3, "se_memory_inline_jit", 0x14uLL))
  {
    goto LABEL_8;
  }

  if (!dyld4::APIs::addressLookupsDisabled(this, a3))
  {
    v14 = _platform_strlen(a3);
    __chkstk_darwin(v14, v15, v16, v17, v18, v19, v20, v21, v65);
    v23 = &v66[-1] - ((v22 + 17) & 0xFFFFFFFFFFFFFFF0);
    *v23 = 95;
    strlcpy(v23 + 1, a3, v22 + 1);
    v80 = 0;
    v81 = &v80;
    v82 = 0x3802000000;
    v83 = __Block_byref_object_copy__71;
    v84 = __Block_byref_object_dispose__72;
    Diagnostics::Diagnostics(v85);
    v71 = 0;
    v72 = &v71;
    v73 = 0x5802000000;
    v74 = __Block_byref_object_copy__85;
    v75 = __Block_byref_object_dispose__86;
    v79 = 0;
    v77 = 0;
    v78 = 0;
    if (a2 <= -3)
    {
      if (a2 == -5)
      {
        if ((dyld4::Loader::hasExportedSymbol(this[3], (v81 + 5), this, v23, 0, 1u, &v76, 0) & 1) == 0)
        {
          dyld4::APIs::setErrorString(this, "dlsym(RTLD_MAIN_ONLY, %s): symbol not found");
          goto LABEL_43;
        }

        goto LABEL_38;
      }

      if (a2 != -3)
      {
LABEL_33:
        v36 = (a2 & 0xFFFFFFFFFFFFFFFELL ^ &dword_0);
        if (a2)
        {
          v37 = 0;
        }

        else
        {
          v37 = 3;
        }

        goto LABEL_36;
      }

      ImageContaining = dyld4::APIs::findImageContaining(this, v8);
      if (!ImageContaining)
      {
        dyld4::APIs::setErrorString(this, "dlsym(RTLD_SELF, %s): called by unknown image (caller=%p)");
        goto LABEL_43;
      }

      __chkstk_darwin(ImageContaining, v26, v27, v28, v29, v30, v31, v32, v65);
      v34 = this[6];
      v67 = (&v66[-1] - ((v33 + 23) & 0xFFFFFFFFFFFFFFF0));
      v68 = v34;
      v69 = 0;
      if (dyld4::Loader::hasExportedSymbol(v35, (v81 + 5), this, v23, 3, 0, v72 + 5, &v67))
      {
        goto LABEL_38;
      }

      dyld4::APIs::setErrorString(this, "dlsym(RTLD_SELF, %s): symbol not found");
    }

    else
    {
      if (!a2)
      {
        v36 = 0;
        v37 = 3;
LABEL_36:
        valid = dyld4::APIs::validLoader(this, v36);
        if (!valid)
        {
          dyld4::APIs::setErrorString(this, "dlsym(%p, %s): invalid handle");
          goto LABEL_43;
        }

        __chkstk_darwin(valid, v50, v51, v52, v53, v54, v55, v56, v65);
        v58 = this[6];
        v67 = (&v66[-1] - ((v57 + 23) & 0xFFFFFFFFFFFFFFF0));
        v68 = v58;
        v69 = 0;
        if ((dyld4::Loader::hasExportedSymbol(v36, (v81 + 5), this, v23, v37, 0, v72 + 5, &v67) & 1) == 0)
        {
          dyld4::APIs::setErrorString(this, "dlsym(%p, %s): symbol not found", a2, a3);
          if (*(this[1] + 324) == 1)
          {
            dyld4::RuntimeState::log(this, "     dlsym(%s) => NULL\n", a3);
          }

          goto LABEL_63;
        }

LABEL_38:
        v59 = v72[5];
        if (v59)
        {
          v60 = dyld4::Loader::analyzer(v59, this);
          if (mach_o::Header::noDynamicAccess(v60))
          {
            if (*(this[1] + 324) == 1)
            {
              dyld4::RuntimeState::log(this, "     dlsym(%s) => NULL (no dynamic access)\n");
            }
          }

          else
          {
            v12 = v72[8];
            if (*(v72 + 79) != 1 || ((*(v72[5] + 2) & 1) != 0 ? (v61 = 0) : (v61 = v72[5]), v62 = v61[13], (v63 = dyld4::PseudoDylib::finalizeRequestedSymbols(v62, (v72 + 6), 1)) == 0))
            {
              if (*(this[1] + 324) == 1)
              {
                dyld4::RuntimeState::log(this, "     dlsym(%s) => %p\n", a3, v12);
              }

              v88 = v12;
              goto LABEL_64;
            }

            v64 = v63;
            if (*(this[1] + 324) == 1)
            {
              dyld4::RuntimeState::log(this, "     dlsym(%s) => NULL, error finalizing pseudo-dylib symbols: %s", a3, v63);
            }

            dyld4::APIs::setErrorString(this, "dlsym(%s): error finalizing pseudo-dylib symbols: %s", a3, v64);
            dyld4::PseudoDylib::disposeString(v62, v64);
          }

LABEL_63:
          v12 = 0;
LABEL_64:
          _Block_object_dispose(&v71, 8);
          _Block_object_dispose(&v80, 8);
          Diagnostics::~Diagnostics(v85);
          goto LABEL_9;
        }

LABEL_43:
        if (*(this[1] + 324) == 1)
        {
          dyld4::RuntimeState::log(this, "     dlsym(%s) => NULL\n");
        }

        goto LABEL_63;
      }

      if (a2 != -1)
      {
        if (a2 == -2)
        {
          v67 = 0;
          v68 = &v67;
          v69 = 0x2000000000;
          v70 = 0;
          v24 = this[14];
          v66[0] = _NSConcreteStackBlock;
          v66[1] = 0x40000000;
          v66[2] = ___ZN5dyld44APIs5dlsymEPvPKc_block_invoke;
          v66[3] = &unk_A23B0;
          v66[7] = this;
          v66[8] = v23;
          v66[4] = &v80;
          v66[5] = &v71;
          v66[6] = &v67;
          dyld4::RuntimeLocks::withLoadersReadLock(v24, v66);
          if ((v68[3] & 1) == 0)
          {
            dyld4::APIs::setErrorString(this, "dlsym(RTLD_DEFAULT, %s): symbol not found", a3);
            if (*(this[1] + 324) == 1)
            {
              dyld4::RuntimeState::log(this, "     dlsym(%s) => NULL\n", a3);
            }

            _Block_object_dispose(&v67, 8);
            goto LABEL_63;
          }

          _Block_object_dispose(&v67, 8);
          goto LABEL_38;
        }

        goto LABEL_33;
      }

      v38 = dyld4::APIs::findImageContaining(this, v8);
      if (!v38)
      {
        dyld4::APIs::setErrorString(this, "dlsym(RTLD_NEXT, %s): called by unknown image (caller=%p)");
        goto LABEL_43;
      }

      __chkstk_darwin(v38, v39, v40, v41, v42, v43, v44, v45, v65);
      v47 = this[6];
      v67 = (&v66[-1] - ((v46 + 23) & 0xFFFFFFFFFFFFFFF0));
      v68 = v47;
      v69 = 0;
      if (dyld4::Loader::hasExportedSymbol(v48, (v81 + 5), this, v23, 2, 0, v72 + 5, &v67))
      {
        goto LABEL_38;
      }

      dyld4::APIs::setErrorString(this, "dlsym(RTLD_NEXT, %s): symbol not found");
    }

    if (*(this[1] + 324) == 1)
    {
      dyld4::RuntimeState::log(this, "     dlsym(%s) => NULL\n", a3);
    }

    goto LABEL_63;
  }

  if (*(this[1] + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "     dlsym(%s) => NULL (blocked)\n", a3);
  }

LABEL_8:
  v12 = 0;
LABEL_9:
  dyld3::ScopedTimer::endTimer(v86);
  return v12;
}

uint64_t dyld4::APIs::addressLookupsDisabled(dyld4::APIs *this, const char *a2)
{
  v13 = a2;
  v3 = *(this + 1);
  if (a2 && (v4 = *(v3 + 296)) != 0)
  {
    v6 = strstr(v4, a2);
    if (v6)
    {
      v7 = *(v6 - 1);
      v8 = v6[_platform_strlen(a2)];
      v9 = v8 == 58 || v8 == 0;
      if (v9 && v7 == 58)
      {
        return 0;
      }
    }
  }

  else if (*(v3 + 290))
  {
    goto LABEL_14;
  }

  v12[0] = *(this + 118);
  if (v12[0])
  {
    dyld4::ReadOnlyCallback<void (*)(char const*)>::operator()<char const*&>(v12, &v13);
  }

LABEL_14:
  v10 = *(this + 1);
  if (*(v10 + 290) != 1)
  {
    return 0;
  }

  if (*(v10 + 291) == 1)
  {
    v12[0] = &dword_8 + 2;
    v12[1] = 0;
    v12[2] = 0;
    v12[3] = v13;
    dyld4::halt("symbol address lookup (dlsym) disabled in process", v12);
  }

  return 1;
}

BOOL dyld4::APIs::validLoader(lsl::Allocator **this, const dyld4::Loader *a2)
{
  if (!a2 || (lsl::Allocator::owned(this[2], a2, 32) & 1) == 0 && !dyld4::RuntimeState::inPrebuiltLoader(this, a2, 32))
  {
    return 0;
  }

  return dyld4::Loader::hasMagic(a2);
}

BOOL dyld4::RuntimeState::inPrebuiltLoader(dyld4::RuntimeState *this, dyld4::PrebuiltLoaderSet *a2, uint64_t a3)
{
  v6 = *(this + 119);
  result = 1;
  if (!v6 || !dyld4::PrebuiltLoaderSet::contains(v6, a2, a3))
  {
    v7 = *(this + 122);
    if (!v7 || !dyld4::PrebuiltLoaderSet::contains(v7, a2, a3))
    {
      return 0;
    }
  }

  return result;
}

uint64_t dyld4::JustInTimeLoader::path(dyld4::JustInTimeLoader *this, const dyld4::RuntimeState *a2)
{
  if (*(this + 20))
  {
    return this + *(this + 20);
  }

  else
  {
    return 0;
  }
}

uint64_t dyld3::MachOAnalyzer::hasSwiftOrObjC(dyld3::MachOAnalyzer *this, BOOL *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = ___ZNK5dyld313MachOAnalyzer14hasSwiftOrObjCEPb_block_invoke;
  v5[3] = &unk_A3E40;
  v5[6] = a2;
  v5[7] = dyld3::MachOLoaded::getSlide(this);
  v5[4] = &v6;
  v5[5] = this;
  dyld3::MachOFile::forEachSection(this, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

BOOL dyld3::MachOAnalyzer::hasSwift(dyld3::MachOAnalyzer *this)
{
  v2 = 0;
  dyld3::MachOAnalyzer::hasSwiftOrObjC(this, &v2);
  return v2;
}

BOOL dyld4::APIs::_dyld_has_preoptimized_swift_protocol_conformances(dyld4::APIs *this, mach_header *a2)
{
  result = dyld3::MachOAnalyzer::hasSwift(a2);
  if (result)
  {
    v5 = *(this + 122);
    if (!v5)
    {
      return 0;
    }

    result = dyld4::PrebuiltLoaderSet::hasOptimizedSwift(*(this + 122));
    if (!result)
    {
      return result;
    }

    v6 = *(v5 + 12);
    if (v6)
    {
      v7 = 0;
      v8 = v6 - 1;
      do
      {
        if (*(v5 + 12) <= v7)
        {
          dyld4::RuntimeState::findPrebuiltLoader();
        }

        v9 = dyld4::Loader::analyzer((v5 + *(v5 + *(v5 + 16) + 4 * v7)), this) == a2;
        result = v9;
        v9 = v9 || v8 == v7++;
      }

      while (!v9);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL ___ZNK5dyld313MachOAnalyzer14hasSwiftOrObjCEPb_block_invoke(_BOOL8 result, void *a2, _BYTE *a3)
{
  if (a2[1] == 16 && **a2 == 0x695F636A626F5F5FLL && *(*a2 + 8) == 0x6F666E696567616DLL)
  {
    v6 = result;
    result = std::string_view::starts_with[abi:nn200100](a2 + 2, "__DATA");
    if (result)
    {
      v7 = v6[6];
      if (v7)
      {
        if (*(v6[7] + a2[7] + 5))
        {
          *v7 = 1;
        }
      }

      *(*(v6[4] + 8) + 24) = 1;
      *a3 = 1;
    }
  }

  return result;
}

uint64_t dyld4::APIs::_dyld_find_foreign_type_protocol_conformance_on_disk(dyld4::APIs *this, dyld4::PrebuiltLoader::BindTargetRef *a2, dyld4::PrebuiltLoader::BindTargetRef *a3, uint64_t a4)
{
  v4 = *(this + 122);
  if (!v4)
  {
    return 2;
  }

  if (!dyld4::PrebuiltLoaderSet::hasOptimizedSwift(*(this + 122)))
  {
    return 2;
  }

  if (!dyld4::PrebuiltLoaderSet::swiftForeignTypeProtocolTable(v4))
  {
    return 2;
  }

  if (!*(this + 73))
  {
    return 2;
  }

  v17[0] = 0;
  v17[1] = dyld4::PrebuiltLoader::BindTargetRef::makeAbsolute(a3);
  v17[2] = a4;
  v17[3] = dyld4::PrebuiltLoader::BindTargetRef::makeAbsolute(a2);
  v9 = dyld3::MultiMap<SwiftForeignTypeProtocolConformanceDiskLocationKey,SwiftForeignTypeProtocolConformanceDiskLocation,dyld4::HashForeignConformanceKey,dyld4::EqualForeignConformanceKey>::find(*(this + 73), v17);
  if (v9 == (*(*(this + 73) + 56) + 48 * *(*(this + 73) + 72)))
  {
    return 2;
  }

  v10 = v9;
  if (dyld4::EqualForeignConformanceLookupKey::equal(v9, a3, a4, a2, this))
  {
LABEL_10:
    v16 = v10[4];
    v14 = dyld4::PrebuiltLoader::BindTargetRef::loaderRef(&v16, v11) & 0x7FFF;
    if (*(v4 + 3) <= v14)
    {
      dyld4::RuntimeState::findPrebuiltLoader();
    }

    dyld4::PrebuiltLoader::loadAddress((v4 + *(v4 + 4 * v14 + *(v4 + 4))), this);
    dyld4::PrebuiltLoader::BindTargetRef::offset(&v16);
    return 0;
  }

  else
  {
    v12 = 2;
    while (1)
    {
      v13 = v10[5];
      if ((v13 & 3) == 0)
      {
        break;
      }

      v10 = dyld3::OverflowSafeArray<dyld3::MultiMapBase<SwiftForeignTypeProtocolConformanceDiskLocationKey,SwiftForeignTypeProtocolConformanceDiskLocation,dyld4::HashForeignConformanceKey,dyld4::EqualForeignConformanceKey>::NodeEntryT,4294967295ull>::operator[]((*(this + 73) + 56), v13 >> 3);
      if (dyld4::EqualForeignConformanceLookupKey::equal(v10, a3, a4, a2, this))
      {
        goto LABEL_10;
      }
    }
  }

  return v12;
}

unint64_t dyld4::JustInTimeLoader::overridesDylibInCache(uint64_t a1, void *a2, _WORD *a3)
{
  v3 = *(a1 + 40);
  if ((v3 & 0x400000) != 0)
  {
    *a2 = *(a1 + 88);
    *a3 = *(a1 + 43) & 0x7FFF;
  }

  return (v3 >> 22) & 1;
}

BOOL dyld4::PrebuiltLoaderSet::findIndex(dyld4::PrebuiltLoaderSet *this, const dyld4::RuntimeState *a2, const char *__s2, unsigned __int16 *a4)
{
  v4 = *(this + 3);
  if (v4)
  {
    v8 = 0;
    v9 = this + *(this + 4);
    v11 = *(a2 + 47);
    v10 = *(a2 + 48);
    v12 = 1;
    while (1)
    {
      v13 = (this + *&v9[4 * v8]);
      if ((v13[2] & 2) != 0 || (v14 = v13[3] & 0x7FFF, v10 <= v14))
      {
        v16 = v13[16];
        v17 = v13 + v16;
        v15 = v16 ? v17 : 0;
      }

      else
      {
        v15 = *(v11 + 8 * v14);
      }

      if (!_platform_strcmp(v15, __s2))
      {
        break;
      }

      v12 = ++v8 < v4;
      if (v4 == v8)
      {
        return 0;
      }
    }

    *a4 = v8;
  }

  else
  {
    return 0;
  }

  return v12;
}

uint64_t dyld4::PrebuiltLoaderSet::findLoader(dyld4::PrebuiltLoaderSet *this, const dyld4::RuntimeState *a2, const char *a3)
{
  v5 = 0;
  if (!dyld4::PrebuiltLoaderSet::findIndex(this, a2, a3, &v5))
  {
    return 0;
  }

  if (*(this + 3) <= v5)
  {
    dyld4::RuntimeState::findPrebuiltLoader();
  }

  return this + *(this + 4 * v5 + *(this + 4));
}

void ___ZN13prebuilt_objc12forEachClassEPN5dyld412RuntimeStateERKN5dyld312MultiMapViewINS_19ObjCStringKeyOnDiskENS_24ObjCObjectOnDiskLocationENS_23HashObjCStringKeyOnDiskENS_24EqualObjCStringKeyOnDiskEEEPKcU13block_pointerFvRKNS3_5ArrayIPKNS0_14PrebuiltLoader13BindTargetRefEEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = __chkstk_darwin();
    v6 = v12 - ((v5 + 23) & 0xFFFFFFFFFFFFFFF0);
    v7 = v3[2];
    v12[0] = v6;
    v12[1] = v7;
    if (v7)
    {
      v8 = 0;
      v9 = *v3;
      v10 = 8 * v7;
      do
      {
        if (v7 == v8)
        {
          ___ZN5dyld4L17handleDyldInCacheERN3lsl9AllocatorEPKN6mach_o6HeaderEPKNS_10KernelArgsES6__block_invoke_cold_1();
        }

        v11 = v8 + 1;
        *&v6[8 * v8] = *(v9 + 8 * v8);
        ++v8;
        v10 -= 8;
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    v12[2] = v11;
    (*(*(v2 + 32) + 16))(*(v2 + 32), v12, v4);
  }
}

void dyld3::MachOFile::forEachDependentDylib(mach_o::Header *a1, uint64_t a2)
{
  if (*(a1 + 3) != 7)
  {
    v20[4] = v2;
    v20[5] = v3;
    Diagnostics::Diagnostics(v20);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = ___ZNK5dyld39MachOFile21forEachDependentDylibEU13block_pointerFvPKcbbbjjRbE_block_invoke;
    v11[3] = &unk_A35D8;
    v11[4] = a2;
    v11[5] = &v16;
    v11[6] = &v12;
    dyld3::MachOFile::forEachLoadCommand(a1, v20, v11);
    if (*(v17 + 6) || (v13[3] & 1) != 0)
    {
      goto LABEL_14;
    }

    v9 = &mach_o::PlatformInfo_driverKit::singleton;
    v10 = 0;
    if (mach_o::Header::builtForPlatform(a1, &v9, 1))
    {
      if (*(a1 + 3) == 6)
      {
        v6 = mach_o::Header::installName(a1);
        if (!_platform_strncmp(v6, "/System/DriverKit/usr/lib/system/", 0x21uLL))
        {
          goto LABEL_14;
        }
      }

      v7 = "/System/DriverKit/usr/lib/libSystem.B.dylib";
    }

    else
    {
      v9 = &mach_o::PlatformInfo_macOS_exclaveKit::singleton;
      v10 = 0;
      if (mach_o::Header::builtForPlatform(a1, &v9, 1))
      {
        goto LABEL_14;
      }

      v9 = &mach_o::PlatformInfo_iOS_exclaveKit::singleton;
      v10 = 0;
      if (mach_o::Header::builtForPlatform(a1, &v9, 1))
      {
        goto LABEL_14;
      }

      v9 = &mach_o::PlatformInfo_tvOS_exclaveKit::singleton;
      v10 = 0;
      if (mach_o::Header::builtForPlatform(a1, &v9, 1))
      {
        goto LABEL_14;
      }

      v9 = &mach_o::PlatformInfo_watchOS_exclaveKit::singleton;
      v10 = 0;
      if (mach_o::Header::builtForPlatform(a1, &v9, 1))
      {
        goto LABEL_14;
      }

      v9 = &mach_o::PlatformInfo_visionOS_exclaveKit::singleton;
      v10 = 0;
      if (mach_o::Header::builtForPlatform(a1, &v9, 1))
      {
        goto LABEL_14;
      }

      if (*(a1 + 3) == 6)
      {
        v8 = mach_o::Header::installName(a1);
        if (!_platform_strncmp(v8, "/usr/lib/system/", 0x10uLL))
        {
          goto LABEL_14;
        }
      }

      v7 = "/usr/lib/libSystem.B.dylib";
    }

    (*(a2 + 16))(a2, v7, 0, 0, 0, 0x10000, 0x10000, v13 + 3);
LABEL_14:
    Diagnostics::assertNoError(v20);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
    Diagnostics::~Diagnostics(v20);
  }
}

uint64_t ___ZN5dyld44APIs25_dyld_for_each_objc_classEPKcNS_16ReadOnlyCallbackIU13block_pointerFvPvbPbEEE_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = *(result + 40);
    v5 = *a2;
    v6 = 8 * v2 - 8;
    do
    {
      v7 = *v5++;
      v11 = dyld4::PrebuiltLoader::BindTargetRef::value(v7, v4);
      v10 = 1;
      v9 = *(*(v3 + 32) + 8) + 24;
      result = dyld4::ReadOnlyCallback<void({block_pointer})(void *,BOOL,BOOL *)>::operator()<void *,BOOL,BOOL *>((v3 + 48), &v11, &v10, &v9);
      if (*(*(*(v3 + 32) + 8) + 24))
      {
        break;
      }

      v8 = v6;
      v6 -= 8;
    }

    while (v8);
  }

  return result;
}

uint64_t dyld4::APIs::NSVersionOfLinkTimeLibrary(dyld4::Loader **this, const char *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = -1;
  Address = dyld4::Loader::loadAddress(this[3], this);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = ___ZN5dyld44APIs26NSVersionOfLinkTimeLibraryEPKc_block_invoke;
  v7[3] = &unk_A2170;
  v7[4] = &v8;
  v7[5] = a2;
  dyld3::MachOFile::forEachDependentDylib(Address, v7);
  if (*(this[1] + 324) == 1)
  {
    dyld4::RuntimeState::log(this, "NSVersionOfLinkTimeLibrary(%s) =>0x%08X\n", a2, *(v9 + 6));
  }

  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t ___ZNK5dyld39MachOFile21forEachDependentDylibEU13block_pointerFvPKcbbbjjRbE_block_invoke(uint64_t result, char *a2, _BYTE *a3)
{
  v3 = *a2;
  if ((*a2 + 2147483624) <= 0xB && ((1 << (*a2 - 24)) & 0x881) != 0 || v3 == 12)
  {
    v7 = result;
    result = (*(*(result + 32) + 16))(*(result + 32), &a2[*(a2 + 2)], v3 == -2147483624, v3 == -2147483617, v3 == -2147483613, *(a2 + 5), *(a2 + 4), a3);
    ++*(*(*(v7 + 40) + 8) + 24);
    if (*a3 == 1)
    {
      *(*(*(v7 + 48) + 8) + 24) = 1;
    }
  }

  return result;
}

BOOL dyld4::nameMatch(dyld4 *this, const char *a2, const char *a3)
{
  v4 = this;
  v5 = strrchr(this, 47);
  if (v5)
  {
    v4 = (v5 + 1);
  }

  if (!_platform_strcmp(v4, a2))
  {
    return 1;
  }

  v6 = _platform_strlen(v4);
  v7 = _platform_strlen(a2);
  if (v6 >= v7 + 9 && *v4 == 108 && *(v4 + 1) == 105 && *(v4 + 2) == 98 && (v8 = v7, !_platform_strcmp(v4 + v6 - 6, ".dylib")) && !_platform_strncmp(v4 + 3, a2, v8))
  {
    return *(v4 + v8 + 3) == 46;
  }

  else
  {
    return 0;
  }
}

BOOL ___ZN5dyld44APIs26NSVersionOfLinkTimeLibraryEPKc_block_invoke(uint64_t a1, dyld4 *this, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  result = dyld4::nameMatch(this, *(a1 + 40), a3);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = a7;
  }

  return result;
}

void dyld4::RuntimeState::rebindMissingFlatLazySymbols(uint64_t a1, dyld4::Loader ***a2)
{
  Diagnostics::Diagnostics(v12);
  v4 = *(a1 + 888);
  v5 = *(a1 + 896);
  v6 = v4 + 24 * v5;
  v11[0] = a2;
  v11[1] = v12;
  v11[2] = a1;
  if (v5)
  {
    v7 = 24 * v5;
    while ((dyld4::RuntimeState::rebindMissingFlatLazySymbols(std::span<dyld4::Loader const*,18446744073709551615ul> const&)::$_0::operator()(v11, v4) & 1) == 0)
    {
      v4 += 24;
      v7 -= 24;
      if (!v7)
      {
        v4 = v6;
        goto LABEL_13;
      }
    }
  }

  v8 = v4 + 24;
  if (v4 != v6 && v8 != v6)
  {
    do
    {
      if ((dyld4::RuntimeState::rebindMissingFlatLazySymbols(std::span<dyld4::Loader const*,18446744073709551615ul> const&)::$_0::operator()(v11, v8) & 1) == 0)
      {
        v10 = *v8;
        *(v4 + 16) = *(v8 + 16);
        *v4 = v10;
        v4 += 24;
      }

      v8 += 24;
    }

    while (v8 != v6);
  }

LABEL_13:
  lsl::Vector<dyld4::RuntimeState::MissingFlatSymbol>::erase(a1 + 880, v4, (*(a1 + 888) + 24 * *(a1 + 896)));
  Diagnostics::~Diagnostics(v12);
}

uint64_t dyld4::JustInTimeLoader::setDelayInit(uint64_t this, dyld4::RuntimeState *a2, int a3)
{
  v3 = *(this + 40);
  if (a3)
  {
    if ((v3 & 0x40000) != 0)
    {
      return this;
    }

    v4 = v3 | 0x80000000000000;
  }

  else
  {
    v4 = v3 & 0xFF7FFFFFFFFFFFFFLL;
  }

  *(this + 40) = v4;
  return this;
}

uint64_t lsl::Vector<dyld4::RuntimeState::MissingFlatSymbol>::erase(uint64_t a1, _BYTE *__dst, _BYTE *__src)
{
  v4 = *(a1 + 8);
  if (__dst == __src)
  {
    v9 = *(a1 + 16);
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * (&__dst[-v4] >> 3);
    v6 = 0x5555555555555555 * ((__src - __dst) >> 3);
    v7 = *(a1 + 16);
    v8 = v4 + 24 * v7 - __src;
    if (v8)
    {
      memmove(__dst, __src, v8);
      v4 = *(a1 + 8);
      v7 = *(a1 + 16);
    }

    v9 = v7 + v6;
    *(a1 + 16) = v7 + v6;
    if (v7 + v6 >= v5)
    {
      v9 = v5;
    }
  }

  return v4 + 24 * v9;
}

void dyld4::RuntimeState::notifyLoad(uint64_t **a1, dyld4::Loader ***a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = a2[1];
  v108 = v10;
  if (kdebug_is_enabled(0x1F050000u, a2, a3, a4, a5, a6, a7, a8))
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = *a2;
      v13 = 8 * v11;
      do
      {
        v14 = *v12;
        Address = dyld4::Loader::loadAddress(*v12, a1);
        if ((*(v14 + 2) & 2) != 0 || (v16 = dyld4::Loader::path(v14, a1), dyld3::stat(v16, &v119, v17)))
        {
          st_ino = 0;
          st_dev = 0;
        }

        else
        {
          st_ino = v119.st_ino;
          st_dev = v119.st_dev;
        }

        v20 = dyld4::Loader::path(v14, a1);
        v21 = st_dev;
        v22 = Address;
        dyld3::kdebug_trace_dyld_image(0, v20, v14 + 1, st_ino, v21, v22, *(*&Address + 8), v23, v105);
        ++v12;
        v13 -= 8;
      }

      while (v13);
    }
  }

  v24 = a1[14];
  v117[0] = _NSConcreteStackBlock;
  v117[1] = 0x40000000;
  v117[2] = ___ZN5dyld412RuntimeState10notifyLoadERKNSt3__14spanIPKNS_6LoaderELm18446744073709551615EEE_block_invoke;
  v117[3] = &__block_descriptor_tmp_99;
  v117[4] = a1;
  v117[5] = a2;
  v118 = v10;
  Lock = dyld4::RuntimeLocks::withNotifiersReadLock(v24, v117);
  v107 = &v105;
  v116 = 0;
  v115 = 0;
  v26 = v108;
  v27 = 8 * v108;
  __chkstk_darwin(Lock, v28, v29, v30, v31, v32, v33, v34, v105);
  v35 = (v27 + 15) & 0xFFFFFFFF0;
  if (v27 >= 0x200)
  {
    v36 = 512;
  }

  else
  {
    v36 = 8 * v26;
  }

  v111 = &v105 - v35;
  bzero(&v105 - v35, v36);
  __chkstk_darwin(v37, v38, v39, v40, v41, v42, v43, v44, v105);
  v110 = &v105 - v35;
  bzero(&v105 - v35, v36);
  __chkstk_darwin(v45, v46, v47, v48, v49, v50, v51, v52, v105);
  v54 = &v105 - 4 * v26;
  if (a1[86])
  {
    hasConstantSegmentsToProtect = lsl::MemoryManager::memoryManager(v53);
    v106 = a2;
    v57 = a2[1];
    if (v57)
    {
      v58 = *v106;
      v59 = *(hasConstantSegmentsToProtect + 33);
      v109 = 2 * v59;
      v60 = (2 * (v59 & 1)) | 4;
      v61 = 8 * v57;
      do
      {
        v62 = *v58;
        if ((*(*v58 + 2) & 4) != 0)
        {
          DoesObjCFixups = dyld4::Loader::dyldDoesObjCFixups(*v58, v56);
          v64 = dyld4::Loader::path(v62, a1);
          *&v111[8 * v116] = v64;
          v65 = dyld4::Loader::loadAddress(v62, a1);
          *&v110[8 * v116] = v65;
          v66 = dyld4::Loader::path(v62, a1);
          v68 = dyld4::Loader::dyldDoesObjCFixups(v62, v67);
          v69 = v109;
          if (DoesObjCFixups)
          {
            v69 = v60;
          }

          v70 = v116;
          v71 = &v54[4 * v116];
          *v71 = v65;
          v71[1] = v66;
          v71[2] = v62;
          *(v71 + 6) = v69 | v68;
          v116 = v70 + 1;
          hasConstantSegmentsToProtect = dyld4::Loader::hasConstantSegmentsToProtect(v62);
          v72 = *(v62 + 2);
          if (hasConstantSegmentsToProtect && (v72 & 0x80) != 0)
          {
            dyld4::Loader::makeSegmentsReadWrite(v62, a1);
            v72 = *(v62 + 2);
          }

          if ((v72 & 2) != 0)
          {
            v115 = 1;
          }
        }

        ++v58;
        v61 -= 8;
      }

      while (v61);
    }

    v73 = v106;
    if (!v116)
    {
      goto LABEL_58;
    }

    v114 = 0;
    v112 = &v113;
    v113 = a1;
    v81 = lsl::MemoryManager::memoryManager(hasConstantSegmentsToProtect);
    v120.tv_sec = v108;
    v120.tv_nsec = v54;
    v121.tv_sec = &v116;
    v121.tv_nsec = &v115;
    v122.tv_sec = &v112;
    v122.tv_nsec = a1;
    v123.tv_sec = v108;
    v123.tv_nsec = v110;
    *&v124 = v108;
    *(&v124 + 1) = v111;
    v82 = *(v81 + 6);
    if (v82 && lsl::ProtectedStack::onStackInAnyFrameInThisThread(v82))
    {
      if (MEMORY[0xFFFFFC10C])
      {
        if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
        {
          v83 = MEMORY[0xFFFFFC10C];
          __dmb(0xAu);
          if ((v83 & 0xFE) == 2)
          {
            _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
            __isb(0xFu);
            v84 = MEMORY[0xFFFFFC0D0];
            if (v84 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
            {
              v85 = *(v81 + 6);
              *&v119.st_dev = _NSConcreteStackBlock;
              v119.st_ino = 0x40000000;
              v119.st_mtimespec = v121;
              v119.st_ctimespec = v122;
              v119.st_birthtimespec = v123;
              *&v119.st_size = v124;
              *&v119.st_uid = ___ZN3lsl13MemoryManager26withWritableMemoryInternalIZN5dyld412RuntimeState10notifyLoadERKNSt3__14spanIPKNS2_6LoaderELm18446744073709551615EEEE3__0EEvT__block_invoke;
              *&v119.st_rdev = &__block_descriptor_tmp_191;
              v119.st_atimespec = v120;
              lsl::ProtectedStack::withNestedProtectedStack(v85, &v119, v75, v76, v77, v78, v79, v80, v105);
              if (MEMORY[0xFFFFFC10C])
              {
                if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
                {
                  v86 = MEMORY[0xFFFFFC10C];
                  __dmb(0xAu);
                  if ((v86 & 0xFE) == 2)
                  {
                    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
                    __isb(0xFu);
                    v87 = MEMORY[0xFFFFFC0D8];
                    if (v87 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                    {
                      goto LABEL_56;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      if (*(v81 + 33) != 1)
      {
        lsl::MemoryManager::lockGuard(&v119, v81);
        v92 = *(v81 + 3);
        if (!v92)
        {
          lsl::MemoryManager::writeProtect(v81, 0);
          v92 = *(v81 + 3);
        }

        *(v81 + 3) = v92 + 1;
        lsl::Lock::unlock(*&v119.st_dev);
        dyld4::RuntimeState::notifyLoad(std::span<dyld4::Loader const*,18446744073709551615ul> const&)::$_0::operator()(&v120, v93, v94, v95, v96, v97, v98, v99);
        lsl::MemoryManager::lockGuard(&v119, v81);
        v100 = *(v81 + 3) - 1;
        *(v81 + 3) = v100;
        if (!v100)
        {
          lsl::MemoryManager::writeProtect(v81, 1);
        }

        lsl::Lock::unlock(*&v119.st_dev);
        goto LABEL_56;
      }

      if (MEMORY[0xFFFFFC10C] && (MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
        {
          dyld4::RuntimeState::notifyLoad(std::span<dyld4::Loader const*,18446744073709551615ul> const&)::$_0::operator()(&v120, v74, v75, v76, v77, v78, v79, v80);
          goto LABEL_56;
        }

        if (MEMORY[0xFFFFFC10C])
        {
          if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
          {
            v88 = MEMORY[0xFFFFFC10C];
            __dmb(0xAu);
            if ((v88 & 0xFE) == 2)
            {
              _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
              __isb(0xFu);
              v89 = MEMORY[0xFFFFFC0D0];
              if (v89 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
              {
                dyld4::RuntimeState::notifyLoad(std::span<dyld4::Loader const*,18446744073709551615ul> const&)::$_0::operator()(&v120, 0xFFFFFC0D0, v75, v76, v77, v78, v79, v80);
                if (MEMORY[0xFFFFFC10C])
                {
                  if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
                  {
                    v90 = MEMORY[0xFFFFFC10C];
                    __dmb(0xAu);
                    if ((v90 & 0xFE) == 2)
                    {
                      _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
                      __isb(0xFu);
                      v91 = MEMORY[0xFFFFFC0D8];
                      if (v91 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                      {
LABEL_56:
                        if (v114 == 1)
                        {
                          dyld4::ProcessConfig::DyldCache::makeDataConstWritable((*(v113 + 1) + 368), *(v113 + 1) + 320, *(v113 + 1), 0);
                        }

LABEL_58:
                        v101 = v73[1];
                        if (v101)
                        {
                          v102 = *v73;
                          v103 = 8 * v101;
                          do
                          {
                            v104 = *v102;
                            if ((*(*v102 + 2) & 4) != 0 && dyld4::Loader::hasConstantSegmentsToProtect(*v102) && (*(v104 + 2) & 0x80) != 0)
                            {
                              dyld4::Loader::makeSegmentsReadOnly(v104, a1);
                            }

                            ++v102;
                            v103 -= 8;
                          }

                          while (v103);
                        }

                        return;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
  }
}

uint64_t ___ZN5dyld412RuntimeState10notifyLoadERKNSt3__14spanIPKNS_6LoaderELm18446744073709551615EEE_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  v9 = *(result + 32);
  v10 = *(v9 + 92);
  if (v10)
  {
    v11 = *(v9 + 91);
    v65 = &v11[v10];
    do
    {
      v78 = *v11;
      v12 = *(v8 + 40);
      v13 = *(v12 + 8);
      if (v13)
      {
        v14 = *v12;
        v15 = 8 * v13;
        do
        {
          v16 = *v14;
          Address = dyld4::Loader::loadAddress(*v14, v9);
          LODWORD(v68) = 520552472;
          v69 = Address;
          v70 = 0;
          v71 = v78 != 0;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          dyld3::ScopedTimer::startTimer(&v68, v17, v18, v19, v20, v21, v22, v23);
          if (*(*(v9 + 1) + 325) == 1)
          {
            dyld4::RuntimeState::log(v9, "notifier %p called with mh=%p\n", v78, Address);
          }

          if ((*(v16 + 2) & 2) != 0)
          {
            dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>::operator()<dyld3::MachOLoaded const*&,unsigned long const&>(&v78, &Address, (*(v9 + 1) + 392));
          }

          else
          {
            Slide = dyld3::MachOLoaded::getSlide(Address);
            dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>::operator()<dyld3::MachOLoaded const*&,long>(&v78, &Address, &Slide);
          }

          result = dyld3::ScopedTimer::endTimer(&v68);
          ++v14;
          v15 -= 8;
        }

        while (v15);
      }

      ++v11;
    }

    while (v11 != v65);
  }

  v24 = *(v9 + 100);
  if (v24)
  {
    v25 = *(v9 + 99);
    v65 = &v25[v24];
    do
    {
      v78 = *v25;
      v26 = *(v8 + 40);
      v27 = *(v26 + 8);
      if (v27)
      {
        v28 = *v26;
        v29 = 8 * v27;
        do
        {
          v30 = *v28;
          Address = dyld4::Loader::loadAddress(*v28, v9);
          LODWORD(v68) = 520552472;
          v69 = Address;
          v70 = 0;
          v71 = v78 != 0;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          dyld3::ScopedTimer::startTimer(&v68, v31, v32, v33, v34, v35, v36, v37);
          if (*(*(v9 + 1) + 325) == 1)
          {
            dyld4::RuntimeState::log(v9, "notifier %p called with mh=%p\n", v78, Address);
          }

          Slide = dyld4::Loader::path(v30, v9);
          v66 = (*(v30 + 2) & 0x20) == 0;
          dyld4::ReadOnlyCallback<void (*)(mach_header const*,char const*,BOOL)>::operator()<dyld3::MachOLoaded const*&,char const*,BOOL>(&v78, &Address, &Slide, &v66);
          result = dyld3::ScopedTimer::endTimer(&v68);
          ++v28;
          v29 -= 8;
        }

        while (v29);
      }

      ++v25;
    }

    while (v25 != v65);
  }

  v38 = *(v9 + 104);
  if (v38)
  {
    v39 = *(v9 + 103);
    v64 = &v39[v38];
    do
    {
      v65 = &v64;
      v78 = *v39;
      __chkstk_darwin(result, a2, a3, a4, a5, a6, a7, a8, v64);
      v41 = (&v64 - ((v40 + 15) & 0xFFFFFFFF0));
      if (v40 >= 0x200)
      {
        v42 = 512;
      }

      else
      {
        v42 = v40;
      }

      bzero(&v64 - ((v40 + 15) & 0xFFFFFFFF0), v42);
      v43 = *(v8 + 48);
      __chkstk_darwin(v44, v45, v46, v47, v48, v49, v50, v51, v64);
      v53 = &v64 - ((v52 + 15) & 0xFFFFFFFF0);
      if (v52 >= 0x200)
      {
        v54 = 512;
      }

      else
      {
        v54 = v52;
      }

      bzero(&v64 - ((v52 + 15) & 0xFFFFFFFF0), v54);
      if (v43)
      {
        v62 = 0;
        do
        {
          *(v41 + v62) = dyld4::Loader::loadAddress(*(**(v8 + 40) + 8 * v62), v9);
          *&v53[8 * v62] = dyld4::Loader::path(*(**(v8 + 40) + 8 * v62), v9);
          ++v62;
        }

        while (v62 < *(v8 + 48));
      }

      v63 = *v41;
      LODWORD(v68) = 520552472;
      v69 = v63;
      v70 = 0;
      v71 = v78 != 0;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      dyld3::ScopedTimer::startTimer(&v68, v55, v56, v57, v58, v59, v60, v61);
      if (*(*(v9 + 1) + 325))
      {
        dyld4::RuntimeState::log(v9, "bulk notifier %p called with %d images\n", v78, *(v8 + 48));
      }

      Address = v41;
      Slide = v53;
      dyld4::ReadOnlyCallback<void (*)(unsigned int,mach_header const**,char const**)>::operator()<unsigned int const&,mach_header const**,char const**>(&v78, (v8 + 48), &Address, &Slide);
      result = dyld3::ScopedTimer::endTimer(&v68);
      ++v39;
    }

    while (v39 != v64);
  }

  return result;
}

uint64_t dyld4::RuntimeLocks::withNotifiersReadLock(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    (*(*v4 + 96))(v4, a1 + 3, 0);
    (*(a2 + 16))(a2);
    v5 = *(**a1 + 104);

    return v5();
  }

  else
  {
    v7 = *(a2 + 16);

    return v7(a2);
  }
}

uint64_t dyld4::ReadOnlyCallback<void (*)(mach_header const*,long)>::operator()<dyld3::MachOLoaded const*&,unsigned long const&>(lsl::MemoryManager *a1, void *a2, void *a3)
{
  v13 = lsl::MemoryManager::memoryManager(a1);
  result = *(v13 + 6);
  if (result)
  {
    result = lsl::ProtectedStack::onStackInCurrentFrame(result, v6, v7, v8, v9, v10, v11, v12, v29);
    if (result)
    {
      v21 = *(v13 + 6);
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 0x40000000;
      v31[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFvPK11mach_headerlEEclIJRPKN5dyld311MachOLoadedERKmEEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESO__block_invoke;
      v31[3] = &__block_descriptor_tmp_187;
      v31[4] = a1;
      v31[5] = a2;
      v31[6] = a3;
      return lsl::ProtectedStack::withNestedRegularStack(v21, v31, v15, v16, v17, v18, v19, v20, v30);
    }
  }

  if (*(v13 + 33) != 1)
  {
    goto LABEL_8;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v25 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v25 & 0xFE) == 2)
        {
          result = MEMORY[0xFFFFFC0D8];
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v26 = MEMORY[0xFFFFFC0D8];
          if (v26 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            result = (*a1)(*a2, *a3);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v27 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v27 & 0xFE) == 2)
                {
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v28 = MEMORY[0xFFFFFC0D0];
                  if (v28 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_19;
  }

LABEL_8:
  v22 = *a1;
  v23 = *a2;
  v24 = *a3;

  return v22(v23, v24);
}

uint64_t dyld4::ReadOnlyCallback<void (*)(unsigned int,mach_header const**,char const**)>::operator()<unsigned int const&,mach_header const**,char const**>(lsl::MemoryManager *a1, unsigned int *a2, void *a3, void *a4)
{
  v15 = lsl::MemoryManager::memoryManager(a1);
  result = *(v15 + 6);
  if (result)
  {
    result = lsl::ProtectedStack::onStackInCurrentFrame(result, v8, v9, v10, v11, v12, v13, v14, v32[0]);
    if (result)
    {
      v23 = *(v15 + 6);
      v32[1] = 0x40000000;
      v32[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFvjPPK11mach_headerPPKcEEclIJRKjS7_SA_EEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESN__block_invoke;
      v32[3] = &__block_descriptor_tmp_190;
      v32[4] = a1;
      v32[5] = a2;
      v32[6] = a3;
      v32[7] = a4;
      return lsl::ProtectedStack::withNestedRegularStack(v23, v32, v17, v18, v19, v20, v21, v22, _NSConcreteStackBlock);
    }
  }

  if (*(v15 + 33) != 1)
  {
    goto LABEL_8;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v28 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v28 & 0xFE) == 2)
        {
          result = MEMORY[0xFFFFFC0D8];
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v29 = MEMORY[0xFFFFFC0D8];
          if (v29 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            result = (*a1)(*a2, *a3, *a4);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v30 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v30 & 0xFE) == 2)
                {
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v31 = MEMORY[0xFFFFFC0D0];
                  if (v31 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_19;
  }

LABEL_8:
  v24 = *a1;
  v25 = *a2;
  v26 = *a3;
  v27 = *a4;

  return v24(v25, v26, v27);
}

uint64_t dyld3::MachOAnalyzer::neverUnload(dyld3::MachOAnalyzer *this)
{
  v10 = 0;
  if (dyld3::MachOAnalyzer::hasSwiftOrObjC(this, &v10) && (v10 || !dyld3::MachOFile::isBundle(this)) || (*(this + 26) & 0x80) != 0)
  {
    return 1;
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  Diagnostics::Diagnostics(v5);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZNK5dyld313MachOAnalyzer11neverUnloadEv_block_invoke;
  v4[3] = &unk_A3E68;
  v4[4] = &v6;
  dyld3::MachOFile::forEachDOFSection(this, v5, v4);
  v2 = Diagnostics::noError(v5) && (v7[3] & 1) != 0;
  Diagnostics::~Diagnostics(v5);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t dyld4::RuntimeState::notifyLoad(std::span<dyld4::Loader const*,18446744073709551615ul> const&)::$_0::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = *(a1 + 40);
  LODWORD(v17) = 520552484;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  dyld3::ScopedTimer::startTimer(&v17, a2, a3, a4, a5, a6, a7, a8);
  v13 = *(a1 + 8);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 0x40000000;
  v14[2] = ___ZZN5dyld412RuntimeState10notifyLoadERKNSt3__14spanIPKNS_6LoaderELm18446744073709551615EEEENK3__0clEv_block_invoke;
  v14[3] = &__block_descriptor_tmp_193;
  v15 = *(a1 + 16);
  v10 = *(a1 + 32);
  v14[4] = v13;
  v14[5] = v10;
  v16 = v14;
  dyld4::ReadOnlyCallback<void (*)(unsigned int,_dyld_objc_notify_mapped_info const*,void({block_pointer}))>::operator()<unsigned int &,_dyld_objc_notify_mapped_info*,void({block_pointer}&)>((v9 + 86), v15, &v13, &v16);
  if (*(v9[1] + 325) == 1)
  {
    dyld4::RuntimeState::log(v9, "objc-mapped-notifier called with %d images:\n", **(a1 + 16));
    if (**(a1 + 16))
    {
      v11 = 0;
      do
      {
        dyld4::RuntimeState::log(v9, " objc-mapped: %p %s\n", *(*(a1 + 56) + 8 * v11), *(*(a1 + 72) + 8 * v11));
        ++v11;
      }

      while (v11 < **(a1 + 16));
    }
  }

  return dyld3::ScopedTimer::endTimer(&v17);
}

uint64_t dyld4::ReadOnlyCallback<void (*)(unsigned int,_dyld_objc_notify_mapped_info const*,void({block_pointer})(unsigned int))>::operator()<unsigned int &,_dyld_objc_notify_mapped_info*,void({block_pointer}&)(unsigned int)>(lsl::MemoryManager *a1, unsigned int *a2, void *a3, void *a4)
{
  v15 = lsl::MemoryManager::memoryManager(a1);
  result = *(v15 + 6);
  if (result)
  {
    result = lsl::ProtectedStack::onStackInCurrentFrame(result, v8, v9, v10, v11, v12, v13, v14, v32[0]);
    if (result)
    {
      v23 = *(v15 + 6);
      v32[1] = 0x40000000;
      v32[2] = ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld416ReadOnlyCallbackIPFvjPK29_dyld_objc_notify_mapped_infoU13block_pointerFvjEEEclIJRjPS4_RS8_EEEvDpOT_EUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESM__block_invoke;
      v32[3] = &__block_descriptor_tmp_196;
      v32[4] = a1;
      v32[5] = a2;
      v32[6] = a3;
      v32[7] = a4;
      return lsl::ProtectedStack::withNestedRegularStack(v23, v32, v17, v18, v19, v20, v21, v22, _NSConcreteStackBlock);
    }
  }

  if (*(v15 + 33) != 1)
  {
    goto LABEL_8;
  }

  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) != 0)
  {
    if (MEMORY[0xFFFFFC10C])
    {
      if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
      {
        v28 = MEMORY[0xFFFFFC10C];
        __dmb(0xAu);
        if ((v28 & 0xFE) == 2)
        {
          result = MEMORY[0xFFFFFC0D8];
          _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
          __isb(0xFu);
          v29 = MEMORY[0xFFFFFC0D8];
          if (v29 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
          {
            result = (*a1)(*a2, *a3, *a4);
            if (MEMORY[0xFFFFFC10C])
            {
              if ((MEMORY[0xFFFFFC10C] & 0xFE) == 2)
              {
                v30 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v30 & 0xFE) == 2)
                {
                  result = MEMORY[0xFFFFFC0D0];
                  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                  __isb(0xFu);
                  v31 = MEMORY[0xFFFFFC0D0];
                  if (v31 == _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                  {
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_19;
  }

LABEL_8:
  v24 = *a1;
  v25 = *a2;
  v26 = *a3;
  v27 = *a4;

  return v24(v25, v26, v27);
}

void dyld3::MachOFile::forEachDOFSection(mach_o::Error *a1, uint64_t a2, uint64_t a3)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = ___ZNK5dyld39MachOFile17forEachDOFSectionER11DiagnosticsU13block_pointerFvjE_block_invoke;
  v3[3] = &unk_A3768;
  v3[4] = a3;
  mach_o::Header::forEachSection(a1, v3);
}

uint64_t ___ZNK5dyld39MachOFile17forEachDOFSectionER11DiagnosticsU13block_pointerFvjE_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 44) == 15)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

BOOL dyld4::EqualTypeConformanceLookupKey::equal(unint64_t *a1, unint64_t *a2, unint64_t *a3, dyld4::RuntimeState *a4)
{
  if (!a4)
  {
    dyld4::EqualTypeConformanceLookupKey::equal();
  }

  return dyld4::PrebuiltLoader::BindTargetRef::value(a1, a4) == a2 && dyld4::PrebuiltLoader::BindTargetRef::value(a1 + 1, a4) == a3;
}

uint64_t lsl::ProtectedStack::withNestedRegularStack(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!*a1)
  {
    lsl::ProtectedStack::withNestedRegularStack();
  }

  v10 = *a1;
  v11 = a1[1];
  if (v11)
  {
    if (&a9 >= v11 && &a9 < v10)
    {
      goto LABEL_7;
    }

LABEL_11:
    lsl::ProtectedStack::withNestedRegularStack();
  }

  if (&a9 >= v10)
  {
    goto LABEL_11;
  }

LABEL_7:
  v13 = (a1 + 3);
  v14 = a1[4];

  return callWithRegularStack(v14, v13, a2);
}

unint64_t dyld4::PrebuiltLoader::BindTargetRef::loaderRef(dyld4::PrebuiltLoader::BindTargetRef *this, uint64_t a2)
{
  result = *this;
  if (result >> 62 == 1)
  {
    dyld4::PrebuiltLoader::BindTargetRef::value();
  }

  return result;
}

void ___ZN3lsl13MemoryManager22withReadOnlyTPROMemoryIZNK5dyld423LibSystemHelpersWrapper17setUpThreadLocalsEPK15DyldSharedCachePKN6mach_o6HeaderEEUlvE_EEN13callback_impl11return_typeIDTadsrT_onclEE4typeESE__block_invoke(uint64_t a1)
{
  if (!MEMORY[0xFFFFFC10C])
  {
    goto LABEL_11;
  }

  if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
  {
    goto LABEL_11;
  }

  v1 = MEMORY[0xFFFFFC10C];
  __dmb(0xAu);
  if ((v1 & 0xFE) != 2)
  {
    goto LABEL_11;
  }

  _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
  __isb(0xFu);
  v2 = MEMORY[0xFFFFFC0D8];
  if (v2 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
  {
    goto LABEL_11;
  }

  v3 = *(a1 + 32);
  (*(**v3 + 192))(&v10);
  if (v10)
  {
    v4 = mach_o::Error::message(&v10);
    v5 = _platform_strlen(v4);
    v6 = (*(**v3 + 8))(*v3, v5 + 1);
    v7 = mach_o::Error::message(&v10);
    memmove(v6, v7, v5 + 1);
  }

  mach_o::Error::~Error(&v10);
  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2 || (v8 = MEMORY[0xFFFFFC10C], __dmb(0xAu), (v8 & 0xFE) != 2) || (_WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]), __isb(0xFu), v9 = MEMORY[0xFFFFFC0D0], v9 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5))))
  {
LABEL_11:
    __break(1u);
  }
}

unint64_t dyld4::PrebuiltLoader::BindTargetRef::offset(dyld4::PrebuiltLoader::BindTargetRef *this)
{
  v1 = *this >> 16;
  if ((*this & 0x2000000000000000) != 0)
  {
    v2 = (*this >> 24) | 0xFFFFC000000000;
  }

  else
  {
    v2 = (*this >> 24) & 0x3FFFFFFFFFLL;
  }

  return v2 & 0xFFFFFFFFFFFFFFLL | (v1 << 56);
}

unsigned __int8 *lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator--(unsigned __int8 *result)
{
  v1 = result[143];
  v2 = *result;
  if (result[143])
  {
    if (v1 == *(*result + 32))
    {
      v3 = result + 128;
      v4 = v1 - 1;
      v5 = &result[v1 + 127];
      v6 = *v5;
      if (!result[(v1 - 1) + 128])
      {
        if (!*v5)
        {
          do
          {
            LODWORD(v1) = v1 - 1;
            result[143] = v1;
            v4 = v1 - 1;
            v6 = v3[v4];
          }

          while (!v6);
        }

        v5 = &v3[v4];
      }
    }

    else
    {
      v15 = result + 8;
      v16 = result + 128;
      do
      {
        v17 = *&v15[8 * v1 - 8];
        if (*(v17 + 240) < 0)
        {
          lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
        }

        v18 = *(v17 + 8 * v16[v1 - 1] + 168);
        *&v15[8 * v1] = v18;
        v16[v1] = *(v18 + 240) & 0x7F;
        LOBYTE(v1) = result[143] + 1;
        result[143] = v1;
      }

      while (*(v2 + 32) != v1);
      v19 = &v16[v1];
      v20 = *(v19 - 1);
      v5 = v19 - 1;
      v6 = v20;
    }
  }

  else
  {
    if (*(*result + 32))
    {
      v7 = 0;
      v8 = *v2;
      v9 = result + 8;
      do
      {
        *&v9[8 * v7] = v8;
        result[v7 + 128] = *(v8 + 240) & 0x7F;
        v10 = result[143];
        v11 = *(v2 + 32);
        if (v10 + 1 != v11)
        {
          v12 = *&v9[8 * v10];
          v13 = *(v12 + 240);
          if (v13 < 0)
          {
            lsl::BTree<std::pair<unsigned long long,lsl::UUID>,lsl::OrderedMap<unsigned long long,lsl::UUID,std::less<unsigned long long>>::value_compare,false>::const_iterator::operator++();
          }

          v8 = *(v12 + 8 * v13 + 168);
        }

        v7 = v10 + 1;
        result[143] = v7;
      }

      while (v11 > v7);
      v14 = v7 - 1;
    }

    else
    {
      v14 = -1;
    }

    v5 = &result[v14 + 128];
    v6 = *v5;
  }

  *v5 = v6 - 1;
  return result;
}

uint64_t ___ZNK5dyld311MachOLoaded17findClosestSymbolEyPPKcPy_block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v3 = *(result + 40);
  ++*(*(*(result + 32) + 8) + 24);
  v4 = *(a2 + 56);
  if (v4 <= v3 && v3 < *(a2 + 64) + v4)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t dyld3::MachOLoaded::findClosestSymbol(dyld3::MachOLoaded *this, uint64_t a2, const char **a3, unint64_t *a4)
{
  Diagnostics::Diagnostics(v46);
  dyld3::MachOLoaded::getLinkEditPointers(this, v46, v40);
  v8 = 0;
  if (!Diagnostics::hasError(v46) && v41 && v42)
  {
    v9 = a2 - v43;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2000000000;
    v39 = 0;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 0x40000000;
    v35[2] = ___ZNK5dyld311MachOLoaded17findClosestSymbolEyPPKcPy_block_invoke;
    v35[3] = &unk_A3A28;
    v35[4] = &v36;
    v35[5] = a2 - v43;
    dyld3::MachOFile::forEachSection(this, v35);
    v10 = v41[4];
    v11 = v41[5];
    v12 = v45;
    v13 = v43 + v44;
    v14 = v43 + v44 + (v41[2] - v45);
    v15 = dyld3::MachOFile::is64(this);
    v16 = v42[4];
    v17 = v42[5];
    v18 = 0;
    if (v15)
    {
      if (v17)
      {
        v19 = (v14 + 16 * v16);
        v20 = &v19[4 * v17];
        do
        {
          if ((~*(v19 + 4) & 0xE) == 0)
          {
            v21 = *(v19 + 1);
            if (v18)
            {
              if (v21 <= v9 && *(v18 + 1) < v21)
              {
LABEL_13:
                if (*(v37 + 6) == *(v19 + 5))
                {
                  v18 = v19;
                }
              }
            }

            else if (v21 <= v9)
            {
              goto LABEL_13;
            }
          }

          v19 += 4;
        }

        while (v19 < v20);
      }

      v22 = v42[3];
      if (v22)
      {
        v23 = (v14 + 16 * v42[2]);
        v24 = &v23[4 * v22];
        do
        {
          if ((v23[1] & 0xEE) == 0xE)
          {
            v25 = *(v23 + 1);
            if (v18)
            {
              if (v25 <= v9 && *(v18 + 1) < v25)
              {
LABEL_24:
                if (*(v37 + 6) == *(v23 + 5))
                {
                  v18 = v23;
                }
              }
            }

            else if (v25 <= v9)
            {
              goto LABEL_24;
            }
          }

          v23 += 4;
        }

        while (v23 < v24);
      }

      if (v18)
      {
        v26 = *(v18 + 1);
LABEL_53:
        *a4 = v43 + v26;
        if (*v18 < v11)
        {
          *a3 = (v13 + (v10 - v12) + *v18);
        }

        v8 = 1;
        goto LABEL_57;
      }

      goto LABEL_56;
    }

    if (v17)
    {
      v27 = (v14 + 12 * v16);
      v28 = &v27[3 * v17];
      do
      {
        if ((~*(v27 + 4) & 0xE) == 0)
        {
          v29 = v27[2];
          if (v18)
          {
            if (v9 >= v29 && v18[2] < v29)
            {
LABEL_37:
              if (*(v37 + 6) == *(v27 + 5))
              {
                v18 = v27;
              }
            }
          }

          else if (v9 >= v29)
          {
            goto LABEL_37;
          }
        }

        v27 += 3;
      }

      while (v27 < v28);
    }

    v30 = v42[3];
    if (!v30)
    {
LABEL_51:
      if (v18)
      {
        v26 = v18[2];
        goto LABEL_53;
      }

LABEL_56:
      v8 = 0;
LABEL_57:
      _Block_object_dispose(&v36, 8);
      goto LABEL_58;
    }

    v31 = (v14 + 12 * v42[2]);
    v32 = &v31[3 * v30];
    while (1)
    {
      if ((v31[1] & 0xEE) == 0xE)
      {
        v33 = v31[2];
        if (v18)
        {
          if (v9 >= v33 && v18[2] < v33)
          {
LABEL_48:
            if (*(v37 + 6) == *(v31 + 5))
            {
              v18 = v31;
            }
          }
        }

        else if (v9 >= v33)
        {
          goto LABEL_48;
        }
      }

      v31 += 3;
      if (v31 >= v32)
      {
        goto LABEL_51;
      }
    }
  }

LABEL_58:
  Diagnostics::~Diagnostics(v46);
  return v8;
}

uint64_t dyld4::SyscallDelegate::realpath(dyld4::SyscallDelegate *this, dyld3 *a2, char *a3)
{
  v4 = a2;
  v5 = dyld3::open(a2, 0, 0);
  if (v5 == -1)
  {
    strlcpy(__dst, v4, 0x400uLL);
    v8 = strrchr(__dst, 47);
    if (v8)
    {
      *v8 = 0;
      v4 += v8 - __dst + 1;
    }

    else
    {
      strcpy(__dst, ".");
    }

    v9 = dyld3::open(__dst, 0x100000, 0);
    if (v9 == -1)
    {
      return 0;
    }

    v10 = v9;
    v11 = fcntl(v9, 50, a3);
    close(v10);
    if (v11)
    {
      return 0;
    }

    else
    {
      strlcat(a3, "/", 0x400uLL);
      strlcat(a3, v4, 0x400uLL);
      return 1;
    }
  }

  else
  {
    v6 = v5;
    v7 = fcntl(v5, 50, a3) == 0;
    close(v6);
  }

  return v7;
}

uint64_t cerror(int a1)
{
  (_pthread_exit_if_canceled)();
  cerror_nocancel(a1);
  return -1;
}

vm_address_t *dyld4::APIs::setErrorString(vm_address_t *this, char *a2, ...)
{
  va_start(va, a2);
  if (this[137] != -1)
  {
    v2 = this;
    if (*(this + 1114) == 1)
    {
      this = _simple_salloc();
      if (this)
      {
        v4 = this;
        _simple_vsprintf(this, a2, va);
        v5 = _simple_string(v4);
        v6 = _platform_strlen(v5);
        if (v6 + 2 <= 0x100)
        {
          v7 = 256;
        }

        else
        {
          v7 = v6 + 2;
        }

        v8 = dyld4::LibSystemHelpersWrapper::pthread_getspecific((v2 + 20), v2[137]);
        if (v8)
        {
          v9 = v8;
          v10 = dyld4::LibSystemHelpersWrapper::malloc_size((v2 + 20), v8);
          if (v10)
          {
            if (v10 >= v7)
            {
LABEL_12:
              v11 = _simple_string(v4);
              strlcpy(v9 + 1, v11, v7 - 1);
              *v9 = 1;
              return _simple_sfree(v4);
            }

            dyld4::LibSystemHelpersWrapper::free((v2 + 20), v9);
          }
        }

        v9 = dyld4::LibSystemHelpersWrapper::malloc((v2 + 20), v7);
        dyld4::LibSystemHelpersWrapper::pthread_setspecific((v2 + 20), v2[137], v9);
        goto LABEL_12;
      }
    }
  }

  return this;
}

std::ios_base *__cdecl hex(std::ios_base *__str)
{
  v7 = v4;
  v8 = v3;
  v9 = v1;
  v11 = "0123456789ABCDEF";
  if (!v5)
  {
    v11 = "0123456789abcdef";
  }

  v46 = 0;
  if (v2)
  {
    v12 = &v46;
    do
    {
      *--v12 = v11[v2 & 0xF];
      v13 = v2 >= 0x10;
      v2 >>= 4;
    }

    while (v13);
    if (!v6)
    {
      goto LABEL_26;
    }

    goto LABEL_9;
  }

  v12 = &v45;
  v45 = 48;
  if (v6)
  {
LABEL_9:
    v8 = v3 - 2;
    if (!v4)
    {
      v22 = 0;
      goto LABEL_28;
    }

    v14 = 0;
    v15 = 48;
    do
    {
      if (v9 && (v16 = v9(v15)) != 0)
      {
        v17 = *v16;
        if (*v16)
        {
          v18 = v16 + 1;
          while (1)
          {
            v19 = *&__str->__fmtflags_;
            if (v19 < __str->__precision_)
            {
              goto LABEL_18;
            }

            if ((*&__str->__rdstate_)(__str))
            {
              break;
            }

LABEL_19:
            v20 = *v18++;
            v17 = v20;
            if (!v20)
            {
              goto LABEL_25;
            }
          }

          v19 = *&__str->__fmtflags_;
LABEL_18:
          *&__str->__fmtflags_ = v19 + 1;
          *v19 = v17;
          goto LABEL_19;
        }
      }

      else
      {
        v21 = *&__str->__fmtflags_;
        if (v21 < __str->__precision_)
        {
          goto LABEL_24;
        }

        if ((*&__str->__rdstate_)(__str))
        {
          v21 = *&__str->__fmtflags_;
LABEL_24:
          *&__str->__fmtflags_ = v21 + 1;
          *v21 = v15;
        }
      }

LABEL_25:
      v15 = _0x[++v14];
    }

    while (v14 != 2);
  }

LABEL_26:
  v22 = 1;
LABEL_28:
  result = _platform_strlen(v12);
  v24 = v8 - result;
  if (v24 >= 1)
  {
    if (v7)
    {
      v25 = 48;
    }

    else
    {
      v25 = 32;
    }

    do
    {
      if (v9 && (result = v9(v25)) != 0)
      {
        v26 = result->__vftable;
        if (LOBYTE(result->__vftable))
        {
          v27 = &result->__vftable + 1;
          while (1)
          {
            v28 = *&__str->__fmtflags_;
            if (v28 < __str->__precision_)
            {
              goto LABEL_39;
            }

            result = (*&__str->__rdstate_)(__str);
            if (result)
            {
              break;
            }

LABEL_40:
            v29 = *v27++;
            v26 = v29;
            if (!v29)
            {
              goto LABEL_46;
            }
          }

          v28 = *&__str->__fmtflags_;
LABEL_39:
          *&__str->__fmtflags_ = v28 + 1;
          *v28 = v26;
          goto LABEL_40;
        }
      }

      else
      {
        v30 = *&__str->__fmtflags_;
        if (v30 < __str->__precision_)
        {
          goto LABEL_45;
        }

        result = (*&__str->__rdstate_)(__str);
        if (result)
        {
          v30 = *&__str->__fmtflags_;
LABEL_45:
          *&__str->__fmtflags_ = v30 + 1;
          *v30 = v25;
        }
      }

LABEL_46:
      ;
    }

    while (v24-- > 1);
  }

  if (v22)
  {
    goto LABEL_81;
  }

  v32 = 0;
  v33 = 48;
  do
  {
    if (v9 && (result = v9(v33)) != 0)
    {
      v34 = result->__vftable;
      if (LOBYTE(result->__vftable))
      {
        v35 = &result->__vftable + 1;
        while (1)
        {
          v36 = *&__str->__fmtflags_;
          if (v36 < __str->__precision_)
          {
            goto LABEL_57;
          }

          result = (*&__str->__rdstate_)(__str);
          if (result)
          {
            break;
          }

LABEL_58:
          v37 = *v35++;
          v34 = v37;
          if (!v37)
          {
            goto LABEL_64;
          }
        }

        v36 = *&__str->__fmtflags_;
LABEL_57:
        *&__str->__fmtflags_ = v36 + 1;
        *v36 = v34;
        goto LABEL_58;
      }
    }

    else
    {
      v38 = *&__str->__fmtflags_;
      if (v38 >= __str->__precision_)
      {
        result = (*&__str->__rdstate_)(__str);
        if (!result)
        {
          goto LABEL_64;
        }

        v38 = *&__str->__fmtflags_;
      }

      *&__str->__fmtflags_ = v38 + 1;
      *v38 = v33;
    }

LABEL_64:
    v33 = _0x[++v32];
  }

  while (v32 != 2);
LABEL_81:
  while (1)
  {
    v44 = *v12;
    if (!*v12)
    {
      return result;
    }

    if (v9)
    {
      result = v9(*v12);
      if (result)
      {
        v39 = result->__vftable;
        if (!LOBYTE(result->__vftable))
        {
          goto LABEL_80;
        }

        v40 = &result->__vftable + 1;
        while (2)
        {
          v41 = *&__str->__fmtflags_;
          if (v41 < __str->__precision_)
          {
LABEL_73:
            *&__str->__fmtflags_ = v41 + 1;
            *v41 = v39;
          }

          else
          {
            result = (*&__str->__rdstate_)(__str);
            if (result)
            {
              v41 = *&__str->__fmtflags_;
              goto LABEL_73;
            }
          }

          v42 = *v40++;
          v39 = v42;
          if (!v42)
          {
            goto LABEL_80;
          }

          continue;
        }
      }
    }

    v43 = *&__str->__fmtflags_;
    if (v43 >= __str->__precision_)
    {
      result = (*&__str->__rdstate_)(__str);
      if (!result)
      {
        goto LABEL_80;
      }

      v43 = *&__str->__fmtflags_;
    }

    *&__str->__fmtflags_ = v43 + 1;
    *v43 = v44;
LABEL_80:
    ++v12;
  }
}