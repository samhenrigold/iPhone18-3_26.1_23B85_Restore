void CFArrayInsertValueAtIndex(CFMutableArrayRef theArray, CFIndex idx, const void *value)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = value;
  if (CF_IS_OBJC(0x13uLL, theArray))
  {

    [(__CFArray *)theArray insertObject:value atIndex:idx];
  }

  else
  {
    _CFArrayReplaceValues(theArray, idx, 0, v6, 1);
  }
}

Boolean CFURLCopyResourcePropertyForKey(CFURLRef url, CFStringRef key, void *propertyValueTypeRefPtr, CFErrorRef *error)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  if (!_CFURLHasFileURLScheme(url, &v14))
  {
    if (!v14)
    {
      CFLog(4, @"CFURLCopyResourcePropertyForKey failed because it was passed a URL which has no scheme", v6, v7, v8, v9, v10, v11, v13);
    }

    goto LABEL_6;
  }

  __CFURLResourceInfoPtr(url);
  if (!_FSURLCopyResourcePropertyForKey())
  {
LABEL_6:
    *propertyValueTypeRefPtr = 0;
  }

  return 1;
}

CFMutableStringRef CFStringCreateMutableWithExternalCharactersNoCopy(CFAllocatorRef alloc, UniChar *chars, CFIndex numChars, CFIndex capacity, CFAllocatorRef externalCharactersAllocator)
{
  v12 = alloc;
  if (&__kCFAllocatorNull == externalCharactersAllocator)
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

  if (externalCharactersAllocator)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (!alloc)
  {
    v15 = _CFGetTSD(1);
    if (v15)
    {
      v12 = v15;
    }

    else
    {
      v12 = &__kCFAllocatorSystemDefault;
    }
  }

  if (v14 == 3)
  {
    v16 = 40;
  }

  else
  {
    v16 = 32;
  }

  Instance = _CFRuntimeCreateInstance(v12, 7uLL, v16, 0, externalCharactersAllocator, v5, v6, v7);
  if (Instance)
  {
    if (__CFOASafe == 1)
    {
      __CFSetLastAllocationEventName();
    }

    v18 = atomic_load(Instance + 1);
    v19 = v18;
    do
    {
      atomic_compare_exchange_strong(Instance + 1, &v19, v18 & 0xFFFFFFFFFFFFFF9FLL | (32 * v14));
      v20 = v19 == v18;
      v18 = v19;
    }

    while (!v20);
    v21 = atomic_load(Instance + 1);
    v22 = v21;
    do
    {
      atomic_compare_exchange_strong(Instance + 1, &v22, v21 | 0x10);
      v20 = v22 == v21;
      v21 = v22;
    }

    while (!v20);
    v23 = atomic_load(Instance + 1);
    v24 = v23;
    do
    {
      atomic_compare_exchange_strong(Instance + 1, &v24, v23 | 1);
      v20 = v24 == v23;
      v23 = v24;
    }

    while (!v20);
    Instance[2] = 0;
    v25 = Instance + 1;
    v26 = atomic_load(Instance + 1);
    v20 = (v26 & 0x60) == 0;
    v27 = 3;
    if (v20)
    {
      v27 = 2;
    }

    Instance[v27] = 0;
    *(Instance + 2) = xmmword_183317CE0;
    v28 = atomic_load(v25);
    if ((~v28 & 0x60) == 0)
    {
      CFRetain(v12);
      Instance[6] = v12;
    }

    Instance[5] |= 4uLL;
    v29 = atomic_load(v25);
    if ((~v29 & 0x60) == 0)
    {
      CFRelease(Instance[6]);
      CFRetain(externalCharactersAllocator);
      Instance[6] = externalCharactersAllocator;
    }

    CFStringSetExternalCharactersNoCopy(Instance, chars, numChars, capacity);
  }

  return Instance;
}

uint64_t __CFToMacRoman(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 > 0x7F)
  {
    if ((a2 + 1277) >= 0x59Du)
    {
      v4 = &macRoman_from_uni;
      v5 = &unk_1833066AC;
      do
      {
        v6 = &v4[2 * ((v5 - v4) >> 3)];
        v7 = *v6;
        if (v7 <= a2)
        {
          if (v7 >= a2)
          {
            LOBYTE(a2) = *(v6 + 2);
            goto LABEL_2;
          }

          v4 = v6 + 2;
        }

        else
        {
          v5 = v6 - 2;
        }
      }

      while (v4 <= v5);
    }

    return 0;
  }

  else
  {
LABEL_2:
    *a3 = a2;
    return 1;
  }
}

Boolean CFDictionaryGetValueIfPresent(CFDictionaryRef theDict, const void *key, const void **value)
{
  v9 = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(0x12uLL, theDict))
  {
    return [(__CFDictionary *)theDict __getValue:value forKey:key];
  }

  v7 = 0u;
  v8 = 0u;
  CFBasicHashFindBucket(theDict, key, &v7);
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

unsigned __int8 *__NSGetSizeAndAlignment(unsigned __int8 *result, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v12 = result;
  v87[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = 0;
  }

  if (a2)
  {
    *a2 = 0;
  }

  while (2)
  {
    v13 = result;
    v15 = *result++;
    v14 = v15;
    v16 = v15;
    switch(v15)
    {
      case '""':
        result = v13 + 2;
LABEL_7:
        if (*(result - 1) == 34)
        {
          continue;
        }

        if (*(result - 1))
        {
          ++result;
          goto LABEL_7;
        }

        v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): unterminated ivar name spec at '%s' in '%s'", v12, a4);
        goto LABEL_174;
      case '#':
      case '*':
      case ':':
      case 'D':
      case 'Q':
      case 'd':
      case 'q':
        goto LABEL_136;
      case '$':
      case '%':
      case '&':
      case '\'':
      case ')':
      case ',':
      case '-':
      case '.':
      case '/':
      case ';':
      case '<':
      case '=':
      case '>':
      case '?':
      case 'A':
      case 'E':
      case 'F':
      case 'G':
      case 'H':
      case 'J':
      case 'K':
      case 'M':
      case 'P':
      case 'U':
      case 'W':
      case 'X':
      case 'Y':
      case 'Z':
      case '\\':
      case ']':
      case '_':
      case 'a':
      case 'b':
      case 'e':
      case 'g':
      case 'h':
      case 'j':
      case 'k':
      case 'm':
      case 'p':
      case 'u':
      case 'w':
      case 'x':
      case 'y':
      case 'z':
        goto LABEL_175;
      case '(':
        v27 = 0;
        v25 = "union";
        v26 = 41;
        goto LABEL_60;
      case '+':
      case '0':
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
      case 'N':
      case 'O':
      case 'R':
      case 'V':
      case 'n':
      case 'o':
      case 'r':
        continue;
      case '@':
        if (a3)
        {
          *a3 = 8;
        }

        if (a2)
        {
          *a2 = 8;
        }

        v28 = *result;
        if (v28 == 34)
        {
          v53 = v13[2];
          if (v13[2])
          {
            result = v13 + 3;
            while (v53 != 34)
            {
              v54 = *result++;
              v53 = v54;
              if (!v54)
              {
                goto LABEL_148;
              }
            }

            goto LABEL_141;
          }

LABEL_148:
          v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): malformed extended class info spec at '%s' in '%s'", v12, a4);
        }

        else
        {
          if (v28 != 63)
          {
            goto LABEL_141;
          }

          result = v13 + 2;
          if (v13[2] != 60)
          {
            goto LABEL_141;
          }

          v29 = v13[3];
          if (v13[3])
          {
            v30 = 0;
            result = v13 + 4;
            do
            {
              if (v29 == 62)
              {
                if (!v30)
                {
                  goto LABEL_141;
                }

                v31 = -1;
              }

              else
              {
                v31 = v29 == 60;
              }

              v30 += v31;
              v32 = *result++;
              v29 = v32;
            }

            while (v32);
          }

          v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): malformed extended block spec at '%s' in '%s'", v12, a4);
        }

        goto LABEL_174;
      case 'B':
      case 'C':
      case 'c':
        if (a3)
        {
          *a3 = 1;
        }

        if (!a2)
        {
          goto LABEL_141;
        }

        v17 = 1;
        goto LABEL_140;
      case 'I':
      case 'L':
      case 'f':
      case 'i':
      case 'l':
        if (a3)
        {
          *a3 = 4;
        }

        if (!a2)
        {
          goto LABEL_141;
        }

        v17 = 4;
        goto LABEL_140;
      case 'S':
      case 's':
        if (a3)
        {
          *a3 = 2;
        }

        if (!a2)
        {
          goto LABEL_141;
        }

        v17 = 2;
        goto LABEL_140;
      case 'T':
      case 't':
        if (a3)
        {
          *a3 = 16;
        }

        if (!a2)
        {
          goto LABEL_141;
        }

        v17 = 16;
        goto LABEL_140;
      case '[':
        if (a6 >= 0x200)
        {
          goto LABEL_178;
        }

        v18 = *result;
        if (!*result)
        {
          goto LABEL_36;
        }

        v19 = 0;
        v20 = 0;
        LOBYTE(v21) = *result;
        while (1)
        {
          if (v21 == 93)
          {
            if (!v20)
            {
              if ((v18 - 48) > 9)
              {
                if (v19)
                {
                  v40 = 0;
                  goto LABEL_91;
                }

                goto LABEL_36;
              }

              v40 = 0;
              v41 = v19;
              while (v40 < 0x19999999)
              {
                v40 = 10 * v40 + (v18 - 48);
                v42 = *++result;
                LOBYTE(v18) = v42;
                --v41;
                if ((v42 - 48) >= 0xA)
                {
                  if (v41)
                  {
                    if (v40 && !is_mul_ok(v40, a7))
                    {
                      v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): cumulative nesting of arrays has reached ridiculous proportions at '%s' in '%s'", v12, a4);
                      goto LABEL_174;
                    }

LABEL_91:
                    v43 = &v13[v19 + 1];
                    v44 = v40 * a7;
                    v86 = 0;
                    v87[0] = 0;
                    v45 = __NSGetSizeAndAlignment(result, v87, &v86, a4, a5, a6 + 1, v40 * a7);
                    v46 = v87[0];
                    if (!v87[0])
                    {
                      v74 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): malformed array spec or array too large at '%s' in '%s'", v12, a4);
                      v75 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v74), 0];
                      objc_exception_throw(v75);
                    }

                    if (!v45 || v45 > v43 || *v45 != 93)
                    {
                      v70 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): malformed array spec at '%s' in '%s'", v12, a4);
                      v71 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v70), 0];
                      objc_exception_throw(v71);
                    }

                    v47 = v86;
                    if (a3)
                    {
                      *a3 = v86;
                    }

                    result = v45 + 1;
                    if (!v47)
                    {
                      v47 = 1;
                      v86 = 1;
                    }

                    if (a2)
                    {
                      if (__CFADD__(v47, v46))
                      {
                        v76 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): array too large at '%s' in '%s'", v12, a4);
                        v77 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v76), 0];
                        objc_exception_throw(v77);
                      }

                      v48 = (v47 + v46 - 1) / v47 * v47;
                      if (v40 > 0xFFFFFFFFFFFFFFFFLL / v48)
                      {
                        v78 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): array too large at '%s' in '%s'", v12, a4);
                        v79 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v78), 0];
                        objc_exception_throw(v79);
                      }

                      if (v44 > 0xFFFFFFFFFFFFFFFFLL / v48)
                      {
                        v80 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): cumulative nested array has reached ridiculous size at '%s' in '%s'", v12, a4);
                        v81 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v80), 0];
                        objc_exception_throw(v81);
                      }

                      v17 = v48 * v40;
LABEL_140:
                      *a2 = v17;
                    }

                    goto LABEL_141;
                  }

LABEL_36:
                  v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): malformed array spec at '%s' in '%s'", v12, a4);
                  goto LABEL_174;
                }
              }

              v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): malformed array spec at '%s' in '%s' -- size is too large", v12, a4);
LABEL_174:
              v67 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23), 0];
              objc_exception_throw(v67);
            }

            v22 = -1;
          }

          else
          {
            v22 = v21 == 91;
          }

          v20 += v22;
          v21 = v13[v19++ + 2];
          if (!v21)
          {
            goto LABEL_36;
          }
        }

      case '^':
        if (a6 >= 0x200)
        {
          goto LABEL_178;
        }

        v24 = *result;
        if (v24 <= 0x5A)
        {
          if (v24 == 40)
          {
            v63 = v13[2];
            if (v13[2])
            {
              v64 = 0;
              result = v13 + 3;
              do
              {
                if (v63 == 41)
                {
                  if (!v64)
                  {
                    goto LABEL_136;
                  }

                  v65 = -1;
                }

                else
                {
                  v65 = v63 == 40;
                }

                v64 += v65;
                v66 = *result++;
                v63 = v66;
              }

              while (v66);
            }

            goto LABEL_172;
          }

          if (v24 == 63)
          {
            goto LABEL_42;
          }

LABEL_135:
          result = __NSGetSizeAndAlignment(result, 0, 0, a4, a5, a6 + 1, a7);
          if (result)
          {
            goto LABEL_136;
          }

LABEL_172:
          v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): malformed pointed-to-type spec at '%s' in '%s'", v12, a4);
          goto LABEL_174;
        }

        if (v24 == 91)
        {
          v55 = v13[2];
          if (v13[2])
          {
            v56 = 0;
            result = v13 + 3;
            do
            {
              if (v55 == 93)
              {
                if (!v56)
                {
                  goto LABEL_136;
                }

                v57 = -1;
              }

              else
              {
                v57 = v55 == 91;
              }

              v56 += v57;
              v58 = *result++;
              v55 = v58;
            }

            while (v58);
          }

          goto LABEL_172;
        }

        if (v24 == 123)
        {
          v59 = v13[2];
          if (v13[2])
          {
            v60 = 0;
            result = v13 + 3;
            do
            {
              if (v59 == 125)
              {
                if (!v60)
                {
                  goto LABEL_136;
                }

                v61 = -1;
              }

              else
              {
                v61 = v59 == 123;
              }

              v60 += v61;
              v62 = *result++;
              v59 = v62;
            }

            while (v62);
          }

          goto LABEL_172;
        }

        if (v24 != 118)
        {
          goto LABEL_135;
        }

LABEL_42:
        result = v13 + 2;
LABEL_136:
        if (a3)
        {
          *a3 = 8;
        }

        if (a2)
        {
          v17 = 8;
          goto LABEL_140;
        }

LABEL_141:
        if (*result == 43)
        {
          ++result;
        }

        return result;
      case 'v':
        goto LABEL_141;
      case '{':
        v25 = "struct";
        v26 = 125;
        v27 = 1;
LABEL_60:
        if (a6 >= 0x200)
        {
LABEL_178:
          v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): type encoding string '%s' contains too many nesting levels", a4);
          goto LABEL_174;
        }

        if (!*result)
        {
          goto LABEL_68;
        }

        v33 = 0;
        v34 = *result;
        v35 = result;
        while (2)
        {
          if (v26 == v34)
          {
            if (!v33)
            {
              v38 = *result;
              for (i = result; ; v38 = *i)
              {
                if (v38 > 0x3Cu)
                {
                  if (v38 == 61)
                  {
                    result = i;
                    goto LABEL_105;
                  }

                  if (v38 == 125)
                  {
                    goto LABEL_79;
                  }
                }

                else if (!v38 || v38 == 41)
                {
LABEL_79:
                  if (*result != 61)
                  {
LABEL_106:
                    v82 = v12;
                    if (result >= v35)
                    {
                      v49 = 0;
                      v50 = 0;
                      goto LABEL_121;
                    }

                    v49 = 0;
                    v50 = 0;
                    while (2)
                    {
                      v84 = 0;
                      v85 = 0;
                      result = __NSGetSizeAndAlignment(result, &v85, &v84, a4, a5, a6 + 1, a7);
                      v51 = v84;
                      if (v50 <= v84)
                      {
                        v50 = v84;
                      }

                      if (v84)
                      {
                        if (v27)
                        {
                          goto LABEL_112;
                        }

LABEL_115:
                        if (v49 <= v85)
                        {
                          v49 = v85;
                        }
                      }

                      else
                      {
                        v84 = 1;
                        v51 = 1;
                        if (!v27)
                        {
                          goto LABEL_115;
                        }

LABEL_112:
                        if (v49 > ~v51 - v85)
                        {
                          v68 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): struct too large at '%s' in '%s'", v82, a4);
                          v69 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v68), 0];
                          objc_exception_throw(v69);
                        }

                        v49 = v85 + (v51 + v49 - 1) / v51 * v51;
                      }

                      if (result >= v35)
                      {
                        if (!result)
                        {
LABEL_123:
                          if (a3)
                          {
                            *a3 = v50;
                          }

                          if (v50 <= 1)
                          {
                            v52 = 1;
                          }

                          else
                          {
                            v52 = v50;
                          }

                          if (a2)
                          {
                            if (__CFADD__(v52, v49))
                            {
                              v72 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): struct or union too large at '%s' in '%s'", v82, a4);
                              v73 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v72), 0];
                              objc_exception_throw(v73);
                            }

                            *a2 = (v52 + v49 - 1) / v52 * v52;
                          }

                          if (result < v35)
                          {
                            goto LABEL_141;
                          }

                          return result;
                        }

LABEL_121:
                        if (*result)
                        {
                          ++result;
                        }

                        goto LABEL_123;
                      }

                      continue;
                    }
                  }

LABEL_105:
                  ++result;
                  goto LABEL_106;
                }

                if (v38)
                {
                  ++i;
                }
              }
            }

            v36 = -1;
          }

          else
          {
            v36 = v34 == v16;
          }

          v33 += v36;
          v37 = *++v35;
          v34 = v37;
          if (!v37)
          {
LABEL_68:
            v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): malformed %s spec at '%s' in '%s'", v25, v12, a4);
            goto LABEL_174;
          }

          continue;
        }

      default:
        if (v14)
        {
LABEL_175:
          v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): unsupported type encoding spec '%c' at '%s' in '%s'", v16, v12, a4);
          goto LABEL_174;
        }

        return v13;
    }
  }
}

void sub_183121EF8(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    if (!v2)
    {
      objc_end_catch();
      JUMPOUT(0x1831219ACLL);
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

id __NSArrayGetIndexesPassingTest(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v52 = *MEMORY[0x1E69E9840];
  if (![a1 count] || ((a3 & 0x1000000000000000) != 0 ? (v7 = objc_msgSend(a4, "firstIndex"), v8 = objc_msgSend(a4, "lastIndex")) : (v7 = 0, v8 = objc_msgSend(a1, "count") - 1), v7 == 0x7FFFFFFFFFFFFFFFLL || v8 == 0x7FFFFFFFFFFFFFFFLL))
  {
    __CFLookUpClass("NSIndexSet");
    v10 = objc_opt_new();

    return v10;
  }

  else
  {
    if (a3)
    {
      v9 = __CFActiveProcessorCount();
      if (v9 < 2)
      {
        a3 &= ~1uLL;
      }
    }

    else
    {
      v9 = 1;
    }

    __CFLookUpClass("NSMutableIndexSet");
    v37 = objc_opt_new();
    if ((a3 & 3) != 0)
    {
      v12 = (v8 - v7 + 1) / v9 / v9;
      if (v12 >= 0x10)
      {
        if (v12 <= 0x1000)
        {
          v13 = (v12 + 15) & 0x3FF0;
        }

        else
        {
          v13 = 4096;
        }
      }

      else
      {
        v13 = 16;
      }

      v20 = v13 + v8 - v7;
      if (a3)
      {
        v45 = 0u;
        v44 = 0u;
        v43 = 0u;
        v46 = 0;
        v42 = 850045857;
        v40[0] = 0;
        v40[1] = v40;
        v40[2] = 0x2020000000;
        v41 = 0;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = ____NSArrayGetIndexesPassingTest_block_invoke;
        block[3] = &unk_1E6D823B0;
        block[8] = v40;
        block[9] = v7;
        block[10] = v13;
        block[11] = v8;
        block[4] = a1;
        block[5] = a4;
        block[6] = v37;
        block[7] = a2;
        block[12] = a3;
        block[13] = &v42;
        dispatch_apply(v20 / v13, 0, block);
        _Block_object_dispose(v40, 8);
      }

      else
      {
        v32 = v8;
        contexta = a1;
        v36 = a4;
        if (v13 <= v20)
        {
          v21 = v7;
          v22 = 0;
          v23 = v13 - 1;
          v24 = 1;
          v25 = -v7;
          v26 = v32;
          v27 = v20 / v13;
          do
          {
            if ((a3 & 2) != 0)
            {
              if (v23 >= v25 + v26)
              {
                v29 = v21;
              }

              else
              {
                v29 = 1 - v13 + v26;
              }

              v28 = v26;
            }

            else
            {
              if (v23 >= v25 + v26)
              {
                v28 = v32;
              }

              else
              {
                v28 = v23 + v22 * v13 + v21;
              }

              v29 = v7;
            }

            v30 = __NSArrayChunkIterate(contexta, a3, v29, v28, v36, a2, 0, v37, 0);
            if (v24 >= v27)
            {
              break;
            }

            ++v22;
            v26 -= v13;
            v7 += v13;
            ++v24;
          }

          while (!v30);
        }
      }
    }

    else
    {
      context = _CFAutoreleasePoolPush();
      LOBYTE(v42) = 0;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v14 = [a1 countByEnumeratingWithState:&v48 objects:v47 count:16];
      if (v14)
      {
        v15 = v14;
        v35 = a4;
        v16 = 0;
        v17 = 0;
        v18 = *v49;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v49 != v18)
            {
              objc_enumerationMutation(a1);
            }

            if ((a3 & 0x1000000000000000) == 0 || v7 <= v16 && v16 <= v8 && [v35 containsIndex:v16])
            {
              if (__NSARRAY_IS_CALLING_OUT_TO_A_BOOL_BLOCK__(a2))
              {
                [v37 addIndex:v16];
              }

              if (v17 >= 0x3FF)
              {
                _CFAutoreleasePoolPop(context);
                context = _CFAutoreleasePoolPush();
                v17 = 0;
              }

              else
              {
                ++v17;
              }
            }

            ++v16;
          }

          v15 = [a1 countByEnumeratingWithState:&v48 objects:v47 count:16];
        }

        while (v15);
      }

      _CFAutoreleasePoolPop(context);
    }

    v31 = [v37 copy];

    return v31;
  }
}

