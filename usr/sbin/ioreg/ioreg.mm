void start(int a1, char *const *a2)
{
  v35 = 0;
  v4 = fileno(__stdoutp);
  if (!isatty(v4) || (v5 = fileno(__stdoutp), ioctl(v5, 0x40087468uLL, &v35)))
  {
    v6 = 0;
  }

  else
  {
    v6 = WORD1(v35);
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v25 = 0;
  v24 = "IOService";
  while (2)
  {
    v12 = getopt(a1, a2, ":abc:d:fik:ln:p:rsStw:xy");
    switch(v12)
    {
      case 'S':
      case 's':
        continue;
      case 'T':
      case 'U':
      case 'V':
      case 'W':
      case 'X':
      case 'Y':
      case 'Z':
      case '[':
      case '\\':
      case ']':
      case '^':
      case '_':
      case 'e':
      case 'g':
      case 'h':
      case 'j':
      case 'm':
      case 'o':
      case 'q':
      case 'u':
      case 'v':
        goto LABEL_37;
      case 'a':
        v7 |= 1u;
        continue;
      case 'b':
        v7 |= 2u;
        continue;
      case 'c':
        v8 = optarg;
        v9 = CFStringCreateWithCString(kCFAllocatorDefault, optarg, 0x8000100u);
        continue;
      case 'd':
        v10 = atoi(optarg);
        continue;
      case 'f':
        v7 |= 4u;
        continue;
      case 'i':
        v7 |= 0x10u;
        continue;
      case 'k':
        v11 = optarg;
        continue;
      case 'l':
        v7 |= 0x20u;
        continue;
      case 'n':
        v25 = optarg;
        continue;
      case 'p':
        v24 = optarg;
        continue;
      case 'r':
        v7 |= 0x40u;
        continue;
      case 't':
        v7 |= 0x80u;
        continue;
      case 'w':
        v6 = atoi(optarg);
        continue;
      case 'x':
        v7 |= 8u;
        continue;
      case 'y':
        v7 |= 0x100u;
        continue;
      default:
        if (v12 != -1)
        {
LABEL_37:
          fwrite("usage: ioreg [-abfilrtxy] [-c class] [-d depth] [-k key] [-n name] [-p plane] [-w width]\nwhere options are:\n\t-a archive output\n\t-b show object name in bold\n\t-c list properties of objects with the given class\n\t-d limit tree to the given depth\n\t-f enable smart formatting\n\t-i show object inheritance\n\t-k list properties of objects with the given key\n\t-l list properties of all objects\n\t-n list properties of objects with the given name\n\t-p traverse registry over the given plane (IOService is default)\n\t-r show subtrees rooted by the given criteria\n\t-t show location of each subtree\n\t-w clip output to the given line width (0 is unlimited)\n\t-x show data and numbers as hexadecimal\n\t-y do not consider DriverKit classes with -c\n", 0x2D5uLL, 1uLL, __stderrp);
          goto LABEL_38;
        }

        byte_10000C028 = (v7 & 8) != 0;
        if (v6 && (qword_10000C010 = malloc_type_malloc(v6, 0xB7988F8FuLL), dword_10000C018 = v6, dword_10000C008 = v6, !qword_10000C010))
        {
          v22 = __stderrp;
          v23 = "can't allocate buffer";
        }

        else
        {
          if ((v7 & 2) == 0)
          {
            goto LABEL_33;
          }

          v36 = &unk_10000C029;
          v13 = getenv("TERM");
          if (!v13 || tgetent(0, v13) < 1 || (qword_10000C000 = tgetstr("md", &v36), qword_10000C020 = tgetstr("me", &v36), (v36 - &unk_10000C029) < 0x41))
          {
            if (!qword_10000C000)
            {
              qword_10000C000 = &unk_100004EA7;
            }

            if (!qword_10000C020)
            {
              qword_10000C020 = &unk_100004EA7;
            }

LABEL_33:
            RootEntry = IORegistryGetRootEntry(kIOMainPortDefault);
            if (RootEntry)
            {
              v15 = RootEntry;
              if ((v7 & 1) == 0)
              {
                if ((v7 & 0x40) != 0)
                {
                  LOWORD(error) = v7;
                  *(&error + 2) = 0;
                  WORD3(error) = 0;
                  *(&error + 1) = v8;
                  v27 = v9;
                  v28 = v10;
                  v29 = 0;
                  v30 = v11;
                  v31 = v25;
                  v32 = v24;
                  v33 = v6;
                  v34 = 0;
                  sub_100001024(RootEntry, 0, 0, &v36, &error);
                }

                else
                {
                  LOWORD(v36) = v7;
                  *(&v36 + 2) = 0;
                  HIWORD(v36) = 0;
                  v37 = v8;
                  v38 = v9;
                  v39 = v10;
                  v40 = 0;
                  v41 = v11;
                  v42 = v25;
                  v43 = v24;
                  v44 = v6;
                  v45 = 0;
                  sub_1000011FC(RootEntry, 0, 0, 0, &v36);
                }

                goto LABEL_49;
              }

              if ((v7 & 0x40) != 0)
              {
                LOWORD(error) = v7;
                *(&error + 2) = 0;
                WORD3(error) = 0;
                *(&error + 1) = v8;
                v27 = v9;
                v28 = v10;
                v29 = 0;
                v30 = v11;
                v31 = v25;
                v32 = v24;
                v33 = v6;
                v34 = 0;
                v16 = sub_100000C70(RootEntry, 0, 0, &v36, &error);
              }

              else
              {
                LOWORD(v36) = v7;
                *(&v36 + 2) = 0;
                HIWORD(v36) = 0;
                v37 = v8;
                v38 = v9;
                v39 = v10;
                v40 = 0;
                v41 = v11;
                v42 = v25;
                v43 = v24;
                v44 = v6;
                v45 = 0;
                v16 = sub_100000ED0(RootEntry, 0, &v36);
              }

              v17 = v16;
              if (!v16)
              {
LABEL_49:
                IOObjectRelease(v15);
                exit(0);
              }

              *&error = 0;
              v18 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, @"/dev/stdout", kCFURLPOSIXPathStyle, 0);
              if (v18)
              {
                v19 = v18;
                v20 = CFWriteStreamCreateWithFile(kCFAllocatorDefault, v18);
                if (v20)
                {
                  v21 = v20;
                  if (CFWriteStreamOpen(v20))
                  {
                    CFPropertyListWrite(v17, v21, kCFPropertyListXMLFormat_v1_0, 0, &error);
                    if (!error)
                    {
                      CFWriteStreamClose(v21);
                      CFRelease(v21);
                      CFRelease(v19);
                      CFRelease(v17);
                      goto LABEL_49;
                    }

                    v22 = __stderrp;
                    v23 = "CFPropertyListWrite(): error";
                  }

                  else
                  {
                    v22 = __stderrp;
                    v23 = "can't open file";
                  }
                }

                else
                {
                  v22 = __stderrp;
                  v23 = "can't create file";
                }
              }

              else
              {
                v22 = __stderrp;
                v23 = "can't create path";
              }
            }

            else
            {
              v22 = __stderrp;
              v23 = "can't obtain I/O Kit's root service";
            }

            goto LABEL_57;
          }

          v22 = __stderrp;
          v23 = "can't obtain terminfo";
        }

LABEL_57:
        fprintf(v22, "ioreg: error: %s.\n", v23);
LABEL_38:
        exit(1);
    }
  }
}

