unint64_t bitmap_count_bits(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= a4)
  {
    return 0;
  }

  result = 0;
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (a2)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  do
  {
    v8 = a4 - a3;
    if (a4 - a3 < 1)
    {
      break;
    }

    v9 = (a1 + 8 * (a3 / 64));
    while (1)
    {
      v10 = a3 & 0x3F;
      if (a3 <= 0)
      {
        v10 = -(-a3 & 0x3F);
      }

      v11 = 64 - v10;
      v13 = *v9++;
      v12 = v13;
      if (64 - v10 >= v8)
      {
        v11 = v8;
      }

      v14 = __clz(__rbit64((v12 >> v10) ^ v6));
      if (v11 > v14)
      {
        break;
      }

      a3 += v11;
      v15 = v8 <= v11;
      v8 -= v11;
      if (v15)
      {
        return result;
      }
    }

    v16 = v14 + a3;
    v17 = a4 - (v14 + a3);
    if (v17 < 1)
    {
      return result - v16 + a4;
    }

    v18 = v16 + 63;
    if (v16 >= 0)
    {
      v18 = v14 + a3;
    }

    v19 = (a1 + 8 * (v18 >> 6));
    v20 = v14 + a3;
    while (1)
    {
      v21 = v20 & 0x3F;
      if (v20 <= 0)
      {
        v21 = -(-v20 & 0x3F);
      }

      v22 = 64 - v21;
      v24 = *v19++;
      v23 = v24;
      if (64 - v21 >= v17)
      {
        v22 = v17;
      }

      v25 = __clz(__rbit64((v23 >> v21) ^ v7));
      if (v22 > v25)
      {
        break;
      }

      v20 += v22;
      v15 = v17 <= v22;
      v17 -= v22;
      if (v15)
      {
        return result - v16 + a4;
      }
    }

    a3 = v25 + v20;
    result = result - v16 + v25 + v20;
  }

  while ((v25 + v20) < a4);
  return result;
}

uint64_t nx_corruption_detected_int(uint64_t a1)
{
  if (a1)
  {
    is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(a1);
    log_corrupt(is_panic_on_corruption_enabled, "%s:%d: %s Container corruption detected by %s:%u!\n");
  }

  else
  {
    v2 = nx_is_panic_on_corruption_enabled(0);
    log_corrupt(v2, "%s:%d: Container corruption detected by %s:%u!\n");
  }

  return 92;
}

unint64_t obj_checksum_verify_phys(void *a1, int a2, int8x16_t a3, int8x16_t a4)
{
  result = fletcher64_verify_cksum(a1, (a1 + 1), (a2 - 8), 0, a3, a4);
  if (result)
  {
    log_err("%s:%d: failed: cksum 0x%016llx, oid 0x%llx, type 0x%x/0x%x, size %d\n", "obj_checksum_verify_phys", 52, *a1, a1[1], *(a1 + 6), *(a1 + 7), a2);
    is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(0);
    log_corrupt(is_panic_on_corruption_enabled, "%s:%d: Container corruption detected by %s:%u!\n", "nx_corruption_detected_int", 39, "obj_checksum_verify_phys", 54);
    return 92;
  }

  return result;
}

uint64_t nx_superblock_sanity_check_extent(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v5 = (a2 + 48);
  if (!a2)
  {
    v5 = (a1 + 40);
  }

  v6 = *v5;
  if ((a5 ^ 1u) > a3 || v6 - 1 < a3)
  {
    return 22;
  }

  if (a4 < 2)
  {
    return 0;
  }

  if (v6 - a3 >= a4)
  {
    return 0;
  }

  return 22;
}

unint64_t nx_check_superblock(uint64_t a1, unsigned int a2, int a3, int8x16_t a4, int8x16_t a5)
{
  if (a2 < 0x1000)
  {
    return 22;
  }

  if (*(a1 + 32) != 1112758350)
  {
    return 79;
  }

  if (a3 || (v8 = *(a1 + 36), v8 == a2))
  {
    result = obj_checksum_verify_phys(a1, a2, a4, a5);
    if (result)
    {
      return result;
    }

    v8 = *(a1 + 36);
  }

  v9 = *(a1 + 24);
  v10 = v9 != -2147483647;
  if (v9 == -2147483647)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (*(a1 + 28))
  {
    v10 = v11;
  }

  if (*(a1 + 8) != 1)
  {
    ++v10;
  }

  if (v8 < 0x1000)
  {
    ++v10;
  }

  if (v8 <= 0x10000)
  {
    v12 = v10;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (*(a1 + 88) < 0x400uLL)
  {
    ++v12;
  }

  v13 = *(a1 + 104);
  if ((v13 & 0x7FFFFFF8) != 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = v12 + 1;
  }

  v15 = v13 & 0x7FFFFFFF;
  v16 = *(a1 + 40);
  if ((v13 & 0x7FFFFFFF) > 0x1000)
  {
    ++v14;
  }

  if (v16 <= v15)
  {
    ++v14;
  }

  v17 = *(a1 + 112);
  v18 = v16 - 1;
  v20 = v17 < 1 || v18 < v17;
  if ((v13 & 0x80000000) != 0)
  {
    v14 += v20;
  }

  else if ((v20 & 1) != 0 || v13 >= 2 && v16 - v17 < v13)
  {
    ++v14;
  }

  if (*(a1 + 128) >= v15)
  {
    ++v14;
  }

  v21 = *(a1 + 108);
  if ((v21 & 0x7FFFFFF8) != 0)
  {
    v22 = v14;
  }

  else
  {
    v22 = v14 + 1;
  }

  v23 = v21 & 0x7FFFFFFF;
  if (v16 > (v21 & 0x7FFFFFFF))
  {
    v24 = v22;
  }

  else
  {
    v24 = v22 + 1;
  }

  v25 = *(a1 + 120);
  v27 = v25 < 1 || v18 < v25;
  if ((v21 & 0x80000000) != 0)
  {
    v24 += v27;
    LODWORD(v21) = 1;
  }

  else if ((v27 & 1) != 0 || v21 >= 2 && v16 - v25 < v21)
  {
    ++v24;
  }

  if (*(a1 + 132) < v23)
  {
    v28 = v24;
  }

  else
  {
    v28 = v24 + 1;
  }

  if ((v13 & 0x80000000) != 0)
  {
    LODWORD(v13) = 1;
  }

  if (v17 >= v25)
  {
    v13 = v21;
  }

  else
  {
    v13 = v13;
  }

  if (v17 >= v25)
  {
    v29 = *(a1 + 120);
  }

  else
  {
    v29 = *(a1 + 112);
  }

  if (v17 <= v25)
  {
    v17 = *(a1 + 120);
  }

  if ((v29 + v13) <= v17)
  {
    v30 = v28;
  }

  else
  {
    v30 = v28 + 1;
  }

  if ((*(a1 + 64) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    if (v30)
    {
      v31 = 193;
LABEL_106:
      is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(0);
      log_corrupt(is_panic_on_corruption_enabled, "%s:%d: Container corruption detected by %s:%u!\n", "nx_corruption_detected_int", 39, "nx_check_superblock", v31);
      return 92;
    }

    return 0;
  }

  v32 = *(a1 + 140);
  if (!*(a1 + 152))
  {
    ++v30;
  }

  if (!*(a1 + 160))
  {
    ++v30;
  }

  if (!(a3 | v32))
  {
    if (!*(a1 + 148) && !*(a1 + 136) && !*(a1 + 144))
    {
      goto LABEL_104;
    }

    v32 = 0;
  }

  if (*(a1 + 136) >= v15)
  {
    ++v30;
  }

  v33 = *(a1 + 148);
  if (*(a1 + 144) >= v23)
  {
    ++v30;
  }

  if (v32 < 2)
  {
    ++v30;
  }

  if (v32 < v15)
  {
    v34 = v30;
  }

  else
  {
    v34 = v30 + 1;
  }

  if (v33 < 2)
  {
    ++v34;
  }

  if (v33 < v23)
  {
    v30 = v34;
  }

  else
  {
    v30 = v34 + 1;
  }

LABEL_104:
  if (v30 | (*(a1 + 180) > 0x64u))
  {
    v31 = 226;
    goto LABEL_106;
  }

  return 0;
}

uint64_t io_container_is_external(uint64_t a1)
{
  v1 = a1;
  IOObjectRetain(a1);
  if (!v1)
  {
    return 0;
  }

  iterator = 0;
  while (1)
  {
    parent = 0;
    if (IOObjectConformsTo(v1, "AppleAPFSContainerScheme"))
    {
      break;
    }

    if (IOObjectConformsTo(v1, "IOBlockStorageDevice"))
    {
      goto LABEL_15;
    }

    if (IORegistryEntryGetParentEntry(v1, "IOService", &parent))
    {
      parent = 0;
    }

    IOObjectRelease(v1);
    v1 = parent;
    if (!parent)
    {
      return 0;
    }
  }

  v3 = *MEMORY[0x277CBECE8];
  v4 = IORegistryEntrySearchCFProperty(v1, "IOService", @"Device Characteristics", *MEMORY[0x277CBECE8], 3u);
  if (v4)
  {
    v5 = v4;
    Value = CFDictionaryGetValue(v4, @"Target Disk Mode");
    if (Value)
    {
      v7 = CFBooleanGetValue(Value);
      CFRelease(v5);
      if (v7)
      {
LABEL_15:
        v2 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      CFRelease(v5);
    }
  }

  if (MEMORY[0x23EEDB640](v1, "IOService", &iterator))
  {
    goto LABEL_15;
  }

  while (1)
  {
    while (1)
    {
      v9 = IOIteratorNext(iterator);
      if (!v9)
      {
        v2 = 0;
        goto LABEL_32;
      }

      v10 = v9;
      if (!io_search_for_BOOLean_property(v9, @"image-format-read-only"))
      {
        break;
      }

LABEL_28:
      IOObjectRelease(v10);
    }

    if (io_search_for_BOOLean_property(v10, @"Removable"))
    {
      break;
    }

    v11 = IORegistryEntrySearchCFProperty(v10, "IOService", @"Protocol Characteristics", v3, 3u);
    if (!v11)
    {
      goto LABEL_28;
    }

    v12 = v11;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID != CFGetTypeID(v12) || (v14 = CFDictionaryGetValue(v12, @"Physical Interconnect Location")) == 0 || (v15 = v14, v16 = CFStringGetTypeID(), v16 != CFGetTypeID(v15)))
    {
      CFRelease(v12);
      goto LABEL_28;
    }

    v17 = CFEqual(v15, @"Internal");
    CFRelease(v12);
    IOObjectRelease(v10);
    if (!v17)
    {
      goto LABEL_31;
    }
  }

  IOObjectRelease(v10);
LABEL_31:
  v2 = 1;
LABEL_32:
  IOObjectRelease(iterator);
LABEL_16:
  IOObjectRelease(v1);
  return v2;
}

BOOL io_search_for_BOOLean_property(io_registry_entry_t a1, CFStringRef key)
{
  v2 = IORegistryEntrySearchCFProperty(a1, "IOService", key, *MEMORY[0x277CBECE8], 3u);
  if (!v2)
  {
    return 0;
  }

  v3 = v2 == *MEMORY[0x277CBED28];
  CFRelease(v2);
  return v3;
}

uint64_t io_get_device_features(int a1, dev_t *a2, _DWORD *a3, _DWORD *a4, dev_t *a5)
{
  if (a2)
  {
    v27.st_dev = 0;
    if (ioctl(a1, 0x4004644CuLL, &v27))
    {
      if (*__error() != 25)
      {
        v10 = __error();
        v11 = strerror(*v10);
        log_err("%s:%d: can't get features for device (%s)\n", "io_get_device_features", 180, v11);
      }

      st_dev = 0;
    }

    else
    {
      st_dev = v27.st_dev;
    }

    *a2 = st_dev;
  }

  if (a3)
  {
    *a3 = (fcntl(a1, 3) & 3) != 0;
  }

  if (a4)
  {
    memset(&v27, 0, sizeof(v27));
    if (!fstat(a1, &v27) && (v27.st_mode & 0xB000 | 0x4000) == 0x6000)
    {
      v13 = IOServiceMatching("IOMedia");
      if (!v13)
      {
        goto LABEL_13;
      }

      v25 = v27.st_rdev & 0xFFFFFF;
      valuePtr = HIBYTE(v27.st_rdev);
      v17 = *MEMORY[0x277CBECE8];
      v18 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
      if (v18)
      {
        v19 = v18;
        CFDictionarySetValue(v13, @"BSD Major", v18);
        CFRelease(v19);
      }

      v20 = CFNumberCreate(v17, kCFNumberIntType, &v25);
      if (v20)
      {
        v21 = v20;
        CFDictionarySetValue(v13, @"BSD Minor", v20);
        CFRelease(v21);
      }

      MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD28A0], v13);
      if (MatchingService)
      {
        v23 = MatchingService;
        LODWORD(v13) = io_container_is_external(MatchingService);
        IOObjectRelease(v23);
        goto LABEL_13;
      }

      log_debug("%s:%d: fd %d is type %o rdev %d (%d, %d): I/O registry entry not found\n", "io_get_device_features", 228, a1, v27.st_mode & 0xF000, v27.st_rdev, HIBYTE(v27.st_rdev), v27.st_rdev & 0xFFFFFF);
    }

    LODWORD(v13) = 0;
LABEL_13:
    *a4 = v13;
  }

  if (a5)
  {
    v27.st_dev = 0;
    if (ioctl(a1, 0x4004644FuLL, &v27))
    {
      if (*__error() != 25)
      {
        v14 = __error();
        v15 = strerror(*v14);
        log_err("%s:%d: can't get solidstate for device (%s)\n", "io_get_device_features", 244, v15);
      }

      v16 = 1;
    }

    else
    {
      v16 = v27.st_dev;
    }

    *a5 = v16;
  }

  return 0;
}

