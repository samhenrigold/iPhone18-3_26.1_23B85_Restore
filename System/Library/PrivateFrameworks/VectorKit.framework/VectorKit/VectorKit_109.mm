void md::StandardGridMapEngineMode::~StandardGridMapEngineMode(md::StandardGridMapEngineMode *this)
{
  md::MapEngineMode::~MapEngineMode(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t **md::StandardGridMapEngineMode::StandardGridMapEngineMode(uint64_t **this)
{
  v2 = md::MapEngineMode::MapEngineMode(this, 2);
  *v2 = &unk_1F2A1DF30;
  *(v2 + 49) = 1;
  *(v2 + 52) = 25;
  v5 = 512;
  v6 = 51;
  md::MapEngineMode::addRequiredRenderLayers(v2, &v5, 3);
  gdc::LogicExecutionGraphBuilder::addLogic<md::GridLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::AnchorLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::CameraLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::SettingsLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::StyleLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::StandardLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::ElevationLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::LayerDataLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::TileSelectionLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::PendingSceneLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::ResolvedSceneLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::LabelsLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::LoadingStatusLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::GeometryLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::MapZoomLevelStyleLogic>((this + 29));
  v4 = 28;
  md::MapEngineMode::addOptionalMapDataTypes(this, &v4, 1);
  return this;
}

uint64_t md::DebugConsoleManager::console(uint64_t *a1, int a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  v6 = a2;
  if (v5 <= a2)
  {
    v7 = a2 + 1;
    v8 = v7 - v5;
    if (v7 <= v5)
    {
      if (a2 + 1 < v5)
      {
        v12 = v3 + 16 * v7;
        while (v4 != v12)
        {
          v13 = *(v4 - 8);
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v13);
          }

          v4 -= 16;
        }

        a1[1] = v12;
      }
    }

    else
    {
      v9 = a1[2];
      if (v8 > (v9 - v4) >> 4)
      {
        if (a2 > -2)
        {
          v10 = v9 - v3;
          if (v10 >> 3 > v7)
          {
            v7 = v10 >> 3;
          }

          if (v10 >= 0x7FFFFFFFFFFFFFF0)
          {
            v11 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v11 = v7;
          }

          if (!(v11 >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(a1[1], 16 * v8);
      a1[1] = v4 + 16 * v8;
    }

    v3 = *a1;
  }

  result = *(v3 + 16 * v6);
  if (!result)
  {
    operator new();
  }

  return result;
}

void md::DebugConsole::~DebugConsole(md::DebugConsole *this)
{
  ggl::DebugConsole::~DebugConsole(this);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::DebugConsole>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1DF78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::FontOptions>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void std::__shared_ptr_emplace<md::FontOptions>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1DFD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::TextDataString::generateGlyphInfos(unsigned __int8 *a1, const grl::FontKey **a2, float a3)
{
  characters[5] = *MEMORY[0x1E69E9840];
  v3 = atomic_load(a1 + 130);
  if ((v3 & 1) == 0)
  {
    v5 = a1;
    v6 = *a1;
    v7 = 18.0;
    if (*(v6 + 134) == 1)
    {
      if (a3 <= 64.0)
      {
        v7 = ceilf(a3 * 0.0625) * 16.0;
      }

      else
      {
        v7 = fminf(ceilf(a3 * 0.03125) * 32.0, 128.0);
      }
    }

    *(v5 + 30) = v7;
    if (!*a2)
    {
      goto LABEL_136;
    }

    __dst = 0uLL;
    v121 = 0;
    v8 = *(v6 + 87);
    if (v8 < 0)
    {
      v9 = v6[9];
    }

    else
    {
      v9 = *(v6 + 87);
    }

    if (!v9)
    {
      md::TextDataStringInfo::widenText(v6, &__dst);
    }

    if (&__dst != (v6 + 8))
    {
      if ((v8 & 0x80000000) != 0)
      {
        v6 = std::basic_string<char16_t,std::char_traits<char16_t>,geo::allocator_adapter<char16_t,mdm::zone_mallocator>>::__assign_no_alias<true>(&__dst, v6[8], v6[9]);
      }

      else
      {
        __dst = *(v6 + 4);
        v121 = v6[10];
      }
    }

    v10 = HIBYTE(v121);
    v11 = HIBYTE(v121);
    if (SHIBYTE(v121) < 0)
    {
      v10 = *(&__dst + 1);
    }

    if (!v10)
    {
LABEL_134:
      if (v11 < 0)
      {
        v83 = __dst;
        v84 = mdm::zone_mallocator::instance(v6);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char16_t>(v84, v83);
      }

LABEL_136:
      atomic_store(1u, v5 + 130);
      return;
    }

    v93 = v5;
    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (SHIBYTE(v121) >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    if (SHIBYTE(v121) >= 0)
    {
      v14 = HIBYTE(v121);
    }

    else
    {
      v14 = *(&__dst + 1);
    }

    v118 = &unk_1F2A3D108;
    v119 = [v12 initWithCharacters:p_dst length:v14];

    v116 = &unk_1F2A5EF80;
    Mutable = CFAttributedStringCreateMutable(0, 0);
    if (!Mutable)
    {
LABEL_133:
      v118 = &unk_1F2A3D108;

      v11 = HIBYTE(v121);
      v5 = v93;
      goto LABEL_134;
    }

    v15 = *(v5 + 2);
    v16 = *(v15 + 40);
    v17 = *(v15 + 37);
    if ((v16 & 1) != 0 || (v17 & 1) == 0)
    {
      v19 = v16 & v17;
      v18 = *(v15 + 36);
    }

    else
    {
      v18 = *(v15 + 36);
      v19 = 1;
      v16 = v18;
    }

    v20 = *(v15 + 38);
    v21 = *(v15 + 39);
    grl::FontKey::FontKey(v96, v15, *(v93 + 30));
    grl::FontManager::fontForKey(&v114, *a2, v96);
    v22 = v115;
    if (!v115)
    {
LABEL_131:
      esl::FontKey::~FontKey(v96);
      v116 = &unk_1F2A5EF80;
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      goto LABEL_133;
    }

    v23 = v16 ^ 1;
    if ((v16 ^ 1))
    {
      HasSmallCaps = 0;
      v86 = v18 & v23;
      v25 = v19 & v23;
    }

    else
    {
      v112 = &unk_1F2A5F810;
      CFRetain(v115);
      v113 = v22;
      HasSmallCaps = grl::FontManager::fontHasSmallCaps(v22);
      v112 = &unk_1F2A5F810;
      if (v113)
      {
        CFRelease(v113);
      }

      v86 = !HasSmallCaps;
      v25 = 1;
    }

    v110 = &unk_1F2A1E010;
    v111 = 0;
    if (v25 & 1) != 0 || (v20 & 1) != 0 || (v21 & 1) != 0 || (v86)
    {
      v26 = (*v93 + 32);
      if (*(*v93 + 55) < 0)
      {
        v26 = *v26;
      }

      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v26];
      v28 = CFLocaleCreate(*MEMORY[0x1E695E480], v27);
      v29 = v111;
      v111 = v28;
      if (v29)
      {
        CFRelease(v29);
      }
    }

    if (v25)
    {
      v30 = v119;
      MutableCopy = CFStringCreateMutableCopy(0, 0, v30);
      result.location = &unk_1F2A1E030;
      result.length = MutableCopy;

      length = result.length;
      if (result.length)
      {
        if (*(*v93 + 129) == 1)
        {
          v132.length = CFStringGetLength(result.length);
          v132.location = 0;
          CFStringFindAndReplace(length, @"ß", @"ẞ", v132, 0);
          length = result.length;
        }

        CFStringUppercase(length, v111);
        v123.location = 0;
        v123.length = 0;
        CFAttributedStringReplaceString(Mutable, v123, result.length);
        goto LABEL_56;
      }

LABEL_127:
      v110 = &unk_1F2A1E010;
      if (v111)
      {
        CFRelease(v111);
      }

      v114 = &unk_1F2A5F810;
      if (v115)
      {
        CFRelease(v115);
      }

      goto LABEL_131;
    }

    if (v20)
    {
      v33 = v119;
      v34 = CFStringCreateMutableCopy(0, 0, v33);
      result.location = &unk_1F2A1E030;
      result.length = v34;

      if (!result.length)
      {
        goto LABEL_127;
      }

      CFStringLowercase(result.length, v111);
      v124.location = 0;
      v124.length = 0;
      CFAttributedStringReplaceString(Mutable, v124, result.length);
    }

    else
    {
      if (!v21)
      {
        v37 = Mutable;
        v38 = v119;
        v126.location = 0;
        v126.length = 0;
        CFAttributedStringReplaceString(v37, v126, v38);

LABEL_59:
        v108 = &unk_1F2A5F810;
        v109 = 0;
        range = CFAttributedStringGetLength(Mutable);
        if (((v86 | HasSmallCaps) & 1) == 0)
        {
          goto LABEL_78;
        }

        if (HasSmallCaps)
        {
          v39 = v115;
          v40 = CTFontCopyFontDescriptor(v115);
          result.location = &unk_1F2A5F6F8;
          result.length = v40;
          LODWORD(valuePtr[0]) = 38;
          v41 = *MEMORY[0x1E695E480];
          v42 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, valuePtr);
          v101 = &unk_1F2A5F6D8;
          v102 = v42;
          LODWORD(__p[0]) = 1;
          v43 = CFNumberCreate(v41, kCFNumberIntType, __p);
          characters[0] = &unk_1F2A5F6D8;
          characters[1] = v43;
          CopyWithFeature = CTFontDescriptorCreateCopyWithFeature(result.length, v102, v43);
          v103 = &unk_1F2A5F6F8;
          v104 = CopyWithFeature;
          CopyWithAttributes = CTFontCreateCopyWithAttributes(v39, 0.0, 0, CopyWithFeature);
          v103 = &unk_1F2A5F6F8;
          if (v104)
          {
            CFRelease(v104);
          }

          characters[0] = &unk_1F2A5F6D8;
          if (characters[1])
          {
            CFRelease(characters[1]);
          }

          v101 = &unk_1F2A5F6D8;
          if (v102)
          {
            CFRelease(v102);
          }

          result.location = &unk_1F2A5F6F8;
          if (result.length)
          {
            CFRelease(result.length);
          }

          v106 = &unk_1F2A5F810;
          v107 = CopyWithAttributes;
          if (v109)
          {
            CFRelease(v109);
            CopyWithAttributes = v107;
          }

          v109 = CopyWithAttributes;
        }

        else
        {
          v85 = CTFontGetSize(v115) * 0.829999983;
          CopyWithAttributes = CTFontCreateCopyWithAttributes(v115, v85, 0, 0);
          result.location = &unk_1F2A5F810;
          result.length = CopyWithAttributes;
          if (v109)
          {
            CFRelease(v109);
            CopyWithAttributes = result.length;
          }

          v109 = CopyWithAttributes;
        }

        if (CopyWithAttributes)
        {
          v46 = Mutable;
          if (v20)
          {
            v127.location = 0;
            v127.length = range;
            CFAttributedStringSetAttribute(Mutable, v127, *MEMORY[0x1E6965658], CopyWithAttributes);
          }

          else
          {
            v88 = v115;
            locale = v111;
            v129.location = 0;
            v129.length = range;
            attrName = *MEMORY[0x1E6965658];
            CFAttributedStringSetAttribute(Mutable, v129, *MEMORY[0x1E6965658], CopyWithAttributes);
            theSet = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
            String = CFAttributedStringGetString(v46);
            if (String)
            {
              aStr = v46;
              v54 = 0;
              while (1)
              {
                v55 = String;
                RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(String, v54);
                if (range < RangeOfComposedCharactersAtIndex.location + RangeOfComposedCharactersAtIndex.length)
                {
                  break;
                }

                v57 = CFStringCreateWithSubstring(0, v55, RangeOfComposedCharactersAtIndex);
                if (v57)
                {
                  v58 = CFStringCreateMutableCopy(0, 0, v57);
                  v59 = v58;
                  if (v58)
                  {
                    CFStringUppercase(v58, locale);
                    v60 = CFStringCreateMutableCopy(0, 0, v57);
                    v61 = v60;
                    if (v60)
                    {
                      CFStringLowercase(v60, locale);
                      v62 = CFStringCompare(v59, v61, 0);
                      CFRelease(v59);
                      CFRelease(v61);
                      if (v62)
                      {
                        CFAttributedStringSetAttribute(aStr, RangeOfComposedCharactersAtIndex, attrName, v88);
                        v55 = CFAttributedStringGetString(aStr);
                        if (!v55)
                        {
                          CFRelease(v57);
                          break;
                        }
                      }
                    }

                    else
                    {
                      CFRelease(v59);
                    }
                  }

                  CFRelease(v57);
                }

                v131.location = RangeOfComposedCharactersAtIndex.location + RangeOfComposedCharactersAtIndex.length;
                v131.length = range - (RangeOfComposedCharactersAtIndex.location + RangeOfComposedCharactersAtIndex.length);
                if (!CFStringFindCharacterFromSet(v55, theSet, v131, 0, &result))
                {
                  break;
                }

                v54 = result.length + result.location;
                if (result.length + result.location >= range)
                {
                  break;
                }

                String = v55;
              }
            }
          }
        }

        else
        {
LABEL_78:
          v128.location = 0;
          v128.length = range;
          CFAttributedStringSetAttribute(Mutable, v128, *MEMORY[0x1E6965658], v115);
        }

        v47 = v115;
        v48 = v93[5];
        if (v115)
        {
          CFRetain(v115);
        }

        v93[5] = v47;
        if (v48)
        {
          CFRelease(v48);
        }

        v49 = *v93;
        if (v96[13] == 1 && (*(v49 + 134) & 1) == 0)
        {
          v50 = CTFontCopyCharacterSet(v115);
          result.location = &unk_1F2A1E050;
          result.length = v50;
          v51 = [(__CFCharacterSet *)v50 invertedSet];
          if (v51)
          {
            v52 = v119;
            *(v93 + 125) = [v52 rangeOfCharacterFromSet:v51] == 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            *(v93 + 125) = 0;
          }

          result.location = &unk_1F2A1E050;
          if (result.length)
          {
            CFRelease(result.length);
          }

          v49 = *v93;
        }

        if (*(v49 + 133) == 1)
        {
          v63 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &kScriptLayoutTracking);
          result.location = &unk_1F2A5F6D8;
          result.length = v63;
          v130.location = 0;
          v130.length = range;
          CFAttributedStringSetAttribute(Mutable, v130, *MEMORY[0x1E6965A88], v63);
          result.location = &unk_1F2A5F6D8;
          if (result.length)
          {
            CFRelease(result.length);
          }
        }

        v64 = CTLineCreateWithAttributedString(Mutable);
        v106 = &unk_1F2A5F268;
        v107 = v64;
        if (v64)
        {
          GlyphCount = CTLineGetGlyphCount(v64);
          v66 = GlyphCount;
          v67 = v93[7];
          if (0xCCCCCCCCCCCCCCCDLL * ((v93[9] - v67) >> 3) < GlyphCount)
          {
            if (GlyphCount > 0x666666666666666)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v68 = v93[8];
            v100 = v93 + 10;
            v69 = mdm::zone_mallocator::instance(GlyphCount);
            v70 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::FontGlyphInfo>(v69, v66);
            v71 = &v70[v68 - v67];
            result.location = v70;
            result.length = v71;
            v72 = &v70[40 * v66];
            v98 = v71;
            v99 = v72;
            v73 = v93[7];
            v74 = v93[8];
            v75 = v71 + v73 - v74;
            std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::FontGlyphInfo,mdm::zone_mallocator>,md::FontGlyphInfo*>(v73, v74, v75);
            v76 = v93[7];
            v93[7] = v75;
            v93[8] = v71;
            v77 = v93[9];
            v93[9] = v72;
            v98 = v76;
            v99 = v77;
            result.location = v76;
            result.length = v76;
            GlyphCount = std::__split_buffer<md::FontGlyphInfo,geo::allocator_adapter<md::FontGlyphInfo,mdm::zone_mallocator> &>::~__split_buffer(&result);
            v103 = 0;
            v104 = 0;
            v105 = 0;
            goto LABEL_114;
          }

          v103 = 0;
          v104 = 0;
          v105 = 0;
          if (GlyphCount)
          {
            if (GlyphCount >> 61)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

LABEL_114:
            v78 = mdm::zone_mallocator::instance(GlyphCount);
            v79 = pthread_rwlock_rdlock((v78 + 32));
            if (v79)
            {
              geo::read_write_lock::logFailure(v79, "read lock", v80);
            }

            v81 = malloc_type_zone_malloc(*v78, 8 * v66, 0x100004000313F17uLL);
            atomic_fetch_add((v78 + 24), 1u);
            geo::read_write_lock::unlock((v78 + 32));
            v103 = v81;
            v105 = &v81[8 * v66];
            bzero(v81, 8 * v66);
            v104 = &v81[8 * v66];
            std::__allocate_at_least[abi:nn200100]<std::allocator<md::MapDataType>>(v66);
          }

          memset(valuePtr, 0, sizeof(valuePtr));
          memset(__p, 0, sizeof(__p));
          v82 = CFAttributedStringGetString(Mutable);
          if ([v82 length])
          {
            md::TextDataStringInfo::generateLineBreakInfo(*v93, v82, v93 + 7);
          }

          if (__p[0])
          {
            operator delete(__p[0]);
          }

          if (valuePtr[0])
          {
            operator delete(valuePtr[0]);
          }

          std::vector<long,geo::allocator_adapter<long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v103);
          v106 = &unk_1F2A5F268;
          if (v107)
          {
            CFRelease(v107);
          }
        }

        v108 = &unk_1F2A5F810;
        if (v109)
        {
          CFRelease(v109);
        }

        goto LABEL_127;
      }

      v35 = v119;
      v36 = CFStringCreateMutableCopy(0, 0, v35);
      result.location = &unk_1F2A1E030;
      result.length = v36;

      if (!result.length)
      {
        goto LABEL_127;
      }

      CFStringLowercase(result.length, v111);
      CFStringCapitalize(result.length, v111);
      v125.location = 0;
      v125.length = 0;
      CFAttributedStringReplaceString(Mutable, v125, result.length);
    }

LABEL_56:
    result.location = &unk_1F2A1E030;
    if (result.length)
    {
      CFRelease(result.length);
    }

    goto LABEL_59;
  }
}

void sub_1B2FA8CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a65)
  {
    CFRelease(a65);
  }

  STACK[0x2C0] = a12;
  if (STACK[0x2C8])
  {
    CFRelease(STACK[0x2C8]);
  }

  STACK[0x2D8] = a13;
  if (STACK[0x2E0])
  {
    CFRelease(STACK[0x2E0]);
  }

  STACK[0x308] = &unk_1F2A5F810;
  if (STACK[0x310])
  {
    CFRelease(STACK[0x310]);
  }

  esl::FontKey::~FontKey(&a46);
  STACK[0x320] = a14;
  if (STACK[0x328])
  {
    CFRelease(STACK[0x328]);
  }

  STACK[0x338] = a16;

  if (*(v67 - 217) < 0)
  {
    v70 = *(v67 - 240);
    v71 = mdm::zone_mallocator::instance(v69);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char16_t>(v71, v70);
  }

  _Unwind_Resume(a1);
}

void std::vector<CGSize>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gm::Matrix<double,2,1>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 16 * a2, 0x1000040451B5BE8uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void md::TextDataString::detectTextClusters(md::TextDataString *this, CTLineRef line, float a3, unint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  JustifiedLine = CTLineCreateJustifiedLine(line, 1.0, (a3 + (a4 * 20.0)));
  v31 = &unk_1F2A5F268;
  v39 = &unk_1F2A5F268;
  v40 = JustifiedLine;
  if (JustifiedLine)
  {
    GlyphCount = CTLineGetGlyphCount(JustifiedLine);
    if (GlyphCount == a4)
    {
      v8 = 2 * a4;
      if (2 * a4 > 0x2000)
      {
        v9 = malloc_type_malloc(2 * a4, 0x1000040BDFB0063uLL);
        v33 = v9;
      }

      else
      {
        MEMORY[0x1EEE9AC00](GlyphCount);
        v33 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v33, 2 * a4);
      }

      v10 = 16 * a4;
      if (16 * a4 > 0x2000)
      {
        v11 = malloc_type_malloc(16 * a4, 0x1000040451B5BE8uLL);
      }

      else
      {
        MEMORY[0x1EEE9AC00](v9);
        v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
        bzero(v11, 16 * a4);
      }

      if (v33 && v11)
      {
        GlyphRuns = CTLineGetGlyphRuns(v40);
        v29 = 16 * a4;
        v30 = 2 * a4;
        v37 = 0u;
        v36 = 0u;
        v35 = 0u;
        v34 = 0u;
        v32 = GlyphRuns;
        v13 = [(__CFArray *)v32 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v13)
        {
          v14 = 0;
          v15 = *v35;
          v16 = 0.0;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v35 != v15)
              {
                objc_enumerationMutation(v32);
              }

              v18 = *(*(&v34 + 1) + 8 * i);
              v19 = CTRunGetGlyphCount(v18);
              v42.location = 0;
              v42.length = v19;
              CTRunGetGlyphs(v18, v42, v33);
              v43.location = 0;
              v43.length = v19;
              CTRunGetPositions(v18, v43, v11);
              if (v19)
              {
                v20 = *(this + 127);
                v21 = 40 * v14 + 29;
                v22 = (*(this + 11) + 16 * v14);
                p_x = &v11->x;
                do
                {
                  v24 = *p_x;
                  v25 = *v22;
                  v26 = *p_x - (*v22 + v16);
                  if (fabsf(v26) > 5.0 || v20 == 0)
                  {
                    *(*(this + 7) + v21) = 1;
                    *(this + 127) = ++v20;
                  }

                  ++v14;
                  v16 = v24 - v25;
                  p_x += 2;
                  v21 += 40;
                  v22 += 2;
                  --v19;
                }

                while (v19);
              }
            }

            v13 = [(__CFArray *)v32 countByEnumeratingWithState:&v34 objects:v38 count:16];
          }

          while (v13);
        }

        v8 = v30;
        v10 = v29;
      }

      if (v8 > 0x2000)
      {
        free(v33);
      }

      if (v10 > 0x2000)
      {
        free(v11);
      }
    }

    v39 = v31;
    if (v40)
    {
      CFRelease(v40);
    }
  }
}

void sub_1B2FA949C(_Unwind_Exception *a1)
{
  *(v1 - 136) = *(v1 - 360);
  v3 = *(v1 - 128);
  if (v3)
  {
    CFRelease(v3);
  }

  _Unwind_Resume(a1);
}

void std::vector<long,geo::allocator_adapter<long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = mdm::zone_mallocator::instance(result);
    v3 = pthread_rwlock_rdlock((v2 + 32));
    if (v3)
    {
      geo::read_write_lock::logFailure(v3, "read lock", v4);
    }

    atomic_fetch_add((v2 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v2, v1);

    geo::read_write_lock::unlock((v2 + 32));
  }
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::FontGlyphInfo>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 40 * a2, 0x1020040750CF3BCuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::FontGlyphInfo,mdm::zone_mallocator>,md::FontGlyphInfo*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1;
    do
    {
      *a3 = *v6;
      *(a3 + 8) = CGFontRetain(*(v6 + 8));
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 26) = *(v6 + 26);
      *(a3 + 30) = *(v6 + 30);
      *(a3 + 32) &= 0xC0u;
      v6 += 40;
      a3 += 40;
    }

    while (v6 != a2);
    do
    {
      CGFontRelease(*(v5 + 8));
      v5 += 40;
    }

    while (v5 != a2);
  }
}