__CFArray *sub_100000C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v7 = a3;
  v8 = a2;
  iterator = 0;
  v10 = (a3 + 1);
  if (v10 > a2 && (v11 = a5[1], v38 = *a5, v39 = v11, v12 = a5[3], v40 = a5[2], v41 = v12, sub_1000017E0(a1, &v38)))
  {
    v13 = *(a5 + 6);
    v14 = v13 + v7;
    if (v13)
    {
      v8 = v14;
    }

    else
    {
      v8 = 0xFFFFFFFFLL;
    }

    if ((*a5 & 0x80) != 0)
    {
      if (v13)
      {
        *(a5 + 6) = v14;
      }

      v19 = a5[1];
      v38 = *a5;
      v39 = v19;
      v20 = a5[3];
      v40 = a5[2];
      v41 = v20;
      v21 = sub_100000ED0(a1, v7, &v38);
      v22 = v21;
      v23 = *(a5 + 6);
      if (v23)
      {
        *(a5 + 6) = v23 - v7;
      }

      if (v7)
      {
        v24 = 4 * v7;
        do
        {
          v25 = *(a4 - 4 + v24);
          v26 = a5[1];
          v38 = *a5;
          v39 = v26;
          v27 = a5[3];
          v40 = a5[2];
          v41 = v27;
          v28 = sub_100001348(v25, &v38);
          if (!v28)
          {
            sub_100003E2C();
          }

          v17 = v28;
          CFDictionarySetValue(v28, @"IORegistryEntryChildren", v22);
          CFRelease(v22);
          v22 = v17;
          v24 -= 4;
        }

        while (v24);
      }

      else
      {
        v17 = v21;
      }
    }

    else
    {
      v15 = a5[1];
      v38 = *a5;
      v39 = v15;
      v16 = a5[3];
      v40 = a5[2];
      v41 = v16;
      v17 = sub_100000ED0(a1, 0, &v38);
    }

    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (!Mutable)
    {
      sub_100003E68();
    }

    v18 = Mutable;
    CFArrayAppendValue(Mutable, v17);
    CFRelease(v17);
  }

  else
  {
    v18 = 0;
  }

  *(a4 + 4 * v7) = a1;
  if (!IORegistryEntryGetChildIterator(a1, *(a5 + 6), &iterator))
  {
    v30 = IOIteratorNext(iterator);
    if (v30)
    {
      v31 = v30;
      do
      {
        v32 = IOIteratorNext(iterator);
        v33 = a5[1];
        v38 = *a5;
        v39 = v33;
        v34 = a5[3];
        v40 = a5[2];
        v41 = v34;
        v35 = sub_100000C70(v31, v8, v10, a4, &v38);
        if (v35)
        {
          v36 = v35;
          if (v18)
          {
            v43.length = CFArrayGetCount(v35);
            v43.location = 0;
            CFArrayAppendArray(v18, v36, v43);
            CFRelease(v36);
          }

          else
          {
            v18 = v35;
          }
        }

        IOObjectRelease(v31);
        v31 = v32;
      }

      while (v32);
    }

    IOObjectRelease(iterator);
  }

  return v18;
}

__CFDictionary *sub_100000ED0(uint64_t a1, int a2, const char **a3)
{
  iterator = 0;
  if (IORegistryEntryGetChildIterator(a1, a3[6], &iterator))
  {
    return 0;
  }

  v7 = IOIteratorNext(iterator);
  v8 = *(a3 + 1);
  v19 = *a3;
  v20 = v8;
  v9 = *(a3 + 3);
  v21 = *(a3 + 2);
  v22 = v9;
  v6 = sub_100001348(a1, &v19);
  v10 = *(a3 + 6);
  if ((!v10 || v10 > a2 + 1) && v7)
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (!Mutable)
    {
      sub_100003E68();
    }

    v12 = Mutable;
    do
    {
      v13 = IOIteratorNext(iterator);
      v14 = *(a3 + 1);
      v19 = *a3;
      v20 = v14;
      v15 = *(a3 + 3);
      v21 = *(a3 + 2);
      v22 = v15;
      v16 = sub_100000ED0(v7, a2 + 1, &v19);
      if (!v16)
      {
        sub_100003EA4();
      }

      v17 = v16;
      CFArrayAppendValue(v12, v16);
      CFRelease(v17);
      IOObjectRelease(v7);
      v7 = v13;
    }

    while (v13);
    CFDictionarySetValue(v6, @"IORegistryEntryChildren", v12);
    CFRelease(v12);
  }

  IOObjectRelease(iterator);
  return v6;
}