Class __CFLookUpClass(const char *a1)
{
  result = objc_lookUpClass(a1);
  if (!result)
  {
    if (!dlopen("/System/Library/Frameworks/Foundation.framework/Foundation", 5))
    {
      dlerror();
      CFLog(3, @"*** Error: Could not load Foundation for class %s; error is '%s'; if this seems unreasonable, perhaps seatbelt has prevented the load due to file access limitations on the process", v3, v4, v5, v6, v7, v8, a1);
    }

    result = objc_lookUpClass(a1);
    if (!result)
    {
      if (!strcmp(a1, "NSString") || !strcmp(a1, "NSMutableString"))
      {
        v9 = objc_opt_self();
        ClassPair = objc_allocateClassPair(v9, "NSString", 0x20uLL);
        objc_registerClassPair(ClassPair);
        v11 = objc_allocateClassPair(ClassPair, "NSMutableString", 0x20uLL);
        objc_registerClassPair(v11);

        return objc_lookUpClass(a1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t _NSIsNSURL(uint64_t a1)
{
  if (_NSURLClass)
  {
    if (a1)
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  Class = objc_getClass("NSURL");
  _NSURLClass = Class;
  if (!Class)
  {
    return Class & 1;
  }

  if (!a1)
  {
LABEL_9:
    LOBYTE(Class) = 0;
    return Class & 1;
  }

LABEL_3:
  MethodImplementation = object_getMethodImplementation();
  if (MethodImplementation == MEMORY[0x1E69E58E8])
  {
    LOBYTE(Class) = objc_opt_isKindOfClass();
    return Class & 1;
  }

  return MethodImplementation(a1, sel_isNSURL__);
}

CFComparisonResult CFStringCompareWithOptionsAndLocale(CFStringRef theString1, CFStringRef theString2, CFRange rangeToCompare, CFStringCompareFlags compareOptions, CFLocaleRef locale)
{
  length = rangeToCompare.length;
  location = rangeToCompare.location;
  v331 = *MEMORY[0x1E69E9840];
  v11 = CFStringGetLength(theString2);
  v12 = compareOptions;
  v13 = v11;
  v14 = (locale == 0) & (compareOptions >> 5);
  v299 = compareOptions;
  if (v14 == 1)
  {
    v15 = CFLocaleCopyCurrent();
    v12 = compareOptions;
    locale = v15;
  }

  v16 = v12 & 0x191;
  if (locale)
  {
    SpecialCaseHandlingLanguageIdentifierForLocale = _CFStrGetSpecialCaseHandlingLanguageIdentifierForLocale(locale, 1);
    v12 = v299;
    v271 = SpecialCaseHandlingLanguageIdentifierForLocale;
  }

  else
  {
    v271 = 0;
  }

  v328 = 0;
  v326 = 0u;
  v327 = 0u;
  v324 = 0u;
  v325 = 0u;
  v322 = 0u;
  v323 = 0u;
  v320 = 0u;
  v321 = 0u;
  v318 = 0u;
  v319 = 0u;
  *buffer = 0u;
  *v305 = 0u;
  v306 = 0u;
  v307 = 0u;
  v308 = 0u;
  v309 = 0u;
  v310 = 0u;
  v311 = 0u;
  v312 = 0u;
  v313 = 0u;
  v314 = 0u;
  v315 = 0u;
  v316 = 0;
  v303 = 0;
  v304 = 0;
  *theSet = 0u;
  v302 = 0u;
  v18 = __CFStringFillCharacterSetInlineBuffer(theSet, v12);
  v19 = v299;
  v20 = kCFCompareEqualTo;
  if (v16)
  {
    v21 = 1;
  }

  else
  {
    v21 = v18;
  }

  v280 = v21;
  v288 = v18;
  theString = theString1;
  v273 = v14;
  if ((v299 & 0x40) != 0 || locale)
  {
    v22 = 0;
    goto LABEL_28;
  }

  v22 = 0;
  if (v18)
  {
LABEL_28:
    v30 = v20;
    BitmapPtrForPlane = CFUniCharGetBitmapPtrForPlane(0x6Eu, 0);
    *&v325 = theString;
    *(&v326 + 1) = location;
    *&v327 = length;
    *(&v325 + 1) = CFStringGetCharactersPtr(theString);
    if (*(&v325 + 1))
    {
      CStringPtrInternal = 0;
    }

    else
    {
      CStringPtrInternal = _CFStringGetCStringPtrInternal(theString, 0x600u, 0, 1);
    }

    *&v326 = CStringPtrInternal;
    *(&v327 + 1) = 0;
    v328 = 0;
    *&v313 = theString2;
    *(&v314 + 1) = 0;
    *&v315 = v13;
    CharactersPtr = CFStringGetCharactersPtr(theString2);
    v45 = 0;
    *(&v313 + 1) = CharactersPtr;
    if (!CharactersPtr)
    {
      v45 = _CFStringGetCStringPtrInternal(theString2, 0x600u, 0, 1);
    }

    *&v314 = v45;
    *(&v315 + 1) = 0;
    v316 = 0;
    if (locale)
    {
      v46 = v299;
      LODWORD(v281) = ((v299 & 0x200) == 0) & (v299 >> 7);
      if ((v299 & 0x200) != 0)
      {
        v19 &= ~0x80uLL;
      }

      v47 = v22;
    }

    else
    {
      v47 = 0;
      v46 = v299;
      v281 = (v299 >> 7) & 1;
    }

    v48 = v30;
    v49 = v288;
    v50 = v280;
    v51 = 0;
    v277 = v13;
    v264 = v19;
    if (v22 >= length || v22 >= v13)
    {
      LOBYTE(v265) = 0;
      v57 = v22;
      v56 = 0;
      goto LABEL_388;
    }

    v250 = theString2;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v51 = 0;
    v265 = 0;
    v259 = 0;
    v254 = 0;
    v57 = v22;
    v58 = v47;
    cf = locale;
    v287 = length;
    while (1)
    {
      v266 = v55;
      v267 = v54;
      *v289 = v56;
      v274 = v58;
      v275 = v47;
      while (1)
      {
        v59 = v22;
        v60 = v57;
        v61 = v266;
        v62 = v267;
        v56 = *v289;
        v293 = v57;
LABEL_61:
        v63 = v60 - 4;
        if (v60 < 4)
        {
          v63 = 0;
        }

        v261 = v63;
        v260 = v63 + 64;
        v64 = v60 + 1;
        v65 = v60 - 3;
        if ((v60 + 1) < 4)
        {
          v65 = 0;
        }

        v263 = v65;
        v262 = v65 + 64;
        v66 = v61 <= 0 ? 0 : -1;
        v282 = v66;
        v284 = v60 + 1;
        v272 = v60;
        *v290 = v61;
LABEL_69:
        if (v62)
        {
          v67 = v330[v52++];
          if (v61)
          {
            goto LABEL_71;
          }
        }

        else
        {
          if (v59 < 0 || (v69 = v327, v327 <= v59))
          {
            v67 = 0;
          }

          else
          {
            if (*(&v325 + 1))
            {
              v70 = *(*(&v325 + 1) + 2 * *(&v326 + 1) + 2 * v59);
            }

            else if (v326)
            {
              v70 = *(v326 + *(&v326 + 1) + v59);
            }

            else
            {
              if (v328 <= v59 || (v80 = *(&v327 + 1), *(&v327 + 1) > v59))
              {
                v81 = v59 - 4;
                if (v59 < 4)
                {
                  v81 = 0;
                }

                if (v81 + 64 < v327)
                {
                  v69 = v81 + 64;
                }

                *(&v327 + 1) = v81;
                v328 = v69;
                v332.length = v69 - v81;
                v332.location = *(&v326 + 1) + v81;
                v82 = v52;
                v83 = v48;
                v84 = v51;
                CFStringGetCharacters(v325, v332, buffer);
                v64 = v284;
                v61 = *v290;
                v57 = v293;
                v52 = v82;
                v58 = v274;
                v47 = v275;
                v50 = v280;
                v46 = v299;
                v51 = v84;
                v49 = v288;
                v48 = v83;
                v80 = *(&v327 + 1);
              }

              v70 = buffer[v59 - v80];
            }

            v67 = v70;
            if ((v46 & 1) != 0 && (v70 - 65) <= 0x19u)
            {
              if (v271 && v70 == 73)
              {
                v67 = 73;
              }

              else
              {
                if (v48)
                {
                  v85 = 1;
                }

                else
                {
                  v85 = (v46 & 0x200) == 0;
                }

                if (v85)
                {
                  v67 = v70 | 0x20;
                }
              }
            }
          }

          v304 = 1;
          if (v61)
          {
LABEL_71:
            v68 = v329[v53++];
            break;
          }
        }

        if (v60 < 0 || (v71 = v315, v315 <= v60))
        {
          v68 = 0;
        }

        else
        {
          if (*(&v313 + 1))
          {
            v72 = *(*(&v313 + 1) + 2 * *(&v314 + 1) + 2 * v60);
          }

          else if (v314)
          {
            v72 = *(v314 + *(&v314 + 1) + v60);
          }

          else
          {
            if (v316 <= v60 || (v86 = *(&v315 + 1), *(&v315 + 1) > v60))
            {
              if (v260 < v315)
              {
                v71 = v260;
              }

              *(&v315 + 1) = v261;
              v316 = v71;
              v333.length = v71 - v261;
              v333.location = *(&v314 + 1) + v261;
              v255 = v52;
              v87 = v48;
              v88 = v51;
              CFStringGetCharacters(v313, v333, v305);
              v64 = v284;
              v61 = *v290;
              v57 = v293;
              v52 = v255;
              v58 = v274;
              v47 = v275;
              v50 = v280;
              v46 = v299;
              v51 = v88;
              v49 = v288;
              v48 = v87;
              v86 = *(&v315 + 1);
            }

            v72 = v305[v60 - v86];
          }

          v68 = v72;
          if ((v46 & 1) != 0 && (v72 - 65) <= 0x19u)
          {
            if (v271 && v72 == 73)
            {
              v68 = 73;
            }

            else
            {
              if (v48)
              {
                v89 = 1;
              }

              else
              {
                v89 = (v46 & 0x200) == 0;
              }

              if (v89)
              {
                v68 = v72 | 0x20;
              }
            }
          }
        }

        v303 = 1;
        if (v61 || (v46 & 0x40) == 0 || v62)
        {
          break;
        }

        if (v67 - 48 > 9 || v68 - 48 > 9)
        {
          break;
        }

        *v289 = v56;
        v124 = 0;
        v125 = 0;
        v126 = &buffer[v59 + 1];
        v127 = 2 * v59 + 2;
        v258 = v52;
        do
        {
          v128 = v124;
          v129 = v59 + v124;
          v125 = v67 - 48 + 10 * v125;
          v22 = v129 + 1;
          if (v129 < -1)
          {
            break;
          }

          v130 = v327;
          if (v327 <= v22)
          {
            break;
          }

          if (*(&v325 + 1))
          {
            v131 = (*(&v325 + 1) + 2 * *(&v326 + 1) + v127);
          }

          else
          {
            if (v326)
            {
              v132 = *(v326 + *(&v326 + 1) + v59 + v128 + 1);
              goto LABEL_243;
            }

            if (v328 <= v22 || (v134 = *(&v327 + 1), *(&v327 + 1) > v22))
            {
              v135 = v59 + v128 - 3;
              if (v22 < 4)
              {
                v135 = 0;
              }

              v294 = v126;
              if (v135 + 64 < v327)
              {
                v130 = v135 + 64;
              }

              *(&v327 + 1) = v135;
              v328 = v130;
              v336.length = v130 - v135;
              v336.location = *(&v326 + 1) + v135;
              v136 = v48;
              v137 = v51;
              v285 = v127;
              CFStringGetCharacters(v325, v336, buffer);
              v127 = v285;
              v126 = v294;
              v46 = v299;
              v52 = v258;
              v58 = v274;
              v47 = v275;
              v50 = v280;
              v51 = v137;
              v49 = v288;
              v48 = v136;
              v134 = *(&v327 + 1);
            }

            v131 = &v126[-v134];
          }

          v132 = v131[v128];
LABEL_243:
          v67 = v132;
          v133 = (v132 - 48);
          v124 = v128 + 1;
        }

        while (v133 < 0xA);
        v138 = 0;
        v139 = 0;
        v140 = &v305[v60 + 1];
        v141 = 2 * v60 + 2;
        while (2)
        {
          v142 = v138;
          v139 = v68 - 48 + 10 * v139;
          v57 = v60 + v138 + 1;
          if (v60 >= -1)
          {
            v143 = v315;
            if (v315 > v57)
            {
              if (*(&v313 + 1))
              {
                v144 = (*(&v313 + 1) + 2 * *(&v314 + 1) + v141);
                goto LABEL_258;
              }

              if (v314)
              {
                v145 = *(v314 + *(&v314 + 1) + v60 + v142 + 1);
              }

              else
              {
                if (v316 <= v57 || (v147 = *(&v315 + 1), *(&v315 + 1) > v57))
                {
                  v148 = v60 + v142 - 3;
                  if (v57 < 4)
                  {
                    v148 = 0;
                  }

                  v283 = v141;
                  v286 = v140;
                  if (v148 + 64 < v315)
                  {
                    v143 = v148 + 64;
                  }

                  *(&v315 + 1) = v148;
                  v316 = v143;
                  v337.length = v143 - v148;
                  v337.location = *(&v314 + 1) + v148;
                  v253 = v48;
                  v149 = v51;
                  v295 = v57;
                  CFStringGetCharacters(v313, v337, v305);
                  v141 = v283;
                  v140 = v286;
                  v57 = v295;
                  v46 = v299;
                  v52 = v258;
                  v58 = v274;
                  v47 = v275;
                  v50 = v280;
                  v51 = v149;
                  v49 = v288;
                  v48 = v253;
                  v147 = *(&v315 + 1);
                }

                v144 = &v140[-v147];
LABEL_258:
                v145 = v144[v142];
              }

              v68 = v145;
              v146 = (v145 - 48);
              v138 = v142 + 1;
              if (v146 >= 0xA)
              {
                break;
              }

              continue;
            }
          }

          break;
        }

        if (v125 != v139)
        {
          v247 = v273;
          if (!cf)
          {
            v247 = 0;
          }

          if (v125 >= v139)
          {
            if (v247)
            {
              CFRelease(cf);
            }

            return 1;
          }

          else
          {
            if (v247)
            {
              CFRelease(cf);
            }

            return -1;
          }
        }

        if ((v46 & 0x200) != 0 && !v48)
        {
          if (v128 + 1 < v142 + 1)
          {
            v150 = -1;
          }

          else
          {
            v150 = 1;
          }

          v151 = v265;
          if (v128 != v142)
          {
            v151 = 1;
          }

          v265 = v151;
          if (v128 == v142)
          {
            v48 = 0;
          }

          else
          {
            v48 = v150;
          }

          if (v128 != v142)
          {
            v51 = v60;
          }

          v152 = *v289;
          if (v128 != v142)
          {
            v152 = v59;
          }

          *v289 = v152;
        }

        if (v22 < v287)
        {
          v266 = 0;
          v267 = 0;
          if (v57 < v277)
          {
            continue;
          }
        }

        v22 = v59 + v128 + 1;
        v57 = v60 + v142 + 1;
        locale = cf;
        length = v287;
        v56 = *v289;
        goto LABEL_388;
      }

      if (v67 == v68)
      {
        v55 = v61;
        v57 = v60;
        v22 = v59;
        v54 = v62;
        locale = cf;
LABEL_291:
        length = v287;
        goto LABEL_292;
      }

      if ((v50 & 1) == 0)
      {
        if (!cf)
        {
          goto LABEL_611;
        }

        v74 = _CFCompareStringsWithLocale(buffer, v22, v287 - v22, v305, v57, v277 - v57, v264, cf);
        if (!v273)
        {
          return v74;
        }

        v200 = cf;
        goto LABEL_574;
      }

      if (v67 < v68)
      {
        v74 = kCFCompareLessThan;
      }

      else
      {
        v74 = kCFCompareGreaterThan;
      }

      if (((v48 == 0) & (v46 >> 9)) != 0)
      {
        v48 = v74;
        v51 = v58;
        v56 = v47;
      }

      if (v67 > 0x7F || v68 > 0x7F)
      {
        v76 = 1;
      }

      else
      {
        v76 = v49;
      }

      if ((v76 & 1) == 0)
      {
        if (cf)
        {
          v74 = _CFCompareStringsWithLocale(buffer, v59, v287 - v59, v305, v60, v277 - v60, v264, cf);
          if (!v273)
          {
            return v74;
          }

          v200 = cf;
          goto LABEL_574;
        }

        if ((v46 & 1) == 0)
        {
          return v74;
        }
      }

      if ((v67 & 0xFC00) == 0xD800 && v59 >= -1)
      {
        v77 = v59 + 1;
        v78 = v327;
        if (v327 > v59 + 1)
        {
          if (*(&v325 + 1))
          {
            v79 = *(*(&v325 + 1) + 2 * *(&v326 + 1) + 2 * v77);
          }

          else if (v326)
          {
            v79 = *(v326 + *(&v326 + 1) + v77);
          }

          else
          {
            if (v328 <= v77 || (v90 = *(&v327 + 1), *(&v327 + 1) > v77))
            {
              v91 = v59 - 3;
              if (v77 < 4)
              {
                v91 = 0;
              }

              if (v91 + 64 < v327)
              {
                v78 = v91 + 64;
              }

              *(&v327 + 1) = v91;
              v328 = v78;
              v334.length = v78 - v91;
              v334.location = *(&v326 + 1) + v91;
              v256 = v52;
              v251 = v48;
              v248 = v51;
              CFStringGetCharacters(v325, v334, buffer);
              v64 = v284;
              v61 = *v290;
              v57 = v293;
              v52 = v256;
              v58 = v274;
              v47 = v275;
              v50 = v280;
              v46 = v299;
              v51 = v248;
              v49 = v288;
              v48 = v251;
              v90 = *(&v327 + 1);
            }

            v79 = buffer[v77 - v90];
          }

          if (v79 >> 10 == 55)
          {
            v67 = ((v67 << 10) & 0x36FFC00) - 56613888 + v79;
            v304 = 2;
          }
        }
      }

      if ((v68 & 0xFC00) == 0xD800 && v60 >= -1)
      {
        v92 = v315;
        if (v315 > v64)
        {
          if (*(&v313 + 1))
          {
            v93 = *(*(&v313 + 1) + 2 * *(&v314 + 1) + 2 * v64);
          }

          else if (v314)
          {
            v93 = *(v314 + *(&v314 + 1) + v64);
          }

          else
          {
            if (v316 <= v64 || (v94 = *(&v315 + 1), *(&v315 + 1) > v64))
            {
              if (v262 < v315)
              {
                v92 = v262;
              }

              *(&v315 + 1) = v263;
              v316 = v92;
              v335.length = v92 - v263;
              v335.location = *(&v314 + 1) + v263;
              v257 = v52;
              v252 = v48;
              v95 = v51;
              CFStringGetCharacters(v313, v335, v305);
              v64 = v284;
              v61 = *v290;
              v57 = v293;
              v52 = v257;
              v58 = v274;
              v47 = v275;
              v50 = v280;
              v46 = v299;
              v51 = v95;
              v49 = v288;
              v48 = v252;
              v94 = *(&v315 + 1);
            }

            v93 = v305[v64 - v94];
          }

          if (v93 >> 10 == 55)
          {
            v68 = ((v68 << 10) & 0x36FFC00) - 56613888 + v93;
            v303 = 2;
          }
        }
      }

      if (!v49)
      {
        v54 = v267;
        goto LABEL_312;
      }

      v96 = theSet[1];
      v97 = HIDWORD(theSet[1]);
      v98 = theSet[1] & 4;
      v99 = v98 >> 2;
      if (HIDWORD(theSet[1]) > v67 || v302 <= v67)
      {
        goto LABEL_194;
      }

      if (!HIWORD(v67) && (theSet[1] & 2) == 0)
      {
        if (*(&v302 + 1))
        {
          if (theSet[1])
          {
            v108 = v67 >> 8;
            v109 = *(*(&v302 + 1) + v108);
            if (!*(*(&v302 + 1) + v108))
            {
              if ((theSet[1] & 4) == 0)
              {
                goto LABEL_207;
              }

              goto LABEL_195;
            }

            LOBYTE(v99) = (theSet[1] & 4) == 0;
            if (v109 != 255)
            {
              if ((((*(*(&v302 + 1) + 32 * v109 + (v67 >> 3) + 224) >> (v67 & 7)) & 1) == 0) == (v98 == 0))
              {
                goto LABEL_207;
              }

              goto LABEL_195;
            }

LABEL_194:
            if ((v99 & 1) == 0)
            {
              goto LABEL_207;
            }

            goto LABEL_195;
          }

          v100 = v98 == 0;
          v101 = ((*(*(&v302 + 1) + (v67 >> 3)) >> (v67 & 7)) & 1) == 0;
        }

        else
        {
          v101 = (theSet[1] & 1) == 0;
          v100 = v98 != 0;
        }

        if (((v101 ^ v100) & 1) == 0)
        {
          goto LABEL_207;
        }

LABEL_195:
        if (v52 == v62 && v62 > 0)
        {
          v62 = 0;
        }

        v111 = v304;
        if (v62)
        {
          v111 = 0;
        }

        v59 += v111;
        v64 = v284;
        v53 += v282;
        length = v287;
        v61 = *v290;
        v57 = v293;
        if (v59 >= v287)
        {
          goto LABEL_417;
        }

        goto LABEL_69;
      }

      v102 = v48;
      v103 = v56;
      v104 = v51;
      v105 = v22;
      v106 = v52;
      IsLongCharacterMember = CFCharacterSetIsLongCharacterMember(theSet[0], v67);
      v52 = v106;
      v22 = v105;
      v60 = v272;
      v58 = v274;
      v47 = v275;
      v50 = v280;
      v46 = v299;
      v51 = v104;
      v56 = v103;
      v49 = v288;
      v48 = v102;
      if (IsLongCharacterMember)
      {
        goto LABEL_195;
      }

      v96 = theSet[1];
      v97 = HIDWORD(theSet[1]);
      v98 = theSet[1] & 4;
LABEL_207:
      v112 = v98 != 0;
      if (v97 > v68 || v302 <= v68)
      {
        goto LABEL_220;
      }

      if (HIWORD(v68) || (v96 & 2) != 0)
      {
        v113 = v48;
        v114 = v56;
        v115 = v51;
        v116 = v22;
        v117 = v52;
        v118 = CFCharacterSetIsLongCharacterMember(theSet[0], v68);
        v52 = v117;
        v22 = v116;
        v60 = v272;
        v58 = v274;
        v47 = v275;
        v50 = v280;
        v46 = v299;
        v51 = v115;
        v56 = v114;
        v49 = v288;
        v48 = v113;
        if (!v118)
        {
          goto LABEL_384;
        }

        goto LABEL_221;
      }

      if (*(&v302 + 1))
      {
        if ((v96 & 1) == 0)
        {
          if ((((*(*(&v302 + 1) + (v68 >> 3)) >> (v68 & 7)) & 1) == 0) == (v98 == 0))
          {
            goto LABEL_384;
          }

          goto LABEL_221;
        }

        v121 = *(*(&v302 + 1) + (v68 >> 8));
        if (!*(*(&v302 + 1) + (v68 >> 8)))
        {
          if (!v98)
          {
            goto LABEL_384;
          }

          goto LABEL_221;
        }

        v112 = v98 == 0;
        if (v121 == 255)
        {
LABEL_220:
          if (!v112)
          {
            goto LABEL_384;
          }

          goto LABEL_221;
        }

        v120 = v98 == 0;
        v119 = ((*(*(&v302 + 1) + 32 * v121 + (v68 >> 3) + 224) >> (v68 & 7)) & 1) == 0;
      }

      else
      {
        v119 = (v96 & 1) == 0;
        v120 = v98 != 0;
      }

      if ((v119 ^ v120))
      {
LABEL_221:
        v61 = *v290;
        if (v53 == *v290 && *v290 > 0)
        {
          v61 = 0;
        }

        v123 = v303;
        if (v61)
        {
          v123 = 0;
        }

        v60 += v123;
        length = v287;
        if (v287 <= v59 || (v52 -= v62 > 0, v57 = v293, v60 >= v277))
        {
LABEL_417:
          locale = cf;
          v194 = v277;
          goto LABEL_418;
        }

        goto LABEL_61;
      }

LABEL_384:
      v57 = v60;
      v61 = *v290;
      v266 = *v290;
      v22 = v59;
      v54 = v62;
LABEL_312:
      v157 = v281 ^ 1;
      if (v22 < 1)
      {
        v157 = 1;
      }

      if (v157)
      {
        v159 = v259;
        v55 = v266;
      }

      else
      {
        v55 = v266;
        if (v62)
        {
          v158 = 0;
          if (!v61)
          {
            goto LABEL_327;
          }

LABEL_338:
          if (v158)
          {
            v57 -= v303;
          }
        }

        else
        {
          v160 = BitmapPtrForPlane;
          if (v67 >= 0x10000)
          {
            v161 = v48;
            v268 = v54;
            v162 = v56;
            v163 = v51;
            v164 = v22;
            v165 = v52;
            v296 = v57;
            v160 = CFUniCharGetBitmapPtrForPlane(0x6Eu, HIWORD(v67));
            v57 = v296;
            v46 = v299;
            v52 = v165;
            v22 = v164;
            v58 = v274;
            v47 = v275;
            v50 = v280;
            v51 = v163;
            v56 = v162;
            v55 = v266;
            v54 = v268;
            v49 = v288;
            v48 = v161;
          }

          if (v160)
          {
            v166 = (1 << (v67 & 7)) & *(v160 + (v67 >> 3));
            v158 = v166 != 0;
            if (v166)
            {
              v67 = v68;
            }
          }

          else
          {
            v158 = 0;
          }

          if (*v290)
          {
            goto LABEL_338;
          }

LABEL_327:
          v167 = BitmapPtrForPlane;
          if (v68 >= 0x10000)
          {
            v269 = v54;
            v168 = v48;
            v169 = v56;
            v170 = v51;
            v171 = v22;
            v172 = v52;
            v297 = v57;
            v167 = CFUniCharGetBitmapPtrForPlane(0x6Eu, HIWORD(v68));
            v57 = v297;
            v46 = v299;
            v52 = v172;
            v22 = v171;
            v58 = v274;
            v47 = v275;
            v50 = v280;
            v51 = v170;
            v56 = v169;
            v49 = v288;
            v48 = v168;
            v55 = v266;
            v54 = v269;
          }

          if (!v167)
          {
            goto LABEL_338;
          }

          v173 = (1 << (v68 & 7)) & *(v167 + (v68 >> 3));
          if (v173)
          {
            v174 = v67;
          }

          else
          {
            v174 = v68;
          }

          if ((v158 ^ (v173 != 0)))
          {
            v175 = v303;
            if (!v158)
            {
              v175 = 0;
            }

            v57 -= v175;
            if (v173)
            {
              v22 -= v304;
              v68 = v67;
            }
          }

          else
          {
            v68 = v174;
          }
        }

        v159 = v259;
        v61 = *v290;
      }

      if (v67 == v68)
      {
        locale = cf;
        length = v287;
        goto LABEL_362;
      }

      if (v62)
      {
        v176 = 0;
        locale = cf;
        goto LABEL_360;
      }

      if (!v254 || v254 == v22)
      {
        v298 = v57;
        v249 = v51;
        v177 = v48;
        v300 = 0;
        v178 = v52;
        v179 = __CFStringFoldCharacterClusterAtIndex(v67, buffer, v22, v264, v271, v330, &v304, &v300);
        v54 = v179;
        if (v179 > 0)
        {
          v52 = 1;
        }

        else
        {
          v52 = v178;
        }

        if (v179 > 0)
        {
          v67 = v330[0];
        }

        if (v300 == 1)
        {
          v180 = v22;
          v181 = v22;
          v182 = v52;
          RangeOfCharacterClusterAtIndex = CFStringGetRangeOfCharacterClusterAtIndex(theString, v180, 1);
          v52 = v182;
          v22 = v181;
          v254 = RangeOfCharacterClusterAtIndex + v184;
        }

        else
        {
          v254 = 0;
        }

        locale = cf;
        v58 = v274;
        v47 = v275;
        v48 = v177;
        v49 = v288;
        v51 = v249;
        v57 = v298;
        v46 = v299;
        v50 = v280;
        v55 = v266;
        v61 = *v290;
      }

      else
      {
        v54 = 0;
        locale = cf;
      }

      v176 = v54 == 0;
      if (!v54 && v55 >= 1)
      {
        if (locale)
        {
          v244 = v287 - v47;
LABEL_595:
          v245 = v277 - v58;
          v246 = v58;
          goto LABEL_596;
        }

LABEL_611:
        v199 = v67 >= v68;
        goto LABEL_612;
      }

LABEL_360:
      if (!v61)
      {
        if (v67 != v68)
        {
          v176 = 1;
        }

        if (!v176 || v259 && v259 != v57)
        {
          v55 = 0;
          goto LABEL_291;
        }

        v270 = v54;
        v185 = v52;
        *v291 = v56;
        v186 = v51;
        v187 = v48;
        v300 = 0;
        v188 = v57;
        v189 = __CFStringFoldCharacterClusterAtIndex(v68, v305, v57, v264, v271, v329, &v303, &v300);
        v190 = v329[0];
        if (v189 <= 0)
        {
          v190 = v68;
        }

        else
        {
          v53 = 1;
        }

        if (v189 && v67 == v190)
        {
          v191 = v189;
          if (v300 == 1)
          {
            v192 = CFStringGetRangeOfCharacterClusterAtIndex(v250, v188, 1);
            v159 = v192 + v193;
          }

          else
          {
            v159 = 0;
          }

          length = v287;
          v48 = v187;
          v49 = v288;
          v51 = v186;
          v46 = v299;
          v50 = v280;
          v58 = v274;
          v47 = v275;
          v52 = v185;
          v56 = *v291;
          v57 = v188;
          v54 = v270;
          v55 = v191;
          goto LABEL_362;
        }

        if (!locale)
        {
          v199 = v67 >= v190;
          goto LABEL_612;
        }

        v246 = v274;
        v47 = v275;
        v244 = v287 - v275;
        v245 = v277 - v274;
LABEL_596:
        v74 = _CFCompareStringsWithLocale(buffer, v47, v244, v305, v246, v245, v264, locale);
        if (!v273)
        {
          return v74;
        }

        v200 = locale;
LABEL_574:
        CFRelease(v200);
        return v74;
      }

      length = v287;
      v159 = v259;
LABEL_362:
      v259 = v159;
      if (v54 >= 1 && v55 >= 1)
      {
        while (v52 < v54 && v53 < v55)
        {
          if (v330[v52] != v329[v53])
          {
            goto LABEL_593;
          }

          ++v52;
          ++v53;
        }

        if (v52 < v54 && v53 < v55)
        {
LABEL_593:
          if (locale)
          {
            v244 = length - v47;
            goto LABEL_595;
          }

          v199 = v330[v52] >= v329[v53];
LABEL_612:
          if (v199)
          {
            return 1;
          }

          else
          {
            return -1;
          }
        }
      }

LABEL_292:
      if (v52 == v54 && v54 > 0)
      {
        v54 = 0;
      }

      if (v53 == v55 && v55 > 0)
      {
        v55 = 0;
      }

      v155 = v304;
      if (v54)
      {
        v155 = 0;
      }

      v22 += v155;
      v156 = v303;
      if (v55)
      {
        v156 = 0;
      }

      v57 += v156;
      if (!(v54 | v55))
      {
        v58 = v57;
        v47 = v22;
      }

      if (v22 >= length || v57 >= v277)
      {
LABEL_388:
        v59 = v22;
        v60 = v57;
        v194 = v277;
        if ((v49 | v281) == 1)
        {
LABEL_418:
          *v292 = v56;
          v201 = v48;
          v202 = v51;
          while (v59 < length)
          {
            if (v59 < 0 || (v203 = v327, v327 <= v59))
            {
              v204 = 0;
            }

            else if (*(&v325 + 1))
            {
              v204 = *(*(&v325 + 1) + 2 * *(&v326 + 1) + 2 * v59);
            }

            else if (v326)
            {
              v204 = *(v326 + *(&v326 + 1) + v59);
            }

            else
            {
              if (v328 <= v59 || (v209 = *(&v327 + 1), *(&v327 + 1) > v59))
              {
                v210 = v59 - 4;
                if (v59 < 4)
                {
                  v210 = 0;
                }

                if (v210 + 64 < v327)
                {
                  v203 = v210 + 64;
                }

                *(&v327 + 1) = v210;
                v328 = v203;
                v338.length = v203 - v210;
                v338.location = *(&v326 + 1) + v210;
                CFStringGetCharacters(v325, v338, buffer);
                v51 = v202;
                v49 = v288;
                v48 = v201;
                v209 = *(&v327 + 1);
              }

              v204 = buffer[v59 - v209];
            }

            v205 = v204;
            if (((v204 < 0x80u) & ~v49) != 0)
            {
              break;
            }

            if (v204 >> 10 == 54 && v59 >= -1)
            {
              v206 = v59 + 1;
              v207 = v327;
              if (v327 <= v59 + 1)
              {
                v194 = v277;
              }

              else
              {
                if (*(&v325 + 1))
                {
                  v208 = *(*(&v325 + 1) + 2 * *(&v326 + 1) + 2 * v206);
                }

                else if (v326)
                {
                  v208 = *(v326 + *(&v326 + 1) + v206);
                }

                else
                {
                  if (v328 <= v206 || (v211 = *(&v327 + 1), *(&v327 + 1) > v206))
                  {
                    v212 = v59 - 3;
                    if (v206 < 4)
                    {
                      v212 = 0;
                    }

                    if (v212 + 64 < v327)
                    {
                      v207 = v212 + 64;
                    }

                    *(&v327 + 1) = v212;
                    v328 = v207;
                    v339.length = v207 - v212;
                    v339.location = *(&v326 + 1) + v212;
                    CFStringGetCharacters(v325, v339, buffer);
                    v51 = v202;
                    v49 = v288;
                    v48 = v201;
                    v211 = *(&v327 + 1);
                  }

                  v208 = buffer[v206 - v211];
                }

                v194 = v277;
                if (v208 >> 10 == 55)
                {
                  v205 = (v205 << 10) + v208 - 56613888;
                }
              }
            }

            if (!v281)
            {
              goto LABEL_458;
            }

            v213 = BitmapPtrForPlane;
            if (v205 >= 0x10000)
            {
              v213 = CFUniCharGetBitmapPtrForPlane(0x6Eu, HIWORD(v205));
              v51 = v202;
              v49 = v288;
              v48 = v201;
            }

            if (!v213 || ((*(v213 + (v205 >> 3)) >> (v205 & 7)) & 1) == 0)
            {
LABEL_458:
              if (!v49)
              {
                break;
              }

              v214 = (theSet[1] & 4) >> 2;
              if (HIDWORD(theSet[1]) > v205 || v302 <= v205)
              {
                goto LABEL_473;
              }

              if (HIWORD(v205) || (theSet[1] & 2) != 0)
              {
                v215 = CFCharacterSetIsLongCharacterMember(theSet[0], v205);
                v51 = v202;
                v49 = v288;
                v48 = v201;
                if (!v215)
                {
                  break;
                }
              }

              else if (*(&v302 + 1))
              {
                if (theSet[1])
                {
                  v216 = v205 >> 8;
                  v217 = *(*(&v302 + 1) + v216);
                  if (!*(*(&v302 + 1) + v216))
                  {
                    if ((theSet[1] & 4) == 0)
                    {
                      break;
                    }

                    goto LABEL_474;
                  }

                  LOBYTE(v214) = (theSet[1] & 4) == 0;
                  if (v217 != 255)
                  {
                    if ((((*(*(&v302 + 1) + 32 * v217 + (v205 >> 3) + 224) >> (v205 & 7)) & 1) == 0) == ((theSet[1] & 4) == 0))
                    {
                      break;
                    }

                    goto LABEL_474;
                  }

LABEL_473:
                  if ((v214 & 1) == 0)
                  {
                    break;
                  }

                  goto LABEL_474;
                }

                if ((((*(*(&v302 + 1) + (v205 >> 3)) >> (v205 & 7)) & 1) == 0) == ((theSet[1] & 4) == 0))
                {
                  break;
                }
              }

              else if (((((theSet[1] & 1) == 0) ^ ((theSet[1] & 4) >> 2)) & 1) == 0)
              {
                break;
              }
            }

LABEL_474:
            if (v205 < 0x10000)
            {
              v218 = 1;
            }

            else
            {
              v218 = 2;
            }

            v59 += v218;
          }

          if (v60 < v194)
          {
            while (2)
            {
              if (v60 < 0 || (v219 = v315, v315 <= v60))
              {
                v220 = 0;
              }

              else if (*(&v313 + 1))
              {
                v220 = *(*(&v313 + 1) + 2 * *(&v314 + 1) + 2 * v60);
              }

              else if (v314)
              {
                v220 = *(v314 + *(&v314 + 1) + v60);
              }

              else
              {
                if (v316 <= v60 || (v225 = *(&v315 + 1), *(&v315 + 1) > v60))
                {
                  v226 = v60 - 4;
                  if (v60 < 4)
                  {
                    v226 = 0;
                  }

                  if (v226 + 64 < v315)
                  {
                    v219 = v226 + 64;
                  }

                  *(&v315 + 1) = v226;
                  v316 = v219;
                  v340.length = v219 - v226;
                  v340.location = *(&v314 + 1) + v226;
                  CFStringGetCharacters(v313, v340, v305);
                  v51 = v202;
                  v49 = v288;
                  v48 = v201;
                  v225 = *(&v315 + 1);
                }

                v220 = v305[v60 - v225];
              }

              v221 = v220;
              if (((v220 < 0x80u) & ~v49) != 0)
              {
                break;
              }

              if (v220 >> 10 == 54 && v60 >= -1)
              {
                v222 = v60 + 1;
                v223 = v315;
                if (v315 <= v60 + 1)
                {
                  v194 = v277;
                }

                else
                {
                  if (*(&v313 + 1))
                  {
                    v224 = *(*(&v313 + 1) + 2 * *(&v314 + 1) + 2 * v222);
                  }

                  else if (v314)
                  {
                    v224 = *(v314 + *(&v314 + 1) + v222);
                  }

                  else
                  {
                    if (v316 <= v222 || (v227 = *(&v315 + 1), *(&v315 + 1) > v222))
                    {
                      v228 = v60 - 3;
                      if (v222 < 4)
                      {
                        v228 = 0;
                      }

                      if (v228 + 64 < v315)
                      {
                        v223 = v228 + 64;
                      }

                      *(&v315 + 1) = v228;
                      v316 = v223;
                      v341.length = v223 - v228;
                      v341.location = *(&v314 + 1) + v228;
                      CFStringGetCharacters(v313, v341, v305);
                      v51 = v202;
                      v49 = v288;
                      v48 = v201;
                      v227 = *(&v315 + 1);
                    }

                    v224 = v305[v222 - v227];
                  }

                  v194 = v277;
                  if (v224 >> 10 == 55)
                  {
                    v221 = (v221 << 10) + v224 - 56613888;
                  }
                }
              }

              if (v281)
              {
                v229 = BitmapPtrForPlane;
                if (v221 >= 0x10000)
                {
                  v229 = CFUniCharGetBitmapPtrForPlane(0x6Eu, HIWORD(v221));
                  v51 = v202;
                  v49 = v288;
                  v48 = v201;
                }

                if (v229 && ((*(v229 + (v221 >> 3)) >> (v221 & 7)) & 1) != 0)
                {
                  goto LABEL_538;
                }
              }

              if (!v49)
              {
                break;
              }

              v230 = (theSet[1] & 4) >> 2;
              if (HIDWORD(theSet[1]) > v221 || v302 <= v221)
              {
LABEL_537:
                if ((v230 & 1) == 0)
                {
                  break;
                }
              }

              else if (HIWORD(v221) || (theSet[1] & 2) != 0)
              {
                v231 = CFCharacterSetIsLongCharacterMember(theSet[0], v221);
                v51 = v202;
                v49 = v288;
                v48 = v201;
                if (!v231)
                {
                  break;
                }
              }

              else if (*(&v302 + 1))
              {
                if ((theSet[1] & 1) == 0)
                {
                  if ((((*(*(&v302 + 1) + (v221 >> 3)) >> (v221 & 7)) & 1) == 0) == ((theSet[1] & 4) == 0))
                  {
                    break;
                  }

                  goto LABEL_538;
                }

                v232 = v221 >> 8;
                v233 = *(*(&v302 + 1) + v232);
                if (*(*(&v302 + 1) + v232))
                {
                  LOBYTE(v230) = (theSet[1] & 4) == 0;
                  if (v233 == 255)
                  {
                    goto LABEL_537;
                  }

                  if ((((*(*(&v302 + 1) + 32 * v233 + (v221 >> 3) + 224) >> (v221 & 7)) & 1) == 0) == ((theSet[1] & 4) == 0))
                  {
                    break;
                  }
                }

                else if ((theSet[1] & 4) == 0)
                {
                  break;
                }
              }

              else if (((((theSet[1] & 1) == 0) ^ ((theSet[1] & 4) >> 2)) & 1) == 0)
              {
                break;
              }

LABEL_538:
              if (v221 < 0x10000)
              {
                v234 = 1;
              }

              else
              {
                v234 = 2;
              }

              v60 += v234;
              if (v60 >= v194)
              {
                break;
              }

              continue;
            }
          }

          v56 = *v292;
        }

        if (locale && (v265 & 1) == 0 && v48 && v59 == length && v60 == v194)
        {
          v48 = _CFCompareStringsWithLocale(buffer, v56, length - v56, v305, v51, v194 - v51, v264, locale);
        }

        v235 = v273 ^ 1;
        if (!locale)
        {
          v235 = 1;
        }

        if ((v235 & 1) == 0)
        {
          v236 = v48;
          CFRelease(locale);
          v48 = v236;
        }

        if (v60 < v194)
        {
          v237 = kCFCompareLessThan;
        }

        else
        {
          v237 = v48;
        }

        if (v59 < length)
        {
          return 1;
        }

        else
        {
          return v237;
        }
      }
    }
  }

  v23 = __CFDefaultEightBitStringEncoding;
  if (__CFDefaultEightBitStringEncoding == -1)
  {
    v23 = __CFStringComputeEightBitStringEncoding();
  }

  v24 = _CFStringGetCStringPtrInternal(theString, v23, 0, 1);
  v25 = _CFStringGetCStringPtrInternal(theString2, v23, 0, 1);
  v26 = v25;
  if (!v24 || !v25)
  {
    v20 = kCFCompareEqualTo;
    v32 = 1;
    v19 = v299;
    if ((v280 & 1) == 0 && !v24)
    {
      v22 = 0;
      if (v25)
      {
        goto LABEL_564;
      }

      v24 = CFStringGetCharactersPtr(theString);
      v33 = CFStringGetCharactersPtr(theString2);
      v26 = v33;
      v20 = kCFCompareEqualTo;
      v32 = 2;
      if (!v24)
      {
        v22 = 0;
        v19 = v299;
        goto LABEL_28;
      }

      v19 = v299;
      if (v33)
      {
        if (length >= v13)
        {
          v34 = v13;
        }

        else
        {
          v34 = length;
        }

        if (v34 < 1)
        {
          goto LABEL_46;
        }

        v35 = &v24[2 * location];
        v36 = &v35[2 * v34];
        v37 = v35 + 2;
        do
        {
          v38 = *v26++;
          v39 = *(v37 - 1);
          v40 = v39 - v38;
          v41 = v39 != v38 || v37 >= v36;
          v37 += 2;
        }

        while (!v41);
        if (!v40)
        {
LABEL_46:
          v40 = length - v13;
        }

        v42 = (v40 >> 63) | 1;
        v43 = v40 == 0;
        goto LABEL_582;
      }
    }

    v22 = 0;
LABEL_564:
    if (v24)
    {
      goto LABEL_565;
    }

    goto LABEL_28;
  }

  v19 = v299 & 0xFFFFFFFFFFFFFFAFLL;
  if ((v299 & 0x200) == 0 && v23 == 1536)
  {
    if (v299)
    {
      if (length >= v13)
      {
        v27 = v13;
      }

      else
      {
        v27 = length;
      }

      if (v27)
      {
        v28 = &v24[location];
        while (1)
        {
          v29 = __ASCII_LOWERCASE_TABLE[*v28] - __ASCII_LOWERCASE_TABLE[*v26];
          if (v29)
          {
            break;
          }

          v26 = (v26 + 1);
          ++v28;
          if (!--v27)
          {
            goto LABEL_578;
          }
        }
      }

      else
      {
LABEL_578:
        v29 = length - v13;
      }

      v43 = v29 == 0;
      v241 = v29 < 0;
      goto LABEL_580;
    }

    goto LABEL_411;
  }

  if ((v299 & 0x81) == 0)
  {
LABEL_411:
    v20 = kCFCompareEqualTo;
    v22 = 0;
    goto LABEL_412;
  }

  if (length >= v13)
  {
    v195 = v13;
  }

  else
  {
    v195 = length;
  }

  v24 += location;
  if (v195 < 1)
  {
    v20 = kCFCompareEqualTo;
    v22 = 0;
    goto LABEL_587;
  }

  v22 = 0;
  v20 = kCFCompareEqualTo;
  while (1)
  {
    v196 = v24[v22];
    v197 = v25[v22];
    if (v196 != v197)
    {
      break;
    }

LABEL_409:
    if (v195 == ++v22)
    {
      goto LABEL_588;
    }
  }

  if (((v197 | v196) & 0x80) == 0)
  {
    if (v196 < v197)
    {
      v198 = -1;
    }

    else
    {
      v198 = 1;
    }

    if (((v20 == kCFCompareEqualTo) & (v299 >> 9)) != 0)
    {
      v20 = v198;
    }

    if (v299)
    {
      if (v196 - 65 < 0x1A)
      {
        v196 |= 0x20u;
      }

      if (v197 - 65 < 0x1A)
      {
        v197 |= 0x20u;
      }
    }

    v199 = v196 >= v197;
    if (v196 != v197)
    {
      goto LABEL_612;
    }

    goto LABEL_409;
  }

  v24 = 0;
LABEL_587:
  if (v22 != v195)
  {
LABEL_412:
    v32 = 1;
    if (!v24)
    {
      goto LABEL_28;
    }

LABEL_565:
    if (v26)
    {
      if (length >= v13)
      {
        v238 = v13;
      }

      else
      {
        v238 = length;
      }

      v239 = memcmp(&v24[v32 * location], v26, v32 * v238);
      v240 = length - v13;
      if (v239)
      {
        v240 = v239;
      }

      v43 = v240 == 0;
      v241 = v240 < 0;
LABEL_580:
      v42 = kCFCompareLessThan;
      if (!v241)
      {
        v42 = kCFCompareGreaterThan;
      }

LABEL_582:
      if (v43)
      {
        return 0;
      }

      else
      {
        return v42;
      }
    }

    goto LABEL_28;
  }

LABEL_588:
  v243 = kCFCompareLessThan;
  if (length - v13 >= 0)
  {
    v243 = kCFCompareGreaterThan;
  }

  if (length == v13)
  {
    return v20;
  }

  else
  {
    return v243;
  }
}

uint64_t _CFAutoreleasePoolAddObject(uint64_t a1, uint64_t a2)
{
  if (__CFOASafe == 1)
  {
    __CFRecordAllocationEvent(3, a2, 0, 0, 0);
  }

  return MEMORY[0x1EEE66820](a2);
}

CFErrorRef CFErrorCreate(CFAllocatorRef allocator, CFErrorDomain domain, CFIndex code, CFDictionaryRef userInfo)
{
  Instance = _CFRuntimeCreateInstance(allocator, 0x1BuLL, 24, 0, v4, v5, v6, v7);
  if (Instance)
  {
    Copy = CFStringCreateCopy(allocator, domain);
    Instance[2] = code;
    Instance[3] = Copy;
    if (userInfo)
    {
      EmptyDictionary = CFDictionaryCreateCopy(allocator, userInfo);
    }

    else
    {
      EmptyDictionary = _CFErrorCreateEmptyDictionary(allocator);
    }

    Instance[4] = EmptyDictionary;
    _CFErrorSetCallStackReturnAddresses(Instance, 0);
  }

  return Instance;
}

void __CFErrorDeallocate(CFTypeRef *a1)
{
  CFRelease(a1[3]);
  CFRelease(a1[4]);

  objc_removeAssociatedObjects(a1);
}

void __CFRunLoopAddItemToCommonModes(const __CFString *a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = CFGetTypeID(v3);
  switch(v5)
  {
    case '-':

      CFRunLoopAddObserver(v4, v3, a1);
      break;
    case '/':

      CFRunLoopAddTimer(v4, v3, a1);
      break;
    case '.':

      CFRunLoopAddSource(v4, v3, a1);
      break;
  }
}

uint64_t __CFBinaryPlistGetOffsetForValueFromDictionary3(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, const __CFString *cf, unint64_t *a6, unint64_t *a7)
{
  v87 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    return 0;
  }

  v14 = CFGetTypeID(cf);
  if (v14 < 0x14 && ((0xE0001u >> v14) & 1) != 0)
  {
    return 0;
  }

  v15 = 0;
  if (a3 >= 8)
  {
    v17 = *(a4 + 24) - 1;
    if (v17 >= a3)
    {
      v15 = 0;
      v18 = (a1 + a3);
      if (a1 + a3 != -1)
      {
        v19 = *v18;
        if ((*v18 & 0xF0) == 0xD0)
        {
          v20 = (v18 + 1);
          v21 = v19 & 0xF;
          if ((v19 & 0xF) != 0xF)
          {
LABEL_30:
            if (!v21)
            {
              v83 = 0;
              v29 = 0;
              goto LABEL_34;
            }

            if (is_mul_ok(2 * v21, *(a4 + 7)))
            {
              v29 = 2 * v21 * *(a4 + 7);
              v83 = v21;
LABEL_34:
              v15 = 0;
              if (__CFADD__(v29, v20) || a1 + v17 < v20 + v29 - 1)
              {
                return v15;
              }

              if (v14 == 7)
              {
                Length = CFStringGetLength(cf);
                v31 = *(a4 + 7);
                v79 = (a4 + 7);
                if (Length != -1)
                {
                  v32 = Length;
                  CStringPtr = CFStringGetCStringPtr(cf, 0);
                  v34 = v32;
                  v35 = CStringPtr;
                  if (v32 <= 15 && !CStringPtr)
                  {
                    if (CFStringGetCString(cf, buffer, 16, 0))
                    {
                      v36 = strnlen(buffer, 0x10uLL);
                      v34 = v32;
                      if (v36 == v32)
                      {
                        v35 = buffer;
                      }

                      else
                      {
                        v35 = 0;
                      }

                      if (!v21)
                      {
LABEL_127:
                        v38 = 0;
LABEL_128:
                        v68 = 0;
                        return v38 & v68;
                      }
                    }

                    else
                    {
                      v35 = 0;
                      v34 = v32;
                      if (!v21)
                      {
                        goto LABEL_127;
                      }
                    }

                    goto LABEL_50;
                  }

LABEL_49:
                  if (!v21)
                  {
                    goto LABEL_127;
                  }

LABEL_50:
                  v37 = 0;
                  v74 = v21 * v31;
                  v82 = a1 + 8;
                  v76 = a1 + *(a4 + 24);
                  __n = v34;
                  v75 = ~v34;
                  v38 = 1;
                  __s2 = v35;
                  v78 = v21;
                  while (1)
                  {
                    if (v82 > v20)
                    {
                      goto LABEL_128;
                    }

                    v39 = a1 + *(a4 + 24);
                    v40 = *(a4 + 7);
                    if (v39 - v40 < v20)
                    {
                      goto LABEL_128;
                    }

                    if (*(a4 + 7) <= 1u)
                    {
                      v41 = *(a4 + 7);
                      if (!*(a4 + 7))
                      {
                        goto LABEL_65;
                      }

                      if (v40 == 1)
                      {
                        v41 = *v20;
                        goto LABEL_65;
                      }
                    }

                    else
                    {
                      switch(v40)
                      {
                        case 2:
                          v41 = __rev16(*v20);
                          goto LABEL_65;
                        case 4:
                          v41 = bswap32(*v20);
                          goto LABEL_65;
                        case 8:
                          v41 = bswap64(*v20);
                          goto LABEL_65;
                      }
                    }

                    v41 = 0;
                    v42 = *(a4 + 7);
                    v43 = v20;
                    do
                    {
                      v44 = *v43;
                      v43 = (v43 + 1);
                      v41 = v44 | (v41 << 8);
                      --v42;
                    }

                    while (v42);
LABEL_65:
                    if (*(a4 + 8) <= v41)
                    {
                      goto LABEL_128;
                    }

                    v81 = v38;
                    v45 = *(a4 + 6);
                    v46 = (v39 + v41 * v45);
                    if (*(a4 + 6) <= 1u)
                    {
                      if (!*(a4 + 6))
                      {
                        goto LABEL_78;
                      }

                      if (v45 == 1)
                      {
                        v45 = *v46;
                        goto LABEL_78;
                      }
                    }

                    else
                    {
                      switch(v45)
                      {
                        case 2:
                          v45 = __rev16(*v46);
                          goto LABEL_78;
                        case 4:
                          v45 = bswap32(*v46);
                          goto LABEL_78;
                        case 8:
                          v45 = bswap64(*v46);
                          goto LABEL_78;
                      }
                    }

                    v47 = *(a4 + 6);
                    v45 = 0;
                    do
                    {
                      v48 = *v46;
                      v46 = (v46 + 1);
                      v45 = v48 | (v45 << 8);
                      --v47;
                    }

                    while (v47);
LABEL_78:
                    if (v35)
                    {
                      v49 = *(a1 + v45);
                      if ((v49 & 0xF0) == 0x50)
                      {
                        if (__CFADD__(v45, a1) || v45 + a1 == -1)
                        {
                          goto LABEL_124;
                        }

                        v50 = v49 & 0xF;
                        v51 = (v45 + a1 + 1);
                        v52 = __n;
                        if (__n < 15 || v50 != 15)
                        {
                          goto LABEL_111;
                        }

                        if (v76 - 1 < v51)
                        {
                          goto LABEL_124;
                        }

                        v53 = (v45 + a1 + 2);
                        v54 = *v51;
                        if ((*v51 & 0xF0) != 0x10)
                        {
                          goto LABEL_124;
                        }

                        v55 = v54 & 0xF;
                        v56 = 1 << (v54 & 0xF);
                        if (__CFADD__(v56, v53) || v76 < &v53[v56])
                        {
                          goto LABEL_124;
                        }

                        if (v56 > 3u)
                        {
                          if (v56 != 4)
                          {
                            if (v56 != 8)
                            {
                              goto LABEL_102;
                            }

                            v50 = bswap64(*(v45 + a1 + 2));
                            goto LABEL_109;
                          }

                          v50 = bswap32(*(v45 + a1 + 2));
                        }

                        else
                        {
                          if (v56 != 1)
                          {
                            if (v56 == 2)
                            {
                              v50 = __rev16(*(v45 + a1 + 2));
                              goto LABEL_106;
                            }

LABEL_102:
                            if (v55 > 7)
                            {
                              v50 = 0;
                              goto LABEL_106;
                            }

                            v50 = 0;
                            v59 = v56;
                            v60 = (v45 + a1 + 2);
                            do
                            {
                              v61 = *v60++;
                              v50 = v61 | (v50 << 8);
                              --v59;
                            }

                            while (v59);
LABEL_109:
                            if ((v50 & 0x8000000000000000) != 0)
                            {
                              goto LABEL_124;
                            }

                            v51 = &v53[v56];
                            v52 = __n;
LABEL_111:
                            if (v50 == v52)
                            {
                              if (v75 < v51 || v76 < &v51[v52])
                              {
                                goto LABEL_124;
                              }

                              v62 = v37;
                              v63 = memcmp(v51, __s2, v52);
                              v35 = __s2;
                              v37 = v62;
                              v21 = v78;
                              if (!v63)
                              {
LABEL_115:
                                v64 = (v20 + v74);
                                if (v82 <= v20 + v74)
                                {
                                  v65 = a1 + *(a4 + 24);
                                  v66 = *(a4 + 7);
                                  if (v65 - v66 >= v64)
                                  {
                                    if (*(a4 + 7) <= 1u)
                                    {
                                      v67 = *(a4 + 7);
                                      if (*(a4 + 7))
                                      {
                                        if (v66 != 1)
                                        {
                                          goto LABEL_135;
                                        }

                                        v67 = *v64;
                                      }
                                    }

                                    else
                                    {
                                      switch(v66)
                                      {
                                        case 2:
                                          v67 = __rev16(*v64);
                                          break;
                                        case 4:
                                          v67 = bswap32(*v64);
                                          break;
                                        case 8:
                                          v67 = bswap64(*v64);
                                          break;
                                        default:
LABEL_135:
                                          v67 = 0;
                                          do
                                          {
                                            v69 = *v64;
                                            v64 = (v64 + 1);
                                            v67 = v69 | (v67 << 8);
                                            --v66;
                                          }

                                          while (v66);
                                          break;
                                      }
                                    }

                                    if (*(a4 + 8) > v67)
                                    {
                                      if (a7)
                                      {
                                        v70 = *(a4 + 6);
                                        v71 = (v65 + v67 * v70);
                                        if (*(a4 + 6) <= 1u)
                                        {
                                          if (*(a4 + 6))
                                          {
                                            if (v70 != 1)
                                            {
                                              goto LABEL_149;
                                            }

                                            v70 = *v71;
                                          }
                                        }

                                        else
                                        {
                                          switch(v70)
                                          {
                                            case 2:
                                              v70 = __rev16(*v71);
                                              break;
                                            case 4:
                                              v70 = bswap32(*v71);
                                              break;
                                            case 8:
                                              v70 = bswap64(*v71);
                                              break;
                                            default:
LABEL_149:
                                              v72 = *(a4 + 6);
                                              v70 = 0;
                                              do
                                              {
                                                v73 = *v71;
                                                v71 = (v71 + 1);
                                                v70 = v73 | (v70 << 8);
                                                --v72;
                                              }

                                              while (v72);
                                              break;
                                          }
                                        }

                                        *a7 = v70;
                                      }

                                      if (a6)
                                      {
                                        *a6 = v45;
                                      }

                                      v68 = 1;
LABEL_125:
                                      v38 = v81;
                                      return v38 & v68;
                                    }
                                  }
                                }

LABEL_124:
                                v68 = 0;
                                goto LABEL_125;
                              }
                            }

                            goto LABEL_97;
                          }

                          v50 = *v53;
                        }

LABEL_106:
                        v51 = &v53[v56];
                        goto LABEL_111;
                      }
                    }

                    v57 = v37;
                    v84 = 0;
                    v85 = 0;
                    if (!__CFBinaryPlistCreateObjectFiltered(a1, a2, v45, a4, &__kCFAllocatorSystemDefault, 0xFFFFFFFF80000000, 0, 0, 0, 0, 0, &v85, &v84) || v84 <= 0x13 && ((1 << v84) & 0xE0001) != 0)
                    {
                      if (v85)
                      {
                        CFRelease(v85);
                      }

                      goto LABEL_124;
                    }

                    v58 = CFEqual(cf, v85);
                    CFRelease(v85);
                    v35 = __s2;
                    v37 = v57;
                    v21 = v78;
                    if (v58)
                    {
                      goto LABEL_115;
                    }

                    v40 = *v79;
LABEL_97:
                    v20 = (v20 + v40);
                    v38 = ++v37 < v21;
                    if (v37 == v83)
                    {
                      goto LABEL_128;
                    }
                  }
                }

                v35 = 0;
              }

              else
              {
                v35 = 0;
                v31 = *(a4 + 7);
                v79 = (a4 + 7);
              }

              v34 = -1;
              goto LABEL_49;
            }

            return 0;
          }

          if (a1 + v17 < v20)
          {
            return 0;
          }

          v22 = v18 + 2;
          v23 = *v20;
          if ((*v20 & 0xF0) != 0x10)
          {
            return 0;
          }

          v15 = 0;
          v24 = v23 & 0xF;
          v25 = 1 << (v23 & 0xF);
          if (__CFADD__(v25, v22) || v20 + v25 > a1 + v17)
          {
            return v15;
          }

          if (v25 > 3u)
          {
            if (v25 == 4)
            {
              v21 = bswap32(*(v20 + 1));
              goto LABEL_29;
            }

            if (v25 == 8)
            {
              v21 = bswap64(*(v20 + 1));
              goto LABEL_28;
            }
          }

          else
          {
            if (v25 == 1)
            {
              v21 = *v22;
              goto LABEL_29;
            }

            if (v25 == 2)
            {
              v21 = __rev16(*(v20 + 1));
LABEL_29:
              v20 = &v22[v25];
              goto LABEL_30;
            }
          }

          if (v24 > 7)
          {
            v21 = 0;
            goto LABEL_29;
          }

          v21 = 0;
          v26 = v25;
          v27 = v20 + 1;
          do
          {
            v28 = *v27++;
            v21 = v28 | (v21 << 8);
            --v26;
          }

          while (v26);
LABEL_28:
          if ((v21 & 0x8000000000000000) != 0)
          {
            return 0;
          }

          goto LABEL_29;
        }
      }
    }
  }

  return v15;
}

CFArrayRef CFArrayCreateCopy(CFAllocatorRef allocator, CFArrayRef theArray)
{
  if (CF_IS_OBJC(0x13uLL, theArray))
  {
    goto LABEL_22;
  }

  if (__CFArrayGetCallBacks(theArray) != &kCFTypeArrayCallBacks || &__kCFAllocatorSystemDefault != allocator && (allocator || &__kCFAllocatorSystemDefault != CFAllocatorGetDefault()))
  {
    goto LABEL_7;
  }

  if (__FoundationPresent_static_init != -1)
  {
    CFArrayCreateCopy_cold_1();
  }

  if (__FoundationPresent_present)
  {
LABEL_22:
    if (_CFArrayIsMutable(theArray))
    {
      v4 = [NSArray alloc];

      return [(NSArray *)v4 initWithArray:theArray copyItems:0];
    }

    else
    {

      return [(__CFArray *)theArray copyWithZone:0];
    }
  }

  else
  {
LABEL_7:

    return __CFArrayCreateCopy0(allocator, theArray);
  }
}

__CFBundle *_CFBundleGetBundleWithIdentifier(__CFString *a1, uint64_t a2)
{
  if (a1)
  {
    MainBundle = CFBundleGetMainBundle();
    if (MainBundle)
    {
      v5 = MainBundle;
      InfoDictionary = CFBundleGetInfoDictionary(MainBundle);
      if (InfoDictionary)
      {
        Value = CFDictionaryGetValue(InfoDictionary, @"CFBundleIdentifier");
        if (Value)
        {
          v8 = Value;
          v9 = CFGetTypeID(Value);
          if (v9 == CFStringGetTypeID())
          {
            if (CFEqual(v8, a1))
            {
              return v5;
            }
          }
        }
      }
    }

    os_unfair_lock_lock(&CFBundleGlobalDataLock);
    v5 = _CFBundleGetFromTablesLocked(a1);
    os_unfair_lock_unlock(&CFBundleGlobalDataLock);
    if (a2 && !v5)
    {
      v10 = _CFBundleCopyLoadedImagePathForPointer(a2);
      if (v10)
      {
        v12 = v10;
        _CFBundleEnsureBundleExistsForImagePath(v10, 0, v11);
        CFRelease(v12);
      }

      os_unfair_lock_lock(&CFBundleGlobalDataLock);
      v5 = _CFBundleGetFromTablesLocked(a1);
      os_unfair_lock_unlock(&CFBundleGlobalDataLock);
    }

    if (v5)
    {
      return v5;
    }

    _CFBundleEnsureBundlesUpToDateWithHint(a1);
    os_unfair_lock_lock(&CFBundleGlobalDataLock);
    v5 = _CFBundleGetFromTablesLocked(a1);
    os_unfair_lock_unlock(&CFBundleGlobalDataLock);
    if (v5)
    {
      return v5;
    }
  }

  _CFBundleEnsureAllBundlesUpToDate();
  os_unfair_lock_lock(&CFBundleGlobalDataLock);
  v14 = _CFBundleGetFromTablesLocked(a1);
  os_unfair_lock_unlock(&CFBundleGlobalDataLock);
  return v14;
}

__CFBundle *_CFBundleGetFromTablesLocked(void *key)
{
  ValueAtIndex = 0;
  if (!key || !_bundlesByIdentifier)
  {
    return ValueAtIndex;
  }

  Value = CFDictionaryGetValue(_bundlesByIdentifier, key);
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  Count = CFArrayGetCount(Value);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, v6++);
    if (CFBundleIsExecutableLoaded(ValueAtIndex))
    {
      v7 = ValueAtIndex == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = v7;
  }

  while (v8 == 1 && v6 < v5);
  if (!v8)
  {
    return ValueAtIndex;
  }

  return CFArrayGetValueAtIndex(v3, 0);
}

Boolean CFBundleIsExecutableLoaded(CFBundleRef bundle)
{
  __CFCheckCFInfoPACSignature(bundle);
  v2 = _CFGetNonObjCTypeID(bundle);
  if (v2 != 31)
  {
    _CFAssertMismatchedTypeID(0x1FuLL, v2);
  }

  os_unfair_lock_lock_with_options();
  v3 = *(bundle + 52);
  os_unfair_lock_unlock(bundle + 24);
  return v3;
}

uint64_t __CFBinaryPlistParseUnicode16String(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  if (a3 == -1)
  {
    return 0;
  }

  v5 = *a3;
  v4 = (a3 + 1);
  v6 = v5 & 0xF;
  if (v6 != 15)
  {
    goto LABEL_22;
  }

  if (a1 + a2 < v4)
  {
    return 0;
  }

  v7 = (v4 + 1);
  if ((*v4 & 0xF0) != 0x10)
  {
    return 0;
  }

  v8 = *v4 & 0xF;
  v9 = 1 << v8;
  if (__CFADD__(1 << v8, v7) || v9 + v4 > a1 + a2)
  {
    return 0;
  }

  v10 = (1 << v8);
  if (v10 > 3)
  {
    if (v10 == 4)
    {
      v6 = bswap32(*(v4 + 1));
      goto LABEL_21;
    }

    if (v10 == 8)
    {
      v6 = bswap64(*(v4 + 1));
LABEL_20:
      if ((v6 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }

      return 0;
    }

LABEL_14:
    if (v8 > 7)
    {
      v6 = 0;
      goto LABEL_21;
    }

    v6 = 0;
    v11 = v9;
    v12 = (v4 + 1);
    do
    {
      v13 = *v12++;
      v6 = v13 | (v6 << 8);
      --v11;
    }

    while (v11);
    goto LABEL_20;
  }

  if (v10 == 1)
  {
    v6 = *v7;
    goto LABEL_21;
  }

  if (v10 != 2)
  {
    goto LABEL_14;
  }

  v6 = __rev16(*(v4 + 1));
LABEL_21:
  v4 = &v7[v9];
LABEL_22:
  v14 = v4 + v6 - 1;
  v15 = v14 > ~v6;
  v16 = v14 + v6;
  if (v15 || ~v6 < v4 || a1 + a2 < v16)
  {
    return 0;
  }

  return (*(a4 + 16))(a4, v4, v6);
}

CFNotificationCenterRef CFNotificationCenterGetLocalCenter(void)
{
  if (CFNotificationCenterGetLocalCenter_static_init != -1)
  {
    CFNotificationCenterGetLocalCenter_cold_1();
  }

  return __taskCenter;
}

CFArrayRef CFBundleCopyPreferredLocalizationsFromArray(CFArrayRef locArray)
{
  v2 = _CFBundleCopyUserLanguages();
  if (!v2)
  {
    v2 = CFArrayCreate(&__kCFAllocatorSystemDefault, 0, 0, &kCFTypeArrayCallBacks);
  }

  v3 = _CFBundleCopyLocalizationsForPreferences(locArray, v2, 1);
  CFRelease(v2);
  return v3;
}

CFTypeRef _CFBundleCopyBundleLocalizations(uint64_t a1, uint64_t a2)
{
  __CFCheckCFInfoPACSignature(a1);
  v4 = _CFGetNonObjCTypeID(a1);
  if (v4 != 31)
  {
    _CFAssertMismatchedTypeID(0x1FuLL, v4);
  }

  os_unfair_lock_lock_with_options();
  if (!*(a1 + 128))
  {
    os_unfair_lock_unlock((a1 + 112));
    if (CFBundleGetMainBundle() != a1)
    {
      goto LABEL_8;
    }

    if (CFBundleFollowParentLocalization_once != -1)
    {
      _CFBundleCopyBundleLocalizations_cold_1();
    }

    if (CFBundleFollowParentLocalization_followParent != 1 || (v5 = _CFBundleCopyXPCBootstrapMainBundleLanguages()) == 0)
    {
LABEL_8:
      v5 = _copyBundleLocalizationsFromResources(a1, a2);
    }

    os_unfair_lock_lock_with_options();
    if (!*(a1 + 128))
    {
      *(a1 + 120) = CFRetain(v5);
      *(a1 + 128) = 1;
      goto LABEL_12;
    }

    CFRelease(v5);
  }

  v5 = CFRetain(*(a1 + 120));
LABEL_12:
  os_unfair_lock_unlock((a1 + 112));
  return v5;
}

CFTypeRef _CFBundleCopyUserLanguages()
{
  os_unfair_lock_lock(&_CFBundleUserLanguagesLock);
  v0 = _CFBundleUserLanguages;
  if (_CFBundleUserLanguages)
  {
    goto LABEL_15;
  }

  v1 = CFPreferencesCopyAppValue(@"AppleLanguages", @"kCFPreferencesCurrentApplication");
  if (!v1)
  {
    v1 = CFPreferencesCopyAppValue(@"NSLanguages", @"kCFPreferencesCurrentApplication");
  }

  v2 = _CFBundleUserLanguages;
  if (_CFBundleUserLanguages)
  {
    v3 = 1;
  }

  else
  {
    v3 = v1 == 0;
  }

  if (!v3)
  {
    v2 = CFRetain(v1);
    _CFBundleUserLanguages = v2;
  }

  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 != CFArrayGetTypeID())
    {
      CFRelease(_CFBundleUserLanguages);
      _CFBundleUserLanguages = 0;
    }
  }

  if (v1)
  {
    CFRelease(v1);
  }

  v0 = _CFBundleUserLanguages;
  if (_CFBundleUserLanguages)
  {
LABEL_15:
    v5 = CFRetain(v0);
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&_CFBundleUserLanguagesLock);
  return v5;
}

const __CFArray *_CFBundleCopyLocalizationsForPreferences(const __CFArray *a1, const __CFArray *a2, int a3)
{
  if (!a1 || CFArrayGetCount(a1) < 1)
  {
    goto LABEL_10;
  }

  Mutable = _CFBundleCopyPreferredLanguagesInList(a1, 0, a2, a3, 0, 0);
  if (CFArrayGetCount(Mutable) || CFArrayGetCount(a1) < 1)
  {
    if (CFArrayGetCount(Mutable))
    {
      goto LABEL_9;
    }

    ValueAtIndex = @"en";
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
  }

  CFArrayAppendValue(Mutable, ValueAtIndex);
LABEL_9:
  if (!Mutable)
  {
LABEL_10:
    Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
    CFArrayAppendValue(Mutable, @"en");
  }

  return Mutable;
}

__CFArray *_CFBundleCopyPreferredLanguagesInList(uint64_t Count, void *a2, CFArrayRef theArray, int a4, unint64_t a5, __CFBundle *a6)
{
  v10 = Count;
  v50 = *MEMORY[0x1E69E9840];
  values = a2;
  if (!a4)
  {
    goto LABEL_5;
  }

  if (CFBundleAllowMixedLocalizations_once != -1)
  {
    _CFBundleCopyPreferredLanguagesInList_cold_1();
  }

  if (CFBundleAllowMixedLocalizations_allowMixed)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  if (CFBundleFollowParentLocalization_once != -1)
  {
    _CFBundleCopyPreferredLanguagesInList_cold_2();
  }

  if (CFBundleFollowParentLocalization_followParent == 1)
  {
    Count = _CFBundleCopyXPCBootstrapMainBundleLanguages();
    v11 = Count;
    if (!Count)
    {
      goto LABEL_6;
    }

LABEL_28:
    Count = CFArrayGetCount(v11);
    if (Count >= 1)
    {
      Count = _CFBundleCreateMutableArrayOfFallbackLanguages(v10, v11, v19);
      if (Count)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_6;
  }

  Count = CFBundleGetMainBundle();
  v11 = Count;
  if (!Count)
  {
    goto LABEL_6;
  }

  Count = CFBundleCopyBundleURL(Count);
  if (!Count)
  {
    goto LABEL_5;
  }

  v18 = Count;
  if (a5 && CFEqual(a5, Count))
  {
    v11 = 0;
  }

  else
  {
    v11 = _CFBundleCopyLanguageSearchListInBundle(v11);
  }

  CFRelease(v18);
  if (v11)
  {
    goto LABEL_28;
  }

LABEL_6:
  if (theArray && (Count = CFArrayGetCount(theArray), Count >= 1))
  {
    Count = _CFBundleCreateMutableArrayOfFallbackLanguages(v10, theArray, v12);
    MutableArrayOfFallbackLanguages = Count;
    if (Count)
    {
      goto LABEL_13;
    }
  }

  else
  {
    MutableArrayOfFallbackLanguages = 0;
  }

  if (a2)
  {
    v14 = CFArrayCreate(&__kCFAllocatorSystemDefault, &values, 1, &kCFTypeArrayCallBacks);
    MutableArrayOfFallbackLanguages = _CFBundleCreateMutableArrayOfFallbackLanguages(v10, v14, v15);
    CFRelease(v14);
  }

LABEL_13:
  if (!MutableArrayOfFallbackLanguages)
  {
    *buf = @"en_US";
    v16 = CFArrayCreate(&__kCFAllocatorSystemDefault, buf, 1, &kCFTypeArrayCallBacks);
    MutableArrayOfFallbackLanguages = _CFBundleCreateMutableArrayOfFallbackLanguages(v10, v16, v17);
    CFRelease(v16);
    if (!MutableArrayOfFallbackLanguages)
    {
      Count = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
LABEL_30:
      MutableArrayOfFallbackLanguages = Count;
    }
  }

  v20 = _CFBundleResourceLogger(Count, a2);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG) && a5 | a6)
  {
    v32 = values;
    v33 = a5;
    Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
    v22 = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
    v23 = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
    v24 = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
    v25 = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
    if (a6)
    {
      CFStringAppendFormat(Mutable, 0, @"%@", a6);
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"%@", v33);
    }

    _onelineFormatArray(v22, v10);
    _onelineFormatArray(v23, theArray);
    _onelineFormatArray(v24, v11);
    _onelineFormatArray(v25, MutableArrayOfFallbackLanguages);
    if (CFBundleAllowMixedLocalizations_once != -1)
    {
      _CFBundleCopyPreferredLanguagesInList_cold_3();
    }

    v28 = CFBundleAllowMixedLocalizations_allowMixed != 0;
    if (a6)
    {
      InfoDictionary = CFBundleGetInfoDictionary(a6);
      v29 = "";
      if (InfoDictionary)
      {
        InfoDictionary = CFDictionaryGetValue(InfoDictionary, @"_CFBundleUseAppleLocalizations");
        if (InfoDictionary == &__kCFBooleanTrue)
        {
          v29 = "(use Apple Locs)";
        }
      }
    }

    else
    {
      v29 = "";
    }

    v30 = _CFBundleResourceLogger(InfoDictionary, v27);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138479619;
      *&buf[4] = Mutable;
      v36 = 2114;
      v37 = v22;
      v38 = 2114;
      v39 = v32;
      v40 = 2114;
      v41 = v23;
      v42 = 2114;
      v43 = v24;
      v44 = 2050;
      v45 = v28;
      v46 = 2082;
      v47 = v29;
      v48 = 2114;
      v49 = v25;
      _os_log_debug_impl(&dword_1830E6000, v30, OS_LOG_TYPE_DEBUG, "Language lookup at %{private}@\n\tLocalizations : %{public}@\n\tDev language  : %{public}@\n\tUser prefs    : %{public}@\n\tMain bundle   : %{public}@\n\tAllow mixed   : %{public}lu %{public}s\n\tResult        : %{public}@\n", buf, 0x52u);
    }

    CFRelease(Mutable);
    CFRelease(v22);
    CFRelease(v23);
    CFRelease(v25);
    CFRelease(v24);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return MutableArrayOfFallbackLanguages;
}

CFURLRef CFBundleCopyBundleURL(CFBundleRef bundle)
{
  __CFCheckCFInfoPACSignature(bundle);
  v2 = _CFGetNonObjCTypeID(bundle);
  if (v2 != 31)
  {
    _CFAssertMismatchedTypeID(0x1FuLL, v2);
  }

  result = *(bundle + 2);
  if (result)
  {
    CFRetain(result);
    return *(bundle + 2);
  }

  return result;
}

CFBundleRef CFBundleGetMainBundle(void)
{
  v35[129] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&_mainBundleLock);
  if ((_initedMainBundle & 1) == 0)
  {
    _initedMainBundle = 1;
    v0 = _CFProcessPath();
    if (v0)
    {
      v1 = CFStringCreateWithFileSystemRepresentation(&__kCFAllocatorSystemDefault, v0);
      v2 = CFURLCreateWithFileSystemPath(&__kCFAllocatorSystemDefault, v1, kCFURLPOSIXPathStyle, 0);
      if (!v2)
      {
        if (!v1)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      }

      v3 = v2;
      v4 = _CFBundleCopyBundleURLForExecutableURL(v2);
      if (!v4)
      {
LABEL_59:
        if (v1)
        {
          CFRelease(v1);
        }

        v1 = v3;
LABEL_62:
        CFRelease(v1);
        goto LABEL_63;
      }

      v5 = v4;
      Main = _CFBundleCreateMain(&__kCFAllocatorSystemDefault, v4);
      _mainBundle = Main;
      if (!Main)
      {
LABEL_58:
        CFRelease(v5);
        goto LABEL_59;
      }

      *(Main + 52) = 1;
      if (!*(Main + 12))
      {
        v10 = _CFBundleGrokBinaryType(v3, v8, v9);
        Main = _mainBundle;
        *(_mainBundle + 48) = v10;
        if (v10 != 1 && v10 != 6)
        {
          *(Main + 64) = 1;
        }
      }

      if (!Main[7])
      {
        Main[7] = -5;
        v12 = _CFBundleLoadingLogger(Main, v7);
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
        Main = _mainBundle;
        if (v13)
        {
          CFBundleGetMainBundle_cold_1(_mainBundle, v12, v35);
          Main = v35[0];
        }
      }

      CFBundleGetInfoDictionary(Main);
      v14 = _mainBundle;
      if (*(_mainBundle + 24))
      {
        Count = CFDictionaryGetCount(*(_mainBundle + 24));
        v14 = _mainBundle;
        if (Count)
        {
          if (*(_mainBundle + 48) == 2)
          {
            v16 = _CFBundleCopyExecutableName(_mainBundle, 0, 0);
            v17 = v16;
            if (v1)
            {
              if (v16 && CFStringHasSuffix(v1, v16))
              {
                goto LABEL_43;
              }
            }

            InfoDictFromMainExecutable = _CFBundleCreateInfoDictFromMainExecutable();
            if (InfoDictFromMainExecutable)
            {
              v19 = InfoDictFromMainExecutable;
              if (CFDictionaryGetCount(InfoDictFromMainExecutable) < 1)
              {
                CFRelease(v19);
              }

              else
              {
                v20 = _mainBundle;
                v21 = *(_mainBundle + 24);
                if (v21)
                {
                  CFRelease(v21);
                  v20 = _mainBundle;
                }

                *(v20 + 24) = v19;
              }
            }

            if (v17)
            {
LABEL_43:
              CFRelease(v17);
            }
          }

LABEL_44:
          v25 = _mainBundle;
          if (!*(_mainBundle + 24))
          {
            Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            v25 = _mainBundle;
            *(_mainBundle + 24) = Mutable;
          }

          if (v1 && !*(v25 + 104))
          {
            v27 = CFRetain(v1);
            v25 = _mainBundle;
            *(_mainBundle + 104) = v27;
          }

          Value = CFDictionaryGetValue(*(v25 + 24), @"CFBundleIdentifier");
          if (Value)
          {
            v29 = Value;
            bzero(v35, 0x402uLL);
            if (!CFStringGetCString(v29, v35, 1024, 0x8000100u))
            {
              LOBYTE(v35[0]) = 0;
            }

            __CFBundleMainID = strdup(v35);
          }

          v30 = CFDictionaryGetValue(*(_mainBundle + 24), @"CFBundleShortVersionString");
          if (v30)
          {
            v31 = v30;
            bzero(v35, 0x402uLL);
            if (!CFStringGetCString(v31, v35, 1024, 0x8000100u))
            {
              LOBYTE(v35[0]) = 0;
            }

            __CFBundleShortVersionString = strdup(v35);
          }

          os_unfair_lock_unlock(&_mainBundleLock);
          InfoDictionary = CFBundleGetInfoDictionary(_mainBundle);
          _CFBundleInitPlugIn(_mainBundle, InfoDictionary, 0);
          _CFPlugInHandleDynamicRegistration(_mainBundle);
          os_unfair_lock_lock(&_mainBundleLock);
          goto LABEL_58;
        }
      }

      if (*(v14 + 53))
      {
        if (*(v14 + 53) == 3)
        {
          *(v14 + 53) = 4;
        }

        goto LABEL_37;
      }

      v22 = _CFBundleCopyExecutableName(v14, 0, 0);
      v23 = v22;
      if (v1 && v22)
      {
        if (!CFStringHasSuffix(v1, v22))
        {
          *(_mainBundle + 53) = 4;
        }
      }

      else
      {
        v14 = _mainBundle;
        *(_mainBundle + 53) = 4;
        if (!v23)
        {
          goto LABEL_37;
        }
      }

      CFRelease(v23);
      v14 = _mainBundle;
LABEL_37:
      if ((*(v14 + 48) | 4) == 6)
      {
        v24 = *(v14 + 24);
        if (v24)
        {
          CFRelease(v24);
        }

        *(_mainBundle + 24) = _CFBundleCreateInfoDictFromMainExecutable();
      }

      goto LABEL_44;
    }
  }

LABEL_63:
  v33 = _mainBundle;
  os_unfair_lock_unlock(&_mainBundleLock);
  return v33;
}

