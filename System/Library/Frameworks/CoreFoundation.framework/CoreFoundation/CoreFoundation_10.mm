uint64_t CFBurstTrieAddUTF8StringWithWeight(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a3 >= 4096 || *(a1 + 2056) != 0 || a5 == 0;
  v7 = !v6;
  if (v6)
  {
    return v7;
  }

  v8 = a1;
  v9 = a1;
  if (!a3)
  {
LABEL_15:
    v13 = *(v9 + 2048);
    *(v9 + 2048) = v13 + a4;
    *(v9 + 2052) = a5;
    if (v13)
    {
      return v7;
    }

LABEL_35:
    ++*(v8 + 2076);
    return v7;
  }

  v11 = 0;
  v9 = a1;
  while (1)
  {
    v12 = *(v9 + 8 * *(a2 + v11));
    if ((v12 & 3) != 1)
    {
      break;
    }

    v9 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    if (a3 == ++v11)
    {
      goto LABEL_15;
    }
  }

  if ((v12 & 3) != 2)
  {
    *(v9 + 8 * *(a2 + v11)) = makeCFBurstTrieListNode((a2 + v11 + 1), ~v11 + a3, a4, a5) | 2;
    goto LABEL_35;
  }

  v29 = a4;
  v30 = a5;
  v31 = v7;
  v14 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if ((v12 & 0xFFFFFFFFFFFFFFFCLL) == 0)
  {
    CFBurstTrieAddUTF8StringWithWeight_cold_1();
  }

  v15 = a2 + v11;
  v16 = (a3 - 1);
  v17 = 1;
  v18 = v12 & 0xFFFFFFFFFFFFFFFCLL;
  while (1)
  {
    v19 = v18;
    if (v16 - *(v18 + 16) == v11 && !memcmp((v15 + 1), (v18 + 18), v16 - v11))
    {
      break;
    }

    ++v17;
    v18 = *v19;
    if (!*v19)
    {
      *v19 = makeCFBurstTrieListNode((v15 + 1), v16 - v11, v29, v30);
      v20 = 1;
      goto LABEL_26;
    }
  }

  v20 = 0;
  *(v19 + 8) += v29;
  *(v19 + 12) = v30;
LABEL_26:
  v8 = a1;
  v21 = v17 > *(a1 + 2080);
  v7 = v31;
  if (v21)
  {
    v22 = malloc_type_calloc(1uLL, 0x808uLL, 0x100004078B9B834uLL);
    do
    {
      v24 = v14[2];
      v23 = v14[3];
      if (*(v14 + 8))
      {
        v25 = *(v22 + 8 * *(v14 + 18));
        CFBurstTrieListNode = makeCFBurstTrieListNode(v14 + 19, *(v14 + 8) - 1, v14[2], v23);
        *(CFBurstTrieListNode + 2) = v24;
        *CFBurstTrieListNode = v25 & 0xFFFFFFFFFFFFFFFCLL;
        *(v22 + 8 * *(v14 + 18)) = CFBurstTrieListNode | 2;
      }

      else
      {
        *(v22 + 2048) = v24;
        *(v22 + 2052) = v23;
      }

      v27 = *v14;
      free(v14);
      v14 = v27;
    }

    while (v27);
    v12 = v22 | 1;
    v8 = a1;
  }

  *(v9 + 8 * *(a2 + v11)) = v12;
  if (v20)
  {
    goto LABEL_35;
  }

  return v7;
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  vars8 = va_arg(va, _BYTE *);
  v3 = 0;
  va_copy(v19, va);
  for (i = vars8; ; ++i)
  {
    v5 = *i;
    if (v5 <= 0x6B)
    {
      break;
    }

    v6 = v3 | 0x80;
    v7 = v3 | 0x2100;
    v8 = v3 | 4;
    if (v5 == 121)
    {
      v9 = v3 | 4;
    }

    else
    {
      v9 = v3;
    }

    if (v5 != 119)
    {
      v7 = v9;
    }

    if (v5 != 115)
    {
      v6 = v7;
    }

    v10 = v3 | 8;
    if (v5 != 114)
    {
      v8 = v3;
    }

    if (v5 == 109)
    {
      v8 = v3 | 0x40;
    }

    if (v5 != 108)
    {
      v10 = v8;
    }

    if (*i <= 0x72u)
    {
      v3 = v10;
    }

    else
    {
      v3 = v6;
    }

LABEL_35:
    ;
  }

  switch(*i)
  {
    case 'D':
      v3 |= 0x10000uLL;
      goto LABEL_35;
    case 'E':
    case 'c':
      v3 |= 0x200uLL;
      goto LABEL_35;
    case 'F':
      v3 |= 0x400uLL;
      goto LABEL_35;
    case 'G':
      v3 |= 2uLL;
      goto LABEL_35;
    case 'H':
      v3 |= 0x20uLL;
      goto LABEL_35;
    case 'I':
    case 'J':
    case 'K':
    case 'N':
    case 'O':
    case 'P':
    case 'R':
    case 'S':
    case 'T':
    case 'V':
    case 'X':
    case 'Z':
    case '[':
    case '\\':
    case ']':
    case '_':
    case 'a':
    case 'b':
      goto LABEL_35;
    case 'L':
    case 'M':
      v3 |= 8uLL;
      goto LABEL_35;
    case 'Q':
      v3 |= 0x800uLL;
      goto LABEL_35;
    case 'U':
      v3 |= 4uLL;
      goto LABEL_35;
    case 'W':
      v3 |= 0x1000uLL;
      goto LABEL_35;
    case 'Y':
      v3 |= 0x4000uLL;
      goto LABEL_35;
    case '^':
      v3 |= 0x2100uLL;
      goto LABEL_35;
    case 'd':
      v3 |= 0x10uLL;
      goto LABEL_35;
    default:
      if (v5 == 35)
      {
        v3 |= 0x8000uLL;
        goto LABEL_35;
      }

      if (*i)
      {
        goto LABEL_35;
      }

      v11 = [(__CFCalendar *)calendar components:v3 fromDate:[NSDate dateWithTimeIntervalSinceReferenceDate:at]];
      if (!v11)
      {
        return v11;
      }

      v12 = *vars8;
      if (*vars8)
      {
        v13 = v11;
        v14 = vars8 + 1;
        do
        {
          v15 = va_arg(v19, _DWORD *);
          if (v12 <= 113)
          {
            switch(v12)
            {
              case 'D':
                v16 = [v13 dayOfYear];
                goto LABEL_65;
              case 'E':
              case 'c':
                v16 = [v13 weekday];
                goto LABEL_65;
              case 'F':
                v16 = [v13 weekdayOrdinal];
                goto LABEL_65;
              case 'G':
                v16 = [v13 era];
                goto LABEL_65;
              case 'H':
                v16 = [v13 hour];
                goto LABEL_65;
              case 'I':
              case 'J':
              case 'K':
              case 'N':
              case 'O':
              case 'P':
              case 'S':
              case 'T':
              case 'V':
              case 'X':
              case 'Z':
              case '[':
              case '\\':
              case ']':
              case '_':
              case 'a':
              case 'b':
              case 'e':
              case 'f':
              case 'g':
              case 'h':
              case 'i':
              case 'j':
              case 'k':
                goto LABEL_66;
              case 'L':
              case 'M':
                v16 = [v13 month];
                goto LABEL_65;
              case 'Q':
                v16 = [v13 quarter];
                goto LABEL_65;
              case 'R':
                v16 = [v13 isRepeatedDay];
                goto LABEL_65;
              case 'U':
                goto LABEL_48;
              case 'W':
                v16 = [v13 weekOfMonth];
                goto LABEL_65;
              case 'Y':
                v16 = [v13 yearForWeekOfYear];
                goto LABEL_65;
              case '^':
                goto LABEL_50;
              case 'd':
                v16 = [v13 day];
                goto LABEL_65;
              case 'l':
                v16 = [v13 isLeapMonth];
                goto LABEL_65;
              case 'm':
                v16 = [v13 minute];
                goto LABEL_65;
              default:
                if (v12 != 35)
                {
                  goto LABEL_66;
                }

                v16 = [v13 nanosecond];
                break;
            }

            goto LABEL_65;
          }

          if (v12 > 118)
          {
            if (v12 == 119)
            {
LABEL_50:
              *v15 = [v13 weekOfYear];
              if ([v13 weekOfYear] == 0x7FFFFFFFFFFFFFFFLL)
              {
                v16 = [v13 week];
                goto LABEL_65;
              }
            }

            else if (v12 == 121)
            {
LABEL_48:
              v16 = [v13 year];
              goto LABEL_65;
            }
          }

          else
          {
            if (v12 == 114)
            {
              goto LABEL_48;
            }

            if (v12 == 115)
            {
              v16 = [v13 second];
LABEL_65:
              *v15 = v16;
            }
          }

LABEL_66:
          v17 = *v14++;
          v12 = v17;
        }

        while (v17);
      }

      LOBYTE(v11) = 1;
      return v11;
  }
}

char *makeCFBurstTrieListNode(const void *a1, unsigned int a2, int a3, int a4)
{
  v8 = a2;
  v9 = malloc_type_calloc(1uLL, a2 + 19, 0x10200401AC14DB1uLL);
  memcpy(v9 + 18, a1, v8);
  v9[a2 + 18] = 0;
  *v9 = 0;
  *(v9 + 8) = a2;
  *(v9 + 2) = a3;
  *(v9 + 3) = a4;
  return v9;
}

uint64_t checkForCloseTag(unint64_t *a1, const UInt8 *a2, size_t a3)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 - v4 < (a3 + 3))
  {
    goto LABEL_27;
  }

  v7 = *v4;
  if (v7 != 60 || (a1[1] = (v4 + 1), v7 = v4[1], v7 != 47))
  {
    if (!a1[3])
    {
      v21 = lineNumber(a1);
      Error = __CFPropertyListCreateError(3840, @"Encountered unexpected character %c on line %u while looking for close tag", v7, v21);
      goto LABEL_13;
    }

    return 0;
  }

  v10 = v4 + 2;
  a1[1] = (v4 + 2);
  if (memcmp(v4 + 2, a2, a3))
  {
    v11 = CFStringCreateWithBytes(&__kCFAllocatorSystemDefault, a2, a3, 0x8000100u, 0);
    if (!a1[3])
    {
      v12 = lineNumber(a1);
      a1[3] = __CFPropertyListCreateError(3840, @"Close tag on line %u does not match open tag %@", v12, v11);
    }

    CFRelease(v11);
    return 0;
  }

  v15 = &v10[a3];
  for (a1[1] = &v10[a3]; v15 < v5; a1[1] = v15)
  {
    v16 = *v15;
    v17 = v16 > 0x20;
    v18 = (1 << v16) & 0x100002600;
    if (v17 || v18 == 0)
    {
      break;
    }

    ++v15;
  }

  if (v15 == v5)
  {
LABEL_27:
    if (!a1[3])
    {
      Error = __CFPropertyListCreateError(3840, @"Encountered unexpected EOF");
LABEL_13:
      v14 = Error;
      result = 0;
      a1[3] = v14;
      return result;
    }

    return 0;
  }

  if (*v15 != 62)
  {
    if (!a1[3])
    {
      v20 = *v15;
      v22 = lineNumber(a1);
      Error = __CFPropertyListCreateError(3840, @"Encountered unexpected character %c on line %u while looking for close tag", v20, v22);
      goto LABEL_13;
    }

    return 0;
  }

  a1[1] = (v15 + 1);
  return 1;
}

uint64_t findCFBurstTrieList(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = *(result + 16);
  v4 = (*(result + 28) - *(result + 24));
  if (v4 >= 1)
  {
    v5 = *(result + 28) - *(result + 24);
  }

  else
  {
    v5 = 0;
  }

  v6 = v3 & 0xFFFFFFFFFFFFFFFCLL;
  if ((v3 & 0xFFFFFFFFFFFFFFFCLL) != 0)
  {
    v9 = result;
    v10 = result + 40;
    do
    {
      v11 = *(v6 + 16);
      if (v5 <= v11)
      {
        v12 = *(v9 + 24);
        if (v4 <= 0 || (result = memcmp((v6 + 18), (*(v9 + 32) + v12), v4), !result))
        {
          result = memcpy((v10 + v12), (v6 + 18), v11);
          *(v10 + *(v9 + 24) + *(v6 + 16)) = 0;
          *(v9 + 16) = v6;
          if (*(v6 + 12))
          {
            result = a3(a2, v10);
            if (result)
            {
              break;
            }
          }
        }
      }

      v6 = *v6;
    }

    while (v6);
  }

  return result;
}

CFCharacterSetRef __InitializeURLAllowedCharacterSets_block_invoke()
{
  sURLAllowedCharacterSets = CFAllocatorAllocateTyped(0, 0x38uLL, 0x6004044C4A2DFuLL);
  *sURLAllowedCharacterSets = CFCharacterSetCreateWithCharactersInString(0, @"!$&'()*+,-.0123456789;=ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz~");
  *(sURLAllowedCharacterSets + 8) = CFCharacterSetCreateWithCharactersInString(0, @"!$&'()*+,-.0123456789;=ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz~");
  *(sURLAllowedCharacterSets + 16) = CFCharacterSetCreateWithCharactersInString(0, @"!$&'()*+,-.0123456789:;=ABCDEFGHIJKLMNOPQRSTUVWXYZ[]_abcdefghijklmnopqrstuvwxyz~");
  *(sURLAllowedCharacterSets + 48) = CFCharacterSetCreateWithCharactersInString(0, @"0123456789");
  if (_CFURIParserSemicolonAllowedInPath_onceToken != -1)
  {
    __InitializeURLAllowedCharacterSets_block_invoke_cold_1();
  }

  if (_CFURIParserSemicolonAllowedInPath_allowSemicolon)
  {
    v0 = @"!$&'()*+,-./0123456789:;=@ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz~";
  }

  else
  {
    v0 = @"!$&'()*+,-./0123456789:=@ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz~";
  }

  *(sURLAllowedCharacterSets + 24) = CFCharacterSetCreateWithCharactersInString(0, v0);
  *(sURLAllowedCharacterSets + 32) = CFCharacterSetCreateWithCharactersInString(0, @"!$&'()*+,-./0123456789:;=?@ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz~");
  result = CFCharacterSetCreateWithCharactersInString(0, @"!$&'()*+,-./0123456789:;=?@ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz~");
  *(sURLAllowedCharacterSets + 40) = result;
  return result;
}

CFDictionaryRef __CFXPreferencesCopyCurrentApplicationStateWithDeadlockAvoidance(_BYTE *a1)
{
  v2 = _CFGetTSD(15);
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v3 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      __CFXPreferencesCopyCurrentApplicationStateWithDeadlockAvoidance_cold_1();
    }

    v5 = [qword_1ED40BE18 copyPrefs];
    v3 = v5;
    if (!v2 && v5)
    {
      *a1 = 0;
      v6 = [(_CFXPreferences *)v5 copyDictionaryForApp:0 withContainer:?];

      return v6;
    }
  }

  *a1 = 1;

  return CFDictionaryCreate(&__kCFAllocatorSystemDefault, 0, 0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
}

float64x2_t CFDateComponentsCreate(__objc2_class **Default, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!Default)
  {
    Default = CFAllocatorGetDefault();
  }

  Instance = _CFRuntimeCreateInstance(Default, 0x42uLL, 160, 0, a5, a6, a7, a8);
  if (Instance)
  {
    Instance[2] = 0;
    Instance[3] = 0;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    result = vnegq_f64(v10);
    *(Instance + 2) = result;
    *(Instance + 3) = result;
    *(Instance + 4) = result;
    *(Instance + 5) = result;
    *(Instance + 6) = result;
    *(Instance + 7) = result;
    *(Instance + 8) = result;
    *(Instance + 9) = result;
    *(Instance + 10) = result;
  }

  return result;
}

uint64_t CFDateComponentsSetValue(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    CFDateComponentsSetValue_cold_1();
  }

  if (a2 > 511)
  {
    if (a2 < 0x2000)
    {
      if (a2 > 2047)
      {
        if (a2 == 2048)
        {
          v3 = 128;
        }

        else
        {
          if (a2 != 4096)
          {
            return result;
          }

          v3 = 136;
        }
      }

      else if (a2 == 512)
      {
        v3 = 112;
      }

      else
      {
        if (a2 != 1024)
        {
          return result;
        }

        v3 = 120;
      }
    }

    else if (a2 < 0x8000)
    {
      if (a2 == 0x2000)
      {
        v3 = 144;
      }

      else
      {
        if (a2 != 0x4000)
        {
          return result;
        }

        v3 = 152;
      }
    }

    else
    {
      switch(a2)
      {
        case 0x8000:
          v3 = 160;
          break;
        case 0x10000:
          v3 = 168;
          break;
        case 0x40000000:
          v3 = 56;
          break;
        default:
          return result;
      }
    }
  }

  else if (a2 <= 15)
  {
    if (a2 > 3)
    {
      if (a2 == 4)
      {
        v3 = 40;
      }

      else
      {
        if (a2 != 8)
        {
          return result;
        }

        v3 = 48;
      }
    }

    else if (a2 == 0xFFFFFFFF80000000)
    {
      v3 = 64;
    }

    else
    {
      if (a2 != 2)
      {
        return result;
      }

      v3 = 32;
    }
  }

  else if (a2 <= 63)
  {
    if (a2 == 16)
    {
      v3 = 72;
    }

    else
    {
      if (a2 != 32)
      {
        return result;
      }

      v3 = 80;
    }
  }

  else
  {
    switch(a2)
    {
      case 64:
        v3 = 88;
        break;
      case 128:
        v3 = 96;
        break;
      case 256:
        v3 = 104;
        break;
      default:
        return result;
    }
  }

  *(result + v3) = a3;
  return result;
}

void CFCharacterSetAddCharactersInString(CFMutableCharacterSetRef theSet, CFStringRef theString)
{
  if (CF_IS_OBJC(0x19uLL, theSet))
  {

    [(__CFCharacterSet *)theSet addCharactersInString:theString];
  }

  else
  {
    v10 = atomic_load(theSet + 1);
    if ((v10 & 1) == 0)
    {
      CFLog(3, @"%s: Immutable character set passed to mutable function", v4, v5, v6, v7, v8, v9, "void CFCharacterSetAddCharactersInString(CFMutableCharacterSetRef, CFStringRef)");
      if (dyld_program_sdk_at_least())
      {
        CFCharacterSetAddCharactersInString_cold_2();
      }
    }

    CFCharacterSetAddCharactersInString_cold_1(theSet + 1, theSet, theString);
  }
}

void CFCharacterSetAddCharactersInString_cold_1(unint64_t *a1, uint64_t a2, CFStringRef theString)
{
  v85 = *MEMORY[0x1E69E9840];
  v8 = atomic_load(a1);
  if ((v8 & 0x70) == 0)
  {
    v9 = atomic_load(a1);
    if ((v9 & 1) == 0)
    {
      v10 = atomic_load(a1);
      if ((v10 & 8) == 0 && CFCharacterSetGetPredefined(*(a2 + 24)) == a2)
      {
        goto LABEL_92;
      }
    }
  }

  v11 = *(a2 + 40);
  if (!v11 || !*(v11 + 8) && !*(v11 + 13))
  {
    OUTLINED_FUNCTION_5();
    switch(v12)
    {
      case 0:
      case 1:
        if (*(a2 + 32))
        {
          goto LABEL_13;
        }

        break;
      case 2:
      case 3:
        if (*(a2 + 24))
        {
          goto LABEL_13;
        }

        break;
      default:
        goto LABEL_13;
    }

    v13 = atomic_load(a1);
    if ((v13 & 8) != 0)
    {
      goto LABEL_92;
    }
  }

LABEL_13:
  Length = CFStringGetLength(theString);
  if (!Length)
  {
    goto LABEL_92;
  }

  v15 = Length;
  v16 = atomic_load(a1);
  if ((v16 & 8) != 0)
  {
    goto LABEL_26;
  }

  v17 = *(a2 + 40);
  if (v17 && (*(v17 + 8) || *(v17 + 13)))
  {
LABEL_22:
    v20 = atomic_load(a1);
    v19 = (v20 & 0x70) == 0x20 ? *(a2 + 32) : 64;
  }

  else
  {
    OUTLINED_FUNCTION_5();
    switch(v18)
    {
      case 0:
      case 1:
        if (*(a2 + 32))
        {
          goto LABEL_22;
        }

        break;
      case 2:
      case 3:
        if (*(a2 + 24))
        {
          goto LABEL_22;
        }

        break;
      default:
        goto LABEL_22;
    }

    v19 = 0;
  }

  v21 = v19 + v15;
  if (v19 + v15 >= 64)
  {
LABEL_26:
    __CFCSetMakeBitmap(a2);
    OUTLINED_FUNCTION_13();
    theStringa = theString;
    v81 = 0;
    v82 = v15;
    CharactersPtr = CFStringGetCharactersPtr(theString);
    CStringPtr = 0;
    v79 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
    }

    v61 = theString;
    v83 = 0;
    v84 = 0;
    v80 = CStringPtr;
    if (v15 >= 1)
    {
      OUTLINED_FUNCTION_7();
      while (1)
      {
        if (v4 >= 4)
        {
          v25 = theString;
        }

        else
        {
          v25 = v4;
        }

        if (v79)
        {
          v26 = v79 + 2 * v81;
        }

        else
        {
          if (v80)
          {
            v27 = *(v80 + v81 + v4);
            goto LABEL_38;
          }

          v29 = v83;
          if (v84 <= v4 || v83 > v4)
          {
            OUTLINED_FUNCTION_2_0(v25, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, theStringa, v79, v80, v81, v82, v83, v84);
            v24 = &v62;
            v29 = v83;
          }

          v26 = &v24[-v29];
        }

        v27 = *(v26 + 2 * v4);
LABEL_38:
        if ((v27 & 0xF800 | 0x400) == 0xDC00)
        {
          v3 = 1;
        }

        else
        {
          *(*(a2 + 24) + (v27 >> 3)) |= 1 << (v27 & 7);
        }

        OUTLINED_FUNCTION_15();
        if (v28)
        {
          goto LABEL_51;
        }
      }
    }

    v3 = 0;
LABEL_51:
    OUTLINED_FUNCTION_8();
    do
    {
      OUTLINED_FUNCTION_4(v31);
    }

    while (!v28);
    OUTLINED_FUNCTION_9();
    if (v28)
    {
      __CFCheckForExpandedSet(a2, v32, v33, v34, v35, v36, v37, v38);
    }

    if (v3)
    {
      __CFApplySurrogatesInString(a2, v61, CFCharacterSetAddCharactersInRange);
    }

    goto LABEL_92;
  }

  v39 = *(a2 + 24);
  if (v39)
  {
    v40 = (v39 + 2 * *(a2 + 32));
  }

  else
  {
    v41 = CFGetAllocator(a2);
    v40 = OUTLINED_FUNCTION_3(v41);
  }

  v86.location = 0;
  v86.length = v15;
  CFStringGetCharacters(theString, v86, v40);
  if (v15 < 2)
  {
    v42 = 0;
  }

  else
  {
    v42 = 0;
    v43 = v40;
    v44 = &v40[v15];
    do
    {
      if ((*v43 & 0xF800 | 0x400) == 0xDC00)
      {
        memmove(v43, v43 + 1, v44-- - (v43 + 1));
        v42 = 1;
      }

      else
      {
        ++v43;
      }
    }

    while (v43 < v44);
    v21 = v19 + v44 - v40;
  }

  v45 = *(a2 + 24);
  if (v21)
  {
    if (!v45)
    {
      OUTLINED_FUNCTION_8();
      do
      {
        OUTLINED_FUNCTION_17(v46);
      }

      while (!v28);
      *(a2 + 24) = v40;
    }

    *(a2 + 32) = v21;
    OUTLINED_FUNCTION_0_1();
    qsort(v47, v21, 2uLL, v48);
    v49 = *(a2 + 32);
    if (v49 >= 2)
    {
      OUTLINED_FUNCTION_16();
      do
      {
        OUTLINED_FUNCTION_10();
        if (!v28)
        {
          ++v50;
          *(v51 + 2 * v50) = v53;
        }
      }

      while (v52 != 1);
      v49 = v50 + 1;
    }

    *(a2 + 32) = v49;
  }

  else if (!v45)
  {
    v54 = CFGetAllocator(a2);
    CFAllocatorDeallocate(v54, v40);
  }

  OUTLINED_FUNCTION_8();
  do
  {
    OUTLINED_FUNCTION_4(v55);
  }

  while (!v28);
  if ((v42 & 1) == 0)
  {
LABEL_92:
    OUTLINED_FUNCTION_12();
    return;
  }

  OUTLINED_FUNCTION_12();

  __CFApplySurrogatesInString(v56, v57, v58);
}

void _CFPrefsDeliverPendingKVONotificationsGuts(const __CFArray *a1)
{
  Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
  if (CFArrayGetCount(a1) > 0)
  {
    _CFPrefsDeliverPendingKVONotificationsGuts_cold_1();
  }

  CFDictionaryApplyFunction(Mutable, applyBlockApplier, &__block_literal_global_251);
  CFRelease(Mutable);
}

void _CFPrefsDeliverPendingKVONotificationsGuts_cold_1()
{
  OUTLINED_FUNCTION_4_5();
  v4 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, v4);
    v7 = ValueAtIndex;
    if (ValueAtIndex)
    {
      Property = objc_getProperty(ValueAtIndex, v6, 8, 1);
    }

    else
    {
      Property = 0;
    }

    Value = CFDictionaryGetValue(v2, Property);
    if (!Value)
    {
      Value = CFArrayCreateMutable(v1, 0, &kCFTypeArrayCallBacks);
      if (v7)
      {
        v11 = objc_getProperty(v7, v10, 8, 1);
      }

      else
      {
        v11 = 0;
      }

      CFDictionarySetValue(v2, v11, Value);
      CFRelease(Value);
    }

    CFArrayAppendValue(Value, v7);
    ++v4;
  }

  while (v0 != v4);
}

