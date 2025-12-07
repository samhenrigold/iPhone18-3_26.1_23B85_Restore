uint64_t __OSKextIsValid(uint64_t a1)
{
  v1 = *(a1 + 92);
  if ((v1 & 0x400) != 0)
  {
    return 0;
  }

  if ((v1 & 0x200) == 0)
  {
    __OSKextValidate(a1, 0);
    v1 = *(a1 + 92);
  }

  return (v1 >> 11) & 1;
}

uint64_t __OSKextReadInfoDictionary(uint64_t a1, CFBundleRef a2)
{
  v24 = *MEMORY[0x1E69E9840];
  memset(&v20, 0, sizeof(v20));
  cf = 0;
  memcpy(__dst, "(unknown)", sizeof(__dst));
  __OSKextGetFileSystemPath(a1, 0, 0, buffer);
  if (*(a1 + 56))
  {
    UTF8CStringForCFString = 0;
    v5 = 0;
    v6 = 1;
LABEL_7:
    v8 = -1;
    goto LABEL_8;
  }

  if ((*(a1 + 88) & 8) != 0)
  {
    __OSKextGetFileSystemPath(0, **(a1 + 80), 0, __dst);
    OSKextLog(a1, 129, "%s created from m%s is missing its info dictionary.", buffer, __dst);
    UTF8CStringForCFString = 0;
    v6 = 0;
    v5 = 1;
    goto LABEL_7;
  }

  if (a2)
  {
    v7 = 0;
  }

  else
  {
    OSKextLog(a1, 131079, "Opening CFBundle for %s.", buffer);
    v7 = CFBundleCreate(*MEMORY[0x1E695E480], *(a1 + 16));
    if (!v7)
    {
      OSKextLog(0, 131073, "Can't open CFBundle for %s.", buffer);
      v5 = 1;
      __OSKextSetDiagnostic(a1, 1, @"Failed to open CFBundle (unknown error).");
      UTF8CStringForCFString = 0;
      v6 = 0;
      goto LABEL_7;
    }
  }

  v10 = _CFBundleCopyInfoPlistURL();
  if (v10)
  {
    if (__OSKextGetFileSystemPath(0, v10, 1u, v21))
    {
      if (!stat(v21, &v20))
      {
        v8 = open(v21, 0);
        if (v8 < 0)
        {
          v5 = 1;
          __OSKextAddDiagnostic(a1, 1, @"File access failure; can't open, or I/O error", v10, 0);
          v6 = 0;
          v12 = 0;
        }

        else
        {
          v12 = malloc_type_malloc(v20.st_size + 1, 0x100004077774924uLL);
          if (!v12)
          {
            OSKextLog(0, 17, "Memory allocation failure.");
            v6 = 0;
            UTF8CStringForCFString = 0;
            v5 = 1;
            goto LABEL_36;
          }

          st_size = v20.st_size;
          if (v20.st_size < 1)
          {
            v14 = 0;
LABEL_45:
            v12[v14] = 0;
            v16 = IOCFUnserialize(v12, *MEMORY[0x1E695E480], 0, &cf);
            *(a1 + 56) = v16;
            if (v16 && (TypeID = CFDictionaryGetTypeID(), TypeID == CFGetTypeID(*(a1 + 56))))
            {
              v5 = 0;
              UTF8CStringForCFString = 0;
              v6 = 1;
            }

            else
            {
              __OSKextAddDiagnostic(a1, 1, @"Can't parse info dictionary XML", cf, 0);
              if (cf)
              {
                UTF8CStringForCFString = createUTF8CStringForCFString(cf);
              }

              else
              {
                UTF8CStringForCFString = 0;
              }

              v18 = "(unknown error)";
              if (UTF8CStringForCFString)
              {
                v18 = UTF8CStringForCFString;
              }

              v5 = 1;
              OSKextLog(a1, 1, "Can't read info dictionary for %s: %s.", buffer, v18);
              v6 = 0;
            }

            goto LABEL_36;
          }

          v14 = 0;
          while (1)
          {
            v15 = read(v8, &v12[v14], st_size - v14);
            if (v15 < 0)
            {
              break;
            }

            v14 += v15;
            st_size = v20.st_size;
            if (v14 >= v20.st_size)
            {
              goto LABEL_45;
            }
          }

          v5 = 1;
          __OSKextSetDiagnostic(a1, 1, @"File access failure; can't open, or I/O error");
          v6 = 0;
        }

        UTF8CStringForCFString = 0;
        goto LABEL_36;
      }

      if (*__error() == 2)
      {
        v11 = @"File not found";
      }

      else
      {
        v11 = @"Failed to get file info (stat failed)";
      }
    }

    else
    {
      v11 = @"Internal error converting URL";
    }

    v5 = 1;
    __OSKextAddDiagnostic(a1, 1, v11, v10, 0);
  }

  else
  {
    OSKextLog(0, 131073, "%s has no Info.plist file.", buffer);
    v5 = 1;
    __OSKextSetDiagnostic(a1, 1, @"Failed to open CFBundle (unknown error).");
  }

  v6 = 0;
  v12 = 0;
  UTF8CStringForCFString = 0;
  v8 = -1;
LABEL_36:
  if (v7)
  {
    OSKextLog(a1, 131079, "Releasing CFBundle for %s.", buffer);
    CFRelease(v7);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v12)
  {
    free(v12);
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (UTF8CStringForCFString)
  {
    free(UTF8CStringForCFString);
  }

  if ((v8 & 0x80000000) == 0)
  {
    close(v8);
  }

  if (v5)
  {
    *(a1 + 92) = *(a1 + 92) & 0xFFFFF3FF | 0x400;
  }

  return v6;
}

CFMutableDictionaryRef OSKextCopyInfoDictionary(void *cf)
{
  if (!cf[7] && !__OSKextReadInfoDictionary(cf, 0))
  {
    return 0;
  }

  v2 = CFGetAllocator(cf);
  v3 = cf[7];

  return CFDictionaryCreateMutableCopy(v2, 0, v3);
}

void OSKextFlushInfoDictionary(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  if (a1)
  {
    if ((OSKextFlushInfoDictionary_flushingAll & 1) == 0)
    {
      if (*(a1 + 16))
      {
        __OSKextGetFileSystemPath(a1, 0, 0, buffer);
      }

      OSKextLog(0, 262150, "Flushing info dictionary for %s.", buffer);
    }

    if ((*(a1 + 88) & 8) == 0)
    {
      v2 = *(a1 + 56);
      if (v2)
      {
        CFRelease(v2);
      }

      *(a1 + 56) = 0;
      v3 = *(a1 + 92);
      if ((~v3 & 0x4900) != 0)
      {
        *(a1 + 92) = v3 & 0xFFFD81FF;
      }
    }
  }

  else if (__sOSKextsByURL)
  {
    OSKextFlushInfoDictionary_flushingAll = 1;
    OSKextLog(0, 262150, "Flushing info dictionaries for all kexts.");
    CFDictionaryApplyFunction(__sOSKextsByURL, __OSKextFlushInfoDictionaryApplierFunction, 0);
    OSKextFlushInfoDictionary_flushingAll = 0;
  }
}

uint64_t __OSKextUUIDCallback(_DWORD *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != 27)
  {
    return 2;
  }

  if (a1 + a1[1] > a2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a4 = 16;
  *(a4 + 8) = a1 + 2;
  return result;
}

CFDataRef OSKextCopyUUIDForArchitecture(const void *a1, char **a2)
{
  if (!a2)
  {
    pthread_once(&__sOSKextInitialized, __OSKextInitialize);
    a2 = __sOSKextArchInfo;
  }

  v3 = OSKextCopyExecutableForArchitecture(a1, a2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v14 = 0;
  bytes = 0;
  BytePtr = CFDataGetBytePtr(v3);
  Length = CFDataGetLength(v4);
  v7 = *BytePtr;
  commands = macho_scan_load_commands(BytePtr, BytePtr + Length, __OSKextUUIDCallback, &v14);
  if (commands)
  {
    v9 = 0;
    if (commands == -1)
    {
      __OSKextSetDiagnostic(a1, 1, @"Executable file doesn't contain kernel extension code (no kmod_info symbol or bad Mach-O layout).");
      v9 = 0;
    }
  }

  else
  {
    v10 = CFGetAllocator(a1);
    v11 = bswap32(v14);
    if (((v7 + 822415874) & 0xFEFFFFFF) != 0)
    {
      v12 = v14;
    }

    else
    {
      v12 = v11;
    }

    v9 = CFDataCreate(v10, bytes, v12);
  }

  CFRelease(v4);
  return v9;
}

CFDataRef OSKextCopyExecutableForArchitecture(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!__OSKextReadExecutable(a1))
  {
    return 0;
  }

  if ((*(a1 + 88) & 8) != 0)
  {
    v6 = *(a1 + 80);
    if (!v6)
    {
      return 0;
    }

    v5 = *(v6 + 16);
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v4 = *(a1 + 72);
    if (!v4)
    {
      return 0;
    }

    v5 = *(v4 + 128);
    if (!v5)
    {
      return 0;
    }
  }

  v7 = CFRetain(v5);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (a2)
  {
    BytePtr = CFDataGetBytePtr(v7);
    v26 = 0;
    Length = CFDataGetLength(v8);
    v11 = fat_iterator_for_data(BytePtr, BytePtr + Length, 1);
    if (v11)
    {
      v12 = v11;
      if ((*(a1 + 88) & 8) != 0)
      {
        goto LABEL_17;
      }

      *buffer = 0;
      v28 = 0;
      v29 = 0;
      if (!fat_iterator_find_fat_arch(v11, *(a2 + 8), *(a2 + 12), buffer))
      {
        goto LABEL_26;
      }

      if (*MEMORY[0x1E69E9AC8] != 1 << v29)
      {
LABEL_17:
        arch = fat_iterator_find_arch(v12, *(a2 + 8), *(a2 + 12), &v26);
        if (!arch)
        {
          goto LABEL_26;
        }

        v16 = arch;
        v17 = CFGetAllocator(a1);
        v13 = CFDataCreate(v17, v16, v26 - v16);
      }

      else
      {
        v13 = __OSKextMapExecutable(a1, v28, HIDWORD(v28));
      }

      v18 = v13;
      if (v13)
      {
LABEL_29:
        CFRelease(v8);
        fat_iterator_close(v12);
        return v18;
      }

LABEL_26:
      __OSKextGetFileSystemPath(a1, 0, 0, buffer);
      v23 = CFGetAllocator(a1);
      v24 = CFStringCreateWithCString(v23, *a2, 0x8000100u);
      if (v24)
      {
        v25 = v24;
        __OSKextAddDiagnostic(a1, 8, @"Executable does not contain code for architecture", v24, 0);
        CFRelease(v25);
      }

      v18 = 0;
      goto LABEL_29;
    }

    __OSKextSetDiagnostic(a1, 1, @"Executable file doesn't contain kernel extension code (no kmod_info symbol or bad Mach-O layout).");
    CFRelease(v8);
    return 0;
  }

  if ((*(a1 + 88) & 8) != 0)
  {
    v20 = CFGetAllocator(v7);
    v21 = CFDataGetBytePtr(v8);
    v22 = CFDataGetLength(v8);
    v14 = CFDataCreate(v20, v21, v22);
  }

  else
  {
    v14 = __OSKextMapExecutable(a1, 0, 0);
  }

  v18 = v14;
  CFRelease(v8);
  return v18;
}

void __OSKextSetDiagnostic(uint64_t a1, int a2, const void *a3)
{
  if ((__sOSKextRecordsDiagnositcs & a2) != 0)
  {
    Diagnostics = __OSKextGetDiagnostics(a1, a2);
    if (Diagnostics)
    {
      v5 = *MEMORY[0x1E695E4D0];

      CFDictionarySetValue(Diagnostics, a3, v5);
    }
  }
}

void OSKextSetLoggingEnabled(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 92);
  *(a1 + 92) = v2 & 0xFFFFFFEF | (16 * (a2 != 0));
  if (((v2 >> 4) & 1) != (a2 != 0))
  {
    __OSKextGetFileSystemPath(a1, 0, 0, buffer);
    if ((*(a1 + 92) & 0x10) != 0)
    {
      v4 = "en";
    }

    else
    {
      v4 = "dis";
    }

    OSKextLog(a1, 262151, "Kext logging %sabled for %s.", v4, buffer);
  }
}

uint64_t OSKextDependenciesAreLoadableInSafeBoot(const void *a1)
{
  v2 = __OSKextCopyDependenciesList(a1, 1, 1);
  if (v2)
  {
    v3 = v2;
    Count = CFArrayGetCount(v2);
    if (Count < 1)
    {
      v7 = 1;
    }

    else
    {
      v5 = Count;
      v6 = 0;
      v7 = 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
        if (OSKextGetActualSafeBoot() | __sOSKextSimulatedSafeBoot && (*(ValueAtIndex + 92) & 0x80) == 0)
        {
          __OSKextAddDiagnostic(a1, 16, @"Dependencies aren't loadable during safe boot", ValueAtIndex[3], 0);
          v7 = 0;
        }

        ++v6;
      }

      while (v5 != v6);
    }

    CFRelease(v3);
  }

  else
  {
    return 0;
  }

  return v7;
}

void *OSKextCopyArchitectures(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 92) & 4) == 0 || !__OSKextReadExecutable(a1))
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(*(*(a1 + 72) + 128));
  Length = CFDataGetLength(*(*(a1 + 72) + 128));
  v4 = fat_iterator_for_data(BytePtr, BytePtr + Length, 1);
  if (!v4)
  {
    if ((*(a1 + 92) & 8) != 0)
    {
      ExecutableURL = 0;
    }

    else
    {
      ExecutableURL = OSKextGetExecutableURL(a1);
    }

    __OSKextGetFileSystemPath(a1, ExecutableURL, 0, buffer);
    OSKextLog(a1, 131073, "Can't read mach-o file %s.", buffer);
    return 0;
  }

  v5 = v4;
  v6 = (8 * fat_iterator_num_arches(v4) + 8);
  v7 = malloc_type_malloc(v6, 0x6004044C4A2DFuLL);
  v8 = v7;
  if (v7)
  {
    bzero(v7, v6);
    arch = fat_iterator_next_arch(v5, 0);
    if (arch)
    {
      v10 = 0;
      do
      {
        if ((*arch | 0x1000000) == 0xCFFAEDFE)
        {
          v11 = bswap32(arch[1]);
        }

        else
        {
          v11 = arch[1];
        }

        if ((*arch | 0x1000000) == 0xCFFAEDFE)
        {
          v12 = bswap32(arch[2]);
        }

        else
        {
          v12 = arch[2];
        }

        v8[v10++] = NXGetArchInfoFromCpuType(v11, v12);
        arch = fat_iterator_next_arch(v5, 0);
      }

      while (arch);
    }
  }

  fat_iterator_close(v5);
  return v8;
}

uint64_t __OSKextReadExecutable(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 92) & 4) == 0)
  {
    return 0;
  }

  if ((*(a1 + 88) & 8) != 0)
  {
    v5 = *(a1 + 80);
    if (v5 && *(v5 + 16))
    {
      return 1;
    }

    result = __OSKextCreateMkextInfo(a1);
    if (!result)
    {
      return result;
    }

    Value = CFDictionaryGetValue(*(a1 + 56), @"_MKEXTExecutable");
    if (!Value)
    {
      return 1;
    }

    v7 = Value;
    BytePtr = CFDataGetBytePtr(*(*(a1 + 80) + 8));
    valuePtr = 0;
    bzero(buffer, 0x400uLL);
    v9 = **(a1 + 80);
    if (v9)
    {
      __OSKextGetFileSystemPath(0, v9, 0, buffer);
      if (buffer[0])
      {
        v10 = buffer;
      }

      else
      {
        v10 = "mkext data";
      }
    }

    else
    {
      v10 = "mkext data";
    }

    OSKextLog(a1, 134, "Extracting %s%s from %s.", "executable", "", v10);
    if (CFNumberGetValue(v7, kCFNumberSInt32Type, &valuePtr))
    {
      v11 = &BytePtr[valuePtr];
      v12 = bswap32(*(v11 + 1));
      if (!*v11)
      {
        v16 = CFGetAllocator(a1);
        v17 = CFDataCreate(v16, v11 + 8, v12);
        *(*(a1 + 80) + 16) = v17;
        if (v17)
        {
          return 1;
        }

LABEL_28:
        __OSKextAddDiagnostic(a1, 1, @"Kext has a CFBundleExecutable property but the executable can't be found", @"(executable from mkext)", 0);
        result = 0;
        *(a1 + 92) = *(a1 + 92) & 0xFFFFF3FF | 0x400;
        return result;
      }

      v13 = bswap32(*v11);
      v14 = CFGetAllocator(a1);
      UncompressMkext2FileData = __OSKextCreateUncompressMkext2FileData(v14, v11 + 8, v13, v12);
      if (UncompressMkext2FileData)
      {
        *(*(a1 + 80) + 16) = UncompressMkext2FileData;
        return 1;
      }

      v18 = buffer;
      if (!buffer[0])
      {
        v18 = "mkext data";
      }

      OSKextLog(a1, 129, "Failed to uncompress %s%s from %s.", "executable", "", v18);
    }

    *(*(a1 + 80) + 16) = 0;
    goto LABEL_28;
  }

  v3 = *(a1 + 72);
  if (v3 && *(v3 + 128))
  {
    return 1;
  }

  result = __OSKextCreateLoadInfo(a1);
  if (result)
  {
    v4 = __OSKextMapExecutable(a1, 0, 0);
    *(*(a1 + 72) + 128) = v4;
    return v4 != 0;
  }

  return result;
}

uint64_t OSKextSupportsArchitecture(uint64_t a1, char **a2)
{
  if ((*(a1 + 92) & 4) == 0)
  {
    return 1;
  }

  v3 = a2;
  if (!a2)
  {
    pthread_once(&__sOSKextInitialized, __OSKextInitialize);
    v3 = __sOSKextArchInfo;
  }

  if (!__OSKextReadExecutable(a1))
  {
    return 0;
  }

  if ((*(a1 + 88) & 8) != 0)
  {
    v7 = *(a1 + 80);
    if (!v7)
    {
      return 0;
    }

    v6 = *(v7 + 16);
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    v5 = *(a1 + 72);
    if (!v5)
    {
      return 0;
    }

    v6 = *(v5 + 128);
    if (!v6)
    {
      return 0;
    }
  }

  v8 = CFRetain(v6);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  BytePtr = CFDataGetBytePtr(v8);
  Length = CFDataGetLength(v9);
  v12 = fat_iterator_for_data(BytePtr, BytePtr + Length, 1);
  if (!v12)
  {
    CFRelease(v9);
    return 0;
  }

  v13 = v12;
  v17 = 0;
  arch = fat_iterator_find_arch(v12, *(v3 + 2), *(v3 + 3), &v17);
  if (arch)
  {
    v15 = arch == v17;
  }

  else
  {
    v15 = 1;
  }

  v2 = !v15;
  CFRelease(v9);
  fat_iterator_close(v13);
  return v2;
}

__CFBundle *OSKextCopyPlugins(uint64_t a1)
{
  if (OSKextIsPlugin(a1) || (*(a1 + 92) & 8) != 0)
  {
    v9 = CFGetAllocator(a1);
    v10 = MEMORY[0x1E695E9C0];

    return CFArrayCreate(v9, 0, 0, v10);
  }

  else
  {
    v2 = *MEMORY[0x1E695E480];
    result = CFBundleCreate(*MEMORY[0x1E695E480], *(a1 + 16));
    if (result)
    {
      v4 = result;
      v5 = CFBundleCopyBuiltInPlugInsURL(result);
      if (v5)
      {
        v6 = v5;
        KextsFromURL = __OSKextCreateKextsFromURL(v2, v5, a1, 0);
        CFRelease(v4);
        v8 = v6;
      }

      else
      {
        KextsFromURL = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
        v8 = v4;
      }

      CFRelease(v8);
      return KextsFromURL;
    }
  }

  return result;
}

BOOL OSKextIsPlugin(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    return (v1 >> 1) & 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    OSKextLog(a1, 262161, "Bundle URL unexpectedly NULL!");
    return 0;
  }

  v4 = CFURLCopyAbsoluteURL(v3);
  if (!v4)
  {
    OSKextLog(0, 17, "Memory allocation failure.");
    return 0;
  }

  v5 = v4;
  PathComponent = CFURLCreateCopyDeletingLastPathComponent(*MEMORY[0x1E695E480], v4);
  if (!PathComponent)
  {
    OSKextLog(0, 17, "Memory allocation failure.");
    CFRelease(v5);
    return 0;
  }

  v7 = PathComponent;
  v8 = CFURLCopyFileSystemPath(PathComponent, kCFURLPOSIXPathStyle);
  if (!v8)
  {
    OSKextLog(0, 17, "Memory allocation failure.");
  }

  location = CFStringFind(v8, @".kext/", 0).location;
  *(a1 + 88) = *(a1 + 88) & 0xFC | (2 * (location != -1)) | 1;
  v10 = location != -1;
  CFRelease(v5);
  CFRelease(v7);
  if (v8)
  {
    CFRelease(v8);
  }

  return v10;
}

CFTypeRef OSKextCopyContainerForPluginKext(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 88) & 3) == 1)
  {
    return 0;
  }

  v2 = CFURLCopyAbsoluteURL(*(a1 + 16));
  if (!v2)
  {
    OSKextLog(0, 17, "Memory allocation failure.");
    return 0;
  }

  v3 = v2;
  v4 = *MEMORY[0x1E695E480];
  PathComponent = CFURLCreateCopyDeletingLastPathComponent(*MEMORY[0x1E695E480], v2);
  if (!PathComponent)
  {
    OSKextLog(0, 17, "Memory allocation failure.");
    CFRelease(v3);
    return 0;
  }

  v6 = PathComponent;
  v7 = CFURLCopyFileSystemPath(PathComponent, kCFURLPOSIXPathStyle);
  v8 = v7;
  if (!v7)
  {
    goto LABEL_20;
  }

  v9 = CFStringFind(v7, @".kext/", 4uLL);
  *(a1 + 88) = *(a1 + 88) & 0xFC | (2 * (v9.location != -1)) | 1;
  if (v9.location == -1)
  {
LABEL_21:
    cf = 0;
LABEL_22:
    v22 = 0;
    v13 = 0;
    goto LABEL_23;
  }

  v28.length = v9.location + v9.length;
  v28.location = 0;
  v7 = CFStringCreateWithSubstring(v4, v8, v28);
  if (!v7)
  {
LABEL_20:
    OSKextLog(v7, 17, "Memory allocation failure.");
    goto LABEL_21;
  }

  cf = v7;
  if (!CFStringGetCString(v7, buffer, 1024, 0x8000100u))
  {
    OSKextLog(a1, 17, "String/URL conversion failure.");
    goto LABEL_22;
  }

  v10 = strlen(buffer);
  v11 = CFURLCreateFromFileSystemRepresentation(v4, buffer, v10, 1u);
  if (!v11)
  {
    OSKextLog(0, 17, "Memory allocation failure.");
    goto LABEL_22;
  }

  v22 = v11;
  v12 = OSKextCreate(v4, v11);
  v13 = v12;
  if (!v12)
  {
LABEL_23:
    v14 = 0;
LABEL_24:
    v16 = 0;
    v18 = 0;
    v15 = 0;
    goto LABEL_25;
  }

  __OSKextGetFileSystemPath(v12, 0, 0, v26);
  OSKextLog(a1, 131079, "Opening CFBundle for %s.", v26);
  v14 = CFBundleCreate(v4, v13[2]);
  if (!v14)
  {
    OSKextLog(a1, 131073, "Failed to open CFBundle for %s.", v26);
    goto LABEL_24;
  }

  v15 = CFURLCopyLastPathComponent(*(a1 + 16));
  v16 = CFBundleCopyBuiltInPlugInsURL(v14);
  v17 = CFURLCreateCopyAppendingPathComponent(v4, v16, v15, 1u);
  v18 = v17;
  if (!v17)
  {
    goto LABEL_46;
  }

  if (!__OSKextGetFileSystemPath(0, v17, 1u, __s))
  {
LABEL_25:
    v20 = 0;
    goto LABEL_26;
  }

  CFRelease(v18);
  v19 = strlen(__s);
  v17 = CFURLCreateFromFileSystemRepresentation(v4, __s, v19, 1u);
  v18 = v17;
  if (!v17)
  {
LABEL_46:
    OSKextLog(v17, 17, "Memory allocation failure.");
    goto LABEL_25;
  }

  if (!CFEqual(v3, v17))
  {
    goto LABEL_25;
  }

  v20 = CFRetain(v13);
LABEL_26:
  CFRelease(v3);
  CFRelease(v6);
  if (v8)
  {
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    OSKextLog(a1, 131079, "Releasing CFBundle for %s.", v26);
    CFRelease(v14);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v20;
}

CFMutableArrayRef OSKextCopyPersonalitiesArray(CFURLRef *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    ValueForInfoDictionaryKey = OSKextGetValueForInfoDictionaryKey(a1, @"IOKitPersonalities");
    if (ValueForInfoDictionaryKey)
    {
      v5 = ValueForInfoDictionaryKey;
      v6 = CFGetTypeID(ValueForInfoDictionaryKey);
      if (v6 == CFDictionaryGetTypeID())
      {
        if (CFDictionaryGetCount(v5))
        {
          context[0] = a1;
          context[1] = Mutable;
          context[3] = 0;
          context[2] = 0;
          context[4] = 1;
          CFDictionaryApplyFunction(v5, __OSKextPersonalityPatcherApplierFunction, context);
        }
      }

      else
      {
        v7 = CFURLGetString(a1[2]);
        CFStringGetCStringPtr(v7, 0x8000100u);
        OSKextLog(0, 262145, "Kext personality for kext %s is not a dictionary");
      }
    }
  }

  else
  {
    OSKextLog(0, 17, "Memory allocation failure.");
  }

  return Mutable;
}

void __OSKextPersonalityPatcherApplierFunction(const __CFString *a1, CFTypeRef cf, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  v5 = *(a3 + 8);
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v9 = *(a3 + 32);
  v10 = CFGetTypeID(cf);
  if (v10 != CFDictionaryGetTypeID())
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
    OSKextLog(0, 262145, "Kext personality %s subentry is not a dictionary", CStringPtr);
    return;
  }

  if (!v8 || (v11 = CFGetTypeID(v8), v11 != CFArrayGetTypeID()) || (v26.length = CFArrayGetCount(v8), v26.location = 0, CFArrayContainsValue(v8, v26, a1)))
  {
    v12 = v6[3];
    if (v12)
    {
      v13 = CFGetAllocator(v6);
      MutableCopy = CFDictionaryCreateMutableCopy(v13, 0, cf);
      if (MutableCopy)
      {
        v15 = MutableCopy;
        if (!v9)
        {
          goto LABEL_21;
        }

        v16 = *MEMORY[0x1E695E4F0];
        Value = CFDictionaryGetValue(cf, *MEMORY[0x1E695E4F0]);
        if (Value)
        {
          if (CFEqual(v12, Value))
          {
            goto LABEL_17;
          }

          v18 = @"IOPersonalityPublisher";
          v19 = v15;
        }

        else
        {
          v19 = v15;
          v18 = v16;
        }

        CFDictionarySetValue(v19, v18, v12);
LABEL_17:
        if (__OSKextShouldLog(v6, 38))
        {
          __OSKextGetFileSystemPath(v6, 0, 0, buffer);
          UTF8CStringForCFString = createUTF8CStringForCFString(v12);
          v22 = createUTF8CStringForCFString(a1);
          if (Value)
          {
            if (!CFEqual(v12, Value))
            {
              OSKextLog(v6, 38, "Adding IOBundlePublisher %s to %s personality %s.");
            }
          }

          else
          {
            OSKextLog(v6, 38, "Adding CFBundleIdentifier %s to %s personality %s.");
          }

          goto LABEL_22;
        }

LABEL_21:
        UTF8CStringForCFString = 0;
        v22 = 0;
LABEL_22:
        if (!__sOSKextPersonalityPatcherFunction || __sOSKextPersonalityPatcherFunction(v6, v15))
        {
          if (v5)
          {
            CFArrayAppendValue(v5, v15);
          }

          if (v7)
          {
            CFDictionarySetValue(v7, a1, v15);
          }
        }

        if (UTF8CStringForCFString)
        {
          free(UTF8CStringForCFString);
        }

        if (v22)
        {
          free(v22);
        }

        CFRelease(v15);
        return;
      }

      OSKextLog(0, 17, "Memory allocation failure.");
    }
  }
}

