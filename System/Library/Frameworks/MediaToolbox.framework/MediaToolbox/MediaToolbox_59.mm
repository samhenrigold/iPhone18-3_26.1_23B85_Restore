uint64_t sp_MatchTagAndColon(const char *a1, const char *a2, size_t a3, const char **a4, uint64_t a5)
{
  if (strncmp(a1, a2, a3))
  {
    return 0;
  }

  v9 = StreamingPlaylist_SkipSpacesAndTabs(&a1[a3], a5);
  if (*v9 != 58)
  {
    return 0;
  }

  v10 = StreamingPlaylist_SkipSpacesAndTabs(v9 + 1, a5);
  if (a4)
  {
    *a4 = v10;
  }

  return 1;
}

uint64_t sp_strtoull(char *a1, char **a2, unint64_t *a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  __endptr = 0;
  *__error() = 0;
  *a3 = strtoull(a1, &__endptr, a4);
  if (*__error() == 22)
  {
    v16 = @"%s:Illegal integer conversion";
LABEL_19:
    v24 = a7;
    v21 = 4294954654;
    _StreamPlaylistLogError(4294954654, 4294955032, a8, v16, v24);
    goto LABEL_20;
  }

  if (*__error() == 34)
  {
    v16 = @"%s:out of range";
    goto LABEL_19;
  }

  if (a5 != 1 && __endptr > a1)
  {
    v16 = @"%s:Illegal character before integer";
    while ((*a1 - 48) < 0xA)
    {
      if (++a1 == __endptr)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_19;
  }

LABEL_8:
  if (a6 != 1 || ((v17 = *__endptr, v18 = v17 > 0x2C, v19 = (1 << v17) & 0x100000002401, !v18) ? (v20 = v19 == 0) : (v20 = 1), !v20))
  {
    v21 = 0;
    v22 = 1;
    if (!a2)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v25 = a7;
  v21 = 4294954654;
  _StreamPlaylistLogError(4294954654, 4294955032, a8, @"%s:Illegal characters after integer", v25);
  v22 = 0;
  if (a2)
  {
LABEL_14:
    *a2 = __endptr;
  }

LABEL_15:
  if ((v22 & 1) == 0)
  {
LABEL_20:
    *a3 = 0;
    return v21;
  }

  return 0;
}

uint64_t sp_strtod(const char *a1, char **a2, double *a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v28 = 0;
  *__error() = 0;
  if (a3)
  {
    *a3 = 0.0;
    if (a1)
    {
      v13 = strtod_l(a1, &v28, 0);
      *a3 = v13;
      if (v13 == 0.0 && v28 == a1)
      {
        v23 = @"%s: Illegal decimal conversion";
      }

      else
      {
        if (*__error() != 34)
        {
          v15 = v28;
          if (v28 > a1)
          {
            v16 = MEMORY[0x1E69E9830];
            do
            {
              v17 = *a1;
              if (v17 == 46)
              {
                if (a4)
                {
                  *a4 = 1;
                }

                goto LABEL_18;
              }

              if ((v17 & 0x80000000) != 0)
              {
                if (__maskrune(v17, 0x400uLL))
                {
                  goto LABEL_18;
                }
              }

              else if ((*(v16 + 4 * v17 + 60) & 0x400) != 0)
              {
                goto LABEL_18;
              }

              v18 = *a1;
              if (v18 != 45)
              {
                v27 = a5;
                v21 = 4294954654;
                _StreamPlaylistLogError(4294954654, 4294955032, a6, @"%s: Illegal character '%c' in decimal number", v27, v18);
                goto LABEL_30;
              }

LABEL_18:
              ++a1;
              v15 = v28;
            }

            while (a1 < v28);
          }

          v19 = *v15;
          if (v19 > 0x2C || ((1 << v19) & 0x100000002401) == 0)
          {
            v26 = a5;
            v21 = 4294954654;
            _StreamPlaylistLogError(4294954654, 4294955032, a6, @"%s: Illegal character '%c' after decimal number", v26, v19);
            v22 = 0;
            if (!a2)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v21 = 0;
            v22 = 1;
            if (!a2)
            {
LABEL_25:
              if ((v22 & 1) == 0)
              {
                goto LABEL_30;
              }

              return 0;
            }
          }

          *a2 = v28;
          goto LABEL_25;
        }

        v23 = @"%s: Out of range.";
      }

      v25 = a5;
      v21 = 4294954654;
      _StreamPlaylistLogError(4294954654, 4294955023, a6, v23, v25);
      goto LABEL_30;
    }
  }

  sp_strtod_cold_1(a6, v12);
  v21 = 4294954656;
LABEL_30:
  *a3 = 0.0;
  return v21;
}

uint64_t StreamingPlaylist_MatchAlphanumericStringExactly(const char *a1, const char *a2, size_t a3, const char **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2)
  {
    StreamingPlaylist_MatchAlphanumericStringExactly_cold_1(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15, SHIDWORD(v15), v16);
    return 0;
  }

  if (strncmp(a1, a2, a3))
  {
    return 0;
  }

  v11 = &a1[a3];
  v12 = *v11;
  if ((v12 & 0x80000000) == 0)
  {
    if ((*(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x500) == 0)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (__maskrune(v12, 0x500uLL))
  {
    return 0;
  }

LABEL_9:
  if (a4)
  {
    *a4 = v11;
  }

  return 1;
}

uint64_t sp_strtol(char *a1, char **a2, _DWORD *a3, int a4, uint64_t a5, uint64_t a6)
{
  __endptr = 0;
  *__error() = 0;
  *a3 = strtol(a1, &__endptr, 10);
  if (*__error() == 22)
  {
    v13 = @"%s:Illegal integer conversion";
LABEL_18:
    v18 = a5;
    v15 = 4294954654;
    _StreamPlaylistLogError(4294954654, 4294955032, a6, v13, v18);
    goto LABEL_19;
  }

  if (*__error() == 34)
  {
    v13 = @"%s:out of range";
    goto LABEL_18;
  }

  if ((*a3 & 0x80000000) != 0)
  {
    v13 = @"%s:Decimal value less than 0";
    goto LABEL_18;
  }

  v12 = __endptr;
  if (__endptr > a1)
  {
    v13 = @"%s:Illegal character before integer";
    while ((*a1 - 48) < 0xA)
    {
      if (++a1 == __endptr)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_18;
  }

LABEL_8:
  if (a4 != 1 || (v14 = *__endptr, v14 <= 0x2C) && ((1 << v14) & 0x100000002401) != 0)
  {
    v15 = 0;
    v16 = 1;
    if (!a2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v19 = a5;
  v15 = 4294954654;
  _StreamPlaylistLogError(4294954654, 4294955032, a6, @"%s:Illegal characters after integer", v19);
  v16 = 0;
  if (a2)
  {
LABEL_12:
    *a2 = v12;
  }

LABEL_13:
  if ((v16 & 1) == 0)
  {
LABEL_19:
    *a3 = 0;
    return v15;
  }

  return 0;
}

const char *StreamingPlaylist_SkipSpacesAndTabs(const char *a1, uint64_t a2)
{
  v5 = strspn(a1, " \t");
  if (v5)
  {
    StreamingPlaylist_SkipSpacesAndTabs_cold_1(a2, v4);
  }

  return &a1[v5];
}

uint64_t sp_ParseAttribute(const char *a1, char *a2, uint64_t a3, int a4, char **a5, void *a6, char **a7, size_t *a8, const char **a9, int *a10, UInt8 **a11, uint64_t a12)
{
  v12 = a1;
  v13 = a9;
  v14 = a10;
  v70 = *MEMORY[0x1E69E9840];
  v61 = 0;
  v62 = 0;
  __s1 = a2;
  if (!a2)
  {
    v34 = 4294954656;
    _StreamPlaylistLogError(4294954656, 4294955032, a12, @"%s: no attributes", a5, a6, a7, a8, a1);
LABEL_48:
    v33 = 0;
    goto LABEL_42;
  }

  v58 = a3;
  *a5 = 0;
  *a6 = 0;
  *a7 = 0;
  *a8 = 0;
  *a10 = 0;
  *a11 = 0;
  v20 = sp_SkipSpacesTabsAndCommas(a2, a12, 0);
  __s1 = v20;
  if (*v20 == 61)
  {
    v50 = @"%s: Missing or blank attribute";
    v52 = v12;
LABEL_47:
    v34 = 4294954654;
    _StreamPlaylistLogError(4294954654, 4294955032, a12, v50, v21, v22, v23, v24, v52);
    goto LABEL_48;
  }

  v59 = a7;
  matched = sp_MatchAttributeName(v20, 0, &__s1, &v62);
  v26 = v62;
  if (!matched)
  {
    v33 = 0;
LABEL_12:
    if (v26 && *a5)
    {
      if (*v59)
      {
        v34 = 0;
        v35 = __s1;
        goto LABEL_27;
      }

      v53 = v26;
      v54 = *a5;
      v44 = @"%s: %.*s: Empty or blank attribute value";
    }

    else
    {
      v44 = @"%s: Illegal attribute name";
    }

    v51 = v12;
    v34 = 4294954654;
    _StreamPlaylistLogError(4294954654, 4294955032, a12, v44, v51, v53, v54);
    goto LABEL_42;
  }

  v56 = a4;
  v57 = a8;
  v27 = __s1;
  *a5 = __s1;
  *a6 = v26;
  if (!strncmp(v27, "REQ-", 4uLL))
  {
    v28 = *a12;
    if (!*a12)
    {
      v55 = v12;
      v64 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v30 = v64;
      v31 = type;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v32 = v30;
      }

      else
      {
        v32 = v30 & 0xFFFFFFFE;
      }

      if (v32)
      {
        v65 = 136315394;
        v66 = "sp_ParseForUnknownREQPrefixAttribute";
        v67 = 2080;
        v68 = v55;
        _os_log_send_and_compose_impl(v32, 0, v69, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v31, "<<<< StreamPlaylist >>>> %s: Found REQ- prefix attribute in %s before EXT-X-VERSION", &v65, 22);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v14 = a10;
      v12 = v55;
    }

    if (!strncasecmp(v12, "#EXT-X-STREAM-INF", 0x11uLL))
    {
      v36 = strncasecmp(v12, "#EXT-X-I-FRAME-STREAM-INF", 0x19uLL);
      if (v26 != 16 || !v36)
      {
LABEL_28:
        v38 = v28 < 12;
        v13 = a9;
        if (!v38)
        {
LABEL_24:
          if (*(a12 + 32))
          {
            FigIsItOKToLogURLs();
          }

          v34 = 0;
          v35 = &v27[strcspn(v27, "\r\n")];
          v33 = 2;
          goto LABEL_27;
        }

        goto LABEL_30;
      }
    }

    else if (v26 != 16)
    {
      goto LABEL_28;
    }

    v37 = strncmp(v27, "REQ-VIDEO-LAYOUT", 0x10uLL);
    v38 = v28 < 12;
    v13 = a9;
    if (!v38 && v37)
    {
      goto LABEL_24;
    }
  }

LABEL_30:
  v40 = v12;
  v41 = StreamingPlaylist_SkipSpacesAndTabs(&v27[v26], a12);
  __s1 = v41;
  if (*v41 != 61)
  {
    v50 = @"%s: missing =";
    v52 = v12;
    goto LABEL_47;
  }

  __s1 = StreamingPlaylist_SkipSpacesAndTabs(v41 + 1, a12);
  v33 = *__s1 == 34;
  StringWithReplacement = sp_GetStringWithReplacement(__s1, 1, v58, &__s1, v59, &v61, a11, a12);
  if (StringWithReplacement == -16239)
  {
    v45 = v13;
    v46 = v14;
    v47 = __s1;
    v48 = strcspn(__s1, " \t,\r\n");
    if (v48)
    {
      *v59 = v47;
      *v57 = v48;
      __s1 = StreamingPlaylist_SkipSpacesAndTabs(&v47[v48], a12);
    }

    v14 = v46;
    v13 = v45;
    goto LABEL_12;
  }

  v34 = StringWithReplacement;
  if (!StringWithReplacement)
  {
    v43 = v61;
    *a8 = v61;
    if (v56)
    {
      v12 = v40;
      if (!v43)
      {
        *v59 = __s1;
      }
    }

    else
    {
      v12 = v40;
    }

    goto LABEL_12;
  }

LABEL_42:
  v35 = __s1;
  if (!*(a12 + 41))
  {
    v49 = &v35[strcspn(__s1, "\r\n")];
    v35 = &v49[strspn(v49, "\r\n")];
  }

LABEL_27:
  *v13 = sp_SkipSpacesTabsAndCommas(v35, a12, 1);
  *v14 = v33;
  return v34;
}

uint64_t sp_strtoll(char *a1, char **a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6)
{
  __endptr = 0;
  *__error() = 0;
  *a3 = strtoll(a1, &__endptr, 10);
  if (*__error() == 22)
  {
    v13 = @"%s:Illegal integer conversion";
LABEL_18:
    v18 = a5;
    v15 = 4294954654;
    _StreamPlaylistLogError(4294954654, 4294955032, a6, v13, v18);
    goto LABEL_19;
  }

  if (*__error() == 34)
  {
    v13 = @"%s:out of range";
    goto LABEL_18;
  }

  if (*a3 < 0)
  {
    v13 = @"%s:Decimal value less than 0";
    goto LABEL_18;
  }

  v12 = __endptr;
  if (__endptr > a1)
  {
    v13 = @"%s:Illegal character before integer";
    while ((*a1 - 48) < 0xA)
    {
      if (++a1 == __endptr)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_18;
  }

LABEL_8:
  if (a4 != 1 || (v14 = *__endptr, v14 <= 0x2C) && ((1 << v14) & 0x100000002401) != 0)
  {
    v15 = 0;
    v16 = 1;
    if (!a2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v19 = a5;
  v15 = 4294954654;
  _StreamPlaylistLogError(4294954654, 4294955032, a6, @"%s:Illegal characters after integer", v19);
  v16 = 0;
  if (a2)
  {
LABEL_12:
    *a2 = v12;
  }

LABEL_13:
  if ((v16 & 1) == 0)
  {
LABEL_19:
    *a3 = 0;
    return v15;
  }

  return 0;
}

uint64_t StreamingPlaylist_FindResolution(char *a1, int *a2, int *a3, void *a4, uint64_t a5)
{
  v14 = 0;
  v13 = 0;
  if (sp_strtol(a1, &v13, &v14, 0, "horizontal resolution", a5))
  {
    v9 = -1;
    goto LABEL_3;
  }

  v9 = v14;
  if (!v13 || *v13 != 120)
  {
    StreamingPlaylist_FindResolution_cold_1();
LABEL_3:
    v10 = -1;
    if (!a4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  ++v13;
  v13 = StreamingPlaylist_SkipSpacesAndTabs(v13, a5);
  v12 = sp_strtol(v13, &v13, &v14, 1, "vertical resolution", a5);
  v10 = v14;
  if (v12)
  {
    v10 = -1;
  }

  if (a4)
  {
LABEL_4:
    *a4 = v13;
  }

LABEL_5:
  result = 0;
  if ((v9 & 0x80000000) == 0 && (v10 & 0x80000000) == 0)
  {
    *a2 = v9;
    *a3 = v10;
    return 1;
  }

  return result;
}

const void *StreamingPlaylistCreateMediaURLWithBytes(UInt8 *URLBytes, CFIndex length, CFURLRef baseURL, const __CFURL *a4, CFURLRef *a5, void *a6)
{
  v11 = *MEMORY[0x1E695E480];
  *a5 = CFURLCreateWithBytes(*MEMORY[0x1E695E480], URLBytes, length, 0x8000100u, baseURL);
  if (FigCFEqual())
  {
    result = *a5;
    if (*a5)
    {
      result = CFRetain(result);
    }
  }

  else
  {
    result = CFURLCreateWithBytes(v11, URLBytes, length, 0x8000100u, a4);
  }

  *a6 = result;
  return result;
}

uint64_t sp_MatchYesOrNo(uint64_t a1, char *a2, uint64_t a3, _BYTE *a4)
{
  if (!strncasecmp(a2, "YES", 3uLL))
  {
    v8 = 0;
    *a4 = 1;
  }

  else if (!strncasecmp(a2, "NO", 2uLL))
  {
    v8 = 0;
    *a4 = 0;
  }

  else
  {
    v10 = a1;
    v8 = 4294954654;
    _StreamPlaylistLogError(4294954654, 4294955030, a3, @"%s must be YES or NO", v10);
  }

  return v8;
}

uint64_t PlaylistCharacteristicsCheckFn(const __CFString *cf1, int *a2)
{
  v4 = *a2;
  if (*a2 != 1668047728)
  {
    if (v4 == 1936684398)
    {
      v6 = kFigStdAssetMediaCharacteristic_TaggedDescribesVideoForAccessibility;
LABEL_8:
      result = CFEqual(cf1, *v6);
      if (result)
      {
        return result;
      }

      return PlaylistCharacteristicsCheckFn_cold_1(cf1, a2);
    }

    if (v4 != 1935832172)
    {
      return PlaylistCharacteristicsCheckFn_cold_1(cf1, a2);
    }
  }

  result = CFEqual(cf1, @"public.accessibility.transcribes-spoken-dialog");
  if (!result)
  {
    result = CFEqual(cf1, @"public.accessibility.describes-music-and-sound");
    if (!result)
    {
      v6 = kFigStdAssetMediaCharacteristic_TaggedEasyToRead;
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PlaylistAddCharacteristicsForClosedCaptions(CFArrayRef *a1)
{
  v2 = *a1;
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    v10.location = 0;
    v10.length = Count;
    v4 = CFArrayContainsValue(*a1, v10, @"public.accessibility.transcribes-spoken-dialog");
    v11.location = 0;
    v11.length = Count;
    v5 = CFArrayContainsValue(*a1, v11, @"public.accessibility.describes-music-and-sound");
    v6 = v5;
    if (v4)
    {
      if (v5)
      {
        return 0;
      }
    }

    else
    {
      CFArrayAppendValue(*a1, @"public.accessibility.transcribes-spoken-dialog");
      if (v6)
      {
        return 0;
      }
    }

LABEL_7:
    CFArrayAppendValue(*a1, @"public.accessibility.describes-music-and-sound");
    return 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  *a1 = Mutable;
  if (Mutable)
  {
    CFArrayAppendValue(Mutable, @"public.accessibility.transcribes-spoken-dialog");
    goto LABEL_7;
  }

  PlaylistAddCharacteristicsForClosedCaptions_cold_1(&v9);
  return v9;
}

const void *FindMatchingMapEntry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = 0; ; ++i)
  {
    MapSegmentSpecifiers = FigMediaPlaylistGetMapSegmentSpecifiers(a1);
    if (MapSegmentSpecifiers)
    {
      MapSegmentSpecifiers = CFArrayGetCount(MapSegmentSpecifiers);
    }

    if (i >= MapSegmentSpecifiers)
    {
      break;
    }

    v9 = FigMediaPlaylistGetMapSegmentSpecifiers(a1);
    ValueAtIndex = CFArrayGetValueAtIndex(v9, i);
    if (FigMediaSegmentSpecifierGetStartOffset(ValueAtIndex) == a3 && FigMediaSegmentSpecifierGetBytesToRead(ValueAtIndex) == a4)
    {
      FigMediaSegmentSpecifierGetURLString(ValueAtIndex);
      if (FigCFEqual())
      {
        return ValueAtIndex;
      }
    }
  }

  return 0;
}

uint64_t PlaylistCreateMapEntry(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v17 = 0;
  if (a6)
  {
    *a6 = 0;
    MediaEntryCount = FigMediaPlaylistGetMediaEntryCount(a1);
    FigMediaPlaylistSetMediaEntryCount(a1, MediaEntryCount + 1);
    AllocatorForMedia = FigGetAllocatorForMedia();
    v14 = FigMediaPlaylistGetMediaEntryCount(a1);
    v15 = FigMediaSegmentSpecifierCreate(AllocatorForMedia, a2, 0, 0, a5, 0, a3, a4, 0.0, 0.0, 0.0, 0, 0, 1, 0, 0, 1, 0, 0, 0, v14, 1, &v17);
    FigMediaPlaylistAddMapSegmentSpecifier(a1, v17);
    *a6 = v17;
  }

  else
  {
    PlaylistCreateMapEntry_cold_1(&v18);
    return v18;
  }

  return v15;
}

uint64_t PlaylistProcessPartInfTag(uint64_t a1, char *a2, uint64_t a3)
{
  v20 = a2;
  v18 = 0;
  v19 = 0.0;
  while (1)
  {
    v4 = v20;
    v5 = *v20;
    v6 = v5 > 0xD;
    v7 = (1 << v5) & 0x2401;
    if (!v6 && v7 != 0)
    {
      v10 = 0;
      goto LABEL_17;
    }

    v16 = 0;
    __s1 = 0;
    v15 = 0;
    v13 = 0;
    free(v18);
    v18 = 0;
    v10 = sp_ParseAttribute("#EXT-X-PART-INF", v4, 1, 0, &__s1, &v15, &v16, &v14, &v20, &v13, &v18, a3);
    if (v10 && !*(a3 + 41) || (v13 & 2) != 0)
    {
      return v10;
    }

    if (__s1)
    {
      v9 = v16;
      if (v16)
      {
        if (v15 == 11 && !strncmp(__s1, "PART-TARGET", 0xBuLL))
        {
          v10 = sp_strtod(v9, 0, &v19, 0, "Blocking reload part target", a3);
          if (!v10 && v19 <= 0.0)
          {
            break;
          }
        }
      }
    }

    if (v10)
    {
      goto LABEL_17;
    }
  }

  v10 = 4294954654;
  _StreamPlaylistLogError(4294954654, 4294955032, a3, @"%s must have %s", v19, "#EXT-X-PART-INF", "PART-TARGET");
LABEL_17:
  FigMediaPlaylistSetPartTargetDuration(a1, v19);
  free(v18);
  return v10;
}

uint64_t PlaylistProcessPartTag(uint64_t a1, char *a2, uint64_t a3, const void *a4, const void *a5, uint64_t a6, const void *a7, uint64_t a8, double a9, double *a10)
{
  cf = 0;
  v52 = 0;
  v54 = 0;
  v57 = 0;
  v66 = 0.0;
  v67 = a2;
  v64 = 0;
  v65 = 0;
  v63 = 0;
  while (1)
  {
    v12 = v67;
    v13 = *v67;
    v14 = v13 > 0xD;
    v15 = (1 << v13) & 0x2401;
    if (!v14 && v15 != 0)
    {
      v29 = 0;
      v30 = 1;
      goto LABEL_58;
    }

    __src = 0;
    __s1 = 0;
    v59 = 0;
    v60 = 0;
    v58 = 0;
    free(v65);
    v65 = 0;
    v29 = sp_ParseAttribute("#EXT-X-PART", v12, 1, 0, &__s1, &v60, &__src, &v59, &v67, &v58, &v65, a8);
    if (v29 && !*(a8 + 41) || (v17 = v58, (v58 & 2) != 0))
    {
      v31 = v57;
LABEL_54:
      v32 = cf;
      goto LABEL_85;
    }

    if (!__s1)
    {
      goto LABEL_37;
    }

    v18 = __src;
    if (!__src)
    {
      goto LABEL_37;
    }

    if (v60 <= 8)
    {
      break;
    }

    if (v60 != 9)
    {
      if (v60 == 11 && !strncmp(__s1, "INDEPENDENT", 0xBuLL))
      {
        if (v59 == 3)
        {
          v21 = *v18 == 17753 && v18[2] == 83;
          v54 = v21;
        }

        else
        {
          v54 = 0;
        }
      }

      goto LABEL_37;
    }

    if (!strncmp(__s1, "BYTERANGE", 9uLL))
    {
      if ((v17 & 1) == 0)
      {
        v33 = "BYTERANGE";
        goto LABEL_56;
      }

      v19 = PlaylistProcessByteRange(&v64, &v63, 0, &__src, v59, a8);
LABEL_17:
      v29 = v19;
    }

LABEL_37:
    if (v29)
    {
      goto LABEL_57;
    }
  }

  if (v60 != 3)
  {
    if (v60 != 8 || strncmp(__s1, "DURATION", 8uLL))
    {
      goto LABEL_37;
    }

    v19 = sp_strtod(v18, 0, &v66, 0, "Partial Segment Duration", a8);
    goto LABEL_17;
  }

  v22 = *__s1;
  if (v22 == 71)
  {
    if (__s1[1] == 65 && __s1[2] == 80)
    {
      if (v59 == 3)
      {
        v28 = *__src == 17753 && *(__src + 2) == 83;
        v52 = v28;
      }

      else
      {
        v52 = 0;
      }
    }

    goto LABEL_37;
  }

  if (v22 != 85 || __s1[1] != 82 || __s1[2] != 73)
  {
    goto LABEL_37;
  }

  if (v58)
  {
    free(v57);
    v23 = v59;
    v24 = malloc_type_malloc(v59 + 1, 0xD232CFBEuLL);
    if (!v24)
    {
      PlaylistProcessPartTag_cold_1(v68);
      v31 = 0;
      v29 = v68[0];
      goto LABEL_54;
    }

    v25 = v24;
    memcpy(v24, __src, v23);
    v25[v23] = 0;
    AllocatorForMedia = FigGetAllocatorForMedia();
    v57 = v25;
    cf = CFStringCreateWithBytes(AllocatorForMedia, v25, v23, 0x8000100u, 0);
    goto LABEL_37;
  }

  v33 = "URI";
LABEL_56:
  v29 = 4294954654;
  _StreamPlaylistLogError(4294954654, 4294955032, a8, @"%s %s: missing quotes", "#EXT-X-PART", v33);
LABEL_57:
  v30 = 0;
LABEL_58:
  v32 = cf;
  v31 = v57;
  v34 = v66;
  if (*a10 < v66)
  {
    *a10 = v66;
  }

  if (v57)
  {
    v30 = 0;
  }

  if ((v30 & 1) != 0 || !v29 && v34 == 0.0)
  {
    PlaylistProcessPartTag_cold_2();
    v29 = 4294954654;
  }

  PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(a3);
  LastValue = FigCFArrayGetLastValue();
  if (v29)
  {
    v37 = 0;
    MediaFileEntry = 0;
  }

  else
  {
    v39 = LastValue;
    if (FigCFArrayGetLastValue() && FigMediaSegmentSpecifierGetDiscontinuityDomain(v39) != a6)
    {
      PlaylistProcessPartTag_cold_3();
      v37 = 0;
      MediaFileEntry = 0;
      v29 = 4294954654;
    }

    else
    {
      if (FigMediaSegmentSpecifierIsDiscontinuity(a3))
      {
        if (PartialSegments)
        {
          v40 = CFArrayGetCount(PartialSegments) == 0;
        }

        else
        {
          v40 = 1;
        }
      }

      else
      {
        v40 = 0;
      }

      MediaSequence = FigMediaSegmentSpecifierGetMediaSequence(a3);
      MediaFileEntry = CreateMediaFileEntry(a1, cf, 0, a4, a5, MediaSequence, a6, v63, v66, a9, v64, a7, 0, v40, v52);
      v37 = 1;
      FigMediaSegmentSpecifierSetIsFragment(MediaFileEntry, 1);
      FigMediaSegmentSpecifierSetIsIndependent(MediaFileEntry, v54);
      FigMediaSegmentSpecifierAddPartialSegment(a3, MediaFileEntry);
      v29 = 0;
    }
  }

  FirstValue = FigCFArrayGetFirstValue();
  if (FirstValue != FigCFArrayGetLastValue())
  {
    v43 = FigCFArrayGetLastValue();
    PreviousSegment = FigMediaSegmentSpecifierGetPreviousSegment(v43);
    if (v37)
    {
      v45 = PreviousSegment;
      if (FigMediaPlaylistGetPartTargetDuration(a1) == 0.0 || FigMediaSegmentSpecifierIsMarkedIndependent(v45) || (TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(v45), TimeInSeconds >= FigMediaPlaylistGetPartTargetDuration(a1) * 0.85) || FigMediaSegmentSpecifierIsMarkedAsGap(v45) | v52)
      {
        v29 = 0;
      }

      else
      {
        PlaylistProcessPartTag_cold_4();
        v29 = 4294954654;
      }
    }
  }

  free(v65);
  if (MediaFileEntry)
  {
    CFRelease(MediaFileEntry);
  }

LABEL_85:
  if (v32)
  {
    CFRelease(v32);
  }

  free(v31);
  return v29;
}

uint64_t PlaylistProcessRenditionReportTag(uint64_t a1, char *a2, const __CFURL *a3, uint64_t a4)
{
  v5 = a2;
  v7 = 0;
  v31 = 0;
  v8 = 0;
  v41 = a2;
  v39 = -1;
  v40 = -1;
  v37 = -1;
  v38 = -1;
  v36 = 0;
  v29 = *MEMORY[0x1E695E480];
  while (1)
  {
    v9 = *v5;
    v10 = v9 > 0xD;
    v11 = (1 << v9) & 0x2401;
    if (!v10 && v11 != 0)
    {
      break;
    }

    v42 = 0;
    v34 = 0;
    URLBytes = 0;
    length = 0;
    v32 = 0;
    free(v36);
    v36 = 0;
    v8 = sp_ParseAttribute("#EXT-X-RENDITION-REPORT", v5, 1, 0, &v42, &v34, &URLBytes, &length, &v41, &v32, &v36, a4);
    if (v8 && !*(a4 + 41) || (v32 & 2) != 0)
    {
      goto LABEL_63;
    }

    if (v42)
    {
      v13 = URLBytes;
      if (URLBytes)
      {
        if (length)
        {
          if (v34 <= 8)
          {
            if (v34 == 3)
            {
              v21 = *v42;
              if (v21 == 71)
              {
                if (v42[1] == 65 && v42[2] == 80)
                {
                  if (length == 3)
                  {
                    v23 = *URLBytes == 17753 && URLBytes[2] == 83;
                    v31 = v23;
                  }

                  else
                  {
                    v31 = 0;
                  }
                }

                goto LABEL_30;
              }

              if (v21 == 85 && v42[1] == 82 && v42[2] == 73)
              {
                if (v32)
                {
                  v7 = CFURLCreateWithBytes(v29, URLBytes, length, 0x8000100u, a3);
                  goto LABEL_30;
                }

                PlaylistProcessRenditionReportTag_cold_3();
                v8 = 4294954654;
              }

              else
              {
LABEL_30:
                if (!v8)
                {
                  goto LABEL_32;
                }
              }

              if (!*(a4 + 41))
              {
                goto LABEL_63;
              }

              goto LABEL_32;
            }

            if (v34 != 8 || strncmp(v42, "LAST-MSN", 8uLL))
            {
              goto LABEL_30;
            }

            v17 = &v40;
            v18 = v13;
            v19 = "last_media_seq_num";
LABEL_28:
            v20 = sp_strtoll(v18, &URLBytes, v17, 1, v19, a4);
          }

          else
          {
            if (v34 != 9)
            {
              if (v34 != 10)
              {
                if (v34 == 11 && !strncmp(v42, "LAST-I-PART", 0xBuLL))
                {
                  v14 = &v37;
                  v15 = v13;
                  v16 = "last_indepdendent_part";
                  goto LABEL_25;
                }

                goto LABEL_30;
              }

              if (strncmp(v42, "LAST-I-MSN", 0xAuLL))
              {
                goto LABEL_30;
              }

              v17 = &v39;
              v18 = v13;
              v19 = "last_indepdendent_media_seq_num";
              goto LABEL_28;
            }

            if (strncmp(v42, "LAST-PART", 9uLL))
            {
              goto LABEL_30;
            }

            v14 = &v38;
            v15 = v13;
            v16 = "last_part";
LABEL_25:
            v20 = sp_strtol(v15, &URLBytes, v14, 1, v16, a4);
          }

          v8 = v20;
          goto LABEL_30;
        }
      }
    }

LABEL_32:
    v5 = v41;
  }

  if (!v8)
  {
    if (!v7)
    {
      PlaylistProcessRenditionReportTag_cold_2();
      v8 = 4294954654;
      goto LABEL_65;
    }

    v24 = 0;
    while (1)
    {
      RenditionReportSpecifiers = FigMediaPlaylistGetRenditionReportSpecifiers(a1);
      if (RenditionReportSpecifiers)
      {
        RenditionReportSpecifiers = CFArrayGetCount(RenditionReportSpecifiers);
      }

      if (v24 >= RenditionReportSpecifiers)
      {
        break;
      }

      v26 = FigMediaPlaylistGetRenditionReportSpecifiers(a1);
      ValueAtIndex = CFArrayGetValueAtIndex(v26, v24);
      FigRenditionReportSpecifierGetURL(ValueAtIndex);
      ++v24;
      if (FigCFEqual())
      {
        PlaylistProcessRenditionReportTag_cold_1(&v42);
        v8 = v42;
        goto LABEL_63;
      }
    }

    v42 = 0;
    v8 = FigRenditionReportSpecifierCreate(v7, v40, v39, v38, v37, 1, v31, &v42);
    if (!v8)
    {
      FigMediaPlaylistAddRenditionReportSpecifier(a1, v42);
    }

    if (v42)
    {
      CFRelease(v42);
    }
  }

LABEL_63:
  if (v7)
  {
    CFRelease(v7);
  }

LABEL_65:
  free(v36);
  return v8;
}

uint64_t PlaylistProcessPreloadHintTag(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = a2;
  v27 = 0;
  v5 = 0;
  v28 = 0;
  v36 = 0;
  v37 = a2;
  v34 = -1;
  v35 = 0;
  v6 = "BYTERANGE-START";
  while (1)
  {
    v7 = *v4;
    v8 = v7 > 0xD;
    v9 = (1 << v7) & 0x2401;
    if (!v8 && v9 != 0)
    {
      break;
    }

    bytes = 0;
    __s1 = 0;
    v30 = 0;
    v31 = 0;
    v29 = 0;
    free(v36);
    v36 = 0;
    v5 = sp_ParseAttribute("#EXT-X-PRELOAD-HINT", v4, 1, 0, &__s1, &v31, &bytes, &v30, &v37, &v29, &v36, a3);
    if (v5 && !*(a3 + 41) || (v29 & 2) != 0)
    {
      goto LABEL_63;
    }

    if (__s1)
    {
      v11 = bytes;
      if (bytes)
      {
        v12 = v6;
        v13 = v30;
        if (!v30)
        {
          v6 = v12;
          goto LABEL_35;
        }

        if (v31 > 14)
        {
          if (v31 == 15)
          {
            v6 = v12;
            if (strncmp(__s1, v12, 0xFuLL))
            {
              goto LABEL_33;
            }

            v14 = &v35;
            v15 = v11;
            v16 = v12;
          }

          else
          {
            v6 = v12;
            if (v31 != 16 || strncmp(__s1, "BYTERANGE-LENGTH", 0x10uLL))
            {
              goto LABEL_33;
            }

            v14 = &v34;
            v15 = v11;
            v16 = "BYTERANGE-LENGTH";
          }

          v5 = sp_strtoll(v15, &bytes, v14, 1, v16, a3);
          goto LABEL_33;
        }

        if (v31 == 3)
        {
          if (*__s1 == 85 && __s1[1] == 82 && __s1[2] == 73)
          {
            if ((v29 & 1) == 0)
            {
              PlaylistProcessPreloadHintTag_cold_3();
              v5 = 4294954654;
              v6 = v12;
              goto LABEL_34;
            }

            AllocatorForMedia = FigGetAllocatorForMedia();
            v27 = CFStringCreateWithBytes(AllocatorForMedia, bytes, v13, 0x8000100u, 0);
          }
        }

        else if (v31 == 4)
        {
          v6 = v12;
          if (!strncmp(__s1, "TYPE", 4uLL))
          {
            if (!strncasecmp(v11, "PART", 4uLL))
            {
              LODWORD(v28) = 1;
            }

            else
            {
              if (strncasecmp(v11, "MAP", 3uLL))
              {
                _StreamPlaylistLogError(0, 4294954985, a3, @"Unknown %s %s in %s", "TYPE", v11, "#EXT-X-PRELOAD-HINT");
                v5 = 0;
                goto LABEL_35;
              }

              HIDWORD(v28) = 1;
            }
          }

LABEL_33:
          if (!v5)
          {
            goto LABEL_35;
          }

LABEL_34:
          if (!*(a3 + 41))
          {
            goto LABEL_63;
          }

          goto LABEL_35;
        }

        v6 = v12;
        goto LABEL_33;
      }
    }

LABEL_35:
    v4 = v37;
  }

  if (v5)
  {
LABEL_63:
    v18 = v27;
    if (v27)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v18 = v27;
    if (v28)
    {
      if (v27)
      {
        if (v28)
        {
          if (FigMediaPlaylistGetPreloadHint(a1))
          {
            PreloadHint = FigMediaPlaylistGetPreloadHint(a1);
            if (FigMediaSegmentSpecifierIsReadInCurrent(PreloadHint))
            {
              goto LABEL_59;
            }
          }
        }

        if (HIDWORD(v28))
        {
          if (FigMediaPlaylistGetPreloadMapHint(a1))
          {
            PreloadMapHint = FigMediaPlaylistGetPreloadMapHint(a1);
            if (FigMediaSegmentSpecifierIsReadInCurrent(PreloadMapHint))
            {
              goto LABEL_59;
            }
          }
        }

        v22 = v34;
        v21 = v35;
        if (v35 >= 1 && v34 == -1)
        {
          v22 = (0x20000000000000 - v35) & ~((0x20000000000000 - v35) >> 63);
          v34 = v22;
        }

        if (v28)
        {
          v23 = FigMediaPlaylistGetPreloadHint(a1);
          if (!v23)
          {
            MediaFileEntry = CreateMediaFileEntry(a1, 0, 0, 0, 0, 0, -1, v21, 1.0, 0.0, v22, 0, 0, 0, 0);
            FigMediaPlaylistSetPreloadHint(a1, MediaFileEntry);
LABEL_57:
            FigMediaSegmentSpecifierSetURLString(MediaFileEntry, v27);
            FigMediaSegmentSpecifierSetIsReadInCurrent(MediaFileEntry, 1);
            CMRemoveAllAttachments(MediaFileEntry);
            if (MediaFileEntry)
            {
              CFRelease(MediaFileEntry);
            }

LABEL_59:
            v5 = 0;
LABEL_60:
            CFRelease(v18);
            goto LABEL_61;
          }
        }

        else
        {
          v23 = FigMediaPlaylistGetPreloadMapHint(a1);
          if (!v23)
          {
            MediaFileEntry = CreateMediaFileEntry(a1, 0, 1, 0, 0, 0, -1, v21, 1.0, 0.0, v22, 0, 0, 0, 0);
            FigMediaPlaylistSetPreloadMapHint(a1, MediaFileEntry);
            goto LABEL_57;
          }
        }

        MediaFileEntry = v23;
        CFRetain(v23);
        FigMediaSegmentSpecifierSetStartOffset(MediaFileEntry, v21);
        FigMediaSegmentSpecifierSetBytesToRead(MediaFileEntry, v22);
        goto LABEL_57;
      }

      PlaylistProcessPreloadHintTag_cold_1();
      v5 = 4294954654;
    }

    else
    {
      PlaylistProcessPreloadHintTag_cold_2();
      v5 = 4294954654;
      if (v27)
      {
        goto LABEL_60;
      }
    }
  }

LABEL_61:
  free(v36);
  return v5;
}

uint64_t PlaylistProcessTaggedRangeTag(uint64_t a1, char *a2, _BYTE *a3, uint64_t a4)
{
  v5 = a2;
  v101 = -1.0;
  v102 = a2;
  v100 = -1.0;
  context = 0u;
  v99 = 0u;
  v96 = 0;
  v97 = 0;
  v95 = 0;
  v94 = 0;
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = 0;
  v10 = 0;
  cf1 = 0;
  v87 = 0;
  v83 = 0;
  v85 = 0;
  v88 = 0;
  cf = 0;
  while (1)
  {
    v11 = *v5;
    v12 = v11 > 0xD;
    v13 = (1 << v11) & 0x2401;
    if (!v12 && v13 != 0)
    {
      if (v9)
      {
LABEL_225:
        v50 = 0;
        ValueAtIndex = 0;
        v35 = cf;
        goto LABEL_221;
      }

      if (!v10)
      {
        PlaylistProcessTaggedRangeTag_cold_17();
        ValueAtIndex = 0;
        v50 = 0;
        v9 = 4294954654;
        v35 = cf;
        v36 = v87;
        v72 = v88;
        v71 = cf1;
        goto LABEL_236;
      }

      v31 = 0;
      DWORD2(v99) = 0;
      *(&context + 1) = a4;
      do
      {
        DateRangeSpecifiers = FigMediaPlaylistGetDateRangeSpecifiers(a1);
        if (DateRangeSpecifiers)
        {
          DateRangeSpecifiers = CFArrayGetCount(DateRangeSpecifiers);
        }

        if (v31 >= DateRangeSpecifiers)
        {
          goto LABEL_158;
        }

        v33 = FigMediaPlaylistGetDateRangeSpecifiers(a1);
        ValueAtIndex = CFArrayGetValueAtIndex(v33, v31);
        Identifier = FigDateRangeSpecifierGetIdentifier(ValueAtIndex);
        ++v31;
      }

      while (!CFEqual(v10, Identifier));
      if (!ValueAtIndex)
      {
LABEL_158:
        if (!v87)
        {
          PlaylistProcessTaggedRangeTag_cold_16();
          v50 = 0;
          ValueAtIndex = 0;
          v36 = 0;
          v9 = 4294954654;
          v35 = cf;
          goto LABEL_222;
        }

        v103[0] = 0;
        ParseDate = FigMediaPlaylistGetParseDate(a1);
        v54 = FigMediaPlaylistGetParseDate(a1);
        v55 = FigDateRangeSpecifierCreate(0, 0, 0, 0, 0, 0, 0, 0, -1.0, -1.0, -1.0, -1.0, 0, 0, 0, 0, 0, 0, 0, ParseDate, v54, v103);
        if (v55)
        {
          v9 = v55;
          v35 = cf;
          v71 = cf1;
          if (v103[0])
          {
            CFRelease(v103[0]);
          }

          v50 = 0;
          ValueAtIndex = 0;
          goto LABEL_203;
        }

        FigMediaPlaylistAddDateRangeSpecifier(a1, v103[0]);
        ValueAtIndex = v103[0];
        FigDateRangeSpecifierSetIdentifier(v103[0], v10);
        FigDateRangeSpecifierSetStartDate(ValueAtIndex, v87);
        v56 = *(a4 + 32);
        v57 = strcspn(v56, "\r\n");
        v50 = CFStringCreateWithBytes(v7, v56, v57, 0x8000100u, 1u);
        if (!v50)
        {
          PlaylistProcessTaggedRangeTag_cold_15(v103);
          v9 = LODWORD(v103[0]);
          v35 = cf;
          v71 = cf1;
          goto LABEL_232;
        }

        FigDateRangeSpecifierSetTaggedRangeLine(ValueAtIndex, v50);
        *&context = ValueAtIndex;
        *&v99 = FigMediaPlaylistGetParseDate(a1);
        CFDictionaryApplyFunction(Mutable, TaggedRangeUniquenessApplier, &context);
        v51 = 0;
        *a3 = 1;
        v35 = cf;
        v38 = v85;
        goto LABEL_162;
      }

      *&context = ValueAtIndex;
      *&v99 = FigMediaPlaylistGetParseDate(a1);
      BYTE12(v99) = 0;
      CFDictionaryApplyFunction(Mutable, TaggedRangeUniquenessApplier, &context);
      v9 = DWORD2(v99);
      *a3 = BYTE12(v99);
      if (v9)
      {
        goto LABEL_225;
      }

      v35 = cf;
      v36 = v87;
      if (v87)
      {
        StartDate = FigDateRangeSpecifierGetStartDate(ValueAtIndex);
        if (!CFEqual(v87, StartDate))
        {
          PlaylistProcessTaggedRangeTag_cold_1();
          v50 = 0;
          ValueAtIndex = 0;
          v9 = 4294954654;
          goto LABEL_222;
        }
      }

      v38 = v85;
      if (cf1)
      {
        if (FigDateRangeSpecifierGetEndDate(ValueAtIndex))
        {
          EndDate = FigDateRangeSpecifierGetEndDate(ValueAtIndex);
          if (!CFEqual(cf1, EndDate))
          {
            PlaylistProcessTaggedRangeTag_cold_2();
            goto LABEL_220;
          }
        }
      }

      if (v88)
      {
        if (FigDateRangeSpecifierGetTaggedRangeClass(ValueAtIndex))
        {
          TaggedRangeClass = FigDateRangeSpecifierGetTaggedRangeClass(ValueAtIndex);
          if (!CFEqual(v88, TaggedRangeClass))
          {
            PlaylistProcessTaggedRangeTag_cold_3();
            goto LABEL_220;
          }
        }
      }

      if (cf)
      {
        if (FigDateRangeSpecifierGetTaggedRangeCue(ValueAtIndex))
        {
          TaggedRangeCue = FigDateRangeSpecifierGetTaggedRangeCue(ValueAtIndex);
          if (!CFEqual(cf, TaggedRangeCue))
          {
            PlaylistProcessTaggedRangeTag_cold_4();
            goto LABEL_220;
          }
        }
      }

      v42 = v97;
      if (v97)
      {
        if (FigDateRangeSpecifierGetScte35cmd(ValueAtIndex))
        {
          Scte35cmd = FigDateRangeSpecifierGetScte35cmd(ValueAtIndex);
          if (!CFEqual(v42, Scte35cmd))
          {
            PlaylistProcessTaggedRangeTag_cold_5();
            goto LABEL_220;
          }
        }
      }

      v44 = v96;
      if (v96)
      {
        if (FigDateRangeSpecifierGetScte35in(ValueAtIndex))
        {
          Scte35in = FigDateRangeSpecifierGetScte35in(ValueAtIndex);
          if (!CFEqual(v44, Scte35in))
          {
            PlaylistProcessTaggedRangeTag_cold_6();
            goto LABEL_220;
          }
        }
      }

      v46 = v95;
      if (v95)
      {
        if (FigDateRangeSpecifierGetScte35out(ValueAtIndex))
        {
          Scte35out = FigDateRangeSpecifierGetScte35out(ValueAtIndex);
          if (!CFEqual(v46, Scte35out))
          {
            PlaylistProcessTaggedRangeTag_cold_7();
            goto LABEL_220;
          }
        }
      }

      if (v85 && FigDateRangeSpecifierGetEndOnNextSet(ValueAtIndex) && FigDateRangeSpecifierGetEndOnNext(ValueAtIndex) != v83)
      {
        PlaylistProcessTaggedRangeTag_cold_8();
        goto LABEL_220;
      }

      if (v83)
      {
        if (FigDateRangeSpecifierGetTempEndDate(ValueAtIndex))
        {
          PlaylistProcessTaggedRangeTag_cold_9();
          goto LABEL_220;
        }

        if (FigDateRangeSpecifierGetTempDuration(ValueAtIndex) >= 0.0)
        {
          PlaylistProcessTaggedRangeTag_cold_10();
          goto LABEL_220;
        }
      }

      if (v101 >= 0.0 && FigDateRangeSpecifierGetDuration(ValueAtIndex) == -1.0 || cf1 && !FigDateRangeSpecifierGetEndDate(ValueAtIndex))
      {
        v48 = FigMediaPlaylistGetParseDate(a1);
        FigDateRangeSpecifierSetModificationTimestamp(ValueAtIndex, v48);
        *a3 = 1;
      }

      if (FigDateRangeSpecifierGetTempDuration(ValueAtIndex) < 0.0 || v101 < 0.0 || (TempDuration = FigDateRangeSpecifierGetTempDuration(ValueAtIndex), TempDuration == v101))
      {
        v50 = 0;
        v51 = 1;
        if (FigDateRangeSpecifierGetTempPlannedDuration(ValueAtIndex) >= 0.0 && v100 >= 0.0)
        {
          TempPlannedDuration = FigDateRangeSpecifierGetTempPlannedDuration(ValueAtIndex);
          if (TempPlannedDuration == v100)
          {
            v50 = 0;
            goto LABEL_162;
          }

          PlaylistProcessTaggedRangeTag_cold_11();
          goto LABEL_220;
        }

LABEL_162:
        if (v88)
        {
          if (FigDateRangeSpecifierGetTaggedRangeClass(ValueAtIndex))
          {
            goto LABEL_176;
          }

          FigDateRangeSpecifierSetTaggedRangeClass(ValueAtIndex, v88);
          CFRelease(v88);
          if (FigDateRangeSpecifierGetTaggedRangeClass(ValueAtIndex))
          {
            v58 = FigMediaPlaylistGetDateRangeSpecifiers(a1);
            if (v58)
            {
              Count = CFArrayGetCount(v58);
              if (Count >= 1)
              {
                v81 = v51;
                v60 = 0;
                v61 = Count + 1;
                while (1)
                {
                  v62 = FigMediaPlaylistGetDateRangeSpecifiers(a1);
                  v63 = CFArrayGetValueAtIndex(v62, v61 - 2);
                  v64 = v63;
                  if (v60)
                  {
                    FigDateRangeSpecifierGetTaggedRangeClass(v63);
                    if (FigCFEqual())
                    {
                      break;
                    }
                  }

                  if (v64 == ValueAtIndex)
                  {
                    v60 = 1;
                  }

                  if (--v61 < 2)
                  {
                    v88 = 0;
                    v35 = cf;
                    v38 = v85;
                    goto LABEL_174;
                  }
                }

                v38 = v85;
                if (v64)
                {
                  v35 = cf;
                  if (FigDateRangeSpecifierGetEndOnNext(v64))
                  {
                    v73 = FigDateRangeSpecifierGetStartDate(ValueAtIndex);
                    FigDateRangeSpecifierSetTempEndDate(v64, v73);
                    v74 = FigMediaPlaylistGetParseDate(a1);
                    FigDateRangeSpecifierSetModificationTimestamp(v64, v74);
                    v88 = 0;
                    *a3 = 1;
                  }

                  else
                  {
                    v88 = 0;
                  }
                }

                else
                {
                  v88 = 0;
                  v35 = cf;
                }

LABEL_174:
                v51 = v81;
LABEL_176:
                if (v35 && !FigDateRangeSpecifierGetTaggedRangeCue(ValueAtIndex))
                {
                  FigDateRangeSpecifierSetTaggedRangeCue(ValueAtIndex, v35);
                  CFRelease(v35);
                  v35 = 0;
                }

                v65 = v97;
                if (v97 && !FigDateRangeSpecifierGetScte35cmd(ValueAtIndex))
                {
                  FigDateRangeSpecifierSetScte35cmd(ValueAtIndex, v65);
                  CFRelease(v65);
                  v97 = 0;
                  v66 = FigMediaPlaylistGetParseDate(a1);
                  FigDateRangeSpecifierSetValueForTagsFirstFoundDateDict(ValueAtIndex, @"SCTE35-CMD", v66);
                }

                v67 = v96;
                if (v96 && !FigDateRangeSpecifierGetScte35in(ValueAtIndex))
                {
                  FigDateRangeSpecifierSetScte35in(ValueAtIndex, v67);
                  CFRelease(v67);
                  v96 = 0;
                  v68 = FigMediaPlaylistGetParseDate(a1);
                  FigDateRangeSpecifierSetValueForTagsFirstFoundDateDict(ValueAtIndex, @"SCTE35-IN", v68);
                }

                v69 = v95;
                if (v95 && !FigDateRangeSpecifierGetScte35out(ValueAtIndex))
                {
                  FigDateRangeSpecifierSetScte35out(ValueAtIndex, v69);
                  CFRelease(v69);
                  v95 = 0;
                  v70 = FigMediaPlaylistGetParseDate(a1);
                  FigDateRangeSpecifierSetValueForTagsFirstFoundDateDict(ValueAtIndex, @"SCTE35-OUT", v70);
                }

                if (cf1)
                {
                  FigDateRangeSpecifierSetTempEndDate(ValueAtIndex, cf1);
                  CFRelease(cf1);
                }

                if (v101 >= 0.0)
                {
                  FigDateRangeSpecifierSetTempDuration(ValueAtIndex, v101);
                }

                if (v100 >= 0.0)
                {
                  FigDateRangeSpecifierSetTempPlannedDuration(ValueAtIndex, v100);
                }

                if (v38)
                {
                  FigDateRangeSpecifierSetEndOnNext(ValueAtIndex, v83);
                  FigDateRangeSpecifierSetEndOnNextSet(ValueAtIndex, 1);
                  if (FigDateRangeSpecifierGetEndOnNext(ValueAtIndex) && FigDateRangeSpecifierGetTempEndDate(ValueAtIndex))
                  {
                    PlaylistProcessTaggedRangeTag_cold_13(a4, ValueAtIndex);
                  }

                  if (FigDateRangeSpecifierGetEndOnNext(ValueAtIndex) && FigDateRangeSpecifierGetTempDuration(ValueAtIndex) >= 0.0)
                  {
                    PlaylistProcessTaggedRangeTag_cold_14(a4, ValueAtIndex);
                  }
                }

                FigDateRangeSpecifierSetReadInCurrent(ValueAtIndex, 1);
                v9 = 0;
                v71 = 0;
                if (v51)
                {
                  ValueAtIndex = 0;
LABEL_203:
                  v36 = v87;
                  v72 = v88;
                  goto LABEL_234;
                }

LABEL_232:
                v36 = v87;
                v72 = v88;
                if (ValueAtIndex)
                {
                  CFRelease(ValueAtIndex);
                  ValueAtIndex = 0;
                }

                goto LABEL_234;
              }
            }
          }
        }

        v88 = 0;
        goto LABEL_176;
      }

      PlaylistProcessTaggedRangeTag_cold_12();
LABEL_220:
      v50 = 0;
      ValueAtIndex = 0;
      v9 = 4294954654;
LABEL_221:
      v36 = v87;
LABEL_222:
      v72 = v88;
      v71 = cf1;
      goto LABEL_234;
    }

    v103[0] = 0;
    v92 = 0;
    bytes = 0;
    numBytes = 0;
    v90 = 0;
    free(v94);
    v94 = 0;
    v9 = sp_ParseAttribute("#EXT-X-DATERANGE", v5, 1, 0, v103, &v92, &bytes, &numBytes, &v102, &v90, &v94, a4);
    if (v9 && !*(a4 + 41) || (v15 = v90, (v90 & 2) != 0))
    {
LABEL_207:
      ValueAtIndex = 0;
      goto LABEL_224;
    }

    v16 = v103[0];
    if (v103[0])
    {
      v17 = bytes;
      if (bytes)
      {
        break;
      }
    }

LABEL_88:
    v5 = v102;
  }

  v18 = v92;
  if (v92 > 8)
  {
    if (v92 > 10)
    {
      if (v92 == 11)
      {
        if (!strncmp(v103[0], "END-ON-NEXT", 0xBuLL))
        {
          if (!strncasecmp(v17, "YES", 3uLL))
          {
            v83 = 1;
          }

          else
          {
            if (strncasecmp(v17, "NO", 2uLL))
            {
              PlaylistProcessTaggedRangeTag_cold_23();
              goto LABEL_86;
            }

            v83 = 0;
          }

          v85 = 1;
          goto LABEL_86;
        }

LABEL_56:
        v23 = *v16;
        goto LABEL_57;
      }

      if (v92 != 16 || strncmp(v103[0], "PLANNED-DURATION", 0x10uLL))
      {
        goto LABEL_56;
      }

      if (v100 >= 0.0)
      {
        PlaylistProcessTaggedRangeTag_cold_11();
        goto LABEL_110;
      }

      v9 = sp_strtod(v17, 0, &v100, 0, "Date Range Planned Duration", a4);
      if (v9 || v100 >= 0.0)
      {
        goto LABEL_86;
      }

      goto LABEL_35;
    }

    if (v92 == 9)
    {
      if (strncmp(v103[0], "SCTE35-IN", 9uLL))
      {
        goto LABEL_56;
      }

      if (v96)
      {
        PlaylistProcessTaggedRangeTag_cold_18();
        goto LABEL_110;
      }

      v19 = numBytes;
      v20 = &v96;
      v21 = v17;
      v22 = "Date Range SCTE35_IN";
    }

    else
    {
      if (!strncmp(v103[0], "START-DATE", 0xAuLL))
      {
        if (v87)
        {
          PlaylistProcessTaggedRangeTag_cold_30();
        }

        else
        {
          if (v15)
          {
            value = 0;
            v29 = FigCFParseISO8601Date();
            v9 = v29;
            if (v29)
            {
              _StreamPlaylistLogError(v29, 4294955017, a4, @"%s: ISO8601 Date parse error", "#EXT-X-DATERANGE");
              v87 = 0;
            }

            else
            {
              v87 = CFDateCreate(v7, *&value);
            }

            goto LABEL_86;
          }

          PlaylistProcessTaggedRangeTag_cold_31();
          v87 = 0;
        }

        goto LABEL_110;
      }

      if (!strncmp(v16, "SCTE35-CMD", 0xAuLL))
      {
        if (v97)
        {
          PlaylistProcessTaggedRangeTag_cold_29();
          goto LABEL_110;
        }

        v19 = numBytes;
        v20 = &v97;
        v21 = v17;
        v22 = "Date Range SCTE35_CMD";
      }

      else
      {
        if (strncmp(v16, "SCTE35-OUT", 0xAuLL))
        {
          goto LABEL_56;
        }

        if (v95)
        {
          PlaylistProcessTaggedRangeTag_cold_28();
          goto LABEL_110;
        }

        v19 = numBytes;
        v20 = &v95;
        v21 = v17;
        v22 = "Date Range SCTE35_OUTE";
      }
    }

    v9 = sp_strtohex(v21, v19, v20, v22, a4);
    goto LABEL_86;
  }

  if (v92 > 4)
  {
    if (v92 == 5)
    {
      if (strncmp(v103[0], "CLASS", 5uLL))
      {
        goto LABEL_56;
      }

      if (!v88)
      {
        v88 = CFStringCreateWithBytes(v7, v17, numBytes, 0x8000100u, 1u);
        goto LABEL_86;
      }

      PlaylistProcessTaggedRangeTag_cold_20();
    }

    else
    {
      if (v92 != 8)
      {
        goto LABEL_56;
      }

      if (strncmp(v103[0], "END-DATE", 8uLL))
      {
        if (strncmp(v16, "DURATION", 8uLL))
        {
          goto LABEL_56;
        }

        if (v101 >= 0.0)
        {
          PlaylistProcessTaggedRangeTag_cold_12();
          goto LABEL_110;
        }

        v9 = sp_strtod(v17, 0, &v101, 0, "Date Range Duration", a4);
        if (v9 || v101 >= 0.0)
        {
          goto LABEL_86;
        }

LABEL_35:
        PlaylistProcessTaggedRangeTag_cold_22();
        goto LABEL_110;
      }

      if (cf1)
      {
        PlaylistProcessTaggedRangeTag_cold_26();
      }

      else
      {
        if (v15)
        {
          value = 0;
          v30 = FigCFParseISO8601Date();
          v9 = v30;
          if (v30)
          {
            _StreamPlaylistLogError(v30, 4294955017, a4, @"%s: ISO8601 Date parse error", "#EXT-X-DATERANGE");
            cf1 = 0;
          }

          else
          {
            cf1 = CFDateCreate(v7, *&value);
          }

          goto LABEL_86;
        }

        PlaylistProcessTaggedRangeTag_cold_27();
        cf1 = 0;
      }
    }

LABEL_110:
    v9 = 4294954654;
LABEL_87:
    if (!*(a4 + 41))
    {
      goto LABEL_207;
    }

    goto LABEL_88;
  }

  if (v92 != 2)
  {
    if (v92 == 3 && *v103[0] == 67 && v103[0][1] == 85 && v103[0][2] == 69)
    {
      if (!cf)
      {
        cf = CFStringCreateWithBytes(v7, bytes, numBytes, 0x8000100u, 1u);
        goto LABEL_86;
      }

      PlaylistProcessTaggedRangeTag_cold_19();
      goto LABEL_110;
    }

    goto LABEL_56;
  }

  v23 = *v103[0];
  if (v23 != 73)
  {
LABEL_57:
    if (v23 != 88 || v16[1] != 45)
    {
      _StreamPlaylistLogError(0, 4294955022, a4, @"unrecognized attribute %.*s", v18, v16);
      goto LABEL_86;
    }

    ValueAtIndex = CFStringCreateWithBytes(v7, v16, v18, 0x8000100u, 1u);
    if (!ValueAtIndex)
    {
      goto LABEL_223;
    }

    if (CFDictionaryGetValue(Mutable, ValueAtIndex))
    {
      PlaylistProcessTaggedRangeTag_cold_33();
      v9 = 4294954654;
    }

    else
    {
      v24 = numBytes;
      if (v15)
      {
        v25 = CFStringCreateWithBytes(v7, v17, numBytes, 0x8000100u, 1u);
        if (!v25)
        {
          goto LABEL_223;
        }

        v26 = v25;
        CFDictionaryAddValue(Mutable, ValueAtIndex, v25);
        CFRelease(ValueAtIndex);
        v27 = v26;
        goto LABEL_85;
      }

      if (numBytes >= 3 && !strncasecmp(v17, "0x", 2uLL))
      {
        value = 0;
        v9 = sp_strtohex(v17, v24, &value, "Date range hex", a4);
        if (!v9)
        {
          v28 = value;
          if (value)
          {
            CFDictionaryAddValue(Mutable, ValueAtIndex, value);
            CFRelease(v28);
          }
        }
      }

      else
      {
        value = 0;
        v9 = sp_strtod(v17, 0, &value, 0, "tag double value", a4);
        if (!v9)
        {
          v9 = FigCFDictionarySetDouble();
        }
      }
    }

    v27 = ValueAtIndex;
LABEL_85:
    CFRelease(v27);
    goto LABEL_86;
  }

  if (v103[0][1] != 68)
  {
    goto LABEL_56;
  }

  if (v10)
  {
    PlaylistProcessTaggedRangeTag_cold_32();
    goto LABEL_110;
  }

  if ((v90 & 1) == 0)
  {
    v9 = 4294954654;
    _StreamPlaylistLogError(4294954654, 4294955030, a4, @"Invalid %s: %s: %s", v102, "ID", bytes);
    v10 = 0;
    goto LABEL_87;
  }

  v10 = CFStringCreateWithBytes(v7, bytes, numBytes, 0x8000100u, 1u);
  if (v10)
  {
LABEL_86:
    if (!v9)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

  ValueAtIndex = 0;
LABEL_223:
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v78, v79, v80);
  v9 = v75;
LABEL_224:
  v35 = cf;
  v36 = v87;
  v72 = v88;
  v71 = cf1;
  v50 = 0;
LABEL_234:
  if (v10)
  {
    CFRelease(v10);
  }

LABEL_236:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v71)
  {
    CFRelease(v71);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (ValueAtIndex)
  {
    CFRelease(ValueAtIndex);
  }

  if (v72)
  {
    CFRelease(v72);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v97)
  {
    CFRelease(v97);
  }

  if (v96)
  {
    CFRelease(v96);
  }

  if (v95)
  {
    CFRelease(v95);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  free(v94);
  return v9;
}

uint64_t PlaylistProcessVariableTag(char *a1, const __CFDictionary *a2, const __CFDictionary *a3, _BYTE *a4, uint64_t a5)
{
  v30 = 0;
  v6 = a1;
  v7 = 0;
  cf = 0;
  v32 = 0;
  v8 = 0;
  v39 = 0;
  v40 = a1;
  alloc = *MEMORY[0x1E695E480];
  while (1)
  {
    v9 = *v6;
    v10 = v9 > 0xD;
    v11 = (1 << v9) & 0x2401;
    if (!v10 && v11 != 0)
    {
      break;
    }

    v38 = 0;
    v36 = 0;
    v37 = 0;
    numBytes = 0;
    v34 = 0;
    free(v39);
    v39 = 0;
    v8 = sp_ParseAttribute("#EXT-X-DEFINE", v6, 0, 0, &v38, &v36, &v37, &numBytes, &v40, &v34, &v39, a5);
    if (v8 && !*(a5 + 41) || (v13 = v34, (v34 & 2) != 0))
    {
      v16 = cf;
      v15 = v32;
      v17 = v30;
      goto LABEL_84;
    }

    if (v38)
    {
      v14 = v37;
      if (v37)
      {
        if (v36 > 5)
        {
          if (v36 == 6)
          {
            if (strncmp(v38, "IMPORT", 6uLL))
            {
              goto LABEL_37;
            }

            if ((v13 & 1) == 0)
            {
              PlaylistProcessVariableTag_cold_5();
              goto LABEL_42;
            }

            if (v30)
            {
              CFRelease(v30);
            }

            v30 = CFStringCreateWithBytes(alloc, v14, numBytes, 0x8000100u, 1u);
          }

          else if (v36 == 10 && !strncmp(v38, "QUERYPARAM", 0xAuLL))
          {
            if ((v13 & 1) == 0)
            {
              PlaylistProcessVariableTag_cold_6();
              goto LABEL_42;
            }

            if (v32)
            {
              CFRelease(v32);
            }

            v32 = CFStringCreateWithBytes(alloc, v14, numBytes, 0x8000100u, 1u);
          }
        }

        else if (v36 == 4)
        {
          if (strncmp(v38, "NAME", 4uLL))
          {
            goto LABEL_37;
          }

          if ((v13 & 1) == 0)
          {
            PlaylistProcessVariableTag_cold_7();
            goto LABEL_42;
          }

          if (v7)
          {
            CFRelease(v7);
          }

          v7 = CFStringCreateWithBytes(alloc, v14, numBytes, 0x8000100u, 1u);
        }

        else if (v36 == 5 && !strncmp(v38, "VALUE", 5uLL))
        {
          if ((v13 & 1) == 0)
          {
            PlaylistProcessVariableTag_cold_4();
LABEL_42:
            v8 = 4294954654;
            goto LABEL_37;
          }

          if (cf)
          {
            CFRelease(cf);
          }

          cf = CFStringCreateWithBytes(alloc, v14, numBytes, 0x8000100u, 1u);
        }
      }
    }

LABEL_37:
    v6 = v40;
  }

  v16 = cf;
  v15 = v32;
  v17 = v30;
  if (!v30 || v7 || v32)
  {
    if (v7 | v30)
    {
      v19 = 1;
    }

    else
    {
      v19 = v32 == 0;
    }

    v20 = v19;
    if (v7)
    {
      v21 = (v30 | v32) == 0;
    }

    else
    {
      v21 = 0;
    }

    if (!v21 && v20)
    {
      PlaylistProcessVariableTag_cold_3();
      v8 = 4294954654;
LABEL_84:
      if (v7)
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v7)
      {
        if (cf)
        {
          if (CFDictionaryGetValue(*(a5 + 24), v7))
          {
            v25 = @"%s: NAME %@ already declared";
          }

          else
          {
            if (!a2 || !CFDictionaryGetValue(a2, v7))
            {
              CFDictionarySetValue(*(a5 + 24), v7, cf);
LABEL_67:
              CFRelease(v7);
              goto LABEL_68;
            }

            v25 = @"%s: NAME %@ declared in multivariant playlist cannot be redeclared";
          }
        }

        else
        {
          v25 = @"%s: Must have VALUE for NAME %@";
        }

        v8 = 4294954654;
        _StreamPlaylistLogError(4294954654, 4294955032, a5, v25, "#EXT-X-DEFINE", v7);
        goto LABEL_67;
      }

      if (v32)
      {
        if (CFDictionaryGetValue(*(a5 + 24), v32))
        {
          v26 = @"%s: QUERYPARAM %@ already declared";
        }

        else
        {
          if (a3)
          {
            Value = CFDictionaryGetValue(a3, v32);
            if (!Value)
            {
              v8 = 4294954654;
              _StreamPlaylistLogError(4294954654, 4294955032, a5, @"%s: QUERYPARAM %@ not found in query parameters", "#EXT-X-DEFINE", v32);
              goto LABEL_80;
            }

            v16 = Value;
            CFRetain(Value);
            CFDictionarySetValue(*(a5 + 24), v32, v16);
            if (a4)
            {
              v17 = 0;
              *a4 = 1;
            }

            else
            {
              PlaylistProcessVariableTag_cold_2(&v38);
              v17 = 0;
              v8 = v38;
            }

            goto LABEL_78;
          }

          v26 = @"%s: QUERYPARAM %@ found, but no query parameters available";
        }

        v8 = 4294954654;
        _StreamPlaylistLogError(4294954654, 4294955032, a5, v26, "#EXT-X-DEFINE", v32);
        v17 = 0;
      }

      else
      {
        PlaylistProcessVariableTag_cold_1();
        v17 = 0;
        v8 = 4294954654;
      }
    }

LABEL_68:
    if (!v16)
    {
      if (v17)
      {
        goto LABEL_79;
      }

      goto LABEL_70;
    }

LABEL_78:
    CFRelease(v16);
    if (v17)
    {
      goto LABEL_79;
    }

LABEL_70:
    if (!v15)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

  if (CFDictionaryGetValue(*(a5 + 24), v30))
  {
    v24 = @"%s: IMPORT %@ already declared";
LABEL_88:
    v8 = 4294954654;
    _StreamPlaylistLogError(4294954654, 4294955032, a5, v24, "#EXT-X-DEFINE", v30);
    v15 = 0;
    goto LABEL_68;
  }

  if (!a2)
  {
    v24 = @"%s: IMPORT %@ found but no imports available";
    goto LABEL_88;
  }

  v18 = CFDictionaryGetValue(a2, v30);
  if (v18)
  {
    v16 = v18;
    CFRetain(v18);
    CFDictionarySetValue(*(a5 + 24), v30, v16);
    v15 = 0;
    goto LABEL_78;
  }

  v8 = 4294954654;
  _StreamPlaylistLogError(4294954654, 4294955032, a5, @"%s: IMPORT %@ not found in multivariant playlist", "#EXT-X-DEFINE", v30);
  v15 = 0;
LABEL_79:
  CFRelease(v17);
  if (!v15)
  {
    goto LABEL_81;
  }

LABEL_80:
  CFRelease(v15);
LABEL_81:
  free(v39);
  return v8;
}

uint64_t PlaylistProcessServerControlTag(uint64_t a1, char *a2, uint64_t a3, double a4, double a5)
{
  v36 = a2;
  v34 = 0.0;
  v35 = 0.0;
  v32 = 0;
  v33 = 0.0;
  v31 = 0;
  while (1)
  {
    v8 = v36;
    v9 = *v36;
    v10 = v9 > 0xD;
    v11 = (1 << v9) & 0x2401;
    if (!v10 && v11 != 0)
    {
      v19 = a1;
      FigMediaPlaylistSetDoesServerSupportsBlockingReload(a1, SHIBYTE(v31));
      FigMediaPlaylistSetSkipDeltaBoundary(a1, v35);
      v20 = v31;
      FigMediaPlaylistSetCanSkipDATERANGES(a1, v31);
      HasSkipDeltaBoundary = FigMediaPlaylistHasSkipDeltaBoundary(a1);
      if (v20 && !HasSkipDeltaBoundary)
      {
        PlaylistProcessServerControlTag_cold_1();
        v13 = 4294954654;
        goto LABEL_44;
      }

      if (a4 == 0.0 || vabdd_f64(a4, v33) <= 2.22044605e-16)
      {
        v13 = 0;
        goto LABEL_44;
      }

      v13 = 4294954654;
      _StreamPlaylistLogError(4294954654, 4294955032, a3, @"illegal %s change", "PART-HOLD-BACK");
      v22 = v34;
LABEL_48:
      FigMediaPlaylistSetHoldBackDuration(v19, v22);
      goto LABEL_49;
    }

    v29 = 0;
    __s1 = 0;
    v28 = 0;
    v26 = 0;
    free(v32);
    v32 = 0;
    v13 = sp_ParseAttribute("#EXT-X-SERVER-CONTROL", v8, 1, 0, &__s1, &v28, &v29, &v27, &v36, &v26, &v32, a3);
    if (v13 && !*(a3 + 41) || (v26 & 2) != 0)
    {
      goto LABEL_49;
    }

    v14 = __s1;
    if (!__s1)
    {
      goto LABEL_30;
    }

    v15 = v29;
    if (!v29)
    {
      goto LABEL_30;
    }

    if (v28 <= 15)
    {
      break;
    }

    if (v28 != 16)
    {
      if (v28 != 19 || strncmp(__s1, "CAN-SKIP-DATERANGES", 0x13uLL))
      {
        goto LABEL_30;
      }

      v17 = &v31;
LABEL_28:
      matched = sp_MatchYesOrNo(v14, v15, a3, v17);
LABEL_29:
      v13 = matched;
      goto LABEL_30;
    }

    if (!strncmp(__s1, "CAN-BLOCK-RELOAD", 0x10uLL))
    {
      v17 = (&v31 + 1);
      goto LABEL_28;
    }

LABEL_30:
    if (v13)
    {
      goto LABEL_43;
    }
  }

  if (v28 != 9)
  {
    if (v28 == 14)
    {
      if (!strncmp(__s1, "CAN-SKIP-UNTIL", 0xEuLL))
      {
        v13 = sp_strtod(v15, 0, &v35, 0, "skip boundary", a3);
        if (!v13)
        {
          v18 = v35;
          if (v35 <= 0.0)
          {
            v23 = "CAN-SKIP-UNTIL";
            goto LABEL_42;
          }
        }
      }

      else if (!strncmp(v14, "PART-HOLD-BACK", 0xEuLL))
      {
        matched = sp_strtod(v15, 0, &v33, 0, "part holdback", a3);
        goto LABEL_29;
      }
    }

    goto LABEL_30;
  }

  if (strncmp(__s1, "HOLD-BACK", 9uLL))
  {
    goto LABEL_30;
  }

  v13 = sp_strtod(v15, 0, &v34, 0, "holdback", a3);
  if (v13)
  {
    goto LABEL_30;
  }

  v18 = v34;
  if (v34 > 0.0)
  {
    goto LABEL_30;
  }

  v23 = "HOLD-BACK";
LABEL_42:
  v13 = 4294954654;
  _StreamPlaylistLogError(4294954654, 4294955032, a3, @"%s must be positive", v18, v23);
LABEL_43:
  v19 = a1;
  FigMediaPlaylistSetDoesServerSupportsBlockingReload(a1, SHIBYTE(v31));
  FigMediaPlaylistSetSkipDeltaBoundary(a1, v35);
  FigMediaPlaylistSetCanSkipDATERANGES(a1, v31);
LABEL_44:
  FigMediaPlaylistSetPartHoldBackDuration(v19, v33);
  v22 = v34;
  if (a5 == 0.0 || v13)
  {
    goto LABEL_48;
  }

  if (vabdd_f64(a5, v34) <= 2.22044605e-16)
  {
    v13 = 0;
    goto LABEL_48;
  }

  PlaylistProcessServerControlTag_cold_2();
  v13 = 4294954654;
LABEL_49:
  free(v32);
  return v13;
}

uint64_t PlaylistProcessSkipTag(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *ValueAtIndex, uint64_t *a7, unint64_t *a8, double *a9, CFTypeRef *a10)
{
  v44 = a2;
  v42 = 0;
  v43 = 0;
  cf = 0;
  while (1)
  {
    v15 = v44;
    v16 = *v44;
    v17 = v16 > 0xD;
    v18 = (1 << v16) & 0x2401;
    if (!v17 && v18 != 0)
    {
      v23 = 0;
      goto LABEL_22;
    }

    v39 = 0;
    __s1 = 0;
    v37 = 0;
    v38 = 0;
    v36 = 0;
    free(v42);
    v42 = 0;
    v23 = sp_ParseAttribute("#EXT-X-SKIP", v15, 1, 1, &__s1, &v38, &v39, &v37, &v44, &v36, &v42, a3);
    if (v23 && !*(a3 + 41))
    {
      goto LABEL_47;
    }

    v20 = v36;
    if ((v36 & 2) != 0)
    {
      goto LABEL_47;
    }

    if (!__s1)
    {
      goto LABEL_21;
    }

    v21 = v39;
    if (!v39)
    {
      goto LABEL_21;
    }

    if (v38 != 27)
    {
      break;
    }

    if (!strncmp(__s1, "RECENTLY-REMOVED-DATERANGES", 0x1BuLL))
    {
      if ((v20 & 1) == 0)
      {
        PlaylistProcessSkipTag_cold_1();
        v23 = 4294954654;
        goto LABEL_22;
      }

      a2 = v37;
      if (v37)
      {
        v22 = PlaylistTokenizeString(v21, v37, a3, 9, &cf);
        goto LABEL_20;
      }
    }

LABEL_21:
    if (v23)
    {
      goto LABEL_22;
    }
  }

  if (v38 != 16 || strncmp(__s1, "SKIPPED-SEGMENTS", 0x10uLL))
  {
    goto LABEL_21;
  }

  v22 = sp_strtoull(v21, 0, &v43, 10, 0, 1, "SKIPPED-SEGMENTS", a3);
LABEL_20:
  v23 = v22;
  if (!v22)
  {
    goto LABEL_21;
  }

  if (*(a3 + 41))
  {
LABEL_22:
    if (!ValueAtIndex)
    {
      v24 = 0;
      while (1)
      {
        MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
        if (MediaSegmentSpecifiers)
        {
          MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
        }

        if (v24 >= MediaSegmentSpecifiers)
        {
          break;
        }

        v26 = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
        ValueAtIndex = CFArrayGetValueAtIndex(v26, v24++);
        if (FigMediaSegmentSpecifierGetMediaSequence(ValueAtIndex) == a4)
        {
          goto LABEL_30;
        }
      }

      ValueAtIndex = 0;
    }

LABEL_30:
    v27 = v43;
    if (v43)
    {
      v28 = 0.0;
      v29 = v43;
      do
      {
        if (!ValueAtIndex)
        {
          PlaylistProcessSkipTag_cold_3(a3, a2);
LABEL_46:
          v23 = 4294949663;
          goto LABEL_47;
        }

        if (a5)
        {
          FigMediaSegmentSpecifierGetDateStamp(ValueAtIndex);
          if (!FigCFEqual())
          {
            PlaylistProcessSkipTag_cold_2(a3);
            goto LABEL_46;
          }
        }

        DateStamp = FigMediaSegmentSpecifierGetDateStamp(ValueAtIndex);
        FigStreamPlaylistValidateMediaEntry(a1, ValueAtIndex, DateStamp);
        v28 = v28 + FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
        NextSegment = FigMediaSegmentSpecifierGetNextSegment(ValueAtIndex);
        ValueAtIndex = NextSegment;
        a5 = 0;
        --v29;
      }

      while (v29);
      if (!NextSegment)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v28 = 0.0;
      if (!ValueAtIndex)
      {
LABEL_41:
        PlaylistProcessSkipTag_cold_4(a3, a2);
        v23 = 4294949663;
        goto LABEL_38;
      }
    }

    *a7 = ValueAtIndex;
LABEL_38:
    *a8 = v27;
    *a9 = v28;
    v32 = v42;
    *a10 = cf;
    free(v32);
    return v23;
  }

LABEL_47:
  if (cf)
  {
    CFRelease(cf);
  }

  return v23;
}

uint64_t MergeLeadingPartialMediaEntries(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5, uint64_t a6)
{
  v40 = 1;
  FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
  LastValue = FigCFArrayGetLastValue();
  if (LastValue && (v12 = LastValue, MediaSequence = FigMediaSegmentSpecifierGetMediaSequence(a2), MediaSequence == FigMediaSegmentSpecifierGetMediaSequence(v12)))
  {
    v39 = a5;
    DiscontinuityDomain = FigMediaSegmentSpecifierGetDiscontinuityDomain(v12);
    v15 = FigMediaSegmentSpecifierGetDiscontinuityDomain(a2);
    if (DiscontinuityDomain == v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = 4294954984;
      if (MergeLeadingPartialMediaEntries_cold_1(v12))
      {
        return v16;
      }
    }

    PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(v12);
    v38 = FigMediaSegmentSpecifierGetPartialSegments(a2);
    FirstValue = FigCFArrayGetFirstValue();
    if (!FirstValue)
    {
      if (PartialSegments && CFArrayGetCount(PartialSegments) >= 1)
      {
        FigMediaSegmentSpecifierSetAreFragmentsExpired(v12, 1);
      }

      v27 = 0;
      v26 = 0;
      v29 = DiscontinuityDomain == v15;
      a5 = v39;
      if (!v29)
      {
        goto LABEL_17;
      }

      goto LABEL_35;
    }

    NextSegment = FirstValue;
    v20 = 0;
    if (!PartialSegments)
    {
      goto LABEL_8;
    }

LABEL_7:
    for (i = CFArrayGetCount(PartialSegments); ; i = 0)
    {
      if (v20 >= i)
      {
        goto LABEL_26;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(PartialSegments, v20);
      if (!NextSegment)
      {
        break;
      }

      matched = DoesMediaFileMatchEntry(ValueAtIndex, NextSegment, &v40, a3, 1, a6);
      if (matched)
      {
        v16 = matched;
        goto LABEL_29;
      }

      if (!v40)
      {
        break;
      }

      NextSegment = FigMediaSegmentSpecifierGetNextSegment(NextSegment);
      v16 = 0;
      ++v20;
      if (PartialSegments)
      {
        goto LABEL_7;
      }

LABEL_8:
      ;
    }

    v16 = 4294954984;
    if (MergeLeadingPartialMediaEntries_cold_2(a3, v23, v24))
    {
      return v16;
    }

LABEL_26:
    if (!NextSegment || FigMediaSegmentSpecifierIsFragment(v12))
    {
      if (v16)
      {
LABEL_29:
        v26 = 0;
        v27 = 0;
        a5 = v39;
        goto LABEL_17;
      }

      if (NextSegment)
      {
        do
        {
          v30 = FigMediaSegmentSpecifierGetNextSegment(NextSegment);
          FigMediaSegmentSpecifierAddPartialSegment(v12, NextSegment);
          NextSegment = v30;
        }

        while (v30);
        v27 = 1;
      }

      else
      {
        v27 = 0;
      }

      a5 = v39;
LABEL_35:
      if (v38)
      {
        FigMediaSegmentSpecifierSetPartialSegments(a2, 0);
      }

      if (!FigMediaSegmentSpecifierGetURLString(v12))
      {
        URLString = FigMediaSegmentSpecifierGetURLString(a2);
        FigMediaSegmentSpecifierSetURLString(v12, URLString);
      }

      TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(a2);
      FigMediaSegmentSpecifierSetTimeInSeconds(v12, TimeInSeconds);
      TimeOffsetInSeconds = FigMediaSegmentSpecifierGetTimeOffsetInSeconds(a2);
      FigMediaSegmentSpecifierSetTimeOffsetInSeconds(v12, TimeOffsetInSeconds);
      IsMarkedAsGap = FigMediaSegmentSpecifierIsMarkedAsGap(a2);
      FigMediaSegmentSpecifierSetIsMarkedAsGap(v12, IsMarkedAsGap);
      StartOffset = FigMediaSegmentSpecifierGetStartOffset(a2);
      FigMediaSegmentSpecifierSetStartOffset(v12, StartOffset);
      v36 = FigMediaSegmentSpecifierGetBytesToRead(a2);
      FigMediaSegmentSpecifierSetBytesToRead(v12, v36);
      BitRate = FigMediaSegmentSpecifierGetBitRate(a2);
      FigMediaSegmentSpecifierSetBitRate(v12, BitRate);
      v26 = 1;
      FigMediaSegmentSpecifierSetIsReadInCurrent(v12, 1);
      FigMediaSegmentSpecifierSetChangedInCurrent(v12, 1);
      if (PartialSegments | v38)
      {
        CMRemoveAllAttachments(v12);
      }

      v16 = 0;
      goto LABEL_17;
    }

    v16 = 4294954984;
    a5 = v39;
    if (MergeLeadingPartialMediaEntries_cold_3(v12))
    {
      return v16;
    }
  }

  else
  {
    v16 = 0;
  }

  v26 = 0;
  v27 = 0;
LABEL_17:
  *a4 = v26;
  *a5 = v27;
  return v16;
}

uint64_t FindMatchingMediaEntry(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  for (i = 0; ; ++i)
  {
    MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    if (MediaSegmentSpecifiers)
    {
      MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
    }

    if (i >= MediaSegmentSpecifiers)
    {
      return 0;
    }

    v12 = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    ValueAtIndex = CFArrayGetValueAtIndex(v12, i);
    v15 = 0;
    result = DoesMediaFileMatchEntry(ValueAtIndex, a2, &v15, a4, 1, a5);
    if (result)
    {
      return result;
    }

    if (v15)
    {
      break;
    }
  }

  *a3 = ValueAtIndex;
  return result;
}

uint64_t DoesMediaFileMatchEntry(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, int a5, uint64_t a6)
{
  v22 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  MediaSequence = FigMediaSegmentSpecifierGetMediaSequence(a1);
  v13 = 0;
  if (MediaSequence == FigMediaSegmentSpecifierGetMediaSequence(a2))
  {
    TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(a1);
    if (TimeInSeconds == FigMediaSegmentSpecifierGetTimeInSeconds(a2))
    {
      v13 = 0;
    }

    else
    {
      v13 = 4294954984;
      if (DoesMediaFileMatchEntry_cold_1(a1))
      {
        return v13;
      }
    }

    if (a5 || (DiscontinuityDomain = FigMediaSegmentSpecifierGetDiscontinuityDomain(a1), DiscontinuityDomain == FigMediaSegmentSpecifierGetDiscontinuityDomain(a2)) || (v13 = 4294954984, !MergeLeadingPartialMediaEntries_cold_1(a1)))
    {
      StartOffset = FigMediaSegmentSpecifierGetStartOffset(a1);
      if (StartOffset == FigMediaSegmentSpecifierGetStartOffset(a2) || (v13 = 4294954984, !DoesMediaFileMatchEntry_cold_3(a1)))
      {
        v17 = FigMediaSegmentSpecifierGetBytesToRead(a1);
        if (v17 == FigMediaSegmentSpecifierGetBytesToRead(a2) || (v13 = 4294954984, !DoesMediaFileMatchEntry_cold_4(a1)))
        {
          FigMediaSegmentSpecifierGetURLString(a1);
          FigMediaSegmentSpecifierGetURLString(a2);
          if (FigCFEqual() || (v13 = 4294954984, !DoesMediaFileMatchEntry_cold_5(a1, a6, a2)))
          {
            IsMarkedAsGap = FigMediaSegmentSpecifierIsMarkedAsGap(a1);
            if (IsMarkedAsGap == FigMediaSegmentSpecifierIsMarkedAsGap(a2) || (v13 = 4294954984, !DoesMediaFileMatchEntry_cold_6(a1)))
            {
              FigMediaSegmentSpecifierGetContentKeySpecifier(a1);
              FigMediaSegmentSpecifierGetContentKeySpecifier(a2);
              if (FigCFEqual())
              {
                if (!v13)
                {
                  *a3 = 1;
                }
              }

              else
              {
                v20 = FigMediaSegmentSpecifierGetMediaSequence(a1);
                _StreamPlaylistLogError(4294954984, 4294954984, a4, @"Media Entry crypt key URL does not match previous playlist for MEDIA-SEQUENCE %llu", v20);
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                return 4294954984;
              }
            }
          }
        }
      }
    }
  }

  return v13;
}

uint64_t FigStreamPlaylistValidateMediaEntry(uint64_t a1, uint64_t a2, const void *a3)
{
  PlaylistActiveDurationSecs = FigMediaPlaylistGetPlaylistActiveDurationSecs(a1);
  TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(a2);
  FigMediaPlaylistSetPlaylistActiveDurationSecs(a1, PlaylistActiveDurationSecs + TimeInSeconds);
  FigMediaSegmentSpecifierSetIsReadInCurrent(a2, 1);
  if (FigMediaSegmentSpecifierGetContentKeySpecifier(a2))
  {
    ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(a2);
    FigContentKeySpecifierSetIsReadInCurrent(ContentKeySpecifier, 1);
  }

  result = FigMediaSegmentSpecifierGetMapSegmentSpecifier(a2);
  if (result)
  {
    MapSegmentSpecifier = FigMediaSegmentSpecifierGetMapSegmentSpecifier(a2);
    result = FigMediaSegmentSpecifierSetIsReadInCurrent(MapSegmentSpecifier, 1);
  }

  if (a3)
  {
    if (!FigMediaSegmentSpecifierGetDateStamp(a2))
    {
      FigMediaSegmentSpecifierSetChangedInCurrent(a2, 1);
      FigMediaSegmentSpecifierSetDateStamp(a2, a3);
    }

    v11 = FigMediaPlaylistGetDateStampCount(a1) + 1;

    return FigMediaPlaylistSetDateStampCount(a1, v11);
  }

  return result;
}

uint64_t CreateMediaFileEntry(uint64_t a1, const void *a2, int a3, const void *a4, const void *a5, unint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, const void *a12, const void *a13, char a14, char a15)
{
  v41 = *MEMORY[0x1E69E9840];
  v38 = 0;
  if (a11)
  {
    v23 = (8 * a11) / a9;
  }

  else
  {
    v23 = 0.0;
  }

  if (a4)
  {
    FigContentKeySpecifierSetIsReadInCurrent(a4, 1);
    if (a12)
    {
      v24 = a3;
      v25 = CFRetain(a12);
    }

    else
    {
      *bytes = 0;
      v40 = 0;
      v26 = 15;
      v27 = a6;
      do
      {
        bytes[v26] = v27;
        v27 >>= 8;
        --v26;
      }

      while (v26 != -1);
      AllocatorForMedia = FigGetAllocatorForMedia();
      v29 = CFDataCreate(AllocatorForMedia, bytes, 16);
      if (!v29)
      {
        CreateMediaFileEntry_cold_1(bytes);
        return v38;
      }

      v25 = v29;
      v24 = a3;
    }
  }

  else
  {
    v24 = a3;
    v25 = 0;
  }

  v30 = a8;
  if (a5)
  {
    FigMediaSegmentSpecifierSetIsDiscontinuityDomain(a5, a7);
    FigMediaSegmentSpecifierSetIsReadInCurrent(a5, 1);
    if (!FigMediaSegmentSpecifierGetIV(a5))
    {
      FigMediaSegmentSpecifierSetIV(a5, v25);
    }
  }

  MediaEntryCount = FigMediaPlaylistGetMediaEntryCount(a1);
  FigMediaPlaylistSetMediaEntryCount(a1, MediaEntryCount + 1);
  v32 = FigGetAllocatorForMedia();
  v33 = FigMediaPlaylistGetMediaEntryCount(a1);
  FigMediaSegmentSpecifierCreate(v32, a2, a4, a5, a6, a7, v30, a11, a9, v23, a10, v25, a13, v24, 0, a14, 1, a15, 0, 0, v33, 1, &v38);
  if (v25)
  {
    CFRelease(v25);
  }

  return v38;
}

void FigStreamPlaylistTransferPartialEntryQueue(uint64_t a1, uint64_t a2)
{
  PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(a1);
  FigMediaSegmentSpecifierSetPartialSegments(a2, PartialSegments);

  FigMediaSegmentSpecifierSetPartialSegments(a1, 0);
}

const void *FindMediaSelectionOptionArrayByMediaType(const __CFArray *a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
    Value = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType");
    if (CFEqual(Value, a2))
    {
      break;
    }

    if (v5 == ++v6)
    {
      return 0;
    }
  }

  return CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupOptions");
}

uint64_t FigStreamPlaylistParse(OpaqueCMBlockBuffer *a1, const __CFURL *a2, const __CFURL *a3, _DWORD *a4, int a5, int a6, int a7, unsigned int a8, CFMutableArrayRef *a9, uint64_t a10, const __CFDictionary *a11, const __CFDictionary *a12, const void **a13, CFMutableDictionaryRef *a14)
{
  if (_os_feature_enabled_impl())
  {

    return FigStreamPlaylistParseRemote(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
  }

  else
  {

    return FigStreamPlaylistParseInProcess(a1, a2, a3, a4, a5, a6, 0, a8, a9, a10, a11, a12, a13, a14);
  }
}

void FigStreamPlaylistPredictMediaSequenceAndPartForAdvance(uint64_t a1, uint64_t *a2, CFIndex *a3, double a4)
{
  if (FigMediaPlaylistGetMaxSegmentDuration(a1) <= 0.0)
  {
    TargetDuration = FigMediaPlaylistGetTargetDuration(a1);
  }

  else
  {
    TargetDuration = FigMediaPlaylistGetMaxSegmentDuration(a1);
  }

  FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
  LastValue = FigCFArrayGetLastValue();
  v10 = LastValue;
  if (LastValue)
  {
    FigMediaSegmentSpecifierGetPartialSegments(LastValue);
    v11 = FigCFArrayGetLastValue();
    MediaSequence = FigMediaSegmentSpecifierGetMediaSequence(v10);
  }

  else
  {
    v11 = 0;
    MediaSequence = 0;
  }

  v13 = (ceil(TargetDuration / FigMediaPlaylistGetPartTargetDuration(a1)) + -1.0);
  v14 = 0.0;
  v15 = 0;
  if (v11)
  {
    v16 = TargetDuration;
    while (1)
    {
      PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(v10);
      if (PartialSegments)
      {
        PartialSegments = CFArrayGetCount(PartialSegments);
      }

      if (v15 >= PartialSegments)
      {
        break;
      }

      v18 = FigMediaSegmentSpecifierGetPartialSegments(v10);
      ValueAtIndex = CFArrayGetValueAtIndex(v18, v15);
      v16 = v16 - FigMediaSegmentSpecifierGetTimeInSeconds(ValueAtIndex);
      if (ValueAtIndex == v11)
      {
        break;
      }

      ++v15;
    }

    if (v16 < a4 && vabdd_f64(a4, v16) >= 0.001)
    {
      v15 = v13;
      if (FigMediaSegmentSpecifierIsFragment(v10))
      {
        v14 = v16;
      }

      else
      {
        v14 = 0.0;
      }
    }
  }

  while (TargetDuration + v14 < a4 || vabdd_f64(TargetDuration + v14, a4) < 0.001)
  {
    ++MediaSequence;
    v15 = v13;
    v14 = TargetDuration + v14;
  }

  while (v14 <= a4 && vabdd_f64(v14, a4) >= 0.001)
  {
    if (v15 == v13)
    {
      ++MediaSequence;
      v15 = 0;
    }

    else
    {
      ++v15;
    }

    v14 = v14 + FigMediaPlaylistGetPartTargetDuration(a1);
  }

  *a2 = MediaSequence;
  *a3 = v15;
}

BOOL FigStreamPlaylistParserHTTPServerMayMutatePlaylist(uint64_t a1)
{
  if (!FigMediaPlaylistHasEndTag(a1))
  {
    return 1;
  }

  MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
  if (!MediaSegmentSpecifiers || !CFArrayGetCount(MediaSegmentSpecifiers))
  {
    return 1;
  }

  if (FigMediaPlaylistGetPlaylistType(a1) == 2)
  {
    return 0;
  }

  return FigMediaPlaylistGetPlaylistType(a1) != 1;
}

const char *sp_SkipSpacesTabsAndCommas(const char *a1, uint64_t a2, int a3)
{
  v6 = 0;
  while (1)
  {
    v7 = *a1;
    if (v7 > 0x2C)
    {
      goto LABEL_9;
    }

    if (((1 << v7) & 0x100100000200) == 0)
    {
      break;
    }

    v8 = StreamingPlaylist_SkipSpacesAndTabs(a1, a2);
    a1 = v8;
    if (*v8 == 44)
    {
      ++v6;
      a1 = StreamingPlaylist_SkipSpacesAndTabs(v8 + 1, a2);
    }
  }

  if (((1 << v7) & 0x2401) != 0)
  {
LABEL_7:
    if (!v6)
    {
      return a1;
    }

    v10 = @"Misplaced comma";
    v12 = v6 == 1;
    v11 = @"Multiple misplaced comma";
    goto LABEL_13;
  }

LABEL_9:
  if (!a3)
  {
    goto LABEL_7;
  }

  if (v6 == 1)
  {
    return a1;
  }

  v10 = @"Expected a comma but not found";
  v11 = @"Multiple commas found";
  v12 = v6 == 0;
LABEL_13:
  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  sp_SkipSpacesTabsAndCommas_cold_1(a2, v13);
  return a1;
}

BOOL sp_MatchAttributeName(uint64_t a1, int a2, void *a3, void *a4)
{
  for (i = 0; ; ++i)
  {
    v5 = *(a1 + i);
    v6 = (v5 - 65) >= 0x1A && (v5 - 48) >= 0xA;
    if (v6 && v5 != 45 && v5 != 95 && (!a2 || (v5 - 97) > 0x19))
    {
      break;
    }

    if (!i)
    {
      *a3 = a1;
    }
  }

  *a4 = i;
  if (i)
  {
    v7 = *a3 == 0;
  }

  else
  {
    v7 = 1;
  }

  return !v7;
}

uint64_t PlaylistTokenizeString(char *a1, size_t a2, uint64_t a3, int a4, __CFArray **a5)
{
  alloc = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v29 = a3;
    if (a2)
    {
      v10 = MEMORY[0x1E69E9830];
      while (1)
      {
        while (1)
        {
          v11 = *a1;
          v12 = (v11 & 0x80000000) != 0 ? __maskrune(*a1, 0x4000uLL) : *(v10 + 4 * v11 + 60) & 0x4000;
          if (v11 == a4 || v12 == 0)
          {
            break;
          }

          ++a1;
          if (!--a2)
          {
            goto LABEL_37;
          }
        }

        v14 = memchr(a1, a4, a2);
        v15 = v14;
        if (v14)
        {
          v16 = v14 - a1;
        }

        else
        {
          v16 = a2;
        }

        if (v16)
        {
          v17 = v16 - 1;
          do
          {
            v18 = &a1[v17];
            v19 = a1[v17];
            if ((v19 & 0x80000000) != 0)
            {
              v20 = __maskrune(a1[v17], 0x4000uLL);
            }

            else
            {
              v20 = *(v10 + 4 * v19 + 60) & 0x4000;
            }

            --v17;
          }

          while (v19 != a4 && v20 != 0 && v18 > a1);
          if (v17 != -2)
          {
            v23 = CFStringCreateWithBytes(alloc, a1, v17 + 2, 0x600u, 0);
            if (!v23)
            {
              v28 = 1671;
              goto LABEL_44;
            }

            v24 = v23;
            CFArrayAppendValue(Mutable, v23);
            CFRelease(v24);
          }
        }

        if (v15)
        {
          a1 += v16 + 1;
        }

        else
        {
          a1 += v16;
        }

        if (v15)
        {
          a2 += ~v16;
          if (a2)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_37:
    if (CFArrayGetCount(Mutable))
    {
      goto LABEL_38;
    }

    PlaylistTokenizeString_cold_1(v29, v25);
    v26 = 4294955032;
LABEL_41:
    CFRelease(Mutable);
    return v26;
  }

  v28 = 1640;
LABEL_44:
  if (!PlaylistTokenizeString_cold_2(v28, &v32))
  {
    v26 = v32;
    if (!Mutable)
    {
      return v26;
    }

    goto LABEL_41;
  }

LABEL_38:
  v26 = 0;
  *a5 = Mutable;
  return v26;
}

uint64_t sp_strtohex(_BYTE *a1, unint64_t a2, CFDataRef *a3, uint64_t a4, uint64_t a5)
{
  v23 = 0;
  if (a2 < 3)
  {
    v22 = @"%s:No value in hexadecimal-integer";
    goto LABEL_21;
  }

  if (*a1 != 48 || __tolower(a1[1]) != 120)
  {
    v22 = @"%s:Illegal start to hexadecimal-integer";
LABEL_21:
    v19 = 4294954654;
    _StreamPlaylistLogError(4294954654, 4294955032, a5, v22, a4);
    v11 = 0;
    goto LABEL_18;
  }

  v10 = (a2 - 1) >> 1;
  v11 = malloc_type_malloc(v10, 0x66E557A1uLL);
  if (v11)
  {
    v12 = 0;
    v13 = (a2 & 1) == 0;
    v14 = a1 + 2;
    do
    {
      if (v13)
      {
        v15 = sp_chartohex(*v14, a4, a5, &v23);
        if (v15)
        {
          goto LABEL_17;
        }

        ++v14;
      }

      v15 = sp_chartohex(*v14, a4, a5, &v23 + 1);
      if (v15)
      {
LABEL_17:
        v19 = v15;
        goto LABEL_18;
      }

      ++v14;
      v11[v12++] = HIBYTE(v23) | (16 * v23);
      v13 = 1;
    }

    while (v10 != v12);
    v16 = *MEMORY[0x1E695E480];
    GlobalCFAllocatorFigMalloc = FigGetGlobalCFAllocatorFigMalloc();
    v18 = CFDataCreateWithBytesNoCopy(v16, v11, v10, GlobalCFAllocatorFigMalloc);
    *a3 = v18;
    if (v18)
    {
      return 0;
    }

    v21 = 2530;
  }

  else
  {
    v21 = 2512;
  }

  if (!PlaylistTokenizeString_cold_2(v21, &v24))
  {
    v19 = v24;
LABEL_18:
    free(v11);
    return v19;
  }

  return 0;
}

void TaggedRangeUniquenessApplier(const void *a1, const void *a2, uint64_t a3)
{
  v3 = (a3 + 24);
  if (!*(a3 + 24))
  {
    MetadataDict = FigDateRangeSpecifierGetMetadataDict(*a3);
    Value = CFDictionaryGetValue(MetadataDict, a1);
    if (Value)
    {
      if (!CFEqual(Value, a2))
      {
        TaggedRangeUniquenessApplier_cold_1(a3, v3);
      }
    }

    else
    {
      FigDateRangeSpecifierSetValueForMetadataDict(*a3, a1, a2);
      FigDateRangeSpecifierSetValueForTagsFirstFoundDateDict(*a3, a1, *(a3 + 16));
      *(a3 + 28) = 1;
    }
  }
}

uint64_t sp_chartohex(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if ((a1 & 0x80000000) != 0 || (v4 = *(MEMORY[0x1E69E9830] + 4 * a1 + 60), (v4 & 0x10000) == 0))
  {
    v7 = 4294954654;
    _StreamPlaylistLogError(4294954654, 4294955032, a3, @"%s:Illegal hexadecimal digit %c", a2, a1);
  }

  else
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = __tolower(a1) - 87;
    }

    else
    {
      v6 = a1 - 48;
    }

    v7 = 0;
    *a4 = v6;
  }

  return v7;
}

void TaggedRangeTagApplier(const void *result, const void *a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    TaggedRangeTagApplier_cold_1(a2, a3, result, (a3 + 16));
  }
}

uint64_t OUTLINED_FUNCTION_9_55(uint64_t a1, uint64_t a2, uint64_t a3, const __CFString *a4)
{

  return _StreamPlaylistLogError(4294954984, 4294954984, v4, a4);
}

uint64_t OUTLINED_FUNCTION_14_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  return FigCFStringGetCStringPtrAndBufferToFree();
}

CFStringRef OUTLINED_FUNCTION_15_42(const __CFAllocator *a1, const UInt8 *a2, CFIndex a3)
{

  return CFStringCreateWithBytes(a1, a2, a3, 0x8000100u, 1u);
}

uint64_t OUTLINED_FUNCTION_18_36(uint64_t a1)
{

  return FigMediaSegmentSpecifierGetMediaSequence(a1);
}

uint64_t OUTLINED_FUNCTION_25_27(char *a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __CFArray *a12)
{
  a12 = 0;

  return PlaylistTokenizeString(a1, a2, a3, 44, &a12);
}

void OUTLINED_FUNCTION_26_28(const void *a1@<X1>, int a2@<W8>)
{
  if (a2)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  CFDictionarySetValue(v4, a1, v6);
}

uint64_t OUTLINED_FUNCTION_33_23(const char *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sp_MatchTagAndColon(a1, v4, 0x1EuLL, va, v3);
}

CFIndex OUTLINED_FUNCTION_34_23()
{

  return CFStringGetLength(v0);
}

const char *OUTLINED_FUNCTION_35_18(const char *a1)
{

  return sp_SkipSpacesTabsAndCommas(a1, v1, 0);
}

uint64_t FigTTMLSerializerCreateIndenter(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (!a2)
  {
    FigTTMLSerializerCreateIndenter_cold_3(&v11);
    return v11;
  }

  if (!a3)
  {
    FigTTMLSerializerCreateIndenter_cold_2(&v11);
    return v11;
  }

  FigTTMLSerializerGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    return v5;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigTTMLSerializerCreateIndenter_cold_1(&v11);
    return v11;
  }

  v7 = Mutable;
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  *DerivedStorage = CFRetain(a2);
  DerivedStorage[1] = v7;
  DerivedStorage[2] = 0;
  *a3 = 0;
  return v9;
}

void figTTMLSerializerIndenter_Finalize()
{
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

CFStringRef figTTMLSerializerIndenter_CopyDebugDesc()
{
  FigBytePumpGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigTTMLSerializerIndenter: %@", *DerivedStorage);
}

uint64_t figTTMLSerializerIndenter_SetAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigBytePumpGetFigBaseObject();
  v5 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLSerializerSetAttribute(v5, a2, a3);
}

uint64_t figTTMLSerializerIndenter_Flush()
{
  FigBytePumpGetFigBaseObject();
  v0 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLSerializerFlush(v0);
}

__CFString *createIndentation(uint64_t a1)
{
  v2 = 2 * a1;
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 2 * a1);
  if (Mutable)
  {
    if (a1)
    {
      do
      {
        CFStringAppend(Mutable, @" ");
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    createIndentation_cold_1(0, v3, v4, v5, v6, v7, v8, v9, v12, v13, SHIDWORD(v13), v14);
  }

  return Mutable;
}

void copyElementLocalName(CFStringRef theString, void *a2)
{
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], theString, @":");
  if (ArrayBySeparatingStrings)
  {
    v5 = ArrayBySeparatingStrings;
    if (CFArrayGetCount(ArrayBySeparatingStrings) < 1)
    {
      copyElementLocalName_cold_2(&v10);
      goto LABEL_15;
    }

    if (CFArrayGetCount(v5) >= 3)
    {
      copyElementLocalName_cold_1(&v9);
      goto LABEL_15;
    }

    if (CFArrayGetCount(v5) == 1)
    {
      v6 = 0;
    }

    else
    {
      if (CFArrayGetCount(v5) != 2)
      {
        v8 = 0;
LABEL_14:
        *a2 = v8;
LABEL_15:
        CFRelease(v5);
        return;
      }

      v6 = 1;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v5, v6);
    v8 = ValueAtIndex;
    if (ValueAtIndex)
    {
      CFRetain(ValueAtIndex);
    }

    goto LABEL_14;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954510, "(Fig)", 73, v2);
}

double FigRenderPipelineCreateForBufferQueue(uint64_t a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  cf = 0;
  if (a4)
  {
    if (a2)
    {
      FigRenderPipelineGetClassID();
      if (!CMDerivedObjectCreate())
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        CFRetain(a2);
        *(DerivedStorage + 8) = a2;
        if (a3)
        {
          Value = CFDictionaryGetValue(a3, @"PipelineLatency");
          if (Value)
          {
            valuePtr = 0.0;
            CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr);
            CMTimeMakeWithSeconds(&v15, valuePtr, 1000);
            epoch = v15.epoch;
            result = *&v15.value;
            *(DerivedStorage + 16) = *&v15.value;
            *(DerivedStorage + 32) = epoch;
          }
        }

        *a4 = cf;
      }

      return result;
    }

    emitter = fig_log_get_emitter();
    v13 = v4;
    v14 = 200;
  }

  else
  {
    emitter = fig_log_get_emitter();
    v13 = v4;
    v14 = 198;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954444, "<<<< RP-BQ >>>>", v14, v13);
}

uint64_t figRenderPipelineForBufferQueueInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (!*DerivedStorage)
    {
      *DerivedStorage = 1;
      v2 = *(DerivedStorage + 8);
      if (v2)
      {
        CFRelease(v2);
      }
    }
  }

  return 0;
}

__CFString *figRenderPipelineForBufferQueueCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigRenderPipelineForBufferQueue %p: ", a1);
  CFStringAppendFormat(Mutable, 0, @"bufferQueue %@", *(DerivedStorage + 8));
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

void figRenderPipelineForBufferQueueCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v8 = DerivedStorage;
    if (!*DerivedStorage)
    {
      if (CFEqual(@"SourceSampleBufferQueue", a2))
      {
        v10 = *(v8 + 1);
        if (!v10)
        {
          v12 = 0;
LABEL_16:
          *a4 = v12;
          return;
        }

        v11 = CFRetain(v10);
      }

      else
      {
        if (!CFEqual(a2, @"PipelineLatency"))
        {
          return;
        }

        if ((v8[28] & 1) == 0)
        {
          *a4 = 0;
          return;
        }

        v13 = *MEMORY[0x1E695E480];
        v14 = *(v8 + 16);
        v11 = CMTimeCopyAsDictionary(&v14, v13);
      }

      v12 = v11;
      goto LABEL_16;
    }
  }

  emitter = fig_log_get_emitter();

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954444, "<<<< RP-BQ >>>>", 107, v4);
}

void figRenderPipelineForBufferQueueSetProperty(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || *DerivedStorage)
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954444, "<<<< RP-BQ >>>>", 90, v1);
  }
}

