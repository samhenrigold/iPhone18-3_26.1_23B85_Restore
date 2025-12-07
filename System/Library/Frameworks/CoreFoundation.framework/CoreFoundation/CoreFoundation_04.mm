void constructBuffers(const __CFString *a1, UInt8 *a2, const char **a3, const UniChar **a4, char *a5, char *a6)
{
  usedBufLen[1] = *MEMORY[0x1E69E9840];
  CStringPtr = CFStringGetCStringPtr(a1, 0x201u);
  *a3 = CStringPtr;
  if (CStringPtr)
  {
    *a4 = 0;
    *a5 = 1;
LABEL_5:
    *a6 = 0;
    return;
  }

  CharactersPtr = CFStringGetCharactersPtr(a1);
  *a4 = CharactersPtr;
  if (CharactersPtr)
  {
    *a5 = 0;
    goto LABEL_5;
  }

  usedBufLen[0] = 0;
  Length = CFStringGetLength(a1);
  v20.location = 0;
  v20.length = Length;
  CFStringGetBytes(a1, v20, 0x201u, 0, 0, 0, 0x7FFFFFFFLL, usedBufLen);
  if (usedBufLen[0] == Length)
  {
    if (a2 && Length < 1025)
    {
      v15 = 0;
    }

    else
    {
      a2 = malloc_type_malloc(Length, 0x100004077774924uLL);
      v15 = 1;
    }

    *a6 = v15;
    v21.location = 0;
    v21.length = Length;
    CFStringGetBytes(a1, v21, 0x201u, 0, 0, a2, Length, 0);
    *a3 = a2;
    v18 = 1;
  }

  else
  {
    v16 = 2 * Length;
    if (a2 && v16 < 0x401)
    {
      v17 = 0;
    }

    else
    {
      a2 = malloc_type_malloc(v16, 0x1000040BDFB0063uLL);
      v17 = 1;
    }

    *a6 = v17;
    v22.location = 0;
    v22.length = Length;
    CFStringGetCharacters(a1, v22, a2);
    v18 = 0;
    *a4 = a2;
  }

  *a5 = v18;
}

uint64_t scanCharacters(const __CFAllocator *a1, CFMutableStringRef *a2, _DWORD *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, void *a9, int a10, unsigned int a11)
{
  v54 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    if (a7 >= a8)
    {
      return 0;
    }

    v15 = 0;
    v48 = a8 - 1;
    if (a3)
    {
      v31 = a10 == 0;
    }

    else
    {
      v31 = 1;
    }

    v32 = !v31;
    v33 = a7;
    while (1)
    {
      v35 = (a5 + 2 * v33);
      v51 = *v35;
      if (v51 <= 0x7Fu)
      {
        if (sURLValidCharacters[v51])
        {
          if (a10 == 4 || a10 == 2)
          {
            v39 = v51 - 47;
            v21 = v39 > 0x11;
            v40 = (1 << v39) & 0x30001;
            if (!v21 && v40 != 0)
            {
              goto LABEL_81;
            }
          }

          goto LABEL_94;
        }

        v36 = v33 + 2;
        if (v51 == 37 && v36 < a8)
        {
          v44 = v35[1];
          if (v44 <= 0x7F && (sURLValidCharacters[v44] & 0x10) != 0)
          {
            v45 = *(a5 + 2 * v36);
            if (v45 <= 0x7F && (sURLValidCharacters[v45] & 0x10) != 0)
            {
              goto LABEL_94;
            }
          }
        }
      }

      if (a10 != 8)
      {
        goto LABEL_81;
      }

      if (v33 != a7 || v51 != 91)
      {
        if (v33 == v48)
        {
          v38 = v48;
          if (v51 == 93)
          {
            goto LABEL_95;
          }
        }

LABEL_81:
        if (v32)
        {
          *a3 |= a10;
        }

        Mutable = *a2;
        if (!*a2)
        {
          Mutable = CFStringCreateMutable(a1, 0);
          *a2 = Mutable;
        }

        CFStringAppendCharacters(Mutable, (a5 + 2 * *a9), v33 - *a9);
        if (_appendPercentEscapesForCharacter(&v51, 0, a11, *a2))
        {
          *a9 = v33 + 1;
        }

        else if (a11 == 134217984)
        {
          v38 = v33 + 1;
          if (v33 + 1 < a8 && (v51 & 0xFC00) == 0xD800)
          {
            v43 = *(a5 + 2 * v38);
            if ((v43 & 0xFC00) == 0xDC00)
            {
              v52 = v51;
              v53 = v43;
              if (_appendPercentEscapesForCharacter(&v52, 1, 134217984, *a2))
              {
                *a9 = v33 + 2;
              }

              else
              {
                v38 = v33;
              }

              v15 = 1;
              goto LABEL_95;
            }
          }
        }

        v15 = 1;
LABEL_94:
        v38 = v33;
        goto LABEL_95;
      }

      v38 = a7;
LABEL_95:
      v33 = v38 + 1;
      if (v38 + 1 >= a8)
      {
        return v15;
      }
    }
  }

  if (a7 < a8)
  {
    v15 = 0;
    v47 = a8 - 1;
    if (a3)
    {
      v16 = a10 == 0;
    }

    else
    {
      v16 = 1;
    }

    v17 = !v16;
    v18 = a7;
    while (1)
    {
      v19 = *(a4 + v18);
      v51 = *(a4 + v18);
      if ((v19 & 0x80000000) == 0)
      {
        if (sURLValidCharacters[v19])
        {
          if (a10 == 4 || a10 == 2)
          {
            v23 = v19 - 47;
            v21 = v23 > 0x11;
            v24 = (1 << v23) & 0x30001;
            if (!v21 && v24 != 0)
            {
              goto LABEL_30;
            }
          }

          goto LABEL_43;
        }

        v20 = v18 + 2;
        v21 = v19 == 37 && v20 < a8;
        if (v21)
        {
          v28 = *(a4 + v18 + 1);
          if ((v28 & 0x8000000000000000) == 0 && (sURLValidCharacters[v28] & 0x10) != 0)
          {
            v29 = *(a4 + v20);
            if ((v29 & 0x8000000000000000) == 0 && (sURLValidCharacters[v29] & 0x10) != 0)
            {
              goto LABEL_43;
            }
          }
        }
      }

      if (a10 != 8)
      {
        goto LABEL_30;
      }

      if (v18 != a7 || v19 != 91)
      {
        if (v18 == v47)
        {
          v22 = v47;
          if (v19 == 93)
          {
            goto LABEL_44;
          }
        }

LABEL_30:
        if (v17)
        {
          *a3 |= a10;
        }

        if (!*a2)
        {
          *a2 = CFStringCreateMutable(a1, 0);
        }

        v26 = CFStringCreateWithBytes(a1, (a4 + *a9), v18 - *a9, 0x201u, 0);
        CFStringAppend(*a2, v26);
        CFRelease(v26);
        if (_appendPercentEscapesForCharacter(&v51, 0, a11, *a2))
        {
          *a9 = v18 + 1;
        }

        else if (a11 == 134217984)
        {
          v22 = v18 + 1;
          if (v18 + 1 < a8 && (v51 & 0xFC00) == 0xD800)
          {
            v27 = *(a4 + v22);
            if (v27 >> 10 == 55)
            {
              v52 = v51;
              v53 = v27;
              if (_appendPercentEscapesForCharacter(&v52, 1, 134217984, *a2))
              {
                *a9 = v18 + 2;
              }

              else
              {
                v22 = v18;
              }

              v15 = 1;
              goto LABEL_44;
            }
          }
        }

        v15 = 1;
LABEL_43:
        v22 = v18;
        goto LABEL_44;
      }

      v22 = a7;
LABEL_44:
      v18 = v22 + 1;
      if (v22 + 1 >= a8)
      {
        return v15;
      }
    }
  }

  return 0;
}

unint64_t *_CFURLCreateWithFileSystemPath(__objc2_class **a1, CFStringRef theString, uint64_t a3, uint64_t a4, const __CFURL *a5)
{
  v85 = *MEMORY[0x1E69E9840];
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    _CFURLCreateWithFileSystemPath_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    v10 = [NSURL _fileURLWithPath:theString pathStyle:a3 isDirectory:a4 != 0 relativeToURL:a5];

    return v10;
  }

  v83 = 0;
  Length = CFStringGetLength(theString);
  if (Length >= 1)
  {
    v13 = Length;
    if (a3 != 2)
    {
      if (a3 != 1)
      {
        if (a3)
        {
          return 0;
        }

        v14 = CFStringGetCharacterAtIndex(theString, 0) == 47;
        v82 = v13;
        v15 = !theString || CFStringHasPrefix(theString, @"/.file/id=") == 0;
        v33 = POSIXPathToURLPath(theString, a4, v14, &v83);
        v34 = 0;
        if (!v33)
        {
          return 0;
        }

LABEL_107:
        if (v14)
        {
          v62 = 0;
          v63 = 0;
          a5 = 0;
          if (a4)
          {
            goto LABEL_118;
          }

          goto LABEL_116;
        }

LABEL_110:
        if (a5)
        {
          v63 = 0;
          v62 = 1;
          if (a4)
          {
            goto LABEL_118;
          }
        }

        else
        {
          a5 = _CFURLCreateCurrentDirectoryURL(a1);
          v62 = 1;
          v63 = 1;
          if (a4)
          {
LABEL_118:
            if (v62)
            {
              v65 = 56;
            }

            else
            {
              v65 = 72;
            }

            Instance = _CFRuntimeCreateInstance(a1, 0x1DuLL, v65, 0, v29, v30, v31, v32);
            v64 = Instance;
            if (Instance)
            {
              *(Instance + 5) = 134217984;
              atomic_store(CFStringCreateCopy(a1, v33), Instance + 3);
              if (a5)
              {
                v67 = CFURLCopyAbsoluteURL(a5);
              }

              else
              {
                v67 = 0;
              }

              v64[4] = v67;
              if (v62)
              {
                if (a4)
                {
                  v68 = 84000;
                }

                else
                {
                  v68 = 81952;
                }

                *(v64 + 4) = v68;
                v69 = atomic_load(v64 + 3);
                v70 = CFStringGetLength(v69);
                v64[7] = 0;
                v71 = 8;
              }

              else
              {
                if (a4)
                {
                  v72 = 84001;
                }

                else
                {
                  v72 = 81953;
                }

                if (v15)
                {
                  v73 = (v83 << 15) | ((v34 == 0) << 12) | v72;
                }

                else
                {
                  v73 = v72 | 0x2000;
                }

                *(v64 + 4) = v73 | 0x60000000;
                *(v64 + 7) = xmmword_183377E70;
                v70 = CFStringGetLength(v33) - 7;
                v64[9] = 7;
                v71 = 10;
              }

              v64[v71] = v70;
            }

            if (a5)
            {
              v74 = v63;
            }

            else
            {
              v74 = 0;
            }

            if (v74 == 1)
            {
              CFRelease(a5);
            }

            CFRelease(v33);
            return v64;
          }
        }

LABEL_116:
        if (v82 == 1)
        {
          LODWORD(a4) = CFStringGetCharacterAtIndex(v33, 0) == 47;
        }

        goto LABEL_118;
      }

      CharacterAtIndex = CFStringGetCharacterAtIndex(theString, 0);
      v17 = CharacterAtIndex != 58;
      v88.location = 0;
      v88.length = v13;
      v77 = CharacterAtIndex;
      v78 = CFStringFindWithOptions(theString, @"::", v88, 0, 0);
      if (v78)
      {
        v18 = malloc_type_malloc(2 * v13, 0x1000040BDFB0063uLL);
        v87.location = 0;
        v87.length = v13;
        CFStringGetCharacters(theString, v87, v18);
        v19 = 0;
        v20 = 0;
        v21 = -1;
        do
        {
          v22 = v18[v19];
          if (v22 == 58)
          {
            v23 = v19 + 1;
            if (v19 + 1 < v13 && v18[v23] == 58)
            {
              if (v20 >= 1 && (v21 & 0x8000000000000000) == 0)
              {
                if (v21 >= v20)
                {
                  v24 = v20;
                }

                else
                {
                  v24 = v21;
                }

                v25 = v24 - 1;
                while (1)
                {
                  if (v20 < 2)
                  {
                    v20 = 0;
                    goto LABEL_33;
                  }

                  if (v20 <= v21)
                  {
                    break;
                  }

                  v26 = v18[--v20];
                  if (v26 == 58)
                  {
                    goto LABEL_33;
                  }
                }

                v20 = v25;
              }
            }

            else
            {
              v23 = v19;
            }

LABEL_33:
            if (v21 == -1)
            {
              v21 = v20;
            }

            LOWORD(v22) = v18[v23];
            v19 = v23;
          }

          v18[v20++] = v22;
          ++v19;
        }

        while (v19 < v13);
        theString = CFStringCreateWithCharacters(a1, v18, v20);
        v82 = CFStringGetLength(theString);
        free(v18);
      }

      else
      {
        v82 = v13;
      }

      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a1, theString, @":");
      MutableCopy = CFArrayCreateMutableCopy(a1, 0, ArrayBySeparatingStrings);
      v37 = CFStringGetCharacterAtIndex(theString, 0);
      CFRelease(ArrayBySeparatingStrings);
      cf = theString;
      if (v37 == 58)
      {
        CFArrayRemoveValueAtIndex(MutableCopy, 0);
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, 0);
        if (CFStringGetLength(ValueAtIndex) == 1 && CFStringGetCharacterAtIndex(ValueAtIndex, 0) == 47)
        {
          CFArrayRemoveValueAtIndex(MutableCopy, 0);
        }

        CFArrayInsertValueAtIndex(MutableCopy, 0, &stru_1EF068AA8);
      }

      v80 = v17;
      v81 = a5;
      Count = CFArrayGetCount(MutableCopy);
      v40 = Count;
      if (Count)
      {
        v75 = Count;
        v76 = a4;
        v41 = 0;
        do
        {
          v42 = CFArrayGetValueAtIndex(MutableCopy, v41);
          result.location = 0;
          result.length = 0;
          v43 = CFStringGetLength(v42);
          v89.location = 0;
          v89.length = v43;
          if (CFStringFindWithOptions(v42, @"/", v89, 0, &result))
          {
            v44 = 0;
            v45 = 0;
            do
            {
              v46 = v44 + v43;
              if (!v45)
              {
                v45 = CFStringCreateMutableCopy(a1, v46, v42);
              }

              CFStringReplace(v45, result, @":");
              v43 = v46 + ~result.location;
              v44 = result.location + 1;
              v90.location = result.location + 1;
              v90.length = v43;
            }

            while (CFStringFindWithOptions(v42, @"/", v90, 0, &result));
            if (v45)
            {
              CFArraySetValueAtIndex(MutableCopy, v41, v45);
              CFRelease(v45);
            }
          }

          ++v41;
        }

        while (v41 != v40);
        LODWORD(a4) = v76;
        if (v76)
        {
          v47 = CFArrayGetValueAtIndex(MutableCopy, v75 - 1);
          if (CFStringGetLength(v47))
          {
            CFArrayAppendValue(MutableCopy, &stru_1EF068AA8);
          }
        }
      }

      if (!MutableCopy)
      {
        v33 = 0;
        LOBYTE(v14) = v80;
        goto LABEL_105;
      }

      v48 = a4;
      v49 = CFGetAllocator(MutableCopy);
      v50 = CFArrayGetCount(MutableCopy);
      v51 = v50;
      if (v50 >= 1)
      {
        v52 = 0;
        v53 = 0;
        while (1)
        {
          v54 = CFArrayGetValueAtIndex(MutableCopy, v53);
          v55 = CFURLCreateStringByAddingPercentEscapes(v49, v54, 0, @";?/", 0x8000100u);
          if (!v55)
          {
            break;
          }

          v56 = v55;
          if (v55 != v54)
          {
            if (!v52)
            {
              v52 = CFArrayCreateMutableCopy(v49, v51, MutableCopy);
            }

            CFArraySetValueAtIndex(v52, v53, v56);
          }

          CFRelease(v56);
          if (v51 == ++v53)
          {
            goto LABEL_92;
          }
        }

        if (v51 == v53)
        {
LABEL_92:
          v58 = v52;
          if (v52)
          {
            goto LABEL_94;
          }

          goto LABEL_93;
        }

        v61 = 0;
        v33 = 0;
        a5 = v81;
        LOBYTE(v14) = v80;
        if (!v52)
        {
          goto LABEL_104;
        }

        goto LABEL_103;
      }

      if (v50)
      {
        v33 = 0;
        a5 = v81;
      }

      else
      {
LABEL_93:
        CFRetain(MutableCopy);
        v58 = MutableCopy;
LABEL_94:
        CFRelease(MutableCopy);
        if (CFArrayGetCount(v58) == 1 && (v59 = CFArrayGetValueAtIndex(v58, 0), !CFStringGetLength(v59)))
        {
          v60 = CFRetain(@"/");
        }

        else
        {
          v60 = CFStringCreateByCombiningStrings(a1, v58, @"/");
        }

        v52 = v60;
        a5 = v81;
        if (v77 != 58 && v60)
        {
          v61 = CFStringCreateWithFormat(a1, 0, @"file://%@", v60);
          MutableCopy = v58;
          LOBYTE(v14) = v80;
LABEL_103:
          CFRelease(v52);
          v33 = v61;
          goto LABEL_104;
        }

        MutableCopy = v58;
        v33 = v60;
      }

      LOBYTE(v14) = v80;
LABEL_104:
      CFRelease(MutableCopy);
      LODWORD(a4) = v48;
LABEL_105:
      if (v78)
      {
        CFRelease(cf);
        v34 = 1;
        v15 = 1;
        if (v33)
        {
          goto LABEL_107;
        }
      }

      else
      {
        v15 = 1;
        v34 = 1;
        if (v33)
        {
          goto LABEL_107;
        }
      }

      return 0;
    }

    v27 = CFStringGetCharacterAtIndex(theString, 0);
    if (v13 == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = CFStringGetCharacterAtIndex(theString, 1);
    }

    if (v27 > 0x7F || (sURLValidCharacters[v27] & 2) == 0 || v28 != 124 && v28 != 58)
    {
      if (v27 == 47)
      {
        v82 = v13;
        v15 = 1;
        v33 = POSIXPathToURLPath(theString, a4, 1, &v83);
        v34 = 0;
LABEL_85:
        LOBYTE(v14) = 1;
        if (v33)
        {
          goto LABEL_107;
        }

        return 0;
      }

      if (v27 != 92)
      {
        v57 = WindowsPathToURLPath(theString, a1, a4, 0);
        if (v57)
        {
          v33 = v57;
          v82 = v13;
          v15 = 1;
          v34 = 2;
          goto LABEL_110;
        }

        return 0;
      }
    }

    v82 = v13;
    v15 = 1;
    v33 = WindowsPathToURLPath(theString, a1, a4, 1);
    v34 = 2;
    goto LABEL_85;
  }

  if (!a5)
  {
    return 0;
  }

  return CFRetain(a5);
}

CFIndex CFStringGetMaximumSizeOfFileSystemRepresentation(CFStringRef string)
{
  Length = CFStringGetLength(string);
  FastestEncoding = CFStringGetFastestEncoding(string);
  if (FastestEncoding != 1536 && FastestEncoding)
  {
    v4 = Length <= 0xE38E38E38E38E38;
    v5 = 9 * Length;
  }

  else
  {
    v4 = Length <= 0x2AAAAAAAAAAAAAAALL;
    v5 = 3 * Length;
  }

  if (v4)
  {
    return v5 + 1;
  }

  else
  {
    return -1;
  }
}

CFStringRef CFURLCopyFileSystemPath(CFURLRef anURL, CFURLPathStyle pathStyle)
{
  v16 = *MEMORY[0x1E69E9840];
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLCopyFileSystemPath_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, anURL))
    {
      anURL = [(__CFURL *)anURL _cfurl];
    }

    v4 = [(__CFURL *)anURL _fileSystemPath:pathStyle resolveAgainstBase:0];

    return v4;
  }

  else
  {
    v6 = CFGetAllocator(anURL);
    if (pathStyle || CFURLGetBaseURL(anURL) || CF_IS_OBJC(0x1DuLL, anURL) || (*(anURL + 17) & 0x10) == 0)
    {
      return CFURLCreateStringWithFileSystemPath(v6, anURL, pathStyle, 0);
    }

    v7 = CFURLGetString(anURL);
    Length = CFStringGetLength(v7);
    if (Length <= 1)
    {
      Length = 1;
    }

    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v10 = MaximumSizeForEncoding;
    if (MaximumSizeForEncoding >= 1025)
    {
      v11 = malloc_type_malloc(MaximumSizeForEncoding, 0x100004077774924uLL);
    }

    else
    {
      v11 = v15;
    }

    v12 = atomic_load(anURL + 3);
    if (CanonicalFileURLStringToFileSystemRepresentation(v12, v11, v10))
    {
      v13 = strlen(v11);
      v14 = CFStringCreateWithBytes(v6, v11, v13, 0x8000100u, 0);
    }

    else
    {
      v14 = 0;
    }

    if (v11 != v15)
    {
      free(v11);
    }

    if (!v14)
    {
      return CFURLCreateStringWithFileSystemPath(v6, anURL, pathStyle, 0);
    }

    return v14;
  }
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v11 = *MEMORY[0x1E69E9840];
  result.location = 0;
  result.length = 0;
  v13.length = CFStringGetLength(theString);
  v13.location = 0;
  v6 = CFStringFindWithOptionsAndLocale(theString, stringToFind, v13, compareOptions, 0, &result);
  v7 = v6 == 0;
  if (v6)
  {
    location = result.location;
  }

  else
  {
    location = -1;
  }

  if (v7)
  {
    length = 0;
  }

  else
  {
    length = result.length;
  }

  v12.length = length;
  v12.location = location;
  return v12;
}

uint64_t _CFXNotificationRegistrarFindName(uint64_t a1, uint64_t a2, const void *a3, unint64_t a4, _DWORD *a5)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    v9 = *(*a2 + 4 * (a4 % v5));
    while (v9 != 0xFFFFFFFFLL)
    {
      v10 = v9;
      v11 = *(a1 + 96) + 40 * v9;
      v9 = *(v11 + 4);
      if (CFCachedStringEqual((v11 + 8), a3))
      {
        if (a5)
        {
          *a5 = v10;
        }

        return v11;
      }
    }
  }

  return 0;
}

BOOL CFCachedStringEqual(CFTypeRef *a1, const void *a2)
{
  os_unfair_lock_lock(&__CFXNotificationRegistrarNamePoolLock);
  if (*a1)
  {
    v4 = CFEqual(*a1, a2) != 0;
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&__CFXNotificationRegistrarNamePoolLock);
  return v4;
}

void _CFXNotificationDisposalListRelease(unsigned int *a1)
{
  if (*a1)
  {
    v2 = 1;
    do
    {
      CFRelease(*&a1[2 * v2]);
      v3 = *a1;
      if (*a1 >= 4)
      {
        v4 = 4;
      }

      else
      {
        v4 = v3;
      }
    }

    while (v2++ < v4);
    if (v3 >= 5)
    {
      v6 = 0;
      do
      {
        CFRelease(*(*(a1 + 5) + 8 * v6));
        v7 = v6 + 5;
        ++v6;
      }

      while (v7 < *a1);
    }
  }
}

void CFBagAddValue(CFMutableBagRef theBag, const void *value)
{
  v10 = atomic_load(theBag + 1);
  if ((v10 & 0x40) != 0)
  {
    CFLog(3, @"%s(): immutable collection %p given to mutating function", v2, v3, v4, v5, v6, v7, "void CFBagAddValue(CFMutableBagRef, const void *)");
  }

  CFBasicHashAddValue(theBag, value, value);
}