CFMutableArrayRef OSKextCopyPersonalitiesOfKexts(CFTypeRef cf)
{
  AllKexts = cf;
  if (!cf)
  {
    pthread_once(&__sOSKextInitialized, __OSKextInitialize);
    AllKexts = OSKextGetAllKexts();
  }

  v2 = CFGetAllocator(AllKexts);
  Mutable = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
  v4 = Mutable;
  if (Mutable)
  {
    context = 0;
    v17 = 0u;
    v18 = 0;
    context_8 = Mutable;
    Count = CFArrayGetCount(AllKexts);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(AllKexts, i);
        ValueForInfoDictionaryKey = OSKextGetValueForInfoDictionaryKey(ValueAtIndex, @"IOKitPersonalities");
        if (ValueForInfoDictionaryKey)
        {
          v10 = ValueForInfoDictionaryKey;
          v11 = CFGetTypeID(ValueForInfoDictionaryKey);
          if (v11 == CFDictionaryGetTypeID())
          {
            if (CFDictionaryGetCount(v10))
            {
              context = ValueAtIndex;
              context_8 = v4;
              v17 = 0uLL;
              LOBYTE(v18) = 1;
              CFDictionaryApplyFunction(v10, __OSKextPersonalityPatcherApplierFunction, &context);
            }
          }

          else
          {
            v12 = CFURLGetString(ValueAtIndex[2]);
            CStringPtr = CFStringGetCStringPtr(v12, 0x8000100u);
            OSKextLog(0, 262145, "Kext personality for kext %s is not a dictionary", CStringPtr);
          }
        }
      }
    }
  }

  else
  {
    OSKextLog(0, 17, "Memory allocation failure.");
  }

  return v4;
}

void __OSKextDeallocateMmapBuffer(void *a1, size_t *a2)
{
  munmap(a1, *a2);

  free(a2);
}

CFDataRef __OSKextMapExecutable(uint64_t a1, off_t a2, off_t st_size)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!__OSKextCreateLoadInfo(a1))
  {
    return 0;
  }

  if ((*(a1 + 92) & 8) != 0)
  {
    return 0;
  }

  ExecutableURL = OSKextGetExecutableURL(a1);
  if (!ExecutableURL)
  {
    return 0;
  }

  memset(&v24, 0, sizeof(v24));
  memset(&context, 0, sizeof(context));
  if (!__OSKextGetFileSystemPath(0, ExecutableURL, 1u, buffer))
  {
    return 0;
  }

  OSKextLog(a1, 131079, "Statting %s for map.", buffer);
  if (stat(buffer, &v24) == -1)
  {
    v7 = *__error();
    if (v7 == 2)
    {
      v8 = @"File not found";
    }

    else
    {
      v8 = @"Failed to get file info (stat failed)";
    }

    __OSKextAddDiagnostic(a1, 1, v8, *(a1 + 32), 0);
    strerror(v7);
    OSKextLog(a1, 131073, "Stat failed for %s - %s.");
    return 0;
  }

  if (st_size)
  {
    if (st_size + a2 > v24.st_size)
    {
      OSKextLog(a1, 131073, "Internal error; overrun mapping executable file %s.");
      return 0;
    }
  }

  else
  {
    st_size = v24.st_size;
  }

  OSKextLog(a1, 131079, "Opening %s for map.", buffer);
  v9 = open(buffer, 0);
  if (v9 == -1)
  {
    v19 = *__error();
    if (v19 == 2)
    {
      v20 = @"File not found";
    }

    else
    {
      v20 = @"File access failure; can't open, or I/O error";
    }

    __OSKextAddDiagnostic(a1, 1, v20, *(a1 + 32), 0);
    strerror(v19);
    OSKextLog(a1, 131073, "Open failed for %s - %s.");
    return 0;
  }

  v10 = v9;
  v11 = mmap(0, st_size, 3, 2, v9, a2);
  if (v11 == -1)
  {
    v22 = *__error();
    if (!st_size)
    {
      __OSKextAddDiagnostic(a1, 1, @"File access failure; can't open, or I/O error", *(a1 + 32), 0);
      *(a1 + 92) = *(a1 + 92) & 0xFFFFF3FF | 0x400;
    }

    strerror(v22);
    OSKextLog(a1, 131073, "Failed to map executable file %s (offset %lu, %lu bytes) - %s.");
    goto LABEL_30;
  }

  OSKextLog(a1, 131078, "Mapped executable file %s (offset %lu, %lu bytes).", buffer, a2, st_size);
  v12 = *MEMORY[0x1E695E480];
  CFAllocatorGetContext(*MEMORY[0x1E695E480], &context);
  v13 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  if (!v13)
  {
    OSKextLog(0, 17, "Memory allocation failure.");
LABEL_30:
    close(v10);
    goto LABEL_33;
  }

  v14 = v13;
  *v13 = st_size;
  context.info = v13;
  context.deallocate = __OSKextDeallocateMmapBuffer;
  v15 = CFAllocatorCreate(v12, &context);
  if (!v15)
  {
    OSKextLog(0, 17, "Memory allocation failure.");
    close(v10);
LABEL_32:
    free(v14);
LABEL_33:
    if (v11)
    {
      OSKextLog(a1, 131073, "Error encountered, unmapping executable file %s (offset %lu, %lu bytes).", buffer, a2, st_size);
      munmap(v11, st_size);
    }

    return 0;
  }

  v16 = v15;
  v17 = CFGetAllocator(a1);
  v18 = CFDataCreateWithBytesNoCopy(v17, v11, st_size, v16);
  CFRelease(v16);
  close(v10);
  if (!v18)
  {
    goto LABEL_32;
  }

  return v18;
}

uint64_t __OSKextCreateLoadInfo(uint64_t a1)
{
  if (*(a1 + 72))
  {
    return 1;
  }

  v3 = malloc_type_malloc(0xB0uLL, 0x107004062F0A6EBuLL);
  *(a1 + 72) = v3;
  if (v3)
  {
    v3[9] = 0u;
    v3[10] = 0u;
    v3[7] = 0u;
    v3[8] = 0u;
    v3[5] = 0u;
    v3[6] = 0u;
    v3[3] = 0u;
    v3[4] = 0u;
    v3[1] = 0u;
    v3[2] = 0u;
    v1 = 1;
    *v3 = 0u;
  }

  else
  {
    OSKextLog(0, 17, "Memory allocation failure.");
    return 0;
  }

  return v1;
}

CFDataRef OSKextCopyResource(uint64_t a1, const __CFString *a2, const __CFString *a3)
{
  v3 = 0;
  v21 = *MEMORY[0x1E69E9840];
  resourceData = 0;
  if ((*(a1 + 88) & 8) == 0)
  {
    errorCode = 0;
    __OSKextGetFileSystemPath(a1, 0, 0, buffer);
    OSKextLog(a1, 131078, "Opening CFBundle for %s.", buffer);
    v7 = CFGetAllocator(a1);
    v8 = CFBundleCreate(v7, *(a1 + 16));
    if (v8)
    {
      v9 = v8;
      v10 = CFBundleCopyResourceURL(v8, a2, a3, 0);
      if (v10)
      {
        v11 = v10;
        __OSKextGetFileSystemPath(0, v10, 0, v19);
        OSKextLog(a1, 131078, "Reading resource %s.", v19);
        v12 = CFGetAllocator(a1);
        if (CFURLCreateDataAndPropertiesFromResource(v12, v11, &resourceData, 0, 0, &errorCode))
        {
          v3 = resourceData;
        }

        else
        {
          OSKextLog(a1, 131076, "Couldn't read resource file %s.", v19);
          v3 = 0;
        }

        if (v3)
        {
          v14 = 131079;
        }

        else
        {
          v14 = 131076;
        }

        v15 = "";
        if (!v3)
        {
          v15 = " failed";
        }

        OSKextLog(a1, v14, "Reading resource file %s%s.", v19, v15);
        CFRelease(v11);
      }

      else
      {
        UTF8CStringForCFString = createUTF8CStringForCFString(a2);
        OSKextLog(a1, 131076, "Couldn't read resource URL in %s for resource %s.", buffer, UTF8CStringForCFString);
        if (UTF8CStringForCFString)
        {
          free(UTF8CStringForCFString);
        }

        v3 = 0;
      }

      OSKextLog(a1, 131079, "Releasing CFBundle for %s.", buffer);
      CFRelease(v9);
    }

    else
    {
      OSKextLog(a1, 131076, "Couldn't open CFBundle for %s.", buffer);
      return 0;
    }
  }

  return v3;
}

uint64_t OSKextResolveDependencies(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = CFGetAllocator(a1);
  Mutable = CFSetCreateMutable(v2, 0, MEMORY[0x1E695E9F8]);
  v4 = CFGetAllocator(a1);
  v5 = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
  v6 = v5;
  if (Mutable)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (a1)
    {
      if ((*(a1 + 92) & 1) != 0 || (v11 = *(a1 + 72)) != 0 && (*(v11 + 168) & 0x10) != 0)
      {
        __OSKextGetFileSystemPath(a1, 0, 0, context);
        OSKextLog(a1, 16391, "%s - dependencies already resolved.", context);
        v8 = 0;
        v9 = 1;
        goto LABEL_29;
      }

      v12 = __OSKextResolveDependencies(a1, a1, Mutable, v5);
      v9 = v12;
      if (v12)
      {
        v8 = __OSKextCopyDependenciesList(a1, 1);
        if (!v8)
        {
          v9 = 0;
          goto LABEL_29;
        }

        ValueForInfoDictionaryKey = OSKextGetValueForInfoDictionaryKey(a1, @"OSBundleRequired");
        if (ValueForInfoDictionaryKey)
        {
          v14 = ValueForInfoDictionaryKey;
          if (!CFEqual(ValueForInfoDictionaryKey, @"Root") && !CFEqual(v14, @"Console") && !CFEqual(v14, @"DriverKit"))
          {
            if (CFEqual(v14, @"Local-Root"))
            {
              v30 = 0;
              v31 = 1;
              v29 = 1;
            }

            else
            {
              v31 = 1;
              v29 = CFEqual(v14, @"Network-Root") == 0;
              v30 = 1;
            }

LABEL_34:
            Count = CFArrayGetCount(v8);
            if (Count >= 1)
            {
              v16 = Count;
              v17 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v8, v17);
                v19 = OSKextGetValueForInfoDictionaryKey(ValueAtIndex, @"OSBundleRequired");
                v20 = v19;
                v21 = *(ValueAtIndex + 3);
                if (v31)
                {
                  goto LABEL_42;
                }

                if (!v19)
                {
                  break;
                }

                v22 = CFEqual(@"Safe Boot", v19);
                v23 = v20;
                if (v22)
                {
                  goto LABEL_41;
                }

LABEL_42:
                if (v30)
                {
                  goto LABEL_51;
                }

                if (!v20)
                {
                  v25 = @"OSBundleRequired not set";
LABEL_50:
                  __OSKextAddDiagnostic(a1, 8, @"Dependency lacks appropriate value for OSBundleRequired and may not be available during early boot", v21, v25);
                  goto LABEL_51;
                }

                if (!CFEqual(@"Root", v20) && !CFEqual(@"Local-Root", v20))
                {
                  v24 = CFEqual(@"Console", v20);
                  v25 = v20;
                  if (!v24)
                  {
                    goto LABEL_50;
                  }
                }

                v26 = CFEqual(@"DriverKit", v20);
                v25 = v20;
                if (v26)
                {
                  goto LABEL_50;
                }

LABEL_51:
                if (!v29)
                {
                  if (v20)
                  {
                    if ((CFEqual(@"Root", v20) || CFEqual(@"Network-Root", v20) || CFEqual(@"Console", v20)) && !CFEqual(@"DriverKit", v20))
                    {
                      goto LABEL_60;
                    }
                  }

                  else
                  {
                    v20 = @"OSBundleRequired not set";
                  }

                  __OSKextAddDiagnostic(a1, 8, @"Dependency lacks appropriate value for OSBundleRequired and may not be available during early boot", v21, v20);
                }

LABEL_60:
                if (++v17 < v16)
                {
                  v27 = v17;
                  do
                  {
                    v28 = CFArrayGetValueAtIndex(v8, v27);
                    if (CFEqual(v21, v28[3]))
                    {
                      __OSKextAddDiagnostic(a1, 4, @"Multiple kexts for these libraries occur in the dependency graph", v21, 0);
                      v9 = 0;
                    }

                    ++v27;
                  }

                  while (v16 != v27);
                }

                if (v17 == v16)
                {
                  goto LABEL_7;
                }
              }

              v23 = @"OSBundleRequired not set";
LABEL_41:
              __OSKextAddDiagnostic(a1, 8, @"Dependency lacks appropriate value for OSBundleRequired and may not be available during early boot", v21, v23);
              goto LABEL_42;
            }

            goto LABEL_29;
          }

          v31 = 0;
        }

        else
        {
          v31 = 1;
        }

        v29 = 1;
        v30 = 1;
        goto LABEL_34;
      }
    }

    else
    {
      if (__sOSKextsByURL)
      {
        context[0] = 1;
        CFDictionaryApplyFunction(__sOSKextsByURL, __OSKextResolveDependenciesApplierFunction, context);
      }

      v9 = 0;
    }

    v8 = 0;
    goto LABEL_29;
  }

  OSKextLog(0, 17, "Memory allocation failure.");
  v8 = 0;
  v9 = 0;
LABEL_7:
  if (!Mutable)
  {
    if (!v6)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_29:
  CFRelease(Mutable);
  if (v6)
  {
LABEL_9:
    CFRelease(v6);
  }

LABEL_10:
  if (v8)
  {
    CFRelease(v8);
  }

  return v9;
}

BOOL __OSKextResolveDependencies(uint64_t a1, uint64_t a2, __CFSet *a3, const __CFArray *a4)
{
  v81 = *MEMORY[0x1E69E9840];
  __OSKextGetFileSystemPath(a1, 0, 0, buffer);
  if (!__OSKextReadInfoDictionary(a1, 0) || !*(a1 + 56))
  {
    OSKextLog(a1, 16385, "%s has no info dictionary; can't resolve dependencies.");
LABEL_10:
    CFSetAddValue(a3, a1);
    return 0;
  }

  if (!__OSKextIsValid(a1))
  {
    OSKextLog(a1, 16385, "%s is invalid; can't resolve dependencies.");
    goto LABEL_10;
  }

  v8 = CFSetContainsValue(a3, a1);
  if (v8)
  {
    OSKextLog(a1, 16391, "%s already has dependencies resolved.", buffer);
    v9 = *(a1 + 72);
    if (!v9)
    {
      CFSetAddValue(a3, a1);
      return 1;
    }

    v10 = 1;
    goto LABEL_7;
  }

  if ((*(a1 + 92) & 1) == 0)
  {
    OSKextLog(a1, 16389, "Resolving dependencies for %s.", buffer);
  }

  v82.length = CFArrayGetCount(a4);
  v82.location = 0;
  if (CFArrayGetCountOfValue(a4, v82, a1))
  {
    __OSKextAddDiagnostic(a2, 4, @"Some dependencies are causing circular references", *(a1 + 24), 0);
    __OSKextAddDiagnostic(a1, 4, @"Some dependencies are causing circular references", *(a1 + 24), 0);
    goto LABEL_10;
  }

  CFArrayAppendValue(a4, a1);
  OSKextFlushDependencies(a1);
  if (!__OSKextCreateLoadInfo(a1))
  {
    goto LABEL_80;
  }

  v12 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v12, 0, MEMORY[0x1E695E9C0]);
  **(a1 + 72) = Mutable;
  if (!Mutable)
  {
    OSKextLog(0, 17, "Memory allocation failure.");
LABEL_80:
    v10 = 0;
LABEL_81:
    CFSetAddValue(a3, a1);
LABEL_82:
    Count = CFArrayGetCount(a4);
    CFArrayRemoveValueAtIndex(a4, Count - 1);
    return v10;
  }

  ValueForInfoDictionaryKey = OSKextGetValueForInfoDictionaryKey(a1, @"OSBundleLibraries");
  if (*(a1 + 92))
  {
    if (a1 == a2)
    {
      OSKextLog(a1, 0x4000, "%s is a kernel component with no dependencies.", buffer);
    }

    v10 = 1;
    goto LABEL_129;
  }

  v15 = ValueForInfoDictionaryKey;
  if (ValueForInfoDictionaryKey && (v16 = CFDictionaryGetCount(ValueForInfoDictionaryKey)) != 0)
  {
    v17 = v16;
    v18 = 8 * v16;
    v19 = malloc_type_malloc(8 * v16, 0x6004044C4A2DFuLL);
    v20 = malloc_type_malloc(v18, 0x6004044C4A2DFuLL);
    keys = v19;
    v76 = v20;
    if (!v19 || !v20)
    {
      OSKextLog(0, 17, "Memory allocation failure.");
      v10 = 0;
      v68 = 1;
      goto LABEL_124;
    }

    CFDictionaryGetKeysAndValues(v15, v19, v20);
    if (v17 >= 1)
    {
      v72 = 0;
      v21 = 0;
      v22 = 0;
      cf2 = *MEMORY[0x1E695E4D0];
      v23 = keys;
      v73 = v17;
      while (1)
      {
        v24 = v23;
        v25 = v23[v22];
        v26 = OSKextParseVersionCFString(v76[v22]);
        if (v21)
        {
          free(v21);
        }

        UTF8CStringForCFString = createUTF8CStringForCFString(v25);
        LoadedKextWithIdentifier = OSKextGetLoadedKextWithIdentifier(v25);
        v29 = LoadedKextWithIdentifier;
        if (LoadedKextWithIdentifier)
        {
          v30 = LoadedKextWithIdentifier[6];
          v31 = v30 >= 1 && v30 <= v26;
          if (!v31 || LoadedKextWithIdentifier[5] < v26)
          {
            OSKextVersionGetString(v26, v78, 0x14u);
            OSKextVersionGetString(v29[5], v77, 0x14u);
            if (v29[6] < 1)
            {
              v21 = UTF8CStringForCFString;
              OSKextLog(a1, 16385, "%s - loaded dependency %s lacks valid OSBundleCompatibleVersion.", buffer, UTF8CStringForCFString);
              v32 = @"Kexts already loaded for these libraries have no OSBundleCompatibleVersion";
            }

            else
            {
              v21 = UTF8CStringForCFString;
              OSKextLog(a1, 16385, "%s - loaded dependency %s, v%s is not compatible with requested version %s.", buffer, UTF8CStringForCFString, v77, v78);
              v32 = @"Kexts already loaded for these libraries are not compatible with the requested version";
            }

            v23 = v24;
            v35 = a1;
            goto LABEL_43;
          }

          CompatibleKextWithIdentifier = LoadedKextWithIdentifier;
          v34 = "compatible ";
        }

        else
        {
          CompatibleKextWithIdentifier = OSKextGetCompatibleKextWithIdentifier(v25, v26);
          if (CompatibleKextWithIdentifier)
          {
            v34 = "compatible ";
          }

          else
          {
            v34 = "incompatible ";
          }
        }

        if (CFEqual(v25, @"com.apple.kernel"))
        {
          v36 = 1;
        }

        else if (CFStringHasPrefix(v25, @"com.apple.kernel."))
        {
          v36 = 2;
        }

        else
        {
          if (!CFStringHasPrefix(v25, @"com.apple.kpi."))
          {
            goto LABEL_50;
          }

          *(*(a1 + 72) + 168) |= 4u;
          if (!CFEqual(v25, @"com.apple.kpi.private"))
          {
            goto LABEL_50;
          }

          v36 = 8;
        }

        *(*(a1 + 72) + 168) |= v36;
LABEL_50:
        if (CompatibleKextWithIdentifier)
        {
          v37 = *(CompatibleKextWithIdentifier + 92);
          v38 = OSKextGetValueForInfoDictionaryKey(CompatibleKextWithIdentifier, @"OSBundleRequiredPromotion");
          if (v38)
          {
            v71 = v34;
            v39 = CFEqual(v38, cf2);
            __OSKextGetFileSystemPath(CompatibleKextWithIdentifier, 0, 0, v79);
            v40 = "";
            v41 = "promotable ";
            if (!v39)
            {
              v41 = "";
            }

            v42 = "loaded ";
            if (!v29)
            {
              v42 = "";
            }

            if (v37)
            {
              v40 = " (kernel component)";
            }

            v21 = UTF8CStringForCFString;
            OSKextLog(a1, 16390, "%s found %s%s%sdependency %s for %s%s.", buffer, v71, v41, v42, v79, UTF8CStringForCFString, v40);
            CFArrayAppendValue(**(a1 + 72), CompatibleKextWithIdentifier);
            if (v39)
            {
              v43 = OSKextGetValueForInfoDictionaryKey(a1, @"OSBundleRequired");
              v44 = v73;
              v23 = keys;
              if (!v43 || CFStringCompare(v43, @"Safe Boot", 0) == kCFCompareEqualTo)
              {
                CFDictionarySetValue(*(a1 + 56), @"OSBundleRequired", @"Console");
              }

              goto LABEL_76;
            }
          }

          else
          {
            __OSKextGetFileSystemPath(CompatibleKextWithIdentifier, 0, 0, v79);
            v46 = "loaded ";
            if (!v29)
            {
              v46 = "";
            }

            v47 = " (kernel component)";
            if ((v37 & 1) == 0)
            {
              v47 = "";
            }

            v21 = UTF8CStringForCFString;
            OSKextLog(a1, 16390, "%s found %s%s%sdependency %s for %s%s.", buffer, v34, "", v46, v79, UTF8CStringForCFString, v47);
            CFArrayAppendValue(**(a1 + 72), CompatibleKextWithIdentifier);
          }

          goto LABEL_74;
        }

        KextWithIdentifier = OSKextGetKextWithIdentifier(v25);
        if (!KextWithIdentifier)
        {
          v21 = UTF8CStringForCFString;
          OSKextLog(a1, 16385, "%s - dependency '%s' not found.", buffer, UTF8CStringForCFString);
          __OSKextAddDiagnostic(a1, 4, @"No kexts found for these libraries", v25, 0);
          v72 = 1;
LABEL_74:
          v23 = keys;
          goto LABEL_75;
        }

        v23 = keys;
        v21 = UTF8CStringForCFString;
        if (KextWithIdentifier[6] < 1)
        {
          OSKextLog(a1, 16385, "%s - dependency for %s lacks valid OSBundleCompatibleVersion.", buffer, UTF8CStringForCFString);
          v35 = a1;
          v32 = @"Kexts found for these libraries lack valid OSBundleCompatibleVersion";
        }

        else
        {
          OSKextLog(a1, 16385, "%s - no compatible dependency found for %s.", buffer, UTF8CStringForCFString);
          v35 = a1;
          v32 = @"Only incompatible kexts found for these libraries";
        }

LABEL_43:
        __OSKextAddDiagnostic(v35, 4, v32, v25, 0);
        v72 = 1;
LABEL_75:
        v44 = v73;
LABEL_76:
        if (v44 == ++v22)
        {
          v69 = v72;
          goto LABEL_88;
        }
      }
    }
  }

  else
  {
    keys = 0;
    v76 = 0;
  }

  v21 = 0;
  v69 = 0;
LABEL_88:
  if (*(*(a1 + 72) + 168))
  {
    __OSKextSetDiagnostic(a1, 4, @"Kexts may not link against com.apple.kernel; use either com.apple.kpi.* libraries (recommended), or com.apple.kernel.* (for compatiblity with older releases).");
    v69 = 1;
  }

  if ((*(a1 + 92) & 2) != 0 && CFArrayGetCount(**(a1 + 72)) != 1)
  {
    OSKextLog(a1, 16385, "%s - Interface kext must have exactly one dependency.", buffer);
    __OSKextSetDiagnostic(a1, 4, @"Interface kext must have exactly one dependency.");
    v69 = 1;
  }

  v74 = v21;
  v49 = CFArrayGetCount(**(a1 + 72));
  if (v49 >= 1)
  {
    v50 = v49;
    for (i = 0; i != v50; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(**(a1 + 72), i);
      v53 = *(ValueAtIndex + 3);
      if (!__OSKextResolveDependencies(ValueAtIndex, a2, a3, a4))
      {
        v54 = CFArrayGetCount(a4);
        if (v54 >= 1)
        {
          v55 = v54;
          for (j = 0; j != v55; ++j)
          {
            v57 = CFArrayGetValueAtIndex(a4, j);
            __OSKextAddDiagnostic(v57, 4, @"Indirect dependencies can't be resolved", v53, 0);
          }
        }

        v69 = 1;
      }
    }
  }

  v58 = v69;
  v8 = 0;
  if ((*(a1 + 92) & 4) != 0 && __OSKextHasSuffix(a1))
  {
    v59 = OSKextGetKextWithIdentifier(@"com.apple.kpi.kasan");
    if (v59)
    {
      v60 = v59;
      OSKextLog(a1, 16390, "%s adding implicit KASan dependency", buffer);
      CFArrayAppendValue(**(a1 + 72), v60);
    }

    v61 = OSKextGetKextWithIdentifier(@"com.apple.kpi.kcov");
    if (v61)
    {
      v62 = v61;
      OSKextLog(a1, 16390, "%s adding implicit Kcov dependency", buffer);
      CFArrayAppendValue(**(a1 + 72), v62);
    }
  }

  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  v63 = *(a1 + 92);
  if (*(__sOSKextArchInfo + 11))
  {
    if ((v63 & 4) == 0)
    {
      goto LABEL_120;
    }

    pthread_once(&__sOSKextInitialized, __OSKextInitialize);
    if (!OSKextSupportsArchitecture(a1, __sOSKextArchInfo))
    {
      goto LABEL_120;
    }

    v67 = *(*(a1 + 72) + 168);
    if ((v67 & 2) == 0)
    {
      if ((v67 & 4) != 0)
      {
        goto LABEL_120;
      }

      v66 = @"Kext declares no com.apple.kpi.* libraries; if it references any kernel symbols, it may fail to link.";
      goto LABEL_114;
    }

    __OSKextSetDiagnostic(a1, 4, @"64-bit kexts must use com.apple.kpi.* libraries, not com.apple.kernel* libraries.");
  }

  else
  {
    v64 = *(a1 + 72);
    if ((v63 & 4) == 0 || (*(v64 + 168) & 6) != 0)
    {
      goto LABEL_112;
    }

    OSKextLog(a1, 16386, "%s does not declare a kernel dependency; using %s.", buffer, "com.apple.kernel.6.0");
    v65 = OSKextGetKextWithIdentifier(@"com.apple.kernel.6.0");
    if (v65)
    {
      CFArrayAppendValue(**(a1 + 72), v65);
      __OSKextSetDiagnostic(a1, 8, @"Kext declares no kernel/KPI libraries; if it references any kernel symbols, it may fail to link.");
      v64 = *(a1 + 72);
LABEL_112:
      if ((~*(v64 + 168) & 6) != 0)
      {
LABEL_120:
        v68 = v58 != 0;
        v10 = v58 == 0;
        goto LABEL_121;
      }

      v66 = @"Kexts should declare dependencies on either com.apple.kernel* or com.apple.kpi.* libraries, not both.";
LABEL_114:
      __OSKextSetDiagnostic(a1, 8, v66);
      goto LABEL_120;
    }

    OSKextLog(a1, 16385, "%s - dependency '%s' not found.", buffer, "com.apple.kernel.6.0");
  }

  v10 = 0;
  v68 = 1;
LABEL_121:
  if (v74)
  {
    free(v74);
  }

LABEL_124:
  if (keys)
  {
    free(keys);
  }

  if (v76)
  {
    free(v76);
  }

  if (v68)
  {
    goto LABEL_81;
  }

LABEL_129:
  v9 = *(a1 + 72);
  if (!v9)
  {
    goto LABEL_81;
  }

LABEL_7:
  *(v9 + 168) |= 0x10u;
  CFSetAddValue(a3, a1);
  if (!v8)
  {
    goto LABEL_82;
  }

  return v10;
}

uint64_t __OSKextResolveDependenciesApplierFunction(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = OSKextResolveDependencies(a2);
  if (!result)
  {
    *a3 = 0;
  }

  return result;
}

uint64_t __OSKextClearHasAllDependenciesOnKext(const void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  result = CFArrayGetCount(__sOSAllKexts);
  if (result >= 1)
  {
    v3 = result;
    for (i = 0; i != v3; ++i)
    {
      result = CFArrayGetValueAtIndex(__sOSAllKexts, i);
      v5 = *(result + 72);
      if (v5)
      {
        v6 = *v5;
        if (*v5)
        {
          v7 = result;
          if ((*(result + 92) & 1) != 0 || (*(v5 + 168) & 0x10) != 0)
          {
            v10.length = CFArrayGetCount(v6);
            v10.location = 0;
            result = CFArrayContainsValue(v6, v10, a1);
            if (result)
            {
              __OSKextGetFileSystemPath(v7, 0, 0, buffer);
              OSKextLog(a1, 262151, "Clearing has all dependencies for %s.", buffer);
              *(v7[9] + 168) &= ~0x10u;
              result = __OSKextClearHasAllDependenciesOnKext(v7);
            }
          }
        }
      }
    }
  }

  return result;
}

