void sub_1800A3EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = *(v15 + 24);
  v18 = v17;
  atomic_compare_exchange_strong_explicit(v14, &v18, 0, memory_order_release, memory_order_relaxed);
  if (v18 != v17)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *class_rw_t::methods(unint64_t *this, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((v2 & 1) == 0)
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 32);
    if (v3)
    {
      v4 = (v3 & 1) == 0;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFFFELL;
      if ((v3 & 0xFFFFFFFFFFFFFFFELL) != 0)
      {
        goto LABEL_11;
      }
    }

    else if ((v3 & 1) != 0 && (v3 & 0xFFFFFFFFFFFFFFFELL) != 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFFFCLL | 2;
LABEL_11:
      v6 = v5;
      goto LABEL_13;
    }

    v6 = 0;
    goto LABEL_13;
  }

  *this = 0;
  v6 = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
LABEL_13:
  *this = v6;
  return this;
}

void *list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::ListIterator::ListIterator(void *result, uint64_t a2)
{
  v2 = *a2;
  *result = *a2;
  if (!*v2)
  {
LABEL_4:
    if (*(a2 + 8))
    {
      v3 = *(a2 + 8);
    }

    else
    {
      v3 = 0;
    }

    result[1] = v3;
    return result;
  }

  if ((*v2 & 3uLL) <= 1)
  {
    if ((*v2 & 3) != 0)
    {
      result[1] = *(a2 + 8);
      return result;
    }

    goto LABEL_4;
  }

  if ((*v2 & 3) == 2)
  {
    v4 = *(a2 + 8);
    result[3] = *(a2 + 24);
    *(result + 1) = v4;
  }

  return result;
}

uint64_t entsize_list_tt<method_t,method_list_t,4294901763u,method_t::pointer_modifier>::signedEnd(uint64_t result, unsigned int *a2, const char *a3, char *a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = *a2 & 0xFFFC;
  *(result + 4) = v4;
  v6 = v4 * (v5 & 0xFFFC);
  if ((v6 & 0xFFFFFFFF00000000) != 0)
  {
    _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v4, a2, v5 & 0xFFFC);
  }

  v7 = v5 >> 31;
  if (a2 < 0)
  {
    v7 = 2;
  }

  *(result + 8) = (a2 + v6 + 8) & 0xFFFFFFFFFFFFFFFCLL | v7;
  return result;
}

uint64_t method_t::getCachedDescription(uint64_t this)
{
  v2 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v2, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  if ((byte_1ED3F57A8 & 1) == 0)
  {
    objc::methodDescriptionMap = 0uLL;
    dword_1ED3F57A0 = 0;
    byte_1ED3F57A8 = 1;
  }

  v14 = 0;
  v4 = objc::DenseMapBase<objc::DenseMap<method_t const*,objc_method_description *,objc::DenseMapValueInfo<objc_method_description *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,objc_method_description *>>,method_t const*,objc_method_description *,objc::DenseMapValueInfo<objc_method_description *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,objc_method_description *>>::LookupBucketFor<method_t const*>(this, &v14);
  v5 = v14;
  if (v4)
  {
    v7 = v14 + 1;
    v6 = v14[1];
    if (v6)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  if (4 * DWORD2(objc::methodDescriptionMap) + 4 >= (3 * dword_1ED3F57A0))
  {
    objc::DenseMap<method_t const*,objc_method_description *,objc::DenseMapValueInfo<objc_method_description *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,objc_method_description *>>::grow(2 * dword_1ED3F57A0);
    v14 = 0;
    objc::DenseMapBase<objc::DenseMap<method_t const*,objc_method_description *,objc::DenseMapValueInfo<objc_method_description *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,objc_method_description *>>,method_t const*,objc_method_description *,objc::DenseMapValueInfo<objc_method_description *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,objc_method_description *>>::LookupBucketFor<method_t const*>(this, &v14);
LABEL_30:
    v5 = v14;
    goto LABEL_10;
  }

  if (dword_1ED3F57A0 + ~DWORD2(objc::methodDescriptionMap) - HIDWORD(objc::methodDescriptionMap) <= dword_1ED3F57A0 >> 3)
  {
    objc::DenseMap<method_t const*,objc_method_description *,objc::DenseMapValueInfo<objc_method_description *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,objc_method_description *>>::grow(dword_1ED3F57A0);
    v14 = 0;
    objc::DenseMapBase<objc::DenseMap<method_t const*,objc_method_description *,objc::DenseMapValueInfo<objc_method_description *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,objc_method_description *>>,method_t const*,objc_method_description *,objc::DenseMapValueInfo<objc_method_description *>,objc::DenseMapInfo<method_t const*>,objc::detail::DenseMapPair<method_t const*,objc_method_description *>>::LookupBucketFor<method_t const*>(this, &v14);
    goto LABEL_30;
  }

LABEL_10:
  if (*v5 == -2)
  {
    *(&objc::methodDescriptionMap + 1) = vadd_s32(*(&objc::methodDescriptionMap + 8), 0xFFFFFFFF00000001);
  }

  else if (*v5 == -1)
  {
    ++DWORD2(objc::methodDescriptionMap);
  }

  *v5 = this;
  v5[1] = 0;
  v7 = v5 + 1;
LABEL_15:
  v8 = malloc_type_malloc(0x10uLL, 0x90040C859B4A5uLL);
  *v7 = v8;
  if ((this & 3u) > 1)
  {
    if ((this & 3) == 2)
    {
      v9 = *(this & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  else if ((this & 3) != 0)
  {
    v10 = (this & 0xFFFFFFFFFFFFFFFCLL);
    if (dataSegmentsRanges > (this & 0xFFFFFFFFFFFFFFFCLL) || *algn_1ED3F62F8 <= v10)
    {
      v9 = *(v10 + *v10);
    }

    else
    {
      v9 = &byte_1FA920D78[*v10];
    }
  }

  else
  {
    v9 = *(this & 0xFFFFFFFFFFFFFFFCLL);
  }

  *v8 = v9;
  *(*v7 + 8) = method_t::types(this);
  v6 = *v7;
LABEL_25:
  v11 = *(StatusReg + 24);
  v12 = v11;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v12, 0, memory_order_release, memory_order_relaxed);
  if (v12 != v11)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return v6;
}

void sub_1800A4400(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void map_images_nolock(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v247 = a4;
  v236 = a2;
  v255 = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00]();
  v239 = &v229 - v5;
  v238 = v6;
  *v6 = 0;
  if (map_images_nolock::firstTime)
  {
    loadAllCategoriesIfNeeded();
  }

  else
  {
    size[0] = 0;
    shared_cache_range = _dyld_get_shared_cache_range();
    if (shared_cache_range)
    {
      dataSegmentsRanges = shared_cache_range;
      *algn_1ED3F62F8 = shared_cache_range + size[0];
      objc::SafeRanges::add(shared_cache_range, shared_cache_range + size[0]);
    }

    headerInfoROs = _dyld_for_objc_header_opt_ro();
    objc_debug_headerInfoRWs = _dyld_for_objc_header_opt_rw();
    opt = &_objc_opt_data;
    if (DisablePreopt)
    {
      v8 = "(by OBJC_DISABLE_PREOPTIMIZATION)";
    }

    else if (headerInfoROs)
    {
      v8 = "libobjc is not in the shared cache";
      if (dataSegmentsRanges <= &_objc_empty_cache && *algn_1ED3F62F8 > &_objc_empty_cache)
      {
        preoptimized = 1;
        if (PrintPreopt)
        {
          _objc_inform("PREOPTIMIZATION: is ENABLED (version %d)", 16);
        }

        goto LABEL_9;
      }
    }

    else
    {
      v8 = "(dyld shared cache is absent or out of date)";
    }

    preoptimized = 0;
    opt = 0;
    fixed_up_protocol = 1;
    canonical_protocol = 1;
    if (PrintPreopt)
    {
      _objc_inform("PREOPTIMIZATION: is DISABLED %s", v8);
    }
  }

LABEL_9:
  v233 = a1;
  if (PrintImages)
  {
    _objc_inform("IMAGES: processing %u newly-mapped images...\n", a1);
  }

  prog_image_header = _dyld_get_prog_image_header();
  v232 = a1;
  if (!a1)
  {
    v246 = 0;
    LODWORD(v244) = 0;
    v68 = 0;
    goto LABEL_111;
  }

  LODWORD(a1) = 0;
  v237 = 0;
  LODWORD(v244) = 0;
  v246 = 0;
  v240 = *algn_1ED3F62F8;
  v241 = dataSegmentsRanges;
  v11 = v233;
  do
  {
    --v11;
    v12 = &v236[4 * v11];
    v13 = *v12;
    v14 = v12[2];
    v15 = a1;
    if (!headerInfoROs || (v16 = *headerInfoROs, (*headerInfoROs & 0x80000000) != 0))
    {
LABEL_21:
      magic = v13->magic;
      if (v13->magic + 17958194 >= 2 && magic != -805638658 && magic != -822415874)
      {
        continue;
      }

      size[0] = 0;
      v26 = _dyld_lookup_section_info();
      if (!getsegmentdata(v13, "__OBJC", size) && v26 == 0)
      {
        continue;
      }

      v28 = malloc_type_calloc(0x20uLL, 1uLL, 0x1000040504FFAC1uLL);
      v21 = v28;
      v29 = &addHeader(mach_header_64 const*,char const*,_dyld_section_location_info_s *,int &,int &)::emptyInfo;
      if (v26)
      {
        v29 = v26;
      }

      *v28 = v13 - v28;
      *(v28 + 1) = v29 - (v28 + 8);
      *(v28 + 2) = v14 - (v28 + 16);
      PreoptimizedHeaderRW = getPreoptimizedHeaderRW(v28);
      v31 = (v21 + 24);
      if (PreoptimizedHeaderRW)
      {
        v31 = PreoptimizedHeaderRW;
      }

      *v31 |= 1uLL;
      v32 = 1;
LABEL_45:
      size[0] = 0;
      v36 = header_info::classlist(v21, size);
      v37 = size[0];
      if (v32)
      {
        v38 = size[0];
      }

      else
      {
        v38 = 0;
      }

      if (!v36)
      {
        v37 = 0;
      }

      LODWORD(v243) = v37;
      if (v36)
      {
        v39 = v38;
      }

      else
      {
        v39 = 0;
      }

      v40 = getPreoptimizedHeaderRW(v21);
      v41 = (v21 + 24);
      if (v40)
      {
        v41 = v40;
      }

      *v41 &= 3uLL;
      if (FirstHeader)
      {
        i = LastHeader;
        v43 = v15;
        if (!LastHeader)
        {
          for (i = FirstHeader; ; i = v54 & 0xFFFFFFFFFFFFFFFCLL)
          {
            LastHeader = i;
            v52 = getPreoptimizedHeaderRW(i);
            v53 = (i + 24);
            if (v52)
            {
              v53 = v52;
            }

            v54 = *v53;
            if (v54 < 4)
            {
              break;
            }
          }
        }

        v44 = getPreoptimizedHeaderRW(i);
        v45 = (i + 24);
        if (v44)
        {
          v45 = v44;
        }

        *v45 = v21 & 0xFFFFFFFFFFFFFFFCLL | *v45 & 3;
        LastHeader = v21;
      }

      else
      {
        LastHeader = v21;
        FirstHeader = v21;
        v43 = v15;
      }

      v46 = *v21 + v21;
      if (v241 > v46 || v240 <= v46)
      {
        LODWORD(v245) = v39;
        size[0] = &unk_1EEE9B500;
        v253 = size;
        v48 = *(v46 + 16);
        if (v48)
        {
          v49 = v46 + 32;
          v50 = *(v46 + 16);
          v51 = v46 + 32;
          while (*v51 != 25 || strncmp((v51 + 8), "__TEXT", 0x10uLL))
          {
            v51 += *(v51 + 4);
            if (!--v50)
            {
              goto LABEL_77;
            }
          }

          v50 = v46 - *(v51 + 24);
LABEL_77:
          for (j = 0; j < v48; ++j)
          {
            if (*v49 == 25 && (!strncmp((v49 + 8), "__DATA", 6uLL) || !strncmp((v49 + 8), "__AUTH", 6uLL)))
            {
              (std::function<void ()(segment_command_64 const*,long)>::operator())(v253, v49, v50);
              v48 = *(v46 + 16);
            }

            v49 += *(v49 + 4);
          }
        }

        std::__function::__value_func<void ()(segment_command_64 const*,long)>::~__value_func[abi:nn200100](size);
        v43 = v15;
        v39 = v245;
      }

      *size = *v12;
      *(&v56 + 1) = size[1];
      v252 = v12[2];
      *&v56 = v12[3];
      v245 = v56;
      if (v13 != prog_image_header)
      {
LABEL_99:
        v63 = &v239[40 * v43];
        *v63 = v21;
        *(v63 + 8) = *size;
        *(v63 + 3) = v252;
        *(v63 + 4) = v245;
        if (PrintImages)
        {
          v64 = dyld_image_path_containing_address();
          v65 = " (bundle)";
          if (v13->filetype != 8)
          {
            v65 = "";
          }

          v66 = " (has class properties)";
          if ((*(*(v21 + 8) + v21 + 8 + 4) & 0x40) == 0)
          {
            v66 = "";
          }

          v67 = " (preoptimized)";
          if ((*(*(v21 + 8) + v21 + 8 + 4) & 8) == 0)
          {
            v67 = "";
          }

          _objc_inform("IMAGES: loading image for %s%s%s%s\n", v64, v65, v66, v67);
        }

        v246 = (v243 + v246);
        LODWORD(v244) = v39 + v244;
        LODWORD(a1) = v15 + 1;
        continue;
      }

      if (v56)
      {
        if ((preoptimized & 1) == 0)
        {
          v61 = *v21 + v21;
          goto LABEL_95;
        }

        v248[0] = 0;
        header_info::selrefs(v21, v248);
        v57 = v248[0];
        v58 = _dyld_lookup_section_info();
        v60 = v59 >> 4;
        if (!v58)
        {
          v60 = 0;
        }

        v237 += v57 + v60;
      }

      v61 = *v21 + v21;
      if (preoptimized == 1 && (*(*(v21 + 8) + v21 + 8 + 4) & 8) != 0 && *(headerInfoROs + 4) < 0x18u)
      {
        v62 = 0;
LABEL_96:
        if (hasSignedClassROPointers(v61, v62))
        {
          map_images_nolock::executableHasClassROSigning = 1;
        }

        v43 = v15;
        goto LABEL_99;
      }

LABEL_95:
      v62 = *(v21 + 16) + v21 + 16;
      goto LABEL_96;
    }

    v17 = 0;
    v18 = headerInfoROs + 8;
    v19 = *(headerInfoROs + 4);
    while (1)
    {
      v20 = (v17 + v16) >> 1;
      v21 = v18 + v19 * v20;
      v22 = (*v21 + v21);
      if (v13 == v22)
      {
        break;
      }

      if (v13 >= v22)
      {
        v17 = v20 + 1;
      }

      else
      {
        v16 = v20 - 1;
      }

      if (v17 > v16)
      {
        goto LABEL_21;
      }
    }

    v33 = getPreoptimizedHeaderRW(v18 + v19 * v20);
    v34 = (v21 + 24);
    if (v33)
    {
      v34 = v33;
    }

    if ((*v34 & 1) == 0)
    {
      *v34 |= 1uLL;
      if (PrintPreopt)
      {
        v35 = dyld_image_path_containing_address();
        _objc_inform("PREOPTIMIZATION: honoring preoptimized header info at %p for %s", v21, v35);
      }

      v32 = 0;
      goto LABEL_45;
    }
  }

  while (v11);
  v68 = v237;
LABEL_111:
  LODWORD(v245) = a1;
  if ((map_images_nolock::firstTime & 1) == 0)
  {
    if (PrintPreopt)
    {
      v69 = v68;
      _objc_inform("PREOPTIMIZATION: using dyld selector opt");
      v68 = v69;
    }

    if (v68)
    {
      v70 = (4 * v68 / 3u + 1) | ((4 * v68 / 3u + 1) >> 1);
      v71 = v70 | (v70 >> 2) | ((v70 | (v70 >> 2)) >> 4);
      dword_1ED3F60A0 = (v71 | (v71 >> 8) | ((v71 | (v71 >> 8)) >> 16)) + 1;
      v72 = malloc_type_malloc(8 * dword_1ED3F60A0, 0xAC185C46uLL);
      if (v72)
      {
        namedSelectors = v72;
      }

      else
      {
        namedSelectors = 0;
      }

      *algn_1ED3F6098 = 0;
      if (dword_1ED3F60A0)
      {
        memset(v72, 255, 8 * dword_1ED3F60A0);
      }
    }

    else
    {
      namedSelectors = 0;
      *algn_1ED3F6098 = 0;
      dword_1ED3F60A0 = 0;
    }

    v73 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(selLock, &v73, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v73)
    {
      os_unfair_lock_lock_with_options();
    }

    SEL_cxx_construct = __sel_registerName(".cxx_construct", 0, 0);
    SEL_cxx_destruct = __sel_registerName(".cxx_destruct", 0, 0);
    v75 = *(StatusReg + 24);
    v76 = v75;
    atomic_compare_exchange_strong_explicit(selLock, &v76, 0, memory_order_release, memory_order_relaxed);
    if (v76 != v75)
    {
      os_unfair_lock_unlock(selLock);
    }

    objc::AssociationsManager::_mapStorage = 0uLL;
    dword_1ED3F5F58 = 0;
    pthread_key_init_np();
    pthread_key_init_np();
    if (DebugScanWeakTables)
    {
      _objc_inform("Starting background scan of weak references.");
      size[0] = 0;
      v77 = pthread_create(size, 0, weakTableScanThread, 0);
      v78 = v77;
      if (v77)
      {
        v225 = strerror(v77);
        _objc_fatal("pthread_create failed with error %d (%s)", v226, v227, v228, v78, v225);
      }

      pthread_detach(size[0]);
    }

    v79 = _dyld_get_prog_image_header();
    if (v79)
    {
      if (*(v79 + 4) == 16777228 && (*(v79 + 8) & 0xFFFFFF) == 2)
      {
        map_images_nolock::executableIsARM64e = 1;
        goto LABEL_138;
      }
    }
  }

  if (map_images_nolock::executableIsARM64e == 1)
  {
LABEL_138:
    if (DebugClassRXSigning)
    {
      v80 = map_images_nolock::executableHasClassROSigning;
    }

    else
    {
      v80 = 0;
    }

    if (!v245)
    {
      goto LABEL_411;
    }

    v81 = v245;
    v82 = v239;
    while (1)
    {
      v83 = *v82;
      if (preoptimized == 1 && (*(v83 + v83[1] + 12) & 8) != 0 && *(headerInfoROs + 4) < 0x18u)
      {
        v84 = 0;
      }

      else
      {
        v84 = v83 + v83[2] + 16;
      }

      if (hasSignedClassROPointers(v83 + *v83, v84))
      {
        goto LABEL_153;
      }

      if (objc::disableEnforceClassRXPtrAuth)
      {
        break;
      }

      *v238 = 1;
      objc::disableEnforceClassRXPtrAuth = 1;
      if (v80)
      {
        goto LABEL_152;
      }

LABEL_153:
      v82 += 5;
      if (!--v81)
      {
        goto LABEL_156;
      }
    }

    if (!v80)
    {
      goto LABEL_153;
    }

LABEL_152:
    v85 = dyld_image_path_containing_address();
    _objc_inform("%s has un-signed class_ro_t pointers, but the main executable was compiled with class_ro_t pointer signing enabled", v85);
    goto LABEL_153;
  }

LABEL_156:
  if (!v245)
  {
    goto LABEL_411;
  }

  v250 = 0;
  v234 = _read_images::doneOnce;
  if ((_read_images::doneOnce & 1) == 0)
  {
    _read_images::doneOnce = 1;
    if (DisableTaggedPointers)
    {
      objc_debug_taggedpointer_mask = 0;
      objc_debug_taggedpointer_slot_shift = 0;
      objc_debug_taggedpointer_slot_mask = 0;
      objc_debug_taggedpointer_payload_lshift = 0;
      objc_debug_taggedpointer_payload_rshift = 0;
      objc_debug_taggedpointer_ext_mask = 0;
      objc_debug_taggedpointer_ext_slot_shift = 0;
      objc_debug_taggedpointer_ext_slot_mask = 0;
      objc_debug_taggedpointer_ext_payload_lshift = 0;
      objc_debug_taggedpointer_ext_payload_rshift = 0;
    }

    if (DisableTaggedPointerObfuscation || !dyld_program_sdk_at_least())
    {
      objc_debug_taggedpointer_obfuscator = 0;
    }

    else
    {
      arc4random_buf(&objc_debug_taggedpointer_obfuscator, 8uLL);
      objc_debug_taggedpointer_obfuscator &= 0x3FFFFFFFFFFFFFF8uLL;
      for (k = 6u; k != -1; --k)
      {
        v87 = arc4random_uniform(k + 1);
        v88 = objc_debug_tag60_permutations[k];
        objc_debug_tag60_permutations[k] = objc_debug_tag60_permutations[v87];
        objc_debug_tag60_permutations[v87] = v88;
      }
    }

    if (PrintConnecting)
    {
      _objc_inform("CLASS: found %d classes during launch", v246);
    }

    v89 = v244;
    if (!preoptimized)
    {
      v89 = v246;
    }

    v90 = 5726623064 * v89;
    size[1] = _mapStrIsEqual;
    v252 = _mapNoFree;
    LODWORD(v253) = 0;
    size[0] = namedClassTableHashCallback;
    v91 = v90 >> 63;
    v92 = HIDWORD(v90);
    v248[0] = namedClassTableHashCallback;
    if (_mapStrIsEqual)
    {
      v93 = _mapStrIsEqual;
    }

    else
    {
      v93 = 0;
    }

    v248[1] = v93;
    if (_mapNoFree)
    {
      v94 = _mapNoFree;
    }

    else
    {
      v94 = 0;
    }

    v248[2] = v94;
    v249 = 0;
    gdb_objc_realized_classes = NXCreateMapTable(v248, v92 + v91);
  }

  v95 = 0;
  v96 = v245;
  v230 = v245;
  v97 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(selLock, &v95, *(v97 + 24), memory_order_acquire, memory_order_acquire);
  if (v95)
  {
    os_unfair_lock_lock_with_options();
  }

  v98 = v239;
  prog_image_header = &v239[40 * v230];
  v244 = v247 + 16;
  do
  {
    if ((v98[32] & 1) == 0 || (preoptimized & 1) == 0)
    {
      v99 = *(**v98 + *v98 + 12);
      v100 = header_info::selrefs(*v98, &v250);
      v101 = v250;
      _read_images::UnfixedSelectors += v250;
      if (v250)
      {
        v102 = v100;
        v103 = ~(-858993459 * ((v98 - v239) >> 3));
        do
        {
          v104 = __sel_registerName(*v102, 0, v99 == 8);
          if (*v102 != v104)
          {
            (*(v247 + 16))(v247, (v96 + v103));
            if ((v98[32] & 2) == 0 || !MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
            {
              goto LABEL_200;
            }

            if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
            {
LABEL_435:
              __break(1u);
              return;
            }

            if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) == 0)
            {
              if (!MEMORY[0xFFFFFC10C])
              {
                goto LABEL_435;
              }

              if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
              {
                goto LABEL_435;
              }

              v105 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v105 & 0xFE) != 2)
              {
                goto LABEL_435;
              }

              _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
              __isb(0xFu);
              v106 = MEMORY[0xFFFFFC0D0];
              if (v106 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
              {
                goto LABEL_435;
              }

              *v102 = v104;
              if (!MEMORY[0xFFFFFC10C])
              {
                goto LABEL_435;
              }

              if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
              {
                goto LABEL_435;
              }

              v107 = MEMORY[0xFFFFFC10C];
              __dmb(0xAu);
              if ((v107 & 0xFE) != 2)
              {
                goto LABEL_435;
              }

              _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
              __isb(0xFu);
              v108 = MEMORY[0xFFFFFC0D8];
              if (v108 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
              {
                goto LABEL_435;
              }
            }

            else
            {
LABEL_200:
              *v102 = v104;
            }
          }

          ++v102;
          --v101;
        }

        while (v101);
      }
    }

    v98 += 40;
  }

  while (v98 != prog_image_header);
  v109 = *(v97 + 24);
  v110 = v109;
  atomic_compare_exchange_strong_explicit(selLock, &v110, 0, memory_order_release, memory_order_relaxed);
  if (v110 != v109)
  {
    os_unfair_lock_unlock(selLock);
  }

  LODWORD(v243) = dyld_shared_cache_some_image_overridden();
  v111 = 0;
  v246 = 0;
  v112 = v239;
  while (2)
  {
    v113 = *v112;
    v114 = *(v112 + 8);
    if ((v114 & 1) != 0 && preoptimized == 1)
    {
      v115 = v243;
      if ((*(opt + 4) & 2) == 0)
      {
        v115 = 1;
      }

      v116 = "the image may contain classes with missing weak superclasses";
      if ((v115 & 1) != 0 || future_named_class_map && (v116 = "there are unresolved future classes pending", *(future_named_class_map + 8)))
      {
        if (PrintPreopt)
        {
          v117 = dyld_image_path_containing_address();
          _objc_inform("PREOPTIMIZATION: reading classes manually from %s because %s", v117, v116);
        }

        goto LABEL_215;
      }
    }

    else
    {
LABEL_215:
      v118 = header_info::classlist(v113, &v250);
      v119 = v250;
      if (v250)
      {
        v120 = v118;
        v121 = 0;
        v122 = v114 & 1;
        v123 = *(v113 + *v113 + 12);
        v124 = preoptimized;
        do
        {
          v125 = *(v120 + 8 * v121);
          Class = readClass(v125, v123 == 8, v122 & v124);
          v127 = Class;
          if (Class != v125 && Class != 0)
          {
            v129 = v246 + 1;
            v111 = malloc_type_realloc(v111, 8 * (v246 + 1), 0x80040B8603338uLL);
            *(v111 + v246) = v127;
            v119 = v250;
            v246 = v129;
          }

          ++v121;
        }

        while (v121 < v119);
      }
    }

    v112 += 40;
    if (v112 != prog_image_header)
    {
      continue;
    }

    break;
  }

  if (byte_1ED3F5988 == 1)
  {
    v130 = v239;
    do
    {
      v132 = _dyld_lookup_section_info();
      v133 = ~(-858993459 * ((v130 - v239) >> 3));
      if (v132)
      {
        v134 = v131 >= 8;
      }

      else
      {
        v134 = 0;
      }

      if (v134)
      {
        v135 = v131 >> 3;
        do
        {
          remapClassRef(v132++, (v245 + v133), (*(v130 + 8) >> 1) & 1, v247);
          --v135;
        }

        while (v135);
      }

      v137 = _dyld_lookup_section_info();
      if (v137)
      {
        v138 = v136 >> 3;
      }

      else
      {
        v138 = 0;
      }

      if (v138)
      {
        v139 = v138;
        do
        {
          remapClassRef(v137++, (v245 + v133), (*(v130 + 8) >> 1) & 1, v247);
          --v139;
        }

        while (v139);
      }

      v130 += 40;
    }

    while (v130 != prog_image_header);
    v250 = v138;
  }

  v231 = &v252;
  v235 = *algn_1ED3F62F8;
  v238 = dataSegmentsRanges;
  v237 = Protocol >> 55;
  v140 = v239;
  while (2)
  {
    v243 = protocols();
    if ((v140[32] & 1) == 0)
    {
      v141 = 0;
      goto LABEL_246;
    }

    if (v234 & 1 | ((preoptimized & 1) == 0))
    {
      v141 = preoptimized & 1;
LABEL_246:
      v142 = *(**v140 + *v140 + 12);
      v143 = header_info::protocollist(*v140, &v250);
      v144 = v250;
      if (v250)
      {
        v145 = v143;
        LODWORD(v240) = ~(-858993459 * ((v140 - v239) >> 3));
        v146 = NXMapInsert;
        if (v142 == 8)
        {
          v146 = NXMapKeyCopyingInsert;
        }

        v241 = v146;
        do
        {
          v147 = *v145;
          v148 = *(v140 + 8);
          Protocol = getProtocol(*(*v145 + 8));
          v150 = Protocol;
          if (Protocol)
          {
            if (Protocol != v147)
            {
              if (PrintProtocols)
              {
                v151 = protocol_t::demangledName(Protocol);
                _objc_inform("PROTOCOLS: protocol at %p is %s  (duplicate of %p)", v147, v151, v150);
              }

              if (v141)
              {
                v152 = canonical_protocol ? 0 : 0x20000000;
                if (v152 & *(v150 + 17)) == 0 && !DisablePreopt && (preoptimized)
                {
                  v248[0] = 0;
                  size[0] = MEMORY[0x1E69E9820];
                  size[1] = 3321888768;
                  v252 = __getSharedCachePreoptimizedProtocol_block_invoke;
                  v253 = &__block_descriptor_40_e8_32c47_ZTSKZ34getSharedCachePreoptimizedProtocolE3__0_e16_v28__0_v8B16_B20l;
                  v254 = v248;
                  _dyld_for_each_objc_protocol();
                  if (v248[0])
                  {
                    v153 = *(v248[0] + 68);
                    v154 = canonical_protocol ? 0 : 0x20000000;
                    if ((v154 & v153) != 0)
                    {
                      if (canonical_protocol)
                      {
                        v155 = -1;
                      }

                      else
                      {
                        v155 = -536870913;
                      }

                      *(v248[0] + 68) = v155 & v153;
                    }
                  }
                }
              }
            }
          }

          else
          {
            if (!v141)
            {
              (*(v247 + 16))(v247, (v245 + v240));
              v165 = 0;
              v166 = 0;
              if (v238 <= v147)
              {
                if (v235 <= v147)
                {
                  goto LABEL_285;
                }

                if (preoptimized)
                {
                  v166 = 0;
                  v165 = 0;
                  if ((v148 & 2) == 0)
                  {
                    goto LABEL_309;
                  }

LABEL_291:
                  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
                  {
                    goto LABEL_309;
                  }

                  if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
                  {
                    goto LABEL_435;
                  }

                  if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) == 0)
                  {
                    if (!MEMORY[0xFFFFFC10C])
                    {
                      goto LABEL_435;
                    }

                    if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
                    {
                      goto LABEL_435;
                    }

                    v167 = MEMORY[0xFFFFFC10C];
                    __dmb(0xAu);
                    if ((v167 & 0xFE) != 2)
                    {
                      goto LABEL_435;
                    }

                    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                    __isb(0xFu);
                    v168 = MEMORY[0xFFFFFC0D0];
                    if (v168 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                    {
                      goto LABEL_435;
                    }

                    if (v237)
                    {
                      _objc_fatal("Invalid class pointer %p has bits set outside of ISA_MASK", 0xFFFFFC0D0, v161, v162, Protocol);
                    }

                    *v147 = Protocol & 0x7FFFFFFFFFFFF8;
                    if (v166)
                    {
                      v147[10] = v165;
                    }

                    if (!MEMORY[0xFFFFFC10C])
                    {
                      goto LABEL_435;
                    }

                    if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
                    {
                      goto LABEL_435;
                    }

                    v169 = MEMORY[0xFFFFFC10C];
                    __dmb(0xAu);
                    if ((v169 & 0xFE) != 2)
                    {
                      goto LABEL_435;
                    }

                    _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
                    __isb(0xFu);
                    v170 = MEMORY[0xFFFFFC0D8];
                    if (v170 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                    {
                      goto LABEL_435;
                    }

                    if (!v166)
                    {
                      goto LABEL_317;
                    }

LABEL_312:
                    if (fixed_up_protocol)
                    {
                      v171 = -1073741824;
                    }

                    else
                    {
                      v171 = 0x40000000;
                    }

                    if ((*(v147 + 17) & 0xC0000000) != v171)
                    {
                      fixupProtocol(v147, (v245 + v240), (v148 >> 1) & 1, v247, v163, v164);
                    }

                    goto LABEL_317;
                  }

                  if (v237)
                  {
                    _objc_fatal("Invalid class pointer %p has bits set outside of ISA_MASK", v160, v161, v162, Protocol);
                  }

LABEL_310:
                  *v147 = Protocol & 0x7FFFFFFFFFFFF8;
                  if (v166)
                  {
                    v147[10] = v165;
                    goto LABEL_312;
                  }

LABEL_317:
                  v241(v243, v147[1], v147);
                  if (PrintProtocols)
                  {
                    v172 = protocol_t::demangledName(v147);
                    _objc_inform("PROTOCOLS: protocol at %p is %s", v147, v172);
                  }

                  goto LABEL_319;
                }

                if ((v147 + *(v147 + 16)) <= v147 + 10 || v147[10])
                {
                  v165 = 0;
                  v166 = 1;
LABEL_285:
                  if ((v148 & 2) == 0)
                  {
                    goto LABEL_309;
                  }

                  goto LABEL_291;
                }

                v165 = copySwiftV1DemangledName(v147[1], 1);
                if (!v165)
                {
                  v165 = v147[1];
                }

                v166 = 1;
              }

              if ((v148 & 2) != 0)
              {
                goto LABEL_291;
              }

LABEL_309:
              if (v237)
              {
                _objc_fatal("Invalid class pointer %p has bits set outside of ISA_MASK", v160, v161, v162, Protocol);
              }

              goto LABEL_310;
            }

            PreoptimizedProtocol = getPreoptimizedProtocol(v147[1]);
            if (PreoptimizedProtocol)
            {
              v157 = PreoptimizedProtocol;
            }

            else
            {
              v157 = v147;
            }

            v241(v243, v157[1], v157);
            if (PrintProtocols)
            {
              v158 = protocol_t::demangledName(v157);
              _objc_inform("PROTOCOLS: protocol at %p is %s", v157, v158);
              if (v157 != v147)
              {
                v159 = protocol_t::demangledName(v157);
                _objc_inform("PROTOCOLS: protocol at %p is %s  (duplicate of %p)", v147, v159, v157);
              }
            }
          }

LABEL_319:
          v145 += 8;
          --v144;
        }

        while (v144);
      }
    }

    else if (PrintProtocols)
    {
      v173 = dyld_image_path_containing_address();
      _objc_inform("PROTOCOLS: Skipping reading protocols in image: %s", v173);
    }

    v140 += 40;
    if (v140 != prog_image_header)
    {
      continue;
    }

    break;
  }

  v174 = v250;
  v175 = v239;
  do
  {
    if ((v234 & 1) != 0 || !preoptimized || (*(*(*v175 + 8) + *v175 + 8 + 4) & 8) == 0)
    {
      v177 = _dyld_lookup_section_info();
      v174 = v177 ? v176 >> 3 : 0;
      if (v174)
      {
        v178 = 0;
        v179 = ~(-858993459 * ((v175 - v239) >> 3));
        do
        {
          v180 = *(v177 + 8 * v178);
          if (canonical_protocol)
          {
            v181 = 0;
          }

          else
          {
            v181 = 0x20000000;
          }

          if ((v181 & *(v180 + 68)) == 0)
          {
            v182 = *(v175 + 8);
            v183 = getProtocol(*(v180 + 8));
            v184 = v183 ? v183 : v180;
            if (*(v177 + 8 * v178) != v184)
            {
              v185 = (v182 & 2) == 0;
              (*(v247 + 16))(v247, (v245 + v179));
              if ((v182 & 2) == 0 || !MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
              {
                goto LABEL_358;
              }

              if (!MEMORY[0xFFFFFC10C] || (MEMORY[0xFFFFFC10C] & 0xFE) != 2)
              {
LABEL_431:
                v250 = v174;
                __break(1u);
LABEL_432:
                v221 = objc_class::nameForLogging(v185);
                _objc_fatal("Swift class %s with a metadata initializer is not allowed to be non-lazy", v222, v223, v224, v221);
              }

              if ((_ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)) & 0x1000000000) == 0)
              {
                if (!MEMORY[0xFFFFFC10C])
                {
                  goto LABEL_431;
                }

                if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
                {
                  goto LABEL_431;
                }

                v186 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v186 & 0xFE) != 2)
                {
                  goto LABEL_431;
                }

                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D0]);
                __isb(0xFu);
                v187 = MEMORY[0xFFFFFC0D0];
                if (v187 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  goto LABEL_431;
                }

                *(v177 + 8 * v178) = v184;
                if (!MEMORY[0xFFFFFC10C])
                {
                  goto LABEL_431;
                }

                if ((MEMORY[0xFFFFFC10C] & 0xFE) != 2)
                {
                  goto LABEL_431;
                }

                v188 = MEMORY[0xFFFFFC10C];
                __dmb(0xAu);
                if ((v188 & 0xFE) != 2)
                {
                  goto LABEL_431;
                }

                _WriteStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5), MEMORY[0xFFFFFC0D8]);
                __isb(0xFu);
                v189 = MEMORY[0xFFFFFC0D8];
                if (v189 != _ReadStatusReg(ARM64_SYSREG(3, 6, 15, 1, 5)))
                {
                  goto LABEL_431;
                }
              }

              else
              {
LABEL_358:
                *(v177 + 8 * v178) = v184;
              }

              ++UnfixedProtocolReferences;
            }
          }

          ++v178;
        }

        while (v174 != v178);
      }
    }

    v175 += 40;
  }

  while (v175 != prog_image_header);
  v250 = v174;
  if (didInitialAttachCategories == 1)
  {
    v190 = 40 * v230;
    v191 = 40 * v230;
    v192 = v239;
    do
    {
      if (*(*v192 + *(*v192 + 1) + 12))
      {
        load_categories_nolock(*v192);
      }

      v192 += 5;
      v191 -= 40;
    }

    while (v191);
    v193 = v239;
    do
    {
      if ((*(*v193 + *(*v193 + 1) + 12) & 1) == 0)
      {
        load_categories_nolock(*v193);
      }

      v193 += 5;
      v190 -= 40;
    }

    while (v190);
  }

  v194 = v239;
  do
  {
    v195 = header_info::nlclslist(*v194, &v250);
    v197 = v250;
    if (v250)
    {
      v198 = v195;
      do
      {
        v199 = remapClass(*v198);
        v185 = v199;
        if (v199)
        {
          addClassTableEntry(v199, 1);
          if ((*(v185 + 32) & 2) != 0)
          {
            v200 = class_data_bits_t::safe_ro<(Authentication)0>((v185 + 32));
            if ((*v200 & 0x40) != 0)
            {
              if (*(v200 + 72))
              {
                goto LABEL_432;
              }
            }
          }

          realizeClassWithoutSwift(v185, 0);
        }

        ++v198;
        --v197;
      }

      while (v197);
    }

    v194 += 5;
  }

  while (v194 != prog_image_header);
  if (v111)
  {
    if (v246)
    {
      v201 = v111;
      do
      {
        v202 = *v201;
        if ((*(*v201 + 4) & 2) != 0)
        {
          _objc_fatal("Swift class is not allowed to be future", v196, v9, v10);
        }

        realizeClassWithoutSwift(*v201, 0);
        objc_class::setInstancesRequireRawIsaRecursively(v202, 0);
        ++v201;
        --v246;
      }

      while (v246);
    }

    free(v111);
  }

  if (DebugNonFragileIvars)
  {
    realizeAllClasses();
  }

  if (PrintPreopt)
  {
    v203 = v239;
    do
    {
      v204 = *v203;
      v205 = v203;
      v206 = *(v203 + 8);
      if (v206 & 1) != 0 && (v207 = "PREOPTIMIZATION: honoring preoptimized selectors in %s", (preoptimized) || (v207 = "PREOPTIMIZATION: IGNORING preoptimized selectors in %s", (*(v204 + v204[1] + 12) & 8) != 0))
      {
        v208 = dyld_image_path_containing_address();
        _objc_inform(v207, v208);
      }

      v209 = header_info::classlist(v204, &v250);
      v210 = v250;
      if (v250)
      {
        v211 = v209;
        do
        {
          v212 = remapClass(*v211);
          v213 = v212;
          if (v212)
          {
            ++_read_images::PreoptTotalClasses;
            if ((v206 & 1) != 0 && preoptimized == 1)
            {
              ++_read_images::PreoptOptimizedClasses;
            }

            _read_images::$_2::operator()(v212);
            _read_images::$_2::operator()(*v213 & 0xFFFFFFFF8);
          }

          ++v211;
          --v210;
        }

        while (v210);
      }

      v203 = v205 + 40;
    }

    while (v205 + 40 != prog_image_header);
    _objc_inform("PREOPTIMIZATION: %zu selector references not pre-optimized", _read_images::UnfixedSelectors);
    if (_read_images::PreoptTotalMethodLists)
    {
      _objc_inform("PREOPTIMIZATION: %u/%u (%.3g%%) method lists pre-sorted", _read_images::PreoptOptimizedMethodLists, _read_images::PreoptTotalMethodLists, _read_images::PreoptOptimizedMethodLists * 100.0 / _read_images::PreoptTotalMethodLists);
    }

    else
    {
      _objc_inform("PREOPTIMIZATION: %u/%u (%.3g%%) method lists pre-sorted", _read_images::PreoptOptimizedMethodLists, 0, 0.0);
    }

    if (_read_images::PreoptTotalClasses)
    {
      _objc_inform("PREOPTIMIZATION: %u/%u (%.3g%%) classes pre-registered", _read_images::PreoptOptimizedClasses, _read_images::PreoptTotalClasses, _read_images::PreoptOptimizedClasses * 100.0 / _read_images::PreoptTotalClasses);
    }

    else
    {
      _objc_inform("PREOPTIMIZATION: %u/%u (%.3g%%) classes pre-registered", _read_images::PreoptOptimizedClasses, 0, 0.0);
    }

    _objc_inform("PREOPTIMIZATION: %zu protocol references not pre-optimized", UnfixedProtocolReferences);
  }