void __CFCSetMakeBitmap(unint64_t *cf)
{
  v2 = cf + 1;
  v3 = atomic_load(cf + 1);
  if ((v3 & 0x70) == 0x30 && cf[3])
  {
    return;
  }

  v4 = CFGetAllocator(cf);
  Typed = CFAllocatorAllocateTyped(v4, 0x2000uLL, 0x100004077774924uLL);
  __CFCSetGetBitmap(cf, Typed);
  v6 = atomic_load(v2);
  if ((v6 & 0x70) != 0)
  {
    v7 = atomic_load(cf + 1);
    if ((v7 & 0x70) == 0x40 && (v8 = cf[3]) != 0 || (v9 = atomic_load(cf + 1), (v9 & 0x70) == 0x20) && (v8 = cf[3]) != 0)
    {
      CFAllocatorDeallocate(v4, v8);
      cf[3] = 0;
    }

    else
    {
      v18 = atomic_load(cf + 1);
      if ((v18 & 0x70) == 0x10)
      {
        v19 = cf[5];
        if (v19 && *(v19 + 8))
        {
          __CFCSetAddNonBMPPlanesInRange(cf, *(cf + 6), cf[4]);
        }

        else
        {
          v20 = atomic_load(cf + 1);
          __CFCSetAddNonBMPPlanesInRange(cf, *(cf + 6), cf[4]);
          if ((v20 & 8) != 0)
          {
            v21 = cf[5];
            if (!v21)
            {
              v22 = CFGetAllocator(cf);
              v21 = CFAllocatorAllocateTyped(v22, 0x10uLL, 0x1080040FC6463CFuLL);
              cf[5] = v21;
              *v21 = 0;
              *(v21 + 6) = 0;
            }

            *(v21 + 13) = 1;
          }
        }
      }
    }

    goto LABEL_61;
  }

  NumberOfPlanes = CFUniCharGetNumberOfPlanes(*(cf + 6));
  if (NumberOfPlanes < 2)
  {
    goto LABEL_61;
  }

  v11 = NumberOfPlanes;
  v12 = 0x1080040FC6463CFLL;
  v13 = NumberOfPlanes - 1;
  v14 = cf[5];
  if (v14)
  {
    if (*(v14 + 12) < v13)
    {
      *(v14 + 12) = v13;
      v15 = *v14;
      v16 = CFGetAllocator(cf);
      if (v15)
      {
        v17 = __CFSafelyReallocateWithAllocatorTyped(v16, *cf[5], 8 * v13, 1153737439, 0);
      }

      else
      {
        v17 = CFAllocatorAllocateTyped(v16, 8 * v13, 0x6004044C4A2DFuLL);
      }

      *cf[5] = v17;
    }
  }

  else
  {
    v23 = CFGetAllocator(cf);
    v24 = CFAllocatorAllocateTyped(v23, 0x10uLL, 0x1080040FC6463CFuLL);
    cf[5] = v24;
    *(v24 + 12) = v13;
    *(v24 + 13) = 0;
    *(v24 + 8) = 0;
    if (v13)
    {
      v25 = CFGetAllocator(cf);
      v26 = CFAllocatorAllocateTyped(v25, 8 * v13, 0x6004044C4A2DFuLL);
      v24 = cf[5];
    }

    else
    {
      v26 = 0;
    }

    *v24 = v26;
  }

  v27 = 0;
  for (i = 1; i != v11; ++i)
  {
    if (!v27)
    {
      v27 = CFAllocatorAllocateTyped(v4, 0x2000uLL, 0x100004077774924uLL);
    }

    BitmapForPlane = CFUniCharGetBitmapForPlane(*(cf + 6), i, v27, 0);
    if (BitmapForPlane != 255)
    {
      if (BitmapForPlane == 1)
      {
        memset(v27, 255, 0x2000uLL);
      }

      if (!i)
      {
        __break(1u);
        return;
      }

      if (i > 0x10u)
      {
        goto LABEL_57;
      }

      v30 = cf[5];
      if (v30)
      {
        if (*(v30 + 12) >= i)
        {
          goto LABEL_44;
        }

        v31 = v12;
        *(v30 + 12) = i;
        v32 = *v30;
        v33 = CFGetAllocator(cf);
        if (v32)
        {
          v34 = __CFSafelyReallocateWithAllocatorTyped(v33, *cf[5], 8 * (i & 0x1F), 1153737439, 0);
        }

        else
        {
          v34 = CFAllocatorAllocateTyped(v33, 8 * (i & 0x1F), 0x6004044C4A2DFuLL);
        }

        v12 = v31;
      }

      else
      {
        v35 = CFGetAllocator(cf);
        v36 = CFAllocatorAllocateTyped(v35, 0x10uLL, v12);
        cf[5] = v36;
        *(v36 + 12) = i;
        *(v36 + 8) = 0;
        v37 = CFGetAllocator(cf);
        v34 = CFAllocatorAllocateTyped(v37, 8 * (i & 0x1F), 0x6004044C4A2DFuLL);
      }

      v30 = cf[5];
      *v30 = v34;
LABEL_44:
      if ((*(v30 + 8) & (1 << i)) != 0)
      {
        v38 = i & 0x1F;
      }

      else
      {
        v39 = CFGetAllocator(cf);
        Mutable = CFCharacterSetCreateMutable(v39);
        v38 = i & 0x1F;
        *(*cf[5] + 8 * v38 - 8) = Mutable;
        v30 = cf[5];
        *(v30 + 8) |= 1 << i;
      }

      v41 = *(*v30 + 8 * v38 - 8);
      if (v41)
      {
        v42 = atomic_load((v41 + 8));
        v43 = v42;
        do
        {
          atomic_compare_exchange_strong((v41 + 8), &v43, v42 & 0xFFFFFFFFFFFFFF8FLL | 0x30);
          v44 = v43 == v42;
          v42 = v43;
        }

        while (!v44);
        *(v41 + 24) = v27;
        v45 = atomic_load((v41 + 8));
        v46 = v45;
        do
        {
          atomic_compare_exchange_strong((v41 + 8), &v46, v45 & 0xFFFFFFFFFFFFFFF7);
          v44 = v46 == v45;
          v45 = v46;
        }

        while (!v44);
        v47 = (v41 + 8);
        v48 = atomic_load(v47);
        v49 = v48;
        do
        {
          atomic_compare_exchange_strong(v47, &v49, v48 & 0xFFFFFFFFFFFFFFFBLL);
          v44 = v49 == v48;
          v48 = v49;
        }

        while (!v44);
      }

LABEL_57:
      v27 = 0;
      continue;
    }
  }

  if (v27)
  {
    CFAllocatorDeallocate(v4, v27);
  }

LABEL_61:
  v50 = atomic_load(cf + 1);
  v51 = v50;
  do
  {
    atomic_compare_exchange_strong(cf + 1, &v51, v50 & 0xFFFFFFFFFFFFFF8FLL | 0x30);
    v44 = v51 == v50;
    v50 = v51;
  }

  while (!v44);
  cf[3] = Typed;
  v52 = atomic_load(cf + 1);
  v53 = v52;
  do
  {
    atomic_compare_exchange_strong(cf + 1, &v53, v52 & 0xFFFFFFFFFFFFFFF7);
    v44 = v53 == v52;
    v52 = v53;
  }

  while (!v44);
}

void OUTLINED_FUNCTION_4_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void __CFCSetGetBitmap(unint64_t *a1, int8x16_t *__b)
{
  v4 = atomic_load(a1 + 1);
  if ((v4 & 0x70) == 0x30)
  {
    v5 = a1[3];
    if (v5)
    {

      memmove(__b, v5, 0x2000uLL);
      return;
    }
  }

  v6 = atomic_load(a1 + 1);
  if ((v6 & 8) != 0)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  memset(__b, v7, 0x2000uLL);
  v8 = a1[5];
  if (!v8 || !*(v8 + 8) && !*(v8 + 13))
  {
    v9 = atomic_load(a1 + 1);
    v10 = (v9 >> 4) & 7;
    if (v10 > 2)
    {
      if ((v10 == 3 || v10 == 4) && !a1[3])
      {
        return;
      }
    }

    else if ((v10 == 1 || v10 == 2) && !a1[4])
    {
      return;
    }
  }

  v11 = atomic_load(a1 + 1);
  v12 = (v11 >> 4) & 7;
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v27 = a1[4];
      if (v27)
      {
        v28 = a1[3];
        do
        {
          v29 = *v28++;
          v30 = 1 << (v29 & 7);
          v31 = v29 >> 3;
          v32 = __b->i8[v31];
          v33 = v32 | v30;
          v34 = v32 & ~v30;
          if ((v6 & 8) == 0)
          {
            v34 = v33;
          }

          __b->i8[v31] = v34;
          --v27;
        }

        while (v27);
      }
    }

    else if (v12 == 4)
    {
      v16 = 0;
      v17 = a1[3];
      v18 = (v17 + 256);
      do
      {
        v19 = *(v17 + v16);
        if ((v19 + 1) > 1u)
        {
          v21 = *v18;
          v22 = v18[1];
          v18 += 2;
          *__b = v21;
          __b[1] = v22;
        }

        else
        {
          v20 = vdupq_n_s8(v19);
          *__b = v20;
          __b[1] = v20;
        }

        __b += 2;
        ++v16;
      }

      while (v16 != 256);
    }

    return;
  }

  if (!v12)
  {
    BitmapForPlane = CFUniCharGetBitmapForPlane(*(a1 + 6), 0, __b, (v6 >> 3) & 1);
    if (BitmapForPlane != 255 || (v6 & 8) == 0)
    {
      if (BitmapForPlane != 1 || (v6 & 8) != 0)
      {
        return;
      }

      v25 = __b;
      v26 = 0x2000;
      goto LABEL_44;
    }

    v35 = __b;
    v36 = 0x2000;
    goto LABEL_53;
  }

  v13 = *(a1 + 6);
  if (WORD1(v13))
  {
    return;
  }

  v14 = a1[4];
  if ((v14 + v13) >= 0x10000)
  {
    LODWORD(v14) = -v13;
  }

  v15 = v13 + v14 - 1;
  if ((v6 & 8) != 0)
  {
    v37 = v13 >> 3;
    v38 = v15 >> 3;
    v39 = 255 << (v13 & 7);
    if (v38 == v37)
    {
      __b->i8[v37] &= ~((0xFFu >> (~v15 & 7)) & v39);
      return;
    }

    __b->i8[v37] &= ~v39;
    __b->i8[v15 >> 3] &= -256 >> (~v15 & 7);
    if ((v13 >> 3) + 1 >= v38)
    {
      return;
    }

    v35 = &__b->i8[(v13 >> 3) + 1];
    v36 = v38 - (v13 >> 3) - 2 + 1;
LABEL_53:

    bzero(v35, v36);
    return;
  }

  if (v15 == v13)
  {
    __b->i8[v13 >> 3] |= 1 << (v13 & 7);
    return;
  }

  v40 = v13 >> 3;
  v41 = v15 >> 3;
  v42 = 255 << (v13 & 7);
  if (*(a1 + 6) >> 3 == v41)
  {
    __b->i8[v41] |= (0xFFu >> (~v15 & 7)) & v42;
    return;
  }

  __b->i8[v40] |= v42;
  __b->i8[v15 >> 3] |= 0xFFu >> (~v15 & 7);
  if (v40 + 1 < v41)
  {
    v25 = &__b->i8[(v13 >> 3) + 1];
    v26 = (v41 - v40 - 2) + 1;
LABEL_44:

    memset(v25, 255, v26);
  }
}

void CFBurstTrieRelease(unsigned int *a1)
{
  if (atomic_fetch_add(a1 + 521, 0xFFFFFFFF) == 1)
  {
    v3 = *(a1 + 257);
    if (v3)
    {
      if (*(a1 + 2088) == 1)
      {
        munmap(v3, a1[516]);
      }
    }

    else
    {
      finalizeCFBurstTrie(a1);
    }

    free(a1);
  }
}

void finalizeCFBurstTrie(uint64_t a1)
{
  for (i = 0; i != 256; ++i)
  {
    v3 = *(a1 + 8 * i);
    if ((v3 & 3) == 2)
    {
      v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v5 = *v4;
        free(v4);
        v4 = v5;
      }

      while (v5);
    }

    else if ((v3 & 3) == 1)
    {
      finalizeCFBurstTrie(v3 & 0xFFFFFFFFFFFFFFFCLL);
      free((*(a1 + 8 * i) & 0xFFFFFFFFFFFFFFFCLL));
    }
  }
}

uint64_t CFDateComponentsGetValue(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    CFDateComponentsGetValue_cold_1();
  }

  v2 = 0x7FFFFFFFFFFFFFFFLL;
  if (a2 > 511)
  {
    if (a2 < 0x2000)
    {
      if (a2 > 2047)
      {
        if (a2 == 2048)
        {
          v3 = 128;
          return *(a1 + v3);
        }

        if (a2 == 4096)
        {
          v3 = 136;
          return *(a1 + v3);
        }
      }

      else
      {
        if (a2 == 512)
        {
          v3 = 112;
          return *(a1 + v3);
        }

        if (a2 == 1024)
        {
          v3 = 120;
          return *(a1 + v3);
        }
      }
    }

    else if (a2 < 0x8000)
    {
      if (a2 == 0x2000)
      {
        v3 = 144;
        return *(a1 + v3);
      }

      if (a2 == 0x4000)
      {
        v3 = 152;
        return *(a1 + v3);
      }
    }

    else
    {
      switch(a2)
      {
        case 0x8000:
          v3 = 160;
          return *(a1 + v3);
        case 0x10000:
          v3 = 168;
          return *(a1 + v3);
        case 0x40000000:
          v3 = 56;
          return *(a1 + v3);
      }
    }
  }

  else if (a2 <= 15)
  {
    if (a2 > 3)
    {
      if (a2 == 4)
      {
        v3 = 40;
        return *(a1 + v3);
      }

      if (a2 == 8)
      {
        v3 = 48;
        return *(a1 + v3);
      }
    }

    else
    {
      if (a2 == 0xFFFFFFFF80000000)
      {
        v3 = 64;
        return *(a1 + v3);
      }

      if (a2 == 2)
      {
        v3 = 32;
        return *(a1 + v3);
      }
    }
  }

  else if (a2 <= 63)
  {
    if (a2 == 16)
    {
      v3 = 72;
      return *(a1 + v3);
    }

    if (a2 == 32)
    {
      v3 = 80;
      return *(a1 + v3);
    }
  }

  else
  {
    switch(a2)
    {
      case 64:
        v3 = 88;
        return *(a1 + v3);
      case 128:
        v3 = 96;
        return *(a1 + v3);
      case 256:
        v3 = 104;
        return *(a1 + v3);
    }
  }

  return v2;
}

CFIndex OUTLINED_FUNCTION_8_0(CFIndex range)
{
  v4.length = range;
  v4.location = 0;

  return CFArrayGetFirstIndexOfValue(v2, v4, v1);
}

void __CFDateComponentsDeallocate(uint64_t a1)
{
  if (!a1)
  {
    __CFDateComponentsDeallocate_cold_1();
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __CFCSetMakeCompact(unint64_t *cf)
{
  v1 = atomic_load(cf + 1);
  if ((v1 & 0x70) == 0x30)
  {
    v3 = cf[3];
    if (v3)
    {
      v4 = CFGetAllocator(cf);
      v5 = __CFCreateCompactBitmap(v4, v3);
      if (v5)
      {
        v6 = v5;
        v7 = CFGetAllocator(cf);
        CFAllocatorDeallocate(v7, v3);
        v8 = atomic_load(cf + 1);
        v9 = v8;
        do
        {
          atomic_compare_exchange_strong(cf + 1, &v9, v8 & 0xFFFFFFFFFFFFFF8FLL | 0x40);
          v10 = v9 == v8;
          v8 = v9;
        }

        while (!v10);
        cf[3] = v6;
      }
    }
  }
}

BOOL OUTLINED_FUNCTION_12_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

_OWORD *__CFCreateCompactBitmap(int a1, unsigned __int8 *a2)
{
  v2 = a2;
  v3 = 0;
  v4 = 0;
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  do
  {
    v6 = *v5;
    if ((v6 - 255) <= 0xFFFFFF01)
    {
      v7 = 32;
      v8 = 1;
      while (v5[v8] == v6)
      {
        --v7;
        ++v8;
        if (v7 <= 1)
        {
          __src[v3] = v6;
          goto LABEL_9;
        }
      }
    }

    __src[v3] = v4 + 1;
    if (v4++ > 127)
    {
      return 0;
    }

LABEL_9:
    v5 += 32;
    ++v3;
  }

  while (v3 != 256);
  Typed = CFAllocatorAllocateTyped(a1, 32 * v4 + 256, 0x100004077774924uLL);
  v15 = Typed;
  if (v4 < 1)
  {
    memmove(Typed, __src, 0x100uLL);
  }

  else
  {
    v11 = 0;
    v12 = Typed + 16;
    do
    {
      v13 = __src[v11];
      *(Typed + v11) = v13;
      if (v13 && v13 != 255)
      {
        v14 = *(v2 + 1);
        *v12 = *v2;
        v12[1] = v14;
        v12 += 2;
      }

      v2 += 32;
      ++v11;
    }

    while (v11 != 256);
  }

  return v15;
}

void __CFStringSetUpFormatAndSpecBuffers(const __CFString *a1, CFIndex a2, char **a3, UniChar **a4, UniChar **a5, UniChar *a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v18 = _CFGetTSD(1);
  v19 = &__kCFAllocatorSystemDefault;
  if (v18)
  {
    LODWORD(v19) = v18;
  }

  v38 = v19;
  if (!CF_IS_OBJC(7uLL, a1))
  {
    v20 = atomic_load(&a1->info);
    v21 = atomic_load(&a1->info);
    v22 = v21 & 0x60;
    p_data = &a1->data;
    if ((v20 & 0x10) == 0)
    {
      if (v22)
      {
        v24 = *p_data;
      }

      else
      {
        v26 = atomic_load(&a1->info);
        v24 = &p_data[(v26 & 5) != 4];
      }

      *a3 = v24;
      if (v24)
      {
        v27 = atomic_load(&a1->info);
        v28 = &(*a3)[(v27 >> 2) & 1];
        *a3 = v28;
        if (v28)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_22;
    }

    if (v22)
    {
      v25 = *p_data;
    }

    else
    {
      v29 = atomic_load(&a1->info);
      v25 = &p_data[(v29 & 5) != 4];
    }

    *a4 = v25;
  }

  v28 = *a3;
  if (*a3)
  {
    goto LABEL_16;
  }

LABEL_22:
  if (*a4 || (a2 <= 400 ? (*a5 = a6) : (Typed = CFAllocatorAllocateTyped(v38, 2 * a2, 0x1000040BDFB0063uLL), *a5 = Typed, Typed == a6) || __CFOASafe != 1 ? (a6 = Typed) : (__CFSetLastAllocationEventName(), a6 = *a5), v40.location = 0, v40.length = a2, CFStringGetCharacters(a1, v40, a6), *a4 = *a5, (v28 = *a3) == 0))
  {
    if (a2 >= 1)
    {
      v30 = 0;
      v32 = *a4;
      do
      {
        v33 = *v32++;
        if (v33 == 37)
        {
          ++v30;
        }

        --a2;
      }

      while (a2);
      goto LABEL_28;
    }

LABEL_37:
    *a7 = a8;
    *a9 = a10;
    return;
  }

LABEL_16:
  if (a2 < 1)
  {
    goto LABEL_37;
  }

  v30 = 0;
  do
  {
    v31 = *v28++;
    if (v31 == 37)
    {
      ++v30;
    }

    --a2;
  }

  while (a2);
LABEL_28:
  if (v30 < 31)
  {
    goto LABEL_37;
  }

  v34 = (2 * v30) | 1u;
  v35 = CFAllocatorAllocateTyped(v38, 32 * v34, 0x10000408E5DAE1CuLL);
  *a7 = v35;
  if (v35 != a8 && __CFOASafe == 1)
  {
    __CFSetLastAllocationEventName();
  }

  v36 = CFAllocatorAllocateTyped(v38, 8 * v34, 0x6004044C4A2DFuLL);
  *a9 = v36;
  if (v36 != a10 && __CFOASafe == 1)
  {

    __CFSetLastAllocationEventName();
  }
}

BOOL __CFStringValidateFormatSpecBuffers(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a2 >= 1)
  {
    v6 = a4;
    v8 = 0;
    v9 = a2;
    v10 = (a1 + 26);
    v11 = 1;
    v12 = a2;
    while (1)
    {
      v13 = *v10;
      v14 = *v10;
      if (v13 < 0)
      {
        LOBYTE(v13) = -1;
      }

      v15 = v14 == 254;
      if (v14 == 254)
      {
        v16 = a5 + 1;
      }

      else
      {
        v16 = a5;
      }

      if (v15)
      {
        LOBYTE(v13) = a5;
      }

      v17 = *(v10 - 1);
      v18 = *(v10 - 1);
      if (v17 < 0)
      {
        LOBYTE(v17) = -1;
      }

      v19 = v18 == 254;
      if (v18 == 254)
      {
        v20 = v16 + 1;
      }

      else
      {
        v20 = v16;
      }

      if (v19)
      {
        v21 = v16;
      }

      else
      {
        v21 = v17;
      }

      v22 = *(v10 - 2);
      if (v22 == 255)
      {
        a5 = v20 + 1;
      }

      else
      {
        a5 = v20;
      }

      if (v22 == 255)
      {
        v23 = v20;
      }

      else
      {
        v23 = *(v10 - 2);
      }

      v28 = 0;
      if (v13 != 0xFF && (!__CFStringFindTypeAndSizeForArgumentIndex(a3, v6, v13, &v28 + 1, &v28) || BYTE2(v28) != 33 || v28 > 4u) || v21 != -1 && (!__CFStringFindTypeAndSizeForArgumentIndex(a3, v6, v21, &v28 + 1, &v28) || BYTE2(v28) != 33 || v28 > 4u) || !__CFStringFindTypeAndSizeForArgumentIndex(a3, v6, v23, &v28 + 1, &v28))
      {
        return v8;
      }

      v24 = *(v10 - 24);
      if (v24 != BYTE2(v28))
      {
        if (*(v10 - 24) > 0x26u)
        {
          if ((v24 - 39) < 2)
          {
            if (BYTE2(v28) > 0x28u || ((1 << SBYTE2(v28)) & 0x18800000000) == 0)
            {
              return v8;
            }

            goto LABEL_47;
          }

          if (v24 != 41)
          {
            return v8;
          }

LABEL_44:
          if (BYTE2(v28) != 33)
          {
            return v8;
          }

          goto LABEL_47;
        }

        if (v24 != 35)
        {
          if (v24 != 38 || BYTE2(v28) != 35)
          {
            return v8;
          }

          goto LABEL_47;
        }

        if (BYTE2(v28) - 37 >= 4)
        {
          goto LABEL_44;
        }
      }

LABEL_47:
      v25 = *(v10 - 26);
      v26 = v28;
      if (v25 <= 4)
      {
        v25 = 4;
      }

      if (v28 <= 4u)
      {
        v26 = 4;
      }

      if (v25 == v26)
      {
        v8 = v11++ >= v9;
        v10 += 32;
        if (--v12)
        {
          continue;
        }
      }

      return v8;
    }
  }

  return 1;
}

CFMutableDictionaryRef _CFPreferencesCopyMultipleWithContainer(uint64_t a1, __CFString *a2, __CFString *a3, const void *a4, __CFString *a5)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v10 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFPreferencesCopyMultipleWithContainer_cold_1();
    }

    v10 = [qword_1ED40BE18 copyPrefs];
  }

  v11 = [(_CFXPreferences *)v10 copyValuesForKeys:a1 identifier:a2 user:a3 host:a4 container:a5];

  return v11;
}

void CFXNotificationRegisteredObserverSetNotifyToken(uint64_t a1, uint64_t a2, int a3)
{
  os_unfair_lock_lock((a1 + 16));
  if (*(a1 + 156) > a2)
  {
    v6 = (*(a1 + 144) + 56 * a2);
    if (v6[10] == HIDWORD(a2))
    {
      v6[11] |= 0x4000u;
      v6[8] = a3;
    }
  }

  os_unfair_lock_unlock((a1 + 16));
}

uint64_t _CFOSLog(uint64_t a1, uint64_t a2)
{
  if (_CFOSLog_onceToken != -1)
  {
    _CFOSLog_cold_1();
  }

  return _CFOSLog_logger;
}

char *_RemoveSubstringsIfPresent(char *__s1, char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  if (!*a2)
  {
    return __s1;
  }

  v3 = a2;
  v4 = __s1;
  v5 = MEMORY[0x1E69E9830];
  do
  {
    v6 = 0;
    v7 = 0;
    v8 = v3 - 1;
    while ((v2 & 0x80) == 0)
    {
      if ((*(v5 + 4 * v2 + 60) & 0x800) == 0)
      {
        goto LABEL_9;
      }

LABEL_8:
      __s2[v7] = v2;
      v9 = &v3[v7++];
      v2 = v9[1];
      ++v8;
      ++v6;
    }

    if (__maskrune(v2, 0x800uLL))
    {
      goto LABEL_8;
    }

LABEL_9:
    v3 = v8;
    do
    {
      v10 = v3[1];
      if ((v10 & 0x80000000) != 0)
      {
        __s1 = __maskrune(v10, 0x4000uLL);
      }

      else
      {
        __s1 = (*(v5 + 4 * v10 + 60) & 0x4000);
      }

      ++v3;
    }

    while (__s1);
    if (v7)
    {
      __s2[v7] = 0;
      __s1 = strstr(v4, __s2);
      if (__s1)
      {
        do
        {
          v11 = __s1[v6];
          *__s1++ = v11;
        }

        while (v11);
      }
    }

    v2 = *v3;
  }

  while (*v3);
  return __s1;
}

void deallocatePurgeable(void *a1, uint64_t a2)
{
  if (*(a2 + 25) == 1)
  {

    free(a1);
  }

  else
  {
    v4 = *MEMORY[0x1E69E9A60];
    BytePtr = CFDataGetBytePtr(*(a2 + 8));
    v6 = mach_vm_deallocate(v4, BytePtr, *(a2 + 16));
    if (v6)
    {
      v8 = v6;
      v9 = _CFPrefsDaemonLog(v6, v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        deallocatePurgeable_cold_1(v8, v9);
      }
    }
  }
}

uint64_t _foundation_swift_nsurl_feature_enabled()
{
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    _foundation_swift_nsurl_feature_enabled_cold_1();
  }

  return _foundation_swift_nsurl_feature_enabled_featureEnabled;
}

void __CFAllocatorDeallocate(void *ptr)
{
  v2 = ptr[16];
  v3 = ptr[20];
  if (v2 == 939)
  {
    v4 = ptr[24];
    v5 = ptr[18];
    if (v4)
    {
      v6 = ptr[20];
      v4(ptr, v5);
      v3 = v6;
    }

    if (v3)
    {

      v3(v5);
    }
  }

  else
  {
    if (v3)
    {
      v3(ptr[18]);
    }

    CFAllocatorDeallocate(v2, ptr);
  }
}