uint64_t device_parse(char *__s2, char *a2, char *a3, size_t a4, char **a5)
{
  if (!strncmp("/dev/", __s2, 5uLL))
  {
    v10 = 5;
  }

  else
  {
    v10 = 0;
  }

  v11 = &__s2[v10];
  if (!strncmp(&__s2[v10], "disk", 4uLL))
  {
    result = snprintf(a2, a4, "%s%s", "/dev/", v11);
    if (a3)
    {
      result = snprintf(a3, a4, "%sr%s");
    }

    goto LABEL_14;
  }

  if (!strncmp(v11, "rdisk", 5uLL))
  {
    result = snprintf(a2, a4, "%s%s", "/dev/", v11 + 1);
    if (a3)
    {
      result = snprintf(a3, a4, "%s%s");
    }

LABEL_14:
    if (!a5)
    {
      return result;
    }

    a2 += 5;
    goto LABEL_16;
  }

  result = strlcpy(a2, __s2, a4);
  if (a3)
  {
    result = strlcpy(a3, __s2, a4);
  }

  if (a5)
  {
LABEL_16:
    *a5 = a2;
  }

  return result;
}

uint64_t get_container_io_object(char *bsdName)
{
  v1 = *MEMORY[0x277CD28A0];
  v2 = IOBSDNameMatching(*MEMORY[0x277CD28A0], 0, bsdName);
  result = IOServiceGetMatchingService(v1, v2);
  object = result;
  if (result)
  {
    v4 = io_next_child(&object, "AppleAPFSContainer");
    result = object;
    if ((v4 & 1) == 0)
    {
      IOObjectRelease(object);
      return 0;
    }
  }

  return result;
}

const char *device_basename(const char *a1)
{
  v1 = a1;
  if (!strncmp(a1, "/dev/", 5uLL))
  {
    v2 = *(v1 + 5);
    v1 += 5;
    if (v2 == 114)
    {
      ++v1;
    }
  }

  return v1;
}

unint64_t device_container_path(char *a1, _DWORD *a2)
{
  if (!device_is_volume(a1))
  {
    return 0;
  }

  result = strrchr(a1, 115);
  if (result)
  {
    v5 = result;
    result = strtoul((result + 1), 0, 10);
    if (result)
    {
      v6 = result;
      result = strndup(a1, v5 - a1);
      if (result)
      {
        if (a2)
        {
          *a2 = v6 - 1;
        }
      }
    }
  }

  return result;
}

BOOL device_is_volume(const char *a1)
{
  v1 = a1;
  if (!strncmp(a1, "/dev/", 5uLL))
  {
    v2 = *(v1 + 5);
    v1 += 5;
    if (v2 == 114)
    {
      ++v1;
    }
  }

  v3 = *MEMORY[0x277CD28A0];
  v4 = IOBSDNameMatching(*MEMORY[0x277CD28A0], 0, v1);
  MatchingService = IOServiceGetMatchingService(v3, v4);
  if (!MatchingService)
  {
    return 0;
  }

  v6 = MatchingService;
  v7 = IOObjectConformsTo(MatchingService, "AppleAPFSVolume") != 0;
  IOObjectRelease(v6);
  return v7;
}

uint64_t io_next_child(io_object_t *a1, const char *a2)
{
  iterator = 0;
  v4 = MEMORY[0x23EEDB610](*a1, "IOService", &iterator);
  result = 0;
  if (!v4)
  {
    v6 = IOIteratorNext(iterator);
    if (v6)
    {
      v7 = v6;
      while (!IOObjectConformsTo(v7, a2))
      {
        IOObjectRelease(v7);
        v7 = IOIteratorNext(iterator);
        if (!v7)
        {
          goto LABEL_6;
        }
      }

      IOObjectRelease(iterator);
      IOObjectRelease(*a1);
      *a1 = v7;
      return 1;
    }

    else
    {
LABEL_6:
      IOObjectRelease(iterator);
      return 0;
    }
  }

  return result;
}

uint64_t get_first_child_of_class(uint64_t a1, const char *a2)
{
  iterator = 0;
  v3 = 0;
  if (!MEMORY[0x23EEDB610](a1, "IOService", &iterator))
  {
    while (1)
    {
      v4 = IOIteratorNext(iterator);
      v3 = v4;
      if (!v4 || IOObjectConformsTo(v4, a2))
      {
        break;
      }

      IOObjectRelease(v3);
    }

    IOObjectRelease(iterator);
  }

  return v3;
}

char *mounted_device(char *a1, CFStringRef theString)
{
  v5 = *MEMORY[0x277D85DE8];
  memset(v4, 0, sizeof(v4));
  if (theString && CFStringGetCString(theString, v4, 128, 0x8000100u))
  {
    a1 = v4;
  }

  return mounted_device_internal(a1, 0);
}