void OSKextFlushDependencies(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  if (a1)
  {
    if ((OSKextFlushDependencies_flushingAll & 1) == 0)
    {
      if (a1[2])
      {
        __OSKextGetFileSystemPath(a1, 0, 0, buffer);
      }

      OSKextLog(a1, 262150, "Flushing dependencies for %s.", buffer);
    }

    v2 = a1[9];
    if (v2)
    {
      *(v2 + 168) &= ~1u;
      *(a1[9] + 168) &= ~2u;
      *(a1[9] + 168) &= ~4u;
      v3 = *a1[9];
      if (v3)
      {
        CFRelease(v3);
        v4 = a1[9];
        *v4 = 0;
        *(v4 + 168) &= ~0x10u;
        *(a1[9] + 168) &= ~0x20u;
        *(a1[9] + 168) &= ~0x40u;
        __OSKextClearHasAllDependenciesOnKext(a1);
      }

      OSKextFlushDiagnostics(a1, 4);
    }
  }

  else if (__sOSKextsByURL)
  {
    OSKextFlushDependencies_flushingAll = 1;
    OSKextLog(0, 262150, "Flushing dependencies for all kexts.");
    CFDictionaryApplyFunction(__sOSKextsByURL, __OSKextFlushDependenciesApplierFunction, 0);
    OSKextFlushDependencies_flushingAll = 0;
  }
}