__CFArray *_CFBundleCreateMutableArrayOfFallbackLanguages(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v21 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(v3);
  v8 = malloc_type_malloc(8 * Count, 0x10040436913F5uLL);
  v9 = ___CFBundleCreateMutableArrayOfFallbackLanguages_block_invoke(v8, v6, v8);
  v10 = CFArrayGetCount(v5);
  v11 = malloc_type_malloc(8 * v10, 0x10040436913F5uLL);
  v12 = ___CFBundleCreateMutableArrayOfFallbackLanguages_block_invoke(v11, v5, v11);
  Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
  if (v9)
  {
    if (v12)
    {
      memset(v20, 0, 512);
      v14 = ualoc_localizationsToUse();
      if (v14 >= 1)
      {
        v15 = v14;
        v16 = v20;
        do
        {
          v17 = CFStringCreateWithCString(&__kCFAllocatorSystemDefault, *v16, 0x8000100u);
          if (v17)
          {
            v18 = v17;
            CFArrayAppendValue(Mutable, v17);
            CFRelease(v18);
          }

          ++v16;
          --v15;
        }

        while (v15);
      }
    }
  }

  if (v8)
  {
    free(v8);
  }

  if (v9)
  {
    free(v9);
  }

  if (v11)
  {
    free(v11);
  }

  if (v12)
  {
    free(v12);
  }

  if (!CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t _CFExtensionIsValidToAppend(const __CFString *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(a1);
  theString = a1;
  v40 = 0;
  v41 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v38 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v42 = 0;
  v43 = 0;
  v39 = CStringPtr;
  if (!Length)
  {
    return 0;
  }

  v5 = Length - 1;
  if (Length < 1)
  {
    return 1;
  }

  v6 = 0;
  v7 = 1 - Length;
  v8 = Length + 63;
  v9 = Length - 1;
  memset(v36, 0, sizeof(v36));
  while (1)
  {
    if (v9 >= 0x3F)
    {
      v10 = 63;
    }

    else
    {
      v10 = v9;
    }

    if (v38)
    {
      v11 = &v38[v40];
LABEL_11:
      v12 = v11[v9];
      goto LABEL_14;
    }

    if (!v39)
    {
      v17 = v43 > v9 && v6 <= v9;
      if (!v17)
      {
        v18 = -v10;
        v19 = v10 + v7;
        v20 = v8 - v10;
        v21 = v9 + v18;
        v22 = v21 + 64;
        if (v21 + 64 >= v41)
        {
          v22 = v41;
        }

        v42 = v21;
        v43 = v22;
        if (v41 < v20)
        {
          v20 = v41;
        }

        v45.location = v21 + v40;
        v45.length = v20 + v19;
        CFStringGetCharacters(theString, v45, v36);
        v6 = v42;
      }

      v11 = v36 - v6;
      goto LABEL_11;
    }

    v12 = v39[v40 + v9];
LABEL_14:
    result = 0;
    if (v12 <= 0x2029u)
    {
      break;
    }

    v14 = v12 - 8234;
    v17 = v14 > 0x3F;
    v15 = (1 << v14) & 0xF00000000000001FLL;
    if (!v17 && v15 != 0)
    {
      return result;
    }

LABEL_27:
    ++v7;
    --v8;
    v17 = v9-- <= 0;
    if (v17)
    {
      return 1;
    }
  }

  if (v12 > 0x61Bu)
  {
    if (v12 - 8206 < 2 || v12 == 1564)
    {
      return result;
    }

    goto LABEL_27;
  }

  if (v12 == 32)
  {
    return result;
  }

  if (v12 != 46)
  {
    if (v12 == 47)
    {
      return result;
    }

    goto LABEL_27;
  }

  if (v9 >= v5)
  {
    return 0;
  }

  v23 = v9 + 64;
  v24 = -v9;
  for (i = v9 + 1; ; --i)
  {
    v26 = v9 >= 0x40 ? 64 : v9;
    v27 = i - 1;
    if (i - 1 < 1)
    {
      break;
    }

    if (v38)
    {
      v28 = v38[v40 - 2 + i];
    }

    else if (v39)
    {
      v28 = v39[v40 - 2 + i];
    }

    else
    {
      if (v43 < v27 || v6 >= v27)
      {
        v29 = -v26;
        v30 = v26 + v24;
        v31 = v23 - v26;
        v32 = i + v29;
        v33 = v32 + 63;
        if (v32 + 63 >= v41)
        {
          v33 = v41;
        }

        v42 = v32 - 1;
        v43 = v33;
        v34.location = v32 + v40 - 1;
        if (v41 >= v31)
        {
          v35 = v31;
        }

        else
        {
          v35 = v41;
        }

        v34.length = v35 + v30;
        CFStringGetCharacters(theString, v34, v36);
        v6 = v42;
      }

      v28 = *(&v36[-1] + i - v6 + 6);
    }

    result = 0;
    ++v24;
    --v23;
    --v9;
    if (v28 == 47)
    {
      return result;
    }
  }

  return 1;
}

CFIndex _rangeOfLastPathComponent(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  if ((v1 & 0x20) == 0)
  {
    return -1;
  }

  v3 = 0;
  v4 = 32;
  do
  {
    v5 = v4;
    v4 >>= 1;
    v3 += v1 & 1;
    v1 >>= 1;
  }

  while ((v5 & 2) == 0);
  v6 = (a1 + 56 + 16 * v3);
  v2 = *v6;
  v7 = v6[1];
  if (*v6 != -1 && v7 != 0)
  {
    result.location = 0;
    result.length = 0;
    v9 = (a1 + 24);
    v10 = atomic_load((a1 + 24));
    v11 = v7 - 1;
    if (CFStringGetCharacterAtIndex(v10, v7 - 1 + v2) != 47 || (--v7, v11))
    {
      v12 = atomic_load(v9);
      v16.location = v2;
      v16.length = v7;
      if (CFStringFindWithOptions(v12, @"/", v16, 4uLL, &result))
      {
        return result.location + 1;
      }
    }
  }

  return v2;
}

CFURLRef CFURLCreateCopyAppendingPathExtension(CFAllocatorRef allocator, CFURLRef url, CFStringRef extension)
{
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLCreateCopyAppendingPathExtension_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    v6 = [(__CFURL *)url URLByAppendingPathExtension:extension];

    return v6;
  }

  if (CFStringGetLength(extension))
  {
    if (_CFExtensionIsValidToAppend(extension))
    {
      if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
      {
        CFURLCreateCopyAppendingPathExtension_cold_2();
      }

      if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, url))
      {
        url = [(__CFURL *)url _cfurl];
      }

      v8 = CFURLIsFileReferenceURL(url);
      if (!v8)
      {
        PathComponent = _rangeOfLastPathComponent(url);
        if (PathComponent == -1)
        {
          return 0;
        }

        goto LABEL_22;
      }

      v9 = CFURLCreateFilePathURL(allocator, url, 0);
      if (v9)
      {
        url = v9;
        PathComponent = _rangeOfLastPathComponent(v9);
        if (PathComponent == -1)
        {
          CFRelease(url);
          return 0;
        }

LABEL_22:
        v12 = PathComponent;
        v13 = v11;
        v14 = atomic_load(url + 3);
        MutableCopy = CFStringCreateMutableCopy(allocator, 0, v14);
        if (MutableCopy)
        {
          v16 = MutableCopy;
          v17 = v12 + v13;
          CFStringInsert(MutableCopy, v17, @".");
          if (_CFURLHasFileURLScheme(url, 0))
          {
            v18 = POSIXPathToURLPath(extension, 0, 0, 0);
          }

          else
          {
            v18 = CFURLCreateStringByAddingPercentEscapes(allocator, extension, 0, @";?/", *(url + 5));
          }

          v20 = v18;
          if (v18)
          {
            CFStringInsert(v16, v17 + 1, v18);
            CFRelease(v20);
            v19 = _CFURLCreateWithArbitraryString(allocator, v16, *(url + 4));
          }

          else
          {
            v19 = 0;
          }

          CFRelease(v16);
        }

        else
        {
          v19 = 0;
        }

        if (v8)
        {
          CFRelease(url);
        }

        return v19;
      }
    }

    return 0;
  }

  return CFRetain(url);
}