uint64_t RegisterFigOVCGLObjectCacheWrapperType()
{
  result = _CFRuntimeRegisterClass();
  sFigOVCGLObjectCacheWrapperTypeID = result;
  return result;
}

uint64_t FigOVCGLObjectCacheWrapperCreate(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    FigOVCGLObjectCacheWrapperCreate_cold_4(&v13);
    return v13;
  }

  if (!a3)
  {
    FigOVCGLObjectCacheWrapperCreate_cold_3(&v13);
    return v13;
  }

  MEMORY[0x19A8D3660](&sRegisterFigOVCGLObjectCacheWrapperTypeOnce, RegisterFigOVCGLObjectCacheWrapperType);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigOVCGLObjectCacheWrapperCreate_cold_2(&v13);
    return v13;
  }

  v7 = Instance;
  *(Instance + 32) = a2;
  v8 = FigSimpleMutexCreate();
  v7[3] = v8;
  if (!v8)
  {
    v12 = 209;
LABEL_15:
    FigOVCGLObjectCacheWrapperCreate_cold_1(v12, v7, &v13);
    return v13;
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, 0, 0);
  v7[5] = Mutable;
  if (!Mutable)
  {
    v12 = 212;
    goto LABEL_15;
  }

  v10 = CFArrayCreateMutable(a1, 0, 0);
  v7[6] = v10;
  if (!v10)
  {
    v12 = 216;
    goto LABEL_15;
  }

  result = 0;
  *a3 = v7;
  return result;
}