LABEL_411:
  map_images_nolock::firstTime = 1;
  if (loadImageCallbacks[0] >= 5uLL)
  {
    v214 = qword_1ED3F60E8;
  }

  else
  {
    v214 = &qword_1ED3F60E8;
  }

  if (loadImageCallbacks[0])
  {
    v215 = &v214[2 * loadImageCallbacks[0]];
    do
    {
      v216 = v232 == 0;
      loadImageCallback::operator=(size, v214, v9, v10);
      v218 = v236;
      v219 = v233;
      if (!v216)
      {
        do
        {
          if (LOBYTE(size[1]) == 2)
          {
            (size[0])(*v218, v218[2]);
          }

          else
          {
            if (LOBYTE(size[1]) != 1)
            {
              if (size[0])
              {
                v220 = size[0];
              }

              else
              {
                v220 = 0;
              }

              _objc_fatal("Corrupt load image callback, unknown kind %u, func %p", v217, v9, v10, LOBYTE(size[1]), v220);
            }

            (size[0])(*v218);
          }

          v218 += 4;
          --v219;
        }

        while (v219);
      }

      v214 += 2;
    }

    while (v214 != v215);
  }
}

void sub_1800A6610(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(selLock);
  }

  _Unwind_Resume(exception_object);
}

void map_images(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = 0;
  v13 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v6, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    os_unfair_lock_lock_with_options();
  }

  map_images_nolock(a1, a2, &v13, a3);
  v11 = *(StatusReg + 24);
  v12 = v11;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v12, 0, memory_order_release, memory_order_relaxed);
  if (v12 != v11)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  if (v13 == 1)
  {
    if (DebugClassRXSigning == 2)
    {
      _objc_fatal("class_rx signing mismatch", v8, v9, v10);
    }

    if (!DisableClassROFaults)
    {

      _objc_fault("class_ro_t enforcement disabled");
    }
  }
}

void sub_1800A678C(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getPreoptimizedHeaderRW(uint64_t a1)
{
  if ((*(*(a1 + 8) + a1 + 8 + 4) & 8) == 0)
  {
    return 0;
  }

  if (!headerInfoROs || objc_debug_headerInfoRWs == 0)
  {
    return 0;
  }

  else
  {
    return objc_debug_headerInfoRWs + 8 * ((a1 - headerInfoROs - 8) / *(headerInfoROs + 4)) + 8;
  }
}

unint64_t class_data_bits_t::safe_ro<(Authentication)0>(void *a1)
{
  if ((*a1 & 0x8000000000000000) != 0)
  {
    return class_rw_t::ro((*a1 & 0xF00007FFFFFFFF8));
  }

  else
  {
    return *a1 & 0xF00007FFFFFFFF8;
  }
}

unint64_t _class_lookUpIvar(unint64_t result, char *a2, uint64_t *a3, int *a4)
{
  v7 = result;
  if (a2)
  {
    v8 = **a2;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
  if (!result)
  {
    goto LABEL_44;
  }

  for (i = result; ; i = *(i + 8))
  {
    result = class_rw_t::ro((*(i + 32) & 0xF00007FFFFFFFF8));
    if ((*result & 0x280) != 0)
    {
      break;
    }

    if (!*(i + 8))
    {
      goto LABEL_44;
    }
  }

  v10 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v10, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    os_unfair_lock_lock_with_options();
  }

  while (1)
  {
    v12 = class_rw_t::ro((*(v7 + 32) & 0xF00007FFFFFFFF8));
    v16 = *(v12 + 48);
    v17 = (v16 + 2);
    if (v16 && v17 <= a2)
    {
      v20 = *v16;
      v19 = v16[1];
      v21 = v19 * v20;
      if ((v21 & 0xFFFFFFFF00000000) != 0)
      {
        _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v13, v14, v15, v19, *(v12 + 48), v20);
      }

      if (v17 + v21 > a2)
      {
        break;
      }
    }

    if (!*(v7 + 8))
    {
      v7 = 0;
      break;
    }

    v7 = *(v7 + 8);
  }

  v22 = *(StatusReg + 24);
  v23 = v22;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v23, 0, memory_order_release, memory_order_relaxed);
  if (v23 != v22)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  result = class_rw_t::ro((*(v7 + 32) & 0xF00007FFFFFFFF8));
  if ((*result & 0x280) == 0)
  {
    goto LABEL_44;
  }

  v24 = *a3;
  v25 = v24 - ((*(class_rw_t::ro((*(v7 + 32) & 0xF00007FFFFFFFF8)) + 4) + 7) & 0xFFFFFFF8);
  result = class_data_bits_t::safe_ro<(Authentication)0>((v7 + 32));
  if (*result)
  {
    goto LABEL_34;
  }

  v26 = *(result + 16);
  if (!v26)
  {
    goto LABEL_34;
  }

  v27 = 0;
  v28 = v25 >> 3;
  while (1)
  {
    v30 = *v26++;
    v29 = v30;
    v31 = v27 + (v30 >> 4);
    if (!v30 || v31 > v28)
    {
      break;
    }

    v27 = v31 + (v29 & 0xF);
    v33 = 1;
    if (v27 > v28)
    {
      goto LABEL_45;
    }
  }

  if (v7)
  {
LABEL_34:
    result = class_data_bits_t::safe_ro<(Authentication)0>((v7 + 32));
    v34 = *(result + 56);
    if (v34)
    {
      v35 = 0;
      v36 = v25 >> 3;
      do
      {
        v38 = *v34++;
        v37 = v38;
        v39 = v35 + (v38 >> 4);
        if (!v38 || v39 > v36)
        {
          break;
        }

        v35 = v39 + (v37 & 0xF);
        v33 = 2;
      }

      while (v35 <= v36);
    }
  }

  result = class_rw_t::ro((*(v7 + 32) & 0xF00007FFFFFFFF8));
  if ((*result & 0x80) != 0)
  {
    v33 = 3;
  }

  else
  {
LABEL_44:
    v33 = 0;
  }

LABEL_45:
  *a4 = v33;
  return result;
}

void sub_1800A6BF4(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

id object_getIvar(id a1, Ivar a2)
{
  result = 0;
  if (a1 >= 1 && a2)
  {
    v5 = 0;
    v4 = 0;
    _class_lookUpIvar(*a1 & 0xFFFFFFFF8, a2, &v5, &v4);
    if (v4 == 2)
    {
      return objc_loadWeak((a1 + v5));
    }

    else
    {
      return *(a1 + v5);
    }
  }

  return result;
}

ptrdiff_t ivar_getOffset(ptrdiff_t v)
{
  if (v)
  {
    return **v;
  }

  return v;
}

uint64_t _thisThreadIsInitializingClass(void *a1)
{
  result = _fetchInitializingClassList(0);
  if (result)
  {
    if ((*a1 - 1) < 0xF || (*(a1[4] & 0xF00007FFFFFFFF8) & 1) == 0)
    {
      a1 = (*a1 & 0xFFFFFFFF8);
    }

    v3 = *result;
    if (v3 < 1)
    {
      return 0;
    }

    else
    {
      v4 = *(result + 8);
      v5 = v3 - 1;
      do
      {
        v6 = *v4++;
        result = a1 == v6;
      }

      while (a1 != v6 && v5-- != 0);
    }
  }

  return result;
}

void *_fetchInitializingClassList(int a1)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v3 = *(StatusReg + 320);
  if (a1 && !v3)
  {
    v3 = malloc_type_malloc(0x48uLL, 0x201A97EDuLL);
    *v3 = 0u;
    v3[1] = 0u;
    v3[2] = 0u;
    v3[3] = 0u;
    *(v3 + 8) = 0;
    *(StatusReg + 320) = v3;
    goto LABEL_4;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *v3;
  if (!*v3)
  {
LABEL_4:
    if (a1)
    {
      v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x10800407411B482uLL);
      *v3 = v4;
      goto LABEL_8;
    }

    return 0;
  }

LABEL_8:
  if (!v4[1])
  {
    *v4 = 4;
    v4[1] = malloc_type_calloc(4uLL, 8uLL, 0x80040B8603338uLL);
  }

  return v4;
}

objc_class *realizeClassMaybeSwiftMaybeRelock(objc_class *a1, int a2)
{
  if ((*(a1 + 4) & 2) == 0 && (*(a1 + 4) & 1) == 0)
  {
    v4 = realizeClassWithoutSwift(a1, 0);
    if ((a2 & 1) == 0)
    {
      v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v6 = v5;
      atomic_compare_exchange_strong_explicit(runtimeLock, &v6, 0, memory_order_release, memory_order_relaxed);
      if (v6 != v5)
      {
        os_unfair_lock_unlock(runtimeLock);
      }
    }

    return v4;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = *(StatusReg + 24);
  v9 = v8;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != v8)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  v10 = class_data_bits_t::safe_ro<(Authentication)0>(a1 + 4);
  if ((*v10 & 0x40) != 0 && (v11 = *(v10 + 72)) != 0)
  {
    if (PrintConnecting)
    {
      v18 = objc_class::nameForLogging(a1);
      _objc_inform("CLASS: calling Swift metadata initializer for class '%s' (%p)", v18, a1);
    }

    v4 = v11(a1, 0);
    if (v4 == a1)
    {
      goto LABEL_21;
    }

    v12 = 0;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v12, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v12)
    {
      os_unfair_lock_lock_with_options();
    }

    addRemappedClass(a1, v4);
  }

  else
  {
    v13 = 0;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v13, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v13)
    {
      os_unfair_lock_lock_with_options();
    }

    v4 = realizeClassWithoutSwift(a1, 0);
  }

  v14 = *(StatusReg + 24);
  v15 = v14;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v15, 0, memory_order_release, memory_order_relaxed);
  if (v15 != v14)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

LABEL_21:
  if (a2)
  {
    v16 = 0;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v16, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v16)
    {
      os_unfair_lock_lock_with_options();
    }
  }

  return v4;
}

void sub_1800A7024(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void objc_object::sidetable_unlock(objc_object *this)
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v3 = v2;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != v2)
  {
    os_unfair_lock_unlock(v1);
  }
}

atomic_uint *objc_object::sidetable_lock(objc_object *this)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit(result, &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    return os_unfair_lock_lock_with_options();
  }

  return result;
}

objc_object *_objc_rootRetainCount(objc_object *this)
{
  if ((this & 0x8000000000000000) != 0)
  {
    return this;
  }

  objc_object::sidetable_lock(this);
  isa = this->isa;
  if (this->isa)
  {
    v2 = isa >> 56;
    if ((isa & 0x80000000000000) != 0)
    {
      v2 += objc_object::sidetable_getExtraRC_nolock(this);
    }

    v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v8 = v7;
    if (v8 != v7)
    {
    }

    return v2;
  }

  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v6 = v5;
  if (v6 != v5)
  {
  }

  return objc_object::sidetable_retainCount(this);
}