void OSKextFlushDiagnostics(uint64_t a1, int a2)
{
  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  if (a1)
  {
    v4 = *(a1 + 64);
    if (!v4)
    {
      return;
    }

    if (a2)
    {
      if (*v4)
      {
        CFRelease(*v4);
        v4 = *(a1 + 64);
      }

      *v4 = 0;
      if ((a2 & 2) == 0)
      {
LABEL_5:
        if ((a2 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_17;
      }
    }

    else if ((a2 & 2) == 0)
    {
      goto LABEL_5;
    }

    if (v4[1])
    {
      CFRelease(v4[1]);
      v4 = *(a1 + 64);
    }

    v4[1] = 0;
    if ((a2 & 4) == 0)
    {
LABEL_6:
      if ((a2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

LABEL_17:
    if (v4[2])
    {
      CFRelease(v4[2]);
      v4 = *(a1 + 64);
    }

    v4[2] = 0;
    if ((a2 & 8) == 0)
    {
LABEL_7:
      if ((a2 & 0x10) == 0)
      {
LABEL_26:
        if ((~a2 & 0x1F) == 0)
        {
          free(v4);
          *(a1 + 64) = 0;
        }

        return;
      }

LABEL_23:
      if (v4[4])
      {
        CFRelease(v4[4]);
        v4 = *(a1 + 64);
      }

      v4[4] = 0;
      goto LABEL_26;
    }

LABEL_20:
    if (v4[3])
    {
      CFRelease(v4[3]);
      v4 = *(a1 + 64);
    }

    v4[3] = 0;
    if ((a2 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (__sOSKextsByURL)
  {
    context = a2;
    CFDictionaryApplyFunction(__sOSKextsByURL, __OSKextFlushDiagnosticsApplierFunction, &context);
  }
}

uint64_t OSKextValidateDependencies(void *a1)
{
  v2 = a1[9];
  if (v2 && (*(v2 + 168) & 0x20) != 0)
  {
    return 1;
  }

  v3 = __OSKextCopyDependenciesList(a1, 1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Count = CFArrayGetCount(v3);
  v6 = Count - 1;
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    for (i = 0; i != v7; ++i)
    {
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        if (__OSKextIsValid(ValueAtIndex))
        {
          break;
        }

        __OSKextAddDiagnostic(a1, 4, @"Dependencies have validation problems", ValueAtIndex[3], 0);
        v8 = 1;
        if (v6 == i++)
        {
          goto LABEL_17;
        }
      }
    }

    if (v8)
    {
      goto LABEL_17;
    }
  }

  if (!__OSKextCreateLoadInfo(a1))
  {
LABEL_17:
    v12 = 0;
  }

  else
  {
    *(a1[9] + 168) |= 0x20u;
    v12 = 1;
  }

  CFRelease(v4);
  return v12;
}

uint64_t OSKextAuthenticateDependencies(void *a1)
{
  v2 = a1[9];
  if (v2 && (*(v2 + 168) & 0x40) != 0)
  {
    return 1;
  }

  v3 = __OSKextCopyDependenciesList(a1, 1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Count = CFArrayGetCount(v3);
  v6 = Count - 1;
  if (Count < 1)
  {
LABEL_15:
    if (__OSKextCreateLoadInfo(a1))
    {
      *(a1[9] + 168) |= 0x40u;
    }

    else
    {
      OSKextLog(0, 17, "Memory allocation failure.");
    }

    v12 = 1;
  }

  else
  {
    v7 = Count;
    v8 = 0;
    for (i = 0; i != v7; ++i)
    {
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        if (OSKextIsAuthentic(ValueAtIndex))
        {
          break;
        }

        __OSKextAddDiagnostic(a1, 4, @"Dependencies have incorrect owner/permissions", ValueAtIndex[3], 0);
        v8 = 1;
        if (v6 == i++)
        {
          goto LABEL_14;
        }
      }
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    v12 = 0;
  }

  CFRelease(v4);
  return v12;
}

CFArrayRef OSKextCopyDeclaredDependencies(void *a1, int a2)
{
  v4 = OSKextResolveDependencies(a1);
  if (a2 && !v4)
  {
    return 0;
  }

  v6 = a1[9];
  if (v6 && *v6)
  {
    v7 = CFGetAllocator(a1);
    v8 = *a1[9];

    return CFArrayCreateCopy(v7, v8);
  }

  else
  {
    v9 = CFGetAllocator(a1);
    v10 = MEMORY[0x1E695E9C0];

    return CFArrayCreate(v9, 0, 0, v10);
  }
}

CFMutableArrayRef OSKextCopyLinkDependencies(const void *a1, uint64_t a2)
{
  v4 = OSKextResolveDependencies(a1);
  if (a2 && !v4)
  {
    return 0;
  }

  v6 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    OSKextLog(0, 17, "Memory allocation failure.");
    return Mutable;
  }

  if (!__OSKextAddLinkDependencies(a1, Mutable, a2, 0))
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t __OSKextAddLinkDependencies(uint64_t a1, const __CFArray *a2, uint64_t a3, int a4)
{
  if (*(a1 + 92))
  {
    return 1;
  }

  v6 = *(a1 + 72);
  if (!v6)
  {
    return a3 == 0;
  }

  v7 = *v6;
  if (!*v6)
  {
    return a3 == 0;
  }

  if (a4)
  {
    BleedthroughFlag = 1;
  }

  else
  {
    BleedthroughFlag = __OSKextGetBleedthroughFlag(a1);
    v7 = **(a1 + 72);
  }

  Count = CFArrayGetCount(v7);
  if (Count >= 1)
  {
    v12 = Count;
    for (i = 0; i != v12; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(**(a1 + 72), i);
      v15 = ValueAtIndex;
      if (!BleedthroughFlag && (ValueAtIndex[92] & 4) != 0)
      {
        goto LABEL_15;
      }

      result = __OSKextAddLinkDependencies(ValueAtIndex, a2, a3, BleedthroughFlag);
      if (!result)
      {
        return result;
      }

      if ((v15[92] & 4) != 0)
      {
LABEL_15:
        v16.length = CFArrayGetCount(a2);
        v16.location = 0;
        if (CFArrayGetFirstIndexOfValue(a2, v16, v15) == -1)
        {
          CFArrayAppendValue(a2, v15);
        }
      }
    }
  }

  return 1;
}

__CFArray *OSKextCopySymbolReferences(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v4 = Mutable;
    if (__OSKextReadSymbolReferences(a1, Mutable))
    {
      v5 = CFGetAllocator(v4);
      v6 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
      if (!v6)
      {
        OSKextLog(0, 17, "Memory allocation failure.");
        goto LABEL_11;
      }

      Count = CFDictionaryGetCount(v4);
      if (!Count)
      {
LABEL_11:
        CFRelease(v4);
        return v6;
      }

      v8 = Count;
      v9 = 8 * Count;
      v10 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      if (v10)
      {
        v11 = v10;
        bzero(v10, v9);
        CFDictionaryGetKeysAndValues(v4, v11, 0);
        v13.location = 0;
        v13.length = 0;
        CFArrayReplaceValues(v6, v13, v11, v8);
        free(v11);
        goto LABEL_11;
      }

      OSKextLog(0, 17, "Memory allocation failure.");
      CFRelease(v6);
    }

    v6 = 0;
    goto LABEL_11;
  }

  OSKextLog(0, 17, "Memory allocation failure.");
  return 0;
}

uint64_t __OSKextReadSymbolReferences(uint64_t a1, __CFDictionary *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v34 = 0;
  __OSKextGetFileSystemPath(a1, 0, 0, buffer);
  if ((*(a1 + 92) & 5) != 4)
  {
    return 1;
  }

  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  v4 = OSKextCopyExecutableForArchitecture(a1, __sOSKextArchInfo);
  if (v4)
  {
    v5 = v4;
    BytePtr = CFDataGetBytePtr(v4);
    v7 = BytePtr + CFDataGetLength(v5);
    v8 = *BytePtr;
    if (*BytePtr == -17958193 || v8 == -805638658)
    {
      v12 = 0;
      v11 = 16;
    }

    else
    {
      v11 = 12;
      v12 = 1;
    }

    if (macho_find_symtab(BytePtr, v7, &v34))
    {
      pthread_once(&__sOSKextInitialized, __OSKextInitialize);
      OSKextLog(a1, 1048577, "%s has no symtab in its executable (%s)");
      goto LABEL_19;
    }

    theDict = a2;
    v13.i32[0] = 0;
    v15 = (v8 + 822415874) & 0xFEFFFFFF;
    v14.i32[0] = v15;
    v16 = vbsl_s8(vdup_lane_s32(vceq_s32(v14, v13), 0), vrev32_s8(*(v34 + 12)), *(v34 + 12));
    LODWORD(v17) = *(v34 + 8);
    v18 = bswap32(v17);
    if (v15)
    {
      v17 = v17;
    }

    else
    {
      v17 = v18;
    }

    v19 = BytePtr + v17;
    v20 = v16.u32[0];
    if (BytePtr + v17 + (v16.i32[0] * v11) <= v7)
    {
      if (v16.i32[0])
      {
        v32 = BytePtr + v16.u32[1];
        alloc = *MEMORY[0x1E695E480];
        value = *MEMORY[0x1E695E4D0];
        v22 = BytePtr + v17;
        do
        {
          if (v12)
          {
            v23 = v22;
          }

          else
          {
            v23 = v19;
          }

          v24 = bswap32(*v23);
          if (v15)
          {
            v25 = *v23;
          }

          else
          {
            v25 = v24;
          }

          if (v25 && (v23[4] & 0xEE) == 0)
          {
            v26 = &v32[v25];
            if (v26 >= v7)
            {
              v27 = 0;
            }

            else
            {
              v27 = strnlen(&v32[v25], v7 - v26);
            }

            if (&v26[v27] >= v7)
            {
              pthread_once(&__sOSKextInitialized, __OSKextInitialize);
              OSKextLog(a1, 1048577, "%s: internal overrun (%p, string_index: %d, file_end: %p) in executable file (%s).");
              goto LABEL_19;
            }

            v28 = CFStringCreateWithCString(alloc, v26, 0x600u);
            if (!v28)
            {
              OSKextLog(0, 17, "Memory allocation failure.");
              goto LABEL_19;
            }

            v29 = v28;
            CFDictionarySetValue(theDict, v28, value);
            CFRelease(v29);
          }

          v22 += 12;
          v19 += 16;
          --v20;
        }

        while (v20);
      }

      v10 = 1;
    }

    else
    {
      pthread_once(&__sOSKextInitialized, __OSKextInitialize);
      OSKextLog(a1, 1048577, "%s: internal overrun in executable file (%s).");
LABEL_19:
      v10 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    pthread_once(&__sOSKextInitialized, __OSKextInitialize);
    OSKextLog(a1, 1048577, "%s has no executable for architecture %s.", buffer, *__sOSKextArchInfo);
    return 0;
  }

  return v10;
}

CFTypeRef OSKextFindLinkDependencies(const void *a1, int a2, int a3, CFTypeRef *a4, CFTypeRef *a5, CFTypeRef *a6, CFTypeRef *a7)
{
  v95 = *MEMORY[0x1E69E9840];
  AllKexts = OSKextGetAllKexts();
  if (!AllKexts)
  {
    return 0;
  }

  v13 = AllKexts;
  v87 = a4;
  v88 = a7;
  __OSKextGetFileSystemPath(a1, 0, 0, buffer);
  OSKextLog(a1, 1064965, "Searching for link dependencies of %s.", buffer);
  v14 = CFGetAllocator(a1);
  v15 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(v14, 0, MEMORY[0x1E695E9C0]);
  v17 = CFGetAllocator(a1);
  v18 = MEMORY[0x1E695E9D8];
  v19 = MEMORY[0x1E695E9E8];
  v20 = CFDictionaryCreateMutable(v17, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v21 = CFGetAllocator(a1);
  v22 = CFDictionaryCreateMutable(v21, 0, v18, v19);
  v23 = CFGetAllocator(a1);
  v24 = CFDictionaryCreateMutable(v23, 0, v18, v19);
  v25 = CFGetAllocator(a1);
  v26 = CFArrayCreateMutable(v25, 0, v15);
  v27 = v26;
  if (!Mutable || !v20 || !v22 || !v24 || !v26)
  {
    OSKextLog(0, 17, "Memory allocation failure.");
    v66 = 0;
    goto LABEL_81;
  }

  if (!__OSKextReadSymbolReferences(a1, v20))
  {
    v66 = 0;
    goto LABEL_111;
  }

  theArray = v27;
  v85 = v20;
  v86 = v22;
  Count = CFArrayGetCount(v13);
  if (Count < 1)
  {
    goto LABEL_91;
  }

  v29 = Count;
  v30 = 0;
  alloc = *MEMORY[0x1E695E480];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v13, v30);
    if (ValueAtIndex == a1)
    {
      goto LABEL_37;
    }

    v32 = ValueAtIndex;
    if (*(ValueAtIndex + 6) < 1)
    {
      goto LABEL_37;
    }

    if ((*(ValueAtIndex + 92) & 4) == 0)
    {
      goto LABEL_37;
    }

    v33 = *(ValueAtIndex + 3);
    if (!a3 && (CFEqual(v33, @"com.apple.kernel.unsupported") || CFEqual(v33, @"com.apple.kpi.unsupported") || CFEqual(v33, @"com.apple.kpi.private") || CFEqual(v33, @"com.apple.kpi.dsep")))
    {
      goto LABEL_37;
    }

    v34 = a2 ? @"com.apple.kpi." : @"com.apple.kernel.";
    if (CFStringHasPrefix(v33, v34))
    {
      goto LABEL_37;
    }

    v91 = 0;
    __OSKextGetFileSystemPath(v32, 0, 0, v94);
    pthread_once(&__sOSKextInitialized, __OSKextInitialize);
    v35 = OSKextCopyExecutableForArchitecture(v32, __sOSKextArchInfo);
    if (!v35)
    {
      goto LABEL_37;
    }

    v80 = a5;
    v81 = Mutable;
    v82 = a6;
    v36 = v35;
    BytePtr = CFDataGetBytePtr(v35);
    cf = v36;
    Length = CFDataGetLength(v36);
    v39 = *BytePtr;
    theDict = v24;
    if (*BytePtr == -17958193 || v39 == -805638658)
    {
      v77 = 0;
      v40 = 16;
    }

    else
    {
      v40 = 12;
      v77 = 1;
    }

    v41 = BytePtr + Length;
    if (macho_find_symtab(BytePtr, BytePtr + Length, &v91))
    {
      pthread_once(&__sOSKextInitialized, __OSKextInitialize);
      OSKextLog(v32, 1048577, "%s has no symtab in its executable (%s)");
LABEL_35:
      Mutable = v81;
      a6 = v82;
LABEL_36:
      CFRelease(cf);
      a5 = v80;
      v24 = theDict;
      goto LABEL_37;
    }

    v42.i32[0] = 0;
    v44 = (v39 + 822415874) & 0xFEFFFFFF;
    v43.i32[0] = v44;
    v45 = vbsl_s8(vdup_lane_s32(vceq_s32(v43, v42), 0), vrev32_s8(*(v91 + 12)), *(v91 + 12));
    LODWORD(v46) = *(v91 + 8);
    v47 = bswap32(v46);
    if (v44)
    {
      v46 = v46;
    }

    else
    {
      v46 = v47;
    }

    v48 = BytePtr + v46;
    v49 = v45.u32[0];
    if (BytePtr + v46 + (v45.i32[0] * v40) > v41)
    {
      pthread_once(&__sOSKextInitialized, __OSKextInitialize);
      OSKextLog(v32, 1048577, "%s - internal overrun in executable file (%s).");
      goto LABEL_35;
    }

    Mutable = v81;
    a6 = v82;
    if (!v45.i32[0])
    {
      goto LABEL_36;
    }

    v76 = 0;
    v50 = 0;
    v73 = 0;
    v74 = v44;
    v75 = BytePtr + v45.u32[1];
    v51 = BytePtr + v46;
    v52 = v77;
    do
    {
      if (v52)
      {
        v53 = v51;
      }

      else
      {
        v53 = v48;
      }

      v54 = bswap32(*v53);
      if (v44)
      {
        v55 = *v53;
      }

      else
      {
        v55 = v54;
      }

      if (!v55)
      {
        goto LABEL_68;
      }

      v56 = v53[4];
      if (v56 > 0x1F)
      {
        goto LABEL_68;
      }

      v57 = v56 & 0xE;
      if (!v57)
      {
        goto LABEL_52;
      }

      if (v57 != 14)
      {
        if (v57 != 10)
        {
          goto LABEL_68;
        }

LABEL_52:
        if ((v32[23] & 1) == 0)
        {
          goto LABEL_68;
        }

        goto LABEL_55;
      }

      if (v32[23])
      {
        goto LABEL_68;
      }

LABEL_55:
      if (v50)
      {
        CFRelease(v50);
      }

      v58 = CFStringCreateWithCString(alloc, &v75[v55], 0x600u);
      if (!v58)
      {
        OSKextLog(0, 17, "Memory allocation failure.");
        goto LABEL_35;
      }

      v59 = v58;
      Value = CFDictionaryGetValue(theDict, v58);
      if (Value)
      {
        CFArrayAppendValue(Value, v32);
        goto LABEL_60;
      }

      v61 = CFDictionaryGetValue(v86, v59);
      if (!v61)
      {
        v52 = v77;
        if (CFDictionaryGetValue(v85, v59))
        {
          CFDictionarySetValue(v86, v59, v32);
          CFDictionaryRemoveValue(v85, v59);
LABEL_60:
          v76 = 1;
        }

        v44 = v74;
        v50 = v59;
        goto LABEL_68;
      }

      v62 = v61;
      key = v59;
      v63 = CFArrayCreateMutable(alloc, 0, MEMORY[0x1E695E9C0]);
      if (!v63)
      {
        OSKextLog(0, 17, "Memory allocation failure.");
        v65 = 1;
        v24 = theDict;
        v50 = key;
        goto LABEL_73;
      }

      v64 = v63;
      CFArrayAppendValue(v63, v62);
      CFArrayAppendValue(v64, v32);
      CFDictionarySetValue(theDict, key, v64);
      CFRelease(v64);
      if (!v73)
      {
        v96.length = CFArrayGetCount(theArray);
        v96.location = 0;
        if (CFArrayGetFirstIndexOfValue(theArray, v96, v32) == -1)
        {
          CFArrayAppendValue(theArray, v32);
        }
      }

      CFDictionaryRemoveValue(v86, key);
      v50 = key;
      v73 = 1;
      v76 = 1;
      v52 = v77;
      v44 = v74;
LABEL_68:
      v51 += 12;
      v48 += 16;
      --v49;
    }

    while (v49);
    v24 = theDict;
    v65 = v76;
    if (!v50)
    {
      goto LABEL_74;
    }

LABEL_73:
    CFRelease(v50);
LABEL_74:
    CFRelease(cf);
    Mutable = v81;
    a6 = v82;
    a5 = v80;
    if (v65)
    {
      __OSKextGetFileSystemPath(v32, 0, 0, v92);
      OSKextLog(a1, 1064966, "%s found link dependency %s.", buffer, v92);
      v97.length = CFArrayGetCount(v81);
      v97.location = 0;
      if (CFArrayGetFirstIndexOfValue(v81, v97, v32) == -1)
      {
        CFArrayAppendValue(v81, v32);
      }
    }

LABEL_37:
    ++v30;
  }

  while (v30 != v29);
LABEL_91:
  v98.length = CFArrayGetCount(Mutable);
  v98.location = 0;
  CFArraySortValues(Mutable, v98, __OSKextCompareIdentifiers, 0);
  v27 = theArray;
  v99.length = CFArrayGetCount(theArray);
  v99.location = 0;
  CFArraySortValues(theArray, v99, __OSKextCompareIdentifiers, 0);
  v66 = CFRetain(Mutable);
  if (v66)
  {
    v20 = v85;
    v68 = CFDictionaryGetCount(v85);
    if (v68)
    {
      if (v68 <= 1)
      {
        v69 = "";
      }

      else
      {
        v69 = "s";
      }

      OSKextLog(a1, 1064966, "%s has %d remaining undefined symbol%s", buffer, v68, v69);
    }

    v70 = CFDictionaryGetCount(v24);
    if (v70)
    {
      if (v70 <= 1)
      {
        v71 = "";
      }

      else
      {
        v71 = "s";
      }

      OSKextLog(a1, 1064966, "%s has multiply defined %ld symbol%s", buffer, v70, v71);
    }

    if (v87)
    {
      *v87 = CFRetain(v85);
    }

    v22 = v86;
    if (a5)
    {
      *a5 = CFRetain(v86);
    }

    if (a6)
    {
      *a6 = CFRetain(v24);
    }

    if (v88)
    {
      *v88 = CFRetain(theArray);
    }
  }

  else
  {
    v20 = v85;
    v22 = v86;
  }

LABEL_81:
  if (!Mutable)
  {
    if (v20)
    {
      goto LABEL_83;
    }

    goto LABEL_84;
  }

LABEL_111:
  CFRelease(Mutable);
  if (v20)
  {
LABEL_83:
    CFRelease(v20);
  }

LABEL_84:
  if (v22)
  {
    CFRelease(v22);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  return v66;
}

CFMutableArrayRef __OSKextCopyDependenciesList(const void *a1, int a2, int a3)
{
  v6 = OSKextResolveDependencies(a1);
  if (a2 && !v6)
  {
    return 0;
  }

  v7 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
  v9 = Mutable;
  if (!Mutable)
  {
    OSKextLog(0, 17, "Memory allocation failure.");
    return v9;
  }

  v11 = Mutable;
  v12 = a3;
  v13 = 0;
  v14 = 0;
  __OSKextAddDependenciesApplierFunction(a1, &v11);
  if (v14)
  {
    CFRelease(v9);
    return 0;
  }

  return v9;
}

const __CFArray *OSKextDependsOnKext(uint64_t a1, const void *a2, int a3)
{
  OSKextResolveDependencies(a1);
  v6 = *(a1 + 72);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (!*v6)
  {
    return result;
  }

  Count = CFArrayGetCount(result);
  if (Count < 1)
  {
    return 0;
  }

  v9 = Count;
  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(**(a1 + 72), v10);
    if (ValueAtIndex == a2 || !a3 && OSKextDependsOnKext(ValueAtIndex, a2, 0))
    {
      break;
    }

    if (v9 == ++v10)
    {
      return 0;
    }
  }

  return 1;
}

__CFArray *OSKextCopyDependents(const void *a1, int a2)
{
  AllKexts = OSKextGetAllKexts();
  if (!AllKexts)
  {
    return 0;
  }

  v5 = AllKexts;
  OSKextResolveDependencies(0);
  v6 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v9 = Count;
      for (i = 0; i != v9; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
        if (OSKextDependsOnKext(ValueAtIndex, a1, a2))
        {
          CFArrayAppendValue(Mutable, ValueAtIndex);
        }
      }
    }
  }

  else
  {
    OSKextLog(0, 17, "Memory allocation failure.");
  }

  return Mutable;
}

void __OSKextLogDependencyGraphApplierFunction(uint64_t a1, uint64_t *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  context = *a2;
  if (!OSKextResolveDependencies(a1))
  {
    return;
  }

  if (!v3)
  {
    v5 = 0;
LABEL_6:
    if ((v3 & 0xFF00000000) != 0)
    {
      PathComponent = *(a1 + 24);
      CFRetain(PathComponent);
    }

    else
    {
      PathComponent = CFURLCopyLastPathComponent(*(a1 + 16));
    }

    UTF8CStringForCFString = createUTF8CStringForCFString(PathComponent);
    if (!UTF8CStringForCFString)
    {
      goto LABEL_42;
    }

    OSKextVersionGetString(*(a1 + 40), v16, 0x14u);
    v8 = *(a1 + 72);
    if (v8)
    {
      v9 = *(a1 + 92);
      if (*v8)
      {
        if ((v9 & 1) != 0 || (*(v8 + 168) & 0x10) != 0)
        {
          v10 = " ->";
        }

        else
        {
          v10 = " (dependencies not fully resolved) ->";
        }

        goto LABEL_25;
      }

      if ((v9 & 1) == 0 && (*(v8 + 168) & 0x10) == 0)
      {
        goto LABEL_23;
      }
    }

    else if ((*(a1 + 92) & 1) == 0)
    {
LABEL_23:
      v10 = " (dependencies not resolved).";
LABEL_25:
      v11 = "";
      if (v5)
      {
        v11 = v5;
      }

      OSKextLog(0, 0x4000, "%s%s (%s)%s", v11, UTF8CStringForCFString, v16, v10);
      LODWORD(context) = v3 + 4;
      if ((v3 & 0xFF0000000000) != 0)
      {
        v12 = OSKextCopyLinkDependencies(a1, 0);
        v13 = v12;
        if (!v12)
        {
LABEL_33:
          if (!v5)
          {
LABEL_35:
            if (UTF8CStringForCFString)
            {
              free(UTF8CStringForCFString);
            }

            if (PathComponent)
            {
              CFRelease(PathComponent);
            }

            if (v12)
            {
              CFRelease(v12);
            }

            return;
          }

LABEL_34:
          free(v5);
          goto LABEL_35;
        }

LABEL_32:
        v19.length = CFArrayGetCount(v13);
        v19.location = 0;
        CFArrayApplyFunction(v13, v19, __OSKextLogDependencyGraphApplierFunction, &context);
        goto LABEL_33;
      }

      v14 = *(a1 + 72);
      if (v14)
      {
        v12 = 0;
        v13 = *v14;
        if (!*v14)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

LABEL_42:
      v12 = 0;
      if (!v5)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    v10 = ".";
    goto LABEL_25;
  }

  v4 = malloc_type_malloc((v3 + 1), 0x100004077774924uLL);
  if (v4)
  {
    v5 = v4;
    memset(v4, 32, v3);
    v5[v3] = 0;
    goto LABEL_6;
  }

  OSKextLog(0, 17, "Memory allocation failure.");
}

void OSKextLogDependencyGraph(uint64_t a1, char a2, char a3)
{
  v4 = 0;
  BYTE4(v4) = a2;
  BYTE5(v4) = a3;
  OSKextResolveDependencies(a1);
  __OSKextLogDependencyGraphApplierFunction(a1, &v4);
}

uint64_t OSKextLoadWithOptions(uint64_t a1, char a2, char a3, const void *a4, int a5)
{
  v62 = *MEMORY[0x1E69E9840];
  LoadedKextInfo = 3690987521;
  valuePtr = a2;
  v55 = a3;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    OSKextLog(0, 17, "Memory allocation failure.");
    return LoadedKextInfo;
  }

  v10 = Mutable;
  CFDictionarySetValue(Mutable, @"CFBundleIdentifier", *(a1 + 24));
  v11 = CFGetAllocator(a1);
  v12 = CFNumberCreate(v11, kCFNumberSInt8Type, &valuePtr);
  if (!v12)
  {
    OSKextLog(0, 17, "Memory allocation failure.");
    v19 = v10;
LABEL_55:
    CFRelease(v19);
    return LoadedKextInfo;
  }

  v13 = v12;
  CFDictionarySetValue(v10, @"Start Exclude Level", v12);
  v14 = CFGetAllocator(a1);
  v15 = CFNumberCreate(v14, kCFNumberSInt8Type, &v55);
  v16 = v15;
  if (!v15)
  {
    OSKextLog(0, 17, "Memory allocation failure.");
    goto LABEL_53;
  }

  CFDictionarySetValue(v10, @"Start Matching Exclude Level", v15);
  if (a4)
  {
    CFDictionarySetValue(v10, @"Personality Names", a4);
  }

  if (a5)
  {
    CFDictionarySetValue(v10, @"Delay Autounload", *MEMORY[0x1E695E4D0]);
  }

  op_result = -603979775;
  *&size[1] = 0;
  size[0] = 0;
  *&address[1] = 0;
  address[0] = 0;
  v17 = MEMORY[0x19A8DBAE0]();
  if (!v17)
  {
    OSKextLog(a1, 33, "Process must be running as root to load kexts.");
    LoadedKextInfo = 3691020292;
    goto LABEL_46;
  }

  v18 = v17;
  __OSKextGetFileSystemPath(a1, 0, 0, buffer);
  if (!__OSKextIsValid(a1))
  {
    OSKextLog(a1, 33, "Can't load %s - validation problems.", buffer);
    LoadedKextInfo = 3691020300;
    goto LABEL_46;
  }

  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  if (!OSKextSupportsArchitecture(a1, __sOSKextArchInfo))
  {
    OSKextLog(a1, 33, "Can't load %s - no code for running kernel's architecture.", buffer);
    LoadedKextInfo = 3691020303;
    goto LABEL_46;
  }

  if (!(OSKextGetActualSafeBoot() | __sOSKextSimulatedSafeBoot) || (*(a1 + 92) & 0x80) != 0)
  {
    if (!OSKextIsAuthentic(a1))
    {
      LoadedKextInfo = 3691020301;
      OSKextLog(a1, 33, "Can't load %s - authentication problems.");
      goto LABEL_46;
    }

    if (!__sOSKextLoadAuditFunction)
    {
      OSKextLog(a1, 33, "No load audit function set, cannot load %s");
      goto LABEL_46;
    }

    OSKextFlushLoadInfo(0, 1);
    v20 = __OSKextCopyDependenciesList(a1, 1, 0);
    if (!v20)
    {
      OSKextLog(a1, 33, "Can't load %s - failed to resolve dependencies.", buffer);
      LoadedKextInfo = 3691020302;
      goto LABEL_46;
    }

    v21 = v20;
    if (OSKextAuthenticateDependencies(a1))
    {
      if (OSKextDependenciesAreLoadableInSafeBoot(a1))
      {
        Count = CFArrayGetCount(v21);
        v23 = CFGetAllocator(a1);
        v24 = CFArrayCreateMutable(v23, Count, MEMORY[0x1E695E9C0]);
        if (v24)
        {
          v25 = v24;
          if (Count >= 1)
          {
            for (i = 0; i != Count; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v21, i);
              CFArrayAppendValue(v25, ValueAtIndex[3]);
            }
          }

          CFRelease(v21);
          LoadedKextInfo = OSKextReadLoadedKextInfo(v25, 1);
          if (LoadedKextInfo)
          {
            goto LABEL_29;
          }

          if (OSKextIsLoaded(a1))
          {
LABEL_58:
            v41 = __OSKextCopyDependenciesList(a1, 1, 0);
            if (v41)
            {
              v42 = v41;
              if (OSKextAuthenticateDependencies(a1))
              {
                v43 = CFGetAllocator(a1);
                Mkext = __OSKextCreateMkext(v43, v42, 0, 0, 0, 1, v10);
                v45 = Mkext;
                if (Mkext)
                {
                  BytePtr = CFDataGetBytePtr(Mkext);
                  Length = CFDataGetLength(v45);
                  OSKextLog(a1, 36, "Loading %s.", buffer);
                  if (__sOSKextLogOutputFunction)
                  {
                    v48 = __sKernelLogFilter;
                  }

                  else
                  {
                    v48 = 0;
                  }

                  v49 = kext_request(v18, v48, BytePtr, Length, &size[1], size, &address[1], address, &op_result);
                  v50 = __OSKextProcessKextRequestResults(a1, v49, op_result, *&address[1], address[0]);
                  LoadedKextInfo = v50;
                  if (v50)
                  {
                    v51 = mach_error_string(v50);
                    if (v51)
                    {
                      v52 = v51;
                    }

                    else
                    {
                      v52 = "(unknown)";
                    }

                    OSKextLog(a1, 33, "Failed to load %s - %s.", buffer, v52);
                  }
                }

                else
                {
                  OSKextLog(a1, 33, "Can't create kernel load request for %s.", buffer);
                  LoadedKextInfo = 0;
                }
              }

              else
              {
                LoadedKextInfo = 3691020301;
                OSKextLog(a1, 33, "Can't load %s - dependency authentication problems.", buffer);
                v45 = 0;
              }

              CFRelease(v25);
              CFRelease(v42);
              if (!v45)
              {
                goto LABEL_46;
              }

              v28 = v45;
              goto LABEL_45;
            }

            OSKextLog(a1, 33, "Can't load %s - failed to resolve dependencies based on loaded kexts.", buffer);
            LoadedKextInfo = 3691020302;
            goto LABEL_29;
          }

          v57 = 0;
          IsLoaded = OSKextOtherVersionIsLoaded(a1, &v57);
          if (v57)
          {
            v54 = "UUID";
          }

          else
          {
            if (!IsLoaded)
            {
              goto LABEL_58;
            }

            v54 = "version";
          }

          OSKextLog(a1, 33, "Can't load %s - a different %s is already loaded.", buffer, v54);
          LoadedKextInfo = 3691020308;
LABEL_29:
          v28 = v25;
LABEL_45:
          CFRelease(v28);
          goto LABEL_46;
        }

        OSKextLog(0, 17, "Memory allocation failure.");
      }

      else
      {
        Diagnostics = __OSKextGetDiagnostics(a1, 16);
        if (Diagnostics && (Value = CFDictionaryGetValue(Diagnostics, @"Dependencies aren't loadable during safe boot")) != 0 && (v36 = Value, CFArrayGetCount(Value)) && (CFStringForPlist_new = createCFStringForPlist_new(v36, 2)) != 0)
        {
          v38 = CFStringForPlist_new;
          OSKextLogCFString(a1, 33, @"Can't load %s - dependencies ineligible during safe boot:\n%@", v30, v31, v32, v33, v34, buffer);
          CFRelease(v38);
        }

        else
        {
          OSKextLogCFString(a1, 33, @"Can't load %s - dependencies ineligible during safe boot.", v30, v31, v32, v33, v34, buffer);
        }

        LoadedKextInfo = 3691020306;
      }
    }

    else
    {
      LoadedKextInfo = 3691020301;
      OSKextLog(a1, 33, "Can't load %s - dependency authentication problems.");
    }

    v28 = v21;
    goto LABEL_45;
  }

  OSKextLog(a1, 33, "Can't load %s - ineligible during safe boot.", buffer);
  LoadedKextInfo = 3691020306;
LABEL_46:
  v39 = MEMORY[0x1E69E9A60];
  if (*&size[1])
  {
    mach_vm_deallocate(*MEMORY[0x1E69E9A60], *&size[1], size[0]);
  }

  if (*&address[1])
  {
    mach_vm_deallocate(*v39, *&address[1], address[0]);
  }

  if (LoadedKextInfo)
  {
    __OSKextRemovePersonalities(a1, *(a1 + 24));
  }

  else
  {
    OSKextLog(a1, 36, "Successfully loaded %s.");
  }

LABEL_53:
  CFRelease(v10);
  CFRelease(v13);
  if (v16)
  {
    v19 = v16;
    goto LABEL_55;
  }

  return LoadedKextInfo;
}

uint64_t __OSKextUnload(uint64_t a1, const __CFString *a2, int a3)
{
  v15 = *MEMORY[0x1E69E9840];
  theDict = 0;
  if (a1)
  {
    v5 = *(a1 + 24);
    UTF8CStringForCFString = buffer;
    __OSKextGetFileSystemPath(a1, 0, 0, buffer);
    v7 = 0;
  }

  else
  {
    v5 = a2;
    UTF8CStringForCFString = createUTF8CStringForCFString(a2);
    v7 = UTF8CStringForCFString;
  }

  v8 = " (with termnation of IOServices)";
  if (!a3)
  {
    v8 = "";
  }

  OSKextLog(a1, 100, "Requesting unload of %s%s.", UTF8CStringForCFString, v8);
  KextRequest = __OSKextCreateKextRequest(@"Unload", v5, &theDict);
  v10 = 3690987521;
  if (KextRequest && theDict)
  {
    if (a3)
    {
      CFDictionarySetValue(theDict, @"Terminate IOServices", *MEMORY[0x1E695E4D0]);
    }

    v11 = __OSKextSendKextRequest(a1, KextRequest, 0, 0, 0);
    v10 = v11;
    if (v11)
    {
      mach_error_string(v11);
      OSKextLog(a1, 65, "Failed to unload %s - %s.");
    }

    else
    {
      OSKextLog(a1, 100, "Successfully unloaded %s.");
    }
  }

  if (v7)
  {
    free(v7);
  }

  if (KextRequest)
  {
    CFRelease(KextRequest);
  }

  return v10;
}

uint64_t OSKextIsStarted(unint64_t *a1)
{
  v1 = a1[9];
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + 8))
  {
    __OSKextCheckLoaded(a1);
    v1 = a1[9];
  }

  return *(v1 + 169) & 1;
}

void __OSKextCheckLoaded(unint64_t *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  memset(v23, 0, 37);
  memset(out, 0, 37);
  v1 = a1[9];
  if (!v1)
  {
    return;
  }

  if (*(v1 + 8))
  {
    __OSKextGetFileSystemPath(a1, 0, 0, buffer);
    Value = CFDictionaryGetValue(*(a1[9] + 8), @"OSBundleUUID");
    RunningKernelArchitecture = OSKextGetRunningKernelArchitecture();
    v5 = OSKextCopyUUIDForArchitecture(a1, RunningKernelArchitecture);
    v6 = v5;
    if (Value)
    {
      BytePtr = CFDataGetBytePtr(Value);
      uuid_unparse(BytePtr, out);
      if (!v6)
      {
        OSKextVersionGetString(a1[5], v20, 0x14u);
        goto LABEL_10;
      }
    }

    else if (!v5)
    {
      OSKextVersionGetString(a1[5], v20, 0x14u);
      goto LABEL_25;
    }

    v8 = CFDataGetBytePtr(v6);
    uuid_unparse(v8, v23);
    OSKextVersionGetString(a1[5], v20, 0x14u);
    if (!Value || !CFEqual(Value, v6))
    {
LABEL_10:
      *(a1[9] + 168) |= 0x400u;
      if (v23[0])
      {
        v9 = ", UUID ";
      }

      else
      {
        v9 = ", no UUID";
      }

      if (out[0])
      {
        v10 = out;
      }

      else
      {
        v10 = "none";
      }

      OSKextLog(a1, 103, "%s (version %s%s%s): same version, different UUID (%s) is loaded.", buffer, v20, v9, v23, v10);
      goto LABEL_17;
    }

LABEL_25:
    *(a1[9] + 168) |= 0x80u;
    if (v23[0])
    {
      v13 = ", UUID ";
    }

    else
    {
      v13 = ", no UUID";
    }

    OSKextLog(a1, 103, "%s (version %s%s%s) is loaded.", buffer, v20, v13, v23);
    v14 = CFDictionaryGetValue(*(a1[9] + 8), @"OSBundleStarted");
    if (v14 && CFBooleanGetValue(v14))
    {
      *(a1[9] + 168) |= 0x100u;
      if ((*(a1[9] + 168) & 0x100) != 0)
      {
        v15 = "";
      }

      else
      {
        v15 = " not";
      }

      OSKextLog(a1, 103, "%s (version %s): is%s started.", buffer, v20, v15);
    }

    v16 = CFDictionaryGetValue(*(a1[9] + 8), @"OSBundleLoadTag");
    if (v16)
    {
      LODWORD(valuePtr) = 0;
      if (CFNumberGetValue(v16, kCFNumberSInt32Type, &valuePtr))
      {
        *(a1[9] + 16) = valuePtr;
      }
    }

    v17 = CFDictionaryGetValue(*(a1[9] + 8), @"OSBundleLoadAddress");
    if (v17)
    {
      valuePtr = 0;
      if (CFNumberGetValue(v17, kCFNumberSInt64Type, &valuePtr))
      {
        __OSKextSetLoadAddress(a1, valuePtr);
      }
    }

    v18 = CFDictionaryGetValue(*(a1[9] + 8), @"OSBundleLoadSize");
    if (v18)
    {
      LODWORD(valuePtr) = 0;
      if (CFNumberGetValue(v18, kCFNumberSInt32Type, &valuePtr))
      {
        *(a1[9] + 48) = valuePtr;
      }
    }

    goto LABEL_17;
  }

  v6 = 0;
LABEL_17:
  v11 = a1[9];
  if (v11)
  {
    v12 = *(v11 + 8);
    if (v12)
    {
      CFRelease(v12);
      v11 = a1[9];
    }

    *(v11 + 8) = 0;
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t OSKextStart(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  __OSKextGetFileSystemPath(a1, 0, 0, buffer);
  OSKextLog(a1, 100, "Requesting start of %s.", buffer);
  v2 = __OSKextSimpleKextRequest(a1, @"Start");
  v3 = v2;
  if (v2)
  {
    mach_error_string(v2);
    OSKextLog(a1, 33, "Failed to start %s - %s.");
  }

  else
  {
    OSKextLog(a1, 100, "Started %s.");
  }

  return v3;
}

uint64_t __OSKextSimpleKextRequest(uint64_t a1, const void *a2)
{
  if (a1)
  {
    v4 = *(a1 + 24);
  }

  else
  {
    v4 = 0;
  }

  KextRequest = __OSKextCreateKextRequest(a2, v4, 0);
  if (!KextRequest)
  {
    return 3691020289;
  }

  v6 = KextRequest;
  v7 = __OSKextSendKextRequest(a1, KextRequest, 0, 0, 0);
  CFRelease(v6);
  return v7;
}

uint64_t OSKextStop(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  __OSKextGetFileSystemPath(a1, 0, 0, buffer);
  OSKextLog(a1, 100, "Requesting stop of %s.", buffer);
  v2 = __OSKextSimpleKextRequest(a1, @"Stop");
  v3 = v2;
  if (v2)
  {
    mach_error_string(v2);
    OSKextLog(a1, 33, "Failed to stop %s - %s.");
  }

  else
  {
    OSKextLog(a1, 100, "Successfully stopped %s.");
  }

  return v3;
}

uint64_t OSKextSendPersonalitiesToKernel(const __CFArray *a1, int a2)
{
  v2 = 3691020293;
  if (a2)
  {
    v3 = 9;
  }

  else
  {
    v3 = 1;
  }

  if (a1)
  {
    if (CFArrayGetCount(a1))
    {
      Count = CFArrayGetCount(a1);
      v6 = CFArrayGetCount(a1);
      v7 = "ies";
      if (v6 == 1)
      {
        v7 = "y";
      }

      OSKextLog(0, 101, "Sending %d personalit%s to the kernel.", Count, v7);
      v8 = IOCFSerialize(a1, 0);
      if (v8)
      {
        v9 = v8;
        BytePtr = CFDataGetBytePtr(v8);
        Length = CFDataGetLength(v9);
        v2 = IOCatalogueSendData(0, v3, BytePtr, Length);
        if (v2)
        {
          OSKextLog(0, 97, "Failed to send personalities to the kernel.");
        }

        CFRelease(v9);
      }

      else
      {
        OSKextLog(0, 33, "Can't serialize personalities.");
        return 3691020296;
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t OSKextSendKextPersonalitiesToKernel(CFURLRef *a1, const __CFArray *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  __OSKextGetFileSystemPath(a1, 0, 0, buffer);
  if (!a2 || !CFArrayGetCount(a2))
  {
    v15 = OSKextCopyPersonalitiesArray(a1);
    v14 = v15;
    if (v15 && CFArrayGetCount(v15))
    {
      OSKextLog(a1, 37, "Sending all personalties for %s to the kernel.", buffer);
      goto LABEL_16;
    }

    OSKextLog(a1, 37, "%s has no personalities to send to kernel.", buffer);
    if (v14)
    {
      goto LABEL_16;
    }

    return 0;
  }

  v22 = 0;
  ValueForInfoDictionaryKey = OSKextGetValueForInfoDictionaryKey(a1, @"IOKitPersonalities");
  if (!ValueForInfoDictionaryKey && !CFDictionaryGetCount(0))
  {
    OSKextLog(a1, 37, "%s has no personalities to send to kernel.");
    return 0;
  }

  if (CFArrayGetCount(a2) >= 1)
  {
    v5 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v5);
      if (!CFDictionaryContainsKey(ValueForInfoDictionaryKey, ValueAtIndex))
      {
        break;
      }

      if (++v5 >= CFArrayGetCount(a2))
      {
        goto LABEL_9;
      }
    }

    OSKextLogCFString(a1, 33, @"Personality %@ not found in %s.", v7, v8, v9, v10, v11, ValueAtIndex);
    return 0;
  }

LABEL_9:
  v12 = CFGetAllocator(a1);
  Count = CFArrayGetCount(a2);
  if (!CFArrayCreateMutable(v12, Count, MEMORY[0x1E695E9C0]))
  {
    OSKextLog(0, 17, "Memory allocation failure.");
    return 0;
  }

  OSKextLog(a1, 102, "Sending named personalities of %s to the kernel:", buffer);
  context = a1;
  theArray = 0;
  v20 = 0;
  v21 = a2;
  LOBYTE(v22) = 0;
  CFDictionaryApplyFunction(ValueForInfoDictionaryKey, __OSKextPersonalityPatcherApplierFunction, &context);
  v14 = theArray;
  if (!theArray)
  {
    return 0;
  }

LABEL_16:
  if (CFArrayGetCount(v14))
  {
    v16 = OSKextSendPersonalitiesToKernel(v14, 0);
  }

  else
  {
    v16 = 0;
  }

  CFRelease(v14);
  return v16;
}

uint64_t OSKextSendPersonalitiesOfKextsToKernel(const __CFArray *a1, int a2)
{
  if (!CFArrayGetCount(a1))
  {
    return 0;
  }

  v4 = OSKextCopyPersonalitiesOfKexts(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (CFArrayGetCount(v4))
  {
    v6 = OSKextSendPersonalitiesToKernel(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v5);
  return v6;
}

uint64_t __OSKextRemovePersonalities(const void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  values = a2;
  v3 = CFGetAllocator(a1);
  v4 = CFDictionaryCreate(v3, MEMORY[0x1E695E4F0], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v4)
  {
    v5 = v4;
    __OSKextGetFileSystemPath(a1, 0, 0, buffer);
    v6 = IOCFSerialize(v5, 0);
    if (v6)
    {
      v7 = v6;
      BytePtr = CFDataGetBytePtr(v6);
      Length = CFDataGetLength(v7);
      v10 = IOCatalogueSendData(0, 3u, BytePtr, Length);
      if (v10)
      {
        v11 = 3690987521;
        v12 = mach_error_string(v10);
        v13 = "(unknown)";
        if (v12)
        {
          v13 = v12;
        }

        OSKextLog(a1, 65, "Failed to remove personalities of %s from IOCatalogue - %s.", buffer, v13);
      }

      else
      {
        v11 = 0;
      }

      CFRelease(v7);
    }

    else
    {
      v11 = 3690987521;
      OSKextLog(a1, 65, "Can't serialize personalities for %s.", buffer);
    }

    CFRelease(v5);
  }

  else
  {
    v11 = 3690987521;
    OSKextLog(0, 17, "Memory allocation failure.");
  }

  return v11;
}

uint64_t OSKextReadLoadedKextInfo(const __CFArray *a1, int a2)
{
  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  v4 = __sOSKextArchInfo;
  RunningKernelArchitecture = OSKextGetRunningKernelArchitecture();
  if (v4 != RunningKernelArchitecture)
  {
    OSKextLog(0, 97, "Can't read loaded kext info - current architecture %s != kernel's architecture %s.", *v4, *RunningKernelArchitecture);
    return 3691020303;
  }

  v6 = 3690987521;
  if (!a1)
  {
    OSKextFlushLoadInfo(0, a2);
    v8 = 0;
LABEL_11:
    OSKextLog(0, 100, "Reading load info for all kexts.");
    goto LABEL_12;
  }

  v7 = OSKextCopyKextsWithIdentifiers(a1);
  if (!v7)
  {
    return v6;
  }

  v8 = v7;
  Count = CFArrayGetCount(v7);
  if (Count >= 1)
  {
    v10 = Count;
    for (i = 0; i != v10; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v8, i);
      OSKextFlushLoadInfo(ValueAtIndex, a2);
    }
  }

  if (!CFArrayGetCount(a1))
  {
    goto LABEL_11;
  }

  CFArrayGetCount(a1);
  OSKextLog(0, 100, "Reading load info for %u kext%s.");
LABEL_12:
  v13 = OSKextCopyLoadedKextInfo(a1, __sOSKextInfoEssentialKeys);
  v14 = v13;
  if (v13)
  {
    CFDictionaryApplyFunction(v13, __OSKextProcessLoadInfo, 0);
    v6 = 0;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v6;
}

uint64_t OSKextGetLoadAddress(unint64_t *a1)
{
  v1 = a1[9];
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + 8))
  {
    __OSKextCheckLoaded(a1);
    v1 = a1[9];
  }

  return *(v1 + 56);
}

uint64_t __OSKextSetLoadAddress(uint64_t a1, unint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  result = __OSKextCreateLoadInfo(a1);
  if (result)
  {
    __OSKextGetFileSystemPath(a1, 0, 1u, buffer);
    pthread_once(&__sOSKextInitialized, __OSKextInitialize);
    if (!HIDWORD(a2) || (__sOSKextArchInfo[1] & 0x1000000) != 0)
    {
      pthread_once(&__sOSKextInitialized, __OSKextInitialize);
      if (*(__sOSKextArchInfo + 11))
      {
        OSKextLog(a1, 1048615, "setting load address of %s to 0x%0llx");
      }

      else
      {
        OSKextLog(a1, 1048615, "setting load address of %s to 0x%0x");
      }

      *(*(a1 + 72) + 56) = a2;
      return 1;
    }

    else
    {
      OSKextLog(a1, 33, "Attempt to set 64-bit load address - %s.", buffer);
      return 0;
    }
  }

  return result;
}

uint64_t OSKextSetLoadAddress(unint64_t *a1, unint64_t a2)
{
  result = __OSKextCreateLoadInfo(a1);
  if (result)
  {
    if (*(a1[9] + 8))
    {
      __OSKextCheckLoaded(a1);
    }

    return __OSKextSetLoadAddress(a1, a2);
  }

  return result;
}

BOOL OSKextOtherVersionIsLoaded(unint64_t *a1, BOOL *a2)
{
  v2 = a1[9];
  if (!v2)
  {
    return 0;
  }

  if (*(v2 + 8))
  {
    __OSKextCheckLoaded(a1);
    v2 = a1[9];
  }

  v5 = *(v2 + 168);
  result = (v5 & 0x600) != 0;
  if (a2)
  {
    *a2 = (v5 & 0x400) != 0;
  }

  return result;
}

uint64_t OSKextGetLoadTag(unint64_t *a1)
{
  v1 = a1[9];
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + 8))
  {
    __OSKextCheckLoaded(a1);
    v1 = a1[9];
  }

  return *(v1 + 16);
}

CFTypeRef _OSKextCopyKernelRequests()
{
  cf = 0;
  OSKextLog(0, 71, "Reading requests from kernel.");
  KextRequest = __OSKextCreateKextRequest(@"Get Kernel Requests", 0, 0);
  v1 = __OSKextSendKextRequest(0, KextRequest, &cf, 0, 0);
  if (v1)
  {
    v2 = mach_error_string(v1);
    v3 = "(unknown)";
    if (v2)
    {
      v3 = v2;
    }

    OSKextLog(0, 65, "Failed to read requests from kernel - %s.", v3);
    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
  }

  else
  {
    if (cf)
    {
      TypeID = CFArrayGetTypeID();
      if (TypeID == CFGetTypeID(cf))
      {
        goto LABEL_12;
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    cf = 0;
    OSKextLog(0, 65, "Requests from kernel missing or of wrong type.");
  }

LABEL_12:
  if (KextRequest)
  {
    CFRelease(KextRequest);
  }

  return cf;
}

uint64_t _OSKextSendResource(const __CFDictionary *a1, int a2, const void *a3)
{
  valuePtr = a2;
  Value = CFDictionaryGetValue(a1, @"Kext Request Arguments");
  if (!Value)
  {
    return 3691020293;
  }

  v6 = Value;
  v7 = *MEMORY[0x1E695E480];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
  if (MutableCopy)
  {
    v9 = MutableCopy;
    v10 = CFDictionaryCreateMutableCopy(v7, 0, v6);
    if (v10)
    {
      v11 = v10;
      CFDictionarySetValue(v9, @"Kext Request Predicate", @"Send Resource");
      CFDictionarySetValue(v9, @"Kext Request Arguments", v11);
      if (a3)
      {
        CFDictionarySetValue(v11, @"Value", a3);
      }

      v12 = CFNumberCreate(v7, kCFNumberSInt32Type, &valuePtr);
      if (v12)
      {
        v13 = v12;
        CFDictionarySetValue(v11, @"Kext Request Result Code", v12);
        v14 = __OSKextSendKextRequest(0, v9, 0, 0, 0);
        CFRelease(v13);
      }

      else
      {
        v14 = __OSKextSendKextRequest(0, v9, 0, 0, 0);
      }

      CFRelease(v11);
    }

    else
    {
      v14 = 3690987521;
      OSKextLog(0, 17, "Memory allocation failure.");
    }

    CFRelease(v9);
  }

  else
  {
    v14 = 3690987521;
    OSKextLog(0, 17, "Memory allocation failure.");
  }

  return v14;
}

CFArrayRef OSKextCreateLoadedKextInfo(unint64_t a1)
{
  v1 = OSKextCopyLoadedKextInfo(a1, 0);
  if (v1)
  {
    v2 = v1;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v2))
    {
      Count = CFDictionaryGetCount(v2);
      v5 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
      if (v5)
      {
        v6 = v5;
        CFDictionaryGetKeysAndValues(v2, 0, v5);
        v7 = CFArrayCreate(*MEMORY[0x1E695E480], v6, Count, MEMORY[0x1E695E9C0]);
LABEL_8:
        CFRelease(v2);
        return v7;
      }

      OSKextLog(0, 17, "Memory allocation failure.");
    }

    v7 = 0;
    goto LABEL_8;
  }

  return 0;
}

uint64_t OSKextValidate(uint64_t a1)
{
  theDict = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v3 = Mutable;
    v4 = __OSKextValidate(a1, Mutable);
    CFArrayAppendValue(v3, @"IOKitPersonalities");
    v5 = *(a1 + 56);
    TypeID = CFDictionaryGetTypeID();
    v7 = __OSKextCheckProperty(a1, v5, @"IOKitPersonalities", v3, TypeID, 0, 0, 1, 0, &theDict, 0);
    if (v4)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = !v8;
    if (v7)
    {
      v10 = theDict == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      context[0] = a1;
      context[1] = theDict;
      context[2] = v3;
      v15 = 1;
      CFDictionaryApplyFunction(theDict, __OSKextValidateIOKitPersonalityTargetApplierFunction, context);
      if (v15)
      {
        v11 = v4 == 0;
      }

      else
      {
        v11 = 1;
      }

      v9 = !v11;
    }

    Count = CFArrayGetCount(v3);
    CFArrayRemoveValueAtIndex(v3, Count - 1);
    CFRelease(v3);
  }

  else
  {
    OSKextLog(0, 17, "Memory allocation failure.");
    return 1;
  }

  return v9;
}

uint64_t __OSKextValidate(uint64_t a1, __CFArray *Mutable)
{
  v45 = *MEMORY[0x1E69E9840];
  theDict = 0;
  v41 = 0;
  __OSKextGetFileSystemPath(a1, 0, 0, buffer);
  OSKextLog(a1, 4101, "Validating %s.", buffer);
  v4 = 0;
  *(a1 + 92) &= 0xFFFFF1FF;
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v4 = Mutable;
    if (!Mutable)
    {
      OSKextLog(0, 17, "Memory allocation failure.");
      v27 = *(a1 + 92);
      goto LABEL_49;
    }
  }

  v5 = __OSKextProcessInfoDictionary(a1, 0);
  v6 = v5 != 0;
  if (!*(a1 + 56))
  {
LABEL_44:
    if (!v4)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v7 = v5;
  CFArrayAppendValue(Mutable, @"OSBundleAllowUserLoad");
  v8 = *(a1 + 56);
  TypeID = CFBooleanGetTypeID();
  LOBYTE(v8) = __OSKextCheckProperty(a1, v8, @"OSBundleAllowUserLoad", Mutable, TypeID, 0, 0, 1, 0, 0, 0);
  Count = CFArrayGetCount(Mutable);
  CFArrayRemoveValueAtIndex(Mutable, Count - 1);
  CFArrayAppendValue(Mutable, @"OSBundleLibraries");
  v11 = *(a1 + 56);
  v12 = CFDictionaryGetTypeID();
  v13 = __OSKextCheckProperty(a1, v11, @"OSBundleLibraries", Mutable, v12, 0, (*(a1 + 92) >> 2) & ~*(a1 + 92) & 1, 1, (*(a1 + 92) & 5) == 4, &theDict, 0);
  v14 = v13;
  if (v8)
  {
    v15 = v7 == 0;
  }

  else
  {
    v15 = 1;
  }

  v17 = !v15 && v13 != 0;
  if (theDict && CFDictionaryGetCount(theDict))
  {
    if (*(a1 + 92))
    {
      __OSKextAddDiagnostic(a1, 1, @"A system kext has a property set that it shouldn't", @"OSBundleLibraries", 0);
      v17 = 0;
      if (!v14)
      {
        goto LABEL_29;
      }

      goto LABEL_23;
    }

    if ((*(a1 + 92) & 4) == 0 && *(a1 + 48) <= 0)
    {
      __OSKextSetDiagnostic(a1, 8, @"Kext has no executable or compatible version, so it should not declare any OSBundleLibraries.");
      if (!v14)
      {
        goto LABEL_29;
      }

      goto LABEL_23;
    }
  }

  else if ((*(a1 + 92) & 5) == 4)
  {
    __OSKextAddDiagnostic(a1, 1, @"Info dictionary missing required property/value", Mutable, 0);
  }

  if (!v14)
  {
    goto LABEL_29;
  }

LABEL_23:
  if (theDict)
  {
    context = a1;
    v38 = theDict;
    v39 = Mutable;
    v40 = 1;
    CFDictionaryApplyFunction(theDict, __OSKextValidateOSBundleLibraryApplierFunction, &context);
    if (!v40)
    {
      v17 = 0;
    }

    if (BYTE1(v40) && BYTE2(v40))
    {
      __OSKextSetDiagnostic(a1, 8, @"Kexts should declare dependencies on either com.apple.kernel* or com.apple.kpi.* libraries, not both.");
    }
  }

LABEL_29:
  theDict = 0;
  v18 = CFArrayGetCount(Mutable);
  CFArrayRemoveValueAtIndex(Mutable, v18 - 1);
  CFArrayAppendValue(Mutable, @"IOKitPersonalities");
  v19 = *(a1 + 56);
  v20 = CFDictionaryGetTypeID();
  v21 = __OSKextCheckProperty(a1, v19, @"IOKitPersonalities", Mutable, v20, 0, 0, 1, 0, &theDict, &v41);
  if (v21)
  {
    v6 = v17;
  }

  else
  {
    v6 = 0;
  }

  if (v21 && theDict)
  {
    context = a1;
    v38 = theDict;
    v39 = Mutable;
    v40 = 1;
    CFDictionaryApplyFunction(theDict, __OSKextValidateIOKitPersonalityApplierFunction, &context);
    if (v40)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }
  }

  v22 = CFArrayGetCount(Mutable);
  CFArrayRemoveValueAtIndex(Mutable, v22 - 1);
  context = 0;
  if ((*(a1 + 92) & 6) != 4)
  {
    goto LABEL_44;
  }

  if (__OSKextReadExecutable(a1))
  {
    pthread_once(&__sOSKextInitialized, __OSKextInitialize);
    v23 = OSKextCopyExecutableForArchitecture(a1, __sOSKextArchInfo);
    if (!v23)
    {
      goto LABEL_44;
    }

    v24 = v23;
    v43 = 0;
    BytePtr = CFDataGetBytePtr(v23);
    Length = CFDataGetLength(v24);
    if (macho_find_symbol(BytePtr, BytePtr + Length, "_kmod_info", &v43, &context) || (~v43 & 0xE) != 0 || !context)
    {
      __OSKextSetDiagnostic(a1, 1, @"Executable file doesn't contain kernel extension code (no kmod_info symbol or bad Mach-O layout).");
    }

    else
    {
      if ((*(a1 + 94) & 1) == 0)
      {
        goto LABEL_43;
      }

      pthread_once(&__sOSKextInitialized, __OSKextInitialize);
      v30 = context;
      v31 = 16;
      if ((__sOSKextArchInfo[1] & 0x1000000) != 0)
      {
        v32 = 80;
      }

      else
      {
        v31 = 12;
        v32 = 76;
      }

      v33 = *(a1 + 24);
      v34 = CFStringCreateWithCString(*MEMORY[0x1E695E480], (context + v31), 0x8000100u);
      if (v34)
      {
        v35 = v34;
        if (!CFEqual(v33, v34))
        {
          __OSKextSetDiagnostic(a1, 8, @"Kexts with a kernel library < v6.0 must set MODULE_NAME the same as CFBundleIdentifier to load on kernel < v6.0.");
        }

        v36 = OSKextParseVersionString((v30 + v32));
        if (v36 < 0 || *(a1 + 40) != v36)
        {
          __OSKextSetDiagnostic(a1, 8, @"Kexts with a kernel library < v6.0 must set MODULE_VERSION the same as CFBundleVersion to load on kernel < v6.0.");
        }

        CFRelease(v24);
        v24 = v35;
        goto LABEL_43;
      }

      OSKextLog(0, 17, "Memory allocation failure.");
    }

    v6 = 0;
LABEL_43:
    CFRelease(v24);
    goto LABEL_44;
  }

  v6 = 0;
  if (v4)
  {
LABEL_45:
    CFRelease(v4);
  }

LABEL_46:
  v27 = *(a1 + 92);
  if (v6)
  {
LABEL_49:
    v29 = v27 | 0xA00;
    result = 1;
    goto LABEL_50;
  }

  result = 0;
  v29 = v27 | 0x400;
LABEL_50:
  *(a1 + 92) = v29;
  return result;
}

uint64_t __OSKextCheckProperty(uint64_t a1, CFDictionaryRef theDict, const __CFString *key, const __CFString *a4, const __CFString *a5, const __CFArray *a6, int a7, int a8, char a9, const __CFString **a10, _BYTE *a11)
{
  if (a11)
  {
    *a11 = 0;
  }

  if (a10)
  {
    *a10 = 0;
  }

  if (*(a1 + 56) == theDict)
  {
    ValueForInfoDictionaryKey = OSKextGetValueForInfoDictionaryKey(a1, key);
  }

  else
  {
    ValueForInfoDictionaryKey = CFDictionaryGetValue(theDict, key);
  }

  v18 = ValueForInfoDictionaryKey;
  if (!ValueForInfoDictionaryKey)
  {
    if (!a7)
    {
      return 1;
    }

    __OSKextAddDiagnostic(a1, 1, @"Info dictionary missing required property/value", a4, 0);
    return 0;
  }

  if (a10)
  {
    *a10 = ValueForInfoDictionaryKey;
  }

  TypeID = CFNumberGetTypeID();
  v20 = TypeID == CFGetTypeID(v18) && CFNumberIsFloatType(v18) != 0;
  if (CFGetTypeID(v18) != a5 || v20)
  {
    if (CFStringGetTypeID() == a5)
    {
      v27 = "<string>";
    }

    else if (CFNumberGetTypeID() == a5 && v20)
    {
      v27 = "<integer> (kexts may not use <real>)";
    }

    else if (CFNumberGetTypeID() == a5)
    {
      v27 = "<integer>";
    }

    else if (CFDataGetTypeID() == a5)
    {
      v27 = "<data>";
    }

    else if (CFBooleanGetTypeID() == a5)
    {
      v27 = "BOOLean, <true/> or <false/>";
    }

    else if (CFArrayGetTypeID() == a5)
    {
      v27 = "<array>";
    }

    else
    {
      v30 = CFDictionaryGetTypeID();
      v27 = "<dict>";
      if (v30 != a5)
      {
        v27 = 0;
      }
    }

    if (a5)
    {
      a5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"should be %s", v27);
    }

    if (a8)
    {
      v31 = 1;
    }

    else
    {
      v31 = 8;
    }

    if (a8)
    {
      v32 = @"Info dictionary property value is of illegal type";
    }

    else
    {
      v32 = @"Info dictionary property value is of incorrect type";
    }

    __OSKextAddDiagnostic(a1, v31, v32, a4, a5);
    if (a5)
    {
      CFRelease(a5);
    }

    return 0;
  }

  if (a6)
  {
    Count = CFArrayGetCount(a6);
    if (Count < 1)
    {
LABEL_23:
      __OSKextAddDiagnostic(a1, 1, @"Info dictionary property value is illegal", a4, 0);
    }

    else
    {
      v22 = Count;
      v23 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a6, v23);
        if (CFEqual(ValueAtIndex, v18))
        {
          break;
        }

        if (v22 == ++v23)
        {
          goto LABEL_23;
        }
      }
    }
  }

  if (CFBooleanGetTypeID() != a5)
  {
    if (CFStringGetTypeID() == a5)
    {
      Length = CFStringGetLength(v18);
    }

    else if (CFDataGetTypeID() == a5)
    {
      Length = CFDataGetLength(v18);
    }

    else if (CFArrayGetTypeID() == a5)
    {
      Length = CFArrayGetCount(v18);
    }

    else
    {
      if (CFDictionaryGetTypeID() != a5)
      {
        if (CFNumberGetTypeID() != a5)
        {
          Value = 0;
          goto LABEL_26;
        }

        valuePtr = 0;
        v26 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
        if (!v26)
        {
          OSKextLog(0, 17, "Memory allocation failure.");
        }

        Length = CFNumberCompare(v18, v26, 0);
LABEL_47:
        Value = Length != 0;
        goto LABEL_48;
      }

      Length = CFDictionaryGetCount(v18);
    }

    v26 = 0;
    goto LABEL_47;
  }

  Value = CFBooleanGetValue(v18);
LABEL_26:
  v26 = 0;
LABEL_48:
  if (a11)
  {
    *a11 = Value;
  }

  v29 = 1;
  if (a9 && !Value)
  {
    __OSKextAddDiagnostic(a1, 1, @"Info dictionary property value is illegal", a4, 0);
    v29 = 0;
  }

  if (v26)
  {
    CFRelease(v26);
  }

  return v29;
}