double FigOVCGLObjectCacheWrapperInvalidate(uint64_t a1)
{
  if (!a1)
  {
    return FigOVCGLObjectCacheWrapperInvalidate_cold_1();
  }

  FigSimpleMutexLock();
  if (!*(a1 + 16))
  {
    *(a1 + 16) = 1;
    *(a1 + 32) = 0;
    v2 = *(a1 + 48);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 48) = 0;
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 40) = 0;
    }
  }

  FigSimpleMutexUnlock();
  return result;
}

uint64_t FigOVCGLObjectCacheWrapperFlushCacheEntriesForDeletedBackings(uint64_t a1)
{
  if (a1)
  {
    FigSimpleMutexLock();
    if (*(a1 + 16))
    {
      FigOVCGLObjectCacheWrapperFlushCacheEntriesForDeletedBackings_cold_1(&v5);
      v3 = v5;
    }

    else
    {
      v2 = *(a1 + 48);
      v7.length = CFArrayGetCount(v2);
      v7.location = 0;
      CFArrayApplyFunction(v2, v7, glObjectCacheWrapper_flushSurfaceFromGLObjectCache, *(a1 + 32));
      CFArrayRemoveAllValues(*(a1 + 48));
      v3 = 0;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    FigOVCGLObjectCacheWrapperFlushCacheEntriesForDeletedBackings_cold_2(&v6);
    return v6;
  }

  return v3;
}

uint64_t FigOVCGLObjectCacheWrapperGetObjectForPixelBufferAndPlane(uint64_t a1, CVPixelBufferRef pixelBuffer, uint64_t a3, uint64_t a4, _DWORD *a5, BOOL *a6)
{
  if (!a1)
  {
    FigOVCGLObjectCacheWrapperGetObjectForPixelBufferAndPlane_cold_4(&v19);
    return v19;
  }

  if (!pixelBuffer)
  {
    FigOVCGLObjectCacheWrapperGetObjectForPixelBufferAndPlane_cold_3(&v19);
    return v19;
  }

  IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
  if (!IOSurface)
  {
    FigOVCGLObjectCacheWrapperGetObjectForPixelBufferAndPlane_cold_2(&v19);
    return v19;
  }

  ID = IOSurfaceGetID(IOSurface);
  BufferBacking = CVPixelBufferGetBufferBacking();
  FigSimpleMutexLock();
  if (*(a1 + 16))
  {
    FigOVCGLObjectCacheWrapperGetObjectForPixelBufferAndPlane_cold_1(&v19);
    v17 = v19;
LABEL_17:
    FigSimpleMutexUnlock();
    return v17;
  }

  ObjectForSurfaceAndPlane = OVCGLObjectCacheGetObjectForSurfaceAndPlane(*(a1 + 32), ID, a3, a4, a5, a6);
  if (ObjectForSurfaceAndPlane)
  {
    v17 = ObjectForSurfaceAndPlane;
    goto LABEL_17;
  }

  if (CFDictionaryGetValueIfPresent(*(a1 + 40), BufferBacking, 0))
  {
    FigSimpleMutexUnlock();
  }

  else
  {
    CFDictionarySetValue(*(a1 + 40), BufferBacking, ID);
    FigSimpleMutexUnlock();
    v15 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, v15, glObjectCacheWrapper_deregisterPixelBufferBackingThatWillBeDeleted, *MEMORY[0x1E6965C58], BufferBacking, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return 0;
}

void glObjectCacheWrapper_deregisterPixelBufferBackingThatWillBeDeleted(uint64_t a1, const void *a2, const __CFString *a3, const void *a4)
{
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v7)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterRemoveObserver(LocalCenter, a2, a3, a4);
    if (!a2)
    {
      return;
    }

    goto LABEL_8;
  }

  v8 = v7;
  FigSimpleMutexLock();
  if (!*(v8 + 16))
  {
    value = 0;
    if (CFDictionaryGetValueIfPresent(*(v8 + 40), a4, &value))
    {
      v9 = *(v8 + 48);
      if (v9)
      {
        CFArrayAppendValue(v9, value);
      }
    }

    CFDictionaryRemoveValue(*(v8 + 40), a4);
  }

  FigSimpleMutexUnlock();
  v10 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(v10, a2, a3, a4);
  CFRelease(v8);
  if (a2)
  {
LABEL_8:
    CFRelease(a2);
  }
}