mdm::zone_mallocator *std::__split_buffer<md::FontGlyphInfo,geo::allocator_adapter<md::FontGlyphInfo,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(a1 + 2))
  {
    *(a1 + 2) = i - 40;
    CGFontRelease(*(i - 32));
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::FontGlyphInfo>(v5, v4);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::FontGlyphInfo>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::Matrix<double,2,1>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::_retain_ptr<CGFont *,geo::_retain_cf<CGFont *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A5F758;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<CGFont *,geo::_retain_cf<CGFont *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A5F758;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void geo::_retain_ptr<__CFCharacterSet const*,geo::_retain_cf<__CFCharacterSet const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A1E050;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<__CFCharacterSet const*,geo::_retain_cf<__CFCharacterSet const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A1E050;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void geo::_retain_ptr<__CFNumber const*,geo::_retain_cf<__CFNumber const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A5F6D8;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<__CFNumber const*,geo::_retain_cf<__CFNumber const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A5F6D8;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void geo::_retain_ptr<__CTFontDescriptor const*,geo::_retain_cf<__CTFontDescriptor const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A5F6F8;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<__CTFontDescriptor const*,geo::_retain_cf<__CTFontDescriptor const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A5F6F8;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void geo::_retain_ptr<__CFString *,geo::_retain_cf<__CFString *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A1E030;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<__CFString *,geo::_retain_cf<__CFString *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A1E030;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void geo::_retain_ptr<__CFLocale const*,geo::_retain_cf<__CFLocale const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A1E010;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<__CFLocale const*,geo::_retain_cf<__CFLocale const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A1E010;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void geo::_retain_ptr<__CFAttributedString *,geo::_retain_cf<__CFAttributedString *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A5EF80;
  v1 = a1[1];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<__CFAttributedString *,geo::_retain_cf<__CFAttributedString *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F2A5EF80;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

mdm::zone_mallocator ***geo::fast_shared_ptr<md::LabelRouteZoomCollisionInfo,std::allocator>::~fast_shared_ptr(mdm::zone_mallocator ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *v2 == 1;
    *v2 = (*v2 - 1);
    if (v3)
    {
      std::vector<md::LabelCollisionPath,geo::allocator_adapter<md::LabelCollisionPath,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 15));
      std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 11));
      std::__hash_table<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,mdm::zone_mallocator>>::__deallocate_node(v2[7]);
      std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v2 + 4));
      operator delete(*a1);
      *a1 = 0;
    }
  }

  return a1;
}

mdm::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](mdm::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,void *> *> *>(v3, v2);
  }

  return a1;
}

void ***md::LabelRouteCollisionInfo::LabelRouteCollisionInfo(void ***a1, void **a2, void **a3, uint64_t a4)
{
  v4 = a1;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[4] = a2;
  a1[5] = a3;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  *(a1 + 72) = *(a4 + 24);
  v6 = *a4;
  v5 = *(a4 + 8);
  v7 = v5 - *a4;
  if (v5 == *a4)
  {
    v9 = 0;
  }

  else
  {
    std::vector<md::LabelCollisionPath,geo::allocator_adapter<md::LabelCollisionPath,mdm::zone_mallocator>>::__vallocate[abi:nn200100]((a1 + 6), v7 >> 3);
    v8 = v4[7];
    a1 = memmove(v8, v6, v7);
    v4[7] = (v8 + v7);
    v9 = *v4;
    v7 = v4[1];
  }

  v10 = v7 - v9;
  v11 = (v7 - v9) >> 3;
  if (v11 > 8)
  {
    if (v10 != 72)
    {
      v31 = v9 + 9;
      while (v7 != v31)
      {
        v7 -= 8;
        geo::fast_shared_ptr<md::LabelRouteZoomCollisionInfo,std::allocator>::~fast_shared_ptr(v7);
      }

      v4[1] = v31;
    }
  }

  else
  {
    v12 = 9 - v11;
    v13 = v4[2];
    if (v12 <= (v13 - v7) >> 3)
    {
      bzero(v7, 8 * v12);
      v4[1] = (v7 + 8 * v12);
    }

    else
    {
      v14 = v13 - v9;
      v15 = v14 >> 2;
      if ((v14 >> 2) <= 9)
      {
        v15 = 9;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      v17 = mdm::zone_mallocator::instance(a1);
      v18 = pthread_rwlock_rdlock((v17 + 32));
      if (v18)
      {
        geo::read_write_lock::logFailure(v18, "read lock", v19);
      }

      v20 = malloc_type_zone_malloc(*v17, 8 * v16, 0x2004093837F09uLL);
      atomic_fetch_add((v17 + 24), 1u);
      geo::read_write_lock::unlock((v17 + 32));
      v21 = *v4;
      v22 = v4[1];
      v23 = &v20[v10];
      v24 = &v20[8 * v16];
      bzero(v23, 8 * v12);
      v26 = &v23[8 * v12];
      v27 = &v23[v21 - v22];
      if (v22 != v21)
      {
        v28 = v21;
        v29 = v27;
        do
        {
          *v29 = 0;
          *v29++ = *v28;
          *v28++ = 0;
        }

        while (v28 != v22);
        do
        {
          v25 = geo::fast_shared_ptr<md::LabelRouteZoomCollisionInfo,std::allocator>::~fast_shared_ptr(v21++);
        }

        while (v21 != v22);
        v21 = *v4;
      }

      *v4 = v27;
      v4[1] = v26;
      v4[2] = v24;
      if (v21)
      {
        v30 = mdm::zone_mallocator::instance(v25);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelRouteZoomCollisionInfo,std::allocator>>(v30, v21);
      }
    }
  }

  return v4;
}

void sub_1B2FA9FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  geo::read_write_lock::unlock((v4 + 32));
  std::vector<md::LabelCollisionPath,geo::allocator_adapter<md::LabelCollisionPath,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v3);
  std::vector<geo::fast_shared_ptr<md::LabelRouteZoomCollisionInfo,std::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelRouteZoomCollisionInfo,std::allocator>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *md::LabelRouteZoomCollisionInfo::addPathToTile(uint64_t a1, int a2, int a3, int a4, int a5)
{
  result = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>((a1 + 24), a3 + (a2 << 16));
  if (!result)
  {
    v27[0] = 0;
    operator new();
  }

  v8 = *(result + 3);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v11 = v9[6];
  v10 = v9[7];
  if (v11 >= v10)
  {
    v13 = v9[5];
    v14 = v11 - v13;
    v15 = (v11 - v13) >> 3;
    v16 = v15 + 1;
    if ((v15 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v17 = v10 - v13;
    if (v17 >> 2 > v16)
    {
      v16 = v17 >> 2;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    v27[4] = v9 + 8;
    if (v18)
    {
      v19 = mdm::zone_mallocator::instance(result);
      v20 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelCollisionPath>(v19, v18);
      v13 = v9[5];
      v14 = v9[6] - v13;
      v21 = v14 >> 3;
    }

    else
    {
      v20 = 0;
      v21 = v15;
    }

    v22 = &v20[8 * v15];
    v23 = &v20[8 * v18];
    *v22 = a4;
    *(v22 + 1) = a5;
    v12 = v22 + 8;
    v24 = &v22[-8 * v21];
    memcpy(v24, v13, v14);
    v25 = v9[5];
    v9[5] = v24;
    v9[6] = v12;
    v26 = v9[7];
    v9[7] = v23;
    v27[2] = v25;
    v27[3] = v26;
    v27[0] = v25;
    v27[1] = v25;
    result = std::__split_buffer<md::LabelCollisionPath,geo::allocator_adapter<md::LabelCollisionPath,mdm::zone_mallocator> &>::~__split_buffer(v27);
  }

  else
  {
    *v11 = a4;
    *(v11 + 1) = a5;
    v12 = v11 + 8;
  }

  v9[6] = v12;
  return result;
}

void sub_1B2FAA5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  geo::read_write_lock::unlock((v5 + 32));
  v7 = geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>::~fast_shared_ptr(v4);
  v8 = mdm::zone_mallocator::instance(v7);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,void *>>(v8, v3);
  geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>::~fast_shared_ptr(va);
  _Unwind_Resume(a1);
}

void **geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>::~fast_shared_ptr(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*v2)-- == 1)
    {
      std::vector<md::LabelCollisionPath,geo::allocator_adapter<md::LabelCollisionPath,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 6));
      operator delete(*a1);
      *a1 = 0;
    }
  }

  return a1;
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,void *> *> **,0>(mdm::zone_mallocator *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,geo::fast_shared_ptr<md::LabelRouteTileCollisionInfo,std::allocator>>,void *> *> *>(v3, v2);
  }
}

mdm::zone_mallocator *std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::shrink_to_fit(mdm::zone_mallocator *result)
{
  v1 = *(result + 1);
  v2 = *result;
  v3 = *(result + 2) - *result;
  v4 = &v1[-*result];
  if (v3 > v4)
  {
    v5 = result;
    v17 = result + 24;
    if (v1 == v2)
    {
      v7 = 0;
    }

    else
    {
      v6 = mdm::zone_mallocator::instance(result);
      v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned int>(v6, v4 >> 2);
      v2 = *v5;
      v3 = *(v5 + 2) - *v5;
    }

    v8 = &v7[4 * (v4 >> 2)];
    v13 = v7;
    v14 = v8;
    v15 = v8;
    v16 = v8;
    if (v4 < v3)
    {
      v9 = *(v5 + 1) - v2;
      v10 = &v8[-v9];
      memcpy(&v8[-v9], v2, v9);
      v11 = *v5;
      *v5 = v10;
      *(v5 + 1) = v8;
      v12 = *(v5 + 2);
      *(v5 + 2) = v8;
      v15 = v11;
      v16 = v12;
      v13 = v11;
      v14 = v11;
    }

    return std::__split_buffer<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator> &>::~__split_buffer(&v13);
  }

  return result;
}

uint64_t geo::dpSimplifyViaIndexes<gm::Matrix<double,2,1>,unsigned int>(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, _DWORD *a5, double a6)
{
  v10 = result;
  v11 = a6 * a6;
  v12 = a3 - 1;
  __asm { FMOV            V0.2D, #1.0 }

  v34 = _Q0;
  while (1)
  {
    v18 = (a2 + 1);
    if (v18 >= a3)
    {
      break;
    }

    LODWORD(v19) = 0;
    v20 = *(v10 + 16 * a2);
    v21 = vsubq_f64(*(v10 + 16 * a3), v20);
    v22 = vmulq_f64(v21, v21);
    v23 = vaddq_f64(vdupq_laneq_s64(v22, 1), v22);
    v24 = vaddvq_f64(v22);
    v25 = vdivq_f64(v34, v23);
    v26 = v12 - a2;
    v27 = 0.0;
    do
    {
      v28 = *(v10 + 16 * v18);
      v29 = 0.0;
      if (v24 > 1.0e-15)
      {
        v30 = vmulq_f64(vsubq_f64(v28, v20), v21);
        v29 = fmin(fmax(vmulq_f64(vaddq_f64(vdupq_laneq_s64(v30, 1), v30), v25).f64[0], 0.0), 1.0);
      }

      v31 = vsubq_f64(v28, vmlaq_n_f64(v20, v21, v29));
      v32 = vaddvq_f64(vmulq_f64(v31, v31));
      if (v32 <= v27)
      {
        v19 = v19;
      }

      else
      {
        v19 = v18;
      }

      v27 = fmax(v32, v27);
      ++v18;
      --v26;
    }

    while (v26);
    if (v27 <= v11)
    {
      break;
    }

    result = geo::dpSimplifyViaIndexes<gm::Matrix<double,2,1>,unsigned int>(v10, a2, v19, a4, a5, a6);
    v33 = *a5;
    *a5 = v33 + 1;
    *(a4 + 4 * v33) = v19;
    a2 = v19;
  }

  return result;
}

uint64_t *md::LabelRouteCollisionInfo::tileCollisionInfo(md::LabelRouteCollisionInfo *a1, unsigned int a2, double *a3)
{
  v4 = md::LabelRouteCollisionInfo::collisionInfoForZoom(a1, a2);
  result = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>((v4 + 24), ((a3[1] + (a3[3] - a3[1]) * 0.5) / *(v4 + 16)) + (((*a3 + (a3[2] - *a3) * 0.5) / *(v4 + 16)) << 16));
  if (result)
  {
    v6 = 0;
    v7 = 0;
    v8 = result[3];
    v9 = v8 + 8;
    if (v8)
    {
      v10 = v8 + 8;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10 + 8;
    v12 = v10 + 24;
    do
    {
      if (*(v12 + 8 * v7) <= a3[v7])
      {
        return 0;
      }

      v13 = *(v11 + 8 * v7);
      v14 = a3[v7 + 2];
      v7 = 1;
      v15 = (v13 < v14) & ~v6;
      v6 = 1;
    }

    while ((v15 & 1) != 0);
    if (v13 < v14)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ___ZN2md18LabelFeatureStyler18styleLabelFeaturesERNSt3__16vectorINS_22LabelFeatureStylerItemEN3geo17allocator_adapterIS3_N3mdm15zone_mallocatorEEEEEbbPNS4_9TaskQueueE_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = 20 * a2 + 20;
  if (*(result + 32) < v2)
  {
    v2 = *(result + 32);
  }

  if (v2 > 20 * a2)
  {
    v3 = result;
    v4 = v2 - 20 * a2;
    v5 = 480 * a2;
    do
    {
      v6 = (**(v3 + 40) + v5);
      result = (*(**v6 + 592))(*v6, **(v3 + 48) + 16 * v6[1], **(v3 + 56) + 16 * v6[1], v6[2], *(v3 + 68), *(v3 + 64), 0);
      v5 += 24;
      --v4;
    }

    while (v4);
  }

  return result;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelStyle>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::_retain_ptr<void({block_pointer} {__strong})(unsigned long),geo::_copy_block_arc<void({block_pointer} {__strong})(unsigned long)>,geo::_release_block_arc<void({block_pointer} {__strong})(unsigned long)>,geo::_hash_ptr,geo::_equal_ptr>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2A1E070;
  a1[1] = 0;
  v3 = MEMORY[0x1B8C62DA0](*(a2 + 8));
  if (v3)
  {
    v4 = v3;
    v5 = [v3 copy];
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x1B8C62DA0](v5);
  v7 = a1[1];
  a1[1] = v6;

  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned long)>::~__value_func[abi:nn200100](uint64_t a1)
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

void geo::_retain_ptr<void({block_pointer} {__strong})(unsigned long),geo::_copy_block_arc<void({block_pointer} {__strong})(unsigned long)>,geo::_release_block_arc<void({block_pointer} {__strong})(unsigned long)>,geo::_hash_ptr,geo::_equal_ptr>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1E070;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<void({block_pointer} {__strong})(unsigned long),geo::_copy_block_arc<void({block_pointer} {__strong})(unsigned long)>,geo::_release_block_arc<void({block_pointer} {__strong})(unsigned long)>,geo::_hash_ptr,geo::_equal_ptr>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1E070;

  return a1;
}

NSObject *___ZN3geo9TaskQueue5applyEmNSt3__18functionIFvmEEE_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  }

  v9 = a2;
  v5 = *(a1 + 64);
  if (v5)
  {
    (*(*v5 + 48))(v5, &v9);
    result = *(a1 + 32);
    if (result)
    {

      return dispatch_semaphore_signal(result);
    }
  }

  else
  {
    v7 = std::__throw_bad_function_call[abi:nn200100]();
    return std::__function::__value_func<void ()(unsigned long)>::__value_func[abi:nn200100](v7, v8);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned long)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void std::__function::__func<geo::TaskQueue::apply_b(unsigned long,void({block_pointer})(unsigned long))::{lambda(unsigned long)#1},std::allocator<geo::TaskQueue::apply_b(unsigned long,void({block_pointer})(unsigned long))::{lambda(unsigned long)#1}>,void ()(unsigned long)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = MEMORY[0x1B8C62DA0](*(a1 + 16));
  v3[2](v3, v2);
}

void std::__function::__func<geo::TaskQueue::apply_b(unsigned long,void({block_pointer})(unsigned long))::{lambda(unsigned long)#1},std::allocator<geo::TaskQueue::apply_b(unsigned long,void({block_pointer})(unsigned long))::{lambda(unsigned long)#1}>,void ()(unsigned long)>::destroy_deallocate(uint64_t a1)
{
  *(a1 + 8) = &unk_1F2A1E070;

  operator delete(a1);
}

void std::__function::__func<geo::TaskQueue::apply_b(unsigned long,void({block_pointer})(unsigned long))::{lambda(unsigned long)#1},std::allocator<geo::TaskQueue::apply_b(unsigned long,void({block_pointer})(unsigned long))::{lambda(unsigned long)#1}>,void ()(unsigned long)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A1E0C8;
  *(a1 + 8) = &unk_1F2A1E070;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<geo::TaskQueue::apply_b(unsigned long,void({block_pointer})(unsigned long))::{lambda(unsigned long)#1},std::allocator<geo::TaskQueue::apply_b(unsigned long,void({block_pointer})(unsigned long))::{lambda(unsigned long)#1}>,void ()(unsigned long)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A1E0C8;
  *(a1 + 8) = &unk_1F2A1E070;

  return a1;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::LabelStyle>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 16 * a2, 0x20040A4A59CD2uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeatureStylerItem>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 24 * a2, 0x102004024DAA5DEuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelFeatureStylerItem>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void md::LabelFeatureStyler::updateTextAndStyleForExternalFeatures(mdm::zone_mallocator *result, uint64_t **a2)
{
  if (*a2 != a2[1])
  {
    v5 = atomic_load((*result + 3426));
    v6 = *a2;
    v7 = a2[1];
    while (v6 != v7)
    {
      v8 = *v6;
      v6 += 2;
      (*(*v8 + 32))(v8, 0, v5 & 1);
    }

    md::LabelFeatureStyler::styleExternalFeatures(result, a2);
  }
}

void sub_1B2FAB36C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::vector<md::PolygonOverlayMeshBuilder::MeshInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 88;
        std::__destroy_at[abi:nn200100]<md::MuninRoadEdgePolyline,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::unique_ptr<md::Mesh>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 72);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void sub_1B2FAB630(_Unwind_Exception *a1)
{
  v3 = v1[8].__vftable;
  if (v3)
  {
    v1[8].__shared_owners_ = v3;
    operator delete(v3);
  }

  shared_weak_owners = v1[5].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](shared_weak_owners);
  }

  v5 = v1[5].__vftable;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  shared_owners = v1[4].__shared_owners_;
  if (shared_owners)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](shared_owners);
  }

  v7 = v1[3].__shared_weak_owners_;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = v1[3].__vftable;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = v1[2].__shared_owners_;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = v1[1].__shared_weak_owners_;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::PolylineOverlayStyle>::__on_zero_shared(void *a1)
{
  v2 = a1[24];
  if (v2)
  {
    a1[25] = v2;
    operator delete(v2);
  }

  v3 = a1[17];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[15];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = a1[13];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = a1[11];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = a1[9];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = a1[7];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = a1[5];
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }
}

void std::__shared_ptr_emplace<md::PolylineOverlayStyle>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3EBF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::PolygonOverlayRenderable::Style>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void std::__shared_ptr_emplace<md::PolygonOverlayRenderable::Style>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3EBC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2FAB950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v9 + 120);
  v12 = *(v9 + 14);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  v13 = *(v9 + 12);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  std::vector<md::PolygonOverlayMeshBuilder::MeshInfo>::__destroy_vector::operator()[abi:nn200100](&a9);
  v14 = *(v9 + 7);
  *(v9 + 7) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  std::unique_ptr<md::Mesh>::reset[abi:nn200100](v10, 0);
  v15 = *(v9 + 5);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<md::PolygonOverlayMeshBuilder::MeshInfo>::__emplace_back_slow_path<md::PolygonOverlayMeshBuilder::MeshInfo>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v5 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v5 = v3;
  }

  v17 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<md::PolygonOverlayMeshBuilder::MeshInfo>>(v5);
  }

  v6 = 88 * v2;
  *(&v16 + 1) = 0;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  *(v6 + 80) = *(a2 + 80);
  *(v6 + 48) = v7;
  *(v6 + 64) = v8;
  *&v16 = 88 * v2 + 88;
  v9 = a1[1];
  v10 = 88 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::PolygonOverlayMeshBuilder::MeshInfo>,md::PolygonOverlayMeshBuilder::MeshInfo*>(*a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v16;
  *(a1 + 1) = v16;
  *&v16 = v11;
  *(&v16 + 1) = v12;
  v15[0] = v11;
  v15[1] = v11;
  std::__split_buffer<md::PolygonOverlayMeshBuilder::MeshInfo>::~__split_buffer(v15);
  return v14;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::PolygonOverlayMeshBuilder::MeshInfo>>(unint64_t a1)
{
  if (a1 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::PolygonOverlayMeshBuilder::MeshInfo>,md::PolygonOverlayMeshBuilder::MeshInfo*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = *v5;
      *(a3 + 16) = *(v5 + 16);
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 24) = *(v5 + 24);
      *(a3 + 40) = *(v5 + 40);
      *(v5 + 24) = 0;
      *(v5 + 32) = 0;
      *(v5 + 40) = 0;
      v6 = *(v5 + 48);
      v7 = *(v5 + 64);
      *(a3 + 80) = *(v5 + 80);
      *(a3 + 48) = v6;
      *(a3 + 64) = v7;
      v5 += 88;
      a3 += 88;
    }

    while (v5 != a2);
    do
    {
      std::__destroy_at[abi:nn200100]<md::MuninRoadEdgePolyline,0>(v4);
      v4 += 88;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<md::PolygonOverlayMeshBuilder::MeshInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 88;
    std::__destroy_at[abi:nn200100]<md::MuninRoadEdgePolyline,0>(i - 88);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void md::ElevatedStrokeGroup::buildMeshesForFeatureId(md::ElevatedStrokeGroup *this, ggl::Loader *a2, uint64_t a3, unint64_t a4)
{
  v4 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(a2 + 15, a4);
  if (v4)
  {
    v5 = *(v4 + 6);
    v6 = *(v4 + 7);
    v10 = 0;
    v11 = 0;
    v9 = 0;
    if (v6 != v5)
    {
      v7 = 0x2E8BA2E8BA2E8BA3 * ((88 * v6 - 88 * v5) >> 3);
      if (v7 < 0x2E8BA2E8BA2E8BBLL)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<md::PolygonOverlayMeshBuilder::MeshInfo>>(v7);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_4Tile4ViewEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v8);
}

void sub_1B2FABE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void **a12, std::__shared_weak_count *a13, char a14)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  a12 = &a14;
  std::vector<md::PolygonOverlayMeshBuilder::MeshInfo>::__destroy_vector::operator()[abi:nn200100](&a12);
  _Unwind_Resume(a1);
}

void md::ElevatedStrokeGroup::selectedStyleQuery(md::ElevatedStrokeGroup *this, uint64_t **a2)
{
  gss::QueryOverrides::QueryOverrides(v4, 1);
  gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(this, a2[11], a2, v4);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v4);
}

void sub_1B2FABF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(va);
  _Unwind_Resume(a1);
}

uint64_t md::TransitNodeExternalIcon::updateLayoutState(uint64_t this)
{
  v1 = (this + 69);
  if ((*(this + 69) & 1) == 0)
  {
    v2 = this;
    this = *(this + 88);
    v3 = *(v2 + 72);
    v5 = *(v3 + 32);
    v4 = *(v3 + 40);
    if (!this)
    {
      if (v5 == v4)
      {
        return this;
      }

      goto LABEL_9;
    }

    if (v5 != v4 && this != *(v4 - 16))
    {
      v1 = (v2 + 263);
LABEL_9:
      *v1 = 1;
      return this;
    }

    this = (*(*this + 40))(this);
    if (this)
    {
      goto LABEL_9;
    }
  }

  return this;
}