char *mounted_device_internal(char *result, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v3 = result;
    v7 = 0;
    v8 = 0;
    *__s1 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    device_parse(result, __s1, 0, 0x80uLL, &v7);
    v4 = getmntinfo(&v8, 2);
    if (!v4)
    {
      return 0;
    }

    v5 = v4;
    for (i = v8->f_mntfromname; ; i += 2168)
    {
      if (a2)
      {
        if (strstr(i, v3))
        {
          return i - 1024;
        }
      }

      else if (!strcmp(__s1, i))
      {
        return i - 1024;
      }

      v8 = (i + 1056);
      if (!--v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t physical_store_to_container(uint64_t a1)
{
  *iterator = 0;
  object = 0;
  v1 = 0;
  if (MEMORY[0x23EEDB610](a1, "IOService", &iterator[1]))
  {
    return v1;
  }

  v2 = IOIteratorNext(iterator[1]);
  if (!v2)
  {
LABEL_18:
    v1 = 0;
    LODWORD(v5) = iterator[1];
    goto LABEL_20;
  }

  v3 = v2;
  while (1)
  {
    if (!IOObjectConformsTo(v3, "AppleAPFSContainerScheme") || MEMORY[0x23EEDB610](v3, "IOService", iterator))
    {
      goto LABEL_17;
    }

    v4 = IOIteratorNext(iterator[0]);
    if (v4)
    {
      break;
    }

LABEL_16:
    IOObjectRelease(iterator[0]);
LABEL_17:
    IOObjectRelease(v3);
    v3 = IOIteratorNext(iterator[1]);
    if (!v3)
    {
      goto LABEL_18;
    }
  }

  v5 = v4;
  while (1)
  {
    if (!IOObjectConformsTo(v5, "AppleAPFSMedia") || MEMORY[0x23EEDB610](v5, "IOService", &object))
    {
      goto LABEL_15;
    }

    v6 = IOIteratorNext(object);
    if (v6)
    {
      break;
    }

LABEL_14:
    IOObjectRelease(object);
LABEL_15:
    IOObjectRelease(v5);
    v5 = IOIteratorNext(iterator[0]);
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  v1 = v6;
  while (!IOObjectConformsTo(v1, "AppleAPFSContainer"))
  {
    IOObjectRelease(v1);
    v1 = IOIteratorNext(object);
    if (!v1)
    {
      goto LABEL_14;
    }
  }

  IOObjectRelease(iterator[1]);
  IOObjectRelease(iterator[0]);
  IOObjectRelease(object);
  IOObjectRelease(v3);
LABEL_20:
  IOObjectRelease(v5);
  return v1;
}

uint64_t tx_mgr_init(uint64_t a1, uint64_t a2, pthread_mutex_t **a3)
{
  v6 = *(*(a1 + 376) + 36);
  v7 = _apfs_calloc_typed(1uLL, 0x130uLL, 0x10A0040BC325467uLL);
  if (v7)
  {
    v8 = v7;
    v7[1].__sig = a2;
    *v7[1].__opaque = 0;
    *&v7[1].__opaque[40] = 0;
    *&v7[1].__opaque[8] = 0;
    *&v7[1].__opaque[12] = (v6 - 40) / 0x28uLL;
    *&v7[1].__opaque[48] = v7 + 112;
    v7[2].__sig = 0;
    *v7[2].__opaque = v7 + 2;
    inited = new_lock(v7);
    if (!inited)
    {
      v11 = new_cv((v8 + 256));
      if (v11)
      {
        v10 = v11;
        free_lock(v8);
        goto LABEL_7;
      }

      if ((*(a1 + 627) & 1) != 0 || (inited = tx_mgr_init_tx(v8, v6), !inited))
      {
        v10 = 0;
        v13 = *(a1 + 376);
        v14 = *(v13 + 104) & 0x7FFFFFFF7FFFFFFFLL;
        *(v8 + 88) = v14;
        *(v8 + 96) = *(v13 + 128);
        *(v8 + 104) = v14;
        *a3 = v8;
        return v10;
      }
    }

    v10 = inited;
LABEL_7:
    _apfs_free(v8, 304);
    return v10;
  }

  return 12;
}

uint64_t tx_mgr_init_tx(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  v4 = (a1 + 120);
  v5 = 4;
  while (1)
  {
    v6 = _apfs_calloc_typed(1uLL, 0x78uLL, 0x10A004067E43129uLL);
    if (!v6)
    {
      break;
    }

    v7 = v6;
    v6[7] = _apfs_malloc_typed(v3, 0x256D25E1uLL);
    v7[8] = _apfs_malloc_typed(v3, 0x60A3118CuLL);
    v8 = *v4;
    *v7 = 0;
    v7[1] = v8;
    *v8 = v7;
    *v4 = v7;
    if (!v7[7] || !v7[8])
    {
      break;
    }

    if (!--v5)
    {
      return 0;
    }
  }

  while (1)
  {
    v15 = *(a1 + 112);
    if (!v15)
    {
      break;
    }

    v10 = *v15;
    v11 = v15[1];
    v12 = (*v15 + 8);
    if (!*v15)
    {
      v12 = v4;
    }

    *v12 = v11;
    *v11 = v10;
    v13 = v15[7];
    if (v13)
    {
      _apfs_free(v13, v3);
    }

    v14 = v15[8];
    if (v14)
    {
      _apfs_free(v14, v3);
    }

    _apfs_free(v15, 120);
  }

  return 12;
}

void tx_mgr_free_tx(uint64_t a1, void *a2, unsigned int a3)
{
  v6 = a2[18];
  if (v6)
  {
    log_err("%s:%d: %s Trash unfinished tx xid=0x%llx\n", "tx_mgr_free_tx", 187, (*(a1 + 384) + 212), *(v6 + 16));
    v7 = a2[18];
    v8 = a2[15];
    *v7 = 0;
    v7[1] = v8;
    *v8 = v7;
    a2[15] = v7;
    a2[18] = 0;
  }

  v9 = a2[16];
  if (v9)
  {
    log_err("%s:%d: %s Trash unfinished pending tx, xid range = 0x%llx - 0x%llx\n", "tx_mgr_free_tx", 195, (*(a1 + 384) + 212), *(v9 + 16), *(**(a2[17] + 8) + 16));
    v10 = a2[16];
    if (v10)
    {
      *a2[15] = v10;
      *(a2[16] + 8) = a2[15];
      a2[15] = a2[17];
      a2[16] = 0;
      a2[17] = a2 + 16;
    }
  }

  v11 = a2[14];
  if (v11)
  {
    v12 = a2 + 15;
    do
    {
      v14 = *v11;
      v13 = v11[1];
      v15 = (*v11 + 8);
      if (!*v11)
      {
        v15 = v12;
      }

      *v15 = v13;
      *v13 = v14;
      v16 = v11[7];
      if (v16)
      {
        _apfs_free(v16, a3);
      }

      v17 = v11[8];
      if (v17)
      {
        _apfs_free(v17, a3);
      }

      _apfs_free(v11, 120);
      v11 = v14;
    }

    while (v14);
  }
}

void tx_mgr_destroy(uint64_t a1, uint64_t a2, unsigned int a3)
{
  tx_mgr_free_tx(a1, a2, a3);
  free_lock(a2);
  free_cv((a2 + 256));

  _apfs_free(a2, 304);
}

BOOL xid_is_current_tx(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 624) == 1)
  {
    v2 = (*(a1 + 376) + 96);
    return *v2 == a2;
  }

  v3 = *(a1 + 400);
  if (v3)
  {
    v4 = *(v3 + 144);
    if (v4)
    {
      v2 = (v4 + 16);
      return *v2 == a2;
    }
  }

  return 0;
}

uint64_t tx_checkpoint_space_check(uint64_t a1, uint64_t a2, int a3)
{
  v6 = 0;
  v7 = *(a1 + 400);
  while (1)
  {
    v8 = *(v7 + 96);
    v9 = *(v7 + 104);
    v10 = v9;
    if (v8 > v9)
    {
      v10 = *(v7 + 88) + v9;
    }

    v11 = *(v7 + 100);
    v12 = *(v7 + 108);
    v13 = v12;
    if (v11 > v12)
    {
      v13 = *(v7 + 92) + v12;
    }

    v14 = v10 - v8;
    v15 = v13 - v11;
    v16 = *(a2 + 48) + a3;
    if (v16 <= v15 && !(v6 & 1 | (*(a2 + 40) + 1 > v14)))
    {
      return 0;
    }

    if ((v6 & 1) != 0 || !*(v7 + 128))
    {
      break;
    }

    tx_barrier_internal(a1, 80, 0);
    v6 = 1;
  }

  if (!*(v7 + 82))
  {
    log_err("%s:%d: %s checkpoint area out of space: stable: %d %d - next %d %d available %d %d tx[%lld] %d %d\n", "tx_checkpoint_space_check", 493, (*(a1 + 384) + 212), v9, v12, v8, v11, v14, v15, *(a2 + 16), *(a2 + 40) + 1, v16);
  }

  *(v7 + 82) = 1;
  return 28;
}

uint64_t tx_barrier_internal(uint64_t a1, char a2, int a3)
{
  v5 = *(a1 + 400);
  if ((a2 & 0x40) != 0)
  {
    v6 = *(v5 + 128);
    if (!v6 || (*(v6 + 24) & 0x40) == 0)
    {
      return 0;
    }
  }

  if (a3)
  {
    pthread_mutex_unlock(*(a1 + 400));
  }

  v7 = dev_barrier(*(a1 + 384));
  if (a3)
  {
    pthread_mutex_lock(v5);
  }

  if (v7 == 25 || v7 == 0)
  {
    v9 = *(v5 + 128);
    if (v9)
    {
      do
      {
        v10 = *v9;
        v11 = *(v9 + 6);
        if ((v11 & 0x40) != 0)
        {
          *(v9 + 6) = v11 & 0xFFFFFFBF;
          v21.tv_sec = 0;
          v21.tv_nsec = 0;
          clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v21);
          v12 = 1000000 * v21.tv_sec + SLODWORD(v21.tv_nsec) / 1000;
          v13 = v12 - v9[9];
          v9[9] = v12;
          v9[13] += v13;
          v14 = v9[2];
          if (*(a1 + 632) != 1 || v14 < *(*(a1 + 376) + 1408))
          {
            v15 = *(v9 + 11);
            *(v5 + 104) = *(v9 + 9);
            *(v5 + 108) = v15;
          }

          spaceman_tx_complete(a1, v14);
          v16 = *v9;
          v17 = v9[1];
          v18 = (*v9 + 8);
          if (!*v9)
          {
            v18 = (v5 + 136);
          }

          *v18 = v17;
          *v17 = v16;
          v19 = *(v5 + 120);
          *v9 = 0;
          v9[1] = v19;
          *v19 = v9;
          *(v5 + 120) = v9;
          cv_wakeup((v5 + 256));
        }

        v9 = v10;
      }

      while (v10);
    }

    return 0;
  }

  return v7;
}

uint64_t tx_checkpoint_write_prepare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*(a1 + 376) + 36) + *(a3 + 48) - 1) / *(*(a1 + 376) + 36);
  v6 = *(a2 + 64);
  if (*(v6 + 36) == *(*(a1 + 400) + 84))
  {
    ++*(a2 + 40);
    *(v6 + 36) = 0;
  }

  v7 = tx_checkpoint_space_check(a1, a2, v5);
  if (!v7)
  {
    if ((*(a3 + 19) & 0x20) == 0)
    {
      v10 = *(a3 + 56);
      v8.i64[0] = *(a3 + 36);
      v10[3] = v8.i64[0];
      v11 = *(a2 + 16);
      v10[1] = *(a3 + 112);
      v10[2] = v11;
      obj_checksum_set(a3, v8, v9);
    }

    *(a3 + 120) = *(a2 + 16);
    *(a3 + 144) = 0;
    ++*(*(a2 + 64) + 36);
    *(a2 + 48) += v5;
  }

  return v7;
}