uint64_t sub_100001024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v8 = a2;
  iterator = 0;
  v10 = (a3 + 1);
  if (v10 > a2)
  {
    v11 = a5[1];
    v36 = *a5;
    v37 = v11;
    v12 = a5[3];
    v38 = a5[2];
    v39 = v12;
    if (sub_1000017E0(a1, &v36))
    {
      v13 = *(a5 + 6);
      if (v13)
      {
        v8 = (v13 + a3);
      }

      else
      {
        v8 = 0xFFFFFFFFLL;
      }

      if ((*a5 & 0x80) != 0)
      {
        if (a3)
        {
          v23 = 0;
          do
          {
            v24 = *(a4 + 4 * v23);
            v25 = a5[1];
            v36 = *a5;
            v37 = v25;
            v26 = a5[3];
            v38 = a5[2];
            v39 = v26;
            sub_100001CBC(v24, v23, 2 << v23, &v36);
            ++v23;
          }

          while (a3 != v23);
          v13 = *(a5 + 6);
        }

        if (v13)
        {
          *(a5 + 6) = v13 + a3;
        }

        v27 = a5[1];
        v36 = *a5;
        v37 = v27;
        v28 = a5[3];
        v38 = a5[2];
        v39 = v28;
        sub_1000011FC(a1, 0, a3, 0, &v36);
        v29 = *(a5 + 6);
        if (v29)
        {
          *(a5 + 6) = v29 - a3;
        }
      }

      else
      {
        v14 = a5[1];
        v36 = *a5;
        v37 = v14;
        v15 = a5[3];
        v38 = a5[2];
        v39 = v15;
        sub_1000011FC(a1, 0, 0, 0, &v36);
      }

      sub_100002334(&unk_100004EA7, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  *(a4 + 4 * a3) = a1;
  result = IORegistryEntryGetChildIterator(a1, *(a5 + 6), &iterator);
  if (!result)
  {
    v31 = IOIteratorNext(iterator);
    if (v31)
    {
      v32 = v31;
      do
      {
        v33 = IOIteratorNext(iterator);
        v34 = a5[1];
        v36 = *a5;
        v37 = v34;
        v35 = a5[3];
        v38 = a5[2];
        v39 = v35;
        sub_100001024(v32, v8, v10, a4, &v36);
        IOObjectRelease(v32);
        v32 = v33;
      }

      while (v33);
    }

    return IOObjectRelease(iterator);
  }

  return result;
}

uint64_t sub_1000011FC(uint64_t a1, int a2, uint64_t a3, unint64_t a4, const char **a5)
{
  iterator = 0;
  result = IORegistryEntryGetChildIterator(a1, a5[6], &iterator);
  if (!result)
  {
    v11 = IOIteratorNext(iterator);
    v12 = v11;
    v13 = (1 << a3) | a4;
    if (!a2)
    {
      v13 = ~(1 << a3) & a4;
    }

    v14 = (a3 + 1);
    v15 = *(a5 + 6) - 1;
    v16 = v13 | (2 << a3);
    if (!v11)
    {
      v16 = v13 & ~(2 << a3);
    }

    v17 = *(a5 + 1);
    v23 = *a5;
    v24 = v17;
    v18 = *(a5 + 3);
    if (v15 >= v14)
    {
      v19 = v16;
    }

    else
    {
      v19 = v13;
    }

    v25 = *(a5 + 2);
    v26 = v18;
    sub_100001CBC(a1, a3, v19, &v23);
    if (*(a5 + 6) - 1 >= v14 && v12)
    {
      do
      {
        v20 = IOIteratorNext(iterator);
        v21 = *(a5 + 1);
        v23 = *a5;
        v24 = v21;
        v22 = *(a5 + 3);
        v25 = *(a5 + 2);
        v26 = v22;
        sub_1000011FC(v12, v20 != 0, v14, v19, &v23);
        IOObjectRelease(v12);
        v12 = v20;
      }

      while (v20);
    }

    return IOObjectRelease(iterator);
  }

  return result;
}

CFMutableDictionaryRef sub_100001348(uint64_t entry, uint64_t a2)
{
  v3 = entry;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  *cStr = 0u;
  v36 = 0u;
  valuePtr = 0;
  entryID = 0;
  properties = 0;
  memset(location, 0, sizeof(location));
  memset(name, 0, sizeof(name));
  v28 = 0;
  v29 = 0;
  if ((*a2 & 0x20) != 0 || (v4 = *(a2 + 16), v27[0] = *a2, v27[1] = v4, v5 = *(a2 + 48), v27[2] = *(a2 + 32), v27[3] = v5, sub_1000017E0(entry, v27)))
  {
    if (IORegistryEntryCreateCFProperties(v3, &properties, kCFAllocatorDefault, 0))
    {
      sub_100003EE0(&properties);
      v6 = 0;
    }

    else
    {
      v6 = properties;
    }

    sub_100001A18(v6);
  }

  if (!properties)
  {
    properties = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!properties)
    {
      sub_100004214();
    }
  }

  if (IORegistryEntryGetNameInPlane(v3, *(a2 + 48), name))
  {
    sub_100003F30();
  }

  v7 = CFStringCreateWithCString(kCFAllocatorDefault, name, 0x8000100u);
  if (!v7)
  {
    sub_1000041D8();
  }

  v8 = v7;
  CFDictionarySetValue(properties, @"IORegistryEntryName", v7);
  CFRelease(v8);
  if (!IORegistryEntryGetLocationInPlane(v3, *(a2 + 48), location))
  {
    v9 = CFStringCreateWithCString(kCFAllocatorDefault, location, 0x8000100u);
    if (!v9)
    {
      sub_10000419C();
    }

    v10 = v9;
    CFDictionarySetValue(properties, @"IORegistryEntryLocation", v9);
    CFRelease(v10);
  }

  if (IORegistryEntryGetRegistryEntryID(v3, &entryID))
  {
    sub_100003F88(&entryID);
  }

  v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &entryID);
  if (!v11)
  {
    sub_100004160();
  }

  v12 = v11;
  CFDictionarySetValue(properties, @"IORegistryEntryID", v11);
  CFRelease(v12);
  if (_IOObjectGetClass(v3, 1))
  {
    sub_100003FDC();
  }

  v13 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  if (!v13)
  {
    sub_100004124();
  }

  v14 = v13;
  CFDictionarySetValue(properties, @"IOObjectClass", v13);
  if ((*a2 & 0x10) != 0)
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks);
    if (!Mutable)
    {
      sub_100003E68();
    }

    v16 = Mutable;
    while (1)
    {
      v17 = v14;
      CFArrayInsertValueAtIndex(v16, 0, v14);
      v14 = IOObjectCopySuperclassForClass(v14);
      CFRelease(v17);
      if (!v14)
      {
        break;
      }

      if (CFEqual(v14, @"OSObject"))
      {
        CFDictionarySetValue(properties, @"IOObjectInheritance", v16);
        CFRelease(v16);
        goto LABEL_27;
      }
    }

    CFDictionarySetValue(properties, @"IOObjectInheritance", v16);
    v14 = v16;
  }

LABEL_27:
  CFRelease(v14);
  valuePtr = IOObjectGetKernelRetainCount(v3);
  v18 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  if (!v18)
  {
    sub_1000040E8();
  }

  v19 = v18;
  CFDictionarySetValue(properties, @"IOObjectRetainCount", v18);
  CFRelease(v19);
  if (_IOObjectConformsTo(v3, "IOService"))
  {
    if (IOServiceGetBusyStateAndTime())
    {
      fprintf(__stderrp, "ioreg: error: %s.\n", "can't obtain state");
      valuePtr = 0;
      v28 = 0;
      v29 = 0;
    }

    v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &v29);
    if (!v20)
    {
      sub_1000040AC();
    }

    v21 = v20;
    CFDictionarySetValue(properties, @"IOServiceState", v20);
    CFRelease(v21);
    v22 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
    if (!v22)
    {
      sub_100004070();
    }

    v23 = v22;
    CFDictionarySetValue(properties, @"IOServiceBusyState", v22);
    CFRelease(v23);
    v24 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &v28);
    if (!v24)
    {
      sub_100004034();
    }

    v25 = v24;
    CFDictionarySetValue(properties, @"IOServiceBusyTime", v24);
    CFRelease(v25);
  }

  return properties;
}