uint64_t **parseFrameArgumentInfo(unsigned __int8 **a1, uint64_t a2, unsigned int a3, unint64_t a4)
{
  v177[1] = *MEMORY[0x1E69E9840];
  if (a4 >= 0x401)
  {
    v150 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"+[NSMethodSignature signatureWithObjCTypes:]: exceeded maximum nesting depth %d", 1024);
    v151 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v150), 0];
    objc_exception_throw(v151);
  }

  v4 = a1;
  v174 = 0;
  v5 = __NSGetSizeAndAlignment(*a1, &v174, 0, *a1, 0, 0, 1uLL);
  v6 = v5 - *v4;
  v7 = malloc_type_calloc(1uLL, v6 + 42, 0x1020040C2EE21EDuLL);
  v8 = v7;
  if (!v7)
  {
    v152 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"+[NSMethodSignature signatureWithObjCTypes:]: memory error - offset: %lu", a2);
    v153 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v152), 0];
    objc_exception_throw(v153);
  }

  *(v7 + 4) = v174;
  *(v7 + 5) = a2;
  v9 = *v4;
  v10 = v7 + 37;
  v170 = v7 + 37;
  if (*v4 < v5)
  {
    v165 = v4;
    v163 = &v10[v6];
    v11 = &v10[v6 + 2];
    if (a3)
    {
      v12 = 2048;
    }

    else
    {
      v12 = 6144;
    }

    v164 = v12;
    v160 = @"+[NSMethodSignature signatureWithObjCTypes:]: malformed extended block spec '%s'; exceeded maximum nesting depth %d";
    format = @"+[NSMethodSignature signatureWithObjCTypes:]: malformed extended block spec '%s'";
    v162 = @"+[NSMethodSignature signatureWithObjCTypes:]: malformed array spec '%s'";
    v166 = v5;
LABEL_8:
    v13 = v9 + 1;
    v14 = *v9;
    v173 = v9 + 1;
    switch(v14)
    {
      case '#':
        *(v8 + 17) |= 0x2000u;
        v27 = 35;
        *(v8 + 36) = 35;
        v26 = v170;
        if (v170 >= v11)
        {
          parseFrameArgumentInfo_cold_6(@"NSInvalidArgumentException");
        }

        goto LABEL_74;
      case '*':
        *(v8 + 17) |= 0x4000u;
        v27 = 42;
        *(v8 + 36) = 42;
        v26 = v170;
        if (v170 >= v11)
        {
          parseFrameArgumentInfo_cold_5(@"NSInvalidArgumentException");
        }

        goto LABEL_74;
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
        goto LABEL_75;
      case ':':
      case 'B':
      case 'v':
        *(v8 + 36) = v14;
        v15 = v170;
        if (v170 >= v11)
        {
          parseFrameArgumentInfo_cold_7(@"NSInvalidArgumentException");
        }

        goto LABEL_16;
      case '@':
        *(v8 + 17) |= 0x2000u;
        *(v8 + 36) = 64;
        v35 = v170;
        if (v170 >= v11)
        {
          goto LABEL_237;
        }

        *v170 = 64;
        v36 = ++v170;
        v37 = *v13;
        if (v37 == 34)
        {
          v93 = v9 + 2;
          v173 = v9 + 2;
          if (v36 < v11)
          {
            v94 = v35 + 2;
            v170 = v35 + 2;
            v35[1] = 34;
            if (a4 == 1024)
            {
              v160 = @"+[NSMethodSignature signatureWithObjCTypes:]: malformed extended object spec '%s'; exceeded maximum nesting depth %d";
              v38 = v9 + 1;
              goto LABEL_271;
            }

            v95 = *v93;
            if (!*v93)
            {
LABEL_258:
              format = @"+[NSMethodSignature signatureWithObjCTypes:]: malformed extended object spec '%s'";
              v38 = v9 + 1;
LABEL_259:
              v149 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, format, v38, v158, v159);
LABEL_260:
              v143 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v149), 0];
LABEL_238:
              objc_exception_throw(v143);
            }

            v96 = 0;
            v97 = *v93;
            v5 = v166;
            while (v97 != 34)
            {
              v97 = v9[v96++ + 3];
              if (!v97)
              {
                goto LABEL_258;
              }
            }

            if (!v96)
            {
              goto LABEL_75;
            }

            v98 = &v9[v96 + 2];
            if (v95 == 60)
            {
              v99 = 0;
            }

            else
            {
              v119 = v9 + 2;
              if ((v96 + 2) >= 3)
              {
                v120 = v9 + 3;
                do
                {
                  if (v94 >= v11)
                  {
                    goto LABEL_237;
                  }

                  *v94++ = v95;
                  v121 = v120 >= v98;
                  v122 = *v120++;
                  v95 = v122;
                }

                while (!v121 && v95 != 60);
                v170 = v94;
                v119 = v120 - 1;
              }

              v123 = malloc_type_calloc(1uLL, v119 - v93 + 40, 0x1020040C2EE21EDuLL);
              v99 = v123;
              if (!v123)
              {
LABEL_263:
                v149 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"+[NSMethodSignature signatureWithObjCTypes:]: memory error - offset: %lu", a2, v158, v159);
                goto LABEL_260;
              }

              *(v123 + 17) |= 0x2000u;
              strncpy(v123 + 37, v9 + 2, v119 - v93)[v119 - v93] = 0;
              *v8 = v99;
              v93 = v119;
            }

            if (v98 == v93)
            {
              v93 = &v9[v96 + 2];
            }

            else
            {
              if (v9 - v93 + v96 + 2 >= 3 && *v93 == 60)
              {
                v124 = v170;
                while (v124 < v11)
                {
                  v125 = v93 + 1;
                  *v124 = 60;
                  v126 = (v124 + 1);
                  v172 = v126;
                  v127 = v93 + 1;
                  if ((v93 + 1) < v98)
                  {
                    v128 = *v125;
                    v127 = v93 + 1;
                    if (v128 != 62)
                    {
                      v129 = v93 + 2;
                      do
                      {
                        if (v126 >= v11)
                        {
                          goto LABEL_237;
                        }

                        v172 = v126 + 1;
                        *v126 = v128;
                        v121 = v129 >= v98;
                        v130 = *v129++;
                        v128 = v130;
                        if (v121)
                        {
                          break;
                        }

                        ++v126;
                      }

                      while (v128 != 62);
                      v127 = v129 - 1;
                    }
                  }

                  v131 = malloc_type_calloc(1uLL, v127 - v125 + 40, 0x1020040C2EE21EDuLL);
                  v132 = v131;
                  if (!v131)
                  {
                    goto LABEL_263;
                  }

                  *(v131 + 17) &= ~0x2000u;
                  strncpy(v131 + 37, v93 + 1, v127 - v125)[v127 - v125] = 0;
                  v133 = (v99 + 1);
                  if (!v99)
                  {
                    v133 = v8;
                  }

                  *v133 = v132;
                  if (v172 >= v11)
                  {
                    goto LABEL_237;
                  }

                  *v172 = *v127;
                  v124 = (v172 + 1);
                  v170 = (v172 + 1);
                  v93 = v127 + 1;
                  if (&v9[v96] - v127 + 1 >= 3)
                  {
                    v99 = v132;
                    if (v127[1] == 60)
                    {
                      continue;
                    }
                  }

                  goto LABEL_212;
                }

                goto LABEL_237;
              }

LABEL_212:
              if (v93 > v98)
              {
LABEL_218:
                v173 = &v9[v96 + 3];
                v5 = v166;
                goto LABEL_75;
              }
            }

            v134 = v170;
            while (v134 < v11)
            {
              v135 = *v93++;
              *v134++ = v135;
              v170 = v134;
              if (v93 > v98)
              {
                goto LABEL_218;
              }
            }
          }
        }

        else
        {
          v5 = v166;
          if (v37 != 63)
          {
            goto LABEL_75;
          }

          *(v8 + 17) |= 0x8000u;
          v38 = v9 + 2;
          v173 = v9 + 2;
          if (v36 < v11)
          {
            v170 = v35 + 2;
            v35[1] = *v13;
            v5 = v166;
            if (*v38 != 60)
            {
              goto LABEL_75;
            }

            v39 = v9 + 3;
            v173 = v9 + 3;
            if (v35 < v163)
            {
              v40 = v35 + 3;
              v35[2] = 60;
              if (a4 != 1024)
              {
                v41 = *v39;
                if (*v39)
                {
                  v42 = 0;
                  v43 = v9 + 4;
                  v44 = 3;
                  v5 = v166;
                  while (1)
                  {
                    if (v41 == 62)
                    {
                      if (!v42)
                      {
                        v102 = v40;
                        if (v44 >= 4)
                        {
                          v103 = 0;
                          v104 = 0;
                          v102 = v40;
                          do
                          {
                            v176 = 0;
                            v177[0] = 0;
                            __NSGetSizeAndAlignment(v39, v177, &v176, v39, 1, 0, 1uLL);
                            v105 = v176;
                            if (!v176)
                            {
                              v176 = 1;
                              v105 = 1;
                            }

                            v106 = (v105 + v103 - 1) / v105 * v105;
                            v107 = parseFrameArgumentInfo(&v173, v106 + a2, 1u, a4 + 2);
                            v114 = v107;
                            if (!v107)
                            {
                              v138 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"+[NSMethodSignature signatureWithObjCTypes:]: unsupported type encoding spec '%s'", v173);
                              v139 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v138), 0];
                              objc_exception_throw(v139);
                            }

                            v115 = v177[0];
                            if (v177[0] != *(v107 + 4))
                            {
                              v158 = v107 + 37;
                              v159 = *(v107 + 4);
                              CFLog(4, @"*** warning: +[NSMethodSignature signatureWithObjCTypes:]: subInfo size (%lu) for '%s' not same as computed size (%d)", v108, v109, v110, v111, v112, v113, v177[0]);
                              v115 = *(v114 + 4);
                            }

                            v116 = *(v114 + 37);
                            if (v116)
                            {
                              v117 = v114 + 38;
                              do
                              {
                                if (v102 >= v11)
                                {
                                  objc_exception_throw(+[NSException exceptionWithName:reason:userInfo:](NSException, "exceptionWithName:reason:userInfo:", @"NSInvalidArgumentException", @"+[NSMethodSignature signatureWithObjCTypes:]: malformed struct spec", 0));
                                }

                                *v102++ = v116;
                                v118 = *v117++;
                                v116 = v118;
                              }

                              while (v118);
                            }

                            if (!*v8)
                            {
                              *v8 = v114;
                            }

                            if (v104)
                            {
                              v104[1] = v114;
                            }

                            v103 = v115 + v106;
                            v39 = v173;
                            v104 = v114;
                          }

                          while (v173 < v43 - 1);
                        }

                        if (v102 >= v11)
                        {
                          objc_exception_throw(+[NSException exceptionWithName:reason:userInfo:](NSException, "exceptionWithName:reason:userInfo:", @"NSInvalidArgumentException", @"+[NSMethodSignature signatureWithObjCTypes:]: malformed struct spec", 0));
                        }

                        v170 = v102 + 1;
                        *v102 = 62;
                        v173 = v43;
                        goto LABEL_75;
                      }

                      v45 = -1;
                    }

                    else
                    {
                      v45 = v41 == 60;
                    }

                    v42 += v45;
                    ++v44;
                    v46 = *v43++;
                    v41 = v46;
                    if (!v46)
                    {
                      goto LABEL_259;
                    }
                  }
                }

                goto LABEL_259;
              }

LABEL_271:
              v149 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, v160, v38, 1024, v159);
              goto LABEL_260;
            }
          }
        }

LABEL_237:
        v143 = +[NSException exceptionWithName:reason:userInfo:](NSException, "exceptionWithName:reason:userInfo:", @"NSInvalidArgumentException", @"+[NSMethodSignature signatureWithObjCTypes:]: malformed struct spec", 0);
        goto LABEL_238;
      case 'C':
      case 'I':
      case 'L':
      case 'Q':
      case 'S':
      case 'T':
        *(v8 + 36) = v14;
        v15 = v170;
        if (v170 >= v11)
        {
          parseFrameArgumentInfo_cold_9(@"NSInvalidArgumentException");
        }

        goto LABEL_16;
      case 'D':
      case 'd':
      case 'f':
        *(v8 + 17) |= 0x200u;
        *(v8 + 36) = v14;
        v15 = v170;
        if (v170 >= v11)
        {
          parseFrameArgumentInfo_cold_8(@"NSInvalidArgumentException");
        }

        goto LABEL_16;
      case 'N':
        *(v8 + 17) |= 3u;
        v26 = v170;
        if (v170 >= v11)
        {
          parseFrameArgumentInfo_cold_16(@"NSInvalidArgumentException");
        }

        v27 = 78;
        goto LABEL_74;
      case 'O':
        *(v8 + 17) |= 4u;
        v26 = v170;
        if (v170 >= v11)
        {
          parseFrameArgumentInfo_cold_14(@"NSInvalidArgumentException");
        }

        v27 = 79;
        goto LABEL_74;
      case 'R':
        *(v8 + 17) |= 8u;
        v26 = v170;
        if (v170 >= v11)
        {
          parseFrameArgumentInfo_cold_13(@"NSInvalidArgumentException");
        }

        v27 = 82;
        goto LABEL_74;
      case 'V':
        *(v8 + 17) |= 0x20u;
        v26 = v170;
        if (v170 >= v11)
        {
          parseFrameArgumentInfo_cold_11(@"NSInvalidArgumentException");
        }

        v27 = 86;
        goto LABEL_74;
      case '[':
        *(v8 + 36) = 91;
        if (v170 >= v11)
        {
          parseFrameArgumentInfo_cold_3(@"NSInvalidArgumentException");
        }

        *v170 = 91;
        v19 = v170 + 1;
        *(v8 + 17) |= v164;
        if (a4 == 1024)
        {
          v146 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"+[NSMethodSignature signatureWithObjCTypes:]: malformed array spec '%s'; exceeded maximum nesting depth %d", v9, 1024);
          goto LABEL_256;
        }

        v20 = *v13;
        if (!*v13)
        {
          goto LABEL_255;
        }

        v21 = 0;
        v22 = v9 + 2;
        v23 = *v13;
        break;
      case '^':
        *(v8 + 36) = 94;
        v16 = v170;
        if (v170 >= v11)
        {
          parseFrameArgumentInfo_cold_1(@"NSInvalidArgumentException");
        }

        *v170 = 94;
        v17 = v170 + 1;
        v18 = *v13;
        if (v18 == 118 || v18 == 63)
        {
          v173 = v9 + 2;
          if (v17 >= v11)
          {
            parseFrameArgumentInfo_cold_2(@"NSInvalidArgumentException");
          }

          v170 += 2;
          v16[1] = v18;
        }

        else
        {
          v89 = parseFrameArgumentInfo(&v173, 0, a3, a4 + 1);
          if (!v89)
          {
            v156 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"+[NSMethodSignature signatureWithObjCTypes:]: unsupported type encoding spec '%s'", *v165);
            v157 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v156), 0];
            objc_exception_throw(v157);
          }

          v90 = *(v89 + 37);
          if (v90)
          {
            v91 = v89 + 38;
            do
            {
              if (v17 >= v11)
              {
                objc_exception_throw(+[NSException exceptionWithName:reason:userInfo:](NSException, "exceptionWithName:reason:userInfo:", @"NSInvalidArgumentException", @"+[NSMethodSignature signatureWithObjCTypes:]: malformed struct spec", 0));
              }

              *v17++ = v90;
              v92 = *v91++;
              v90 = v92;
            }

            while (v92);
          }

          v170 = v17;
          if (*(v89 + 4))
          {
            *v8 = v89;
            *(v8 + 17) |= 0x1000u;
          }

          else
          {
            __NSMethodFrameArgInfoDestroy(v89);
          }
        }

        goto LABEL_75;
      case 'c':
      case 'i':
      case 'l':
      case 'q':
      case 's':
      case 't':
        *(v8 + 17) |= 0x100u;
        *(v8 + 36) = v14;
        v15 = v170;
        if (v170 >= v11)
        {
          parseFrameArgumentInfo_cold_10(@"NSInvalidArgumentException");
        }

LABEL_16:
        *v15 = v14;
        v170 = v15 + 1;
        goto LABEL_75;
      case 'n':
        *(v8 + 17) |= 1u;
        v26 = v170;
        if (v170 >= v11)
        {
          parseFrameArgumentInfo_cold_17(@"NSInvalidArgumentException");
        }

        v27 = 110;
        goto LABEL_74;
      case 'o':
        *(v8 + 17) |= 2u;
        v26 = v170;
        if (v170 >= v11)
        {
          parseFrameArgumentInfo_cold_15(@"NSInvalidArgumentException");
        }

        v27 = 111;
        goto LABEL_74;
      case 'r':
        *(v8 + 17) |= 0x10u;
        v26 = v170;
        if (v170 >= v11)
        {
          parseFrameArgumentInfo_cold_12(@"NSInvalidArgumentException");
        }

        v27 = 114;
LABEL_74:
        *v26 = v27;
        v170 = v26 + 1;
        goto LABEL_75;
      case '{':
        *(v8 + 36) = 123;
        if (v170 >= v11)
        {
          parseFrameArgumentInfo_cold_4(@"NSInvalidArgumentException");
        }

        *v170 = 123;
        v28 = v170 + 1;
        *(v8 + 17) |= 0x400u;
        if (a4 == 1024)
        {
          v144 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"+[NSMethodSignature signatureWithObjCTypes:]: malformed struct spec '%s'; exceeded maximum nesting depth %d", v9, 1024);
        }

        else
        {
          v29 = *v13;
          if (*v13)
          {
            v30 = 0;
            v31 = v9 + 2;
            v32 = *v13;
            do
            {
              if (v32 == 125)
              {
                if (!v30)
                {
                  v65 = (v31 - 1);
                  for (i = 1; ; v29 = v9[i])
                  {
                    if (v29 > 60)
                    {
                      if (v29 == 61)
                      {
                        v68 = &v9[i];
                        if (i >= 2)
                        {
                          v100 = v9 + 1;
                          while (1)
                          {
                            v13 = v100 + 1;
                            if (v28 >= v11)
                            {
                              break;
                            }

                            *v28++ = *v100++;
                            if (v13 >= v68)
                            {
                              goto LABEL_111;
                            }
                          }

                          v173 = v100 + 1;
LABEL_234:
                          v142 = +[NSException exceptionWithName:reason:userInfo:](NSException, "exceptionWithName:reason:userInfo:", @"NSInvalidArgumentException", @"+[NSMethodSignature signatureWithObjCTypes:]: malformed struct spec", 0);
LABEL_235:
                          objc_exception_throw(v142);
                        }

LABEL_111:
                        v173 = v13;
                        if (*v68 != 61)
                        {
                          if (v28 < v11)
                          {
                            *v28 = 125;
                            v170 = v28 + 1;
                            v173 = v31;
                            v88 = malloc_type_calloc(1uLL, 0x29uLL, 0x1020040C2EE21EDuLL);
                            v88[37] = 0;
                            *(v88 + 5) = a2;
                            *v8 = v88;
                            if (*(v8 + 4))
                            {
                              goto LABEL_75;
                            }

                            goto LABEL_165;
                          }

                          goto LABEL_234;
                        }

                        if (v28 >= v11)
                        {
                          objc_exception_throw(+[NSException exceptionWithName:reason:userInfo:](NSException, "exceptionWithName:reason:userInfo:", @"NSInvalidArgumentException", @"+[NSMethodSignature signatureWithObjCTypes:]: malformed struct spec", 0));
                        }

                        *v28 = 61;
                        v69 = v28 + 1;
                        v70 = v68 + 1;
                        v173 = v68 + 1;
                        if ((v68 + 1) >= v65)
                        {
                          v73 = 0;
                          v72 = 0;
LABEL_159:
                          if (v69 >= v11)
                          {
                            objc_exception_throw(+[NSException exceptionWithName:reason:userInfo:](NSException, "exceptionWithName:reason:userInfo:", @"NSInvalidArgumentException", @"+[NSMethodSignature signatureWithObjCTypes:]: malformed struct spec", 0));
                          }

                          v170 = v69 + 1;
                          *v69 = 125;
                          v173 = v31;
                          if (v73 <= 1)
                          {
                            v101 = 1;
                          }

                          else
                          {
                            v101 = v73;
                          }

                          v67 = (v72 + v101 - 1) / v101 * v101;
                          goto LABEL_164;
                        }

                        v71 = 0;
                        v72 = 0;
                        v73 = 0;
                        while (2)
                        {
                          v176 = 0;
                          v177[0] = 0;
                          __NSGetSizeAndAlignment(v70, v177, &v176, v70, 1, 0, 1uLL);
                          v74 = v176;
                          if (v73 <= v176)
                          {
                            v73 = v176;
                          }

                          if (!v176)
                          {
                            v176 = 1;
                            v74 = 1;
                          }

                          v75 = (v74 + v72 - 1) / v74 * v74;
                          v76 = parseFrameArgumentInfo(&v173, v75 + a2, 1u, a4 + 2);
                          v83 = v76;
                          if (!v76)
                          {
                            v136 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"+[NSMethodSignature signatureWithObjCTypes:]: unsupported type encoding spec '%s'", v173);
                            v137 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v136), 0];
                            objc_exception_throw(v137);
                          }

                          v84 = v177[0];
                          if (v177[0] != *(v76 + 4))
                          {
                            v158 = v76 + 37;
                            v159 = *(v76 + 4);
                            CFLog(4, @"*** warning: +[NSMethodSignature signatureWithObjCTypes:]: subInfo size (%lu) for '%s' not same as computed size (%d)", v77, v78, v79, v80, v81, v82, v177[0]);
                            v84 = *(v83 + 4);
                          }

                          v85 = *(v83 + 37);
                          if (v85)
                          {
                            v86 = v83 + 38;
                            do
                            {
                              if (v69 >= v11)
                              {
                                objc_exception_throw(+[NSException exceptionWithName:reason:userInfo:](NSException, "exceptionWithName:reason:userInfo:", @"NSInvalidArgumentException", @"+[NSMethodSignature signatureWithObjCTypes:]: malformed struct spec", 0));
                              }

                              *v69++ = v85;
                              v87 = *v86++;
                              v85 = v87;
                            }

                            while (v87);
                          }

                          if (*v8)
                          {
                            if (v71)
                            {
                              goto LABEL_128;
                            }
                          }

                          else
                          {
                            *v8 = v83;
                            if (v71)
                            {
LABEL_128:
                              v71[1] = v83;
                            }
                          }

                          v72 = v84 + v75;
                          v70 = v173;
                          v71 = v83;
                          if (v173 >= v65)
                          {
                            goto LABEL_159;
                          }

                          continue;
                        }
                      }

                      if (v29 == 125)
                      {
                        goto LABEL_110;
                      }
                    }

                    else if (!v29 || v29 == 41)
                    {
LABEL_110:
                      v68 = v9 + 1;
                      goto LABEL_111;
                    }

                    ++i;
                  }
                }

                v33 = -1;
              }

              else
              {
                v33 = v32 == 123;
              }

              v30 += v33;
              v34 = *v31++;
              v32 = v34;
            }

            while (v34);
          }

          v144 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"+[NSMethodSignature signatureWithObjCTypes:]: malformed struct spec '%s'", v9, v158, v159);
        }

        v142 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v144), 0];
        goto LABEL_235;
      default:
        __NSMethodFrameArgInfoDestroy(v8);
        v154 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"+[NSMethodSignature signatureWithObjCTypes:]: unsupported type encoding spec '%c' in '%s'", v14, *v165);
        v155 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v154), 0];
        objc_exception_throw(v155);
    }

    while (1)
    {
      if (v23 == 93)
      {
        if (!v21)
        {
          if ((v20 - 48) > 9)
          {
            v173 = v9 + 1;
LABEL_265:
            v145 = @"+[NSMethodSignature signatureWithObjCTypes:]: array too small or too large in spec '%s'";
            goto LABEL_254;
          }

          v47 = 0;
          do
          {
            if (v47 >= 0x19999999)
            {
              v173 = v13;
              v145 = @"+[NSMethodSignature signatureWithObjCTypes:]: array too large in spec '%s'";
LABEL_254:
              v162 = v145;
LABEL_255:
              v146 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, v162, v9, v158, v159);
LABEL_256:
              v141 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v146), 0];
              goto LABEL_230;
            }

            if (v19 >= v11)
            {
              v173 = v13;
              goto LABEL_229;
            }

            v47 = 10 * v47 + (v20 - 48);
            *v19++ = v20;
            v48 = *++v13;
            LOBYTE(v20) = v48;
          }

          while ((v48 - 48) < 0xA);
          v171 = v19;
          v173 = v13;
          if (v47 - 65537 < 0xFFFFFFFFFFFF0000)
          {
            goto LABEL_265;
          }

          v176 = 0;
          v177[0] = 0;
          __NSGetSizeAndAlignment(v13, v177, &v176, v13, 1, 0, 1uLL);
          if (!v176)
          {
            v176 = 1;
          }

          v49 = 0;
          v50 = 0;
          v51 = v171;
          while (2)
          {
            v52 = (v176 + v49 - 1) / v176 * v176;
            v175 = v13;
            v53 = parseFrameArgumentInfo(&v175, v52 + a2, a3, a4 + 2);
            v60 = v53;
            if (!v53)
            {
              v147 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"+[NSMethodSignature signatureWithObjCTypes:]: unsupported type encoding spec '%s'", v9);
              v148 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v147), 0];
              objc_exception_throw(v148);
            }

            v61 = v177[0];
            if (v177[0] != *(v53 + 4))
            {
              v158 = v53 + 37;
              v159 = *(v53 + 4);
              CFLog(4, @"*** warning: +[NSMethodSignature signatureWithObjCTypes:]: subInfo size (%lu) for '%s' not same as computed size (%d)", v54, v55, v56, v57, v58, v59, v177[0]);
              v61 = *(v60 + 4);
            }

            if (*v8)
            {
              if (v50)
              {
                goto LABEL_91;
              }
            }

            else
            {
              v62 = *(v60 + 37);
              if (v62)
              {
                v63 = v60 + 38;
                while (v51 < v11)
                {
                  *v51++ = v62;
                  v64 = *v63++;
                  v62 = v64;
                  if (!v64)
                  {
                    goto LABEL_98;
                  }
                }

LABEL_229:
                v141 = +[NSException exceptionWithName:reason:userInfo:](NSException, "exceptionWithName:reason:userInfo:", @"NSInvalidArgumentException", @"+[NSMethodSignature signatureWithObjCTypes:]: malformed struct spec", 0);
LABEL_230:
                objc_exception_throw(v141);
              }

LABEL_98:
              *v8 = v60;
              if (v50)
              {
LABEL_91:
                v50[1] = v60;
              }
            }

            v49 = v61 + v52;
            v50 = v60;
            if (--v47)
            {
              continue;
            }

            break;
          }

          if (v51 >= v11)
          {
            goto LABEL_229;
          }

          v170 = v51 + 1;
          *v51 = 93;
          v173 = v22;
          v67 = (v176 + v49 - 1) / v176 * v176;
LABEL_164:
          *(v8 + 4) = v67;
          v5 = v166;
          if (v67)
          {
            goto LABEL_75;
          }

LABEL_165:
          if (*v8)
          {
            __NSMethodFrameArgInfoDestroy(*v8);
            *v8 = 0;
          }

LABEL_75:
          v9 = v173;
          if (v173 >= v5)
          {
            v10 = v170;
            v4 = v165;
            break;
          }

          goto LABEL_8;
        }

        v24 = -1;
      }

      else
      {
        v24 = v23 == 91;
      }

      v21 += v24;
      v25 = *v22++;
      v23 = v25;
      if (!v25)
      {
        goto LABEL_255;
      }
    }
  }

  *v10 = 0;
  *v4 = v5;
  if (!*(v8 + 36))
  {
    __NSMethodFrameArgInfoDestroy(v8);
    return 0;
  }

  return v8;
}

void sub_18316B880(_Unwind_Exception *a1, int a2)
{
  objc_end_catch();
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    __NSMethodFrameArgInfoDestroy(v2);
    objc_exception_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_18316B9D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  sub_18316B9A4(a1);
}

unint64_t computeReturnFrameExtent(unsigned __int8 **a1, uint64_t a2)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = *(a2 + 16);
  if (!v5)
  {
    *a2 = xmmword_1834466E0;
    v5 = 224;
    *(a2 + 16) = 224;
  }

  v6 = v4[36];
  v7 = (v6 - 35);
  if (v7 <= 0x3B)
  {
    if (((1 << (v6 - 35)) & 0x8034241A0800081) != 0)
    {
LABEL_8:
      v9 = *a2;
      v10 = *(v4 + 4);
      if ((*a2 + v10) > 0x40)
      {
        *a2 = 72;
        v35[0] = 0;
        __NSGetSizeAndAlignment(v4 + 37, 0, v35, 0, 1, 0, 1uLL);
        v12 = v35[0];
        if (v35[0] <= 1)
        {
          v12 = 1;
        }

        v9 = (v5 + v12 - 225) / v12 * v12 + 224;
        v10 = *(v4 + 4);
        v5 = v9 + v10;
        *(a2 + 16) = v9 + v10;
        LODWORD(v11) = v10;
      }

      else
      {
        v11 = ((v10 - 1) & 0xFFFFFFF8) + 8;
        *a2 = v9 + v11;
      }

      *(v4 + 6) = v11;
      *(v4 + 7) = v9;
      v13 = v10 - v11;
LABEL_14:
      v4[33] = v13;
      return (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    if (v7 == 33)
    {
LABEL_17:
      v15 = *(a2 + 8);
      if (v15 > 0xC0)
      {
        *a2 = 72;
        v35[0] = 0;
        __NSGetSizeAndAlignment(v4 + 37, 0, v35, 0, 1, 0, 1uLL);
        v20 = v35[0];
        if (v35[0] <= 1)
        {
          v20 = 1;
        }

        v15 = (v5 + v20 - 225) / v20 * v20 + 224;
        v16 = *(v4 + 4);
        v5 = v15 + v16;
        *(a2 + 16) = v15 + v16;
        v17 = v16;
      }

      else
      {
        *(a2 + 8) = v15 + 16;
        LODWORD(v16) = *(v4 + 4);
        v17 = 16;
      }

      *(v4 + 6) = v17;
      *(v4 + 7) = v15;
      v13 = v16 - v17;
      goto LABEL_14;
    }
  }

  v8 = v6 - 99;
  if (v8 <= 0x18)
  {
    if (((1 << v8) & 0x34241) != 0)
    {
      goto LABEL_8;
    }

    if (((1 << v8) & 0xA) != 0)
    {
      goto LABEL_17;
    }

    if (v8 == 24)
    {
      v35[0] = 0;
      v34 = 0;
      if (__NSMFAIsHFA_arm64(v4, &v34, v35))
      {
        v18 = *(a2 + 8);
        if (v18 + *(v4 + 4) > 0xC0)
        {
          *a2 = xmmword_183446710;
          v27 = _NSMS3StackAlignedOffset_arm64(v4, *(a2 + 16) - 224);
          v28 = *(v4 + 4);
          *(v4 + 6) = v28;
          *(v4 + 7) = v27 + 224;
          *(a2 + 16) = v27 + 224 + v28;
          __NSMFASetOffsetsForCompositeElements_arm64(*v4, (v27 + 224));
        }

        else
        {
          v19 = v35[0];
          *(v4 + 6) = 16 * LODWORD(v35[0]);
          *(v4 + 7) = v18;
          *(a2 + 8) = v18 + 16 * v19;
          v33 = 0;
          __NSMFASetRegisterOffsetsForHFA_arm64(*v4, v18, &v33);
        }

        v4[33] = 0;
      }

      else
      {
        v21 = *(v4 + 4);
        if (v21 < 0x11)
        {
          v29 = 8 * (((v21 - 1) >> 3) + 1);
          v30 = *a2;
          if ((*a2 + v21) > 0x40)
          {
            v32 = _NSMS3StackAlignedOffset_arm64(v4, *(a2 + 16) - 224);
            LODWORD(v30) = v32 + 224;
            *(a2 + 16) = v32 + 224 + v29;
            LODWORD(v21) = *(v4 + 4);
            v31 = 72;
          }

          else
          {
            v31 = v30 + v29;
          }

          *(v4 + 7) = v30;
          *a2 = v31;
          *(v4 + 6) = v29;
          v4[33] = v21 - v29;
          v26 = v30;
          v25 = *v4;
        }

        else
        {
          v22 = strlen(v4 + 37);
          v23 = malloc_type_calloc(1uLL, v22 + 42, 0x1020040C2EE21EDuLL);
          *v23 = v4;
          v23[2] = 8;
          *(v23 + 6) = 8;
          *(v23 + 17) |= 0x1082u;
          *(v23 + 18) = 24158;
          v24 = strlen(v4 + 37);
          memmove(v23 + 38, v4 + 37, v24 + 1);
          *a1 = v23;
          computeReturnFrameExtent(a1, a2);
          v25 = *v4;
          v26 = 0;
        }

        __NSMFASetOffsetsForCompositeElements_arm64(v25, v26);
      }

      v5 = *(a2 + 16);
    }
  }

  return (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
}

void __NSMethodFrameArgInfoDestroy(void *a1)
{
  if (a1)
  {
    __NSMethodFrameArgInfoDestroy(*a1);
    __NSMethodFrameArgInfoDestroy(a1[1]);

    free(a1);
  }
}

char *typeStringRetain(int a1, char *__s)
{
  v3 = strlen(__s);
  if (_dyld_is_memory_immutable())
  {
    return __s;
  }

  v5 = malloc_type_malloc(v3 + 1, 0x6A62AF9EuLL);

  return memcpy(v5, __s, v3 + 1);
}

void *allocatePurgeable(int64_t a1, uint64_t a2, uint64_t a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  if (a1 <= 0)
  {
    v5 = *MEMORY[0x1E69E9AC8];
  }

  else
  {
    v5 = a1;
  }

  v6 = (*MEMORY[0x1E69E9AC8] + v5 - 1) & -*MEMORY[0x1E69E9AC8];
  if (vm_allocate(*MEMORY[0x1E69E9A60], v8, v6, -268435453))
  {
    *(a3 + 25) = 1;
    *(a3 + 16) = a1;
    return malloc_type_malloc(a1, 0x802473F7uLL);
  }

  else
  {
    *(a3 + 16) = v6;
    return v8[0];
  }
}

void _CFPrefsRegisterUserDefaultsInstanceWithCloudConfigurationURL(uint64_t a1, uint64_t a2)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v4 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFPrefsRegisterUserDefaultsInstanceWithCloudConfigurationURL_cold_1();
    }

    v4 = [qword_1ED40BE18 copyPrefs];
  }

  v5 = v4;
  [v4 registerUserDefaultsInstance:a1 configurationURL:a2];
}