uint64_t tx_checkpoint_write(uint64_t *a1, uint64_t a2, uint64_t a3, int8x16_t a4, int8x16_t a5)
{
  v8 = a1[50];
  v40 = 0;
  v38 = 0;
  v9 = *(a1[47] + 36);
  v10 = *(a3 + 48);
  v11 = *(a2 + 64);
  if (*(v11 + 36) == v8[21])
  {
    obj_checksum_set_phys(a1, v11, *(a1[47] + 36), a4, a5);
    v12 = dev_write(a1[48]);
    if (v12)
    {
      v13 = v12;
      if (!v8[19])
      {
        log_err("%s:%d: %s failed to write checkpoint map block %lld: %d\n");
      }

      return v13;
    }

    v14 = (*(a2 + 40) + v8[24]) % v8[22];
    v40 = -1;
    v15 = nx_checkpoint_desc_block_address(a1, v14, &v40);
    if (v15)
    {
      v13 = v15;
      if (!v8[19])
      {
        log_err("%s:%d: %s error getting next checkpoint map block address %d: %d\n");
      }

      return v13;
    }

    bzero(*(a2 + 64), v9);
    v16 = *(a2 + 64);
    *(v16 + 24) = 1073741836;
    v17 = *(a2 + 16);
    *(v16 + 8) = v40;
    *(v16 + 16) = v17;
    ++*(a2 + 40);
  }

  v18 = (*(a2 + 48) + v8[25]) % v8[23];
  v39 = -1;
  v19 = nx_checkpoint_data_block_address(a1, v18, &v39, &v38);
  if (v19)
  {
    v13 = v19;
    if (!v8[19])
    {
      log_err("%s:%d: %s error getting next checkpoint data block address %d: %d\n");
    }
  }

  else
  {
    v20 = (v9 + v10 - 1) / v9;
    pthread_mutex_lock((a1[49] + 328));
    for (i = (a3 + 32); (atomic_fetch_or_explicit(i, 8u, memory_order_relaxed) & 8) != 0; i = (a3 + 32))
    {
      pthread_mutex_unlock((a1[49] + 328));
      pthread_mutex_lock((a1[49] + 328));
    }

    v36 = *(a3 + 64);
    *(a3 + 128) = v39;
    v37 = v20;
    if (v20 < 1)
    {
LABEL_27:
      if (v36 == *(a3 + 56))
      {
        v26 = 0;
      }

      else
      {
        v26 = v36;
      }

      *(a3 + 64) = 0;
      v27 = a1[49];
      v28 = *(*(v27 + 872) + 104);
      *(v27 + 872) = v28;
      if (!v28)
      {
        *(v27 + 880) = v27 + 872;
      }

      *(a3 + 104) = 3735928559;
      atomic_fetch_and_explicit((a3 + 32), 0xFFFFFFF7, memory_order_relaxed);
      pthread_mutex_unlock((a1[49] + 328));
      v29 = *(a2 + 64);
      v30 = *(v29 + 36);
      v31 = v29 + 40 * v30;
      *(v31 + 40) = *(a3 + 36);
      *(v31 + 48) = *(a3 + 48);
      v32 = *(a3 + 8);
      if (v32)
      {
        v32 = obj_oid(v32);
        v29 = *(a2 + 64);
        v30 = *(v29 + 36);
      }

      v33 = (v29 + 40 * v30);
      v34 = *(a3 + 112);
      v33[7] = v32;
      v33[8] = v34;
      v33[9] = *(a3 + 128);
      *(v29 + 36) = v30 + 1;
      *(a2 + 48) += v37;
      if (v26)
      {
        fs_obj_zfree_oc(v26, *(a3 + 48), *(a3 + 16), a1[49]);
      }

      return 0;
    }

    else
    {
      v22 = v36;
      v23 = v37;
      while (1)
      {
        v24 = v38 >= v23 ? v23 : v38;
        v25 = dev_write(a1[48]);
        if (v25)
        {
          break;
        }

        v23 -= v24;
        if (!v23)
        {
          goto LABEL_27;
        }

        v18 = v18 + v24 >= (*(a1[47] + 108) & 0x7FFFFFFFu) ? 0 : (v18 + v24);
        v25 = nx_checkpoint_data_block_address(a1, v18, &v39, &v38);
        if (v25)
        {
          break;
        }

        v22 += v24 * v9;
        if (v23 <= 0)
        {
          goto LABEL_27;
        }
      }

      v13 = v25;
      atomic_fetch_and_explicit((a3 + 32), 0xFFFFFFF7, memory_order_relaxed);
      pthread_mutex_unlock((a1[49] + 328));
      if (!v8[19])
      {
        log_err("%s:%d: %s failed to write checkpoint data block %lld: %d\n");
      }
    }
  }

  return v13;
}