uint64_t glObjectCacheWrapper_Finalize(uint64_t a1)
{
  FigOVCGLObjectCacheWrapperInvalidate(a1);
  result = *(a1 + 24);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(a1 + 24) = 0;
  }

  return result;
}

CFStringRef glObjectCacheWrapper_CopyFormattingDesc(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = " (invalidated)";
  }

  else
  {
    v1 = "";
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigOVCGLObjectCacheWrapper %p%s]", a1, v1);
}

__CFString *glObjectCacheWrapper_CopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  v5 = *(a1 + 16);
  v6 = CFGetAllocator(a1);
  Count = *(a1 + 40);
  if (Count)
  {
    Count = CFDictionaryGetCount(Count);
  }

  v8 = " (invalidated)";
  if (!v5)
  {
    v8 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigOVCGLObjectCacheWrapper %p retainCount: %d%s allocator: %p, tracking %d buffers>", a1, v4, v8, v6, Count);
  return Mutable;
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierSetDisplaySize(uint64_t a1, double a2, double a3)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 24) = a2;
    *(a1 + 32) = a3;
  }

  else
  {
    v8 = v3;
    v9 = v4;
    FigPlayerResourceArbiterPlayerSpecifierSetDisplaySize_cold_1(&v7);
    return v7;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierSetIsMuted(uint64_t a1, char a2)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 81) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigPlayerResourceArbiterPlayerSpecifierSetIsMuted_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierSetIsBuffering(uint64_t a1, char a2)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 82) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigPlayerResourceArbiterPlayerSpecifierSetIsBuffering_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierSetIsFullyActive(uint64_t a1, char a2)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 104) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigPlayerResourceArbiterPlayerSpecifierSetIsFullyActive_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierSetResolutionCeiling(uint64_t a1, double a2, double a3)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 40) = a2;
    *(a1 + 48) = a3;
  }

  else
  {
    v8 = v3;
    v9 = v4;
    FigPlayerResourceArbiterPlayerSpecifierSetResolutionCeiling_cold_1(&v7);
    return v7;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierSetPlayerRole(uint64_t a1, CFTypeRef cf)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 88);
    *(a1 + 88) = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v2)
    {
      CFRelease(v2);
    }

    return 0;
  }

  else
  {
    FigPlayerResourceArbiterPlayerSpecifierSetPlayerRole_cold_1(&v4);
    return v4;
  }
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierSetDesiredRate(uint64_t a1, float a2)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 96) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigPlayerResourceArbiterPlayerSpecifierSetDesiredRate_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierSetIsFullyOffline(uint64_t a1, char a2)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 105) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigPlayerResourceArbiterPlayerSpecifierSetIsFullyOffline_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierSetResolutionFloor(uint64_t a1, double a2, double a3)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 56) = a2;
    *(a1 + 64) = a3;
  }

  else
  {
    v8 = v3;
    v9 = v4;
    FigPlayerResourceArbiterPlayerSpecifierSetResolutionFloor_cold_1(&v7);
    return v7;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierSetFrameRateFloor(uint64_t a1, float a2)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 76) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigPlayerResourceArbiterPlayerSpecifierSetFrameRateFloor_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierSetFrameRateCeiling(uint64_t a1, float a2)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 72) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigPlayerResourceArbiterPlayerSpecifierSetFrameRateCeiling_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierSetIsMVStereo(uint64_t a1, char a2)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 80) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigPlayerResourceArbiterPlayerSpecifierSetIsMVStereo_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierSetNetworkPriority(uint64_t a1, int a2)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 100) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigPlayerResourceArbiterPlayerSpecifierSetNetworkPriority_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierMarkAsImmutable(uint64_t a1)
{
  *(a1 + 16) = 0;
  v1 = *MEMORY[0x1E695F060];
  v2 = *(MEMORY[0x1E695F060] + 8);
  v3 = *(a1 + 56) == *MEMORY[0x1E695F060] && *(a1 + 64) == v2;
  if (!v3 && *(a1 + 76) == 0.0)
  {
    *(a1 + 76) = 1103089369;
  }

  v4 = *(a1 + 40) == v1 && *(a1 + 48) == v2;
  if (!v4 && *(a1 + 72) == 0.0)
  {
    *(a1 + 72) = 1103089369;
  }

  return 0;
}