void __OSKextValidateIOKitPersonalityTargetApplierFunction(const __CFString *value, const __CFDictionary *a2, uint64_t a3)
{
  v24 = 0;
  v23 = 0;
  CFArrayAppendValue(*(a3 + 16), value);
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = *(a3 + 16);
  TypeID = CFDictionaryGetTypeID();
  if (__OSKextCheckProperty(v6, v7, value, v8, TypeID, 0, 0, 1, 0, 0, 0))
  {
    v10 = *MEMORY[0x1E695E4F0];
    CFArrayAppendValue(*(a3 + 16), *MEMORY[0x1E695E4F0]);
    v11 = *a3;
    v12 = *(a3 + 16);
    v13 = CFStringGetTypeID();
    if (__OSKextCheckProperty(v11, a2, v10, v12, v13, 0, 0, 1, 1, &v23, &v24))
    {
      v14 = *(a3 + 24) == 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = !v14;
    *(a3 + 24) = v15;
    if (v23)
    {
      KextWithIdentifier = OSKextGetKextWithIdentifier(v23);
      if (KextWithIdentifier)
      {
        v17 = KextWithIdentifier;
        if (KextWithIdentifier != *a3 && !OSKextIsLoadable(KextWithIdentifier))
        {
          v18 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"'%@' -> '%@'", v23, v17[2]);
          __OSKextAddDiagnostic(*a3, 8, @"Personality CFBundleIdentifier names a kext that is not loadable (run kextutil(8) on it with -nt for more information)", v18, 0);
          if (v18)
          {
            CFRelease(v18);
          }
        }
      }
    }

    v19 = *(a3 + 16);
    Count = CFArrayGetCount(v19);
    CFArrayRemoveValueAtIndex(v19, Count - 1);
  }

  else
  {
    *(a3 + 24) = 0;
  }

  v21 = *(a3 + 16);
  v22 = CFArrayGetCount(v21);
  CFArrayRemoveValueAtIndex(v21, v22 - 1);
}

uint64_t _OSKextBasicFilesystemAuthentication(uint64_t a1)
{
  if ((*(a1 + 88) & 8) == 0)
  {
    v2 = CFBundleCreate(*MEMORY[0x1E695E480], *(a1 + 16));
    if (v2)
    {
      v3 = v2;
      v4 = CFBundleCopyBuiltInPlugInsURL(v2);
      v5 = v4;
      if (v4)
      {
        v6 = CFURLCopyAbsoluteURL(v4);
        if (!v6)
        {
          OSKextLog(0, 17, "Memory allocation failure.");
          CFRelease(v3);
          v7 = 0;
LABEL_14:
          CFRelease(v5);
LABEL_15:
          if (v6)
          {
            CFRelease(v6);
          }

          return v7;
        }
      }

      else
      {
        v6 = 0;
      }

      v7 = __OSKextBasicFilesystemAuthenticationRecursive(a1, *(a1 + 16), v6);
      CFRelease(v3);
      if (!v5)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    return 0;
  }

  v8 = **(a1 + 80);
  if (!v8)
  {
    __OSKextSetDiagnostic(a1, 2, @"Kext was not created from an URL and can't be authenticated");
    return 0;
  }

  return __OSKextBasicFilesystemAuthenticationRecursive(a1, v8, 0);
}

uint64_t __OSKextBasicFilesystemAuthenticationRecursive(const void *a1, const __CFURL *a2, const void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  memset(&v30, 0, sizeof(v30));
  memset(&v29, 0, sizeof(v29));
  errorCode = 0;
  __OSKextGetFileSystemPath(a1, 0, 0, __s);
  PathComponent = CFURLCopyLastPathComponent(a2);
  v7 = PathComponent;
  if (!PathComponent || !CFEqual(PathComponent, @".DS_Store"))
  {
    v10 = CFURLCopyAbsoluteURL(a2);
    if (v10)
    {
      if (__OSKextGetFileSystemPath(0, a2, 1u, buffer))
      {
        OSKextLog(a1, 139269, "Authenticating %s file/directory %s.", __s, buffer);
        if (!stat(buffer, &v30) && !lstat(buffer, &v29))
        {
          if (*&v30.st_uid || (v30.st_mode & 0x12) != 0)
          {
            __OSKextAddDiagnostic(a1, 2, @"File owner/permissions are incorrect (must be root:wheel, nonwritable by group/other)", a2, 0);
            LOBYTE(v17) = 0;
            v11 = 0;
          }

          else
          {
            LOBYTE(v17) = 1;
            v11 = 1;
          }

          if ((v29.st_mode & 0xF000) == 0xA000)
          {
            v18 = realpath_DARWIN_EXTSN(buffer, 0);
            v9 = v18;
            if (!v18)
            {
              v26 = __error();
              v27 = strerror(*v26);
              __OSKextAddDiagnostic(a1, 2, @"The kext contains a symlink which is either not readable or points outside of its bundle; please remove", a2, v27);
              OSKextLog(a1, 131073, "Can't determine real path for %s (%s)");
              goto LABEL_15;
            }

            OSKextLog(a1, 131077, "Realpath for %s is %s", buffer, v18);
            v19 = strlen(__s);
            if (strncmp(__s, v9, v19))
            {
              __OSKextAddDiagnostic(a1, 2, @"The kext contains a symlink which is either not readable or points outside of its bundle; please remove", a2, "Symlink points outside of bundle.");
              OSKextLog(a1, 131073, "Kext contains symlink at %s which points outside of its bundle at %s; rejecting.");
              goto LABEL_15;
            }

            __OSKextAddDiagnostic(a1, 8, @"The booter does not recognize symbolic links; confirm these files/directories aren't needed for startup", a2, 0);
          }

          else
          {
            v9 = 0;
          }

          if (!CFURLHasDirectoryPath(a2) || a3 && CFEqual(v10, a3))
          {
            v8 = 0;
          }

          else
          {
            v20 = CFGetAllocator(a1);
            v21 = CFURLCreatePropertyFromResource(v20, a2, *MEMORY[0x1E695EA78], &errorCode);
            v8 = v21;
            if (!v21 || errorCode)
            {
              OSKextLog(a1, 139265, "Can't read file %s.", buffer);
            }

            else
            {
              Count = CFArrayGetCount(v21);
              if (Count >= 1)
              {
                v23 = Count;
                for (i = 0; i != v23; ++i)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v8, i);
                  v17 = (__OSKextBasicFilesystemAuthenticationRecursive(a1, ValueAtIndex, a3) != 0) & v17;
                }

                v11 = v17;
              }
            }
          }

LABEL_16:
          if (!v7)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        if (*__error() != 2)
        {
          v15 = __error();
          strerror(*v15);
          OSKextLog(0, 131073, "Can't stat %s - %s.");
          goto LABEL_14;
        }

        v12 = @"File not found";
        v13 = a1;
        v14 = 2;
      }

      else
      {
        v12 = @"Internal error converting URL";
        v13 = a1;
        v14 = 1;
      }

      __OSKextAddDiagnostic(v13, v14, v12, a2, 0);
    }

    else
    {
      OSKextLog(0, 17, "Memory allocation failure.");
    }

LABEL_14:
    v9 = 0;
LABEL_15:
    v8 = 0;
    v11 = 0;
    goto LABEL_16;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 1;
LABEL_17:
  CFRelease(v7);
LABEL_18:
  if (v10)
  {
    CFRelease(v10);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    free(v9);
  }

  return v11;
}

uint64_t OSKextAuthenticate(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  *(a1 + 92) &= 0xFFFF8EFF;
  if (!__sOSKextAuthenticationFunction[0])
  {
    OSKextLog(0, 4097, "Trying to authenticate kext with no authentication function, failing.");
LABEL_9:
    v3 = *(a1 + 92);
LABEL_10:
    LOBYTE(result) = 0;
    v4 = v3 | 0x3000;
    goto LABEL_11;
  }

  if (!__OSKextGetFileSystemPath(a1, 0, 1u, buffer))
  {
    OSKextLog(a1, 262161, "Could not get absolute path of kext!");
    goto LABEL_9;
  }

  if (!rootless_check_trusted())
  {
    *(a1 + 92) |= 0x100u;
  }

  LOBYTE(result) = (__sOSKextAuthenticationFunction[0])(a1);
  v3 = *(a1 + 92);
  if (!result)
  {
    goto LABEL_10;
  }

  v4 = v3 | 0x5000;
LABEL_11:
  *(a1 + 92) = v4;
  return result;
}

uint64_t OSKextIsLoadable(void *a1)
{
  if (!__OSKextIsValid(a1) || !OSKextIsAuthentic(a1) || !OSKextResolveDependencies(a1) || !OSKextValidateDependencies(a1))
  {
    return 0;
  }

  return OSKextAuthenticateDependencies(a1);
}

CFDictionaryRef OSKextCopyDiagnostics(void *a1, char a2)
{
  v4 = a1[8];
  v5 = CFGetAllocator(a1);
  if (v4)
  {
    Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      if (a2)
      {
        v7 = __OSKextCopyDiagnosticsDict(a1, 1);
        if (v7)
        {
          v8 = v7;
          if (CFDictionaryGetCount(v7))
          {
            CFDictionarySetValue(Mutable, @"Validation Failures", v8);
          }

          CFRelease(v8);
        }
      }

      if ((a2 & 2) != 0)
      {
        v9 = __OSKextCopyDiagnosticsDict(a1, 2);
        if (v9)
        {
          v10 = v9;
          if (CFDictionaryGetCount(v9))
          {
            CFDictionarySetValue(Mutable, @"Authentication Failures", v10);
          }

          CFRelease(v10);
        }
      }

      if ((a2 & 4) != 0)
      {
        v11 = __OSKextCopyDiagnosticsDict(a1, 4);
        if (v11)
        {
          v12 = v11;
          if (CFDictionaryGetCount(v11))
          {
            CFDictionarySetValue(Mutable, @"Dependency Resolution Failures", v12);
          }

          CFRelease(v12);
        }
      }

      if ((a2 & 8) != 0)
      {
        v13 = __OSKextCopyDiagnosticsDict(a1, 8);
        if (v13)
        {
          v14 = v13;
          if (CFDictionaryGetCount(v13))
          {
            CFDictionarySetValue(Mutable, @"Warnings", v14);
          }

          CFRelease(v14);
        }
      }

      if ((a2 & 0x10) != 0)
      {
        v15 = __OSKextCopyDiagnosticsDict(a1, 16);
        if (v15)
        {
          v16 = v15;
          if (CFDictionaryGetCount(v15))
          {
            CFDictionarySetValue(Mutable, @"Boot Level Restrictions", v16);
          }

          CFRelease(v16);
        }
      }
    }

    else
    {
      OSKextLog(0, 17, "Memory allocation failure.");
    }

    return Mutable;
  }

  else
  {
    v17 = MEMORY[0x1E695E9D8];
    v18 = MEMORY[0x1E695E9E8];

    return CFDictionaryCreate(v5, 0, 0, 0, v17, v18);
  }
}

CFDictionaryRef __OSKextCopyDiagnosticsDict(void *cf, int a2)
{
  v3 = cf[8];
  if (v3)
  {
    if (a2 <= 3)
    {
      if (a2 == 1)
      {
        goto LABEL_12;
      }

      if (a2 == 2)
      {
        ++v3;
        goto LABEL_12;
      }
    }

    else
    {
      switch(a2)
      {
        case 4:
          v3 += 2;
          goto LABEL_12;
        case 8:
          v3 += 3;
          goto LABEL_12;
        case 16:
          v3 += 4;
LABEL_12:
          v4 = *v3;
          if (*v3)
          {
            v5 = CFGetAllocator(cf);
            result = CFDictionaryCreateCopy(v5, v4);
            if (result)
            {
              return result;
            }
          }

          break;
      }
    }
  }

  v7 = CFGetAllocator(cf);
  v8 = MEMORY[0x1E695E9D8];
  v9 = MEMORY[0x1E695E9E8];

  return CFDictionaryCreate(v7, 0, 0, 0, v8, v9);
}

void OSKextLogDiagnostics(void *a1, char a2)
{
  v2 = OSKextCopyDiagnostics(a1, a2);
  if (!v2)
  {
    return;
  }

  v3 = v2;
  if (CFDictionaryGetCount(v2) && (CFStringForPlist_new = createCFStringForPlist_new(v3, 2)) != 0)
  {
    v5 = CFStringForPlist_new;
    UTF8CStringForCFString = createUTF8CStringForCFString(CFStringForPlist_new);
    if (UTF8CStringForCFString)
    {
      v7 = UTF8CStringForCFString;
      OSKextLog(0, 16, "%s", UTF8CStringForCFString);
      CFRelease(v3);
      CFRelease(v5);

      free(v7);
      return;
    }

    CFRelease(v3);
    v8 = v5;
  }

  else
  {
    v8 = v3;
  }

  CFRelease(v8);
}

BOOL OSKextMatchesRequiredFlags(uint64_t a1, int a2)
{
  ValueForInfoDictionaryKey = OSKextGetValueForInfoDictionaryKey(a1, @"OSBundleRequired");
  v4 = ValueForInfoDictionaryKey;
  return (a2 & 1) != 0 && ValueForInfoDictionaryKey && CFEqual(ValueForInfoDictionaryKey, @"Root") || (a2 & 2) != 0 && v4 && CFEqual(v4, @"Local-Root") || (a2 & 4) != 0 && v4 && CFEqual(v4, @"Network-Root") || (a2 & 0x10) != 0 && v4 && CFEqual(v4, @"Console") || (a2 & 0x20) != 0 && v4 && CFEqual(v4, @"DriverKit") || (a2 & 8) != 0 && v4 && CFEqual(v4, @"Safe Boot") || a2 == 0;
}

__CFArray *OSKextFilterRequiredKexts(const __CFArray *a1, int a2)
{
  AllKexts = a1;
  v4 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    if (!AllKexts)
    {
      AllKexts = OSKextGetAllKexts();
    }

    Count = CFArrayGetCount(AllKexts);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(AllKexts, i);
        if (OSKextMatchesRequiredFlags(ValueAtIndex, a2))
        {
          CFArrayAppendValue(Mutable, ValueAtIndex);
        }
      }
    }
  }

  else
  {
    OSKextLog(0, 17, "Memory allocation failure.");
  }

  return Mutable;
}