BOOL sub_1000017E0(uint64_t entry, uint64_t a2)
{
  v3 = entry;
  if (*(a2 + 8))
  {
    if (*(a2 + 16))
    {
      if ((*a2 & 0x100) == 0)
      {
        CFProperty = IORegistryEntryCreateCFProperty(entry, @"IOUserClasses", kCFAllocatorDefault, 0);
        if (CFProperty)
        {
          v5 = CFProperty;
          TypeID = CFArrayGetTypeID();
          if (TypeID == CFGetTypeID(v5))
          {
            v15.length = CFArrayGetCount(v5);
            v15.location = 0;
            v7 = CFArrayContainsValue(v5, v15, *(a2 + 16));
            CFRelease(v5);
            if (v7)
            {
              v8 = 1;
              goto LABEL_11;
            }

            return 0;
          }

          CFRelease(v5);
        }
      }
    }

    v8 = 1;
    if (!_IOObjectConformsTo(v3, *(a2 + 8)))
    {
      return 0;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_11:
  v9 = *(a2 + 32);
  if (v9)
  {
    v10 = CFStringCreateWithCString(kCFAllocatorDefault, v9, 0x8000100u);
    if (!v10)
    {
      sub_100004250();
    }

    v11 = v10;
    v8 = IORegistryEntryCreateCFProperty(v3, v10, kCFAllocatorDefault, 0);
    CFRelease(v11);
    if (!v8)
    {
      return v8;
    }

    CFRelease(v8);
    v8 = 1;
  }

  if (*(a2 + 40))
  {
    memset(location, 0, 128);
    memset(v13, 0, sizeof(v13));
    if (IORegistryEntryGetNameInPlane(v3, *(a2 + 48), v13))
    {
      sub_100003F30();
    }

    if (strchr(*(a2 + 40), 64))
    {
      __strlcat_chk();
      if (!IORegistryEntryGetLocationInPlane(v3, *(a2 + 48), location))
      {
        __strlcat_chk();
      }
    }

    return !strcmp(*(a2 + 40), v13);
  }

  return v8;
}

void sub_100001A18(void *a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (v2 == CFSetGetTypeID())
    {
      sub_1000042C8();
    }

    if (v2 == CFDictionaryGetTypeID())
    {
      Count = CFDictionaryGetCount(a1);
      v4 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
      v5 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
      v21 = v4;
      CFDictionaryGetKeysAndValues(a1, v4, v5);
      if (Count >= 1)
      {
        v6 = v5;
        do
        {
          v7 = CFGetTypeID(*v6);
          if (v7 == CFSetGetTypeID())
          {
            v8 = CFSetGetCount(*v6);
            v9 = malloc_type_malloc(8 * v8, 0xC0040B8AA526DuLL);
            CFSetGetValues(*v6, v9);
            v10 = CFArrayCreate(kCFAllocatorDefault, v9, v8, &kCFTypeArrayCallBacks);
            if (!v10)
            {
              sub_10000428C();
            }

            v11 = v10;
            CFDictionaryReplaceValue(a1, *v4, v10);
            *v6 = v11;
            CFRelease(v11);
            free(v9);
          }

          v12 = *v6++;
          sub_100001A18(v12);
          ++v4;
          --Count;
        }

        while (Count);
      }

      free(v21);

      free(v5);
    }

    else if (v2 == CFArrayGetTypeID())
    {
      v13 = CFArrayGetCount(a1);
      if (v13 >= 1)
      {
        v14 = v13;
        for (i = 0; i != v14; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          v17 = CFGetTypeID(ValueAtIndex);
          if (v17 == CFSetGetTypeID())
          {
            v18 = CFSetGetCount(ValueAtIndex);
            v19 = malloc_type_malloc(8 * v18, 0xC0040B8AA526DuLL);
            CFSetGetValues(ValueAtIndex, v19);
            v20 = CFArrayCreate(kCFAllocatorDefault, v19, v18, &kCFTypeArrayCallBacks);
            if (!v20)
            {
              sub_10000428C();
            }

            ValueAtIndex = v20;
            CFArraySetValueAtIndex(a1, i, v20);
            CFRelease(ValueAtIndex);
            free(v19);
          }

          sub_100001A18(ValueAtIndex);
        }
      }
    }
  }
}

void sub_100001CBC(uint64_t a1, uint64_t a2, unint64_t a3, const char **a4)
{
  v6 = a2;
  memset(v72, 0, sizeof(v72));
  context[0] = a1;
  context[1] = a2;
  v65 = a3;
  v8 = *(a4 + 1);
  v66 = *a4;
  v67 = v8;
  v9 = *(a4 + 3);
  v68 = *(a4 + 2);
  v69 = v9;
  KernelRetainCount = 0;
  v61 = 0;
  v62 = 0;
  memset(location, 0, sizeof(location));
  memset(name, 0, sizeof(name));
  properties = 0;
  if (IORegistryEntryGetNameInPlane(a1, a4[6], name))
  {
    sub_100003F30();
  }

  sub_10000222C(1, v6, a3);
  if ((*a4 & 2) != 0)
  {
    tputs(qword_10000C000, 1, j__putchar);
  }

  sub_100002308("%s", name);
  if ((*a4 & 2) != 0)
  {
    tputs(qword_10000C020, 1, j__putchar);
  }

  if (!IORegistryEntryGetLocationInPlane(a1, a4[6], location))
  {
    sub_100002308("@%s", location);
  }

  sub_100002308("  <class ");
  if ((*a4 & 0x10) != 0)
  {
    v10 = _IOObjectCopyClass(a1);
    if (v10)
    {
      v11 = v10;
      Mutable = CFStringCreateMutable(0, 512);
      if (Mutable)
      {
        v13 = Mutable;
        CFStringInsert(Mutable, 0, v11);
        Copy = CFStringCreateCopy(0, v11);
        if (Copy)
        {
          v15 = Copy;
          v16 = IOObjectCopySuperclassForClass(Copy);
          CFRelease(v15);
          if (v16)
          {
            while (!CFEqual(v16, @"OSObject"))
            {
              CFStringInsert(v13, 0, @":");
              CFStringInsert(v13, 0, v16);
              v17 = IOObjectCopySuperclassForClass(v16);
              CFRelease(v16);
              v16 = v17;
              if (!v17)
              {
                goto LABEL_21;
              }
            }

            CFRelease(v16);
          }
        }

LABEL_21:
        CStringPtr = CFStringGetCStringPtr(v13, 0x8000100u);
        if (CStringPtr)
        {
          sub_100002308("%s", CStringPtr);
        }

        CFRelease(v13);
      }

      CFRelease(v11);
    }
  }

  else
  {
    if (_IOObjectGetClass(a1, 1))
    {
      sub_100003FDC();
    }

    sub_100002308("%s", v72);
  }

  entryID = 0;
  if (!IORegistryEntryGetRegistryEntryID(a1, &entryID))
  {
    sub_100002308(", id 0x%llx", entryID);
  }

  if (_IOObjectConformsTo(a1, "IOService"))
  {
    if (IOServiceGetBusyStateAndTime())
    {
      fprintf(__stderrp, "ioreg: error: %s.\n", "can't obtain state");
      v19 = 0;
      v61 = 0;
      v62 = 0;
      KernelRetainCount = 0;
    }

    else
    {
      v19 = v62;
    }

    v20 = "!";
    if ((v19 & 2) != 0)
    {
      v21 = &unk_100004EA7;
    }

    else
    {
      v21 = "!";
    }

    if ((v19 & 4) != 0)
    {
      v20 = &unk_100004EA7;
    }

    if (v19)
    {
      v22 = "in";
    }

    else
    {
      v22 = &unk_100004EA7;
    }

    sub_100002308(", %sregistered, %smatched, %sactive", v21, v20, v22);
    sub_100002308(", busy %ld", KernelRetainCount);
    if (v61)
    {
      sub_100002308(" (%lld ms)", v61 / 0xF4240);
    }
  }

  KernelRetainCount = IOObjectGetKernelRetainCount(a1);
  sub_100002308(", retain %ld", KernelRetainCount);
  sub_100002334(">", v23, v24, v25, v26, v27, v28, v29);
  if ((*a4 & 0x20) != 0 || (v30 = *(a4 + 1), v58[0] = *a4, v58[1] = v30, v31 = *(a4 + 3), v58[2] = *(a4 + 2), v58[3] = v31, sub_1000017E0(a1, v58)))
  {
    v32 = 0;
    v33 = v6 + 1;
    do
    {
      if (((1 << v32) & a3) != 0)
      {
        sub_100002308("| ");
      }

      else
      {
        sub_100002308("  ");
      }

      ++v32;
    }

    while (v32 <= v33);
    sub_100002334("{", v34, v35, v36, v37, v38, v39, v40);
    if (IORegistryEntryCreateCFProperties(a1, &properties, kCFAllocatorDefault, 0))
    {
      sub_100003EE0(&properties);
    }

    else
    {
      v41 = properties;
      if (properties)
      {
LABEL_50:
        CFDictionaryApplyFunction(v41, sub_10000239C, context);
        v42 = 0;
        do
        {
          if (((1 << v42) & a3) != 0)
          {
            sub_100002308("| ");
          }

          else
          {
            sub_100002308("  ");
          }

          ++v42;
        }

        while (v42 <= v33);
        sub_100002334("}", v43, v44, v45, v46, v47, v48, v49);
        v50 = 0;
        do
        {
          if (((1 << v50) & a3) != 0)
          {
            sub_100002308("| ");
          }

          else
          {
            sub_100002308("  ");
          }

          ++v50;
        }

        while (v50 <= v33);
        sub_100002334(&unk_100004EA7, v51, v52, v53, v54, v55, v56, v57);
        CFRelease(properties);
        return;
      }
    }

    v41 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    properties = v41;
    if (!v41)
    {
      sub_100004214();
    }

    goto LABEL_50;
  }
}

uint64_t sub_10000222C(int a1, int a2, unint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      for (i = 0; i != a2; ++i)
      {
        if (((1 << i) & a3) != 0)
        {
          sub_100002308("| ");
        }

        else
        {
          sub_100002308("  ");
        }
      }
    }

    return sub_100002308("+-o ");
  }

  else
  {
    v7 = 0;
    v8 = a2 + 1;
    do
    {
      if (((1 << v7) & a3) != 0)
      {
        result = sub_100002308("| ");
      }

      else
      {
        result = sub_100002308("  ");
      }

      ++v7;
    }

    while (v7 <= v8);
  }

  return result;
}