unint64_t *_CFURLCreateCurrentDirectoryURL(const __CFAllocator *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (!_CFGetCurrentDirectory(__s, 1026))
  {
    return 0;
  }

  v2 = strlen(__s);
  return _CFURLCreateWithFileSystemRepresentation(a1, __s, v2, 1, 0);
}

uint64_t _CFURLComponentsGetURLHostAllowedCharacterSet()
{
  if (InitializeURLAllowedCharacterSets_static_init != -1)
  {
    _CFURLComponentsGetURLHostAllowedCharacterSet_cold_1();
  }

  return *(sURLAllowedCharacterSets + 16);
}

CFURLRef _CFBundleCreateRelativeURLFromBaseAndPath(const __CFString *a1, const __CFURL *a2, int a3, const __CFString *a4)
{
  v7 = a1;
  v17 = *MEMORY[0x1E69E9840];
  result.location = 0;
  result.length = 0;
  v18.length = CFStringGetLength(a1) - 1;
  v18.location = 0;
  v8 = CFStringFindWithOptions(v7, a4, v18, 4uLL, &result);
  if (v8)
  {
    v19.length = result.location;
    v19.location = 0;
    v9 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, v7, v19);
    a2 = CFURLCreateCopyAppendingPathComponent(&__kCFAllocatorSystemDefault, a2, v9, 1u);
    location = result.location;
    Length = CFStringGetLength(v7);
    v20.location = location + 1;
    v20.length = Length + ~result.location;
    v7 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, v7, v20);
    CFRelease(v9);
  }

  v12 = CFStringGetLength(v7);
  v13 = CFStringGetCharacterAtIndex(v7, v12 - 1) == a3;
  v14 = CFURLCreateWithFileSystemPathRelativeToBase(&__kCFAllocatorSystemDefault, v7, kCFURLPOSIXPathStyle, v13, a2);
  if (v8)
  {
    CFRelease(a2);
    CFRelease(v7);
  }

  return v14;
}

CFStringRef CFUUIDCreateString(CFAllocatorRef alloc, CFUUIDRef uuid)
{
  v57 = *MEMORY[0x1E69E9840];
  __CFCheckCFInfoPACSignature(uuid);
  v4 = _CFGetNonObjCTypeID(uuid);
  if (v4 != 34)
  {
    _CFAssertMismatchedTypeID(0x22uLL, v4);
  }

  Mutable = CFStringCreateMutable(alloc, 0);
  v6 = *&vshl_u32(vdup_n_s32(*(uuid + 16)), 4294967292) & 0xFFFFFF0FFFFFFF0FLL;
  v7 = vbsl_s8(vcgt_u32(0xA0000000ALL, v6), (v6 | 0x3000000030), vadd_s32(v6, 0x3700000037));
  v8 = *&vshl_u32(vdup_n_s32(*(uuid + 17)), 4294967292) & 0xFFFFFF0FFFFFFF0FLL;
  v9 = vbsl_s8(vcgt_u32(0xA0000000ALL, v8), (v8 | 0x3000000030), vadd_s32(v8, 0x3700000037));
  v10 = *&vshl_u32(vdup_n_s32(*(uuid + 18)), 4294967292) & 0xFFFFFF0FFFFFFF0FLL;
  v11 = vbsl_s8(vcgt_u32(0xA0000000ALL, v10), (v10 | 0x3000000030), vadd_s32(v10, 0x3700000037));
  v12 = *&vshl_u32(vdup_n_s32(*(uuid + 19)), 4294967292) & 0xFFFFFF0FFFFFFF0FLL;
  v13 = vbsl_s8(vcgt_u32(0xA0000000ALL, v12), (v12 | 0x3000000030), vadd_s32(v12, 0x3700000037));
  v46 = v7.i16[2];
  v45 = v7.i16[0];
  v48 = v9.i16[2];
  v47 = v9.i16[0];
  v50 = v11.i16[2];
  v49 = v11.i16[0];
  v52 = v13.i16[2];
  v51 = v13.i16[0];
  v53 = 45;
  CFStringAppendCharacters(Mutable, &v45, 9);
  v14 = *&vshl_u32(vdup_n_s32(*(uuid + 20)), 4294967292) & 0xFFFFFF0FFFFFFF0FLL;
  v15 = vbsl_s8(vcgt_u32(0xA0000000ALL, v14), (v14 | 0x3000000030), vadd_s32(v14, 0x3700000037));
  v46 = v15.i16[2];
  v45 = v15.i16[0];
  v16 = *&vshl_u32(vdup_n_s32(*(uuid + 21)), 4294967292) & 0xFFFFFF0FFFFFFF0FLL;
  v17 = vbsl_s8(vcgt_u32(0xA0000000ALL, v16), (v16 | 0x3000000030), vadd_s32(v16, 0x3700000037));
  v48 = v17.i16[2];
  v47 = v17.i16[0];
  v49 = 45;
  CFStringAppendCharacters(Mutable, &v45, 5);
  v18 = *&vshl_u32(vdup_n_s32(*(uuid + 22)), 4294967292) & 0xFFFFFF0FFFFFFF0FLL;
  v19 = vbsl_s8(vcgt_u32(0xA0000000ALL, v18), (v18 | 0x3000000030), vadd_s32(v18, 0x3700000037));
  v46 = v19.i16[2];
  v45 = v19.i16[0];
  v20 = *&vshl_u32(vdup_n_s32(*(uuid + 23)), 4294967292) & 0xFFFFFF0FFFFFFF0FLL;
  v21 = vbsl_s8(vcgt_u32(0xA0000000ALL, v20), (v20 | 0x3000000030), vadd_s32(v20, 0x3700000037));
  v48 = v21.i16[2];
  v47 = v21.i16[0];
  v49 = 45;
  CFStringAppendCharacters(Mutable, &v45, 5);
  v22 = *&vshl_u32(vdup_n_s32(*(uuid + 24)), 4294967292) & 0xFFFFFF0FFFFFFF0FLL;
  v23 = vbsl_s8(vcgt_u32(0xA0000000ALL, v22), (v22 | 0x3000000030), vadd_s32(v22, 0x3700000037));
  v46 = v23.i16[2];
  v45 = v23.i16[0];
  v24 = *&vshl_u32(vdup_n_s32(*(uuid + 25)), 4294967292) & 0xFFFFFF0FFFFFFF0FLL;
  v25 = vbsl_s8(vcgt_u32(0xA0000000ALL, v24), (v24 | 0x3000000030), vadd_s32(v24, 0x3700000037));
  v48 = v25.i16[2];
  v47 = v25.i16[0];
  v49 = 45;
  CFStringAppendCharacters(Mutable, &v45, 5);
  v26 = *&vshl_u32(vdup_n_s32(*(uuid + 26)), 4294967292) & 0xFFFFFF0FFFFFFF0FLL;
  v27 = vbsl_s8(vcgt_u32(0xA0000000ALL, v26), (v26 | 0x3000000030), vadd_s32(v26, 0x3700000037));
  v46 = v27.i16[2];
  v28 = v27.i16[0];
  v29 = *&vshl_u32(vdup_n_s32(*(uuid + 27)), 4294967292) & 0xFFFFFF0FFFFFFF0FLL;
  v30 = vbsl_s8(vcgt_u32(0xA0000000ALL, v29), (v29 | 0x3000000030), vadd_s32(v29, 0x3700000037));
  v45 = v28;
  v48 = v30.i16[2];
  v31 = v30.i16[0];
  v32 = vdup_n_s32(*(uuid + 28));
  v47 = v31;
  v33 = *&vshl_u32(v32, 4294967292) & 0xFFFFFF0FFFFFFF0FLL;
  v34 = vbsl_s8(vcgt_u32(0xA0000000ALL, v33), (v33 | 0x3000000030), vadd_s32(v33, 0x3700000037));
  v50 = v34.i16[2];
  v49 = v34.i16[0];
  v35 = *&vshl_u32(vdup_n_s32(*(uuid + 29)), 4294967292) & 0xFFFFFF0FFFFFFF0FLL;
  v36 = vbsl_s8(vcgt_u32(0xA0000000ALL, v35), (v35 | 0x3000000030), vadd_s32(v35, 0x3700000037));
  v52 = v36.i16[2];
  v37 = v36.i16[0];
  v38 = *&vshl_u32(vdup_n_s32(*(uuid + 30)), 4294967292) & 0xFFFFFF0FFFFFFF0FLL;
  v39 = vbsl_s8(vcgt_u32(0xA0000000ALL, v38), (v38 | 0x3000000030), vadd_s32(v38, 0x3700000037));
  v51 = v37;
  v54 = v39.i16[2];
  v40 = v39.i16[0];
  v41 = vdup_n_s32(*(uuid + 31));
  v53 = v40;
  v42 = *&vshl_u32(v41, 4294967292) & 0xFFFFFF0FFFFFFF0FLL;
  v43 = vbsl_s8(vcgt_u32(0xA0000000ALL, v42), (v42 | 0x3000000030), vadd_s32(v42, 0x3700000037));
  v56 = v43.i16[2];
  v55 = v43.i16[0];
  CFStringAppendCharacters(Mutable, &v45, 12);
  return Mutable;
}

CFComparisonResult CFNumberCompare(CFNumberRef number, CFNumberRef otherNumber, void *context)
{
  v36 = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(0x16uLL, number))
  {

    return [(__CFNumber *)number compare:otherNumber];
  }

  if (!CF_IS_OBJC(0x16uLL, otherNumber))
  {
    if ((number & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

    v6 = 0;
    v7 = *MEMORY[0x1E69E5910];
    if ((~number & 0xC000000000000007) == 0)
    {
      v7 = 0;
    }

    v8 = v7 ^ number;
    while ((v8 & 7) != *(MEMORY[0x1E69E5900] + v6))
    {
      if (++v6 == 7)
      {
        goto LABEL_18;
      }
    }

    if (v6 == 3)
    {
      v9 = v8 >> 3;
    }

    else
    {
LABEL_18:
      LOBYTE(v9) = atomic_load(number + 1);
    }

    v10 = __CFNumberCanonicalTypes[v9 & 7];
    if ((otherNumber & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    v11 = 0;
    v12 = *MEMORY[0x1E69E5910];
    if ((~otherNumber & 0xC000000000000007) == 0)
    {
      v12 = 0;
    }

    v13 = v12 ^ otherNumber;
    while ((v13 & 7) != *(MEMORY[0x1E69E5900] + v11))
    {
      if (++v11 == 7)
      {
        goto LABEL_28;
      }
    }

    if (v11 == 3)
    {
      v14 = v13 >> 3;
    }

    else
    {
LABEL_28:
      LOBYTE(v14) = atomic_load(otherNumber + 1);
    }

    v15 = __CFNumberTypeTable[v10];
    v16 = __CFNumberTypeTable[__CFNumberCanonicalTypes[v14 & 7]];
    if ((v15 & 0x20) != 0)
    {
      if ((v16 & 0x20) != 0)
      {
        v34 = 0.0;
        v32 = 0.0;
        __CFNumberGetValue(number, 6, &v34);
        __CFNumberGetValue(otherNumber, 6, &v32);
        *v20.i64 = v34;
        v21.i64[0] = 1.0;
        v22.f64[0] = NAN;
        v22.f64[1] = NAN;
        v23 = vnegq_f64(v22);
        v22.f64[0] = v32;
        v24 = *vbslq_s8(v23, v21, v22).i64;
        v25 = *vbslq_s8(v23, v21, v20).i64;
        if (v25 >= v24)
        {
          if (v24 < v25)
          {
            return 1;
          }

          if (v34 >= v32)
          {
            return (v32 < v34);
          }
        }

        return -1;
      }

      v17 = number;
    }

    else
    {
      if ((v16 & 0x20) == 0)
      {
        v34 = 0.0;
        v35 = 0;
        v32 = 0.0;
        v33 = 0;
        __CFNumberGetValue(number, 17, &v34);
        __CFNumberGetValue(otherNumber, 17, &v32);
        if (*&v34 >= *&v32)
        {
          if (*&v34 <= *&v32)
          {
            if (v35 >= v33)
            {
              return (v35 > v33);
            }

            else
            {
              return -1;
            }
          }

          return 1;
        }

        return -1;
      }

      v17 = otherNumber;
      otherNumber = number;
    }

    v30 = 0.0;
    v31 = 0.0;
    __CFNumberGetValue(v17, 6, &v31);
    if (v31 < -1.70141183e38)
    {
      goto LABEL_40;
    }

    if (v31 < 1.70141183e38)
    {
      v34 = 0.0;
      v35 = 0;
      v32 = 0.0;
      v33 = 0;
      __CFNumberGetValue(v17, 17, &v34);
      __CFNumberGetValue(otherNumber, 17, &v32);
      if (*&v34 < *&v32)
      {
LABEL_45:
        v28 = kCFCompareLessThan;
        goto LABEL_50;
      }

      if (*&v34 > *&v32)
      {
        goto LABEL_49;
      }

      if (v35 < v33)
      {
        goto LABEL_45;
      }

      if (v35 > v33)
      {
LABEL_49:
        v28 = kCFCompareGreaterThan;
LABEL_50:
        if ((v15 & 0x20) != 0)
        {
          return v28;
        }

        else
        {
          return -v28;
        }
      }

      *v26.i64 = v31;
      v27.i64[0] = 1.0;
      v29.f64[0] = NAN;
      v29.f64[1] = NAN;
      v26.i64[0] = vbslq_s8(vnegq_f64(v29), v27, v26).u64[0];
      if (v32 < 0.0)
      {
        *v27.i64 = -1.0;
      }

      if (*v26.i64 >= *v27.i64)
      {
        if (*v27.i64 < *v26.i64)
        {
          goto LABEL_61;
        }

        __CFNumberGetValue(otherNumber, 6, &v30);
        if (v31 >= v30)
        {
          if (v30 >= v31)
          {
            return 0;
          }

          goto LABEL_61;
        }
      }

LABEL_40:
      v18 = (v15 & 0x20) == 0;
      v19 = kCFCompareGreaterThan;
      goto LABEL_62;
    }

LABEL_61:
    v18 = (v15 & 0x20) == 0;
    v19 = kCFCompareLessThan;
LABEL_62:
    if (v18)
    {
      return v19;
    }

    else
    {
      return -v19;
    }
  }

  return [(__CFNumber *)otherNumber _reverseCompare:number];
}

CFNotificationCenterRef CFNotificationCenterGetDistributedCenter(void)
{
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (__CF_FORK_STATE)
  {
    return 0;
  }

  if (CFNotificationCenterGetDistributedCenter_static_init != -1)
  {
    CFNotificationCenterGetDistributedCenter_cold_1();
  }

  return __hostCenter;
}

unint64_t *__CFNotificationCenterGetDistributedCenter_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = _CFXNotificationCenterCreate(&__kCFAllocatorSystemDefault, _kCFXNotificationConfigurationStandardDistributedConfiguration, a3, a4, a5, a6, a7, a8);
  __hostCenter = result;
  return result;
}

CFLocaleRef CFLocaleCopyCurrent(void)
{
  v0 = +[NSLocale _current];

  return v0;
}

uint64_t CFUniCharGetConditionalCaseMappingFlags(unsigned int a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned __int16 *a6, unsigned int a7)
{
  v8 = a3;
  *&v63[36] = *MEMORY[0x1E69E9840];
  if (a1 == 931)
  {
    if (a3 >= 1 && !a5)
    {
      v10 = a2 + 2 * a4;
      v11 = a2 + 2 * a3;
      v12 = (v11 - 2);
      while (v12 >= a2)
      {
        v14 = v12 - 1;
        v13 = *v12;
        if ((v13 & 0xFC00) == 0xDC00 && v14 >= a2)
        {
          v16 = *v14;
          v17 = v16 & 0xFC00;
          v18 = v12 - 2;
          v19 = v13 - 56613888 + (v16 << 10);
          if (v17 == 55296)
          {
            v14 = v18;
            v13 = v19;
          }
        }

        IsMemberOf = CFUniCharIsMemberOf(v13, 0x6Du);
        v12 = v14;
        if ((IsMemberOf & 1) == 0)
        {
          if ((CFUniCharIsMemberOf(v13, 7u) & 1) == 0)
          {
            result = CFUniCharIsMemberOf(v13, 6u);
            if (!result)
            {
              return result;
            }
          }

          break;
        }
      }

      v22 = (v11 + 2);
      do
      {
        if (v22 >= v10)
        {
          return 1;
        }

        v24 = v22 + 1;
        v23 = *v22;
        if ((v23 & 0xFC00) == 0xD800 && v24 < v10)
        {
          v26 = *v24;
          v27 = (v26 & 0xFC00) == 56320;
          v28 = v22 + 2;
          v29 = (v23 << 10) - 56613888 + v26;
          if (v27)
          {
            v24 = v28;
          }

          if (v27)
          {
            v23 = v29;
          }
        }

        v30 = CFUniCharIsMemberOf(v23, 0x6Du);
        v22 = v24;
      }

      while ((v30 & 1) != 0);
      if ((CFUniCharIsMemberOf(v23, 7u) & 1) == 0 && (CFUniCharIsMemberOf(v23, 6u) & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  if (!a6)
  {
    return 0;
  }

  v32 = *a6;
  if (v32 <= 0x746B)
  {
    if (v32 != 27758)
    {
      if (v32 != 29300)
      {
LABEL_45:
        if (a7 & 0x10) != 0 && (CFUniCharIsMemberOf(a1, 8u) & 1) != 0 || (a1 - 880 < 0x90 || a1 >> 8 == 31) && a5 == 1 && (CFUniCharIsMemberOf(a1, 5u))
        {
          return 16;
        }

        return 0;
      }

LABEL_44:
      if (!a5)
      {
        if (a1 == 73)
        {
          if (a3 + 1 < a4)
          {
            return 4 * (*(a2 + 2 * (a3 + 1)) == 775);
          }

          return 0;
        }

        if (a1 == 775)
        {
          return (a7 >> 1) & 2;
        }
      }

      goto LABEL_45;
    }

    if ((a7 & 8) != 0)
    {
      return 8 * ((a1 & 0xFFFFFFDF) == 74);
    }

    if ((a1 & 0xFFFFFFDF) != 0x49 || a5 != 2)
    {
      goto LABEL_45;
    }

    if (a3 + 1 < a4)
    {
      v36 = *(a2 + 2 * (a3 + 1));
      if (v36 == 106)
      {
        return 8;
      }

      else
      {
        return 8 * (v36 == 74);
      }
    }

    return 0;
  }

  if (v32 == 31329)
  {
    goto LABEL_44;
  }

  if (v32 != 29804)
  {
    goto LABEL_45;
  }

  if (a1 == 775 && (a7 & 6) == 6)
  {
    v33 = a3 - 1;
    if (a3 >= 1)
    {
      v34 = a2 + 2 * a3;
      if (a3 == 1)
      {
LABEL_43:
        v35 = *(v34 - 2);
      }

      else
      {
        while (1)
        {
          v49 = v34 - 2;
          v35 = *(v34 - 2);
          if ((v35 & 0xFC00) == 0xDC00)
          {
            v8 -= 2;
            if (!v8)
            {
              goto LABEL_111;
            }

            v51 = *(v34 - 4);
            v34 -= 4;
            v50 = v51;
            if ((v51 & 0xFC00) != 0xD800)
            {
              goto LABEL_111;
            }

            v35 = v35 - 56613888 + (v50 << 10);
          }

          else
          {
            v34 -= 2;
            v8 = v33;
          }

          if (!CFUniCharIsMemberOf(v35, 8u))
          {
            break;
          }

          if (!(v35 >> 17))
          {
            v52 = *(&__CFUniCharCombiningPriorityTable + HIWORD(v35));
            if (v52)
            {
              if (*(v52 + BYTE1(v35)) && *(v52 + (*(v52 + BYTE1(v35)) << 8) - 256 + v35 + 256) == 230)
              {
                return 0;
              }
            }
          }

          v33 = v8 - 1;
          if (v8 <= 1)
          {
            goto LABEL_110;
          }
        }

        v33 = v8;
LABEL_110:
        v49 = v34;
        if (!v33)
        {
          goto LABEL_43;
        }

LABEL_111:
        if ((v35 & 0xFC00) == 0xDC00)
        {
          v53 = *(v49 - 2);
          v27 = (v53 & 0xFC00) == 55296;
          v54 = (v35 & 0xDFFF) - 56613888 + (v53 << 10);
          if (v27)
          {
            v35 = v54;
          }
        }
      }

      v55 = CFUniCharDecomposeCharacter(v35, &v62, 10);
      if (v55 < 2)
      {
        return 2;
      }

      v56 = v63;
      v57 = v55 - 1;
      while (1)
      {
        v59 = *v56++;
        v58 = v59;
        v60 = BYTE2(v59);
        if (BYTE2(v59) <= 1u)
        {
          v61 = *(&__CFUniCharCombiningPriorityTable + v60);
          if (v61)
          {
            if (*(v61 + HIBYTE(v58)) && *(v61 + (*(v61 + HIBYTE(v58)) << 8) - 256 + v58 + 256) == 230)
            {
              break;
            }
          }
        }

        if (!--v57)
        {
          return 2;
        }
      }
    }

    return 0;
  }

  if (a5)
  {
    if (a1 - 105 > 1)
    {
      goto LABEL_45;
    }

    v37 = a4 - (a3 + 1);
    if (v37 < 1)
    {
      return 0;
    }

    v38 = (a2 + 2 * (a3 + 1));
    do
    {
      v39 = v38 + 1;
      v40 = *v38;
      if (v37 != 1 && (v40 & 0xFC00) == 0xD800 && (v41 = v38[2], v38 += 2, (v41 & 0xFC00) == 0xDC00))
      {
        v40 = (v40 << 10) - 56613888 + *v39;
        v37 -= 2;
      }

      else
      {
        v38 = v39;
        --v37;
      }

      result = CFUniCharIsMemberOf(v40, 8u);
      if (!result)
      {
        break;
      }

      if (BYTE2(v40) <= 1u)
      {
        v42 = *(&__CFUniCharCombiningPriorityTable + BYTE2(v40));
        if (v42)
        {
          if (*(v42 + BYTE1(v40)) && *(v42 + (*(v42 + BYTE1(v40)) << 8) - 256 + v40 + 256) == 230)
          {
            return 6;
          }
        }
      }

      result = 0;
    }

    while (v37 > 0);
  }

  else
  {
    if (a1 - 73 >= 2 && a1 != 302)
    {
      goto LABEL_45;
    }

    v43 = a4 - (a3 + 1);
    if (v43 < 1)
    {
      return 0;
    }

    v44 = (a2 + 2 * (a3 + 1));
    do
    {
      v45 = v44 + 1;
      v46 = *v44;
      if (v43 != 1 && (v46 & 0xFC00) == 0xD800 && (v47 = v44[2], v44 += 2, (v47 & 0xFC00) == 0xDC00))
      {
        v46 = (v46 << 10) - 56613888 + *v45;
        v43 -= 2;
      }

      else
      {
        v44 = v45;
        --v43;
      }

      result = CFUniCharIsMemberOf(v46, 8u);
      if (!result)
      {
        break;
      }

      if (BYTE2(v46) <= 1u)
      {
        v48 = *(&__CFUniCharCombiningPriorityTable + BYTE2(v46));
        if (v48)
        {
          if (*(v48 + BYTE1(v46)) && *(v48 + (*(v48 + BYTE1(v46)) << 8) - 256 + v46 + 256) == 230)
          {
            return 4;
          }
        }
      }

      result = 0;
    }

    while (v43 > 0);
  }

  return result;
}

void __magic_cookie_block_invoke()
{
  while (!magic_cookie_oValue)
  {
    arc4random_buf(&magic_cookie_oValue, 4uLL);
  }
}

Boolean CFCalendarComposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime *at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  va_copy(v14, va);
  v6 = [objc_allocWithZone(NSDateComponents) init];
  v7 = *componentDesc;
  if (*componentDesc)
  {
    v8 = componentDesc + 1;
    do
    {
      v9 = va_arg(v14, void);
      if (v7 <= 81)
      {
        if (v7 > 70)
        {
          if (v7 > 76)
          {
            if (v7 == 77)
            {
              [v6 setMonth:v9];
            }

            else if (v7 == 81)
            {
              [v6 setQuarter:v9];
            }
          }

          else if (v7 == 71)
          {
            [v6 setEra:v9];
          }

          else if (v7 == 72)
          {
            [v6 setHour:v9];
          }
        }

        else if (v7 > 68)
        {
          if (v7 == 69)
          {
            [v6 setWeekday:v9];
          }

          else
          {
            [v6 setWeekdayOrdinal:v9];
          }
        }

        else if (v7 == 35)
        {
          [v6 setNanosecond:v9];
        }

        else if (v7 == 68)
        {
          [v6 setDayOfYear:v9];
        }
      }

      else if (v7 <= 107)
      {
        if (v7 > 88)
        {
          if (v7 == 89)
          {
            [v6 setYearForWeekOfYear:v9];
          }

          else if (v7 == 100)
          {
            [v6 setDay:v9];
          }
        }

        else if (v7 == 82)
        {
          [v6 setRepeatedDay:v9 != 0];
        }

        else if (v7 == 87)
        {
          [v6 setWeekOfMonth:v9];
        }
      }

      else if (v7 <= 114)
      {
        if (v7 == 108)
        {
          [v6 setLeapMonth:v9 != 0];
        }

        else if (v7 == 109)
        {
          [v6 setMinute:v9];
        }
      }

      else
      {
        switch(v7)
        {
          case 's':
            [v6 setSecond:v9];
            break;
          case 'w':
            [v6 setWeekOfYear:v9];
            [v6 setWeek:v9];
            break;
          case 'y':
            [v6 setYear:v9];
            break;
        }
      }

      v10 = *v8++;
      v7 = v10;
    }

    while (v10);
  }

  v11 = [(__CFCalendar *)calendar dateFromComponents:v6, v14];

  if (!v11)
  {
    return 0;
  }

  [v11 timeIntervalSinceReferenceDate];
  *at = v12;
  return 1;
}

uint64_t __CFBundleAllowMixedLocalizations_block_invoke()
{
  result = _CFBundleGetInfoDictionaryBoolean(@"CFBundleAllowMixedLocalizations");
  CFBundleAllowMixedLocalizations_allowMixed = result;
  return result;
}

CFTypeRef CFDateComponentsCopyCalendar(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    CFDateComponentsCopyCalendar_cold_1();
  }

  result = *(a1 + 16);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

CFTypeRef CFDateComponentsCopyTimeZone(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    CFDateComponentsCopyTimeZone_cold_1();
  }

  result = *(a1 + 24);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void CFBitVectorSetCount(CFMutableBitVectorRef bv, CFIndex count)
{
  v4 = *(bv + 2);
  v5 = atomic_load(bv + 1);
  v6 = (v5 & 0xC) != 4 || count <= v4;
  if (!v6)
  {
    v7 = count;
    if (count <= 1)
    {
      v7 = 1;
    }

    v8 = v7 + 63;
    v6 = v7 < -63;
    v9 = v7 + 126;
    if (!v6)
    {
      v9 = v8;
    }

    v10 = v9 >> 6;
    v11 = v9 & 0xFFFFFFFFFFFFFFC0;
    v12 = CFGetAllocator(bv);
    *(bv + 3) = v11;
    *(bv + 4) = __CFSafelyReallocateWithAllocatorTyped(v12, *(bv + 4), (8 * v10) | 1, 2004306212, 0);
    if (__CFOASafe == 1)
    {
      __CFSetLastAllocationEventName();
    }
  }

  if (count > v4)
  {
    __CFBitVectorInternalMap(bv, v4, count - v4, __CFBitVectorZeroBits, 0);
  }

  *(bv + 2) = count;
}

void CFBitVectorSetAllBits(CFMutableBitVectorRef bv, CFBit value)
{
  v4 = *(bv + 2);
  v5 = v4 + 7;
  if (v4 >= 0)
  {
    v5 = *(bv + 2);
  }

  v6 = v5 >> 3;
  v7 = v4 - (v5 & 0xFFFFFFFFFFFFFFF8);
  if (v7 >= 1)
  {
    if (value)
    {
      v8 = __CFBitVectorOneBits;
    }

    else
    {
      v8 = __CFBitVectorZeroBits;
    }

    __CFBitVectorInternalMap(bv, v5 & 0xFFFFFFFFFFFFFFF8, v7, v8, 0);
  }

  v9 = *(bv + 4);
  if (value)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  memset(v9, v10, v6);
}

void CFBitVectorSetBitAtIndex(CFMutableBitVectorRef bv, CFIndex idx, CFBit value)
{
  v3 = *(bv + 4);
  v4 = idx / 8;
  v5 = 1 << (~idx & 7);
  if (value)
  {
    v6 = *(v3 + v4) | v5;
  }

  else
  {
    v6 = *(v3 + v4) & ~v5;
  }

  *(v3 + v4) = v6;
}

void CFStringTrimWhitespace(CFMutableStringRef theString)
{
  v80 = *MEMORY[0x1E69E9840];
  v2 = CF_IS_OBJC(7uLL, theString);
  if (v2)
  {

    [(__CFString *)theString _cfTrimWS];
  }

  else
  {
    v79 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    *theStringa = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    *buffer = 0u;
    p_info = &theString->info;
    v5 = atomic_load(&theString->info);
    if (v5)
    {
      v14 = atomic_load(p_info);
      v15 = v14 & 5;
      v16 = atomic_load(p_info);
      v17 = v16 & 0x60;
      if (v15 == 4)
      {
        p_data = &theString->data;
        if (v17)
        {
          v19 = *p_data;
        }

        else
        {
          v21 = atomic_load(&theString->info);
          v19 = &p_data[(v21 & 5) != 4];
        }

        length = *v19;
      }

      else if ((v16 & 0x60) != 0)
      {
        length = theString->length;
      }

      else
      {
        length = theString->data;
      }

      theStringa[0] = theString;
      *(&v77 + 1) = 0;
      *&v78 = length;
      theStringa[1] = CFStringGetCharactersPtr(theString);
      if (theStringa[1])
      {
        goto LABEL_17;
      }

      v23 = __CFDefaultEightBitStringEncoding;
      if (__CFDefaultEightBitStringEncoding == -1)
      {
        v23 = __CFStringComputeEightBitStringEncoding();
      }

      if (v23 != 1536)
      {
        v24 = __CFDefaultEightBitStringEncoding;
        if (__CFDefaultEightBitStringEncoding == -1)
        {
          v24 = __CFStringComputeEightBitStringEncoding();
        }

        if (v24 != 1536)
        {
          goto LABEL_17;
        }
      }

      v25 = &theString->info;
      v26 = atomic_load(&theString->info);
      if ((v26 & 0x10) == 0 || (v27 = atomic_load(v25), (v27 & 8) != 0))
      {
        v28 = atomic_load(v25);
        v29 = &theString->data;
        if ((v28 & 0x60) != 0)
        {
          v30 = *v29;
        }

        else
        {
          v31 = atomic_load(&theString->info);
          v30 = &v29[(v31 & 5) != 4];
        }

        v32 = atomic_load(&theString->info);
        v22 = &v30[(v32 >> 2) & 1];
      }

      else
      {
LABEL_17:
        v22 = 0;
      }

      *(&v78 + 1) = 0;
      v79 = 0;
      *&v77 = v22;
      if (length < 1)
      {
LABEL_48:
        v66 = 0;
        v67 = length;
      }

      else
      {
        v33 = 0;
        while (1)
        {
          if (theStringa[1])
          {
            v34 = *(&theStringa[1]->isa + *(&v77 + 1) + v33);
          }

          else if (v77)
          {
            v34 = *(v77 + *(&v77 + 1) + v33);
          }

          else
          {
            v35 = *(&v78 + 1);
            v36 = v79 > v33 && *(&v78 + 1) <= v33;
            if (!v36)
            {
              v37 = v33 - 4;
              if (v33 < 4)
              {
                v37 = 0;
              }

              v38 = v37 + 64;
              if (v37 + 64 >= v78)
              {
                v38 = v78;
              }

              *(&v78 + 1) = v37;
              v79 = v38;
              v82.length = v38 - v37;
              v82.location = *(&v77 + 1) + v37;
              CFStringGetCharacters(theStringa[0], v82, buffer);
              v35 = *(&v78 + 1);
            }

            v34 = buffer[v33 - v35];
          }

          if (!CFUniCharIsMemberOf(v34, 3u))
          {
            break;
          }

          if (++v33 == length)
          {
            goto LABEL_48;
          }
        }

        v39 = atomic_load(&theString->info);
        v40 = &theString->data;
        v65 = &theString->data;
        if ((v39 & 0x60) != 0)
        {
          v41 = *v40;
        }

        else
        {
          v42 = atomic_load(&theString->info);
          v41 = &v40[(v42 & 5) != 4];
        }

        v43 = atomic_load(&theString->info);
        v44 = &v41[(v43 >> 2) & 1];
        v45 = atomic_load(&theString->info);
        v46 = (v45 >> 4) & 1;
        v47 = -length;
        v48 = length + 64;
        do
        {
          v49 = length;
          if (length >= 5)
          {
            v50 = 5;
          }

          else
          {
            v50 = length;
          }

          v36 = length-- < 1;
          if (v36)
          {
            break;
          }

          if (theStringa[1])
          {
            v51 = *(theStringa[1] + *(&v77 + 1) + v49 - 1);
          }

          else if (v77)
          {
            v51 = *(v77 + *(&v77 + 1) + v49 - 1);
          }

          else
          {
            v52 = *(&v78 + 1);
            if (v79 < v49 || *(&v78 + 1) >= v49)
            {
              v54 = -v50;
              v55 = v50 + v47;
              v56 = v48 - v50;
              v57 = v49 + v54;
              v58 = v57 + 64;
              if (v57 + 64 >= v78)
              {
                v58 = v78;
              }

              *(&v78 + 1) = v57;
              v79 = v58;
              if (v78 < v56)
              {
                v56 = v78;
              }

              v83.location = v57 + *(&v77 + 1);
              v83.length = v56 + v55;
              CFStringGetCharacters(theStringa[0], v83, buffer);
              v52 = *(&v78 + 1);
            }

            v51 = buffer[v49 - 1 - v52];
          }

          ++v47;
          --v48;
        }

        while ((CFUniCharIsMemberOf(v51, 3u) & 1) != 0);
        memmove(v44, &v44[v33 << v46], (v49 - v33) << v46);
        v59 = atomic_load(&theString->info);
        v60 = atomic_load(&theString->info);
        v61 = v60 & 0x60;
        if ((v59 & 5) == 4)
        {
          if (v61)
          {
            v62 = *v65;
          }

          else
          {
            v64 = atomic_load(&theString->info);
            v62 = &v65[(v64 & 5) != 4];
          }

          v63 = *v62;
        }

        else if (v61)
        {
          v63 = theString->length;
        }

        else
        {
          v63 = *v65;
        }

        v66 = v49 - v33;
        v67 = v63 + v33 - v49;
      }

      __CFStringChangeSizeMultiple(theString, &v66, 1, 0, 0);
    }

    else
    {
      v6 = _CFOSLog(v2, v3);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        CFStringTrimWhitespace_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }
  }
}

uint64_t _CFPreferencesGetAppIntegerValueWithContainer(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = _CFPreferencesCopyAppValueWithContainerAndConfiguration(a1, a2, a3, 0);
  if (v5)
  {
    v6 = v5;
    valuePtr = 0;
    v7 = CFGetTypeID(v5);
    if (v7 == 22)
    {
      IsFloatType = CFNumberIsFloatType(v6);
      if (a4)
      {
        *a4 = IsFloatType == 0;
      }

      CFNumberGetValue(v6, kCFNumberCFIndexType, &valuePtr);
      goto LABEL_22;
    }

    if (v7 != 7)
    {
      if (v7 != CFBooleanGetTypeID())
      {
        valuePtr = 0;
        if (a4)
        {
          *a4 = 0;
        }

        goto LABEL_22;
      }

      if (a4)
      {
        *a4 = 1;
      }

      v12 = v6 == &__kCFBooleanTrue;
LABEL_21:
      valuePtr = v12;
LABEL_22:
      CFRelease(v6);
      return valuePtr;
    }

    v15 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    *buffer = 0u;
    v18 = 0u;
    v25 = v6;
    v28 = 0;
    Length = CFStringGetLength(v6);
    CharactersPtr = CFStringGetCharactersPtr(v6);
    CStringPtr = 0;
    v26 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v6, 0x600u);
    }

    v30 = 0;
    v31 = 0;
    v27 = CStringPtr;
    if (__CFStringScanInteger(buffer, 0, &v15 + 1, 0, &v15))
    {
      v10 = SHIDWORD(v15);
      v11 = CFStringGetLength(v6) == v10;
      if (!a4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v11 = 0;
      if (!a4)
      {
LABEL_9:
        if (v11)
        {
          v12 = v15;
        }

        else
        {
          v12 = 0;
        }

        goto LABEL_21;
      }
    }

    *a4 = v11;
    goto LABEL_9;
  }

  result = 0;
  if (a4)
  {
    *a4 = 0;
  }

  return result;
}

uint64_t CFPREFERENCES_IS_WAITING_FOR_SYSTEM_CFPREFSD(const os_unfair_lock *a1, uint64_t a2)
{
  os_unfair_lock_assert_not_owner(a1 + 18);
  os_unfair_lock_assert_not_owner(a1 + 19);
  os_unfair_lock_assert_not_owner(a1 + 20);
  return (*(a2 + 16))(a2);
}

void CFRunLoopAddCommonMode(CFRunLoopRef rl, CFRunLoopMode mode)
{
  context[2] = *MEMORY[0x1E69E9840];
  __CFCheckCFInfoPACSignature(rl);
  v4 = _CFGetNonObjCTypeID(rl);
  if (v4 != 43)
  {
    _CFAssertMismatchedTypeID(0x2BuLL, v4);
  }

  v5 = atomic_load(__CFMainThreadHasExited);
  if (v5)
  {
    CFRunLoopAddCommonMode_cold_1(rl);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  v6 = atomic_load(rl + 1);
  if ((v6 & 4) == 0)
  {
    pthread_mutex_lock((rl + 16));
    if (!CFSetContainsValue(*(rl + 330), mode))
    {
      v7 = *(rl + 331);
      if (v7)
      {
        Copy = CFSetCreateCopy(&__kCFAllocatorSystemDefault, v7);
        CFSetAddValue(*(rl + 330), mode);
        if (Copy)
        {
          context[0] = rl;
          context[1] = mode;
          CFSetApplyFunction(Copy, __CFRunLoopAddItemsToCommonMode, context);
          CFRelease(Copy);
        }
      }

      else
      {
        CFSetAddValue(*(rl + 330), mode);
      }
    }

    pthread_mutex_unlock((rl + 16));
  }
}

void _CFBundleAddToTablesLocked(const void **value, const void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!*(value + 54))
  {
    v4 = _allBundles;
    if (!_allBundles)
    {
      *&callBacks.version = *&kCFTypeArrayCallBacks.version;
      *&callBacks.release = *&kCFTypeArrayCallBacks.release;
      callBacks.equal = CFEqual;
      v4 = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &callBacks);
      _allBundles = v4;
    }

    CFArrayAppendValue(v4, value);
    Mutable = _bundlesByURL;
    if (!_bundlesByURL)
    {
      memset(&callBacks, 0, 24);
      callBacks.copyDescription = kCFTypeDictionaryValueCallBacks.copyDescription;
      callBacks.equal = CFEqual;
      Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &callBacks);
      _bundlesByURL = Mutable;
    }

    CFDictionarySetValue(Mutable, value[2], value);
    if (a2)
    {
      v6 = _bundlesByIdentifier;
      if (!_bundlesByIdentifier)
      {
        v6 = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        _bundlesByIdentifier = v6;
      }

      v7 = CFDictionaryGetValue(v6, a2);
      if (!v7)
      {
        memset(&callBacks, 0, 24);
        callBacks.copyDescription = kCFTypeArrayCallBacks.copyDescription;
        callBacks.equal = CFEqual;
        v14 = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &callBacks);
        CFArrayAppendValue(v14, value);
        CFDictionarySetValue(_bundlesByIdentifier, a2, v14);
        v15 = v14;
LABEL_28:
        CFRelease(v15);
        return;
      }

      v8 = v7;
      Count = CFArrayGetCount(v7);
      VersionNumber = CFBundleGetVersionNumber(value);
      if (Count < 1)
      {
        v12 = 0;
      }

      else
      {
        v11 = VersionNumber;
        v12 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, v12);
          if (v11 >= CFBundleGetVersionNumber(ValueAtIndex))
          {
            break;
          }

          if (Count == ++v12)
          {
            v12 = Count;
            break;
          }
        }
      }

      CFArrayInsertValueAtIndex(v8, v12, value);
      if (_CFBundleResourceLogger_onceToken != -1)
      {
        _CFBundleAddToTablesLocked_cold_1();
      }

      if (os_log_type_enabled(_CFBundleResourceLogger__log, OS_LOG_TYPE_DEBUG))
      {
        v16 = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
        if (CFArrayGetCount(v8) >= 1)
        {
          v17 = 0;
          do
          {
            v18 = CFArrayGetValueAtIndex(v8, v17);
            v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"Bundle %p at %@", v18, v18[2]);
            CFArrayAppendValue(v16, v19);
            CFRelease(v19);
            ++v17;
          }

          while (v17 < CFArrayGetCount(v8));
        }

        if (_CFBundleResourceLogger_onceToken != -1)
        {
          _CFBundleAddToTablesLocked_cold_2();
        }

        if (os_log_type_enabled(_CFBundleResourceLogger__log, OS_LOG_TYPE_DEBUG))
        {
          _CFBundleAddToTablesLocked_cold_3();
        }

        v15 = v16;
        goto LABEL_28;
      }
    }
  }
}