uint64_t mkext_adler32(unsigned __int8 *a1, unsigned int a2)
{
  if (a2 < 1)
  {
    return 1;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 1;
  v6 = a2;
  do
  {
    v7 = v3 + 5000 * (v2 / 0x1388);
    v8 = v7 == 0;
    if (!v7)
    {
      v5 %= 0xFFF1u;
    }

    v10 = *a1++;
    v9 = v10;
    if (v8)
    {
      v4 %= 0xFFF1u;
    }

    v5 += v9;
    v4 += v5;
    --v3;
    ++v2;
    --v6;
  }

  while (v6);
  return (v5 % 0xFFF1) | ((v4 % 0xFFF1) << 16);
}

__CFData *__OSKextCreateMkext(const __CFAllocator *a1, const __CFArray *AllKexts, const __CFURL *a3, int a4, int a5, int a6, const void *a7)
{
  v84 = *MEMORY[0x1E69E9840];
  v75 = 0;
  bzero(buffer, 0x400uLL);
  if (!AllKexts)
  {
    AllKexts = OSKextGetAllKexts();
  }

  Count = CFArrayGetCount(AllKexts);
  if (!Count)
  {
    return 0;
  }

  v15 = Count;
  Mutable = CFDataCreateMutable(a1, 0);
  if (!Mutable)
  {
    OSKextLog(0, 17, "Memory allocation failure.");
    return 0;
  }

  v17 = Mutable;
  *bytes = 0u;
  memset(v77, 0, sizeof(v77));
  v18 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v18)
  {
    OSKextLog(0, 17, "Memory allocation failure.");
    CFRelease(v17);
    return 0;
  }

  v19 = v18;
  value = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (!value)
  {
    OSKextLog(0, 17, "Memory allocation failure.");
    v44 = 0;
    v46 = 0;
    goto LABEL_100;
  }

  if (a3 && !CFURLGetFileSystemRepresentation(a3, 1u, buffer, 1024))
  {
    OSKextLog(0, 17, "String/URL conversion failure.");
    v46 = 0;
    v44 = 0;
    goto LABEL_99;
  }

  CFDictionarySetValue(v19, @"_MKEXTInfoDictionaries", value);
  if (a7)
  {
    CFDictionarySetValue(v19, @"Kext Request Predicate", @"Load");
    CFDictionarySetValue(v19, @"Kext Request Arguments", a7);
  }

  CFDataAppendBytes(v17, bytes, 44);
  theData = v17;
  if (v15 < 1)
  {
    v47 = 0;
LABEL_77:
    v46 = IOCFSerialize(v19, 0);
    if (v46)
    {
      v75 = 0;
      if (!a5)
      {
        goto LABEL_81;
      }

      if (__OSKextAddCompressedFileToMkext(0, theData, v46, 1, &v75))
      {
        if (v75)
        {
LABEL_82:
          MutableBytePtr = CFDataGetMutableBytePtr(theData);
          *MutableBytePtr = 0x58534F4D54584B4DLL;
          *(MutableBytePtr + 2) = bswap32(CFDataGetLength(theData));
          *(MutableBytePtr + 4) = 18874370;
          v52 = MutableBytePtr + 16;
          *(MutableBytePtr + 5) = bswap32(v47);
          pthread_once(&__sOSKextInitialized, __OSKextInitialize);
          *(MutableBytePtr + 6) = bswap32(*(__sOSKextArchInfo + 2));
          pthread_once(&__sOSKextInitialized, __OSKextInitialize);
          *(MutableBytePtr + 7) = bswap32(*(__sOSKextArchInfo + 3));
          v53 = CFDataGetLength(theData) - 16;
          if (v53 < 1)
          {
            v62 = 1;
          }

          else
          {
            v54 = 0;
            v55 = 0;
            v56 = 0;
            v57 = 1;
            do
            {
              v58 = v55 + 5000 * (v54 / 0x1388);
              v59 = v58 == 0;
              if (!v58)
              {
                v57 %= 0xFFF1u;
              }

              v61 = *v52++;
              v60 = v61;
              if (v59)
              {
                v56 %= 0xFFF1u;
              }

              v57 += v60;
              v56 += v57;
              --v55;
              ++v54;
              --v53;
            }

            while (v53);
            v62 = (v57 % 0xFFF1) | ((v56 % 0xFFF1) << 16);
          }

          *(MutableBytePtr + 3) = bswap32(v62);
          v44 = theData;
          CFRetain(theData);
          v63 = v47;
          v17 = theData;
          OSKextLog(0, 132, "Created mkext for architecture %s containing %u kexts.", *__sOSKextArchInfo, v63);
          goto LABEL_99;
        }

LABEL_81:
        v48 = CFDataGetMutableBytePtr(theData);
        *(v48 + 4) = bswap32(CFDataGetLength(theData));
        *(v48 + 10) = bswap32(CFDataGetLength(v46));
        BytePtr = CFDataGetBytePtr(v46);
        Length = CFDataGetLength(v46);
        CFDataAppendBytes(theData, BytePtr, Length);
        goto LABEL_82;
      }
    }

    v44 = 0;
    v17 = theData;
    goto LABEL_99;
  }

  object = v19;
  v20 = 0;
  v21 = 0;
  v67 = *MEMORY[0x1E695E4D0];
  v22 = "";
  if (!a5)
  {
    v22 = "non";
  }

  v65 = v22;
  v70 = a6;
  v71 = a5;
  v69 = a4;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(AllKexts, v21);
    __OSKextGetFileSystemPath(ValueAtIndex, 0, 0, v82);
    if (!__OSKextIsValid(ValueAtIndex))
    {
      OSKextLog(ValueAtIndex, 133, "%s is not valid; omitting from mkext.");
      goto LABEL_40;
    }

    if (a6 && OSKextIsLoaded(ValueAtIndex))
    {
      OSKextLog(ValueAtIndex, 135, "Omitting loaded kext %s from mkext for kernel load.");
      goto LABEL_40;
    }

    if (!OSKextMatchesRequiredFlags(ValueAtIndex, a4))
    {
      goto LABEL_40;
    }

    if (!OSKextSupportsArchitecture(ValueAtIndex, 0))
    {
      pthread_once(&__sOSKextInitialized, __OSKextInitialize);
      OSKextLog(ValueAtIndex, 133, "%s does not contain code for architecture %s.");
      goto LABEL_40;
    }

    v24 = CFDataGetLength(v17);
    valuePtr = 0;
    *v79 = 0;
    v78 = 0;
    __OSKextGetFileSystemPath(ValueAtIndex, 0, 1u, v83);
    if (!__sOSKextLoadAuditFunction(ValueAtIndex))
    {
      OSKextLog(ValueAtIndex, 33, "Load audit function returned false, bailing on adding %s to mkext.");
      goto LABEL_97;
    }

    OSKextLog(ValueAtIndex, 133, "Adding %s to mkext.", v83);
    v25 = OSKextCopyInfoDictionary(ValueAtIndex);
    if (!v25)
    {
      break;
    }

    v26 = v25;
    v73 = v20;
    if ((*(ValueAtIndex + 92) & 4) != 0 && __OSKextHasSuffix(ValueAtIndex) && (*(ValueAtIndex + 92) & 1) == 0)
    {
      ValueForInfoDictionaryKey = OSKextGetValueForInfoDictionaryKey(ValueAtIndex, @"OSBundleLibraries");
      v28 = ValueForInfoDictionaryKey;
      if (!ValueForInfoDictionaryKey)
      {
        OSKextLog(ValueAtIndex, 129, "Executable kext %s with no dependencies?!", v83);
        v29 = 0;
        v32 = 0;
        goto LABEL_58;
      }

      if (!CFDictionaryGetValue(ValueForInfoDictionaryKey, @"com.apple.kpi.kasan"))
      {
        CFDictionarySetValue(v28, @"com.apple.kpi.kasan", @"8.0.0b1");
      }

      if (!CFDictionaryGetValue(v28, @"com.apple.kpi.kcov"))
      {
        CFDictionarySetValue(v28, @"com.apple.kpi.kcov", @"8.0.0b1");
      }
    }

    if ((*(ValueAtIndex + 92) & 0x10) != 0)
    {
      CFDictionarySetValue(v26, @"OSBundleEnableKextLogging", v67);
    }

    pthread_once(&__sOSKextInitialized, __OSKextInitialize);
    v29 = OSKextCopyExecutableForArchitecture(ValueAtIndex, __sOSKextArchInfo);
    if (v29)
    {
      valuePtr = v24;
      v30 = CFGetAllocator(ValueAtIndex);
      v31 = CFNumberCreate(v30, kCFNumberSInt32Type, &valuePtr);
      v32 = v31;
      if (!v31)
      {
        OSKextLog(0, 17, "Memory allocation failure.");
LABEL_57:
        v28 = 0;
        goto LABEL_58;
      }

      CFDictionarySetValue(v26, @"_MKEXTExecutable", v31);
      v33 = CFDataGetLength(v29);
      *&v79[4] = bswap32(v33);
      if (!v71)
      {
        goto LABEL_46;
      }

      if (!__OSKextAddCompressedFileToMkext(ValueAtIndex, v17, v29, 0, &v78))
      {
        OSKextLog(ValueAtIndex, 129, "%s failed to compress executable.");
        goto LABEL_57;
      }

      if (v78)
      {
        v68 = 0;
      }

      else
      {
LABEL_46:
        v64 = v24;
        v34 = CFDataGetBytePtr(v29);
        *v79 = 0;
        CFDataAppendBytes(v17, v79, 8);
        v68 = v34;
        v35 = v34;
        v24 = v64;
        CFDataAppendBytes(v17, v35, v33);
      }

      OSKextLog(ValueAtIndex, 134, "%s added %u-byte %scompressed executable to mkext.", v83, v33, v65);
    }

    else
    {
      if ((*(ValueAtIndex + 92) & 4) != 0)
      {
        pthread_once(&__sOSKextInitialized, __OSKextInitialize);
        OSKextLog(ValueAtIndex, 129, "Can't get executable for %s (architecture %s).", v83, *__sOSKextArchInfo);
        v29 = 0;
        v32 = 0;
        goto LABEL_57;
      }

      v32 = 0;
      v68 = 0;
    }

    if (__OSKextGetFileSystemPath(ValueAtIndex, 0, 1u, v83))
    {
      v36 = __absPathOnVolume(v83, buffer);
      v37 = CFGetAllocator(ValueAtIndex);
      v38 = strlen(v36);
      v39 = CFStringCreateWithBytes(v37, v36, v38, 0x8000100u, 0);
      if (v39)
      {
        v40 = v39;
        CFDictionarySetValue(v26, @"_MKEXTBundlePath", v39);
        v41 = __OSKextCopyExecutableRelativePath(ValueAtIndex);
        v17 = theData;
        if (v41)
        {
          v42 = v41;
          CFDictionarySetValue(v26, @"_MKEXTExecutableRelativePath", v41);
          CFArrayAppendValue(value, v26);
          CFRelease(v26);
          CFRelease(v40);
          v43 = 0;
          v26 = v42;
        }

        else
        {
          CFArrayAppendValue(value, v26);
          CFRelease(v26);
          v43 = 0;
          v26 = v40;
        }

        v28 = v68;
        goto LABEL_59;
      }

      OSKextLog(0, 17, "Memory allocation failure.");
      v17 = theData;
    }

    else
    {
      OSKextLog(ValueAtIndex, 17, "String/URL conversion failure.");
    }

    v28 = v68;
LABEL_58:
    CFDataSetLength(v17, v24);
    v43 = 1;
LABEL_59:
    CFRelease(v26);
    if (v29)
    {
      CFRelease(v29);
    }

    a4 = v69;
    if (v32)
    {
      CFRelease(v32);
    }

    if (v78 && v28)
    {
      free(v28);
    }

    a6 = v70;
    a5 = v71;
    if (v43)
    {
      goto LABEL_98;
    }

    v20 = v73 + 1;
LABEL_40:
    if (v15 == ++v21)
    {
      v47 = v20;
      v19 = object;
      goto LABEL_77;
    }
  }

  OSKextLog(ValueAtIndex, 129, "Can't get info dictionary for %s.");
LABEL_97:
  CFDataSetLength(v17, v24);
LABEL_98:
  v46 = 0;
  v44 = 0;
  v19 = object;
LABEL_99:
  CFRelease(value);
LABEL_100:
  CFRelease(v19);
  CFRelease(v17);
  if (v46)
  {
    CFRelease(v46);
  }

  return v44;
}

CFMutableArrayRef OSKextCreateKextsFromMkextFile(const __CFAllocator *a1, const __CFURL *a2)
{
  resourceData = 0;
  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  if (CFURLCreateDataAndPropertiesFromResource(a1, a2, &resourceData, 0, 0, 0))
  {
    KextsFromMkext = __OSKextCreateKextsFromMkext(a1, resourceData, a2);
  }

  else
  {
    OSKextLog(0, 17, "Memory allocation failure.");
    KextsFromMkext = 0;
  }

  if (resourceData)
  {
    CFRelease(resourceData);
  }

  return KextsFromMkext;
}

CFMutableArrayRef __OSKextCreateKextsFromMkext(const __CFAllocator *a1, const __CFData *a2, const void *a3)
{
  cf = 0;
  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    OSKextLog(0, 17, "Memory allocation failure.");
    return 0;
  }

  v7 = Mutable;
  v56 = 0;
  v8 = *CFDataGetBytePtr(a2);
  BytePtr = CFDataGetBytePtr(a2);
  if (v8 != -1095041334)
  {
    v12 = 0;
    v56 = BytePtr + CFDataGetLength(a2);
    goto LABEL_9;
  }

  v10 = CFDataGetBytePtr(a2);
  Length = CFDataGetLength(a2);
  v12 = fat_iterator_for_data(BytePtr, &v10[Length], 1);
  if (!v12)
  {
    v31 = "Can't read mkext fat header.";
    goto LABEL_24;
  }

  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  v13 = *(__sOSKextArchInfo + 2);
  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  BytePtr = fat_iterator_find_arch(v12, v13, *(__sOSKextArchInfo + 3), &v56);
  if (BytePtr)
  {
LABEL_9:
    if (*BytePtr == 1415072589 && BytePtr[1] == 1481854797)
    {
      v17 = bswap32(BytePtr[2]);
      if (v56 - BytePtr == v17)
      {
        v19 = (BytePtr + 4);
        v18 = BytePtr[4];
        if (v18 == 18874370)
        {
          v20 = CFDataGetLength(a2);
          v56 = BytePtr + v20;
          v21 = (v20 - 16);
          if (v21 < 1)
          {
            v30 = 1;
          }

          else
          {
            v22 = 0;
            v23 = 0;
            v24 = 0;
            v25 = 1;
            do
            {
              v26 = v23 + 5000 * (v22 / 0x1388);
              v27 = v26 == 0;
              if (!v26)
              {
                v25 %= 0xFFF1u;
              }

              v29 = *v19++;
              v28 = v29;
              if (v27)
              {
                v24 %= 0xFFF1u;
              }

              v25 += v28;
              v24 += v25;
              --v23;
              ++v22;
              --v21;
            }

            while (v21);
            v30 = (v25 % 0xFFF1) | ((v24 % 0xFFF1) << 16);
          }

          if (bswap32(BytePtr[3]) == v30)
          {
            v33 = BytePtr[9];
            v34 = bswap32(BytePtr[8]);
            v35 = bswap32(v33);
            OSKextLog(0, 131079, "Mkext plist compressed size is %u.", v35);
            v36 = bswap32(BytePtr[10]);
            OSKextLog(0, 131079, "Mkext plist full size is %u.", v36);
            if (!v33)
            {
              v15 = 0;
              v39 = BytePtr + v34;
LABEL_46:
              v40 = IOCFUnserialize(v39, a1, 0, &cf);
              BytePtr = v40;
              if (!v40 || (v41 = CFGetTypeID(v40), v41 != CFDictionaryGetTypeID()))
              {
                UTF8CStringForCFString = createUTF8CStringForCFString(cf);
                v16 = UTF8CStringForCFString;
                v50 = "(unknown error)";
                if (UTF8CStringForCFString)
                {
                  v50 = UTF8CStringForCFString;
                }

                OSKextLog(0, 129, "Failed to read XML from mkext: %s.", v50);
                v14 = 0;
                goto LABEL_26;
              }

              Value = CFDictionaryGetValue(BytePtr, @"_MKEXTInfoDictionaries");
              if (Value && (v43 = Value, v44 = CFGetTypeID(Value), v44 == CFArrayGetTypeID()))
              {
                Count = CFArrayGetCount(v43);
                if (Count < 1)
                {
LABEL_55:
                  CFRetain(v7);
                  v16 = 0;
                  v14 = v7;
                  goto LABEL_26;
                }

                v45 = 0;
                v53 = v43;
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v43, v45);
                  v47 = __OSKextAlloc(a1);
                  if (!v47)
                  {
                    OSKextLog(0, 17, "Memory allocation failure.");
                    goto LABEL_61;
                  }

                  v48 = v47;
                  if (!__OSKextInitFromMkext(v47, ValueAtIndex, a3, a2))
                  {
                    break;
                  }

                  CFArrayAppendValue(v7, v48);
                  CFRelease(v48);
                  ++v45;
                  v43 = v53;
                  if (Count == v45)
                  {
                    goto LABEL_55;
                  }
                }

                CFRelease(v48);
              }

              else
              {
                OSKextLog(0, 129, "Mkext plist has no kexts.");
              }

LABEL_61:
              v14 = 0;
              goto LABEL_6;
            }

            v37 = CFGetAllocator(a2);
            UncompressMkext2FileData = __OSKextCreateUncompressMkext2FileData(v37, BytePtr + v34, v35, v36);
            v15 = UncompressMkext2FileData;
            if (UncompressMkext2FileData)
            {
              v39 = CFDataGetBytePtr(UncompressMkext2FileData);
              goto LABEL_46;
            }

            v14 = 0;
LABEL_25:
            v16 = 0;
            BytePtr = 0;
            goto LABEL_26;
          }

          v31 = "Mkext checksum error.";
        }

        else
        {
          v51 = bswap32(v18);
          v31 = "Unsupported mkext version 0x%x.";
        }
      }

      else
      {
        v51 = v17;
        v52 = v56 - BytePtr;
        v31 = "Mkext length field %d does not match mkext actual size %d.";
      }
    }

    else
    {
      v31 = "Bad mkext magic/signature.";
    }

LABEL_24:
    OSKextLog(0, 129, v31, v51, v52);
    v14 = 0;
    v15 = 0;
    goto LABEL_25;
  }

  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  OSKextLog(0, 129, "Architecture %s not found in mkext.", *__sOSKextArchInfo);
  v14 = 0;
  v15 = 0;
LABEL_6:
  v16 = 0;
LABEL_26:
  CFRelease(v7);
  if (cf)
  {
    CFRelease(cf);
  }

  if (BytePtr)
  {
    CFRelease(BytePtr);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    free(v16);
  }

  if (v12)
  {
    fat_iterator_close(v12);
  }

  return v14;
}

CFMutableArrayRef OSKextCreateKextsFromMkextData(const __CFAllocator *a1, const __CFData *a2)
{
  pthread_once(&__sOSKextInitialized, __OSKextInitialize);

  return __OSKextCreateKextsFromMkext(a1, a2, 0);
}

const char *__absPathOnVolume(const char *a1, char *__s)
{
  if (__s)
  {
    if (*__s)
    {
      v4 = strlen(__s);
      v5 = __s[v4 - 1] == 47;
      v6 = v4 - v5;
      if (v4 != v5)
      {
        if (!strncmp(a1, __s, v6))
        {
          v7 = v6;
        }

        else
        {
          v7 = 0;
        }

        a1 += v7;
      }
    }
  }

  return a1;
}

CFStringRef __OSKextCopyExecutableRelativePath(uint64_t a1)
{
  v2 = CFURLCopyAbsoluteURL(*(a1 + 16));
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFURLCopyFileSystemPath(v2, kCFURLPOSIXPathStyle);
  if (!v4)
  {
    v11 = 0;
    v9 = v3;
LABEL_15:
    CFRelease(v9);
    return v11;
  }

  v5 = v4;
  ExecutableURL = OSKextGetExecutableURL(a1);
  if (!ExecutableURL)
  {
    v8 = 0;
    goto LABEL_10;
  }

  v7 = CFURLCopyAbsoluteURL(ExecutableURL);
  v8 = v7;
  if (!v7)
  {
LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v9 = CFURLCopyFileSystemPath(v7, kCFURLPOSIXPathStyle);
  if (v9)
  {
    v10 = CFStringGetLength(v5) + 1;
    v13.length = CFStringGetLength(v9) - v10;
    v13.location = v10;
    v11 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v9, v13);
    goto LABEL_12;
  }

LABEL_11:
  v11 = 0;
LABEL_12:
  CFRelease(v3);
  CFRelease(v5);
  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    goto LABEL_15;
  }

  return v11;
}

CFStringRef OSKextCopyExecutableName(uint64_t a1)
{
  if ((*(a1 + 92) & 8) != 0)
  {
    return 0;
  }

  ExecutableURL = OSKextGetExecutableURL(a1);
  if (!ExecutableURL)
  {
    return 0;
  }

  return CFURLCopyLastPathComponent(ExecutableURL);
}

void OSKextVLogCFString(uint64_t a1, int a2, const __CFString *a3, va_list a4)
{
  if (__sOSKextLogOutputFunction)
  {
    v6 = a1;
    if (__OSKextShouldLog(a1, a2))
    {
      v7 = CFStringCreateWithFormatAndArguments(*MEMORY[0x1E695E480], 0, a3, a4);
      if (v7)
      {
        v8 = v7;
        Length = CFStringGetLength(v7);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        v11 = malloc_type_malloc(MaximumSizeForEncoding, 0x100004077774924uLL);
        if (v11)
        {
          v12 = v11;
          if (CFStringGetCString(v8, v11, MaximumSizeForEncoding, 0x8000100u))
          {
            __sOSKextLogOutputFunction(v6, a2, "%s", v12);
          }

          CFRelease(v8);
          free(v12);
        }

        else
        {
          CFRelease(v8);
        }
      }
    }
  }
}

const void *_isDictionary(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFDictionaryGetTypeID());
  }

  return result;
}

const void *_isArray(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFArrayGetTypeID());
  }

  return result;
}

const void *_isString(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFStringGetTypeID());
  }

  return result;
}

void __OSKextReleaseContents(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  memcpy(__dst, "(unknown)", sizeof(__dst));
  Count = CFArrayGetCount(__sOSAllKexts);
  if (Count >= 1)
  {
    v3 = Count + 1;
    do
    {
      if (CFArrayGetValueAtIndex(__sOSAllKexts, v3 - 2) == a1)
      {
        CFArrayRemoveValueAtIndex(__sOSAllKexts, v3 - 2);
      }

      --v3;
    }

    while (v3 > 1);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    UTF8CStringForCFString = createUTF8CStringForCFString(v4);
    v6 = UTF8CStringForCFString;
  }

  else
  {
    UTF8CStringForCFString = 0;
    v6 = "__unknown__";
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = CFURLCopyAbsoluteURL(v7);
    if (v8)
    {
      __OSKextGetFileSystemPath(0, v8, 1u, __dst);
      if ((*(a1 + 88) & 8) == 0 && CFDictionaryGetValue(__sOSKextsByURL, v8) == a1)
      {
        CFDictionaryRemoveValue(__sOSKextsByURL, v8);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  __OSKextRemoveKextFromIdentifierDict(a1, __sOSKextsByIdentifier);
  OSKextVersionGetString(*(a1 + 40), v15, 0x14u);
  if ((*(a1 + 88) & 8) != 0)
  {
    v9 = " (from mkext)";
  }

  else
  {
    v9 = "";
  }

  OSKextLog(a1, 262149, "Removed %s, id %s%s, version %s.", __dst, v9, v6, v15);
  if (v8)
  {
    CFRelease(v8);
  }

  if (UTF8CStringForCFString)
  {
    free(UTF8CStringForCFString);
  }

  OSKextFlushDiagnostics(a1, -1);
  OSKextFlushLoadInfo(a1, 1);
  v10 = *(a1 + 80);
  if (v10)
  {
    if (*v10)
    {
      CFRelease(*v10);
      v10 = *(a1 + 80);
    }

    *v10 = 0;
    if (v10[1])
    {
      CFRelease(v10[1]);
      v10 = *(a1 + 80);
    }

    v10[1] = 0;
    if (v10[2])
    {
      CFRelease(v10[2]);
      v10 = *(a1 + 80);
    }

    v10[2] = 0;
    if (v10[3])
    {
      CFRelease(v10[3]);
      v10 = *(a1 + 80);
    }

    free(v10);
    *(a1 + 80) = 0;
  }

  v11 = *(a1 + 16);
  if (v11)
  {
    CFRelease(v11);
  }

  *(a1 + 16) = 0;
  v12 = *(a1 + 24);
  if (v12)
  {
    CFRelease(v12);
  }

  *(a1 + 24) = 0;
  v13 = *(a1 + 32);
  if (v13)
  {
    CFRelease(v13);
  }

  *(a1 + 32) = 0;
  v14 = *(a1 + 56);
  if (v14)
  {
    CFRelease(v14);
  }

  *(a1 + 56) = 0;
}

__CFString *__OSKextCopyDebugDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  v3 = *(a1 + 24);
  Mutable = CFStringCreateMutable(v2, 0);
  v5 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"<OSKext %p [%p]> { ", a1, v2);
    if ((*(a1 + 88) & 8) != 0)
    {
      v6 = **(a1 + 80);
      if (!v6)
      {
        v6 = @"(unknown)";
      }

      CFStringAppendFormat(v5, 0, @"mkext URL = %@, ", v6);
      if (*(a1 + 16))
      {
        CFStringAppendFormat(v5, 0, @"original URL = %@, ", *(a1 + 16));
      }
    }

    else if (*(a1 + 16))
    {
      CFStringAppendFormat(v5, 0, @"URL = %@, ", *(a1 + 16));
    }

    if (v3)
    {
      v7 = v3;
    }

    else
    {
      v7 = @"(unknown)";
    }

    CFStringAppendFormat(v5, 0, @"ID = %@", v7);
    CFStringAppendFormat(v5, 0, @" }");
  }

  else
  {
    OSKextLog(0, 17, "Memory allocation failure.");
  }

  return v5;
}

uint64_t __OSKextRecordKextInIdentifierDict(__CFArray *a1, CFDictionaryRef theDict)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 3);
  if (!v3)
  {
    OSKextLog(a1, 262145, "Can't record kext in identifier lookup dictionary; no identifier.");
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, v3);
  v6 = Value;
  if (!Value)
  {
    CFDictionarySetValue(theDict, v3, a1);
    UTF8CStringForCFString = createUTF8CStringForCFString(v3);
    if (UTF8CStringForCFString)
    {
      goto LABEL_32;
    }

    return 1;
  }

  if (Value == a1)
  {
    UTF8CStringForCFString = createUTF8CStringForCFString(v3);
    v6 = a1;
    if (UTF8CStringForCFString)
    {
      goto LABEL_32;
    }

    return 1;
  }

  v7 = __kOSKextTypeID;
  if (v7 == CFGetTypeID(Value))
  {
    v8 = *(MEMORY[0x1E695E9C0] + 16);
    *&callBacks.version = *MEMORY[0x1E695E9C0];
    *&callBacks.release = v8;
    callBacks.equal = *(MEMORY[0x1E695E9C0] + 32);
    callBacks.retain = 0;
    callBacks.release = 0;
    v9 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, &callBacks);
    if (v9)
    {
      v10 = v9;
      CFArrayAppendValue(v9, v6);
      CFDictionarySetValue(theDict, v3, v10);
      v6 = v10;
      goto LABEL_7;
    }

    OSKextLog(0, 17, "Memory allocation failure.");
    return 0;
  }

LABEL_7:
  TypeID = CFArrayGetTypeID();
  if (TypeID == CFGetTypeID(v6))
  {
    if (__sOSKextStrictRecordingByLastOpened)
    {
      v29.length = CFArrayGetCount(v6);
      v29.location = 0;
      if (CFArrayGetFirstIndexOfValue(v6, v29, a1) == -1)
      {
        CFArrayInsertValueAtIndex(v6, 0, a1);
      }

      return 1;
    }

    v14 = *(a1 + 5);
    v30.length = CFArrayGetCount(v6);
    v30.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v6, v30, a1);
    if (FirstIndexOfValue != -1)
    {
      CFArrayRemoveValueAtIndex(v6, FirstIndexOfValue);
    }

    v16 = __sOSAllKexts;
    v31.length = CFArrayGetCount(__sOSAllKexts);
    v31.location = 0;
    v17 = CFArrayGetFirstIndexOfValue(v16, v31, a1);
    Count = CFArrayGetCount(v6);
    if (Count < 1)
    {
      v20 = 0;
    }

    else
    {
      v19 = Count;
      v20 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v20);
        v22 = ValueAtIndex[5];
        v23 = __sOSAllKexts;
        v32.length = CFArrayGetCount(__sOSAllKexts);
        v32.location = 0;
        v24 = CFArrayGetFirstIndexOfValue(v23, v32, ValueAtIndex);
        v25 = v14 != v22;
        if (v17 <= v24)
        {
          v25 = 1;
        }

        if (v14 > v22 || !v25)
        {
          break;
        }

        if (v19 == ++v20)
        {
          v20 = v19;
          break;
        }
      }
    }

    CFArrayInsertValueAtIndex(v6, v20, a1);
    UTF8CStringForCFString = createUTF8CStringForCFString(v3);
    if (!UTF8CStringForCFString)
    {
      return 1;
    }

LABEL_32:
    OSKextVersionGetString(*(a1 + 5), &callBacks, 0x14u);
    if (v6 == a1)
    {
      OSKextLog(a1, 262149, "%s, version %s is already in the identifier lookup dictionary at index %d.");
    }

    else
    {
      OSKextLog(a1, 262151, "%s, version %s recorded at index %d in the identifier lookup dictionary.");
    }

    free(UTF8CStringForCFString);
  }

  return 1;
}

uint64_t __OSKextCreateMkextInfo(uint64_t a1)
{
  if (*(a1 + 80))
  {
    return 1;
  }

  v3 = malloc_type_malloc(0x20uLL, 0x60040FAD0F902uLL);
  *(a1 + 80) = v3;
  if (v3)
  {
    *v3 = 0u;
    v3[1] = 0u;
    return 1;
  }

  else
  {
    OSKextLog(0, 17, "Memory allocation failure.");
    return 0;
  }
}

CFDataRef __OSKextCreateUncompressMkext2FileData(const __CFAllocator *a1, Bytef *a2, uInt a3, size_t size)
{
  v4 = size;
  v8 = size;
  v9 = malloc_type_malloc(size, 0x8637701uLL);
  if (!v9)
  {
    OSKextLog(0, 17, "Memory allocation failure.");
    return 0;
  }

  v10 = v9;
  memset(&strm.avail_out + 1, 0, 76);
  *&strm.avail_in = 0u;
  strm.next_in = a2;
  strm.next_out = v9;
  strm.avail_in = a3;
  strm.avail_out = v4;
  if (inflateInit_(&strm, "1.2.12", 112))
  {
    OSKextLog(0, 131073, "zlib inflateInit failed.");
LABEL_16:
    free(v10);
    return 0;
  }

  v11 = inflate(&strm, 4);
  if (!v11)
  {
    goto LABEL_10;
  }

  if (v11 != 1)
  {
    msg = strm.msg;
    if (!strm.msg)
    {
      msg = "unknown";
    }

    v17 = msg;
    v14 = "zlib inflate failed: %s.";
    goto LABEL_14;
  }

  if (LODWORD(strm.total_out) != v4)
  {
LABEL_10:
    v14 = "zlib inflate discrepancy, uncompressed size != original size.";
LABEL_14:
    OSKextLog(0, 131073, v14, v17);
LABEL_15:
    inflateEnd(&strm);
    goto LABEL_16;
  }

  v12 = CFDataCreateWithBytesNoCopy(a1, v10, v8, *MEMORY[0x1E695E488]);
  if (!v12)
  {
    OSKextLog(0, 17, "Memory allocation failure.");
    goto LABEL_15;
  }

  v13 = v12;
  inflateEnd(&strm);
  return v13;
}

const __CFURL *__OSKextHasSuffix(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 92) & 8) != 0)
  {
    return 0;
  }

  result = OSKextGetExecutableURL(a1);
  if (result)
  {
    result = __OSKextGetFileSystemPath(0, result, 1u, __s);
    if (result)
    {
      v2 = strlen(__s);
      return (v2 >= 7 && !strncmp("_kasan", &__s[v2 - 6], 6uLL));
    }
  }

  return result;
}