uint64_t sub_100002334(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1000032A8(a1, va);
  if (byte_10000C01C == 1)
  {
    putchar(36);
  }

  result = putchar(10);
  byte_10000C01C = 0;
  dword_10000C018 = dword_10000C008;
  return result;
}

uint64_t sub_10000239C(const __CFString *a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = a3;
  v12 = 0;
  v13 = *(a3 + 8);
  v14 = *(a3 + 4) + 1;
  do
  {
    if ((v13 & (1 << v12)) != 0)
    {
      sub_100002308("| ");
    }

    else
    {
      sub_100002308("  ");
    }

    ++v12;
  }

  while (v12 <= v14);
  sub_100002308("  ");
  sub_100003378(a1);
  sub_100002308(" = ");
  if ((*(v9 + 16) & 4) == 0)
  {
    sub_100003378(a2);
    v22 = &unk_100004EA7;
LABEL_8:

    return sub_100002334(v22, v15, v16, v17, v18, v19, v20, v21);
  }

  v24 = *v9;
  v245 = v9;
  if (CFStringCompare(a1, @"reg", 0) == kCFCompareEqualTo)
  {
    parent = 0;
    memset(name, 0, 128);
    if (!IORegistryEntryGetParentEntry(v24, "IODeviceTree", &parent))
    {
      if (IORegistryEntryGetNameInPlane(parent, "IODeviceTree", name))
      {
        sub_10000441C();
      }

      IOObjectRelease(parent);
      v46 = LOWORD(name[0]) == 25456 && BYTE2(name[0]) == 105;
      if (v46)
      {
        return sub_100003998(a2, v9, v40, v41, v42, v43, v44, v45, v233);
      }
    }

    goto LABEL_29;
  }

  if (CFStringCompare(a1, @"assigned-addresses", 0))
  {
    if (CFStringCompare(a1, @"slot-names", 0))
    {
      if (CFStringCompare(a1, @"ranges", 0))
      {
        if (CFStringCompare(a1, @"interrupt-map", 0))
        {
          if (CFStringCompare(a1, @"interrupts", 0))
          {
            if (CFStringCompare(a1, @"interrupt-parent", 0) == kCFCompareEqualTo)
            {
              parent = 0;
              memset(name + 1, 0, 511);
              BytePtr = CFDataGetBytePtr(a2);
              result = sub_100003CB4(*BytePtr, &parent);
              if (result)
              {
                LOBYTE(name[0]) = 0;
                v32 = parent;
                sub_100003D90(parent, name);
                sub_100002308("<%08lx>", *BytePtr);
                if (LOBYTE(name[0]))
                {
                  sub_100002308(" (%s)", name);
                }

                sub_100002334(&unk_100004EA7, v33, v34, v35, v36, v37, v38, v39);
                return IOObjectRelease(v32);
              }

              return result;
            }

LABEL_29:
            v47 = CFGetTypeID(a2);
            if (v47 == CFDataGetTypeID())
            {
              Length = CFDataGetLength(a2);
              v56 = CFDataGetBytePtr(a2);
              if (Length < 1)
              {
                v59 = 0;
                v58 = 0;
                v57 = 0;
                goto LABEL_150;
              }

              v57 = 0;
              v58 = 0;
              v59 = 0;
LABEL_32:
              if (v56[v57])
              {
                if (v57 >= Length)
                {
                  goto LABEL_150;
                }

                while (1)
                {
                  v60 = v56[v57];
                  if (v60 < 0)
                  {
                    if (__maskrune(v56[v57], 0x40000uLL))
                    {
LABEL_36:
                      ++v59;
                      goto LABEL_40;
                    }
                  }

                  else if ((_DefaultRuneLocale.__runetype[v60] & 0x40000) != 0)
                  {
                    goto LABEL_36;
                  }

                  if (v60 > -2)
                  {
                    if (v56[v57])
                    {
                      goto LABEL_150;
                    }

                    if (++v57 >= Length)
                    {
                      goto LABEL_150;
                    }

                    goto LABEL_32;
                  }

                  ++v58;
LABEL_40:
                  if (Length == ++v57)
                  {
                    goto LABEL_149;
                  }
                }
              }

              if (v57 < Length)
              {
                while (!v56[v57])
                {
                  if (Length == ++v57)
                  {
LABEL_149:
                    v57 = Length;
                    break;
                  }
                }
              }

LABEL_150:
              if (byte_10000C028)
              {
                v203 = 0;
              }

              else
              {
                v203 = v57;
              }

              v204 = Length != 1 && v59 >> 2 >= v58;
              if (v204)
              {
                v205 = v203;
              }

              else
              {
                v205 = 0;
              }

              if (v59 && v205 >= Length)
              {
                sub_100002308("<");
                if (Length >= 1)
                {
                  v206 = 0;
                  for (i = 0; i != Length; ++i)
                  {
                    while (1)
                    {
                      v208 = v56[i];
                      if (v56[i])
                      {
                        break;
                      }

                      if (v206 == 1)
                      {
                        sub_100002308("");
                        v206 = 0;
                        if (++i != Length)
                        {
                          continue;
                        }
                      }

                      goto LABEL_214;
                    }

                    if (!v206)
                    {
                      if (i)
                      {
                        sub_100002308(",");
                      }

                      else
                      {
                        sub_100002308("");
                      }

                      v208 = v56[i];
                      v206 = 1;
                    }

                    sub_100002308("%c", v208);
                  }

                  sub_100002308("");
                }
              }

              else
              {
                if (Length >= 9)
                {
                  v209 = 0;
                  v210 = 0;
                  LODWORD(v211) = (*(v9 + 72) - 2 * *(v9 + 4) - 20) >> 2;
                  if (v211 >= 0x20)
                  {
                    v211 = 32;
                  }

                  else
                  {
                    v211 = v211;
                  }

                  v236 = v211;
                  v239 = Length;
                  do
                  {
                    sub_100002334(&unk_100004EA7, v49, v50, v51, v52, v53, v54, v55);
                    v244 = v210 + v236;
                    if (Length >= v244)
                    {
                      v212 = v236;
                    }

                    else
                    {
                      v212 = Length - v209;
                    }

                    LOBYTE(name[2]) = 58;
                    v213 = &name[1] + 3;
                    v214 = v210;
                    if (!v210)
                    {
                      goto LABEL_188;
                    }

                    do
                    {
                      if ((v214 & 0xF) >= 0xA)
                      {
                        v215 = (v214 & 0xF) + 55;
                      }

                      else
                      {
                        v215 = v214 & 0xF | 0x30;
                      }

                      *v213-- = v215;
                      v204 = v214 >= 0x10;
                      v214 >>= 4;
                    }

                    while (v204);
                    if (v213 >= name)
                    {
LABEL_188:
                      memset(name, 48, v213 - name + 1);
                    }

                    if (v212 < 1)
                    {
                      LODWORD(v216) = 0;
                      v223 = &name[2] + 1;
                    }

                    else
                    {
                      LODWORD(v216) = 0;
                      v217 = &name[2] + 1;
                      do
                      {
                        v218 = v56[v210 + v216];
                        *v217 = 32;
                        v219 = (v218 >> 4) + 55;
                        if (v218 < 0xA0)
                        {
                          LOBYTE(v219) = (v218 >> 4) | 0x30;
                        }

                        v217[1] = v219;
                        v220 = v218 & 0xF;
                        v221 = v218 & 0xF | 0x30;
                        v222 = (v218 & 0xF) + 55;
                        if (v220 < 0xA)
                        {
                          v222 = v221;
                        }

                        v223 = v217 + 3;
                        v217[2] = v222;
                        v216 = (v216 + 1);
                        v217 += 3;
                      }

                      while (v212 > v216);
                    }

                    if (v216 < v236)
                    {
                      v224 = 3 * (v236 + ~v216) + 3;
                      memset(v223, 32, v224);
                      v223 += v224;
                    }

                    *v223 = 32;
                    v225 = v223 + 1;
                    if (v212 >= 1)
                    {
                      v226 = 1;
                      do
                      {
                        v227 = v56[v210 - 1 + v226];
                        if ((v227 - 127) < 0xFFFFFFA1)
                        {
                          LOBYTE(v227) = 46;
                        }

                        *v225++ = v227;
                      }

                      while (v212 > v226++);
                    }

                    v229 = 0;
                    *v225 = 0;
                    v230 = *(v245 + 8);
                    v231 = *(v245 + 4) + 1;
                    do
                    {
                      if ((v230 & (1 << v229)) != 0)
                      {
                        sub_100002308("| ");
                      }

                      else
                      {
                        sub_100002308("  ");
                      }

                      ++v229;
                    }

                    while (v229 <= v231);
                    sub_100002308("    %s", name);
                    Length = v239;
                    v209 = v244;
                    v210 = v244;
                  }

                  while (v239 > v244);
                  goto LABEL_215;
                }

                sub_100002308("<");
                if (Length >= 1)
                {
                  do
                  {
                    v232 = *v56++;
                    sub_100002308("%02x", v232);
                    --Length;
                  }

                  while (Length);
                }
              }

LABEL_214:
              sub_100002308(">");
            }

            else
            {
              sub_100003378(a2);
            }

LABEL_215:
            v202 = &unk_100004EA7;
            return sub_100002334(v202, v49, v50, v51, v52, v53, v54, v55);
          }

          v169 = CFDataGetBytePtr(a2);
          v170 = CFDataGetLength(a2);
          result = sub_100002334(&unk_100004EA7, v171, v172, v173, v174, v175, v176, v177);
          if ((v170 & 0xFFFFFFFFFFFFFFFCLL) >= 1)
          {
            v178 = 0;
            v179 = 0;
            v243 = &v169[v170 >> 2];
            v180 = (v170 >> 2) - 1;
            do
            {
              v181 = 0;
              v182 = *(v245 + 8);
              v183 = *(v245 + 4) + 1;
              do
              {
                if ((v182 & (1 << v181)) != 0)
                {
                  sub_100002308("| ");
                }

                else
                {
                  sub_100002308("  ");
                }

                ++v181;
              }

              while (v181 <= v183);
              sub_100002308("    %02ld: ", v178);
              v191 = *v169;
              if (v179 >= v180)
              {
                result = sub_100002334("parent interrupt-map entry: %08lx", v184, v185, v186, v187, v188, v189, v190, *v169);
              }

              else
              {
                v192 = v169[1];
                ++v169;
                sub_100002308("specifier: %08lx (vector: %02lx) sense: %08lx (", v191, v191, v192);
                v200 = *v169;
                if ((v200 & 2) != 0)
                {
                  sub_100002308("HyperTransport vector: %04lx, ", v200 >> 16);
                  LODWORD(v200) = *v169;
                }

                ++v179;
                v46 = (v200 & 1) == 0;
                v201 = "level";
                if (v46)
                {
                  v201 = "edge";
                }

                result = sub_100002334("%s)", v193, v194, v195, v196, v197, v198, v199, v201);
              }

              ++v169;
              ++v179;
              ++v178;
            }

            while (v169 < v243);
          }
        }

        else
        {
          parent = 0;
          memset(name, 0, 512);
          v121 = sub_100003C50(*v9, @"#address-cells");
          v122 = sub_100003C50(*v9, @"#interrupt-cells");
          v123 = CFDataGetBytePtr(a2);
          v124 = CFDataGetLength(a2) & 0xFFFFFFFFFFFFFFFCLL;
          result = sub_100002334(&unk_100004EA7, v125, v126, v127, v128, v129, v130, v131);
          if (v124 >= 1)
          {
            v132 = 0;
            v238 = (v123 + v124);
            v235 = v122 + v121;
            do
            {
              v133 = 0;
              v134 = *(v9 + 8);
              v135 = *(v9 + 4) + 1;
              do
              {
                if ((v134 & (1 << v133)) != 0)
                {
                  sub_100002308("| ");
                }

                else
                {
                  sub_100002308("  ");
                }

                ++v133;
              }

              while (v133 <= v135);
              sub_100002308("    %02ld: ", v132);
              sub_100002308("  child: ");
              v143 = v235;
              if (v235 >= 1)
              {
                do
                {
                  v144 = *v123++;
                  sub_100002308("%08lx ", v144);
                  --v143;
                }

                while (v143);
              }

              sub_100002334(&unk_100004EA7, v136, v137, v138, v139, v140, v141, v142);
              if (sub_100003CB4(*v123, &parent))
              {
                v145 = parent;
              }

              else
              {
                sub_100004304(&parent);
                v145 = 0;
              }

              v242 = sub_100003C50(v145, @"#address-cells");
              v146 = sub_100003C50(v145, @"#interrupt-cells");
              LOBYTE(name[0]) = 0;
              sub_100003D90(v145, name);
              IOObjectRelease(v145);
              v147 = 0;
              v148 = *(v245 + 8);
              v149 = *(v245 + 4) + 1;
              do
              {
                if ((v148 & (1 << v147)) != 0)
                {
                  sub_100002308("| ");
                }

                else
                {
                  sub_100002308("  ");
                }

                ++v147;
              }

              while (v147 <= v149);
              sub_100002334("        phandle: %08lx (%s)", v150, v151, v152, v153, v154, v155, v156, *v123, name);
              v157 = 0;
              v158 = *(v245 + 8);
              v159 = *(v245 + 4) + 1;
              do
              {
                if ((v158 & (1 << v157)) != 0)
                {
                  sub_100002308("| ");
                }

                else
                {
                  sub_100002308("  ");
                }

                ++v157;
              }

              while (v157 <= v159);
              LODWORD(v160) = v146 + v242;
              sub_100002308("         parent: ");
              ++v123;
              if (v146 + v242 < 1)
              {
                v9 = v245;
              }

              else
              {
                v160 = v160;
                v9 = v245;
                do
                {
                  v168 = *v123++;
                  sub_100002308("%08lx ", v168);
                  --v160;
                }

                while (v160);
              }

              result = sub_100002334(&unk_100004EA7, v161, v162, v163, v164, v165, v166, v167);
              ++v132;
            }

            while (v123 < v238);
          }
        }
      }

      else
      {
        v76 = CFGetTypeID(a2);
        if (v76 != CFDataGetTypeID())
        {
          sub_100004354();
        }

        v77 = CFDataGetLength(a2);
        if (!v77)
        {
          v202 = "<>";
          return sub_100002334(v202, v49, v50, v51, v52, v53, v54, v55);
        }

        v78 = v77;
        parent = 0;
        v79 = CFDataGetBytePtr(a2);
        v234 = v78;
        if (IORegistryEntryGetParentEntry(*v9, "IODeviceTree", &parent))
        {
          sub_100004390(&parent);
          v80 = 0;
        }

        else
        {
          v80 = parent;
        }

        v81 = sub_100003C50(v80, @"#address-cells");
        IOObjectRelease(parent);
        v82 = sub_100003C50(*v9, @"#address-cells");
        v240 = sub_100003C50(*v9, @"#size-cells");
        sub_100002334(&unk_100004EA7, v83, v84, v85, v86, v87, v88, v89);
        v90 = 0;
        v91 = *(v9 + 8);
        v92 = *(v9 + 4) + 1;
        do
        {
          if ((v91 & (1 << v90)) != 0)
          {
            sub_100002308("| ");
          }

          else
          {
            sub_100002308("  ");
          }

          ++v90;
        }

        while (v90 <= v92);
        sub_100002308("    ");
        v93 = 0;
        name[0] = v82;
        name[1] = v81;
        name[2] = v240;
        do
        {
          sub_100002308("%s", (&off_100008348)[v93]);
          v94 = name[v93];
          if (v94 < 2)
          {
            sub_100002308(" ");
          }

          else
          {
            sub_100002308("-");
            v95 = v94 - 1;
            do
            {
              if (--v95)
              {
                sub_100002308("---------");
              }

              else
              {
                sub_100002308("-------- ");
              }
            }

            while (v95);
          }

          ++v93;
        }

        while (v93 != 3);
        v103 = v82 + v81 + v240;
        result = sub_100002334(&unk_100004EA7, v96, v97, v98, v99, v100, v101, v102);
        v104 = 4 * v103;
        v105 = v9;
        if (v104 <= v234)
        {
          v106 = 0;
          v107 = v103;
          v241 = v103;
          if (v103 <= 1)
          {
            v107 = 1;
          }

          v237 = v107;
          v108 = v234 / v104;
          do
          {
            v109 = 0;
            v110 = *(v105 + 8);
            v111 = *(v105 + 4) + 1;
            do
            {
              if ((v110 & (1 << v109)) != 0)
              {
                sub_100002308("| ");
              }

              else
              {
                sub_100002308("  ");
              }

              ++v109;
            }

            while (v109 <= v111);
            sub_100002308("    ");
            if (v241)
            {
              v119 = v237;
              v105 = v245;
              do
              {
                v120 = *v79;
                v79 += 4;
                sub_100002308("%08lx ", v120);
                --v119;
              }

              while (v119);
            }

            else
            {
              v105 = v245;
            }

            result = sub_100002334(&unk_100004EA7, v112, v113, v114, v115, v116, v117, v118);
            ++v106;
          }

          while (v106 < v108);
        }
      }
    }

    else
    {
      v61 = CFGetTypeID(a2);
      if (v61 != CFDataGetTypeID())
      {
        sub_1000043E0();
      }

      if (!CFDataGetLength(a2) || (v62 = CFDataGetBytePtr(a2), !*v62))
      {
        v22 = "<>";
        goto LABEL_8;
      }

      v63 = v62;
      v64 = (v62 + 4);
      result = sub_100002334(&unk_100004EA7, v15, v16, v17, v18, v19, v20, v21);
      for (j = 0; j != 32; ++j)
      {
        if ((*v63 >> j))
        {
          v66 = 0;
          v67 = *(v245 + 8);
          v68 = *(v245 + 4) + 1;
          do
          {
            if ((v67 & (1 << v66)) != 0)
            {
              sub_100002308("| ");
            }

            else
            {
              sub_100002308("  ");
            }

            ++v66;
          }

          while (v66 <= v68);
          sub_100002334("    %02lu: %s", v69, v70, v71, v72, v73, v74, v75, j, v64);
          result = strlen(v64);
          v64 += result + 1;
        }
      }
    }
  }

  else
  {

    return sub_100003998(a2, v9, v25, v26, v27, v28, v29, v30, a9);
  }

  return result;
}