id objc_initWeakOrNil(id *location, id val)
{
  v2 = val;
  if (!val)
  {
    *location = 0;
    return v2;
  }

  v4 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v7 = &objc_debug_taggedpointer_classes[val & 7];
  v8 = &objc_debug_taggedpointer_ext_classes[(val >> 55)];
  while (1)
  {
    v9 = 0;
    atomic_compare_exchange_strong_explicit(v5, &v9, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v9)
    {
      os_unfair_lock_lock_with_options();
    }

    if ((v2 & 0x8000000000000000) == 0)
    {
      v10 = *v2 & 0x7FFFFFFFFFFFF8;
      if (!v10)
      {
        goto LABEL_11;
      }

LABEL_7:
      v11 = v10;
      goto LABEL_12;
    }

    if (!*v7)
    {
      goto LABEL_11;
    }

    v11 = *v7;
    if (*v7 == __NSUnrecognizedTaggedPointer)
    {
      v10 = *v8;
      if (!*v8)
      {
LABEL_11:
        v11 = 0;
        goto LABEL_12;
      }

      goto LABEL_7;
    }

LABEL_12:
    if (v11 == v4)
    {
      break;
    }

    v12 = *(*(v11 + 4) & 0xF00007FFFFFFFF8);
    if ((v12 & 1) == 0)
    {
      v12 = *(*((*v11 & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
    }

    if ((v12 & 0x20000000) != 0)
    {
      break;
    }

    v13 = *(StatusReg + 24);
    v14 = v13;
    atomic_compare_exchange_strong_explicit(v5, &v14, 0, memory_order_release, memory_order_relaxed);
    if (v14 != v13)
    {
    }

    class_initialize(v11, v2);
    v4 = v11;
  }

  v15 = weak_register_no_lock(v5 + 4, v2, location, 0);
  v2 = v15;
  if (v15 >= 1)
  {
    v16 = *v15;
    if (*v15)
    {
      while ((v16 & 4) == 0)
      {
        v17 = v16;
        atomic_compare_exchange_strong_explicit(v15, &v17, v16 | 4, memory_order_relaxed, memory_order_relaxed);
        if (v17 == v16)
        {
          break;
        }

        v16 = v17;
        if ((v17 & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_24:
      objc_object::sidetable_setWeaklyReferenced_nolock(v15);
    }
  }

  *location = v2;
  v18 = *(StatusReg + 24);
  v19 = v18;
  atomic_compare_exchange_strong_explicit(v5, &v19, 0, memory_order_release, memory_order_relaxed);
  if (v19 != v18)
  {
    os_unfair_lock_unlock(v5);
  }

  callSetWeaklyReferenced(v2);
  return v2;
}

char *copySwiftV1MangledName(const char *a1, int a2)
{
  v4 = 0;
  if (!a1)
  {
    return v4;
  }

  v5 = 0;
  v6 = 0;
  while (1)
  {
    v7 = &a1[v4];
    if (a1[v4] != 46)
    {
      break;
    }

    ++v6;
    v5 = v4;
LABEL_7:
    ++v4;
  }

  if (a1[v4])
  {
    goto LABEL_7;
  }

  v4 = 0;
  if (v6 == 1 && v5 && v5 < v7 - a1 - 1)
  {
    v11[1] = v2;
    v11[2] = v3;
    v11[0] = 0;
    if (v5 == 5 && (*a1 == 1718187859 ? (v8 = a1[4] == 116) : (v8 = 0), v8))
    {
      asprintf(v11, "_Tt%cs%zu%.*s%s");
    }

    else
    {
      v9 = 80;
      if (!a2)
      {
        v9 = 67;
      }

      asprintf(v11, "_Tt%c%zu%.*s%zu%.*s%s", v9, v5);
    }

    return v11[0];
  }

  return v4;
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  Method = protocol_getMethod(p, aSel, isRequiredMethod, isInstanceMethod, v4, v5);
  if (Method)
  {
    if ((Method & 3u) > 1)
    {
      if ((Method & 3) == 2)
      {
        if (*(Method & 0xFFFFFFFFFFFFFFFCLL))
        {
          v6 = *(Method & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else if ((Method & 3) != 0)
    {
      v9 = (Method & 0xFFFFFFFFFFFFFFFCLL);
      if (dataSegmentsRanges > (Method & 0xFFFFFFFFFFFFFFFCLL) || *algn_1ED3F62F8 <= v9)
      {
        v6 = *(v9 + *v9);
      }

      else
      {
        v6 = &byte_1FA920D78[*v9];
      }
    }

    else
    {
      v6 = *(Method & 0xFFFFFFFFFFFFFFFCLL);
    }

    v8 = method_t::types(Method);
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v10 = v6;
  result.types = v8;
  result.name = v10;
  return result;
}

uint64_t protocol_getMethod(protocol_t *a1, objc_selector *a2, const char *a3, char *a4, uint64_t a5, objc_selector ***a6)
{
  if (!a1)
  {
    return 0;
  }

  v10 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  atomic_compare_exchange_strong_explicit(runtimeLock, &v10, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    os_unfair_lock_lock_with_options();
  }

  if (fixed_up_protocol)
  {
    v12 = -1073741824;
  }

  else
  {
    v12 = 0x40000000;
  }

  if ((*(a1 + 17) & 0xC0000000) != v12)
  {
    fixupProtocol(a1, 0xFFFFFFFFLL, 0, 0, a5, a6);
  }

  Method_nolock = protocol_getMethod_nolock(a1, a2, a3, a4, a5);
  if (Method_nolock)
  {
    v14 = Method_nolock;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(StatusReg + 24);
  v16 = v15;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v16, 0, memory_order_release, memory_order_relaxed);
  if (v16 != v15)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  return v14;
}

void sub_1800A775C(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

uint64_t protocol_getMethod_nolock(protocol_t *a1, objc_selector *a2, const char *a3, char *a4, BOOL a5)
{
  result = 0;
  if (a1 && a2)
  {
    v8 = a4;
    v9 = a3;
    v10 = 32;
    if (a4)
    {
      v10 = 24;
    }

    v11 = 48;
    if (a4)
    {
      v11 = 40;
    }

    if (!a3)
    {
      v10 = v11;
    }

    v12 = *(a1 + v10);
    if (!v12 || (result = search_method_list(v12, a2, a3, a4)) == 0)
    {
      v13 = *(a1 + 2);
      if (v13 && *v13)
      {
        v14 = 0;
        v15 = 1;
        while (1)
        {
          v16 = v13[v14 + 1];
          v17 = canonical_protocol ? 0 : 0x20000000;
          if ((v17 & *(v16 + 68)) == 0)
          {
            Protocol = getProtocol(*(v16 + 8));
            if (Protocol)
            {
              v16 = Protocol;
            }
          }

          result = protocol_getMethod_nolock(v16, a2, v9, v8, a5);
          if (result)
          {
            break;
          }

          v14 = v15;
          v13 = *(a1 + 2);
          if (*v13 <= v15++)
          {
            return 0;
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t search_method_list(unint64_t a1, char *a2, const char *a3, char *a4)
{
  v5 = *a1;
  if (*a1 > -1 || (a1 & 0x8000000000000000) != 0)
  {
    v7 = 24;
  }

  else
  {
    v7 = 12;
  }

  v8 = v5 & 0xFFFC;
  if ((~*a1 & 3) == 0 && v8 == v7)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v18 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL | 2;
      v19 = *(a1 + 4);
      if (v19 >= 5)
      {
        v12 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL | 2;
        do
        {
          result = v12 + v7 * (v19 >> 1);
          v20 = *(result & 0xFFFFFFFFFFFFFFFCLL);
          if (v20 == a2)
          {
            if (result > v18)
            {
              v37 = v12 + v7 * ((v19 >> 1) - 1);
              do
              {
                if (*(v37 & 0xFFFFFFFFFFFFFFFCLL) != a2)
                {
                  break;
                }

                result -= v7;
                v37 -= v7;
              }

              while (result > v18);
            }

            return result;
          }

          if (v20 < a2)
          {
            v12 = result + v7;
          }

          v21 = v19 - (v20 < a2);
          v19 = v21 >> 1;
        }

        while (v21 > 9);
        if (v19)
        {
          goto LABEL_31;
        }

        return 0;
      }

      v12 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL | 2;
      if (v19)
      {
LABEL_31:
        v22 = v19 - 1;
        v23 = v12;
        while (1)
        {
          v24 = v22;
          v25 = *(v23 & 0xFFFFFFFFFFFFFFFCLL);
          if (v25 == a2)
          {
            break;
          }

          result = 0;
          if (v25 <= a2)
          {
            v12 += v7;
            --v22;
            v23 += v7;
            if (v24)
            {
              continue;
            }
          }

          return result;
        }

        return v12;
      }
    }

    else
    {
      if (v5 < 0)
      {
        if (dataSegmentsRanges > a1 || *algn_1ED3F62F8 <= a1)
        {
          v38 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
          v39 = *(a1 + 4);
          if (v39 >= 5)
          {
            v12 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
            while (1)
            {
              result = v12 + v7 * (v39 >> 1);
              v40 = *((result & 0xFFFFFFFFFFFFFFFCLL) + *(result & 0xFFFFFFFFFFFFFFFCLL));
              v41 = v40 >= a2;
              if (v40 == a2)
              {
                break;
              }

              v42 = v40 < a2;
              if (!v41)
              {
                v12 = result + v7;
              }

              v43 = v39 - v42;
              v39 = v43 >> 1;
              if (v43 <= 9)
              {
                goto LABEL_74;
              }
            }

            if (result > v38)
            {
              v49 = v12 + v7 * ((v39 >> 1) - 1);
              do
              {
                if (*((v49 & 0xFFFFFFFFFFFFFFFCLL) + *(v49 & 0xFFFFFFFFFFFFFFFCLL)) != a2)
                {
                  break;
                }

                result -= v7;
                v49 -= v7;
              }

              while (result > v38);
            }

            return result;
          }

          v12 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
LABEL_74:
          if (!v39)
          {
            return 0;
          }

          v45 = v39 - 1;
          v46 = v12;
          while (1)
          {
            v47 = *((v46 & 0xFFFFFFFFFFFFFFFCLL) + *(v46 & 0xFFFFFFFFFFFFFFFCLL));
            if (v47 == a2)
            {
              break;
            }

            result = 0;
            v12 += v7;
            v48 = v47 > a2 || v45-- == 0;
            v46 += v7;
            if (v48)
            {
              return result;
            }
          }
        }

        else
        {
          result = 0;
          if (dataSegmentsRanges > a2 || *algn_1ED3F62F8 <= a2)
          {
            return result;
          }

          v26 = a2 - byte_1FA920D78;
          v27 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
          v28 = *(a1 + 4);
          if (v28 >= 5)
          {
            v12 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
            while (1)
            {
              result = v12 + v7 * (v28 >> 1);
              v29 = *(result & 0xFFFFFFFFFFFFFFFCLL);
              v30 = v26 > v29;
              if (v26 == v29)
              {
                break;
              }

              v31 = v26 > v29;
              if (v30)
              {
                v12 = result + v7;
              }

              v32 = v28 - v31;
              v28 = v32 >> 1;
              if (v32 <= 9)
              {
                goto LABEL_89;
              }
            }

            if (result > v27)
            {
              v54 = v12 + v7 * ((v28 >> 1) - 1);
              do
              {
                if (v26 != *(v54 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  break;
                }

                result -= v7;
                v54 -= v7;
              }

              while (result > v27);
            }

            return result;
          }

          v12 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL | 1;
LABEL_89:
          if (!v28)
          {
            return 0;
          }

          v50 = v28 - 1;
          v51 = v12;
          while (1)
          {
            v52 = *(v51 & 0xFFFFFFFFFFFFFFFCLL);
            if (v26 == v52)
            {
              break;
            }

            result = 0;
            v12 += v7;
            v53 = v26 < v52 || v50-- == 0;
            v51 += v7;
            if (v53)
            {
              return result;
            }
          }
        }

        return v12;
      }

      v10 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      v11 = *(a1 + 4);
      if (v11 >= 5)
      {
        v12 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          result = v12 + 24 * (v11 >> 1);
          v14 = *(result & 0xFFFFFFFFFFFFFFFCLL);
          v15 = v14 >= a2;
          if (v14 == a2)
          {
            if (result > v10)
            {
              v44 = v12 + 24 * (v11 >> 1) - 24;
              do
              {
                if (*(v44 & 0xFFFFFFFFFFFFFFFCLL) != a2)
                {
                  break;
                }

                result -= 24;
                v44 -= 24;
              }

              while (result > v10);
            }

            return result;
          }

          v16 = v14 < a2;
          if (!v15)
          {
            v12 = result + 24;
          }

          v17 = v11 - v16;
          v11 = v17 >> 1;
        }

        while (v17 > 9);
        if (v11)
        {
          goto LABEL_48;
        }

        return 0;
      }

      v12 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      if (v11)
      {
LABEL_48:
        v33 = v11 - 1;
        v34 = v12;
        while (1)
        {
          v35 = *(v34 & 0xFFFFFFFFFFFFFFFCLL);
          if (v35 == a2)
          {
            break;
          }

          v12 += v7;
          v36 = v35 > a2 || v33-- == 0;
          v34 += v7;
          if (v36)
          {
            return 0;
          }
        }

        return v12;
      }
    }

    return 0;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    v55 = *(a1 + 4);
    v60 = v55 * (v5 & 0xFFFC);
    if ((v60 & 0xFFFFFFFF00000000) != 0)
    {
      goto LABEL_138;
    }

    v61 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
    v62 = (a1 + 8 + v60) & 0xFFFFFFFFFFFFFFFCLL;
    if (v61 != v62)
    {
      v63 = v62 | 2;
      v64 = v8;
      v65 = v61 | 2;
      v59 = v61 | 2;
      while (*(v65 & 0xFFFFFFFFFFFFFFFCLL) != a2)
      {
        result = 0;
        v59 += v64;
        v65 += v64;
        if (v59 == v63)
        {
          return result;
        }
      }

      return v59;
    }

    return 0;
  }

  if ((v5 & 0x80000000) == 0)
  {
    v55 = *(a1 + 4);
    v56 = v55 * (v5 & 0xFFFC);
    if ((v56 & 0xFFFFFFFF00000000) == 0)
    {
      v57 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      v58 = (a1 + 8 + v56) & 0xFFFFFFFFFFFFFFFCLL;
      if (v57 != v58)
      {
        v59 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
        while (*(v57 & 0xFFFFFFFFFFFFFFFCLL) != a2)
        {
          result = 0;
          v59 += v8;
          v57 += v8;
          if (v59 == v58)
          {
            return result;
          }
        }

        return v59;
      }

      return 0;
    }

LABEL_138:
    _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v55, a1, v8);
  }

  if (dataSegmentsRanges > a1 || *algn_1ED3F62F8 <= a1)
  {
    v55 = *(a1 + 4);
    v73 = v55 * (v5 & 0xFFFC);
    if ((v73 & 0xFFFFFFFF00000000) == 0)
    {
      v74 = (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      v75 = (a1 + 8 + v73) & 0xFFFFFFFFFFFFFFFCLL;
      if (v74 != v75)
      {
        v76 = v75 | 1;
        v77 = v8;
        v78 = v74 | 1;
        v59 = v74 | 1;
        while (*((v78 & 0xFFFFFFFFFFFFFFFCLL) + *(v78 & 0xFFFFFFFFFFFFFFFCLL)) != a2)
        {
          result = 0;
          v59 += v77;
          v78 += v77;
          if (v59 == v76)
          {
            return result;
          }
        }

        return v59;
      }

      return 0;
    }

    goto LABEL_138;
  }

  result = 0;
  if (dataSegmentsRanges <= a2 && *algn_1ED3F62F8 > a2)
  {
    v55 = *(a1 + 4);
    v66 = v55 * (v5 & 0xFFFC);
    if ((v66 & 0xFFFFFFFF00000000) != 0)
    {
      goto LABEL_138;
    }

    v67 = a1 + 8;
    v68 = v67 & 0xFFFFFFFFFFFFFFFCLL;
    v69 = (v67 + v66) & 0xFFFFFFFFFFFFFFFCLL;
    if (v68 != v69)
    {
      v70 = v69 | 1;
      v71 = v68 | 1;
      v72 = v71;
      while (&byte_1FA920D78[*(v71 & 0xFFFFFFFFFFFFFFFCLL)] != a2)
      {
        result = 0;
        v72 += v8;
        v71 += v8;
        if (v72 == v70)
        {
          return result;
        }
      }

      return v72;
    }

    return 0;
  }

  return result;
}

Protocol **__cdecl class_copyProtocolList(Class cls, unsigned int *outCount)
{
  if (cls)
  {
    v4 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v4, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      os_unfair_lock_lock_with_options();
    }

    realizeAndInitializeIfNeeded_locked(0, cls, 0);
    class_rw_t::protocols(&v49, *(cls + 4) & 0xF00007FFFFFFFF8);
    if ((*cls - 1) < 0xF || (*(cls + 4) & 0x8000000000000000) == 0 || (v12 = *((*(cls + 4) & 0xF00007FFFFFFFF8) + 4), qword_1ED3F6308 <= v12) || ((v13 = *(qword_1ED3F6300 + 16 * v12 + 8), *(qword_1ED3F6300 + 16 * v12) <= cls) ? (v14 = v13 > cls) : (v14 = 0), !v14))
    {
      if ((objc::allocatedClasses + 8 * qword_1ED3F6160) == objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::find(-cls) && (dataSegmentsContain(cls, v6, v7, v43) & 1) == 0)
      {
        _objc_fatal("Attempt to use unknown class %p.", v6, v7, v8, cls);
      }
    }

    if (!v49)
    {
      v13 = 0;
      v15 = 0;
      goto LABEL_18;
    }

    v15 = (v49 & 3);
    if ((v49 & 3) == 0)
    {
      v13 = v49;
      goto LABEL_18;
    }

    if (v49 >= 4)
    {
      if (v15 == 2)
      {
        v13 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
        if ((v49 & 0xFFFFFFFFFFFFFFFCLL) == 0)
        {
          v15 = 0;
          goto LABEL_18;
        }

        if (DisablePreattachedCategories)
        {
          v40 = *v13;
          v21 = v13[1];
          v44 = v21 * v40;
          if ((v44 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_90;
          }

          v9 = (v13 + v44 + 8);
          v45 = v21 == 0;
          if (v21)
          {
            v21 = v21;
          }

          else
          {
            v21 = 0;
          }

          if (!v45)
          {
            v9 = (v9 - v40);
          }

          v10 = *v13;
        }

        else
        {
          v9 = (v13 + 2);
          v10 = *v13;
          v21 = v13[1];
          v40 = v10;
        }

        v41 = v21 * v40;
        if ((v41 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_90;
        }

        for (i = v13 + v41 + 8; v9 < i; v9 = (v9 + v10))
        {
          if (*(objc_debug_headerInfoRWs + 8 + 8 * *v9))
          {
            break;
          }
        }
      }

      else if (v15 == 1)
      {
        v15 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
        if ((v49 & 0xFFFFFFFFFFFFFFFCLL) != 0)
        {
          v13 = v15 + 2;
LABEL_72:
          i = *v15;
          v15 += 2 * i + 2;
        }

LABEL_18:
        v17 = 0;
        if (!v49)
        {
          goto LABEL_35;
        }

        while (1)
        {
          v18 = v49 & 3;
          if (v18 <= 1)
          {
            break;
          }

          if (v18 == 2 && v9 == i)
          {
            goto LABEL_39;
          }

          v21 = v13[1];
          v22 = v21 * *v13;
          if ((v22 & 0xFFFFFFFF00000000) != 0)
          {
            v40 = *v13;
            goto LABEL_90;
          }

          v23 = *(v9 + (*v9 >> 16));
          v24 = v13 + v22 + 8;
          v25 = (v9 + v10);
          do
          {
            v9 = v25;
            if (v25 >= v24)
            {
              break;
            }

            v6 = *(objc_debug_headerInfoRWs + 8 + 8 * *v25);
            v25 = (v25 + v10);
          }

          while ((v6 & 1) == 0);
LABEL_37:
          while (1)
          {
            v17 += v23;
            if (v49)
            {
              break;
            }

LABEL_35:
            if (v13 == v15)
            {
              goto LABEL_39;
            }

            v23 = *v13;
            v13 = 0;
          }
        }

        if ((v49 & 3) != 0)
        {
          if (v13 != v15)
          {
            v19 = v13;
            v13 = *v13;
            goto LABEL_34;
          }
        }

        else if (v13 != v15)
        {
          v19 = 0;
LABEL_34:
          v23 = *v13;
          v13 = &v19[2 * (v18 == 1)];
          goto LABEL_37;
        }

LABEL_39:
        if (v17)
        {
          v16 = malloc_type_malloc(8 * (v17 + 1), 0x80040B8603338uLL);
          list_array_tt<unsigned long,protocol_list_t,RawPtr>::begin(v47, &v49, v26, v27);
          list_array_tt<unsigned long,protocol_list_t,RawPtr>::end(v46, &v49, v28, v29);
          v30 = 0;
          while (!list_array_tt<unsigned long,protocol_list_t,RawPtr>::iteratorImpl<false>::operator==(v47, v46))
          {
            v34 = *v48;
            if (canonical_protocol)
            {
              v35 = 0;
            }

            else
            {
              v35 = 0x20000000;
            }

            if ((v35 & *(*v48 + 68)) == 0)
            {
              Protocol = getProtocol(*(v34 + 8));
              if (Protocol)
              {
                v34 = Protocol;
              }
            }

            v16[v30] = v34;
            list_array_tt<unsigned long,protocol_list_t,RawPtr>::iteratorImpl<false>::operator++(v47, v31, v32, v33);
            ++v30;
          }

          v16[v30] = 0;
          if (outCount)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v16 = 0;
          v30 = 0;
          if (outCount)
          {
LABEL_50:
            *outCount = v30;
          }
        }

        v37 = *(StatusReg + 24);
        v38 = v37;
        atomic_compare_exchange_strong_explicit(runtimeLock, &v38, 0, memory_order_release, memory_order_relaxed);
        if (v38 != v37)
        {
          os_unfair_lock_unlock(runtimeLock);
        }

        return v16;
      }
    }

    else
    {
      v13 = 0;
    }

    if (v15 == 2)
    {
      v15 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
      if ((v49 & 0xFFFFFFFFFFFFFFFCLL) != 0)
      {
        v40 = *v15;
        v21 = v15[1];
        v42 = v21 * v40;
        if ((v42 & 0xFFFFFFFF00000000) != 0)
        {
          v13 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
LABEL_90:
          _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v6, v7, v8, v21, v13, v40);
        }

        i = v15 + v42 + 8;
      }
    }

    else
    {
      if (v15 == 1)
      {
        v15 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
        if ((v49 & 0xFFFFFFFFFFFFFFFCLL) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_72;
      }

      v15 = 0;
    }

    goto LABEL_18;
  }

  v16 = 0;
  if (outCount)
  {
    *outCount = 0;
  }

  return v16;
}

void sub_1800A8404(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

unint64_t _method_getImplementationAndName(unint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return method_t::imp(v1, 1);
}

size_t class_getInstanceSize(size_t cls)
{
  if (cls)
  {
    v1 = cls;
    objc_class::realizeIfNeeded(cls);
    return (*(class_rw_t::ro((*(v1 + 32) & 0xF00007FFFFFFFF8)) + 8) + 7) & 0xFFFFFFF8;
  }

  return cls;
}

char *objc_class::nameForLogging(objc_class *this)
{
  if ((*this - 1) < 0xF)
  {
    v11 = 0;
    asprintf(&v11, "<stub class %p>");
LABEL_16:
    v6 = v11;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = *(StatusReg + 320);
    if (!v8)
    {
      v8 = malloc_type_malloc(0x48uLL, 0x201A97EDuLL);
      *v8 = 0u;
      v8[1] = 0u;
      v8[2] = 0u;
      v8[3] = 0u;
      *(v8 + 8) = 0;
      *(StatusReg + 320) = v8;
    }

    v9 = *(v8 + 3);
    if (v9)
    {
      free(v9);
    }

    v10 = v8[2];
    *(v8 + 5) = *(v8 + 6);
    *(v8 + 24) = v10;
    *(v8 + 6) = v6;
    return v11;
  }

  if ((*(this + 4) & 0x8000000000000000) == 0 && (*((*(this + 4) & 0xF00007FFFFFFFF8) + 3) & 0x40) == 0)
  {
    goto LABEL_11;
  }

  if ((*(this + 4) & 2) == 0 && (*(this + 4) & 1) == 0)
  {
    return atomic_load_explicit((class_rw_t::ro((*(this + 4) & 0xF00007FFFFFFFF8)) + 24), memory_order_acquire);
  }

  v3 = *((*(this + 4) & 0xF00007FFFFFFFF8) + 8);
  if ((v3 & 1) == 0 || (v3 & 0xFFFFFFFFFFFFFFFELL) == 0 || (result = *((v3 & 0xFFFFFFFFFFFFFFFELL) + 32)) == 0)
  {
LABEL_11:
    v11 = 0;
    explicit = atomic_load_explicit((class_data_bits_t::safe_ro<(Authentication)0>(this + 4) + 24), memory_order_acquire);
    if (explicit)
    {
      v5 = copySwiftV1DemangledName(explicit, 0);
      if (!v5)
      {
        v5 = strdup(explicit);
      }

      v11 = v5;
    }

    else
    {
      asprintf(&v11, "<lazily named class %p>");
    }

    goto LABEL_16;
  }

  return result;
}

const char *__cdecl method_getTypeEncoding(const char *m)
{
  if (m)
  {
    return method_t::types(m);
  }

  return m;
}

unint64_t getMethodFromRelativeList(unsigned int *a1, char *a2, const char *a3, char *a4)
{
  if (dataSegmentsRanges > a2 || *algn_1ED3F62F8 <= a2)
  {
    return 0;
  }

  if (DisablePreattachedCategories)
  {
    v6 = *a1;
    v89 = a1[1];
    v90 = v89 * v6;
    if ((v90 & 0xFFFFFFFF00000000) != 0)
    {
      _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v89, a1, v6);
    }

    v91 = a1 + v90 + 8;
    v7 = v89 ? v89 : 0;
    v5 = (v89 ? &v91[-v6] : v91);
  }

  else
  {
    v5 = (a1 + 2);
    v6 = *a1;
    v7 = a1[1];
  }

  v8 = v7 * v6;
  if ((v8 & 0xFFFFFFFF00000000) != 0)
  {
    _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, a3, a4, v7, a1, v6);
  }

  v9 = (a1 + v8 + 8);
  v10 = objc_debug_headerInfoRWs + 8;
  while (v5 < v9 && (*(v10 + 8 * *v5) & 1) == 0)
  {
    v5 = (v5 + v6);
  }

  if (v5 == v9)
  {
    return 0;
  }

  v11 = a2 - byte_1FA920D78;
LABEL_15:
  v12 = v5 + (*v5 >> 16);
  v13 = *v12;
  if ((v12 & 0x8000000000000000) == 0 && v13 <= -1)
  {
    v15 = 12;
  }

  else
  {
    v15 = 24;
  }

  v16 = v13 & 0xFFFC;
  if ((~*v12 & 3) != 0 || v16 != v15)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      v65 = *(v12 + 4);
      v70 = v65 * v16;
      if ((v70 & 0xFFFFFFFF00000000) == 0)
      {
        v71 = v12 + 8;
        v72 = v71 & 0xFFFFFFFFFFFFFFFCLL;
        v73 = (v71 + v70) & 0xFFFFFFFFFFFFFFFCLL;
        if ((v71 & 0xFFFFFFFFFFFFFFFCLL) != v73)
        {
          v74 = v73 | 2;
          v75 = v72 | 2;
          v20 = v72 | 2;
          while (*(v75 & 0xFFFFFFFFFFFFFFFCLL) != a2)
          {
            v20 += v16;
            v75 += v16;
            if (v20 == v74)
            {
              goto LABEL_116;
            }
          }

          goto LABEL_115;
        }

        goto LABEL_116;
      }
    }

    else if (v13 < 0)
    {
      v65 = *(v12 + 4);
      v76 = v65 * v16;
      if (dataSegmentsRanges <= v12 && *algn_1ED3F62F8 > v12)
      {
        if ((v76 & 0xFFFFFFFF00000000) == 0)
        {
          v83 = v12 + 8;
          v84 = (v12 + 8) & 0xFFFFFFFFFFFFFFFCLL;
          v85 = (v83 + v76) & 0xFFFFFFFFFFFFFFFCLL;
          if (v84 != v85)
          {
            v86 = v85 | 1;
            v87 = v84 | 1;
            v20 = v87;
            while (&byte_1FA920D78[*(v87 & 0xFFFFFFFFFFFFFFFCLL)] != a2)
            {
              v20 += v16;
              v87 += v16;
              if (v20 == v86)
              {
                goto LABEL_116;
              }
            }

            goto LABEL_115;
          }

          goto LABEL_116;
        }
      }

      else if ((v76 & 0xFFFFFFFF00000000) == 0)
      {
        v78 = v12 + 8;
        v79 = (v12 + 8) & 0xFFFFFFFFFFFFFFFCLL;
        v80 = (v78 + v76) & 0xFFFFFFFFFFFFFFFCLL;
        if (v79 != v80)
        {
          v81 = v80 | 1;
          v82 = v79 | 1;
          v20 = v82;
          while (*((v82 & 0xFFFFFFFFFFFFFFFCLL) + *(v82 & 0xFFFFFFFFFFFFFFFCLL)) != a2)
          {
            v20 += v16;
            v82 += v16;
            if (v20 == v81)
            {
              goto LABEL_116;
            }
          }

          goto LABEL_115;
        }

        goto LABEL_116;
      }
    }

    else
    {
      v65 = *(v12 + 4);
      v66 = v65 * v16;
      if ((v66 & 0xFFFFFFFF00000000) == 0)
      {
        v67 = v12 + 8;
        v68 = v67 & 0xFFFFFFFFFFFFFFFCLL;
        v69 = (v67 + v66) & 0xFFFFFFFFFFFFFFFCLL;
        if (v68 != v69)
        {
          v20 = v68;
          while (*(v68 & 0xFFFFFFFFFFFFFFFCLL) != a2)
          {
            v20 += v16;
            v68 += v16;
            if (v20 == v69)
            {
              goto LABEL_116;
            }
          }

          goto LABEL_115;
        }

        goto LABEL_116;
      }
    }

    _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", a2, 3, 0xC, v65, v5 + (*v5 >> 16), v16);
  }

  v18 = (v12 + 8) & 0xFFFFFFFFFFFFFFFCLL;
  if ((v12 & 0x8000000000000000) != 0)
  {
    v27 = v18 | 2;
    v28 = *(v12 + 4);
    if (v28 < 5)
    {
      v20 = v18 | 2;
      if (!v28)
      {
        goto LABEL_116;
      }

      goto LABEL_66;
    }

    v20 = v18 | 2;
    while (1)
    {
      result = v20 + v15 * (v28 >> 1);
      v29 = *(result & 0xFFFFFFFFFFFFFFFCLL);
      v30 = v29 >= a2;
      if (v29 == a2)
      {
        break;
      }

      v31 = v29 < a2;
      if (!v30)
      {
        v20 = result + v15;
      }

      v32 = v28 - v31;
      v28 = v32 >> 1;
      if (v32 <= 9)
      {
        if (!v28)
        {
          goto LABEL_116;
        }

LABEL_66:
        v45 = v28 - 1;
        v46 = v20;
        do
        {
          v47 = v45;
          v48 = *(v46 & 0xFFFFFFFFFFFFFFFCLL);
          if (v48 == a2)
          {
            goto LABEL_115;
          }

          if (v48 > a2)
          {
            break;
          }

          v20 += v15;
          v45 = v47 - 1;
          v46 += v15;
        }

        while (v47);
        goto LABEL_116;
      }
    }

    if (result > v27)
    {
      v54 = v20 + v15 * ((v28 >> 1) - 1);
      while (*(v54 & 0xFFFFFFFFFFFFFFFCLL) == a2)
      {
        result -= v15;
        v54 -= v15;
        if (result <= v27)
        {
          return result;
        }
      }
    }

    goto LABEL_114;
  }

  if (v13 < 0)
  {
    v33 = v18 | 1;
    v34 = *(v12 + 4);
    if (dataSegmentsRanges <= v12 && *algn_1ED3F62F8 > v12)
    {
      if (v34 < 5)
      {
        v20 = v33;
        if (!v34)
        {
          goto LABEL_116;
        }

LABEL_96:
        v59 = v34 - 1;
        v60 = v20;
        while (1)
        {
          v61 = *(v60 & 0xFFFFFFFFFFFFFFFCLL);
          if (v11 == v61)
          {
            goto LABEL_115;
          }

          v20 += v15;
          v62 = v11 < v61 || v59-- == 0;
          v60 += v15;
          if (v62)
          {
            goto LABEL_116;
          }
        }
      }

      v20 = v33;
      while (1)
      {
        result = v20 + v15 * (v34 >> 1);
        v49 = *(result & 0xFFFFFFFFFFFFFFFCLL);
        v50 = v11 > v49;
        if (v11 == v49)
        {
          break;
        }

        v51 = v11 > v49;
        v52 = result + v15;
        if (v50)
        {
          v20 = v52;
        }

        v53 = v34 - v51;
        v34 = (v34 - v51) >> 1;
        if (v53 <= 9)
        {
          if (!v34)
          {
            goto LABEL_116;
          }

          goto LABEL_96;
        }
      }

      if (result > v33)
      {
        v64 = v20 + v15 * ((v34 >> 1) - 1);
        while (v11 == *(v64 & 0xFFFFFFFFFFFFFFFCLL))
        {
          result -= v15;
          v64 -= v15;
          if (result <= v33)
          {
            return result;
          }
        }
      }
    }

    else
    {
      if (v34 < 5)
      {
        v20 = v33;
        if (!v34)
        {
          goto LABEL_116;
        }

LABEL_87:
        v55 = v34 - 1;
        v56 = v20;
        while (1)
        {
          v57 = *((v56 & 0xFFFFFFFFFFFFFFFCLL) + *(v56 & 0xFFFFFFFFFFFFFFFCLL));
          if (v57 == a2)
          {
            goto LABEL_115;
          }

          v20 += v15;
          v58 = v57 > a2 || v55-- == 0;
          v56 += v15;
          if (v58)
          {
            goto LABEL_116;
          }
        }
      }

      v20 = v33;
      while (1)
      {
        result = v20 + v15 * (v34 >> 1);
        v36 = *((result & 0xFFFFFFFFFFFFFFFCLL) + *(result & 0xFFFFFFFFFFFFFFFCLL));
        v37 = v36 >= a2;
        if (v36 == a2)
        {
          break;
        }

        v38 = v36 < a2;
        v39 = result + v15;
        if (!v37)
        {
          v20 = v39;
        }

        v40 = v34 - v38;
        v34 = (v34 - v38) >> 1;
        if (v40 <= 9)
        {
          if (!v34)
          {
            goto LABEL_116;
          }

          goto LABEL_87;
        }
      }

      if (result > v33)
      {
        v63 = v20 + v15 * ((v34 >> 1) - 1);
        while (*((v63 & 0xFFFFFFFFFFFFFFFCLL) + *(v63 & 0xFFFFFFFFFFFFFFFCLL)) == a2)
        {
          result -= v15;
          v63 -= v15;
          if (result <= v33)
          {
            return result;
          }
        }
      }
    }

    goto LABEL_114;
  }

  v19 = *(v12 + 4);
  if (v19 < 5)
  {
    v20 = (v12 + 8) & 0xFFFFFFFFFFFFFFFCLL;
    if (v19)
    {
      goto LABEL_57;
    }

    goto LABEL_116;
  }

  v20 = (v12 + 8) & 0xFFFFFFFFFFFFFFFCLL;
  while (1)
  {
    result = v20 + 24 * (v19 >> 1);
    v22 = *(result & 0xFFFFFFFFFFFFFFFCLL);
    v23 = v22 >= a2;
    if (v22 == a2)
    {
      break;
    }

    v24 = v22 < a2;
    v25 = result + 24;
    if (!v23)
    {
      v20 = v25;
    }

    v26 = v19 - v24;
    v19 = (v19 - v24) >> 1;
    if (v26 <= 9)
    {
      if (!v19)
      {
        goto LABEL_116;
      }

LABEL_57:
      v41 = v19 - 1;
      v42 = v20;
      while (1)
      {
        v43 = *(v42 & 0xFFFFFFFFFFFFFFFCLL);
        if (v43 == a2)
        {
          break;
        }

        v20 += v15;
        v44 = v43 > a2 || v41-- == 0;
        v42 += v15;
        if (v44)
        {
          goto LABEL_116;
        }
      }

LABEL_115:
      result = v20;
      if (v20)
      {
        return result;
      }

      do
      {
LABEL_116:
        v5 = (v5 + v6);
      }

      while (v5 < v9 && (*(v10 + 8 * *v5) & 1) == 0);
      if (v5 == v9)
      {
        return 0;
      }

      goto LABEL_15;
    }
  }

  if (result <= v18)
  {
LABEL_114:
    v20 = result;
    goto LABEL_115;
  }

  v88 = v20 + 24 * (v19 >> 1) - 24;
  do
  {
    if (*(v88 & 0xFFFFFFFFFFFFFFFCLL) != a2)
    {
      break;
    }

    result -= 24;
    v88 -= 24;
  }

  while (result > v18);
  return result;
}

id objc_constructInstance(Class cls, void *bytes)
{
  result = 0;
  if (!cls || !bytes)
  {
    return result;
  }

  objc_class::realizeIfNeeded(cls);
  v8 = *(cls + 15);
  v9 = cls & 0xFF80000000000007;
  if ((v8 & 0x2000) == 0)
  {
    if (!v9)
    {
      v10 = cls & 0x7FFFFFFFFFFFF8 | 0x100000000000001;
      goto LABEL_8;
    }

LABEL_13:
    _objc_fatal("Invalid class pointer %p has bits set outside of ISA_MASK", v5, v6, v7, cls);
  }

  if (v9)
  {
    goto LABEL_13;
  }

  v10 = cls & 0x7FFFFFFFFFFFF8;
LABEL_8:
  *bytes = v10;
  result = bytes;
  if ((v8 & 2) != 0)
  {

    return object_cxxConstructFromClass(bytes, cls, 0);
  }

  return result;
}

const char *__cdecl object_getClassName(id a1)
{
  if (a1)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v1 = objc_debug_taggedpointer_classes[a1 & 7];
      if (v1)
      {
        if (v1 != __NSUnrecognizedTaggedPointer)
        {
          return objc_class::demangledName(v1, 1);
        }

        v1 = objc_debug_taggedpointer_ext_classes[(a1 >> 55)];
        if (v1)
        {
          return objc_class::demangledName(v1, 1);
        }
      }
    }

    else
    {
      v1 = (*a1 & 0x7FFFFFFFFFFFF8);
      if (v1)
      {
        return objc_class::demangledName(v1, 1);
      }
    }
  }

  return "nil";
}

char *objc_object::sidetable_addExtraRC_nolock(objc_object *this, uint64_t a2)
{
  v6 = -this;
  v4 = *result;
  if ((*result & 0x8000000000000000) == 0)
  {
    if (__CFADD__(v4, 4 * a2))
    {
      v5 = *result & 3 | 0x8000000000000000;
    }

    else
    {
      v5 = v4 + 4 * a2;
    }

    *result = v5;
  }

  return result;
}

uint64_t method_t::types(uint64_t this)
{
  if ((this & 3u) > 1)
  {
    if ((this & 3) == 2)
    {
      if (*((this & 0xFFFFFFFFFFFFFFFCLL) + 8))
      {
        return *((this & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v1 = this & 0xFFFFFFFFFFFFFFFCLL;
    if ((this & 3) != 0)
    {
      v2 = *(v1 + 4);
      v3 = v2 + v1 + 4;
      if (v2)
      {
        return v3;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return *(v1 + 8);
    }
  }

  return this;
}

Method class_getInstanceMethod(Class cls, SEL name)
{
  v2 = 0;
  if (cls && name)
  {
    v4 = cls;
    lookUpImpOrForward(0, name, cls, 2u);
    v7 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v7, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v7)
    {
      os_unfair_lock_lock_with_options();
    }

    while (1)
    {
      MethodNoSuper_nolock = getMethodNoSuper_nolock(v4, name, v5, v6);
      if (MethodNoSuper_nolock)
      {
        break;
      }

      if (!*(v4 + 1))
      {
        v2 = 0;
        goto LABEL_10;
      }

      v4 = *(v4 + 1);
    }

    v2 = MethodNoSuper_nolock;
LABEL_10:
    v10 = *(StatusReg + 24);
    v11 = v10;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v11, 0, memory_order_release, memory_order_relaxed);
    if (v11 != v10)
    {
      os_unfair_lock_unlock(runtimeLock);
    }
  }

  return v2;
}

void sub_1800A9210(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void objc_copyStruct(void *dest, const void *src, ptrdiff_t size, BOOL atomic, BOOL hasStrong)
{
  if (atomic)
  {
    v8 = &StructLocks[16 * (((dest >> 4) ^ (dest >> 9)) & 7)];
    locker_mixin<lockdebug::lock_mixin<objc_lock_base_t>>::lockWith(&StructLocks[16 * (((src >> 4) ^ (src >> 9)) & 7)], v8);
    memmove(dest, src, size);

    locker_mixin<lockdebug::lock_mixin<objc_lock_base_t>>::unlockWith(&StructLocks[16 * (((src >> 4) ^ (src >> 9)) & 7)], v8);
  }

  else
  {

    memmove(dest, src, size);
  }
}

objc_object *objc_object::rootRetain_overflow(objc_object *this, int a2)
{
  v2 = this;
  if ((this & 0x8000000000000000) == 0)
  {
    isa = this->isa;
    if (this->isa)
    {
      v5 = 0;
      while (isa >> 55)
      {
        v6 = isa + 0x100000000000000;
        if (isa >= 0xFF00000000000000)
        {
          if (((a2 | v5) & 1) == 0)
          {
            objc_object::sidetable_lock(v2);
          }

          v9 = isa;
          atomic_compare_exchange_strong_explicit(v2, &v9, v6 & 0x7FFFFFFFFFFFFFLL | 0x8080000000000000, memory_order_relaxed, memory_order_relaxed);
          if (v9 == isa)
          {
            objc_object::sidetable_addExtraRC_nolock(v2, 128);
            LOBYTE(v5) = 1;
LABEL_26:
            if (!a2 && (v5 & 1) != 0)
            {
              objc_object::sidetable_unlock(v2);
            }

            return v2;
          }

          v5 = 1;
          isa = v9;
        }

        else
        {
          v7 = isa;
          atomic_compare_exchange_strong_explicit(v2, &v7, v6, memory_order_relaxed, memory_order_relaxed);
          v8 = v7 == isa;
          isa = v7;
          if (v8)
          {
            goto LABEL_26;
          }
        }

        if ((isa & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      if (v5)
      {
        objc_object::sidetable_unlock(v2);
      }

      if (a2)
      {
        return 0;
      }
    }

    else if ((*((isa & 0xFFFFFFFF8) + 0x1E) & 4) == 0)
    {
      LOBYTE(v5) = 0;
LABEL_20:
      if (a2)
      {
        if (!objc_object::sidetable_tryRetain(v2))
        {
          return 0;
        }
      }

      else
      {
        objc_object::sidetable_retain(v2, v5 & 1);
      }
    }
  }

  return v2;
}

char *objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_object const>,unsigned long,anonymous namespace::RefcountMapValuePurgeable,objc::DenseMapInfo<DisguisedPtr<objc_object const>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object const>,unsigned long>>,DisguisedPtr<objc_object const>,unsigned long,anonymous namespace::RefcountMapValuePurgeable,objc::DenseMapInfo<DisguisedPtr<objc_object const>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object const>,unsigned long>>::InsertIntoBucketImpl<DisguisedPtr<objc_object const>>(int32x2_t *a1, uint64_t *a2, char *a3)
{
  v8 = a3;
  v5 = a1[1].i32[0];
  v6 = a1[2].u32[0];
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - a1[1].i32[1] > v6 >> 3)
  {
    goto LABEL_3;
  }

  a3 = v8;
LABEL_3:
  if (*a3 == 2)
  {
    a1[1] = vadd_s32(a1[1], 0xFFFFFFFF00000001);
  }

  else if (*a3 == 1)
  {
    ++a1[1].i32[0];
  }

  return a3;
}

BOOL objc::DenseMapBase<objc::DenseMap<char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>,char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>::LookupBucketFor<char const*>(char **a1, char *__s1, char ***a3)
{
  if (*a1)
  {
    v6 = *a1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 4);
  if (v7)
  {
    v8 = 0;
    v9 = __s1;
    do
    {
      v10 = v8;
      v11 = *v9++;
      v8 = 257 * v8 + v11;
    }

    while (v11);
    v22 = 0;
    v12 = v7 - 1;
    for (i = 1; ; i = v21 + 1)
    {
      v21 = i;
      v14 = v10 & v12;
      v15 = &v6[v10 & v12];
      v16 = *v15;
      isEqual = objc::DenseMapInfo<char const*>::isEqual(__s1, *v15);
      if (isEqual)
      {
        break;
      }

      if (objc::DenseMapInfo<char const*>::isEqual(v16, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (v22)
        {
          v15 = v22;
        }

        break;
      }

      if (v21 > v7)
      {
        objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>,DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>::FatalCorruptHashTables(a1, v6, v7);
      }

      v18 = objc::DenseMapInfo<char const*>::isEqual(v16, 0xFFFFFFFFFFFFFFFELL);
      v19 = v22;
      if (v18 && v22 == 0)
      {
        v19 = &v6[v14];
      }

      v22 = v19;
      v10 = v14 + v21;
    }
  }

  else
  {
    v15 = 0;
    isEqual = 0;
  }

  *a3 = v15;
  return isEqual;
}

BOOL objc::DenseMapBase<objc::DenseMap<char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>,char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>::try_emplace<objc::detail::DenseSetEmpty&>(uint64_t a1, int32x2_t *a2, char **a3)
{
  v14 = 0;
  result = objc::DenseMapBase<objc::DenseMap<char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>,char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>::LookupBucketFor<char const*>(a2, *a3, &v14);
  v7 = v14;
  if (result)
  {
    v8 = 0;
    v9 = *a2;
    goto LABEL_3;
  }

  v11 = a2[1].i32[0];
  v12 = a2[2].u32[0];
  if (4 * v11 + 4 >= 3 * v12)
  {
    v12 *= 2;
    goto LABEL_12;
  }

  if (v12 + ~v11 - a2[1].i32[1] <= v12 >> 3)
  {
LABEL_12:
    objc::DenseMap<char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>::grow(a2, v12);
    v14 = 0;
    objc::DenseMapBase<objc::DenseMap<char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>,char const*,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<char const*>,objc::detail::DenseSetPair<char const*>>::LookupBucketFor<char const*>(a2, *a3, &v14);
    v7 = v14;
  }

  v13 = *v7;
  result = objc::DenseMapInfo<char const*>::isEqual(*v7, 0xFFFFFFFFFFFFFFFFLL);
  if (result)
  {
    ++a2[1].i32[0];
  }

  else
  {
    result = objc::DenseMapInfo<char const*>::isEqual(v13, 0xFFFFFFFFFFFFFFFELL);
    if (result)
    {
      a2[1] = vadd_s32(a2[1], 0xFFFFFFFF00000001);
    }
  }

  *v7 = *a3;
  v9 = *a2;
  v8 = 1;
LABEL_3:
  v10 = &v9[8 * a2[2].u32[0]];
  *a1 = v7;
  *(a1 + 8) = v10;
  *(a1 + 16) = v8;
  return result;
}

BOOL objc::DenseMapInfo<char const*>::isEqual(char *__s1, char *a2)
{
  if (__s1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a2 != -2 && __s1 != -2 && __s1 != -1 && a2 != -1)
  {
    return strcmp(__s1, a2) == 0;
  }

  return result;
}

unsigned int method_getNumberOfArguments(Method m)
{
  if (!m)
  {
    return 0;
  }

  v1 = method_t::types(m);
  v5 = SkipFirstType(v1, v2, v3, v4) - 1;
  do
  {
    v10 = *++v5;
    v9 = v10;
  }

  while ((v10 - 48) < 0xA);
  if (!v9)
  {
    return 0;
  }

  v11 = 0;
  do
  {
    Type = SkipFirstType(v5, v6, v7, v8);
    v13 = Type + 1;
    v14 = *Type;
    if (v14 != 43)
    {
      v13 = Type;
    }

    v15 = *v13 == 45;
    if (v14 == 43)
    {
      ++v15;
    }

    v5 = &Type[v15 - 1];
    do
    {
      v17 = *++v5;
      v16 = v17;
    }

    while ((v17 - 48) < 0xA);
    ++v11;
  }

  while (v16);
  return v11;
}

const char *SkipFirstType(const char *a1, uint64_t a2, const char *a3, char *a4)
{
  do
  {
    v5 = a1;
    v7 = *a1++;
    v6 = v7;
    v8 = (v7 - 78);
    if (v8 > 0x2D)
    {
      goto LABEL_8;
    }
  }

  while (((1 << v8) & 0x1300010103) != 0);
  if (v8 == 13)
  {
    do
    {
      v11 = *++v5;
    }

    while ((v11 - 48) < 0xA);
    v12 = &v5[SubtypeUntil(v5, 93, a3, a4)];
    return v12 + 1;
  }

  if (v8 == 45)
  {
    v9 = a1;
    v10 = 125;
LABEL_14:
    v12 = &a1[SubtypeUntil(v9, v10, a3, a4)];
    return v12 + 1;
  }

LABEL_8:
  if (v6 == 40)
  {
    v9 = a1;
    v10 = 41;
    goto LABEL_14;
  }

  if (v6 != 64)
  {
    return v5 + 1;
  }

  if (v5[1] == 63)
  {
    return v5 + 2;
  }

  return a1;
}

const char *encoding_getArgumentInfo(const char *a1, uint64_t a2, const char **a3, char *a4)
{
  v6 = a2;
  result = SkipFirstType(a1, a2, a3, a4) - 1;
  do
  {
    v12 = *++result;
    v11 = v12;
  }

  while ((v12 - 48) < 0xA);
  v15 = v11 == 0;
  v13 = v11 != 0;
  v14 = 0;
  v15 = v15 || v6 == 0;
  if (!v15)
  {
    v16 = 0;
    do
    {
      Type = SkipFirstType(result, v8, v9, v10);
      v18 = Type;
      v19 = *Type == 43;
      if (*Type == 43)
      {
        v20 = Type + 1;
      }

      else
      {
        v20 = Type;
      }

      v21 = *v20;
      if (v21 == 45)
      {
        result = v20 + 1;
      }

      else
      {
        result = v20;
      }

      if (v16)
      {
        result = &v18[(v21 == 45) - 1 + v19];
        do
        {
          v23 = *++result;
          v22 = v23;
        }

        while ((v23 - 48) < 0xA);
      }

      else
      {
        v24 = *result;
        if ((v24 - 48) > 9)
        {
          v22 = *result;
        }

        else
        {
          do
          {
            v25 = *++result;
            v22 = v25;
            v14 = 10 * v14 + (v24 - 48);
            LOBYTE(v24) = v25;
          }

          while ((v25 - 48) < 0xA);
        }

        if (v21 == 45)
        {
          v14 = -v14;
        }
      }

      ++v16;
      v15 = v22 == 0;
      v13 = v22 != 0;
    }

    while (!v15 && v16 != v6);
  }

  if (v13)
  {
    *a3 = result;
    result = SkipFirstType(result, v8, v9, v10);
    if (v6)
    {
      v27 = *result;
      v28 = v27 == 43;
      if (v27 == 43)
      {
        v29 = result + 1;
      }

      else
      {
        v29 = result;
      }

      v30 = *v29;
      if (v30 == 45)
      {
        ++v29;
      }

      v31 = *v29;
      if ((v31 - 48) > 9)
      {
        v32 = 0;
      }

      else
      {
        v32 = 0;
        v33 = &result[(v30 == 45) + 1 + v28];
        do
        {
          v32 = 10 * v32 + (v31 - 48);
          v34 = *v33++;
          LOBYTE(v31) = v34;
        }

        while ((v34 - 48) < 0xA);
      }

      if (v30 == 45)
      {
        v35 = -v32;
      }

      else
      {
        v35 = v32;
      }

      v13 = v35 - v14;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    *a3 = 0;
  }

  *a4 = v13;
  return result;
}

void method_getArgumentType(Method m, unsigned int index, char *dst, size_t dst_len)
{
  if (!m)
  {
    if (!dst)
    {
      return;
    }

    goto LABEL_11;
  }

  v6 = *&index;
  v7 = method_t::types(m);
  v18 = v7;
  if (!dst)
  {
    return;
  }

  if (!v7 || (encoding_getArgumentInfo(v7, v6, &v18, &v17), (v11 = v18) == 0))
  {
LABEL_11:
    v16 = dst;
    v15 = dst_len;
    goto LABEL_12;
  }

  Type = SkipFirstType(v18, v8, v9, v10);
  v13 = Type - v11;
  if (Type - v11 >= dst_len)
  {
    v14 = dst_len;
  }

  else
  {
    v14 = Type - v11;
  }

  strncpy(dst, v11, v14);
  v15 = dst_len - v13;
  if (dst_len > v13)
  {
    v16 = &dst[v13];
LABEL_12:

    bzero(v16, v15);
  }
}

void method_getReturnType(Method m, char *dst, size_t dst_len)
{
  if (!m)
  {
    if (!dst)
    {
      return;
    }

    goto LABEL_10;
  }

  v5 = method_t::types(m);
  if (!dst)
  {
    return;
  }

  v9 = v5;
  if (!v5)
  {
LABEL_10:
    v14 = dst;
    v13 = dst_len;
    goto LABEL_11;
  }

  Type = SkipFirstType(v5, v6, v7, v8);
  v11 = Type - v9;
  if (Type - v9 >= dst_len)
  {
    v12 = dst_len;
  }

  else
  {
    v12 = Type - v9;
  }

  strncpy(dst, v9, v12);
  v13 = dst_len - v11;
  if (dst_len > v11)
  {
    v14 = &dst[v11];
LABEL_11:

    bzero(v14, v13);
  }
}

char *objc::SafeRanges::add(objc::SafeRanges *this, uint64_t a2)
{
  v4 = qword_1ED3F6308;
  if (qword_1ED3F6308 == (HIDWORD(qword_1ED3F6308) & 0x7FFFFFFF))
  {
    v5 = 1 << (29 - __clz(qword_1ED3F6308));
    if (qword_1ED3F6308 >= 0x10)
    {
      v6 = v5;
    }

    else
    {
      v6 = 4;
    }

    v7 = v6 + HIDWORD(qword_1ED3F6308);
    HIDWORD(qword_1ED3F6308) = HIDWORD(qword_1ED3F6308) & 0x80000000 | v7 & 0x7FFFFFFF;
    result = malloc_type_realloc(qword_1ED3F6300, 16 * (v7 & 0x7FFFFFFF), 0x1000040451B5BE8uLL);
    qword_1ED3F6300 = result;
    v4 = qword_1ED3F6308;
  }

  else
  {
    result = qword_1ED3F6300;
  }

  v9 = v4 + 1;
  v10 = &result[16 * v4];
  *v10 = this;
  *(v10 + 1) = a2;
  qword_1ED3F6308 = __PAIR64__(HIDWORD(qword_1ED3F6308), v9) & 0x7FFFFFFFFFFFFFFFLL;
  return result;
}

uint64_t header_info::classlist(header_info *this, unint64_t *a2)
{
  result = _dyld_lookup_section_info();
  v5 = v4 >> 3;
  if (!result)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t std::__function::__value_func<void ()(segment_command_64 const*,long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t header_info::selrefs(header_info *this, unint64_t *a2)
{
  result = _dyld_lookup_section_info();
  v5 = v4 >> 3;
  if (!result)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t hasSignedClassROPointers(unint64_t a1, uint64_t a2)
{
  if (dataSegmentsRanges <= a1 && *algn_1ED3F62F8 > a1)
  {
    return 1;
  }

  v3 = _dyld_lookup_section_info();
  if (v3)
  {
    return (*(v3 + 4) >> 4) & 1;
  }

  else
  {
    return 1;
  }
}

_DWORD *NXCreateMapTable(void *a1, unsigned int a2)
{
  v4 = malloc_type_malloc(0x18uLL, 0x10E0040A403B16CuLL);
  v5 = prototypes;
  if (!prototypes)
  {
    v10 = *protoPrototype;
    v5 = NXCreateHashTable(&v10, 0, 0);
    prototypes = v5;
  }

  if (*a1 && a1[1] && a1[2] && !*(a1 + 6))
  {
    v6 = NXHashGet(v5, a1);
    if (!v6)
    {
      v6 = malloc_type_malloc(0x20uLL, 0x1080040AA79BA9DuLL);
      *v6 = *a1;
      v6[1] = a1[1];
      v6[2] = a1[2];
      *(v6 + 6) = *(a1 + 6);
      NXHashInsert(prototypes, v6);
    }

    *v4 = v6;
    v7 = 1 << -__clz(a2);
    if (a2 >= 2)
    {
      v8 = v7;
    }

    else
    {
      v8 = 2;
    }

    v4[2] = 0;
    v4[3] = v8 - 1;
    *(v4 + 2) = allocBuckets(v8);
  }

  else
  {
    _objc_inform("*** NXCreateMapTable: invalid creation parameters\n", v10.hash, v10.isEqual);
    return 0;
  }

  return v4;
}

NXHashTable *__cdecl NXCreateHashTable(NXHashTablePrototype *prototype, unsigned int capacity, const void *info)
{
  v6 = malloc_type_malloc(0x20uLL, 0x10E00402E54A04BuLL);
  v7 = prototypes;
  if (!prototypes)
  {
    v8 = malloc_type_malloc(8uLL, 0x76B70482uLL);
    free(v8);
    v9 = malloc_type_malloc(0x20uLL, 0x10E00402E54A04BuLL);
    prototypes = v9;
    *v9 = &protoPrototype;
    v9[1] = 0x100000001;
    v10 = malloc_type_calloc(1uLL, 0x10uLL, 0x10C20406D26F19BuLL);
    v7 = prototypes;
    *(prototypes + 16) = v10;
    v7->info = 0;
    *v10 = 1;
    v10[1] = &protoPrototype;
  }

  if (!prototype->hash)
  {
    prototype->hash = NXPtrHash;
  }

  p_isEqual = &prototype->isEqual;
  if (!prototype->isEqual)
  {
    *p_isEqual = NXPtrIsEqual;
  }

  p_free = &prototype->free;
  if (!prototype->free)
  {
    *p_free = NXNoEffectFree;
  }

  if (prototype->style)
  {
    _objc_inform("*** NXCreateHashTable: invalid style\n");
    return 0;
  }

  v13 = NXHashGet(v7, prototype);
  if (!v13)
  {
    v14 = malloc_type_malloc(0x20uLL, 0x1080040AA79BA9DuLL);
    *v14 = prototype->hash;
    v14[1] = *p_isEqual;
    v14[2] = *p_free;
    *(v14 + 6) = prototype->style;
    NXHashInsert(prototypes, v14);
    v13 = NXHashGet(prototypes, prototype);
    if (!v13)
    {
      _objc_inform("*** NXCreateHashTable: bug\n");
      return 0;
    }
  }

  v6->prototype = v13;
  v6->info = info;
  v15 = -1 << -__clz(capacity);
  if (capacity > 1)
  {
    v16 = ~v15;
  }

  else
  {
    v16 = 1;
  }

  v6->count = 0;
  v6->nbBuckets = v16;
  v6->buckets = malloc_type_calloc(v16, 0x10uLL, 0x10C20406D26F19BuLL);
  return v6;
}

void *__cdecl NXHashGet(NXHashTable *table, const void *data)
{
  buckets = table->buckets;
  v5 = &buckets[16 * ((table->prototype->hash)(table->info) % table->nbBuckets)];
  v6 = *v5;
  if (!*v5)
  {
    return 0;
  }

  if (v6 == 1)
  {
    v9 = *(v5 + 1);
    i = (v5 + 8);
    v7 = v9;
    if (v9 != data)
    {
      if ((table->prototype->isEqual)(table->info, data))
      {
        return *i;
      }

      return 0;
    }
  }

  else
  {
    for (i = *(v5 + 1); ; ++i)
    {
      v7 = *i;
      if (*i == data)
      {
        break;
      }

      if ((table->prototype->isEqual)(table->info, data))
      {
        return *i;
      }

      if (!--v6)
      {
        return 0;
      }
    }
  }

  return v7;
}

unint64_t hashPrototype(const void *a1, unint64_t *a2)
{
  if (*a2)
  {
    v2 = *a2;
  }

  else
  {
    v2 = 0;
  }

  if (a2[1])
  {
    v3 = a2[1];
  }

  else
  {
    v3 = 0;
  }

  return *(a2 + 6) ^ ((v3 ^ v2 ^ a2[2]) >> 16) ^ v2 ^ v3 ^ a2[2];
}

BOOL isEqualPrototype(const void *a1, _DWORD *a2, _DWORD *a3)
{
  if (*a2)
  {
    v3 = *a2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 == *a3 && (!*(a2 + 1) ? (v4 = 0) : (v4 = *(a2 + 1)), v4 == *(a3 + 1) && (!*(a2 + 2) ? (v5 = 0) : (v5 = *(a2 + 2)), v5 == *(a3 + 2))))
  {
    return a2[6] == a3[6];
  }

  else
  {
    return 0;
  }
}

void *__cdecl NXHashInsert(NXHashTable *table, const void *data)
{
  buckets = table->buckets;
  v5 = &buckets[16 * ((table->prototype->hash)(table->info) % table->nbBuckets)];
  v6 = *v5;
  if (*v5 == 1)
  {
    v7 = *(v5 + 1);
    if (v7 != data)
    {
      if (!(table->prototype->isEqual)(table->info, data))
      {
        v12 = malloc_type_calloc(3uLL, 8uLL, 0x80040B8603338uLL);
        v13 = *(v5 + 1);
        v12[1] = data;
        v12[2] = v13;
        ++*v5;
        *(v5 + 1) = v12 + 1;
        goto LABEL_18;
      }

      v7 = *(v5 + 1);
    }

    *(v5 + 1) = data;
    return v7;
  }

  if (!v6)
  {
    v7 = 0;
    *v5 = 1;
    *(v5 + 1) = data;
    ++table->count;
    return v7;
  }

  v8 = *(v5 + 1);
  do
  {
    v7 = *v8;
    if (*v8 == data)
    {
      goto LABEL_16;
    }

    if ((table->prototype->isEqual)(table->info, data))
    {
      v7 = *v8;
LABEL_16:
      *v8 = data;
      return v7;
    }

    ++v8;
    --v6;
  }

  while (v6);
  v9 = malloc_type_calloc((*v5 + 2), 8uLL, 0x80040B8603338uLL);
  v10 = (v9 + 8);
  v11 = *v5;
  if (v11)
  {
    memmove(v9 + 16, *(v5 + 1), 8 * v11);
  }

  *v10 = data;
  free((*(v5 + 1) - 8));
  ++*v5;
  *(v5 + 1) = v10;
LABEL_18:
  nbBuckets = table->nbBuckets;
  v15 = table->count + 1;
  table->count = v15;
  if (v15 > nbBuckets)
  {
    _NXHashRehashToCapacity(table, (2 * nbBuckets) | 1);
  }

  return 0;
}

void _NXHashRehashToCapacity(uint64_t a1, unsigned int a2)
{
  v4 = malloc_type_malloc(0x20uLL, 0x10E00402E54A04BuLL);
  v4->prototype = *a1;
  *&v4->count = *(a1 + 8);
  v4->buckets = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 12) = a2;
  v5 = malloc_type_calloc(a2, 0x10uLL, 0x10C20406D26F19BuLL);
  v6 = 0;
  *(a1 + 16) = v5;
  nbBuckets = v4->nbBuckets;
  while (1)
  {
    buckets = v4->buckets;
    if (!v6)
    {
      break;
    }

LABEL_7:
    --v6;
    v12 = &buckets[16 * nbBuckets];
    v14 = *v12;
    v13 = (v12 + 8);
    if (v14 != 1)
    {
      v13 = (*v13 + 8 * v6);
    }

    NXHashInsert(a1, *v13);
  }

  v9 = nbBuckets;
  v10 = &buckets[16 * nbBuckets - 16];
  while (v9)
  {
    --v9;
    v11 = *v10;
    v10 -= 4;
    v6 = v11;
    if (v11)
    {
      nbBuckets = v9;
      goto LABEL_7;
    }
  }

  freeBuckets(v4, 0);
  if (v4->count != *(a1 + 8))
  {
    _objc_inform("*** hashtable: count differs after rehashing; probably indicates a broken invariant: there are x and y such as isEqual(x, y) is TRUE but hash(x) != hash (y)\n");
  }

  free(v4->buckets);

  free(v4);
}

void freeBuckets(NXHashTable *a1, int a2)
{
  nbBuckets = a1->nbBuckets;
  if (nbBuckets)
  {
    for (i = a1->buckets; !*i; i += 2)
    {
LABEL_16:
      if (!--nbBuckets)
      {
        return;
      }
    }

    free = NXNoEffectFree;
    if (a2)
    {
      if (!a1->prototype->free)
      {
        v7 = 0;
LABEL_9:
        v8 = *i;
        v9 = i[1];
        if (*i)
        {
          info = a1->info;
          if (v8 == 1)
          {
            (v7)(a1->info, i[1]);
LABEL_15:
            *i = 0;
            i[1] = 0;
            goto LABEL_16;
          }

          v11 = i[1];
          do
          {
            --v8;
            v12 = *v11++;
            (v7)(info, v12);
          }

          while (v8);
        }

        ::free((v9 - 8));
        goto LABEL_15;
      }

      free = a1->prototype->free;
    }

    v7 = free;
    goto LABEL_9;
  }
}

unint64_t hashPrototype(uint64_t a1, uint64_t *a2)
{
  if (*a2)
  {
    v2 = *a2;
  }

  else
  {
    v2 = 0;
  }

  if (a2[1])
  {
    v3 = a2[1];
  }

  else
  {
    v3 = 0;
  }

  return a2[2] ^ v2 ^ v3 ^ *(a2 + 6) ^ ((a2[2] ^ v2 ^ v3) >> 16);
}

void *allocBuckets(int a1)
{
  v1 = a1;
  result = malloc_type_malloc(16 * (a1 + 1), 0xC0040D1025EB5uLL) + 16;
  if (v1)
  {
    v3 = result;
    do
    {
      *v3 = -1;
      v3[1] = 0;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

atomic_ullong protocols(void)
{
  if (!protocols(void)::protocol_map[0])
  {
    v3[0] = _mapStrHash;
    v3[1] = _mapStrIsEqual;
    v3[2] = _mapNoFree;
    v4 = 0;
    v0 = NXCreateMapTable(v3, 0x10u);
    while (1)
    {
      v1 = protocols(void)::protocol_map[0];
      if (protocols(void)::protocol_map[0])
      {
        break;
      }

      atomic_compare_exchange_strong(protocols(void)::protocol_map, &v1, v0);
      if (!v1)
      {
        return protocols(void)::protocol_map[0];
      }
    }

    NXFreeMapTable(v0);
  }

  return protocols(void)::protocol_map[0];
}

BOOL isEqualPrototype(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    v3 = *a2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 == *a3 && (!a2[1] ? (v4 = 0) : (v4 = a2[1]), v4 == *(a3 + 8) && (!a2[2] ? (v5 = 0) : (v5 = a2[2]), v5 == *(a3 + 16))))
  {
    return *(a2 + 6) == *(a3 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t header_info::nlclslist(header_info *this, unint64_t *a2)
{
  result = _dyld_lookup_section_info();
  v5 = v4 >> 3;
  if (!result)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

unint64_t addClassTableEntry(unint64_t result, char a2)
{
  for (i = result; ; i = *i & 0xFFFFFFFF8)
  {
    if ((*i - 1) < 0xF || (*(i + 32) & 0x8000000000000000) == 0 || (v4 = *((*(i + 32) & 0xF00007FFFFFFFF8) + 4), qword_1ED3F6308 <= v4) || (*(qword_1ED3F6300 + 16 * v4) <= i ? (v5 = *(qword_1ED3F6300 + 16 * v4 + 8) > i) : (v5 = 0), !v5))
    {
      result = objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::find(-i);
      if (objc::allocatedClasses + 8 * qword_1ED3F6160 == result)
      {
        result = dataSegmentsContain(i, v6, v7, v8);
        if ((result & 1) == 0)
        {
          v9 = -i;
          result = objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::try_emplace<objc::detail::DenseSetEmpty&>(v10, &objc::allocatedClasses, &v9);
        }
      }
    }

    if ((a2 & 1) == 0)
    {
      break;
    }

    a2 = 0;
  }

  return result;
}

uint64_t objc::SafeRanges::find(objc::SafeRanges *this, unsigned int *a2, unsigned int *a3, __n128 a4)
{
  if ((qword_1ED3F6308 & 0x8000000000000000) == 0)
  {
    v6 = 126 - 2 * __clz(qword_1ED3F6308);
    if (qword_1ED3F6308)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,objc::SafeRanges::find(unsigned long,unsigned int &)::$_0 &,objc::SafeRanges::Range *,false>(qword_1ED3F6300, (qword_1ED3F6300 + 16 * qword_1ED3F6308), v7, 1, a4);
    HIDWORD(qword_1ED3F6308) |= 0x80000000;
  }

  v8 = qword_1ED3F6308;
  if (qword_1ED3F6308)
  {
    v9 = 0;
    do
    {
      v10 = (v8 + v9) >> 1;
      v11 = (qword_1ED3F6300 + 16 * v10);
      if (*v11 <= this)
      {
        if (v11[1] > this)
        {
          result = 1;
          goto LABEL_15;
        }

        v9 = v10 + 1;
      }

      else
      {
        v8 = (v8 + v9) >> 1;
      }
    }

    while (v9 < v8);
  }

  result = 0;
  v10 = -1;
LABEL_15:
  *a2 = v10;
  return result;
}

uint64_t dataSegmentsContain(objc_class *a1, uint64_t a2, unsigned int *a3, __n128 a4)
{
  v6 = 0;
  result = objc::SafeRanges::find(a1, &v6, a3, a4);
  if (result && (*a1 - 1) >= 0xF && (*(a1 + 4) & 0x8000000000000000) != 0)
  {
    *((*(a1 + 4) & 0xF00007FFFFFFFF8) + 4) = v6;
  }

  return result;
}

char *objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::find(uint64_t a1)
{
  v2 = 0;
  if (objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::LookupBucketFor<DisguisedPtr<objc_class>>(&objc::allocatedClasses, a1, &v2))
  {
    return v2;
  }

  else
  {
    return (objc::allocatedClasses + 8 * qword_1ED3F6160);
  }
}

uint64_t objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::LookupBucketFor<DisguisedPtr<objc_class>>(char **a1, uint64_t a2, char **a3)
{
  v3 = *a1;
  v4 = *(a1 + 4);
  if (v4)
  {
    v5 = 0x8A970BE7488FDA55 * (-a2 ^ (-a2 >> 4));
    v6 = v4 - 1;
    v7 = (v4 - 1) & (bswap64(v5) ^ v5);
    v8 = &v3[v7];
    v9 = *v8;
    if (*v8 == a2)
    {
      v10 = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (v9 != 1)
      {
        if (v13 > v4)
        {
          objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>,DisguisedPtr<objc_class>,PendingInitialize *,objc::DenseMapValueInfo<PendingInitialize *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,PendingInitialize *>>::FatalCorruptHashTables(a1, v3, *(a1 + 4));
        }

        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v9 == 2;
        }

        if (v14)
        {
          v12 = v8;
        }

        v15 = v7 + v13++;
        v7 = v15 & v6;
        v8 = &v3[v15 & v6];
        v9 = *v8;
        v10 = 1;
        if (*v8 == a2)
        {
          goto LABEL_5;
        }
      }

      v10 = 0;
      if (v12)
      {
        v8 = v12;
      }
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

LABEL_5:
  *a3 = v8;
  return v10;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,objc::SafeRanges::find(unsigned long,unsigned int &)::$_0 &,objc::SafeRanges::Range *,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        if (v9->n128_u64[0] >= v12->n128_u64[0])
        {
          return result;
        }

LABEL_107:
        v127 = *v12;
        *v12 = *v9;
        result = v127;
LABEL_108:
        *v9 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v58 = v12 + 1;
      v61 = v12[1].n128_u64[0];
      v62 = v12 + 2;
      v63 = v12[2].n128_u64[0];
      if (v61 >= v12->n128_u64[0])
      {
        if (v63 < v61)
        {
          result = *v58;
          *v58 = *v62;
          *v62 = result;
          if (v12[1].n128_u64[0] < v12->n128_u64[0])
          {
            v130 = *v12;
            *v12 = *v58;
            result = v130;
            *v58 = v130;
          }
        }
      }

      else
      {
        if (v63 < v61)
        {
          v128 = *v12;
          *v12 = *v62;
          result = v128;
          goto LABEL_187;
        }

        v132 = *v12;
        *v12 = *v58;
        result = v132;
        *v58 = v132;
        if (v63 < v12[1].n128_u64[0])
        {
          result = *v58;
          *v58 = *v62;
LABEL_187:
          *v62 = result;
        }
      }

      if (v9->n128_u64[0] >= v62->n128_u64[0])
      {
        return result;
      }

      result = *v62;
      *v62 = *v9;
      *v9 = result;
      if (v62->n128_u64[0] >= v58->n128_u64[0])
      {
        return result;
      }

      result = *v58;
      *v58 = *v62;
      *v62 = result;
LABEL_191:
      if (v12[1].n128_u64[0] < v12->n128_u64[0])
      {
        v133 = *v12;
        *v12 = *v58;
        result = v133;
        *v58 = v133;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,objc::SafeRanges::find(unsigned long,unsigned int &)::$_0 &,objc::SafeRanges::Range *,0>(v12, v12 + 1, v12[2].n128_u64, v12[3].n128_u64, a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v64 = v12 + 1;
      v66 = v12 == a2 || v64 == a2;
      if (a4)
      {
        if (!v66)
        {
          v67 = 0;
          v68 = v12;
          do
          {
            v69 = v64;
            v70 = v68[1].n128_u64[0];
            if (v70 < v68->n128_u64[0])
            {
              v71 = v68[1].n128_u64[1];
              v72 = v67;
              while (1)
              {
                result = *(v12 + v72);
                *(v12 + v72 + 16) = result;
                if (!v72)
                {
                  break;
                }

                v73 = *(v12[-1].n128_u64 + v72);
                v72 -= 16;
                if (v70 >= v73)
                {
                  v74 = (v12 + v72 + 16);
                  goto LABEL_127;
                }
              }

              v74 = v12;
LABEL_127:
              v74->n128_u64[0] = v70;
              v74->n128_u64[1] = v71;
            }

            v64 = v69 + 1;
            v67 += 16;
            v68 = v69;
          }

          while (&v69[1] != a2);
        }
      }

      else if (!v66)
      {
        do
        {
          v104 = v64;
          v105 = a1[1].n128_u64[0];
          if (v105 < a1->n128_u64[0])
          {
            v106 = a1[1].n128_u64[1];
            v107 = v104;
            do
            {
              result = v107[-1];
              *v107 = result;
              v108 = v107[-2].n128_u64[0];
              --v107;
            }

            while (v105 < v108);
            v107->n128_u64[0] = v105;
            v107->n128_u64[1] = v106;
          }

          v64 = v104 + 1;
          a1 = v104;
        }

        while (&v104[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v75 = (v13 - 2) >> 1;
        v76 = v75;
        do
        {
          v77 = v76;
          if (v75 >= v76)
          {
            v78 = (2 * v76) | 1;
            v79 = &v12[v78];
            if (2 * v77 + 2 >= v13)
            {
              v80 = v79->n128_u64[0];
            }

            else
            {
              v80 = v79[1].n128_u64[0];
              v81 = v79->n128_u64[0] >= v80;
              if (v79->n128_u64[0] > v80)
              {
                v80 = v79->n128_u64[0];
              }

              if (!v81)
              {
                ++v79;
                v78 = 2 * v77 + 2;
              }
            }

            v82 = &v12[v77];
            v83 = v82->n128_u64[0];
            if (v80 >= v82->n128_u64[0])
            {
              v84 = v82->n128_u64[1];
              do
              {
                v85 = v82;
                v82 = v79;
                *v85 = *v79;
                if (v75 < v78)
                {
                  break;
                }

                v86 = (2 * v78) | 1;
                v79 = &v12[v86];
                v78 = 2 * v78 + 2;
                if (v78 >= v13)
                {
                  v87 = v79->n128_u64[0];
                  v78 = v86;
                }

                else
                {
                  v87 = v79->n128_u64[0];
                  v88 = v79[1].n128_u64[0];
                  if (v79->n128_u64[0] <= v88)
                  {
                    v87 = v79[1].n128_u64[0];
                  }

                  if (v79->n128_u64[0] >= v88)
                  {
                    v78 = v86;
                  }

                  else
                  {
                    ++v79;
                  }
                }
              }

              while (v87 >= v83);
              v82->n128_u64[0] = v83;
              v82->n128_u64[1] = v84;
            }
          }

          v76 = v77 - 1;
        }

        while (v77);
        do
        {
          v89 = 0;
          v129 = *v12;
          v90 = v12;
          do
          {
            v91 = &v90[v89];
            v92 = v91 + 1;
            v93 = (2 * v89) | 1;
            v89 = 2 * v89 + 2;
            if (v89 >= v13)
            {
              v89 = v93;
            }

            else
            {
              v95 = v91[2].n128_u64[0];
              v94 = v91 + 2;
              if (v94[-1].n128_u64[0] >= v95)
              {
                v89 = v93;
              }

              else
              {
                v92 = v94;
              }
            }

            *v90 = *v92;
            v90 = v92;
          }

          while (v89 <= ((v13 - 2) >> 1));
          if (v92 == --a2)
          {
            result = v129;
            *v92 = v129;
          }

          else
          {
            *v92 = *a2;
            result = v129;
            *a2 = v129;
            v96 = (v92 - v12 + 16) >> 4;
            v97 = v96 < 2;
            v98 = v96 - 2;
            if (!v97)
            {
              v99 = v98 >> 1;
              v100 = &v12[v99];
              v101 = v92->n128_u64[0];
              if (v100->n128_u64[0] < v92->n128_u64[0])
              {
                v102 = v92->n128_u64[1];
                do
                {
                  v103 = v92;
                  v92 = v100;
                  result = *v100;
                  *v103 = *v100;
                  if (!v99)
                  {
                    break;
                  }

                  v99 = (v99 - 1) >> 1;
                  v100 = &v12[v99];
                }

                while (v100->n128_u64[0] < v101);
                v92->n128_u64[0] = v101;
                v92->n128_u64[1] = v102;
              }
            }
          }

          v97 = v13-- <= 2;
        }

        while (!v97);
      }

      return result;
    }

    v14 = &v12[v13 >> 1];
    v15 = v14;
    v16 = v9->n128_u64[0];
    if (v13 >= 0x81)
    {
      v17 = v14->n128_u64[0];
      if (v14->n128_u64[0] >= v12->n128_u64[0])
      {
        if (v16 < v17)
        {
          v111 = *v14;
          *v14 = *v9;
          *v9 = v111;
          if (v14->n128_u64[0] < v12->n128_u64[0])
          {
            v112 = *v12;
            *v12 = *v14;
            *v14 = v112;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v109 = *v12;
          *v12 = *v9;
          goto LABEL_26;
        }

        v115 = *v12;
        *v12 = *v14;
        *v14 = v115;
        if (v9->n128_u64[0] < v14->n128_u64[0])
        {
          v109 = *v14;
          *v14 = *v9;
LABEL_26:
          *v9 = v109;
        }
      }

      v19 = v12 + 1;
      v20 = v14 - 1;
      v21 = v14[-1].n128_u64[0];
      v22 = v10->n128_u64[0];
      if (v21 >= v12[1].n128_u64[0])
      {
        if (v22 < v21)
        {
          v116 = *v20;
          *v20 = *v10;
          *v10 = v116;
          if (v20->n128_u64[0] < v19->n128_u64[0])
          {
            v24 = *v19;
            *v19 = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v22 < v21)
        {
          v23 = *v19;
          *v19 = *v10;
          goto LABEL_38;
        }

        v25 = *v19;
        *v19 = *v20;
        *v20 = v25;
        if (v10->n128_u64[0] < v20->n128_u64[0])
        {
          v118 = *v20;
          *v20 = *v10;
          v23 = v118;
LABEL_38:
          *v10 = v23;
        }
      }

      v26 = v12 + 2;
      v29 = v14[1].n128_u64[0];
      v27 = v14 + 1;
      v28 = v29;
      v30 = v11->n128_u64[0];
      if (v29 >= v12[2].n128_u64[0])
      {
        if (v30 < v28)
        {
          v119 = *v27;
          *v27 = *v11;
          *v11 = v119;
          if (v27->n128_u64[0] < v26->n128_u64[0])
          {
            v32 = *v26;
            *v26 = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v30 < v28)
        {
          v31 = *v26;
          *v26 = *v11;
          goto LABEL_47;
        }

        v33 = *v26;
        *v26 = *v27;
        *v27 = v33;
        if (v11->n128_u64[0] < v27->n128_u64[0])
        {
          v120 = *v27;
          *v27 = *v11;
          v31 = v120;
LABEL_47:
          *v11 = v31;
        }
      }

      v34 = v15->n128_u64[0];
      v35 = v27->n128_u64[0];
      if (v15->n128_u64[0] >= v20->n128_u64[0])
      {
        if (v35 < v34)
        {
          v122 = *v15;
          *v15 = *v27;
          *v27 = v122;
          if (v15->n128_u64[0] < v20->n128_u64[0])
          {
            v123 = *v20;
            *v20 = *v15;
            *v15 = v123;
          }
        }
      }

      else
      {
        if (v35 < v34)
        {
          v121 = *v20;
          *v20 = *v27;
          goto LABEL_56;
        }

        v124 = *v20;
        *v20 = *v15;
        *v15 = v124;
        if (v27->n128_u64[0] < v15->n128_u64[0])
        {
          v121 = *v15;
          *v15 = *v27;
LABEL_56:
          *v27 = v121;
        }
      }

      v125 = *v12;
      *v12 = *v15;
      result = v125;
      *v15 = v125;
      goto LABEL_58;
    }

    v18 = v12->n128_u64[0];
    if (v12->n128_u64[0] >= v14->n128_u64[0])
    {
      if (v16 < v18)
      {
        v113 = *v12;
        *v12 = *v9;
        result = v113;
        *v9 = v113;
        if (v12->n128_u64[0] < v14->n128_u64[0])
        {
          v114 = *v14;
          *v14 = *v12;
          result = v114;
          *v12 = v114;
        }
      }

      goto LABEL_58;
    }

    if (v16 >= v18)
    {
      v117 = *v14;
      *v14 = *v12;
      result = v117;
      *v12 = v117;
      if (v9->n128_u64[0] >= v12->n128_u64[0])
      {
        goto LABEL_58;
      }

      v110 = *v12;
      *v12 = *v9;
    }

    else
    {
      v110 = *v14;
      *v14 = *v9;
    }

    result = v110;
    *v9 = v110;
LABEL_58:
    --a3;
    v36 = v12->n128_u64[0];
    if ((a4 & 1) != 0 || v12[-1].n128_u64[0] < v36)
    {
      v37 = v12->n128_u64[1];
      v38 = v12;
      do
      {
        v39 = v38;
        v40 = v38[1].n128_u64[0];
        ++v38;
      }

      while (v40 < v36);
      v41 = a2;
      if (v39 == v12)
      {
        v41 = a2;
        do
        {
          if (v38 >= v41)
          {
            break;
          }

          v43 = v41[-1].n128_u64[0];
          --v41;
        }

        while (v43 >= v36);
      }

      else
      {
        do
        {
          v42 = v41[-1].n128_u64[0];
          --v41;
        }

        while (v42 >= v36);
      }

      v12 = v38;
      if (v38 < v41)
      {
        v44 = v41;
        do
        {
          result = *v12;
          *v12 = *v44;
          *v44 = result;
          do
          {
            v45 = v12[1].n128_u64[0];
            ++v12;
          }

          while (v45 < v36);
          do
          {
            v46 = v44[-1].n128_u64[0];
            --v44;
          }

          while (v46 >= v36);
        }

        while (v12 < v44);
      }

      v47 = v12 - 1;
      if (&v12[-1] != a1)
      {
        result = *v47;
        *a1 = *v47;
      }

      v12[-1].n128_u64[0] = v36;
      v12[-1].n128_u64[1] = v37;
      if (v38 < v41)
      {
        goto LABEL_79;
      }

      v48 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,objc::SafeRanges::find(unsigned long,unsigned int &)::$_0 &,objc::SafeRanges::Range *>(a1, v12 - 1, result);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,objc::SafeRanges::find(unsigned long,unsigned int &)::$_0 &,objc::SafeRanges::Range *>(v12, a2, v49))
      {
        a2 = v12 - 1;
        if (!v48)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v48)
      {
LABEL_79:
        result = std::__introsort<std::_ClassicAlgPolicy,objc::SafeRanges::find(unsigned long,unsigned int &)::$_0 &,objc::SafeRanges::Range *,false>(a1, v12 - 1, a3, a4 & 1, result);
        a4 = 0;
      }
    }

    else
    {
      if (v36 >= v9->n128_u64[0])
      {
        n128_u64 = v12[1].n128_u64;
        do
        {
          v12 = n128_u64;
          if (n128_u64 >= a2)
          {
            break;
          }

          n128_u64 += 16;
        }

        while (v36 >= v12->n128_u64[0]);
      }

      else
      {
        do
        {
          v50 = v12[1].n128_u64[0];
          ++v12;
        }

        while (v36 >= v50);
      }

      v52 = a2;
      if (v12 < a2)
      {
        v52 = a2;
        do
        {
          v53 = v52[-1].n128_u64[0];
          --v52;
        }

        while (v36 < v53);
      }

      v54 = a1->n128_u64[1];
      while (v12 < v52)
      {
        v126 = *v12;
        *v12 = *v52;
        result = v126;
        *v52 = v126;
        do
        {
          v55 = v12[1].n128_u64[0];
          ++v12;
        }

        while (v36 >= v55);
        do
        {
          v56 = v52[-1].n128_u64[0];
          --v52;
        }

        while (v36 < v56);
      }

      v57 = v12 - 1;
      if (&v12[-1] != a1)
      {
        result = *v57;
        *a1 = *v57;
      }

      a4 = 0;
      v12[-1].n128_u64[0] = v36;
      v12[-1].n128_u64[1] = v54;
    }
  }

  v58 = v12 + 1;
  v59 = v12[1].n128_u64[0];
  v60 = v9->n128_u64[0];
  if (v59 >= v12->n128_u64[0])
  {
    if (v60 >= v59)
    {
      return result;
    }

    result = *v58;
    *v58 = *v9;
    *v9 = result;
    goto LABEL_191;
  }

  if (v60 < v59)
  {
    goto LABEL_107;
  }

  v131 = *v12;
  *v12 = *v58;
  result = v131;
  *v58 = v131;
  if (v9->n128_u64[0] < v12[1].n128_u64[0])
  {
    result = *v58;
    *v58 = *v9;
    goto LABEL_108;
  }

  return result;
}

objc_class *realizeClassWithoutSwift(objc_class *a1, objc_class *a2)
{
  v2 = a1;
  if (!a1 || (*a1 - 1) >= 0xF && (*(a1 + 4) & 0x8000000000000000) != 0)
  {
    return v2;
  }

  v4 = (a1 + 32);
  v5 = class_data_bits_t::safe_ro<(Authentication)0>(a1 + 4);
  v6 = *v5 & 1;
  v158 = a2;
  if ((*v5 & 0x40000000) != 0)
  {
    v11 = *v4;
    v7 = class_rw_t::ro((*v4 & 0xF00007FFFFFFFF8));
    v12 = (*v4 & 0xF00007FFFFFFFF8);
    do
    {
      v13 = *v12;
      v14 = *v12;
      atomic_compare_exchange_strong(v12, &v14, *v12 & 0x3FF7FFFF | 0x80080000);
    }

    while (v14 != v13);
    v156 = (v11 & 0xF00007FFFFFFFF8);
  }

  else
  {
    v7 = v5;
    v8 = malloc_type_calloc(0x20uLL, 1uLL, 0x1080040D2A7D70AuLL);
    v9 = v8 + 1;
    v10 = v8[1];
    if (v10)
    {
      v9 = (v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    *v9 = v7;
    *v8 = v6 | 0x80080000;
    v156 = v8;
    class_data_bits_t::setData(v2 + 4, v8);
  }

  if (DisablePreoptCaches || (v15 = (v2 + 16), v17 = dataSegmentsRanges, v16 = *algn_1ED3F62F8, dataSegmentsRanges > v2 + 16) || *algn_1ED3F62F8 <= v15 || !*(v2 + 3))
  {
    *(v2 + 2) = &_objc_empty_cache;
    *(v2 + 3) = 0;
    if (!v6)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v18 = *(v2 + 3);
  if (!dyld_shared_cache_some_image_overridden() || !*v18)
  {
LABEL_31:
    *(v2 + 3) = 0;
    atomic_store(v18, v2 + 2);
    *(v2 + 14) = 0;
    *(v2 + 6) = ((v2 + 16) >> 32) ^ (v2 + 16);
    *(v2 + 14) = *(v18 + 10) & 0x3FFF;
    if (!v6)
    {
      goto LABEL_35;
    }

LABEL_34:
    atomic_fetch_or_explicit(v2 + 15, 4u, memory_order_relaxed);
    goto LABEL_35;
  }

  v19 = v2;
  v20 = (v2 + *v18);
  while (1)
  {
    v21 = *(v19 + 1);
    if (!v21)
    {
      break;
    }

    if (v17 > v21 || v16 <= v21)
    {
      break;
    }

    v19 = *(v19 + 1);
    v23 = class_data_bits_t::safe_ro<(Authentication)0>((v21 + 32));
    if (v17 > v23 || v16 <= v23)
    {
      break;
    }

    if (v19 == v20)
    {
      goto LABEL_31;
    }
  }

  *v15 = &_objc_empty_cache;
  *(v2 + 3) = 0;
  objc_class::setDisallowPreoptCachesRecursively(v2, "roots");
  if (v6)
  {
    goto LABEL_34;
  }

LABEL_35:
  v25 = &OBJC_IVAR___Object_isa;
  if (PrintConnecting)
  {
    v102 = objc_class::nameForLogging(v2);
    v103 = "";
    v104 = " (meta)";
    if (!v6)
    {
      v104 = "";
    }

    if ((*(v2 + 4) & 2) != 0)
    {
      v105 = "(swift)";
    }

    else
    {
      v105 = "";
    }

    if (*(v2 + 4))
    {
      v103 = "(pre-stable swift)";
    }

    _objc_inform("CLASS: realizing class '%s'%s %p %p #%u %s%s", v102, v104, v2, v7, 0, v105, v103);
  }

  if (*(v2 + 1))
  {
    v26 = *(v2 + 1);
  }

  else
  {
    v26 = 0;
  }

  v27 = remapClass(v26);
  v28 = realizeClassWithoutSwift(v27, 0);
  v29 = remapClass(*v2 & 0xFFFFFFFF8);
  v33 = realizeClassWithoutSwift(v29, 0);
  if (!v28 && (*class_data_bits_t::safe_ro<(Authentication)0>(v2 + 4) & 2) == 0)
  {
    if (PrintConnecting)
    {
      v136 = objc_class::nameForLogging(v2);
      v137 = "";
      if (v6)
      {
        v137 = " (meta)";
      }

      _objc_inform("CLASS: '%s'%s %p has missing weak superclass, disabling.", v136, v137, v2);
    }

    addRemappedClass(v2, 0);
    *v2 = 0;
    return 0;
  }

  if (v6)
  {
    atomic_fetch_or_explicit(v2 + 15, 0x2000u, memory_order_relaxed);
    goto LABEL_48;
  }

  if (DisableNonpointerIsa)
  {
    goto LABEL_46;
  }

  v57 = *(v2 + 15);
  if ((realizeClassWithoutSwift(objc_class *,objc_class *)::hackedDispatch & 1) == 0)
  {
    explicit = atomic_load_explicit(v7 + 3, memory_order_acquire);
    if (explicit)
    {
      if (!strcmp(explicit, "OS_object"))
      {
        v34 = 0;
        realizeClassWithoutSwift(objc_class *,objc_class *)::hackedDispatch = 1;
        v25 = &OBJC_IVAR___Object_isa;
        goto LABEL_47;
      }
    }
  }

  v25 = &OBJC_IVAR___Object_isa;
  if (v28 && *(v28 + 1))
  {
    v59 = *(v28 + 15);
    if (((v59 | v57) & 0x2000) != 0)
    {
      v34 = (v59 >> 13) & 1;
      goto LABEL_47;
    }
  }

  else if ((v57 & 0x2000) != 0)
  {
LABEL_46:
    v34 = 0;
LABEL_47:
    objc_class::setInstancesRequireRawIsaRecursively(v2, v34);
  }

LABEL_48:
  *(v2 + 1) = v28;
  if ((v33 & 0xFF80000000000007) != 0)
  {
    _objc_fatal("Invalid class pointer %p has bits set outside of ISA_MASK", v30, v31, v32, v33);
  }

  *v2 = v33 & 0x7FFFFFFFFFFFF8;
  if (!v6 && v28)
  {
    v35 = *v4;
    v36 = class_rw_t::ro((*(v28 + 4) & 0xF00007FFFFFFFF8));
    if (DebugNonFragileIvars)
    {
      v37 = objc_class::mangledName(v2);
      if (!strstr(v37, "NSCF") && strncmp(v37, "__CF", 4uLL) && strcmp(v37, "NSConstantString") && strcmp(v37, "NSSimpleCString"))
      {
        v60 = *(v7 + 1);
        ro_writeable_nolock = make_ro_writeable_nolock((v35 & 0xF00007FFFFFFFF8));
        v62 = class_rw_t::ro((v35 & 0xF00007FFFFFFFF8));
        v7 = v62;
        v66 = *(v62 + 48);
        if (!v66)
        {
          goto LABEL_184;
        }

        v67 = *v66;
        v68 = v66[1];
        v69 = v68 * v67;
        if ((v69 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_241;
        }

        if (v69)
        {
          v70 = 0;
          v71 = 8;
          do
          {
            v72 = *(v66 + v70 + 32);
            if (v72 == -1)
            {
              v73 = 8;
            }

            else
            {
              v73 = 1 << v72;
            }

            if (v73 > v71)
            {
              v71 = v73;
            }

            v70 += v67;
          }

          while (v69 != v70);
        }

        else
        {
LABEL_184:
          v71 = 8;
        }

        v128 = *(v62 + 4);
        v129 = v128 / v71 * v71;
        v130 = *(ro_writeable_nolock + 8) - v129;
        *(ro_writeable_nolock + 4) = v128 % v71;
        *(ro_writeable_nolock + 8) = v130;
        if (PrintIvars)
        {
          v145 = objc_class::nameForLogging(v2);
          _objc_inform("IVARS: DEBUG: forcing ivars for class '%s' to slide (instanceStart %zu -> %zu)", v145, v60, *(v7 + 1));
          v66 = v7[6];
          if (v66)
          {
LABEL_187:
            v67 = *v66;
            v68 = v66[1];
            v131 = v68 * v67;
            if ((v131 & 0xFFFFFFFF00000000) == 0)
            {
              if (v131)
              {
                v132 = 0;
                v133 = v66 + 2;
                do
                {
                  v134 = *(v133 + v132);
                  if (v134)
                  {
                    *v134 -= v129;
                  }

                  v132 += v67;
                }

                while (v131 != v132);
              }

              goto LABEL_53;
            }

LABEL_241:
            _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v63, v64, v65, v68, v66, v67);
          }
        }

        else if (v66)
        {
          goto LABEL_187;
        }
      }
    }

LABEL_53:
    if (*(v7 + 1) < *(v36 + 8))
    {
      if (PrintIvars)
      {
        v135 = objc_class::nameForLogging(v2);
        _objc_inform("IVARS: sliding ivars for class %s (superclass was %u bytes, now %u)", v135, *(v7 + 1), *(v36 + 8));
      }

      v38 = make_ro_writeable_nolock((v35 & 0xF00007FFFFFFFF8));
      v7 = class_rw_t::ro((v35 & 0xF00007FFFFFFFF8));
      v42 = *(v38 + 4);
      v43 = *(v36 + 8) - v42;
      v44 = *(v38 + 48);
      if (v44)
      {
        v46 = *v44;
        v45 = v44[1];
        v47 = v45 * v46;
        if ((v47 & 0xFFFFFFFF00000000) != 0)
        {
          _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v39, v40, v41, v45, v44, *v44);
        }

        if (v47)
        {
          v48 = v47;
          v49 = v44 + 8;
          v50 = v47;
          v51 = 1;
          do
          {
            if (*(v49 - 3))
            {
              v52 = *v49 == -1 ? 8 : 1 << *v49;
              if (v52 > v51)
              {
                v51 = v52;
              }
            }

            v49 = (v49 + v46);
            v50 -= v46;
          }

          while (v50);
          v43 = (v43 + v51 - 1) & -v51;
          v53 = v44 + 8;
          do
          {
            v54 = *(v53 - 3);
            if (v54)
            {
              v55 = *v54;
              *v54 += v43;
              if (PrintIvars)
              {
                if (*v53 == -1)
                {
                  v56 = 8;
                }

                else
                {
                  v56 = 1 << *v53;
                }

                _objc_inform("IVARS:    offset %u -> %u for %s (size %u, align %u)", v55, v55 + v43, *(v53 - 2), v53[1], v56);
              }
            }

            v53 = (v53 + v46);
            v48 -= v46;
          }

          while (v48);
          v42 = *(v38 + 4);
          v25 = &OBJC_IVAR___Object_isa;
        }
      }

      v74 = v43 + v42;
      v75 = *(v38 + 8) + v43;
      *(v38 + 4) = v74;
      *(v38 + 8) = v75;
      atomic_load_explicit(v7 + 3, memory_order_acquire);
      gdb_objc_class_changed();
    }
  }

  objc_class::setInstanceSize(v2, *(v7 + 2));
  v76 = *v7;
  if ((*v7 & 4) != 0)
  {
    atomic_fetch_or_explicit(v2 + 15, 1u, memory_order_relaxed);
    v76 = *v7;
    if ((*v7 & 0x100) == 0)
    {
      atomic_fetch_or_explicit(v2 + 15, 2u, memory_order_relaxed);
      v76 = *v7;
    }
  }

  if ((v76 & 0x400) != 0)
  {
    *v156 |= 0x100000u;
    if (v28)
    {
LABEL_108:
      addSubclass(v28, v2);
      goto LABEL_110;
    }
  }

  else if (v28)
  {
    if ((*((*(v28 + 4) & 0xF00007FFFFFFFF8) + 2) & 0x10) != 0)
    {
      *v156 |= 0x100000u;
    }

    goto LABEL_108;
  }

  ++objc_debug_realized_class_generation_count;
  *((*(v2 + 4) & 0xF00007FFFFFFFF8) + 0x18) = _firstRealizedClass;
  _firstRealizedClass = v2;
LABEL_110:
  v77 = *(v2 + 15);
  v78 = *(v2 + 4);
  v82 = class_rw_t::ro((v78 & 0xF00007FFFFFFFF8));
  if (v25[324])
  {
    v106 = objc_class::nameForLogging(v2);
    v107 = "(meta)";
    if ((v77 & 4) == 0)
    {
      v107 = "";
    }

    _objc_inform("CLASS: methodizing class '%s' %s", v106, v107);
  }

  v157 = v77;
  v83 = *(v82 + 32);
  if (v83)
  {
    v84 = (*(v82 + 32) & 1) == 0;
  }

  else
  {
    v84 = 0;
  }

  if (v84)
  {
    v160 = v83 & 0xFFFFFFFFFFFFFFFELL;
    if ((v83 & 0xFFFFFFFFFFFFFFFELL) != 0)
    {
      v98 = class_rw_t::ro((*(v2 + 4) & 0xF00007FFFFFFFF8));
      prepareMethodLists(v2, &v160, 1, 1, (*v98 >> 29) & 1, 0);
    }

    goto LABEL_133;
  }

  v160 = 0;
  if (v83)
  {
    v85 = (v83 & 0xFFFFFFFFFFFFFFFELL);
    if ((v83 & 0xFFFFFFFFFFFFFFFELL) != 0)
    {
      v155 = v78;
      if (DisablePreattachedCategories)
      {
        v88 = *v85;
        v87 = v85[1];
        v146 = v87 * v88;
        if ((v146 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_242;
        }

        v147 = v85 + v146 + 8;
        v148 = v87 == 0;
        if (v87)
        {
          v87 = v87;
        }

        else
        {
          v87 = 0;
        }

        if (v148)
        {
          j = v147;
        }

        else
        {
          j = (v147 - v88);
        }
      }

      else
      {
        j = (v85 + 2);
        v88 = *v85;
        v87 = v85[1];
      }

      v89 = v87 * v88;
      if ((v89 & 0xFFFFFFFF00000000) != 0)
      {
        goto LABEL_238;
      }

      v90 = v85 + 2;
      for (i = v85 + v89 + 8; j < i; j = (j + v88))
      {
        if (*(objc_debug_headerInfoRWs + 8 + 8 * *j))
        {
          break;
        }
      }

      if (j == i)
      {
        v92 = 0;
      }

      else
      {
        v92 = 0;
        do
        {
          v159 = j + (*j >> 16);
          v94 = *v85;
          v93 = v85[1];
          v95 = v93 * v94;
          if ((v95 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_229;
          }

          v96 = v90 + v95;
          for (j = (j + v88); j < v96; j = (j + v88))
          {
            if (*(objc_debug_headerInfoRWs + 8 + 8 * *j))
            {
              break;
            }
          }

          v97 = class_rw_t::ro((*(v2 + 4) & 0xF00007FFFFFFFF8));
          prepareMethodLists(v2, &v159, 1, j == i, (*v97 >> 29) & 1, 0);
          ++v92;
        }

        while (j != i);
        LODWORD(v87) = v85[1];
      }

      if (v87 < 0x64 || v92 > v87 >> 1)
      {
        goto LABEL_133;
      }

      if (!PrintConnecting)
      {
        goto LABEL_162;
      }

      v138 = objc_class::nameForLogging(v2);
      v139 = "(meta)";
      if ((v157 & 4) == 0)
      {
        v139 = "";
      }

      _objc_inform("CLASS: Copying preoptimized categories for sparsely loaded class '%s' %s - %u lists, %u loaded - loaded lists are:", v138, v139, v85[1], v92);
      if (!DisablePreattachedCategories)
      {
        v88 = *v85;
        v87 = v85[1];
        m = (v85 + 2);
        goto LABEL_201;
      }

      v88 = *v85;
      v87 = v85[1];
      v152 = v87 * v88;
      if ((v152 & 0xFFFFFFFF00000000) == 0)
      {
        v153 = (v90 + v152);
        v154 = v87 == 0;
        if (v87)
        {
          v87 = v87;
        }

        else
        {
          v87 = 0;
        }

        if (v154)
        {
          m = v153;
        }

        else
        {
          m = (v153 - v88);
        }

LABEL_201:
        v141 = v87 * v88;
        if ((v141 & 0xFFFFFFFF00000000) == 0)
        {
          for (k = (v90 + v141); m < k; m = (m + v88))
          {
            if (*(objc_debug_headerInfoRWs + 8 + 8 * *m))
            {
              break;
            }
          }

          if (m != k)
          {
            while (1)
            {
              _objc_inform("    %p", m + (*m >> 16));
              v94 = *v85;
              v93 = v85[1];
              v143 = v93 * v94;
              if ((v143 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              v144 = v90 + v143;
              for (m = (m + v88); m < v144; m = (m + v88))
              {
                if (*(objc_debug_headerInfoRWs + 8 + 8 * *m))
                {
                  break;
                }
              }

              if (m == k)
              {
                goto LABEL_162;
              }
            }

LABEL_229:
            _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v79, v80, v81, v93, v85, v94);
          }

LABEL_162:
          v113 = class_rw_t::extAllocIfNeeded((v155 & 0xF00007FFFFFFFF8)) + 1;
          if (*v113)
          {
            v114 = runtimeLock;
            if ((*v113 & 3) == 2)
            {
              v115 = (*v113 & 0xFFFFFFFFFFFFFFFCLL);
            }

            else
            {
              v115 = 0;
            }
          }

          else
          {
            v115 = 0;
            v114 = runtimeLock;
          }

          if (DisablePreattachedCategories)
          {
            v118 = *v115;
            v117 = v115[1];
            v149 = v117 * v118;
            if ((v149 & 0xFFFFFFFF00000000) != 0)
            {
              _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v108, v109, v110, v117, v115, *v115);
            }

            v150 = v115 + v149 + 8;
            v151 = v117 == 0;
            if (v117)
            {
              v117 = v117;
            }

            else
            {
              v117 = 0;
            }

            if (v151)
            {
              ii = v150;
            }

            else
            {
              ii = (v150 - v118);
            }
          }

          else
          {
            ii = (v115 + 2);
            v118 = *v115;
            v117 = v115[1];
          }

          v119 = v117 * v118;
          if ((v119 & 0xFFFFFFFF00000000) != 0)
          {
            _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v108, v109, v110, v117, v115, v118);
          }

          for (n = v115 + v119 + 8; ii < n; ii = (ii + v118))
          {
            if (*(*(v114 + 264) + 8 + 8 * *ii))
            {
              break;
            }
          }

          if (v92 == 1)
          {
            *v113 = ii + (*ii >> 16);
          }

          else
          {
            v121 = malloc_type_malloc(8 * v92 + 8, 0x1000040D9BFD5C6uLL);
            *v113 = v121 | 1;
            *v121 = v92;
            if (v92)
            {
              v122 = 0;
              v124 = *v115;
              v123 = v115[1];
              v125 = v123 * v124;
              v126 = (v125 & 0xFFFFFFFF00000000) != 0;
              v127 = v115 + v125 + 8;
              do
              {
                *(v121 + 8 + 8 * v122) = ii + (*ii >> 16);
                if (v126)
                {
                  _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v108, v109, v110, v123, v115, v124);
                }

                for (ii = (ii + v118); ii < v127; ii = (ii + v118))
                {
                  if (*(*(v114 + 264) + 8 + 8 * *ii))
                  {
                    break;
                  }
                }

                ++v122;
              }

              while (v122 != v92);
            }
          }

          list_array_tt<method_t,method_list_t,method_list_t_authed_ptr>::validate(v113, v108, v109, v110, v111, v112);
          goto LABEL_133;
        }

LABEL_238:
        _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v79, v80, v81, v87, v85, v88);
      }

LABEL_242:
      _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v79, v80, v81, v87, v85, v88);
    }
  }

LABEL_133:
  if ((*v2 & 0xFFFFFFFF8) == v2)
  {
    addMethod(v2, "initialize", objc_noop_imp, "", 0);
  }

  if (v158)
  {
    if ((v157 & 4) != 0)
    {
      v99 = 2;
    }

    else
    {
      v99 = 4;
    }

    objc::UnattachedCategories::attachToClass(v2, v158, v99);
  }

  if ((v157 & 4) != 0)
  {
    v100 = 2;
  }

  else
  {
    v100 = 1;
  }

  objc::UnattachedCategories::attachToClass(v2, v2, v100);
  return v2;
}

uint64_t remapClass(uint64_t a1)
{
  v1 = a1;
  if (!a1 || byte_1ED3F5988 != 1)
  {
    return v1;
  }

  v6 = 0;
  if (objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc_class *,objc::DenseMapValueInfo<objc_class *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc_class *>>,DisguisedPtr<objc_class>,objc_class *,objc::DenseMapValueInfo<objc_class *>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseMapPair<DisguisedPtr<objc_class>,objc_class *>>::LookupBucketFor<DisguisedPtr<objc_class>>(-a1, &v6))
  {
    v2 = v6;
    if (remappedClasses(BOOL)::remapped_class_map)
    {
LABEL_5:
      v3 = remappedClasses(BOOL)::remapped_class_map;
      goto LABEL_11;
    }
  }

  else
  {
    if (remappedClasses(BOOL)::remapped_class_map)
    {
      v4 = remappedClasses(BOOL)::remapped_class_map;
    }

    else
    {
      v4 = 0;
    }

    v2 = v4 + 16 * dword_1ED3F5980;
    if (remappedClasses(BOOL)::remapped_class_map)
    {
      goto LABEL_5;
    }
  }

  v3 = 0;
LABEL_11:
  if (v3 + 16 * dword_1ED3F5980 != v2)
  {
    return *(v2 + 8);
  }

  return v1;
}

uint64_t addSubclass(uint64_t result, objc_class *a2)
{
  if (!result || !a2)
  {
    return result;
  }

  v3 = result;
  ++objc_debug_realized_class_generation_count;
  *((*(a2 + 4) & 0xF00007FFFFFFFF8) + 0x18) = *((*(result + 32) & 0xF00007FFFFFFFF8) + 0x10);
  *((*(result + 32) & 0xF00007FFFFFFFF8) + 0x10) = a2;
  v4 = *(result + 30);
  if ((v4 & 2) == 0)
  {
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_27:
    atomic_fetch_or_explicit(a2 + 15, 1u, memory_order_relaxed);
    v4 = *(result + 30);
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  atomic_fetch_or_explicit(a2 + 15, 2u, memory_order_relaxed);
  v4 = *(result + 30);
  if (v4)
  {
    goto LABEL_27;
  }

LABEL_5:
  if ((v4 & 0x1000) != 0)
  {
LABEL_6:
    atomic_fetch_or_explicit(a2 + 15, 0x1000u, memory_order_relaxed);
    v4 = *(result + 30);
  }

LABEL_7:
  v5 = *(result + 32) & 4;
  if ((v4 & 0x4000) == 0)
  {
    LODWORD(v5) = v5 + 1;
  }

  v6 = v5 ^ 4;
  if (v4 >= 0)
  {
    v7 = v6 | 0x10;
  }

  else
  {
    v7 = v6;
  }

  if ((*(a2 + 15) & 0x4000) == 0)
  {
    v7 &= 0xFFFFFFFC;
  }

  if ((*(a2 + 4) & 4) == 0)
  {
    v7 &= 0xFFFFFFF3;
  }

  if (*(a2 + 15) >= 0)
  {
    v8 = v7 & 0xFFFFFFEF;
  }

  else
  {
    v8 = v7;
  }

  if (v8)
  {
    result = objc::Scanner::propagateCustomFlags(a2, v8, 1);
  }

  if ((*(*(v3 + 32) & 0xF00007FFFFFFFF8) & 2) != 0)
  {
    result = objc_class::setDisallowPreoptCachesRecursively(a2, "addSubclass");
  }

  else if ((*(*(v3 + 32) & 0xF00007FFFFFFFF8) & 4) != 0 && (*(*(a2 + 4) & 0xF00007FFFFFFFF8) & 4) == 0)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3321888768;
    v20 = ___ZN10objc_class39setDisallowPreoptInlinedSelsRecursivelyEPKc_block_invoke;
    v21 = &__block_descriptor_48_e8_32c69_ZTSKZN10objc_class39setDisallowPreoptInlinedSelsRecursivelyEPKcE3__0_e8_B16__0_8l;
    v22 = a2;
    v23 = "addSubclass";
    v9 = *(gdb_objc_realized_classes + 8);
    if (DisablePreopt)
    {
      v10 = 0;
    }

    else
    {
      v10 = _dyld_objc_class_count();
    }

    v11 = (16 * (v10 + v9)) | 0xF;
    v12 = a2;
    while (1)
    {
      result = (v20)(&v18, v12);
      if (result && (v16 = (v12 + 32), *((*(v12 + 4) & 0xF00007FFFFFFFF8) + 0x10)))
      {
        v17 = 16;
      }

      else
      {
        while (1)
        {
          v16 = (v12 + 32);
          if (v12 == a2 || *((*(v12 + 4) & 0xF00007FFFFFFFF8) + 0x18))
          {
            break;
          }

          if (*(v12 + 1))
          {
            v12 = *(v12 + 1);
          }

          else
          {
            v12 = 0;
          }

          if (!--v11)
          {
            goto LABEL_51;
          }
        }

        if (v12 == a2)
        {
          break;
        }

        v17 = 24;
      }

      v12 = *((*v16 & 0xF00007FFFFFFFF8) + v17);
      if (!--v11)
      {
LABEL_51:
        _objc_fatal("Memory corruption in class list.", v13, v14, v15, v18, v19);
      }
    }
  }

  if ((*(v3 + 30) & 0x2000) != 0 && *(v3 + 8))
  {

    return objc_class::setInstancesRequireRawIsaRecursively(a2, 1);
  }

  return result;
}

void objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_object const>,unsigned long,anonymous namespace::RefcountMapValuePurgeable,objc::DenseMapInfo<DisguisedPtr<objc_object const>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object const>,unsigned long>>,DisguisedPtr<objc_object const>,unsigned long,anonymous namespace::RefcountMapValuePurgeable,objc::DenseMapInfo<DisguisedPtr<objc_object const>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object const>,unsigned long>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  if (*a1)
  {
    v4 = *a1;
  }

  else
  {
    v4 = 0;
  }

  v5 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
  v6 = v5 | (v5 >> 4) | ((v5 | (v5 >> 4)) >> 8);
  v7 = v6 | HIWORD(v6);
  if ((v7 + 1) > 4)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 4;
  }

  *(a1 + 16) = v8;
  v9 = malloc_type_malloc(16 * v8, 0xAC185C46uLL);
  if (v9)
  {
    *a1 = v9;
    *(a1 + 8) = 0;
    if (v4)
    {
      v10 = v9;
LABEL_13:
      v12 = *(a1 + 16);
      if (v12)
      {
        v13 = 0;
        v14 = v12 + 0xFFFFFFFFFFFFFFFLL;
        v15 = v14 & 0xFFFFFFFFFFFFFFFLL;
        v16 = (v14 & 0xFFFFFFFFFFFFFFFLL) - (v14 & 1) + 2;
        v17 = vdupq_n_s64(v15);
        v18 = v10 + 16;
        do
        {
          v19 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(vdupq_n_s64(v13), xmmword_1800DA160)));
          if (v19.i8[0])
          {
            *(v18 - 2) = 1;
          }

          if (v19.i8[4])
          {
            *v18 = 1;
          }

          v13 += 2;
          v18 += 4;
        }

        while (v16 != v13);
      }

      if (v3)
      {
        v20 = 16 * v3;
        v21 = (v4 + 8);
        do
        {
          if (*v21)
          {
            v22 = *(v21 - 1);
            if ((v22 - 1) >= 2)
            {
              v33 = 0;
              v23 = v33;
              v24 = *v21;
              *v33 = *(v21 - 1);
              *(v23 + 1) = v24;
              ++*(a1 + 8);
            }
          }

          v21 += 2;
          v20 -= 16;
        }

        while (v20);
      }

      free(v4);
      return;
    }

    v11 = v9;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    *a1 = 0;
    *(a1 + 8) = 0;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = 0;
    v27 = v25 + 0xFFFFFFFFFFFFFFFLL;
    v28 = v27 & 0xFFFFFFFFFFFFFFFLL;
    v29 = (v27 & 0xFFFFFFFFFFFFFFFLL) - (v27 & 1) + 2;
    v30 = vdupq_n_s64(v28);
    v31 = v11 + 16;
    do
    {
      v32 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(vdupq_n_s64(v26), xmmword_1800DA160)));
      if (v32.i8[0])
      {
        *(v31 - 2) = 1;
      }

      if (v32.i8[4])
      {
        *v31 = 1;
      }

      v26 += 2;
      v31 += 4;
    }

    while (v29 != v26);
  }
}

void objc_moveWeak(id *to, id *from)
{
  v4 = *from;
  if (*from)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    while (1)
    {
      v7 = 0;
      atomic_compare_exchange_strong_explicit(v8, &v7, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
      if (v7)
      {
        os_unfair_lock_lock_with_options();
      }

      if (*from == v4)
      {
        break;
      }

      v9 = *(StatusReg + 24);
      v10 = v9;
      atomic_compare_exchange_strong_explicit(v8, &v10, 0, memory_order_release, memory_order_relaxed);
      if (v10 != v9)
      {
      }

      v4 = *from;
      if (!*from)
      {
        goto LABEL_9;
      }
    }

    weak_unregister_no_lock(v8 + 4, v4, from, v2);
    weak_register_no_lock(v8 + 4, v4, to, 2);
    *to = v4;
    *from = 0;
    v11 = *(StatusReg + 24);
    v12 = v11;
    atomic_compare_exchange_strong_explicit(v8, &v12, 0, memory_order_release, memory_order_relaxed);
    if (v12 != v11)
    {
    }
  }

  else
  {
LABEL_9:
    *to = 0;
  }
}

uint64_t _objc_rootTryRetain(objc_object *a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    return 1;
  }

  isa = a1->isa;
  if (a1->isa)
  {
    while (1)
    {
      v2 = isa >> 55 != 0;
      if (!(isa >> 55))
      {
        return v2;
      }

      if (isa >= 0xFF00000000000000)
      {
        return objc_object::rootRetain_overflow(a1, 1) != 0;
      }

      v3 = isa;
      atomic_compare_exchange_strong_explicit(a1, &v3, isa + 0x100000000000000, memory_order_relaxed, memory_order_relaxed);
      if (v3 == isa)
      {
        return 1;
      }

      isa = v3;
      if ((v3 & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  if ((*((isa & 0xFFFFFFFF8) + 0x1E) & 4) != 0)
  {
    return 1;
  }

LABEL_7:

  return objc_object::sidetable_tryRetain(a1);
}

uint64_t cache_t::allocateBuckets(cache_t *this)
{
  if (PrintCaches)
  {
    v1 = __clz(this) ^ 0x1F;
    if (this < 2)
    {
      v1 = 0;
    }

    if (v1 <= 0xF)
    {
      ++cache_counts[v1];
    }

    ++cache_allocations;
  }

  return malloc_type_zone_malloc_with_options();
}

void cache_t::collect_free(uint64_t a1, unsigned int a2)
{
  if (PrintCaches)
  {
    v4 = __clz(a2) ^ 0x1F;
    if (a2 < 2)
    {
      v4 = 0;
    }

    if (v4 <= 0xF)
    {
      --cache_counts[v4];
    }
  }

  if (_garbage_make_room(void)::first)
  {
    v5 = garbage_count;
    v6 = garbage_refs;
    if (garbage_count != garbage_max)
    {
      goto LABEL_11;
    }

    v6 = malloc_type_realloc(garbage_refs, 16 * garbage_count, 0x80040B8603338uLL);
    garbage_refs = v6;
    v7 = 2 * garbage_max;
  }

  else
  {
    _garbage_make_room(void)::first = 1;
    v6 = malloc_type_malloc(0x400uLL, 0x80040B8603338uLL);
    garbage_refs = v6;
    v7 = 128;
  }

  garbage_max = v7;
  v5 = garbage_count;
LABEL_11:
  garbage_byte_size += 16 * a2;
  garbage_count = v5 + 1;
  v6[v5] = a1;

  cache_t::collectNolock(0);
}

void cache_t::collectNolock(cache_t *this)
{
  if (garbage_byte_size >> 15)
  {
    v1 = 0;
  }

  else
  {
    v1 = this == 0;
  }

  if (v1)
  {
    return;
  }

  if (this)
  {
      ;
    }

LABEL_13:
    if (PrintCaches)
    {
      _objc_inform("CACHES: COLLECTING %zu bytes (%zu allocations, %zu collections)", garbage_byte_size, cache_allocations, ++cache_collections);
    }

    v2 = garbage_count;
    if (DebugScribbleCaches)
    {
      if (!garbage_count)
      {
LABEL_25:
        garbage_count = 0;
        garbage_byte_size = 0;
        if (PrintCaches)
        {
          v9 = 0;
          v10 = 0;
          v11 = 0;
          do
          {
            v12 = cache_counts[v9];
            if (v12)
            {
              _objc_inform("CACHES: %4d slots: %4d caches, %6zu bytes", 1 << v9, v12, 16 * (v12 << v9));
              v11 += v12;
              v10 += 16 * (v12 << v9);
            }

            ++v9;
          }

          while (v9 != 16);
          _objc_inform("CACHES:      total: %4zu caches, %6zu bytes", v11, v10);
        }

        return;
      }

      do
      {
        --v2;
        v3 = *(garbage_refs + 8 * v2);
        v4 = malloc_size(v3);
        if (v4 >= 0x10)
        {
          v5 = v4 >> 4;
          v6 = v3;
          do
          {
            *v6 = v3;
            v6 += 2;
            --v5;
          }

          while (v5);
        }
      }

      while (v2);
      v2 = garbage_count;
    }

    if (v2)
    {
      v7 = garbage_refs - 8;
      do
      {
        v8 = *(v7 + 8 * v2);
        *(v7 + 8 * v2) = 0;
        free(v8);
        --v2;
      }

      while (v2);
    }

    goto LABEL_25;
  }

  if (!_collecting_in_critical())
  {
    goto LABEL_13;
  }

  if (PrintCaches)
  {

    _objc_inform("CACHES: not collecting; objc_msgSend in progress");
  }
}

void (*resolveMethod_locked(objc_object *a1, objc_selector *a2, objc_class *a3, unsigned int a4))(void)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v9 = *(StatusReg + 24);
  v10 = v9;
  atomic_compare_exchange_strong_explicit(runtimeLock, &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != v9)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  if ((*(a3 + 15) & 4) == 0)
  {
    goto LABEL_12;
  }

  if (lookUpImpOrNilTryCache(a1, "resolveClassMethod:", a3, 0))
  {
    v11 = 0;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v11, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v11)
    {
      os_unfair_lock_lock_with_options();
    }

    MaybeUnrealizedNonMetaClass = getMaybeUnrealizedNonMetaClass(a3, a1);
    v13 = *(StatusReg + 24);
    v14 = v13;
    atomic_compare_exchange_strong_explicit(runtimeLock, &v14, 0, memory_order_release, memory_order_relaxed);
    if (v14 != v13)
    {
      os_unfair_lock_unlock(runtimeLock);
    }

    v15 = [(objc_class *)MaybeUnrealizedNonMetaClass resolveClassMethod:a2];
    v16 = lookUpImpOrNilTryCache(a1, a2, a3, 0);
    if (v15 && PrintResolving)
    {
      if (v16)
      {
        objc_class::nameForLogging(a3);
        _objc_inform("RESOLVE: method %c[%s %s] dynamically resolved to %p");
      }

      else
      {
        objc_class::nameForLogging(a3);
        objc_class::nameForLogging(a3);
        _objc_inform("RESOLVE: +[%s resolveClassMethod:%s] returned YES, but no new implementation of %c[%s %s] was found");
      }
    }
  }

  if (!lookUpImpOrNilTryCache(a1, a2, a3, 0))
  {
LABEL_12:
    if ((*a3 & 0x7FFFFFFFFFFFF8) != 0)
    {
      v17 = (*a3 & 0x7FFFFFFFFFFFF8);
    }

    else
    {
      v17 = 0;
    }

    if (lookUpImpOrNilTryCache(a3, "resolveInstanceMethod:", v17, 0))
    {
      v18 = [(objc_class *)a3 resolveInstanceMethod:a2];
      v19 = lookUpImpOrNilTryCache(a1, a2, a3, 0);
      if (v18)
      {
        if (PrintResolving)
        {
          if (v19)
          {
            objc_class::nameForLogging(a3);
            _objc_inform("RESOLVE: method %c[%s %s] dynamically resolved to %p");
          }

          else
          {
            objc_class::nameForLogging(a3);
            objc_class::nameForLogging(a3);
            _objc_inform("RESOLVE: +[%s resolveInstanceMethod:%s] returned YES, but no new implementation of %c[%s %s] was found");
          }
        }
      }
    }
  }

  return lookUpImpOrForwardTryCache(a1, a2, a3, a4);
}

void sub_1800AE310(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void (*lookUpImpOrNilTryCache(objc_object *a1, objc_selector *a2, objc_class *a3, int a4))(void)
{
  v8 = *(*(a3 + 4) & 0xF00007FFFFFFFF8);
  if ((v8 & 1) == 0)
  {
    v8 = *(*((*a3 & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
  }

  if ((v8 & 0x20000000) != 0 && ((result = cache_getImp(a3, a2, 0)) != 0 || (*(a3 + 2) & 1) != 0 && (result = cache_getImp(a3 + *((*(a3 + 2) & 0x7FFFFFFFFFFFFELL) - 16), a2, 0)) != 0))
  {
    if (result == _objc_msgForward_impcache)
    {
      return 0;
    }
  }

  else
  {

    return lookUpImpOrForward(a1, a2, a3, a4 | 4u);
  }

  return result;
}

void weak_resize(__int128 **a1, size_t count)
{
  v4 = a1[2];
  v5 = *a1;
  v6 = malloc_type_calloc(count, 0x28uLL, 0x10A20404071C379uLL);
  a1[2] = (count - 1);
  a1[3] = 0;
  *a1 = v6;
  a1[1] = 0;
  if (v5)
  {
    if (v4)
    {
      v9 = v4 + 1;
    }

    else
    {
      v9 = 0;
    }

    if (v9 >= 1)
    {
      v10 = (v5 + 40 * v9);
      v11 = v5;
      do
      {
        if (*v11)
        {
          weak_entry_insert(a1, v11, v7, v8);
        }

        v11 = (v11 + 40);
      }

      while (v11 < v10);
    }

    free(v5);
  }
}

void AutoreleasePoolPage::kill(AutoreleasePoolPage *this)
{
  v2 = this;
  do
  {
    v3 = v2;
    v2 = *(v2 + 5);
  }

  while (v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  do
  {
    v5 = *(v3 + 4);
    if (v5)
    {
      *(v5 + 5) = 0;
    }

    if (*v3 != -1583242847 || strncmp(v3 + 4, "AUTORELEASE!", 0xCuLL) || *(v3 + 3) != *StatusReg)
    {
      AutoreleasePoolPage::busted_die(v3);
    }

    *v3 = 0;
    *(v3 + 1) = 0;
    free(v3);
    v6 = v3 == this;
    v3 = v5;
  }

  while (!v6);
}

void sub_1800AE5C8(_Unwind_Exception *a1)
{
  *v1 = 0;
  v1[1] = 0;
  _Unwind_Resume(a1);
}

void objc_tls_direct_base<AutoreleasePoolPage *,(tls_key)3,AutoreleasePoolPage::HotPageDealloc>::dtor_(AutoreleasePoolPage **this)
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  while (1)
  {
    v3 = (StatusReg[44] & 0xFFFFFFFFFFFFFFFCLL);
    if (!v3)
    {
      break;
    }

    StatusReg[44] = 0;
    StatusReg[45] = 0;
  }

  if (this != 1)
  {
    if (this)
    {
      if (*this != -1583242847)
      {
        AutoreleasePoolPage::busted_die(this);
      }

      v4 = StatusReg + 43;
      StatusReg[43] = this;
      while (1)
      {
        v5 = this[4];
        if (!v5)
        {
          break;
        }

        this = this[4];
        if (*v5 != -1583242847)
        {
          AutoreleasePoolPage::busted_die(v5);
        }
      }

      if (this[2] != (this + 7))
      {
        objc_autoreleasePoolPop(this + 7);
      }

      if (!(DebugMissingPools | DebugPoolAllocation))
      {
        AutoreleasePoolPage::kill(this);
      }
    }

    else
    {
      v4 = StatusReg + 43;
    }

    *v4 = 0;
  }
}

void tls_autoptr_direct_impl<_objc_pthread_data,(tls_key)0>::dtor_(char *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = v2[1];
      if (v3)
      {
        free(v3);
      }

      free(v2);
    }

    v4 = *(a1 + 1);
    if (v4)
    {
      free(v4);
    }

    for (i = 24; i != 56; i += 8)
    {
      v6 = *&a1[i];
      if (v6)
      {
        free(v6);
      }
    }

    free(*(a1 + 7));

    free(a1);
  }
}

BOOL objc_isUniquelyReferenced(objc_object *this)
{
  if (this < 1)
  {
    return 0;
  }

  if ((*((this->isa & 0xFFFFFFFF8) + 0x20) & 4) != 0)
  {
    objc_object::sidetable_lock(this);
    isa = this->isa;
    if (this->isa)
    {
      v6 = (isa >> 56);
      if ((isa & 0x80000000000000) != 0)
      {
        v6 += objc_object::sidetable_getExtraRC_nolock(this);
      }

      v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v9 = v8;
      if (v9 != v8)
      {
      }

      return v6 == 1;
    }

    v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v4 = v3;
    if (v4 != v3)
    {
    }

    v5 = objc_object::sidetable_retainCount(this);
  }

  else
  {
    v5 = [(objc_object *)this retainCount];
  }

  v6 = v5;
  return v6 == 1;
}

const char *__cdecl protocol_getName(Protocol *p)
{
  if (p)
  {
    return protocol_t::demangledName(p);
  }

  else
  {
    return "nil";
  }
}

const char *protocol_t::demangledName(atomic_ullong *this)
{
  v2 = (this + 10);
  if ((this + *(this + 16)) <= this + 10)
  {
    v2 = (this + 1);
  }

  else if (!*v2)
  {
    v3 = copySwiftV1DemangledName(this[1], 1);
    v4 = 0;
    if (v3)
    {
      atomic_compare_exchange_strong(v2, &v4, v3);
      if (v4)
      {
        free(v3);
      }
    }

    else
    {
      atomic_compare_exchange_strong(this + 10, &v4, this[1]);
    }
  }

  return *v2;
}

objc_method_description *__cdecl protocol_copyMethodDescriptionList(Protocol *p, BOOL isRequiredMethod, BOOL isInstanceMethod, unsigned int *outCount)
{
  if (p)
  {
    v7 = isInstanceMethod;
    v8 = isRequiredMethod;
    v10 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(runtimeLock, &v10, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v10)
    {
      os_unfair_lock_lock_with_options();
    }

    if (fixed_up_protocol)
    {
      v12 = -1073741824;
    }

    else
    {
      v12 = 0x40000000;
    }

    if ((HIDWORD(p[8].super.isa) & 0xC0000000) != v12)
    {
      fixupProtocol(p, 0xFFFFFFFFLL, 0, 0, v4, v5);
    }

    v13 = 32;
    if (v7)
    {
      v13 = 24;
    }

    v14 = 48;
    if (v7)
    {
      v14 = 40;
    }

    if (!v8)
    {
      v13 = v14;
    }

    v15 = *(&p->super.isa + v13);
    if (v15)
    {
      v16 = malloc_type_calloc((v15[1] + 1), 0x10uLL, 0x90040C859B4A5uLL);
      v17 = *v15;
      entsize_list_tt<method_t,method_list_t,4294901763u,method_t::pointer_modifier>::end(v15, v18, v19, v20);
      v23 = v21;
      v24 = v17 >> 31;
      if (v15 < 0)
      {
        v24 = 2;
      }

      v25 = v24 | (v15 + 2) & 0xFFFFFFFFFFFFFFFCLL;
      if (v25 == v21)
      {
        v26 = 0;
        if (!outCount)
        {
LABEL_25:
          v27 = *(StatusReg + 24);
          v28 = v27;
          atomic_compare_exchange_strong_explicit(runtimeLock, &v28, 0, memory_order_release, memory_order_relaxed);
          if (v28 != v27)
          {
            os_unfair_lock_unlock(runtimeLock);
          }

          return v16;
        }
      }

      else
      {
        v38 = StatusReg;
        v26 = 0;
        v30 = v17 & 0xFFFC;
        v31 = dataSegmentsRanges;
        v32 = *algn_1ED3F62F8;
        v33 = v24 | (v15 + 2) & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          if ((v25 & 3) > 1)
          {
            if ((v25 & 3) == 2)
            {
              v22 = *(v25 & 0xFFFFFFFFFFFFFFFCLL);
            }
          }

          else if ((v25 & 3) != 0)
          {
            v34 = v25 & 0xFFFFFFFFFFFFFFFCLL;
            v35 = *(v25 & 0xFFFFFFFFFFFFFFFCLL);
            if (v31 <= (v25 & 0xFFFFFFFFFFFFFFFCLL) && v32 > v34)
            {
              v22 = &byte_1FA920D78[v35];
            }

            else
            {
              v22 = *(v34 + v35);
            }
          }

          else
          {
            v22 = *(v25 & 0xFFFFFFFFFFFFFFFCLL);
          }

          v37 = &v16[v26];
          v37->name = v22;
          v37->types = method_t::types(v33);
          ++v26;
          v33 += v30;
          v25 += v30;
        }

        while (v33 != v23);
        StatusReg = v38;
        if (!outCount)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v26 = 0;
      v16 = 0;
      if (!outCount)
      {
        goto LABEL_25;
      }
    }

    *outCount = v26;
    goto LABEL_25;
  }

  v16 = 0;
  if (outCount)
  {
    *outCount = 0;
  }

  return v16;
}

void sub_1800AEB48(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit(v1, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock(runtimeLock);
  }

  _Unwind_Resume(exception_object);
}

void _objc_fatalv(char *a1, va_list a2, const char *a3, char *a4)
{
  v8 = 0;
  vasprintf(&v8, a1, a2);
  v7 = 0;
  v4 = getpid();
  asprintf(&v7, "objc[%d]: %s\n", v4, v8);
  _objc_syslog(v7);
  if (!DebugDontCrash)
  {
    _objc_crashlog(v8);
    abort_with_reason();
  }

  v6 = 0;
  v5 = getpid();
  asprintf(&v6, "objc[%d]: HALTED\n", v5);
  _objc_syslog(v6);
  _Exit(1);
}

objc_object *objc_object::sidetable_retain(objc_object *this, char a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = 0;
    atomic_compare_exchange_strong_explicit(v3, &v4, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      os_unfair_lock_lock_with_options();
    }
  }

  v9 = -this;
  if ((*v5 & 0x8000000000000000) == 0)
  {
    *v5 += 4;
  }

  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v7 = v6;
  atomic_compare_exchange_strong_explicit(v3, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != v6)
  {
    os_unfair_lock_unlock(v3);
  }

  return this;
}

char *objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_object const>,unsigned long,anonymous namespace::RefcountMapValuePurgeable,objc::DenseMapInfo<DisguisedPtr<objc_object const>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object const>,unsigned long>>,DisguisedPtr<objc_object const>,unsigned long,anonymous namespace::RefcountMapValuePurgeable,objc::DenseMapInfo<DisguisedPtr<objc_object const>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object const>,unsigned long>>::try_emplace<unsigned long>(uint64_t a1, int32x2_t *a2, uint64_t *a3, uint64_t *a4)
{
  v14 = 0;
  v9 = v14;
  if (result)
  {
    v10 = 0;
    v11 = *a2;
  }

  else
  {
    v9 = result;
    v13 = *a4;
    *result = *a3;
    *(result + 1) = v13;
    v11 = *a2;
    v10 = 1;
  }

  v12 = &v11[16 * a2[2].u32[0]];
  *a1 = v9;
  *(a1 + 8) = v12;
  *(a1 + 16) = v10;
  return result;
}

BOOL objc_object::sidetable_release(objc_object *this, char a2, int a3)
{
  if ((a2 & 1) == 0)
  {
    v6 = 0;
    atomic_compare_exchange_strong_explicit(v5, &v6, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v6)
    {
      os_unfair_lock_lock_with_options();
    }
  }

  v15 = -this;
  v14 = 2;
  if (v17)
  {
    v7 = 1;
    goto LABEL_11;
  }

  v8 = *(v16 + 8);
  v7 = v8 < 2;
  if (v8 <= 1)
  {
    v9 = v8 | 2;
LABEL_10:
    *(v16 + 8) = v9;
    goto LABEL_11;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v8 - 4;
    goto LABEL_10;
  }

  v7 = 0;
LABEL_11:
  v10 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v11 = v10;
  atomic_compare_exchange_strong_explicit(v5, &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != v10)
  {
    os_unfair_lock_unlock(v5);
  }

  if ((v7 & a3) == 1)
  {
    if ((*((this->isa & 0xFFFFFFFF8) + 0x1E) & 0x1000) != 0)
    {
      v12 = &selRef__objc_initiateDealloc;
    }

    else
    {
      v12 = &selRef_dealloc;
    }

    [this *v12];
  }

  return v7;
}

void AutoreleasePoolPage::busted_die(const void **this)
{
  AutoreleasePoolPage::busted<void (*)(char const*,...)>(this, _objc_fatal);
  __break(1u);
  JUMPOUT(0x1800AEF40);
}

void fixupMethodList(uint64_t a1, uint64_t a2, const char *a3, char *a4, void **a5)
{
  if (!*(a1 + 4))
  {
    return;
  }

  v5 = a3;
  v7 = *a1;
  if ((*a1 >= 0 || a1 <= -1) && (*a1 & 1) == 0)
  {
    v11 = a4;
    v12 = a2;
    v13 = 0;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    atomic_compare_exchange_strong_explicit(selLock, &v13, *(StatusReg + 24), memory_order_acquire, memory_order_acquire);
    if (v13)
    {
      os_unfair_lock_lock_with_options();
    }

    v49 = v11;
    v50 = v5;
    if (v11)
    {
      *a5 = malloc_type_malloc(8 * *(a1 + 4), 0x50040EE9192B6uLL);
      v14 = *a1;
      entsize_list_tt<method_t,method_list_t,4294901763u,method_t::pointer_modifier>::end(a1, v15, v16, v17);
      v18 = a2;
      v19 = v14 >> 31;
      if (a1 < 0)
      {
        v19 = 2;
      }

      v20 = v19 | (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
      if (v20 != a2)
      {
        v21 = v14 & 0xFFFC;
        v22 = *algn_1ED3F62F8;
        v52 = dataSegmentsRanges;
        v23 = v19 | (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v24 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if ((v20 & 3) != 0)
          {
            if ((v20 & 3) == 2)
            {
              if (*v24)
              {
                v25 = *v24;
              }

              else
              {
                v25 = 0;
              }
            }

            else
            {
              v26 = *v24;
              if (v52 <= v24 && v22 > v24)
              {
                v25 = &byte_1FA920D78[v26];
              }

              else
              {
                v25 = *(v24 + v26);
              }
            }
          }

          else
          {
            v25 = *v24;
          }

          v28 = *a1;
          *(*a5 + ((v20 - a1) / (v28 & 0xFFFCu))) = __sel_registerName(v25, 0, v12);
          v23 += v21;
          v20 += v21;
        }

        while (v23 != v18);
      }
    }

    else
    {
      v29 = *a1;
      if (a5)
      {
        entsize_list_tt<method_t,method_list_t,4294901763u,method_t::pointer_modifier>::end(a1, a2, a3, a4);
        v30 = a2;
        v31 = v29 >> 31;
        if (a1 < 0)
        {
          v31 = 2;
        }

        v32 = v31 | (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
        if (v32 != a2)
        {
          v33 = v29 & 0xFFFC;
          v34 = v32 - a1;
          do
          {
            method_t::setName(v32, *(*a5 + (v34 / (*a1 & 0xFFFCu))));
            v32 += v33;
            v34 += v33;
          }

          while (v32 != v30);
        }
      }

      else
      {
        entsize_list_tt<method_t,method_list_t,4294901763u,method_t::pointer_modifier>::end(a1, a2, a3, a4);
        v35 = a2;
        v36 = (v29 >> 31) & 1;
        if (a1 < 0)
        {
          v36 = 2;
        }

        v37 = v36 | (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
        if (v37 != a2)
        {
          v38 = v29 & 0xFFFC;
          v39 = dataSegmentsRanges;
          v40 = *algn_1ED3F62F8;
          v41 = v36 | (a1 + 8) & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v42 = (v37 & 0xFFFFFFFFFFFFFFFCLL);
            if ((v37 & 3) != 0)
            {
              if ((v37 & 3) == 2)
              {
                if (*v42)
                {
                  v43 = *v42;
                }

                else
                {
                  v43 = 0;
                }
              }

              else
              {
                v44 = *v42;
                if (v39 <= v42 && v40 > v42)
                {
                  v43 = &byte_1FA920D78[v44];
                }

                else
                {
                  v43 = *(v42 + v44);
                }
              }
            }

            else
            {
              v43 = *v42;
            }

            v46 = __sel_registerName(v43, 0, v12);
            method_t::setName(v41, v46);
            v41 += v38;
            v37 += v38;
          }

          while (v41 != v35);
        }
      }
    }

    v47 = *(StatusReg + 24);
    v48 = v47;
    atomic_compare_exchange_strong_explicit(selLock, &v48, 0, memory_order_release, memory_order_relaxed);
    if (v48 != v47)
    {
      os_unfair_lock_unlock(selLock);
    }

    v5 = v50;
    if (v49)
    {
      return;
    }

    v7 = *a1;
  }

  if (v5)
  {
    if ((a1 & 0x8000000000000000) == 0 && v7 < 0)
    {
      return;
    }

    if ((v7 & 0xFFFC) == 0x18)
    {
      method_list_t::sortBySELAddress(a1, a2, a3, a4);
      v7 = *a1;
    }
  }

  if (a1 < 0 || (v7 & 0x80000000) == 0)
  {
    *a1 = v7 | 3;
  }
}

void sub_1800AF2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a11 + 24);
  v13 = v12;
  atomic_compare_exchange_strong_explicit(selLock, &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 != v12)
  {
    os_unfair_lock_unlock(selLock);
  }

  _Unwind_Resume(exception_object);
}

unint64_t addMethod(objc_class *a1, objc_selector *a2, void (*a3)(void), const char *a4, char a5)
{
  if ((*a1 - 1) < 0xF || (*(a1 + 4) & 0x8000000000000000) == 0 || (v10 = *((*(a1 + 4) & 0xF00007FFFFFFFF8) + 4), qword_1ED3F6308 <= v10) || (*(qword_1ED3F6300 + 16 * v10) <= a1 ? (v11 = *(qword_1ED3F6300 + 16 * v10 + 8) > a1) : (v11 = 0), !v11))
  {
    if ((objc::allocatedClasses + 8 * qword_1ED3F6160) == objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>,DisguisedPtr<objc_class>,objc::detail::DenseSetEmpty,objc::DenseMapValueInfo<objc::detail::DenseSetEmpty>,objc::DenseMapInfo<DisguisedPtr<objc_class>>,objc::detail::DenseSetPair<DisguisedPtr<objc_class>>>::find(-a1) && (dataSegmentsContain(a1, v23, v24, v25) & 1) == 0)
    {
      _objc_fatal("Attempt to use unknown class %p.", v26, v27, v28, a1);
    }
  }

  realizeAndInitializeIfNeeded_locked(0, a1, 0);
  MethodNoSuper_nolock = getMethodNoSuper_nolock(a1, a2, v12, v13);
  if (MethodNoSuper_nolock)
  {
    if (a5)
    {

      return _method_setImplementation(a1, MethodNoSuper_nolock, a3);
    }

    else
    {

      return method_t::imp(MethodNoSuper_nolock, 0);
    }
  }

  else
  {
    v16 = (malloc_type_calloc(0x20uLL, 1uLL, 0xD985931uLL) | 0x8000000000000000);
    *v16 = 0x10000001BLL;
    v17 = ((v16 + 8) & 0xFFFFFFFFFFFFFFFCLL);
    if (a2)
    {
      v18 = a2;
    }

    else
    {
      v18 = 0;
    }

    *v17 = v18;
    v19 = strlen(a4);
    if ((_dyld_is_memory_immutable() & 1) == 0)
    {
      v20 = malloc_type_malloc(v19 + 1, 0x9620E368uLL);
      memcpy(v20, a4, v19 + 1);
      a4 = v20;
    }

    if (a4)
    {
      v21 = a4;
    }

    else
    {
      v21 = 0;
    }

    v17[1] = v21;
    if (a3)
    {
      v22 = a3;
    }

    else
    {
      v22 = 0;
    }

    v17[2] = v22;
    addMethods_finish(a1, v16);
    return 0;
  }
}

void prepareMethodLists(objc_class *a1, unint64_t *a2, int a3, char a4, uint64_t a5, const char *a6)
{
  if (!a3)
  {
    return;
  }

  if ((a4 & 1) == 0)
  {
    v10 = *(a1 + 2);
    if ((v10 & 1) != 0 || (v10 != &_objc_empty_cache ? (v11 = HIWORD(*(a1 + 2)) == 0) : (v11 = 0), v11))
    {
      objc_class::setDisallowPreoptCachesRecursively(a1, a6);
    }

    else if ((*(*(a1 + 4) & 0xF00007FFFFFFFF8) & 4) == 0)
    {
      if (a3 <= 0)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }
  }

  if (a3 < 1)
  {
    goto LABEL_17;
  }

LABEL_13:
  v12 = a3;
  v13 = a2;
  do
  {
    if ((~**v13 & 3) != 0)
    {
      fixupMethodList(*v13, a5, 1, 0, 0);
    }

    ++v13;
    --v12;
  }

  while (v12);
LABEL_17:
  v14 = *(*(a1 + 4) & 0xF00007FFFFFFFF8);
  if ((v14 & 1) == 0)
  {
    v14 = *(*((*a1 & 0xFFFFFFFF8) + 0x20) & 0xF00007FFFFFFFF8);
  }

  if ((v14 & 0x20000000) != 0 && a3 >= 1)
  {
    v15 = 0;
    v16 = &a2[a3];
    do
    {
      v18 = *a2++;
      v17 = v18;
      v19 = *v18;
      if ((v18 & 0x8000000000000000) != 0)
      {
        v41 = v19 & 0xFFFC;
        v42 = *(v17 + 4);
        v43 = v42 * v41;
        if ((v43 & 0xFFFFFFFF00000000) != 0)
        {
          _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v15, "_tryRetain", "_isDeallocating", "retainCount", "allowsWeakReference", "retainWeakReference", v42, v17, v41);
        }

        v44 = v17 + 8;
        v45 = (v44 + v43) & 0xFFFFFFFFFFFFFFFCLL;
        if ((v44 & 0xFFFFFFFFFFFFFFFCLL) != v45)
        {
          v46 = v45 | 2;
          v47 = v44 & 0xFFFFFFFFFFFFFFFCLL | 2;
          do
          {
            v48 = v47;
            while (1)
            {
              v49 = *(v47 & 0xFFFFFFFFFFFFFFFCLL);
              if ((objc::InterestingSelectorZeroes & v49) == 0 && (objc::InterestingSelectorOnes & v49) == objc::InterestingSelectorOnes)
              {
                break;
              }

              v48 += v41;
              v47 += v41;
              if (v48 == v46)
              {
                goto LABEL_83;
              }
            }

            if ("alloc" == v49 || "allocWithZone:" == v49)
            {
              v15 = v15 | 1;
            }

            else if ("retain" == v49 || "release" == v49 || "autorelease" == v49 || "_tryRetain" == v49 || "_isDeallocating" == v49 || "retainCount" == v49 || "allowsWeakReference" == v49 || "retainWeakReference" == v49)
            {
              v15 = v15 | 4;
            }

            else if ("respondsToSelector:" == v49 || "isKindOfClass:" == v49 || "class" == v49 || "self" == v49 || &sel_new == v49)
            {
              v15 = v15 | 0x10;
            }

            else
            {
              v15 = v15;
            }

            if (v15 == 21)
            {
              break;
            }

            v47 = v48 + v41;
          }

          while (v48 + v41 != v46);
        }
      }

      else if (v19 < 0)
      {
        v20 = v19 & 0xFFFC;
        v21 = *(v17 + 4);
        v54 = v21 * v20;
        if (dataSegmentsRanges <= v17 && *algn_1ED3F62F8 > v17)
        {
          if ((v54 & 0xFFFFFFFF00000000) != 0)
          {
LABEL_247:
            _objc_fatal("entsize_list_tt overflow: index %u in list %p with entsize %u", v15, "_tryRetain", "_isDeallocating", "retainCount", "allowsWeakReference", "retainWeakReference", v21, v17, v20);
          }

          v76 = v17 + 8;
          v77 = v76 & 0xFFFFFFFFFFFFFFFCLL;
          v78 = (v76 + v54) & 0xFFFFFFFFFFFFFFFCLL;
          if (v77 != v78)
          {
            v79 = v78 | 1;
            v80 = v77 | 1;
            do
            {
              v81 = v80;
              while (1)
              {
                v82 = &byte_1FA920D78[*(v80 & 0xFFFFFFFFFFFFFFFCLL)];
                if ((v82 & objc::InterestingSelectorZeroes) == 0 && (objc::InterestingSelectorOnes & v82) == objc::InterestingSelectorOnes)
                {
                  break;
                }

                v81 += v20;
                v80 += v20;
                if (v81 == v79)
                {
                  goto LABEL_83;
                }
              }

              if ("alloc" == v82 || "allocWithZone:" == v82)
              {
                v15 = v15 | 1;
              }

              else if ("retain" == v82 || "release" == v82 || "autorelease" == v82 || "_tryRetain" == v82 || "_isDeallocating" == v82 || "retainCount" == v82 || "allowsWeakReference" == v82 || "retainWeakReference" == v82)
              {
                v15 = v15 | 4;
              }

              else if ("respondsToSelector:" == v82 || "isKindOfClass:" == v82 || "class" == v82 || "self" == v82 || &sel_new == v82)
              {
                v15 = v15 | 0x10;
              }

              else
              {
                v15 = v15;
              }

              if (v15 == 21)
              {
                break;
              }

              v80 = v81 + v20;
            }

            while (v81 + v20 != v79);
          }
        }

        else
        {
          if ((v54 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_247;
          }

          v56 = v17 + 8;
          v57 = v56 & 0xFFFFFFFFFFFFFFFCLL;
          v58 = (v56 + v54) & 0xFFFFFFFFFFFFFFFCLL;
          if (v57 != v58)
          {
            v59 = v58 | 1;
            v60 = v57 | 1;
            do
            {
              v61 = v60;
              while (1)
              {
                v62 = *((v60 & 0xFFFFFFFFFFFFFFFCLL) + *(v60 & 0xFFFFFFFFFFFFFFFCLL));
                if ((objc::InterestingSelectorZeroes & v62) == 0 && (objc::InterestingSelectorOnes & v62) == objc::InterestingSelectorOnes)
                {
                  break;
                }

                v61 += v20;
                v60 += v20;
                if (v61 == v59)
                {
                  goto LABEL_83;
                }
              }

              if ("alloc" == v62 || "allocWithZone:" == v62)
              {
                v15 = v15 | 1;
              }

              else if ("retain" == v62 || "release" == v62 || "autorelease" == v62 || "_tryRetain" == v62 || "_isDeallocating" == v62 || "retainCount" == v62 || "allowsWeakReference" == v62 || "retainWeakReference" == v62)
              {
                v15 = v15 | 4;
              }

              else if ("respondsToSelector:" == v62 || "isKindOfClass:" == v62 || "class" == v62 || "self" == v62 || &sel_new == v62)
              {
                v15 = v15 | 0x10;
              }

              else
              {
                v15 = v15;
              }

              if (v15 == 21)
              {
                break;
              }

              v60 = v61 + v20;
            }

            while (v60 != v59);
          }
        }
      }

      else
      {
        v20 = v19 & 0xFFFC;
        v21 = *(v17 + 4);
        v22 = v21 * v20;
        if ((v22 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_247;
        }

        v23 = v17 + 8;
        v24 = v23 & 0xFFFFFFFFFFFFFFFCLL;
        v25 = (v23 + v22) & 0xFFFFFFFFFFFFFFFCLL;
        while (v24 != v25)
        {
          v26 = v24;
          while (1)
          {
            v27 = *(v24 & 0xFFFFFFFFFFFFFFFCLL);
            if ((objc::InterestingSelectorZeroes & v27) == 0 && (objc::InterestingSelectorOnes & v27) == objc::InterestingSelectorOnes)
            {
              break;
            }

            v26 += v20;
            v24 += v20;
            if (v26 == v25)
            {
              goto LABEL_83;
            }
          }

          if ("alloc" == v27 || "allocWithZone:" == v27)
          {
            v15 = v15 | 1;
          }

          else
          {
            v30 = "retain" == v27 || "release" == v27;
            v31 = v30 || "autorelease" == v27;
            v32 = v31 || "_tryRetain" == v27;
            v33 = v32 || "_isDeallocating" == v27;
            v34 = v33 || "retainCount" == v27;
            v35 = v34 || "allowsWeakReference" == v27;
            if (v35 || "retainWeakReference" == v27)
            {
              v15 = v15 | 4;
            }

            else
            {
              v37 = "respondsToSelector:" == v27 || "isKindOfClass:" == v27;
              v38 = v37 || "class" == v27;
              v39 = v38 || "self" == v27;
              v40 = v39 || &sel_new == v27;
              v15 = v40 ? v15 | 0x10 : v15;
            }
          }

          if (v15 == 21)
          {
            break;
          }

          v24 = v26 + v20;
        }
      }

LABEL_83:
      ;
    }

    while (a2 < v16);
    if (v15)
    {

      objc::Scanner::propagateCustomFlags(a1, v15, 0);
    }
  }
}

unint64_t objc_class::setInstanceSize(objc_class *this, unsigned int a2)
{
  result = class_rw_t::ro((*(this + 4) & 0xF00007FFFFFFFF8));
  if (*(result + 8) != a2)
  {
    *(result + 8) = a2;
  }

  v5 = (a2 + 15) & 0xFF8;
  if (v5 < a2)
  {
    LOWORD(v5) = 0;
  }

  *(this + 15) = *(this + 15) & 0xF007 | v5;
  return result;
}

void objc::DenseMap<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>::grow(int a1)
{
  v1 = dword_1ED3F5F58;
  if (objc::AssociationsManager::_mapStorage)
  {
    v2 = objc::AssociationsManager::_mapStorage;
  }

  else
  {
    v2 = 0;
  }

  v3 = (a1 - 1) | ((a1 - 1) >> 1) | (((a1 - 1) | ((a1 - 1) >> 1)) >> 2);
  v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
  v5 = v4 | HIWORD(v4);
  if ((v5 + 1) > 4)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 4;
  }

  dword_1ED3F5F58 = v6;
  v7 = malloc_type_malloc(32 * v6, 0xAC185C46uLL);
  if (v7)
  {
    objc::AssociationsManager::_mapStorage = v7;
    if (v2)
    {
      v9 = v7;
LABEL_13:
      if (dword_1ED3F5F58)
      {
        v11 = 0;
        v12 = ((dword_1ED3F5F58 + 0x7FFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFLL) - ((dword_1ED3F5F58 - 1) & 1) + 2;
        v13 = vdupq_n_s64((dword_1ED3F5F58 + 0x7FFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFLL);
        v14 = v9 + 32;
        do
        {
          v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_1800DA160)));
          if (v15.i8[0])
          {
            *(v14 - 4) = 1;
          }

          if (v15.i8[4])
          {
            *v14 = 1;
          }

          v11 += 2;
          v14 += 8;
        }

        while (v12 != v11);
      }

      if (v1)
      {
        v16 = 32 * v1;
        v17 = v2 + 1;
        v18 = (v2 + 1);
        do
        {
          v19 = *(v17 - 1);
          if ((v19 - 1) >= 2)
          {
            v27 = 0;
            objc::DenseMapBase<objc::DenseMap<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>,DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>,objc::DenseMapValueInfo<objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>,objc::DenseMapInfo<DisguisedPtr<objc_object>>,objc::detail::DenseMapPair<DisguisedPtr<objc_object>,objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>>>::LookupBucketFor<DisguisedPtr<objc_object>>(v19, &v27);
            v20 = v27;
            *v27 = *(v17 - 1);
            v20[2] = 0;
            *(v20 + 6) = 0;
            v20[1] = 0;
            objc::DenseMap<void const*,objc::ObjcAssociation,objc::DenseMapValueInfo<objc::ObjcAssociation>,objc::DenseMapInfo<void const*>,objc::detail::DenseMapPair<void const*,objc::ObjcAssociation>>::swap(v20 + 1, v17);
            ++DWORD2(objc::AssociationsManager::_mapStorage);
            if (*v17)
            {
              v21 = *v17;
            }

            else
            {
              v21 = 0;
            }

            free(v21);
          }

          v18 += 32;
          v17 += 4;
          v16 -= 32;
        }

        while (v16);
      }

      free(v2);
      return;
    }

    v10 = v7;
  }

  else
  {
    *&v8 = 0;
    v10 = 0;
    v9 = 0;
    objc::AssociationsManager::_mapStorage = v8;
    if (v2)
    {
      goto LABEL_13;
    }
  }

  if (dword_1ED3F5F58)
  {
    v22 = 0;
    v23 = ((dword_1ED3F5F58 + 0x7FFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFLL) - ((dword_1ED3F5F58 - 1) & 1) + 2;
    v24 = vdupq_n_s64((dword_1ED3F5F58 + 0x7FFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFLL);
    v25 = v10 + 32;
    do
    {
      v26 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v22), xmmword_1800DA160)));
      if (v26.i8[0])
      {
        *(v25 - 4) = 1;
      }

      if (v26.i8[4])
      {
        *v25 = 1;
      }

      v22 += 2;
      v25 += 8;
    }

    while (v23 != v22);
  }
}