unint64_t *_CFMachPortCreate4(__objc2_class **a1, unint64_t a2, __int128 *a3, _BYTE *a4, int a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *a4 = 1;
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (__CF_FORK_STATE)
  {
    return 0;
  }

  name = 0;
  v10 = MEMORY[0x1E69E9A60];
  inserted = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name);
  if (inserted || (inserted = mach_port_insert_right(*v10, name, name, 0x14u), inserted))
  {
    v12 = inserted;
    if (name)
    {
      v13 = mach_port_mod_refs(*v10, name, 1u, -1);
      v15 = _CFOSLog(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        _CFMachPortCreate4_cold_1();
      }
    }

    else
    {
      v16 = _CFOSLog(inserted, 0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        _CFMachPortCreate4_cold_2(v12, v16);
      }
    }

    return 0;
  }

  result = _CFMachPortCreateWithPort4(a1, name, a2, a3, a4, a5);
  if (!result)
  {
    if (name)
    {
      mach_port_mod_refs(*v10, name, 1u, -1);
      mach_port_deallocate(*v10, name);
    }

    return 0;
  }

  v18 = atomic_load(result + 1);
  v19 = v18;
  do
  {
    atomic_compare_exchange_strong(result + 1, &v19, v18 | 2);
    v20 = v19 == v18;
    v18 = v19;
  }

  while (!v20);
  v21 = atomic_load(result + 1);
  v22 = v21;
  do
  {
    atomic_compare_exchange_strong(result + 1, &v22, v21 | 4);
    v20 = v22 == v21;
    v21 = v22;
  }

  while (!v20);
  return result;
}

uint64_t _NSIsNSValue(uint64_t a1)
{
  if (!_NSValueClass)
  {
    Class = objc_getClass("NSValue");
    _NSValueClass = Class;
    if (!Class)
    {
      return Class & 1;
    }
  }

  if (!a1)
  {
    LOBYTE(Class) = 0;
    return Class & 1;
  }

  MethodImplementation = object_getMethodImplementation();
  if (MethodImplementation == MEMORY[0x1E69E58E8])
  {
    LOBYTE(Class) = objc_opt_isKindOfClass();
    return Class & 1;
  }

  return MethodImplementation(a1, sel_isNSValue__);
}

CFRunLoopObserverRef CFRunLoopObserverCreate(CFAllocatorRef allocator, CFOptionFlags activities, Boolean repeats, CFIndex order, CFRunLoopObserverCallBack callout, CFRunLoopObserverContext *context)
{
  v11 = repeats;
  v27 = *MEMORY[0x1E69E9840];
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  Instance = _CFRuntimeCreateInstance(allocator, 0x2DuLL, 144, 0, callout, context, v6, v7);
  v15 = Instance;
  if (Instance)
  {
    v16 = atomic_load(Instance + 1);
    v17 = v16;
    do
    {
      atomic_compare_exchange_strong(Instance + 1, &v17, v16 | 8);
      v18 = v17 == v16;
      v16 = v17;
    }

    while (!v18);
    v19 = atomic_load(Instance + 1);
    v20 = v19;
    do
    {
      atomic_compare_exchange_strong(Instance + 1, &v20, v19 & 0xFFFFFFFFFFFFFFFELL);
      v18 = v20 == v19;
      v19 = v20;
    }

    while (!v18);
    v21 = atomic_load(Instance + 1);
    v22 = v21;
    if (v11)
    {
      do
      {
        atomic_compare_exchange_strong(Instance + 1, &v22, v21 | 2);
        v18 = v22 == v21;
        v21 = v22;
      }

      while (!v18);
    }

    else
    {
      do
      {
        atomic_compare_exchange_strong(Instance + 1, &v22, v21 & 0xFFFFFFFFFFFFFFFDLL);
        v18 = v22 == v21;
        v21 = v22;
      }

      while (!v18);
    }

    v26.__sig = 0;
    *v26.__opaque = 0;
    pthread_mutexattr_init(&v26);
    pthread_mutexattr_settype(&v26, 2);
    pthread_mutex_init((v15 + 2), &v26);
    pthread_mutexattr_destroy(&v26);
    v15[10] = 0;
    v15[11] = 0;
    v15[12] = activities;
    v15[13] = order;
    v15[14] = callout;
    if (context)
    {
      info = context->info;
      retain = context->retain;
      if (retain)
      {
        info = (retain)(info);
        retain = context->retain;
      }

      v15[16] = info;
      v15[17] = retain;
      *(v15 + 9) = *&context->release;
    }
  }

  return v15;
}

uint64_t __CFRunLoopSourceEqual(unint64_t *a1, unint64_t *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = atomic_load(a1 + 1);
  v3 = atomic_load(a2 + 1);
  if (((v3 ^ v2) & 8) != 0)
  {
    return 0;
  }

  if (a1[10] != a2[10])
  {
    return 0;
  }

  v4 = a1[13];
  if (v4 != a2[13])
  {
    return 0;
  }

  if (a1[19] != a2[19])
  {
    return 0;
  }

  v5 = a1[18];
  if (v5 != a2[18])
  {
    return 0;
  }

  if (v4 == 1)
  {
    v7 = a1[21];
    v8 = a2[21];
LABEL_13:
    if (v7 != v8)
    {
      return 0;
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v7 = a1[22];
    v8 = a2[22];
    goto LABEL_13;
  }

LABEL_14:
  v9 = a1[14];
  v10 = a2[14];
  if (v5)
  {
    return v5(v9, v10);
  }

  else
  {
    return v9 == v10;
  }
}

void CFRunLoopStop(CFRunLoopRef rl)
{
  __CFCheckCFInfoPACSignature(rl);
  v2 = _CFGetNonObjCTypeID(rl);
  if (v2 != 43)
  {
    _CFAssertMismatchedTypeID(0x2BuLL, v2);
  }

  v3 = atomic_load(__CFMainThreadHasExited);
  if (v3)
  {
    CFRunLoopStop_cold_1(rl);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  pthread_mutex_lock((rl + 16));
  if (*(rl + 332))
  {
    *(rl + *(rl + 84) + 85) = 1;
    pthread_mutex_unlock((rl + 16));

    CFRunLoopWakeUp(rl);
  }

  else
  {

    pthread_mutex_unlock((rl + 16));
  }
}

CFUUIDRef CFUUIDCreate(CFAllocatorRef alloc)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2800000000;
  v8 = 0;
  v9 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __CFUUIDCreate_block_invoke;
  v4[3] = &unk_1E6DCEF50;
  v4[4] = &v5;
  os_unfair_lock_lock_with_options();
  __CFUUIDCreate_block_invoke(v4);
  os_unfair_lock_unlock(&_uniquedUUIDsLock);
  v2 = __CFUUIDCreateWithBytesPrimitive(alloc, v6[3], v6[4], 0);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_18316F390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double __CFUUIDCreate_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  memset(out, 0, sizeof(out));
  v2 = __CFUUIDClass_block_invoke_useV1UUIDs;
  if (__CFUUIDClass_block_invoke_useV1UUIDs == 255)
  {
    v3 = getenv("CFUUIDVersionNumber");
    if (!v3)
    {
LABEL_6:
      uuid_generate_random(out);
      goto LABEL_7;
    }

    v2 = strtoul_l(v3, 0, 0, 0) == 1;
    __CFUUIDClass_block_invoke_useV1UUIDs = v2;
  }

  if (v2 != 1)
  {
    goto LABEL_6;
  }

  uuid_generate_time(out);
LABEL_7:
  result = *out;
  *(*(*(a1 + 32) + 8) + 24) = *out;
  return result;
}

uint64_t __CFUUIDCreateWithBytesPrimitive(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ____CFUUIDCreateWithBytesPrimitive_block_invoke;
  v6[3] = &unk_1E6DCEF98;
  v6[6] = a2;
  v6[7] = a3;
  v6[4] = &v8;
  v6[5] = a1;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  (____CFUUIDCreateWithBytesPrimitive_block_invoke)(v6);
  os_unfair_lock_unlock(&_uniquedUUIDsLock);
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

CFStringRef CFURLCopyQueryString(CFURLRef anURL, CFStringRef charactersToLeaveEscaped)
{
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLCopyQueryString_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, anURL))
    {
      anURL = [(__CFURL *)anURL _cfurl];
    }

    v4 = [(__CFURL *)anURL _query:charactersToLeaveEscaped];

    return v4;
  }

  else
  {
    String = _unescapedQueryString(anURL);
    if (!String)
    {
      return 0;
    }

    v7 = String;
    v8 = *(anURL + 5);
    v9 = CFGetAllocator(anURL);
    if (v8 == 134217984)
    {
      v10 = CFURLCreateStringByReplacingPercentEscapes(v9, v7, charactersToLeaveEscaped);
    }

    else
    {
      v10 = CFURLCreateStringByReplacingPercentEscapesUsingEncoding(v9, v7, charactersToLeaveEscaped, *(anURL + 5));
    }

    v11 = v10;
    CFRelease(v7);
    return v11;
  }
}

CFStringRef _unescapedQueryString(unint64_t a1)
{
  while (1)
  {
    if (!a1)
    {
      _unescapedQueryString_cold_1();
    }

    if (CF_IS_OBJC(0x1DuLL, a1))
    {
      break;
    }

    v2 = _retainedComponentString(a1, 128, 0, 0);
    if (v2)
    {
      return v2;
    }

    v3 = *(a1 + 16);
    if ((v3 & 0x4000) == 0)
    {
      return 0;
    }

    v4 = 0;
    if ((v3 & 0x3F) == 0)
    {
      a1 = *(a1 + 32);
      if (a1)
      {
        continue;
      }
    }

    return v4;
  }

  v5 = [a1 query];
  v4 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  return v4;
}

uint64_t _CFRuntimeRegisterClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*a1 & 8) != 0 && !*(a1 + 80))
  {
    CFLog(4, @"*** _CFRuntimeRegisterClass() given inconsistent class '%s'.  Program will crash soon.", a3, a4, a5, a6, a7, a8, *(a1 + 8));
    return 0;
  }

  os_unfair_lock_lock_with_options();
  if (dword_1ED40C410[0] >= 1024)
  {
    CFLog(4, @"*** CoreFoundation class table full; registration failing for class '%s'.  Program will crash soon.", v9, v10, v11, v12, v13, v14, *(a1 + 8));
    os_unfair_lock_unlock(&__CFBigRuntimeFunnel);
    return 0;
  }

  v15 = dword_1ED40C410[0];
  v16 = dword_1ED40C410[0] >> 6;
  v17 = __CFRuntimeClassTables[dword_1ED40C410[0] >> 6];
  if (!v17)
  {
    v17 = malloc_type_calloc(0x40uLL, 8uLL, 0x2004093837F09uLL);
    v18 = malloc_type_malloc(0x200uLL, 0x100004000313F17uLL);
    v19 = 0;
    v20 = ((v15 & 0xFFFFFFC0) + 72);
    v21 = v18;
    do
    {
      atomic_store(0, &v18[v19]);
      ++v20;
      v21 += 8;
      v19 += 8;
    }

    while (v19 != 512);
    __dmb(0xBu);
    v22 = &__CFRuntimeClassTables[v16];
    *v22 = v17;
    v22[16] = v18;
    if (!v17)
    {
      _CFRuntimeRegisterClass_cold_1();
    }
  }

  v17[v15 & 0x3F] = a1;
  v23 = v15 + 72;
  *(__CFRuntimeClassTables[v16 + 16] + 8 * (v15 & 0x3F)) = qword_1ED40C0C8;
  atomic_fetch_add_explicit(dword_1ED40C410, 1u, memory_order_relaxed);
  os_unfair_lock_unlock(&__CFBigRuntimeFunnel);
  return v23;
}