uint64_t md::TransitNodeExternalIcon::debugString@<X0>(md::TransitNodeExternalIcon *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v21);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "\nTransitNodeExternalIcon", 24);
  v4 = *(this + 11);
  if (v4)
  {
    (*(*v4 + 16))(&__p);
    if (SHIBYTE(v32[0].__locale_) >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (SHIBYTE(v32[0].__locale_) >= 0)
    {
      locale_high = HIBYTE(v32[0].__locale_);
    }

    else
    {
      locale_high = v31;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, p_p, locale_high);
    if (SHIBYTE(v32[0].__locale_) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, "\n <node> Missing-Feature Node", 29);
  }

  v7 = *(this + 9);
  std::ostringstream::basic_ostringstream[abi:nn200100](&__p);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__p, "\n <nodeFeature>", 15);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&__p, " countNodes:", 12);
  MEMORY[0x1B8C61C80](&__p, (*(v7 + 40) - *(v7 + 32)) >> 4);
  if ((v37 & 0x10) != 0)
  {
    v9 = v36;
    if (v36 < v33)
    {
      v36 = v33;
      v9 = v33;
    }

    locale = v32[4].__locale_;
  }

  else
  {
    if ((v37 & 8) == 0)
    {
      v8 = 0;
      v20 = 0;
      goto LABEL_24;
    }

    locale = v32[1].__locale_;
    v9 = v32[3].__locale_;
  }

  v8 = v9 - locale;
  if ((v9 - locale) > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_50;
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  v20 = v9 - locale;
  if (v8)
  {
    memmove(__dst, locale, v8);
  }

LABEL_24:
  *(__dst + v8) = 0;
  __p = *MEMORY[0x1E69E54E8];
  v11 = __p;
  v12 = *(MEMORY[0x1E69E54E8] + 24);
  *(&__p + *(__p - 3)) = v12;
  v31 = MEMORY[0x1E69E5548] + 16;
  if (v35 < 0)
  {
    operator delete(v34);
  }

  v31 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v32);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&v38);
  if ((v20 & 0x80u) == 0)
  {
    v13 = __dst;
  }

  else
  {
    v13 = __dst[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v14 = v20;
  }

  else
  {
    v14 = __dst[1];
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v21, v13, v14);
  if (v20 < 0)
  {
    operator delete(__dst[0]);
  }

  if ((v28 & 0x10) != 0)
  {
    v16 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v16 = v24;
    }

    v17 = v23[4].__locale_;
  }

  else
  {
    if ((v28 & 8) == 0)
    {
      v15 = 0;
      a2[23] = 0;
      goto LABEL_47;
    }

    v17 = v23[1].__locale_;
    v16 = v23[3].__locale_;
  }

  v15 = v16 - v17;
  if ((v16 - v17) > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_50:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a2[23] = v15;
  if (v15)
  {
    memmove(a2, v17, v15);
  }

LABEL_47:
  a2[v15] = 0;
  v21 = v11;
  *(&v21 + *(v11 - 3)) = v12;
  v22 = MEMORY[0x1E69E5548] + 16;
  if (v26 < 0)
  {
    operator delete(v25);
  }

  v22 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v23);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v29);
}

void sub_1B2FAC444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::locale a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a54 < 0)
  {
    operator delete(__p);
  }

  a13 = *MEMORY[0x1E69E54E8];
  *(&a13 + *(a13 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a14 = MEMORY[0x1E69E5548] + 16;
  if (a27 < 0)
  {
    operator delete(a22);
  }

  a14 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a15);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a30);
  _Unwind_Resume(a1);
}