void __CFBasicHashIncSlotCount(char *cf, uint64_t a2)
{
  v4 = cf + 40;
  while (1)
  {
    v5 = *(cf + 9);
    v6 = *&v4[v5 & 0x18];
    v7 = (v5 >> 5) & 3;
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v17 = v6[a2];
        if (v17 <= 0x7FFFFFFE)
        {
          v6[a2] = v17 + 1;
          return;
        }

        v9 = CFGetAllocator(cf);
        v18 = *(cf + 9);
        v19 = (v18 >> 5) & 3;
        if (v19 > 1)
        {
          if (v19 != 2)
          {
            goto LABEL_121;
          }

          *(cf + 9) = v18 | 0x60;
          v42 = __CFBasicHashTableSizes[cf[26]];
          if ((v42 - 0x1000000000000000) >> 61 != 7)
          {
            __CFBasicHashIncSlotCount_cold_4();
          }

          v43 = CFGetAllocator(cf);
          Typed = CFAllocatorAllocateTyped(v43, 8 * v42, 0x7DD6E35CuLL);
          if (!Typed)
          {
            goto LABEL_121;
          }

          v15 = Typed;
          if (__CFOASafe == 1)
          {
            __CFSetLastAllocationEventName();
          }

          if (v42 >= 1)
          {
            for (i = 0; i != v42; ++i)
            {
              *(v15 + 8 * i) = v6[i];
            }
          }
        }

        else if (v19)
        {
          *(cf + 9) = v18 & 0xFF9F | 0x40;
          v58 = __CFBasicHashTableSizes[cf[26]];
          if ((v58 - 0x2000000000000000) >> 62 != 3)
          {
            __CFBasicHashIncSlotCount_cold_5();
          }

          v59 = CFGetAllocator(cf);
          v60 = CFAllocatorAllocateTyped(v59, 4 * v58, 0x7DD6E35CuLL);
          if (!v60)
          {
            goto LABEL_121;
          }

          v15 = v60;
          if (__CFOASafe == 1)
          {
            __CFSetLastAllocationEventName();
          }

          if (v58 >= 1)
          {
            for (j = 0; j != v58; ++j)
            {
              *(v15 + 4 * j) = *(v6 + j);
            }
          }
        }

        else
        {
          *(cf + 9) = v18 & 0xFF9F | 0x20;
          v20 = __CFBasicHashTableSizes[cf[26]];
          if (v20 + 0x4000000000000000 < 0)
          {
            __CFBasicHashIncSlotCount_cold_6();
          }

          v21 = CFGetAllocator(cf);
          v22 = CFAllocatorAllocateTyped(v21, 2 * v20, 0x7DD6E35CuLL);
          if (!v22)
          {
            goto LABEL_121;
          }

          v15 = v22;
          if (__CFOASafe == 1)
          {
            __CFSetLastAllocationEventName();
          }

          if (v20 >= 1)
          {
            for (k = 0; k != v20; ++k)
            {
              *(v15 + 2 * k) = *(v6 + k);
            }
          }
        }
      }

      else
      {
        v31 = *&v6[2 * a2];
        if (v31 <= 0x7FFFFFFFFFFFFFFELL)
        {
          *&v6[2 * a2] = v31 + 1;
          return;
        }

        v9 = CFGetAllocator(cf);
        v32 = *(cf + 9);
        v33 = (v32 >> 5) & 3;
        if (v33 > 1)
        {
          if (v33 != 2)
          {
            goto LABEL_121;
          }

          *(cf + 9) = v32 | 0x60;
          v50 = __CFBasicHashTableSizes[cf[26]];
          if ((v50 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_122;
          }

          v51 = CFGetAllocator(cf);
          v52 = CFAllocatorAllocateTyped(v51, 8 * v50, 0x7DD6E35CuLL);
          if (!v52)
          {
            goto LABEL_121;
          }

          v15 = v52;
          if (__CFOASafe == 1)
          {
            __CFSetLastAllocationEventName();
          }

          if (v50 >= 1)
          {
            for (m = 0; m != v50; ++m)
            {
              *(v15 + 8 * m) = v6[m];
            }
          }
        }

        else if (v33)
        {
          *(cf + 9) = v32 & 0xFF9F | 0x40;
          v66 = __CFBasicHashTableSizes[cf[26]];
          if ((v66 - 0x2000000000000000) >> 62 != 3)
          {
            __CFBasicHashIncSlotCount_cold_2();
          }

          v67 = CFGetAllocator(cf);
          v68 = CFAllocatorAllocateTyped(v67, 4 * v66, 0x7DD6E35CuLL);
          if (!v68)
          {
LABEL_121:
            __break(1u);
LABEL_122:
            __CFBasicHashIncSlotCount_cold_1();
          }

          v15 = v68;
          if (__CFOASafe == 1)
          {
            __CFSetLastAllocationEventName();
          }

          if (v66 >= 1)
          {
            for (n = 0; n != v66; ++n)
            {
              *(v15 + 4 * n) = *(v6 + n);
            }
          }
        }

        else
        {
          *(cf + 9) = v32 & 0xFF9F | 0x20;
          v34 = __CFBasicHashTableSizes[cf[26]];
          if (v34 + 0x4000000000000000 < 0)
          {
            __CFBasicHashIncSlotCount_cold_3();
          }

          v35 = CFGetAllocator(cf);
          v36 = CFAllocatorAllocateTyped(v35, 2 * v34, 0x7DD6E35CuLL);
          if (!v36)
          {
            goto LABEL_121;
          }

          v15 = v36;
          if (__CFOASafe == 1)
          {
            __CFSetLastAllocationEventName();
          }

          if (v34 >= 1)
          {
            for (ii = 0; ii != v34; ++ii)
            {
              *(v15 + 2 * ii) = *(v6 + ii);
            }
          }
        }
      }

      goto LABEL_116;
    }

    if (!v7)
    {
      break;
    }

    v24 = *(v6 + a2);
    if (v24 <= 0x7FFE)
    {
      *(v6 + a2) = v24 + 1;
      return;
    }

    v9 = CFGetAllocator(cf);
    v25 = *(cf + 9);
    v26 = (v25 >> 5) & 3;
    if (v26 > 1)
    {
      if (v26 != 2)
      {
        goto LABEL_121;
      }

      *(cf + 9) = v25 | 0x60;
      v46 = __CFBasicHashTableSizes[cf[26]];
      if ((v46 - 0x1000000000000000) >> 61 != 7)
      {
        __CFBasicHashIncSlotCount_cold_7();
      }

      v47 = CFGetAllocator(cf);
      v48 = CFAllocatorAllocateTyped(v47, 8 * v46, 0x7DD6E35CuLL);
      if (!v48)
      {
        goto LABEL_121;
      }

      v15 = v48;
      if (__CFOASafe == 1)
      {
        __CFSetLastAllocationEventName();
      }

      if (v46 >= 1)
      {
        for (jj = 0; jj != v46; ++jj)
        {
          *(v15 + 8 * jj) = v6[jj];
        }
      }
    }

    else if (v26)
    {
      *(cf + 9) = v25 & 0xFF9F | 0x40;
      v62 = __CFBasicHashTableSizes[cf[26]];
      if ((v62 - 0x2000000000000000) >> 62 != 3)
      {
        __CFBasicHashIncSlotCount_cold_8();
      }

      v63 = CFGetAllocator(cf);
      v64 = CFAllocatorAllocateTyped(v63, 4 * v62, 0x7DD6E35CuLL);
      if (!v64)
      {
        goto LABEL_121;
      }

      v15 = v64;
      if (__CFOASafe == 1)
      {
        __CFSetLastAllocationEventName();
      }

      if (v62 >= 1)
      {
        for (kk = 0; kk != v62; ++kk)
        {
          *(v15 + 4 * kk) = *(v6 + kk);
        }
      }
    }

    else
    {
      *(cf + 9) = v25 & 0xFF9F | 0x20;
      v27 = __CFBasicHashTableSizes[cf[26]];
      if (v27 + 0x4000000000000000 < 0)
      {
        __CFBasicHashIncSlotCount_cold_9();
      }

      v28 = CFGetAllocator(cf);
      v29 = CFAllocatorAllocateTyped(v28, 2 * v27, 0x7DD6E35CuLL);
      if (!v29)
      {
        goto LABEL_121;
      }

      v15 = v29;
      if (__CFOASafe == 1)
      {
        __CFSetLastAllocationEventName();
      }

      if (v27 >= 1)
      {
        for (mm = 0; mm != v27; ++mm)
        {
          *(v15 + 2 * mm) = *(v6 + mm);
        }
      }
    }

LABEL_116:
    *&v4[*(cf + 9) & 0x18] = v15;
    CFAllocatorDeallocate(v9, v6);
  }

  v8 = *(v6 + a2);
  if (v8 > 0x7E)
  {
    v9 = CFGetAllocator(cf);
    v10 = *(cf + 9);
    v11 = (v10 >> 5) & 3;
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        goto LABEL_121;
      }

      *(cf + 9) = v10 | 0x60;
      v38 = __CFBasicHashTableSizes[cf[26]];
      if ((v38 - 0x1000000000000000) >> 61 != 7)
      {
        __CFBasicHashIncSlotCount_cold_10();
      }

      v39 = CFGetAllocator(cf);
      v40 = CFAllocatorAllocateTyped(v39, 8 * v38, 0x7DD6E35CuLL);
      if (!v40)
      {
        goto LABEL_121;
      }

      v15 = v40;
      if (__CFOASafe == 1)
      {
        __CFSetLastAllocationEventName();
      }

      if (v38 >= 1)
      {
        for (nn = 0; nn != v38; ++nn)
        {
          *(v15 + 8 * nn) = v6[nn];
        }
      }
    }

    else if (v11)
    {
      *(cf + 9) = v10 & 0xFF9F | 0x40;
      v54 = __CFBasicHashTableSizes[cf[26]];
      if ((v54 - 0x2000000000000000) >> 62 != 3)
      {
        __CFBasicHashIncSlotCount_cold_11();
      }

      v55 = CFGetAllocator(cf);
      v56 = CFAllocatorAllocateTyped(v55, 4 * v54, 0x7DD6E35CuLL);
      if (!v56)
      {
        goto LABEL_121;
      }

      v15 = v56;
      if (__CFOASafe == 1)
      {
        __CFSetLastAllocationEventName();
      }

      if (v54 >= 1)
      {
        for (i1 = 0; i1 != v54; ++i1)
        {
          *(v15 + 4 * i1) = *(v6 + i1);
        }
      }
    }

    else
    {
      *(cf + 9) = v10 & 0xFF9F | 0x20;
      v12 = __CFBasicHashTableSizes[cf[26]];
      if (v12 + 0x4000000000000000 < 0)
      {
        __CFBasicHashIncSlotCount_cold_12();
      }

      v13 = CFGetAllocator(cf);
      v14 = CFAllocatorAllocateTyped(v13, 2 * v12, 0x7DD6E35CuLL);
      if (!v14)
      {
        goto LABEL_121;
      }

      v15 = v14;
      if (__CFOASafe == 1)
      {
        __CFSetLastAllocationEventName();
      }

      if (v12 >= 1)
      {
        for (i2 = 0; i2 != v12; ++i2)
        {
          *(v15 + 2 * i2) = *(v6 + i2);
        }
      }
    }

    goto LABEL_116;
  }

  *(v6 + a2) = v8 + 1;
}

CFStringRef CFURLCreateStringByReplacingPercentEscapesUsingEncoding(CFAllocatorRef allocator, CFStringRef origString, CFStringRef charsToLeaveEscaped, CFStringEncoding encoding)
{
  v6 = allocator;
  v46 = *MEMORY[0x1E69E9840];
  if (encoding == 134217984)
  {

    return CFURLCreateStringByReplacingPercentEscapes(allocator, origString, charsToLeaveEscaped);
  }

  result.location = 0;
  result.length = 0;
  if (charsToLeaveEscaped)
  {
    Length = CFStringGetLength(charsToLeaveEscaped);
    if (origString)
    {
      v9 = Length;
      v10 = CFStringGetLength(origString);
      v48.location = 0;
      v48.length = v10;
      if (!CFStringFindWithOptions(origString, @"%", v48, 0, &result))
      {
        return CFStringCreateCopy(v6, origString);
      }

      v37 = v9;
      alloc = v6;
      range_8 = charsToLeaveEscaped;
      cf = 0;
      Mutable = 0;
      v12 = 0;
      v13 = 8;
      v14 = v45;
LABEL_9:
      v15 = 0;
      range = v12;
      chars = 0;
      v16 = result.location + 3;
      v17 = -result.location;
      while (1)
      {
        v18 = v15;
        if (v10 + v17 < 3)
        {
          break;
        }

        v12 = v16;
        if (v15 == v13)
        {
          if (v14 == v45)
          {
            v14 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
            __memmove_chk();
            v13 = 16;
          }

          else
          {
            v19 = malloc_type_malloc(2 * v13, 0x100004077774924uLL);
            memmove(v19, v14, v13);
            free(v14);
            v13 *= 2;
            v14 = v19;
          }
        }

        chars = CFStringGetCharacterAtIndex(origString, v12 - 2);
        CharacterAtIndex = CFStringGetCharacterAtIndex(origString, v12 - 1);
        v21 = chars;
        v14[v18] = 0;
        if ((v21 - 48) >= 0xA)
        {
          if ((v21 - 97) >= 6)
          {
            if ((v21 - 65) > 5)
            {
              break;
            }

            v22 = -55;
          }

          else
          {
            v22 = -87;
          }
        }

        else
        {
          v22 = -48;
        }

        v23 = 16 * (v22 + v21);
        v14[v18] = v23;
        if ((CharacterAtIndex - 48) > 9)
        {
          if ((CharacterAtIndex - 97) > 5)
          {
            if ((CharacterAtIndex - 65) > 5)
            {
              break;
            }

            v24 = CharacterAtIndex + v23 - 55;
          }

          else
          {
            v24 = CharacterAtIndex + v23 - 87;
          }
        }

        else
        {
          v24 = CharacterAtIndex + v23 - 48;
        }

        v14[v18] = v24;
        if (v10 > v12)
        {
          v25 = CFStringGetCharacterAtIndex(origString, v12);
          v16 = v12 + 3;
          v17 -= 3;
          v15 = v18 + 1;
          if (v25 == 37)
          {
            continue;
          }
        }

        v6 = alloc;
        v26 = CFStringCreateWithBytes(alloc, v14, (v18 + 1), encoding, 0);
        if (!v26)
        {
          goto LABEL_52;
        }

        v27 = v26;
        if (!Mutable)
        {
          Mutable = CFStringCreateMutable(alloc, v10);
        }

        v28.location = range;
        if (result.location - range >= 1)
        {
          v28.length = result.location - range;
          v29 = CFStringCreateWithSubstring(alloc, origString, v28);
          CFStringAppend(Mutable, v29);
          CFRelease(v29);
        }

        if (v37)
        {
          v30 = CFStringGetLength(v27);
          v31 = cf;
          if (!cf)
          {
            v31 = CFStringCreateMutableWithExternalCharactersNoCopy(alloc, &chars, 1, 1, &__kCFAllocatorNull);
          }

          cf = v31;
          if (v30 >= 1)
          {
            for (i = 0; i != v30; ++i)
            {
              chars = CFStringGetCharacterAtIndex(v27, i);
              if (CFStringFind(range_8, cf, 0).location == -1)
              {
                CFStringAppendCharacters(Mutable, &chars, 1);
              }

              else
              {
                _appendPercentEscapesForCharacter(&chars, 0, encoding, Mutable);
              }
            }
          }
        }

        else
        {
          CFStringAppend(Mutable, v27);
        }

        CFRelease(v27);
        v49.location = v12;
        v49.length = v10 - v12;
        if (!CFStringFindWithOptions(origString, @"%", v49, 0, &result))
        {
          v33 = 1;
          range = v12;
          v6 = alloc;
          v34 = cf;
          goto LABEL_53;
        }

        goto LABEL_9;
      }

      v6 = alloc;
LABEL_52:
      v34 = cf;
      v33 = 0;
LABEL_53:
      if (v34)
      {
        CFRelease(v34);
      }

      if (v14 != v45)
      {
        free(v14);
      }

      if (v33)
      {
        if (Mutable)
        {
          v35.location = range;
          if (v10 > range)
          {
            v35.length = v10 - range;
            v36 = CFStringCreateWithSubstring(v6, origString, v35);
            CFStringAppend(Mutable, v36);
            CFRelease(v36);
          }

          return Mutable;
        }

        return CFStringCreateCopy(v6, origString);
      }

      if (!Mutable)
      {
        return Mutable;
      }

      CFRelease(Mutable);
    }

    return 0;
  }

  if (!origString)
  {
    return 0;
  }

  return CFStringCreateCopy(allocator, origString);
}

uint64_t __CFURLEndResourcePropertyCacheAccess(unint64_t *a1)
{
  v2 = __CFURLResourceInfoPtr(a1);

  return MEMORY[0x1EEE006D0](a1, v2);
}

uint64_t __CFDataGetBinaryPlistTopLevelInfo(void *a1, _BYTE *a2, unint64_t *a3, uint64_t a4)
{
  if (CF_IS_OBJC(0x14uLL, a1))
  {
    return [a1 _getBPlistMarker:a2 offset:a3 trailer:a4];
  }

  BytePtr = CFDataGetBytePtr(a1);
  if (CF_IS_OBJC(0x14uLL, a1))
  {
    v10 = [a1 length];
  }

  else
  {
    v10 = a1[2];
  }

  return __CFBinaryPlistGetTopLevelInfo(BytePtr, v10, a2, a3, a4);
}