uint64_t sub_1000032A8(char *__format, va_list a2)
{
  if (dword_10000C008)
  {
    v3 = vsnprintf(qword_10000C010, dword_10000C018, __format, a2);
    v4 = qword_10000C010;
    for (i = strchr(qword_10000C010, 10); i; i = strchr(v4, 10))
    {
      *i = 32;
    }

    result = printf("%s", v4);
    if (v3 >= dword_10000C018)
    {
      v3 = dword_10000C018 - 1;
      byte_10000C01C = 1;
    }

    dword_10000C018 -= v3;
  }

  else
  {

    return vprintf(__format, a2);
  }

  return result;
}

void sub_100003378(const __CFString *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFArrayGetTypeID())
  {
    context = 1;
    Count = CFArrayGetCount(a1);
    sub_100002308("(");
    v24.location = 0;
    v24.length = Count;
    CFArrayApplyFunction(a1, v24, sub_100003890, &context);
    sub_100002308(")");
    return;
  }

  if (v2 == CFBooleanGetTypeID())
  {
    if (CFBooleanGetValue(a1))
    {
      v4 = "Yes";
    }

    else
    {
      v4 = "No";
    }

LABEL_63:

    sub_100002308(v4);
    return;
  }

  if (v2 == CFDataGetTypeID())
  {
    sub_100002308("<");
    Length = CFDataGetLength(a1);
    BytePtr = CFDataGetBytePtr(a1);
    if (Length < 1)
    {
      v9 = 0;
      v8 = 0;
      v7 = 0;
LABEL_36:
      if (byte_10000C028)
      {
        v13 = 0;
      }

      else
      {
        v13 = v7;
      }

      if (Length != 1 && v9 >> 2 >= v8)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0;
      }

      if (v9 && v15 >= Length)
      {
        if (Length >= 1)
        {
          v16 = 0;
          for (i = 0; i != Length; ++i)
          {
            while (1)
            {
              v18 = BytePtr[i];
              if (BytePtr[i])
              {
                break;
              }

              if (v16 == 1)
              {
                sub_100002308("");
                v16 = 0;
                if (++i != Length)
                {
                  continue;
                }
              }

              goto LABEL_62;
            }

            if (!v16)
            {
              if (i)
              {
                sub_100002308(",");
              }

              else
              {
                sub_100002308("");
              }

              v18 = BytePtr[i];
              v16 = 1;
            }

            sub_100002308("%c", v18);
          }

          sub_100002308("");
        }
      }

      else if (Length >= 1)
      {
        do
        {
          v19 = *BytePtr++;
          sub_100002308("%02x", v19);
          --Length;
        }

        while (Length);
      }

LABEL_62:
      v4 = ">";
      goto LABEL_63;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
LABEL_11:
    if (BytePtr[v7])
    {
      v10 = v7 < Length;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v11 = BytePtr[v7];
      if (v11 < 0)
      {
        if (__maskrune(BytePtr[v7], 0x40000uLL))
        {
LABEL_18:
          ++v9;
          goto LABEL_22;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v11] & 0x40000) != 0)
      {
        goto LABEL_18;
      }

      if (v11 > -2)
      {
        if (BytePtr[v7])
        {
          goto LABEL_36;
        }

        if (++v7 >= Length)
        {
          goto LABEL_36;
        }

        goto LABEL_11;
      }

      ++v8;
LABEL_22:
      if (Length == ++v7)
      {
        v7 = Length;
        goto LABEL_36;
      }
    }
  }

  if (v2 == CFDictionaryGetTypeID())
  {
    v21 = 1;
    sub_100002308("{");
    CFDictionaryApplyFunction(a1, sub_1000038E0, &v21);
    sub_100002308("}");
    return;
  }

  if (v2 == CFNumberGetTypeID())
  {
    valuePtr = 0;
    if (CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr))
    {
      if (byte_10000C028)
      {
        v12 = "0x%qx";
      }

      else
      {
        v12 = "%qu";
      }

      sub_100002308(v12, valuePtr);
    }
  }

  else if (v2 == CFSetGetTypeID())
  {

    sub_100003764(a1);
  }

  else
  {
    if (v2 != CFStringGetTypeID())
    {
      v4 = "<unknown object>";
      goto LABEL_63;
    }

    sub_1000037C8(a1);
  }
}