uint64_t _CFBundleLoadExecutableAndReturnError(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v20[1] = *MEMORY[0x1E69E9840];
  __CFCheckCFInfoPACSignature(a1);
  v6 = _CFGetNonObjCTypeID(a1);
  if (v6 != 31)
  {
    _CFAssertMismatchedTypeID(0x1FuLL, v6);
  }

  v20[0] = 0;
  if (a3)
  {
    v7 = v20;
  }

  else
  {
    v7 = 0;
  }

  v8 = CFBundleCopyExecutableURL(a1);
  os_unfair_lock_lock((a1 + 96));
  if (!v8)
  {
    *(a1 + 48) = 7;
  }

  _CFBundleDlfcnCheckLoaded(a1);
  if (!*(a1 + 48))
  {
    v14 = _CFBundleGrokBinaryType(v8, v9, v10);
    *(a1 + 48) = v14;
    if (v14 != 1 && v14 != 6)
    {
      *(a1 + 64) = 1;
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v11 = *(a1 + 52);
  os_unfair_lock_unlock((a1 + 96));
  if (v11)
  {
    _CFPlugInUnscheduleForUnloading(a1);
    return 1;
  }

  v15 = *(a1 + 48);
  if (v15 <= 3)
  {
    if (v15)
    {
      if (v15 == 2)
      {
        if (_CFBundleLoadingLogger_onceToken != -1)
        {
          _CFBundleLoadExecutableAndReturnError_cold_3();
        }

        if (os_log_type_enabled(_CFBundleLoadingLogger__log, OS_LOG_TYPE_ERROR))
        {
          _CFBundleLoadExecutableAndReturnError_cold_4();
          if (a3)
          {
            goto LABEL_47;
          }

          return 0;
        }

LABEL_46:
        if (a3)
        {
LABEL_47:
          v17 = CFGetAllocator(a1);
          v18 = a1;
          v19 = 3584;
          goto LABEL_48;
        }

        return 0;
      }

      if (v15 != 3)
      {
LABEL_24:
        if (_CFBundleLoadingLogger_onceToken != -1)
        {
          _CFBundleLoadExecutableAndReturnError_cold_5();
        }

        if (os_log_type_enabled(_CFBundleLoadingLogger__log, OS_LOG_TYPE_ERROR))
        {
          _CFBundleLoadExecutableAndReturnError_cold_6();
          if (!a3)
          {
            return 0;
          }

          goto LABEL_47;
        }

        goto LABEL_46;
      }
    }

    goto LABEL_31;
  }

  if (v15 > 6)
  {
    if (v15 == 7)
    {
      if (_CFBundleLoadingLogger_onceToken != -1)
      {
        _CFBundleLoadExecutableAndReturnError_cold_1();
      }

      if (os_log_type_enabled(_CFBundleLoadingLogger__log, OS_LOG_TYPE_ERROR))
      {
        _CFBundleLoadExecutableAndReturnError_cold_2();
        if (!a3)
        {
          return 0;
        }
      }

      else if (!a3)
      {
        return 0;
      }

      v17 = CFGetAllocator(a1);
      v18 = a1;
      v19 = 4;
LABEL_48:
      v20[0] = _CFBundleCreateErrorDebug(v17, v18, v19, 0);
      goto LABEL_49;
    }

    if (v15 != 8)
    {
      goto LABEL_24;
    }

LABEL_31:
    Bundle = _CFBundleDlfcnLoadBundle(a1, v4, v7);
    goto LABEL_32;
  }

  if (v15 != 4)
  {
    if (v15 != 6)
    {
      goto LABEL_24;
    }

    goto LABEL_31;
  }

  Bundle = _CFBundleDlfcnLoadFramework(a1, v7);
LABEL_32:
  v12 = Bundle;
  if (!Bundle)
  {
    if (!a3)
    {
      return 0;
    }

LABEL_49:
    v12 = 0;
    *a3 = v20[0];
    return v12;
  }

  if (*(a1 + 72))
  {
    _CFPlugInHandleDynamicRegistration(a1);
  }

  return v12;
}

void *__cdecl CFBundleGetDataPointerForName(CFBundleRef bundle, CFStringRef symbolName)
{
  __CFCheckCFInfoPACSignature(bundle);
  v4 = _CFGetNonObjCTypeID(bundle);
  if (v4 != 31)
  {
    _CFAssertMismatchedTypeID(0x1FuLL, v4);
  }

  if (!CFBundleLoadExecutable(bundle))
  {
    return 0;
  }

  return _CFBundleDlfcnGetSymbolByNameWithSearch(bundle, symbolName, 0);
}

uint64_t _CFBundleDlfcnCheckLoaded(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner((a1 + 96));
  result = *(a1 + 52);
  if (!*(a1 + 52))
  {
    v3 = CFBundleCopyExecutableURL(a1);
    if (v3)
    {
      v4 = v3;
      if (CFURLGetFileSystemRepresentation(v3, 1u, buffer, 1026))
      {
        v5 = dlopen(buffer, 277);
        if (v5)
        {
          if (!*(a1 + 56))
          {
            *(a1 + 56) = v5;
            v7 = _CFBundleLoadingLogger(v5, v6);
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
            {
              v9 = *(a1 + 56);
              v10 = 138544130;
              v11 = a1;
              v12 = 2082;
              v13 = buffer;
              v14 = 1024;
              v15 = 277;
              v16 = 2048;
              v17 = v9;
              _os_log_debug_impl(&dword_1830E6000, v7, OS_LOG_TYPE_DEBUG, "dlfcn check load bundle %{public}@, dlopen of %{public}s mode 0x%x getting handle %p", &v10, 0x26u);
            }
          }

          *(a1 + 52) = 1;
        }

        else
        {
          v8 = _CFBundleLoadingLogger(0, v6);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            _CFBundleDlfcnCheckLoaded_cold_1();
          }
        }
      }

      CFRelease(v4);
    }

    return *(a1 + 52);
  }

  return result;
}

uint64_t _CFPlugInUnscheduleForUnloading(const void *a1)
{
  os_unfair_recursive_lock_lock_with_options();
  if (_plugInsToUnload)
  {
    CFSetRemoveValue(_plugInsToUnload, a1);
  }

  if (_CFBundlePluginLogger_onceToken != -1)
  {
    _CFPlugInUnscheduleForUnloading_cold_1();
  }

  if (os_log_type_enabled(_CFBundlePluginLogger__log, OS_LOG_TYPE_DEBUG))
  {
    _CFPlugInUnscheduleForUnloading_cold_2();
  }

  return os_unfair_recursive_lock_unlock();
}

void *_CFBundleDlfcnGetSymbolByNameWithSearch(uint64_t a1, const __CFString *a2, int a3)
{
  v23 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 96));
  if (!CFStringGetCString(a2, buffer, 1024, 0x8000100u) || (v6 = *(a1 + 56)) == 0)
  {
LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v7 = dlsym(v6, buffer);
  v9 = v7;
  if (a3 && !v7)
  {
    v7 = dlsym(0xFFFFFFFFFFFFFFFELL, buffer);
    v9 = v7;
  }

  v10 = _CFBundleLoadingLogger(v7, v8);
  v11 = v10;
  if (!v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _CFBundleDlfcnGetSymbolByNameWithSearch_cold_1();
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 56);
    v14 = 138544130;
    v15 = a1;
    v16 = 2048;
    v17 = v12;
    v18 = 2048;
    v19 = v9;
    v20 = 2082;
    v21 = buffer;
    _os_log_debug_impl(&dword_1830E6000, v11, OS_LOG_TYPE_DEBUG, "bundle %{public}@ handle %p dlsym returns symbol %p for %{public}s", &v14, 0x2Au);
  }

LABEL_12:
  os_unfair_lock_unlock((a1 + 96));
  return v9;
}

CFIndex CFStringGetRangeOfCharacterClusterAtIndex(__CFString *a1, CFIndex a2, uint64_t a3)
{
  v177 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(a1);
  if (a3 == 1)
  {
    v7 = 110;
  }

  else
  {
    v7 = 8;
  }

  if (Length <= a2)
  {
    return -1;
  }

  v8 = Length;
  v176 = 0;
  v174 = 0u;
  v175 = 0u;
  v172 = 0u;
  *theString = 0u;
  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  v166 = 0u;
  v167 = 0u;
  *buffer = 0u;
  if (CF_IS_OBJC(7uLL, a1) || (v9 = atomic_load(&a1->info), (v9 & 0x10) != 0))
  {
    BitmapPtrForPlane = CFUniCharGetBitmapPtrForPlane(v7, 0);
    v11 = CFUniCharGetBitmapPtrForPlane(5u, 0);
    if (!CFStringGetRangeOfCharacterClusterAtIndex_combClassBMP)
    {
      CFStringGetRangeOfCharacterClusterAtIndex_combClassBMP = CFUniCharGetUnicodePropertyDataForPlane(0, 0);
    }

    theString[0] = a1;
    *(&v174 + 1) = 0;
    *&v175 = v8;
    CharactersPtr = CFStringGetCharactersPtr(a1);
    CStringPtrInternal = 0;
    theString[1] = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtrInternal = _CFStringGetCStringPtrInternal(a1, 0x600u, 1, 1);
    }

    *(&v175 + 1) = 0;
    v176 = 0;
    *&v174 = CStringPtrInternal;
    v14 = BitmapPtrForPlane;
    ComposedRange = _CFStringInlineBufferGetComposedRange(buffer, a2, a3, BitmapPtrForPlane, v7);
    v17 = ComposedRange;
    v18 = v16;
    v153 = v7;
    v154 = a3;
    if (a3 > 2)
    {
      a2 = ComposedRange;
      goto LABEL_209;
    }

    if (ComposedRange < 0 || (v19 = v175, v175 <= ComposedRange))
    {
      v21 = v16;
      LOWORD(v22) = 0;
      v23 = v11;
    }

    else
    {
      if (theString[1])
      {
        v20 = *(&theString[1]->isa + *(&v174 + 1) + ComposedRange);
      }

      else if (v174)
      {
        v20 = *(v174 + *(&v174 + 1) + ComposedRange);
      }

      else
      {
        if (v176 <= ComposedRange || (v24 = *(&v175 + 1), *(&v175 + 1) > ComposedRange))
        {
          v25 = ComposedRange - 4;
          if (ComposedRange < 4)
          {
            v25 = 0;
          }

          if (v25 + 64 < v175)
          {
            v19 = v25 + 64;
          }

          *(&v175 + 1) = v25;
          v176 = v19;
          v178.length = v19 - v25;
          v178.location = *(&v174 + 1) + v25;
          CFStringGetCharacters(theString[0], v178, buffer);
          v24 = *(&v175 + 1);
        }

        v20 = buffer[v17 - v24];
      }

      v22 = v20;
      if (v18 >= 2 && (v20 & 0xFC00) == 0xD800 && (v26 = v17 + 1, v27 = v175, v175 > (v17 + 1)))
      {
        if (theString[1])
        {
          v28 = *(&theString[1]->isa + *(&v174 + 1) + v26);
        }

        else if (v174)
        {
          v28 = *(v174 + *(&v174 + 1) + v26);
        }

        else
        {
          if (v176 <= v26 || (v126 = *(&v175 + 1), *(&v175 + 1) > v26))
          {
            v127 = v17 - 3;
            if (v17 < 3)
            {
              v127 = 0;
            }

            if (v127 + 64 < v175)
            {
              v27 = v127 + 64;
            }

            *(&v175 + 1) = v127;
            v176 = v27;
            v188.length = v27 - v127;
            v188.location = *(&v174 + 1) + v127;
            CFStringGetCharacters(theString[0], v188, buffer);
            v126 = *(&v175 + 1);
          }

          v28 = buffer[v26 - v126];
        }

        v21 = v18;
        v23 = v11;
        if (v28 >> 10 == 55)
        {
          v22 = (v22 << 10) + v28 - 56613888;
          v23 = CFUniCharGetBitmapPtrForPlane(5u, HIWORD(v22));
        }
      }

      else
      {
        v21 = v18;
        v23 = v11;
      }

      if (v22 == 8205)
      {
LABEL_41:
        v29 = v17;
        while (1)
        {
          a2 = v29;
          v30 = v29 - 2;
          if (v29 < 2)
          {
LABEL_122:
            v18 = v17 - a2 + v21;
            v57 = v21 + v17;
            if (v18 < 2 || v57 >= v8)
            {
LABEL_208:
              v14 = BitmapPtrForPlane;
LABEL_209:
              v83 = a2 + v18;
              if (a2 + v18 <= 5)
              {
                v84 = 5;
              }

              else
              {
                v84 = a2 + v18;
              }

              v85 = v84 - 5;
              if (v84 - 5 <= a2)
              {
                v150 = v18;
                v86 = a2 + 6;
                v87 = &v163 + 6;
                v88 = 5 - v84;
                v89 = v84 + 59;
                v90 = &__CFTranscodingHintLength;
                while (1)
                {
                  v91 = v84 - 5;
                  v92 = v85 >= 4 ? 4 : v85;
                  v93 = v175;
                  if (v175 > v91)
                  {
                    if (theString[1])
                    {
                      v94 = *(theString[1] + *(&v174 + 1) + v84 - 5);
                    }

                    else if (v174)
                    {
                      v94 = *(v174 + *(&v174 + 1) + v84 - 5);
                    }

                    else
                    {
                      if (v176 <= v91 || (v95 = *(&v175 + 1), *(&v175 + 1) > v91))
                      {
                        v96 = -5 - v92;
                        v148 = v87;
                        v149 = a2;
                        v97 = v92 + v88;
                        v98 = v89 - v92;
                        v99 = v84 + v96;
                        v100 = v99 + 64;
                        if (v99 + 64 >= v175)
                        {
                          v100 = v175;
                        }

                        *(&v175 + 1) = v99;
                        v176 = v100;
                        if (v175 >= v98)
                        {
                          v93 = v98;
                        }

                        v187.location = v99 + *(&v174 + 1);
                        v187.length = v93 + v97;
                        v101 = v90;
                        CFStringGetCharacters(theString[0], v187, buffer);
                        v90 = v101;
                        v87 = v148;
                        a2 = v149;
                        v95 = *(&v175 + 1);
                      }

                      v94 = *&v87[2 * v84 + -2 * v95];
                    }

                    if ((v94 & 0xFFF0) == 0xF860)
                    {
                      v102 = v90[v94 - 63584];
                      if (v84 + v102 - 4 >= v83)
                      {
                        break;
                      }
                    }
                  }

                  ++v85;
                  ++v84;
                  --v88;
                  ++v89;
                  if (v86 == v84)
                  {
                    v18 = v150;
                    v14 = BitmapPtrForPlane;
                    goto LABEL_234;
                  }
                }

                v107 = v102 + v84;
                v108 = v107 - 5;
                v18 = v150;
                v14 = BitmapPtrForPlane;
                if (v107 - 5 < v8)
                {
                  a2 = v84 - 5;
                  v109 = v107 - 4;
                  v110 = v84 - 4;
                  while (v110 <= v108)
                  {
                    v111 = _CFStringInlineBufferGetComposedRange(buffer, v110, v154, BitmapPtrForPlane, v153);
                    v110 = v111 + v112;
                    if (v110 > v109)
                    {
                      v109 = v111;
                      break;
                    }
                  }

                  v18 = v109 - v84 + 5;
                }
              }

LABEL_234:
              if (v18 == 2)
              {
                if (!__CFStringIsRegionalIndicatorAtIndex(buffer, a2))
                {
                  goto LABEL_243;
                }

                v103 = v8;
                v104 = 0;
                do
                {
                  v105 = v104;
                  v106 = a2 + v104;
                  if (a2 + v104 < 2)
                  {
                    break;
                  }

                  v104 -= 2;
                }

                while (__CFStringIsRegionalIndicatorAtIndex(buffer, v105 - 2 + a2));
                if (a2 > v106 && (-v105 & 3) != 0)
                {
                  a2 -= 2;
                  v18 = 4;
                  v8 = v103;
                  goto LABEL_253;
                }

                v8 = v103;
                if (a2 + 4 > v103)
                {
LABEL_243:
                  v18 = 2;
                  goto LABEL_253;
                }

                if (__CFStringIsRegionalIndicatorAtIndex(buffer, a2 + 2))
                {
                  v18 = 4;
                }

                else
                {
                  v18 = 2;
                }
              }

LABEL_253:
              v113 = v154;
              if ((a2 & 0x8000000000000000) == 0 && a2 < v8)
              {
                v114 = v18;
                v163 = 0;
                v164 = 0;
                LongCharacterFromInlineBuffer = __CFStringGetLongCharacterFromInlineBuffer(buffer, v8, a2, &v163);
                v116 = 0;
                v117 = v164;
                while (LongCharacterFromInlineBuffer == 8205 || u_hasBinaryProperty(LongCharacterFromInlineBuffer, UCHAR_GRAPHEME_EXTEND) || u_hasBinaryProperty(LongCharacterFromInlineBuffer, UCHAR_EMOJI_MODIFIER) || u_getIntPropertyValue(LongCharacterFromInlineBuffer, UCHAR_GRAPHEME_CLUSTER_BREAK) == 10)
                {
                  v117 = v163;
                  if (!v163)
                  {
                    goto LABEL_327;
                  }

                  v116 += v164;
                  if (v116 >= 64)
                  {
                    goto LABEL_327;
                  }

                  LongCharacterFromInlineBuffer = __CFStringGetLongCharacterFromInlineBuffer(buffer, v8, v163 - 1, &v163);
                }

                v159 = xmmword_183306FB0;
                v160 = -1;
                v161 = -1;
                v162 = -1;
                v118 = v163;
                v119 = 0;
                if (__CFStringGetExtendedPictographicSequenceComponent(buffer, v8, v163, &v159))
                {
                  do
                  {
                    v118 = v159;
                    v119 += *(&v159 + 1);
                    v163 = v159 - 1;
                    v164 = 0;
                  }

                  while (v161 != -1 && __CFStringGetExtendedPictographicSequenceComponent(buffer, v8, v159 - 1, &v159));
                }

                if (v160 == -1 && v161 == -1)
                {
                  v124 = v119 == 0;
                  if (v116 < 1 || v119)
                  {
                    v155 = v163;
                    v125 = __CFStringGetLongCharacterFromInlineBuffer(buffer, v8, v163, &v163);
                    if (u_getIntPropertyValue(v125, UCHAR_GRAPHEME_CLUSTER_BREAK) == 11)
                    {
                      v122 = v163;
                      v121 = v164;
                    }

                    else
                    {
                      v121 = 0;
                      v122 = v155;
                    }

                    v123 = v116 > 0;
                    goto LABEL_291;
                  }
                }

                else
                {
                  v121 = 0;
                  v118 = v162;
                  v119 += v159 - v162;
                  v122 = v162 + 1;
                  v123 = v116 > 0;
                  v124 = v119 == 0;
                  if (v116 < 1 || v119)
                  {
LABEL_291:
                    if (v121 || !v124)
                    {
                      v158 = v123;
                      v156 = v122;
                      v152 = v121;
                      v128 = v122 + v121;
                      if (v124)
                      {
                        v129 = v128;
                      }

                      else
                      {
                        v129 = v118 + v119;
                      }

                      if (v124)
                      {
                        v119 = 0;
                        v130 = v128;
                      }

                      else
                      {
                        v130 = v118;
                      }

                      v163 = v129;
                      v164 = 0;
                      if (__CFStringGetExtendedPictographicSequenceComponent(buffer, v8, v129, &v159))
                      {
                        do
                        {
                          if (v119 >= 1 && v161 == -1)
                          {
                            break;
                          }

                          v119 += *(&v159 + 1);
                          v163 += *(&v159 + 1);
                        }

                        while ((__CFStringGetExtendedPictographicSequenceComponent(buffer, v8, v163, &v159) & 1) != 0);
                      }

                      v151 = v130;
                      if (v158)
                      {
                        v131 = v119 + v130;
                        v132 = v119 + v130 < v117 + v116;
                        if (v119 + v130 >= v117 + v116)
                        {
                          v133 = 0;
                        }

                        else
                        {
                          v133 = v116;
                        }

                        if (v132)
                        {
                          v131 = v117;
                        }

                        v134 = v131 + v133;
                        v163 = v131 + v133;
                        v164 = 0;
                      }

                      else
                      {
                        v134 = v163;
                        v133 = v164;
                      }

                      if (v134 < v8)
                      {
                        v135 = __CFStringGetLongCharacterFromInlineBuffer(buffer, v8, v134, &v163);
                        do
                        {
                          if (v135 != 8205 && !u_hasBinaryProperty(v135, UCHAR_GRAPHEME_EXTEND) && !u_hasBinaryProperty(v135, UCHAR_EMOJI_MODIFIER) && u_getIntPropertyValue(v135, UCHAR_GRAPHEME_CLUSTER_BREAK) != 10)
                          {
                            break;
                          }

                          v133 += v164;
                          v163 += v164;
                          v135 = __CFStringGetLongCharacterFromInlineBuffer(buffer, v8, v163, &v163);
                        }

                        while (v133 < 64);
                      }

                      v136 = v156;
                      if (v119 >= 1)
                      {
                        if (v152 <= 0)
                        {
                          v136 = v151;
                        }

                        v137 = a2 >= v136;
                        v138 = a2 + v114 <= v119 + (v152 & ~(v152 >> 63)) + (v133 & ~(v133 >> 63)) + v136;
                        if (v137 && v138)
                        {
                          v18 = v119 + (v152 & ~(v152 >> 63)) + (v133 & ~(v133 >> 63));
                        }

                        else
                        {
                          v18 = v114;
                        }

                        if (v137 && v138)
                        {
                          a2 = v136;
                        }

                        goto LABEL_328;
                      }
                    }
                  }
                }

LABEL_327:
                v18 = v114;
              }

LABEL_328:
              if (a2 >= 1 && v18 == 1)
              {
                v139 = v175;
                if (v175 <= a2)
                {
                  goto LABEL_341;
                }

                if (theString[1])
                {
                  v140 = theString[1] + *(&v174 + 1) + a2;
                  goto LABEL_333;
                }

                if (v174)
                {
                  goto LABEL_341;
                }

                if (v176 <= a2 || (v146 = *(&v175 + 1), *(&v175 + 1) > a2))
                {
                  v147 = a2 - 4;
                  if (a2 < 4)
                  {
                    v147 = 0;
                  }

                  if (v147 + 64 < v175)
                  {
                    v139 = v147 + 64;
                  }

                  *(&v175 + 1) = v147;
                  v176 = v139;
                  v190.length = v139 - v147;
                  v190.location = *(&v174 + 1) + v147;
                  CFStringGetCharacters(theString[0], v190, buffer);
                  v146 = *(&v175 + 1);
                }

                v140 = &buffer[a2 - v146];
LABEL_333:
                if (*v140 != 8205)
                {
LABEL_341:
                  v18 = 1;
                }

                else
                {
                  v141 = _CFStringInlineBufferGetComposedRange(buffer, a2 - 1, v113, v14, v153);
                  if (a2 == v141 + v142)
                  {
                    v18 = v142 + 1;
                  }

                  else
                  {
                    v18 = 1;
                  }

                  if (a2 == v141 + v142)
                  {
                    a2 = v141;
                  }
                }
              }

              v143 = a2 + v18;
              if (a2 + v18 < v8 && (v143 & 0x8000000000000000) == 0)
              {
                v144 = v175;
                if (v175 > v143 && !theString[1] && !v174 && (v176 <= v143 || *(&v175 + 1) > v143))
                {
                  v145 = v143 - 4;
                  if (v143 < 4)
                  {
                    v145 = 0;
                  }

                  if (v145 + 64 < v175)
                  {
                    v144 = v145 + 64;
                  }

                  *(&v175 + 1) = v145;
                  v176 = v144;
                  v189.length = v144 - v145;
                  v189.location = *(&v174 + 1) + v145;
                  CFStringGetCharacters(theString[0], v189, buffer);
                }
              }

              return a2;
            }

            while (2)
            {
              v59 = v57 - 1;
              if (v57 < 1 || (v60 = v175, v175 < v57))
              {
                LOWORD(v61) = 0;
                goto LABEL_130;
              }

              if (theString[1])
              {
                v62 = theString[1] + *(&v174 + 1) + v59;
              }

              else
              {
                if (v174)
                {
                  LOWORD(v61) = *(v174 + *(&v174 + 1) + v59);
                  goto LABEL_130;
                }

                if (v176 < v57 || (v75 = *(&v175 + 1), *(&v175 + 1) >= v57))
                {
                  v76 = v57 - 5;
                  if (v57 < 5)
                  {
                    v76 = 0;
                  }

                  if (v76 + 64 < v175)
                  {
                    v60 = v76 + 64;
                  }

                  *(&v175 + 1) = v76;
                  v176 = v60;
                  v184.length = v60 - v76;
                  v184.location = *(&v174 + 1) + v76;
                  CFStringGetCharacters(theString[0], v184, buffer);
                  v75 = *(&v175 + 1);
                }

                v62 = &buffer[v59 - v75];
              }

              v61 = *v62;
              if (v61 != 847 && v61 != 8205)
              {
LABEL_130:
                if (!CFStringGetRangeOfCharacterClusterAtIndex_combClassBMP || !*(CFStringGetRangeOfCharacterClusterAtIndex_combClassBMP + (v61 >> 8)) || *(CFStringGetRangeOfCharacterClusterAtIndex_combClassBMP + (*(CFStringGetRangeOfCharacterClusterAtIndex_combClassBMP + (v61 >> 8)) << 8) - 256 + v61 + 256) != 9 || v61 == 3021 && !_CFStringIsJoiningPulliAtIndex(buffer, v57 - 1, 0, v8))
                {
LABEL_207:
                  v18 = v57 - a2;
                  goto LABEL_208;
                }

                if (v57 < 0)
                {
LABEL_151:
                  LOWORD(v66) = 0;
                  goto LABEL_184;
                }
              }

              v64 = v175;
              if (v175 <= v57)
              {
                goto LABEL_151;
              }

              if (theString[1])
              {
                v65 = theString[1] + *(&v174 + 1) + v57;
                goto LABEL_147;
              }

              if (v174)
              {
                LOWORD(v66) = *(v174 + *(&v174 + 1) + v57);
                goto LABEL_154;
              }

              if (v176 <= v57 || (v73 = *(&v175 + 1), *(&v175 + 1) > v57))
              {
                v74 = v57 - 4;
                if (v57 < 4)
                {
                  v74 = 0;
                }

                if (v74 + 64 < v175)
                {
                  v64 = v74 + 64;
                }

                *(&v175 + 1) = v74;
                v176 = v64;
                v183.length = v64 - v74;
                v183.location = *(&v174 + 1) + v74;
                CFStringGetCharacters(theString[0], v183, buffer);
                v73 = *(&v175 + 1);
              }

              v65 = &buffer[v57 - v73];
LABEL_147:
              v66 = *v65;
              if (v66 != 8205)
              {
LABEL_154:
                v67 = v57;
                goto LABEL_155;
              }

              v67 = v57 + 1;
              v68 = v175;
              if (v175 <= v57 + 1)
              {
                LOWORD(v66) = 0;
                goto LABEL_183;
              }

              if (theString[1])
              {
                LOWORD(v66) = *(&theString[1]->isa + *(&v174 + 1) + v67);
              }

              else if (v174)
              {
                LOWORD(v66) = *(v174 + *(&v174 + 1) + v67);
              }

              else
              {
                if (v176 <= v67 || (v81 = *(&v175 + 1), *(&v175 + 1) > v67))
                {
                  v82 = v57 - 3;
                  if (v57 < 3)
                  {
                    v82 = 0;
                  }

                  if (v82 + 64 < v175)
                  {
                    v68 = v82 + 64;
                  }

                  *(&v175 + 1) = v82;
                  v176 = v68;
                  v186.length = v68 - v82;
                  v186.location = *(&v174 + 1) + v82;
                  CFStringGetCharacters(theString[0], v186, buffer);
                  v81 = *(&v175 + 1);
                }

                LOWORD(v66) = buffer[v67 - v81];
              }

LABEL_155:
              if (v66 >> 10 == 54)
              {
                v69 = v67 + 1;
                v70 = v175;
                if (v175 > v67 + 1)
                {
                  if (theString[1])
                  {
                    v71 = *(&theString[1]->isa + *(&v174 + 1) + v69);
                  }

                  else if (v174)
                  {
                    v71 = *(v174 + *(&v174 + 1) + v69);
                  }

                  else
                  {
                    if (v176 <= v69 || (v79 = *(&v175 + 1), *(&v175 + 1) > v69))
                    {
                      v80 = v67 - 3;
                      if (v67 < 3)
                      {
                        v80 = 0;
                      }

                      if (v80 + 64 < v175)
                      {
                        v70 = v80 + 64;
                      }

                      *(&v175 + 1) = v80;
                      v176 = v70;
                      v185.length = v70 - v80;
                      v185.location = *(&v174 + 1) + v80;
                      CFStringGetCharacters(theString[0], v185, buffer);
                      v79 = *(&v175 + 1);
                    }

                    v71 = buffer[v69 - v79];
                  }

                  if (v71 >> 10 == 55)
                  {
                    v66 = (v66 << 10) + v71 - 56613888;
                    v72 = CFUniCharGetBitmapPtrForPlane(5u, HIWORD(v66));
                    v57 = v67;
                    goto LABEL_185;
                  }

                  goto LABEL_183;
                }

                v57 = v67;
                v72 = v11;
              }

              else
              {
LABEL_183:
                v57 = v67;
LABEL_184:
                v72 = v11;
              }

LABEL_185:
              if (!v72)
              {
                goto LABEL_207;
              }

              if (((*(v72 + (v66 >> 3)) >> (v66 & 7)) & 1) == 0)
              {
                goto LABEL_207;
              }

              v77 = _CFStringInlineBufferGetComposedRange(buffer, v57, v154, BitmapPtrForPlane, v7);
              v57 = v77 + v78;
              if (v77 + v78 >= v8)
              {
                goto LABEL_207;
              }

              continue;
            }
          }

          v31 = v29 - 1;
          v32 = v175;
          if (v175 >= a2)
          {
            if (theString[1])
            {
              v34 = theString[1] + *(&v174 + 1) + v31;
            }

            else
            {
              if (v174)
              {
                LOWORD(v33) = *(v174 + *(&v174 + 1) + v31);
                goto LABEL_53;
              }

              if (v176 < a2 || (v46 = *(&v175 + 1), *(&v175 + 1) >= a2))
              {
                v47 = a2 - 5;
                if (a2 < 5)
                {
                  v47 = 0;
                }

                if (v47 + 64 < v175)
                {
                  v32 = v47 + 64;
                }

                *(&v175 + 1) = v47;
                v176 = v32;
                v179.length = v32 - v47;
                v179.location = *(&v174 + 1) + v47;
                CFStringGetCharacters(theString[0], v179, buffer);
                v46 = *(&v175 + 1);
              }

              v34 = &buffer[v31 - v46];
            }

            v33 = *v34;
            if (v33 == 847)
            {
              goto LABEL_71;
            }

            if (v33 == 3021)
            {
              if (!_CFStringIsJoiningPulliAtIndex(buffer, a2 - 1, 0, v8))
              {
                goto LABEL_122;
              }

              LOWORD(v33) = 3021;
            }
          }

          else
          {
            LOWORD(v33) = 0;
          }

LABEL_53:
          v35 = v33;
          v36 = CFStringGetRangeOfCharacterClusterAtIndex_combClassBMP;
          if (CFStringGetRangeOfCharacterClusterAtIndex_combClassBMP && *(CFStringGetRangeOfCharacterClusterAtIndex_combClassBMP + (v35 >> 8)) && *(CFStringGetRangeOfCharacterClusterAtIndex_combClassBMP + (*(CFStringGetRangeOfCharacterClusterAtIndex_combClassBMP + (v35 >> 8)) << 8) - 256 + v35 + 256) == 9)
          {
            goto LABEL_71;
          }

          if (v35 != 8205)
          {
            goto LABEL_122;
          }

          v37 = v175;
          if (v175 > v30)
          {
            if (theString[1])
            {
              v38 = theString[1] + *(&v174 + 1) + v30;
LABEL_60:
              v39 = *v38;
              if (v39 == 847)
              {
                v40 = 1;
                goto LABEL_69;
              }
            }

            else
            {
              if (!v174)
              {
                if (v176 <= v30 || (v48 = *(&v175 + 1), *(&v175 + 1) > v30))
                {
                  v49 = a2 - 6;
                  if (v30 < 4)
                  {
                    v49 = 0;
                  }

                  if (v49 + 64 < v175)
                  {
                    v37 = v49 + 64;
                  }

                  *(&v175 + 1) = v49;
                  v176 = v37;
                  v180.length = v37 - v49;
                  v180.location = *(&v174 + 1) + v49;
                  CFStringGetCharacters(theString[0], v180, buffer);
                  v48 = *(&v175 + 1);
                }

                v38 = &buffer[v30 - v48];
                goto LABEL_60;
              }

              LOWORD(v39) = *(v174 + *(&v174 + 1) + v30);
            }

            v41 = v39;
            v36 = CFStringGetRangeOfCharacterClusterAtIndex_combClassBMP;
            if (!CFStringGetRangeOfCharacterClusterAtIndex_combClassBMP)
            {
              goto LABEL_122;
            }

            goto LABEL_67;
          }

          v41 = 0;
          if (!CFStringGetRangeOfCharacterClusterAtIndex_combClassBMP)
          {
            goto LABEL_122;
          }

LABEL_67:
          if (!*(v36 + (v41 >> 8)))
          {
            goto LABEL_122;
          }

          v40 = *(v36 + (*(v36 + (v41 >> 8)) << 8) - 256 + v41 + 256) == 9;
LABEL_69:
          if (a2 == 2)
          {
            goto LABEL_122;
          }

          v31 = v30;
          if (!v40)
          {
            goto LABEL_122;
          }

LABEL_71:
          v42 = _CFStringInlineBufferGetComposedRange(buffer, v31 - 1, v154, BitmapPtrForPlane, v7);
          v29 = v42;
          if (v42 < 0 || (v43 = v175, v175 <= v42))
          {
            LOWORD(v44) = 0;
LABEL_76:
            v45 = v11;
            if (!v11)
            {
              goto LABEL_122;
            }

            goto LABEL_77;
          }

          if (theString[1])
          {
            LOWORD(v44) = *(&theString[1]->isa + *(&v174 + 1) + v42);
          }

          else if (v174)
          {
            LOWORD(v44) = *(v174 + *(&v174 + 1) + v42);
          }

          else
          {
            if (v176 <= v42 || (v50 = *(&v175 + 1), *(&v175 + 1) > v42))
            {
              v51 = v42 - 4;
              if (v42 < 4)
              {
                v51 = 0;
              }

              if (v51 + 64 < v175)
              {
                v43 = v51 + 64;
              }

              *(&v175 + 1) = v51;
              v176 = v43;
              v181.length = v43 - v51;
              v181.location = *(&v174 + 1) + v51;
              CFStringGetCharacters(theString[0], v181, buffer);
              v50 = *(&v175 + 1);
            }

            LOWORD(v44) = buffer[v29 - v50];
          }

          if (v44 >> 10 != 55)
          {
            goto LABEL_76;
          }

          if (!v29)
          {
            goto LABEL_76;
          }

          v52 = v175;
          if (v175 < v29)
          {
            goto LABEL_76;
          }

          v53 = v29 - 1;
          if (theString[1])
          {
            v54 = *(&theString[1]->isa + *(&v174 + 1) + v53);
          }

          else if (v174)
          {
            v54 = *(v174 + *(&v174 + 1) + v53);
          }

          else
          {
            if (v176 < v29 || (v55 = *(&v175 + 1), *(&v175 + 1) >= v29))
            {
              v56 = v29 - 5;
              if (v29 < 5)
              {
                v56 = 0;
              }

              if (v56 + 64 < v175)
              {
                v52 = v56 + 64;
              }

              *(&v175 + 1) = v56;
              v176 = v52;
              v182.length = v52 - v56;
              v182.location = *(&v174 + 1) + v56;
              CFStringGetCharacters(theString[0], v182, buffer);
              v53 = v29 - 1;
              v55 = *(&v175 + 1);
            }

            v54 = buffer[v53 - v55];
          }

          if (v54 >> 10 != 54)
          {
            goto LABEL_76;
          }

          v44 = (v44 << 10) + v54 - 56613888;
          v29 = v53;
          v45 = CFUniCharGetBitmapPtrForPlane(5u, HIWORD(v44));
          if (!v45)
          {
            goto LABEL_122;
          }

LABEL_77:
          if (((*(v45 + (v44 >> 3)) >> (v44 & 7)) & 1) == 0)
          {
            goto LABEL_122;
          }
        }
      }
    }

    if (!v23 || ((*(v23 + (v22 >> 3)) >> (v22 & 7)) & 1) == 0)
    {
      a2 = v17;
      v18 = v21;
      goto LABEL_209;
    }

    goto LABEL_41;
  }

  return a2;
}