uint64_t __CFBinaryPlistCreateObjectFiltered(uint64_t Value, uint64_t a2, unint64_t a3, uint64_t a4, __objc2_class **a5, uint64_t a6, uint64_t a7, const __CFDictionary *a8, CFSetRef theSet, uint64_t a10, const __CFSet *a11, CFTypeRef *a12, CFTypeID *a13)
{
  v211[1] = *MEMORY[0x1E69E9840];
  if (a10 >= 0x81)
  {
    v13 = _CFOSLog(Value, a2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      __CFBinaryPlistCreateObjectFiltered_cold_1(v13);
    }

    goto LABEL_12;
  }

  v203 = a5;
  v204 = Value;
  v205 = ~a3;
  if (a8)
  {
    if (a12)
    {
      Value = CFDictionaryGetValue(a8, v205);
      *a12 = Value;
      if (Value)
      {
        CFRetain(Value);
        if (a13)
        {
          *a13 = CFGetTypeID(*a12);
        }

        goto LABEL_9;
      }
    }
  }

  v202 = a12;
  if (theSet)
  {
    Value = CFSetContainsValue(theSet, v205);
    if (Value)
    {
LABEL_12:
      LOBYTE(v20) = 0;
      return v20 & 1;
    }
  }

  v201 = theSet;
  LOBYTE(v20) = 0;
  if (a3 < 8)
  {
    return v20 & 1;
  }

  v200 = a13;
  v22 = *(a4 + 24) - 1;
  if (v22 < a3)
  {
    return v20 & 1;
  }

  LOBYTE(v20) = 0;
  v199 = a6;
  v23 = v204 + a3;
  v24 = *(v204 + a3);
  v25 = v24 >> 4;
  if (v24 >> 4 <= 4)
  {
    if (v24 >> 4 > 1)
    {
      if (v25 != 2)
      {
        if (v25 != 3)
        {
          if (v25 != 4)
          {
            return v20 & 1;
          }

          if (v23 == -1)
          {
            goto LABEL_12;
          }

          v31 = (v23 + 1);
          v32 = v24 & 0xF;
          if ((v24 & 0xF) != 0xF)
          {
LABEL_343:
            v138 = v204;
            goto LABEL_344;
          }

          if (v204 + v22 < v31)
          {
            goto LABEL_12;
          }

          v33 = (v23 + 2);
          v34 = *v31;
          if ((*v31 & 0xF0) != 0x10)
          {
            goto LABEL_12;
          }

          LOBYTE(v20) = 0;
          v35 = v34 & 0xF;
          v36 = 1 << (v34 & 0xF);
          if (__CFADD__(v36, v33) || &v31[v36] > v204 + v22)
          {
            return v20 & 1;
          }

          if (v36 > 3u)
          {
            if (v36 == 4)
            {
              v32 = bswap32(*(v23 + 2));
              goto LABEL_311;
            }

            if (v36 == 8)
            {
              v32 = bswap64(*(v23 + 2));
LABEL_341:
              if (v32 < 0)
              {
                goto LABEL_12;
              }

              v31 = &v33[v36];
              goto LABEL_343;
            }
          }

          else
          {
            if (v36 == 1)
            {
              v32 = *v33;
              goto LABEL_311;
            }

            if (v36 == 2)
            {
              v32 = __rev16(*(v23 + 2));
LABEL_311:
              v138 = v204;
              v31 = &v33[v36];
LABEL_344:
              LOBYTE(v20) = 0;
              if (__CFADD__(v32, v31) || v138 + v22 < &v31[v32 - 1])
              {
                return v20 & 1;
              }

              if (v200)
              {
                *v200 = 20;
              }

              if (v202)
              {
                if (v199 == 2)
                {
                  Mutable = CFDataCreateMutable(v203, 0);
                  v143 = Mutable;
                  if (Mutable)
                  {
                    CFDataAppendBytes(Mutable, v31, v32);
                  }

                  LOBYTE(v20) = v143 != 0;
                }

                else
                {
                  v144 = CFDataCreate(v203, v31, v32);
                  v143 = v144;
                  LOBYTE(v20) = v144 != 0;
                  if (a8 && v144)
                  {
                    CFDictionarySetValue(a8, v205, v144);
                    LOBYTE(v20) = 1;
                  }
                }

                *v202 = v143;
                return v20 & 1;
              }

              goto LABEL_9;
            }
          }

          if (v35 > 7)
          {
            v32 = 0;
            goto LABEL_311;
          }

          v32 = 0;
          v139 = v36;
          v140 = (v23 + 2);
          do
          {
            v141 = *v140++;
            v32 = v141 | (v32 << 8);
            --v139;
          }

          while (v139);
          goto LABEL_341;
        }

        LOBYTE(v20) = 0;
        if (v23 == -1)
        {
          return v20 & 1;
        }

        if (v24 != 51)
        {
          return v20 & 1;
        }

        LOBYTE(v20) = 0;
        if (v23 > 0xFFFFFFFFFFFFFFF6 || v204 + v22 < v23 + 8)
        {
          return v20 & 1;
        }

        v58 = *(v23 + 1);
        if (v200)
        {
          *v200 = 42;
        }

        if (v202)
        {
          v59 = CFDateCreate(v203, COERCE_CFABSOLUTETIME(bswap64(v58)));
          v60 = v59;
          LOBYTE(v20) = v59 != 0;
          if (!a8 || !v59)
          {
            goto LABEL_164;
          }

          goto LABEL_145;
        }

LABEL_9:
        LOBYTE(v20) = 1;
        return v20 & 1;
      }

      if ((v24 & 0xF) == 3)
      {
        if (v23 == -1)
        {
          goto LABEL_12;
        }

        LOBYTE(v20) = 0;
        if (v23 > 0xFFFFFFFFFFFFFFF6 || v204 + v22 < v23 + 8)
        {
          return v20 & 1;
        }

        valuePtr[0] = bswap64(*(v23 + 1));
        if (v200)
        {
          *v200 = 22;
        }

        if (!v202)
        {
          goto LABEL_9;
        }

        v60 = CFNumberCreate(v203, kCFNumberFloat64Type, valuePtr);
        LOBYTE(v20) = v60 != 0;
        if (v60)
        {
          v63 = a8 != 0;
        }

        else
        {
          v63 = 0;
        }

        if (!v63)
        {
          goto LABEL_164;
        }
      }

      else
      {
        if ((v24 & 0xF) != 2 || v23 == -1)
        {
          goto LABEL_12;
        }

        LOBYTE(v20) = 0;
        if (v23 > 0xFFFFFFFFFFFFFFFALL || v204 + v22 < v23 + 4)
        {
          return v20 & 1;
        }

        LODWORD(valuePtr[0]) = bswap32(*(v23 + 1));
        if (v200)
        {
          *v200 = 22;
        }

        if (!v202)
        {
          goto LABEL_9;
        }

        v60 = CFNumberCreate(v203, kCFNumberFloat32Type, valuePtr);
        LOBYTE(v20) = v60 != 0;
        if (v60)
        {
          v62 = a8 != 0;
        }

        else
        {
          v62 = 0;
        }

        if (!v62)
        {
          goto LABEL_164;
        }
      }

LABEL_163:
      CFDictionarySetValue(a8, v205, v60);
      goto LABEL_164;
    }

    if (v25)
    {
      if (v25 != 1)
      {
        return v20 & 1;
      }

      if (v23 == -1)
      {
        goto LABEL_12;
      }

      v43 = v24 & 0xF;
      v44 = 1 << (v24 & 0xF);
      if (v23 >= ~v44)
      {
        goto LABEL_12;
      }

      LOBYTE(v20) = 0;
      if (v43 > 4)
      {
        return v20 & 1;
      }

      v45 = (v23 + 1);
      if (v204 + v22 < v23 + v44)
      {
        return v20 & 1;
      }

      v46 = (1 << (v24 & 0xF));
      if (v46 > 3)
      {
        v47 = v203;
        if (v46 != 4)
        {
          v48 = v200;
          if (v46 == 8)
          {
            v49 = bswap64(*v45);
            goto LABEL_155;
          }

          goto LABEL_149;
        }

        v49 = bswap32(*v45);
      }

      else
      {
        v47 = v203;
        if (v46 != 1)
        {
          v48 = v200;
          if (v46 == 2)
          {
            v49 = __rev16(*v45);
            goto LABEL_155;
          }

LABEL_149:
          v49 = 0;
          do
          {
            v68 = *v45;
            v45 = (v45 + 1);
            v49 = v68 | (v49 << 8);
            --v44;
          }

          while (v44);
LABEL_155:
          v211[0] = v49;
          if (v48)
          {
            *v48 = 22;
          }

          if (!v202)
          {
            goto LABEL_9;
          }

          if (v43 == 4)
          {
            valuePtr[0] = 0;
            valuePtr[1] = v49;
            v69 = CFNumberCreate(v47, kCFNumberMaxType|kCFNumberSInt8Type, valuePtr);
          }

          else
          {
            v69 = CFNumberCreate(v47, kCFNumberSInt64Type, v211);
          }

          v60 = v69;
          LOBYTE(v20) = v69 != 0;
          if (!a8 || !v69)
          {
            goto LABEL_164;
          }

          goto LABEL_163;
        }

        v49 = *v45;
      }

      v48 = v200;
      goto LABEL_155;
    }

    if (v24 == 9)
    {
      v64 = v202;
      if (v202)
      {
        v65 = &kCFBooleanTrue;
        goto LABEL_123;
      }
    }

    else
    {
      if (v24 != 8)
      {
        if (*(v204 + a3))
        {
          goto LABEL_12;
        }

        if (v202)
        {
          *v202 = &__kCFNull;
        }

        v56 = v200;
        if (!v200)
        {
          goto LABEL_9;
        }

        v57 = 16;
        goto LABEL_126;
      }

      v64 = v202;
      if (v202)
      {
        v65 = &kCFBooleanFalse;
LABEL_123:
        *v64 = *v65;
      }
    }

    v56 = v200;
    if (!v200)
    {
      goto LABEL_9;
    }

    v57 = 21;
LABEL_126:
    *v56 = v57;
    goto LABEL_9;
  }

  if (v24 >> 4 <= 9)
  {
    switch(v25)
    {
      case 5u:
        v209[0] = MEMORY[0x1E69E9820];
        v209[1] = 3221225472;
        v209[2] = ____CFBinaryPlistCreateObjectFiltered_block_invoke;
        v209[3] = &__block_descriptor_104_e12_B24__0r_8q16l;
        v209[4] = v200;
        v209[5] = v202;
        v209[6] = v199;
        v209[7] = a6;
        v209[8] = v203;
        v209[9] = a7;
        v209[10] = a3;
        v209[11] = a8;
        v209[12] = v205;
        v61 = __CFBinaryPlistParseASCIIString(v204, v22, v23, v209);
        break;
      case 6u:
        v208[0] = MEMORY[0x1E69E9820];
        v208[1] = 3221225472;
        v208[2] = ____CFBinaryPlistCreateObjectFiltered_block_invoke_2;
        v208[3] = &__block_descriptor_104_e13_B24__0r_S8q16l;
        v208[4] = v200;
        v208[5] = v202;
        v208[6] = v199;
        v208[7] = a6;
        v208[8] = v203;
        v208[9] = a7;
        v208[10] = a3;
        v208[11] = a8;
        v208[12] = v205;
        v61 = __CFBinaryPlistParseUnicode16String(v204, v22, v23, v208);
        break;
      case 8u:
        if (v23 == -1)
        {
          goto LABEL_12;
        }

        LOBYTE(v20) = 0;
        v26 = (v24 & 0xF) + 1;
        if (v23 >= ~v26)
        {
          return v20 & 1;
        }

        v27 = (v23 + 1);
        if (v204 + v22 < v23 + v26)
        {
          return v20 & 1;
        }

        if (v26 > 3)
        {
          v28 = v203;
          if ((v24 & 0xF) != 3)
          {
            v29 = v200;
            if ((v24 & 0xF) == 7)
            {
              v30 = bswap64(*v27);
              goto LABEL_135;
            }

LABEL_133:
            v30 = 0;
            do
            {
              v66 = *v27;
              v27 = (v27 + 1);
              v30 = v66 | (v30 << 8);
              --v26;
            }

            while (v26);
LABEL_135:
            if (HIDWORD(v30))
            {
              goto LABEL_12;
            }

LABEL_140:
            if (v29)
            {
              *v29 = 41;
            }

            if (!v202)
            {
              goto LABEL_9;
            }

            Instance = _CFRuntimeCreateInstance(v28, 0x29uLL, 8, 0, a5, a6, a7, a8);
            v60 = Instance;
            LOBYTE(v20) = Instance != 0;
            if (Instance)
            {
              *(Instance + 4) = v30;
              if (a8)
              {
LABEL_145:
                CFDictionarySetValue(a8, v205, v60);
              }
            }

LABEL_164:
            *v202 = v60;
            return v20 & 1;
          }

          LODWORD(v30) = bswap32(*v27);
        }

        else
        {
          v28 = v203;
          if ((v24 & 0xF) != 0)
          {
            v29 = v200;
            if ((v24 & 0xF) == 1)
            {
              LODWORD(v30) = __rev16(*v27);
              goto LABEL_140;
            }

            goto LABEL_133;
          }

          LODWORD(v30) = *v27;
        }

        v29 = v200;
        goto LABEL_140;
      default:
        return v20 & 1;
    }

    LOBYTE(v20) = v61;
    return v20 & 1;
  }

  v198 = a11;
  if (v25 == 10 || v25 == 12)
  {
    if (v23 == -1)
    {
      goto LABEL_12;
    }

    v50 = (v23 + 1);
    v51 = v24 & 0xF;
    if ((v24 & 0xF) != 0xF)
    {
LABEL_181:
      if (v51)
      {
        if (!is_mul_ok(v51, *(a4 + 7)))
        {
          goto LABEL_12;
        }

        v73 = v51 * *(a4 + 7);
        v197 = v51;
      }

      else
      {
        v197 = 0;
        v73 = 0;
      }

      LOBYTE(v20) = 0;
      if (__CFADD__(v73, v50))
      {
        return v20 & 1;
      }

      v194 = v50;
      if (v204 + v22 < &v50[v73 - 1])
      {
        return v20 & 1;
      }

      if (v51)
      {
        v74 = v197;
        if (v197 >> 61)
        {
          goto LABEL_12;
        }

        v196 = v51;
        v193 = (8 * v197);
      }

      else
      {
        v196 = 0;
        v193 = 0;
        v74 = v197;
      }

      v197 = v74;
      v192 = &v185;
      MEMORY[0x1EEE9AC00](Value, v22, v23);
      v77 = &v185 - v76;
      if (v75 >= 0x200)
      {
        v78 = 512;
      }

      else
      {
        v78 = v75;
      }

      bzero(&v185 - v76, v78);
      v189 = v77;
      if (v202)
      {
        Typed = v77;
        if (v197 >= 0x101)
        {
          Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, v193, 0xC0040B8AA526DuLL);
          if (!Typed)
          {
            LOBYTE(v20) = 0;
            return v20 & 1;
          }
        }
      }

      else
      {
        Typed = 0;
      }

      v193 = 0;
      if (v201)
      {
        v79 = v198;
      }

      else
      {
        v79 = v198;
        if (a10 >= 16)
        {
          v193 = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, 0);
          v201 = v193;
        }
      }

      if (v201)
      {
        CFSetAddValue(v201, v205);
      }

      valuePtr[0] = 0;
      v211[0] = 0;
      v188 = &__kCFAllocatorSystemDefault;
      __CFPropertyListCreateSplitKeypaths(&__kCFAllocatorSystemDefault, v79, valuePtr, v211);
      LODWORD(v187) = v24 & 0xF0;
      if (v79)
      {
        v85 = (v24 & 0xF0) == 160;
      }

      else
      {
        v85 = 0;
      }

      v86 = !v85;
      if (valuePtr[0])
      {
        v87 = CFSetContainsValue(valuePtr[0], @"*");
        v88 = v197;
        v89 = v87 != 0;
      }

      else
      {
        v89 = 0;
        v88 = v197;
      }

      if ((v86 | v89))
      {
        v90 = v194;
        if (v88)
        {
          v91 = 0;
          v198 = (v204 + 8);
          v92 = &v207;
          if (!v202)
          {
            v92 = 0;
          }

          v190 = v92;
          v191 = a10 + 1;
          v93 = -1;
          do
          {
            if (v198 > v90 || (v94 = v90, v95 = v204 + *(a4 + 24), v96 = *(a4 + 7), v95 - v96 < v94))
            {
LABEL_278:
              if (Typed)
              {
                v128 = v189;
                while (v93 != -1)
                {
                  v129 = Typed[v93--];
                  CFRelease(v129);
                }

                if (Typed != v128)
                {
                  goto LABEL_315;
                }
              }

              goto LABEL_316;
            }

            if (*(a4 + 7) <= 1u)
            {
              v97 = *(a4 + 7);
              if (!*(a4 + 7))
              {
                goto LABEL_233;
              }

              if (v96 == 1)
              {
                v97 = *v94;
                goto LABEL_233;
              }
            }

            else
            {
              switch(v96)
              {
                case 2:
                  v97 = __rev16(*v94);
                  goto LABEL_233;
                case 4:
                  v97 = bswap32(*v94);
                  goto LABEL_233;
                case 8:
                  v97 = bswap64(*v94);
                  goto LABEL_233;
              }
            }

            v97 = 0;
            v98 = v94;
            do
            {
              v99 = *v98;
              v98 = (v98 + 1);
              v97 = v99 | (v97 << 8);
              --v96;
            }

            while (v96);
LABEL_233:
            if (*(a4 + 8) <= v97)
            {
              goto LABEL_278;
            }

            v100 = *(a4 + 6);
            v101 = (v95 + v97 * v100);
            if (*(a4 + 6) <= 1u)
            {
              if (!*(a4 + 6))
              {
                goto LABEL_246;
              }

              if (v100 == 1)
              {
                v100 = *v101;
                goto LABEL_246;
              }
            }

            else
            {
              switch(v100)
              {
                case 2:
                  v100 = __rev16(*v101);
                  goto LABEL_246;
                case 4:
                  v100 = bswap32(*v101);
                  goto LABEL_246;
                case 8:
                  v100 = bswap64(*v101);
                  goto LABEL_246;
              }
            }

            v102 = *(a4 + 6);
            v100 = 0;
            do
            {
              v103 = *v101;
              v101 = (v101 + 1);
              v100 = v103 | (v100 << 8);
              --v102;
            }

            while (v102);
LABEL_246:
            v207 = 0;
            v104 = v211[0];
            if (v86)
            {
              v104 = 0;
            }

            if ((__CFBinaryPlistCreateObjectFiltered(v204, a2, v100, a4, v203, a6, a7, a8, v201, v191, v104, v190, 0) & 1) == 0)
            {
              v136 = Typed;
              if (Typed)
              {
                while (v93 != -1)
                {
                  v137 = v136[v93--];
                  CFRelease(v137);
                }

                if (v136 != v189)
                {
LABEL_315:
                  CFAllocatorDeallocate(v188, Typed);
                }
              }

LABEL_316:
              LOBYTE(v20) = 0;
LABEL_336:
              if (v193)
              {
                CFRelease(v193);
              }

              return v20 & 1;
            }

            if (Typed)
            {
              Typed[v91] = v207;
            }

            ++v91;
            v90 = v94 + *(a4 + 7);
            ++v93;
          }

          while (v91 < v197);
        }

        if (v187 != 160)
        {
          if (!v202)
          {
            goto LABEL_301;
          }

          if (v199)
          {
            v105 = CFSetCreateMutable(v203, 0, &kCFTypeSetCallBacks);
            v106 = v197;
            *v202 = v105;
            if (v106)
            {
              v107 = Typed;
              v108 = v196;
              do
              {
                CFSetAddValue(*v202, *v107++);
                v108 = (v108 - 1);
              }

              while (v108);
              v109 = 17;
              v110 = Typed;
              do
              {
                CFRelease(*v110++);
                v196 = (v196 - 1);
              }

              while (v196);
LABEL_288:
              LOBYTE(v20) = 1;
LABEL_303:
              v112 = v200;
              goto LABEL_321;
            }

LABEL_301:
            LOBYTE(v20) = 1;
            v109 = 17;
            goto LABEL_303;
          }

          Transfer = __CFSetCreateTransfer(v203, Typed, v197, v80, v81, v82, v83, v84);
          v109 = 17;
          goto LABEL_319;
        }

        if (v202)
        {
          if (!v199)
          {
            Transfer = __CFArrayCreateTransfer(v203, Typed, v197, v80, v81, v82, v83, v84);
            v109 = 19;
LABEL_319:
            v112 = v200;
            goto LABEL_320;
          }

          v130 = CFArrayCreateMutable(v203, 0, &kCFTypeArrayCallBacks);
          v131 = v197;
          *v202 = v130;
          v212.location = 0;
          v212.length = 0;
          CFArrayReplaceValues(v130, v212, Typed, v131);
          if (v131)
          {
            v109 = 19;
            v132 = Typed;
            do
            {
              CFRelease(*v132++);
              v196 = (v196 - 1);
            }

            while (v196);
            goto LABEL_288;
          }
        }

        LOBYTE(v20) = 1;
        v109 = 19;
        goto LABEL_303;
      }

      Count = CFSetGetCount(valuePtr[0]);
      v112 = v200;
      v191 = CFArrayCreateMutable(v203, Count, &kCFTypeArrayCallBacks);
      if (valuePtr[0])
      {
        v113 = CFSetGetCount(valuePtr[0]);
        v114 = malloc_type_malloc(8 * v113, 0xC0040B8AA526DuLL);
        CFSetGetValues(valuePtr[0], v114);
        v115 = CFSetGetCount(valuePtr[0]);
        v186 = v114;
        if (v115 >= 1)
        {
          LOBYTE(v20) = 0;
          v190 = (a10 + 1);
          v116 = &v206;
          if (!v202)
          {
            v116 = 0;
          }

          v187 = v116;
          v117 = 1;
          v118 = v115;
          v194 = v115;
          while (1)
          {
            v197 = v118;
            v198 = v117;
            v196 = v114;
            v119 = *v114;
            IntValue = CFStringGetIntValue(v119);
            v122 = IntValue;
            v124 = v197;
            v123 = v198;
            if (IntValue != 0x7FFFFFFF)
            {
              if (IntValue)
              {
                v124 = v197;
                v123 = v198;
                if ((IntValue & 0x80000000) == 0)
                {
LABEL_271:
                  v207 = 0;
                  v126 = v122;
                  v127 = v204;
                  if (__CFBinaryPlistGetOffsetForValueFromArray2(v204, v121, a3, a4, v126, &v207))
                  {
                    v206 = 0;
                    if (!__CFBinaryPlistCreateObjectFiltered(v127, a2, v207, a4, v203, a6, a7, a8, v201, v190, v211[0], v187, 0))
                    {
                      goto LABEL_292;
                    }

                    if (v206)
                    {
                      CFArrayAppendValue(v191, v206);
                      CFRelease(v206);
                    }
                  }

                  v124 = v197;
                  v123 = v198;
                }
              }

              else
              {
                v125 = CFStringCompare(@"0", v119, 0);
                v124 = v197;
                v123 = v198;
                if (v125 == kCFCompareEqualTo)
                {
                  goto LABEL_271;
                }
              }
            }

            LOBYTE(v20) = v123 >= v194;
            v117 = v123 + 1;
            v114 = v196 + 1;
            v118 = v124 - 1;
            if (!v118)
            {
              goto LABEL_292;
            }
          }
        }

        LOBYTE(v20) = 1;
LABEL_292:
        free(v186);
        v112 = v200;
      }

      else
      {
        LOBYTE(v20) = 1;
      }

      if (v202 && (v20 & 1) != 0)
      {
        if ((v199 - 1) < 2)
        {
          v109 = 19;
          Transfer = v191;
LABEL_320:
          *v202 = Transfer;
          LOBYTE(v20) = 1;
          goto LABEL_321;
        }

        v134 = v191;
        Copy = CFArrayCreateCopy(v203, v191);
        *v202 = Copy;
        CFRelease(v134);
        LOBYTE(v20) = 1;
      }

      else if (v191)
      {
        CFRelease(v191);
      }

      v109 = 19;
LABEL_321:
      if (v112)
      {
        *v112 = v109;
      }

      if (v201)
      {
        CFSetRemoveValue(v201, v205);
      }

      if (v202 && a8 && ((v199 == 0) & v20) != 0)
      {
        CFDictionarySetValue(a8, v205, *v202);
      }

      if (Typed && Typed != v189)
      {
        CFAllocatorDeallocate(v188, Typed);
      }

      if (valuePtr[0])
      {
        CFRelease(valuePtr[0]);
      }

      if (v211[0])
      {
        CFRelease(v211[0]);
      }

      goto LABEL_336;
    }

    if (v204 + v22 < v50)
    {
      goto LABEL_12;
    }

    v52 = (v23 + 2);
    v53 = *v50;
    if ((*v50 & 0xF0) != 0x10)
    {
      goto LABEL_12;
    }

    LOBYTE(v20) = 0;
    v54 = v53 & 0xF;
    v55 = 1 << (v53 & 0xF);
    if (__CFADD__(v55, v52) || &v50[v55] > v204 + v22)
    {
      return v20 & 1;
    }

    if (v55 > 3u)
    {
      if (v55 == 4)
      {
        v51 = bswap32(*(v23 + 2));
        goto LABEL_180;
      }

      if (v55 == 8)
      {
        v51 = bswap64(*(v23 + 2));
        goto LABEL_179;
      }
    }

    else
    {
      if (v55 == 1)
      {
        v51 = *v52;
        goto LABEL_180;
      }

      if (v55 == 2)
      {
        v51 = __rev16(*(v23 + 2));
LABEL_180:
        v50 = &v52[v55];
        goto LABEL_181;
      }
    }

    if (v54 > 7)
    {
      v51 = 0;
      goto LABEL_180;
    }

    v51 = 0;
    v70 = v55;
    v71 = (v23 + 2);
    do
    {
      v72 = *v71++;
      v51 = v72 | (v51 << 8);
      --v70;
    }

    while (v70);
LABEL_179:
    if ((v51 & 0x8000000000000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_180;
  }

  if (v25 != 13)
  {
    return v20 & 1;
  }

  if (v23 == -1)
  {
    goto LABEL_12;
  }

  v37 = (v23 + 1);
  v38 = v24 & 0xF;
  if ((v24 & 0xF) != 0xF)
  {
    goto LABEL_361;
  }

  if (v204 + v22 < v37)
  {
    goto LABEL_12;
  }

  v39 = (v23 + 2);
  if ((*v37 & 0xF0) != 0x10)
  {
    goto LABEL_12;
  }

  LOBYTE(v20) = 0;
  v40 = *v37 & 0xF;
  v41 = 1 << v40;
  if (__CFADD__(1 << v40, v39) || &v37[v41] > v204 + v22)
  {
    return v20 & 1;
  }

  v42 = (1 << v40);
  if (v42 > 3)
  {
    if (v42 == 4)
    {
      v38 = bswap32(*(v23 + 2));
      goto LABEL_360;
    }

    if (v42 == 8)
    {
      v38 = bswap64(*(v23 + 2));
      goto LABEL_359;
    }

LABEL_307:
    if (v40 > 7)
    {
      v38 = 0;
      goto LABEL_360;
    }

    v38 = 0;
    v145 = v41;
    v146 = (v23 + 2);
    do
    {
      v147 = *v146++;
      v38 = v147 | (v38 << 8);
      --v145;
    }

    while (v145);
LABEL_359:
    if ((v38 & 0x8000000000000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_360;
  }

  if (v42 == 1)
  {
    v38 = *v39;
    goto LABEL_360;
  }

  if (v42 != 2)
  {
    goto LABEL_307;
  }

  v38 = __rev16(*(v23 + 2));
LABEL_360:
  v37 = &v39[v41];
LABEL_361:
  if (v38)
  {
    v149 = (a4 + 7);
    v148 = *(a4 + 7);
    if (!is_mul_ok(2 * v38, v148))
    {
      goto LABEL_12;
    }

    v197 = 2 * v38;
    v150 = 2 * v38 * v148;
  }

  else
  {
    v150 = 0;
    v197 = 0;
    v149 = (a4 + 7);
  }

  LOBYTE(v20) = 0;
  if (__CFADD__(v150, v37))
  {
    return v20 & 1;
  }

  Typed = v37;
  if (v204 + v22 < &v37[v150 - 1])
  {
    return v20 & 1;
  }

  if (v38)
  {
    v151 = v197;
    if (v197 >> 61)
    {
      goto LABEL_12;
    }

    v193 = v149;
    v196 = (8 * v197);
  }

  else
  {
    v193 = v149;
    v196 = 0;
    v151 = v197;
  }

  v194 = &v185;
  MEMORY[0x1EEE9AC00](Value, v22, v23);
  v20 = &v185 - v153;
  if (v152 >= 0x200)
  {
    v154 = 512;
  }

  else
  {
    v154 = v152;
  }

  bzero(&v185 - v153, v154);
  v192 = v20;
  if (v202)
  {
    if (v151 >= 257)
    {
      v20 = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, v196, 0xC0040B8AA526DuLL);
      if (!v20)
      {
        return v20 & 1;
      }
    }
  }

  else
  {
    v20 = 0;
  }

  v196 = v20;
  v155 = 0;
  v156 = v193;
  if (v201)
  {
    v157 = v198;
  }

  else
  {
    v157 = v198;
    if (a10 >= 16)
    {
      v155 = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, 0);
      v201 = v155;
    }
  }

  v198 = v155;
  if (v201)
  {
    CFSetAddValue(v201, v205);
  }

  if (v157)
  {
    v158 = v157;
    v159 = v203;
    FilteredDictionary = __CFPropertyListCreateFilteredDictionary(v203, v158, v204, a2, a3, a4, v202 == 0, v199, a7, a8, v201, a10);
    v161 = FilteredDictionary;
    if (v202 && FilteredDictionary)
    {
      if ((v199 - 1) < 2)
      {
        *v202 = FilteredDictionary;
LABEL_457:
        LODWORD(v20) = 1;
        goto LABEL_458;
      }

      v181 = CFDictionaryCreateCopy(v159, FilteredDictionary);
      *v202 = v181;
    }

    else if (!FilteredDictionary)
    {
      LODWORD(v20) = 0;
LABEL_458:
      if (v201)
      {
        CFSetRemoveValue(v201, v205);
      }

      if (v199)
      {
        v184 = 0;
      }

      else
      {
        v184 = v20;
      }

      if (v202 && a8 && v184)
      {
        CFDictionarySetValue(a8, v205, *v202);
      }

      if (v196 && v196 != v192)
      {
        CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, v196);
      }

      goto LABEL_470;
    }

    CFRelease(v161);
    goto LABEL_457;
  }

  v191 = v197 >> 1;
  v162 = Typed;
  if (v197 < 1)
  {
LABEL_427:
    if (v202)
    {
      if (v199)
      {
        v176 = CFDictionaryCreateMutable(v203, v191, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v177 = v191;
        if (v191 >= 1)
        {
          v178 = v196;
          v179 = v191;
          do
          {
            CFDictionaryAddValue(v176, *v178, v178[v177]);
            ++v178;
            --v179;
          }

          while (v179);
        }

        if (v197 >= 1)
        {
          v180 = v196;
          do
          {
            CFRelease(*v180++);
            --v197;
          }

          while (v197);
        }
      }

      else
      {
        v176 = __CFDictionaryCreateTransfer(v203, v196, &v196[v191], v191);
      }

      *v202 = v176;
    }

    if (v200)
    {
      *v200 = 18;
    }

    goto LABEL_457;
  }

  v163 = 0;
  v189 = (a10 + 1);
  v190 = (v204 + 8);
  v164 = valuePtr;
  if (!v202)
  {
    v164 = 0;
  }

  v188 = v164;
  v165 = -1;
  while (v190 <= v162)
  {
    v166 = v162;
    v167 = v204 + *(a4 + 24);
    v168 = *(a4 + 7);
    if (v167 - v168 < v166)
    {
      break;
    }

    if (*(a4 + 7) <= 1u)
    {
      v169 = *(a4 + 7);
      if (!*(a4 + 7))
      {
        goto LABEL_408;
      }

      if (v168 == 1)
      {
        v169 = *v166;
        goto LABEL_408;
      }
    }

    else
    {
      switch(v168)
      {
        case 2:
          v169 = __rev16(*v166);
          goto LABEL_408;
        case 4:
          v169 = bswap32(*v166);
          goto LABEL_408;
        case 8:
          v169 = bswap64(*v166);
          goto LABEL_408;
      }
    }

    v169 = 0;
    v170 = v166;
    do
    {
      v171 = *v170;
      v170 = (v170 + 1);
      v169 = v171 | (v169 << 8);
      --v168;
    }

    while (v168);
LABEL_408:
    if (*(a4 + 8) <= v169)
    {
      break;
    }

    v172 = *(a4 + 6);
    v173 = (v167 + v169 * v172);
    if (*(a4 + 6) <= 1u)
    {
      if (!*(a4 + 6))
      {
        goto LABEL_421;
      }

      if (v172 == 1)
      {
        v172 = *v173;
        goto LABEL_421;
      }
    }

    else
    {
      switch(v172)
      {
        case 2:
          v172 = __rev16(*v173);
          goto LABEL_421;
        case 4:
          v172 = bswap32(*v173);
          goto LABEL_421;
        case 8:
          v172 = bswap64(*v173);
          goto LABEL_421;
      }
    }

    v174 = *(a4 + 6);
    v172 = 0;
    do
    {
      v175 = *v173;
      v173 = (v173 + 1);
      v172 = v175 | (v172 << 8);
      --v174;
    }

    while (v174);
LABEL_421:
    valuePtr[0] = 0;
    v211[0] = 0;
    if (!__CFBinaryPlistCreateObjectFiltered(v204, a2, v172, a4, v203, a6, a7, a8, v201, v189, 0, v188, v211) || v163 < v191 && v211[0] != 7)
    {
      if (valuePtr[0])
      {
        CFRelease(valuePtr[0]);
      }

      if (v196)
      {
        while (v165 != -1)
        {
          v183 = v196[v165--];
          CFRelease(v183);
        }

        if (v196 != v192)
        {
          goto LABEL_451;
        }
      }

      goto LABEL_452;
    }

    if (v196)
    {
      v196[v163] = valuePtr[0];
    }

    v162 = (v166 + *v156);
    ++v163;
    ++v165;
    if (v163 == v197)
    {
      goto LABEL_427;
    }
  }

  if (v196)
  {
    while (v165 != -1)
    {
      v182 = v196[v165--];
      CFRelease(v182);
    }

    if (v196 != v192)
    {
LABEL_451:
      CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, v196);
    }
  }

LABEL_452:
  LOBYTE(v20) = 0;
LABEL_470:
  if (v198)
  {
    CFRelease(v198);
  }

  return v20 & 1;
}

void sub_183118D64(_Unwind_Exception *exception_object)
{
  if (*(v1 + 104))
  {
    CFRelease(*(v1 + 104));
  }

  _Unwind_Resume(exception_object);
}

void __CFPropertyListCreateSplitKeypaths(const __CFAllocator *a1, CFSetRef theSet, __CFSet **a3, __CFSet **a4)
{
  v4 = a4;
  v5 = a3;
  v39 = a1;
  v40 = *MEMORY[0x1E69E9840];
  if (!theSet)
  {
    *a3 = 0;
    *a4 = 0;
    return;
  }

  Count = CFSetGetCount(theSet);
  if (Count >> 60)
  {
    __CFPropertyListCreateSplitKeypaths_cold_4();
  }

  v10 = Count;
  if (Count <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = Count;
  }

  MEMORY[0x1EEE9AC00](Count, v8, v9);
  v14 = (&v35 - v13);
  if (v12 >= 0x200)
  {
    v15 = 512;
  }

  else
  {
    v15 = v12;
  }

  bzero(&v35 - v13, v15);
  if (v10 >= 0x101)
  {
    Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * v11, 0xC0040B8AA526DuLL);
    if (!Typed)
    {
      __CFPropertyListCreateSplitKeypaths_cold_1();
    }

    v14 = Typed;
    CFSetGetValues(theSet, Typed);
    goto LABEL_15;
  }

  bzero(v14, 8 * v11);
  CFSetGetValues(theSet, v14);
  if (v10)
  {
LABEL_15:
    v35 = &v35;
    v36 = v5;
    Mutable = 0;
    v17 = 0;
    v19 = 0;
    v37 = v4;
    v38 = &__kCFAllocatorSystemDefault;
    do
    {
      v20 = v14[v19];
      v21 = CFArrayGetCount(v20);
      if (v21 >= 1)
      {
        v22 = v21;
        if (!Mutable)
        {
          Mutable = CFSetCreateMutable(v39, 0, &kCFTypeSetCallBacks);
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v20, 0);
        CFSetAddValue(Mutable, ValueAtIndex);
        v27 = v22 - 1;
        if (v22 != 1)
        {
          if (!v17)
          {
            v24 = CFSetCreateMutable(v39, 0, &kCFTypeSetCallBacks);
            v17 = v24;
          }

          if (v27 >> 60)
          {
            __CFPropertyListCreateSplitKeypaths_cold_3();
          }

          MEMORY[0x1EEE9AC00](v24, v25, v26);
          v30 = &v35 - v29;
          if (v28 >= 0x200)
          {
            v31 = 512;
          }

          else
          {
            v31 = v28;
          }

          bzero(&v35 - v29, v31);
          v32 = 8 * v27;
          if (v22 > 0x101)
          {
            v30 = CFAllocatorAllocateTyped(v38, v32, 0xC0040B8AA526DuLL);
            if (!v30)
            {
              __CFPropertyListCreateSplitKeypaths_cold_2();
            }
          }

          else
          {
            bzero(v30, v32);
          }

          v41.length = CFArrayGetCount(v20) - 1;
          v41.location = 1;
          CFArrayGetValues(v20, v41, v30);
          v33 = CFArrayGetCount(v20);
          v34 = CFArrayCreate(v39, v30, v33 - 1, &kCFTypeArrayCallBacks);
          CFSetAddValue(v17, v34);
          if (v34)
          {
            CFRelease(v34);
          }

          if (v22 >= 0x102)
          {
            CFAllocatorDeallocate(v38, v30);
          }
        }
      }

      ++v19;
    }

    while (v10 != v19);
    v5 = v36;
    v4 = v37;
    if (v10 >= 0x101)
    {
      CFAllocatorDeallocate(v38, v14);
    }

    goto LABEL_36;
  }

  Mutable = 0;
  v17 = 0;
LABEL_36:
  *v5 = Mutable;
  *v4 = v17;
}