void __OSKextAddDependenciesApplierFunction(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 92) & 1) == 0)
  {
    v4 = *(a1 + 72);
    if (v4 && (v5 = *v4) != 0)
    {
      ++*(a2 + 3);
      v9.length = CFArrayGetCount(v5);
      v9.location = 0;
      CFArrayApplyFunction(v5, v9, __OSKextAddDependenciesApplierFunction, a2);
      --*(a2 + 3);
    }

    else
    {
      __OSKextGetFileSystemPath(a1, 0, 1u, buffer);
      OSKextLog(a1, 16385, "%s - missing load info or dependencies array in applier function.", buffer);
      *(a2 + 16) = 1;
    }
  }

  if (!*(a2 + 16) && *(a2 + 3) >= *(a2 + 2))
  {
    v6 = *a2;
    v10.length = CFArrayGetCount(*a2);
    v10.location = 0;
    if (CFArrayGetFirstIndexOfValue(v6, v10, a1) == -1)
    {
      CFArrayAppendValue(*a2, a1);
    }
  }
}

CFMutableDictionaryRef __OSKextGetDiagnostics(uint64_t a1, int a2)
{
  if (!*(a1 + 64))
  {
    v4 = malloc_type_malloc(0x28uLL, 0x20040769AC3DAuLL);
    *(a1 + 64) = v4;
    if (!v4)
    {
LABEL_24:
      OSKextLog(0, 17, "Memory allocation failure.");
      return 0;
    }

    v4[4] = 0;
    *v4 = 0u;
    *(v4 + 1) = 0u;
  }

  result = 0;
  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      result = **(a1 + 64);
      if (!result)
      {
        result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        **(a1 + 64) = result;
        if (!result)
        {
          goto LABEL_24;
        }
      }
    }

    else if (a2 == 2)
    {
      result = *(*(a1 + 64) + 8);
      if (!result)
      {
        result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        *(*(a1 + 64) + 8) = result;
        if (!result)
        {
          goto LABEL_24;
        }
      }
    }
  }

  else
  {
    switch(a2)
    {
      case 4:
        result = *(*(a1 + 64) + 16);
        if (!result)
        {
          result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          *(*(a1 + 64) + 16) = result;
          if (!result)
          {
            goto LABEL_24;
          }
        }

        break;
      case 8:
        result = *(*(a1 + 64) + 24);
        if (!result)
        {
          result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          *(*(a1 + 64) + 24) = result;
          if (!result)
          {
            goto LABEL_24;
          }
        }

        break;
      case 16:
        result = *(*(a1 + 64) + 32);
        if (!result)
        {
          result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          *(*(a1 + 64) + 32) = result;
          if (!result)
          {
            goto LABEL_24;
          }
        }

        break;
    }
  }

  return result;
}

void __OSKextValidateOSBundleLibraryApplierFunction(const __CFString *value, const __CFString *a2, uint64_t a3)
{
  CFArrayAppendValue(*(a3 + 16), value);
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = *(a3 + 16);
  TypeID = CFStringGetTypeID();
  if (!__OSKextCheckProperty(v6, v7, value, v8, TypeID, 0, 0, 1, 1, 0, 0))
  {
    *(a3 + 24) = 0;
    goto LABEL_11;
  }

  v10 = OSKextParseVersionCFString(a2);
  if (v10 == -1)
  {
    __OSKextAddDiagnostic(*a3, 1, @"Info dictionary property value is illegal", *(a3 + 16), 0);
    *(a3 + 24) = 0;
  }

  if (CFStringHasPrefix(value, @"com.apple.kernel"))
  {
    *(a3 + 25) = 1;
  }

  else
  {
    if (!CFStringHasPrefix(value, @"com.apple.kpi."))
    {
      goto LABEL_11;
    }

    *(a3 + 26) = 1;
  }

  if (v10 < __sOSNewKmodInfoKernelVersion)
  {
    *(*a3 + 92) |= 0x10000u;
  }

LABEL_11:
  v11 = *(a3 + 16);
  v12 = CFArrayGetCount(v11) - 1;

  CFArrayRemoveValueAtIndex(v11, v12);
}

void __OSKextValidateIOKitPersonalityApplierFunction(const __CFString *value, const __CFDictionary *a2, uint64_t *a3)
{
  v70 = 0;
  cf1 = 0;
  v69 = 0;
  CFArrayAppendValue(a3[2], value);
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  TypeID = CFDictionaryGetTypeID();
  if (!__OSKextCheckProperty(v6, v7, value, v8, TypeID, 0, 0, 1, 0, 0, 0))
  {
    *(a3 + 24) = 0;
    goto LABEL_61;
  }

  CFArrayAppendValue(a3[2], @"IOKitDebug");
  v10 = *a3;
  v11 = a3[2];
  v12 = CFNumberGetTypeID();
  v13 = __OSKextCheckProperty(v10, a2, @"IOKitDebug", v11, v12, 0, 0, 1, 0, 0, &v70);
  if (v13)
  {
    v14 = *(a3 + 24) == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  *(a3 + 24) = v15;
  if (v13 && v70)
  {
    *(*a3 + 92) |= 0x40u;
  }

  v16 = a3[2];
  Count = CFArrayGetCount(v16);
  CFArrayRemoveValueAtIndex(v16, Count - 1);
  if (!*(a3 + 25))
  {
    v18 = *MEMORY[0x1E695E4F0];
    CFArrayAppendValue(a3[2], *MEMORY[0x1E695E4F0]);
    v19 = *a3;
    v20 = a3[2];
    v21 = CFStringGetTypeID();
    if (__OSKextCheckProperty(v19, a2, v18, v20, v21, 0, 0, 1, 1, &cf1, &v70))
    {
      v22 = *(a3 + 24) == 0;
    }

    else
    {
      v22 = 1;
    }

    v23 = !v22;
    *(a3 + 24) = v23;
    v24 = *a3;
    if (cf1)
    {
      if (!CFEqual(cf1, *(v24 + 24)))
      {
        v25 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@ -> %@ (kext is %@)", value, cf1, *a3);
        __OSKextAddDiagnostic(*a3, 8, @"Personality CFBundleIdentifier differs from containing kext's (not necessarily a mistake, but rarely done)", value, 0);
        if (v25)
        {
          CFRelease(v25);
        }
      }
    }

    else
    {
      __OSKextAddDiagnostic(v24, 8, @"Personality has no CFBundleIdentifier; the kext's identifier will be inserted when sending to the IOCatalogue", value, 0);
    }

    if (cf1)
    {
      KextWithIdentifier = OSKextGetKextWithIdentifier(cf1);
      if (KextWithIdentifier)
      {
        if ((KextWithIdentifier[92] & 4) != 0)
        {
          goto LABEL_31;
        }

        v27 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"'%@' -> '%@'", value, cf1);
        v28 = *a3;
        v29 = @"Personality CFBundleIdentifier names a kext that doesn't declare an executable";
      }

      else
      {
        v27 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"'%@' -> '%@'", value, cf1);
        v28 = *a3;
        v29 = @"Personality CFBundleIdentifier names a kext that can't be found";
      }

      __OSKextAddDiagnostic(v28, 8, v29, v27, 0);
      if (v27)
      {
        CFRelease(v27);
      }
    }

LABEL_31:
    v30 = a3[2];
    v31 = CFArrayGetCount(v30);
    CFArrayRemoveValueAtIndex(v30, v31 - 1);
    CFArrayAppendValue(a3[2], @"IOClass");
    v32 = *a3;
    v33 = a3[2];
    v34 = CFStringGetTypeID();
    if (__OSKextCheckProperty(v32, a2, @"IOClass", v33, v34, 0, 1, 1, 1, &v69, 0))
    {
      v35 = *(a3 + 24) == 0;
    }

    else
    {
      v35 = 1;
    }

    v36 = !v35;
    *(a3 + 24) = v36;
    v37 = a3[2];
    v38 = CFArrayGetCount(v37);
    CFArrayRemoveValueAtIndex(v37, v38 - 1);
    CFArrayAppendValue(a3[2], @"IOProviderClass");
    v39 = *a3;
    v40 = a3[2];
    v41 = CFStringGetTypeID();
    v42 = __OSKextCheckProperty(v39, a2, @"IOProviderClass", v40, v41, 0, 1, 1, 1, &cf1, 0);
    if (v42)
    {
      v43 = *(a3 + 24) == 0;
    }

    else
    {
      v43 = 1;
    }

    v44 = !v43;
    *(a3 + 24) = v44;
    if (v42)
    {
      v45 = CFEqual(cf1, @"IOResources");
      v46 = a3[2];
      v47 = CFArrayGetCount(v46);
      CFArrayRemoveValueAtIndex(v46, v47 - 1);
      if (!v45)
      {
        goto LABEL_57;
      }

      CFArrayAppendValue(a3[2], @"IOMatchCategory");
      v48 = *a3;
      v49 = a3[2];
      v50 = CFStringGetTypeID();
      v51 = __OSKextCheckProperty(v48, a2, @"IOMatchCategory", v49, v50, 0, 0, 1, 0, &cf1, 0);
      if (v51)
      {
        v52 = *(a3 + 24) == 0;
      }

      else
      {
        v52 = 1;
      }

      v53 = !v52;
      *(a3 + 24) = v53;
      if (v51 && cf1 && v69 && !CFEqual(v69, cf1))
      {
        __OSKextAddDiagnostic(*a3, 8, @"Personality matches on IOResources but IOMatchCategory is missing or not equal to its IOClass; driver may be blocked from matching or may block others", value, 0);
      }
    }

    v54 = a3[2];
    v55 = CFArrayGetCount(v54);
    CFArrayRemoveValueAtIndex(v54, v55 - 1);
LABEL_57:
    CFArrayAppendValue(a3[2], @"IOProbeScore");
    v56 = *a3;
    v57 = a3[2];
    v58 = CFNumberGetTypeID();
    __OSKextCheckProperty(v56, a2, @"IOProbeScore", v57, v58, 0, 0, 0, 0, 0, 0);
    v59 = a3[2];
    v60 = CFArrayGetCount(v59);
    CFArrayRemoveValueAtIndex(v59, v60 - 1);
    if ((*(*a3 + 92) & 8) != 0)
    {
      CFArrayAppendValue(a3[2], @"CFBundleIdentifierKernel");
      v61 = *a3;
      v62 = a3[2];
      v63 = CFStringGetTypeID();
      if (!__OSKextCheckProperty(v61, a2, @"CFBundleIdentifierKernel", v62, v63, 0, 1, 1, 1, &cf1, &v70))
      {
        __OSKextSetDiagnostic(*a3, 1, @"The 'CFBundleIdentifierKernel' key is required in your personality to specify the base kext to load when your kext is instantiated.");
      }

      v64 = a3[2];
      v65 = CFArrayGetCount(v64);
      CFArrayRemoveValueAtIndex(v64, v65 - 1);
    }
  }

LABEL_61:
  v66 = a3[2];
  v67 = CFArrayGetCount(v66);
  CFArrayRemoveValueAtIndex(v66, v67 - 1);
}

uint64_t __OSKextAddCompressedFileToMkext(uint64_t a1, const __CFData *a2, CFDataRef theData, int a4, _BYTE *a5)
{
  v9 = a4 == 0;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(a2);
  v12 = CFDataGetLength(theData);
  memset(&strm.avail_in, 0, 104);
  *a5 = 0;
  v20 = Length + 8 * v9;
  CFDataSetLength(a2, v20 + v12 + (v12 + 1000) / 0x3E8 + 12);
  MutableBytePtr = CFDataGetMutableBytePtr(a2);
  v14 = MutableBytePtr;
  v15 = &MutableBytePtr[Length];
  if (a4)
  {
    v16 = 0;
  }

  else
  {
    *(v15 + 1) = bswap32(v12);
    v16 = &MutableBytePtr[Length];
    v15 += 8;
  }

  strm.next_in = BytePtr;
  strm.next_out = v15;
  strm.avail_in = v12;
  strm.avail_out = v12 + (v12 + 1000) / 0x3E8 + 12;
  memset(&strm.zalloc, 0, 24);
  if (deflateInit2_(&strm, -1, 8, 15, 8, 0, "1.2.12", 112))
  {
    OSKextLog(0, 131073, "zlib deflateInit failed.");
LABEL_11:
    CFDataSetLength(a2, Length);
    return 0;
  }

  if (deflate(&strm, 4) > 1)
  {
    OSKextLog(0, 131073, "zlib deflate failed.");
    deflateEnd(&strm);
    goto LABEL_11;
  }

  total_out = strm.total_out;
  if (LODWORD(strm.total_out) >= v12)
  {
    *a5 = 0;
  }

  else
  {
    *a5 = 1;
    if (a4)
    {
      *(v14 + 8) = bswap32(Length);
      v18 = CFDataGetLength(theData);
      *(v14 + 9) = bswap32(total_out);
      *(v14 + 10) = bswap32(v18);
      OSKextLog(a1, 134, "Compressed info dict from %u to %u bytes (%.2f%%).");
    }

    else
    {
      *v16 = bswap32(total_out);
      OSKextLog(a1, 134, "Compressed executable from %u to %u bytes (%.2f%%).");
    }

    CFDataSetLength(a2, total_out + v20);
  }

  deflateEnd(&strm);
  return 1;
}

uint64_t __OSKextInitFromMkext(uint64_t a1, CFDictionaryRef theDict, const void *a3, const void *a4)
{
  *(a1 + 88) |= 8u;
  Value = CFDictionaryGetValue(theDict, @"_MKEXTBundlePath");
  if (Value)
  {
    v9 = Value;
    v10 = CFGetAllocator(a1);
    v11 = CFURLCreateWithFileSystemPath(v10, v9, kCFURLPOSIXPathStyle, 1u);
    *(a1 + 16) = v11;
    if (!v11)
    {
      OSKextLog(0, 17, "Memory allocation failure.");
    }
  }

  v12 = CFGetAllocator(theDict);
  *(a1 + 56) = CFDictionaryCreateMutableCopy(v12, 0, theDict);
  if (!__OSKextCreateMkextInfo(a1))
  {
    OSKextLog(0, 17, "Memory allocation failure.");
    return 0;
  }

  if (a3)
  {
    **(a1 + 80) = CFRetain(a3);
  }

  *(*(a1 + 80) + 8) = CFRetain(a4);
  if (!__OSKextProcessInfoDictionary(a1, 0))
  {
    return 0;
  }

  return __OSKextRecordKext(a1);
}

uint64_t hid_pthread_attr_init(pthread_attr_t *a1, int a2, int a3)
{
  v9 = 0;
  v6 = pthread_attr_init(a1);
  if (v6 || (pthread_attr_setschedpolicy(a1, a3), v6 = pthread_attr_getschedparam(a1, &v9), v6) || (v9.sched_priority = a2, v6 = pthread_attr_setschedparam(a1, &v9), v6))
  {
    v7 = v6;
    goto LABEL_5;
  }

  v7 = pthread_attr_setdetachstate(a1, 1);
  if (v7)
  {
LABEL_5:
    pthread_attr_destroy(a1);
  }

  return v7;
}

NSObject *hid_workloop_create(const char *a1, uint64_t a2, int a3, OS_os_workgroup **a4)
{
  v5 = a2;
  inactive = dispatch_workloop_create_inactive(a1);
  if (v5)
  {
    dispatch_workloop_set_scheduler_priority();
  }

  dispatch_set_qos_class_fallback();
  dispatch_workloop_set_scheduler_priority();
  _dispatch_workloop_set_observer_hooks_4IOHID();
  if (a4)
  {
    os_workgroup_attr_set_interval_type();
    v7 = os_workgroup_interval_create_with_workload_id();
    *a4 = v7;
    dispatch_workloop_set_os_workgroup(inactive, v7);
  }

  dispatch_activate(inactive);
  return inactive;
}

void __IOHIDServiceFilterCreateWithClass_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 72) |= 2u;
  v3 = *(v2 + 56);
  if (v3)
  {
    (*(v3 + 16))(*(v2 + 56));
    v2 = *(a1 + 32);
  }

  CFRelease(v2);
}

uint64_t IOHIDServiceFilterGetTypeID()
{
  result = __kIOHIDServiceFilterTypeID;
  if (!__kIOHIDServiceFilterTypeID)
  {
    pthread_once(&__systemFilterClientTypeInit_0, __IOHIDServiceFilterRegister);
    return __kIOHIDServiceFilterTypeID;
  }

  return result;
}

uint64_t __IOHIDServiceFilterRegister()
{
  result = _CFRuntimeRegisterClass();
  __kIOHIDServiceFilterTypeID = result;
  return result;
}

uint64_t IOHIDServiceFilterCompare(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a2 + 40);
  v4 = v2 == v3;
  v5 = v2 <= v3;
  v6 = -1;
  if (v5)
  {
    v6 = 1;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

id IOHIDServiceFilterFilterCopyMatchingEvent(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 96);
  v7 = a2;
  if (v6)
  {
    v7 = [v6 *(a1 + 128)];
  }

  if (!v7)
  {
    v8 = _IOHIDEventDebugInfo(a2);
    v9 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      Type = IOHIDEventGetType(a2);
      SenderID = _IOHIDServiceGetSenderID(*(a1 + 48));
      v13 = *(a1 + 88);
      v14[0] = 67109890;
      v14[1] = Type;
      v15 = 2048;
      v16 = SenderID;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v13;
      _os_log_debug_impl(&dword_197195000, v9, OS_LOG_TYPE_DEBUG, "Copy Event filtered type:%d sender:0x%llx eventInfo:(%@) service filter:%@", v14, 0x26u);
    }

    CFRelease(v8);
  }

  return v7;
}

uint64_t IOHIDServiceFilterSetOutputEvent(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v2 = *(*result + 104);
    if (v2)
    {
      return v2();
    }
  }

  return result;
}

void __IOHIDServiceClientCopyProperties_block_invoke(IOHIDServiceClientRef *a1, const __CFString *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  Value = CFDictionaryGetValue(*(a1[4] + 12), a2);
  os_unfair_recursive_lock_unlock();
  if (Value)
  {
    if (!CFEqual(Value, *MEMORY[0x1E695E738]))
    {
      v7 = a1[5];

      CFDictionarySetValue(v7, a2, Value);
    }
  }

  else if ((CFEqual(a2, @"PrimaryUsagePage") || CFEqual(a2, @"PrimaryUsage") || CFEqual(a2, @"DeviceUsagePairs")) && (v5 = IOHIDServiceClientCopyProperty(a1[4], a2)) != 0)
  {
    v6 = v5;
    CFDictionarySetValue(a1[5], a2, v5);

    CFRelease(v6);
  }

  else
  {
    v8 = a1[6];

    CFArrayAppendValue(v8, a2);
  }
}

uint64_t __IOHIDServiceClientCopyProperties_block_invoke_3(uint64_t a1, const void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 32), a2);
  result = CFSetContainsValue(__serviceKeysSet, a2);
  if (result)
  {
    os_unfair_recursive_lock_lock_with_options();
    if (Value)
    {
      v6 = Value;
    }

    else
    {
      v6 = *MEMORY[0x1E695E738];
    }

    CFDictionarySetValue(*(*(a1 + 40) + 96), a2, v6);

    return os_unfair_recursive_lock_unlock();
  }

  return result;
}

uint64_t IOHIDServiceClientRegisterRemovalCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_recursive_lock_lock_with_options();
  a1[4] = a2;
  a1[6] = a3;
  a1[7] = a4;

  return os_unfair_recursive_lock_unlock();
}

uint64_t IOHIDServiceClientRegisterRemovalBlock(void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  os_unfair_recursive_lock_lock_with_options();
  a1[5] = _Block_copy(a2);
  a1[6] = a3;
  a1[7] = a4;

  return os_unfair_recursive_lock_unlock();
}

uint64_t IOHIDServiceClientFastPathCopyEvent(uint64_t a1)
{
  v3 = 0;
  result = *(a1 + 104);
  if (result)
  {
    v2 = *(*result + 64);
    if (v2)
    {
      v2();
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t IOHIDServiceClientFastPathCopyEventWithStatus(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1 && (v2 = *(*v1 + 64)) != 0)
  {
    return v2();
  }

  else
  {
    return 3758097095;
  }
}

uint64_t IOHIDServiceClientFastPathCopyProperty(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1 && (v2 = *(*v1 + 48)) != 0)
  {
    return v2();
  }

  else
  {
    return 0;
  }
}

uint64_t IOHIDServiceClientFastPathSetProperty(uint64_t a1)
{
  result = *(a1 + 104);
  if (result)
  {
    v2 = *(*result + 56);
    if (v2)
    {
      LOBYTE(result) = v2();
    }

    else
    {
      LOBYTE(result) = 0;
    }
  }

  return result;
}

uint64_t _IOHIDVirtualServiceClientSetOputputEvent(void *a1, uint64_t a2)
{
  v2 = a1[8];
  if (v2 && (v3 = *(v2 + 40)) != 0)
  {
    return v3(a1[9], a1[10], a1, a2);
  }

  else
  {
    return 3758097095;
  }
}

uint64_t _IOHIDVirtualServiceClientCopyMatchingEvent(void *a1, uint64_t a2)
{
  v2 = a1[8];
  if (v2 && (v3 = *(v2 + 48)) != 0)
  {
    return v3(a1[9], a1[10], a1, a2);
  }

  else
  {
    return 0;
  }
}

__n128 IOHIDEventSystemConnectionGetAuditToken(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    result = *(a1 + 196);
    v3 = *(a1 + 212);
    *a2 = result;
    *(a2 + 16) = v3;
  }

  return result;
}

void _IOHIDEventSystemConnectionRegisterEventFilter(uint64_t a1, int a2)
{
  v3 = *(a1 + 8);
  *(a1 + 260) = a2;
  if (v3)
  {
    _IOHIDEventSystemRegisterEventFilter(v3, a1);
  }
}

void _IOHIDEventSystemConnectionUnregisterEventFilter(CFSetRef *a1)
{
  v2 = a1[1];
  if (v2)
  {
    _IOHIDEventSystemUnregisterEventFilter(v2, a1);
  }
}

uint64_t _IOHIDEventSystemConnectionEventFilterCompare(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 260);
  v3 = *(a2 + 260);
  v4 = v2 == v3;
  v5 = v2 <= v3;
  v6 = -1;
  if (v5)
  {
    v6 = 1;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t _IOHIDEventSystemConnectionRegisterPropertyChangedNotification(char *a1, const void *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  Mutable = *(a1 + 17);
  if (Mutable || (v5 = CFGetAllocator(a1), Mutable = CFSetCreateMutable(v5, 0, MEMORY[0x1E695E9F8]), (*(a1 + 17) = Mutable) != 0))
  {
    CFSetAddValue(Mutable, a2);
  }

  return os_unfair_recursive_lock_unlock();
}

uint64_t _IOHIDEventSystemConnectionUnregisterPropertyChangedNotification(uint64_t a1, const void *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  v4 = *(a1 + 136);
  if (v4)
  {
    CFSetRemoveValue(v4, a2);
  }

  return os_unfair_recursive_lock_unlock();
}

const char *IOHIDEventSystemConnectionGetTypeString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "Invalid";
  }

  else
  {
    return off_1E74A9440[a1];
  }
}

uint64_t _IOHIDEventSystemConnectionRecordServiceChanged(uint64_t result)
{
  if (!*(result + 456))
  {
    v2 = result;
    os_unfair_recursive_lock_lock_with_options();
    iohideventsystem_client_dispatch_service_records_changed(*(v2 + 40));

    return os_unfair_recursive_lock_unlock();
  }

  return result;
}

uint64_t _IOHIDEventSystemConnectionRegisterRecordServiceChanged(void *a1)
{
  result = a1[1];
  if (result)
  {
    return _IOHIDEventSystemRegisterRecordServiceChanged(result, a1);
  }

  return result;
}

uint64_t _IOHIDEventSystemConnectionUnregisterRecordServiceChanged(void *a1)
{
  result = a1[1];
  if (result)
  {
    return _IOHIDEventSystemUnregisterRecordServiceChanged(result, a1);
  }

  return result;
}

uint64_t _IOHIDEventSystemConnectionRecordClientChanged(uint64_t result)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!*(result + 456))
  {
    v1 = result;
    os_unfair_recursive_lock_lock_with_options();
    v2 = iohideventsystem_client_dispatch_client_records_changed(*(v1 + 40));
    v3 = v2;
    if ((v2 - 268435459) < 2)
    {
      goto LABEL_5;
    }

    if (!v2)
    {
      return os_unfair_recursive_lock_unlock();
    }

    if (v2 == 268451843)
    {
LABEL_5:
      v4 = _IOHIDLogCategory(9);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(v1 + 168);
        v7 = 136315394;
        v8 = v5;
        v9 = 1024;
        v10 = v3;
        _os_log_impl(&dword_197195000, v4, OS_LOG_TYPE_INFO, "%s: iohideventsystem_client_dispatch_client_records_changed:0x%x", &v7, 0x12u);
      }
    }

    else
    {
      v6 = _IOHIDLogCategory(9);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        _IOHIDEventSystemConnectionRecordClientChanged_cold_1();
      }
    }

    __IOHIDEventSystemConnectionCheckServerStatus(v3, v1);
    return os_unfair_recursive_lock_unlock();
  }

  return result;
}

uint64_t _IOHIDEventSystemConnectionRegisterRecordClientChanged(void *a1)
{
  result = a1[1];
  if (result)
  {
    return _IOHIDEventSystemRegisterRecordClientChanged(result, a1);
  }

  return result;
}

uint64_t _IOHIDEventSystemConnectionUnregisterRecordClientChanged(void *a1)
{
  result = a1[1];
  if (result)
  {
    return _IOHIDEventSystemUnregisterRecordClientChanged(result, a1);
  }

  return result;
}

uint64_t _IOHIDEventSystemConnectionLogEvent(char *a1, uint64_t a2)
{
  v7.tv_sec = 0;
  *&v7.tv_usec = 0;
  Type = IOHIDEventGetType(a2);
  gettimeofday(&v7, 0);
  os_unfair_recursive_lock_lock_with_options();
  v3 = *(a1 + 49);
  if (v3 || (v4 = CFGetAllocator(a1), v3 = _IOHIDSimpleQueueCreate(v4, 24, 10), (*(a1 + 49) = v3) != 0))
  {
    _IOHIDSimpleQueueEnqueue(v3, &Type, 1);
  }

  ++*(*(a1 + 50) + 4 * Type);
  return os_unfair_recursive_lock_unlock();
}

void _IOHIDEventSystemConnectionRemoveVirtualService(uint64_t a1, const void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = _IOHIDLogCategory(9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 168);
    *buf = 136315394;
    v11 = v5;
    v12 = 2048;
    v13 = a2;
    _os_log_impl(&dword_197195000, v4, OS_LOG_TYPE_DEFAULT, "%s: HIDVS ID:%llx destroy", buf, 0x16u);
  }

  if (a2)
  {
    Value = CFDictionaryGetValue(*(a1 + 280), a2);
    if (Value)
    {
      v7 = Value;
      CFRetain(Value);
      EnumerationQueue = _IOHIDEventSystemGetEnumerationQueue(*(a1 + 8));
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ___IOHIDEventSystemConnectionRemoveVirtualService_block_invoke;
      block[3] = &__block_descriptor_tmp_135;
      block[4] = v7;
      dispatch_async(EnumerationQueue, block);
      CFDictionaryRemoveValue(*(a1 + 280), a2);
    }
  }
}

HIDEvent *__IOHIDServiceVirtualCopyMatchingEventCallback(uint64_t a1, uint64_t a2, const __CFData *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  SenderID = _IOHIDServiceGetSenderID(a1);
  v24 = 0;
  v23 = 0;
  if (a3)
  {
    v6 = CFGetAllocator(a2);
    v7 = _IOHIDCreateBinaryData(v6, a3);
    if (!v7)
    {
      v21 = _IOHIDLog(0, v8);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __IOHIDServiceVirtualCopyMatchingEventCallback_cold_1(v21);
      }

      return 0;
    }

    a3 = v7;
    BytePtr = CFDataGetBytePtr(v7);
    Length = CFDataGetLength(a3);
  }

  else
  {
    Length = 0;
    BytePtr = 0;
  }

  if (*(a2 + 456))
  {
    goto LABEL_10;
  }

  v11 = iohideventsystem_copy_matching_event_from_virtual_service(*(a2 + 40), SenderID, BytePtr, Length, &v24, &v23, 0x20u);
  if (v11)
  {
    v12 = v11;
    v13 = _IOHIDLogCategory(9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(a2 + 168);
      *buf = 136315650;
      v26 = v14;
      v27 = 2048;
      v28 = SenderID;
      v29 = 1024;
      v30 = v12;
      _os_log_impl(&dword_197195000, v13, OS_LOG_TYPE_INFO, "%s: HIDVS ID:%llx iohideventsystem_copy_matching_event_from_virtual_service:%x", buf, 0x1Cu);
    }

    __IOHIDEventSystemConnectionCheckServerStatus(v12, a2);
LABEL_10:
    v15 = 0;
    if (!a3)
    {
      return v15;
    }

    goto LABEL_14;
  }

  v16 = v24;
  v17 = v23;
  TypeID = CFDataGetTypeID();
  v19 = _IOHIDUnserializeAndVMDeallocWithTypeID(v16, v17, TypeID);
  if (!v19)
  {
    goto LABEL_10;
  }

  v20 = v19;
  v15 = IOHIDEventCreateWithDataInternal(*MEMORY[0x1E695E480], v19);
  CFRelease(v20);
  if (a3)
  {
LABEL_14:
    CFRelease(a3);
  }

  return v15;
}