void CFReadStreamClose(CFReadStreamRef stream)
{
  if (CF_IS_OBJC(0x26uLL, stream))
  {

    [(__CFReadStream *)stream close];
  }

  else
  {

    _CFStreamClose(stream);
  }
}

uint64_t __CFSetLastAllocationEventName()
{
  if (__CFOASafe == 1 && __CFObjectAllocSetLastAllocEventNameFunction != 0)
  {
    return __CFObjectAllocSetLastAllocEventNameFunction();
  }

  return result;
}

CFIndex CFGetRetainCount(CFTypeRef cf)
{
  if (!cf)
  {
    CFGetRetainCount_cold_2();
  }

  if ((cf & 0x8000000000000000) != 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = atomic_load(cf + 1);
  if (!CF_IS_OBJC((v3 >> 8) & 0x3FF, cf))
  {
    v4 = atomic_load(cf + 1);
    if ((v4 & 0x800000) == 0)
    {
      v5 = atomic_load(cf + 1);
      v6 = v5 >> 44;
      if (v6)
      {
        return v6;
      }

      else
      {
        return 0xFFFFFFFFFFFFFFFLL;
      }
    }

    __CFCheckCFInfoPACSignature_Bridged(cf);
    v7 = (v4 >> 8) & 0x3FF;
    if (v7 > 0x47)
    {
      v9 = v7 - 72;
      if (v9 >= dword_1ED40C410[0])
      {
        v10 = 0;
        goto LABEL_19;
      }

      v10 = __CFRuntimeClassTables[v9 >> 6];
      if (!v10)
      {
LABEL_19:
        v11 = *(v10 + 80);
        if (v11 && (*v10 & 8) != 0)
        {
          if (v4 > 0xFFFFEFFFFFFFFFFFLL)
          {
            return v11(0, cf);
          }
        }

        else
        {
          __break(1u);
        }

        CFGetRetainCount_cold_1();
      }

      v8 = (v10 + 8 * (v9 & 0x3F));
    }

    else
    {
      v8 = (&__CFRuntimeBuiltinClassTable + v7);
    }

    v10 = *v8;
    goto LABEL_19;
  }

  return [cf retainCount];
}

double __cficu_ucal_getGregorianChange()
{
  ucal_getGregorianChange();
  v1 = v0;
  if (_NSCFCalendarLogger_onceToken != -1)
  {
    __cficu_ucal_getGregorianChange_cold_1();
  }

  return v1;
}

_OWORD *__ApplyUDateFormatSymbol(_OWORD *result)
{
  v1 = result;
  v2 = 0;
  v31 = *MEMORY[0x1E69E9840];
  v30 = 0;
  memset(v27, 0, sizeof(v27));
  *&v3 = 0x100000001;
  *(&v3 + 1) = 0x100000001;
  v28 = v3;
  v29 = 0u;
  *&v29 = 0x100000001;
  v4 = *(result + 136);
  v5 = *(result + 168);
  v26[1] = *(result + 152);
  v26[2] = v5;
  v6 = *(result + 200);
  v26[3] = *(result + 184);
  v26[4] = v6;
  v7 = *(result + 232);
  v26[5] = *(result + 216);
  v26[6] = v7;
  v8 = *(result + 264);
  v26[7] = *(result + 248);
  v26[8] = v8;
  v9 = result[21];
  v25[0] = result[20];
  v25[1] = v9;
  v10 = result[23];
  v25[2] = result[22];
  v25[3] = v10;
  v11 = result[25];
  v25[4] = result[24];
  v25[5] = v11;
  v12 = result[27];
  v25[6] = result[26];
  v25[7] = v12;
  v25[8] = result[28];
  v26[0] = v4;
  do
  {
    v13 = *(v26 + v2);
    if (v13 || (v13 = *(v25 + v2)) != 0)
    {
      result = __CFDateFormatterSetSymbolsArray(v1[2], dword_183306FD0[v2], v27[v2], v13);
    }

    ++v2;
  }

  while (v2 != 18);
  v14 = v1[35];
  if (!v14)
  {
    if (v1[62])
    {
      v14 = v1[62];
    }

    else
    {
      v14 = 0;
    }
  }

  v15 = v1[36];
  if (!v15)
  {
    v15 = v1[63];
  }

  v16 = 1;
  do
  {
    v17 = v16;
    if (v14)
    {
      Length = CFStringGetLength(v14);
      if (Length >= 768)
      {
        v21 = 768;
      }

      else
      {
        v21 = Length;
      }

      MEMORY[0x1EEE9AC00](Length, v19, v20);
      v23 = (v24 - v22);
      if (!CFStringGetCharactersPtr(v14))
      {
        v32.location = 0;
        v32.length = v21;
        CFStringGetCharacters(v14, v32, v23);
      }

      v24[3] = 0;
      result = __cficu_udat_setSymbols();
    }

    v16 = 0;
    v14 = v15;
  }

  while ((v17 & 1) != 0);
  return result;
}

void __CFDateFormatterSetProperty(uint64_t a1, __CFString *cf1, __CFString *theArray, int a4)
{
  v45 = *MEMORY[0x1E69E9840];
  valuePtr[1] = 0;
  if (@"kCFDateFormatterIsLenientKey" == cf1)
  {
    if (a4)
    {
      return;
    }

    v7 = *(a1 + 64);
    *(a1 + 64) = 0;
    if (theArray)
    {
      v8 = CFRetain(theArray);
    }

    else
    {
      v8 = 0;
    }

    *(a1 + 64) = v8;
LABEL_59:
    __ResetUDateFormat(a1, 0, theArray);
    goto LABEL_60;
  }

  if (@"kCFDateFormatterDoesRelativeDateFormattingKey" == cf1)
  {
    if (a4)
    {
      return;
    }

    v7 = *(a1 + 72);
    *(a1 + 72) = 0;
    if (&__kCFBooleanTrue == theArray)
    {
      v9 = theArray;
    }

    else
    {
      v9 = &__kCFBooleanFalse;
    }

    if (v9)
    {
      v9 = CFRetain(v9);
    }

    *(a1 + 72) = v9;
    goto LABEL_59;
  }

  if (@"kCFDateFormatterCalendarKey" == cf1)
  {
    if (a4)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a1 + 96);
      *(a1 + 96) = 0;
    }

    v11 = CFGetAllocator(*(a1 + 24));
    v12 = *(a1 + 24);
    CFCalendarGetIdentifier(theArray);
    CopyWithNewCalendarIdentifier = _CFLocaleCreateCopyWithNewCalendarIdentifier(v11, v12);
    v14 = *(a1 + 24);
    if (v14)
    {
      CFRelease(v14);
    }

    *(a1 + 24) = CopyWithNewCalendarIdentifier;
    if (a4)
    {
      goto LABEL_60;
    }

    *(a1 + 96) = CFDateFormatterCopyProperty(a1, @"kCFDateFormatterCalendarKey");
    goto LABEL_59;
  }

  if (@"kCFDateFormatterCalendarIdentifierKey" == cf1)
  {
    if (a4)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a1 + 104);
      *(a1 + 104) = 0;
    }

    Identifier = CFLocaleGetIdentifier(*(a1 + 24));
    ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(&__kCFAllocatorSystemDefault, Identifier);
    MutableCopy = CFDictionaryCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, ComponentsFromLocaleIdentifier);
    CFDictionarySetValue(MutableCopy, @"calendar", theArray);
    LocaleIdentifierFromComponents = CFLocaleCreateLocaleIdentifierFromComponents(&__kCFAllocatorSystemDefault, MutableCopy);
    CFRelease(MutableCopy);
    CFRelease(ComponentsFromLocaleIdentifier);
    v19 = CFGetAllocator(*(a1 + 24));
    v20 = CFLocaleCreate(v19, LocaleIdentifierFromComponents);
    CFRelease(LocaleIdentifierFromComponents);
    CFRelease(*(a1 + 24));
    *(a1 + 24) = v20;
    if (a4)
    {
      goto LABEL_60;
    }

    *(a1 + 104) = CFDateFormatterCopyProperty(a1, @"kCFDateFormatterCalendarIdentifierKey");
    goto LABEL_59;
  }

  if (@"kCFDateFormatterTimeZoneKey" == cf1)
  {
    v7 = *(a1 + 88);
    if (v7 == theArray)
    {
      return;
    }

    if (a4)
    {
      v10 = *(a1 + 88);
      v7 = 0;
    }

    else
    {
      v10 = 0;
      *(a1 + 88) = 0;
    }

    if (theArray)
    {
      v23 = CFRetain(theArray);
    }

    else
    {
      v23 = CFTimeZoneCopyDefault();
    }

    *(a1 + 88) = v23;
    if (v10)
    {
      CFRelease(v10);
    }

    if (!a4)
    {
      v24 = *(a1 + 88);
      *(a1 + 88) = CFDateFormatterCopyProperty(a1, @"kCFDateFormatterTimeZoneKey");
      __ResetUDateFormat(a1, 0, v25);
      if (v24)
      {
        CFRelease(v24);
      }
    }

    goto LABEL_60;
  }

  if (@"kCFDateFormatterDefaultFormatKey" == cf1)
  {
    return;
  }

  if (@"kCFDateFormatterTwoDigitStartDateKey" == cf1)
  {
    if (a4)
    {
      return;
    }

    v7 = *(a1 + 112);
    *(a1 + 112) = 0;
    if (theArray)
    {
      v21 = CFRetain(theArray);
    }

    else
    {
      v21 = 0;
    }

    *(a1 + 112) = v21;
    goto LABEL_60;
  }

  if (@"kCFDateFormatterDefaultDateKey" == cf1)
  {
    if (a4)
    {
      return;
    }

    v7 = *(a1 + 120);
    *(a1 + 120) = 0;
    if (theArray)
    {
      v22 = CFRetain(theArray);
    }

    else
    {
      v22 = 0;
    }

    *(a1 + 120) = v22;
    goto LABEL_60;
  }

  if (@"kCFDateFormatterGregorianStartDateKey" == cf1)
  {
    if (a4)
    {
      return;
    }

    v7 = *(a1 + 128);
    *(a1 + 128) = 0;
    if (theArray)
    {
      v26 = CFRetain(theArray);
    }

    else
    {
      v26 = 0;
    }

    *(a1 + 128) = v26;
    goto LABEL_59;
  }

  if (@"kCFDateFormatterEraSymbolsKey" == cf1)
  {
    if (!a4)
    {
      v7 = *(a1 + 136);
      *(a1 + 136) = 0;
      __CFDateFormatterSetSymbolsArray(*(a1 + 16), 0, 0, theArray);
      *(a1 + 136) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 0, 0);
      goto LABEL_60;
    }

    v27 = *(a1 + 16);
    v28 = 0;
    goto LABEL_111;
  }

  if (@"kCFDateFormatterLongEraSymbolsKey" == cf1)
  {
    if (!a4)
    {
      v7 = *(a1 + 144);
      *(a1 + 144) = 0;
      __CFDateFormatterSetSymbolsArray(*(a1 + 16), 7u, 0, theArray);
      *(a1 + 144) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 7, 0);
      goto LABEL_60;
    }

    v27 = *(a1 + 16);
    v28 = 7;
    goto LABEL_111;
  }

  if (@"kCFDateFormatterMonthSymbolsKey" == cf1)
  {
    if (!a4)
    {
      v7 = *(a1 + 152);
      *(a1 + 152) = 0;
      __CFDateFormatterSetSymbolsArray(*(a1 + 16), 1u, 0, theArray);
      *(a1 + 152) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 1, 0);
      goto LABEL_60;
    }

    v27 = *(a1 + 16);
    v28 = 1;
    goto LABEL_111;
  }

  if (@"kCFDateFormatterShortMonthSymbolsKey" == cf1)
  {
    if (!a4)
    {
      v7 = *(a1 + 160);
      *(a1 + 160) = 0;
      __CFDateFormatterSetSymbolsArray(*(a1 + 16), 2u, 0, theArray);
      *(a1 + 160) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 2, 0);
      goto LABEL_60;
    }

    v27 = *(a1 + 16);
    v28 = 2;
    goto LABEL_111;
  }

  if (@"kCFDateFormatterVeryShortMonthSymbolsKey" == cf1)
  {
    if (!a4)
    {
      v7 = *(a1 + 168);
      *(a1 + 168) = 0;
      __CFDateFormatterSetSymbolsArray(*(a1 + 16), 8u, 0, theArray);
      *(a1 + 168) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 8, 0);
      goto LABEL_60;
    }

    v27 = *(a1 + 16);
    v28 = 8;
    goto LABEL_111;
  }

  if (@"kCFDateFormatterStandaloneMonthSymbolsKey" == cf1)
  {
    if (!a4)
    {
      v7 = *(a1 + 176);
      *(a1 + 176) = 0;
      __CFDateFormatterSetSymbolsArray(*(a1 + 16), 0xAu, 0, theArray);
      *(a1 + 176) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 10, 0);
      goto LABEL_60;
    }

    v27 = *(a1 + 16);
    v28 = 10;
    goto LABEL_111;
  }

  if (@"kCFDateFormatterShortStandaloneMonthSymbolsKey" == cf1)
  {
    if (!a4)
    {
      v7 = *(a1 + 184);
      *(a1 + 184) = 0;
      __CFDateFormatterSetSymbolsArray(*(a1 + 16), 0xBu, 0, theArray);
      *(a1 + 184) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 11, 0);
      goto LABEL_60;
    }

    v27 = *(a1 + 16);
    v28 = 11;
    goto LABEL_111;
  }

  if (@"kCFDateFormatterVeryShortStandaloneMonthSymbolsKey" == cf1)
  {
    if (!a4)
    {
      v7 = *(a1 + 192);
      *(a1 + 192) = 0;
      __CFDateFormatterSetSymbolsArray(*(a1 + 16), 0xCu, 0, theArray);
      *(a1 + 192) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 12, 0);
      goto LABEL_60;
    }

    v27 = *(a1 + 16);
    v28 = 12;
    goto LABEL_111;
  }

  if (@"kCFDateFormatterWeekdaySymbolsKey" == cf1)
  {
    if (!a4)
    {
      v7 = *(a1 + 200);
      *(a1 + 200) = 0;
      __CFDateFormatterSetSymbolsArray(*(a1 + 16), 3u, 1, theArray);
      *(a1 + 200) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 3, 1);
      goto LABEL_60;
    }

    v27 = *(a1 + 16);
    v28 = 3;
    goto LABEL_133;
  }

  if (@"kCFDateFormatterShortWeekdaySymbolsKey" == cf1)
  {
    if (!a4)
    {
      v7 = *(a1 + 208);
      *(a1 + 208) = 0;
      __CFDateFormatterSetSymbolsArray(*(a1 + 16), 4u, 1, theArray);
      *(a1 + 208) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 4, 1);
      goto LABEL_60;
    }

    v27 = *(a1 + 16);
    v28 = 4;
    goto LABEL_133;
  }

  if (@"kCFDateFormatterVeryShortWeekdaySymbolsKey" == cf1)
  {
    if (!a4)
    {
      v7 = *(a1 + 216);
      *(a1 + 216) = 0;
      __CFDateFormatterSetSymbolsArray(*(a1 + 16), 9u, 1, theArray);
      *(a1 + 216) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 9, 1);
      goto LABEL_60;
    }

    v27 = *(a1 + 16);
    v28 = 9;
    goto LABEL_133;
  }

  if (@"kCFDateFormatterStandaloneWeekdaySymbolsKey" == cf1)
  {
    if (!a4)
    {
      v7 = *(a1 + 224);
      *(a1 + 224) = 0;
      __CFDateFormatterSetSymbolsArray(*(a1 + 16), 0xDu, 1, theArray);
      *(a1 + 224) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 13, 1);
      goto LABEL_60;
    }

    v27 = *(a1 + 16);
    v28 = 13;
    goto LABEL_133;
  }

  if (@"kCFDateFormatterShortStandaloneWeekdaySymbolsKey" == cf1)
  {
    if (!a4)
    {
      v7 = *(a1 + 232);
      *(a1 + 232) = 0;
      __CFDateFormatterSetSymbolsArray(*(a1 + 16), 0xEu, 1, theArray);
      *(a1 + 232) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 14, 1);
      goto LABEL_60;
    }

    v27 = *(a1 + 16);
    v28 = 14;
    goto LABEL_133;
  }

  if (@"kCFDateFormatterVeryShortStandaloneWeekdaySymbolsKey" == cf1)
  {
    if (!a4)
    {
      v7 = *(a1 + 240);
      *(a1 + 240) = 0;
      __CFDateFormatterSetSymbolsArray(*(a1 + 16), 0xFu, 1, theArray);
      *(a1 + 240) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 15, 1);
      goto LABEL_60;
    }

    v27 = *(a1 + 16);
    v28 = 15;