CFURLRef _CFCreateContainerURLForSecurityApplicationIdentifierGroupIdentifierAndUser(const __CFString *a1, const void *a2, uint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  if (a1)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
    if (!CStringPtr)
    {
      FastestEncoding = CFStringGetFastestEncoding(a1);
      CStringPtr = buffer;
      if (!CFStringGetCString(a1, buffer, 1024, FastestEncoding))
      {
        CStringPtr = 0;
      }
    }
  }

  else
  {
    CStringPtr = 0;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = xpc_dictionary_create(0, 0, 0);
  current_persona = voucher_get_current_persona();
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 2;
  if (current_persona != -1)
  {
    kpersona_info();
  }

  container_query_create();
  container_query_set_class();
  if (CStringPtr)
  {
    v8 = xpc_string_create(CStringPtr);
    container_query_set_identifiers();
    xpc_release(v8);
  }

  container_query_set_persona_unique_string();
  container_query_operation_set_flags();
  container_query_set_uid();
  if ((container_query_iterate_results_sync() & 1) == 0)
  {
    container_query_get_last_error();
    v9 = container_error_copy_unlocalized_description();
    v11 = _CFOSLog(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      _CFCreateContainerURLForSecurityApplicationIdentifierGroupIdentifierAndUser_cold_1(CStringPtr, v9, v11);
    }

    free(v9);
    xpc_release(v18[3]);
    v18[3] = 0;
  }

  container_query_free();
  v12 = v18[3];
  _Block_object_dispose(&v17, 8);
  if (!v12)
  {
    return 0;
  }

  v13 = _CFXPCCreateCFObjectFromXPCObject(v12);
  xpc_release(v12);
  if (!v13)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v13, a2);
  if (Value)
  {
    v15 = CFURLCreateWithFileSystemPath(&__kCFAllocatorSystemDefault, Value, kCFURLPOSIXPathStyle, 1u);
  }

  else
  {
    v15 = 0;
  }

  CFRelease(v13);
  return v15;
}

void sub_183171888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __NSMFAIsHFA_arm64(uint64_t a1, _BYTE *a2, unint64_t *a3)
{
  if (!a1)
  {
    return 1;
  }

  v5 = a1;
  while (1)
  {
    result = 0;
    v7 = *(v5 + 36);
    v8 = v7 - 68;
    if ((v7 - 68) > 0x37)
    {
      break;
    }

    if (((1 << v8) & 0x500000001) != 0)
    {
      v9 = *a3 + 1;
      *a3 = v9;
      if (v9 > 4)
      {
        return 0;
      }

      if (*a2)
      {
        if (*a2 != v7)
        {
          return 0;
        }
      }

      else
      {
        *a2 = v7;
      }
    }

    else
    {
      if (((1 << v8) & 0x80000000800000) == 0)
      {
        return result;
      }

      if ((__NSMFAIsHFA_arm64(*v5, a2, a3) & 1) == 0)
      {
        return 0;
      }
    }

    v5 = *(v5 + 8);
    if (!v5)
    {
      return 1;
    }
  }

  return result;
}

uint64_t *copyMemStateToFrameState(uint64_t *result)
{
  if (result)
  {
    v1 = result;
    do
    {
      v1[3] = v1[2];
      result = *v1;
      if (*v1)
      {
        result = copyMemStateToFrameState(result);
      }

      v1 = v1[1];
    }

    while (v1);
  }

  return result;
}

uint64_t __NSMFASetOffsetsForCompositeElements_arm64(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 20) + a2;
      *(v3 + 24) = *(v3 + 16);
      *(v3 + 28) = v4;
      if ((*(v3 + 35) & 0xC) != 0)
      {
        result = __NSMFASetOffsetsForCompositeElements_arm64(*v3, a2);
      }

      v3 = *(v3 + 8);
    }

    while (v3);
  }

  return result;
}

void populateErrorReply(const char *a1, xpc_object_t xdict, unsigned int a3)
{
  if (!xdict)
  {
    populateErrorReply_cold_1();
  }

  xpc_dictionary_set_value(xdict, "CFPreferencesPropertyList", 0);
  xpc_dictionary_set_string(xdict, "CFPreferencesErrorDescription", a1);

  xpc_dictionary_set_int64(xdict, "CFPreferencesErrorType", a3);
}

const char *_CFBundleCopyLoadedImagePathForPointer(uint64_t a1)
{
  v1 = dyld_image_path_containing_address();
  v2 = _CFBundleNormalizedPath(v1);
  if (v2)
  {
    v2 = CFStringCreateWithFileSystemRepresentation(&__kCFAllocatorSystemDefault, v2);
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  v5 = _CFBundleLoadingLogger(v2, v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    _CFBundleCopyLoadedImagePathForPointer_cold_1();
  }

  return v4;
}

CFURLRef CFURLCreateFileReferenceURL(CFAllocatorRef allocator, CFURLRef url, CFErrorRef *error)
{
  v33 = *MEMORY[0x1E69E9840];
  if (url)
  {
    v5 = CFURLCopyAbsoluteURL(url);
    if (v5)
    {
      v6 = v5;
      v31 = 0;
      if (_CFURLHasFileURLScheme(v5, &v31))
      {
        v13 = CFURLCopyPath(v6);
        v14 = CFURLCopyNetLocation(v6);
        v15 = CFURLCopyResourceSpecifier(v6);
        if (v13)
        {
          if (CFStringHasPrefix(v13, @"/.file/id="))
          {
            result.location = 0;
            result.length = 0;
            v34.length = CFStringGetLength(v13) - 10;
            v34.location = 10;
            if (!CFStringFindWithOptions(v13, @"/", v34, 0, &result) || (location = result.location, location == CFStringGetLength(v13) - 1))
            {
              ResolveFlags = _CFURLGetQueryResolveFlags(v6);
              goto LABEL_16;
            }
          }

          ResolveFlags = [(__CFString *)v13 _pathResolveFlags];
          CFRelease(v13);
        }

        else
        {
          ResolveFlags = [0 _pathResolveFlags];
        }

        v13 = _CFURLCopyFileReferenceURLPath(v6, error);
        if (!v13)
        {
          v18 = 0;
          if (!v14)
          {
LABEL_33:
            if (v15)
            {
              CFRelease(v15);
            }

            goto LABEL_39;
          }

LABEL_32:
          CFRelease(v14);
          goto LABEL_33;
        }

LABEL_16:
        Length = CFStringGetLength(v13);
        v20 = CFStringGetCharacterAtIndex(v13, Length - 1) == 47;
        if (ResolveFlags || v15 || v14 && !CFEqual(v14, @"localhost"))
        {
          v24 = &stru_1EF068AA8;
          if (v14)
          {
            v25 = v14;
          }

          else
          {
            v25 = &stru_1EF068AA8;
          }

          if (v15)
          {
            v24 = v15;
          }

          v26 = CFStringCreateWithFormat(allocator, 0, @"file://%@%@%@", v25, v13, v24);
          v27 = v26;
          v28 = v26;
          if (ResolveFlags)
          {
            v28 = [(__CFString *)v26 _urlStringByInsertingQueryResolveFlags:ResolveFlags];
          }

          v18 = CFURLCreateWithString(allocator, v28, 0);
          v23 = v27;
        }

        else
        {
          v21 = URLPathToPOSIXPath(v13, allocator, v6[5], 1);
          if (!v21)
          {
            v18 = 0;
LABEL_31:
            CFRelease(v13);
            if (!v14)
            {
              goto LABEL_33;
            }

            goto LABEL_32;
          }

          v22 = v21;
          v18 = _CFURLCreateWithFileSystemPath(allocator, v21, 0, v20, 0);
          v23 = v22;
        }

        CFRelease(v23);
        goto LABEL_31;
      }

      if (v31)
      {
        if (error)
        {
LABEL_12:
          v18 = 0;
          *error = CFErrorCreate(0, @"NSCocoaErrorDomain", 262, 0);
LABEL_39:
          CFRelease(v6);
          return v18;
        }
      }

      else
      {
        CFLog(4, @"CFURLCreateFileReferenceURL failed because it was passed a URL which has no scheme", v7, v8, v9, v10, v11, v12, v30);
        if (error)
        {
          goto LABEL_12;
        }
      }

      v18 = 0;
      goto LABEL_39;
    }
  }

  return 0;
}

CFStringRef CFURLCopyNetLocation(CFURLRef anURL)
{
  v16 = *MEMORY[0x1E69E9840];
  while (1)
  {
    if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
    {
      CFURLCopyNetLocation_cold_1();
    }

    if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
    {
      break;
    }

    if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, anURL))
    {
      anURL = [(__CFURL *)anURL _cfurl];
    }

    v2 = *(anURL + 4);
    if ((v2 & 0x1E) != 0)
    {
      v4 = _netLocationRange(*(anURL + 4), anURL + 56);
      v6 = v5;
      if ((v2 & 0x10000) == 0 && (v7 = *(anURL + 5)) != 0 && (*(v7 + 16) & 0x1E) != 0)
      {
        result.location = 0;
        result.length = 0;
        v8 = *(v7 + 8);
        v9 = CFStringGetLength(v8) - v4;
        v18.location = v4;
        v18.length = v9;
        if (CFStringFindWithOptions(v8, @"/", v18, 0, &result))
        {
          v9 = result.location - v4;
        }

        v10 = CFGetAllocator(anURL);
        v19.location = v4;
        v19.length = v9;
        return CFStringCreateWithSubstring(v10, v8, v19);
      }

      else
      {
        v12 = CFGetAllocator(anURL);
        v13 = atomic_load(anURL + 3);
        v14.location = v4;
        v14.length = v6;

        return CFStringCreateWithSubstring(v12, v13, v14);
      }
    }

    anURL = *(anURL + 4);
    if (!anURL)
    {
      return 0;
    }
  }

  if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, anURL))
  {
    anURL = [(__CFURL *)anURL _cfurl];
  }

  v3 = [(__CFURL *)anURL _netLocation];

  return v3;
}

CFStringRef CFURLCopyResourceSpecifier(CFURLRef anURL)
{
  v42 = *MEMORY[0x1E69E9840];
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLCopyResourceSpecifier_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, anURL))
    {
      anURL = [(__CFURL *)anURL _cfurl];
    }

    v2 = [(__CFURL *)anURL _cfurlResourceSpecifier];

    return v2;
  }

  if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, anURL))
  {
    anURL = [(__CFURL *)anURL _cfurl];
  }

  v4 = *(anURL + 4);
  if ((v4 & 0x4000) != 0)
  {
    v6 = 0;
    for (i = 256; i != 32; i >>= 1)
    {
      if ((i & v4) != 0)
      {
        v6 = i;
      }
    }

    if (!v6)
    {
      return 0;
    }

    v8 = CFGetAllocator(anURL);
    if (anURL && (v9 = *(anURL + 5)) != 0)
    {
      v10 = *(v9 + 16);
      v11 = *(v9 + 8);
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    v22 = *(anURL + 4);
    if ((v22 & 0x10000) == 0 && v6 != 512)
    {
      v23 = v6;
      while ((v23 & v10) == 0)
      {
        v23 *= 2;
        if (v23 == 512)
        {
          goto LABEL_35;
        }
      }

      v26 = v6;
      while (v26 >= 2)
      {
        v27 = (v10 & (v26 >> 1)) == 0;
        v26 >>= 1;
        if (!v27)
        {
          v40 = 0;
          _parseComponents(v11, *(anURL + 4), &v40, v41, &v39);
          v28 = v40;
          if ((v40 & v6) != 0)
          {
            if (v6)
            {
              v29 = 0;
            }

            else
            {
              LODWORD(v29) = 0;
              do
              {
                v30 = v6;
                v6 >>= 1;
                v29 = (v28 & 1) + v29;
                v28 >>= 1;
              }

              while ((v30 & 2) == 0);
            }

            v37 = *&v41[v29] - 1;
          }

          else
          {
            v37 = -2;
          }

          Length = CFStringGetLength(v11);
          v16 = CFGetAllocator(anURL);
          v15.length = Length - v37;
          v17 = v11;
          v15.location = v37;
          goto LABEL_54;
        }
      }

      if ((v22 & v6) != 0)
      {
        if (v6)
        {
          v34 = 0;
        }

        else
        {
          LODWORD(v34) = 0;
          do
          {
            v35 = v6;
            v6 >>= 1;
            v34 = (v22 & 1) + v34;
            v22 >>= 1;
          }

          while ((v35 & 2) == 0);
        }

        v36 = *(anURL + 2 * v34 + 7) - 1;
      }

      else
      {
        v36 = -2;
      }

      v15.length = CFStringGetLength(v11) - v36;
      v16 = v8;
      v17 = v11;
      v15.location = v36;
      goto LABEL_54;
    }

LABEL_35:
    if ((v22 & v6) != 0)
    {
      if (v6)
      {
        v24 = 0;
      }

      else
      {
        LODWORD(v24) = 0;
        do
        {
          v25 = v6;
          v6 >>= 1;
          v24 = (v22 & 1) + v24;
          v22 >>= 1;
        }

        while ((v25 & 2) == 0);
      }

      v5 = *(anURL + 2 * v24 + 7) - 1;
    }

    else
    {
      v5 = -2;
    }

    v31 = (anURL + 24);
    v32 = atomic_load(v31);
    v33 = CFStringGetLength(v32);
    v17 = atomic_load(v31);
    v15.length = v33 - v5;
    v16 = v8;
  }

  else
  {
    if (v4)
    {
      v5 = *(anURL + 7) + *(anURL + 8) + 1;
    }

    else
    {
      v5 = 0;
    }

    v12 = *(anURL + 5);
    if (v12 && (v13 = *(v12 + 8)) != 0)
    {
      v14 = CFGetAllocator(anURL);
      v15.length = CFStringGetLength(v13) - v5;
      v16 = v14;
      v17 = v13;
    }

    else
    {
      v18 = CFGetAllocator(anURL);
      v19 = (anURL + 24);
      v20 = atomic_load(anURL + 3);
      v21 = atomic_load(v19);
      v15.length = CFStringGetLength(v21) - v5;
      v16 = v18;
      v17 = v20;
    }
  }

  v15.location = v5;
LABEL_54:

  return CFStringCreateWithSubstring(v16, v17, v15);
}

void __CFFinalizeRunLoop(unint64_t a1)
{
  if (a1 > 1)
  {

    _CFSetTSD(11, a1 - 1, __CFFinalizeRunLoop);
  }

  else
  {
    os_unfair_lock_lock(&loopsLock);
    v1 = __CFRunLoops;
    if (__CFRunLoops)
    {
      v2 = pthread_self();
      Value = CFDictionaryGetValue(v1, v2);
      if (Value)
      {
        v4 = Value;
        CFRetain(Value);
        v5 = __CFRunLoops;
        v6 = pthread_self();
        CFDictionaryRemoveValue(v5, v6);
        os_unfair_lock_unlock(&loopsLock);
        v7 = pthread_main_thread_np();
        if (_CFRunLoopGet0b(v7) != v4)
        {
          v8 = *(v4 + 2704);
          if (v8)
          {
            CFRelease(v8);
            *(v4 + 2704) = 0;
          }

          v9 = CFRunLoopCopyAllModes(v4);
          Count = CFArrayGetCount(v9);
          if (Count)
          {
            v11 = Count - 1;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v9, v11);
              __CFRunLoopRemoveAllSources(v4, ValueAtIndex);
              --v11;
            }

            while (v11 != -1);
          }

          __CFRunLoopRemoveAllSources(v4, @"kCFRunLoopCommonModes");
          CFRelease(v9);
        }

        atomic_store(1u, (v4 + 2712));

        CFRelease(v4);
        return;
      }

      v13 = __CFRunLoops;
      v14 = pthread_self();
      CFDictionaryRemoveValue(v13, v14);
    }

    os_unfair_lock_unlock(&loopsLock);
  }
}

const void *_CFRunLoopGet0b(_opaque_pthread_t *a1)
{
  v1 = a1;
  if (pthread_equal(a1, 0))
  {
    v1 = pthread_main_thread_np();
  }

  os_unfair_lock_lock(&loopsLock);
  if (__CFRunLoops)
  {
    Value = CFDictionaryGetValue(__CFRunLoops, v1);
  }

  else
  {
    Value = 0;
  }

  os_unfair_lock_unlock(&loopsLock);
  return Value;
}

CFStringRef _CFURLCopyFileReferenceURLPath(const void *a1, CFErrorRef *a2)
{
  valuePtr[1] = *MEMORY[0x1E69E9840];
  v35 = 0;
  valuePtr[0] = 0;
  v4 = CFGetAllocator(a1);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___CFURLCopyFileReferenceURLPath_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v4;
  if (_CFURLCopyFileReferenceURLPath_onceToken != -1)
  {
    dispatch_once(&_CFURLCopyFileReferenceURLPath_onceToken, block);
  }

  v5 = CFURLCopyResourcePropertiesForKeys(a1, _CFURLCopyFileReferenceURLPath_sPropertyKeys, a2);
  if (v5)
  {
    v6 = v5;
    v31 = v4;
    Value = CFDictionaryGetValue(v5, @"NSURLIsDirectoryKey");
    if (Value == &__kCFBooleanTrue)
    {
      v9 = CFDictionaryGetValue(v6, @"_NSURLVolumeIDKey");
      v10 = 1;
    }

    else
    {
      v8 = CFDictionaryGetValue(v6, @"_NSURLVolumeIsHFSStandardKey");
      v9 = CFDictionaryGetValue(v6, @"_NSURLVolumeIDKey");
      if (v8 == &__kCFBooleanTrue)
      {
        v12 = CFDictionaryGetValue(v6, @"_NSURLParentDirectoryIDKey");
        v14 = CFDictionaryGetValue(v6, @"NSURLNameKey");
        v10 = 0;
        v15 = 0;
        v13 = 1;
LABEL_12:
        if (v14)
        {
          v15 = 1;
        }

        if (v9 && v12 && v15)
        {
          if (CFNumberGetValue(v9, kCFNumberLongLongType, valuePtr) && CFNumberGetValue(v12, kCFNumberLongLongType, &v35))
          {
            v16 = v35;
            if (v13)
            {
              v4 = v31;
              v17 = v31;
              v18 = v35;
              v16 = 0;
              v19 = v14;
              v20 = 0;
            }

            else
            {
              v4 = v31;
              v17 = v31;
              v18 = 0;
              v19 = 0;
              v20 = v10;
            }

            FileReferencePath = createFileReferencePath(v17, valuePtr[0], v18, v16, v19, v20);
            v11 = FileReferencePath;
            if (a2 && !FileReferencePath)
            {
              goto LABEL_47;
            }

            goto LABEL_54;
          }

          v11 = 0;
          if (a2)
          {
            *a2 = 0;
          }

LABEL_41:
          v4 = v31;
          goto LABEL_54;
        }

        propertyValueTypeRefPtr = 0;
        if (!CFURLCopyResourcePropertyForKey(a1, @"NSURLParentDirectoryURLKey", &propertyValueTypeRefPtr, a2))
        {
          v11 = 0;
          goto LABEL_41;
        }

        v4 = v31;
        if (!propertyValueTypeRefPtr)
        {
          v11 = 0;
          if (a2)
          {
LABEL_47:
            *a2 = 0;
          }

LABEL_54:
          CFRelease(v6);
          if (!a2)
          {
            return v11;
          }

          goto LABEL_55;
        }

        v21 = _CFURLCopyFileReferenceURLPath(propertyValueTypeRefPtr, a2);
        if (!v21)
        {
          v11 = 0;
LABEL_53:
          CFRelease(propertyValueTypeRefPtr);
          goto LABEL_54;
        }

        v22 = v21;
        cf = 0;
        Length = CFStringGetLength(v21);
        v24 = Length - 1;
        if (Length < 1)
        {
          if (a2)
          {
            v11 = 0;
            *a2 = 0;
LABEL_52:
            CFRelease(v22);
            goto LABEL_53;
          }
        }

        else if (CFURLCopyResourcePropertyForKey(a1, @"NSURLNameKey", &cf, a2))
        {
          CharacterAtIndex = CFStringGetCharacterAtIndex(v22, v24);
          v26 = @"%@/%@";
          if (Value == &__kCFBooleanTrue)
          {
            v26 = @"%@/%@/";
          }

          v27 = @"%@%@";
          if (Value == &__kCFBooleanTrue)
          {
            v27 = @"%@%@/";
          }

          if (CharacterAtIndex == 47)
          {
            v28 = CFStringCreateWithFormat(v31, 0, v27, v22, cf);
          }

          else
          {
            v28 = CFStringCreateWithFormat(v31, 0, v26, v22, cf);
          }

          v11 = v28;
          if (a2 && !v28)
          {
            *a2 = 0;
          }

          if (cf)
          {
            CFRelease(cf);
          }

          goto LABEL_52;
        }

        v11 = 0;
        goto LABEL_52;
      }

      v10 = 0;
    }

    v12 = CFDictionaryGetValue(v6, @"_NSURLFileIDKey");
    v13 = 0;
    v14 = 0;
    v15 = 1;
    goto LABEL_12;
  }

  v11 = 0;
  if (!a2)
  {
    return v11;
  }

LABEL_55:
  if (!v11 && !*a2)
  {
    *a2 = CFErrorCreate(v4, @"NSCocoaErrorDomain", 256, 0);
  }

  return v11;
}