uint64_t sub_100003764(const __CFSet *a1)
{
  context = 1;
  sub_100002308("[");
  CFSetApplyFunction(a1, sub_100003948, &context);
  return sub_100002308("]");
}

void sub_1000037C8(const __CFString *a1)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    sub_100002308("%s", CStringPtr);
  }

  else
  {
    Length = CFStringGetLength(a1);
    v4 = malloc_type_malloc(Length + 1, 0x69F048C4uLL);
    if (v4)
    {
      v5 = v4;
      if (CFStringGetCString(a1, v4, Length + 1, 0x8000100u))
      {
        sub_100002308("%s", v5);
      }

      free(v5);
    }
  }
}

uint64_t sub_100003890(const void *a1, _BYTE *a2)
{
  if (*a2)
  {
    *a2 = 0;
  }

  else
  {
    sub_100002308(",");
  }

  return sub_100003378(a1);
}

uint64_t sub_1000038E0(const void *a1, const void *a2, _BYTE *a3)
{
  if (*a3)
  {
    *a3 = 0;
  }

  else
  {
    sub_100002308(",");
  }

  sub_100003378(a1);
  sub_100002308("=");

  return sub_100003378(a2);
}

uint64_t sub_100003948(const void *a1, _BYTE *a2)
{
  if (*a2)
  {
    *a2 = 0;
  }

  else
  {
    sub_100002308(",");
  }

  return sub_100003378(a1);
}