uint64_t tx_barrier(uint64_t a1, char a2)
{
  v4 = *(a1 + 400);
  if (a2 < 0 && (v5 = *(v4 + 144)) != 0 && (*(v5 + 24) & 8) != 0)
  {
    v6 = 0;
    if ((a2 & 0x40) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    pthread_mutex_lock(*(a1 + 400));
    v6 = 1;
    if ((a2 & 0x40) == 0)
    {
      goto LABEL_11;
    }
  }

  v7 = *(v4 + 128);
  if (!v7 || (*(v7 + 24) & 0x40) == 0)
  {
    if (v6)
    {
      pthread_mutex_unlock(v4);
    }

    return 0;
  }

LABEL_11:
  v8 = tx_barrier_internal(a1, a2, 0);
  if (v6)
  {
    pthread_mutex_unlock(v4);
  }

  return v8;
}

const char *tx_unmount(uint64_t a1)
{
  v2 = *(a1 + 400);
  pthread_mutex_lock(v2);
  *(v2 + 72) |= 1u;
  pthread_mutex_unlock(v2);
  while (1)
  {
    result = tx_finish(a1, 8);
    if (result != 16)
    {
      break;
    }

    log_debug("%s:%d: %s waiting for transaction to finish\n", "tx_unmount", 1863, (*(a1 + 384) + 212));
    sleep(1u);
  }

  if (result)
  {
    result = log_err("%s:%d: %s tx_finish() failed, %d\n", "tx_unmount", 1878, (*(a1 + 384) + 212), result);
    if (*(a1 + 629))
    {
      return result;
    }

    pthread_mutex_lock(v2);
  }

  else
  {
    if (*(a1 + 629))
    {
      return result;
    }

    pthread_mutex_lock(v2);
    if ((*(v2 + 72) & 2) != 0)
    {
      v4 = tx_barrier_internal(a1, 16, 0);
      if (v4)
      {
        log_err("%s:%d: %s First sync/barrier failed: %d\n", "tx_unmount", 1892, (*(a1 + 384) + 212), v4);
      }

      if ((*(a1 + 628) & 1) == 0)
      {
        v7 = *(a1 + 376);
        if (*(v7 + 140))
        {
          if (*(v7 + 148))
          {
            *(v7 + 1264) |= 2uLL;
          }
        }
      }

      obj_checksum_set(a1, v5, v6);
      v8 = dev_write(*(a1 + 384));
      if (v8)
      {
        log_err("%s:%d: %s failed to write superblock to block 0: %d\n", "tx_unmount", 1903, (*(a1 + 384) + 212), v8);
      }

      v9 = tx_barrier_internal(a1, 16, 0);
      if (v9)
      {
        log_err("%s:%d: %s Final sync/barrier failed: %d\n", "tx_unmount", 1909, (*(a1 + 384) + 212), v9);
      }
    }
  }

  return pthread_mutex_unlock(v2);
}

uint64_t tx_finish(uint64_t a1, __int16 a2)
{
  if (*(a1 + 627))
  {
    return 30;
  }

  v5 = *(a1 + 400);
  pthread_mutex_lock(v5);
  v6 = *(v5 + 72);
  if ((a2 & 8) != 0 || (v6 & 1) == 0)
  {
    while (1)
    {
      v7 = *(v5 + 144);
      if ((v6 & 0x40) == 0)
      {
        break;
      }

      if (v7)
      {
        *(v7 + 24) |= 0x100000u;
      }

      if ((a2 & 0x100) != 0)
      {
        *(v5 + 72) = v6 & 0xFFFFFFF3;
        cv_wakeup((v5 + 256));
        v7 = *(v5 + 144);
      }

      if (v7)
      {
        v2 = *(v7 + 52);
        if (v2)
        {
          goto LABEL_67;
        }
      }

      cv_wait((v5 + 256), v5, 8, "nx_tx_finish_wait_for_dirty_data", 0);
      v8 = *(v5 + 144);
      if (v8)
      {
        v9 = *(v8 + 52);
        if (v9 | a2 & 0x100)
        {
          if (v9)
          {
            v2 = v9;
          }

          else
          {
            v2 = 35;
          }

          goto LABEL_67;
        }
      }

      else if ((a2 & 0x100) != 0)
      {
        v2 = 35;
LABEL_67:
        pthread_mutex_unlock(v5);
        return v2;
      }

      v6 = *(v5 + 72);
      if (a2 & 8) == 0 && (v6)
      {
        goto LABEL_18;
      }
    }

    if (!v7)
    {
      v7 = **(*(v5 + 136) + 8);
      if (!v7 || (*(v7 + 24) & 0x30) == 0)
      {
        if ((a2 & 0x11) != 0)
        {
          v2 = tx_barrier_internal(a1, a2 & 0x10, 0);
        }

        else
        {
          v2 = 0;
        }

        goto LABEL_67;
      }
    }

    if ((a2 & 2) == 0 && (v6 & 0xC) == 8)
    {
      pthread_mutex_unlock(v5);
      return 16;
    }

    v10 = *(v7 + 16);
    if ((a2 & 8) == 0)
    {
      ++*(v5 + 176);
    }

    v11 = *(v7 + 24);
    v12 = ((a2 & 0x30) << 14) & 0xFFFDFFFF | ((a2 & 1) << 17) | v11 & 0xFFEFFFFF;
    if (v11 & 0x100000 | a2 & 0x10 | a2 & 1 | a2 & 0x20)
    {
      *(v7 + 24) = v12;
    }

    if (v11)
    {
      if ((v11 & 2) != 0)
      {
        panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v12, 2, 1);
      }

      *(v7 + 24) = ((a2 & 0x30) << 14) & 0xFFFDFFFC | ((a2 & 1) << 17) | v11 & 0xFFEFFFFC | 2;
      __tp.tv_sec = 0;
      __tp.tv_nsec = 0;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      *(v7 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    }

    if (*(v7 + 28))
    {
      v2 = (16 * (a2 & 1)) ^ 0x10u;
    }

    else
    {
      if ((*(v7 + 24) & 2) != 0)
      {
        v13 = tx_transition(v7, 2, 4);
        v14 = v13;
        if (v13 > 0xF4240)
        {
          log_warn("%s:%d: %s tx xid %lld took %lld us to close\n", "tx_finish", 2126, (*(a1 + 384) + 212), *(v7 + 16), v13);
        }

        *(v5 + 248) = (*(v5 + 248) + v14) >> 1;
      }

      v2 = tx_flush_initiate(a1);
      if (!v2)
      {
        v15 = *(v5 + 72);
        if ((v15 & 0x40) != 0)
        {
          *(v5 + 72) = v15 & 0xFFFFFFF3;
          if ((a2 & 0x100) != 0)
          {
LABEL_69:
            pthread_mutex_unlock(v5);
            return 35;
          }

          cv_wakeup((v5 + 256));
        }

        v2 = 0;
      }
    }

    if ((a2 & 9) != 0)
    {
      if (a2)
      {
        v16 = 126;
      }

      else
      {
        v16 = 62;
      }

      do
      {
        if (*(v7 + 16) != v10 || (*(v7 + 24) & v16) == 0)
        {
          break;
        }

        if (!v2)
        {
          cv_wait((v5 + 256), v5, 8, "nx_tx_finish_wait", 0);
        }

        v17 = *(v5 + 72);
        if (a2 & 8) == 0 && (v17)
        {
          goto LABEL_18;
        }

        if ((a2 & 0x100) != 0 && (v17 & 4) == 0)
        {
          goto LABEL_69;
        }
      }

      while (!*(v5 + 76));
      v18 = **(*(v5 + 136) + 8);
      if (!v18 || (v2 = *(v18 + 52), !v2))
      {
        v2 = *(v7 + 52);
      }
    }

    goto LABEL_67;
  }

LABEL_18:
  pthread_mutex_unlock(v5);
  return 1;
}

uint64_t tx_enter_internal(uint64_t a1, uint64_t *a2, char a3)
{
  if (*(a1 + 627))
  {
    return 30;
  }

  v7 = *(a1 + 400);
  pthread_mutex_lock(v7);
  if (*(v7 + 72))
  {
LABEL_37:
    pthread_mutex_unlock(v7);
    return 1;
  }

  v8 = *a2;
  if (*a2 != -1)
  {
    if (v8)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v11 = *(v7 + 144);
  if (v11)
  {
    v12 = (*(v7 + 72) & 0xC) == 8;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || (*(v11 + 24) & 0x1C) != 0)
  {
    *a2 = 0;
LABEL_15:
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    v15 = 0;
    tv_sec = __tp.tv_sec;
    v32 = SLODWORD(__tp.tv_nsec) / 1000;
    while (1)
    {
      v9 = *(v7 + 144);
      if (v9 && (*(v9 + 24) & 0x1E) != 0)
      {
        if (*(v7 + 80) > 9u)
        {
          goto LABEL_69;
        }

        v16 = "nx_tx_wait";
        if ((a3 & 2) != 0)
        {
LABEL_20:
          v17 = *(v9 + 24);
          v15 = "nx_tx_wait_closing";
          if ((v17 & 2) == 0)
          {
            if ((v17 & 4) != 0)
            {
              v18 = **(*(v7 + 136) + 8);
              if (!v18 || (v15 = "nx_tx_wait_closed_prev_flushing", (*(v18 + 24) & 0x30) == 0))
              {
                v15 = "nx_tx_wait_closed";
              }
            }

            else if ((v17 & 0x18) != 0)
            {
              v15 = "nx_tx_wait_flush";
            }

            else
            {
              v15 = v16;
            }
          }

          goto LABEL_36;
        }
      }

      else
      {
        if ((a3 & 2) != 0 || (*(v7 + 72) & 8) == 0)
        {
          v3 = 0;
          v34 = 0;
          if (!v9)
          {
            goto LABEL_42;
          }

LABEL_40:
          if (*(v9 + 24))
          {
            if (!v3)
            {
              ++*(v9 + 28);
              *a2 = *(v9 + 16);
              if (v15)
              {
                v10 = v34;
                if (v34)
                {
                  if (strcmp(v15, "nx_tx_wait_frozen"))
                  {
                    __tp.tv_sec = 0;
                    __tp.tv_nsec = 0;
                    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
                    v26 = 1000000 * (__tp.tv_sec - tv_sec) - v32 + SLODWORD(__tp.tv_nsec) / 1000;
                    *(v7 + 168) += v26;
                    if (v26 > 0xF4240 && nx_ratelimit_log_allowed(a1))
                    {
                      log_warn("%s:%d: %s waited %lld us to open tx xid %lld (%s)\n", "tx_enter_internal", 2385, (*(a1 + 384) + 212), v26, *(v9 + 16), v15);
                    }

                    ++*(v7 + 160);
                  }

                  v10 = 1;
                }
              }

              else
              {
                v10 = v34;
              }

LABEL_84:
              ++*(v9 + 32);
              pthread_mutex_unlock(v7);
              if (v10)
              {
                spaceman_manage_free_queues(a1, v9);
              }

              return 0;
            }

LABEL_82:
            pthread_mutex_unlock(v7);
            return v3;
          }

          while (1)
          {
            v24 = *(v9 + 24);
            if ((v24 & 1) == 0)
            {
              break;
            }

            do
            {
              log_debug("%s:%d: %s waiting for available tx to open: xid %lld\n", "tx_enter_internal", 2370, (*(a1 + 384) + 212), *(v7 + 64));
              cv_wait((v7 + 256), v7, 8, "nx_tx_wait_open", 0);
LABEL_58:
              v9 = *(v7 + 144);
              if (v9)
              {
                goto LABEL_40;
              }

LABEL_42:
              v19 = *(v7 + 112);
            }

            while (!v19);
            *(v7 + 144) = v19;
            v21 = *v19;
            v20 = v19[1];
            v22 = (v21 + 8);
            if (!v21)
            {
              v22 = (v7 + 120);
            }

            *v22 = v20;
            *v20 = v21;
            v23 = *(v7 + 64);
            *(v7 + 64) = v23 + 1;
            v9 = *(v7 + 144);
            *(v9 + 16) = v23;
            *(v9 + 24) = 0;
            *(v9 + 32) = 0;
            *(v9 + 52) = 0;
          }

          if (*(a1 + 626) == 1)
          {
            obj_checksum_set(a1, v13, v14);
            v25 = dev_write(*(a1 + 384));
            if (v25)
            {
              v3 = v25;
              log_err("%s:%d: %s Error: tx[%lld] failed to unclean superblock: %d\n", "tx_enter_internal", 2348, (*(a1 + 384) + 212), *(*(v7 + 144) + 16), v25);
              v9 = *(v7 + 144);
LABEL_52:
              log_err("%s:%d: %s Error: tx[%lld] failed to start: %d\n", "tx_enter_internal", 2352, (*(a1 + 384) + 212), *(v9 + 16), v3);
              goto LABEL_58;
            }

            *(a1 + 626) = 0;
            v9 = *(v7 + 144);
            v24 = *(v9 + 24);
            if (v24)
            {
              panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v24, 1, 0);
            }
          }

          else if (v3)
          {
            goto LABEL_52;
          }

          *(v9 + 24) = v24 | 1;
          __tp.tv_sec = 0;
          __tp.tv_nsec = 0;
          clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
          *(v9 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
          if ((a3 & 2) != 0)
          {
            *(*(v7 + 144) + 24) |= 0x10000u;
          }

          cv_wakeup((v7 + 256));
          v3 = 0;
          v34 = 1;
          goto LABEL_58;
        }

        if (*(v7 + 80) >= 0xAu)
        {
LABEL_69:
          v27 = **(*(v7 + 136) + 8);
          if (v27)
          {
            if (*(v27 + 24) & 0x30)
            {
              v29 = 0;
            }

            else
            {
              v27 = *(v7 + 144);
              v29 = v9 == 0;
            }

            if (!v29)
            {
              v9 = v27;
              goto LABEL_78;
            }
          }

          else if (v9)
          {
LABEL_78:
            v30 = *(v9 + 52);
            if (v30)
            {
              v3 = v30;
            }

            else
            {
              v3 = 5;
            }

            goto LABEL_82;
          }

          v3 = 5;
          goto LABEL_82;
        }
      }

      if ((*(v7 + 72) & 8) != 0)
      {
        v16 = "nx_tx_wait_frozen";
      }

      else
      {
        v16 = "nx_tx_wait";
      }

      if (v9)
      {
        goto LABEL_20;
      }

      v15 = v16;
LABEL_36:
      cv_wait((v7 + 256), v7, 8, v15, 0);
      if (*(v7 + 72))
      {
        goto LABEL_37;
      }
    }
  }

  v8 = *(v11 + 16);
  *a2 = v8;
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_6:
  v9 = *(v7 + 144);
  if (v9 && v8 == *(v9 + 16))
  {
    v10 = 0;
    ++*(v9 + 28);
    goto LABEL_84;
  }

  pthread_mutex_unlock(v7);
  return 22;
}

__darwin_time_t tx_transition(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v4 = *(a1 + 24);
    if ((v4 & a2) == 0)
    {
      panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v4, a3, a2);
    }
  }

  if (a3)
  {
    v5 = *(a1 + 24);
    if ((v5 & a3) != 0)
    {
      panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v5, a3, a2);
    }
  }

  *(a1 + 24) = *(a1 + 24) & ~a2 | a3;
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
  v6 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
  result = v6 - *(a1 + 72);
  *(a1 + 72) = v6;
  return result;
}