uint64_t FigPlayerResourceArbiterPlayerSpecifierCreate(uint64_t *a1)
{
  if (a1)
  {
    FigGetAllocatorForMedia();
    MEMORY[0x19A8D3660](&FigPlayerResourceArbiterPlayerSpecifierGetTypeID_sFigPlayerResourceArbiterRegisterOnce, FigPlayerResourceArbiter_initOnce);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v3 = Instance;
      result = 0;
      *(v3 + 16) = 1;
      *(v3 + 100) = 0;
      *a1 = v3;
    }

    else
    {
      FigPlayerResourceArbiterPlayerSpecifierCreate_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    FigPlayerResourceArbiterPlayerSpecifierCreate_cold_2(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterNetworkSpecifierSetLowestBitrate(uint64_t a1, int a2)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 20) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigPlayerResourceArbiterNetworkSpecifierSetLowestBitrate_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterNetworkSpecifierSetCurrentBitrate(uint64_t a1, int a2)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 24) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigPlayerResourceArbiterNetworkSpecifierSetCurrentBitrate_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterNetworkSpecifierSetHighestBitrate(uint64_t a1, int a2)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 28) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigPlayerResourceArbiterNetworkSpecifierSetHighestBitrate_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterNetworkSpecifierSetPriorBitrate(uint64_t a1, int a2)
{
  if (*(a1 + 16))
  {
    result = 0;
    *(a1 + 32) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigPlayerResourceArbiterNetworkSpecifierSetPriorBitrate_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiterNetworkSpecifierCreate(uint64_t *a1)
{
  if (a1)
  {
    FigGetAllocatorForMedia();
    MEMORY[0x19A8D3660](&FigPlayerResourceArbiterNetworkSpecifierGetTypeID_sFigPlayerResourceArbiterNetworkSpecifierRegisterOnce, FigPlayerResourceNetworkSpecifier_initOnce);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v3 = Instance;
      result = 0;
      *(v3 + 16) = 1;
      *a1 = v3;
    }

    else
    {
      FigPlayerResourceArbiterNetworkSpecifierCreate_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    FigPlayerResourceArbiterNetworkSpecifierCreate_cold_2(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPlayerResourceArbiter_initOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigPlayerResourceArbiterPlayerSpecifierID = result;
  return result;
}

double fpraps_init(_OWORD *a1)
{
  result = 0.0;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void fpraps_finalize(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t FigPlayerResourceNetworkSpecifier_initOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigPlayerResourceArbiterNetworkSpecifierID = result;
  return result;
}

void *fprans_init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

uint64_t FigTTMLDocumentWriterCreateForSerializer(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  v31 = 0;
  if (!a2)
  {
    FigTTMLDocumentWriterCreateForSerializer_cold_2(&v32);
    return v32;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateForSerializer_cold_1(&v32);
    return v32;
  }

  FigTTMLDocumentWriterGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    FigTTMLDocumentWriterGetCMBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    *&v18 = 0;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    *(&v18 + 1) = @"utc";
    *&v19 = @"nonDrop";
    *(&v19 + 1) = 30;
    v30 = 0;
    CMTimeMake((&v19 + 12), 1, 1);
    *(&v21 + 1) = @"discontinuous";
    *&v22 = 0x100000001;
    *(&v22 + 1) = *MEMORY[0x1E6962800];
    v7 = *(MEMORY[0x1E6962828] + 16);
    v23 = *MEMORY[0x1E6962828];
    v24 = v7;
    v8 = *(MEMORY[0x1E6962828] + 48);
    v25 = *(MEMORY[0x1E6962828] + 32);
    v26 = v8;
    LODWORD(v27) = 1;
    CMTimeMake((&v27 + 4), 1, 1);
    v5 = 0;
    *(&v29 + 1) = 0;
    v30 = 0;
    *&v29 = @"smpte";
    v10 = v21;
    v9 = v22;
    v11 = v19;
    *(DerivedStorage + 40) = v20;
    *(DerivedStorage + 56) = v10;
    *(DerivedStorage + 72) = v9;
    v12 = v25;
    v13 = v26;
    v14 = v24;
    *(DerivedStorage + 88) = v23;
    *(DerivedStorage + 136) = v13;
    *(DerivedStorage + 120) = v12;
    *(DerivedStorage + 104) = v14;
    *(DerivedStorage + 8) = v18;
    *(DerivedStorage + 24) = v11;
    v15 = v29;
    v16 = v27;
    *(DerivedStorage + 168) = v28;
    *(DerivedStorage + 152) = v16;
    *(DerivedStorage + 184) = v15;
    *(DerivedStorage + 200) = 0;
    *a3 = v31;
  }

  return v5;
}

void figTTMLDocumentWriterForSerializer_Finalize()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

CFStringRef figTTMLDocumentWriterForSerializer_CopyDebugDesc()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigTTMLDocumentWriterForSerializer: %@", *DerivedStorage);
}

uint64_t figTTMLDocumentWriterForSerializer_EndElement()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v0 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLSerializerEndElement(v0);
}

uint64_t figTTMLDocumentWriterForSerializer_AddCaptionData(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v4)
  {
    v5 = v4(a2);
  }

  else
  {
    v5 = &stru_1F0B1AFB8;
  }

  v6 = *DerivedStorage;

  return FigTTMLSerializerAddText(v6, v5);
}

uint64_t figTTMLDocumentWriterForSerializer_Flush()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v0 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLSerializerFlush(v0);
}

uint64_t startElementWithNamespace(uint64_t a1, const void *a2, uint64_t a3)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&getNamespaceToPrefixDictionary_sNamespaceURIToPrefixOnce, initializeNamespaceToPrefixDictionary);
  Value = CFDictionaryGetValue(sNamespaceToPrefixDictionary, a2);
  v8 = CFStringCreateWithFormat(v6, 0, @"%@:%@", Value, a3);
  started = FigTTMLSerializerStartElement(*DerivedStorage, v8);
  if (v8)
  {
    CFRelease(v8);
  }

  return started;
}

CFDictionaryRef initializeNamespaceToPrefixDictionary()
{
  keys[11] = *MEMORY[0x1E69E9840];
  keys[0] = @"http://www.w3.org/ns/ttml#parameter";
  keys[1] = @"http://www.w3.org/ns/ttml#styling";
  keys[2] = @"http://www.w3.org/ns/ttml#metadata";
  keys[3] = @"http://www.w3.org/ns/ttml/profile/";
  keys[4] = @"http://www.w3.org/ns/ttml/feature/";
  keys[5] = @"http://www.w3.org/ns/ttml/extension/";
  keys[6] = @"http://namespace.itunes.apple.com/itt/ttml-extension#ruby";
  keys[7] = @"http://namespace.itunes.apple.com/itt/ttml-extension#vertical";
  keys[8] = @"http://www.w3.org/ns/ttml/profile/imsc1#parameter";
  keys[9] = @"http://www.w3.org/ns/ttml/profile/imsc1#styling";
  keys[10] = @"urn:ebu:tt:style";
  v1[2] = xmmword_1E7491510;
  v1[3] = *&off_1E7491520;
  v1[4] = xmmword_1E7491530;
  v2 = @"ebutts";
  v1[0] = xmmword_1E74914F0;
  v1[1] = *&off_1E7491500;
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, v1, 11, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  sNamespaceToPrefixDictionary = result;
  return result;
}

uint64_t writeStringAttributeWithNamespace(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *MEMORY[0x1E695E480];
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], a2, @" ");
  v8 = ArrayBySeparatingStrings;
  if (ArrayBySeparatingStrings && CFArrayGetCount(ArrayBySeparatingStrings) == 2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
    v10 = CFArrayGetValueAtIndex(v8, 1);
    MEMORY[0x19A8D3660](&getNamespaceToPrefixDictionary_sNamespaceURIToPrefixOnce, initializeNamespaceToPrefixDictionary);
    Value = CFDictionaryGetValue(sNamespaceToPrefixDictionary, ValueAtIndex);
    v12 = CFStringCreateWithFormat(v6, 0, @"%@:%@", Value, v10);
    if (v12)
    {
      v13 = v12;
      v14 = FigTTMLSerializerSetAttribute(*DerivedStorage, v12, a3);
LABEL_7:
      CFRelease(v13);
LABEL_8:
      if (!v8)
      {
        return v14;
      }

      goto LABEL_11;
    }

    writeStringAttributeWithNamespace_cold_1(&v17);
    v14 = v17;
    goto LABEL_11;
  }

  v15 = CFArrayGetValueAtIndex(v8, 0);
  if (v15)
  {
    v13 = CFRetain(v15);
    v14 = FigTTMLSerializerSetAttribute(*DerivedStorage, v13, a3);
    if (!v13)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v14 = FigTTMLSerializerSetAttribute(*DerivedStorage, 0, a3);
  if (v8)
  {
LABEL_11:
    CFRelease(v8);
  }

  return v14;
}

uint64_t OUTLINED_FUNCTION_3_116()
{

  return CFEqual(v0, v1);
}

CMTime *OUTLINED_FUNCTION_6_85(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, CMTime *a18, uint64_t a19, uint64_t a20)
{
  a18 = 0;
  a19 = 0;
  a20 = 0;

  return CMTimeMakeFromDictionary(&a18, v20);
}

void famhdcp_releaseAndClearHDCPExternalProtectionMonitor(uint64_t a1, int a2)
{
  v2 = CMBaseObjectGetDerivedStorage() + 8 * (a2 - 1);
  v3 = *(v2 + 48);
  if (v3)
  {
    FigCPEExternalProtectionMonitorEndMonitoring(v3);
  }

  v4 = *(v2 + 48);
  if (v4)
  {
    CFRelease(v4);
    *(v2 + 48) = 0;
  }
}

void famhdcp_removeAllEPMListeners(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFBagApplyFunction(*(DerivedStorage + 128), famhdcp_removeEPMListenersApplierFunc, a1);
  v3 = *(DerivedStorage + 128);

  CFBagRemoveAllValues(v3);
}

uint64_t famhdcp_setFilterForState(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigSimpleMutexLock();
  v7 = famhdcp_copyFilterForCurrentStateGuts(a1, &cf);
  if (v7)
  {
    v9 = v7;
    FigSimpleMutexUnlock();
  }

  else
  {
    v8 = *(DerivedStorage + 40);
    CFDictionarySetValue(*(DerivedStorage + 32), a3, a2);
    FigSimpleMutexUnlock();
    v9 = FigAlternateFilterMonitorUtilityPostStateChangedNotificationForNewFilterIfNecessary(a1, cf, a2, a3, v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t FigAlternateFilterMonitorCreateForHDCP(const __CFAllocator *a1, const void *a2, uint64_t (*a3)(), CFTypeRef *a4)
{
  v23 = 0;
  cf = 0;
  v22 = 0;
  FigAlternateFilterMonitorGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
LABEL_21:
    v19 = v7;
    goto LABEL_14;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = FigReentrantMutexCreate();
  *DerivedStorage = v9;
  if (!v9)
  {
    v21 = 918;
LABEL_24:
    FigAlternateFilterMonitorCreateForHDCP_cold_1(v21, &v25);
    v19 = v25;
    goto LABEL_14;
  }

  v10 = dispatch_queue_create("com.apple.coremedia.alternateFilterMonitorForHDCP.notification", 0);
  *(DerivedStorage + 24) = v10;
  if (!v10)
  {
    v21 = 921;
    goto LABEL_24;
  }

  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = famhdcp_copyHDCPEPM;
  }

  *(DerivedStorage + 8) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(DerivedStorage + 16) = v11;
  *(DerivedStorage + 32) = CFDictionaryCreateMutable(a1, 0, 0, MEMORY[0x1E695E9E8]);
  *(DerivedStorage + 128) = CFBagCreateMutable(a1, 0, MEMORY[0x1E695E9D0]);
  *(DerivedStorage + 96) = -2;
  *(DerivedStorage + 144) = 0;
  v12 = CMBaseObjectGetDerivedStorage();
  *(v12 + 104) = -1;
  *(v12 + 120) = 0x100000001;
  v13 = CFGetAllocator(cf);
  v7 = FigAlternateHDCPLazyEPMFilterCreate(v13, famhdcp_lazyEPMFilterGetHDCPProtectionStatusCallback, famhdcp_lazyEPMFilterGetHDCPProtectionStatusCallback, cf, &v23);
  if (v7)
  {
    goto LABEL_21;
  }

  v14 = cf;
  v15 = CFGetAllocator(cf);
  v7 = FigAlternateAOCPFilterCreate(v15, famhdcp_aocpFilterGetAOCPProtectionStatusCallback, v14, (DerivedStorage + 136));
  if (v7)
  {
    goto LABEL_21;
  }

  v7 = famhdcp_createFilterTree(v23, *(DerivedStorage + 136), &v22);
  if (v7)
  {
    goto LABEL_21;
  }

  v16 = cf;
  v17 = v22;
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v18)
  {
    v19 = v18(v16, v17, 0);
    if (!v19)
    {
      *a4 = cf;
      cf = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v19 = 4294954514;
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_16:
  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v19;
}

uint64_t famhdcp_copyHDCPEPM(int a1, uint64_t a2, _DWORD *a3, dispatch_queue_t **a4)
{
  if (*(CMBaseObjectGetDerivedStorage() + 72))
  {
    *a3 = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = (DerivedStorage + 64);
    if (!*(DerivedStorage + 64))
    {
      result = FigCPEOctaviaExternalProtectionMonitorCreate(*MEMORY[0x1E695E480], *(DerivedStorage + 48), 1u, *(DerivedStorage + 80), v8);
      if (result)
      {
        return result;
      }

      v10 = 0;
LABEL_22:
      FigCPEExternalProtectionMonitorBeginMonitoring(*v8);
      if (!a4)
      {
        goto LABEL_26;
      }

LABEL_23:
      v19 = *v8;
      if (*v8)
      {
        v19 = CFRetain(v19);
      }

      *a4 = v19;
LABEL_26:
      v20 = 0;
      result = 0;
      if (!v10)
      {
        return result;
      }

      goto LABEL_27;
    }

LABEL_11:
    v10 = 0;
    if (!a4)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      *a3 = 1;
      v11 = CMBaseObjectGetDerivedStorage();
      v12 = 0;
      v8 = (v11 + 56);
    }

    else
    {
      v11 = CMBaseObjectGetDerivedStorage();
      v12 = 0;
      v8 = 0;
    }
  }

  else
  {
    *a3 = 0;
    v11 = CMBaseObjectGetDerivedStorage();
    v8 = (v11 + 48);
    v12 = 1;
  }

  if (*v8)
  {
    goto LABEL_11;
  }

  v13 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    famhdcp_copyHDCPEPM_cold_1(&v21);
    return v21;
  }

  v10 = Mutable;
  CFDictionarySetValue(Mutable, @"InformationalMode", *MEMORY[0x1E695E4D0]);
  if (v12)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v16 = FigCPEExternalProtectionMonitorCreateForMethods(v13, v15, v10, 0, v8);
  if (!v16)
  {
    v17 = 56;
    if (v12)
    {
      v17 = 48;
    }

    v18 = *(v11 + v17);
    if (!v18)
    {
      goto LABEL_22;
    }

    v16 = FigCPEExternalProtectionMonitorSetProperty(v18, @"DisplayList", *(v11 + 88));
    if (!v16)
    {
      goto LABEL_22;
    }
  }

  v20 = v16;
LABEL_27:
  CFRelease(v10);
  return v20;
}

uint64_t famhdcp_getCurrentMaxSupportedHDCPLevel(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  if (*(DerivedStorage + 72))
  {
    v3 = *(DerivedStorage + 64);
    if (!v3)
    {
      return 4294967294;
    }
  }

  else
  {
    v5 = *(DerivedStorage + 56);
    if (v5)
    {
      if (famhdcp_getHDCPStateFromExternalProtectionMonitor(v5) < 2)
      {
        return 1;
      }

      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = 4294967294;
    }

    v3 = *(v2 + 48);
    if (!v3)
    {
      return result;
    }
  }

  if (famhdcp_getHDCPStateFromExternalProtectionMonitor(v3) <= 1)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t famhdcp_removeEPMListenersApplierFunc(uint64_t a1, uint64_t a2)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListener();
}

const void *famhdcp_copyFilterForCurrentStateGuts(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 40);
    v5 = CMBaseObjectGetDerivedStorage();
    result = CFDictionaryGetValue(*(v5 + 32), v4);
    *a2 = result;
    if (result)
    {
      CFRetain(result);
      return 0;
    }
  }

  else
  {
    famhdcp_copyFilterForCurrentStateGuts_cold_1(&v7);
    return v7;
  }

  return result;
}

uint64_t famhdcp_finalize(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  famhdcp_removeAllEPMListeners(a1);
  famhdcp_releaseAndClearHDCPExternalProtectionMonitor(a1, 1);
  famhdcp_releaseAndClearHDCPExternalProtectionMonitor(a1, 2);
  famhdcp_releaseAndClearHDCPExternalProtectionMonitor(a1, 3);
  v3 = DerivedStorage[11];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[10];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = DerivedStorage[3];
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = DerivedStorage[1];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = DerivedStorage[4];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = DerivedStorage[14];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = DerivedStorage[16];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = DerivedStorage[17];
  if (v10)
  {
    CFRelease(v10);
  }

  return FigSimpleMutexDestroy();
}