CFArrayRef CFRunLoopCopyAllModes(CFRunLoopRef rl)
{
  __CFCheckCFInfoPACSignature(rl);
  v2 = _CFGetNonObjCTypeID(rl);
  if (v2 != 43)
  {
    _CFAssertMismatchedTypeID(0x2BuLL, v2);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  pthread_mutex_lock((rl + 16));
  Count = CFSetGetCount(*(rl + 333));
  Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, Count, &kCFTypeArrayCallBacks);
  CFSetApplyFunction(*(rl + 333), __CFRunLoopGetModeName, Mutable);
  pthread_mutex_unlock((rl + 16));
  return Mutable;
}

uint64_t __CFRunLoopRemoveAllSources(uint64_t a1, __CFString *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  pthread_mutex_lock((a1 + 16));
  if (a2 == @"kCFRunLoopCommonModes")
  {
    if (*(a1 + 2648))
    {
      v16 = *(a1 + 2640);
      if (v16)
      {
        Copy = CFSetCreateCopy(&__kCFAllocatorSystemDefault, v16);
        if (Copy)
        {
          v18 = Copy;
          CFSetApplyFunction(Copy, __CFRunLoopRemoveSourcesFromCommonMode, a1);
          v15 = v18;
LABEL_12:
          CFRelease(v15);
        }
      }
    }
  }

  else
  {
    v9 = __CFRunLoopCopyMode(a1, a2, 0, v4, v5, v6, v7, v8);
    if (v9)
    {
      v10 = v9;
      pthread_mutex_lock((v9 + 2));
      v11 = v10[12];
      if (v11)
      {
        v12 = CFSetCreateCopy(&__kCFAllocatorSystemDefault, v11);
        context = a1;
        v21 = a2;
        CFSetApplyFunction(v12, __CFRunLoopRemoveSourceFromMode, &context);
        CFRelease(v12);
      }

      v13 = v10[13];
      if (v13)
      {
        v14 = CFSetCreateCopy(&__kCFAllocatorSystemDefault, v13);
        context = a1;
        v21 = a2;
        CFSetApplyFunction(v14, __CFRunLoopRemoveSourceFromMode, &context);
        CFRelease(v14);
      }

      pthread_mutex_unlock((v10 + 2));
      v15 = v10;
      goto LABEL_12;
    }
  }

  return pthread_mutex_unlock((a1 + 16));
}

void *__CFRunLoopDeallocate(mach_port_context_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 2712);
  if (!atomic_load((a1 + 2712)))
  {
    __CFRunLoopDeallocate_cold_1();
  }

  kdebug_trace();
  atomic_store(0, v1);
  v4 = pthread_main_thread_np();
  v5 = _CFRunLoopGet0b(v4);
  if (v5 == a1)
  {
    __break(1u);
    goto LABEL_22;
  }

  v6 = atomic_load((a1 + 8));
  v7 = v6;
  do
  {
    atomic_compare_exchange_strong((a1 + 8), &v7, v6 | 4);
    v8 = v7 == v6;
    v6 = v7;
  }

  while (!v8);
  v9 = *(a1 + 2664);
  if (v9)
  {
    CFSetApplyFunction(v9, __CFRunLoopCleanseSources, a1);
    CFSetApplyFunction(*(a1 + 2664), __CFRunLoopDeallocateSources, a1);
    CFSetApplyFunction(*(a1 + 2664), __CFRunLoopDeallocateObservers, a1);
    CFSetApplyFunction(*(a1 + 2664), __CFRunLoopDeallocateTimers, a1);
  }

  pthread_mutex_lock((a1 + 16));
  v10 = *(a1 + 2672);
  if (v10)
  {
    do
    {
      v11 = *v10;
      CFRelease(v10[1]);
      _Block_release(v10[2]);
      free(v10);
      v10 = v11;
    }

    while (v11);
  }

  v12 = *(a1 + 2648);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 2640);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 2664);
  if (v14)
  {
    CFRelease(v14);
  }

  LODWORD(v1) = *(a1 + 80);
  LODWORD(v5) = mach_port_destruct(*MEMORY[0x1E69E9A60], v1, -1, a1);
  if (v5)
  {
LABEL_22:
    snprintf(__str, 0x100uLL, "*** Unable to destruct port. (0x%x, %d, %p) ***", v1, v5, a1);
    qword_1EA849A30 = __str;
    __break(1u);
  }

  *(a1 + 80) = 0;
  pthread_mutex_unlock((a1 + 16));
  pthread_mutex_destroy((a1 + 16));

  return memset((a1 + 16), 140, 0xA90uLL);
}

void __CFRunLoopCleanseSources(uint64_t a1, const void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 96);
  if (v4)
  {
    Count = CFSetGetCount(v4);
    v7 = (a1 + 104);
    v6 = *(a1 + 104);
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = (a1 + 104);
    v6 = *(a1 + 104);
    if (!v6)
    {
      return;
    }

    Count = 0;
  }

  v6 = CFSetGetCount(v6);
LABEL_7:
  v8 = v6 + Count;
  if (v6 + Count >= 257)
  {
    Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * v8, 0x80040B8603338uLL);
  }

  else
  {
    Typed = v16;
  }

  memset(v16, 0, 512);
  v10 = *(a1 + 96);
  if (v10)
  {
    CFSetGetValues(v10, Typed);
  }

  v11 = *v7;
  if (v11)
  {
    v12 = *(a1 + 96);
    if (v12)
    {
      v12 = CFSetGetCount(v12);
    }

    CFSetGetValues(v11, &Typed[v12]);
  }

  if (v8 >= 1)
  {
    v13 = Typed;
    do
    {
      v14 = *v13;
      pthread_mutex_lock((*v13 + 16));
      v15 = *(v14 + 12);
      if (v15)
      {
        CFBagRemoveValue(v15, a2);
      }

      pthread_mutex_unlock((v14 + 16));
      ++v13;
      --v8;
    }

    while (v8);
  }

  if (Typed != v16)
  {
    CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
  }
}

void __CFRunLoopDeallocateSources(uint64_t a1, const void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 96);
  if (v4)
  {
    Count = CFSetGetCount(v4);
    v7 = (a1 + 104);
    v6 = *(a1 + 104);
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = (a1 + 104);
    v6 = *(a1 + 104);
    if (!v6)
    {
      return;
    }

    Count = 0;
  }

  v6 = CFSetGetCount(v6);
LABEL_7:
  v8 = v6 + Count;
  if (v6 + Count >= 257)
  {
    Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * v8, 0x80040B8603338uLL);
  }

  else
  {
    Typed = v24;
  }

  memset(v24, 0, 512);
  v10 = *(a1 + 96);
  if (v10)
  {
    CFSetGetValues(v10, Typed);
  }

  v11 = *v7;
  if (*v7)
  {
    v12 = *(a1 + 96);
    if (v12)
    {
      v12 = CFSetGetCount(v12);
    }

    CFSetGetValues(v11, &Typed[v12]);
  }

  if (v8 >= 1)
  {
    v13 = Typed;
    v14 = v8;
    do
    {
      v15 = *v13++;
      CFRetain(v15);
      --v14;
    }

    while (v14);
  }

  v16 = *(a1 + 96);
  if (v16)
  {
    CFSetRemoveAllValues(v16);
  }

  if (*v7)
  {
    CFSetRemoveAllValues(*v7);
  }

  if (v8 >= 1)
  {
    v17 = MEMORY[0x1E69E9A60];
    v18 = Typed;
    do
    {
      v19 = *v18;
      pthread_mutex_lock((*v18 + 16));
      v20 = *(v19 + 12);
      if (v20)
      {
        CFBagRemoveValue(v20, a2);
      }

      pthread_mutex_unlock((v19 + 16));
      v21 = *(v19 + 13);
      if (v21 == 1)
      {
        v23 = (*(v19 + 20))(*(v19 + 14));
        if (v23)
        {
          mach_port_extract_member(*v17, v23, *(a1 + 136));
        }
      }

      else if (!v21)
      {
        v22 = *(v19 + 21);
        if (v22)
        {
          v22(*(v19 + 14), a2, *(a1 + 80));
        }
      }

      CFRelease(v19);
      ++v18;
      --v8;
    }

    while (v8);
  }

  if (Typed != v24)
  {
    CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
  }
}

void __CFRunLoopDeallocateObservers(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 112);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 257)
    {
      Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * Count, 0x80040B8603338uLL);
    }

    else
    {
      Typed = v10;
    }

    memset(v10, 0, 512);
    v12.location = 0;
    v12.length = Count;
    CFArrayGetValues(*(a1 + 112), v12, Typed);
    if (Count < 1)
    {
      CFArrayRemoveAllValues(*(a1 + 112));
    }

    else
    {
      v5 = Typed;
      v6 = Count;
      do
      {
        v7 = *v5++;
        CFRetain(v7);
        --v6;
      }

      while (v6);
      CFArrayRemoveAllValues(*(a1 + 112));
      v8 = Typed;
      do
      {
        __CFRunLoopObserverCancel(*v8);
        v9 = *v8++;
        CFRelease(v9);
        --Count;
      }

      while (Count);
    }

    if (Typed != v10)
    {
      CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
    }
  }
}

void __CFRunLoopDeallocateTimers(uint64_t a1, void *a2)
{
  v3 = *(a1 + 120);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count)
    {
      v8.length = Count;
      v8.location = 0;
      CFArrayApplyFunction(*(a1 + 120), v8, __CFRunLoopKillOneTimer, a2);
      v6 = *(a1 + 120);

      CFArrayRemoveAllValues(v6);
    }
  }
}

__n128 __CFRunLoopModeDeallocate(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 112);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 120);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 128);
  if (v6)
  {
    CFRelease(v6);
  }

  CFRelease(*(a1 + 80));
  v7 = mach_port_mod_refs(*MEMORY[0x1E69E9A60], *(a1 + 136), 3u, -1);
  if (v7)
  {
    v8 = v7;
    mach_error_string(v7);
    CFLog(3, @"error (%d - %s) while trying to free port set: %d", v9, v10, v11, v12, v13, v14, v8);
  }

  v15 = *(a1 + 152);
  if (v15)
  {
    dispatch_source_cancel(v15);
    dispatch_release(*(a1 + 152));
  }

  v16 = *(a1 + 160);
  if (v16)
  {
    dispatch_release(v16);
  }

  if (*(a1 + 172))
  {
    mk_timer_destroy();
  }

  pthread_mutex_destroy((a1 + 16));
  result.n128_u64[0] = 0x7C7C7C7C7C7C7C7CLL;
  result.n128_u64[1] = 0x7C7C7C7C7C7C7C7CLL;
  *(a1 + 16) = result;
  *(a1 + 32) = result;
  *(a1 + 48) = result;
  *(a1 + 64) = result;
  *(a1 + 80) = result;
  *(a1 + 96) = result;
  *(a1 + 112) = result;
  *(a1 + 128) = result;
  *(a1 + 144) = result;
  *(a1 + 160) = result;
  *(a1 + 176) = result;
  *(a1 + 192) = 0x7C7C7C7C7C7C7C7CLL;
  return result;
}

uint64_t _CFStringInlineBufferGetComposedRange(UniChar *buffer, int64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v7 = a2;
  v9 = a2 + 1;
  if (a2 < 0)
  {
    goto LABEL_163;
  }

  v10 = *(buffer + 20);
  if (v10 <= a2)
  {
    v13 = 0;
LABEL_6:
    BitmapPtrForPlane = a4;
    goto LABEL_7;
  }

  v11 = *(buffer + 17);
  if (v11)
  {
    v12 = *(v11 + 2 * *(buffer + 19) + 2 * a2);
  }

  else
  {
    v30 = *(buffer + 18);
    if (v30)
    {
      v12 = *(v30 + *(buffer + 19) + a2);
    }

    else
    {
      if (*(buffer + 22) <= a2 || (v31 = *(buffer + 21), v31 > a2))
      {
        v32 = a2 - 4;
        if (a2 < 4)
        {
          v32 = 0;
        }

        if (v32 + 64 < v10)
        {
          v10 = v32 + 64;
        }

        *(buffer + 21) = v32;
        *(buffer + 22) = v10;
        v98.length = v10 - v32;
        v98.location = *(buffer + 19) + v32;
        CFStringGetCharacters(*(buffer + 16), v98, buffer);
        v31 = *(buffer + 21);
      }

      v12 = buffer[v7 - v31];
    }
  }

  v13 = v12;
  if (a3 == 4 && ((v12 - 6480) >> 5) > 0x75Eu)
  {
    goto LABEL_67;
  }

  if (v12 >> 10 != 54)
  {
    goto LABEL_6;
  }

  v35 = *(buffer + 20);
  if (v35 <= v9)
  {
    goto LABEL_6;
  }

  v36 = *(buffer + 17);
  if (v36)
  {
    v37 = *(v36 + 2 * *(buffer + 19) + 2 * v9);
  }

  else
  {
    v92 = *(buffer + 18);
    if (v92)
    {
      v37 = *(v92 + *(buffer + 19) + v9);
    }

    else
    {
      if (*(buffer + 22) <= v9 || (v93 = *(buffer + 21), v93 > v9))
      {
        v94 = v7 - 3;
        if (v9 < 4)
        {
          v94 = 0;
        }

        if (v94 + 64 < v35)
        {
          v35 = v94 + 64;
        }

        *(buffer + 21) = v94;
        *(buffer + 22) = v35;
        v103.length = v35 - v94;
        v103.location = *(buffer + 19) + v94;
        CFStringGetCharacters(*(buffer + 16), v103, buffer);
        v93 = *(buffer + 21);
      }

      v37 = buffer[v9 - v93];
    }
  }

  BitmapPtrForPlane = a4;
  if (v37 >> 10 == 55)
  {
    v9 = v7 + 2;
    v13 = (v13 << 10) + v37 - 56613888;
    BitmapPtrForPlane = CFUniCharGetBitmapPtrForPlane(a5, HIWORD(v13));
  }

LABEL_7:
  if (v7)
  {
    while (1)
    {
      if (a3 == 4 && (v13 - 1328) >> 5 < 0xA1)
      {
        goto LABEL_67;
      }

      if (HIWORD(v13))
      {
        goto LABEL_30;
      }

      if ((v13 & 0xFC00) != 0xDC00)
      {
        break;
      }

      v15 = *(buffer + 20);
      if (v15 < v7)
      {
        break;
      }

      v16 = v7 - 1;
      v17 = *(buffer + 17);
      if (v17)
      {
        v18 = *(v17 + 2 * *(buffer + 19) + 2 * v16);
      }

      else
      {
        v19 = *(buffer + 18);
        if (v19)
        {
          v18 = *(v19 + *(buffer + 19) + v16);
        }

        else
        {
          if (*(buffer + 22) < v7 || (v20 = *(buffer + 21), v20 >= v7))
          {
            v21 = v7 - 5;
            if (v7 < 5)
            {
              v21 = 0;
            }

            if (v21 + 64 < v15)
            {
              v15 = v21 + 64;
            }

            *(buffer + 21) = v21;
            *(buffer + 22) = v15;
            v96.length = v15 - v21;
            v96.location = *(buffer + 19) + v21;
            CFStringGetCharacters(*(buffer + 16), v96, buffer);
            v20 = *(buffer + 21);
          }

          v18 = buffer[v16 - v20];
        }
      }

      if (v18 >> 10 != 54)
      {
        break;
      }

      v13 = v13 + (v18 << 10) - 56613888;
      v22 = CFUniCharGetBitmapPtrForPlane(a5, HIWORD(v13));
      if (v7 == 1)
      {
        v7 = 0;
        goto LABEL_67;
      }

      BitmapPtrForPlane = v22;
      if (v22)
      {
LABEL_31:
        v23 = (*(BitmapPtrForPlane + (v13 >> 3)) >> (v13 & 7)) & 1;
        goto LABEL_32;
      }

LABEL_28:
      LOBYTE(v23) = 0;
LABEL_32:
      if (v13 != 8205 && (v13 & 0xFFFFFFFE) != 0xFF9E && (v13 & 0x1FFFF0) != 0xF870 && v13 - 127995 >= 5 && (v23 & 1) == 0 && v13 - 917536 > 0x5F)
      {
        v7 = v16;
        goto LABEL_67;
      }

      v7 = v16 - 1;
      v24 = *(buffer + 20);
      if (v24 >= v16)
      {
        v26 = *(buffer + 17);
        if (v26)
        {
          v25 = *(v26 + 2 * *(buffer + 19) + 2 * v7);
        }

        else
        {
          v27 = *(buffer + 18);
          if (v27)
          {
            v25 = *(v27 + *(buffer + 19) + v7);
          }

          else
          {
            if (*(buffer + 22) < v16 || (v28 = *(buffer + 21), v28 >= v16))
            {
              v29 = v16 - 5;
              if (v16 < 5)
              {
                v29 = 0;
              }

              if (v29 + 64 < v24)
              {
                v24 = v29 + 64;
              }

              *(buffer + 21) = v29;
              *(buffer + 22) = v24;
              v97.length = v24 - v29;
              v97.location = *(buffer + 19) + v29;
              CFStringGetCharacters(*(buffer + 16), v97, buffer);
              v28 = *(buffer + 21);
            }

            v25 = buffer[v7 - v28];
          }
        }
      }

      else
      {
        v25 = 0;
      }

      v13 = v25;
      if (v16 <= 1)
      {
        goto LABEL_67;
      }
    }

    BitmapPtrForPlane = a4;
LABEL_30:
    v16 = v7;
    if (BitmapPtrForPlane)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

LABEL_67:
  v33 = v13 - 44032;
  if (v13 - 4352 >= 0xFA && v33 >> 4 > 0x2BA)
  {
    goto LABEL_163;
  }

  if (v13 >> 5 >= 0x8B)
  {
    if (v13 >> 3 >= 0x235)
    {
      if (v13 >> 10 >= 0x2B)
      {
        HIDWORD(v38) = -1227133513 * v33;
        LODWORD(v38) = -1227133513 * v33;
        if ((v38 >> 2) < 0x924924A)
        {
          v34 = 3;
        }

        else
        {
          v34 = 4;
        }
      }

      else
      {
        v34 = 2;
      }
    }

    else
    {
      v34 = 1;
    }
  }

  else
  {
    v34 = 0;
  }

  if (v7 >= 1)
  {
    v39 = -v7;
    v40 = v7 + 64;
    v41 = v34;
    while (1)
    {
      if (v7 >= 5)
      {
        v42 = 5;
      }

      else
      {
        v42 = v7;
      }

      v43 = *(buffer + 20);
      if (v43 < v7)
      {
        goto LABEL_121;
      }

      v44 = *(buffer + 17);
      if (v44)
      {
        v45 = *(v44 + 2 * *(buffer + 19) + 2 * v7 - 2);
      }

      else
      {
        v46 = *(buffer + 18);
        if (v46)
        {
          v45 = *(v46 + *(buffer + 19) + v7 - 1);
        }

        else
        {
          if (*(buffer + 22) < v7 || (v47 = *(buffer + 21), v47 >= v7))
          {
            v48 = -v42;
            v49 = v42 + v39;
            v50 = v40 - v42;
            v51 = v7 + v48;
            v52 = v51 + 64;
            if (v51 + 64 >= v43)
            {
              v52 = *(buffer + 20);
            }

            *(buffer + 21) = v51;
            *(buffer + 22) = v52;
            if (v43 >= v50)
            {
              v43 = v50;
            }

            v99.location = v51 + *(buffer + 19);
            v99.length = v43 + v49;
            CFStringGetCharacters(*(buffer + 16), v99, buffer);
            v47 = *(buffer + 21);
          }

          v45 = buffer[v7 - 1 - v47];
        }
      }

      if (((v45 - 4352) >> 4) > 0xC6Au || (v45 + 21504) > 0x65F9u)
      {
        goto LABEL_121;
      }

      if (v41 == 2)
      {
        break;
      }

      if (v41 == 1)
      {
        if (v45 >> 5 >= 0x8Bu)
        {
          if (v45 >> 10 >= 0x2Bu)
          {
            HIDWORD(v53) = -1840706560 - 1227133513 * v45;
            LODWORD(v53) = HIDWORD(v53);
            if ((v53 >> 2) >= 0x924924A)
            {
              goto LABEL_121;
            }

            v41 = 3;
            goto LABEL_119;
          }

          if (v45 > 0x11A2u)
          {
            goto LABEL_121;
          }

          goto LABEL_116;
        }
      }

      else if (v45 >> 5 > 0x8Au)
      {
        goto LABEL_121;
      }

      v41 = 0;
LABEL_119:
      --v7;
      ++v39;
      --v40;
      if ((v7 + 1) <= 1)
      {
        v7 = 0;
        goto LABEL_121;
      }
    }

    if (v45 - 4448 >= 0x43)
    {
      if (v45 >> 10 < 0x2Bu)
      {
        if (v45 >> 5 < 0x8Bu)
        {
          goto LABEL_121;
        }

        v41 = 2;
      }

      else
      {
        HIDWORD(v54) = -1840706560 - 1227133513 * v45;
        LODWORD(v54) = HIDWORD(v54);
        if ((v54 >> 2) < 0x924924A)
        {
          v41 = 3;
        }

        else
        {
          v41 = 4;
        }
      }

      goto LABEL_119;
    }

LABEL_116:
    v41 = 1;
    goto LABEL_119;
  }

LABEL_121:
  v55 = *(buffer + 20);
  if (v55 <= v9)
  {
    goto LABEL_163;
  }

  v56 = -v9;
  v57 = v9 + 64;
  do
  {
    if (v9 >= 4)
    {
      v58 = 4;
    }

    else
    {
      v58 = v9;
    }

    v59 = *(buffer + 17);
    if (v59)
    {
      v60 = (v59 + 2 * *(buffer + 19));
    }

    else
    {
      v62 = *(buffer + 18);
      if (v62)
      {
        v61 = *(v62 + *(buffer + 19) + v9);
        goto LABEL_131;
      }

      if (*(buffer + 22) <= v9 || (v63 = *(buffer + 21), v63 > v9))
      {
        v64 = -v58;
        v65 = v58 + v56;
        v66 = v57 - v58;
        v67 = v9 + v64;
        v68 = v67 + 64;
        if (v67 + 64 >= v55)
        {
          v68 = v55;
        }

        *(buffer + 21) = v67;
        *(buffer + 22) = v68;
        if (v55 >= v66)
        {
          v55 = v66;
        }

        v100.location = v67 + *(buffer + 19);
        v100.length = v55 + v65;
        CFStringGetCharacters(*(buffer + 16), v100, buffer);
        v63 = *(buffer + 21);
      }

      v60 = &buffer[-v63];
    }

    v61 = v60[v9];
LABEL_131:
    if (!v61 || v61 - 4352 >= 0xFA && ((v61 + 21504) >> 4) > 0x2BAu)
    {
      break;
    }

    if (v34 > 2u)
    {
      if (v34 == 4)
      {
        goto LABEL_144;
      }

      if (v34 == 3)
      {
LABEL_140:
        if (v61 - 4448 > 0x99)
        {
          break;
        }

        if (v61 >> 3 < 0x235u)
        {
          v34 = 1;
        }

        else
        {
          v34 = 2;
        }

        goto LABEL_162;
      }
    }

    else
    {
      if (v34 == 1)
      {
        goto LABEL_140;
      }

      if (v34 == 2)
      {
LABEL_144:
        if (v61 - 4520 >= 0x52)
        {
          break;
        }

        v34 = 2;
        goto LABEL_162;
      }
    }

    if (v61 >> 5 >= 0x8Bu)
    {
      if (v61 >> 3 >= 0x235u)
      {
        if (v61 >> 10 < 0x2Bu)
        {
          break;
        }

        HIDWORD(v69) = -1227133513 * v61 - 1840706560;
        LODWORD(v69) = HIDWORD(v69);
        if ((v69 >> 2) < 0x924924A)
        {
          v34 = 3;
        }

        else
        {
          v34 = 4;
        }
      }

      else
      {
        v34 = 1;
      }
    }

    else
    {
      v34 = 0;
    }

LABEL_162:
    ++v9;
    v55 = *(buffer + 20);
    --v56;
    ++v57;
  }

  while (v55 > v9);
LABEL_163:
  do
  {
    v70 = v9;
    if (v9 < 0)
    {
      break;
    }

    v71 = *(buffer + 20);
    if (v71 <= v9)
    {
      break;
    }

    v72 = *(buffer + 17);
    if (v72)
    {
      v73 = *(v72 + 2 * *(buffer + 19) + 2 * v9);
    }

    else
    {
      v74 = *(buffer + 18);
      if (v74)
      {
        v73 = *(v74 + *(buffer + 19) + v9);
      }

      else
      {
        if (*(buffer + 22) <= v9 || (v75 = *(buffer + 21), v75 > v9))
        {
          v76 = v9 - 4;
          if (v9 < 4)
          {
            v76 = 0;
          }

          if (v76 + 64 < v71)
          {
            v71 = v76 + 64;
          }

          *(buffer + 21) = v76;
          *(buffer + 22) = v71;
          v101.length = v71 - v76;
          v101.location = *(buffer + 19) + v76;
          CFStringGetCharacters(*(buffer + 16), v101, buffer);
          v75 = *(buffer + 21);
        }

        v73 = buffer[v9 - v75];
      }
    }

    v77 = v73;
    if (!v73 || a3 == 4 && ((v73 - 1328) >> 5) < 0xA1u)
    {
      break;
    }

    if (v73 >> 10 != 54)
    {
      goto LABEL_197;
    }

    v78 = v9 + 1;
    v79 = *(buffer + 20);
    if (v79 <= (v70 + 1))
    {
      goto LABEL_197;
    }

    v80 = *(buffer + 17);
    if (v80)
    {
      v81 = *(v80 + 2 * *(buffer + 19) + 2 * v78);
    }

    else
    {
      v82 = *(buffer + 18);
      if (v82)
      {
        v81 = *(v82 + *(buffer + 19) + v78);
      }

      else
      {
        if (*(buffer + 22) <= v78 || (v83 = *(buffer + 21), v83 > v78))
        {
          v84 = v70 - 3;
          if (v70 < 3)
          {
            v84 = 0;
          }

          if (v84 + 64 < v79)
          {
            v79 = v84 + 64;
          }

          *(buffer + 21) = v84;
          *(buffer + 22) = v79;
          v102.length = v79 - v84;
          v102.location = *(buffer + 19) + v84;
          CFStringGetCharacters(*(buffer + 16), v102, buffer);
          v83 = *(buffer + 21);
        }

        v81 = buffer[v78 - v83];
      }
    }

    if (v81 >> 10 == 55)
    {
      v77 = (v77 << 10) + v81 - 56613888;
      v85 = CFUniCharGetBitmapPtrForPlane(a5, HIWORD(v77));
      v86 = 2;
      if (v85)
      {
        goto LABEL_198;
      }
    }

    else
    {
LABEL_197:
      v86 = 1;
      v85 = a4;
      if (a4)
      {
LABEL_198:
        v87 = (*(v85 + (v77 >> 3)) >> (v77 & 7)) & 1;
        goto LABEL_199;
      }
    }

    LOBYTE(v87) = 0;
LABEL_199:
    v9 = v86 + v70;
    v90 = v77 != 8205 && (v77 & 0xFFFFFFFE) != 65438 && (v77 & 0x1FFFF0) != 63600 && v77 - 127995 >= 5;
  }

  while (!v90 || (v87 & 1) != 0 || v77 - 917536 < 0x60);
  return v7;
}