uint64_t sub_100003998(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = CFGetTypeID(a1);
  if (v11 != CFDataGetTypeID())
  {
    sub_1000043E0();
  }

  Length = CFDataGetLength(a1);
  if (Length)
  {
    v20 = Length;
    BytePtr = CFDataGetBytePtr(a1);
    result = sub_100002334(&unk_100004EA7, v21, v22, v23, v24, v25, v26, v27);
    if (v20 >= 0x14)
    {
      v29 = 0;
      do
      {
        v30 = 0;
        v31 = &BytePtr[20 * v29];
        v32 = *v31;
        v78 = v32 >> 11;
        v79 = BYTE2(v32);
        v77 = (v32 >> 8) & 7;
        v33 = *v31;
        v34 = "abs";
        if ((v32 & 0x80000000) == 0)
        {
          v34 = "rel";
        }

        v83 = v34;
        v35 = &unk_100004EA7;
        if ((v32 & 0x40000000) != 0)
        {
          v36 = ", prefetch";
        }

        else
        {
          v36 = &unk_100004EA7;
        }

        if ((v32 & 0x20000000) != 0)
        {
          v35 = ", alias";
        }

        v81 = v35;
        v82 = v36;
        v80 = (&off_100008360)[(v32 >> 24) & 3];
        v37 = *(a2 + 8);
        v38 = *(a2 + 4) + 1;
        do
        {
          if ((v37 & (1 << v30)) != 0)
          {
            sub_100002308("| ");
          }

          else
          {
            sub_100002308("  ");
          }

          ++v30;
        }

        while (v30 <= v38);
        sub_100002334("    %02lu: phys.hi: %08lx phys.mid: %08lx phys.lo: %08lx", v39, v40, v41, v42, v43, v44, v45, v29, *v31, v31[1], v31[2]);
        v46 = 0;
        v47 = *(a2 + 8);
        v48 = *(a2 + 4) + 1;
        do
        {
          if ((v47 & (1 << v46)) != 0)
          {
            sub_100002308("| ");
          }

          else
          {
            sub_100002308("  ");
          }

          ++v46;
        }

        while (v46 <= v48);
        sub_100002334("        size.hi: %08lx size.lo: %08lx", v49, v50, v51, v52, v53, v54, v55, v31[3], v31[4]);
        v56 = 0;
        v57 = *(a2 + 8);
        v58 = *(a2 + 4) + 1;
        do
        {
          if ((v57 & (1 << v56)) != 0)
          {
            sub_100002308("| ");
          }

          else
          {
            sub_100002308("  ");
          }

          ++v56;
        }

        while (v56 <= v58);
        sub_100002334("        bus: %lu dev: %lu func: %lu reg: %lu", v59, v60, v61, v62, v63, v64, v65, v79, v78, v77, v33);
        v66 = 0;
        v67 = *(a2 + 8);
        v68 = *(a2 + 4) + 1;
        do
        {
          if ((v67 & (1 << v66)) != 0)
          {
            sub_100002308("| ");
          }

          else
          {
            sub_100002308("  ");
          }

          ++v66;
        }

        while (v66 <= v68);
        result = sub_100002334("        type: %s flags: %s%s%s", v69, v70, v71, v72, v73, v74, v75, v80, v83, v82, v81);
        ++v29;
      }

      while (v29 != v20 / 0x14);
    }
  }

  else
  {

    return sub_100002334("<>", v13, v14, v15, v16, v17, v18, v19);
  }

  return result;
}

uint64_t sub_100003C50(io_registry_entry_t a1, CFStringRef key)
{
  v2 = IORegistryEntrySearchCFProperty(a1, "IODeviceTree", key, kCFAllocatorDefault, 3u);
  if (v2)
  {
    v3 = v2;
    v4 = *CFDataGetBytePtr(v2);
    CFRelease(v3);
  }

  else
  {
    sub_100004474();
    return 0;
  }

  return v4;
}

BOOL sub_100003CB4(int a1, io_service_t *a2)
{
  *bytes = a1;
  keys = @"AAPL,phandle";
  v9 = @"IOPropertyMatch";
  values = CFDataCreate(0, bytes, 4);
  cf = CFDictionaryCreate(0, &keys, &values, 1, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v3 = CFDictionaryCreate(0, &v9, &cf, 1, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v3);
  *a2 = MatchingService;
  v5 = MatchingService != 0;
  CFRelease(cf);
  CFRelease(values);
  return v5;
}

void *sub_100003D90(io_registry_entry_t a1, io_string_t path)
{
  if (IORegistryEntryGetPath(a1, "IODeviceTree", path))
  {
    sub_1000044B4(path);
  }

  v3 = strchr(path, 58);
  v4 = strlen(v3 + 1) + 1;

  return memmove(path, v3 + 1, v4);
}

uint64_t sub_100003EE0(void *a1)
{
  result = fprintf(__stderrp, "ioreg: error: %s.\n", "can't obtain properties");
  *a1 = 0;
  return result;
}

uint64_t sub_100003F88(void *a1)
{
  result = fprintf(__stderrp, "ioreg: error: %s.\n", "can't obtain identifier");
  *a1 = -1;
  return result;
}

uint64_t sub_100004304(_DWORD *a1)
{
  result = fprintf(__stderrp, "ioreg: error: %s.\n", "error looking up phandle");
  *a1 = 0;
  return result;
}

uint64_t sub_100004390(_DWORD *a1)
{
  result = fprintf(__stderrp, "ioreg: error: %s.\n", "unable to get device tree parent");
  *a1 = 0;
  return result;
}

uint64_t sub_1000044B4(char *a1)
{
  result = fprintf(__stderrp, "ioreg: error: %s.\n", "unable to get path");
  strcpy(a1, "<path error");
  return result;
}