CFURLRef CFURLCopyAbsoluteURL(CFURLRef relativeURL)
{
  v17[18] = *MEMORY[0x1E69E9840];
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLCopyAbsoluteURL_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    v2 = [(__CFURL *)relativeURL absoluteURL];

    return v2;
  }

  v4 = CFGetAllocator(relativeURL);
  v16 = 0;
  v15 = 0;
  if (CF_IS_OBJC(0x1DuLL, relativeURL))
  {
    v5 = [(__CFURL *)relativeURL absoluteURL];
    v6 = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    return v6;
  }

  v7 = *(relativeURL + 4);
  if (v7)
  {
    if (CFURLIsFileReferenceURL(*(relativeURL + 4)) && !CFURLHasDirectoryPath(v7))
    {
      v14 = CFURLCreateFilePathURL(v4, v7, 0);
      if (!v14)
      {
        return 0;
      }

      v7 = v14;
      v8 = 0;
    }

    else
    {
      v8 = 1;
    }

    if (CF_IS_OBJC(0x1DuLL, v7))
    {
      v9 = CFURLGetString(v7);
      v16 = 0;
      v10 = v17;
      _parseComponents(v9, 0, &v16, v17, &v15);
    }

    else
    {
      v9 = atomic_load((v7 + 24));
      v16 = *(v7 + 16);
      v10 = (v7 + 56);
    }

    v11 = atomic_load(relativeURL + 3);
    v12 = resolveAbsoluteURLString(v4, v11, *(relativeURL + 4), relativeURL + 56, v9, v16, v10);
    if (v12)
    {
      v13 = v12;
      v6 = _CFURLCreateWithArbitraryString(v4, v12, 0);
      CFRelease(v13);
      *(v6 + 5) = *(relativeURL + 5);
      if (v8)
      {
        return v6;
      }
    }

    else
    {
      v6 = 0;
      if (v8)
      {
        return v6;
      }
    }

    CFRelease(v7);
    return v6;
  }

  return CFRetain(relativeURL);
}

Boolean CFStringGetFileSystemRepresentation(CFStringRef string, char *buffer, CFIndex maxBufLen)
{
  if (CFStringGetLength(string))
  {
    return [(__CFString *)string getFileSystemRepresentation:buffer maxLength:maxBufLen];
  }

  if (!maxBufLen)
  {
    return 0;
  }

  *buffer = 0;
  return 1;
}

uint64_t CanonicalFileURLStringToFileSystemRepresentation(const __CFString *a1, _BYTE *a2, uint64_t a3)
{
  v3 = 0;
  v25 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    v5 = a2;
    Length = CFStringGetLength(a1);
    v8 = Length - 7;
    if (Length == 7)
    {
      *v5 = 0;
      return 1;
    }

    else
    {
      usedBufLen = 0;
      if (v8 >= 1025)
      {
        v9 = malloc_type_malloc(3 * v8, 0x100004077774924uLL);
        if (!v9)
        {
          return 0;
        }
      }

      else
      {
        v9 = buffer;
      }

      v26.location = 7;
      v26.length = v8;
      if (CFStringGetBytes(a1, v26, 0x8000100u, 0, 0, v9, 3 * v8, &usedBufLen))
      {
        v10 = usedBufLen;
        if (usedBufLen >= 1)
        {
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = v9;
          while (1)
          {
            if (a3 == v13)
            {
              v3 = 0;
              goto LABEL_31;
            }

            LODWORD(v15) = *v14;
            if (v15 != 37)
            {
              break;
            }

            v12 += 2;
            if (v12 < v10)
            {
              v16 = CanonicalFileURLStringToFileSystemRepresentation_hexvalues[v14[1]];
              v5[v13] = 16 * v16;
              v15 = v14[2];
              v14 += 3;
              LOBYTE(v15) = CanonicalFileURLStringToFileSystemRepresentation_hexvalues[v15] + 16 * v16;
LABEL_16:
              v5[v13] = v15;
              v11 = v15 == 47;
            }

            ++v13;
            if (++v12 >= v10)
            {
              v17 = &v5[v13];
              v19 = v11 && v13 != 1;
              v20 = v19 << 63 >> 63;
              goto LABEL_27;
            }
          }

          ++v14;
          goto LABEL_16;
        }

        v20 = 0;
        v17 = v5;
LABEL_27:
        v21 = &v5[a3];
        v5 = &v17[v20];
        v3 = 1;
        if (&v17[v20] < v21)
        {
LABEL_31:
          *v5 = 0;
        }
      }

      else
      {
        v3 = 0;
      }

      if (v9 != buffer)
      {
        free(v9);
      }
    }
  }

  return v3;
}

void CFStringAppendCharacters(CFMutableStringRef theString, const UniChar *chars, CFIndex numChars)
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = CF_IS_OBJC(7uLL, theString);
  if (v6)
  {

    [(__CFString *)theString appendCharacters:chars length:numChars];
    return;
  }

  p_info = &theString->info;
  v9 = atomic_load(&theString->info);
  if ((v9 & 1) == 0)
  {
    v10 = _CFOSLog(v6, v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      CFStringAppendCharacters_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    return;
  }

  v18 = atomic_load(p_info);
  v19 = v18 & 5;
  v20 = atomic_load(p_info);
  v21 = v20 & 0x60;
  if (v19 == 4)
  {
    p_data = &theString->data;
    if (v21)
    {
      v23 = *p_data;
    }

    else
    {
      v25 = atomic_load(&theString->info);
      v23 = &p_data[(v25 & 5) != 4];
    }

    length = *v23;
  }

  else if ((v20 & 0x60) != 0)
  {
    length = theString->length;
  }

  else
  {
    length = theString->data;
  }

  v26 = atomic_load(&theString->info);
  if ((v26 & 0x10) != 0)
  {
    v43 = length;
    v44 = 0;
    __CFStringChangeSizeMultiple(theString, &v43, 1, numChars, 1);
    v33 = atomic_load(&theString->info);
    v32 = &theString->data;
    if ((v33 & 0x60) == 0)
    {
      v30 = &theString->info;
LABEL_33:
      v38 = atomic_load(v30);
      v34 = &v32[(v38 & 5) != 4];
      goto LABEL_34;
    }

LABEL_28:
    v34 = *v32;
LABEL_34:

    memmove(&v34[2 * length], chars, 2 * numChars);
    return;
  }

  if (numChars < 1)
  {
    v43 = length;
    v44 = 0;
    __CFStringChangeSizeMultiple(theString, &v43, 1, numChars, 0);
  }

  else
  {
    v27 = 0;
    do
    {
      v28 = chars[v27++];
    }

    while (v28 <= 0x7F && v27 < numChars);
    v43 = length;
    v44 = 0;
    __CFStringChangeSizeMultiple(theString, &v43, 1, numChars, v28 > 0x7F);
    if (v28 >= 0x80)
    {
      v30 = &theString->info;
      v31 = atomic_load(&theString->info);
      v32 = &theString->data;
      if ((v31 & 0x60) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_28;
    }
  }

  v35 = atomic_load(&theString->info);
  v36 = &theString->data;
  if ((v35 & 0x60) != 0)
  {
    v37 = *v36;
  }

  else
  {
    v39 = atomic_load(&theString->info);
    v37 = &v36[(v39 & 5) != 4];
  }

  v40 = atomic_load(&theString->info);
  if (numChars >= 1)
  {
    v41 = &v37[length + ((v40 >> 2) & 1)];
    do
    {
      v42 = *chars++;
      *v41++ = v42;
      --numChars;
    }

    while (numChars);
  }
}

uint64_t _CFXNotificationRegistrarFindObject(uint64_t a1, uint64_t a2, CFTypeRef cf1, unint64_t a4, int a5, _DWORD *a6)
{
  v6 = *(a2 + 8);
  if (!v6)
  {
    return 0;
  }

  v7 = *(*a2 + 4 * (a4 % v6));
  if (v7 == -1)
  {
    return 0;
  }

  while (1)
  {
    v12 = *(a1 + 120) + 32 * v7;
    v13 = *(v12 + 8);
    if (v13 == cf1 || a5 && CFEqual(cf1, v13))
    {
      break;
    }

    v7 = *(v12 + 4);
    if (v7 == -1)
    {
      return 0;
    }
  }

  if (a6)
  {
    *a6 = v7;
  }

  return v12;
}

uint64_t CFStringFileSystemEncoding()
{
  if ((__CFDefaultFileSystemEncoding & 1) == 0)
  {
    __CFDefaultFileSystemEncoding = 1;
  }

  return 134217984;
}

void *__CFDictionaryCreateTransfer(__objc2_class **a1, unint64_t *a2, unint64_t *a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v27[10] = *MEMORY[0x1E69E9840];
  Transfer = __NSCFDictionaryCreateTransfer(a1, a2, a3, a4);
  if (!Transfer)
  {
    v27[0] = __CFTypeCollectionRetain;
    v27[1] = __CFTypeCollectionRetain;
    v27[2] = __CFTypeCollectionRelease;
    v27[3] = __CFTypeCollectionRelease;
    v27[4] = CFEqual;
    v27[5] = CFEqual;
    v27[6] = CFHash;
    v27[7] = 0;
    v27[8] = CFCopyDescription;
    v27[9] = CFCopyDescription;
    Transfer = CFBasicHashCreate(a1, 0x2001u, v27, v8, v9, v10, v11, v12);
    CFBasicHashSuppressRC(Transfer);
    if (v4 >= 1)
    {
      CFBasicHashSetCapacity(Transfer, v4);
      do
      {
        v15 = *v6++;
        v14 = v15;
        v16 = *v5++;
        CFBasicHashAddValue(Transfer, v14, v16);
        --v4;
      }

      while (v4);
    }

    CFBasicHashUnsuppressRC(Transfer);
    v23 = atomic_load(Transfer + 1);
    v24 = v23;
    do
    {
      atomic_compare_exchange_strong(Transfer + 1, &v24, v23 | 0x40);
      v25 = v24 == v23;
      v23 = v24;
    }

    while (!v25);
    _CFRuntimeSetInstanceTypeIDAndIsa(Transfer, 0x12uLL, v17, v18, v19, v20, v21, v22);
    if (__CFOASafe)
    {
      __CFSetLastAllocationEventName();
    }
  }

  return Transfer;
}

CFSetRef CFSetCreate(CFAllocatorRef allocator, const void **values, CFIndex numValues, const CFSetCallBacks *callBacks)
{
  v8 = numValues;
  Generic = __CFSetCreateGeneric(allocator, callBacks, numValues, callBacks, v4, v5, v6, v7);
  v17 = Generic;
  if (Generic)
  {
    if (v8 >= 1)
    {
      CFBasicHashSetCapacity(Generic, v8);
      do
      {
        v18 = *values++;
        CFBasicHashAddValue(v17, v18, v18);
        --v8;
      }

      while (v8);
    }

    v19 = atomic_load(v17 + 1);
    v20 = v19;
    do
    {
      atomic_compare_exchange_strong(v17 + 1, &v20, v19 | 0x40);
      v21 = v20 == v19;
      v19 = v20;
    }

    while (!v21);
    _CFRuntimeSetInstanceTypeIDAndIsa(v17, 0x11uLL, v11, v12, v13, v14, v15, v16);
    if (__CFOASafe)
    {
      __CFSetLastAllocationEventName();
    }
  }

  return v17;
}

Boolean CFSetGetValueIfPresent(CFSetRef theSet, const void *candidate, const void **value)
{
  v9 = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(0x11uLL, theSet))
  {
    return [(__CFSet *)theSet __getValue:value forObj:candidate];
  }

  v7 = 0u;
  v8 = 0u;
  CFBasicHashFindBucket(theSet, candidate, &v7);
  if (!*(&v8 + 1))
  {
    return 0;
  }

  if (value)
  {
    *value = v8;
  }

  return 1;
}

CFArrayRef CFStringCreateArrayWithFindResults(CFAllocatorRef alloc, CFStringRef theString, CFStringRef stringToFind, CFRange rangeToSearch, CFStringCompareFlags compareOptions)
{
  length = rangeToSearch.length;
  location = rangeToSearch.location;
  v24 = *MEMORY[0x1E69E9840];
  allocator = alloc;
  if (!alloc)
  {
    v9 = _CFGetTSD(1);
    v10 = &__kCFAllocatorSystemDefault;
    if (v9)
    {
      v10 = v9;
    }

    allocator = v10;
  }

  if (length < 1)
  {
    return 0;
  }

  v11 = 0;
  Mutable = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  result.location = 0;
  result.length = 0;
  v16 = (location + length);
  while (1)
  {
    v25.location = location;
    v25.length = length;
    if (!CFStringFindWithOptionsAndLocale(theString, stringToFind, v25, compareOptions, 0, &result))
    {
      break;
    }

    if ((compareOptions & 4) != 0)
    {
      length = result.location - location;
    }

    else
    {
      location = result.length + result.location;
      length = v16 - (result.length + result.location);
    }

    if (v14 >= v13)
    {
      if (!Mutable)
      {
        Mutable = CFDataCreateMutable(allocator, 0);
      }

      v13 = 2 * v13 + 8;
      CFDataSetLength(Mutable, 24 * v13);
      v15 = &CFDataGetMutableBytePtr(Mutable)[v11];
    }

    *v15 = result;
    v15[1].location = Mutable;
    v15 = (v15 + 24);
    ++v14;
    v11 += 24;
    if (length <= 0)
    {
      goto LABEL_18;
    }
  }

  if (!v14)
  {
    return 0;
  }

LABEL_18:
  callBacks = *byte_1EF066788;
  CFDataSetLength(Mutable, 24 * v14);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  v18 = CFArrayCreateMutable(allocator, 8 * v14, &callBacks);
  do
  {
    CFArrayAppendValue(v18, MutableBytePtr);
    MutableBytePtr += 24;
    --v14;
  }

  while (v14);
  CFRelease(Mutable);
  return v18;
}

uint64_t _NSIsNSOrderedSet(uint64_t a1)
{
  if (!a1)
  {
    return a1 & 1;
  }

  v1 = a1;
  MethodImplementation = object_getMethodImplementation();
  if (MethodImplementation == MEMORY[0x1E69E58E8])
  {
    objc_opt_class();
    LOBYTE(a1) = objc_opt_isKindOfClass();
    return a1 & 1;
  }

  return MethodImplementation(v1, sel_isNSOrderedSet__);
}

BOOL _hasDrive(const __CFString *a1)
{
  result = 0;
  if (CFStringGetLength(a1) >= 2)
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(a1, 0);
    if (CFStringGetCharacterAtIndex(a1, 1) == 58 && (CharacterAtIndex & 0xFFFFFFDF) - 65 < 0x1A)
    {
      return 1;
    }
  }

  return result;
}

unint64_t CFXNotificationRegistrarAdd(uint64_t a1, __CFString *cf, CFTypeRef cf1, __CFString *a4, int a5, void *a6, const void *a7)
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 24);
  if (cf)
  {
    v11 = cf;
    if (@"kCFNotificationAnyName" != cf && CFEqual(cf, @"kCFNotificationAnyName"))
    {
      v11 = @"kCFNotificationAnyName";
    }
  }

  else
  {
    v11 = @"kCFNotificationAnyName";
  }

  v12 = (v10 >> 1) & 1;
  if (cf1)
  {
    if (v12 && @"kCFNotificationAnyObject" != cf1 && CFEqual(cf1, @"kCFNotificationAnyObject"))
    {
      cf1 = @"kCFNotificationAnyObject";
    }
  }

  else
  {
    cf1 = @"kCFNotificationAnyObject";
  }

  if (!a4)
  {
    a4 = @"kCFNotificationAnyObserver";
  }

  v13 = CFHash(v11);
  if (v12)
  {
    v14 = CFHash(cf1);
  }

  else
  {
    v14 = (cf1 >> 5) & 0x7F;
  }

  v15 = atomic_fetch_add((a1 + 168), 1u) << 32;
  v34 = -1;
  v35 = -1;
  v33 = -1;
  memset(v36, 0, sizeof(v36));
  os_unfair_lock_lock((a1 + 16));
  if (v11 == @"kCFNotificationAnyName")
  {
    if (cf1 == @"kCFNotificationAnyObject")
    {
      v28 = v15;
      v29 = -1;
      v19 = (a1 + 80);
      v20 = a1;
      v21 = a6;
      v22 = a7;
      v18 = -1;
      goto LABEL_25;
    }

    v17 = _CFXNotificationRegistrarAddObject(a1, a1 + 48, cf1, v14, &v34, -1, v12);
    v18 = v34;
    LODWORD(v29) = -1;
    HIDWORD(v29) = v34;
  }

  else
  {
    if (cf1 == @"kCFNotificationAnyObject")
    {
      v25 = _CFXNotificationRegistrarAddName(a1, a1 + 64, v11, v13, &v35, 1);
      v18 = v35;
      v29 = __PAIR64__(v34, v35);
      v28 = v15;
      v19 = (v25 + 3);
      v22 = a7;
      v24 = a5 | 0x800;
      v20 = a1;
      v21 = a6;
      v23 = a4;
      goto LABEL_27;
    }

    v16 = _CFXNotificationRegistrarAddName(a1, a1 + 32, v11, v13, &v35, 0);
    v17 = _CFXNotificationRegistrarAddObject(a1, (v16 + 3), cf1, v14, &v34, v35, v12);
    v18 = v34;
    v29 = __PAIR64__(v34, v35);
  }

  v28 = v15;
  v19 = (v17 + 16);
  v20 = a1;
  v21 = a6;
  v22 = a7;
LABEL_25:
  v23 = a4;
  v24 = a5;
LABEL_27:
  _CFXNotificationRegistrarAddObserver(v20, v19, v21, v22, v18, v23, &v33, v24, v28, v29, SHIDWORD(v29), v36);
  v26 = v33;
  os_unfair_lock_unlock((a1 + 16));
  _CFXNotificationDisposalListRelease(v36);
  return v15 | v26;
}

void *_CFXNotificationRegistrarAddName(uint64_t a1, uint64_t a2, const void *a3, unint64_t a4, unsigned int *a5, int a6)
{
  Name = _CFXNotificationRegistrarFindName(a1, a2, a3, a4, a5);
  if (Name)
  {
    return Name;
  }

  v13 = *(a1 + 112);
  if (v13 == -1)
  {
    v15 = malloc_good_size(40 * (*(a1 + 108) + 1)) / 0x28;
    v16 = *(a1 + 108);
    v17 = *(a1 + 96);
    if (v17)
    {
      v14 = malloc_type_realloc(v17, 40 * v15, 0xCD87958FuLL);
    }

    else
    {
      v14 = malloc_type_malloc(40 * v15, 0x82DB78C4uLL);
    }

    *(a1 + 108) = v15;
    *(a1 + 96) = v14;
    if (v16 < v15)
    {
      v18 = 40 * v16 + 36;
      do
      {
        v19 = *(a1 + 96);
        v20 = *(a1 + 112);
        if (v20 != -1)
        {
          *(v19 + 40 * v20) = v16;
        }

        v21 = v19 + v18;
        *(v21 - 36) = -1;
        *(v21 - 32) = v20;
        *(a1 + 112) = v16;
        *(v21 - 28) = 0;
        *(v21 - 4) = 0;
        *(*(a1 + 96) + v18 - 12) = 0;
        *(*(a1 + 96) + v18) = 0;
        ++v16;
        v18 += 40;
      }

      while (v15 != v16);
      v14 = *(a1 + 96);
    }

    v13 = *(a1 + 112);
    if (v13 == -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v14 = *(a1 + 96);
  }

  v22 = &v14[10 * v13];
  v23 = *v22;
  v24 = v22[1];
  *(a1 + 112) = v24;
  if (v23 != -1)
  {
    v14[10 * v23 + 1] = v24;
  }

  if (v24 != -1)
  {
    v14[10 * v24] = v23;
  }

LABEL_18:
  ++*(a1 + 104);
  *a5 = v13;
  Name = &v14[10 * v13];
  _CFXNotificationRegistrarAddCachedName(a3, (Name + 8));
  if (a6 == 1)
  {
    *(Name + 24) = 0xFFFFFFFFLL;
  }

  else
  {
    *(Name + 24) = 0;
    *(Name + 32) = 0;
  }

  v25 = *a5;
  v26 = 31 - __clz(*(a2 + 12) + 1);
  if (v26 <= 1)
  {
    v26 = 1;
  }

  v27 = malloc_good_size(4 * v26);
  v28 = v27 >> 2;
  if (!(v27 >> 2))
  {
    _CFXNotificationRegistrarAddName_cold_1();
  }

  v29 = *a2;
  if (*(a2 + 8) >= v28)
  {
    v32 = *a2;
  }

  else
  {
    v30 = v27;
    v31 = malloc_type_malloc(v27 & 0x3FFFFFFFCLL, 0x82DB78C4uLL);
    v32 = v31;
    if (v29)
    {
      memset(v31, 255, v30 & 0x3FFFFFFFCLL);
      v33 = *a2;
      v34 = *(a2 + 8);
      if (v34)
      {
        v35 = 0;
        v36 = *(a2 + 8);
        do
        {
          v37 = v33[v35];
          if (v37 != -1)
          {
            v38 = *(a1 + 96);
            do
            {
              v39 = (v38 + 40 * v37);
              v40 = *(v39 + 2);
              v41 = v39[1];
              if (v33)
              {
                v42 = *v39;
                if (v33[v40 % v34] == v37)
                {
                  v33[v40 % v34] = v41;
                }

                if (v42 != -1)
                {
                  *(v38 + 40 * v42 + 4) = v41;
                }

                if (v41 != 0xFFFFFFFFLL)
                {
                  *(v38 + 40 * v41) = v42;
                }
              }

              if (v32)
              {
                v43 = v40 % (v30 >> 2);
                v44 = v32[v43];
                if (v44 != -1)
                {
                  *(v38 + 40 * v44) = v37;
                }

                *v39 = -1;
                v39[1] = v44;
                v32[v43] = v37;
              }

              v37 = v41;
            }

            while (v41 != 0xFFFFFFFFLL);
            v36 = *(a2 + 8);
          }

          ++v35;
        }

        while (v35 < v36);
      }

      *a2 = v32;
      *(a2 + 8) = v28;
      free(v33);
      v32 = *a2;
    }

    else
    {
      *a2 = v31;
      *(a2 + 8) = v28;
      memset(v31, 255, v30 & 0x3FFFFFFFCLL);
    }
  }

  v45 = *(a2 + 8);
  *(Name + 16) = a4;
  if (v25 != -1 && v32)
  {
    v46 = a4 % v45;
    v47 = *(a1 + 96);
    v48 = v32[v46];
    if (v48 != -1)
    {
      *(v47 + 40 * v48) = v25;
    }

    v49 = (v47 + 40 * v25);
    *v49 = -1;
    v49[1] = v48;
    v32[v46] = v25;
  }

  ++*(a2 + 12);
  return Name;
}

__CFArray *_copyResourceURLsFromBundle(uint64_t a1, const __CFURL *a2, const __CFArray *a3, const __CFString *a4, const __CFString *a5, const __CFString *a6, const __CFString *a7, int a8, char a9, char a10, uint64_t a11)
{
  v74 = *MEMORY[0x1E69E9840];
  v73 = 0;
  Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
  cf = 0;
  theString = a4;
  MutableCopy = CFStringCreateMutableCopy(0, 0, a4);
  v19 = MutableCopy;
  v20 = a2;
  v67 = a3;
  v68 = a1;
  if (a10 == 1)
  {
    Length = CFStringGetLength(MutableCopy);
    _CFAppendPathComponent2(v19, @"Non-localized Resources");
    Table = _copyQueryTable(a1, a2, a3, v19, a5);
    v23 = Table;
    v24 = a5;
    if (a11)
    {
      _CFBundleFindResourcesWithPredicate(Mutable, Table, a11, &v73);
    }

    else
    {
      cf = CFDictionaryGetValue(Table, a6);
    }

    v75.length = CFStringGetLength(v19) - Length;
    v75.location = Length;
    CFStringDelete(v19, v75);
    if (cf || v73)
    {
      goto LABEL_12;
    }

    a1 = v68;
    if (v23)
    {
      CFRelease(v23);
    }
  }

  v25 = _copyQueryTable(a1, v20, a3, v19, a5);
  v23 = v25;
  v24 = a5;
  if (a11)
  {
    _CFBundleFindResourcesWithPredicate(Mutable, v25, a11, &v73);
  }

  else
  {
    cf = CFDictionaryGetValue(v25, a6);
  }

LABEL_12:
  if (v24)
  {
    v26 = CFStringGetLength(v24) > 0;
  }

  else
  {
    v26 = 0;
  }

  v66 = v20;
  if (a7)
  {
    v27 = CFStringGetLength(a7) > 0;
  }

  else
  {
    v27 = 0;
  }

  if (!a9 || !cf)
  {
    if (cf)
    {
      v29 = CFGetTypeID(cf);
      if (v29 == CFArrayGetTypeID())
      {
        v76.length = CFArrayGetCount(cf);
        v76.location = 0;
        CFArrayAppendArray(Mutable, cf, v76);
      }

      else
      {
        CFArrayAppendValue(Mutable, cf);
      }
    }

    goto LABEL_52;
  }

  v28 = CFGetTypeID(cf);
  if (v28 == CFStringGetTypeID())
  {
    cf = CFArrayCreate(&__kCFAllocatorSystemDefault, &cf, 1, &kCFTypeArrayCallBacks);
  }

  else
  {
    CFRetain(cf);
  }

  result.location = 0;
  result.length = 0;
  if (a8)
  {
    Count = CFArrayGetCount(cf);
    if (Count <= 0)
    {
      CFRelease(cf);
LABEL_52:
      v36 = v67;
      goto LABEL_53;
    }
  }

  else
  {
    Count = 1;
  }

  v64 = v19;
  for (i = 0; Count != i; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(cf, i);
    v33 = CFStringGetLength(ValueAtIndex);
    v34 = v33;
    if (v26)
    {
      v77.location = 0;
      v77.length = v33;
      if (CFStringFindWithOptions(ValueAtIndex, v24, v77, 0, &result))
      {
        v35 = result.location == 0;
      }

      else
      {
        v35 = 1;
      }

      if (v35)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (!v33)
      {
        goto LABEL_46;
      }

      v78.location = 0;
      v78.length = v33;
      if (!CFStringFindWithOptions(ValueAtIndex, @".lproj", v78, 0, &result) || result.location + 7 >= v34)
      {
        goto LABEL_46;
      }
    }

    if (!a7)
    {
      break;
    }

    if (CFStringGetLength(a7) < 1)
    {
      break;
    }

    v79.location = 0;
    v79.length = v34;
    if (!CFStringFindWithOptions(ValueAtIndex, a7, v79, 8uLL, &result))
    {
      break;
    }

    v80.location = result.length + result.location;
    v80.length = 1;
    if (!CFStringFindWithOptions(ValueAtIndex, @".", v80, 0, &result))
    {
      break;
    }

    v27 = 0;
LABEL_46:
    CFArrayAppendValue(Mutable, ValueAtIndex);
  }

  CFRelease(cf);
  v36 = v67;
  if (!a8 && CFArrayGetCount(Mutable))
  {
    v27 = 0;
  }

  v19 = v64;
LABEL_53:
  cf = 0;
  CFRelease(v23);
  if (v27)
  {
    v37 = CFStringCreateMutableCopy(0, 0, a7);
    _CFAppendPathExtension2(v37, @"lproj");
    if (v24 && CFStringGetLength(v24) >= 1)
    {
      _CFAppendPathComponent2(v37, v24);
    }

    v38 = _copyQueryTable(v68, v66, v36, v19, v37);
    CFRelease(v37);
    Value = CFDictionaryGetValue(v38, a6);
    cf = Value;
    if (Value)
    {
      v40 = CFGetTypeID(Value);
      TypeID = CFStringGetTypeID();
      v42 = cf;
      if (v40 == TypeID)
      {
        CFArrayAppendValue(Mutable, cf);
      }

      else
      {
        v81.length = CFArrayGetCount(cf);
        v81.location = 0;
        CFArrayAppendArray(Mutable, v42, v81);
      }
    }

    CFRelease(v38);
  }

  if (CFArrayGetCount(Mutable) < 1)
  {
    if (a8)
    {
      v45 = CFRetain(Mutable);
    }

    else
    {
      v45 = 0;
    }
  }

  else
  {
    v43 = _CFGetSlash();
    if (v68)
    {
      v44 = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, *(v68 + 192));
    }

    else
    {
      v46 = CFURLCopyAbsoluteURL(v66);
      v47 = CFURLCopyFileSystemPath(v46, kCFURLPOSIXPathStyle);
      v44 = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, v47);
      CFRelease(v46);
      CFRelease(v47);
    }

    if (theString && CFStringGetLength(theString))
    {
      _CFAppendPathComponent2(v44, theString);
    }

    _CFAppendTrailingPathSlash2(v44);
    if (a8)
    {
      v48 = v19;
      v49 = CFArrayGetCount(Mutable);
      v50 = CFURLCreateWithFileSystemPath(&__kCFAllocatorSystemDefault, v44, kCFURLPOSIXPathStyle, 1u);
      v45 = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
      if (v49 >= 1)
      {
        for (j = 0; j != v49; ++j)
        {
          v52 = CFArrayGetValueAtIndex(Mutable, j);
          v53 = _CFGetSlashStr();
          RelativeURLFromBaseAndPath = _CFBundleCreateRelativeURLFromBaseAndPath(v52, v50, v43, v53);
          CFArrayAppendValue(v45, RelativeURLFromBaseAndPath);
          CFRelease(RelativeURLFromBaseAndPath);
        }
      }

      CFRelease(v50);
      v19 = v48;
    }

    else
    {
      HasPrefix = CFStringHasPrefix(a6, @"_CFBT_");
      v56 = CFStringHasPrefix(a6, @"_CFBAF_") | HasPrefix;
      v57 = CFArrayGetValueAtIndex(Mutable, 0);
      if (v56)
      {
        v58 = CFURLCreateWithFileSystemPath(&__kCFAllocatorSystemDefault, v44, kCFURLPOSIXPathStyle, 1u);
        v59 = _CFGetSlashStr();
        v45 = _CFBundleCreateRelativeURLFromBaseAndPath(v57, v58, v43, v59);
        CFRelease(v58);
      }

      else
      {
        CFStringAppend(v44, v57);
        v60 = CFStringGetLength(v57);
        if (CFStringGetCharacterAtIndex(v57, v60 - 1) == v43)
        {
          v61 = v44;
          v62 = 1;
        }

        else
        {
          v61 = v44;
          v62 = 0;
        }

        v45 = CFURLCreateWithFileSystemPath(&__kCFAllocatorSystemDefault, v61, kCFURLPOSIXPathStyle, v62);
      }
    }

    CFRelease(v44);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  CFRelease(Mutable);
  return v45;
}