LABEL_133:
    v29 = 1;
    goto LABEL_112;
  }

  if (@"kCFDateFormatterQuarterSymbolsKey" == cf1)
  {
    if (!a4)
    {
      v7 = *(a1 + 248);
      *(a1 + 248) = 0;
      __CFDateFormatterSetSymbolsArray(*(a1 + 16), 0x10u, 0, theArray);
      *(a1 + 248) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 16, 0);
      goto LABEL_60;
    }

    v27 = *(a1 + 16);
    v28 = 16;
  }

  else if (@"kCFDateFormatterShortQuarterSymbolsKey" == cf1)
  {
    if (!a4)
    {
      v7 = *(a1 + 256);
      *(a1 + 256) = 0;
      __CFDateFormatterSetSymbolsArray(*(a1 + 16), 0x11u, 0, theArray);
      *(a1 + 256) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 17, 0);
      goto LABEL_60;
    }

    v27 = *(a1 + 16);
    v28 = 17;
  }

  else
  {
    if (@"kCFDateFormatterStandaloneQuarterSymbolsKey" != cf1)
    {
      if (@"kCFDateFormatterShortStandaloneQuarterSymbolsKey" != cf1)
      {
        if (@"kCFDateFormatterAMSymbolKey" == cf1)
        {
          if (a4)
          {
            v7 = 0;
          }

          else
          {
            v7 = *(a1 + 280);
            *(a1 + 280) = 0;
          }

          Length = CFStringGetLength(theArray);
          if (Length >= 768)
          {
            v33 = 768;
          }

          else
          {
            v33 = Length;
          }

          MEMORY[0x1EEE9AC00](Length, v31, v32);
          v35 = (valuePtr - v34);
          if (!CFStringGetCharactersPtr(theArray))
          {
            v47.location = 0;
            v47.length = v33;
            CFStringGetCharacters(theArray, v47, v35);
          }

          __cficu_udat_setSymbols();
          if (!a4)
          {
            Copy = 0;
            if (theArray)
            {
              Copy = CFStringCreateCopy(0, theArray);
            }

            *(a1 + 280) = Copy;
          }
        }

        else if (@"kCFDateFormatterPMSymbolKey" == cf1)
        {
          if (a4)
          {
            v7 = 0;
          }

          else
          {
            v7 = *(a1 + 288);
            *(a1 + 288) = 0;
          }

          v37 = CFStringGetLength(theArray);
          if (v37 >= 768)
          {
            v40 = 768;
          }

          else
          {
            v40 = v37;
          }

          MEMORY[0x1EEE9AC00](v37, v38, v39);
          v42 = (valuePtr - v41);
          if (!CFStringGetCharactersPtr(theArray))
          {
            v48.location = 0;
            v48.length = v40;
            CFStringGetCharacters(theArray, v48, v42);
          }

          __cficu_udat_setSymbols();
          if (!a4)
          {
            v43 = 0;
            if (theArray)
            {
              v43 = CFStringCreateCopy(0, theArray);
            }

            *(a1 + 288) = v43;
          }
        }

        else if (@"kCFDateFormatterAmbiguousYearStrategyKey" == cf1)
        {
          v7 = *(a1 + 296);
          *(a1 + 296) = 0;
          *(a1 + 296) = CFRetain(theArray);
        }

        else if (@"kCFDateFormatterUsesCharacterDirectionKey" == cf1)
        {
          v7 = *(a1 + 304);
          *(a1 + 304) = CFRetain(theArray);
        }

        else
        {
          if (!CFEqual(cf1, @"kCFDateFormatterFormattingContextKey"))
          {
            return;
          }

          if (a4)
          {
            v7 = 0;
          }

          else
          {
            v7 = *(a1 + 312);
            *(a1 + 312) = 0;
          }

          valuePtr[0] = 0;
          CFNumberGetValue(theArray, kCFNumberIntType, valuePtr);
          __cficu_udat_setContext();
          if (!a4)
          {
            *(a1 + 312) = CFRetain(theArray);
          }
        }

        goto LABEL_60;
      }

      if (a4)
      {
        v27 = *(a1 + 16);
        v28 = 19;
        goto LABEL_111;
      }

      v7 = *(a1 + 272);
      *(a1 + 272) = 0;
      __CFDateFormatterSetSymbolsArray(*(a1 + 16), 0x13u, 0, theArray);
      *(a1 + 272) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 19, 0);
LABEL_60:
      if (v7)
      {
        CFRelease(v7);
      }

      return;
    }

    if (!a4)
    {
      v7 = *(a1 + 264);
      *(a1 + 264) = 0;
      __CFDateFormatterSetSymbolsArray(*(a1 + 16), 0x12u, 0, theArray);
      *(a1 + 264) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 18, 0);
      goto LABEL_60;
    }

    v27 = *(a1 + 16);
    v28 = 18;
  }