void md::TransitNodeExternalIcon::~TransitNodeExternalIcon(md::TransitNodeExternalIcon *this)
{
  md::TransitNodeExternalIcon::~TransitNodeExternalIcon(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A1E110;
  if (!*(this + 11))
  {
    (*(**(this + 9) + 32))(*(this + 9));
  }

  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

void sub_1B2FAC74C(_Unwind_Exception *exception_object)
{
  v3 = v1[13];
  if (v3)
  {
    v1[14] = v3;
    operator delete(v3);
  }

  v4 = v1[12];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = v1[10];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::TransitNodeExternalIcon::TransitNodeExternalIcon(uint64_t a1, void *a2, uint64_t *a3)
{
  *(a1 + 8) = xmmword_1B33B06F0;
  *(a1 + 24) = 1065353216;
  *(a1 + 48) = 0;
  *(a1 + 44) = 0;
  *(a1 + 64) = 1;
  *(a1 + 65) = 0;
  *(a1 + 69) = 256;
  *a1 = &unk_1F2A1E110;
  v4 = a2[1];
  *(a1 + 72) = *a2;
  *(a1 + 80) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *a3;
  v6 = a3[1];
  *(a1 + 88) = *a3;
  *(a1 + 96) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = *(a1 + 88);
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 212) = 1065353216;
  *(a1 + 220) = 1065353216;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0x3F80000000000000;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 260) = 255;
  atomic_store(1u, (a1 + 65));
  if (!v5)
  {
    (*(**(a1 + 72) + 24))(*(a1 + 72));
  }

  return a1;
}

void sub_1B2FAC898(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    v1[14] = v5;
    operator delete(v5);
  }

  v6 = v1[12];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = v1[10];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::TransitNodeExternalIcon::DotInfo>>(unint64_t a1)
{
  if (a1 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

float32x2_t md::TransitNodeExternalIcon::setDotTextureRect(float32x2_t *a1, __int8 *a2, int32x2_t *a3, float32x2_t *a4)
{
  v4 = a3->i32[0];
  a1[32].i32[0] = a3->i32[0];
  v5 = *a2;
  v6 = a2[4];
  a1[24].i8[0] = *a2;
  a1[24].i8[1] = v6;
  a1[24].i8[2] = v5 + a3->i8[0];
  a1[24].i8[3] = v6;
  v7 = v6 + a3->i8[4];
  a1[24].i8[4] = v5 + a3->i8[0];
  a1[24].i8[5] = v7;
  v8 = v6 + a3->i8[4];
  a1[24].i8[6] = v5;
  a1[24].i8[7] = v8;
  v9 = vneg_f32(*a4);
  result = vsub_f32(vcvt_f32_s32(*a3), *a4);
  a1[16] = v9;
  a1[17] = __PAIR64__(v9.u32[1], result.u32[0]);
  v9.i32[1] = result.i32[1];
  a1[18] = result;
  a1[19] = v9;
  result.i32[0] = a1[30].i32[1];
  if (result.f32[0] != 1.0)
  {
    v11 = 0;
    a1[32].i32[0] = (result.f32[0] * v4);
    v12 = a1 + 16;
    do
    {
      result = vmul_n_f32(v12[v11], a1[30].f32[1]);
      v12[v11++] = result;
    }

    while (v11 != 8);
  }

  return result;
}

uint64_t md::TransitNodeExternalIcon::updateRadius(uint64_t this)
{
  if (*(this + 260) == 2)
  {
    v1 = (*(this + 248) + *(this + 252) / 2);
  }

  else
  {
    v2 = *(this + 112);
    v3 = *(this + 104);
    if (v3 == v2)
    {
      v1 = (*(this + 256) / 2);
      v7 = 0.0;
    }

    else
    {
      v4 = -3.4028e38;
      v5 = 3.4028e38;
      do
      {
        v6 = *(v3 + 12);
        v4 = fmaxf(v4, v6);
        v5 = fminf(v6, v5);
        v3 += 20;
      }

      while (v3 != v2);
      v7 = (v5 + v4) * 0.5;
      v1 = (v4 - v7) + (*(this + 256) / 2);
    }

    *(this + 48) = vmul_n_f32(*(this + 220), v7);
  }

  *(this + 64) = 1;
  *(this + 44) = v1;
  return this;
}

void md::VenueTileData::~VenueTileData(md::VenueTileData *this)
{
  md::VenueTileData::~VenueTileData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A1E140;
  *(this + 80) = &unk_1F2A1E188;
  v2 = (this + 808);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = (this + 784);
  std::vector<md::VenueFloorGroup>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = (this + 760);
  std::vector<geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v2);
  *this = &unk_1F2A45C20;
  *(this + 80) = &unk_1F2A45C68;
  v2 = (this + 728);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v2);

  md::MapTileData::~MapTileData(this);
}

void std::vector<md::VenueFloorGroup>::__destroy_vector::operator()[abi:nn200100](void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 3);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        v7 = *(v4 - 5);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v7);
        }

        v4 -= 9;
        v8 = v4;
        std::vector<ggl::PolygonBase::CompressedMeshMesh>::__destroy_vector::operator()[abi:nn200100](&v8);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 3;
      v7 = v4 - 3;
      v8 = v4 - 3;
      do
      {
        v9 = *v8;
        v8 -= 3;
        (*v9)(v7);
        v6 -= 3;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__init_with_size[abi:nn200100]<geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*,geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>(a4);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

void non-virtual thunk toggl::PolygonBase::CompressedMeshMesh::~CompressedMeshMesh(ggl::PolygonBase::CompressedMeshMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::PolygonBase::CompressedMeshMesh::~CompressedMeshMesh(ggl::PolygonBase::CompressedMeshMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<ggl::PolygonBase::CompressedMeshMesh>>(unint64_t a1)
{
  if (a1 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::VenueFloorGroup>>(unint64_t a1)
{
  if (a1 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void *geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2A4D548;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

void geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4D548;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKVenueGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4D548;

  return a1;
}

void processMaterialEmissiveParameters(int8x8_t *a1, uint64_t **a2, unint64_t *a3, unint64_t *a4)
{
  v7 = *&a1[1790].i32[1];
  md::MaterialResourceStore::getMaterial(&v134, a2, *a3);
  v8 = v134;
  (*(*v134 + 1008))(&v131, v134, v7);
  if (v133)
  {
    LOBYTE(v128) = 0;
    v130 = 0;
LABEL_4:
    v124 = v131;
    _S8 = v132;
    goto LABEL_5;
  }

  (*(*v8 + 200))(&v128, v8, v7);
  if (v133)
  {
    goto LABEL_4;
  }

  if (v130 == 1)
  {
    v124 = v128;
    _S8 = v129;
  }

  else
  {
    v124 = 0;
    _S8 = 0;
  }

LABEL_5:
  v10 = md::getStorage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>(&a1[501], *a4);
  if (!v10)
  {
    *&v125 = a3[1];
    v137[0] = v125;
    v11 = md::VKMRenderResourcesStore::addKey<md::StyleEmissiveColorCacheKey>(a1, &v125, v137);
    *a4 = v11;
    v10 = md::getStorage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>(&a1[501], v11);
  }

  *(v10 + 8) = v124;
  v12 = (v10 + 8);
  *(v10 + 16) = _S8;
  *v10 = a3[1];
  v13 = std::__hash_table<std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,std::__unordered_map_hasher<md::StyleEmissiveColorCacheKey,std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,md::StyleEmissiveColorCacheKeyHasher,std::equal_to<md::StyleEmissiveColorCacheKey>,true>,std::__unordered_map_equal<md::StyleEmissiveColorCacheKey,std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>,std::equal_to<md::StyleEmissiveColorCacheKey>,md::StyleEmissiveColorCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::StyleEmissiveColorCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleEmissiveColor>>>>>::find<md::StyleEmissiveColorCacheKey>(&a1[491], v10);
  if (v13)
  {
    v14 = v13[5];
    if (v14)
    {
      if (a4[1] != v14)
      {
        v15 = *(*(*&a1[448] + 8 * (v13[5] >> 6)) + 16 * (v13[5] & 0x3F) + 8);
        v16 = *(*&a1[454] + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v15 & 0x3F);
        ++*(v16 + 8);
        md::updateRetainedCounter(&a1[447], a4[1]);
      }

      goto LABEL_160;
    }
  }

  v125 = 0uLL;
  v126 = 0;
  v136 = 0;
  v17 = a1[474];
  v18 = a1[476];
  if (*&a1[473] == *&v17)
  {
    v14 = ((*&a1[477] - *&v18) >> 3) | 0x100000000;
    v137[0] = v14;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](&a1[476], v137);
  }

  else
  {
    v14 = *(*&v18 + 8 * *(*&v17 - 8));
    a1[474] = (*&v17 - 8);
  }

  v137[0] = v14;
  v19 = v14 >> 6;
  v20 = a1[449];
  v21 = a1[448];
  if (v19 >= (*&v20 - *&v21) >> 3)
  {
    v22 = v19 + 1;
    v23 = v19 + 1 - ((*&v20 - *&v21) >> 3);
    v24 = a1[450];
    if (v23 > (*&v24 - *&v20) >> 3)
    {
      v25 = *&v24 - *&v21;
      if (v25 >> 2 > v22)
      {
        v22 = v25 >> 2;
      }

      if (v25 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v22;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v26);
    }

    bzero(*&a1[449], 8 * v23);
    a1[449] = (*&v20 + 8 * v23);
    v21 = a1[448];
  }

  v27 = *(*&v21 + 8 * v19);
  if (!v27)
  {
    operator new();
  }

  v28 = (v27 + 16 * (v14 & 0x3F));
  if (*v28 == -1 && v28[1] == 0)
  {
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](&a1[451], v137);
    v30 = ((*&a1[452] - *&a1[451]) >> 3) - 1;
    *v28 = HIDWORD(v14);
    v28[1] = v30;
    v31 = v30 & 0x3F;
    v32 = (*(*&a1[454] + 8 * ecs2::pool<md::Counter,64ul>::page_at_index(&a1[454], v30)) + 24 * v31);
    *v32 = vdupq_n_s64(1uLL);
    v32[1].i16[0] = 1;
    v33 = v30 >> 6;
    v34 = a1[461];
    v35 = a1[460];
    v123 = v30 >> 6;
    v122 = v31;
    if (v30 >> 6 >= (*&v34 - *&v35) >> 3)
    {
      v36 = v33 + 1;
      v37 = v33 + 1 - ((*&v34 - *&v35) >> 3);
      v38 = a1[462];
      v120 = *&v34 - *&v35;
      if (v37 > (*&v38 - *&v34) >> 3)
      {
        v39 = *&v38 - *&v35;
        v40 = (*&v38 - *&v35) >> 2;
        if (v40 <= v36)
        {
          v40 = v33 + 1;
        }

        if (v39 >= 0x7FFFFFFFFFFFFFF8)
        {
          v41 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v41 = v40;
        }

        if (!(v41 >> 61))
        {
          operator new();
        }

        goto LABEL_163;
      }

      v42 = 0;
      v43 = (v37 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v44 = vdupq_n_s64(v43);
      do
      {
        v45 = vmovn_s64(vcgeq_u64(v44, vorrq_s8(vdupq_n_s64(v42), xmmword_1B33B0560)));
        if (v45.i8[0])
        {
          *(*&v34 + 8 * v42) = 0;
        }

        if (v45.i8[4])
        {
          *(*&v34 + 8 * v42 + 8) = 0;
        }

        v42 += 2;
      }

      while (v43 - ((v37 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v42);
      a1[461] = (*&v34 + 8 * v37);
      v46 = a1[464];
      v47 = a1[463];
      v48 = (*&v46 - *&v47) >> 4;
      if (v48 <= v33)
      {
        v49 = v36 - v48;
        v50 = a1[465];
        if (v49 > (*&v50 - *&v46) >> 4)
        {
          v51 = *&v50 - *&v47;
          v52 = v51 >> 3;
          if (v51 >> 3 <= v36)
          {
            v52 = v36;
          }

          if (v51 >= 0x7FFFFFFFFFFFFFF0)
          {
            v53 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v53 = v52;
          }

          if (!(v53 >> 60))
          {
            operator new();
          }

          goto LABEL_163;
        }

        bzero(*&a1[464], 16 * v49);
        a1[464] = (*&v46 + 16 * v49);
        v33 = v123;
      }

      else if (v36 < v48)
      {
        a1[464] = (*&v47 + 16 * v36);
      }

      v35 = a1[460];
      v31 = v122;
      if (v120 < *&a1[461] - *&v35)
      {
        operator new();
      }
    }

    v54 = *(*&v35 + 8 * v33) + 24 * v31;
    *v54 = v125;
    *(v54 + 16) = v126;
    *(&v125 + 1) = 0;
    v126 = 0;
    v55 = a1[467];
    v56 = a1[466];
    if (v33 < (*&v55 - *&v56) >> 3)
    {
LABEL_91:
      *(*(*&v56 + 8 * v33) + 8 * v31) = v136;
      goto LABEL_92;
    }

    v57 = v33 + 1;
    v58 = v33 + 1 - ((*&v55 - *&v56) >> 3);
    v59 = a1[468];
    v121 = *&v55 - *&v56;
    if (v58 > (*&v59 - *&v55) >> 3)
    {
      v60 = *&v59 - *&v56;
      v61 = (*&v59 - *&v56) >> 2;
      if (v61 <= v57)
      {
        v61 = v33 + 1;
      }

      if (v60 >= 0x7FFFFFFFFFFFFFF8)
      {
        v62 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v62 = v61;
      }

      if (!(v62 >> 61))
      {
        operator new();
      }

      goto LABEL_163;
    }

    v63 = 0;
    v64 = (v58 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v65 = vdupq_n_s64(v64);
    do
    {
      v66 = vmovn_s64(vcgeq_u64(v65, vorrq_s8(vdupq_n_s64(v63), xmmword_1B33B0560)));
      if (v66.i8[0])
      {
        *(*&v55 + 8 * v63) = 0;
      }

      if (v66.i8[4])
      {
        *(*&v55 + 8 * v63 + 8) = 0;
      }

      v63 += 2;
    }

    while (v64 - ((v58 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v63);
    a1[467] = (*&v55 + 8 * v58);
    v67 = a1[470];
    v68 = a1[469];
    v69 = (*&v67 - *&v68) >> 4;
    if (v69 > v33)
    {
      if (v57 < v69)
      {
        a1[470] = (*&v68 + 16 * v57);
      }

      goto LABEL_89;
    }

    v70 = v57 - v69;
    v71 = a1[471];
    if (v70 <= (*&v71 - *&v67) >> 4)
    {
      bzero(*&a1[470], 16 * v70);
      a1[470] = (*&v67 + 16 * v70);
      v33 = v123;
LABEL_89:
      v56 = a1[466];
      v31 = v122;
      if (v121 < *&a1[467] - *&v56)
      {
        operator new();
      }

      goto LABEL_91;
    }

    v72 = *&v71 - *&v68;
    v73 = v72 >> 3;
    if (v72 >> 3 <= v57)
    {
      v73 = v57;
    }

    if (v72 >= 0x7FFFFFFFFFFFFFF0)
    {
      v74 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v74 = v73;
    }

    if (!(v74 >> 60))
    {
      operator new();
    }

LABEL_163:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_92:
  v75 = geo::Color<float,3,(geo::ColorSpace)0>::hash(v12);
  v76 = v75 - 0x61C8864680B583EBLL;
  v77 = a1[492];
  if (!*&v77)
  {
    goto LABEL_113;
  }

  v78 = vcnt_s8(v77);
  v78.i16[0] = vaddlv_u8(v78);
  if (v78.u32[0] > 1uLL)
  {
    v79 = v75 - 0x61C8864680B583EBLL;
    if (v76 >= *&v77)
    {
      v79 = v76 % *&v77;
    }
  }

  else
  {
    v79 = (*&v77 - 1) & v76;
  }

  v80 = *(*&a1[491] + 8 * v79);
  if (!v80 || (v81 = *v80) == 0)
  {
LABEL_113:
    operator new();
  }

  while (1)
  {
    v82 = v81[1];
    if (v82 == v76)
    {
      break;
    }

    if (v78.u32[0] > 1uLL)
    {
      if (v82 >= *&v77)
      {
        v82 %= *&v77;
      }
    }

    else
    {
      v82 &= *&v77 - 1;
    }

    if (v82 != v79)
    {
      goto LABEL_113;
    }

LABEL_112:
    v81 = *v81;
    if (!v81)
    {
      goto LABEL_113;
    }
  }

  if (v81[3] != *v12 || *(v81 + 8) != *(v10 + 16))
  {
    goto LABEL_112;
  }

  v81[5] = v14;
  v84 = a1[497];
  if (!*&v84)
  {
    goto LABEL_131;
  }

  v85 = vcnt_s8(v84);
  v85.i16[0] = vaddlv_u8(v85);
  if (v85.u32[0] > 1uLL)
  {
    v86 = v14;
    if (v14 >= *&v84)
    {
      v86 = v14 % *&v84;
    }
  }

  else
  {
    v86 = (*&v84 - 1) & v14;
  }

  v87 = *(*&a1[496] + 8 * v86);
  if (!v87 || (v88 = *v87) == 0)
  {
LABEL_131:
    operator new();
  }

  while (2)
  {
    v89 = v88[1];
    if (v89 != v14)
    {
      if (v85.u32[0] > 1uLL)
      {
        if (v89 >= *&v84)
        {
          v89 %= *&v84;
        }
      }

      else
      {
        v89 &= *&v84 - 1;
      }

      if (v89 != v86)
      {
        goto LABEL_131;
      }

      goto LABEL_130;
    }

    if (v88[2] != v14)
    {
LABEL_130:
      v88 = *v88;
      if (!v88)
      {
        goto LABEL_131;
      }

      continue;
    }

    break;
  }

  v90 = 0;
  v88[3] = *v10;
  do
  {
    *(v88 + v90 + 32) = *(v12 + v90);
    v90 += 4;
  }

  while (v90 != 12);
  if (v126)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v126);
  }

  v91 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(&a1[447], v14);
  if (v91 == *&a1[452])
  {
    v92 = 0;
    goto LABEL_159;
  }

  v93 = v91;
  v94 = a1[451];
  v95 = a1[485];
  if (*&a1[484] == *&v95)
  {
    v96 = a1[490];
    if (!*&v96)
    {
      v119 = std::__throw_bad_function_call[abi:nn200100]();
      operator delete(v88);
      if (v135)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v135);
      }

      _Unwind_Resume(v119);
    }

    v92 = (*(**&v96 + 48))(v96);
  }

  else
  {
    v92 = *(*&v95 - 8);
    a1[485] = (*&v95 - 8);
  }

  v97 = 0x9DDFEA08EB382D69 * ((8 * (v92 & 0x1FFFFFFF) + 8) ^ HIDWORD(v92));
  v98 = 0x9DDFEA08EB382D69 * (HIDWORD(v92) ^ (v97 >> 47) ^ v97);
  v99 = 0x9DDFEA08EB382D69 * (v98 ^ (v98 >> 47));
  v100 = a1[480];
  if (!*&v100)
  {
    goto LABEL_158;
  }

  v101 = vcnt_s8(v100);
  v101.i16[0] = vaddlv_u8(v101);
  if (v101.u32[0] > 1uLL)
  {
    v102 = 0x9DDFEA08EB382D69 * (v98 ^ (v98 >> 47));
    if (v99 >= *&v100)
    {
      v102 = v99 % *&v100;
    }
  }

  else
  {
    v102 = v99 & (*&v100 - 1);
  }

  v103 = *(*&a1[479] + 8 * v102);
  if (!v103 || (v104 = *v103) == 0)
  {
LABEL_158:
    operator new();
  }

  while (2)
  {
    v105 = v104[1];
    if (v105 != v99)
    {
      if (v101.u32[0] > 1uLL)
      {
        if (v105 >= *&v100)
        {
          v105 %= *&v100;
        }
      }

      else
      {
        v105 &= *&v100 - 1;
      }

      if (v105 != v102)
      {
        goto LABEL_158;
      }

      goto LABEL_157;
    }

    if (v104[2] != v92)
    {
LABEL_157:
      v104 = *v104;
      if (!v104)
      {
        goto LABEL_158;
      }

      continue;
    }

    break;
  }

  v106 = (((v93 - *&v94) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
  v107 = *(*&a1[454] + v106);
  v108 = ((v93 - *&v94) >> 3) & 0x3F;
  v109 = *(*&a1[460] + v106);
  v110 = *(*&a1[466] + v106);
  *(v109 + 24 * v108) = v92;
  ++*(v107 + 24 * v108);
  *(v110 + 8 * v108) = v92;
LABEL_159:
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v125, v92);
  _S1 = v124;
  __asm { FCVT            H0, S1 }

  _S1 = HIDWORD(v124);
  __asm
  {
    FCVT            H1, S1
    FCVT            H2, S8
  }

  v118 = v127;
  *v127 = _H0;
  v118[1] = _S1;
  v118[2] = _H2;
  md::updateRetainedCounter(&a1[447], a4[1]);
  ggl::BufferMemory::~BufferMemory(&v125);
LABEL_160:
  a4[1] = v14;
  if (v135)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v135);
  }
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::UniqueStyleEmissiveDataKeyHandle>(ecs2::Entity,md::ls::UniqueStyleEmissiveDataKeyHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueStyleEmissiveDataKeyHandle>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 16 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 16 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::UniqueStyleEmissiveDataKeyHandle>(ecs2::Entity,md::ls::UniqueStyleEmissiveDataKeyHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A1E300;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t std::__function::__func<ecs2::RemoveComponent::RemoveComponent<md::ls::UniqueStyleEmissiveDataKeyHandle>(ecs2::Entity,std::type_identity<md::ls::UniqueStyleEmissiveDataKeyHandle>)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::RemoveComponent::RemoveComponent<md::ls::UniqueStyleEmissiveDataKeyHandle>(ecs2::Entity,std::type_identity<md::ls::UniqueStyleEmissiveDataKeyHandle>)::{lambda(ecs2::BasicRegistry<void> &)#1}>,void ()(ecs2::BasicRegistry<void> &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A1E208;
  *(a2 + 8) = *(result + 8);
  return result;
}

void ggl::PolylineOverlayRibbon::FillPipelineState::~FillPipelineState(ggl::PolylineOverlayRibbon::FillPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::PolylineOverlayRibbon::FillPipelineSetup::typedReflection(ggl::PolylineOverlayRibbon::FillPipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::PolylineOverlayRibbon::DefaultVbo>::typedReflection();
    ggl::PolylineOverlayRibbon::FillPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::PolylineOverlayRibbon::DefaultVbo>::typedReflection(void)::r;
    *algn_1EB841FA8 = &ggl::PolylineOverlayRibbon::pipelineDataFillPipelineDeviceStructs(void)::ref;
    qword_1EB841FB0 = 0;
    {
      ggl::PolylineOverlayRibbon::pipelineDataFillPipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      unk_1EB841F30 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1EB841F38 = ggl::PolylineOverlayRibbon::Style::reflection(void)::reflection;
    }

    qword_1EB841FB8 = &ggl::PolylineOverlayRibbon::pipelineDataFillPipelineConstantStructs(void)::ref;
    unk_1EB841FC0 = xmmword_1B33B07A0;
  }
}

void ggl::PolylineOverlayRibbon::FillPipelineSetup::~FillPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::PolylineOverlayRibbon::AlphaPipelineState::~AlphaPipelineState(ggl::PolylineOverlayRibbon::AlphaPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::PolylineOverlayRibbon::AlphaPipelineSetup::typedReflection(ggl::PolylineOverlayRibbon::AlphaPipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::PolylineOverlayRibbon::DefaultVbo>::typedReflection();
    ggl::PolylineOverlayRibbon::AlphaPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::PolylineOverlayRibbon::DefaultVbo>::typedReflection(void)::r;
    *algn_1EB841F78 = &ggl::PolylineOverlayRibbon::pipelineDataAlphaPipelineDeviceStructs(void)::ref;
    qword_1EB841F80 = 0;
    {
      ggl::PolylineOverlayRibbon::pipelineDataAlphaPipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      unk_1EB841F10 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1EB841F18 = ggl::PolylineOverlayRibbon::Style::reflection(void)::reflection;
    }

    qword_1EB841F88 = &ggl::PolylineOverlayRibbon::pipelineDataAlphaPipelineConstantStructs(void)::ref;
    *algn_1EB841F90 = xmmword_1B33B07A0;
  }
}

void ggl::PolylineOverlayRibbon::AlphaPipelineSetup::~AlphaPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::PolylineOverlayRibbon::AlphaFillPipelineState::~AlphaFillPipelineState(ggl::PolylineOverlayRibbon::AlphaFillPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup::typedReflection(ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::PolylineOverlayRibbon::DefaultVbo>::typedReflection();
    ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::PolylineOverlayRibbon::DefaultVbo>::typedReflection(void)::r;
    *algn_1EB841F48 = &ggl::PolylineOverlayRibbon::pipelineDataAlphaFillPipelineDeviceStructs(void)::ref;
    qword_1EB841F50 = 0;
    {
      ggl::PolylineOverlayRibbon::pipelineDataAlphaFillPipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      unk_1EB841EF0 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1EB841EF8 = ggl::PolylineOverlayRibbon::Style::reflection(void)::reflection;
    }

    qword_1EB841F58 = &ggl::PolylineOverlayRibbon::pipelineDataAlphaFillPipelineConstantStructs(void)::ref;
    unk_1EB841F60 = xmmword_1B33B07A0;
  }
}

void ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup::~AlphaFillPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::TransitJunction::tangentsForLinks(uint64_t a1, void *a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5, _BYTE *a6)
{
  *a6 = 0;
  if (*(*a2 + 40) == a1)
  {
    v10 = a2[7];
    if (v10[11].i8[5] == 1)
    {
      v11 = *(a3 + 56);
      if (v11[11].i8[5] == 1 && *&v10[2] == *&v11[2])
      {
        *a4 = vneg_f32(*v11);
        *a5 = *v10;
        goto LABEL_16;
      }

      v12 = *(a3 + 64);
      if (*(v12 - 3) == 1 && *&v10[2] == *(v12 - 40))
      {
        *a4 = *(v12 - 56);
        a5->i32[0] = v10->i32[0];
        v9 = v10->i32[1];
        goto LABEL_18;
      }
    }

    return 0;
  }

  v6 = a2[8];
  if (*(v6 - 3) != 1)
  {
    return 0;
  }

  v7 = *(a3 + 64);
  if (*(v7 - 3) == 1 && *(v6 - 40) == *(v7 - 40))
  {
    *a4 = *(v6 - 56);
    *a5 = vneg_f32(*(v7 - 56));
LABEL_16:
    result = 1;
    *a6 = 1;
    return result;
  }

  v8 = *(a3 + 56);
  if (*(v8 + 93) != 1 || *(v6 - 40) != *(v8 + 16))
  {
    return 0;
  }

  *a4 = *(v6 - 56);
  a5->i32[0] = *v8;
  v9 = *(v8 + 4);
LABEL_18:
  a5->i32[1] = v9;
  return 1;
}

uint64_t md::TransitJunction::TransitJunction(uint64_t a1, void *a2, _DWORD *a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a1 + 32;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a1 + 56;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 79) = 0;
  *(a1 + 120) = 1065353216;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 1065353216;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 1065353216;
  *(a1 + 208) = 0;
  if (*a3)
  {
    v4 = a3[1];
    if (a2[191] > v4)
    {
      v5 = (a2[190] + 16 * v4);
      v6 = v5[1];
      v7 = a2[169];
      if (geo::codec::VectorTile::transitLinkCount(v7, a2[170]) > v6)
      {
        v12 = 0;
        v8 = geo::codec::transitLinkPoints(v7 + 184 * v6, v5[2], &v12);
        v9 = v5[3];
        if (v12 > v9)
        {
          v10 = &v8->__vftable + v9;
          *(a1 + 16) = *v10;
          *(a1 + 20) = *(v10 + 1);
          *(a1 + 82) = 1;
        }
      }
    }
  }

  return a1;
}

uint64_t *md::TransitJunction::addLink(uint64_t *this, md::TransitLink *a2)
{
  v2 = this[1];
  v3 = *(*a2 + 48);
  if ((v3 == v2) != (*(*a2 + 40) == v2))
  {
    v4 = v3 == v2;
    v5 = 56;
    if (v4)
    {
      v5 = 64;
    }

    v6 = 3;
    v7 = -32;
    if (!v4)
    {
      v7 = 24;
      v6 = 6;
    }

    *(*(a2 + v5) + v7) = this;
    v8 = this[v6 + 1];
    if (!v8)
    {
LABEL_12:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v9 = v8;
        v10 = *(v8 + 32);
        if (v10 <= a2)
        {
          break;
        }

        v8 = *v9;
        if (!*v9)
        {
          goto LABEL_12;
        }
      }

      if (v10 >= a2)
      {
        break;
      }

      v8 = v9[1];
      if (!v8)
      {
        goto LABEL_12;
      }
    }
  }

  return this;
}

void *std::__hash_table<std::__hash_value_type<std::pair<md::TransitLink const*,md::TransitLink const*>,gm::Matrix<float,2,1>>,std::__unordered_map_hasher<std::pair<md::TransitLink const*,md::TransitLink const*>,std::__hash_value_type<std::pair<md::TransitLink const*,md::TransitLink const*>,gm::Matrix<float,2,1>>,md::TransitJunction::LinkPairHash,std::equal_to<std::pair<md::TransitLink const*,md::TransitLink const*>>,true>,std::__unordered_map_equal<std::pair<md::TransitLink const*,md::TransitLink const*>,std::__hash_value_type<std::pair<md::TransitLink const*,md::TransitLink const*>,gm::Matrix<float,2,1>>,std::equal_to<std::pair<md::TransitLink const*,md::TransitLink const*>>,md::TransitJunction::LinkPairHash,true>,std::allocator<std::__hash_value_type<std::pair<md::TransitLink const*,md::TransitLink const*>,gm::Matrix<float,2,1>>>>::__emplace_unique_key_args<std::pair<md::TransitLink const*,md::TransitLink const*>,std::piecewise_construct_t const&,std::tuple<std::pair<md::TransitLink const*,md::TransitLink const*>&&>,std::tuple<>>(float *a1, uint64_t a2, uint64_t a3, _OWORD **a4)
{
  v4 = a3 ^ a2;
  v5 = *(a1 + 2);
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = a3 ^ a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (v9[2] != a2 || v9[3] != a3)
  {
    goto LABEL_21;
  }

  return v9;
}

uint64_t *std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_0 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkInfo **>>(uint64_t *result, uint64_t *a2, unint64_t a3, uint64_t *a4, int64_t a5)
{
  if (a3 < 2)
  {
    return result;
  }

  v6 = result;
  if (a3 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *result;
    if ((v7[32] & 1) != 0 || (v8[32] & 1) == 0 && *(*v7 + 88) - *(*v7 + 80) > *(*v8 + 88) - *(*v8 + 80))
    {
      *result = v7;
      *(a2 - 1) = v8;
    }

    return result;
  }

  if (a3 <= 128)
  {
    if (result == a2)
    {
      return result;
    }

    v10 = result + 1;
    if (result + 1 == a2)
    {
      return result;
    }

    v11 = 0;
    v12 = result;
    while (1)
    {
      v13 = v12;
      v12 = v10;
      v14 = *v10;
      v15 = *v13;
      v16 = v14[32];
      if ((v16 & 1) == 0 && ((v15[32] & 1) != 0 || *(*v14 + 88) - *(*v14 + 80) <= *(*v15 + 88) - *(*v15 + 80)))
      {
        goto LABEL_20;
      }

      *v12 = v15;
      if (v13 == result)
      {
LABEL_16:
        v13 = result;
        goto LABEL_17;
      }

      v17 = v11;
      while (1)
      {
        v18 = *(result + v17 - 8);
        if ((v16 & 1) == 0)
        {
          break;
        }

LABEL_15:
        --v13;
        *(result + v17) = v18;
        v17 -= 8;
        if (!v17)
        {
          goto LABEL_16;
        }
      }

      if ((v18[32] & 1) == 0)
      {
        break;
      }

      v13 = (result + v17);
LABEL_17:
      *v13 = v14;
LABEL_20:
      v10 = v12 + 1;
      v11 += 8;
      if (v12 + 1 == a2)
      {
        return result;
      }
    }

    if (*(*v14 + 88) - *(*v14 + 80) <= *(*v18 + 88) - *(*v18 + 80))
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v20 = a4;
  v21 = a3 >> 1;
  v22 = &result[a3 >> 1];
  v23 = a3 >> 1;
  if (a3 <= a5)
  {
    std::__stable_sort_move<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_0 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkInfo **>>(result, v22, v23, a4);
    v24 = &v20[v21];
    result = std::__stable_sort_move<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_0 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkInfo **>>(&v6[8 * (a3 >> 1)], a2, a3 - (a3 >> 1), v24);
    v25 = &v20[a3];
    v26 = v24;
    while (v26 != v25)
    {
      v27 = *v26;
      if ((*(*v26 + 32) & 1) != 0 || (v28 = *v20, (*(*v20 + 32) & 1) == 0) && *(*v27 + 88) - *(*v27 + 80) > *(*v28 + 88) - *(*v28 + 80))
      {
        *v6 = v27;
        ++v26;
      }

      else
      {
        *v6 = v28;
        ++v20;
      }

      v6 += 8;
      if (v20 == v24)
      {
        while (v26 != v25)
        {
          v30 = *v26++;
          *v6 = v30;
          v6 += 8;
        }

        return result;
      }
    }

    while (v20 != v24)
    {
      v29 = *v20++;
      *v6 = v29;
      v6 += 8;
    }
  }

  else
  {
    std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_0 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkInfo **>>(result, v22, v23, a4, a5);
    std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_0 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkInfo **>>(&v6[8 * (a3 >> 1)], a2, a3 - (a3 >> 1), v20, a5);

    return std::__inplace_merge<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_0 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkInfo **>>(v6, &v6[8 * (a3 >> 1)], a2, a3 >> 1, a3 - (a3 >> 1), v20, a5);
  }

  return result;
}

char **std::vector<md::TransitJunction::generateLinkNormals(void)::LinkInfo,std::allocator<md::TransitJunction::generateLinkNormals(void)::LinkInfo>>::~vector[abi:nn200100](char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 4);
        if (v5)
        {
          *(v3 - 3) = v5;
          operator delete(v5);
        }

        v3 -= 40;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

double std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_1 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkPath *>>(float *result, float *a2, unint64_t a3, __n128 *a4, int64_t a5, __n128 a6)
{
  if (a3 >= 2)
  {
    v7 = result;
    if (a3 == 2)
    {
      v8 = a2 - 4;
      v9 = *(*(a2 - 2) + 32);
      a6.n128_f32[0] = *(a2 - 2);
      if (v9 == *(*result + 32))
      {
        v9 = a6.n128_f32[0] > result[2];
      }

      if (v9)
      {
        a6 = *result;
        v40 = *result;
        v10 = *(a2 - 2);
        *result = *v8;
        *(result + 2) = v10;
        *v8 = v40;
        *(a2 - 2) = *(&v40 + 2);
      }
    }

    else if (a3 > 128)
    {
      v25 = a4;
      v26 = a3 >> 1;
      v27 = &result[4 * (a3 >> 1)];
      v28 = a3 >> 1;
      if (a3 <= a5)
      {
        v30.n128_f64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_1 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkPath *>>(result, v27, v28, a4, a6);
        v31 = &v25[4 * v26];
        a6.n128_f64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_1 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkPath *>>(&v7[4 * (a3 >> 1)], a2, a3 - (a3 >> 1), v31, v30);
        v32 = &v25[4 * a3];
        v33 = v31;
        while (v33 != v32)
        {
          v34 = *(v33->n128_u64[0] + 32);
          a6.n128_u32[0] = v33->n128_u32[2];
          if (v34 == *(*v25 + 32))
          {
            v34 = a6.n128_f32[0] > v25[2];
          }

          if (v34)
          {
            v35 = v33->n128_u64[0];
            v7[2] = v33->n128_f32[2];
            *v7 = v35;
            ++v33;
          }

          else
          {
            v36 = *v25;
            v7[2] = v25[2];
            *v7 = v36;
            v25 += 4;
          }

          v7 += 4;
          if (v25 == v31)
          {
            while (v33 != v32)
            {
              v38 = v33->n128_u64[0];
              v7[2] = v33->n128_f32[2];
              *v7 = v38;
              v7 += 4;
              ++v33;
            }

            return a6.n128_f64[0];
          }
        }

        while (v25 != v31)
        {
          v37 = *v25;
          v7[2] = v25[2];
          *v7 = v37;
          v7 += 4;
          v25 += 4;
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_1 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkPath *>>(result, v27, v28, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_1 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkPath *>>(&v7[4 * (a3 >> 1)], a2, a3 - (a3 >> 1), v25, a5);

        a6.n128_u64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_1 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkPath *>>(v7, &v7[4 * (a3 >> 1)], a2, a3 >> 1, a3 - (a3 >> 1), v25, a5, v29).n128_u64[0];
      }
    }

    else if (result != a2)
    {
      v12 = result + 4;
      if (result + 4 != a2)
      {
        v13 = 0;
        v14 = result;
        do
        {
          v15 = *v14;
          a6.n128_f32[0] = v14[6];
          v16 = v14[2];
          v14 = v12;
          v17 = *v12;
          if (*(v17 + 32) == *(v15 + 32))
          {
            v18 = a6.n128_f32[0] > v16;
          }

          else
          {
            v18 = *(v17 + 32);
          }

          if (v18)
          {
            v19 = v13;
            while (1)
            {
              v20 = result + v19;
              *(v20 + 2) = *(result + v19);
              *(v20 + 6) = *(result + v19 + 8);
              if (!v19)
              {
                break;
              }

              v21 = *(*(v20 - 2) + 32);
              v22 = a6.n128_f32[0] > *(v20 - 2);
              if (*(v17 + 32) != v21)
              {
                v22 = *(v17 + 32);
              }

              v19 -= 16;
              if ((v22 & 1) == 0)
              {
                v23 = (result + v19 + 16);
                goto LABEL_23;
              }
            }

            v23 = result;
LABEL_23:
            *v23 = v17;
            v23[2] = a6.n128_f32[0];
          }

          v12 = v14 + 4;
          v13 += 16;
        }

        while (v14 + 4 != a2);
      }
    }
  }

  return a6.n128_f64[0];
}

void *std::__hash_table<std::__hash_value_type<md::TransitLineSegment const*,gm::Matrix<float,2,1>>,std::__unordered_map_hasher<md::TransitLineSegment const*,std::__hash_value_type<md::TransitLineSegment const*,gm::Matrix<float,2,1>>,std::hash<md::TransitLineSegment const*>,std::equal_to<md::TransitLineSegment const*>,true>,std::__unordered_map_equal<md::TransitLineSegment const*,std::__hash_value_type<md::TransitLineSegment const*,gm::Matrix<float,2,1>>,std::equal_to<md::TransitLineSegment const*>,std::hash<md::TransitLineSegment const*>,true>,std::allocator<std::__hash_value_type<md::TransitLineSegment const*,gm::Matrix<float,2,1>>>>::__emplace_unique_key_args<md::TransitLineSegment const*,std::piecewise_construct_t const&,std::tuple<md::TransitLineSegment const*&&>,std::tuple<>>(void *a1, unint64_t a2, void **a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }

  return v10;
}

double std::__stable_sort_move<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_1 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkPath *>>(float *a1, float *a2, unint64_t a3, __n128 *a4, __n128 a5)
{
  if (a3)
  {
    v5 = a4;
    v8 = a1;
    if (a3 == 2)
    {
      v9 = (a2 - 4);
      v10 = *(*(a2 - 2) + 32);
      if (v10 == *(*a1 + 32))
      {
        v10 = *(a2 - 2) > a1[2];
      }

      if (v10)
      {
        *a4 = *v9;
        a5 = *a1;
      }

      else
      {
        *a4 = *a1;
        a5 = *v9;
      }

      a4[1] = a5;
    }

    else if (a3 == 1)
    {
      a5 = *a1;
      *a4 = *a1;
    }

    else if (a3 > 8)
    {
      v21 = &a1[4 * (a3 >> 1)];
      std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_1 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkPath *>>(a1, v21, a3 >> 1, a4, a3 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_1 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkPath *>>(&v8[4 * (a3 >> 1)], a2, a3 - (a3 >> 1), &v5[a3 >> 1], a3 - (a3 >> 1));
      v22 = &v8[4 * (a3 >> 1)];
      while (v22 != a2)
      {
        v23 = *(*v22 + 32);
        if (v23 == *(*v8 + 32))
        {
          v23 = v22[2] > v8[2];
        }

        if (v23)
        {
          v24 = *v22;
          v22 += 4;
          a5 = v24;
        }

        else
        {
          v25 = *v8;
          v8 += 4;
          a5 = v25;
        }

        *v5++ = a5;
        if (v8 == v21)
        {
          while (v22 != a2)
          {
            v27 = *v22;
            v22 += 4;
            a5.n128_u64[0] = v27.n128_u64[0];
            *v5++ = v27;
          }

          return a5.n128_f64[0];
        }
      }

      while (v8 != v21)
      {
        v26 = *v8;
        v8 += 4;
        a5.n128_u64[0] = v26.n128_u64[0];
        *v5++ = v26;
      }
    }

    else if (a1 != a2)
    {
      a5 = *a1;
      *a4 = *a1;
      v11 = a1 + 4;
      if (a1 + 4 != a2)
      {
        v12 = 0;
        v13 = a4;
        do
        {
          v14 = v11;
          v15 = v13 + 1;
          v16 = *(*v11 + 32);
          if (v16 == *(v13->n128_u64[0] + 32))
          {
            v16 = v8[6] > v13->n128_f32[2];
          }

          if (v16)
          {
            a5 = *v13;
            *v15 = *v13;
            v17 = a4;
            if (v13 != a4)
            {
              v18 = v12;
              while (1)
              {
                v17 = (a4 + v18);
                a5.n128_f32[0] = v8[6];
                if (!(*(*v14 + 32) == *(*(a4[-1].n128_u64 + v18) + 32) ? a5.n128_f32[0] > *(&a4->n128_f32[-2] + v18) : *(*v14 + 32)))
                {
                  break;
                }

                v17->n128_u64[0] = *(a4[-1].n128_u64 + v18);
                v17->n128_u32[2] = *(&a4->n128_u32[-2] + v18);
                v18 -= 16;
                if (!v18)
                {
                  v17 = a4;
                  break;
                }
              }
            }

            v20 = *v14;
            v17->n128_f32[2] = v14[2];
            v17->n128_u64[0] = v20;
          }

          else
          {
            a5 = *v14;
            *v15 = *v14;
          }

          v11 = v14 + 4;
          v12 += 16;
          v13 = v15;
          v8 = v14;
        }

        while (v14 + 4 != a2);
      }
    }
  }

  return a5.n128_f64[0];
}

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_1 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkPath *>>(float *a1, float *a2, float *a3, uint64_t a4, uint64_t a5, float *a6, uint64_t a7, __n128 result)
{
  if (a5)
  {
    v9 = a5;
    while (v9 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      result.n128_f32[0] = a2[2];
      while (!(*(*a2 + 32) == *(*a1 + 32) ? result.n128_f32[0] > a1[2] : *(*a2 + 32)))
      {
        a1 += 4;
        if (!--a4)
        {
          return result;
        }
      }

      if (a4 >= v9)
      {
        if (a4 == 1)
        {
          result = *a1;
          v73 = *a1;
          v66 = *a2;
          a1[2] = a2[2];
          *a1 = v66;
          *a2 = v73;
          a2[2] = *(&v73 + 2);
          return result;
        }

        v21 = a4 / 2;
        v15 = &a1[4 * (a4 / 2)];
        v14 = a2;
        if (a2 != a3)
        {
          v22 = (a3 - a2) >> 4;
          result.n128_f32[0] = v15[2];
          v14 = a2;
          do
          {
            v23 = v22 >> 1;
            v24 = &v14[4 * (v22 >> 1)];
            v25 = *(*v24 + 32);
            if (v25 == *(*v15 + 32))
            {
              LOBYTE(v25) = v24[2] > result.n128_f32[0];
            }

            v26 = v24 + 4;
            v22 += ~(v22 >> 1);
            if (v25)
            {
              v14 = v26;
            }

            else
            {
              v22 = v23;
            }
          }

          while (v22);
        }

        v13 = (v14 - a2) >> 4;
      }

      else
      {
        v13 = v9 / 2;
        v14 = &a2[4 * (v9 / 2)];
        v15 = a2;
        if (a2 != a1)
        {
          v16 = (a2 - a1) >> 4;
          result.n128_f32[0] = v14[2];
          v15 = a1;
          do
          {
            v17 = v16 >> 1;
            v18 = &v15[4 * (v16 >> 1)];
            if (*(*v14 + 32) == *(*v18 + 32))
            {
              v19 = result.n128_f32[0] > v18[2];
            }

            else
            {
              v19 = *(*v14 + 32);
            }

            v20 = v18 + 4;
            v16 += ~(v16 >> 1);
            if (v19)
            {
              v16 = v17;
            }

            else
            {
              v15 = v20;
            }
          }

          while (v16);
        }

        v21 = (v15 - a1) >> 4;
      }

      v27 = v14;
      v28 = a2 - v15;
      if (a2 != v15)
      {
        v27 = v15;
        if (a2 != v14)
        {
          if (v15 + 4 == a2)
          {
            v71 = *v15;
            v29 = v14 - a2;
            v67 = a6;
            v69 = a3;
            v30 = v21;
            memmove(v15, a2, v14 - a2 - 4);
            v21 = v30;
            a6 = v67;
            a3 = v69;
            v27 = (v15 + v29);
            *v27 = v71;
            v27[2] = *(&v71 + 2);
          }

          else if (a2 + 4 == v14)
          {
            v27 = v15 + 4;
            result = *(v14 - 4);
            v72 = result;
            if (v14 - 4 != v15)
            {
              v68 = a6;
              v70 = a3;
              v31 = v21;
              memmove(v15 + 4, v15, (v14 - 4) - v15 - 4);
              v21 = v31;
              a6 = v68;
              a3 = v70;
            }

            v15[2] = v72.n128_f32[2];
            *v15 = v72.n128_u64[0];
          }

          else
          {
            v32 = v28 >> 4;
            v33 = v14 - a2;
            if (v28 >> 4 == (v14 - a2) >> 4)
            {
              v34 = v15 + 4;
              v35 = a2 + 4;
              do
              {
                result = *(v34 - 4);
                v36 = *(v35 - 2);
                *(v34 - 2) = *(v35 - 2);
                *(v34 - 2) = v36;
                *(v35 - 2) = result.n128_u64[0];
                *(v35 - 2) = result.n128_f32[2];
                if (v34 == a2)
                {
                  break;
                }

                v34 += 4;
                v54 = v35 == v14;
                v35 += 4;
              }

              while (!v54);
              v27 = a2;
            }

            else
            {
              v37 = v33 >> 4;
              v38 = v28 >> 4;
              do
              {
                v39 = v38;
                v38 = v37;
                v37 = v39 % v37;
              }

              while (v37);
              v40 = &v15[4 * v38];
              do
              {
                result = *(v40 - 4);
                v40 -= 4;
                v41 = (v40 + v28);
                v42 = v40;
                do
                {
                  v43 = v41;
                  v44 = *v41;
                  v42[2] = v43[2];
                  *v42 = v44;
                  v41 = &v43[4 * v32];
                  if (v32 >= (v14 - v43) >> 4)
                  {
                    v41 = &v15[4 * (v32 - ((v14 - v43) >> 4))];
                  }

                  v42 = v43;
                }

                while (v41 != v40);
                v43[2] = result.n128_f32[2];
                *v43 = result.n128_u64[0];
              }

              while (v40 != v15);
              v27 = (v15 + v33);
            }
          }
        }
      }

      a4 -= v21;
      v9 -= v13;
      if (v21 + v13 >= a4 + v9)
      {
        v48 = v14;
        v49 = v21;
        v47 = a6;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_1 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkPath *>>(v27, v48, a3, a4, v9, a6, a7, result);
        a2 = v15;
        v9 = v13;
        a4 = v49;
        a3 = v27;
      }

      else
      {
        v45 = a1;
        v46 = a3;
        v47 = a6;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_1 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkPath *>>(v45, v15, v27, v21, v13, a6, a7, result);
        a3 = v46;
        a1 = v27;
        a2 = v14;
      }

      a6 = v47;
      if (!v9)
      {
        return result;
      }
    }

    if (a4 <= v9)
    {
      if (a2 != a1)
      {
        v60 = a6;
        v61 = a1;
        do
        {
          v62 = *v61;
          v61 += 4;
          result.n128_u32[1] = DWORD1(v62);
          *v60 = v62;
          v60 += 4;
        }

        while (v61 != a2);
        while (a2 != a3)
        {
          v63 = *(*a2 + 32);
          result.n128_f32[0] = a2[2];
          if (v63 == *(*a6 + 32))
          {
            v63 = result.n128_f32[0] > a6[2];
          }

          if (v63)
          {
            v64 = *a2;
            a1[2] = a2[2];
            *a1 = v64;
            a2 += 4;
          }

          else
          {
            v65 = *a6;
            a1[2] = a6[2];
            *a1 = v65;
            a6 += 4;
          }

          a1 += 4;
          if (a6 == v60)
          {
            return result;
          }
        }

        memmove(a1, a6, v60 - a6 - 4);
      }
    }

    else if (a2 != a3)
    {
      v50 = a6;
      v51 = a2;
      do
      {
        v52 = *v51;
        v51 += 4;
        result.n128_u64[0] = v52;
        *v50 = v52;
        v50 += 4;
      }

      while (v51 != a3);
      while (a2 != a1)
      {
        v53 = *(*(v50 - 2) + 32);
        result.n128_f32[0] = *(v50 - 2);
        if (v53 == *(*(a2 - 2) + 32))
        {
          LOBYTE(v53) = result.n128_f32[0] > *(a2 - 2);
        }

        v54 = (v53 & 1) == 0;
        if (v53)
        {
          v55 = a2 - 4;
        }

        else
        {
          v55 = v50 - 4;
        }

        v56 = *(v55 + 2);
        *(a3 - 2) = *v55;
        a3 -= 4;
        if (v54)
        {
          v50 -= 4;
        }

        else
        {
          a2 -= 4;
        }

        *(a3 + 2) = v56;
        if (v50 == a6)
        {
          return result;
        }
      }

      if (v50 != a6)
      {
        v57 = 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v58 = *(v50 - 2);
          v50 -= 4;
          v59 = &a3[v57];
          v59[2] = v50[2];
          *v59 = v58;
          v57 -= 4;
        }

        while (v50 != a6);
      }
    }
  }

  return result;
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_0 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkInfo **>>(uint64_t *result, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = result;
    if (a3 == 1)
    {
      v9 = result;
LABEL_31:
      *v4 = *v9;
      return result;
    }

    if (a3 == 2)
    {
      v9 = a2 - 1;
      v8 = *(a2 - 1);
      if ((v8[32] & 1) != 0 || (*(*result + 32) & 1) == 0 && *(*v8 + 88) - *(*v8 + 80) > *(**result + 88) - *(**result + 80))
      {
        v9 = result;
      }

      else
      {
        v8 = *result;
      }

      *a4 = v8;
      v4 = a4 + 1;
      goto LABEL_31;
    }

    if (a3 > 8)
    {
      v20 = &result[a3 >> 1];
      std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_0 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkInfo **>>(result, v20, a3 >> 1, a4, a3 >> 1);
      result = std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_0 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkInfo **>>(&v6[a3 >> 1], a2, a3 - (a3 >> 1), &v4[a3 >> 1], a3 - (a3 >> 1));
      v21 = &v6[a3 >> 1];
      while (v21 != a2)
      {
        v22 = *v21;
        if ((*(*v21 + 32) & 1) != 0 || (v23 = *v6, (*(*v6 + 32) & 1) == 0) && *(*v22 + 88) - *(*v22 + 80) > *(*v23 + 88) - *(*v23 + 80))
        {
          *v4 = v22;
          ++v21;
        }

        else
        {
          *v4 = v23;
          ++v6;
        }

        ++v4;
        if (v6 == v20)
        {
          while (v21 != a2)
          {
            v25 = *v21++;
            *v4++ = v25;
          }

          return result;
        }
      }

      while (v6 != v20)
      {
        v24 = *v6++;
        *v4++ = v24;
      }
    }

    else if (result != a2)
    {
      v10 = result + 1;
      *a4 = *result;
      if (result + 1 != a2)
      {
        v11 = 0;
        v12 = a4;
        v13 = a4;
        do
        {
          v15 = *v13++;
          v14 = v15;
          v16 = *v10;
          if ((*(*v10 + 32) & 1) != 0 || (v14[32] & 1) == 0 && *(*v16 + 88) - *(*v16 + 80) > *(*v14 + 88) - *(*v14 + 80))
          {
            v12[1] = v14;
            v17 = a4;
            if (v12 != a4)
            {
              v18 = v11;
              while (1)
              {
                v19 = *(a4 + v18 - 8);
                if ((*(*v10 + 32) & 1) == 0)
                {
                  if (v19[32])
                  {
                    v17 = (a4 + v18);
                    goto LABEL_24;
                  }

                  if (*(**v10 + 88) - *(**v10 + 80) <= *(*v19 + 88) - *(*v19 + 80))
                  {
                    break;
                  }
                }

                --v12;
                *(a4 + v18) = v19;
                v18 -= 8;
                if (!v18)
                {
                  v17 = a4;
                  goto LABEL_24;
                }
              }

              v17 = v12;
            }

LABEL_24:
            *v17 = *v10;
          }

          else
          {
            *v13 = v16;
          }

          ++v10;
          v11 += 8;
          v12 = v13;
        }

        while (v10 != a2);
      }
    }
  }

  return result;
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_0 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkInfo **>>(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  if (a5)
  {
    v8 = a5;
    v11 = result;
    while (v8 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v12 = *a2;
      v13 = a4;
      for (i = v11; ; i += 8)
      {
        v15 = *i;
        if (*(*a2 + 32))
        {
          break;
        }

        if ((v15[32] & 1) == 0 && *(*v12 + 88) - *(*v12 + 80) > *(*v15 + 88) - *(*v15 + 80))
        {
          a4 = v13;
          v11 = i;
          break;
        }

        if (!--v13)
        {
          return result;
        }
      }

      if (a4 >= v8)
      {
        if (a4 == 1)
        {
          *v11 = v12;
          *a2 = v15;
          return result;
        }

        v22 = a4 / 2;
        v18 = &v11[8 * (a4 / 2)];
        v17 = a2;
        if (a2 != a3)
        {
          v23 = (a3 - a2) >> 3;
          v24 = *v18;
          v17 = a2;
          do
          {
            v25 = v23 >> 1;
            v26 = &v17[8 * (v23 >> 1)];
            if ((*(*v26 + 32) & 1) != 0 || (v24[32] & 1) == 0 && *(**v26 + 88) - *(**v26 + 80) > *(*v24 + 88) - *(*v24 + 80))
            {
              v17 = v26 + 8;
              v25 = v23 + ~v25;
            }

            v23 = v25;
          }

          while (v25);
        }

        v16 = (v17 - a2) >> 3;
      }

      else
      {
        v16 = v8 / 2;
        v17 = &a2[8 * (v8 / 2)];
        v18 = a2;
        if (a2 != v11)
        {
          v19 = (a2 - v11) >> 3;
          v18 = v11;
          do
          {
            v20 = v19 >> 1;
            if ((*(*v17 + 32) & 1) == 0)
            {
              v21 = &v18[8 * v20];
              if ((*(*v21 + 32) & 1) != 0 || *(**v17 + 88) - *(**v17 + 80) <= *(**v21 + 88) - *(**v21 + 80))
              {
                v18 = v21 + 8;
                v20 = v19 + ~v20;
              }
            }

            v19 = v20;
          }

          while (v20);
        }

        v22 = (v18 - v11) >> 3;
      }

      v27 = v17;
      v28 = a2 - v18;
      if (a2 != v18)
      {
        v27 = v18;
        if (a2 != v17)
        {
          if (v18 + 8 == a2)
          {
            v68 = *v18;
            v70 = a6;
            v29 = v17 - a2;
            v30 = a3;
            memmove(v18, a2, v17 - a2);
            a3 = v30;
            a6 = v70;
            v27 = &v18[v29];
            *v27 = v68;
          }

          else if (a2 + 8 == v17)
          {
            v31 = *(v17 - 1);
            v27 = v18 + 8;
            if (v17 - 8 != v18)
            {
              v69 = *(v17 - 1);
              v71 = a6;
              v32 = a3;
              memmove(v18 + 8, v18, v17 - 8 - v18);
              v31 = v69;
              a6 = v71;
              a3 = v32;
            }

            *v18 = v31;
          }

          else
          {
            v33 = v28 >> 3;
            v34 = v17 - a2;
            if (v28 >> 3 == (v17 - a2) >> 3)
            {
              v35 = v18 + 8;
              v36 = a2 + 8;
              do
              {
                v37 = *(v35 - 1);
                *(v35 - 1) = *(v36 - 1);
                *(v36 - 1) = v37;
                if (v35 == a2)
                {
                  break;
                }

                v35 += 8;
                v38 = v36 == v17;
                v36 += 8;
              }

              while (!v38);
              v27 = a2;
            }

            else
            {
              v39 = v34 >> 3;
              v40 = v28 >> 3;
              do
              {
                v41 = v40;
                v40 = v39;
                v39 = v41 % v39;
              }

              while (v39);
              v42 = &v18[8 * v40];
              do
              {
                v44 = *(v42 - 1);
                v42 -= 8;
                v43 = v44;
                v45 = &v42[v28];
                v46 = v42;
                do
                {
                  v47 = v45;
                  *v46 = *v45;
                  v48 = &v45[8 * v33];
                  v49 = __OFSUB__(v33, (v17 - v45) >> 3);
                  v51 = v33 - ((v17 - v45) >> 3);
                  v50 = (v51 < 0) ^ v49;
                  v45 = &v18[8 * v51];
                  if (v50)
                  {
                    v45 = v48;
                  }

                  v46 = v47;
                }

                while (v45 != v42);
                *v47 = v43;
              }

              while (v42 != v18);
              v27 = &v18[v34];
            }
          }
        }
      }

      a4 -= v22;
      v8 -= v16;
      if (v22 + v16 >= a4 + v8)
      {
        v53 = a6;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_0 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkInfo **>>(v27, v17, a3, a4, v8, a6, a7);
        a2 = v18;
        v8 = v16;
        a4 = v22;
        a3 = v27;
      }

      else
      {
        v52 = v11;
        v53 = a6;
        v54 = a3;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,md::TransitJunction::generateLinkNormals(void)::$_0 &,std::__wrap_iter<md::TransitJunction::generateLinkNormals(void)::LinkInfo **>>(v52, v18, v27, v22, v16, a6, a7);
        a3 = v54;
        v11 = v27;
        a2 = v17;
      }

      a6 = v53;
      if (!v8)
      {
        return result;
      }
    }

    if (a4 <= v8)
    {
      if (a2 != v11)
      {
        v63 = a6;
        v64 = v11;
        do
        {
          v65 = *v64;
          v64 += 8;
          *v63 = v65;
          v63 += 8;
        }

        while (v64 != a2);
        while (a2 != a3)
        {
          v66 = *a2;
          if ((*(*a2 + 32) & 1) != 0 || (v67 = *a6, (*(*a6 + 32) & 1) == 0) && *(*v66 + 88) - *(*v66 + 80) > *(*v67 + 88) - *(*v67 + 80))
          {
            *v11 = v66;
            a2 += 8;
          }

          else
          {
            *v11 = v67;
            a6 += 8;
          }

          v11 += 8;
          if (a6 == v63)
          {
            return result;
          }
        }

        return memmove(v11, a6, v63 - a6);
      }
    }

    else if (a2 != a3)
    {
      v55 = a6;
      v56 = a2;
      do
      {
        v57 = *v56;
        v56 += 8;
        *v55 = v57;
        v55 += 8;
      }

      while (v56 != a3);
      while (a2 != v11)
      {
        v58 = a2 - 8;
        v59 = *(a2 - 1);
        v60 = *(v55 - 1);
        if ((v60[32] & 1) == 0 && ((v59[32] & 1) != 0 || *(*v60 + 88) - *(*v60 + 80) <= *(*v59 + 88) - *(*v59 + 80)))
        {
          v59 = *(v55 - 1);
          v58 = a2;
          v55 -= 8;
        }

        *(a3 - 1) = v59;
        a3 -= 8;
        a2 = v58;
        if (v55 == a6)
        {
          return result;
        }
      }

      if (v55 != a6)
      {
        v61 = -8;
        do
        {
          v62 = *(v55 - 1);
          v55 -= 8;
          *&a3[v61] = v62;
          v61 -= 8;
        }

        while (v55 != a6);
      }
    }
  }

  return result;
}

void std::vector<md::TransitLink *>::insert[abi:nn200100]<std::__tree_const_iterator<md::TransitLink *,std::__tree_node<md::TransitLink *,void *> *,long>,0>(void *a1, char *__src, void *a3, void *a4)
{
  if (a3 != a4)
  {
    v4 = a3;
    v5 = __src;
    v7 = 0;
    v8 = a3;
    do
    {
      v9 = v7;
      v10 = v8[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v8[2];
          v12 = *v11 == v8;
          v8 = v11;
        }

        while (!v12);
      }

      ++v7;
      v8 = v11;
    }

    while (v11 != a4);
    v13 = a1[1];
    v14 = a1[2];
    if (v9 >= (v14 - v13) >> 3)
    {
      v20 = *a1;
      v21 = v7 + (&v13[-*a1] >> 3);
      if (v21 >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v22 = v14 - v20;
      if (v22 >> 2 > v21)
      {
        v21 = v22 >> 2;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFF8)
      {
        v23 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      if (v23)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v23);
      }

      v31 = 8 * ((__src - v20) >> 3);
      v32 = (v31 + 8 * v7);
      v33 = v31;
      do
      {
        *v33 = v4[4];
        v33 += 8;
        v34 = v4[1];
        if (v34)
        {
          do
          {
            v35 = v34;
            v34 = *v34;
          }

          while (v34);
        }

        else
        {
          do
          {
            v35 = v4[2];
            v12 = *v35 == v4;
            v4 = v35;
          }

          while (!v12);
        }

        v4 = v35;
      }

      while (v33 != v32);
      memcpy(v32, __src, a1[1] - __src);
      v36 = *a1;
      v37 = &v32[a1[1] - v5];
      a1[1] = v5;
      v38 = v5 - v36;
      v39 = (v31 - (v5 - v36));
      memcpy(v39, v36, v38);
      v40 = *a1;
      *a1 = v39;
      a1[1] = v37;
      a1[2] = 0;
      if (v40)
      {

        operator delete(v40);
      }
    }

    else
    {
      v15 = (v13 - __src) >> 3;
      if (v15 <= v9)
      {
        if (v15 < 0)
        {
          v41 = (v13 - __src) >> 3;
          v42 = a3;
          do
          {
            v43 = *v42;
            if (*v42)
            {
              do
              {
                v24 = v43;
                v43 = v43[1];
              }

              while (v43);
            }

            else
            {
              do
              {
                v24 = v42[2];
                v12 = *v24 == v42;
                v42 = v24;
              }

              while (v12);
            }

            v42 = v24;
          }

          while (!__CFADD__(v41++, 1));
        }

        else
        {
          v24 = a3;
          if (v13 != __src)
          {
            v25 = (v13 - __src) >> 3;
            v26 = a3;
            do
            {
              v27 = v26[1];
              if (v27)
              {
                do
                {
                  v24 = v27;
                  v27 = *v27;
                }

                while (v27);
              }

              else
              {
                do
                {
                  v24 = v26[2];
                  v12 = *v24 == v26;
                  v26 = v24;
                }

                while (!v12);
              }

              v26 = v24;
              v28 = v25-- <= 1;
            }

            while (!v28);
          }
        }

        if (v24 == a4)
        {
          v45 = a1[1];
        }

        else
        {
          v46 = v24;
          v45 = a1[1];
          do
          {
            *v45 = v46[4];
            v47 = v46[1];
            if (v47)
            {
              do
              {
                v48 = v47;
                v47 = *v47;
              }

              while (v47);
            }

            else
            {
              do
              {
                v48 = v46[2];
                v12 = *v48 == v46;
                v46 = v48;
              }

              while (!v12);
            }

            v45 += 8;
            v46 = v48;
          }

          while (v48 != a4);
        }

        a1[1] = v45;
        if (v15 >= 1)
        {
          v49 = &__src[8 * v7];
          v50 = &v45[-8 * v7];
          v51 = v45;
          while (v50 < v13)
          {
            v52 = *v50;
            v50 += 8;
            *v51 = v52;
            v51 += 8;
          }

          a1[1] = v51;
          if (v45 != v49)
          {
            memmove(&__src[8 * v7], __src, v45 - v49);
          }

          if (v24 != v4)
          {
            do
            {
              *v5 = v4[4];
              v53 = v4[1];
              if (v53)
              {
                do
                {
                  v54 = v53;
                  v53 = *v53;
                }

                while (v53);
              }

              else
              {
                do
                {
                  v54 = v4[2];
                  v12 = *v54 == v4;
                  v4 = v54;
                }

                while (!v12);
              }

              v5 += 8;
              v4 = v54;
            }

            while (v54 != v24);
          }
        }
      }

      else
      {
        v16 = &__src[8 * v7];
        v17 = &v13[-8 * v7];
        v18 = a1[1];
        while (v17 < v13)
        {
          v19 = *v17;
          v17 += 8;
          *v18++ = v19;
        }

        a1[1] = v18;
        if (v13 != v16)
        {
          memmove(&__src[8 * v7], __src, v13 - v16);
        }

        *v5 = v4[4];
        if (v9)
        {
          do
          {
            v29 = v4[1];
            if (v29)
            {
              do
              {
                v30 = v29;
                v29 = *v29;
              }

              while (v29);
            }

            else
            {
              do
              {
                v30 = v4[2];
                v12 = *v30 == v4;
                v4 = v30;
              }

              while (!v12);
            }

            *(v5 + 1) = v30[4];
            v5 += 8;
            v4 = v30;
            v28 = v7-- <= 2;
          }

          while (!v28);
        }
      }
    }
  }
}

uint64_t *std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::updateLineJunctionSlots(void)::$_0 &,std::__wrap_iter<md::TransitLink **>>(uint64_t *result, uint64_t *a2, unint64_t a3, uint64_t *a4, int64_t a5)
{
  if (a3 >= 2)
  {
    v6 = result;
    if (a3 == 2)
    {
      v7 = *(a2 - 1);
      v8 = *result;
      if (*(v7 + 112) - *(v7 + 104) > *(*result + 112) - *(*result + 104))
      {
        *result = v7;
        *(a2 - 1) = v8;
      }
    }

    else if (a3 > 128)
    {
      v18 = a4;
      v19 = a3 >> 1;
      v20 = &result[a3 >> 1];
      v21 = a3 >> 1;
      if (a3 <= a5)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,md::TransitJunction::updateLineJunctionSlots(void)::$_0 &,std::__wrap_iter<md::TransitLink **>>(result, v20, v21, a4);
        v22 = &v18[v19];
        result = std::__stable_sort_move<std::_ClassicAlgPolicy,md::TransitJunction::updateLineJunctionSlots(void)::$_0 &,std::__wrap_iter<md::TransitLink **>>(&v6[8 * (a3 >> 1)], a2, a3 - (a3 >> 1), v22);
        v23 = &v18[a3];
        v24 = v22;
        while (v24 != v23)
        {
          v25 = *v24;
          v26 = *(*v24 + 112) - *(*v24 + 104);
          v27 = *(*v18 + 112) - *(*v18 + 104);
          v28 = v26 > v27;
          v29 = v26 <= v27;
          v30 = v28;
          if (!v28)
          {
            v25 = *v18;
          }

          v18 += v29;
          v24 += v30;
          *v6 = v25;
          v6 += 8;
          if (v18 == v22)
          {
            while (v24 != v23)
            {
              v32 = *v24++;
              *v6 = v32;
              v6 += 8;
            }

            return result;
          }
        }

        while (v18 != v22)
        {
          v31 = *v18++;
          *v6 = v31;
          v6 += 8;
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::updateLineJunctionSlots(void)::$_0 &,std::__wrap_iter<md::TransitLink **>>(result, v20, v21, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::updateLineJunctionSlots(void)::$_0 &,std::__wrap_iter<md::TransitLink **>>(&v6[8 * (a3 >> 1)], a2, a3 - (a3 >> 1), v18, a5);

        return std::__inplace_merge<std::_ClassicAlgPolicy,md::TransitJunction::updateLineJunctionSlots(void)::$_0 &,std::__wrap_iter<md::TransitLink **>>(v6, &v6[8 * (a3 >> 1)], a2, a3 >> 1, a3 - (a3 >> 1), v18, a5);
      }
    }

    else if (result != a2)
    {
      v10 = result + 1;
      if (result + 1 != a2)
      {
        v11 = 0;
        v12 = result;
        do
        {
          v13 = *v12;
          v12 = v10;
          v14 = *v10;
          if (*(v14 + 112) - *(v14 + 104) > *(v13 + 112) - *(v13 + 104))
          {
            v15 = v11;
            while (1)
            {
              *(result + v15 + 8) = v13;
              if (!v15)
              {
                break;
              }

              v13 = *(result + v15 - 8);
              v15 -= 8;
              if (*(v14 + 112) - *(v14 + 104) <= *(v13 + 112) - *(v13 + 104))
              {
                v16 = (result + v15 + 8);
                goto LABEL_16;
              }
            }

            v16 = result;
LABEL_16:
            *v16 = v14;
          }

          v10 = v12 + 1;
          v11 += 8;
        }

        while (v12 + 1 != a2);
      }
    }
  }

  return result;
}

char **std::vector<md::TransitJunction::updateLineJunctionSlots(void)::LineInfo,std::allocator<md::TransitJunction::updateLineJunctionSlots(void)::LineInfo>>::~vector[abi:nn200100](char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 13);
        if (v5 != *(v3 - 11))
        {
          free(v5);
        }

        v3 -= 112;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<md::TransitSystemAndColor,unsigned int>,std::__map_value_compare<md::TransitSystemAndColor,std::__value_type<md::TransitSystemAndColor,unsigned int>,std::less<md::TransitSystemAndColor>,true>,std::allocator<std::__value_type<md::TransitSystemAndColor,unsigned int>>>::__find_equal<md::TransitSystemAndColor>(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    while (1)
    {
      while (1)
      {
        v7 = v4;
        v8 = *(v4 + 32);
        if (v6 == v8)
        {
          break;
        }

        if (v6 >= v8)
        {
          if (v8 >= v6)
          {
            goto LABEL_14;
          }

          goto LABEL_11;
        }

LABEL_8:
        v4 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_14;
        }
      }

      if (bswap32(*(a3 + 2)) < bswap32(*(v7 + 10)))
      {
        goto LABEL_8;
      }

      if (bswap32(*(v7 + 10)) >= bswap32(*(a3 + 2)))
      {
        goto LABEL_14;
      }

LABEL_11:
      result = v7 + 1;
      v4 = v7[1];
      if (!v4)
      {
        goto LABEL_14;
      }
    }
  }

  v7 = result;
LABEL_14:
  *a2 = v7;
  return result;
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,md::TransitJunction::updateLineJunctionSlots(void)::$_0 &,std::__wrap_iter<md::TransitLink **>>(uint64_t *result, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = result;
    if (a3 == 1)
    {
LABEL_8:
      *v4 = *v6;
      return result;
    }

    if (a3 == 2)
    {
      v8 = *(a2 - 1);
      v9 = *(v8 + 112) - *(v8 + 104);
      v10 = *(*result + 112) - *(*result + 104);
      if (v9 <= v10)
      {
        v8 = *result;
      }

      *a4 = v8;
      v4 = a4 + 1;
      if (v9 <= v10)
      {
        v6 = a2 - 1;
      }

      goto LABEL_8;
    }

    if (a3 > 8)
    {
      v20 = &result[a3 >> 1];
      std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::updateLineJunctionSlots(void)::$_0 &,std::__wrap_iter<md::TransitLink **>>(result, v20, a3 >> 1, a4, a3 >> 1);
      result = std::__stable_sort<std::_ClassicAlgPolicy,md::TransitJunction::updateLineJunctionSlots(void)::$_0 &,std::__wrap_iter<md::TransitLink **>>(&v6[a3 >> 1], a2, a3 - (a3 >> 1), &v4[a3 >> 1], a3 - (a3 >> 1));
      v21 = &v6[a3 >> 1];
      while (v21 != a2)
      {
        v22 = *v21;
        v23 = *(*v21 + 112) - *(*v21 + 104);
        v24 = *(*v6 + 112) - *(*v6 + 104);
        v25 = v23 > v24;
        v26 = v23 <= v24;
        v27 = v25;
        if (!v25)
        {
          v22 = *v6;
        }

        v21 += v27;
        v6 += v26;
        *v4++ = v22;
        if (v6 == v20)
        {
          while (v21 != a2)
          {
            v29 = *v21++;
            *v4++ = v29;
          }

          return result;
        }
      }

      while (v6 != v20)
      {
        v28 = *v6++;
        *v4++ = v28;
      }
    }

    else if (result != a2)
    {
      v11 = result + 1;
      *a4 = *result;
      if (result + 1 != a2)
      {
        v12 = 0;
        v13 = a4;
        v14 = a4;
        do
        {
          v16 = *v14++;
          v15 = v16;
          if (*(*v11 + 112) - *(*v11 + 104) <= *(v16 + 112) - *(v16 + 104))
          {
            *v14 = *v11;
          }

          else
          {
            v13[1] = v15;
            v17 = a4;
            if (v13 != a4)
            {
              v18 = v12;
              while (1)
              {
                v17 = (a4 + v18);
                v19 = *(a4 + v18 - 8);
                if (*(*v11 + 112) - *(*v11 + 104) <= *(v19 + 112) - *(v19 + 104))
                {
                  break;
                }

                *v17 = v19;
                v18 -= 8;
                if (!v18)
                {
                  v17 = a4;
                  break;
                }
              }
            }

            *v17 = *v11;
          }

          ++v11;
          v12 += 8;
          v13 = v14;
        }

        while (v11 != a2);
      }
    }
  }

  return result;
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,md::TransitJunction::updateLineJunctionSlots(void)::$_0 &,std::__wrap_iter<md::TransitLink **>>(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  if (a5)
  {
    v8 = a5;
    v11 = result;
    while (v8 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      while (1)
      {
        v12 = *v11;
        if (*(*a2 + 112) - *(*a2 + 104) > *(*v11 + 112) - *(*v11 + 104))
        {
          break;
        }

        v11 += 8;
        if (!--a4)
        {
          return result;
        }
      }

      if (a4 >= v8)
      {
        if (a4 == 1)
        {
          *v11 = *a2;
          *a2 = v12;
          return result;
        }

        v21 = a4 / 2;
        v15 = &v11[8 * (a4 / 2)];
        v14 = a2;
        if (a2 != a3)
        {
          v22 = (a3 - a2) >> 3;
          v14 = a2;
          do
          {
            v23 = v22 >> 1;
            v24 = &v14[8 * (v22 >> 1)];
            v26 = *v24;
            v25 = v24 + 8;
            v22 += ~(v22 >> 1);
            if (*(v26 + 112) - *(v26 + 104) > *(*v15 + 112) - *(*v15 + 104))
            {
              v14 = v25;
            }

            else
            {
              v22 = v23;
            }
          }

          while (v22);
        }

        v13 = (v14 - a2) >> 3;
      }

      else
      {
        v13 = v8 / 2;
        v14 = &a2[8 * (v8 / 2)];
        v15 = a2;
        if (a2 != v11)
        {
          v16 = (a2 - v11) >> 3;
          v15 = v11;
          do
          {
            v17 = v16 >> 1;
            v18 = &v15[8 * (v16 >> 1)];
            v20 = *v18;
            v19 = v18 + 8;
            v16 += ~(v16 >> 1);
            if (*(*v14 + 112) - *(*v14 + 104) > *(v20 + 112) - *(v20 + 104))
            {
              v16 = v17;
            }

            else
            {
              v15 = v19;
            }
          }

          while (v16);
        }

        v21 = (v15 - v11) >> 3;
      }

      v27 = v14;
      v28 = a2 - v15;
      if (a2 != v15)
      {
        v27 = v15;
        v29 = v14 - a2;
        if (v14 != a2)
        {
          if (v15 + 8 == a2)
          {
            v73 = *v15;
            v75 = v21;
            v77 = a6;
            v30 = a3;
            v31 = v13;
            memmove(v15, a2, v14 - a2);
            v13 = v31;
            v21 = v75;
            a6 = v77;
            a3 = v30;
            v27 = &v15[v29];
            *&v15[v29] = v73;
          }

          else if (a2 + 8 == v14)
          {
            v32 = *(v14 - 1);
            v27 = v15 + 8;
            if (v14 - 8 != v15)
            {
              v76 = v21;
              v78 = a6;
              v33 = a3;
              v34 = v13;
              v74 = *(v14 - 1);
              memmove(v15 + 8, v15, v14 - 8 - v15);
              v32 = v74;
              v21 = v76;
              v13 = v34;
              a3 = v33;
              a6 = v78;
            }

            *v15 = v32;
          }

          else
          {
            v35 = v28 >> 3;
            if (v28 >> 3 == v29 >> 3)
            {
              v36 = v15 + 8;
              v37 = a2 + 8;
              do
              {
                v38 = *(v36 - 1);
                *(v36 - 1) = *(v37 - 1);
                *(v37 - 1) = v38;
                if (v36 == a2)
                {
                  break;
                }

                v36 += 8;
                v39 = v37 == v14;
                v37 += 8;
              }

              while (!v39);
              v27 = a2;
            }

            else
            {
              v40 = v29 >> 3;
              v41 = v28 >> 3;
              do
              {
                v42 = v41;
                v41 = v40;
                v40 = v42 % v40;
              }

              while (v40);
              v43 = &v15[8 * v41];
              do
              {
                v45 = *(v43 - 1);
                v43 -= 8;
                v44 = v45;
                v46 = &v43[v28];
                v47 = v43;
                do
                {
                  v48 = v46;
                  *v47 = *v46;
                  v49 = &v46[8 * v35];
                  v50 = __OFSUB__(v35, (v14 - v46) >> 3);
                  v51 = v35 - ((v14 - v46) >> 3);
                  v70 = (v51 < 0) ^ v50;
                  v46 = &v15[8 * v51];
                  if (v70)
                  {
                    v46 = v49;
                  }

                  v47 = v48;
                }

                while (v46 != v43);
                *v48 = v44;
              }

              while (v43 != v15);
              v27 = &v15[v29];
            }
          }
        }
      }

      a4 -= v21;
      v8 -= v13;
      if (v21 + v13 >= a4 + v8)
      {
        v55 = v21;
        v56 = a4;
        v57 = v13;
        v53 = a6;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,md::TransitJunction::updateLineJunctionSlots(void)::$_0 &,std::__wrap_iter<md::TransitLink **>>(v27, v14, a3, v56, v8, a6, a7);
        v14 = v15;
        v8 = v57;
        a4 = v55;
        a3 = v27;
      }

      else
      {
        v52 = v11;
        v53 = a6;
        v54 = a3;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,md::TransitJunction::updateLineJunctionSlots(void)::$_0 &,std::__wrap_iter<md::TransitLink **>>(v52, v15, v27, v21, v13, a6, a7);
        a3 = v54;
        v11 = v27;
      }

      a2 = v14;
      a6 = v53;
      if (!v8)
      {
        return result;
      }
    }

    if (a4 <= v8)
    {
      if (a2 != v11)
      {
        v64 = a6;
        v65 = v11;
        do
        {
          v66 = *v65;
          v65 += 8;
          *v64 = v66;
          v64 += 8;
        }

        while (v65 != a2);
        while (a2 != a3)
        {
          v67 = *a2;
          v68 = *(*a2 + 112) - *(*a2 + 104);
          v69 = *(*a6 + 112) - *(*a6 + 104);
          v70 = v68 > v69;
          v71 = v68 <= v69;
          if (v70)
          {
            v72 = 1;
          }

          else
          {
            v72 = 0;
          }

          if (!v70)
          {
            v67 = *a6;
          }

          a2 += 8 * v72;
          a6 += 8 * v71;
          *v11 = v67;
          v11 += 8;
          if (a6 == v64)
          {
            return result;
          }
        }

        return memmove(v11, a6, v64 - a6);
      }
    }

    else if (a2 != a3)
    {
      v58 = a6;
      v59 = a2;
      do
      {
        v60 = *v59;
        v59 += 8;
        *v58 = v60;
        v58 += 8;
      }

      while (v59 != a3);
      while (a2 != v11)
      {
        v61 = *(v58 - 1);
        if (*(v61 + 112) - *(v61 + 104) <= *(*(a2 - 1) + 112) - *(*(a2 - 1) + 104))
        {
          v58 -= 8;
        }

        else
        {
          v61 = *(a2 - 1);
          a2 -= 8;
        }

        *(a3 - 1) = v61;
        a3 -= 8;
        if (v58 == a6)
        {
          return result;
        }
      }

      if (v58 != a6)
      {
        v62 = -8;
        do
        {
          v63 = *(v58 - 1);
          v58 -= 8;
          *&a3[v62] = v63;
          v62 -= 8;
        }

        while (v58 != a6);
      }
    }
  }

  return result;
}

float md::TransitJunction::findDominantLinkDirection(md::TransitJunction *this)
{
  v1 = *(this + 3);
  _D1 = 0;
  if (v1 != (this + 32))
  {
    do
    {
      v3 = *(v1 + 1);
      v4 = v1;
      if (v3)
      {
        do
        {
          v5 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v5 = *(v4 + 2);
          _ZF = *v5 == v4;
          v4 = v5;
        }

        while (!_ZF);
      }

      _D1 = vsub_f32(_D1, *(*(*(v1 + 4) + 64) - 56));
      v1 = v5;
    }

    while (v5 != (this + 32));
  }

  v7 = *(this + 6);
  if (v7 != (this + 56))
  {
    do
    {
      v8 = *(v7 + 1);
      v9 = v7;
      if (v8)
      {
        do
        {
          v10 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v10 = *(v9 + 2);
          _ZF = *v10 == v9;
          v9 = v10;
        }

        while (!_ZF);
      }

      _D1 = vadd_f32(_D1, **(*(v7 + 4) + 56));
      v7 = v10;
    }

    while (v10 != (this + 56));
  }

  _S2 = _D1.i32[1];
  __asm { FMLA            S0, S2, V1.S[1] }

  return (1.0 / sqrtf(_S0)) * _D1.f32[0];
}

float md::TransitJunction::calculateOffsetForLineSegment(md::TransitJunction *this, unint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(v4 + 17);
  v6 = 0.0;
  if (v5)
  {
    v7 = *(*(*a2 + 16) + 40);
    v8 = v4 + 34;
    do
    {
      v9 = *(v5 + 4);
      v10 = v9 >= v7;
      v11 = v9 < v7;
      if (v10)
      {
        v8 = v5;
      }

      v5 = *&v5[2 * v11];
    }

    while (v5);
    if (v8 != v4 + 34 && *(v8 + 4) <= v7)
    {
      v6 = v8[10];
    }
  }

  v12 = *(this + 9);
  if (v12)
  {
    v13 = v12 == v4;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    LODWORD(v14) = *(a2 + 40);
    if (!v12)
    {
      goto LABEL_65;
    }
  }

  else
  {
    LODWORD(v14) = 0;
  }

  if (v12 == v4 || *(v12 + 112) == *(v12 + 104))
  {
    goto LABEL_65;
  }

  v16 = *(this + 1);
  if (md::TransitJunction::tangentsForLinks(v16, *(a2 + 8), v12, &v59, &v58, &v57))
  {
    v17 = vaddv_f32(vmul_f32(v58, v59));
    if (fabsf(v17) < 0.087156)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v17 = 0.0;
  }

  v18 = *(*v4 + 48);
  if (v17 < 0.0)
  {
    v19 = *(this + 80) != (v18 == v16);
  }

  else
  {
    v19 = *(this + 80) == (v18 == v16);
  }

  v20 = +[VKDebugSettings sharedSettings];
  v21 = [v20 disableIntraLinkTransitLineCrossings];

  if (v21)
  {
    v23 = *(v4 + 13);
    v24 = *(v4 + 14);
    v25 = v24 - v23;
    if (v24 != v23)
    {
      if (!((v25 >> 3) >> 62))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v25 >> 3);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (v19)
    {
      std::__introsort<std::_ClassicAlgPolicy,std::greater<unsigned int> &,unsigned int *,true>(0, 0, 0, 1, v22);
    }

    else
    {
      std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
    }

    v14 = *(4 * *(a2 + 40));
    v38 = *(this + 9);
    v41 = *(v38 + 136);
    v39 = v38 + 136;
    v40 = v41;
    if (v41)
    {
      v42 = *(*(**(*(v39 - 32) + 8 * v14) + 16) + 40);
      v43 = v39;
      do
      {
        v44 = *(v40 + 32);
        v10 = v44 >= v42;
        v45 = v44 < v42;
        if (v10)
        {
          v43 = v40;
        }

        v40 = *(v40 + 8 * v45);
      }

      while (v40);
      v46 = 0.0;
      if (v43 != v39 && *(v43 + 32) <= v42)
      {
        v46 = *(v43 + 40);
      }

      if (v19)
      {
        v6 = -v46;
      }

      else
      {
        v6 = v46;
      }
    }

    else
    {
      if (v19)
      {
        v6 = -0.0;
      }

      else
      {
        v6 = 0.0;
      }

      operator delete(0);
    }
  }

  else
  {
    v26 = 44;
    if (v18 == v16)
    {
      v26 = 48;
    }

    v27 = *(a2 + v26);
    LODWORD(v14) = *(a2 + v26);
    v28 = *(this + 9);
    v29 = v28[13];
    if (v27 < (v28[14] - v29) >> 3)
    {
      v32 = v28[17];
      v30 = (v28 + 17);
      v31 = v32;
      v33 = 0.0;
      if (v32)
      {
        v34 = *(*(**(v29 + 8 * v27) + 16) + 40);
        v35 = v30;
        do
        {
          v36 = *(v31 + 4);
          v10 = v36 >= v34;
          v37 = v36 < v34;
          if (v10)
          {
            v35 = v31;
          }

          v31 = *&v31[2 * v37];
        }

        while (v31);
        if (v35 != v30 && *(v35 + 4) <= v34)
        {
          v33 = v35[10];
        }
      }

      if (v19)
      {
        v6 = -v33;
      }

      else
      {
        v6 = v33;
      }
    }
  }

LABEL_65:
  v47 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v48 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v47 >> 47) ^ v47);
  v49 = 0x9DDFEA08EB382D69 * (v48 ^ (v48 >> 47));
  v50 = *(this + 176);
  if (!*&v50)
  {
    goto LABEL_82;
  }

  v51 = vcnt_s8(v50);
  v51.i16[0] = vaddlv_u8(v51);
  if (v51.u32[0] > 1uLL)
  {
    v52 = 0x9DDFEA08EB382D69 * (v48 ^ (v48 >> 47));
    if (v49 >= *&v50)
    {
      v52 = v49 % *&v50;
    }
  }

  else
  {
    v52 = v49 & (*&v50 - 1);
  }

  v53 = *(*(this + 21) + 8 * v52);
  if (!v53 || (v54 = *v53) == 0)
  {
LABEL_82:
    operator new();
  }

  while (1)
  {
    v55 = v54[1];
    if (v55 == v49)
    {
      break;
    }

    if (v51.u32[0] > 1uLL)
    {
      if (v55 >= *&v50)
      {
        v55 %= *&v50;
      }
    }

    else
    {
      v55 &= *&v50 - 1;
    }

    if (v55 != v52)
    {
      goto LABEL_82;
    }

LABEL_81:
    v54 = *v54;
    if (!v54)
    {
      goto LABEL_82;
    }
  }

  if (v54[2] != a2)
  {
    goto LABEL_81;
  }

  *(v54 + 6) = v14;
  *(v54 + 7) = v6;
  return v6;
}

void sub_1B2FB2924(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::greater<unsigned int> &,unsigned int *,true>(uint64_t result, unsigned int *a2, uint64_t a3, char a4, int32x4_t a5)
{
  v7 = result;
  v8 = xmmword_1B33B0550;
  v9 = vdupq_n_s64(1uLL);
  v10 = xmmword_1B33B0560;
  v11 = vdupq_n_s64(4uLL);
  v205 = v9;
  v204 = v11;
  while (2)
  {
    v12 = v7;
    while (2)
    {
      while (2)
      {
        while (2)
        {
          v7 = v12;
          v13 = a2 - v12;
          if (v13 > 2)
          {
            switch(v13)
            {
              case 3:
                v146 = v12[1];
                v147 = *(a2 - 1);
                if (v146 <= v147)
                {
                  v148 = *(a2 - 1);
                }

                else
                {
                  v148 = v12[1];
                }

                if (v146 >= v147)
                {
                  v146 = *(a2 - 1);
                }

                *(a2 - 1) = v146;
                v12[1] = v148;
                v149 = *(a2 - 1);
                if (v149 <= *v12)
                {
                  v150 = *v12;
                }

                else
                {
                  v150 = *(a2 - 1);
                }

                if (v149 >= *v12)
                {
                  v149 = *v12;
                }

                *(a2 - 1) = v149;
                v152 = *v12;
                v151 = v12[1];
                if (v150 <= v151)
                {
                  v152 = v12[1];
                }

                if (v150 < v151)
                {
                  v151 = v150;
                }

                *v12 = v152;
                v12[1] = v151;
                return result;
              case 4:
                v154 = v12[1];
                v153 = v12[2];
                if (*v12 <= v153)
                {
                  v155 = v12[2];
                }

                else
                {
                  v155 = *v12;
                }

                if (*v12 < v153)
                {
                  v153 = *v12;
                }

                v12[2] = v153;
                *v12 = v155;
                v156 = *(a2 - 1);
                if (v154 <= v156)
                {
                  v157 = *(a2 - 1);
                }

                else
                {
                  v157 = v154;
                }

                if (v154 < v156)
                {
                  v156 = v154;
                }

                *(a2 - 1) = v156;
                v158 = *v12;
                if (*v12 <= v157)
                {
                  v159 = v157;
                }

                else
                {
                  v159 = *v12;
                }

                if (v158 >= v157)
                {
                  v158 = v157;
                }

                *v12 = v159;
                v12[1] = v158;
                v160 = v12[2];
                v161 = *(a2 - 1);
                if (v160 <= v161)
                {
                  v162 = *(a2 - 1);
                }

                else
                {
                  v162 = v12[2];
                }

                if (v160 >= v161)
                {
                  v160 = *(a2 - 1);
                }

                *(a2 - 1) = v160;
                v163 = v12[1];
                if (v163 <= v162)
                {
                  v164 = v162;
                }

                else
                {
                  v164 = v12[1];
                }

                if (v163 >= v162)
                {
                  v163 = v162;
                }

                v12[1] = v164;
                v12[2] = v163;
                return result;
              case 5:
                v124 = *v12;
                v125 = v12[1];
                if (*v12 <= v125)
                {
                  v126 = v12[1];
                }

                else
                {
                  v126 = *v12;
                }

                if (v124 >= v125)
                {
                  v124 = v12[1];
                }

                *v12 = v126;
                v12[1] = v124;
                v127 = v12[3];
                v128 = *(a2 - 1);
                if (v127 <= v128)
                {
                  v129 = *(a2 - 1);
                }

                else
                {
                  v129 = v12[3];
                }

                if (v127 >= v128)
                {
                  v127 = *(a2 - 1);
                }

                *(a2 - 1) = v127;
                v12[3] = v129;
                v130 = *(a2 - 1);
                v131 = v12[2];
                if (v130 <= v131)
                {
                  v132 = v12[2];
                }

                else
                {
                  v132 = *(a2 - 1);
                }

                if (v130 >= v131)
                {
                  v130 = v12[2];
                }

                *(a2 - 1) = v130;
                v134 = v12[2];
                v133 = v12[3];
                v135 = v12[1];
                if (v132 <= v133)
                {
                  v134 = v12[3];
                }

                if (v132 < v133)
                {
                  v133 = v132;
                }

                v12[2] = v134;
                v12[3] = v133;
                v136 = *(a2 - 1);
                if (v135 <= v136)
                {
                  v137 = *(a2 - 1);
                }

                else
                {
                  v137 = v135;
                }

                if (v135 < v136)
                {
                  v136 = v135;
                }

                *(a2 - 1) = v136;
                v138 = *v12;
                v140 = v12[2];
                v139 = v12[3];
                if (v139 <= *v12)
                {
                  v141 = *v12;
                }

                else
                {
                  v141 = v12[3];
                }

                if (v139 >= v138)
                {
                  v139 = *v12;
                }

                if (v141 <= v140)
                {
                  v138 = v12[2];
                }

                if (v141 < v140)
                {
                  v140 = v141;
                }

                if (v139 <= v137)
                {
                  v142 = v137;
                }

                else
                {
                  v142 = v139;
                }

                if (v139 >= v137)
                {
                  v139 = v137;
                }

                if (v142 <= v140)
                {
                  v137 = v140;
                }

                *v12 = v138;
                v12[1] = v137;
                if (v142 >= v140)
                {
                  v143 = v140;
                }

                else
                {
                  v143 = v142;
                }

                v12[2] = v143;
                v12[3] = v139;
                return result;
            }
          }

          else
          {
            if (v13 < 2)
            {
              return result;
            }

            if (v13 == 2)
            {
              v144 = *(a2 - 1);
              v145 = *v12;
              if (v144 > *v12)
              {
                *v12 = v144;
                *(a2 - 1) = v145;
              }

              return result;
            }
          }

          if (v13 <= 23)
          {
            v165 = v12 + 1;
            v167 = v12 == a2 || v165 == a2;
            if (a4)
            {
              if (!v167)
              {
                v168 = 4;
                v169 = v12;
                do
                {
                  v171 = *v169;
                  v170 = v169[1];
                  v169 = v165;
                  if (v170 > v171)
                  {
                    v172 = v168;
                    while (1)
                    {
                      *(v12 + v172) = v171;
                      v173 = v172 - 4;
                      if (v172 == 4)
                      {
                        break;
                      }

                      v171 = *(v12 + v172 - 8);
                      v172 -= 4;
                      if (v170 <= v171)
                      {
                        v174 = (v12 + v173);
                        goto LABEL_286;
                      }
                    }

                    v174 = v12;
LABEL_286:
                    *v174 = v170;
                  }

                  v165 = v169 + 1;
                  v168 += 4;
                }

                while (v169 + 1 != a2);
              }
            }

            else if (!v167)
            {
              do
              {
                v203 = *v7;
                v202 = v7[1];
                v7 = v165;
                if (v202 > v203)
                {
                  do
                  {
                    *v165 = v203;
                    v203 = *(v165 - 2);
                    --v165;
                  }

                  while (v202 > v203);
                  *v165 = v202;
                }

                v165 = v7 + 1;
              }

              while (v7 + 1 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v12 != a2)
            {
              v175 = (v13 - 2) >> 1;
              v176 = v175;
              do
              {
                v177 = v176;
                if (v175 >= v176)
                {
                  v178 = (2 * v176) | 1;
                  v179 = &v12[v178];
                  if (2 * v177 + 2 >= v13)
                  {
                    v180 = *v179;
                  }

                  else
                  {
                    v180 = v179[1];
                    v181 = *v179 > v180;
                    if (*v179 < v180)
                    {
                      v180 = *v179;
                    }

                    if (v181)
                    {
                      ++v179;
                      v178 = 2 * v177 + 2;
                    }
                  }

                  v182 = &v12[v177];
                  v183 = *v182;
                  if (v180 <= *v182)
                  {
                    do
                    {
                      *v182 = v180;
                      v182 = v179;
                      if (v175 < v178)
                      {
                        break;
                      }

                      v184 = (2 * v178) | 1;
                      v179 = &v12[v184];
                      v178 = 2 * v178 + 2;
                      if (v178 >= v13)
                      {
                        v180 = *v179;
                        v178 = v184;
                      }

                      else
                      {
                        v180 = *v179;
                        result = v179[1];
                        if (*v179 >= result)
                        {
                          v180 = v179[1];
                        }

                        if (*v179 <= result)
                        {
                          v178 = v184;
                        }

                        else
                        {
                          ++v179;
                        }
                      }
                    }

                    while (v180 <= v183);
                    *v182 = v183;
                  }
                }

                v176 = v177 - 1;
              }

              while (v177);
              do
              {
                v185 = 0;
                v186 = *v12;
                v187 = v12;
                do
                {
                  v188 = &v187[v185];
                  v189 = v188 + 1;
                  v190 = (2 * v185) | 1;
                  v185 = 2 * v185 + 2;
                  if (v185 >= v13)
                  {
                    v191 = *v189;
                    v185 = v190;
                  }

                  else
                  {
                    v193 = v188[2];
                    v192 = v188 + 2;
                    v191 = v193;
                    v194 = *(v192 - 1);
                    v195 = v194 > v193;
                    if (v194 < v193)
                    {
                      v191 = *(v192 - 1);
                    }

                    if (v195)
                    {
                      v189 = v192;
                    }

                    else
                    {
                      v185 = v190;
                    }
                  }

                  *v187 = v191;
                  v187 = v189;
                }

                while (v185 <= ((v13 - 2) >> 1));
                if (v189 == --a2)
                {
                  *v189 = v186;
                }

                else
                {
                  *v189 = *a2;
                  *a2 = v186;
                  v196 = (v189 - v12 + 4) >> 2;
                  v22 = v196 < 2;
                  v197 = v196 - 2;
                  if (!v22)
                  {
                    v198 = v197 >> 1;
                    v199 = &v12[v198];
                    v200 = *v199;
                    v201 = *v189;
                    if (*v199 > *v189)
                    {
                      do
                      {
                        *v189 = v200;
                        v189 = v199;
                        if (!v198)
                        {
                          break;
                        }

                        v198 = (v198 - 1) >> 1;
                        v199 = &v12[v198];
                        v200 = *v199;
                      }

                      while (*v199 > v201);
                      *v189 = v201;
                    }
                  }
                }

                v22 = v13-- <= 2;
              }

              while (!v22);
            }

            return result;
          }

          v14 = v13 >> 1;
          v15 = *(a2 - 1);
          if (v13 < 0x81)
          {
            v50 = *v12;
            if (*v12 <= v15)
            {
              v51 = *(a2 - 1);
            }

            else
            {
              v51 = *v12;
            }

            if (v50 >= v15)
            {
              v50 = *(a2 - 1);
            }

            *(a2 - 1) = v50;
            *v12 = v51;
            v52 = *(a2 - 1);
            v53 = v12[v14];
            if (v52 <= v53)
            {
              v54 = v12[v14];
            }

            else
            {
              v54 = *(a2 - 1);
            }

            if (v52 >= v53)
            {
              v52 = v12[v14];
            }

            *(a2 - 1) = v52;
            v55 = *v12;
            v56 = v54 > *v12;
            if (v54 > *v12)
            {
              v55 = v12[v14];
            }

            v12[v14] = v55;
            v49 = *v12;
            if (!v56)
            {
              v49 = v54;
            }

            *v12 = v49;
          }

          else
          {
            v16 = &v12[v14];
            v17 = *v16;
            if (*v16 <= v15)
            {
              v18 = *(a2 - 1);
            }

            else
            {
              v18 = *v16;
            }

            if (v17 >= v15)
            {
              v17 = *(a2 - 1);
            }

            *(a2 - 1) = v17;
            *v16 = v18;
            v19 = *(a2 - 1);
            if (v19 <= *v12)
            {
              v20 = *v12;
            }

            else
            {
              v20 = *(a2 - 1);
            }

            if (v19 >= *v12)
            {
              v19 = *v12;
            }

            *(a2 - 1) = v19;
            v21 = *v16;
            v22 = v20 > *v16;
            if (v20 > *v16)
            {
              v21 = *v12;
            }

            *v12 = v21;
            v23 = *v16;
            if (!v22)
            {
              v23 = v20;
            }

            *v16 = v23;
            v24 = *(v16 - 1);
            v25 = *(a2 - 2);
            if (v24 <= v25)
            {
              v26 = *(a2 - 2);
            }

            else
            {
              v26 = *(v16 - 1);
            }

            if (v24 >= v25)
            {
              v24 = *(a2 - 2);
            }

            *(a2 - 2) = v24;
            *(v16 - 1) = v26;
            v27 = *(a2 - 2);
            v28 = v12[1];
            if (v27 <= v28)
            {
              v29 = v12[1];
            }

            else
            {
              v29 = *(a2 - 2);
            }

            if (v27 >= v28)
            {
              v27 = v12[1];
            }

            *(a2 - 2) = v27;
            v30 = *(v16 - 1);
            v31 = v29 > v30;
            if (v29 > v30)
            {
              v30 = v12[1];
            }

            v12[1] = v30;
            v32 = *(v16 - 1);
            if (!v31)
            {
              v32 = v29;
            }

            *(v16 - 1) = v32;
            v33 = v16[1];
            v34 = *(a2 - 3);
            if (v33 <= v34)
            {
              v35 = *(a2 - 3);
            }

            else
            {
              v35 = v16[1];
            }

            if (v33 >= v34)
            {
              v33 = *(a2 - 3);
            }

            *(a2 - 3) = v33;
            v16[1] = v35;
            v36 = *(a2 - 3);
            v37 = v12[2];
            if (v36 <= v37)
            {
              v38 = v12[2];
            }

            else
            {
              v38 = *(a2 - 3);
            }

            if (v36 >= v37)
            {
              v36 = v12[2];
            }

            *(a2 - 3) = v36;
            v39 = v16[1];
            v40 = v38 > v39;
            if (v38 > v39)
            {
              v39 = v12[2];
            }

            v12[2] = v39;
            v42 = *v16;
            v41 = v16[1];
            if (!v40)
            {
              v41 = v38;
            }

            if (v42 <= v41)
            {
              v43 = v41;
            }

            else
            {
              v43 = *v16;
            }

            if (v42 < v41)
            {
              v41 = *v16;
            }

            v44 = *(v16 - 1);
            if (v41 <= v44)
            {
              v45 = *(v16 - 1);
            }

            else
            {
              v45 = v41;
            }

            if (v41 >= v44)
            {
              v41 = *(v16 - 1);
            }

            v16[1] = v41;
            if (v44 <= v43)
            {
              v46 = v43;
            }

            else
            {
              v46 = v44;
            }

            if (v44 <= v43)
            {
              v47 = v45;
            }

            else
            {
              v47 = v43;
            }

            *(v16 - 1) = v46;
            *v16 = v47;
            v48 = *v12;
            *v12 = v47;
            *v16 = v48;
            v49 = *v12;
          }

          --a3;
          if ((a4 & 1) == 0 && *(v12 - 1) <= v49)
          {
            if (v49 <= *(a2 - 1))
            {
              v116 = (v12 + 1);
              do
              {
                v12 = v116;
                if (v116 >= a2)
                {
                  break;
                }

                v116 += 4;
              }

              while (v49 <= *v12);
            }

            else
            {
              do
              {
                v115 = v12[1];
                ++v12;
              }

              while (v49 <= v115);
            }

            v117 = a2;
            if (v12 < a2)
            {
              v117 = a2;
              do
              {
                v118 = *--v117;
              }

              while (v49 > v118);
            }

            if (v12 < v117)
            {
              v119 = *v12;
              v120 = *v117;
              do
              {
                *v12 = v120;
                *v117 = v119;
                do
                {
                  v121 = v12[1];
                  ++v12;
                  v119 = v121;
                }

                while (v49 <= v121);
                do
                {
                  v122 = *--v117;
                  v120 = v122;
                }

                while (v49 > v122);
              }

              while (v12 < v117);
            }

            v123 = v12 - 1;
            if (v12 - 1 != v7)
            {
              *v7 = *v123;
            }

            a4 = 0;
            *v123 = v49;
            continue;
          }

          break;
        }

        if (v49 <= *(a2 - 1))
        {
          v59 = (v12 + 1);
          do
          {
            v57 = v59;
            if (v59 >= a2)
            {
              break;
            }

            v59 += 4;
          }

          while (v49 <= *v57);
        }

        else
        {
          v57 = v12;
          do
          {
            v58 = v57[1];
            ++v57;
          }

          while (v49 <= v58);
        }

        v60 = a2;
        if (v57 < a2)
        {
          v60 = a2;
          do
          {
            v61 = *--v60;
          }

          while (v49 > v61);
        }

        v62 = v57;
        if (v57 < v60)
        {
          v63 = *v57;
          *v57 = *v60;
          v62 = v57 + 1;
          *v60 = v63;
        }

        v64 = v60 - 1;
        v65 = (v60 - 1) - v62;
        if (v65 < 505)
        {
          v66 = 0;
          v93 = v65 >> 2;
          v91 = 1;
LABEL_125:
          v97 = v93 + 1;
          v94 = (v93 + 1) / 2;
          v95 = v97 - v97 / 2;
          goto LABEL_126;
        }

        v66 = 0;
        v67 = 0;
        a5 = vdupq_n_s32(v49);
        do
        {
          if (v67)
          {
            if (v66)
            {
              goto LABEL_105;
            }
          }

          else
          {
            v68 = 0uLL;
            v69 = v10;
            v70 = v8;
            v71 = 0uLL;
            do
            {
              v72 = vcgeq_u32(a5, *(v62 + v67));
              v73.i64[0] = v72.u32[2];
              v73.i64[1] = v72.u32[3];
              v74 = vandq_s8(v73, v9);
              v73.i64[0] = v72.u32[0];
              v73.i64[1] = v72.u32[1];
              v71 = vorrq_s8(vshlq_u64(v74, v70), v71);
              v68 = vorrq_s8(vshlq_u64(vandq_s8(v73, v9), v69), v68);
              v70 = vaddq_s64(v70, v11);
              v69 = vaddq_s64(v69, v11);
              v67 += 16;
            }

            while (v67 != 256);
            v75 = vorrq_s8(v68, v71);
            v67 = vorr_s8(*v75.i8, *&vextq_s8(v75, v75, 8uLL));
            if (v66)
            {
LABEL_105:
              if (!v67)
              {
                goto LABEL_116;
              }

              goto LABEL_113;
            }
          }

          v76 = 0uLL;
          v77 = 0x3FFFFFFFFFFFFFFDLL;
          v78 = v10;
          v79 = v8;
          v80 = 0uLL;
          do
          {
            v81 = vrev64q_s32(*&v64[v77]);
            v82 = vcgtq_u32(vextq_s8(v81, v81, 8uLL), a5);
            v83.i64[0] = v82.u32[2];
            v83.i64[1] = v82.u32[3];
            v84 = vdupq_n_s64(1uLL);
            v85 = vandq_s8(v83, v84);
            v83.i64[0] = v82.u32[0];
            v83.i64[1] = v82.u32[1];
            v80 = vorrq_s8(vshlq_u64(v85, v79), v80);
            v76 = vorrq_s8(vshlq_u64(vandq_s8(v83, v84), v78), v76);
            v86 = vdupq_n_s64(4uLL);
            v79 = vaddq_s64(v79, v86);
            v78 = vaddq_s64(v78, v86);
            v77 -= 4;
          }

          while (v77 != -67);
          v87 = vorrq_s8(v76, v80);
          v66 = vorr_s8(*v87.i8, *&vextq_s8(v87, v87, 8uLL));
          if (!v67)
          {
            goto LABEL_116;
          }

LABEL_113:
          if (v66)
          {
            do
            {
              v88 = __clz(__rbit64(v67));
              v67 &= v67 - 1;
              v89 = &v64[-__clz(__rbit64(v66))];
              v90 = v62[v88];
              v62[v88] = *v89;
              *v89 = v90;
              v66 &= v66 - 1;
            }

            while (v66 && v67);
          }

LABEL_116:
          v62 += 64 * (v67 == 0);
          v91 = v66 == 0;
          if (v66)
          {
            v92 = 0;
          }

          else
          {
            v92 = -256;
          }

          v64 = (v64 + v92);
        }

        while (v64 - v62 > 504);
        v93 = v64 - v62;
        if (!(v67 | v66))
        {
          goto LABEL_125;
        }

        v94 = v93 - 63;
        v95 = 64;
        v96 = 64;
        if (v67)
        {
          if (v66)
          {
            goto LABEL_135;
          }

LABEL_132:
          if (v94 >= 1)
          {
            v99 = 0;
            v66 = 0;
            v100 = v64;
            do
            {
              v101 = *v100--;
              v66 |= (v101 > v49) << v99++;
            }

            while (v94 != v99);
            goto LABEL_135;
          }

          if (v67)
          {
            v109 = 0;
          }

          else
          {
            v109 = v96;
          }

          v12 = &v62[v109];
LABEL_152:
          if (v67)
          {
            v64 -= v94;
            goto LABEL_154;
          }

          goto LABEL_158;
        }

LABEL_126:
        if (v94 < 1)
        {
          v67 = 0;
        }

        else
        {
          v98 = 0;
          v67 = 0;
          do
          {
            v67 |= (v62[v98] <= v49) << v98;
            ++v98;
          }

          while (v94 != v98);
        }

        v96 = v94;
        v94 = v95;
        if (v91)
        {
          goto LABEL_132;
        }

LABEL_135:
        if (v67 && v66)
        {
          do
          {
            v102 = __clz(__rbit64(v67));
            v67 &= v67 - 1;
            v103 = &v64[-__clz(__rbit64(v66))];
            v104 = v62[v102];
            v62[v102] = *v103;
            *v103 = v104;
            v66 &= v66 - 1;
          }

          while (v66 && v67);
        }

        if (v67)
        {
          v105 = 0;
        }

        else
        {
          v105 = v96;
        }

        v12 = &v62[v105];
        if (!v66)
        {
          goto LABEL_152;
        }

        if (v67)
        {
          do
          {
LABEL_154:
            v110 = __clz(v67) ^ 0x3F;
            v111 = &v12[v110];
            if (v64 != v111)
            {
              v112 = *v111;
              *v111 = *v64;
              *v64 = v112;
            }

            v67 &= ~(-1 << v110);
            --v64;
          }

          while (v67);
          v12 = v64 + 1;
        }

        else
        {
          do
          {
            v106 = __clz(v66) ^ 0x3F;
            v107 = &v64[-v106];
            if (v12 != v107)
            {
              v108 = *v107;
              *v107 = *v12;
              *v12 = v108;
            }

            v66 &= ~(-1 << v106);
            ++v12;
          }

          while (v66);
        }

LABEL_158:
        v113 = v12 - 1;
        if (v12 - 1 != v7)
        {
          *v7 = *v113;
        }

        *v113 = v49;
        if (v57 < v60)
        {
LABEL_163:
          result = std::__introsort<std::_ClassicAlgPolicy,std::greater<unsigned int> &,unsigned int *,true>(v7, v12 - 1, a3, a4 & 1, a5);
          v11 = v204;
          v10 = xmmword_1B33B0560;
          v9 = v205;
          v8 = xmmword_1B33B0550;
          a4 = 0;
          continue;
        }

        break;
      }

      v114 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<unsigned int> &,unsigned int *>(v7, v12 - 1);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<unsigned int> &,unsigned int *>(v12, a2);
      if (!result)
      {
        v9 = v205;
        v8 = xmmword_1B33B0550;
        v11 = v204;
        v10 = xmmword_1B33B0560;
        if (!v114)
        {
          goto LABEL_163;
        }

        continue;
      }

      break;
    }

    a2 = v12 - 1;
    v9 = v205;
    v8 = xmmword_1B33B0550;
    v11 = v204;
    v10 = xmmword_1B33B0560;
    if (!v114)
    {
      continue;
    }

    return result;
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<unsigned int> &,unsigned int *>(unsigned int *a1, unsigned int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v25 = a1[1];
        v26 = *(a2 - 1);
        if (v25 <= v26)
        {
          v27 = *(a2 - 1);
        }

        else
        {
          v27 = a1[1];
        }

        if (v25 >= v26)
        {
          v25 = *(a2 - 1);
        }

        *(a2 - 1) = v25;
        a1[1] = v27;
        v28 = *(a2 - 1);
        if (v28 <= *a1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *(a2 - 1);
        }

        if (v28 >= *a1)
        {
          v28 = *a1;
        }

        *(a2 - 1) = v28;
        v31 = *a1;
        v30 = a1[1];
        if (v29 <= v30)
        {
          v31 = a1[1];
        }

        if (v29 < v30)
        {
          v30 = v29;
        }

        *a1 = v31;
        a1[1] = v30;
        return 1;
      case 4:
        v48 = a1[1];
        v47 = a1[2];
        if (*a1 <= v47)
        {
          v49 = a1[2];
        }

        else
        {
          v49 = *a1;
        }

        if (*a1 < v47)
        {
          v47 = *a1;
        }

        a1[2] = v47;
        *a1 = v49;
        v50 = *(a2 - 1);
        if (v48 <= v50)
        {
          v51 = *(a2 - 1);
        }

        else
        {
          v51 = v48;
        }

        if (v48 < v50)
        {
          v50 = v48;
        }

        *(a2 - 1) = v50;
        v52 = *a1;
        if (*a1 <= v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = *a1;
        }

        if (v52 >= v51)
        {
          v52 = v51;
        }

        *a1 = v53;
        a1[1] = v52;
        v54 = a1[2];
        v55 = *(a2 - 1);
        if (v54 <= v55)
        {
          v56 = *(a2 - 1);
        }

        else
        {
          v56 = a1[2];
        }

        if (v54 >= v55)
        {
          v54 = *(a2 - 1);
        }

        *(a2 - 1) = v54;
        v57 = a1[1];
        if (v57 <= v56)
        {
          v58 = v56;
        }

        else
        {
          v58 = a1[1];
        }

        if (v57 >= v56)
        {
          v57 = v56;
        }

        a1[1] = v58;
        a1[2] = v57;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (*a1 <= v6)
        {
          v7 = a1[1];
        }

        else
        {
          v7 = *a1;
        }

        if (v5 >= v6)
        {
          v5 = a1[1];
        }

        *a1 = v7;
        a1[1] = v5;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 <= v9)
        {
          v10 = *(a2 - 1);
        }

        else
        {
          v10 = a1[3];
        }

        if (v8 >= v9)
        {
          v8 = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        a1[3] = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 <= v12)
        {
          v13 = a1[2];
        }

        else
        {
          v13 = *(a2 - 1);
        }

        if (v11 >= v12)
        {
          v11 = a1[2];
        }

        *(a2 - 1) = v11;
        v15 = a1[2];
        v14 = a1[3];
        v16 = a1[1];
        if (v13 <= v14)
        {
          v15 = a1[3];
        }

        if (v13 < v14)
        {
          v14 = v13;
        }

        a1[2] = v15;
        a1[3] = v14;
        v17 = *(a2 - 1);
        if (v16 <= v17)
        {
          v18 = *(a2 - 1);
        }

        else
        {
          v18 = v16;
        }

        if (v16 < v17)
        {
          v17 = v16;
        }

        *(a2 - 1) = v17;
        v19 = *a1;
        v21 = a1[2];
        v20 = a1[3];
        if (v20 <= *a1)
        {
          v22 = *a1;
        }

        else
        {
          v22 = a1[3];
        }

        if (v20 >= v19)
        {
          v20 = *a1;
        }

        if (v22 <= v21)
        {
          v19 = a1[2];
        }

        if (v22 < v21)
        {
          v21 = v22;
        }

        if (v20 <= v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = v20;
        }

        if (v20 >= v18)
        {
          v20 = v18;
        }

        if (v23 <= v21)
        {
          v18 = v21;
        }

        *a1 = v19;
        a1[1] = v18;
        if (v23 >= v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        a1[2] = v24;
        a1[3] = v20;
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 > *a1)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v33 = a1 + 2;
  v32 = a1[2];
  v35 = *a1;
  v34 = a1[1];
  if (v34 <= v32)
  {
    v36 = a1[2];
  }

  else
  {
    v36 = a1[1];
  }

  if (v34 < v32)
  {
    v32 = a1[1];
  }

  if (v32 <= v35)
  {
    v37 = *a1;
  }

  else
  {
    v37 = v32;
  }

  if (v32 >= v35)
  {
    v32 = *a1;
  }

  *v33 = v32;
  if (v35 <= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  if (v35 > v36)
  {
    v37 = v36;
  }

  *a1 = v38;
  a1[1] = v37;
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 12; ; i += 4)
  {
    v42 = *v39;
    v43 = *v33;
    if (*v39 > v43)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v43;
        v45 = v44 - 4;
        if (v44 == 4)
        {
          break;
        }

        v43 = *(a1 + v44 - 8);
        v44 -= 4;
        if (v42 <= v43)
        {
          v46 = (a1 + v45);
          goto LABEL_91;
        }
      }

      v46 = a1;
LABEL_91:
      *v46 = v42;
      if (++v40 == 8)
      {
        break;
      }
    }

    v33 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

void *md::TransitJunction::normalForLinkPair(void *a1, unint64_t a2, uint64_t a3)
{
  v3 = a1[12];
  if (v3)
  {
    v4 = a3 ^ a2;
    v5 = vcnt_s8(v3);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = a3 ^ a2;
      if (v4 >= *&v3)
      {
        v6 = v4 % *&v3;
      }
    }

    else
    {
      v6 = (*&v3 - 1) & v4;
    }

    v7 = *(a1[11] + 8 * v6);
    if (v7)
    {
      for (i = *v7; i; i = *i)
      {
        v9 = i[1];
        if (v4 == v9)
        {
          if (i[2] == a2 && i[3] == a3)
          {
            return i + 4;
          }
        }

        else
        {
          if (v5.u32[0] > 1uLL)
          {
            if (v9 >= *&v3)
            {
              v9 %= *&v3;
            }
          }

          else
          {
            v9 &= *&v3 - 1;
          }

          if (v9 != v6)
          {
            break;
          }
        }
      }
    }
  }

  v11 = a1[1];
  if (*(*a2 + 48) == v11)
  {
    return (*(a2 + 64) - 48);
  }

  if (*(*a2 + 40) == v11)
  {
    return (*(a2 + 56) + 8);
  }

  return 0;
}

void std::vector<std::unique_ptr<std::vector<gm::Matrix<float,2,1>>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          std::default_delete<std::vector<gm::Matrix<float,2,1>>>::operator()[abi:nn200100](v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__hash_table<std::__hash_value_type<GeoCodecsConnectivityJunction const*,md::TransitJunction>,std::__unordered_map_hasher<GeoCodecsConnectivityJunction const*,std::__hash_value_type<GeoCodecsConnectivityJunction const*,md::TransitJunction>,std::hash<GeoCodecsConnectivityJunction const*>,std::equal_to<GeoCodecsConnectivityJunction const*>,true>,std::__unordered_map_equal<GeoCodecsConnectivityJunction const*,std::__hash_value_type<GeoCodecsConnectivityJunction const*,md::TransitJunction>,std::equal_to<GeoCodecsConnectivityJunction const*>,std::hash<GeoCodecsConnectivityJunction const*>,true>,std::allocator<std::__hash_value_type<GeoCodecsConnectivityJunction const*,md::TransitJunction>>>::__emplace_unique_key_args<GeoCodecsConnectivityJunction const*,GeoCodecsConnectivityJunction const*&,md::TransitJunction>(float *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = *(a1 + 2);
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != a2)
  {
    goto LABEL_17;
  }
}

void sub_1B2FB3EA0(_Unwind_Exception *a1)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v4);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v3);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v1[10]);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v1[7]);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void md::PolygonOverlayMeshBuilder::buildMesh(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 8);
  if (v4 != a3)
  {
    v156 = 0;
    v154 = a4 << 32;
    v157 = vneg_f32(0x80000000800000);
    __asm { FMOV            V12.2S, #1.0 }

    do
    {
      v10 = *(v4 + 32);
      if (v10 < *(v4 + 33))
      {
        v161 = (v4 + 16);
        v159 = v4;
        do
        {
          memset(__src, 0, sizeof(__src));
          *v172 = 0u;
          *&v174 = v154 | v156;
          *(&v174 + 1) = geo::Polygon2<double>::boundingBox(**v161, (*v161)[1]);
          *&v175 = v11;
          *(&v175 + 1) = v12;
          v176 = v13;
          v160 = v10;
          v185 = v10;
          v14 = a2[1];
          v15 = *(a2 + 1);
          v16 = *(a2 + 2);
          v182 = 0;
          v183 = 0;
          v184 = 0;
          std::vector<gm::Matrix<double,2,1>>::reserve(&v182, 4uLL);
          v17 = 1.0 / (1 << v14);
          v18 = v17 * ((1 << v14) + ~v15);
          v19 = v160 + v17 * v16;
          v21 = v183;
          v20 = v184;
          if (v183 >= v184)
          {
            v23 = v182;
            v24 = (v183 - v182) >> 4;
            v25 = v24 + 1;
            if ((v24 + 1) >> 60)
            {
              goto LABEL_225;
            }

            if ((v184 - v182) >> 3 > v25)
            {
              v25 = (v184 - v182) >> 3;
            }

            if (v184 - v182 >= 0x7FFFFFFFFFFFFFF0)
            {
              v26 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v26 = v25;
            }

            if (v26)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v26);
            }

            v27 = (16 * v24);
            *v27 = v19;
            v27[1] = v18;
            if (v23 != v21)
            {
              v28 = 0;
              do
              {
                v29 = *v23++;
                *v28++ = v29;
              }

              while (v23 != v21);
              v23 = v182;
            }

            v20 = 0;
            v22 = v27 + 2;
            v182 = 0;
            v184 = 0;
            if (v23)
            {
              operator delete(v23);
            }
          }

          else
          {
            *v183 = v19;
            v21[1] = v18;
            v22 = v21 + 2;
          }

          v30 = v18 + v17;
          if (v22 >= v20)
          {
            v32 = v182;
            v33 = (v22 - v182) >> 4;
            v34 = v33 + 1;
            if ((v33 + 1) >> 60)
            {
              goto LABEL_225;
            }

            if ((v20 - v182) >> 3 > v34)
            {
              v34 = (v20 - v182) >> 3;
            }

            if (v20 - v182 >= 0x7FFFFFFFFFFFFFF0)
            {
              v35 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v35 = v34;
            }

            if (v35)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v35);
            }

            v36 = (16 * v33);
            *v36 = v19;
            v36[1] = v30;
            if (v32 != v22)
            {
              v37 = 0;
              do
              {
                v38 = *v32++;
                *v37++ = v38;
              }

              while (v32 != v22);
              v32 = v182;
            }

            v20 = 0;
            v31 = v36 + 2;
            v182 = 0;
            v183 = v36 + 2;
            v184 = 0;
            if (v32)
            {
              operator delete(v32);
            }
          }

          else
          {
            *v22 = v19;
            v22[1] = v30;
            v31 = v22 + 2;
          }

          v39 = v19 + v17;
          if (v31 >= v20)
          {
            v42 = v182;
            v43 = (v31 - v182) >> 4;
            v44 = v43 + 1;
            if ((v43 + 1) >> 60)
            {
              goto LABEL_225;
            }

            if ((v20 - v182) >> 3 > v44)
            {
              v44 = (v20 - v182) >> 3;
            }

            if (v20 - v182 >= 0x7FFFFFFFFFFFFFF0)
            {
              v45 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v45 = v44;
            }

            if (v45)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v45);
            }

            v46 = (16 * v43);
            *v46 = v39;
            v46[1] = v30;
            if (v42 != v31)
            {
              v47 = 0;
              do
              {
                v48 = *v42++;
                *v47++ = v48;
              }

              while (v42 != v31);
              v42 = v182;
            }

            v41 = 0;
            v40 = v46 + 2;
            v182 = 0;
            if (v42)
            {
              operator delete(v42);
            }
          }

          else
          {
            *v31 = v39;
            v31[1] = v30;
            v40 = v31 + 2;
            v41 = v184;
          }

          if (v40 >= v41)
          {
            v50 = v182;
            v51 = (v40 - v182) >> 4;
            v52 = v51 + 1;
            if ((v51 + 1) >> 60)
            {
LABEL_225:
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            if ((v41 - v182) >> 3 > v52)
            {
              v52 = (v41 - v182) >> 3;
            }

            if (v41 - v182 >= 0x7FFFFFFFFFFFFFF0)
            {
              v53 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v53 = v52;
            }

            if (v53)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v53);
            }

            v54 = (16 * v51);
            *v54 = v39;
            v54[1] = v18;
            v162 = 0;
            if (v50 != v40)
            {
              v55 = 0;
              do
              {
                v56 = *v50++;
                *v55++ = v56;
              }

              while (v50 != v40);
              v50 = v182;
            }

            v49 = v54 + 2;
            if (v50)
            {
              operator delete(v50);
            }
          }

          else
          {
            *v40 = v39;
            v40[1] = v18;
            v49 = v40 + 2;
            v162 = v182;
          }

          v182 = 0;
          v183 = 0;
          v184 = 0;
          std::vector<gm::Matrix<double,2,1>>::vector[abi:nn200100](&v180, *v161);
          v57 = 0;
          v58 = 0;
          __p[0] = 0;
          __p[1] = 0;
          v178 = 0;
          v59 = (v49 - v162) >> 4;
          v163 = v59;
          do
          {
            if (v58 == v59)
            {
              v109 = __p[1];
              goto LABEL_146;
            }

            v165 = v58 + 1;
            if (v58 + 1 == v59)
            {
              v60 = 0;
            }

            else
            {
              v60 = v58 + 1;
            }

            v61 = v180;
            if (v181 == v180)
            {
              v168 = 0u;
              v106 = 0uLL;
            }

            else
            {
              v62 = 0;
              v166 = vsubq_f64(v162[v60], v162[v58]);
              v167 = v162[v58];
              v63 = *(&v162[v58] + 1);
              v64 = (v181 - 8);
              f64 = (v181 - 16);
              v66 = 0uLL;
              v168 = 0u;
              do
              {
                v169 = v66;
                v67 = *f64;
                v68 = *v64;
                f64 = v61[v62].f64;
                v64 = f64 + 1;
                v69 = f64[1];
                v70 = (v68 - v63) * v166.f64[0];
                v71 = (v67 - *&v167) * v166.f64[1];
                v72 = (v69 - v63) * v166.f64[0];
                v73 = (*f64 - *&v167) * v166.f64[1];
                if (v70 >= v71 == v72 < v73)
                {
                  v74 = *f64 - v67;
                  v75 = v69 - v68;
                  v76 = -(v74 * v166.f64[1] - v75 * v166.f64[0]);
                  if (v76 != 0.0)
                  {
                    v77 = (v71 - v70) / v76;
                    v78 = (*(&v169 + 1) - v169) >> 4;
                    v79 = v78 + 1;
                    if ((v78 + 1) >> 60)
                    {
                      goto LABEL_225;
                    }

                    if (-v169 >> 3 > v79)
                    {
                      v79 = -v169 >> 3;
                    }

                    if (-v169 >= 0x7FFFFFFFFFFFFFF0)
                    {
                      v80 = 0xFFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v80 = v79;
                    }

                    if (v80)
                    {
                      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v80);
                    }

                    v81 = (16 * v78);
                    *v81 = v67 + v77 * v74;
                    v81[1] = v68 + v77 * v75;
                    if (v169 != *(&v169 + 1))
                    {
                      v82 = v169;
                      v83 = 0;
                      do
                      {
                        v84 = *v82++;
                        *v83++ = v84;
                      }

                      while (v82 != *(&v169 + 1));
                    }

                    v85 = (v81 + 2);
                    if (v169)
                    {
                      operator delete(v169);
                    }

                    v86 = (*(&v168 + 1) - v168) >> 3;
                    v87 = v86 + 1;
                    if ((v86 + 1) >> 61)
                    {
                      goto LABEL_226;
                    }

                    if (-v168 >> 2 > v87)
                    {
                      v87 = -v168 >> 2;
                    }

                    if (-v168 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v88 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v88 = v87;
                    }

                    if (v88)
                    {
                      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v88);
                    }

                    v89 = (8 * v86);
                    *v89 = (v85 >> 4) - 1;
                    v90 = v89 + 1;
                    memcpy(0, v168, *(&v168 + 1) - v168);
                    if (v168)
                    {
                      operator delete(v168);
                    }

                    *&v91 = 0;
                    *(&v91 + 1) = v85;
                    v169 = v91;
                    *&v91 = 0;
                    *(&v91 + 1) = v90;
                    v168 = v91;
                  }
                }

                if (v72 < v73)
                {
                  v92 = (*(&v169 + 1) - v169) >> 4;
                  v93 = v92 + 1;
                  if ((v92 + 1) >> 60)
                  {
                    goto LABEL_225;
                  }

                  if (-v169 >> 3 > v93)
                  {
                    v93 = -v169 >> 3;
                  }

                  if (-v169 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v94 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v94 = v93;
                  }

                  if (v94)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v94);
                  }

                  *(16 * v92) = *f64;
                  if (v169 != *(&v169 + 1))
                  {
                    v95 = v169;
                    v96 = 0;
                    do
                    {
                      v97 = *v95++;
                      *v96++ = v97;
                    }

                    while (v95 != *(&v169 + 1));
                  }

                  if (v169)
                  {
                    operator delete(v169);
                  }

                  *&v98 = 0;
                  *(&v98 + 1) = 16 * v92 + 16;
                  v169 = v98;
                  v99 = __p[0];
                  if (__p[0] != __p[1])
                  {
                    while (*v99 != v62)
                    {
                      if (++v99 == __p[1])
                      {
                        goto LABEL_132;
                      }
                    }
                  }

                  if (v99 != __p[1])
                  {
                    v100 = (*(&v168 + 1) - v168) >> 3;
                    v101 = v100 + 1;
                    if ((v100 + 1) >> 61)
                    {
                      goto LABEL_226;
                    }

                    if (-v168 >> 2 > v101)
                    {
                      v101 = -v168 >> 2;
                    }

                    if (-v168 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v102 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v102 = v101;
                    }

                    if (v102)
                    {
                      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v102);
                    }

                    v103 = (8 * v100);
                    *v103 = ((16 * v92 + 16) >> 4) - 1;
                    v104 = v103 + 1;
                    memcpy(0, v168, *(&v168 + 1) - v168);
                    if (v168)
                    {
                      operator delete(v168);
                    }

                    *&v105 = 0;
                    *(&v105 + 1) = v104;
                    v168 = v105;
                  }
                }

LABEL_132:
                v106 = v169;
                ++v62;
                v61 = v180;
                v66 = v169;
              }

              while (v62 < (v181 - v180) >> 4);
            }

            *v186 = v106;
            *&v186[16] = 0;
            if (v61)
            {
              *&v181 = v61;
              v170 = v106;
              operator delete(v61);
              *&v106 = v170;
            }

            v107 = v106;
            v180 = v106;
            v181 = *&v186[8];
            if (__p[0])
            {
              operator delete(__p[0]);
              v107 = v180;
              v108 = v181;
            }

            else
            {
              v108 = *&v186[8];
            }

            *__p = v168;
            v178 = 0;
            v57 = v168;
            v58 = v165;
            _ZF = v108 == v107;
            v59 = v163;
          }

          while (!_ZF);
          if (v168)
          {
            operator delete(v168);
          }

          v57 = 0;
          v109 = 0;