uint64_t _CFXNotificationRegistrarAddObject(uint64_t a1, uint64_t a2, const void *a3, unint64_t a4, unsigned int *a5, int a6, int a7)
{
  v10 = a4;
  v12 = a2;
  Object = _CFXNotificationRegistrarFindObject(a1, a2, a3, a4, a7, a5);
  if (Object)
  {
    return Object;
  }

  v15 = *(a1 + 136);
  if (v15 == -1)
  {
    v17 = v10;
    v18 = malloc_good_size(32 * (*(a1 + 132) + 1));
    v19 = v18 >> 5;
    v20 = *(a1 + 132);
    v21 = *(a1 + 120);
    if (v21)
    {
      v16 = malloc_type_realloc(v21, v18 & 0x1FFFFFFFE0, 0xCD87958FuLL);
    }

    else
    {
      v16 = malloc_type_malloc(v18 & 0x1FFFFFFFE0, 0x82DB78C4uLL);
    }

    *(a1 + 132) = v19;
    *(a1 + 120) = v16;
    if (v20 < v19)
    {
      v22 = &v16[8 * v20 + 4];
      do
      {
        v23 = *(a1 + 136);
        if (v23 != -1)
        {
          v16[8 * v23] = v20;
        }

        *(v22 - 16) = -1;
        *(v22 - 12) = v23;
        *(a1 + 136) = v20;
        *(v22 + 8) = -1;
        ++v20;
        *(v22 - 8) = 0;
        *v22 = 0xFFFFFFFFLL;
        v22 += 32;
      }

      while ((v18 >> 5) != v20);
    }

    v15 = *(a1 + 136);
    v10 = v17;
    if (v15 == -1)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v16 = *(a1 + 120);
  }

  v24 = &v16[8 * v15];
  v25 = *v24;
  v26 = v24[1];
  *(a1 + 136) = v26;
  if (v25 != -1)
  {
    v16[8 * v25 + 1] = v26;
  }

  if (v26 != -1)
  {
    v16[8 * v26] = v25;
  }

LABEL_17:
  ++*(a1 + 128);
  *a5 = v15;
  Object = &v16[8 * v15];
  *(Object + 24) = -1;
  *(Object + 16) = 0xFFFFFFFFLL;
  if (a7)
  {
    _CFXNotificationRegistrarAddCachedName(a3, (Object + 8));
  }

  else
  {
    *(Object + 8) = a3;
  }

  *(Object + 24) = a6;
  v27 = *a5;
  v28 = 31 - __clz(*(v12 + 12) + 1);
  if (v28 <= 1)
  {
    v28 = 1;
  }

  v29 = malloc_good_size(4 * v28);
  v30 = v29 >> 2;
  if (!(v29 >> 2))
  {
    _CFXNotificationRegistrarAddObject_cold_1();
  }

  v31 = *v12;
  if (*(v12 + 8) >= v30)
  {
    v34 = *v12;
  }

  else
  {
    v32 = v29;
    v33 = malloc_type_malloc(v29 & 0x3FFFFFFFCLL, 0x82DB78C4uLL);
    v34 = v33;
    if (v31)
    {
      v48 = v30;
      v49 = v27;
      memset(v33, 255, v32 & 0x3FFFFFFFCLL);
      v35 = *v12;
      v50 = v12;
      v36 = *(v12 + 8);
      if (v36)
      {
        v37 = 0;
        v38 = (v32 >> 2);
        do
        {
          v39 = v35[v37];
          if (v39 != -1)
          {
            do
            {
              v40 = *(a1 + 120) + 32 * v39;
              v41 = *(v40 + 8);
              if (a7)
              {
                v42 = CFHash(v41);
              }

              else
              {
                v42 = (v41 >> 5) & 0x7F;
              }

              v43 = *(v40 + 4);
              v44 = v34[v42 % v38];
              *v40 = -1;
              *(v40 + 4) = v44;
              if (v44 != -1)
              {
                *(*(a1 + 120) + 32 * v44) = v39;
              }

              v34[v42 % v38] = v39;
              v39 = v43;
            }

            while (v43 != 0xFFFFFFFFLL);
            v36 = *(v50 + 8);
          }

          ++v37;
        }

        while (v37 < v36);
      }

      v12 = v50;
      *v50 = v34;
      *(v50 + 8) = v48;
      free(v35);
      v34 = *v50;
      v27 = v49;
    }

    else
    {
      *v12 = v33;
      *(v12 + 8) = v30;
      memset(v33, 255, v32 & 0x3FFFFFFFCLL);
    }
  }

  v45 = v10 % *(v12 + 8);
  v46 = v34[v45];
  if (v46 != -1)
  {
    *(*(a1 + 120) + 32 * v46) = v27;
  }

  *Object = -1;
  *(Object + 4) = v46;
  v34[v45] = v27;
  ++*(v12 + 12);
  return Object;
}

uint64_t __initWithArrayDontCopyItems(__objc2_class **a1, void *a2)
{
  v4 = objc_opt_class();
  if (v4 != __NSArrayI && v4 != __NSArrayM && v4 != __NSFrozenArrayM)
  {
    return 0;
  }

  if (a1 == &___mutablePlaceholderArray)
  {

    return [a2 mutableCopyWithZone:0];
  }

  else
  {
    if (a1 != &___immutablePlaceholderArray)
    {
      return 0;
    }

    return [a2 copyWithZone:0];
  }
}

unint64_t _CFStringCreateIndirectASCIITaggedPointerString(unsigned __int8 *a1, unint64_t a2)
{
  if (!a2)
  {
    return &stru_1EF068AA8;
  }

  if (!__CFTaggedStringClass)
  {
    goto LABEL_18;
  }

  if (a2 > 7)
  {
    if (a2 <= 0xB)
    {
      if (a2 >= 0xA)
      {
        v6 = 0;
        v10 = a2;
        v11 = a1;
        while (1)
        {
          v12 = charToSixBitLookup_0[*v11];
          if (v12 > 0x1F)
          {
            break;
          }

          v6 = v12 | (32 * v6);
          ++v11;
          if (!--v10)
          {
LABEL_16:
            result = (v6 << 7) | (8 * a2) | 0x8000000000000002;
            v5 = result ^ *MEMORY[0x1E69E5910];
            if ((~v5 & 0xC000000000000007) == 0)
            {
              return result;
            }

            goto LABEL_17;
          }
        }
      }

      else
      {
        v6 = 0;
        v7 = a2;
        v8 = a1;
        while (1)
        {
          v9 = charToSixBitLookup_0[*v8];
          if (v9 > 0x3F)
          {
            break;
          }

          v6 = v9 | (v6 << 6);
          ++v8;
          if (!--v7)
          {
            goto LABEL_16;
          }
        }
      }
    }

LABEL_18:
    if ((a1 & 0xF00000000000000) != 0)
    {
      return 0;
    }

    v13 = dyld_program_sdk_at_least();
    result = 0;
    if (!(a2 >> 13) && v13)
    {
      result = (a2 << 50) | (8 * (a1 & 0x7FFFFFFFFFFFLL)) | 0x8000000000000000;
      v14 = *MEMORY[0x1E69E5910] ^ result;
      if ((~v14 & 0xC000000000000007) != 0)
      {
        return v14 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (*MEMORY[0x1E69E5910] & 7));
      }
    }

    return result;
  }

  __memmove_chk();
  result = (8 * a2) | 0x8000000000000002;
  v5 = *MEMORY[0x1E69E5910] ^ result;
  if ((~v5 & 0xC000000000000007) == 0)
  {
    return result;
  }

LABEL_17:
  result = v5 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v5 & 7));
  if (!result)
  {
    goto LABEL_18;
  }

  return result;
}

void CFSetGetValues(CFSetRef theSet, const void **values)
{
  if (CF_IS_OBJC(0x11uLL, theSet))
  {

    [(__CFSet *)theSet getObjects:values];
  }

  else
  {
    Count = CFSetGetCount(theSet);

    CFBasicHashGetElements(theSet, Count, 0, values);
  }
}

void *CFSetApply(void *a1, uint64_t a2)
{
  v5[5] = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(0x11uLL, a1))
  {

    return [a1 enumerateObjectsWithOptions:0 usingBlock:a2];
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __CFSetApply_block_invoke;
    v5[3] = &unk_1E6D7D948;
    v5[4] = a2;
    return CFBasicHashApply(a1, v5);
  }
}

uint64_t __CFPropertyListKeyBufferMatchesFilterBuffer(unsigned __int8 *a1, uint64_t a2, _BYTE *__s2, uint64_t __n)
{
  v4 = __n - 1;
  if (__n != 1)
  {
    if (__n >= 2 && __s2[v4] == 42)
    {
      if (v4 <= a2)
      {
        v7 = __s2;
        v8 = __n - 1;
        return memcmp(a1, v7, v8) == 0;
      }
    }

    else if (a2 == __n)
    {
      v7 = __s2;
      v8 = __n;
      return memcmp(a1, v7, v8) == 0;
    }

    return 0;
  }

  v5 = *__s2;
  if (v5 == 42)
  {
    return 1;
  }

  if (a2 != 1)
  {
    return 0;
  }

  return v5 == *a1;
}

unint64_t *__CFArrayCreateTransfer(__objc2_class **a1, const void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 8 * a3;
  Instance = _CFRuntimeCreateInstance(a1, 0x13uLL, (8 * a3 + 32), 0, a5, a6, a7, a8);
  v12 = Instance;
  if (Instance)
  {
    v13 = atomic_load(Instance + 1);
    v14 = v13;
    do
    {
      atomic_compare_exchange_strong(Instance + 1, &v14, v13 & 0xFFFFFFFFFFFFFF80 | 4);
      v15 = v14 == v13;
      v13 = v14;
    }

    while (!v15);
    Instance[2] = a3;
    v16 = atomic_load(Instance + 1);
    v17 = v16 & 3;
    if (v17 == 2)
    {
      v20 = (Instance[5] + 8 * *Instance[5] + 16);
    }

    else if (v17)
    {
      v20 = 0;
    }

    else
    {
      v18 = atomic_load(Instance + 1);
      v15 = (~v18 & 0xC) == 0;
      v19 = 6;
      if (v15)
      {
        v19 = 11;
      }

      v20 = &Instance[v19];
    }

    memmove(v20, a2, v10);
    if (__CFOASafe == 1)
    {
      __CFSetLastAllocationEventName();
    }
  }

  return v12;
}

void __NSArrayEnumerate(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  if ([a1 count])
  {
    if ((a3 & 0x1000000000000000) != 0)
    {
      v7 = [a4 firstIndex];
      v32 = [a4 lastIndex];
    }

    else
    {
      v7 = 0;
      v32 = [a1 count] - 1;
    }

    if (v7 != 0x7FFFFFFFFFFFFFFFLL && v32 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (a3)
      {
        v8 = __CFActiveProcessorCount();
        if (v8 < 2)
        {
          a3 &= ~1uLL;
        }
      }

      else
      {
        v8 = 1;
      }

      if ((a3 & 3) != 0)
      {
        v9 = (v32 - v7 + 1) / v8 / v8;
        if (v9 >= 0x10)
        {
          if (v9 <= 0x1000)
          {
            v10 = (v9 + 15) & 0x3FF0;
          }

          else
          {
            v10 = 4096;
          }
        }

        else
        {
          v10 = 16;
        }

        v17 = v10 + v32 - v7;
        v37 = 0;
        v38 = &v37;
        v39 = 0x2020000000;
        v40 = 0x7FFFFFFFFFFFFFFFLL;
        if (a3)
        {
          v35[0] = 0;
          v35[1] = v35;
          v35[2] = 0x2020000000;
          v36 = 0;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = ____NSArrayEnumerate_block_invoke;
          block[3] = &unk_1E6D82388;
          block[10] = v10;
          block[11] = v32;
          block[12] = a3;
          block[4] = a1;
          block[5] = a4;
          block[6] = a2;
          block[7] = v35;
          block[8] = &v37;
          block[9] = v7;
          dispatch_apply(v17 / v10, 0, block);
          _Block_object_dispose(v35, 8);
        }

        else
        {
          v29 = a2;
          v31 = a1;
          if (v10 <= v17)
          {
            v18 = v7;
            v19 = 0;
            v20 = v10 - 1;
            v21 = 1;
            v22 = v18;
            v23 = v32;
            v24 = v17 / v10;
            do
            {
              if ((a3 & 2) != 0)
              {
                if (v20 >= v23 - v18)
                {
                  v26 = v18;
                }

                else
                {
                  v26 = 1 - v10 + v23;
                }

                v25 = v23;
              }

              else
              {
                if (v20 >= v23 - v18)
                {
                  v25 = v32;
                }

                else
                {
                  v25 = v20 + v19 * v10 + v18;
                }

                v26 = v22;
              }

              v27 = __NSArrayChunkIterate(v31, a3, v26, v25, a4, v29, v38 + 3, 0, 0);
              ++v19;
              v28 = v21 >= v24;
              v23 -= v10;
              v22 += v10;
              ++v21;
            }

            while (((v28 | v27) & 1) == 0);
          }
        }

        _Block_object_dispose(&v37, 8);
      }

      else
      {
        v30 = v7;
        v11 = _CFAutoreleasePoolPush();
        LOBYTE(v35[0]) = 0;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v12 = [a1 countByEnumeratingWithState:&v42 objects:v41 count:16];
        if (v12)
        {
          v13 = 0;
          v14 = 0;
          v15 = *v43;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v43 != v15)
              {
                objc_enumerationMutation(a1);
              }

              if ((a3 & 0x1000000000000000) == 0 || v30 <= v14 && v14 <= v32 && [a4 containsIndex:v14])
              {
                __NSARRAY_IS_CALLING_OUT_TO_A_BLOCK__(a2);
                if (v13 < 0x3FF)
                {
                  ++v13;
                }

                else
                {
                  _CFAutoreleasePoolPop(v11);
                  v11 = _CFAutoreleasePoolPush();
                  v13 = 0;
                }
              }

              ++v14;
            }

            v12 = [a1 countByEnumeratingWithState:&v42 objects:v41 count:16];
          }

          while (v12);
        }

        _CFAutoreleasePoolPop(v11);
      }
    }
  }
}

void sub_18311BDA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFStringRef CFURLGetString(CFURLRef anURL)
{
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLGetString_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1 || CF_IS_OBJC(0x1DuLL, anURL))
  {

    return [(__CFURL *)anURL relativeString];
  }

  else if (*(anURL + 18))
  {
    return atomic_load(anURL + 3);
  }

  else
  {
    v3 = *(anURL + 5);
    if (v3)
    {
      return *(v3 + 8);
    }

    else
    {
      return 0;
    }
  }
}

CFURLRef CFBundleCopyResourceURL(CFURLRef bundle, CFStringRef resourceName, CFStringRef resourceType, CFStringRef subDirName)
{
  if (bundle)
  {
    return _CFBundleCopyFindResources(bundle, 0, resourceType, resourceName, resourceType, subDirName, 0, 0, 0, 0);
  }

  return bundle;
}

CFStringRef _CFCreateLastPathComponent(const __CFAllocator *a1, CFStringRef theString, void *a3)
{
  Length = CFStringGetLength(theString);
  if (Length < 2)
  {
LABEL_16:
    if (a3)
    {
      *a3 = -1;
    }

    return CFRetain(theString);
  }

  else
  {
    v7 = Length;
    v8 = 0;
    while (v7 + v8 >= 1)
    {
      if (CFStringGetCharacterAtIndex(theString, --v8 + v7) == 47)
      {
        v9 = v7 + v8;
        if (a3)
        {
          *a3 = v9;
        }

        v10.location = v9 + 1;
        v10.length = ~v8;
        v11 = a1;
        v12 = theString;
        goto LABEL_13;
      }
    }

    v13 = v7 - 2;
    if (!v13 || !_hasDrive(theString))
    {
      goto LABEL_16;
    }

    if (a3)
    {
      *a3 = -1;
    }

    v11 = a1;
    v12 = theString;
    v10.location = 2;
    v10.length = v13;
LABEL_13:

    return CFStringCreateWithSubstring(v11, v12, v10);
  }
}

void CFBasicHashSetCapacity(uint64_t a1, uint64_t a2)
{
  v2 = atomic_load((a1 + 8));
  if ((v2 & 0x40) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a1 + 20);
    v4 = a2 <= v3;
    v5 = a2 - v3;
    if (!v4)
    {
      ++*(a1 + 16);
      __CFBasicHashRehash(a1, v5);
    }
  }
}

void _CFDictionarySetCapacity(unint64_t a1, uint64_t a2)
{
  if (!CF_IS_OBJC(0x12uLL, a1))
  {

    CFBasicHashSetCapacity(a1, a2);
  }
}

CFStringRef CFStringCreateFromExternalRepresentation(CFAllocatorRef alloc, CFDataRef data, CFStringEncoding encoding)
{
  v3 = *&encoding;
  BytePtr = CFDataGetBytePtr(data);
  Length = CFDataGetLength(data);

  return __CFStringCreateImmutableFunnel3(alloc, BytePtr, Length, v3, 3, 0xFFFFFFFFFFFFFFFFLL, 0, v8);
}

void *__NSSingleEntryDictionaryI_new(unint64_t a1, unint64_t a2, char a3)
{
  v28[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v12 = _os_log_pack_size();
    v15 = v28 - ((MEMORY[0x1EEE9AC00](v12, v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill(v15, v12, 0, &dword_1830E6000, "*** %s: key cannot be nil", v28[0]);
    *v16 = 136315138;
    *(v16 + 4) = "__NSSingleEntryDictionaryI_new";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: key cannot be nil", "__NSSingleEntryDictionaryI_new");
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v15, v12];
    objc_exception_throw(v18);
  }

  if (!a2)
  {
    v19 = _os_log_pack_size();
    v22 = v28 - ((MEMORY[0x1EEE9AC00](v19, v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = _os_log_pack_fill(v22, v19, 0, &dword_1830E6000, "*** %s: object cannot be nil", v28[0]);
    *v23 = 136315138;
    *(v23 + 4) = "__NSSingleEntryDictionaryI_new";
    v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "__NSSingleEntryDictionaryI_new");
    v25 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v24) osLogPack:0 size:v22, v19];
    objc_exception_throw(v25);
  }

  v6 = objc_opt_self();
  v7 = __CFAllocateObject(v6, 0);
  if (v7)
  {
    if (a3)
    {
      v9 = [a1 copyWithZone:0];
      v7[2] = v9;
      if (!v9)
      {
        v26 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSDictionary: -copyWithZone: for key %@ returned nil", a1);
        v27 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v26), 0];
        objc_exception_throw(v27);
      }
    }

    else
    {
      if ((a3 & 8) == 0 && (a1 & 0x8000000000000000) == 0)
      {
        v8 = a1;
      }

      v7[2] = a1;
    }

    v7[1] = a2;
    if ((a2 & 0x8000000000000000) == 0 && (a3 & 4) == 0)
    {
      v10 = a2;
    }
  }

  return v7;
}

void sub_18311C3B4(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    if (v2 >= 1)
    {
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

BOOL _CFSetIsMutable(unint64_t a1)
{
  if (CF_IS_OBJC(0x11uLL, a1))
  {
    return 0;
  }

  v3 = atomic_load((a1 + 8));
  return ((v3 >> 6) & 1) == 0;
}

uint64_t CFBasicHashGetElements(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(result + 20);
  v5 = __CFBasicHashTableSizes[*(result + 26)];
  if (v4)
  {
    v6 = v5 < 1;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && a2 >= 1)
  {
    v11 = result;
    v12 = 0;
    v13 = 0;
    do
    {
      v18 = 0u;
      v19 = 0u;
      result = CFBasicHashGetBucket(v11, v12, &v18);
      if (*(&v19 + 1))
      {
        --v4;
        if (v13 < a2)
        {
          v15 = *(&v18 + 1);
          v14 = v19;
          v16 = *(&v19 + 1) - 1;
          do
          {
            if (a3)
            {
              *(a3 + 8 * v13) = v14;
            }

            if (a4)
            {
              *(a4 + 8 * v13) = v15;
            }

            ++v13;
            v17 = v16-- != 0;
          }

          while (v17 && v13 < a2);
        }
      }

      if (v4 < 1)
      {
        break;
      }

      if (++v12 >= v5)
      {
        break;
      }
    }

    while (v13 < a2);
  }

  return result;
}

const __CFSet *__CFPropertyListCreateTopLevelKeyPaths(const __CFAllocator *a1, CFSetRef theSet)
{
  Mutable = theSet;
  v18[1] = *MEMORY[0x1E69E9840];
  if (theSet)
  {
    Count = CFSetGetCount(theSet);
    if (Count >> 60)
    {
      __CFPropertyListCreateTopLevelKeyPaths_cold_2();
    }

    v7 = Count;
    if (Count <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = Count;
    }

    MEMORY[0x1EEE9AC00](Count, v5, v6);
    Typed = v18 - v10;
    if (v9 >= 0x200)
    {
      v12 = 512;
    }

    else
    {
      v12 = v9;
    }

    bzero(v18 - v10, v12);
    if (v7 > 0x100)
    {
      Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * v8, 0xC0040B8AA526DuLL);
      if (!Typed)
      {
        __CFPropertyListCreateTopLevelKeyPaths_cold_1();
      }
    }

    else
    {
      bzero(Typed, 8 * v8);
    }

    CFSetGetValues(Mutable, Typed);
    Mutable = CFSetCreateMutable(a1, v7, &kCFTypeSetCallBacks);
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v14 = CFGetTypeID(*&Typed[8 * i]);
        v15 = *&Typed[8 * i];
        if (v14 == 19)
        {
          CFSetAddValue(Mutable, v15);
        }

        else
        {
          ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a1, v15, @":");
          CFSetAddValue(Mutable, ArrayBySeparatingStrings);
          if (ArrayBySeparatingStrings)
          {
            CFRelease(ArrayBySeparatingStrings);
          }
        }
      }

      if (v7 >= 0x101)
      {
        CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
      }
    }
  }

  return Mutable;
}

CFArrayRef CFStringCreateArrayBySeparatingStrings(CFAllocatorRef alloc, CFStringRef theString, CFStringRef separatorString)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v17[0] = theString;
  Length = CFStringGetLength(theString);
  v20.location = 0;
  v20.length = Length;
  Results = CFStringCreateArrayWithFindResults(alloc, theString, separatorString, v20, 0);
  if (!Results)
  {
    return CFArrayCreate(alloc, v17, 1, &kCFTypeArrayCallBacks);
  }

  v8 = Results;
  Count = CFArrayGetCount(Results);
  Mutable = CFArrayCreateMutable(alloc, Count + 2, &kCFTypeArrayCallBacks);
  if (Count < 1)
  {
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
      v18.length = *ValueAtIndex - v12;
      v18.location = v12;
      v14 = CFStringCreateWithSubstring(alloc, theString, v18);
      CFArrayAppendValue(Mutable, v14);
      CFRelease(v14);
      v12 = ValueAtIndex[1] + *ValueAtIndex;
      ++v11;
    }

    while (Count != v11);
  }

  v19.length = Length - v12;
  v19.location = v12;
  v15 = CFStringCreateWithSubstring(alloc, theString, v19);
  CFArrayAppendValue(Mutable, v15);
  CFRelease(v15);
  CFRelease(v8);
  return Mutable;
}