LABEL_111:
  v29 = 0;
LABEL_112:

  __CFDateFormatterSetSymbolsArray(v27, v28, v29, theArray);
}

uint64_t __cficu_ucal_clone()
{
  v0 = ucal_clone();
  if (_NSCFCalendarLogger_onceToken != -1)
  {
    __cficu_ucal_clone_cold_1();
  }

  return v0;
}

void __cficu_ucal_setTimeZone()
{
  ucal_setTimeZone();
  if (_NSCFCalendarLogger_onceToken != -1)
  {
    __cficu_ucal_setTimeZone_cold_1();
  }
}

uint64_t __substituteFormatStringFromPrefsDF(uint64_t result, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = 40;
  if (a2)
  {
    v2 = 32;
  }

  v3 = *(result + v2);
  v4 = 464;
  if (a2)
  {
    v4 = 472;
  }

  v5 = *(result + v4);
  if (v3)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    Identifier = CFLocaleGetIdentifier(*(result + 24));
    if (!CFStringGetCStringPtr(Identifier, 0x600u))
    {
      CFStringGetCString(Identifier, v21, 768, 0x600u);
    }

    v19 = 0;
    result = __cficu_udat_open();
    if (result)
    {
      v19 = 0;
      v8 = __cficu_udat_toPattern();
      if (v8 <= 768)
      {
        v9 = CFStringCreateWithCharacters(&__kCFAllocatorSystemDefault, v20, v8);
        v19 = 0;
        v10 = __cficu_udat_toPattern();
        if (v10 <= 768)
        {
          Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
          CFStringAppendCharacters(Mutable, v20, v10);
          v18.location = 0;
          v18.length = 0;
          v24.location = 0;
          v24.length = v10;
          if (CFStringFindWithOptions(Mutable, v9, v24, 0, &v18))
          {
            CFStringReplace(Mutable, v18, v5);
            Length = CFStringGetLength(Mutable);
            v13 = Length;
            MEMORY[0x1EEE9AC00](Length, v14, v15);
            v17 = (&v18 - ((v16 + 15) & 0x3FFFFFFF0));
            if (!CFStringGetCharactersPtr(Mutable))
            {
              v23.length = v13;
              v23.location = 0;
              CFStringGetCharacters(Mutable, v23, v17);
            }

            v19 = 0;
            __cficu_udat_applyPattern();
          }

          CFRelease(Mutable);
        }

        CFRelease(v9);
      }

      return __cficu_udat_close();
    }
  }

  return result;
}

uint64_t __forwarding_prep_b___@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>, void *a9@<X8>, __n128 a10@<Q0>, __n128 a11@<Q1>, __n128 a12@<Q2>, __n128 a13@<Q3>, __n128 a14@<Q4>, __n128 a15@<Q5>, __n128 a16@<Q6>, __n128 a17@<Q7>)
{
  v26 = a17;
  v25 = a16;
  v24 = a15;
  v23 = a14;
  v22 = a13;
  v21 = a12;
  v20 = a11;
  v19 = a10;
  v18[8] = a9;
  v18[7] = a8;
  v18[6] = a7;
  v18[5] = a6;
  v18[4] = a5;
  v18[3] = a4;
  v18[2] = a3;
  v18[1] = a2;
  v18[0] = a1;
  return __block_forwarding___(v18);
}

uint64_t __block_forwarding___(id *a1)
{
  v2 = *a1;
  Class = object_getClass(*a1);
  Name = class_getName(Class);
  if (!strncmp(Name, "_NSZombie_", 0xAuLL))
  {
    __block_forwarding____cold_3(v2, v5, v6, v7, v8, v9, v10, v11);
  }

  v12 = _Block_signature(v2);
  if (!v12)
  {
    __block_forwarding____cold_2(v2, v13, v14, v15, v16, v17, v18, v19);
  }

  v20 = [(NSInvocation *)NSBlockInvocation _invocationWithMethodSignature:[NSMethodSignature signatureWithObjCTypes:v12] frame:a1];
  [v20 setTarget:0];
  v21 = v2[4];
  [v20[3] numberOfArguments];
  objc_opt_class();
  v22 = [v20[3] frameLength];
  if (v22)
  {
    if ((v22 & 7) != 0)
    {
      goto LABEL_14;
    }

    v24 = v20[1];
    v25 = 8;
    do
    {
      v24 += 8;
      --v25;
    }

    while (v25);
  }

  v20[6] = v23;
  if (!v21)
  {
    __break(1u);
LABEL_14:
    __block_forwarding____cold_1();
  }

  v26 = *(v21 + 16);

  return v26(v21, v20);
}

CFDictionaryRef CFURLCopyResourcePropertiesForKeys(CFURLRef url, CFArrayRef keys, CFErrorRef *error)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0;
  if (_CFURLHasFileURLScheme(url, &v13))
  {
    __CFURLResourceInfoPtr(url);
    result = _FSURLCopyResourcePropertiesForKeys();
    if (result)
    {
      return result;
    }
  }

  else if (!v13)
  {
    CFLog(4, @"CFURLCopyResourcePropertiesForKeys failed because it was passed a URL which has no scheme", v4, v5, v6, v7, v8, v9, v12);
  }

  v11 = CFGetAllocator(url);
  return CFDictionaryCreate(v11, 0, 0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
}

void CFDictionaryRemoveAllValues(CFMutableDictionaryRef theDict)
{
  if (CF_IS_OBJC(0x12uLL, theDict))
  {

    [(__CFDictionary *)theDict removeAllObjects];
  }

  else
  {
    v8 = atomic_load(theDict + 1);
    if ((v8 & 0x40) != 0)
    {
      CFLog(3, @"%s(): immutable collection %p given to mutating function", v2, v3, v4, v5, v6, v7, "void CFDictionaryRemoveAllValues(CFMutableDictionaryRef)");
    }

    v9 = atomic_load(theDict + 1);
    if (v9)
    {
      if (!__CF_KVO_WillChangeKeysSelector_hc)
      {
        __CF_KVO_WillChangeKeysSelector_hc = sel_registerName("_willChangeValuesForKeys:");
      }

      Count = CFDictionaryGetCount(theDict);
      v12 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
      CFDictionaryGetKeysAndValues(theDict, v12, 0);
      v10 = CFSetCreate(&__kCFAllocatorSystemDefault, v12, Count, &kCFTypeSetCallBacks);
      free(v12);
      [theDict __CF_KVO_WillChangeKeysSelector_hc];
    }

    else
    {
      v10 = 0;
    }

    CFBasicHashRemoveAllValues(theDict);
    v13 = atomic_load(theDict + 1);
    if (v13)
    {
      v14 = __CF_KVO_DidChangeKeysSelector_hc;
      if (!__CF_KVO_DidChangeKeysSelector_hc)
      {
        v14 = sel_registerName("_didChangeValuesForKeys:");
        __CF_KVO_DidChangeKeysSelector_hc = v14;
      }

      [theDict v14];
      if (v10)
      {

        CFRelease(v10);
      }
    }
  }
}

void __ResetUDateFormat(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v6 = v3;
  v139[192] = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  if (*(v6 + 16))
  {
    __cficu_udat_close();
  }

  *(v6 + 16) = 0;
  v137[0] = 0;
  v8 = *(v6 + 24);
  if (v8)
  {
    Identifier = CFLocaleGetIdentifier(v8);
  }

  else
  {
    Identifier = &stru_1EF068AA8;
  }

  CFStringGetCString(Identifier, v137, 768, 0x600u);
  v136[0] = 0;
  v11 = (v6 + 88);
  v10 = *(v6 + 88);
  if (v10)
  {
    Name = CFTimeZoneGetName(v10);
    if (!Name)
    {
      v14 = _CFOSLog(0, v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __ResetUDateFormat_cold_1(v11, v14);
      }

      goto LABEL_209;
    }
  }

  else
  {
    Name = @"GMT";
  }

  if (CFStringGetLength(Name) <= 768)
  {
    Length = CFStringGetLength(Name);
  }

  else
  {
    Length = 768;
  }

  v140.location = 0;
  v140.length = Length;
  CFStringGetCharacters(Name, v140, v136);
  v16 = 0;
  v17 = *(v6 + 32);
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v16 = 0;
    }

    else if (v17 == 3)
    {
      v16 = 0;
    }
  }

  else if (v17)
  {
    if (v17 == 1)
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 1;
  }

  v18 = *(v6 + 72);
  v19 = *(v6 + 80);
  if (v18)
  {
    v20 = v18 == &__kCFBooleanTrue;
  }

  else
  {
    v20 = 0;
  }

  v21 = !v20;
  if (v19)
  {
    v22 = v19 == &__kCFBooleanTrue;
  }

  else
  {
    v22 = 0;
  }

  if (!v22 && v5 == 0)
  {
    v24 = v21;
  }

  else
  {
    v24 = 1;
  }

  v134 = 0;
  v25 = __cficu_udat_open();
  if (v25)
  {
    v26 = v25;
    if ((v21 & 1) == 0)
    {
      __cficu_udat_setContext();
    }

    v132 = v16;
    __cficu_udat_setLenient();
    if (!*(v6 + 40) && !*(v6 + 32))
    {
      __cficu_udat_applyPattern();
    }

    if (v21 && *(v6 + 80) == &__kCFBooleanTrue)
    {
      v27 = CFStringGetLength(*(v6 + 48));
      v30 = v27;
      v31 = 2 * v27;
      if ((2 * v27) < 0x101)
      {
        if (v27 < 1)
        {
          v32 = 0;
        }

        else
        {
          MEMORY[0x1EEE9AC00](v27, v28, v29);
          v32 = &v131[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
          bzero(v32, v31);
        }
      }

      else
      {
        v32 = malloc_type_malloc(2 * v27, 0x1000040BDFB0063uLL);
      }

      if (!CFStringGetCharactersPtr(*(v6 + 48)))
      {
        v141.location = 0;
        v141.length = v30;
        CFStringGetCharacters(*(v6 + 48), v141, v32);
      }

      __cficu_udat_applyPattern();
      if (v31 >= 0x101)
      {
        free(v32);
      }
    }

    Value = CFLocaleGetValue(*(v6 + 24), @"calendar");
    if (Value && CFEqual(Value, @"gregorian"))
    {
      v134 = 0;
      __cficu_udat_set2DigitYearStart(-6.31152e11);
    }

    *(v6 + 16) = v26;
    AppleICUDateTimeSymbolsPref = _CFLocaleGetAppleICUDateTimeSymbolsPref(*(v6 + 24), v34);
    if (AppleICUDateTimeSymbolsPref)
    {
      v37 = AppleICUDateTimeSymbolsPref;
      v38 = CFGetTypeID(AppleICUDateTimeSymbolsPref);
      if (v38 == CFDictionaryGetTypeID())
      {
        CFDictionaryApplyFunction(v37, __CFDateFormatterStoreSymbolPrefs, v6);
      }
    }

    AppleFirstWeekdayPref = _CFLocaleGetAppleFirstWeekdayPref(*(v6 + 24), v36);
    if (AppleFirstWeekdayPref)
    {
      v41 = AppleFirstWeekdayPref;
      v42 = CFGetTypeID(AppleFirstWeekdayPref);
      if (v42 == CFDictionaryGetTypeID())
      {
        v43 = *(v6 + 512);
        if (v43)
        {
          CFRelease(v43);
        }

        *(v6 + 512) = CFRetain(v41);
      }
    }

    AppleMinDaysInFirstWeekPref = _CFLocaleGetAppleMinDaysInFirstWeekPref(*(v6 + 24), v40);
    if (AppleMinDaysInFirstWeekPref)
    {
      v46 = AppleMinDaysInFirstWeekPref;
      v47 = CFGetTypeID(AppleMinDaysInFirstWeekPref);
      if (v47 == CFDictionaryGetTypeID())
      {
        v48 = *(v6 + 520);
        if (v48)
        {
          CFRelease(v48);
        }

        *(v6 + 520) = CFRetain(v46);
      }
    }

    AppleICUForce24HourTimePref = _CFLocaleGetAppleICUForce24HourTimePref(*(v6 + 24), v45);
    if (AppleICUForce24HourTimePref)
    {
      v51 = AppleICUForce24HourTimePref;
      v52 = CFGetTypeID(AppleICUForce24HourTimePref);
      if (v52 == CFBooleanGetTypeID())
      {
        v53 = *(v6 + 480);
        if (v53)
        {
          CFRelease(v53);
        }

        *(v6 + 480) = CFRetain(v51);
      }
    }

    AppleICUForce12HourTimePref = _CFLocaleGetAppleICUForce12HourTimePref(*(v6 + 24), v50);
    if (AppleICUForce12HourTimePref)
    {
      v56 = AppleICUForce12HourTimePref;
      v57 = CFGetTypeID(AppleICUForce12HourTimePref);
      if (v57 == CFBooleanGetTypeID())
      {
        v58 = *(v6 + 488);
        if (v58)
        {
          CFRelease(v58);
        }

        *(v6 + 488) = CFRetain(v56);
      }
    }

    AppleICUDateFormatStringsPref = _CFLocaleGetAppleICUDateFormatStringsPref(*(v6 + 24), v55);
    if (AppleICUDateFormatStringsPref)
    {
      v61 = AppleICUDateFormatStringsPref;
      v62 = CFGetTypeID(AppleICUDateFormatStringsPref);
      if (v62 == CFDictionaryGetTypeID())
      {
        v63 = *(v6 + 40) - 1;
        v64 = v63 > 3 ? @"0" : off_1E6D7D920[v63];
        v65 = CFDictionaryGetValue(v61, v64);
        if (v65)
        {
          v66 = v65;
          v67 = CFGetTypeID(v65);
          if (v67 == CFStringGetTypeID())
          {
            v68 = *(v6 + 464);
            if (v68)
            {
              CFRelease(v68);
            }

            *(v6 + 464) = CFRetain(v66);
          }
        }
      }
    }

    AppleICUTimeFormatStringsPref = _CFLocaleGetAppleICUTimeFormatStringsPref(*(v6 + 24), v60);
    if (AppleICUTimeFormatStringsPref)
    {
      v70 = AppleICUTimeFormatStringsPref;
      v71 = CFGetTypeID(AppleICUTimeFormatStringsPref);
      if (v71 == CFDictionaryGetTypeID())
      {
        v72 = *(v6 + 32) - 1;
        v73 = v72 > 3 ? @"0" : off_1E6D7D920[v72];
        v74 = CFDictionaryGetValue(v70, v73);
        if (v74)
        {
          v75 = v74;
          v76 = CFGetTypeID(v74);
          if (v76 == CFStringGetTypeID())
          {
            v77 = *(v6 + 472);
            if (v77)
            {
              CFRelease(v77);
            }

            *(v6 + 472) = CFRetain(v75);
          }
        }
      }
    }

    v78 = *(v6 + 104);
    if (!v78)
    {
      v78 = CFLocaleGetValue(*(v6 + 24), @"calendar");
    }

    v138[0] = 0;
    __cficu_udat_getCalendar();
    if (!*(v6 + 96) && !*(v6 + 104) || (v79 = CFLocaleGetIdentifier(*(v6 + 24)), (UCalendar = __CFCalendarCreateUCalendar(0, v79, *(v6 + 88))) == 0))
    {
      UCalendar = __cficu_ucal_clone();
    }

    if (*(v6 + 64))
    {
      v138[0] = 0;
      __cficu_ucal_setAttribute();
    }

    v81 = *v11;
    v133 = v7;
    if (v81)
    {
      v138[0] = 0;
      v82 = CFTimeZoneGetName(v81);
      v83 = CFStringGetLength(v82);
      if (v83 >= 768)
      {
        v84 = 768;
      }

      else
      {
        v84 = v83;
      }

      v142.location = 0;
      v142.length = v84;
      CFStringGetCharacters(v82, v142, v139);
      __cficu_ucal_setTimeZone();
    }

    v85 = *(v6 + 128);
    if (v85)
    {
      v138[0] = 0;
      CFDateGetAbsoluteTime(v85);
    }

    else
    {
      if (!v78 || !CFEqual(v78, @"gregorian"))
      {
LABEL_117:
        v86 = *(v6 + 96);
        if (v86)
        {
          CFCalendarGetFirstWeekday(v86);
        }

        else
        {
          v90 = *(v6 + 512);
          if (!v90 || (v91 = CFDictionaryGetValue(v90, v78)) == 0 || (v92 = v91, v93 = CFGetTypeID(v91), v93 != CFNumberGetTypeID()) || (v139[0] = 0, !CFNumberGetValue(v92, kCFNumberCFIndexType, v139)))
          {
LABEL_120:
            v87 = *(v6 + 96);
            if (v87)
            {
              CFCalendarGetMinimumDaysInFirstWeek(v87);
            }

            else
            {
              v94 = *(v6 + 520);
              if (!v94 || (v95 = CFDictionaryGetValue(v94, v78)) == 0 || (v96 = v95, v97 = CFGetTypeID(v95), v97 != CFNumberGetTypeID()) || (v139[0] = 0, !CFNumberGetValue(v96, kCFNumberCFIndexType, v139)))
              {
LABEL_123:
                __cficu_udat_setCalendar();
                __cficu_ucal_close(UCalendar);
                if (v24)
                {
                  __substituteFormatStringFromPrefsDF(v6, 0);
                  __substituteFormatStringFromPrefsDF(v6, 1);
                  __ApplyUDateFormatSymbol(v6);
                  v7 = v133;
                }

                else
                {
                  v7 = v133;
                  if (*(v6 + 40))
                  {
                    v88 = *(v6 + 464);
                    if (!v88 || (CFStringGetLength(v88) > 767 ? (v89 = 768) : (v89 = CFStringGetLength(*(v6 + 464))), v143.location = 0, v143.length = v89, CFStringGetCharacters(*(v6 + 464), v143, v139), v89 == -1))
                    {
                      v138[0] = 0;
                      __cficu_udat_toPatternRelativeDate();
                    }

                    if (!*(v6 + 32) || (v98 = *(v6 + 472)) == 0 || (CFStringGetLength(v98) > 767 ? (v99 = 768) : (v99 = CFStringGetLength(*(v6 + 472))), v144.location = 0, v144.length = v99, CFStringGetCharacters(*(v6 + 472), v144, v138), v99 == -1))
                    {
                      *v135 = 0;
                      __cficu_udat_toPatternRelativeTime();
                    }

                    *v135 = 0;
                    __cficu_udat_applyPatternRelative();
                  }

                  else
                  {
                    __substituteFormatStringFromPrefsDF(v6, 0);
                    __substituteFormatStringFromPrefsDF(v6, 1);
                  }

                  __ApplyUDateFormatSymbol(v6);
                  if (*(v6 + 40))
                  {
                    v134 = 0;
                    v100 = __cficu_udat_toPatternRelativeDate();
                    if (v132)
                    {
                      v101 = 0;
                    }

                    else
                    {
                      v101 = __cficu_udat_toPatternRelativeTime();
                    }

                    if (v134 <= 0 && v100 <= 768 && v101 <= 768)
                    {
                      v111 = CFStringCreateWithCharacters(&__kCFAllocatorSystemDefault, v138, v101);
                      ForcedString = __CFDateFormatterCreateForcedString(v6, v111);
                      v113 = CFStringGetLength(ForcedString);
                      if (v113 <= 768)
                      {
                        v145.location = 0;
                        v145.length = v113;
                        CFStringGetCharacters(ForcedString, v145, v138);
                        v134 = 0;
                        __cficu_udat_applyPatternRelative();
                        v134 = 0;
                        v114 = __cficu_udat_toPattern();
                        if (v134 <= 0)
                        {
                          v115 = v114;
                          if (v114 <= 768)
                          {
                            v116 = *(v6 + 48);
                            if (v116)
                            {
                              CFRelease(v116);
                            }

                            *(v6 + 48) = CFStringCreateWithCharacters(&__kCFAllocatorSystemDefault, v135, v115);
                          }
                        }
                      }

                      CFRelease(ForcedString);
                      CFRelease(v111);
                      v7 = v133;
                    }

                    goto LABEL_183;
                  }
                }

                v134 = 0;
                v102 = __cficu_udat_toPattern();
                if (v134 <= 0 && v102 <= 768)
                {
                  v103 = CFStringCreateWithCharacters(&__kCFAllocatorSystemDefault, v139, v102);
                  v104 = __CFDateFormatterCreateForcedString(v6, v103);
                  v105 = CFStringGetLength(v104);
                  if (v105 <= 1024)
                  {
                    v108 = v105;
                    v109 = 2 * v105;
                    if ((2 * v105) < 0x101)
                    {
                      if (v105 < 1)
                      {
                        v110 = 0;
                      }

                      else
                      {
                        MEMORY[0x1EEE9AC00](v105, v106, v107);
                        v110 = &v131[-((v109 + 15) & 0xFFFFFFFFFFFFFFF0)];
                        bzero(v110, v109);
                      }
                    }

                    else
                    {
                      v110 = malloc_type_malloc(2 * v105, 0x1000040BDFB0063uLL);
                    }

                    if (!CFStringGetCharactersPtr(v104))
                    {
                      v146.location = 0;
                      v146.length = v108;
                      CFStringGetCharacters(v104, v146, v110);
                    }

                    __cficu_udat_applyPattern();
                    v117 = *(v6 + 48);
                    if (v117)
                    {
                      CFRelease(v117);
                    }

                    v118 = CFGetAllocator(v6);
                    *(v6 + 48) = CFStringCreateCopy(v118, v104);
                    if (v109 >= 0x101)
                    {
                      free(v110);
                    }
                  }

                  CFRelease(v104);
                  CFRelease(v103);
                }

LABEL_183:
                v119 = *(v6 + 56);
                if (v119)
                {
                  CFRelease(v119);
                }

                v120 = *(v6 + 48);
                if (v120)
                {
                  v120 = CFRetain(v120);
                }

                *(v6 + 56) = v120;
                v121 = *(v6 + 64);
                if (v121)
                {
                  __CFDateFormatterSetProperty(v6, @"kCFDateFormatterIsLenientKey", v121, 1);
                }

                v122 = *(v6 + 72);
                if (v122)
                {
                  __CFDateFormatterSetProperty(v6, @"kCFDateFormatterDoesRelativeDateFormattingKey", v122, 1);
                }

                v123 = *(v6 + 96);
                if (v123)
                {
                  __CFDateFormatterSetProperty(v6, @"kCFDateFormatterCalendarKey", v123, 1);
                }

                v124 = *(v6 + 104);
                if (v124)
                {
                  __CFDateFormatterSetProperty(v6, @"kCFDateFormatterCalendarIdentifierKey", v124, 1);
                }

                if (*v11)
                {
                  __CFDateFormatterSetProperty(v6, @"kCFDateFormatterTimeZoneKey", *v11, 1);
                }

                v125 = *(v6 + 112);
                if (v125)
                {
                  __CFDateFormatterSetProperty(v6, @"kCFDateFormatterTwoDigitStartDateKey", v125, 1);
                }

                v126 = *(v6 + 120);
                if (v126)
                {
                  __CFDateFormatterSetProperty(v6, @"kCFDateFormatterDefaultDateKey", v126, 1);
                }

                v127 = *(v6 + 128);
                if (v127)
                {
                  __CFDateFormatterSetProperty(v6, @"kCFDateFormatterGregorianStartDateKey", v127, 1);
                }

                v128 = *(v6 + 296);
                if (v128)
                {
                  __CFDateFormatterSetProperty(v6, @"kCFDateFormatterAmbiguousYearStrategyKey", v128, 1);
                }

                v129 = *(v6 + 304);
                if (v129)
                {
                  __CFDateFormatterSetProperty(v6, @"kCFDateFormatterUsesCharacterDirectionKey", v129, 1);
                }

                v130 = *(v6 + 312);
                if (v130)
                {
                  __CFDateFormatterSetProperty(v6, @"kCFDateFormatterFormattingContextKey", v130, 1);
                }

                goto LABEL_209;
              }

              v138[0] = 0;
            }

            __cficu_ucal_setAttribute();
            goto LABEL_123;
          }

          v138[0] = 0;
        }

        __cficu_ucal_setAttribute();
        goto LABEL_120;
      }

      v138[0] = 0;
      __cficu_ucal_getGregorianChange();
      v138[0] = 0;
    }

    __cficu_ucal_setGregorianChange();
    goto LABEL_117;
  }

LABEL_209:
  objc_autoreleasePoolPop(v7);
}