LABEL_146:
          v171 = v109;
          std::vector<gm::Matrix<float,2,1>>::reserve(v172, (v181 - v180) >> 4);
          v110 = v171 - v57;
          if (v171 != v57)
          {
            if (!((v110 >> 3) >> 61))
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v110 >> 3);
            }

LABEL_226:
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v111 = v180;
          if (v181 != v180)
          {
            v112 = 0;
            v113 = v157;
            do
            {
              v114 = v57;
              if (v171 != v57)
              {
                v114 = v57;
                while (*v114 != v112)
                {
                  v114 += 8;
                  if (v114 == v171)
                  {
                    v114 = v171;
                    break;
                  }
                }
              }

              v115 = v111[v112];
              v116 = 1 << a2[1];
              v117 = 1.0 / v116;
              v118.f64[0] = v185 + v117 * *(a2 + 2);
              v118.f64[1] = v117 * (v116 + ~*(a2 + 1));
              v119 = vminnm_f32(vmaxnm_f32(vcvt_f32_f64(vmulq_n_f64(vsubq_f64(v115, v118), v116)), 0), _D12);
              if (*&v113 == *&v119)
              {
                if (v114 != v171 && !v171)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
                }

                v119 = v113;
              }

              else
              {
                v120 = v172[1];
                if (v172[1] >= __src[0])
                {
                  v122 = (v172[1] - v172[0]) >> 3;
                  if ((v122 + 1) >> 61)
                  {
                    std::__throw_bad_array_new_length[abi:nn200100]();
                  }

                  v123 = (__src[0] - v172[0]) >> 2;
                  if (v123 <= v122 + 1)
                  {
                    v123 = v122 + 1;
                  }

                  if ((__src[0] - v172[0]) >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v124 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v124 = v123;
                  }

                  if (v124)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v124);
                  }

                  v125 = (8 * v122);
                  *v125 = v119;
                  v121 = (8 * v122 + 8);
                  v126 = v172[0];
                  v127 = v172[1];
                  v128 = (v125 + v172[0] - v172[1]);
                  if (v172[1] != v172[0])
                  {
                    v129 = v128;
                    do
                    {
                      v130 = *v126++;
                      *v129++ = v130;
                    }

                    while (v126 != v127);
                    v126 = v172[0];
                  }

                  v172[0] = v128;
                  v172[1] = v121;
                  __src[0] = 0;
                  if (v126)
                  {
                    operator delete(v126);
                  }
                }

                else
                {
                  *v172[1] = v119;
                  v121 = v120 + 8;
                }

                v172[1] = v121;
                if (v114 != v171)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
                }
              }

              ++v112;
              v111 = v180;
              v113 = v119;
            }

            while (v112 < (v181 - v180) >> 4);
          }

          v131 = v172[1];
          if (v172[1] == v172[0])
          {
            v132 = v172[1];
          }

          else if (*v172[0] == *(v172[1] - 1))
          {
            std::vector<gm::Matrix<float,2,1>>::resize(v172, ((v172[1] - v172[0]) >> 3) - 1);
            v131 = v172[0];
            v132 = v172[1];
          }

          else
          {
            v132 = v172[1];
            v131 = v172[0];
          }

          *v186 = 0;
          __p[0] = v186;
          __p[1] = v161;
          v178 = a2;
          v179 = &v185;
          std::vector<gm::Range<geo::PolylineCoordinate>>::reserve(&__src[1], (v132 - v131) >> 3);
          if (v172[1] != v172[0])
          {
            v133 = 0;
            v134 = (v172[1] - v172[0]) >> 3;
            do
            {
              v135 = v133 + 1;
              if (v133 + 1 == v134)
              {
                v136 = 0;
              }

              else
              {
                v136 = v133 + 1;
              }

              v137 = __src[2];
              if (__src[2] >= __src[3])
              {
                v139 = __src[1];
                v140 = __src[2] - __src[1];
                v141 = (__src[2] - __src[1]) >> 4;
                v142 = v141 + 1;
                if ((v141 + 1) >> 60)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v143 = __src[3] - __src[1];
                if ((__src[3] - __src[1]) >> 3 > v142)
                {
                  v142 = v143 >> 3;
                }

                if (v143 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v144 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v144 = v142;
                }

                if (v144)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v144);
                }

                v145 = (__src[2] - __src[1]) >> 4;
                v146 = (16 * v141);
                *v146 = v133;
                v146[1] = v136;
                v138 = (16 * v141 + 16);
                v147 = (16 * v141 - 16 * v145);
                memcpy(&v146[-2 * v145], v139, v140);
                v148 = __src[1];
                __src[1] = v147;
                *&__src[2] = v138;
                if (v148)
                {
                  operator delete(v148);
                }
              }

              else
              {
                *__src[2] = v133;
                v137[1] = v136;
                v138 = v137 + 2;
              }

              __src[2] = v138;
              v134 = (v172[1] - v172[0]) >> 3;
              v133 = v135;
            }

            while (v135 < v134);
          }

          v149 = *v186;
          *v186 = 0;
          if (v149)
          {
            std::default_delete<std::vector<gm::Matrix<float,2,1>>>::operator()[abi:nn200100](v149);
          }

          if (v180)
          {
            *&v181 = v180;
            operator delete(v180);
          }

          if (v57)
          {
            operator delete(v57);
          }

          if (v162)
          {
            operator delete(v162);
          }

          if (v182)
          {
            operator delete(v182);
          }

          if (v172[1] != v172[0])
          {
            v150 = a1[1];
            if (v150 >= a1[2])
            {
              v153 = std::vector<md::PolygonOverlayMeshBuilder::MeshInfo>::__emplace_back_slow_path<md::PolygonOverlayMeshBuilder::MeshInfo>(a1, v172);
            }

            else
            {
              *(v150 + 16) = 0;
              *(v150 + 24) = 0;
              *v150 = 0;
              *(v150 + 8) = 0;
              *v150 = *v172;
              *(v150 + 16) = __src[0];
              v172[0] = 0;
              v172[1] = 0;
              __src[0] = 0;
              *(v150 + 32) = 0;
              *(v150 + 40) = 0;
              *(v150 + 24) = *&__src[1];
              *(v150 + 40) = __src[3];
              memset(&__src[1], 0, 24);
              v151 = v174;
              v152 = v175;
              *(v150 + 80) = v176;
              *(v150 + 48) = v151;
              *(v150 + 64) = v152;
              v153 = v150 + 88;
            }

            a1[1] = v153;
          }

          if (__src[1])
          {
            __src[2] = __src[1];
            operator delete(__src[1]);
          }

          if (v172[0])
          {
            v172[1] = v172[0];
            operator delete(v172[0]);
          }

          v10 = (v160 + 1);
          v4 = v159;
        }

        while (v10 < *(v159 + 33));
      }

      ++v156;
      v4 = *(v4 + 8);
    }

    while (v4 != a3);
  }
}