uint64_t __CFToBytesCheapEightBitWrapper(unsigned int (***a1)(uint64_t, void, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a6 >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a6;
  }

  if (a6)
  {
    v9 = v8;
  }

  else
  {
    v9 = a4;
  }

  if (v9 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    v17 = 0;
    while ((**a1)(a2, *(a3 + 2 * v15), &v17))
    {
      if (a6)
      {
        *(a5 + v15) = v17;
      }

      if (v9 == ++v15)
      {
        v15 = v9;
        break;
      }
    }
  }

  *a7 = v15;
  return v15;
}

__objc2_class **__NSCFDictionaryCreateTransfer(__objc2_class **a1, unint64_t *a2, unint64_t *a3, unint64_t a4)
{
  if (__FoundationPresent_static_init_0 != -1)
  {
    __NSCFDictionaryCreateTransfer_cold_1();
  }

  if (!__FoundationPresent_present_0 || &__kCFAllocatorSystemDefault != a1 && (a1 || &__kCFAllocatorSystemDefault != CFAllocatorGetDefault()))
  {
    return 0;
  }

  if (a4 == 1)
  {
    v9 = *a2;
    v10 = *a3;

    return __NSSingleEntryDictionaryI_new(v9, v10, 12);
  }

  else if (a4)
  {

    return __NSDictionaryI_new(a2, a3, 0, a4, 12);
  }

  else
  {

    return &__NSDictionary0__struct;
  }
}

CFMutableDictionaryRef __CFPropertyListCreateFilteredDictionary(const __CFAllocator *a1, const __CFSet *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, const __CFDictionary *a10, const __CFSet *a11, uint64_t a12)
{
  v86 = *MEMORY[0x1E69E9840];
  cf = 0;
  theSet = 0;
  __CFPropertyListCreateSplitKeypaths(&__kCFAllocatorSystemDefault, a2, &theSet, &cf);
  if (!theSet)
  {
    return 0;
  }

  if (a5 < 8)
  {
    goto LABEL_37;
  }

  v19 = *(a6 + 24) - 1;
  if (v19 < a5)
  {
    goto LABEL_37;
  }

  v20 = (a3 + a5);
  if (a3 + a5 == -1)
  {
    goto LABEL_37;
  }

  v21 = *v20;
  if ((*v20 & 0xF0) != 0xD0)
  {
    goto LABEL_37;
  }

  v22 = (v20 + 1);
  v23 = v21 & 0xF;
  if ((v21 & 0xF) != 0xF)
  {
    goto LABEL_26;
  }

  if (a3 + v19 < v22)
  {
    goto LABEL_37;
  }

  v24 = v20 + 2;
  v25 = *v22;
  if ((*v22 & 0xF0) != 0x10)
  {
    goto LABEL_37;
  }

  v26 = v25 & 0xF;
  v27 = 1 << (v25 & 0xF);
  if (__CFADD__(v27, v24) || v22 + v27 > a3 + v19)
  {
    goto LABEL_37;
  }

  if (v27 > 3u)
  {
    if (v27 == 4)
    {
      v23 = bswap32(*(v22 + 1));
      goto LABEL_25;
    }

    if (v27 == 8)
    {
      v23 = bswap64(*(v22 + 1));
      goto LABEL_24;
    }

LABEL_18:
    if (v26 > 7)
    {
      v23 = 0;
      goto LABEL_25;
    }

    v23 = 0;
    v28 = v27;
    v29 = v22 + 1;
    do
    {
      v30 = *v29++;
      v23 = v30 | (v23 << 8);
      --v28;
    }

    while (v28);
LABEL_24:
    if ((v23 & 0x8000000000000000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_25;
  }

  if (v27 == 1)
  {
    v23 = *v24;
    goto LABEL_25;
  }

  if (v27 != 2)
  {
    goto LABEL_18;
  }

  v23 = __rev16(*(v22 + 1));
LABEL_25:
  v22 = &v24[v27];
LABEL_26:
  if (v23)
  {
    if (!is_mul_ok(2 * v23, *(a6 + 7)))
    {
      goto LABEL_37;
    }

    v31 = 2 * v23 * *(a6 + 7);
    v71 = v23;
  }

  else
  {
    v71 = 0;
    v31 = 0;
  }

  if (__CFADD__(v31, v22) || a3 + v19 < v22 + v31 - 1)
  {
LABEL_37:
    CFRelease(theSet);
    if (cf)
    {
      CFRelease(cf);
    }

    return 0;
  }

  v72 = *(a6 + 7);
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  Count = CFSetGetCount(theSet);
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = ____CFPropertyListCreateFilteredDictionary_block_invoke;
  v74[3] = &unk_1E6D7D4A0;
  v74[4] = &v75;
  CFSetApply(theSet, v74);
  *buffer = 0;
  v85 = 0;
  if (CFSetGetCount(theSet) != 1)
  {
    goto LABEL_41;
  }

  values[0] = 0;
  CFSetGetValues(theSet, values);
  CStringPtr = CFStringGetCStringPtr(values[0], 0);
  if (!CStringPtr)
  {
    if (CFStringGetCString(values[0], buffer, 16, 0))
    {
      CStringPtr = buffer;
      goto LABEL_36;
    }

LABEL_41:
    v68 = 0;
    v69 = 0;
    goto LABEL_42;
  }

LABEL_36:
  v69 = CStringPtr;
  v68 = strlen(CStringPtr);
LABEL_42:
  Mutable = CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v23)
  {
    v35 = 0;
    v67 = v23 * v72;
    v73 = a3 + 8;
    if (v68)
    {
      v36 = v69 == 0;
    }

    else
    {
      v36 = 1;
    }

    v37 = v36;
    v70 = v37;
    if (a7)
    {
      v38 = 0;
    }

    else
    {
      v38 = values;
    }

    v66 = v38;
    do
    {
      if (!v76[3])
      {
        break;
      }

      if (v73 > v22 || (v39 = v35, v40 = *(a6 + 24), v41 = *(a6 + 7), a3 + v40 - v41 < v22))
      {
LABEL_137:
        CFRelease(Mutable);
LABEL_139:
        Mutable = 0;
        break;
      }

      if (*(a6 + 7) <= 1u)
      {
        v42 = *(a6 + 7);
        if (!*(a6 + 7))
        {
          goto LABEL_68;
        }

        if (v41 == 1)
        {
          v42 = *v22;
          goto LABEL_68;
        }
      }

      else
      {
        switch(v41)
        {
          case 2:
            v42 = __rev16(*v22);
            goto LABEL_68;
          case 4:
            v42 = bswap32(*v22);
            goto LABEL_68;
          case 8:
            v42 = bswap64(*v22);
            goto LABEL_68;
        }
      }

      v42 = 0;
      v43 = v22;
      do
      {
        v44 = *v43;
        v43 = (v43 + 1);
        v42 = v44 | (v42 << 8);
        --v41;
      }

      while (v41);
LABEL_68:
      if (*(a6 + 8) <= v42)
      {
        goto LABEL_137;
      }

      v45 = *(a6 + 6);
      v46 = (a3 + v40 + v42 * v45);
      if (*(a6 + 6) <= 1u)
      {
        if (!*(a6 + 6))
        {
          goto LABEL_81;
        }

        if (v45 == 1)
        {
          v45 = *v46;
          goto LABEL_81;
        }
      }

      else
      {
        switch(v45)
        {
          case 2:
            v45 = __rev16(*v46);
            goto LABEL_81;
          case 4:
            v45 = bswap32(*v46);
            goto LABEL_81;
          case 8:
            v45 = bswap64(*v46);
            goto LABEL_81;
        }
      }

      v47 = *(a6 + 6);
      v45 = 0;
      do
      {
        v48 = *v46;
        v46 = (v46 + 1);
        v45 = v48 | (v45 << 8);
        --v47;
      }

      while (v47);
LABEL_81:
      v49 = theSet;
      Copy = 0;
      if ((v70 & 1) == 0 && (*(a3 + v45) & 0xF0) == 0x50)
      {
        Copy = 0;
        values[0] = MEMORY[0x1E69E9820];
        values[1] = 3221225472;
        values[2] = ____CFPropertyListTryFilteredDictionaryASCIIFastPath_block_invoke;
        values[3] = &__block_descriptor_64_e12_B24__0r_8q16l;
        values[4] = v69;
        values[5] = v68;
        values[6] = &Copy;
        values[7] = a1;
        v50 = __CFBinaryPlistParseASCIIString(a3, v40 - 1, (a3 + v45), values) ^ 1;
        goto LABEL_97;
      }

      values[0] = 0;
      v81 = 0;
      if (__CFBinaryPlistCreateObjectFiltered(a3, a4, v45, a6, &__kCFAllocatorSystemDefault, 0xFFFFFFFF80000000, a9, a10, a11, 0, 0, values, &v81))
      {
        if (v81 - 17 >= 3 && v81 != 0)
        {
          if (v81 == 7 && __CFPropertyListKeyPassesFilterSet(values[0], v49))
          {
            Copy = CFStringCreateCopy(a1, values[0]);
          }

          if (values[0])
          {
            CFRelease(values[0]);
          }

          v50 = 0;
LABEL_97:
          v52 = Copy;
          if (Copy)
          {
            goto LABEL_99;
          }

          goto LABEL_98;
        }
      }

      v52 = 0;
      v50 = 1;
LABEL_98:
      if (v50)
      {
        goto LABEL_137;
      }

LABEL_99:
      v53 = v39;
      if (!v52)
      {
        goto LABEL_133;
      }

      v54 = (v22 + v67);
      if (v73 > v22 + v67 || (v55 = a3 + *(a6 + 24), v56 = *(a6 + 7), v55 - v56 < v54))
      {
LABEL_138:
        CFRelease(v52);
        CFRelease(Mutable);
        goto LABEL_139;
      }

      if (*(a6 + 7) <= 1u)
      {
        v57 = *(a6 + 7);
        if (!*(a6 + 7))
        {
          goto LABEL_114;
        }

        if (v56 == 1)
        {
          v57 = *v54;
          goto LABEL_114;
        }
      }

      else
      {
        switch(v56)
        {
          case 2:
            v57 = __rev16(*v54);
            goto LABEL_114;
          case 4:
            v57 = bswap32(*v54);
            goto LABEL_114;
          case 8:
            v57 = bswap64(*v54);
            goto LABEL_114;
        }
      }

      v57 = 0;
      do
      {
        v58 = *v54;
        v54 = (v54 + 1);
        v57 = v58 | (v57 << 8);
        --v56;
      }

      while (v56);
LABEL_114:
      if (*(a6 + 8) <= v57)
      {
        goto LABEL_138;
      }

      v59 = *(a6 + 6);
      v60 = (v55 + v57 * v59);
      if (*(a6 + 6) <= 1u)
      {
        if (*(a6 + 6))
        {
          if (v59 != 1)
          {
LABEL_125:
            v61 = *(a6 + 6);
            v59 = 0;
            do
            {
              v62 = *v60;
              v60 = (v60 + 1);
              v59 = v62 | (v59 << 8);
              --v61;
            }

            while (v61);
            goto LABEL_127;
          }

          v59 = *v60;
        }
      }

      else
      {
        switch(v59)
        {
          case 2:
            v59 = __rev16(*v60);
            break;
          case 4:
            v59 = bswap32(*v60);
            break;
          case 8:
            v59 = bswap64(*v60);
            break;
          default:
            goto LABEL_125;
        }
      }

LABEL_127:
      values[0] = 0;
      if (!__CFBinaryPlistCreateObjectFiltered(a3, a4, v59, a6, a1, a8, a9, a10, a11, a12 + 1, cf, v66, 0))
      {
        goto LABEL_138;
      }

      v63 = v76[3];
      v64 = v63 < 1;
      v65 = v63 - 1;
      if (!v64)
      {
        v76[3] = v65;
      }

      if (values[0])
      {
        CFDictionarySetValue(Mutable, v52, values[0]);
        CFRelease(values[0]);
      }

      CFRelease(v52);
      v53 = v39;
LABEL_133:
      v22 = (v22 + *(a6 + 7));
      v35 = v53 + 1;
    }

    while (v35 != v71);
  }

  if (theSet)
  {
    CFRelease(theSet);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  _Block_object_dispose(&v75, 8);
  return Mutable;
}

void sub_18311D388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _CFPropertyListCreateWithData(__objc2_class **a1, CFDataRef theData, unsigned int a3, CFTypeRef *a4, char a5, void *a6, const __CFSet *a7, uint64_t *a8)
{
  v10 = BYTE1(a3) | (a3 >> 9) | (a3 >> 10);
  if (BYTE1(a3) & 1 | ((a3 & 0x200) != 0) | ((a3 & 0x400) != 0))
  {
    v11 = (a3 >> 10) & 1;
  }

  else
  {
    v11 = 1;
  }

  if (BYTE1(a3) & 1 | ((a3 & 0x200) != 0) | ((a3 & 0x400) != 0))
  {
    v12 = (a3 >> 8) & 1;
  }

  else
  {
    v12 = 1;
  }

  if (!theData || !CFDataGetLength(theData))
  {
    if (!a4)
    {
      return 0;
    }

    Error = __CFPropertyListCreateError(3840, @"Cannot parse a NULL or zero-length data");
LABEL_17:
    v18 = 0;
    *a4 = Error;
    return v18;
  }

  if (((a3 & 0x200) != 0 || (v10 & 1) == 0) && __CFTryParseBinaryPlist(a1, theData, a3, a8, 0))
  {
    if (a6)
    {
      *a6 = 200;
    }

    return 1;
  }

  if (!(v11 | v12))
  {
    if (!a4)
    {
      return 0;
    }

    Error = __CFPropertyListCreateError(3840, @"Unsupported property list");
    goto LABEL_17;
  }

  v48 = a5;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v22 = Length;
  if (Length < 5)
  {
    if (Length != 4)
    {
      if (Length < 3)
      {
LABEL_51:
        v26 = 0;
        goto LABEL_52;
      }

      v23 = *BytePtr;
LABEL_36:
      switch(v23)
      {
        case 0:
          goto LABEL_54;
        case 254:
          v25 = BytePtr[1];
          if (v25 == 255)
          {
            v47 = a6;
            v24 = 268435712;
            goto LABEL_55;
          }

          break;
        case 255:
          v25 = BytePtr[1];
          if (v25 == 254)
          {
            v47 = a6;
LABEL_44:
            v24 = 335544576;
LABEL_55:
            v28 = 2;
            goto LABEL_56;
          }

          break;
        default:
          v25 = BytePtr[1];
          break;
      }

      goto LABEL_48;
    }

    v23 = *BytePtr;
  }

  else
  {
    v23 = *BytePtr;
    if (v23 == 255)
    {
      v25 = BytePtr[1];
      if (v25 == 254)
      {
        v47 = a6;
        if (!BytePtr[2] && !BytePtr[3])
        {
          v24 = 469762304;
          goto LABEL_86;
        }

        goto LABEL_44;
      }

LABEL_48:
      if (v25)
      {
        goto LABEL_49;
      }

LABEL_54:
      v47 = a6;
      v24 = 256;
      goto LABEL_55;
    }

    if (!*BytePtr)
    {
      if (!BytePtr[1] && BytePtr[2] == 254 && BytePtr[3] == 255)
      {
        v47 = a6;
        v24 = 402653440;
LABEL_86:
        v28 = 4;
        goto LABEL_56;
      }

      goto LABEL_54;
    }
  }

  if (v23 != 239)
  {
    goto LABEL_36;
  }

  v25 = BytePtr[1];
  if (v25 != 187)
  {
    goto LABEL_48;
  }

  if (BytePtr[2] == 191)
  {
    v26 = 3;
LABEL_52:
    v27 = v48;
    return _CFPropertyListCreateFromUTF8Data(a1, theData, v26, 0, 0x8000100u, a3, a4, v27, a6, a7, a8, v11, v12);
  }

LABEL_49:
  if (Length < 5 || strncmp(BytePtr, "<?xml", 5uLL))
  {
    goto LABEL_51;
  }

  i = (BytePtr + 5);
  v35 = v22;
  v36 = &BytePtr[v22];
  if (v22 >= 6uLL)
  {
    v37 = *i;
    v27 = v48;
    if ((v37 & 0xFE) != 0x3E)
    {
      for (i = (BytePtr + 14); i < v36; ++i)
      {
        v38 = *(i - 8);
        if (v37 == 101 && v38 == 110 && *(i - 7) == 99 && *(i - 6) == 111 && *(i - 5) == 100 && *(i - 4) == 105 && *(i - 3) == 110 && *(i - 2) == 103 && *(i - 1) == 61)
        {
          goto LABEL_76;
        }

        v26 = 0;
        v37 = v38;
        if ((v38 & 0xFE) == 0x3E)
        {
          return _CFPropertyListCreateFromUTF8Data(a1, theData, v26, 0, 0x8000100u, a3, a4, v27, a6, a7, a8, v11, v12);
        }
      }

      v43 = __CFPropertyListCreateError(3840, @"End of buffer while looking for encoding name", v26);
      goto LABEL_88;
    }

LABEL_84:
    v26 = 0;
    return _CFPropertyListCreateFromUTF8Data(a1, theData, v26, 0, 0x8000100u, a3, a4, v27, a6, a7, a8, v11, v12);
  }

LABEL_76:
  v27 = v48;
  if (i >= v36)
  {
    goto LABEL_84;
  }

  v39 = *i;
  if (v39 != 39 && v39 != 34)
  {
    goto LABEL_84;
  }

  v40 = (i + 1);
  if (i + 1 >= v36)
  {
    goto LABEL_84;
  }

  v41 = 0;
  v42 = &BytePtr[v35 + ~i];
  while (v40[v41] != v39)
  {
    v26 = 0;
    if (v42 == ++v41)
    {
      return _CFPropertyListCreateFromUTF8Data(a1, theData, v26, 0, 0x8000100u, a3, a4, v27, a6, a7, a8, v11, v12);
    }
  }

  v47 = a6;
  if (v41 == 5 && (*v40 | 0x20) == 0x75 && (*(i + 2) | 0x20) == 0x74 && (*(i + 3) | 0x20) == 0x66 && *(i + 4) == 45 && *(i + 5) == 56)
  {
    goto LABEL_113;
  }

  v44 = CFStringCreateWithBytes(&__kCFAllocatorSystemDefault, v40, v41, 0x201u, 0);
  v45 = CFStringConvertIANACharSetNameToEncoding(v44);
  if (v45 == -1)
  {
    v43 = __CFPropertyListCreateError(3840, @"Encountered unknown encoding (%@)", v44);
    if (v44)
    {
      CFRelease(v44);
    }

    goto LABEL_88;
  }

  v24 = v45;
  if (v44)
  {
    CFRelease(v44);
  }

  if (v24 == 134217984)
  {
LABEL_113:
    v26 = 0;
    a6 = v47;
    return _CFPropertyListCreateFromUTF8Data(a1, theData, v26, 0, 0x8000100u, a3, a4, v27, a6, a7, a8, v11, v12);
  }

  v43 = 0;
  v28 = 0;
  if (v24)
  {
LABEL_56:
    v29 = CFDataGetBytePtr(theData);
    v30 = CFDataGetLength(theData);
    v31 = CFStringCreateWithBytes(a1, &v29[v28], v30 - v28, v24, 0);
    if (v31)
    {
      v32 = v31;
      UTF8DataFromString = _createUTF8DataFromString(a1, v31);
      v18 = _CFPropertyListCreateFromUTF8Data(a1, UTF8DataFromString, 0, v32, 0, a3, a4, v48, v47, a7, a8, v11, v12);
      CFRelease(v32);
      if (UTF8DataFromString)
      {
        CFRelease(UTF8DataFromString);
      }

      return v18;
    }

    if (a4)
    {
      Error = __CFPropertyListCreateError(3840, @"Could not determine the encoding of the XML data (string creation failed)");
      goto LABEL_17;
    }

    return 0;
  }

LABEL_88:
  if (a4 && !v43)
  {
    Error = __CFPropertyListCreateError(3840, @"Could not determine the encoding of the XML data");
    goto LABEL_17;
  }

  if (a4 && v43)
  {
    v18 = 0;
    *a4 = v43;
    return v18;
  }

  v18 = 0;
  if (!a4 && v43)
  {
    CFRelease(v43);
    return 0;
  }

  return v18;
}

unint64_t _CFArrayFastEnumeration(unint64_t *a1, void *a2)
{
  if (!a1[2])
  {
    return 0;
  }

  v2 = atomic_load(a1 + 1);
  v3 = v2 & 3;
  if (v3 != 2)
  {
    if (!v3 && !*a2)
    {
      *a2 = 1;
      a2[2] = &_CFArrayFastEnumeration_const_mu;
      v4 = atomic_load(a1 + 1);
      v5 = v4 & 3;
      if (v5 != 2)
      {
        if (!v5)
        {
LABEL_7:
          v6 = atomic_load(a1 + 1);
          v7 = (~v6 & 0xC) == 0;
          v8 = 6;
          if (v7)
          {
            v8 = 11;
          }

          v9 = &a1[v8];
          goto LABEL_16;
        }

        goto LABEL_14;
      }

LABEL_15:
      v9 = (a1[5] + 8 * *a1[5] + 16);
      goto LABEL_16;
    }

    return 0;
  }

  if (*a2)
  {
    return 0;
  }

  *a2 = 1;
  a2[2] = a1 + 3;
  v11 = atomic_load(a1 + 1);
  v12 = v11 & 3;
  if (v12 == 2)
  {
    goto LABEL_15;
  }

  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_14:
  v9 = 0;
LABEL_16:
  a2[1] = v9;
  return a1[2];
}

unint64_t _CFDataGetBytePtrNonObjC(uint64_t a1)
{
  v1 = atomic_load((a1 + 8));
  if ((v1 & 4) != 0)
  {
    return (a1 + 63) & 0xFFFFFFFFFFFFFFF0;
  }

  else
  {
    return *(a1 + 40);
  }
}

CFMutableBagRef CFBagCreateMutable(CFAllocatorRef allocator, CFIndex capacity, const CFBagCallBacks *callBacks)
{
  Generic = __CFBagCreateGeneric(allocator, callBacks, callBacks, v3, v4, v5, v6, v7);
  v15 = Generic;
  if (Generic)
  {
    _CFRuntimeSetInstanceTypeIDAndIsa(Generic, 4uLL, v9, v10, v11, v12, v13, v14);
    if (__CFOASafe == 1)
    {
      __CFSetLastAllocationEventName();
    }
  }

  return v15;
}

CFPropertyListRef CFPropertyListCreateWithData(CFAllocatorRef allocator, CFDataRef data, CFOptionFlags options, CFPropertyListFormat *format, CFErrorRef *error)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  _CFPropertyListCreateWithData(allocator, data, options, error, 1, format, 0, v6);
  return v6[0];
}

CFSetRef _CFPropertyListCopyTopLevelKeys(const __CFAllocator *a1, CFDataRef theData, unsigned int a3, CFTypeRef *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    if (Length >= 8)
    {
      v10 = Length;
      v19 = 0;
      *cf = 0u;
      v21 = 0u;
      v18 = 0;
      if (__CFDataGetBinaryPlistTopLevelInfo(theData, &v19, &v18, cf))
      {
        v11 = __CFBinaryPlistCopyTopLevelKeys(a1, BytePtr, v10, v18, cf);
        if (!a4)
        {
          return v11;
        }

        goto LABEL_19;
      }
    }

    cf[0] = 0;
    _CFPropertyListCreateWithData(a1, theData, a3, a4, 1, 0, 0, cf);
    v12 = cf[0];
    if (cf[0])
    {
      if (CFGetTypeID(cf[0]) == 18)
      {
        Count = CFDictionaryGetCount(v12);
        v14 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
        if (v14)
        {
          v15 = v14;
          CFDictionaryGetKeysAndValues(v12, v14, 0);
          v11 = CFSetCreate(a1, v15, Count, &kCFTypeSetCallBacks);
          free(v15);
          goto LABEL_18;
        }

        if (a4)
        {
          Error = __CFPropertyListCreateError(3840, @"Unable to convert string to correct encoding");
          goto LABEL_16;
        }
      }

      else if (a4)
      {
        Error = __CFPropertyListCreateError(3840, @"Cannot copy top-level keys for plist with non-dictionary root object");
LABEL_16:
        v11 = 0;
        *a4 = Error;
        goto LABEL_18;
      }

      v11 = 0;
LABEL_18:
      CFRelease(v12);
      if (!a4)
      {
        return v11;
      }

      goto LABEL_19;
    }
  }

  v11 = 0;
  if (!a4)
  {
    return v11;
  }

LABEL_19:
  if (!v11)
  {
    *a4 = __CFPropertyListCreateError(3840, @"Unable to extract top-level keys");
  }

  return v11;
}