void __cficu_ucal_setGregorianChange()
{
  ucal_setGregorianChange();
  if (_NSCFCalendarLogger_onceToken != -1)
  {
    __cficu_ucal_setGregorianChange_cold_1();
  }
}

uint64_t __cficu_ucal_close(uint64_t a1)
{
  if (_NSCFCalendarLogger_onceToken != -1)
  {
    __cficu_ucal_close_cold_1();
  }

  return MEMORY[0x1EEE65258](a1);
}

CFTypeRef __CFDateFormatterCreateForcedString(void *a1, const __CFString *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v4 = a1[61];
  if (v4)
  {
    v5 = (CFBooleanGetValue(v4) != 0) << 29;
  }

  else
  {
    v5 = 0;
  }

  v7 = a1[60];
  if (v7 && CFBooleanGetValue(v7))
  {
    v5 = 0x40000000;
LABEL_10:
    if (__CFDateFormatterCreateForcedString_onceToken != -1)
    {
      __CFDateFormatterCreateForcedString_cold_1();
    }

    result = xmmword_183306FB0;
    v8 = __CFDateFormatterCreateForcedString_hourCharacters;
    v25.length = CFStringGetLength(a2);
    v25.location = 0;
    if (CFStringFindCharacterFromSet(a2, v8, v25, 0, &result) && result.location != -1)
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 0;
      v9 = a1[3];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = ____CFDateFormatterCreateForcedString_block_invoke_2;
      v12[3] = &unk_1E6D7D900;
      v12[5] = &v18;
      v12[6] = a2;
      v13 = v5;
      v12[4] = &v14;
      v10 = useTemplatePatternGenerator(v9, v12);
      v6 = v19[3];
      if (v10)
      {
        if (v6)
        {
          if (v15[6] > 0)
          {
LABEL_25:
            _Block_object_dispose(&v14, 8);
            _Block_object_dispose(&v18, 8);
            return v6;
          }

          goto LABEL_23;
        }
      }

      else if (v6)
      {
LABEL_23:
        CFRelease(v19[3]);
      }

      v6 = CFRetain(a2);
      goto LABEL_25;
    }

    return CFRetain(a2);
  }

  if (v5)
  {
    goto LABEL_10;
  }

  return CFRetain(a2);
}

void sub_1831297A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void CFDateFormatterSetFormat(CFDateFormatterRef formatter, CFStringRef formatString)
{
  v14[1] = *MEMORY[0x1E69E9840];
  __CFCheckCFInfoPACSignature(formatter);
  v4 = _CFGetNonObjCTypeID(formatter);
  if (v4 != 56)
  {
    _CFAssertMismatchedTypeID(0x38uLL, v4);
  }

  ForcedString = __CFDateFormatterCreateForcedString(formatter, formatString);
  Length = CFStringGetLength(ForcedString);
  if (*(formatter + 6) != ForcedString)
  {
    v9 = Length;
    if (Length <= 1024)
    {
      if (*(formatter + 10) != &__kCFBooleanTrue && *(formatter + 9) == &__kCFBooleanTrue)
      {
        __ResetUDateFormat(formatter, 1, v8);
      }

      v10 = 2 * v9;
      if ((2 * v9) < 0x101)
      {
        if (v9 < 1)
        {
          v11 = 0;
        }

        else
        {
          MEMORY[0x1EEE9AC00](Length, v7, v8);
          v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v11, 2 * v9);
        }
      }

      else
      {
        v11 = malloc_type_malloc(2 * v9, 0x1000040BDFB0063uLL);
      }

      if (!CFStringGetCharactersPtr(ForcedString))
      {
        v15.location = 0;
        v15.length = v9;
        CFStringGetCharacters(ForcedString, v15, v11);
      }

      __cficu_udat_applyPattern();
      v12 = *(formatter + 6);
      if (v12)
      {
        CFRelease(v12);
      }

      v13 = CFGetAllocator(formatter);
      *(formatter + 6) = CFStringCreateCopy(v13, ForcedString);
      *(formatter + 10) = &__kCFBooleanTrue;
      if (v10 >= 0x101)
      {
        free(v11);
      }
    }
  }

  if (ForcedString)
  {
    CFRelease(ForcedString);
  }
}

CFStringRef CFDateFormatterCreateStringWithDate(CFAllocatorRef allocator, CFDateFormatterRef formatter, CFDateRef date)
{
  v5 = allocator;
  if (!allocator)
  {
    v6 = _CFGetTSD(1);
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v5 = &__kCFAllocatorSystemDefault;
    }
  }

  __CFCheckCFInfoPACSignature(formatter);
  v7 = _CFGetNonObjCTypeID(formatter);
  if (v7 != 56)
  {
    _CFAssertMismatchedTypeID(0x38uLL, v7);
  }

  AbsoluteTime = CFDateGetAbsoluteTime(date);

  return CFDateFormatterCreateStringWithAbsoluteTime(v5, formatter, AbsoluteTime);
}

CFStringRef CFDateFormatterCreateStringWithAbsoluteTime(CFAllocatorRef allocator, CFDateFormatterRef formatter, CFAbsoluteTime at)
{
  v5 = allocator;
  v17[192] = *MEMORY[0x1E69E9840];
  if (!allocator)
  {
    v6 = _CFGetTSD(1);
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v5 = &__kCFAllocatorSystemDefault;
    }
  }

  __CFCheckCFInfoPACSignature(formatter);
  v7 = _CFGetNonObjCTypeID(formatter);
  if (v7 != 56)
  {
    _CFAssertMismatchedTypeID(0x38uLL, v7);
  }

  v8 = (at + 978307200.0) * 1000.0 + 0.5;
  v9 = __cficu_udat_format(v8);
  v10 = v9;
  if (v9 >= 769)
  {
    Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 2 * (v9 + 2), 0x1000040BDFB0063uLL);
    v10 = __cficu_udat_format(v8);
  }

  else
  {
    Typed = 0;
  }

  if (Typed)
  {
    v13 = Typed;
  }

  else
  {
    v13 = &v16;
  }

  if (*(formatter + 38) == &__kCFBooleanTrue && (Identifier = CFLocaleGetIdentifier(*(formatter + 3)), CFLocaleGetLanguageCharacterDirection(Identifier) == kCFLocaleLanguageDirectionRightToLeft))
  {
    *v13 = 8207;
    ++v10;
  }

  else if (Typed)
  {
    v13 = Typed + 1;
  }

  else
  {
    v13 = v17;
  }

  v15 = CFStringCreateWithCharacters(v5, v13, v10);
  if (Typed)
  {
    CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
  }

  return v15;
}

void __CFDateFormatterDeallocate(void *a1)
{
  if (a1[2])
  {
    __cficu_udat_close();
  }

  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[11];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[12];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[13];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[14];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[15];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = a1[16];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = a1[17];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = a1[18];
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = a1[19];
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = a1[20];
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = a1[21];
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = a1[22];
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = a1[23];
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = a1[24];
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = a1[25];
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = a1[26];
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = a1[27];
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = a1[28];
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = a1[29];
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = a1[30];
  if (v26)
  {
    CFRelease(v26);
  }

  v27 = a1[31];
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = a1[32];
  if (v28)
  {
    CFRelease(v28);
  }

  v29 = a1[33];
  if (v29)
  {
    CFRelease(v29);
  }

  v30 = a1[34];
  if (v30)
  {
    CFRelease(v30);
  }

  v31 = a1[35];
  if (v31)
  {
    CFRelease(v31);
  }

  v32 = a1[36];
  if (v32)
  {
    CFRelease(v32);
  }

  v33 = a1[37];
  if (v33)
  {
    CFRelease(v33);
  }

  v34 = a1[38];
  if (v34)
  {
    CFRelease(v34);
  }

  v35 = a1[39];
  if (v35)
  {
    CFRelease(v35);
  }

  v36 = a1[40];
  if (v36)
  {
    CFRelease(v36);
  }

  v37 = a1[42];
  if (v37)
  {
    CFRelease(v37);
  }

  v38 = a1[43];
  if (v38)
  {
    CFRelease(v38);
  }

  v39 = a1[48];
  if (v39)
  {
    CFRelease(v39);
  }

  v40 = a1[49];
  if (v40)
  {
    CFRelease(v40);
  }

  v41 = a1[41];
  if (v41)
  {
    CFRelease(v41);
  }

  v42 = a1[44];
  if (v42)
  {
    CFRelease(v42);
  }

  v43 = a1[50];
  if (v43)
  {
    CFRelease(v43);
  }

  v44 = a1[45];
  if (v44)
  {
    CFRelease(v44);
  }

  v45 = a1[46];
  if (v45)
  {
    CFRelease(v45);
  }

  v46 = a1[47];
  if (v46)
  {
    CFRelease(v46);
  }

  v47 = a1[51];
  if (v47)
  {
    CFRelease(v47);
  }

  v48 = a1[52];
  if (v48)
  {
    CFRelease(v48);
  }

  v49 = a1[53];
  if (v49)
  {
    CFRelease(v49);
  }

  v50 = a1[54];
  if (v50)
  {
    CFRelease(v50);
  }

  v51 = a1[55];
  if (v51)
  {
    CFRelease(v51);
  }

  v52 = a1[57];
  if (v52)
  {
    CFRelease(v52);
  }

  v53 = a1[58];
  if (v53)
  {
    CFRelease(v53);
  }

  v54 = a1[59];
  if (v54)
  {
    CFRelease(v54);
  }

  v55 = a1[60];
  if (v55)
  {
    CFRelease(v55);
  }

  v56 = a1[61];
  if (v56)
  {
    CFRelease(v56);
  }

  v57 = a1[62];
  if (v57)
  {
    CFRelease(v57);
  }

  v58 = a1[63];
  if (v58)
  {
    CFRelease(v58);
  }

  v59 = a1[64];
  if (v59)
  {
    CFRelease(v59);
  }

  v60 = a1[65];
  if (v60)
  {

    CFRelease(v60);
  }
}

CFDataRef CFStringCreateExternalRepresentation(CFAllocatorRef alloc, CFStringRef theString, CFStringEncoding encoding, UInt8 lossByte)
{
  v4 = lossByte;
  v5 = *&encoding;
  v67 = *MEMORY[0x1E69E9840];
  length = 0;
  *v66 = 0;
  if (CF_IS_OBJC(7uLL, theString))
  {
    data = CFStringGetLength(theString);
    goto LABEL_59;
  }

  v9 = atomic_load(&theString->info);
  v10 = v9 & 5;
  v11 = atomic_load(&theString->info);
  v12 = v11 & 0x60;
  if (v10 == 4)
  {
    p_data = &theString->data;
    if (v12)
    {
      v14 = *p_data;
    }

    else
    {
      v15 = atomic_load(&theString->info);
      v14 = &p_data[(v15 & 5) != 4];
    }

    data = *v14;
  }

  else if ((v11 & 0x60) != 0)
  {
    data = theString->length;
  }

  else
  {
    data = theString->data;
  }

  v16 = atomic_load(&theString->info);
  if ((v16 & 0x10) != 0)
  {
    goto LABEL_59;
  }

  v17 = __CFDefaultEightBitStringEncoding;
  if (__CFDefaultEightBitStringEncoding == -1)
  {
    v17 = __CFStringComputeEightBitStringEncoding();
  }

  if (v17 == v5)
  {
    goto LABEL_15;
  }

  v21 = __CFDefaultEightBitStringEncoding;
  if (__CFDefaultEightBitStringEncoding == -1)
  {
    v21 = __CFStringComputeEightBitStringEncoding();
  }

  if (v21 != 1536)
  {
    goto LABEL_59;
  }

  if (BYTE1(v5) > 7u)
  {
    if (BYTE1(v5) > 0xAu)
    {
      if (BYTE1(v5) != 11)
      {
        if (BYTE1(v5) == 12)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      if ((v5 - 3059) > 0xC)
      {
        goto LABEL_15;
      }

      v29 = 1 << (v5 + 13);
      v30 = 4099;
    }

    else
    {
      if (BYTE1(v5) == 8)
      {
        goto LABEL_59;
      }

      if (BYTE1(v5) != 10)
      {
        goto LABEL_48;
      }

      if ((v5 - 2561) > 0xF)
      {
        goto LABEL_15;
      }

      v29 = 1 << (v5 - 1);
      v30 = 32785;
    }

    if ((v29 & v30) != 0)
    {
      goto LABEL_59;
    }

    goto LABEL_15;
  }

  if (BYTE1(v5) > 1u)
  {
    if (BYTE1(v5) == 2)
    {
      if (v5 != 518)
      {
        goto LABEL_15;
      }

      goto LABEL_59;
    }

    if (BYTE1(v5) == 6)
    {
      if (v5 == 1536)
      {
        goto LABEL_15;
      }

LABEL_59:
      if (!alloc)
      {
        v33 = _CFGetTSD(1);
        if (v33)
        {
          alloc = v33;
        }

        else
        {
          alloc = &__kCFAllocatorSystemDefault;
        }
      }

      if ((v5 & 0xFFF) == 0x100 && (v5 == 256 || (v5 - 134217985) >> 26 <= 4))
      {
        v37 = 1;
        if ((v5 & 0x8000000) != 0)
        {
          v37 = 2;
        }

        *v66 = (data + 1) << v37;
        goto LABEL_82;
      }

      *v66 = CFStringGetMaximumSizeForEncoding(data, v5);
      if (*v66 <= data || CF_IS_OBJC(7uLL, theString))
      {
LABEL_82:
        Typed = CFAllocatorAllocateTyped(alloc, *v66, 0x100004077774924uLL);
        if (__CFOASafe == 1)
        {
          __CFSetLastAllocationEventName();
        }

        v70.location = 0;
        v70.length = data;
        v39 = __CFStringEncodeByteStream(theString, v70, 1, v5, v4, Typed, *v66, &length);
        if (data == v39 || v4 && v39)
        {
          return CFDataCreateWithBytesNoCopy(alloc, Typed, length, alloc);
        }

        CFAllocatorDeallocate(alloc, Typed);
        return 0;
      }

      v34 = atomic_load(&theString->info);
      if ((v34 & 0x10) != 0)
      {
        v40 = atomic_load(&theString->info);
        v41 = &theString->data;
        if ((v40 & 0x60) != 0)
        {
          v42 = *v41;
        }

        else
        {
          v43 = atomic_load(&theString->info);
          v42 = &v41[(v43 & 5) != 4];
        }

        v44 = atomic_load(&theString->info);
        v45 = atomic_load(&theString->info);
        v46 = v45 & 0x60;
        if ((v44 & 5) == 4)
        {
          if (v46)
          {
            v47 = *v41;
          }

          else
          {
            v49 = atomic_load(&theString->info);
            v47 = &v41[(v49 & 5) != 4];
          }

          v48 = *v47;
        }

        else if (v46)
        {
          v48 = theString->length;
        }

        else
        {
          v48 = *v41;
        }

        v50 = CFStringEncodingByteLengthForCharacters(v5, 256, v42, v48);
        if (v50 >= 1)
        {
          *v66 = v50;
        }

        goto LABEL_82;
      }

      v69.location = 0;
      v69.length = data;
      v35 = __CFStringEncodeByteStream(theString, v69, 1, v5, v4, 0, 0x7FFFFFFFFFFFFFFFLL, v66);
      if (data != v35)
      {
        result = 0;
        if (!v4 || !v35)
        {
          return result;
        }
      }

      if (*v66 != data)
      {
        goto LABEL_82;
      }

      v36 = atomic_load(&theString->info);
      if ((v36 & 0x10) != 0)
      {
        goto LABEL_82;
      }

      if (BYTE1(v5) <= 7u)
      {
        if (BYTE1(v5) <= 1u)
        {
          if (BYTE1(v5))
          {
            if (v5 == 134217984)
            {
              goto LABEL_125;
            }
          }

          else if ((v5 > 0x22 || ((1 << v5) & 0x600000032) == 0) && v5 != 152)
          {
            goto LABEL_125;
          }

          goto LABEL_82;
        }

        if (BYTE1(v5) != 2)
        {
          if (BYTE1(v5) == 6)
          {
            if (v5 == 1536)
            {
              goto LABEL_125;
            }

            goto LABEL_82;
          }

          goto LABEL_114;
        }

        if (v5 != 518)
        {
          goto LABEL_125;
        }

        goto LABEL_82;
      }

      if (BYTE1(v5) > 0xAu)
      {
        if (BYTE1(v5) == 11)
        {
          if ((v5 - 3059) > 0xC)
          {
            goto LABEL_125;
          }

          v51 = 1 << (v5 + 13);
          v52 = 4099;
          goto LABEL_124;
        }

        if (BYTE1(v5) == 12)
        {
          goto LABEL_82;
        }
      }

      else
      {
        if (BYTE1(v5) == 8)
        {
          goto LABEL_82;
        }

        if (BYTE1(v5) == 10)
        {
          if ((v5 - 2561) > 0xF)
          {
            goto LABEL_125;
          }

          v51 = 1 << (v5 - 1);
          v52 = 32785;
LABEL_124:
          if ((v51 & v52) != 0)
          {
            goto LABEL_82;
          }

LABEL_125:
          v53 = atomic_load(&theString->info);
          v54 = &theString->data;
          if ((v53 & 0x60) != 0)
          {
            v55 = *v54;
          }

          else
          {
            v56 = atomic_load(&theString->info);
            v55 = &v54[(v56 & 5) != 4];
          }

          v57 = atomic_load(&theString->info);
          v58 = (v57 >> 2) & 1;
          v59 = atomic_load(&theString->info);
          v60 = atomic_load(&theString->info);
          v61 = v60 & 0x60;
          if ((v59 & 5) == 4)
          {
            if (v61)
            {
              v62 = *v54;
            }

            else
            {
              v64 = atomic_load(&theString->info);
              v62 = &v54[(v64 & 5) != 4];
            }

            v63 = *v62;
          }

          else if (v61)
          {
            v63 = theString->length;
          }

          else
          {
            v63 = *v54;
          }

          return CFDataCreate(alloc, &v55[v58], v63);
        }
      }

LABEL_114:
      if ((v5 & 0xFF00u) <= 0xC00)
      {
        goto LABEL_125;
      }

      goto LABEL_82;
    }

LABEL_48:
    if ((v5 & 0xFF00u) <= 0xC00)
    {
      goto LABEL_15;
    }

    goto LABEL_59;
  }

  if (!BYTE1(v5))
  {
    if ((v5 > 0x22 || ((1 << v5) & 0x600000032) == 0) && v5 != 152)
    {
      goto LABEL_15;
    }

    goto LABEL_59;
  }

  if (v5 != 134217984)
  {
    goto LABEL_59;
  }

LABEL_15:
  v18 = atomic_load(&theString->info);
  v19 = &theString->data;
  if ((v18 & 0x60) != 0)
  {
    v20 = *v19;
  }

  else
  {
    v22 = atomic_load(&theString->info);
    v20 = &v19[(v22 & 5) != 4];
  }

  v23 = atomic_load(&theString->info);
  v24 = atomic_load(&theString->info);
  v25 = atomic_load(&theString->info);
  v26 = v25 & 0x60;
  if ((v24 & 5) == 4)
  {
    if (v26)
    {
      v27 = *v19;
    }

    else
    {
      v31 = atomic_load(&theString->info);
      v27 = &v19[(v31 & 5) != 4];
    }

    v28 = *v27;
  }

  else if (v26)
  {
    v28 = theString->length;
  }

  else
  {
    v28 = *v19;
  }

  return CFDataCreate(alloc, &v20[(v23 >> 2) & 1], v28);
}

uint64_t _getFlags(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    goto LABEL_12;
  }

  v2 = 0;
  v3 = *MEMORY[0x1E69E5910];
  if ((~a1 & 0xC000000000000007) == 0)
  {
    v3 = 0;
  }

  v4 = v3 ^ a1;
  v5 = v4 & 7;
  do
  {
    if (v5 == *(MEMORY[0x1E69E5900] + v2))
    {
      break;
    }

    ++v2;
  }

  while (v2 != 7);
  if ((~v2 & 7) == 0 && ((v2 | v4) & 0x7F80000000000000) == 0x600000000000000)
  {
    v6 = v5 == 7;
    v7 = 0xFFFFFFFFFFFFFFFLL;
    if (v6)
    {
      v7 = 0xFFFFFFFFFFFFFLL;
    }

    v8 = __CFGetSignatureROMEntryAtIndex(v7 & (v4 >> 3), a2) + 2;
  }

  else
  {
LABEL_12:
    v8 = (a1 + 24);
  }

  return *v8;
}

uint64_t __NSI0(uint64_t result, double *a2, int a3, double *a4, int a5)
{
  v5 = a5 + (a3 << 8);
  if ((*(result + 34) & 0x200) != 0)
  {
    if (v5 > 2055)
    {
      if (v5 <= 4099)
      {
        if (v5 != 2056 && v5 != 2064)
        {
          goto LABEL_85;
        }

LABEL_44:
        v9 = *a2;
LABEL_46:
        *a4 = v9;
        return result;
      }

      if (v5 != 4100)
      {
        if (v5 != 4104 && v5 != 4112)
        {
          goto LABEL_85;
        }

        goto LABEL_44;
      }

      goto LABEL_41;
    }

    if (v5 > 1039)
    {
      if (v5 != 1040)
      {
        if (v5 != 2052)
        {
          goto LABEL_85;
        }

LABEL_41:
        v8 = *a2;
LABEL_61:
        *a4 = v8;
        return result;
      }
    }

    else
    {
      if (v5 == 1028)
      {
        v8 = *a2;
        goto LABEL_61;
      }

      if (v5 != 1032)
      {
        goto LABEL_85;
      }
    }

    v9 = *a2;
    goto LABEL_46;
  }

  if ((*(result + 34) & 0x100) != 0)
  {
    if (v5 <= 1024)
    {
      if (v5 <= 512)
      {
        if (v5 > 259)
        {
          if (v5 != 260)
          {
            if (v5 == 264)
            {
              v7 = *a2;
              goto LABEL_74;
            }

            goto LABEL_85;
          }

          v11 = *a2;
          goto LABEL_84;
        }

        if (v5 != 257)
        {
          if (v5 == 258)
          {
            LOWORD(v6) = *a2;
            goto LABEL_55;
          }

          goto LABEL_85;
        }

LABEL_59:
        LOBYTE(v10) = *a2;
LABEL_76:
        *a4 = v10;
        return result;
      }

      if (v5 > 515)
      {
        if (v5 != 516)
        {
          if (v5 == 520)
          {
            v7 = *a2;
            goto LABEL_74;
          }

          goto LABEL_85;
        }

        v11 = *a2;
        goto LABEL_84;
      }

LABEL_52:
      if (v5 != 513)
      {
        if (v5 == 514)
        {
          LOWORD(v6) = *a2;
          goto LABEL_55;
        }

        goto LABEL_85;
      }

      goto LABEL_59;
    }

    if (v5 <= 2048)
    {
      if (v5 > 1027)
      {
        if (v5 != 1028)
        {
          if (v5 == 1032)
          {
            v7 = *a2;
            goto LABEL_74;
          }

          goto LABEL_85;
        }

LABEL_79:
        v11 = *a2;
        goto LABEL_84;
      }

LABEL_32:
      if (v5 == 1025)
      {
        v10 = *a2;
        goto LABEL_76;
      }

      if (v5 == 1026)
      {
        v6 = *a2;
        goto LABEL_55;
      }

      goto LABEL_85;
    }

LABEL_35:
    if (v5 <= 2051)
    {
      if (v5 == 2049)
      {
        *a4 = *a2;
        return result;
      }

      if (v5 == 2050)
      {
        *a4 = *a2;
        return result;
      }

      goto LABEL_85;
    }

    if (v5 == 2052)
    {
      *a4 = *a2;
      return result;
    }

    if (v5 != 2056)
    {
      goto LABEL_85;
    }

    v7 = *a2;
    goto LABEL_74;
  }

  if (v5 > 1024)
  {
    if (v5 <= 2048)
    {
      if (v5 > 1027)
      {
        if (v5 != 1028)
        {
          if (v5 != 1032)
          {
            goto LABEL_85;
          }

          v7 = *a2;
LABEL_74:
          *a4 = v7;
          return result;
        }

        goto LABEL_79;
      }

      goto LABEL_32;
    }

    goto LABEL_35;
  }

  if (v5 > 512)
  {
    if (v5 > 515)
    {
      if (v5 != 516)
      {
        if (v5 != 520)
        {
          goto LABEL_85;
        }

        v7 = *a2;
        goto LABEL_74;
      }

      v11 = *a2;
LABEL_84:
      *a4 = v11;
      return result;
    }

    goto LABEL_52;
  }

  if (v5 <= 259)
  {
    if (v5 != 257)
    {
      if (v5 == 258)
      {
        LOWORD(v6) = *a2;
LABEL_55:
        *a4 = v6;
        return result;
      }

      goto LABEL_85;
    }

    goto LABEL_59;
  }

  if (v5 == 260)
  {
    v11 = *a2;
    goto LABEL_84;
  }

  if (v5 == 264)
  {
    v7 = *a2;
    goto LABEL_74;
  }

LABEL_85:
  __break(1u);
  return result;
}