uint64_t tx_flush_initiate(uint64_t a1)
{
  v2 = *(a1 + 400);
  for (i = *(v2 + 72); (i & 0x10) != 0; i = *(v2 + 72))
  {
    *(v2 + 72) = i | 0x20;
    cv_wait((v2 + 256), v2, 8, "nx_tx_flush_busy", 0);
  }

  *(v2 + 72) = i | 0x10;
  v4 = **(*(v2 + 136) + 8);
  if (!v4 || (v5 = *(v4 + 24), (v5 & 0x10) == 0))
  {
    v4 = *(v2 + 144);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = *(v4 + 24);
  }

  if ((v5 & 0x14) == 0 || (v6 = tx_flush(a1, v4), !v6))
  {
LABEL_9:
    v7 = *(v2 + 144);
    if (v7 && (*(v7 + 24) & 4) != 0)
    {
      v6 = tx_flush(a1, v7);
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = *(v2 + 72);
  *(v2 + 72) = v8 & 0xFFFFFFCF;
  if ((v8 & 0x20) != 0)
  {
    cv_wakeup((v2 + 256));
  }

  return v6;
}

uint64_t tx_leave(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(a1 + 627) & 1) == 0)
  {
    v7 = *(a1 + 400);
    pthread_mutex_lock(v7);
    v8 = *(v7 + 144);
    if ((*(v8 + 24) & 1) == 0)
    {
      goto LABEL_21;
    }

    if ((a3 & 4) != 0)
    {
      v9 = 0;
      ++*(v7 + 176);
    }

    else
    {
      v9 = *(v8 + 32) <= 0x186A0u && !obj_cache_tx_start_closing(*(a1 + 392)) && !spaceman_tx_start_closing(a1);
    }

    if ((*(v7 + 72) & 0x40) != 0)
    {
      if (!v9)
      {
        *(v8 + 24) |= 0x100000u;
      }
    }

    else
    {
      v10 = *(v8 + 24);
      if ((v10 & 0x100000) != 0)
      {
        v10 &= ~0x100000u;
        *(v8 + 24) = v10;
      }

      else if (v9)
      {
        goto LABEL_21;
      }

      if ((v10 & 1) == 0)
      {
        panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v10, 2, 1);
      }

      if ((v10 & 2) != 0)
      {
        panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v10, 2, 1);
      }

      *(v8 + 24) = v10 & 0xFFFFFFFC | 2;
      __tp.tv_sec = 0;
      __tp.tv_nsec = 0;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      *(v8 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    }

LABEL_21:
    if ((~a3 & 5) != 0)
    {
      if ((a3 & 0x10) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *(v8 + 24) |= 0x20000u;
      if ((a3 & 0x10) == 0)
      {
LABEL_23:
        if ((a3 & 0x20) == 0)
        {
LABEL_25:
          v11 = *(v8 + 28) - 1;
          *(v8 + 28) = v11;
          if (!v11 && (v12 = *(v8 + 24), (v12 & 2) != 0))
          {
            if ((v12 & 4) != 0)
            {
              panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v12, 4, 2);
            }

            *(v8 + 24) = v12 & 0xFFFFFFF9 | 4;
            __tp.tv_sec = 0;
            __tp.tv_nsec = 0;
            clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
            v15 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
            v16 = v15 - *(v8 + 72);
            *(v8 + 72) = v15;
            if (v16 > 0xF4240)
            {
              log_warn("%s:%d: %s tx xid %lld took %lld us to close\n", "tx_leave", 2516, (*(a1 + 384) + 212), *(v8 + 16), v16);
            }

            *(v7 + 248) = (*(v7 + 248) + v16) >> 1;
            v3 = tx_flush_initiate(a1);
            if ((a3 & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v3 = 0;
            if ((a3 & 1) == 0)
            {
LABEL_37:
              pthread_mutex_unlock(v7);
              return v3;
            }
          }

          if ((a3 & 4) != 0)
          {
            v13 = 127;
          }

          else
          {
            v13 = 63;
          }

          do
          {
            if (*(v8 + 16) != a2 || (*(v8 + 24) & v13) == 0)
            {
              break;
            }

            if (!v3)
            {
              cv_wait((v7 + 256), v7, 8, "nx_tx_finish_wait", 0);
            }
          }

          while (!*(v7 + 76));
          v3 = *(v8 + 52);
          goto LABEL_37;
        }

LABEL_24:
        *(v8 + 24) |= 0x80000u;
        goto LABEL_25;
      }
    }

    *(v8 + 24) |= 0x40000u;
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  return 30;
}

uint64_t tx_flush(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 392);
  v4 = *(a1 + 400);
  v91 = 0;
  *(a1 + 660) = -1;
  v6 = **(*(v4 + 136) + 8);
  if (v6 && (*(v6 + 24) & 0x10) != 0)
  {
    if (v6 != a2)
    {
      panic("not handling the flushing tx!\n");
    }
  }

  else
  {
    if (*(v4 + 144) != a2)
    {
      panic("not handling the current tx!\n");
    }

    if ((*(a2 + 24) & 0x14) == 0)
    {
      panic("current tx not closed/flushing?!\n");
    }
  }

  v7 = *(a2 + 24);
  if ((v7 & 0x10) == 0)
  {
    if ((v7 & 4) == 0)
    {
      panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v7, 8, 4);
    }

    if ((v7 & 8) != 0)
    {
      panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v7, 8, 4);
    }

    *(a2 + 24) = v7 & 0xFFFFFFF3 | 8;
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    v8 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    v9 = v8 - *(a2 + 72);
    *(a2 + 72) = v8;
    if (v9 > 0xF4240)
    {
      log_warn("%s:%d: %s tx xid %lld was closed for %lld us waiting to prepare to flush\n", "tx_flush", 850, (*(a1 + 384) + 212), *(a2 + 16), v9);
    }

    if (*(a1 + 629))
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    v11 = obj_cache_flush_prepare(v5, 0, v10, *(a2 + 16));
    if (v11)
    {
      v12 = v11;
      if (!*(v4 + 76))
      {
        log_err("%s:%d: %s xid %lld error preparing to flush object cache: %d\n", "tx_flush", 856, (*(a1 + 384) + 212), *(a2 + 16), v11);
      }

      v13 = 858;
      goto LABEL_23;
    }

    if (*(a1 + 629) == 1)
    {
      v20 = *(a2 + 24);
      if ((v20 & 8) == 0)
      {
        panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v20, 16, 8);
      }

      if ((v20 & 0x10) != 0)
      {
        panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v20, 16, 8);
      }

      *(a2 + 24) = v20 & 0xFFFFFFE7 | 0x10;
      __tp.tv_sec = 0;
      __tp.tv_nsec = 0;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      v21 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
      v22 = v21 - *(a2 + 72);
      *(a2 + 72) = v21;
      if (v22 > 0xF4240)
      {
        log_warn("%s:%d: %s tx xid %lld took %lld us to prepare to flush\n", "tx_flush", 868, (*(a1 + 384) + 212), *(a2 + 16), v22);
      }
    }

    else
    {
      *(a2 + 36) = *(v4 + 96);
      *(a2 + 44) = *(v4 + 100);
      *(a2 + 48) = 0;
      *(a2 + 40) = 0;
      v91 = -1;
      v35 = nx_checkpoint_desc_block_address(a1, *(*(a1 + 376) + 128), &v91);
      if (v35)
      {
        v12 = v35;
        if (!*(v4 + 76))
        {
          log_err("%s:%d: %s xid %lld error getting first checkpoint map block address %d: %d\n", "tx_flush", 888, (*(a1 + 384) + 212), *(a2 + 16), *(*(a1 + 376) + 128), v35);
        }

        v13 = 890;
        goto LABEL_23;
      }

      bzero(*(a2 + 64), *(*(a1 + 376) + 36));
      v50 = *(a2 + 64);
      *(v50 + 24) = 1073741836;
      *(v50 + 8) = v91;
      *(v50 + 16) = *(a2 + 16);
      ++*(a2 + 40);
      v12 = nx_checkpoint_traverse(a1, a2, 1);
      if (v12)
      {
        goto LABEL_24;
      }

      for (i = *(v5 + 744); i; i = *(i + 88))
      {
        if (i != a1)
        {
          v52 = tx_checkpoint_write_prepare(a1, a2, i);
          if (v52)
          {
            v12 = v52;
            if (!*(v4 + 76))
            {
              log_err("%s:%d: %s xid %lld error preparing ephemeral object (oid 0x%llx type 0x%x/0x%x): %d\n", "tx_flush", 916, (*(a1 + 384) + 212), *(a2 + 16), *(i + 112), *(i + 36), *(i + 40), v52);
            }

            v13 = 918;
LABEL_23:
            *(v4 + 76) = v13;
            ++*(v4 + 80);
LABEL_24:
            obj_cache_flush_unprepare(v5);
            v14 = *(v5 + 872);
            if (v14)
            {
              v15 = (v5 + 872);
              do
              {
                v16 = v14[13];
                *v15 = v16;
                if (!v16)
                {
                  *(v5 + 880) = v15;
                }

                v14[13] = 3735928559;
                v14[8] = 0;
                obj_checkpoint_done(v14);
                obj_release(v14);
                v14 = *v15;
              }

              while (*v15);
            }

            for (j = *(v5 + 744); j; j = *(j + 88))
            {
              if ((*(j + 32) & 4) != 0)
              {
                obj_checkpoint_done(j);
              }
            }

            v18 = *(v4 + 72);
            if ((v18 & 0x40) != 0)
            {
              *(v4 + 72) = v18 & 0xFFFFFFBF;
            }

            v19 = *(a2 + 24);
            if ((v19 & 8) == 0)
            {
              panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v19, 1, 8);
            }

            if (v19)
            {
              panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v19, 1, 8);
            }

            *(a2 + 24) = v19 & 0xFFFFFFF6 | 1;
            __tp.tv_sec = 0;
            __tp.tv_nsec = 0;
            clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
            *(a2 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
            goto LABEL_66;
          }

          obj_retain_ephemeral_no_ref(i);
          if ((*(i + 32) & 4) == 0 && (*(i + 20) & 0x20) == 0)
          {
            log_warn("%s:%d: %s Unknown NEW persistent ephemeral object found: oid 0x%llx type 0x%x/0x%x\n", "tx_flush", 925, (*(a1 + 384) + 212), *(i + 112), *(i + 36), *(i + 40));
          }

          *(i + 64) = *(i + 56);
          *(i + 104) = 0;
          **(v5 + 880) = i;
          *(v5 + 880) = i + 104;
        }
      }

      v53 = *(v4 + 96);
      *(a2 + 112) = -1;
      v54 = (*(a2 + 40) + v53) % *(v4 + 88);
      v55 = nx_checkpoint_desc_block_address(a1, v54, (a2 + 112));
      if (v55)
      {
        v12 = v55;
        if (!*(v4 + 76))
        {
          log_err("%s:%d: %s xid %lld error getting next checkpoint superblock address %d: %d\n", "tx_flush", 937, (*(a1 + 384) + 212), *(a2 + 16), v54, v55);
        }

        v13 = 939;
        goto LABEL_23;
      }

      ++*(a2 + 40);
      v65 = *(v5 + 928) - 1;
      if (*(a2 + 48) != v65)
      {
        log_err("%s:%d: %s xid %lld checkpoint data block count is not value tracked by cache: %d != %d\n", "tx_flush", 989, (*(a1 + 384) + 212), *(a2 + 16), *(a2 + 48), v65);
      }

      v66 = *(a1 + 376);
      *(v66 + 88) = *(v5 + 400);
      *(v66 + 96) = *(v4 + 64);
      memcpy(*(a2 + 56), v66, *(v66 + 36));
      v69 = *(a2 + 16);
      v70 = *(a2 + 56);
      *(v70 + 16) = v69;
      v71 = *(v4 + 96);
      *(v70 + 136) = v71;
      v72 = *(v4 + 100);
      *(v70 + 144) = v72;
      v73 = *(a2 + 40);
      *(v70 + 140) = v73;
      v74 = *(a2 + 48);
      *(v70 + 148) = v74;
      v75 = v73 + v71;
      v77 = *(v4 + 88);
      v76 = *(v4 + 92);
      v78 = v75 % v77;
      v79 = (v74 + v72) % v76;
      if (!*(v4 + 76))
      {
        if (v73 > v77 >> 2)
        {
          log_err("%s:%d: %s xid %lld checkpoint descriptor count is larger than expected: %d > %d\n", "tx_flush", 1014, (*(a1 + 384) + 212), v69, v73, v77 >> 2);
          v74 = *(a2 + 48);
          v76 = *(v4 + 92);
        }

        if (v74 > v76 >> 2)
        {
          log_err("%s:%d: %s xid %lld checkpoint data block count is larger than expected: %d > %d\n", "tx_flush", 1018, (*(a1 + 384) + 212), *(a2 + 16), v74, v76 >> 2);
          v74 = *(a2 + 48);
        }

        v80 = *(v5 + 928) - 1;
        if (v74 != v80)
        {
          log_err("%s:%d: %s xid %lld checkpoint data block count is not value tracked by cache: %d != %d\n", "tx_flush", 1022, (*(a1 + 384) + 212), *(a2 + 16), v74, v80);
        }
      }

      v81 = *(a2 + 56);
      *(v81 + 128) = v78;
      *(v81 + 132) = v79;
      obj_checksum_set_phys(a1, v81, *(*(a1 + 376) + 36), v67, v68);
      *(a2 + 48) = 0;
      *(a2 + 40) = 1;
      *(*(a2 + 64) + 36) = 0;
      v82 = *(a2 + 24);
      if ((v82 & 8) == 0)
      {
        panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v82, 16, 8);
      }

      if ((v82 & 0x10) != 0)
      {
        panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v82, 16, 8);
      }

      *(a2 + 24) = v82 & 0xFFFFFFE7 | 0x10;
      __tp.tv_sec = 0;
      __tp.tv_nsec = 0;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      v83 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
      v22 = v83 - *(a2 + 72);
      *(a2 + 72) = v83;
      if (v22 > 0xF4240)
      {
        log_warn("%s:%d: %s tx xid %lld took %lld us to prepare to flush\n", "tx_flush", 1045, (*(a1 + 384) + 212), *(a2 + 16), v22);
      }
    }

    *(v4 + 232) = (*(v4 + 232) + v22) >> 1;
  }

  if (*(a1 + 629) == 1)
  {
    v23 = *(a2 + 24);
    if ((v23 & 0x10) == 0)
    {
      panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v23, 1, 16);
    }

    if (v23)
    {
      panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v23, 1, 16);
    }

    *(a2 + 24) = v23 & 0xFFFFFFEE | 1;
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    *(a2 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    *(a2 + 32) = 0;
    *(a2 + 52) = 0;
  }

  else if (*(v4 + 144) == a2)
  {
    *a2 = 0;
    v24 = *(v4 + 136);
    *(a2 + 8) = v24;
    *v24 = a2;
    *(v4 + 136) = a2;
    *(v4 + 144) = 0;
  }

  pthread_mutex_unlock(v4);
  cv_wakeup((v4 + 256));
  if (*(a1 + 629))
  {
    v25 = 0;
  }

  else
  {
    v25 = 2;
  }

  v26 = obj_cache_flush_write(v5, v25);
  if (*(a1 + 629) == 1)
  {
    pthread_mutex_lock(v4);
    obj_cache_flush_unprepare(v5);
    tx_barrier_internal(a1, 0, 0);
    cv_wakeup((v4 + 256));
    v12 = 0;
    *(a2 + 52) = 0;
    return v12;
  }

  v12 = v26;
  if (v26)
  {
    pthread_mutex_lock(v4);
    if (!*(v4 + 76))
    {
      log_err("%s:%d: %s xid %lld error flushing objects from the cache: %d\n", "tx_flush", 1117, (*(a1 + 384) + 212), *(a2 + 16), v12);
    }

    v29 = 1119;
    goto LABEL_65;
  }

  while (1)
  {
    v32 = *(v5 + 872);
    if (!v32)
    {
      v33 = *(a2 + 64);
      if (*(v33 + 8))
      {
        *(v33 + 32) |= 1u;
        obj_checksum_set_phys(a1, v33, *(*(a1 + 376) + 36), v27, v28);
        v34 = dev_write(*(a1 + 384));
        if (v34)
        {
          v12 = v34;
          pthread_mutex_lock(v4);
          if (!*(v4 + 76))
          {
            log_err("%s:%d: %s xid %lld failed to write last checkpoint map block %lld: %d\n", "tx_flush", 1154, (*(a1 + 384) + 212), *(a2 + 16), *(*(a2 + 64) + 8), v12);
          }

          v29 = 1156;
          goto LABEL_65;
        }
      }

      ++*(a2 + 40);
      pthread_mutex_lock(v4);
      v36 = *(a2 + 40);
      v37 = *(a2 + 56);
      v38 = *(a2 + 48);
      v39 = v37[37];
      if (v36 != v37[35] || v38 != v39)
      {
        panic("flush phase checkpoint lengths (%d %d) don't match prepare phase (%d %d)\n", v36, v38, v37[35], v39);
      }

      v41 = *(a1 + 376);
      v41[34] = v37[34];
      v41[35] = v36;
      v41[36] = v37[36];
      v41[37] = v38;
      v42 = *(a2 + 24);
      if ((v42 & 0x10) == 0)
      {
        panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v42, 32, 16);
      }

      if ((v42 & 0x20) != 0)
      {
        panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v42, 32, 16);
      }

      *(a2 + 24) = v42 & 0xFFFFFFCF | 0x20;
      __tp.tv_sec = 0;
      __tp.tv_nsec = 0;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      v43 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
      v44 = v43 - *(a2 + 72);
      *(a2 + 72) = v43;
      if (v44 > 0xF4240)
      {
        log_warn("%s:%d: %s tx xid %lld took %lld us to flush\n", "tx_flush", 1185, (*(a1 + 384) + 212), *(a2 + 16), v44);
      }

      *(a2 + 104) = v44;
      cv_wakeup((v4 + 256));
      v45 = tx_barrier_internal(a1, 0, 1);
      if (v45)
      {
        v12 = v45;
        if (!*(v4 + 76))
        {
          log_err("%s:%d: %s xid %lld sync/barrier failed: %d\n", "tx_flush", 1194, (*(a1 + 384) + 212), *(a2 + 16), v45);
        }

        *(v4 + 76) = 1196;
        ++*(v4 + 80);
        --*(a2 + 40);
        v46 = *(a2 + 24);
        if ((v46 & 0x20) == 0)
        {
          panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v46, 16, 32);
        }

        if ((v46 & 0x10) != 0)
        {
          panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v46, 16, 32);
        }

        *(a2 + 24) = v46 & 0xFFFFFFCF | 0x10;
        __tp.tv_sec = 0;
        __tp.tv_nsec = 0;
        clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
        v47 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
        v48 = v47 - *(a2 + 72);
        *(a2 + 72) = v47;
        v49 = v48 + *(a2 + 104);
        goto LABEL_123;
      }

      pthread_mutex_unlock(v4);
      if (*(a1 + 632) == 1)
      {
        *(a2 + 24) |= 0x80000u;
        bzero(*(a2 + 64), *(*(a1 + 376) + 36));
      }

      v56 = dev_write(*(a1 + 384));
      if (v56)
      {
        v12 = v56;
        pthread_mutex_lock(v4);
        if (!*(v4 + 76))
        {
          log_err("%s:%d: %s xid %lld failed to write checkpoint superblock %lld: %d\n", "tx_flush", 1223, (*(a1 + 384) + 212), *(a2 + 16), *(a2 + 112), v12);
        }

        v57 = 1225;
      }

      else
      {
        if ((*(a2 + 26) & 8) == 0 || (v60 = dev_write(*(a1 + 384)), !v60))
        {
          if (*(a1 + 628) == 1 && (*(a1 + 632) & 1) == 0)
          {
            *(a1 + 660) = (*(*(a1 + 376) + 136) + *(*(a1 + 376) + 140) - 1) % *(v4 + 88);
          }

          pthread_mutex_lock(v4);
          v61 = tx_transition(a2, 32, 64);
          v62 = v61;
          if (v61 > 0xF4240)
          {
            log_warn("%s:%d: %s tx xid %lld took %lld us to sync and write superblock\n", "tx_flush", 1280, (*(a1 + 384) + 212), *(a2 + 16), v61);
          }

          *(a2 + 104) += v62;
          v63 = *(a2 + 24);
          if ((v63 & 0x20000) == 0)
          {
            goto LABEL_159;
          }

          ++*(v4 + 184);
          if ((v63 & 0x40000) != 0)
          {
            ++*(v4 + 192);
          }

          v64 = tx_barrier_internal(a1, (v63 >> 14) & 0x10, 0);
          if (!v64)
          {
LABEL_159:
            *(a2 + 52) = 0;
            *(v4 + 72) |= 2u;
            *(v4 + 76) = 0;
            v84 = *(a2 + 56);
            v85 = *(v84 + 128);
            v86 = *(a1 + 376);
            *(v86 + 128) = v85;
            *(v4 + 96) = v85;
            v87 = *(v84 + 132);
            *(v86 + 132) = v87;
            *(v4 + 100) = v87;
            *(v86 + 16) = *(v84 + 16);
            v88 = *(v4 + 152);
            *(v4 + 152) = v88 + 1;
            if (v88)
            {
              *(v4 + 200) = (*(v4 + 200) + *(a2 + 32)) >> 1;
              *(v4 + 208) = vshrq_n_u64(vaddq_s64(*(a2 + 80), *(v4 + 208)), 1uLL);
              *(v4 + 224) = (*(a2 + 96) + *(v4 + 224)) >> 1;
              *(v4 + 240) = (*(a2 + 104) + *(v4 + 240)) >> 1;
              if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * (v88 + 1), 2) <= 0xCCCCCCCCCCCCCCCuLL && nx_ratelimit_log_allowed(a1))
              {
                v89 = *(v4 + 160);
                if (v89 <= 1)
                {
                  v90 = 1;
                }

                else
                {
                  v90 = *(v4 + 160);
                }

                log_debug("%s:%d: %s xid %llu tx stats: # %llu owait %llu %lluus finish %llu bar2 %lld f %lld enter %llu fq %llu %llu %lluus close %lluus prep %lluus flush %lluus\n", "tx_flush", 1344, (*(a1 + 384) + 212), *(a2 + 16), *(v4 + 152), v89, *(v4 + 168) / v90, *(v4 + 176), *(v4 + 184), *(v4 + 192), *(v4 + 200), *(v4 + 216), *(v4 + 224), *(v4 + 208), *(v4 + 248), *(v4 + 232), *(v4 + 240));
              }
            }

            else
            {
              *(v4 + 200) = *(a2 + 32);
              *(v4 + 208) = *(a2 + 80);
              *(v4 + 224) = *(a2 + 96);
              *(v4 + 240) = *(a2 + 104);
            }

            cv_wakeup((v4 + 256));
            return 0;
          }

          v12 = v64;
          if (!*(v4 + 76))
          {
            log_err("%s:%d: %s xid %lld second sync/barrier failed: %d\n", "tx_flush", 1292, (*(a1 + 384) + 212), *(a2 + 16), v64);
          }

          *(v4 + 76) = 1294;
          ++*(v4 + 80);
          --*(a2 + 40);
          v58 = a2;
          v59 = 64;
          goto LABEL_122;
        }

        v12 = v60;
        if (!*(v4 + 76))
        {
          log_err("%s:%d: %s xid %lld failed to write block 0 superblock: %d\n", "tx_flush", 1245, (*(a1 + 384) + 212), *(a2 + 16), v60);
        }

        pthread_mutex_lock(v4);
        v57 = 1249;
      }

      *(v4 + 76) = v57;
      ++*(v4 + 80);
      --*(a2 + 40);
      v58 = a2;
      v59 = 32;