CFSetRef __CFBinaryPlistCopyTopLevelKeys(const __CFAllocator *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = 0;
  v42[1] = *MEMORY[0x1E69E9840];
  if (a4 < 8)
  {
    return v5;
  }

  v7 = *(a5 + 24) - 1;
  if (v7 < a4)
  {
    return v5;
  }

  v5 = 0;
  v9 = (a2 + a4);
  if (a2 + a4 == -1)
  {
    return v5;
  }

  v10 = *v9;
  if ((*v9 & 0xF0) != 0xD0)
  {
    return v5;
  }

  v13 = (v9 + 1);
  v14 = v10 & 0xF;
  if ((v10 & 0xF) == 0xF)
  {
    if (a2 + v7 < v13)
    {
      return 0;
    }

    v15 = v9 + 2;
    v16 = *v13;
    if ((*v13 & 0xF0) != 0x10)
    {
      return 0;
    }

    v5 = 0;
    v17 = v16 & 0xF;
    v18 = 1 << (v16 & 0xF);
    if (__CFADD__(v18, v15) || v13 + v18 > a2 + v7)
    {
      return v5;
    }

    if (v18 > 3u)
    {
      if (v18 == 4)
      {
        v14 = bswap32(*(v13 + 1));
        goto LABEL_24;
      }

      if (v18 == 8)
      {
        v14 = bswap64(*(v13 + 1));
        goto LABEL_23;
      }
    }

    else
    {
      if (v18 == 1)
      {
        v14 = *v15;
        goto LABEL_24;
      }

      if (v18 == 2)
      {
        v14 = __rev16(*(v13 + 1));
LABEL_24:
        v13 = &v15[v18];
        goto LABEL_25;
      }
    }

    if (v17 > 7)
    {
      v14 = 0;
      goto LABEL_24;
    }

    v14 = 0;
    v19 = v18;
    v20 = v13 + 1;
    do
    {
      v21 = *v20++;
      v14 = v21 | (v14 << 8);
      --v19;
    }

    while (v19);
LABEL_23:
    if ((v14 & 0x8000000000000000) != 0)
    {
      return 0;
    }

    goto LABEL_24;
  }

LABEL_25:
  if (v14)
  {
    v22 = 2 * v14;
    if (!is_mul_ok(2 * v14, *(a5 + 7)))
    {
      return 0;
    }

    v23 = v22 * *(a5 + 7);
  }

  else
  {
    v23 = 0;
    v22 = 0;
  }

  v5 = 0;
  if (__CFADD__(v23, v13) || a2 + v7 < v13 + v23 - 1)
  {
    return v5;
  }

  if (v22 >= 0x402)
  {
    v24 = 512;
  }

  else
  {
    v24 = v22 >> 1;
  }

  v25 = malloc_type_malloc(8 * v24, 0x6004044C4A2DFuLL);
  if (!v25)
  {
    return 0;
  }

  v26 = v25;
  if (!v22)
  {
LABEL_75:
    v5 = CFSetCreate(a1, v26, v22, &kCFTypeSetCallBacks);
    v27 = v22;
    goto LABEL_81;
  }

  v27 = 0;
  if (v22 >> 1 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 >>= 1;
  }

  while (1)
  {
    if (v27 >= v24)
    {
      v24 = (3 * v24) >> 1;
      v28 = malloc_type_realloc(v26, 8 * v24, 0x6004044C4A2DFuLL);
      if (!v28)
      {
        break;
      }

      v26 = v28;
    }

    if (a2 + 8 > v13)
    {
      break;
    }

    v29 = a2 + *(a5 + 24);
    v30 = *(a5 + 7);
    if (v29 - v30 < v13)
    {
      break;
    }

    if (*(a5 + 7) <= 1u)
    {
      v31 = *(a5 + 7);
      if (!*(a5 + 7))
      {
        goto LABEL_56;
      }

      if (v30 == 1)
      {
        v31 = *v13;
        goto LABEL_56;
      }
    }

    else
    {
      switch(v30)
      {
        case 2:
          v31 = __rev16(*v13);
          goto LABEL_56;
        case 4:
          v31 = bswap32(*v13);
          goto LABEL_56;
        case 8:
          v31 = bswap64(*v13);
          goto LABEL_56;
      }
    }

    v31 = 0;
    v32 = v13;
    do
    {
      v33 = *v32;
      v32 = (v32 + 1);
      v31 = v33 | (v31 << 8);
      --v30;
    }

    while (v30);
LABEL_56:
    if (*(a5 + 8) <= v31)
    {
      break;
    }

    v34 = *(a5 + 6);
    v35 = (v29 + v31 * v34);
    if (*(a5 + 6) <= 1u)
    {
      if (*(a5 + 6))
      {
        if (v34 != 1)
        {
LABEL_67:
          v36 = *(a5 + 6);
          v34 = 0;
          do
          {
            v37 = *v35;
            v35 = (v35 + 1);
            v34 = v37 | (v34 << 8);
            --v36;
          }

          while (v36);
          goto LABEL_69;
        }

        v34 = *v35;
      }
    }

    else
    {
      switch(v34)
      {
        case 2:
          v34 = __rev16(*v35);
          break;
        case 4:
          v34 = bswap32(*v35);
          break;
        case 8:
          v34 = bswap64(*v35);
          break;
        default:
          goto LABEL_67;
      }
    }

LABEL_69:
    v41 = 0;
    v42[0] = 0;
    if (__CFBinaryPlistCreateObjectFiltered(a2, a3, v34, a5, a1, 0, 0, 0, 0, 0, 0, v42, &v41))
    {
      v38 = v41 == 7;
    }

    else
    {
      v38 = 0;
    }

    if (!v38)
    {
      if (v42[0])
      {
        CFRelease(v42[0]);
      }

      break;
    }

    v26[v27++] = v42[0];
    v13 = (v13 + *(a5 + 7));
    if (v27 == v22)
    {
      goto LABEL_75;
    }
  }

  v5 = 0;
LABEL_81:
  if (v27)
  {
    v40 = v26;
    do
    {
      if (*v40)
      {
        CFRelease(*v40);
      }

      ++v40;
      --v27;
    }

    while (v27);
  }

  free(v26);
  return v5;
}

uint64_t _CFPropertyListCreateFiltered(const __CFAllocator *a1, CFDataRef theData, uint64_t a3, const __CFSet *a4, CFTypeRef *a5, CFTypeRef *a6)
{
  v6 = 0;
  v24 = *MEMORY[0x1E69E9840];
  if (theData && a4)
  {
    v22 = 0;
    memset(v23, 0, sizeof(v23));
    v21 = 0;
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    cf = 0;
    if (Length >= 8 && (v15 = Length, __CFDataGetBinaryPlistTopLevelInfo(theData, &v22, &v21, v23)))
    {
      v16 = v21;
      TopLevelKeyPaths = __CFPropertyListCreateTopLevelKeyPaths(a1, a4);
      Mutable = CFDictionaryCreateMutable(a1, 0, 0, &kCFTypeDictionaryValueCallBacks);
      v6 = __CFBinaryPlistCreateObjectFiltered(BytePtr, v15, v16, v23, a1, a3, theData & (a3 << 47 >> 63), Mutable, 0, 0, TopLevelKeyPaths, &cf, 0);
      CFRelease(TopLevelKeyPaths);
      CFRelease(Mutable);
    }

    else
    {
      v6 = _CFPropertyListCreateWithData(a1, theData, a3, a6, 1, 0, a4, &cf);
    }

    if (a5 && (v6 & 1) != 0)
    {
      *a5 = cf;
    }

    else if (cf)
    {
      CFRelease(cf);
    }
  }

  return v6 & 1;
}

BOOL __CFSetApply_block_invoke(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = 0;
  (*(*(a1 + 32) + 16))();
  return v2 == 0;
}

uint64_t __CFTryParseBinaryPlist(__objc2_class **a1, CFDataRef theData, uint64_t a3, void *a4, CFTypeRef *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (Length < 8)
  {
    return 0;
  }

  v12 = Length;
  v18 = 0;
  memset(v19, 0, sizeof(v19));
  *v17 = 0;
  if (!__CFDataGetBinaryPlistTopLevelInfo(theData, &v18, v17, v19))
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
  _CFDictionarySetCapacity(Mutable, *(&v19[0] + 1));
  v16 = 0;
  v14 = __CFBinaryPlistCreateObjectFiltered(BytePtr, v12, *v17, v19, a1, a3, 0, Mutable, 0, 0, 0, &v16, 0);
  if (v14)
  {
    if (a4)
    {
      *a4 = v16;
    }
  }

  else
  {
    if (a4)
    {
      *a4 = 0;
    }

    if (a5)
    {
      *a5 = CFRetain(@"binary data is corrupt");
    }
  }

  CFRelease(Mutable);
  return v14;
}

CFMutableArrayRef _CFBundleCopyFindResources(uint64_t a1, const __CFURL *a2, uint64_t a3, const __CFString *a4, const __CFString *a5, const __CFString *a6, const __CFString *a7, int a8, char a9, uint64_t a10)
{
  v107 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    __CFCheckCFInfoPACSignature(a1);
    v17 = _CFGetNonObjCTypeID(a1);
    if (v17 != 31)
    {
      _CFAssertMismatchedTypeID(0x1FuLL, v17);
    }
  }

  v98 = a5;
  v18 = dyld_program_sdk_at_least();
  v99 = a8;
  v94 = a7;
  theString = a4;
  if (!a6 || !v18)
  {
LABEL_16:
    if (!a4)
    {
      goto LABEL_42;
    }

    goto LABEL_17;
  }

  cf2 = a2;
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(&__kCFAllocatorSystemDefault, a6, @"/");
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  if (Count < 1)
  {
    CFRelease(ArrayBySeparatingStrings);
    a2 = cf2;
    if (!a4)
    {
LABEL_42:
      v96 = 0;
      v92 = 1;
      v28 = a5;
      if (!a5)
      {
        goto LABEL_55;
      }

      goto LABEL_50;
    }

LABEL_17:
    range = -1;
    Copy = _CFCreateLastPathComponent(&__kCFAllocatorSystemDefault, a4, &range);
    v27.length = range;
    v28 = a5;
    if (range < 1)
    {
      a4 = 0;
    }

    else
    {
      v27.location = 0;
      a4 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, a4, v27);
      if (range >= 1 && !CFStringGetLength(Copy))
      {
        v29 = range;
        if (v29 == CFStringGetLength(theString) - 1)
        {
          CFRelease(Copy);
          Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, a4);
        }

        v28 = a5;
      }
    }

    if (CFStringGetFileSystemRepresentation(Copy, buffer, 1026))
    {
      CFRelease(Copy);
      v30 = CFStringCreateWithFileSystemRepresentation(&__kCFAllocatorSystemDefault, buffer);
    }

    else
    {
      v30 = Copy;
    }

    if (v30)
    {
      v96 = v30;
      Length = CFStringGetLength(v30);
      if (v28 && Length >= 1 && CFStringGetLength(v28) >= 1)
      {
        MutableCopy = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, v96);
        if (CFStringGetCharacterAtIndex(v28, 0) != 46)
        {
          CFStringAppendCharacters(MutableCopy, _CFBundleCopyFindResources_extensionSep, 1);
        }

        CFStringAppend(MutableCopy, v28);
LABEL_36:
        v92 = 0;
        if (a6)
        {
          goto LABEL_56;
        }

        goto LABEL_37;
      }

      if (CFStringGetLength(v96) >= 1)
      {
        MutableCopy = CFRetain(v96);
        goto LABEL_36;
      }

      v92 = 0;
      if (!v28)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v96 = 0;
      v92 = 1;
      if (!v28)
      {
        goto LABEL_55;
      }
    }

LABEL_50:
    if (CFStringGetLength(v28) >= 1)
    {
      MutableCopy = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, @"_CFBT_");
      if (CFStringGetCharacterAtIndex(v28, 0) != 46)
      {
        CFStringAppendCharacters(MutableCopy, _CFBundleCopyFindResources_extensionSep, 1);
      }

      CFStringAppend(MutableCopy, v28);
      if (a6)
      {
LABEL_56:
        v33 = CFStringGetLength(a6) != 0;
        if (a4)
        {
          goto LABEL_57;
        }

        goto LABEL_38;
      }

LABEL_37:
      v33 = 0;
      if (a4)
      {
LABEL_57:
        v34 = CFStringGetLength(a4) != 0;
        goto LABEL_58;
      }

LABEL_38:
      v34 = 0;
LABEL_58:
      if (!v33 || v34)
      {
        v37 = !v34;
        if ((v33 | v37))
        {
          if ((!v33 | v37))
          {
            v38 = 0;
          }

          else
          {
            v46 = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, a6);
            _CFAppendPathComponent2(v46, a4);
            v38 = v46;
          }

          goto LABEL_66;
        }

        v36 = a4;
      }

      else
      {
        v36 = a6;
      }

      v38 = CFRetain(v36);
LABEL_66:
      cf1 = v38;
      if (a1)
      {
        v39 = _CFBundleLayoutVersion(a1);
      }

      else
      {
        v39 = 0;
      }

      LOBYTE(range) = v39;
      if (a2)
      {
        v40 = _CFBundleCopyLanguageSearchListInDirectory(a2, &range);
        v39 = range;
      }

      else
      {
        v40 = 0;
      }

      v41 = a4;
      if (v39 <= 1)
      {
        if (!v39)
        {
          v42 = @"Resources";
          goto LABEL_84;
        }

        if (v39 == 1)
        {
          v42 = @"Support Files/Resources";
          goto LABEL_84;
        }
      }

      else
      {
        switch(v39)
        {
          case 13:
            v42 = @"WrappedBundle";
            goto LABEL_84;
          case 12:
            v42 = @"WrappedBundle/Contents/Resources";
            goto LABEL_84;
          case 2:
            v42 = @"Contents/Resources";
            goto LABEL_84;
        }
      }

      v42 = &stru_1EF068AA8;
LABEL_84:
      cf = v40;
      v43 = _copyResourceURLsFromBundle(a1, a2, v40, v42, cf1, MutableCopy, a7, a8, a9, v39, a10);
      v44 = v43;
      if (v43)
      {
        v45 = CFGetTypeID(v43);
        if (v45 != CFArrayGetTypeID())
        {
          a8 = v99;
          goto LABEL_123;
        }

        a8 = v99;
        if (CFArrayGetCount(v44))
        {
          goto LABEL_123;
        }
      }

      if ((range & 0xFD) != 0)
      {
        goto LABEL_123;
      }

      if (a1)
      {
        cf2a = *(a1 + 192);
        CFRetain(cf2a);
      }

      else
      {
        v47 = CFURLCopyAbsoluteURL(a2);
        cf2a = CFURLCopyFileSystemPath(v47, kCFURLPOSIXPathStyle);
        v48 = v47;
        a8 = v99;
        CFRelease(v48);
      }

      if (range && !CFEqual(@"/Library/Spotlight", cf2a))
      {
LABEL_122:
        CFRelease(cf2a);
LABEL_123:
        v59 = theString;
        v58 = v96;
        if (a1)
        {
          os_unfair_lock_lock((a1 + 200));
          v60 = *(a1 + 208);
          if (v60 && (a8 || !v44))
          {
            v62 = CFDictionaryGetCount(v60);
            v63 = malloc_type_malloc(8 * v62, 0xC0040B8AA526DuLL);
            v64 = malloc_type_malloc(8 * v62, 0xC0040B8AA526DuLL);
            v87 = v63;
            CFDictionaryGetKeysAndValues(*(a1 + 208), v63, v64);
            v86 = v64;
            if (v62 < 1)
            {
              v66 = v44;
              v61 = v92;
              v72 = v87;
            }

            else
            {
              v66 = 0;
              v67 = v64;
              v68 = v99;
              do
              {
                Resources = _CFBundleCopyFindResources(*v67, 0, v65, theString, v98, a6, v94, v68, a9, a10);
                if (Resources)
                {
                  v70 = v68;
                  v71 = Resources;
                  if (!v70)
                  {
                    goto LABEL_139;
                  }

                  if (!v66)
                  {
                    v66 = CFArrayCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, v44);
                  }

                  v110.length = CFArrayGetCount(v71);
                  v110.location = 0;
                  CFArrayAppendArray(v66, v71, v110);
                  CFRelease(v71);
                }

                ++v67;
                --v62;
                v68 = v99;
              }

              while (v62);
              v71 = v44;
LABEL_139:
              v28 = v98;
              v72 = v87;
              if (v66)
              {
                if (v71)
                {
                  CFRelease(v71);
                }
              }

              else
              {
                v66 = v71;
              }

              v61 = v92;
            }

            free(v72);
            free(v86);
            v44 = v66;
            v59 = theString;
          }

          else
          {
            v61 = v92;
          }

          os_unfair_lock_unlock((a1 + 200));
          v58 = v96;
          if (v61)
          {
            goto LABEL_148;
          }
        }

        else if (v92)
        {
          goto LABEL_148;
        }

        CFRelease(v58);
LABEL_148:
        if (cf1)
        {
          CFRelease(cf1);
        }

        if (v41)
        {
          CFRelease(v41);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        CFRelease(MutableCopy);
        v75 = _CFBundleResourceLogger(v73, v74);
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
        {
          Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
          v77 = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
          v78 = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
          if (a1)
          {
            CFStringAppendFormat(Mutable, 0, @"%@", a1);
          }

          else if (a2)
          {
            CFStringAppendFormat(Mutable, 0, @"CFURL %@", a2);
          }

          if (v59)
          {
            CFStringAppend(v77, v59);
          }

          if (v28)
          {
            CFStringAppendFormat(v77, 0, @" type: %@", v28);
          }

          if (a6)
          {
            CFStringAppendFormat(v77, 0, @" path: %@", a6);
          }

          if (v94)
          {
            CFStringAppendFormat(v77, 0, @" localization: %@", v94);
          }

          if (v44)
          {
            v79 = CFGetTypeID(v44);
            if (v79 == CFArrayGetTypeID())
            {
              v80 = CFArrayGetCount(v44);
              if (v80 >= 1)
              {
                for (i = 0; i < v80; ++i)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v44, i);
                  CFStringAppendFormat(v78, 0, @"%@, ", ValueAtIndex);
                  v80 = CFArrayGetCount(v44);
                }
              }
            }

            else
            {
              CFStringAppendFormat(v78, 0, @"%@", v44);
            }
          }

          else
          {
            CFStringAppendFormat(v78, 0, @"None", v85);
          }

          v84 = _CFBundleResourceLogger(v80, v81);
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
          {
            *buffer = 138478339;
            v102 = Mutable;
            v103 = 2114;
            v104 = v77;
            v105 = 2114;
            v106 = v78;
            _os_log_debug_impl(&dword_1830E6000, v84, OS_LOG_TYPE_DEBUG, "Resource lookup at %{private}@\n\tRequest       : %{public}@\n\tResult        : %{public}@\n", buffer, 0x20u);
          }

          CFRelease(Mutable);
          CFRelease(v77);
          CFRelease(v78);
        }

        return v44;
      }

      if (v44)
      {
        CFRelease(v44);
      }

      v49 = range;
      if (!range)
      {
        v50 = cf1;
        if (!cf1)
        {
LABEL_103:
          v51 = cf;
          if (v49 == 2 && v50)
          {
            if (CFEqual(v50, @"Contents/Resources"))
            {
              goto LABEL_106;
            }

            v49 = range;
            v50 = cf1;
            v51 = cf;
          }

          if (!v49 && v50 && (v53 = CFStringGetLength(v50), v51 = cf, v50 = cf1, v53 >= 11) && (HasPrefix = CFStringHasPrefix(cf1, @"Resources/"), v51 = cf, v50 = cf1, HasPrefix))
          {
            v89 = a6;
            v55 = -10;
            v56 = 10;
          }

          else
          {
            if (range != 2 || !v50)
            {
              v42 = &stru_1EF068AA8;
              v52 = v50;
              goto LABEL_121;
            }

            v52 = v50;
            if (CFStringGetLength(v50) < 20)
            {
              v42 = &stru_1EF068AA8;
              goto LABEL_120;
            }

            if (!CFStringHasPrefix(v52, @"Contents/Resources/"))
            {
              v42 = &stru_1EF068AA8;
              v52 = cf1;
              goto LABEL_120;
            }

            v89 = a6;
            v55 = -19;
            v56 = 19;
            v50 = cf1;
          }

          v57 = v50;
          v109.length = CFStringGetLength(v50) + v55;
          v109.location = v56;
          v52 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, v57, v109);
          a6 = v89;
          v28 = v98;
LABEL_119:
          CFRelease(cf1);
          a8 = v99;
LABEL_120:
          v51 = cf;
LABEL_121:
          cf1 = v52;
          v44 = _copyResourceURLsFromBundle(a1, a2, v51, v42, v52, MutableCopy, v94, a8, a9, range, a10);
          goto LABEL_122;
        }

        if (CFEqual(cf1, @"Resources"))
        {
LABEL_106:
          v52 = &stru_1EF068AA8;
          goto LABEL_119;
        }

        v49 = range;
      }

      v50 = cf1;
      goto LABEL_103;
    }

LABEL_55:
    MutableCopy = CFRetain(@"_CFBAF_");
    if (a6)
    {
      goto LABEL_56;
    }

    goto LABEL_37;
  }

  v21 = Count;
  v88 = a6;
  v22 = 0;
  v23 = 0;
  do
  {
    v24 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v22);
    v25 = v24;
    if (v22 || CFStringCompare(v24, &stru_1EF068AA8, 0))
    {
      if (CFStringCompare(v25, @".", 0))
      {
        if (CFStringCompare(v25, @"..", 0))
        {
          ++v23;
        }

        else
        {
          --v23;
        }

        if (v23 < 0)
        {
          CFRelease(ArrayBySeparatingStrings);
          goto LABEL_45;
        }
      }
    }

    ++v22;
  }

  while (v21 != v22);
  CFRelease(ArrayBySeparatingStrings);
  a4 = theString;
  a6 = v88;
  a2 = cf2;
  if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_45:
  if (!a8)
  {
    return 0;
  }

  return CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
}

void _CFNotificationCenterInitializeDependentNotificationIfNecessary(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = a1;
  os_unfair_lock_lock(&_dependentNotificationLock);
  for (i = 0; i != 8; ++i)
  {
    v2 = (&_unprocessedDependentNotificationLists)[i];
    if (!v2)
    {
      break;
    }

    v3 = *v2;
    if (*v2)
    {
      v4 = v2 + 1;
      do
      {
        v5 = _dependentNotifications;
        if (!_dependentNotifications)
        {
          *&callBacks.version = xmmword_1EF065740;
          *&callBacks.release = *algn_1EF065750;
          *&callBacks.equal = xmmword_1EF065760;
          v5 = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, &callBacks);
          _dependentNotifications = v5;
        }

        CFSetAddValue(v5, v3);
        v6 = *v4++;
        v3 = v6;
      }

      while (v6);
    }

    (&_unprocessedDependentNotificationLists)[i] = 0;
  }

  memset(&callBacks.retain, 0, sizeof(CFSetCallBacks));
  callBacks.version = v11;
  Value = CFSetGetValue(_dependentNotifications, &callBacks);
  os_unfair_lock_unlock(&_dependentNotificationLock);
  if (Value)
  {
    v8 = *(Value + 1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___CFNotificationCenterInitializeDependentNotificationIfNecessary_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = Value;
    if (*v8 != -1)
    {
      dispatch_once(v8, block);
    }
  }
}

CFStringRef CFStringCreateWithFileSystemRepresentation(CFAllocatorRef alloc, const char *buffer)
{
  v4 = CFStringFileSystemEncoding();

  return CFStringCreateWithCString(alloc, buffer, v4);
}

CFDictionaryRef _copyQueryTable(uint64_t a1, CFURLRef relativeURL, const __CFArray *cf, const __CFString *a4, const __CFString *a5)
{
  v7 = cf;
  if (a1 && !cf)
  {
    v7 = _CFBundleCopyLanguageSearchListInBundle(a1);
    goto LABEL_7;
  }

  if (cf)
  {
    CFRetain(cf);
  }

  if (a1)
  {
LABEL_7:
    if (a5)
    {
      MutableCopy = CFStringCreateMutableCopy(0, 0, a4);
      _CFAppendPathComponent2(MutableCopy, a5);
    }

    else
    {
      MutableCopy = CFRetain(a4);
    }

    os_unfair_lock_lock((a1 + 176));
    v11 = *(a1 + 184);
    if (v11)
    {
      Value = CFDictionaryGetValue(v11, MutableCopy);
      if (Value)
      {
        QueryTableAtPath = Value;
        CFRetain(Value);
LABEL_15:
        os_unfair_lock_unlock((a1 + 176));
        goto LABEL_16;
      }
    }

    else
    {
      *(a1 + 184) = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    QueryTableAtPath = _createQueryTableAtPath(*(a1 + 192), v7, a4, a5, *(a1 + 55));
    CFDictionarySetValue(*(a1 + 184), MutableCopy, QueryTableAtPath);
    goto LABEL_15;
  }

  v15 = CFURLCopyAbsoluteURL(relativeURL);
  MutableCopy = CFURLCopyFileSystemPath(v15, kCFURLPOSIXPathStyle);
  CFRelease(v15);
  QueryTableAtPath = _createQueryTableAtPath(MutableCopy, v7, a4, a5, 0);
LABEL_16:
  CFRelease(MutableCopy);
  if (v7)
  {
    CFRelease(v7);
  }

  if (QueryTableAtPath)
  {
    return QueryTableAtPath;
  }

  return CFDictionaryCreate(&__kCFAllocatorSystemDefault, 0, 0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
}

CFMutableArrayRef CFArrayCreateMutableCopy(CFAllocatorRef allocator, CFIndex capacity, CFArrayRef theArray)
{
  if (CF_IS_OBJC(0x13uLL, theArray))
  {
    goto LABEL_2;
  }

  if (__CFArrayGetCallBacks(theArray) != &kCFTypeArrayCallBacks || &__kCFAllocatorSystemDefault != allocator && (allocator || &__kCFAllocatorSystemDefault != CFAllocatorGetDefault()))
  {
    goto LABEL_6;
  }

  if (__FoundationPresent_static_init != -1)
  {
    CFArrayCreateMutableCopy_cold_1();
  }

  if (__FoundationPresent_present)
  {
LABEL_2:
    v6 = [NSMutableArray alloc];

    return [(NSArray *)v6 initWithArray:theArray copyItems:0];
  }

  else
  {
LABEL_6:

    return __CFArrayCreateMutableCopy0(allocator, capacity, theArray);
  }
}

void CFBagRemoveValue(CFMutableBagRef theBag, const void *value)
{
  v10 = atomic_load(theBag + 1);
  if ((v10 & 0x40) != 0)
  {
    CFLog(3, @"%s(): immutable collection %p given to mutating function", v2, v3, v4, v5, v6, v7, "void CFBagRemoveValue(CFMutableBagRef, const void *)");
  }

  CFBasicHashRemoveValue(theBag, value);
}

CFURLRef CFURLCreateCopyAppendingPathComponent(CFAllocatorRef allocator, CFURLRef url, CFStringRef pathComponent, Boolean isDirectory)
{
  v4 = isDirectory;
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLCreateCopyAppendingPathComponent_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, url))
    {
      url = [(__CFURL *)url _cfurl];
    }

    v8 = [(__CFURL *)url _URLByAppendingPathComponent:pathComponent isDirectory:v4 != 0 encodingSlashes:0];

    return v8;
  }

  else
  {

    return __CFURLCreateCopyAppendingPathComponent(allocator, url, pathComponent, v4, @";?");
  }
}

void CFStringSetExternalCharactersNoCopy(CFMutableStringRef theString, UniChar *chars, CFIndex length, CFIndex capacity)
{
  v4 = atomic_load(&theString->info);
  if (v4)
  {
    theString->data = chars;
    v13 = atomic_load(&theString->info);
    v14 = (v13 & 0x60) == 0;
    v15 = 24;
    if (v14)
    {
      v15 = 16;
    }

    *(&theString->isa + v15) = length;
    v16 = theString[1].info | 8;
    theString[1].isa = (2 * capacity);
    theString[1].info = v16;
  }

  else
  {
    v5 = _CFOSLog(theString, chars);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      CFStringSetExternalCharactersNoCopy_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

objc_class *__NSDictionaryParameterCheckIterate(objc_class *result, const char *a2, uint64_t a3)
{
  if (!a3)
  {
    v3 = __CFExceptionProem(result, a2);
    v4 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: block is nil", v3);
    v5 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v4), 0];
    objc_exception_throw(v5);
  }

  return result;
}