CFStringRef famhdcp_copyDebugDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigAlternateFilterMonitorForHDCP currentMaxProtectedHDCPLevel:%d currentEPM:%@]", *(DerivedStorage + 104), *(DerivedStorage + 112));
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t famhdcp_copyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFEqual(a2, @"AlternateFilterMonitorProperty_MaxProtectedAlternateHDCPLevel"))
  {
    famhdcp_getCurrentMaxSupportedHDCPLevel(a1);
LABEL_4:
    SInt32 = FigCFNumberCreateSInt32();
    goto LABEL_5;
  }

  if (CFEqual(a2, @"AlternateFilterMonitorProperty_HDCPErrorCount"))
  {
    goto LABEL_4;
  }

  if (!CFEqual(a2, @"AlternateFilterMonitorProperty_AOCP"))
  {
    v9 = 4294954512;
    goto LABEL_6;
  }

  famhdcp_copyProperty_cold_1(a1, DerivedStorage, &v11);
  SInt32 = v11;
LABEL_5:
  v9 = 0;
  *a4 = SInt32;
LABEL_6:
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t famhdcp_setProperty(uint64_t a1, const void *a2, const __CFArray *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (CFEqual(a2, @"AlternateFilterMonitorProperty_DisplayList"))
  {
    famhdcp_setProperty_cold_1(a3, DerivedStorage, v11);
    v7 = v11[0];
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11[1]);
    v7 = v6;
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t famhdcp_setState(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v5 = *(DerivedStorage + 40);
  *(DerivedStorage + 40) = a2;
  v6 = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(*(v6 + 32), v5);
  v8 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  v9 = CMBaseObjectGetDerivedStorage();
  v10 = CFDictionaryGetValue(*(v9 + 32), a2);
  v11 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  FigSimpleMutexUnlock();
  v12 = FigAlternateFilterMonitorUtilityPostStateChangedNotificationForNewStateIfNecessary(a1, v8, v11, v5, a2);
  if (v8)
  {
    CFRelease(v8);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v12;
}

const void *famhdcp_copyFilterForCurrentState(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = famhdcp_copyFilterForCurrentStateGuts(a1, a2);
  FigSimpleMutexUnlock();
  return v4;
}

double OUTLINED_FUNCTION_1_149(uint64_t a1)
{
  *(a1 + 104) = -1;
  *&result = 0x100000001;
  *(a1 + 120) = 0x100000001;
  return result;
}

void *figTTMLInitLibXMLLibrary()
{
  result = dlopen("/usr/lib/libxml2.dylib", 6);
  if (result)
  {
    v1 = result;
    off_1ED4CB568 = dlsym(result, "xmlTextReaderIsEmptyElement");
    off_1ED4CB570 = dlsym(v1, "xmlTextReaderLocalName");
    qword_1ED4CB578 = dlsym(v1, "xmlStrEqual");
    off_1ED4CB580 = dlsym(v1, "xmlTextReaderMoveToNextAttribute");
    off_1ED4CB588 = dlsym(v1, "xmlTextReaderMoveToElement");
    off_1ED4CB590 = dlsym(v1, "xmlTextReaderConstLocalName");
    off_1ED4CB598 = dlsym(v1, "xmlTextReaderNamespaceUri");
    off_1ED4CB5A0 = dlsym(v1, "xmlTextReaderRead");
    qword_1ED4CB5A8 = dlsym(v1, "xmlFreeTextReader");
    off_1ED4CB5B0 = dlsym(v1, "xmlTextReaderNodeType");
    off_1ED4CB5B8 = dlsym(v1, "xmlTextReaderValue");
    off_1ED4CB5C0 = dlsym(v1, "xmlTextReaderMoveToFirstAttribute");
    off_1ED4CB5C8 = dlsym(v1, "xmlTextReaderConstNamespaceUri");
    qword_1ED4CB5D0 = dlsym(v1, "xmlTextReaderReadString");
    qword_1ED4CB5E0 = dlsym(v1, "xmlFree");
    off_1ED4CB5D8 = *qword_1ED4CB5E0;
    qword_1ED4CB5E8 = dlsym(v1, "xmlReaderForMemory");
    qword_1ED4CB5F0 = dlsym(v1, "xmlOutputBufferCreateIO");
    qword_1ED4CB5F8 = dlsym(v1, "xmlNewTextWriter");
    qword_1ED4CB600 = dlsym(v1, "xmlOutputBufferClose");
    qword_1ED4CB608 = dlsym(v1, "xmlFreeTextWriter");
    qword_1ED4CB610 = dlsym(v1, "xmlTextWriterStartDocument");
    qword_1ED4CB618 = dlsym(v1, "xmlTextWriterEndDocument");
    qword_1ED4CB620 = dlsym(v1, "xmlTextWriterStartElementNS");
    qword_1ED4CB628 = dlsym(v1, "xmlTextWriterStartElement");
    qword_1ED4CB630 = dlsym(v1, "xmlTextWriterEndElement");
    qword_1ED4CB638 = dlsym(v1, "xmlTextWriterWriteString");
    qword_1ED4CB640 = dlsym(v1, "xmlTextWriterFlush");
    qword_1ED4CB648 = dlsym(v1, "xmlTextWriterSetQuoteChar");
    qword_1ED4CB650 = dlsym(v1, "xmlTextWriterWriteAttribute");
    qword_1ED4CB658 = dlsym(v1, "xmlTextWriterWriteFormatAttributeNS");
    qword_1ED4CB660 = dlsym(v1, "xmlTextWriterSetIndent");
    qword_1ED4CB668 = dlsym(v1, "xmlTextWriterSetIndentString");
    result = dlsym(v1, "xmlTextWriterWriteAttributeNS");
    qword_1ED4CB670 = result;
    _MergedGlobals_102 = &off_1ED4CB568;
    if (&off_1ED4CB568 != &_MergedGlobals_103)
    {
      v2 = &off_1ED4CB568;
      v3 = 272;
      while (*v2)
      {
        ++v2;
        v3 -= 8;
        if (!v3)
        {
          return result;
        }
      }

      _MergedGlobals_102 = 0;
    }
  }

  return result;
}

uint64_t FigTTMLInitializeNodeBaseStorage(uint64_t a1, __int128 *a2)
{
  *(a1 + 128) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (a2)
  {
    v3 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v3;
  }

  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(a1 + 24) = Mutable;
  if (!Mutable)
  {
    v8 = 233;
LABEL_9:
    FigTTMLInitializeNodeBaseStorage_cold_1(v8, &v9);
    return v9;
  }

  v6 = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
  *(a1 + 128) = v6;
  if (!v6)
  {
    v8 = 236;
    goto LABEL_9;
  }

  return 0;
}

void FigTTMLReleaseNodeBaseStorage(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 128) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }
}

CFMutableArrayRef FigTTMLCreateStringArrayFromNMTOKENS(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  theString = a1;
  v21 = 0;
  v22 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v19 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v23 = 0;
  v24 = 0;
  v20 = CStringPtr;
  if (Length >= 1)
  {
    v6 = 0;
    v7 = 0;
    memset(v17, 0, sizeof(v17));
    do
    {
      v8 = v22;
      if (v22 <= v6)
      {
        goto LABEL_27;
      }

      if (v19)
      {
        v9 = v19[v21 + v6];
      }

      else if (v20)
      {
        v9 = v20[v21 + v6];
      }

      else
      {
        v10 = v23;
        if (v24 <= v6 || v23 > v6)
        {
          v12 = v6 - 4;
          if (v6 < 4)
          {
            v12 = 0;
          }

          if (v12 + 64 < v22)
          {
            v8 = v12 + 64;
          }

          v23 = v12;
          v24 = v8;
          v25.length = v8 - v12;
          v25.location = v21 + v12;
          CFStringGetCharacters(theString, v25, v17);
          v10 = v23;
        }

        v9 = *(v17 + v6 - v10);
      }

      v13 = v9;
      v14 = (1 << v9) & 0x100002600;
      if (v13 > 0x20 || v14 == 0)
      {
LABEL_27:
        ++v6;
      }

      else
      {
        if (v7 != v6)
        {
          v26.location = v7;
          v26.length = v6;
          figTTMLAddSubstringToArray(a1, v26, Mutable);
        }

        v7 = ++v6;
      }
    }

    while (v6 != Length);
    if (v7 != v6)
    {
      v27.location = v7;
      v27.length = v6;
      figTTMLAddSubstringToArray(a1, v27, Mutable);
    }
  }

  return Mutable;
}

void figTTMLAddSubstringToArray(CFStringRef str, CFRange range, __CFArray *a3)
{
  v6.length = range.length - range.location;
  v6.location = range.location;
  v4 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], str, v6);
  CFArrayAppendValue(a3, v4);
  if (v4)
  {

    CFRelease(v4);
  }
}

__CFArray *FigTTMLCreateReversedStringArrayFromNMTOKENS(const __CFString *a1)
{
  v1 = FigTTMLCreateStringArrayFromNMTOKENS(a1);
  v2 = v1;
  if (v1)
  {
    Count = CFArrayGetCount(v1);
    if (Count >= 2)
    {
      v4 = 0;
      v5 = Count / 2;
      v6 = Count - 1;
      do
      {
        CFArrayExchangeValuesAtIndices(v2, v4++, v6--);
      }

      while (v5 != v4);
    }
  }

  return v2;
}

uint64_t FigTTMLCopyNamespaceAndLocalNameOfCurrentNode(uint64_t a1, const char **a2, CFStringRef *a3)
{
  MEMORY[0x19A8D3660](&FigTTMLGetLibXMLAccess_sFigLibXMLLoadOnce, figTTMLInitLibXMLLibrary);
  if (off_1ED4CB5B0(a1) == 1)
  {
    v6 = off_1ED4CB590(a1);
    v7 = MEMORY[0x1E695E480];
    if (v6)
    {
      v8 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v6, 0x8000100u);
    }

    else
    {
      v8 = 0;
    }

    v9 = off_1ED4CB5C8(a1);
    if (v9)
    {
      v9 = CFStringCreateWithCString(*v7, v9, 0x8000100u);
    }

    if (a2)
    {
      *a2 = v9;
      v9 = 0;
    }

    if (a3)
    {
      *a3 = v8;
      v8 = 0;
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    return 0;
  }

  else
  {
    FigTTMLCopyNamespaceAndLocalNameOfCurrentNode_cold_1(&v11);
    return v11;
  }
}

uint64_t FigTTMLMoveCurrentNodeTo(uint64_t a1, int a2)
{
  MEMORY[0x19A8D3660](&FigTTMLGetLibXMLAccess_sFigLibXMLLoadOnce, figTTMLInitLibXMLLibrary);
  if (_MergedGlobals_102)
  {
    while (off_1ED4CB5A0(a1) == 1)
    {
      if (off_1ED4CB5B0(a1) == a2)
      {
        return 0;
      }
    }

    FigTTMLMoveCurrentNodeTo_cold_1(&v5);
    return v5;
  }

  else
  {
    FigTTMLMoveCurrentNodeTo_cold_2(&v6);
    return v6;
  }
}

uint64_t FigTTMLAddCurrentElementAttributesToDictionary(uint64_t a1, __CFDictionary *a2)
{
  MEMORY[0x19A8D3660](&FigTTMLGetLibXMLAccess_sFigLibXMLLoadOnce, figTTMLInitLibXMLLibrary);
  if (_MergedGlobals_102)
  {
    if (off_1ED4CB5B0(a1) == 1)
    {
      if (off_1ED4CB5C0(a1))
      {
        v4 = 0;
        v5 = 0;
        v6 = 0;
        v7 = 0;
        v8 = 0;
        v9 = *MEMORY[0x1E695E480];
        do
        {
          off_1ED4CB5D8(v6);
          off_1ED4CB5D8(v5);
          off_1ED4CB5D8(v4);
          if (v8)
          {
            CFRelease(v8);
          }

          if (v7)
          {
            CFRelease(v7);
          }

          v6 = off_1ED4CB598(a1);
          v5 = off_1ED4CB570(a1);
          v4 = off_1ED4CB5B8(a1);
          v8 = figTTMLCreateNamespaceAndName(v6);
          v7 = CFStringCreateWithCString(v9, v4, 0x8000100u);
          CFDictionaryAddValue(a2, v8, v7);
        }

        while (off_1ED4CB580(a1));
        off_1ED4CB588(a1);
        if (v8)
        {
          CFRelease(v8);
        }

        if (v7)
        {
          CFRelease(v7);
        }

        v10 = 0;
      }

      else
      {
        off_1ED4CB588(a1);
        v10 = 0;
        v4 = 0;
        v5 = 0;
        v6 = 0;
      }
    }

    else
    {
      FigTTMLAddCurrentElementAttributesToDictionary_cold_1(&v12);
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v10 = v12;
    }

    off_1ED4CB5D8(v6);
    off_1ED4CB5D8(v5);
    off_1ED4CB5D8(v4);
  }

  else
  {
    FigTTMLAddCurrentElementAttributesToDictionary_cold_2(&v13);
    return v13;
  }

  return v10;
}

uint64_t FigTTMLAddAttributeToCFDictionary(uint64_t a1, __CFDictionary *a2)
{
  MEMORY[0x19A8D3660](&FigTTMLGetLibXMLAccess_sFigLibXMLLoadOnce, figTTMLInitLibXMLLibrary);
  if (_MergedGlobals_102)
  {
    if (off_1ED4CB5B0(a1) == 2)
    {
      FigTTMLAddAttributeToCFDictionary_cold_2(a1, a2, &v6);
      return v6;
    }

    else
    {
      FigTTMLAddAttributeToCFDictionary_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    FigTTMLAddAttributeToCFDictionary_cold_3(&v7);
    return v7;
  }
}

uint64_t FigTTMLSkipNode(uint64_t a1, uint64_t *a2, __CFArray *a3)
{
  value = 0;
  MEMORY[0x19A8D3660](&FigTTMLGetLibXMLAccess_sFigLibXMLLoadOnce, figTTMLInitLibXMLLibrary);
  if (!_MergedGlobals_102)
  {
    FigTTMLSkipNode_cold_1(&v12);
    return v12;
  }

  if (off_1ED4CB5B0(a1) == 1)
  {
    v6 = FigTTMLCopyNamespaceAndLocalNameOfCurrentNode(a1, 0, &value);
    v7 = value;
    if (v6)
    {
      v9 = v6;
      if (!value)
      {
        return v9;
      }

      goto LABEL_6;
    }

    CFArrayAppendValue(a3, value);
  }

  FigTTMLParseNode(a1, figTTMLSkipNode, a2);
  v9 = v8;
  v7 = value;
  if (value)
  {
LABEL_6:
    CFRelease(v7);
  }

  return v9;
}

void FigTTMLAppendDebugDescToCFString(const void *a1, __CFString *a2)
{
  v3 = CFCopyDescription(a1);
  CFStringAppend(a2, v3);
  if (v3)
  {

    CFRelease(v3);
  }
}

void FigTTMLParseTimeExpression(uint64_t a1, CFStringRef theString, CMTime *a3)
{
  v52 = *MEMORY[0x1E6960C70];
  *&v68.value = *MEMORY[0x1E6960C70];
  v7 = *(MEMORY[0x1E6960C70] + 16);
  v68.epoch = v7;
  Length = CFStringGetLength(theString);
  if (!a3)
  {
    FigTTMLParseTimeExpression_cold_4(buffer);
    return;
  }

  v9 = Length;
  theStringa = theString;
  v64 = 0;
  v65 = Length;
  CharactersPtr = CFStringGetCharactersPtr(theString);
  CStringPtr = 0;
  v62 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  *buffer = 0u;
  v54 = 0u;
  v66 = 0;
  v67 = 0;
  v63 = CStringPtr;
  *&v77.value = v52;
  v77.epoch = v7;
  v74 = 0;
  memset(v73, 0, sizeof(v73));
  v72 = 0.0;
  v71 = 0;
  if (figTTMLParseCharacter(45, buffer, 0, v9, &v71))
  {
    v12 = 1;
  }

  else
  {
    v12 = -1;
  }

  figTTMLParseTwoOrMoreDigits(buffer, v71, v9, &v71, &v74 + 1);
  if (v13 || figTTMLParseCharacter(58, buffer, v71, v9, &v71) || (figTTMLParseDigits(2u, buffer, v71, v9, &v71, &v74), v14) || figTTMLParseCharacter(58, buffer, v71, v9, &v71) || (figTTMLParseDigits(2u, buffer, v71, v9, &v71, &v73[8]), v15) || (v16 = v71, figTTMLParseFraction(buffer, v71, v9, &v71, &v72), v17) && (!figTTMLParseCharacter(58, buffer, v16, v9, &v71) || !figTTMLParseCharacter(59, buffer, v16, v9, &v71)) && (figTTMLParseTwoOrMoreDigits(buffer, v71, v9, &v71, &v73[4]), !v26) && !figTTMLParseCharacter(46, buffer, v71, v9, &v71) && (figTTMLParseOneOrMoreDigits(buffer, v71, v9, &v71, v73), v27))
  {
    v20 = 0;
    goto LABEL_36;
  }

  if (v74 >= 0x3C)
  {
    FigTTMLParseTimeExpression_cold_3(&v76);
LABEL_80:
    v20 = 0;
    value = v76.value;
    goto LABEL_20;
  }

  if (*&v73[8] >= 0x3Du)
  {
    FigTTMLParseTimeExpression_cold_2(&v76);
    goto LABEL_80;
  }

  if (*&v73[4] >= *(a1 + 24))
  {
    FigTTMLParseTimeExpression_cold_1(&v76);
    goto LABEL_80;
  }

  v18 = (*&v73[8] + 60 * v74) + 3600 * HIDWORD(v74);
  if (FigCFEqual())
  {
    if (!*v73)
    {
      goto LABEL_18;
    }

LABEL_25:
    v20 = 0;
    value = 0;
    goto LABEL_20;
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      memset(&v76, 0, sizeof(v76));
      v21 = *(a1 + 24);
      time = *(a1 + 28);
      CMTimeMultiply(&v76, &time, v21);
      memset(&time, 0, sizeof(time));
      CMTimeMake(&time, *v73, *(a1 + 144));
      v22 = *(a1 + 24);
      if (v18 && 0xFFFFFFFFFFFFFFFFLL / v18 <= (v22 + 1))
      {
        v50 = 1056;
      }

      else
      {
        v23 = *&v73[4];
        if (FigCFEqual())
        {
          LODWORD(v24) = v74;
          v25 = -2 * ((v24 - floor(v24 / 10.0)) + (54 * HIDWORD(v74)));
        }

        else if (FigCFEqual())
        {
          v25 = -4 * (vcvtmd_u64_f64(vcvtd_n_f64_u32(v74, 1uLL) + v74 / -20.0) + (27 * HIDWORD(v74)));
        }

        else
        {
          v25 = 0;
        }

        if (v76.value < 0x80000000)
        {
          CMTimeMake(&lhs, v23 + v18 * v22 + v25, 1);
          rhs = time;
          CMTimeAdd(&v77, &lhs, &rhs);
          rhs = v77;
          CMTimeMultiplyByRatio(&lhs, &rhs, v76.timescale, v76.value);
          v77 = lhs;
          goto LABEL_19;
        }

        v50 = 1067;
      }

      emitter = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950725, "<<<< FigTTMLParserUtilities >>>>", v50, v3);
    }

    else
    {
      v34 = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, 4294950725, "<<<< FigTTMLParserUtilities >>>>", 1074, v3);
    }

    v20 = 0;
    goto LABEL_20;
  }

  if (!*(a1 + 144))
  {
    goto LABEL_25;
  }

LABEL_18:
  CMTimeMakeWithSeconds(&v77, v72 + v18, 1000);
LABEL_19:
  time = v77;
  CMTimeMultiply(&v76, &time, v12);
  value = 0;
  v77 = v76;
  v68 = v76;
  v20 = v71;
LABEL_20:
  if (!value && v20 == v9)
  {
    goto LABEL_22;
  }

LABEL_36:
  lhs.value = 0;
  LODWORD(v72) = 0;
  rhs.value = 0;
  v77 = **&MEMORY[0x1E6960CC0];
  memset(&v76, 0, sizeof(v76));
  v28 = *(a1 + 24);
  time = *(a1 + 28);
  CMTimeMultiply(&v76, &time, v28);
  figTTMLParseOneOrMoreDigits(buffer, 0, v9, &lhs, &v72);
  if (v29)
  {
    goto LABEL_107;
  }

  v30 = figTTMLParseFraction(buffer, lhs.value, v9, &lhs, &rhs.value);
  v31 = lhs.value;
  if (lhs.value < 0)
  {
    goto LABEL_107;
  }

  if (lhs.value >= v9)
  {
    goto LABEL_107;
  }

  v32 = v65;
  if (v65 <= lhs.value)
  {
    goto LABEL_107;
  }

  if (v62)
  {
    v33 = v62[v64 + lhs.value];
  }

  else if (v63)
  {
    v33 = v63[v64 + lhs.value];
  }

  else
  {
    if (v67 <= lhs.value || (v35 = v66, v66 > lhs.value))
    {
      v36 = lhs.value - 4;
      if (lhs.value < 4uLL)
      {
        v36 = 0;
      }

      if (v36 + 64 < v65)
      {
        v32 = v36 + 64;
      }

      v66 = v36;
      v67 = v32;
      v78.length = v32 - v36;
      v78.location = v64 + v36;
      CFStringGetCharacters(theStringa, v78, buffer);
      v35 = v66;
    }

    v33 = buffer[v31 - v35];
  }

  v37 = v31 + 1;
  if (v33 <= 0x6Cu)
  {
    if (v33 == 102)
    {
      v40 = 0;
      lhs.value = v31 + 1;
      LODWORD(v30) = LODWORD(v72);
      v45 = *&rhs.value + *&v30;
      v41 = 0.0;
      v42 = 0.0;
      v44 = 0.0;
LABEL_96:
      v43 = 0.0;
LABEL_97:
      if (FigCFEqual())
      {
        if (!v40)
        {
          v48 = v42 + v41 * 3600.0 + v44;
LABEL_105:
          CMTimeMakeWithSeconds(&v77, v48, 1000000);
          v68 = v77;
          v20 = lhs.value;
          goto LABEL_106;
        }
      }

      else
      {
        if (!FigCFEqual() && !FigCFEqual())
        {
          fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v52, DWORD2(v52), *buffer);
          if (v49)
          {
            goto LABEL_107;
          }

LABEL_106:
          if (v20 != v9)
          {
            goto LABEL_107;
          }

LABEL_22:
          *a3 = v68;
          return;
        }

        if (!v40)
        {
          time = v76;
          v48 = v42 + v41 * 3600.0 + v44 + v45 / CMTimeGetSeconds(&time);
          goto LABEL_105;
        }
      }

      time = *(a1 + 148);
      v48 = v43 / CMTimeGetSeconds(&time);
      goto LABEL_105;
    }

    if (v33 == 104)
    {
      v40 = 0;
      lhs.value = v31 + 1;
      LODWORD(v30) = LODWORD(v72);
      v41 = *&rhs.value + *&v30;
      v42 = 0.0;
      goto LABEL_94;
    }
  }

  else
  {
    switch(v33)
    {
      case 't':
        lhs.value = v31 + 1;
        LODWORD(v30) = LODWORD(v72);
        v43 = *&rhs.value + *&v30;
        v41 = 0.0;
        v40 = 1;
        v42 = 0.0;
        v44 = 0.0;
        v45 = 0.0;
        goto LABEL_97;
      case 's':
        v40 = 0;
        lhs.value = v31 + 1;
        LODWORD(v30) = LODWORD(v72);
        v44 = *&rhs.value + *&v30;
LABEL_74:
        v41 = 0.0;
        v42 = 0.0;
LABEL_95:
        v45 = 0.0;
        goto LABEL_96;
      case 'm':
        if (v37 < v9)
        {
          v38 = v65;
          if (v65 > v37)
          {
            if (v62)
            {
              v39 = v62[v64 + v37];
            }

            else if (v63)
            {
              v39 = v63[v64 + v37];
            }

            else
            {
              if (v67 <= v37 || (v46 = v66, v66 > v37))
              {
                v47 = v31 - 3;
                if (v31 < 3)
                {
                  v47 = 0;
                }

                if (v47 + 64 < v65)
                {
                  v38 = v47 + 64;
                }

                v66 = v47;
                v67 = v38;
                v79.length = v38 - v47;
                v79.location = v64 + v47;
                CFStringGetCharacters(theStringa, v79, buffer);
                v37 = v31 + 1;
                v46 = v66;
              }

              v39 = buffer[v37 - v46];
            }

            if (v39 == 115)
            {
              v40 = 0;
              lhs.value = v31 + 2;
              LODWORD(v30) = LODWORD(v72);
              v44 = (*&rhs.value + *&v30) / 1000.0;
              goto LABEL_74;
            }
          }
        }

        v40 = 0;
        lhs.value = v37;
        LODWORD(v30) = LODWORD(v72);
        v42 = (*&rhs.value + *&v30) * 60.0;
        v41 = 0.0;
LABEL_94:
        v44 = 0.0;
        goto LABEL_95;
    }
  }

LABEL_107:
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v52, DWORD2(v52), *buffer);
}

uint64_t figTTMLParseOneOrMoreWhitespaces(UniChar *buffer, int64_t a2, uint64_t *a3)
{
  if (!a3)
  {
    figTTMLParseOneOrMoreWhitespaces_cold_2(&v24);
    return v24;
  }

  if (a2 < 0 || (v6 = *(buffer + 20), v6 <= a2))
  {
    v8 = 0;
  }

  else
  {
    v7 = *(buffer + 17);
    if (v7)
    {
      v8 = *(v7 + 2 * *(buffer + 19) + 2 * a2);
    }

    else
    {
      v20 = *(buffer + 18);
      if (v20)
      {
        v8 = *(v20 + *(buffer + 19) + a2);
      }

      else
      {
        if (*(buffer + 22) <= a2 || (v21 = *(buffer + 21), v21 > a2))
        {
          v22 = a2 - 4;
          if (a2 < 4)
          {
            v22 = 0;
          }

          if (v22 + 64 < v6)
          {
            v6 = v22 + 64;
          }

          *(buffer + 21) = v22;
          *(buffer + 22) = v6;
          v26.length = v6 - v22;
          v26.location = *(buffer + 19) + v22;
          CFStringGetCharacters(*(buffer + 16), v26, buffer);
          v21 = *(buffer + 21);
        }

        v8 = buffer[a2 - v21];
      }
    }
  }

  v9 = 0;
  v10 = 2 * a2 + 2;
  while (1)
  {
    v11 = a2 + v9;
    if (v8 > 0x20u || ((1 << v8) & 0x100002600) == 0)
    {
      break;
    }

    if (v11 <= -2 || (v12 = a2 + v9 + 1, v13 = *(buffer + 20), v13 <= v12))
    {
      v8 = 0;
    }

    else
    {
      v14 = *(buffer + 17);
      if (v14)
      {
        v15 = (v14 + 2 * *(buffer + 19) + v10);
LABEL_14:
        v8 = *&v15[2 * v9];
        goto LABEL_16;
      }

      v16 = *(buffer + 18);
      if (!v16)
      {
        if (*(buffer + 22) <= v12 || (v17 = *(buffer + 21), v17 > v12))
        {
          if (v12 >= 4)
          {
            v18 = a2 + v9 - 3;
          }

          else
          {
            v18 = 0;
          }

          if (v18 + 64 < v13)
          {
            v13 = v18 + 64;
          }

          *(buffer + 21) = v18;
          *(buffer + 22) = v13;
          v25.length = v13 - v18;
          v25.location = *(buffer + 19) + v18;
          CFStringGetCharacters(*(buffer + 16), v25, buffer);
          v17 = *(buffer + 21);
        }

        v15 = buffer + v10 + -2 * v17;
        goto LABEL_14;
      }

      v8 = *(v16 + *(buffer + 19) + a2 + v9 + 1);
    }

LABEL_16:
    ++v9;
  }

  if (v9)
  {
    result = 0;
    *a3 = v11;
  }

  else
  {
    figTTMLParseOneOrMoreWhitespaces_cold_1(&v23);
    return v23;
  }

  return result;
}