uint64_t IOHIDEventServerGetTypeID()
{
  result = __kIOHIDEventServerTypeID;
  if (!__kIOHIDEventServerTypeID)
  {
    pthread_once(&__serviceTypeInit, __IOHIDEventServerRegister);
    return __kIOHIDEventServerTypeID;
  }

  return result;
}

uint64_t __IOHIDEventServerRegister()
{
  notify_register_check("com.apple.iohideventsystem.available", &__hidSystemToken);
  result = _CFRuntimeRegisterClass();
  __kIOHIDEventServerTypeID = result;
  return result;
}

void *IOHIDEventServerCreate(uint64_t a1, uint64_t a2)
{
  if (!__kIOHIDEventServerTypeID)
  {
    pthread_once(&__serviceTypeInit, __IOHIDEventServerRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    Instance[3] = 0;
    Instance[4] = 0;
    Instance[2] = a2;
    __whiteListSet = CFSetCreate(0, __whiteList, 30, MEMORY[0x1E695E9F8]);
  }

  return v4;
}

void IOHIDEventServerUnscheduleFromDispatchQueue(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a1 + 32) == a2)
  {
    v3 = _IOHIDLog(a1, a2);
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_197195000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOHIDEventServerUnschedule", &unk_19724ED59, buf, 2u);
    }

    dispatch_assert_queue_not_V2(*(a1 + 32));
    v4 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __IOHIDEventServerUnscheduleFromDispatchQueue_block_invoke;
    block[3] = &__block_descriptor_tmp_26;
    block[4] = a1;
    dispatch_async_and_wait(v4, block);
    for (i = 0; i != 5; ++i)
    {
      v6 = IOHIDEventSystemCopyConnections(*(a1 + 16), i);
      if (v6)
      {
        v8 = v6;
        v13.length = CFArrayGetCount(v6);
        v13.location = 0;
        CFArrayApplyFunction(v8, v13, __IOHIDEventServerKillClientFunction, a1);
        CFRelease(v8);
      }
    }

    v9 = *(a1 + 24);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 24) = 0;
    }

    *(a1 + 32) = 0;
    v10 = _IOHIDLog(v9, v7);
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_197195000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOHIDEventServerUnschedule", &unk_19724ED59, buf, 2u);
    }
  }
}

void __IOHIDEventServerUnscheduleFromDispatchQueue_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  if (v2)
  {
    IOMIGMachPortUnscheduleFromDispatchQueue(v2, *(v1 + 32));
  }
}

void __IOHIDEventServerKillClientFunction(const void *a1, uint64_t a2)
{
  CFRetain(*(a2 + 16));
  CFRetain(a1);
  DispatchQueue = _IOHIDEventSystemConnectionGetDispatchQueue(a1);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ____IOHIDEventServerKillClientFunction_block_invoke;
  v5[3] = &__block_descriptor_tmp_98_0;
  v5[4] = a2;
  v5[5] = a1;
  dispatch_async_and_wait(DispatchQueue, v5);
}

uint64_t _io_hideventsystem_copy_properties_for_service(unsigned int a1, UInt8 *bytes, CFIndex length, UInt8 *a4, unsigned int a5, vm_offset_t *a6, _DWORD *a7, int *a8)
{
  *a7 = 0;
  v14 = -536870206;
  v15 = _IOHIDUnserializeAndVMDealloc(bytes, length);
  TypeID = CFArrayGetTypeID();
  v17 = _IOHIDUnserializeAndVMDeallocWithTypeID(a4, a5, TypeID);
  v18 = v17;
  if (v17 && v15)
  {
    v19 = IOMIGMachPortCacheCopy(a1);
    v20 = v19;
    if (v19)
    {
      v21 = CFGetTypeID(v19);
      v22 = IOHIDEventSystemConnectionGetTypeID();
      if (a6)
      {
        if (v21 == v22)
        {
          System = _IOHIDEventSystemConnectionGetSystem(v20);
          if (System)
          {
            v24 = IOHIDEventSystemCopyService(System, v15);
            if (v24)
            {
              v25 = v24;
              v26 = _IOHIDServiceCopyPropertiesForClient(v24, v18, v20);
              *a7 = _IOHIDSerialize(v26, a6);
              if (v26)
              {
                CFRelease(v26);
              }

              CFRelease(v18);
              CFRelease(v25);
              v14 = 0;
              goto LABEL_11;
            }

            v14 = -536870160;
          }

          else
          {
            v14 = -536870185;
          }
        }
      }
    }

    goto LABEL_19;
  }

  v20 = 0;
  if (v17)
  {
LABEL_19:
    CFRelease(v18);
  }

  if (v15)
  {
LABEL_11:
    CFRelease(v15);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  *a8 = v14;
  return 0;
}

void checkFeatureEnabled(uint64_t result, uint64_t a2)
{
  if (checkFeatureEnabled_onceToken != -1)
  {
    checkFeatureEnabled_cold_1();
  }
}

void setupLogging()
{
  if (setupLogging_onceToken != -1)
  {
    setupLogging_cold_1();
  }
}

void __initialSetup_block_invoke(uint64_t a1, int token)
{
  notify_get_state(token, (*(*(a1 + 32) + 8) + 24));
  v3 = *(*(*(a1 + 32) + 8) + 24);

  handleAsyncAssertionDisableOverride(v3);
}

void __initialSetup_block_invoke_25()
{
  v0 = assertions_log;
  if (assertions_log)
  {
    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 0;
      v1 = &v4;
      v2 = v0;
LABEL_6:
      _os_log_impl(&dword_197195000, v2, OS_LOG_TYPE_DEFAULT, "Re-syncing assertions", v1, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 0;
    v2 = MEMORY[0x1E69E9C10];
    v1 = &v3;
    goto LABEL_6;
  }

  offloadAssertions(1);
}

uint64_t getPolicyTimeout(const __CFNumber *a1, const __CFNumber *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = convertCFNumberToCFStringRef(a1);
  v4 = convertCFNumberToCFStringRef(a2);
  Value = CFDictionaryGetValue(gAssertionCategoryPolicies, v3);
  if (!Value)
  {
    goto LABEL_15;
  }

  v6 = Value;
  v7 = assertions_log;
  if (assertions_log)
  {
    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v3;
      v14 = 2112;
      v15 = v6;
      v8 = v7;
LABEL_7:
      _os_log_impl(&dword_197195000, v8, OS_LOG_TYPE_DEFAULT, "Category %@ has a policy %@", &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v3;
    v14 = 2112;
    v15 = v6;
    v8 = MEMORY[0x1E69E9C10];
    goto LABEL_7;
  }

  if (!CFDictionaryGetValue(v6, v4))
  {
    goto LABEL_15;
  }

  v9 = assertions_log;
  if (assertions_log)
  {
    if (!os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v12 = 138412546;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    v10 = v9;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v12 = 138412546;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    v10 = MEMORY[0x1E69E9C10];
  }

  _os_log_impl(&dword_197195000, v10, OS_LOG_TYPE_DEFAULT, "there is a timeout for category %@ and policy %@", &v12, 0x16u);
LABEL_15:
  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

void undoCategoryPolicyTimers()
{
  v0 = 0;
  v1 = 0;
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E9C10];
  do
  {
    value = 0;
    if (!CFDictionaryGetValueIfPresent(gActiveAssertionsDict, v1, &value))
    {
      goto LABEL_25;
    }

    v3 = value;
    TypeID = CFDictionaryGetTypeID();
    if (v3 && CFGetTypeID(v3) == TypeID)
    {
      if (!CFDictionaryContainsKey(value, @"PolicyTimeoutTimeStamp"))
      {
        goto LABEL_25;
      }

      v5 = value;
      v6 = assertions_log;
      if (assertions_log)
      {
        if (!os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

        *buf = 138412290;
        v13 = v5;
        v7 = v6;
      }

      else
      {
        if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

        *buf = 138412290;
        v13 = v5;
        v7 = v2;
      }

      _os_log_impl(&dword_197195000, v7, OS_LOG_TYPE_DEFAULT, "Assertion has a policy category timestamp %@", buf, 0xCu);
LABEL_17:
      CFDictionaryRemoveValue(v5, @"PolicyTimeoutTimeStamp");
      if (CFDictionaryContainsKey(value, @"TimeoutTimeStamp"))
      {
        goto LABEL_25;
      }

      v9 = assertions_log;
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v10 = v9;
LABEL_23:
          _os_log_impl(&dword_197195000, v10, OS_LOG_TYPE_DEFAULT, "No timeout ts. Remove from timed list", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v10 = v2;
        goto LABEL_23;
      }

      removeFromTimedList(v0 | 0x80000000);
      goto LABEL_25;
    }

    v8 = assertions_log;
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v13) = v1;
        _os_log_error_impl(&dword_197195000, v8, OS_LOG_TYPE_ERROR, "Not a dictinary for 0x%x", buf, 8u);
      }
    }

    else if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      offloadAssertions_cold_8(v14, v1, &v15);
    }

LABEL_25:
    ++v1;
    v0 += 0x10000;
  }

  while (v1 != 128);
}

uint64_t setAsyncAssertionProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  PMQueue = getPMQueue();
  if (PMQueue)
  {
    v7 = PMQueue;
    v8 = assertions_log;
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109634;
        v18 = v3;
        v19 = 2112;
        v20 = a1;
        v21 = 2112;
        v22 = a2;
        _os_log_debug_impl(&dword_197195000, v8, OS_LOG_TYPE_DEBUG, "setAsyncAssertionProperties for 0x%x %@:%@", buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      setAsyncAssertionProperties_cold_1();
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __setAsyncAssertionProperties_block_invoke;
    v11[3] = &unk_1E74A9808;
    v12 = v3;
    v11[4] = &v13;
    v11[5] = a1;
    v11[6] = a2;
    dispatch_sync(v7, v11);
    v9 = *(v14 + 6);
  }

  else
  {
    v9 = 3758097097;
    *(v14 + 6) = -536870199;
  }

  _Block_object_dispose(&v13, 8);
  return v9;
}

void __setAsyncAssertionProperties_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 58);
  value = 0;
  v12 = 0;
  if (!CFDictionaryGetValueIfPresent(gAssertionsDict, (v2 & 0x7FFF), &value))
  {
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
      {
        __setAsyncAssertionProperties_block_invoke_cold_7();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __setAsyncAssertionProperties_block_invoke_cold_8();
    }

    v6 = *(*(a1 + 32) + 8);
    v7 = -536870911;
    goto LABEL_20;
  }

  v3 = value;
  TypeID = CFDictionaryGetTypeID();
  if (!v3 || CFGetTypeID(v3) != TypeID)
  {
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
      {
        __setAsyncAssertionProperties_block_invoke_cold_5();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __setAsyncAssertionProperties_block_invoke_cold_6();
    }

    v6 = *(*(a1 + 32) + 8);
    v7 = -536870199;
LABEL_20:
    *(v6 + 24) = v7;
    return;
  }

  v5 = value;
  CFDictionarySetValue(value, *(a1 + 40), *(a1 + 48));
  if (CFStringCompare(*(a1 + 40), @"TimeoutSeconds", 0) == kCFCompareEqualTo)
  {
    if (CFDictionaryContainsKey(gActiveAssertionsDict, (v2 & 0x7FFF)))
    {
      removeFromTimedList(*(a1 + 56));
      insertIntoTimedList(v5);
      goto LABEL_24;
    }

    if (!CFDictionaryContainsKey(gInactiveAssertionsDict, (v2 & 0x7FFF)))
    {
      goto LABEL_24;
    }

    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
      {
        __setAsyncAssertionProperties_block_invoke_cold_3();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      __setAsyncAssertionProperties_block_invoke_cold_4();
    }

    v11 = 255;
    v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v11);
LABEL_40:
    Mutable = v10;
    *(*(*(a1 + 32) + 8) + 24) = handleAssertionLevel(v10, *(a1 + 56), 0);
    CFDictionaryContainsKey(v5, @"AsyncRemoteAssertionId");
    if (Mutable)
    {
      goto LABEL_41;
    }

    return;
  }

  if (CFStringCompare(*(a1 + 40), @"AssertLevel", 0) == kCFCompareEqualTo)
  {
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
      {
        __setAsyncAssertionProperties_block_invoke_cold_1();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      __setAsyncAssertionProperties_block_invoke_cold_2();
    }

    v10 = CFRetain(*(a1 + 48));
    goto LABEL_40;
  }

  if (CFStringCompare(*(a1 + 40), @"AssertName", 0) == kCFCompareEqualTo)
  {
    logAsyncAssertionActivity(6u, *(a1 + 56));
  }

LABEL_24:
  if (CFDictionaryContainsKey(v5, @"AsyncRemoteAssertionId"))
  {
    v8 = CFDictionaryGetValue(v5, @"AsyncRemoteAssertionId");
    v11 = 0;
    CFNumberGetValue(v8, kCFNumberIntType, &v11);
    if (v11 == gCurrentRemoteAssertion)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, *(a1 + 40), *(a1 + 48));
      CFDictionarySetValue(Mutable, @"AsyncRemoteAssertionId", v8);
      sendAsyncAssertionMsg(0, Mutable, &v12, 0);
LABEL_41:
      CFRelease(Mutable);
    }
  }
}

uint64_t handleAssertionLevel(const __CFNumber *a1, uint64_t a2, char a3)
{
  v25 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
  Value = CFDictionaryGetValue(gAssertionsDict, (WORD1(a2) & 0x7FFF));
  if (Value)
  {
    v6 = Value;
    v7 = CFDictionaryContainsKey(gActiveAssertionsDict, (WORD1(a2) & 0x7FFF));
    v8 = CFDictionaryContainsKey(gInactiveAssertionsDict, (WORD1(a2) & 0x7FFF));
    if (v7 | v8)
    {
      if (valuePtr)
      {
        if (valuePtr == 255 && v8)
        {
          Current = CFAbsoluteTimeGetCurrent();
          v10 = CFDateCreate(0, Current);
          if (v10)
          {
            v11 = v10;
            CFDictionarySetValue(v6, @"AssertStartWhen", v10);
            CFRelease(v11);
          }

          if (CFDictionaryContainsKey(v6, @"AssertReleaseWhen"))
          {
            CFDictionaryRemoveValue(v6, @"AssertReleaseWhen");
          }

          CFDictionaryRemoveValue(gInactiveAssertionsDict, (WORD1(a2) & 0x7FFF));
          activateAsyncAssertion(a2, 5u);
        }
      }

      else if (v7)
      {
        v13 = CFAbsoluteTimeGetCurrent();
        v14 = CFDateCreate(0, v13);
        if (v14)
        {
          v15 = v14;
          CFDictionarySetValue(v6, @"AssertReleaseWhen", v14);
          CFRelease(v15);
        }

        CFArrayAppendValue(gReleasedAssertionsList, v6);
        CFDictionarySetValue(gInactiveAssertionsDict, (WORD1(a2) & 0x7FFF), v6);
        CFDictionaryRemoveValue(gActiveAssertionsDict, (WORD1(a2) & 0x7FFF));
        if ((a3 & 1) == 0)
        {
          logAsyncAssertionActivity(4u, a2);
        }

        if (CFDictionaryGetCount(gActiveAssertionsDict) <= 0 && gCurrentAssertion)
        {
          if (assertions_log)
          {
            if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
            {
              handleAssertionLevel_cold_3();
            }
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            handleAssertionLevel_cold_4();
          }

          sendAsyncReleaseMsg(gCurrentRemoteAssertion, 1, gCurrentRemoteAssertionIsCoalesced);
          gCurrentAssertion = 0;
          gCurrentRemoteAssertion = 0;
          gCurrentRemoteAssertionIsCoalesced = 0;
        }
      }

      v16 = assertions_log;
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109634;
          v20 = a2;
          v21 = 1024;
          v22 = valuePtr;
          v23 = 2112;
          v24 = v6;
          _os_log_debug_impl(&dword_197195000, v16, OS_LOG_TYPE_DEBUG, "handleAssertionLevel for 0x%x to %d: %@", buf, 0x18u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        handleAssertionLevel_cold_5();
      }

      return 0;
    }

    else
    {
      v12 = 3758097084;
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
        {
          handleAssertionLevel_cold_1();
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        handleAssertionLevel_cold_2();
      }
    }
  }

  else if (assertions_log)
  {
    v12 = 3758097090;
    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
    {
      handleAssertionLevel_cold_6();
    }
  }

  else
  {
    v12 = 3758097090;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      handleAssertionLevel_cold_7();
    }
  }

  return v12;
}

void clearAssertionLogBuffer()
{
  gAsyncAssertionActivityLog_2 = 0;
  gAsyncAssertionActivityLog_0 = 0;
  if (gAsyncAssertionActivityLog_1)
  {
    CFArrayRemoveAllValues(gAsyncAssertionActivityLog_1);
  }
}

void processCheckAssertionsMsg(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (CFDictionaryGetCount(gActiveAssertionsDict) < 1)
  {
    v3 = 0;
  }

  else
  {
    PMQueue = getPMQueue();
    dispatch_async(PMQueue, &__block_literal_global_114);
    v3 = 1;
  }

  reply = xpc_dictionary_create_reply(a1);
  if (reply)
  {
    v5 = reply;
    uint64 = xpc_dictionary_get_uint64(a1, "assertionCheckToken");
    xpc_dictionary_set_uint64(v5, "assertionCheckToken", uint64);
    xpc_dictionary_set_uint64(v5, "assertionCheckCount", v3);
    v7 = assertions_log;
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 67109376;
        v19 = v3;
        v20 = 2048;
        v21 = uint64;
        v8 = v7;
LABEL_13:
        _os_log_impl(&dword_197195000, v8, OS_LOG_TYPE_DEFAULT, "Replying to assertion check message with count %d token:%llu\n", &v18, 0x12u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v18 = 67109376;
      v19 = v3;
      v20 = 2048;
      v21 = uint64;
      v8 = MEMORY[0x1E69E9C10];
      goto LABEL_13;
    }

    remote_connection = xpc_dictionary_get_remote_connection(a1);
    xpc_connection_send_message(remote_connection, v5);
    xpc_release(v5);
    return;
  }

  if (assertions_log)
  {
    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
    {
      processCheckAssertionsMsg_cold_1();
    }
  }

  else
  {
    v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v10)
    {
      processCheckAssertionsMsg_cold_2(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }
}

void __processCheckAssertionsMsg_block_invoke()
{
  if (gCurrentRemoteAssertion)
  {
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
      {
        __processCheckAssertionsMsg_block_invoke_cold_1();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __processCheckAssertionsMsg_block_invoke_cold_2();
    }
  }

  offloadAssertions(1);
}

void processCurrentActiveAssertions(void *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = assertions_log;
  if (assertions_log)
  {
    if (!os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v3 = v2;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v3 = MEMORY[0x1E69E9C10];
  }

  _os_log_impl(&dword_197195000, v3, OS_LOG_TYPE_DEFAULT, "Powerd has requested active assertions update", buf, 2u);
LABEL_7:
  if (gAssertionConnection)
  {
    reply = xpc_dictionary_create_reply(a1);
    if (reply)
    {
      v5 = reply;
      uint64 = xpc_dictionary_get_uint64(a1, "assertionCheckToken");
      xpc_dictionary_set_uint64(v5, "assertionCheckToken", uint64);
      if (gActiveAssertionsDict && CFDictionaryGetCount(gActiveAssertionsDict) >= 1)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        v8 = 0;
        v9 = MEMORY[0x1E69E9C10];
        do
        {
          *buf = 0;
          if (CFDictionaryGetValueIfPresent(gActiveAssertionsDict, v8, buf))
          {
            v10 = *buf;
            TypeID = CFDictionaryGetTypeID();
            if (v10 && CFGetTypeID(v10) == TypeID)
            {
              CFArrayAppendValue(Mutable, *buf);
            }

            else
            {
              v12 = assertions_log;
              if (assertions_log)
              {
                if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
                {
                  *v33 = 67109120;
                  v34 = v8;
                  _os_log_error_impl(&dword_197195000, v12, OS_LOG_TYPE_ERROR, "Not a dictianary for 0x%x", v33, 8u);
                }
              }

              else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                processCurrentActiveAssertions_cold_1(v31, v8, v32);
              }
            }
          }

          ++v8;
        }

        while (v8 != 128);
        v13 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v5, "assertionUpdateActives", v13);
        xpc_connection_send_message(gAssertionConnection, v5);
        if (v13)
        {
          xpc_release(v13);
        }

        xpc_release(v5);
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      else
      {
        xpc_connection_send_message(gAssertionConnection, v5);
        xpc_release(v5);
      }
    }

    else if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
      {
        processAssertionUpdateActivity_cold_3();
      }
    }

    else
    {
      v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v22)
      {
        processAssertionUpdateActivity_cold_4(v22, v23, v24, v25, v26, v27, v28, v29);
      }
    }
  }

  else if (assertions_log)
  {
    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
    {
      processCurrentActiveAssertions_cold_4();
    }
  }

  else
  {
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v14)
    {
      processCurrentActiveAssertions_cold_5(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }
}

void handleAssertionTimeout()
{
  v41 = *MEMORY[0x1E69E9840];
  MonotonicTime = getMonotonicTime();
  if (assertions_log)
  {
    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
    {
      handleAssertionTimeout_cold_1();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    handleAssertionTimeout_cold_2();
  }

  v31 = 0;
  valuePtr = 0;
  if (CFArrayGetCount(gTimedAssertionsList) < 1)
  {
    goto LABEL_61;
  }

  v1 = 0;
  v2 = 0;
  allocator = *MEMORY[0x1E695E480];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(gTimedAssertionsList, v1);
    Value = CFDictionaryGetValue(ValueAtIndex, @"TimeoutTimeStamp");
    v5 = Value;
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
    }

    if (gAssertionPolicyActive)
    {
      v6 = CFDictionaryGetValue(ValueAtIndex, @"PolicyTimeoutTimeStamp");
      v2 = v6;
      if (v6)
      {
        CFNumberGetValue(v6, kCFNumberSInt64Type, &v31);
      }
    }

    v7 = CFDictionaryGetValue(ValueAtIndex, @"AsyncClientAssertionId");
    v30 = 0;
    CFNumberGetValue(v7, kCFNumberSInt32Type, &v30);
    if (!MonotonicTime)
    {
      v8 = !v5 || valuePtr == 0;
      if (!v8 && (!v2 || v31))
      {
        break;
      }
    }

    if (!CFDictionaryContainsKey(ValueAtIndex, @"AsyncRemoteAssertionId") || (v9 = CFDictionaryGetValue(ValueAtIndex, @"AsyncRemoteAssertionId"), v29 = 0, CFNumberGetValue(v9, kCFNumberIntType, &v29), v10 = v29, v29 != gCurrentRemoteAssertion))
    {
      v13 = assertions_log;
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109632;
          v36 = v30;
          v37 = 2048;
          v38 = valuePtr;
          v39 = 2048;
          v40 = v31;
          v14 = v13;
          goto LABEL_56;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109632;
        v36 = v30;
        v37 = 2048;
        v38 = valuePtr;
        v39 = 2048;
        v40 = v31;
        v14 = MEMORY[0x1E69E9C10];
LABEL_56:
        _os_log_debug_impl(&dword_197195000, v14, OS_LOG_TYPE_DEBUG, "Timeout: assertion id 0x%x with time %llu, policy timeout %llu", buf, 0x1Cu);
      }

      if (v31 > MonotonicTime || v2 == 0)
      {
        v16 = 2;
      }

      else
      {
        v16 = 3;
      }

      logAsyncAssertionActivity(v16, v30);
      if (CFDictionaryContainsValue(ValueAtIndex, @"TimeoutAction"))
      {
        v17 = CFDictionaryGetValue(ValueAtIndex, @"TimeoutAction");
      }

      else
      {
        v17 = @"TimeoutActionTurnOff";
      }

      if (CFStringCompare(v17, @"TimeoutActionRelease", 0) == kCFCompareEqualTo)
      {
        if (_releaseAsycnAssertion(v30, 0, 0))
        {
          v20 = assertions_log;
          if (assertions_log)
          {
            if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              v36 = v30;
              _os_log_error_impl(&dword_197195000, v20, OS_LOG_TYPE_ERROR, "Failed to release assertion 0x%x on timeout", buf, 8u);
            }
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            handleAssertionTimeout_cold_3(v33, &v30, v34);
          }
        }

        goto LABEL_53;
      }

      v18 = assertions_log;
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109378;
          v36 = v30;
          v37 = 2112;
          v38 = ValueAtIndex;
          v19 = v18;
          goto LABEL_58;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109378;
        v36 = v30;
        v37 = 2112;
        v38 = ValueAtIndex;
        v19 = MEMORY[0x1E69E9C10];
LABEL_58:
        _os_log_debug_impl(&dword_197195000, v19, OS_LOG_TYPE_DEBUG, "Turning off assertion 0x%x: %@", buf, 0x12u);
      }

      *buf = 0;
      v21 = CFNumberCreate(allocator, kCFNumberSInt32Type, buf);
      handleAssertionLevel(v21, v30, 1);
      CFRelease(v21);
      goto LABEL_53;
    }

    v11 = assertions_log;
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v36 = v10;
        v12 = v11;
LABEL_50:
        _os_log_impl(&dword_197195000, v12, OS_LOG_TYPE_DEFAULT, "Powerd knows about this assertion 0x%0x. let powerd time it out", buf, 8u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v36 = v10;
      v12 = MEMORY[0x1E69E9C10];
      goto LABEL_50;
    }

LABEL_53:
    if (CFArrayGetCount(gTimedAssertionsList) <= ++v1)
    {
      goto LABEL_60;
    }
  }

  if (!v1)
  {
    goto LABEL_61;
  }

  do
  {
LABEL_60:
    CFArrayRemoveValueAtIndex(gTimedAssertionsList, 0);
    LODWORD(v1) = v1 - 1;
  }

  while (v1);
LABEL_61:
  if ((assertion_timer_suspended & 1) == 0)
  {
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
      {
        insertIntoTimedList_cold_1();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      insertIntoTimedList_cold_2();
    }

    dispatch_suspend(gAssertionTimer);
    assertion_timer_suspended = 1;
  }

  if (CFArrayGetCount(gTimedAssertionsList))
  {
    v22 = CFArrayGetValueAtIndex(gTimedAssertionsList, 0);
    v23 = CFDictionaryGetValue(v22, @"TimeoutTimeStamp");
    v24 = CFDictionaryGetValue(v22, @"PolicyTimeoutTimeStamp");
    if (v23)
    {
      v25 = v24;
      if (v24)
      {
        if (CFNumberCompare(v23, v24, 0) > kCFCompareEqualTo)
        {
          v23 = v25;
        }
      }
    }

    CFNumberGetValue(v23, kCFNumberSInt64Type, &valuePtr);
    v26 = gAssertionTimer;
    v27 = dispatch_time(0, 1000000 * (valuePtr - MonotonicTime));
    dispatch_source_set_timer(v26, v27, 0xFFFFFFFFFFFFFFFFLL, 0);
    if (assertion_timer_suspended == 1)
    {
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
        {
          handleAssertionTimeout_cold_6();
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        handleAssertionTimeout_cold_7();
      }

      dispatch_resume(gAssertionTimer);
      assertion_timer_suspended = 0;
    }

    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
      {
        handleAssertionTimeout_cold_8();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      handleAssertionTimeout_cold_9();
    }
  }
}

uint64_t IOPMGetCurrentAsyncActiveAssertions()
{
  if (!gAssertionsDict)
  {
    return 0;
  }

  if (CFDictionaryGetCount(gActiveAssertionsDict) <= 0)
  {
    return 0;
  }

  return gActiveAssertionsDict;
}

uint64_t IOPMGetCurrentAsyncReleasedAssertions()
{
  result = gReleasedAssertionsList;
  if (gReleasedAssertionsList)
  {
    if (CFArrayGetCount(gReleasedAssertionsList) <= 0)
    {
      return 0;
    }

    else
    {
      return gReleasedAssertionsList;
    }
  }

  return result;
}

uint64_t IOPMGetCurrentAsyncInactiveAssertions()
{
  result = gInactiveAssertionsDict;
  if (gInactiveAssertionsDict)
  {
    if (CFDictionaryGetCount(gInactiveAssertionsDict) <= 0)
    {
      return 0;
    }

    else
    {
      return gInactiveAssertionsDict;
    }
  }

  return result;
}