void _CFErrorSetCallStackReturnAddresses(void *a1, id value)
{
  if (value)
  {

    objc_setAssociatedObject(a1, "CFErrorCallStacks", value, 0x303);
  }

  else if (atomic_load_explicit(_CFErrorCallStackCaptureEnabled, memory_order_acquire))
  {
    _CFErrorSetCallStackReturnAddresses_cold_1(a1);
  }
}

CFSetRef CFSetCreateCopy(CFAllocatorRef allocator, CFSetRef theSet)
{
  if (CF_IS_OBJC(0x11uLL, theSet))
  {

    return [(__CFSet *)theSet copyWithZone:0];
  }

  else
  {
    Copy = CFBasicHashCreateCopy(allocator, theSet, v4, v5, v6, v7, v8, v9);
    v18 = Copy;
    if (Copy)
    {
      v19 = atomic_load(Copy + 1);
      v20 = v19;
      do
      {
        atomic_compare_exchange_strong(Copy + 1, &v20, v19 | 0x40);
        v21 = v20 == v19;
        v19 = v20;
      }

      while (!v21);
      _CFRuntimeSetInstanceTypeIDAndIsa(Copy, 0x11uLL, v12, v13, v14, v15, v16, v17);
      if (__CFOASafe == 1)
      {
        __CFSetLastAllocationEventName();
      }
    }

    return v18;
  }
}

unint64_t *CFBasicHashCreateCopy(__objc2_class **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 18);
  v11 = 56;
  if ((v10 & 4) == 0)
  {
    v11 = 48;
  }

  if ((v10 & 0x18) != 0)
  {
    v12 = v11 + 8;
  }

  else
  {
    v12 = v11;
  }

  v13 = __CFBasicHashTableSizes[*(a2 + 26)];
  if (v13 < 1)
  {
    v17 = 0;
    v16 = 0;
    v15 = 0;
    goto LABEL_23;
  }

  if (v13 >> 60)
  {
    goto LABEL_82;
  }

  Typed = CFAllocatorAllocateTyped(a1, 8 * v13, 0xE20D7948uLL);
  if (!Typed)
  {
    return 0;
  }

  v15 = Typed;
  if (__CFOASafe == 1)
  {
    __CFSetLastAllocationEventName();
  }

  if ((*(a2 + 18) & 4) != 0)
  {
    v18 = CFAllocatorAllocateTyped(a1, 8 * v13, 0xE20D7948uLL);
    if (!v18)
    {
      return 0;
    }

    v16 = v18;
    if (__CFOASafe == 1)
    {
      __CFSetLastAllocationEventName();
    }
  }

  else
  {
    v16 = 0;
  }

  v19 = *(a2 + 18);
  if ((v19 & 0x18) == 0)
  {
    v17 = 0;
    goto LABEL_23;
  }

  v20 = CFAllocatorAllocateTyped(a1, v13 << ((v19 >> 5) & 3), 0xE20D7948uLL);
  if (!v20)
  {
    return 0;
  }

  v17 = v20;
  if (__CFOASafe == 1)
  {
    __CFSetLastAllocationEventName();
  }

LABEL_23:
  Instance = _CFRuntimeCreateInstance(a1, 3uLL, v12 - 16, 0, a5, a6, a7, a8);
  v21 = Instance;
  if (Instance)
  {
    v23 = *(a2 + 32);
    *(Instance + 1) = *(a2 + 16);
    Instance[4] = v23 & 0xFFFFFFFFFFFFFFF7;
    *(Instance + 8) = 1;
    if (v13)
    {
      v24 = *(a2 + 40);
      v25 = *(a2 + 18);
      if ((v25 & 4) != 0)
      {
        v26 = *(a2 + 48);
      }

      else
      {
        v26 = 0;
      }

      if ((v25 & 0x18) != 0)
      {
        v27 = *(a2 + 40 + (v25 & 0x18));
      }

      else
      {
        v27 = 0;
      }

      Instance[5] = v15;
      v28 = Instance + 5;
      if (v16)
      {
        v28[(*(Instance + 9) >> 2) & 1] = v16;
      }

      __src = v27;
      if (v17)
      {
        *(v28 + (*(Instance + 9) & 0x18)) = v17;
      }

      if (v13 >= 1)
      {
        v29 = 0;
        v45 = (Instance - 2);
        do
        {
          v30 = *(v24 + 8 * v29);
          if ((v30 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            *(*v28 + 8 * v29) = v30;
            if (v16)
            {
              if ((*(v21 + 9) & 4) == 0)
              {
                goto LABEL_81;
              }

              *(v21[6] + 8 * v29) = v30;
            }
          }

          else
          {
            if (v30 == 2814029233)
            {
              v30 = 0;
            }

            if (v30 == 2780474809)
            {
              v31 = -1;
            }

            else
            {
              v31 = v30;
            }

            v32 = *(CFBasicHashCallBackPtrs[(v21[3] >> 39) & 0x1F] + 8 * ((v21[3] >> 34) & 0x1F));
            if (v32 && (v21[4] & 2) == 0)
            {
              v33 = &kCFAllocatorSystemDefault;
              if ((v21 & 0x8000000000000000) == 0)
              {
                v34 = atomic_load(v21 + 1);
                v35 = (v34 & 0x80) == 0;
                v33 = v45;
                if (!v35)
                {
                  v33 = &kCFAllocatorSystemDefault;
                }
              }

              v31 = v32(*v33, v31);
            }

            if (v31)
            {
              v36 = v31;
            }

            else
            {
              v36 = 2814029233;
            }

            if (v36 == -1)
            {
              v36 = 2780474809;
            }

            *(*v28 + 8 * v29) = v36;
            if (v16)
            {
              v37 = *(v26 + 8 * v29);
              if (v37 == 2814029233)
              {
                v37 = 0;
              }

              if (v37 == 2780474809)
              {
                v38 = -1;
              }

              else
              {
                v38 = v37;
              }

              v39 = *(CFBasicHashCallBackPtrs[(v21[3] >> 29) & 0x1F] + 8 * ((v21[3] >> 24) & 0x1F));
              if (v39 && (v21[4] & 2) == 0)
              {
                v40 = &kCFAllocatorSystemDefault;
                if ((v21 & 0x8000000000000000) == 0)
                {
                  v41 = atomic_load(v21 + 1);
                  v35 = (v41 & 0x80) == 0;
                  v40 = v45;
                  if (!v35)
                  {
                    v40 = &kCFAllocatorSystemDefault;
                  }
                }

                v38 = v39(*v40, v38);
              }

              if ((*(v21 + 9) & 4) == 0)
              {
LABEL_81:
                __break(1u);
LABEL_82:
                CFBasicHashCreateCopy_cold_1();
              }

              if (v38)
              {
                v42 = v38;
              }

              else
              {
                v42 = 2814029233;
              }

              if (v42 == -1)
              {
                v42 = 2780474809;
              }

              *(v21[6] + 8 * v29) = v42;
            }
          }

          ++v29;
        }

        while (v13 != v29);
      }

      if (v17 && __src)
      {
        memmove(v17, __src, v13 << ((*(v21 + 9) >> 5) & 3));
      }
    }
  }

  return v21;
}

void CFRunLoopAddObserver(CFRunLoopRef rl, CFRunLoopObserverRef observer, CFRunLoopMode mode)
{
  context[2] = *MEMORY[0x1E69E9840];
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  __CFCheckCFInfoPACSignature(rl);
  v6 = _CFGetNonObjCTypeID(rl);
  if (v6 != 43)
  {
    _CFAssertMismatchedTypeID(0x2BuLL, v6);
  }

  v7 = atomic_load(__CFMainThreadHasExited);
  if (v7)
  {
    CFRunLoopAddObserver_cold_1(rl);
  }

  v8 = atomic_load(rl + 1);
  if ((v8 & 4) == 0)
  {
    v9 = atomic_load(observer + 1);
    if ((v9 & 8) != 0)
    {
      v10 = *(observer + 10);
      if (!v10 || v10 == rl)
      {
        pthread_mutex_lock((rl + 16));
        if (mode == @"kCFRunLoopCommonModes")
        {
          v22 = *(rl + 330);
          if (v22)
          {
            Copy = CFSetCreateCopy(&__kCFAllocatorSystemDefault, v22);
          }

          else
          {
            Copy = 0;
          }

          Mutable = *(rl + 331);
          if (!Mutable)
          {
            Mutable = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeSetCallBacks);
            *(rl + 331) = Mutable;
          }

          CFSetAddValue(Mutable, observer);
          if (!Copy)
          {
            goto LABEL_30;
          }

          context[0] = rl;
          context[1] = observer;
          CFSetApplyFunction(Copy, __CFRunLoopAddItemToCommonModes, context);
        }

        else
        {
          v16 = __CFRunLoopCopyMode(rl, mode, 1, v11, v12, v13, v14, v15);
          if (!v16)
          {
LABEL_30:
            pthread_mutex_unlock((rl + 16));
            return;
          }

          Copy = v16;
          pthread_mutex_lock((v16 + 2));
          v18 = *(Copy + 14);
          if (!v18)
          {
            v18 = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
            *(Copy + 14) = v18;
          }

          v25.length = CFArrayGetCount(v18);
          v25.location = 0;
          if (!CFArrayContainsValue(v18, v25, observer))
          {
            v19 = CFArrayGetCount(*(Copy + 14)) + 1;
            do
            {
              v20 = v19 - 1;
              if (v19 == 1)
              {
                break;
              }

              ValueAtIndex = CFArrayGetValueAtIndex(*(Copy + 14), v19 - 2);
              v19 = v20;
            }

            while (ValueAtIndex[13] > *(observer + 13));
            CFArrayInsertValueAtIndex(*(Copy + 14), v20, observer);
            *(Copy + 18) |= *(observer + 12);
            __CFRunLoopObserverSchedule(observer, rl);
          }

          pthread_mutex_unlock((Copy + 16));
        }

        CFRelease(Copy);
        goto LABEL_30;
      }
    }
  }
}

Boolean CFArrayContainsValue(CFArrayRef theArray, CFRange range, const void *value)
{
  length = range.length;
  location = range.location;
  if (CF_IS_OBJC(0x13uLL, theArray))
  {
    goto LABEL_2;
  }

  v11 = atomic_load(theArray + 1);
  v12 = (v11 >> 2) & 3;
  if (v12)
  {
    if (v12 == 1)
    {
LABEL_2:
      v7 = &kCFTypeArrayCallBacks;
      goto LABEL_3;
    }

    v13 = atomic_load(theArray + 1);
    v14 = v13 & 3;
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = (theArray + 48);
    }

    if (v14 == 2)
    {
      v7 = (theArray + 48);
    }

    else
    {
      v7 = v15;
    }
  }

  else
  {
    v7 = &__kCFNullArrayCallBacks;
  }

LABEL_3:
  if (length < 1)
  {
    return 0;
  }

  while (1)
  {
    v8 = [(__CFArray *)theArray objectAtIndex:location];
    if (v8 == value)
    {
      break;
    }

    equal = v7->equal;
    if (equal)
    {
      if (equal(value, v8))
      {
        break;
      }
    }

    ++location;
    if (!--length)
    {
      return 0;
    }
  }

  return 1;
}

CFIndex _CFNonObjCStringGetBytes(uint64_t theString, CFRange range, uint64_t a3, unsigned int a4, int a5, UniChar *buffer, CFIndex a7, CFIndex *a8)
{
  length = range.length;
  location = range.location;
  v16 = atomic_load((theString + 8));
  if ((v16 & 0x10) == 0)
  {
    v17 = __CFDefaultEightBitStringEncoding;
    if (__CFDefaultEightBitStringEncoding == -1)
    {
      v17 = __CFStringComputeEightBitStringEncoding();
    }

    if (v17 == a3)
    {
LABEL_5:
      v18 = atomic_load((theString + 8));
      v19 = (theString + 16);
      if ((v18 & 0x60) != 0)
      {
        v20 = *v19;
        if (buffer)
        {
LABEL_7:
          if (length >= a7)
          {
            length = a7;
          }

          v21 = atomic_load((theString + 8));
          memmove(buffer, &v20[location + ((v21 >> 2) & 1)], length);
        }
      }

      else
      {
        v24 = atomic_load((theString + 8));
        v20 = &v19[(v24 & 5) != 4];
        if (buffer)
        {
          goto LABEL_7;
        }
      }

      if (a8)
      {
        *a8 = length;
      }

      return length;
    }

    v23 = __CFDefaultEightBitStringEncoding;
    if (__CFDefaultEightBitStringEncoding == -1)
    {
      v23 = __CFStringComputeEightBitStringEncoding();
    }

    if (v23 == 1536)
    {
      if (BYTE1(a3) <= 7u)
      {
        if (BYTE1(a3) <= 1u)
        {
          if (BYTE1(a3))
          {
            if (a3 == 134217984)
            {
              goto LABEL_5;
            }
          }

          else if ((a3 > 0x22 || ((1 << a3) & 0x600000032) == 0) && a3 != 152)
          {
            goto LABEL_5;
          }

          goto LABEL_45;
        }

        if (BYTE1(a3) == 2)
        {
          if (a3 != 518)
          {
            goto LABEL_5;
          }

          goto LABEL_45;
        }

        if (BYTE1(a3) == 6)
        {
          if (a3 == 1536)
          {
            goto LABEL_5;
          }

          goto LABEL_45;
        }

LABEL_34:
        if ((a3 & 0xFF00u) <= 0xC00)
        {
          goto LABEL_5;
        }

        goto LABEL_45;
      }

      if (BYTE1(a3) > 0xAu)
      {
        if (BYTE1(a3) != 11)
        {
          if (BYTE1(a3) == 12)
          {
            goto LABEL_45;
          }

          goto LABEL_34;
        }

        if ((a3 - 3059) > 0xC)
        {
          goto LABEL_5;
        }

        v25 = 1 << (a3 + 13);
        v26 = 4099;
      }

      else
      {
        if (BYTE1(a3) == 8)
        {
          goto LABEL_45;
        }

        if (BYTE1(a3) != 10)
        {
          goto LABEL_34;
        }

        if ((a3 - 2561) > 0xF)
        {
          goto LABEL_5;
        }

        v25 = 1 << (a3 - 1);
        v26 = 32785;
      }

      if ((v25 & v26) == 0)
      {
        goto LABEL_5;
      }
    }
  }

LABEL_45:
  v27.location = location;
  v27.length = length;

  return __CFStringEncodeByteStream(theString, v27, a5, a3, a4, buffer, a7, a8);
}

CFErrorRef CFErrorCreateWithUserInfoKeysAndValues(CFAllocatorRef allocator, CFErrorDomain domain, CFIndex code, const void *const *userInfoKeys, const void *const *userInfoValues, CFIndex numUserInfoValues)
{
  result = CFDictionaryCreate(allocator, userInfoKeys, userInfoValues, numUserInfoValues, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (result)
  {
    v10 = result;
    v11 = CFErrorCreate(allocator, domain, code, result);
    CFRelease(v10);
    return v11;
  }

  return result;
}

uint64_t __CFRunLoopObserverSchedule(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 16));
  v4 = *(a1 + 88);
  if (!v4)
  {
    *(a1 + 80) = a2;
  }

  *(a1 + 88) = v4 + 1;

  return pthread_mutex_unlock((a1 + 16));
}

CFDictionaryRef _CFErrorCreateEmptyDictionary(CFAllocatorRef allocator)
{
  if (allocator)
  {
    v1 = allocator;
  }

  else
  {
    v2 = _CFGetTSD(1);
    if (v2)
    {
      v1 = v2;
    }

    else
    {
      v1 = &__kCFAllocatorSystemDefault;
    }
  }

  if (&__kCFAllocatorSystemDefault == v1 || !v1 && &__kCFAllocatorSystemDefault == CFAllocatorGetDefault())
  {

    return CFRetain(&__NSDictionary0__struct);
  }

  else
  {

    return CFDictionaryCreate(v1, 0, 0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }
}

void __NSDictionaryEnumerate(void *a1, char a2, uint64_t a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = [a1 count];
  if (v6)
  {
    v7 = v6;
    if ((a2 & 1) == 0)
    {
      goto LABEL_20;
    }

    v16 = __CFActiveProcessorCount();
    if (v16 < 2)
    {
      a2 = 0;
    }

    if (a2)
    {
      v8 = 32;
      v9 = 16;
      v10 = 4;
      if (v7 < 4 * v16)
      {
        v10 = 1;
      }

      if (v7 < 16 * v16)
      {
        v9 = v10;
      }

      if (v7 < 32 * v16)
      {
        v8 = v9;
      }

      if (48 * v16 > v7)
      {
        v11 = v8;
      }

      else
      {
        v11 = 48;
      }

      if (v7 < v16 << 6)
      {
        v12 = v11;
      }

      else
      {
        v12 = 64;
      }

      v13 = (v7 + v12 - 1) / v12;
      v14 = _CFAutoreleasePoolPush();
      v15 = [a1 keyEnumerator];
      v37 = 0u;
      v36 = 0u;
      v35 = 0u;
      v38 = 0;
      v34 = 850045857;
      v32[0] = 0;
      v32[1] = v32;
      v32[2] = 0x2020000000;
      v33 = 0;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ____NSDictionaryEnumerate_block_invoke;
      block[3] = &unk_1E6D81EE8;
      block[8] = v12;
      block[9] = &v34;
      block[6] = a3;
      block[7] = v32;
      block[4] = v15;
      block[5] = a1;
      dispatch_apply(v13, 0, block);
      _CFAutoreleasePoolPop(v14);
      _Block_object_dispose(v32, 8);
    }

    else
    {
LABEL_20:
      v17 = _CFAutoreleasePoolPush();
      objc_lookUpClass("__NSCFDictionary");
      if (objc_opt_isKindOfClass())
      {
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = ____NSDictionaryEnumerate_block_invoke_2;
        v30[3] = &unk_1E6D7D948;
        v30[4] = a3;
        CFBasicHashApply(a1, v30);
      }

      else
      {
        if (((v7 >> 59) & 0xF) != 0)
        {
          v28 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", 2 * v7);
          v29 = [NSException exceptionWithName:@"NSGenericException" reason:v28 userInfo:0];
          CFRelease(v28);
          objc_exception_throw(v29);
        }

        if (2 * v7 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2 * v7;
        }

        v21 = MEMORY[0x1EEE9AC00](v20, v18, v19);
        v23 = v30 - v22;
        v34 = 0;
        if (v24 >= 0x101)
        {
          v23 = _CFCreateArrayStorage(v21, 0, &v34);
          v25 = v23;
        }

        else
        {
          v25 = 0;
        }

        [a1 getObjects:&v23[8 * v7] andKeys:v23 count:v7];
        LOBYTE(v32[0]) = 0;
        v26 = v7 - 1;
        do
        {
          v27 = v26;
          __NSDICTIONARY_IS_CALLING_OUT_TO_A_BLOCK__(a3);
          if (v32[0])
          {
            break;
          }

          v26 = v27 - 1;
          v23 += 8;
        }

        while (v27);
        free(v25);
      }

      _CFAutoreleasePoolPop(v17);
    }
  }
}

uint64_t _CFNonObjCEqual(unint64_t *a1, unint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (!a2)
  {
    _CFNonObjCEqual_cold_1();
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v11 = atomic_load((a2 + 8));
    v12 = (v11 >> 8) & 0x3FF;
    goto LABEL_33;
  }

  v4 = 0;
  v5 = *MEMORY[0x1E69E5910];
  if ((~a2 & 0xC000000000000007) == 0)
  {
    v5 = 0;
  }

  v6 = v5 ^ a2;
  do
  {
    if ((v6 & 7) == *(MEMORY[0x1E69E5900] + v4))
    {
      break;
    }

    ++v4;
  }

  while (v4 != 7);
  v7 = v4 | v6;
  v8 = v4 & 7;
  v9 = (v7 >> 55) + 8;
  if (v8 == 7)
  {
    LODWORD(v8) = v9;
  }

  if (v8 > 4)
  {
    if (v8 > 19)
    {
      if (v8 != 20)
      {
        if (v8 != 22)
        {
LABEL_32:
          v12 = [a2 _cfTypeID];
          goto LABEL_33;
        }

LABEL_26:
        v12 = 7;
        goto LABEL_33;
      }
    }

    else if (v8 != 5)
    {
      if (v8 == 6)
      {
        v12 = 42;
        goto LABEL_33;
      }

      goto LABEL_32;
    }

LABEL_27:
    v12 = 1;
    goto LABEL_33;
  }

  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v12 = 22;
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  if (v8)
  {
    if (v8 != 2)
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  if (dyld_program_sdk_at_least())
  {
    v12 = 7;
  }

  else
  {
    v12 = 1;
  }

LABEL_33:
  if (CF_IS_OBJC(v12, a2))
  {
    return [a2 isEqual:a1];
  }

  __CFCheckCFInfoPACSignature_Bridged(a1);
  __CFCheckCFInfoPACSignature_Bridged(a2);
  if ((a1 & 0x8000000000000000) == 0)
  {
    v19 = atomic_load(a1 + 1);
    v20 = (v19 >> 8) & 0x3FF;
    goto LABEL_64;
  }

  v13 = 0;
  v14 = *MEMORY[0x1E69E5910];
  if ((~a1 & 0xC000000000000007) == 0)
  {
    v14 = 0;
  }

  v15 = v14 ^ a1;
  do
  {
    if ((v15 & 7) == *(MEMORY[0x1E69E5900] + v13))
    {
      break;
    }

    ++v13;
  }

  while (v13 != 7);
  v16 = v13 | v15;
  v17 = v13 & 7;
  v18 = (v16 >> 55) + 8;
  if (v17 == 7)
  {
    LODWORD(v17) = v18;
  }

  if (v17 > 4)
  {
    if (v17 > 19)
    {
      if (v17 != 20)
      {
        if (v17 != 22)
        {
LABEL_63:
          v20 = [a1 _cfTypeID];
          goto LABEL_64;
        }

LABEL_57:
        v20 = 7;
        goto LABEL_64;
      }
    }

    else if (v17 != 5)
    {
      if (v17 == 6)
      {
        v20 = 42;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

LABEL_58:
    v20 = 1;
    goto LABEL_64;
  }

  if (v17 > 2)
  {
    if (v17 == 3)
    {
      v20 = 22;
      goto LABEL_64;
    }

    goto LABEL_58;
  }

  if (v17)
  {
    if (v17 != 2)
    {
      goto LABEL_63;
    }

    goto LABEL_57;
  }

  if (dyld_program_sdk_at_least())
  {
    v20 = 7;
  }

  else
  {
    v20 = 1;
  }

LABEL_64:
  if ((a2 & 0x8000000000000000) == 0)
  {
    v27 = atomic_load((a2 + 8));
    v28 = (v27 >> 8) & 0x3FF;
    goto LABEL_93;
  }

  v21 = 0;
  v22 = *MEMORY[0x1E69E5910];
  if ((~a2 & 0xC000000000000007) == 0)
  {
    v22 = 0;
  }

  v23 = v22 ^ a2;
  do
  {
    if ((v23 & 7) == *(MEMORY[0x1E69E5900] + v21))
    {
      break;
    }

    ++v21;
  }

  while (v21 != 7);
  v24 = v21 | v23;
  v25 = v21 & 7;
  v26 = (v24 >> 55) + 8;
  if (v25 == 7)
  {
    LODWORD(v25) = v26;
  }

  if (v25 > 4)
  {
    if (v25 > 19)
    {
      if (v25 != 20)
      {
        if (v25 != 22)
        {
LABEL_92:
          v28 = [a2 _cfTypeID];
          goto LABEL_93;
        }

LABEL_86:
        v28 = 7;
        goto LABEL_93;
      }
    }

    else if (v25 != 5)
    {
      if (v25 == 6)
      {
        v28 = 42;
        goto LABEL_93;
      }

      goto LABEL_92;
    }

LABEL_87:
    v28 = 1;
    goto LABEL_93;
  }

  if (v25 > 2)
  {
    if (v25 == 3)
    {
      v28 = 22;
      goto LABEL_93;
    }

    goto LABEL_87;
  }

  if (v25)
  {
    if (v25 != 2)
    {
      goto LABEL_92;
    }

    goto LABEL_86;
  }

  if (dyld_program_sdk_at_least())
  {
    v28 = 7;
  }

  else
  {
    v28 = 1;
  }

LABEL_93:
  if (v20 != v28)
  {
    return 0;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    v35 = atomic_load(a1 + 1);
    v36 = (v35 >> 8) & 0x3FF;
    goto LABEL_108;
  }

  v29 = 0;
  v30 = *MEMORY[0x1E69E5910];
  if ((~a1 & 0xC000000000000007) == 0)
  {
    v30 = 0;
  }

  v31 = v30 ^ a1;
  do
  {
    if ((v31 & 7) == *(MEMORY[0x1E69E5900] + v29))
    {
      break;
    }

    ++v29;
  }

  while (v29 != 7);
  v32 = v29 | v31;
  v33 = v29 & 7;
  v34 = (v32 >> 55) + 8;
  if (v33 == 7)
  {
    LODWORD(v33) = v34;
  }

  if (v33 <= 4)
  {
    if (v33 <= 2)
    {
      if (!v33)
      {
        if (dyld_program_sdk_at_least())
        {
          v36 = 7;
        }

        else
        {
          v36 = 1;
        }

        goto LABEL_124;
      }

      if (v33 != 2)
      {
        goto LABEL_130;
      }

LABEL_118:
      v36 = 7;
      goto LABEL_124;
    }

    if (v33 == 3)
    {
      v36 = 22;
      goto LABEL_124;
    }

LABEL_119:
    v36 = 1;
    goto LABEL_124;
  }

  if (v33 <= 19)
  {
    if (v33 != 5)
    {
      if (v33 == 6)
      {
        v36 = 42;
        goto LABEL_124;
      }

      goto LABEL_130;
    }

    goto LABEL_119;
  }

  if (v33 == 20)
  {
    goto LABEL_119;
  }

  if (v33 == 22)
  {
    goto LABEL_118;
  }

LABEL_130:
  v36 = [a1 _cfTypeID];
LABEL_108:
  if (v36 > 0x47)
  {
    v37 = (__CFRuntimeClassTables[(v36 - 72) >> 6] + 8 * ((v36 - 72) & 0x3F));
    goto LABEL_125;
  }

LABEL_124:
  v37 = &__CFRuntimeBuiltinClassTable + v36;
LABEL_125:
  v38 = *(*v37 + 5);
  if (!v38)
  {
    return 0;
  }

  return v38(a1, a2);
}