uint64_t __NSMS6(uint64_t a1, uint64_t a2)
{
  v2 = a1 != 0;
  v3 = a2 != 0;
  if (!(a1 | a2))
  {
    return 1;
  }

  v4 = a2;
  v5 = a1;
  while (1)
  {
    result = 0;
    if (!v2 || !v3)
    {
      break;
    }

    if (*(v5 + 36) != 64 || *(v4 + 36) != 64)
    {
      result = __NSMS6(*v5, *v4);
      if (result)
      {
        result = __NSMS6(*(v5 + 8), *(v4 + 8));
        if (result)
        {
          return strcmp((v5 + 37), (v4 + 37)) == 0;
        }
      }

      return result;
    }

    v7 = *(v5 + 34);
    v8 = *(v4 + 34);
    if (((v8 ^ v7) & 0x8000) != 0)
    {
      return 0;
    }

    v9 = *v5;
    if (*v5)
    {
      v10 = *v4;
      if (*v4)
      {
        if ((v8 & v7 & 0x8000) != 0)
        {
          if ((__NSMS6(v9, v10) & 1) == 0)
          {
            return 0;
          }
        }

        else if (strcmp((v9 + 37), (v10 + 37)))
        {
          return 0;
        }
      }
    }

    v5 = *(v5 + 8);
    v4 = *(v4 + 8);
    v2 = v5 != 0;
    v3 = v4 != 0;
    if (!(v5 | v4))
    {
      return 1;
    }
  }

  return result;
}

unint64_t *_CFURLCreateWithRangesAndFlags(CFStringRef theString, void *a2, unsigned int a3, unsigned int a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  if ((a4 & 1) == 0)
  {
    goto LABEL_14;
  }

  v13 = a2[1];
  switch(v13)
  {
    case 5:
      HasPrefix = CFStringHasPrefix(theString, @"https");
      v15 = 0x40000000;
      break;
    case 4:
      if (CFStringHasPrefix(theString, @"http"))
      {
        v16 = 0x20000000;
LABEL_13:
        v9 = v16 & 0xE0000000 | v9 & 0x1FFFFFFF;
        goto LABEL_14;
      }

      if (CFStringHasPrefix(theString, @"file"))
      {
        v16 = 1610612736;
        goto LABEL_13;
      }

      HasPrefix = CFStringHasPrefix(theString, @"data");
      v15 = 0x80000000;
      break;
    case 3:
      HasPrefix = CFStringHasPrefix(theString, @"ftp");
      v15 = -1610612736;
      break;
    default:
      goto LABEL_14;
  }

  v17 = v15 & 0xE0000000 | v9 & 0x1FFFFFFF;
  if (HasPrefix)
  {
    v9 = v17;
  }

LABEL_14:
  v18 = 16 * a3;
  Instance = _CFRuntimeCreateInstance(0, 0x1DuLL, v18 + 40, 0, a5, a6, a7, a8);
  v20 = Instance;
  if (Instance)
  {
    *(Instance + 4) = v9;
    *(Instance + 5) = 134217984;
    memcpy(Instance + 7, a2, v18);
    atomic_store(CFStringCreateCopy(0, theString), v20 + 3);
    if (a5)
    {
      v21 = CFRetain(a5);
    }

    else
    {
      v21 = 0;
    }

    v20[4] = v21;
  }

  return v20;
}

uint64_t __CFSearchSignatureROM(unsigned __int8 *a1, uint64_t a2)
{
  if (a2 <= 1024)
  {
    v4 = __CFStrHashEightBit2(a1, a2);
    v5 = MethodSignatureROMTableHashData[v4 & 0x3FFF];
    v2 = (v5 >> 3) - 1;
    v6 = v5 & 7;
    v7 = (&MethodSignatureROMTable + 3 * (MethodSignatureROMTableHashData[v4 & 0x3FFF] >> 3) + 1);
    while (v6)
    {
      v8 = *v7;
      v7 += 3;
      ++v2;
      --v6;
      if (!strcmp(a1, v8))
      {
        return v2;
      }
    }
  }

  return -1;
}

__n128 *___forwarding___(__n128 *a1, uint64_t a2)
{
  v77[32] = *MEMORY[0x1E69E9840];
  v4 = a1->n128_u64[0];
  v5 = a1->n128_u64[1];
  v6 = MEMORY[0x1E69E5910];
  v7 = MEMORY[0x1E69E5900];
  if ((a1->n128_u64[0] & 0x8000000000000000) != 0)
  {
    v8 = 0;
    v9 = *MEMORY[0x1E69E5910];
    if ((~v4 & 0xC000000000000007) == 0)
    {
      LOBYTE(v9) = 0;
    }

    v10 = (v9 ^ v4) & 7;
    while (v10 != *(MEMORY[0x1E69E5900] + v8))
    {
      if (++v8 == 7)
      {
        goto LABEL_10;
      }
    }

    if (!v8)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  while (1)
  {
    Class = object_getClass(v4);
    Name = class_getName(Class);
    if (!class_respondsToSelector(Class, sel_forwardingTargetForSelector_))
    {
      break;
    }

    v13 = [v4 forwardingTargetForSelector:v5];
    if (!v13 || v13 == v4)
    {
      break;
    }

    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

    v14 = 0;
    v15 = *v6;
    if ((~v13 & 0xC000000000000007) == 0)
    {
      LOBYTE(v15) = 0;
    }

    v16 = (v15 ^ v13) & 7;
    while (v16 != *(v7 + v14))
    {
      if (++v14 == 7)
      {
        goto LABEL_19;
      }
    }

    if (v14)
    {
LABEL_19:
      v17 = 0;
      a1->n128_u64[0] = v13;
      return v17;
    }

    v4 = v13;
LABEL_9:
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      ___forwarding____cold_1(v4, a1, v77);
      return v77[0];
    }
  }

  if (!strncmp(Name, "_NSZombie_", 0xAuLL))
  {
    ___forwarding____cold_6(v4, Name, v5);
  }

  if (!class_respondsToSelector(Class, sel_methodSignatureForSelector_))
  {
    Superclass = class_getSuperclass(Class);
    object_getClassName(v4);
    if (Superclass)
    {
      CFLog(4, @"*** NSForwarding: warning: object %p of class '%s' does not implement methodSignatureForSelector: -- trouble ahead", v55, v56, v57, v58, v59, v60, v4);
    }

    else
    {
      object_getClassName(v4);
      CFLog(4, @"*** NSForwarding: warning: object %p of class '%s' does not implement methodSignatureForSelector: -- did you forget to declare the superclass of '%s'?", v61, v62, v63, v64, v65, v66, v4);
    }

LABEL_61:
    v67 = sel_getName(v5);
    if (sel_getUid(v67) != v5)
    {
      CFLog(4, @"*** NSForwarding: warning: selector (%p) for message '%s' does not match selector known to Objective C runtime (%p)-- abort", v68, v69, v70, v71, v72, v73, v5);
    }

    v74 = object_getClass(v4);
    if (class_respondsToSelector(v74, sel_doesNotRecognizeSelector_))
    {
      [v4 doesNotRecognizeSelector:v5];
      __break(1u);
    }

    ___forwarding____cold_5(v4);
  }

  v19 = [v4 methodSignatureForSelector:v5];
  if (!v19)
  {
    goto LABEL_61;
  }

  v20 = v19;
  v21 = [v19 _frameDescriptor];
  if (((*(*v21 + 34) >> 6) & 1) != a2)
  {
    v22 = sel_getName(v5);
    CFLog(4, @"*** NSForwarding: warning: method signature and compiler disagree on struct-return-edness of '%s'.  Signature thinks it does%s return a struct, and compiler thinks it does%s.", v23, v24, v25, v26, v27, v28, v22);
  }

  v29 = object_getClass(v4);
  v30 = class_respondsToSelector(v29, sel__forwardStackInvocation_);
  v31 = v30;
  if (!v30)
  {
    v46 = object_getClass(v4);
    if (!class_respondsToSelector(v46, sel_forwardInvocation_))
    {
      ___forwarding____cold_2(v77, v4);
    }

    v36 = [NSInvocation _invocationWithMethodSignature:v20 frame:a1];
    [v36[3] numberOfArguments];
    objc_opt_class();
    v47 = [v36[3] frameLength];
    if (v47)
    {
      if ((v47 & 7) != 0)
      {
        ___forwarding____cold_3();
      }

      v49 = v36[1];
      v50 = 8;
      do
      {
        v49 += 8;
        --v50;
      }

      while (v50);
    }

    if (v48 == v36[6])
    {
      [v4 forwardInvocation:v36];
      v32 = 0;
      goto LABEL_44;
    }

LABEL_59:
    _NSIPoisoned();
  }

  v76 = v30;
  objc_opt_self();
  v32 = [v20 frameLength] + 320;
  InstanceSize = class_getInstanceSize(NSInvocation);
  v36 = &v75[-((MEMORY[0x1EEE9AC00](InstanceSize, v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0)];
  bzero(v36, InstanceSize);
  bzero(v36, InstanceSize);
  MEMORY[0x1EEE9AC00](v37, v38, v39);
  v41 = &v75[-v40];
  bzero(&v75[-v40], v32);
  objc_constructInstance(NSInvocation, v36);
  [(NSInvocation *)v36 _initWithMethodSignature:v20 frame:a1 buffer:v41 size:v32];
  [v36[3] numberOfArguments];
  objc_opt_class();
  v42 = [v36[3] frameLength];
  if (v42)
  {
    if ((v42 & 7) != 0)
    {
      ___forwarding____cold_4();
    }

    v44 = v36[1];
    v45 = 8;
    v31 = v76;
    do
    {
      v44 += 8;
      --v45;
    }

    while (v45);
  }

  else
  {
    v31 = v76;
  }

  if (v43 != v36[6])
  {
    goto LABEL_59;
  }

  [v4 _forwardStackInvocation:v36];
LABEL_44:
  if (*(v36 + 60) && (*(*v21 + 34) & 0x80) != 0)
  {
    v51 = *v21;
    memmove(*(a1->n128_u64 + *(v51 + 28) + *(v51 + 32)), *(v36[1] + *(v51 + 28) + *(v51 + 32)), *(*v51 + 16));
  }

  v52 = [v20 methodReturnType];
  v53 = *v52;
  if (v53 == 118 || v53 == 86 && v52[1] == 118)
  {
    if (v31)
    {
    }

    return &___forwarding____placeholder;
  }

  else
  {
    v17 = v36[2];
    if (v31)
    {
      v17 = [+[NSData dataWithBytes:length:](NSData bytes:v36[2]];
    }
  }

  return v17;
}

uint64_t __invoking___(uint64_t (*a1)(unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, __n128, __n128, __n128, __n128, __n128, __n128, __n128, __n128), uint64_t a2, __n128 *a3, uint64_t a4)
{
  v26 = a2;
  v4 = a4 - 224;
  v5 = a3 + 14;
  v6 = ((&v26 - a4 + 224) & 0xFFFFFFFFFFFFFFF0);
  while (v4)
  {
    v7 = v5->n128_u64[0];
    v5 = (v5 + 8);
    v4 -= 8;
    *v6++ = v7;
  }

  result = a1(a3->n128_u64[0], a3->n128_u64[1], a3[1].n128_u64[0], a3[1].n128_u64[1], a3[2].n128_u64[0], a3[2].n128_u64[1], a3[3].n128_u64[0], a3[3].n128_u64[1], a3[5], a3[6], a3[7], a3[8], a3[9], a3[10], a3[11], a3[12]);
  v9 = v26;
  *(v26 + 192) = v10;
  *(v9 + 176) = v11;
  *(v9 + 160) = v12;
  *(v9 + 144) = v13;
  *(v9 + 128) = v14;
  *(v9 + 112) = v15;
  *(v9 + 96) = v16;
  *(v9 + 80) = v17;
  *(v9 + 64) = v18;
  *(v9 + 56) = v19;
  *(v9 + 48) = v20;
  *(v9 + 40) = v21;
  *(v9 + 32) = v22;
  *(v9 + 24) = v23;
  *(v9 + 16) = v24;
  *(v9 + 8) = v25;
  *v9 = result;
  return result;
}

_UNKNOWN **__CFGetSignatureROMEntryAtIndex(unint64_t a1, uint64_t a2)
{
  if (a1 >> 2 >= 0xD35)
  {
    __CFGetSignatureROMEntryAtIndex_cold_1();
  }

  return &MethodSignatureROMTable + 3 * a1;
}

uint64_t _getFrameDescriptor(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    goto LABEL_12;
  }

  v2 = 0;
  v3 = *MEMORY[0x1E69E5910];
  if ((~a1 & 0xC000000000000007) == 0)
  {
    v3 = 0;
  }

  v4 = v3 ^ a1;
  v5 = v4 & 7;
  do
  {
    if (v5 == *(MEMORY[0x1E69E5900] + v2))
    {
      break;
    }

    ++v2;
  }

  while (v2 != 7);
  if ((~v2 & 7) == 0 && ((v2 | v4) & 0x7F80000000000000) == 0x600000000000000)
  {
    v6 = v5 == 7;
    v7 = 0xFFFFFFFFFFFFFFFLL;
    if (v6)
    {
      v7 = 0xFFFFFFFFFFFFFLL;
    }

    v8 = __CFGetSignatureROMEntryAtIndex(v7 & (v4 >> 3), a2);
  }

  else
  {
LABEL_12:
    v8 = (a1 + 8);
  }

  return *v8;
}

void __NSICreateBackingForArgumentIfNeeded(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((*(a2 + 34) & 0x80) != 0)
  {
    v8 = *(a1 + 40);
    if (!v8)
    {
      Mutable = CFDataCreateMutable(&__kCFAllocatorSystemDefault, [*(a1 + 24) numberOfArguments] + 1);
      if (!Mutable)
      {
        __NSICreateBackingForArgumentIfNeeded_cold_2();
      }

      v10 = Mutable;
      *(a1 + 40) = CFDataGetMutableBytePtr(Mutable);
      v11 = *(a1 + 32);
      if (!v11)
      {
        v11 = objc_opt_new();
        *(a1 + 32) = v11;
        if (!v11)
        {
          __NSICreateBackingForArgumentIfNeeded_cold_1();
        }
      }

      [v11 addObject:v10];
      CFRelease(v10);
      v8 = *(a1 + 40);
    }

    v12 = v8 + a3;
    if ((*(v8 + a3 + 1) & 1) == 0)
    {
      v13 = CFDataCreateMutable(&__kCFAllocatorSystemDefault, 0);
      v14 = v13;
      if (a4)
      {
        v15 = *(*(a1 + 8) + *(a2 + 28) + *(a2 + 32));
        if (v15)
        {
          CFDataAppendBytes(v13, v15, *(*a2 + 16));
LABEL_14:
          v17 = *(a1 + 32);
          if (!v17)
          {
            v17 = objc_opt_new();
            *(a1 + 32) = v17;
          }

          [v17 addObject:v14];
          *(*(a1 + 8) + *(a2 + 28)) = CFDataGetMutableBytePtr(v14);
          *(v12 + 1) = 1;
          return;
        }

        v16 = *(*a2 + 16);
      }

      else
      {
        v16 = *(*a2 + 16);
      }

      CFDataSetLength(v13, v16);
      goto LABEL_14;
    }
  }
}

uint64_t __NSI2(uint64_t result, uint64_t a2, double *a3, char a4)
{
  if (!result)
  {
    return result;
  }

  v5 = a3;
  v7 = result;
  while (1)
  {
    v8 = (a4 & 1) != 0 ? *(v7 + 28) + *(v7 + 32) : *(v7 + 20);
    v9 = *(v7 + 34);
    if ((v9 & 0x80) == 0)
    {
      break;
    }

    a4 = 0;
    v7 = *v7;
    a2 = *(a2 + v8);
    if (!v7)
    {
      return result;
    }
  }

  if ((*(v7 + 34) & 0x400) == 0 && (v9 & 0x1800) != 0x800)
  {
    if ((*(v7 + 34) & 0x2000) != 0)
    {
      *(a2 + v8) = *(a3 + *(v7 + 20));
      return result;
    }

    if ((v9 & 0x1800) == 0x1800)
    {
      LOWORD(v10) = 8;
      if ((a4 & 1) == 0)
      {
LABEL_14:
        v11 = *(v7 + 20);
        LOWORD(v12) = *(v7 + 16);
LABEL_22:
        v14 = (a2 + v11);
        v15 = v12;
        bzero(v14, v12);

        return __NSI0(v7, v5, v10, v14, v15);
      }
    }

    else
    {
      v10 = *(v7 + 16);
      v5 = (a3 + *(v7 + 20));
      if ((a4 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v11 = *(v7 + 28) + *(v7 + 32);
    v12 = *(v7 + 24) + *(v7 + 33);
    goto LABEL_22;
  }

  v13 = *v7;
  if (!v13)
  {
    v16 = "array";
    if ((v9 & 0x400) != 0)
    {
      v16 = "struct";
    }

    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%s with unknown contents found while setting argument", v16);
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17), 0];
    objc_exception_throw(v18);
  }

  do
  {
    result = __NSI2(v13, a2, v5, a4 & 1);
    v13 = *(v13 + 8);
  }

  while (v13);
  return result;
}

uint64_t __NSI1(uint64_t result, uint64_t a2, char *a3, char a4)
{
  if (result)
  {
    v5 = a3;
    v7 = result;
    while (1)
    {
      v8 = (a4 & 1) != 0 ? *(v7 + 28) + *(v7 + 32) : *(v7 + 20);
      v9 = *(v7 + 34);
      if ((v9 & 0x80) == 0)
      {
        break;
      }

      a4 = 0;
      v7 = *v7;
      a2 = *(a2 + v8);
      if (!v7)
      {
        return result;
      }
    }

    if ((*(v7 + 34) & 0x400) != 0 || (v9 & 0x1800) == 0x800)
    {
      v12 = *v7;
      if (!v12)
      {
        v15 = "array";
        if ((v9 & 0x400) != 0)
        {
          v15 = "struct";
        }

        v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%s with unknown contents found while getting argument", v15);
        v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16), 0];
        objc_exception_throw(v17);
      }

      do
      {
        result = __NSI1(v12, a2, v5, a4 & 1);
        v12 = *(v12 + 8);
      }

      while (v12);
    }

    else if ((*(v7 + 34) & 0x2000) != 0)
    {
      *&a3[*(v7 + 20)] = *(a2 + v8);
    }

    else
    {
      if (a4)
      {
        v10 = *(v7 + 28) + *(v7 + 32);
        v11 = *(v7 + 24) + *(v7 + 33);
      }

      else
      {
        v11 = *(v7 + 16);
        v10 = *(v7 + 20);
      }

      v13 = (a2 + v10);
      if ((v9 & 0x1800) == 0x1800)
      {
        LOWORD(v14) = 8;
      }

      else
      {
        v14 = *(v7 + 16);
        v5 = &a3[*(v7 + 20)];
      }

      bzero(v5, v14);

      return __NSI0(v7, v13, v11, v5, v14);
    }
  }

  return result;
}

uint64_t __CFRunLoopDoSource1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v3;
  v21 = *MEMORY[0x1E69E9840];
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  CFRetain(v11);
  pthread_mutex_unlock((v13 + 16));
  pthread_mutex_unlock((v14 + 16));
  pthread_mutex_lock((v11 + 16));
  v15 = atomic_load((v11 + 8));
  if ((v15 & 8) != 0)
  {
    atomic_store(0, (v11 + 88));
    pthread_mutex_unlock((v11 + 16));
    v17 = *(v11 + 168);
    v18 = *(v11 + 112);
    if (v14 && !*(v14 + 2713))
    {
      v19 = 0;
    }

    else
    {
      v19 = _CFAutoreleasePoolPush();
    }

    kdebug_trace();
    __CFRUNLOOP_IS_CALLING_OUT_TO_A_SOURCE1_PERFORM_FUNCTION__(v17, v9, v7, v5, v18);
    kdebug_trace();
    __CFRunLoopPerCalloutARPEnd(v19);
    if ((__CF_FORK_STATE & 2) == 0)
    {
      __CF_USED();
    }

    if (__CF_FORK_STATE)
    {
      __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
    }

    v16 = 1;
  }

  else
  {
    pthread_mutex_unlock((v11 + 16));
    v16 = 0;
  }

  CFRelease(v11);
  pthread_mutex_lock((v14 + 16));
  pthread_mutex_lock((v13 + 16));
  return v16;
}

uint64_t (*__CFRUNLOOP_IS_CALLING_OUT_TO_A_SOURCE1_PERFORM_FUNCTION__(uint64_t (*result)(uint64_t, uint64_t, __objc2_class **, uint64_t), uint64_t a2, uint64_t a3, uint64_t (**a4)(uint64_t, uint64_t, __objc2_class **, uint64_t), uint64_t a5))(uint64_t, uint64_t, __objc2_class **, uint64_t)
{
  if (result)
  {
    result = result(a2, a3, &__kCFAllocatorSystemDefault, a5);
    *a4 = result;
  }

  return result;
}

void *__CFRunLoopPerCalloutARPEnd(void *result)
{
  if (result)
  {
    return _CFAutoreleasePoolPop(result);
  }

  return result;
}

void sub_18312C124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, int a10, __int16 a11, __int16 a12, uint64_t a13)
{
  if (a2)
  {
    v14 = objc_begin_catch(exception_object);
    if (a2 == 2)
    {
      v16 = v14;
      v17 = _CFOSLog(v14, v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [v16 name];
        v19 = [v16 reason];
        v20 = [v16 userInfo];
        LODWORD(a9) = 138543875;
        *(&a9 + 4) = v18;
        WORD6(a9) = 2113;
        *(&a9 + 14) = v19;
        a12 = 2113;
        a13 = v20;
        _os_log_error_impl(&dword_1830E6000, v17, OS_LOG_TYPE_ERROR, "Caught exception during runloop's autorelease pool drain of client objects %{public}@: %{private}@ userInfo: %{private}@", &a9, 0x20u);
      }

      objc_terminate();
    }

    objc_terminate();
  }

  _Unwind_Resume(exception_object);
}

void __CFRunLoopCollectSources0(CFTypeRef cf, CFTypeRef *a2)
{
  if (!*(cf + 13))
  {
    v3 = atomic_load(cf + 1);
    if ((v3 & 8) != 0)
    {
      if (atomic_load_explicit(cf + 11, memory_order_acquire))
      {
        if (*a2)
        {
          v5 = CFGetTypeID(*a2);
          v6 = *a2;
          if (v5 == 46)
          {
            Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
            *a2 = Mutable;
            CFArrayAppendValue(Mutable, v6);
            CFArrayAppendValue(*a2, cf);

            CFRelease(v6);
          }

          else
          {
            v8 = *a2;

            CFArrayAppendValue(v8, cf);
          }
        }

        else
        {
          *a2 = CFRetain(cf);
        }
      }
    }
  }
}

void __CFRunLoopDoObservers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  v6 = *(a2 + 112);
  if (v6)
  {
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v10 = Count;
      v35 = &v33;
      MEMORY[0x1EEE9AC00](Count, v8, v9);
      v13 = &v33 - v12;
      if (v11 >= 0x200)
      {
        v14 = 512;
      }

      else
      {
        v14 = v11;
      }

      bzero(&v33 - v12, v14);
      v34 = v13;
      if (v10 >= 0x401)
      {
        v13 = malloc_type_malloc(8 * v10, 0x2004093837F09uLL);
      }

      v15 = 0;
      for (i = 0; i != v10; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 112), i);
        if ((ValueAtIndex[12] & a3) != 0)
        {
          v18 = atomic_load(ValueAtIndex + 1);
          if ((v18 & 8) != 0)
          {
            v19 = atomic_load(ValueAtIndex + 1);
            if ((v19 & 1) == 0 || (v20 = atomic_load(ValueAtIndex + 1), (v20 & 4) != 0))
            {
              *&v13[8 * v15++] = CFRetain(ValueAtIndex);
            }
          }
        }
      }

      if (v15 > 0)
      {
        v41 = *(a1 + 84);
        pthread_mutex_unlock((a2 + 16));
        pthread_mutex_unlock((a1 + 16));
        v21 = 0;
        v36 = v15;
        v37 = v15;
        v38 = v13;
        v39 = a2;
        do
        {
          v22 = *&v13[8 * v21];
          pthread_mutex_lock((v22 + 16));
          v23 = atomic_load((v22 + 8));
          if ((v23 & 8) != 0)
          {
            v24 = atomic_load((v22 + 8));
            v40 = v24;
            v25 = *(v22 + 112);
            v26 = *(v22 + 128);
            atomic_load((v22 + 8));
            v27 = atomic_load((v22 + 8));
            v28 = v27;
            do
            {
              atomic_compare_exchange_strong((v22 + 8), &v28, v27 | 1);
              v29 = v28 == v27;
              v27 = v28;
            }

            while (!v29);
            pthread_mutex_unlock((v22 + 16));
            kdebug_trace();
            if (a1 && !*(a1 + 2713))
            {
              v30 = 0;
            }

            else
            {
              v30 = _CFAutoreleasePoolPush();
            }

            v15 = v37;
            __CFRUNLOOP_IS_CALLING_OUT_TO_AN_OBSERVER_CALLBACK_FUNCTION__(v25, v22, a3, v26);
            __CFRunLoopPerCalloutARPEnd(v30);
            kdebug_trace();
            if ((v40 & 2) == 0)
            {
              CFRunLoopObserverInvalidate(v22);
            }

            v31 = atomic_load((v22 + 8));
            v32 = v31;
            v13 = v38;
            a2 = v39;
            do
            {
              atomic_compare_exchange_strong((v22 + 8), &v32, v31 & 0xFFFFFFFFFFFFFFFELL);
              v29 = v32 == v31;
              v31 = v32;
            }

            while (!v29);
          }

          else
          {
            pthread_mutex_unlock((v22 + 16));
          }

          CFRelease(v22);
          ++v21;
        }

        while (v21 != v15);
        pthread_mutex_lock((a1 + 16));
        pthread_mutex_lock((a2 + 16));
      }

      if (v13 != v34)
      {
        free(v13);
      }
    }
  }
}