CFStringRef FigTTMLCopyRGBAColorAsColorSyntax(float32x4_t a1, float32_t a2, float a3, float a4)
{
  v4 = 0;
  LODWORD(v5) = 0;
  a1.f32[1] = a2;
  a1.i64[1] = __PAIR64__(LODWORD(a4), LODWORD(a3));
  v11 = *MEMORY[0x1E69E9840];
  v10 = vcvtq_s32_f32(vmulq_f32(a1, vdupq_n_s32(0x437F0000u)));
  do
  {
    v6 = v10.i32[v4] & ~(v10.i32[v4] >> 31);
    if (v6 >= 255)
    {
      v6 = 255;
    }

    v5 = (v6 | (v5 << 8));
    v10.i32[v4++] = v6;
  }

  while (v4 != 4);
  MEMORY[0x19A8D3660](&initRGBAToNamedColorMap, figTTMLInitRGBAToNamedColorMap);
  Value = CFDictionaryGetValue(sRGBAToNamedColorMap, v5);
  if (!Value)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"rgba(%d,%d,%d,%d)", v10.u32[0], v10.u32[1], v10.u32[2], v10.u32[3]);
  }

  v8 = Value;
  CFRetain(Value);
  return v8;
}

uint64_t FigTTMLParseLength(const __CFString *a1, float *a2, int *a3)
{
  Length = CFStringGetLength(a1);
  v23 = 0;
  v22 = 0;
  v21 = 0.0;
  if (!a1)
  {
    FigTTMLParseLength_cold_4(v24);
    return LODWORD(v24[0]);
  }

  if (!a2)
  {
    FigTTMLParseLength_cold_3(v24);
    return LODWORD(v24[0]);
  }

  if (!a3)
  {
    FigTTMLParseLength_cold_2(v24);
    return LODWORD(v24[0]);
  }

  v7 = Length;
  v25 = a1;
  v28 = 0;
  v29 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v26 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  memset(v24, 0, sizeof(v24));
  v30 = 0;
  v31 = 0;
  v27 = CStringPtr;
  figTTMLParseString("normal", v24, 0, v7, &v23);
  if (!v11)
  {
    v12 = 0;
    v22 = 125;
    v13 = 1.0;
LABEL_8:
    result = 0;
    LODWORD(v10) = v22;
    v15 = (v21 + v10) * v13;
    *a2 = v15;
    *a3 = v12;
    return result;
  }

  if (figTTMLParseCharacter(45, v24, v23, v7, &v23))
  {
    v13 = 1.0;
  }

  else
  {
    v13 = -1.0;
  }

  figTTMLParseOneOrMoreDigits(v24, v23, v7, &v23, &v22);
  figTTMLParseFraction(v24, v23, v7, &v23, &v21);
  figTTMLParseString("%", v24, v23, v7, &v23);
  if (!v16)
  {
    v12 = 0;
    goto LABEL_8;
  }

  figTTMLParseString("px", v24, v23, v7, &v23);
  if (!v17)
  {
    v12 = 1;
    goto LABEL_8;
  }

  figTTMLParseString("em", v24, v23, v7, &v23);
  if (!v18)
  {
    v12 = 2;
    goto LABEL_8;
  }

  figTTMLParseString("c", v24, v23, v7, &v23);
  if (!v19)
  {
    v12 = 3;
    goto LABEL_8;
  }

  figTTMLParseString("rh", v24, v23, v7, &v23);
  if (!v20)
  {
    v12 = 5;
    goto LABEL_8;
  }

  if (FigTTMLParseLength_cold_1(&v23, v24, v7, &v32))
  {
    v12 = 4;
    goto LABEL_8;
  }

  return v32;
}

uint64_t FigTTMLParseTextEmphasisSyntaxAndCreateCaptionTextEmphasis(const __CFString *a1, CFTypeRef *a2)
{
  if (!a1)
  {
    FigTTMLParseTextEmphasisSyntaxAndCreateCaptionTextEmphasis_cold_3(&v20);
    return v20;
  }

  if (!a2)
  {
    FigTTMLParseTextEmphasisSyntaxAndCreateCaptionTextEmphasis_cold_2(&v20);
    return v20;
  }

  v4 = FigTTMLCFStringArrayCreateWithNMTOKENS(a1);
  v5 = v4;
  if (!v4 || CFArrayGetCount(v4) < 1)
  {
    FigTTMLParseTextEmphasisSyntaxAndCreateCaptionTextEmphasis_cold_1(&v20);
    v16 = v20;
    goto LABEL_42;
  }

  v19 = a2;
  v6 = 0;
  v7 = 0;
  v8 = 1;
  v9 = 1;
  while (1)
  {
    if (v9)
    {
      if (CFArrayGetCount(v5) <= v7)
      {
        v8 = 2;
      }

      else
      {
        MEMORY[0x19A8D3660](&initTextEmphasisParseMapOnce, figTTMLInitTextEmphasisParseMap);
        v20 = 1;
        CFArrayGetValueAtIndex(v5, v7);
        Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
        v8 = 1;
        if (Int32IfPresent)
        {
          ++v7;
        }

        else
        {
          v8 = 13;
        }
      }
    }

    if (v6 > 3)
    {
      break;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v11 = 1;
        v9 = 0;
        v12 = 3;
      }

      else
      {
        v9 = 0;
        v11 = 1;
        v12 = 4;
      }
    }

    else
    {
      v9 = 0;
      v11 = 1;
      if (v6)
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }
    }

LABEL_28:
    v13 = v8 == 13;
    if (v11 && v13)
    {
      v6 = 8;
    }

    else
    {
      v6 = v12;
    }

    if (v11 && v13)
    {
      v9 = 0;
    }
  }

  if (v6 <= 5)
  {
    if (v6 == 4)
    {
      v9 = 0;
      v11 = 1;
      v12 = 5;
    }

    else
    {
      v11 = 1;
      v9 = 0;
      v12 = 6;
    }

    goto LABEL_28;
  }

  if (v6 == 6)
  {
    v9 = 0;
    v11 = v8 == 2;
    if (v8 == 2)
    {
      v12 = 7;
    }

    else
    {
      v12 = 8;
    }

    goto LABEL_28;
  }

  v14 = v8 == 13 && v6 == 7;
  if ((v14 || v6 == 8) && (fig_log_get_emitter(), FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v2, a2), v15) || (v15 = FigCaptionTextEmphasisCreate(), v15))
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
    *v19 = 0;
  }

LABEL_42:
  if (v5)
  {
    CFRelease(v5);
  }

  return v16;
}

uint64_t FigTTMLParseTextShadowSyntaxAndCreateCaptionTextShadowList(const __CFString *a1, CFTypeRef *a2)
{
  v51 = 0;
  v52 = 0;
  v49[1] = 0;
  v50 = 0;
  cf = 0;
  v49[0] = 0;
  if (!a1)
  {
    FigTTMLParseTextShadowSyntaxAndCreateCaptionTextShadowList_cold_6(&v53);
LABEL_124:
    v9 = 0;
    v5 = 0;
    goto LABEL_118;
  }

  v3 = a2;
  if (!a2)
  {
    FigTTMLParseTextShadowSyntaxAndCreateCaptionTextShadowList_cold_5(&v53);
    goto LABEL_124;
  }

  v4 = FigTTMLCFStringArrayCreateWithNMTOKENS(a1);
  v5 = v4;
  if (!v4 || (Count = CFArrayGetCount(v4), Count <= 0))
  {
    FigTTMLParseTextShadowSyntaxAndCreateCaptionTextShadowList_cold_4(&v53);
    v9 = 0;
LABEL_118:
    v8 = 0;
    v26 = v53;
    goto LABEL_104;
  }

  if (Count == 1)
  {
    NextToken = figTTMLTextShadowParseGetNextToken(v5, 0, &v53, 0, 0);
    if (NextToken == 3)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
LABEL_100:
      None = FigCaptionTextShadowListCreateNone();
      if (None)
      {
LABEL_121:
        v26 = None;
      }

      else
      {
LABEL_101:
        v26 = 0;
        *v3 = v52;
        v52 = 0;
      }

      if (v10)
      {
LABEL_103:
        CFRelease(v10);
      }

      goto LABEL_104;
    }
  }

  else
  {
    NextToken = 1;
  }

  v42 = NextToken;
  v41 = v3;
  v11 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v43 = v5;
  if (Mutable)
  {
    v44 = CFArrayGetCount(v5);
    if (v44 >= 1)
    {
      v13 = 0;
      for (i = 0; i != v44; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
        Length = CFStringGetLength(ValueAtIndex);
        v60.location = 0;
        v60.length = Length;
        Results = CFStringCreateArrayWithFindResults(v11, ValueAtIndex, @",", v60, 0);
        if (Results)
        {
          v18 = Results;
          v45 = Length;
          allocator = i;
          v19 = v11;
          if (CFArrayGetCount(Results) < 1)
          {
            v21 = 0;
          }

          else
          {
            v20 = 0;
            v21 = 0;
            do
            {
              v22 = CFArrayGetValueAtIndex(v18, v20);
              v23 = *v22;
              v24 = v22[1];
              v25 = *v22 - v21;
              if (v25 >= 1)
              {
                if (v13)
                {
                  CFRelease(v13);
                }

                v57.location = v21;
                v57.length = v25;
                v13 = CFStringCreateWithSubstring(v19, ValueAtIndex, v57);
                CFArrayAppendValue(Mutable, v13);
              }

              if (v24 >= 1)
              {
                if (v13)
                {
                  CFRelease(v13);
                }

                v58.location = v23;
                v58.length = v24;
                v13 = CFStringCreateWithSubstring(v19, ValueAtIndex, v58);
                CFArrayAppendValue(Mutable, v13);
              }

              v21 = v24 + v23;
              ++v20;
            }

            while (v20 < CFArrayGetCount(v18));
          }

          v11 = v19;
          if (v45 > v21)
          {
            if (v13)
            {
              CFRelease(v13);
            }

            v59.location = v21;
            v59.length = v45 - v21;
            v13 = CFStringCreateWithSubstring(v19, ValueAtIndex, v59);
            CFArrayAppendValue(Mutable, v13);
          }

          i = allocator;
          CFRelease(v18);
          v5 = v43;
        }

        else
        {
          CFArrayAppendValue(Mutable, ValueAtIndex);
        }
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }
  }

  else
  {
    FigTTMLParseTextShadowSyntaxAndCreateCaptionTextShadowList_cold_1();
  }

  v8 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
  if (!v8)
  {
    FigTTMLParseTextShadowSyntaxAndCreateCaptionTextShadowList_cold_2(&v53);
    v26 = v53;
    if (!Mutable)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v56 = 0;
  v53 = CFGetAllocator(v5);
  theArray = v8;
  value = 0;
  FigCFArrayApplyFunction();
  if (value)
  {
    CFArrayAppendValue(theArray, value);
    if (value)
    {
      CFRelease(value);
      v26 = 0;
      value = 0;
      if (!Mutable)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }
  }

  v26 = 0;
  if (Mutable)
  {
LABEL_41:
    CFRelease(Mutable);
  }

LABEL_42:
  if (!v26)
  {
    allocatora = v11;
    v10 = 0;
    v9 = 0;
    v27 = 1;
    v28 = v42;
    while (1)
    {
      if (v27)
      {
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        v28 = figTTMLTextShadowParseGetNextToken(v8, v50, &v50, v49, &cf);
      }

      v29 = 1;
      v30 = 0;
      v31 = 1;
      switch(v26)
      {
        case 1:
          v30 = 0;
          v31 = 2;
          goto LABEL_83;
        case 2:
          v32 = v28 == 3;
          v30 = v28 == 3;
          v31 = 3;
          v33 = 6;
          goto LABEL_68;
        case 3:
          v30 = 0;
          v31 = 4;
          goto LABEL_83;
        case 4:
          v30 = 0;
          v31 = 6;
          goto LABEL_83;
        case 5:
          if ((v28 | 4) != 6)
          {
            goto LABEL_82;
          }

          if (!v10)
          {
            v10 = CFArrayCreateMutable(allocatora, 0, MEMORY[0x1E695E9C0]);
            if (!v10)
            {
              FigTTMLParseTextShadowSyntaxAndCreateCaptionTextShadowList_cold_3(&v53);
              v26 = v53;
              goto LABEL_129;
            }
          }

          v40 = &v51;
          v34 = FigCaptionTextShadowCreate();
          if (v34)
          {
            v26 = v34;
            v5 = v43;
            goto LABEL_103;
          }

          CFArrayAppendValue(v10, v51);
          if (v51)
          {
            CFRelease(v51);
            v51 = 0;
          }

          if (v9)
          {
            CFRelease(v9);
          }

          v9 = 0;
          v32 = v28 == 6;
          v30 = v28 == 6;
          v31 = 10;
          v33 = 4;
LABEL_68:
          if (v32)
          {
            v31 = v33;
          }

          goto LABEL_70;
        case 6:
          if (v28 != 4)
          {
            goto LABEL_82;
          }

          v31 = 7;
          v30 = 1;
          goto LABEL_83;
        case 7:
          if (v28 != 4)
          {
            goto LABEL_82;
          }

          v31 = 8;
          v30 = 1;
          goto LABEL_83;
        case 8:
          v30 = 0;
          v31 = 5;
          if (v28 <= 4)
          {
            if (v28 == 2)
            {
              goto LABEL_83;
            }

            if (v28 == 4)
            {
              v31 = 9;
              v30 = 1;
              goto LABEL_70;
            }

LABEL_82:
            v30 = 0;
            v29 = 0;
            v31 = 12;
            goto LABEL_83;
          }

          if (v28 != 5)
          {
            if (v28 == 6)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          }

LABEL_86:
          if (cf)
          {
            v9 = CFRetain(cf);
            v31 = 5;
            v30 = 1;
LABEL_70:
            v29 = 1;
          }

          else
          {
            v9 = 0;
            v30 = 1;
          }

LABEL_83:
          v35 = v29 && v28 == 7;
          v27 = (v35 ^ 1) & v30;
          if (v35)
          {
            LODWORD(v26) = 12;
          }

          else
          {
            LODWORD(v26) = v31;
          }

          break;
        case 9:
          v30 = 0;
          v31 = 5;
          if (v28 == 2 || v28 == 6)
          {
            goto LABEL_83;
          }

          if (v28 == 5)
          {
            goto LABEL_86;
          }

          goto LABEL_82;
        case 10:
          v30 = 0;
          v29 = v28 == 2;
          if (v28 == 2)
          {
            v31 = 11;
          }

          else
          {
            v31 = 12;
          }

          goto LABEL_83;
        case 11:
          v36 = 1;
          goto LABEL_91;
        case 12:
          v36 = 0;
LABEL_91:
          if (v28 != 7)
          {
            v36 = 0;
          }

          v5 = v43;
          v3 = v41;
          if ((v36 & 1) != 0 || v26 == 12)
          {
            fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, v2, v41);
            if (None)
            {
              goto LABEL_121;
            }
          }

          if (!v10 || !CFArrayGetCount(v10))
          {
            goto LABEL_100;
          }

          v38 = FigCaptionTextShadowListCreate();
          if (!v38)
          {
            goto LABEL_101;
          }

          v26 = v38;
          goto LABEL_103;
        default:
          goto LABEL_83;
      }
    }
  }

  v9 = 0;
LABEL_129:
  v5 = v43;
LABEL_104:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  return v26;
}

uint64_t figTTMLTextShadowParseGetNextToken(CFArrayRef theArray, CFIndex a2, CFIndex *a3, uint64_t *a4, void *a5)
{
  v9 = theArray;
  if (theArray)
  {
    theArray = CFArrayGetCount(theArray);
  }

  v10 = *MEMORY[0x1E6962810];
  v11 = *(MEMORY[0x1E6962810] + 8);
  if (theArray <= a2)
  {
    CGColorSRGB = 0;
    v14 = 2;
  }

  else
  {
    MEMORY[0x19A8D3660](&initTextShadowParseMapOnce, figTTMLInitTextShadowParseMap);
    v21 = 1;
    ValueAtIndex = CFArrayGetValueAtIndex(v9, a2);
    if (FigCFDictionaryGetInt32IfPresent())
    {
      CGColorSRGB = 0;
      v14 = v21;
      ++a2;
    }

    else
    {
      v10 = FigTTMLParseLengthSyntax(ValueAtIndex);
      v11 = v15;
      if ((v15 & 0x100000000) != 0)
      {
        CGColorSRGB = 0;
        ++a2;
        v14 = 4;
      }

      else
      {
        v20 = 0;
        v19 = 0;
        v18 = 0;
        FigTTMLParseColor(ValueAtIndex, &v20, &v19 + 1, &v19, &v18);
        if (v17)
        {
          CGColorSRGB = 0;
          v14 = 7;
        }

        else
        {
          CGColorSRGB = FigCreateCGColorSRGB();
          ++a2;
          v14 = 5;
        }
      }
    }
  }

  *a3 = a2;
  if (a4)
  {
    *a4 = v10;
    a4[1] = v11;
  }

  if (a5)
  {
    *a5 = CGColorSRGB;
  }

  else if (CGColorSRGB)
  {
    CFRelease(CGColorSRGB);
  }

  return v14;
}

uint64_t FigTTMLParseRubyReserveSyntaxAndCreateCaptionRubyReserve(const __CFString *a1, CFTypeRef *a2)
{
  cf = 0;
  if (!a1)
  {
    FigTTMLParseRubyReserveSyntaxAndCreateCaptionRubyReserve_cold_6(v16);
    return v16[0];
  }

  if (!a2)
  {
    FigTTMLParseRubyReserveSyntaxAndCreateCaptionRubyReserve_cold_5(v16);
    return v16[0];
  }

  v3 = FigTTMLCFStringArrayCreateWithNMTOKENS(a1);
  v4 = v3;
  if (!v3 || (Count = CFArrayGetCount(v3), (Count - 3) < 0xFFFFFFFFFFFFFFFELL))
  {
    CaptionRubyReserve_cold_4 = FigTTMLParseRubyReserveSyntaxAndCreateCaptionRubyReserve_cold_4(v4 == 0, v16);
    v10 = v16[0];
    if (CaptionRubyReserve_cold_4)
    {
      return v10;
    }

    goto LABEL_10;
  }

  v6 = Count;
  ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);
  if (ValueAtIndex)
  {
    v8 = ValueAtIndex;
    if (!CFEqual(ValueAtIndex, @"none"))
    {
      if (!CFEqual(v8, @"before") && !CFEqual(v8, @"after") && !CFEqual(v8, @"outside") && !CFEqual(v8, @"both"))
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v15, v16[1]);
      }

      if (v6 == 2)
      {
        v13 = CFArrayGetValueAtIndex(v4, 1);
        if (!v13)
        {
          FigTTMLParseRubyReserveSyntaxAndCreateCaptionRubyReserve_cold_2(v16);
          goto LABEL_32;
        }

        FigTTMLParseLengthSyntax(v13);
      }

      None = FigCaptionRubyReserveCreate();
      if (!None)
      {
        goto LABEL_9;
      }

LABEL_25:
      v10 = None;
      goto LABEL_10;
    }

    if (v6 == 1)
    {
      None = FigCaptionRubyReserveCreateNone();
      if (!None)
      {
LABEL_9:
        v10 = 0;
        *a2 = cf;
        cf = 0;
        goto LABEL_10;
      }

      goto LABEL_25;
    }

    FigTTMLParseRubyReserveSyntaxAndCreateCaptionRubyReserve_cold_1(v16);
  }

  else
  {
    FigTTMLParseRubyReserveSyntaxAndCreateCaptionRubyReserve_cold_3(v16);
  }

LABEL_32:
  v10 = v16[0];
LABEL_10:
  CFRelease(v4);
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t FigTTMLNodeGetParameters(uint64_t ParentNode, void *a2)
{
  do
  {
    v3 = ParentNode;
    ParentNode = FigTTMLNodeGetParentNode(ParentNode);
  }

  while (ParentNode);

  return FigTTMLRootGetParameters(v3, a2);
}

uint64_t FigTTMLNodeUseDefaultWhitespaceHandling(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  ParentNode = a1;
  while (1)
  {
    value = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (CFDictionaryGetValueIfPresent(*(DerivedStorage + 24), @"http://www.w3.org/XML/1998/namespace space", &value))
    {
      if (CFEqual(value, @"default"))
      {
        return 1;
      }

      if (CFEqual(value, @"preserve"))
      {
        break;
      }
    }

    ParentNode = FigTTMLNodeGetParentNode(ParentNode);
    if (!ParentNode)
    {
      return 1;
    }
  }

  return 0;
}

__CFString *FigTTMLCopyStringWithDefaultWhitespaceHandling(const __CFString *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  Length = CFStringGetLength(a1);
  v36 = a1;
  v39 = 0;
  v40 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v37 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v38 = CStringPtr;
  v41 = 0;
  v42 = 0;
  if (Length >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = 64;
    *buffer = 0u;
    v29 = 0u;
    while (1)
    {
      if (v8 >= 4)
      {
        v11 = 4;
      }

      else
      {
        v11 = v8;
      }

      v12 = v40;
      if (v40 <= v8)
      {
        chars = 0;
        goto LABEL_13;
      }

      if (v37)
      {
        break;
      }

      if (!v38)
      {
        v18 = v41;
        if (v42 <= v8 || v41 > v8)
        {
          v20 = -v11;
          v21 = v11 + v7;
          v22 = v10 - v11;
          v23 = v8 + v20;
          v24 = v23 + 64;
          if (v23 + 64 >= v40)
          {
            v24 = v40;
          }

          v41 = v23;
          v42 = v24;
          if (v40 >= v22)
          {
            v12 = v22;
          }

          v43.location = v23 + v39;
          v43.length = v12 + v21;
          CFStringGetCharacters(v36, v43, buffer);
          v18 = v41;
        }

        v13 = &buffer[-v18];
        goto LABEL_11;
      }

      v14 = v38[v39 + v8];
LABEL_16:
      chars = v14;
      v15 = v14;
      v16 = (1 << v14) & 0x100002600;
      if (v15 <= 0x20 && v16 != 0)
      {
        if (v9)
        {
          v9 = 1;
        }

        else
        {
          v26 = 32;
          v9 = 1;
          CFStringAppendCharacters(Mutable, &v26, 1);
        }

        goto LABEL_23;
      }

LABEL_13:
      CFStringAppendCharacters(Mutable, &chars, 1);
      v9 = 0;
LABEL_23:
      ++v8;
      --v7;
      ++v10;
      if (Length == v8)
      {
        return Mutable;
      }
    }

    v13 = &v37[v39];
LABEL_11:
    v14 = v13[v8];
    goto LABEL_16;
  }

  return Mutable;
}