LABEL_122:
      v49 = *(a2 + 104) + tx_transition(v58, v59, 16);
LABEL_123:
      *(a2 + 104) = v49;
      goto LABEL_66;
    }

    v31 = tx_checkpoint_write(a1, a2, *(v5 + 872), v27, v28);
    if (v31)
    {
      break;
    }

    obj_checkpoint_done(v32);
    obj_release(v32);
  }

  v12 = v31;
  pthread_mutex_lock(v4);
  if (!*(v4 + 76))
  {
    log_err("%s:%d: %s xid %lld failed to write checkpoint data @ 0x%llx: %d\n", "tx_flush", 1133, (*(a1 + 384) + 212), *(a2 + 16), v32[16], v12);
  }

  v29 = 1135;
LABEL_65:
  *(v4 + 76) = v29;
  ++*(v4 + 80);
LABEL_66:
  cv_wakeup((v4 + 256));
  *(a2 + 52) = v12;
  return v12;
}

void APFSContainerGetFreespaceInfo_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void APFSContainerGetFreespaceInfo_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void APFSContainerGetFreespaceInfo_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void APFSContainerGetFreespaceInfo_cold_4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void APFSContainerGetFreespaceInfo_cold_5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void APFSContainerGetFreespaceInfo_cold_6()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void APFSContainerGetFreespaceInfo_cold_7()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void APFSContainerGetFreespaceInfo_cold_8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void APFSContainerGetFreespaceInfo_cold_9()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void APFSContainerGetFreespaceInfo_cold_10()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void APFSContainerResizePrepare_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void APFSContainerGetBootDevice_cold_1(mach_error_t a1)
{
  mach_error_string(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void APFSContainerGetBootDevice_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void APFSSetupMetadataRollingMediaKey_cold_1(mach_error_t a1)
{
  mach_error_string(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void APFSSetupMetadataRollingMediaKey_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void APFSSetupMetadataRollingMediaKey_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void APFSStreamRestoreWrite_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void APFSStreamRestoreWrite_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void APFSStreamFingerprintWrite_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void APFSStreamFingerprintWrite_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void APFSStreamFingerprintWrite_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void APFSGetFragmentationHistogram_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void APFSGetFragmentationHistogram_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void APFSCaptureFinishCaptureForFile_cold_1()
{
  __error();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void APFSCaptureFinishCaptureForFile_cold_2()
{
  __error();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

void APFSContainerCommitTemporaryCheckpoint_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void APFSContainerCommitTemporaryCheckpoint_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void APFSContainerCommitTemporaryCheckpoint_cold_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void APFSVolumeConvertToUserCrypto_cold_1(int a1, int __errnum)
{
  strerror(__errnum);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

void APFSVolumeConvertToUserCrypto_cold_2(int a1, int __errnum)
{
  strerror(__errnum);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

void APFSVolumeConvertToUserCrypto_cold_3()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void APFSGetExclavePath_cold_1()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
}

void APFSGetExclavePath_cold_2()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
}

void APFSGetExclavePath_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void APFSGetExclavePath_cold_4()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
}

void APFSGetExclavePath_cold_5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void keygen_nvram_prop_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void keygen_nvram_prop_cold_2(mach_error_t a1)
{
  mach_error_string(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Cu);
}

void keygen_nvram_prop_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void keygen_nvram_prop_cold_4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}