uint64_t FigTTMLParsePixelResolution(const __CFString *a1, _DWORD *a2, _DWORD *a3)
{
  v5 = FigTTMLCFStringArrayCreateWithNMTOKENS(a1);
  v6 = v5;
  if (!v5 || CFArrayGetCount(v5) != 2)
  {
    v16 = FigTTMLParsePixelResolution_cold_5(v6 == 0, &v17);
    v14 = v17;
    if (v16)
    {
      return v14;
    }

    goto LABEL_8;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
  v8 = COERCE_DOUBLE(FigTTMLParseLengthSyntax(ValueAtIndex));
  v10 = v9;
  v11 = CFArrayGetValueAtIndex(v6, 1);
  v12 = COERCE_DOUBLE(FigTTMLParseLengthSyntax(v11));
  if ((v10 & 0x100000000) == 0)
  {
    FigTTMLParsePixelResolution_cold_4(&v17);
LABEL_16:
    v14 = v17;
    goto LABEL_8;
  }

  if (v10 != 1886920736)
  {
    FigTTMLParsePixelResolution_cold_1(&v17);
    goto LABEL_16;
  }

  if ((v13 & 0x100000000) == 0)
  {
    FigTTMLParsePixelResolution_cold_3(&v17);
    goto LABEL_16;
  }

  if (v13 != 1886920736)
  {
    FigTTMLParsePixelResolution_cold_2(&v17);
    goto LABEL_16;
  }

  v14 = 0;
  *a2 = v8;
  *a3 = v12;
LABEL_8:
  CFRelease(v6);
  return v14;
}

uint64_t FigTTMLParsePositionSyntaxAndCreateCaptionPosition(const __CFString *a1, void *a2)
{
  v64 = 0;
  if (!a1)
  {
    FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_21(&v65);
    return v65;
  }

  if (!a2)
  {
    FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_20(&v65);
    return v65;
  }

  v4 = FigTTMLCFStringArrayCreateWithNMTOKENS(a1);
  v5 = v4;
  if (v4 && (Count = CFArrayGetCount(v4), (Count - 5) > 0xFFFFFFFFFFFFFFFBLL))
  {
    v7 = Count;
    v52 = v2;
    v54 = a2;
    v8 = 0;
    v9 = (&v60 + 4);
    v10 = &v60;
    v58 = *MEMORY[0x1E6962808];
    v59 = v58;
    *&v11 = 0x200000002;
    *(&v11 + 1) = 0x200000002;
    v56 = v58;
    v57 = v58;
    v55 = v11;
    v60 = 0;
    v61 = v58;
    v53 = v58;
    v62 = v58;
    v12 = &v56 + 1;
    do
    {
      NextToken = figTTMLPositionParseGetNextToken(v5, v8, &v65);
      if (NextToken == 8)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
        *(v12 - 1) = FigTTMLParseLengthSyntax(ValueAtIndex);
        *v12 = v15;
      }

      *(&v55 + v8++) = NextToken;
      v12 += 2;
    }

    while (v7 != v8);
    v63 = v7;
    if (figTTMLPositionParseGetNextToken(v5, v7, &v63) == 2)
    {
      if (v7 <= 2)
      {
        if (v7 != 1)
        {
          if (v7 != 2)
          {
            goto LABEL_185;
          }

          if (v55 > 5)
          {
            if (v55 == 6)
            {
              v16 = 0;
              v17 = 1651471476;
LABEL_81:
              v60.i32[1] = v17;
              v37 = 1;
              v25 = 1;
LABEL_87:
              if (SDWORD1(v55) > 4)
              {
                switch(DWORD1(v55))
                {
                  case 5:
                    if (v16)
                    {
                      v39 = 1953460256;
                      goto LABEL_106;
                    }

                    break;
                  case 6:
                    if (v16)
                    {
                      v39 = 1651471476;
LABEL_106:
                      v60.i32[1] = v39;
                      if ((v37 & 1) == 0)
                      {
                        goto LABEL_107;
                      }

LABEL_185:
                      v27 = FigCaptionPositionCreate();
                      *v54 = v64;
                      v64 = 0;
                      goto LABEL_186;
                    }

                    break;
                  case 7:
                    if ((v37 & 1) == 0)
                    {
                      v60 = vdup_n_s32(0x63656E74u);
                      goto LABEL_185;
                    }

                    v21 = 1667591796;
                    if (v25)
                    {
                      goto LABEL_116;
                    }

                    goto LABEL_111;
                  default:
                    break;
                }

LABEL_194:
                if (FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_2())
                {
                  goto LABEL_185;
                }

                goto LABEL_195;
              }

              if (DWORD1(v55) == 3)
              {
                if (!v25)
                {
                  goto LABEL_194;
                }

                v38 = 1818584692;
              }

              else
              {
                if (DWORD1(v55) != 4 || !v25)
                {
                  goto LABEL_194;
                }

                v38 = 1919510376;
              }

              v60.i32[0] = v38;
              if (v37)
              {
                goto LABEL_185;
              }

              v21 = 1667591796;
LABEL_111:
              v60.i32[1] = v21;
              goto LABEL_185;
            }

            if (v55 == 7)
            {
              v37 = 0;
              v25 = 1;
              goto LABEL_86;
            }

            if (v55 != 8)
            {
              goto LABEL_194;
            }

            v25 = 0;
            v61 = v56;
          }

          else
          {
            switch(v55)
            {
              case 3:
                v25 = 0;
                v36 = 1818584692;
                break;
              case 4:
                v25 = 0;
                v36 = 1919510376;
                break;
              case 5:
                v16 = 0;
                v17 = 1953460256;
                goto LABEL_81;
              default:
                goto LABEL_194;
            }

            v60.i32[0] = v36;
          }

          v37 = 1;
LABEL_86:
          v16 = 1;
          goto LABEL_87;
        }

        if (v55 <= 5)
        {
          switch(v55)
          {
            case 3:
              v21 = 1818584692;
              goto LABEL_116;
            case 4:
              v21 = 1919510376;
              goto LABEL_116;
            case 5:
              v21 = 1953460256;
              goto LABEL_111;
          }

LABEL_41:
          fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v51, v2, v53);
          if (v26)
          {
            v27 = v26;
            if (!v5)
            {
              return v27;
            }

            goto LABEL_187;
          }

          goto LABEL_185;
        }

        if (v55 == 6)
        {
          v21 = 1651471476;
          goto LABEL_111;
        }

        if (v55 != 8)
        {
          if (v55 == 7)
          {
LABEL_107:
            v21 = 1667591796;
LABEL_116:
            v60.i32[0] = v21;
            goto LABEL_185;
          }

          goto LABEL_41;
        }

        v35 = v56;
LABEL_133:
        v61 = v35;
        goto LABEL_185;
      }

      if (v7 != 3)
      {
        if (v7 != 4)
        {
          goto LABEL_185;
        }

        if (v55 < 5)
        {
          if (v55 == 3)
          {
            v19 = 0;
            v18 = 1;
            v20 = 1818584692;
          }

          else
          {
            if (v55 != 4)
            {
              goto LABEL_184;
            }

            v19 = 0;
            v18 = 1;
            v20 = 1919510376;
          }

          v31 = &v60;
        }

        else
        {
          if (v55 <= 5)
          {
            v18 = 0;
            v19 = 1;
            v20 = 1953460256;
          }

          else
          {
            if (v55 != 6)
            {
              goto LABEL_184;
            }

            v18 = 0;
            v19 = 1;
            v20 = 1651471476;
          }

          v31 = (&v60 + 4);
        }

        v31->i32[0] = v20;
        if (DWORD1(v55) == 8)
        {
          if (SDWORD2(v55) < 5)
          {
            if (DWORD2(v55) == 3)
            {
              if ((v19 & 1) == 0)
              {
                goto LABEL_184;
              }

              v32 = 0;
              v33 = 1818584692;
            }

            else
            {
              if (DWORD2(v55) != 4 || (v19 & 1) == 0)
              {
                goto LABEL_184;
              }

              v32 = 0;
              v33 = 1919510376;
            }

            v9 = &v60;
          }

          else if (SDWORD2(v55) <= 5)
          {
            if ((v18 & 1) == 0)
            {
              goto LABEL_184;
            }

            v32 = 1;
            v33 = 1953460256;
          }

          else
          {
            if (DWORD2(v55) != 6)
            {
              goto LABEL_184;
            }

            v32 = 1;
            v33 = 1651471476;
          }

          v9->i32[0] = v33;
          if (HIDWORD(v55) == 8)
          {
            if (v19)
            {
              v34 = &v62;
            }

            else
            {
              v34 = &v61;
            }

            *v34 = v57;
            if (v32)
            {
              v62 = v59;
              goto LABEL_185;
            }

            v35 = v59;
            goto LABEL_133;
          }
        }

LABEL_184:
        if (FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_2())
        {
          goto LABEL_185;
        }

        goto LABEL_195;
      }

      v22 = 0;
      v65 = v53;
      v23 = 1;
      if (v55 > 5)
      {
        if (v55 == 6)
        {
          v23 = 0;
          v22 = 1;
          v24 = 1651471476;
          goto LABEL_113;
        }

        v28 = 1;
        if (v55 == 7)
        {
          goto LABEL_119;
        }

        if (v55 == 8)
        {
          emitter = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950725, "<<<< FigTTMLParserUtilities >>>>", 4020, v2);
          goto LABEL_170;
        }
      }

      else
      {
        switch(v55)
        {
          case 3:
            v24 = 1818584692;
LABEL_118:
            v28 = v23;
            v23 = v22;
            v10->i32[0] = v24;
            LOBYTE(v22) = 1;
LABEL_119:
            if (SDWORD2(v55) <= 5)
            {
              switch(DWORD2(v55))
              {
                case 3:
                  if ((v23 & 1) == 0)
                  {
                    FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_6(v66);
                    goto LABEL_215;
                  }

                  v42 = 1818584692;
                  break;
                case 4:
                  if ((v23 & 1) == 0)
                  {
                    FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_5(v66);
                    goto LABEL_215;
                  }

                  v42 = 1919510376;
                  break;
                case 5:
                  if ((v28 & 1) == 0)
                  {
                    FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_4(v66);
                    goto LABEL_215;
                  }

                  v41 = 1953460256;
                  goto LABEL_138;
                default:
                  goto LABEL_141;
              }

              v60.i32[0] = v42;
              v27 = 0;
              if ((v22 & 1) == 0)
              {
                v60.i32[1] = 1667591796;
              }

              v44 = 1;
              v45 = &v61;
              goto LABEL_150;
            }

            switch(DWORD2(v55))
            {
              case 6:
                if ((v28 & 1) == 0)
                {
                  FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_3(v66);
                  goto LABEL_215;
                }

                v41 = 1651471476;
LABEL_138:
                v60.i32[1] = v41;
                if (v22)
                {
                  goto LABEL_139;
                }

                goto LABEL_140;
              case 8:
                v27 = 0;
                v44 = 0;
                v65 = v58;
                goto LABEL_149;
              case 7:
                if ((v22 & 1) == 0)
                {
                  FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_7(v66);
                  goto LABEL_215;
                }

                if (!v23)
                {
                  if (v28)
                  {
                    v27 = 0;
                    v60.i32[1] = 1667591796;
LABEL_142:
                    v44 = 1;
LABEL_149:
                    v45 = &v62;
LABEL_150:
                    if (SDWORD1(v55) <= 5)
                    {
                      switch(DWORD1(v55))
                      {
                        case 3:
                          if ((v23 & 1) == 0)
                          {
                            FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_16(v66);
                            goto LABEL_215;
                          }

                          if (v44)
                          {
                            FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_17(v66);
                            goto LABEL_215;
                          }

                          v48 = 1818584692;
                          break;
                        case 4:
                          if ((v23 & 1) == 0)
                          {
                            FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_14(v66);
                            goto LABEL_215;
                          }

                          if (v44)
                          {
                            FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_15(v66);
                            goto LABEL_215;
                          }

                          v48 = 1919510376;
                          break;
                        case 5:
                          if (v28)
                          {
                            if (!v44)
                            {
                              v46 = 1953460256;
                              goto LABEL_167;
                            }

                            FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_13(v66);
                          }

                          else
                          {
                            FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_12(v66);
                          }

                          goto LABEL_215;
                        default:
LABEL_169:
                          v49 = fig_log_get_emitter();
                          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v49, 4294950725, "<<<< FigTTMLParserUtilities >>>>", 4189, v52);
                          goto LABEL_170;
                      }

                      v60.i32[0] = v48;
                      *v45 = v65;
                      if ((v22 & 1) == 0)
                      {
                        v60.i32[1] = 1667591796;
                      }

LABEL_171:
                      if (v27)
                      {
LABEL_186:
                        if (!v5)
                        {
                          return v27;
                        }

                        goto LABEL_187;
                      }

                      goto LABEL_185;
                    }

                    if (DWORD1(v55) == 6)
                    {
                      if (v28)
                      {
                        if (!v44)
                        {
                          v46 = 1651471476;
LABEL_167:
                          v60.i32[1] = v46;
                          *v45 = v65;
                          if ((v22 & 1) == 0)
                          {
                            v60.i32[0] = 1667591796;
                          }

                          goto LABEL_171;
                        }

                        FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_11(v66);
                      }

                      else
                      {
                        FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_10(v66);
                      }

LABEL_215:
                      v27 = v66[0];
                      goto LABEL_171;
                    }

                    if (DWORD1(v55) == 8)
                    {
                      if (v44)
                      {
                        if (v22)
                        {
                          if (v23)
                          {
                            v62 = v57;
                          }

                          else
                          {
                            v61 = v57;
                          }

                          goto LABEL_171;
                        }

                        FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_9(v66);
                      }

                      else
                      {
                        FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_8(v66);
                      }

                      goto LABEL_215;
                    }

                    if (DWORD1(v55) != 7)
                    {
                      goto LABEL_169;
                    }

                    v47 = fig_log_get_emitter();
                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v47, 4294950725, "<<<< FigTTMLParserUtilities >>>>", 4104, v52);
LABEL_170:
                    v27 = v30;
                    goto LABEL_171;
                  }

LABEL_139:
                  v27 = 0;
                  goto LABEL_142;
                }

LABEL_140:
                v27 = 0;
                v60.i32[0] = 1667591796;
                goto LABEL_142;
            }

LABEL_141:
            fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v51, v2, v53);
            v27 = v43;
            goto LABEL_142;
          case 4:
            v22 = 0;
            v24 = 1919510376;
            goto LABEL_118;
          case 5:
            v23 = 0;
            v22 = 1;
            v24 = 1953460256;
LABEL_113:
            v10 = (&v60 + 4);
            goto LABEL_118;
        }
      }

      v40 = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, 4294950725, "<<<< FigTTMLParserUtilities >>>>", 4035, v2);
      goto LABEL_170;
    }

    FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_1(&v65);
  }

  else
  {
    FigTTMLParsePositionSyntaxAndCreateCaptionPosition_cold_19(&v65);
  }

LABEL_195:
  v27 = v65;
  if (!v5)
  {
    return v27;
  }

LABEL_187:
  CFRelease(v5);
  if (v64)
  {
    CFRelease(v64);
  }

  return v27;
}

uint64_t figTTMLPositionParseGetNextToken(CFArrayRef theArray, CFIndex a2, CFIndex *a3)
{
  v5 = theArray;
  if (theArray)
  {
    theArray = CFArrayGetCount(theArray);
  }

  if (theArray <= a2)
  {
    result = 2;
  }

  else
  {
    MEMORY[0x19A8D3660](&initPositionParseMapOnce, figTTMLInitPositionParseMap);
    ValueAtIndex = CFArrayGetValueAtIndex(v5, a2);
    if (FigCFDictionaryGetInt32IfPresent())
    {
      result = 1;
      ++a2;
    }

    else
    {
      FigTTMLParseLengthSyntax(ValueAtIndex);
      if ((v8 & 0x100000000) != 0)
      {
        result = 8;
      }

      else
      {
        result = 9;
      }
    }
  }

  *a3 = a2;
  return result;
}

uint64_t figTTMLInitNamedColorToRGBAMap()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  result = FigCFDictionarySetInt32();
  sNamedColorToRGBAMap = Mutable;
  return result;
}

void figTTMLInitRGBAToNamedColorMap()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, 0, @"transparent");
  CFDictionarySetValue(Mutable, 0xFF, @"black");
  CFDictionarySetValue(Mutable, 0xC0C0C0FFLL, @"silver");
  CFDictionarySetValue(Mutable, 0x808080FFLL, @"gray");
  CFDictionarySetValue(Mutable, 0xFFFFFFFFLL, @"white");
  CFDictionarySetValue(Mutable, 0x8000FFFFLL, @"maroon");
  CFDictionarySetValue(Mutable, 0xFF0000FFLL, @"red");
  CFDictionarySetValue(Mutable, 0x800080FFLL, @"purple");
  CFDictionarySetValue(Mutable, 0xFF00FFFFLL, @"magenta");
  CFDictionarySetValue(Mutable, 0x8000FF, @"green");
  CFDictionarySetValue(Mutable, 0xFF00FF, @"lime");
  CFDictionarySetValue(Mutable, 0x808000FFLL, @"olive");
  CFDictionarySetValue(Mutable, 0xFFFF00FFLL, @"yellow");
  CFDictionarySetValue(Mutable, 0x80FF, @"navy");
  CFDictionarySetValue(Mutable, 0xFFFF, @"blue");
  CFDictionarySetValue(Mutable, 0x8080FF, @"teal");
  CFDictionarySetValue(Mutable, 0xFFFFFF, @"aqua");
  sRGBAToNamedColorMap = Mutable;
}

uint64_t figTTMLCopyEscapedCharactersUntil(uint64_t a1, uint64_t a2, int64_t a3, int64_t a4, int64_t *a5, __CFString **a6)
{
  v9 = a3;
  v11 = a1;
  v25 = a3;
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  while (1)
  {
    while (1)
    {
      if (v9 >= a4)
      {
        goto LABEL_24;
      }

      if (!figTTMLParseCharacter(v11, a2, v9, a4, &v25))
      {
        v9 = v25 - 1;
LABEL_24:
        result = 0;
        *a5 = v9;
        *a6 = Mutable;
        return result;
      }

      if (!figTTMLParseCharacter(92, a2, v25, a4, &v25))
      {
        break;
      }

      v13 = v25;
      if (v25 < 0 || (v14 = *(a2 + 160), v14 <= v25))
      {
        v16 = 0;
      }

      else
      {
        v15 = *(a2 + 136);
        if (v15)
        {
          v16 = *(v15 + 2 * *(a2 + 152) + 2 * v25);
        }

        else
        {
          v17 = *(a2 + 144);
          if (v17)
          {
            v16 = *(v17 + *(a2 + 152) + v25);
          }

          else
          {
            if (*(a2 + 176) <= v25 || (v19 = *(a2 + 168), v19 > v25))
            {
              v20 = v25 - 4;
              if (v25 < 4)
              {
                v20 = 0;
              }

              if (v20 + 64 < v14)
              {
                v14 = v20 + 64;
              }

              *(a2 + 168) = v20;
              *(a2 + 176) = v14;
              v26.length = v14 - v20;
              v26.location = *(a2 + 152) + v20;
              CFStringGetCharacters(*(a2 + 128), v26, a2);
              v19 = *(a2 + 168);
            }

            v16 = *(a2 + 2 * (v13 - v19));
          }
        }
      }

      chars = v16;
      CFStringAppendCharacters(Mutable, &chars, 1);
      v9 = ++v25;
    }

    --v25;
    v24 = 0;
    v18 = figTTMLParseEscape(a2, v25, a4, &v25, &v24);
    if (v18)
    {
      break;
    }

    CFStringAppendCharacters(Mutable, &v24, 1);
    v9 = v25;
  }

  v22 = v18;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v22;
}

uint64_t figTTMLInitTextEmphasisParseMap()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  result = FigCFDictionarySetInt32();
  sTextEmphasisParseMap = Mutable;
  return result;
}

uint64_t figTTMLInitTextShadowParseMap()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  result = FigCFDictionarySetInt32();
  sTextShadowParseMap = Mutable;
  return result;
}

void locateAndCombineColorFunctionTokens(const __CFString *a1, uint64_t a2)
{
  v4 = CFStringFind(a1, @""), 4uLL);
  if (*(a2 + 24))
  {
    if (v4.length)
    {
      *(a2 + 24) = 0;
      CFStringAppend(*(a2 + 16), a1);
      CFArrayAppendValue(*(a2 + 8), *(a2 + 16));
      v5 = *(a2 + 16);
      if (v5)
      {
        CFRelease(v5);
        *(a2 + 16) = 0;
      }
    }

    else
    {
      v7 = *(a2 + 16);

      CFStringAppend(v7, a1);
    }
  }

  else if ((CFStringHasPrefix(a1, @"rgb(") || CFStringHasPrefix(a1, @"rgba(")) && !v4.length)
  {
    *(a2 + 24) = 1;
    *(a2 + 16) = CFStringCreateMutableCopy(*a2, 0, a1);
  }

  else
  {
    v6 = *(a2 + 8);

    CFArrayAppendValue(v6, a1);
  }
}

uint64_t figTTMLInitPositionParseMap()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  result = FigCFDictionarySetInt32();
  sPositionParseMap = Mutable;
  return result;
}

void OUTLINED_FUNCTION_1_150()
{

  JUMPOUT(0x19A8D3660);
}

double OUTLINED_FUNCTION_8_58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = a10;

  return figTTMLParseDigits(1u, v11, v13, v10, &a10, &a9);
}

double OUTLINED_FUNCTION_13_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned int *a6)
{

  return figTTMLParseDigits(1u, v7, a3, v6, a5, a6);
}

uint64_t OUTLINED_FUNCTION_19_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = 0;
  *v10 = a10;
  return result;
}

const char *OUTLINED_FUNCTION_20_31()
{

  return CFStringGetCStringPtr(v0, 0x600u);
}

uint64_t OUTLINED_FUNCTION_21_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{

  return figTTMLParseCFString(a1, a2, v6, v5, a5);
}

double OUTLINED_FUNCTION_23_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a16, int a17, char a18)
{

  return figTTMLParseOneOrMoreDigits(&a18, 0, v17, &a16, &a14);
}

uint64_t OUTLINED_FUNCTION_24_26(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, CFStringRef);

  return FigTTMLCopyNamespaceAndLocalNameOfCurrentNode(v2, va1, va);
}

uint64_t OUTLINED_FUNCTION_25_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  return figTTMLParseEscape(va, a12, v18, (v19 - 96), (v19 - 98));
}

const UniChar *OUTLINED_FUNCTION_26_29(uint64_t a1)
{
  v2[16] = v1;
  v2[19] = 0;
  v2[20] = a1;

  return CFStringGetCharactersPtr(v1);
}

double OUTLINED_FUNCTION_27_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  v12 = a10;

  return figTTMLParseOneOrMoreDigits(va, v12, v10, &a10, &a9);
}

uint64_t OUTLINED_FUNCTION_34_24(double a1, double a2)
{

  return FigGeometryDimensionMake();
}

uint64_t OUTLINED_FUNCTION_35_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return FigCFEqual();
}

uint64_t FigTTMLFormatWriterCreateWithByteStream(uint64_t a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v34 = 0;
  v35 = 0;
  if (!a2)
  {
    FigTTMLFormatWriterCreateWithByteStream_cold_3(&v51);
LABEL_81:
    v13 = v51;
    goto LABEL_82;
  }

  if (!a4)
  {
    FigTTMLFormatWriterCreateWithByteStream_cold_2(&v51);
    goto LABEL_81;
  }

  FigFormatWriterGetClassID();
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    v13 = v8;
    goto LABEL_82;
  }

  FigFormatWriterGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigTTMLFormatWriterCreateWithByteStream_cold_1(&v51);
    goto LABEL_81;
  }

  v10 = DerivedStorage;
  if (!a3 || (CFDictionaryGetValue(a3, @"FileFormat"), FigCFEqual()))
  {
    FigFormatWriterGetFigBaseObject();
    v11 = CMBaseObjectGetDerivedStorage();
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v47 = 0;
    v45 = 0;
    v46 = 0;
    v43 = 0;
    v44 = 0;
    v41 = 0;
    v42 = 0;
    v39 = 0;
    v40 = 0;
    v37 = 0;
    cf = 0;
    v36 = 0;
    v12 = FigTTMLSerializerCreateForByteStream(a1, a2, &v36);
    if (v12 || (v12 = FigTTMLSerializerCreateIndenter(a1, v36, &v37), v12) || (v12 = FigTTMLDocumentWriterCreateForSerializer(a1, v37, &cf), v12) || (v12 = FigTTMLDocumentWriterCreateLineBreaker(a1, cf, &v39), v12) || (v12 = FigTTMLDocumentWriterCreateProfileInserter(a1, v39, &v40), v12) || (v12 = FigTTMLDocumentWriterCreateStyleOptimizer(a1, v40, &v41), v12) || (v12 = FigTTMLDocumentWriterCreateRegionStyleOptimizer(a1, v41, &v42), v12) || (v12 = FigTTMLDocumentWriterCreateForiTT(a1, v42, &v43), v12) || (v12 = FigTTMLDocumentWriterCreateRubySpanBuilder(a1, v43, &v44), v12) || (v12 = FigTTMLDocumentWriterCreateStyleSpanBuilder(a1, v44, &v45), v12) || (v12 = FigTTMLDocumentWriterCreateParagraphStyleAttributeInserter(a1, v45, &v46), v12) || (v12 = FigTTMLDocumentWriterCreateRegionAttributeInserter(a1, v46, &v47), v12) || (v12 = FigTTMLDocumentWriterCreateFrameRateParameterInserter(a1, v47, &v48), v12) || (v12 = FigTTMLDocumentWriterCreateRegionBuilder(a1, v48, &v49), v12) || (v12 = FigTTMLDocumentWriterCreateLanguageIdentifierInserter(a1, v49, &v50), v12))
    {
      v13 = v12;
    }

    else
    {
      v13 = FigTTMLCaptionWriterCreateForDocument(a1, v50, &v51);
      if (!v13)
      {
        *v11 = v51;
        v14 = v49;
        v11[2] = v50;
        v11[3] = v14;
        v15 = v47;
        v11[4] = v48;
        v11[5] = v15;
        v16 = v45;
        v11[6] = v46;
        v17 = v44;
        v11[8] = v16;
        v11[9] = v17;
        v18 = v42;
        v11[10] = v43;
        v20 = v40;
        v19 = v41;
        v11[12] = v18;
        v11[13] = v19;
        v21 = cf;
        v22 = v39;
        v11[14] = v20;
        v11[15] = v22;
        v23 = v37;
        v11[16] = v21;
        v11[17] = v23;
        v11[18] = v36;
        v50 = 0;
        v51 = 0;
        v48 = 0;
        v49 = 0;
        v47 = 0;
        v45 = 0;
        v46 = 0;
        v43 = 0;
        v44 = 0;
        v40 = 0;
        v41 = 0;
        v42 = 0;
        cf = 0;
        v39 = 0;
        v36 = 0;
        v37 = 0;
LABEL_24:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_26;
      }
    }

    if (v36)
    {
      CFRelease(v36);
    }

    if (v37)
    {
      CFRelease(v37);
    }

    goto LABEL_24;
  }

  CFDictionaryGetValue(a3, @"FileFormat");
  if (FigCFEqual())
  {
    FigFormatWriterGetFigBaseObject();
    v24 = CMBaseObjectGetDerivedStorage();
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v47 = 0;
    v45 = 0;
    v46 = 0;
    v43 = 0;
    v44 = 0;
    v41 = 0;
    v42 = 0;
    v39 = 0;
    v40 = 0;
    v25 = FigTTMLSerializerCreateForByteStream(a1, a2, &v39);
    if (v25 || (v25 = FigTTMLDocumentWriterCreateForSerializer(a1, v39, &v40), v25) || (v25 = FigTTMLDocumentWriterCreateLineBreaker(a1, v40, &v41), v25) || (v25 = FigTTMLDocumentWriterCreateStyleOptimizer(a1, v41, &v42), v25) || (v25 = FigTTMLDocumentWriterCreateForIMSC(a1, v42, &v43), v25) || (v25 = FigTTMLDocumentWriterCreateStyleSpanBuilder(a1, v43, &v44), v25) || (v25 = FigTTMLDocumentWriterCreateWritingDirectionSpanBuilder(a1, v44, &v45), v25) || (v25 = FigTTMLDocumentWriterCreateParagraphStyleAttributeInserter(a1, v45, &v46), v25) || (v25 = FigTTMLDocumentWriterCreateRegionAttributeInserter(a1, v46, &v47), v25) || (v25 = FigTTMLDocumentWriterCreateRegionBuilder(a1, v47, &v48), v25) || (v25 = FigTTMLDocumentWriterCreateLanguageIdentifierInserter(a1, v48, &v49), v25) || (v25 = FigTTMLDocumentWriterCreateDivBuilder(a1, v49, &v50), v25))
    {
      v13 = v25;
    }

    else
    {
      v13 = FigTTMLCaptionWriterCreateForDocument(a1, v50, &v51);
      if (!v13)
      {
        *v24 = v51;
        v26 = v49;
        v24[1] = v50;
        v24[2] = v26;
        v27 = v47;
        v24[3] = v48;
        v28 = v46;
        v24[5] = v27;
        v24[6] = v28;
        v29 = v44;
        v24[7] = v45;
        v24[8] = v29;
        v30 = v42;
        v24[11] = v43;
        v24[13] = v30;
        v31 = v40;
        v24[15] = v41;
        v24[16] = v31;
        v24[18] = v39;
        v50 = 0;
        v51 = 0;
        v48 = 0;
        v49 = 0;
        v47 = 0;
        v45 = 0;
        v46 = 0;
        v43 = 0;
        v44 = 0;
        v41 = 0;
        v42 = 0;
        v39 = 0;
        v40 = 0;
        goto LABEL_45;
      }
    }

LABEL_26:
    if (v39)
    {
      CFRelease(v39);
    }

    if (v40)
    {
      CFRelease(v40);
    }

LABEL_45:
    if (v41)
    {
      CFRelease(v41);
    }

    if (v42)
    {
      CFRelease(v42);
    }

    if (v43)
    {
      CFRelease(v43);
    }

    if (v44)
    {
      CFRelease(v44);
    }

    if (v45)
    {
      CFRelease(v45);
    }

    if (v46)
    {
      CFRelease(v46);
    }

    if (v47)
    {
      CFRelease(v47);
    }

    if (v48)
    {
      CFRelease(v48);
    }

    if (v49)
    {
      CFRelease(v49);
    }

    if (v50)
    {
      CFRelease(v50);
    }

    if (v51)
    {
      CFRelease(v51);
    }

    if (v13)
    {
      goto LABEL_82;
    }
  }

  v13 = FigCaptionTimelineGeneratorCreate(a1, ffw_ttml_WriteFigCaption, v35, &v34);
  v32 = v34;
  if (!v13)
  {
    *(v10 + 160) = 0;
    *(v10 + 152) = v32;
    *a4 = v35;
    return v13;
  }

  if (v34)
  {
    CFRelease(v34);
  }

LABEL_82:
  if (v35)
  {
    CFRelease(v35);
  }

  return v13;
}