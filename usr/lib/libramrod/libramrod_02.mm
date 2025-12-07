uint64_t ramrod_reprobe_media(CFErrorRef *a1)
{
  v2 = off_1C6788;
  if (off_1C6788)
  {

    return v2();
  }

  else
  {
    ramrod_log_msg("%s() called without probing media first\n", "ramrod_reprobe_media");
    ramrod_create_error_internal(a1, @"RamrodErrorDomain", 8, 0, "%s() called without probing media first", "ramrod_reprobe_media");
    return 0;
  }
}

uint64_t ramrod_get_storage_media_device_node(char *a1, size_t __size)
{
  if (!byte_1C6790)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C6790, __size);
  return 1;
}

uint64_t ramrod_get_apfs_container_device_node(char *a1, size_t __size)
{
  if (!byte_1C67B0)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C67B0, __size);
  return 1;
}

uint64_t ramrod_get_system_partition_device_node(char *a1, size_t __size)
{
  if (!byte_1C67D0)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C67D0, __size);
  return 1;
}

uint64_t ramrod_get_data_partition_device_node(char *a1, size_t __size)
{
  if (!byte_1C67F0)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C67F0, __size);
  return 1;
}

uint64_t ramrod_get_user_partition_device_node(char *a1, size_t __size)
{
  if (!byte_1C6810)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C6810, __size);
  return 1;
}

uint64_t ramrod_get_update_partition_device_node(char *a1, size_t __size)
{
  if (!byte_1C6830)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C6830, __size);
  return 1;
}

uint64_t ramrod_get_baseband_data_partition_device_node(char *a1, size_t __size)
{
  if (!byte_1C6850)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C6850, __size);
  return 1;
}

uint64_t ramrod_get_log_partition_device_node(char *a1, size_t __size)
{
  if (!byte_1C6870)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C6870, __size);
  return 1;
}

uint64_t ramrod_get_xart_partition_device_node(char *a1, size_t __size)
{
  if (!byte_1C6890)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C6890, __size);
  return 1;
}

uint64_t sub_21A98(uint64_t a1)
{
  v1 = MGCopyAnswer();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFGetTypeID(v1);
  if (v3 == CFBooleanGetTypeID())
  {
    Value = CFBooleanGetValue(v2);
  }

  else
  {
    Value = 0;
  }

  CFRelease(v2);
  return Value;
}

uint64_t ramrod_get_isc_size_in_bytes()
{
  v0 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/filesystems-props");
  if (v0)
  {
    v1 = v0;
    CFProperty = IORegistryEntryCreateCFProperty(v0, @"isc_size", kCFAllocatorDefault, 0);
    if (!CFProperty)
    {
      ramrod_log_msg("isc_size property in IODeviceTree:/filesystems-props doesn't exist.\n");
      v6 = 524288000;
      ramrod_log_msg("Retrieved isc_size %lld seems too low. Returning default isc_size in bytes: %lld\n", 0, 524288000);
LABEL_14:
      IOObjectRelease(v1);
      return v6;
    }

    v3 = CFProperty;
    v4 = CFGetTypeID(CFProperty);
    if (v4 == CFDataGetTypeID())
    {
      if (CFDataGetLength(v3) == 4)
      {
        BytePtr = CFDataGetBytePtr(v3);
        ramrod_log_msg("isc_size is a CFData representing %4u bytes\n", *BytePtr);
        v6 = *BytePtr;
        if (v6 >> 22 > 0x7C)
        {
          ramrod_log_msg("Retrieved isc_size: %lld\n");
        }

        else
        {
          ramrod_log_msg("Retrieved isc_size %lld seems too low. Returning default isc_size in bytes: %lld\n", v6, 524288000);
          v6 = 524288000;
        }

        goto LABEL_13;
      }

      Length = CFDataGetLength(v3);
      ramrod_log_msg("isc_size is a CFData but has a length of %ld instead of 4\n", Length);
    }

    else
    {
      v7 = CFGetTypeID(v3);
      v8 = CFCopyTypeIDDescription(v7);
      ramrod_log_msg_cf(@"isc_size has an unknown type: %@\n", v8);
      if (v8)
      {
        CFRelease(v8);
      }
    }

    v6 = 524288000;
    ramrod_log_msg("Retrieved isc_size %lld seems too low. Returning default isc_size in bytes: %lld\n");
LABEL_13:
    CFRelease(v3);
    goto LABEL_14;
  }

  ramrod_log_msg("isc_size lookup failed: entry IODeviceTree:/filesystems-props doesn't exist.\n");
  v6 = 524288000;
  ramrod_log_msg("Retrieved isc_size %lld seems too low. Returning default isc_size in bytes: %lld\n", 0, 524288000);
  return v6;
}

uint64_t ramrod_hardware_partition_size_mb(unsigned int *a1)
{
  *a1 = 0;
  properties[0] = 0;
  properties[1] = 0;
  LocalStoreMaxSize = AMFDRSealingMapGetLocalStoreMaxSize();
  if (LocalStoreMaxSize)
  {
    ramrod_log_msg("Hardware partition size calculation:\n");
    ramrod_log_msg("%4u MiB FDR\n", 2 * LocalStoreMaxSize);
    *a1 += 2 * LocalStoreMaxSize;
  }

  else
  {
    ramrod_log_msg("WARNING: AMFDRSealingMapGetLocalStoreMaxSize returned 0\n");
    ramrod_log_msg("Hardware partition size calculation:\n");
  }

  v4 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/defaults");
  v5 = v4;
  if (!v4)
  {
    ramrod_log_msg("IORegistryEntryFromPath returned IO_OBJECT_NULL\n", v25);
LABEL_2:
    v3 = 0;
    goto LABEL_28;
  }

  if (IORegistryEntryCreateCFProperties(v4, properties, kCFAllocatorDefault, 0))
  {
    ramrod_log_msg("IORegistryEntryCreateCFProperties returned %x\n");
    goto LABEL_2;
  }

  v6 = properties[0];
  if (!properties[0])
  {
    ramrod_log_msg("IORegistryEntryCreateCFProperties returned NULL properties\n");
    goto LABEL_2;
  }

  v26 = v5;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [(__CFDictionary *)properties[0] countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = v7;
  v9 = *v28;
  while (2)
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v28 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v27 + 1) + 8 * i);
      v12 = [v11 length];
      if (v12 > [@"-hw-partition-size" length])
      {
        v13 = [v11 length];
        v14 = v13 - [@"-hw-partition-size" length];
        if (![v11 compare:@"-hw-partition-size" options:0 range:{v14, objc_msgSend(@"-hw-partition-size", "length")}])
        {
          v15 = [v11 cStringUsingEncoding:4];
          Value = CFDictionaryGetValue(properties[0], v11);
          if (Value)
          {
            v17 = Value;
            TypeID = CFDataGetTypeID();
            if (TypeID == CFGetTypeID(v17))
            {
              if (CFDataGetLength(v17) == 4)
              {
                BytePtr = CFDataGetBytePtr(v17);
                if (BytePtr)
                {
                  v20 = BytePtr;
                  ramrod_log_msg("%4u MiB %.*s\n", *BytePtr, v14, v15);
                  *a1 += *v20;
                  continue;
                }

                ramrod_log_msg("CFDataGetBytePtr returned NULL");
              }

              else
              {
                ramrod_log_msg("Property %s is not 4 bytes\n");
              }
            }

            else
            {
              ramrod_log_msg("Property %s is not CFDataRef\n");
            }
          }

          else
          {
            ramrod_log_msg("Failed to get property for %s\n");
          }

          v3 = 0;
          v5 = v26;
          goto LABEL_28;
        }
      }
    }

    v8 = [(__CFDictionary *)v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_23:
  v21 = IOServiceMatching("ApplePearlSEPDriver");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v21);
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
    ramrod_log_msg("%4u MiB Pearl Reference Frames\n", 15);
    *a1 += 15;
  }

  ramrod_log_msg("%4u MiB free space for apfs\n", 4);
  v23 = *a1;
  *a1 += 4;
  v5 = v26;
  if (v23 == 0 || v23 >= 0xFFFFFFFC)
  {
    ramrod_log_msg("%4u MiB padding to 5 MiB\n", 1 - v23);
    *a1 = 5;
  }

  ramrod_log_msg("--------\n");
  ramrod_log_msg("%4u MiB total\n", *a1);
  v3 = 1;
LABEL_28:
  if (properties[0])
  {
    CFRelease(properties[0]);
  }

  if (v5)
  {
    IOObjectRelease(v5);
  }

  return v3;
}

uint64_t ramrod_get_hardware_partition_device_node(char *a1, size_t __size)
{
  if (!byte_1C68B0)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C68B0, __size);
  return 1;
}

uint64_t ramrod_os_release_is_internal()
{
  if (new_os_build_version)
  {
    v0 = "New";
    v1 = &new_os_release_type;
  }

  else
  {
    if (!previous_os_build_version)
    {
      ramrod_log_msg("No OS type analyzed, assuming customer variant\n");
      return 0;
    }

    v0 = "Previous";
    v1 = &previous_os_release_type;
  }

  v2 = *v1;
  if (!*v1)
  {
    ramrod_log_msg("%s OS release type (unset) is not internal\n");
    return v2;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *buffer = 0u;
  v6 = 0u;
  CFStringGetCString(v2, buffer, 128, 0x600u);
  if (CFStringCompare(v2, @"NonUI", 0) == kCFCompareEqualTo)
  {
    v2 = 1;
    goto LABEL_11;
  }

  v3 = CFStringFind(v2, @"Internal", 0);
  v2 = v3.length > 0;
  if (v3.length > 0)
  {
LABEL_11:
    ramrod_log_msg("%s OS release type %s is internal\n", v0, buffer);
    return v2;
  }

  ramrod_log_msg("%s OS release type %s is not internal\n");
  return v2;
}

uint64_t ramrod_should_have_xart_partition()
{
  v0 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/arm-io/sep/iop-sep-nub/xART");
  if (v0)
  {
    ramrod_log_msg("IODeviceTree:/arm-io/sep/iop-sep-nub/xART found\n");
    IOObjectRelease(v0);
    v0 = 1;
  }

  v1 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen/has-xart");
  if (v1)
  {
    v2 = v1;
    ramrod_log_msg("IODeviceTree:/chosen/has-xart found\n");
    IOObjectRelease(v2);
    v0 = 1;
  }

  v3 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/defaults");
  if (v3)
  {
    v4 = v3;
    CFProperty = IORegistryEntryCreateCFProperty(v3, @"has-xart", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v6 = CFProperty;
      v7 = CFGetTypeID(CFProperty);
      if (v7 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        CFNumberGetValue(v6, kCFNumberSInt32Type, &valuePtr);
        if (valuePtr)
        {
          v8 = "IODeviceTree:/defaults/has-xart found\n";
        }

        else
        {
          v8 = "IODeviceTree:/defaults/has-xart found but is zero\n";
        }

        if (valuePtr)
        {
          v0 = 1;
        }

        else
        {
          v0 = v0;
        }

        ramrod_log_msg(v8);
      }

      else
      {
        v9 = CFGetTypeID(v6);
        if (v9 == CFDataGetTypeID())
        {
          *buffer = 0;
          if (CFDataGetLength(v6) == 4)
          {
            v13.location = 0;
            v13.length = 4;
            CFDataGetBytes(v6, v13, buffer);
            if (*buffer)
            {
              ramrod_log_msg("IODeviceTree:/defaults/has-xart found\n");
              v0 = 1;
            }

            else
            {
              ramrod_log_msg("IODeviceTree:/defaults/has-xart found but is zero\n");
            }
          }

          else
          {
            ramrod_log_msg("IODeviceTree:/defaults/has-xart found but is not int sized\n");
          }
        }
      }

      CFRelease(v6);
    }

    IOObjectRelease(v4);
  }

  else
  {
    ramrod_log_msg("Failed to read IODeviceTree:/defaults\n");
  }

  if (v0)
  {
    ramrod_log_msg("We should have an xART partition.\n");
  }

  else
  {
    ramrod_log_msg("We should not have an xART partition.\n");
  }

  return v0;
}

uint64_t ramrod_get_scratch_partition_device_node(char *a1, size_t __size)
{
  if (!byte_1C68D0)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C68D0, __size);
  return 1;
}

uint64_t ramrod_get_preboot_partition_device_node(char *a1, size_t __size)
{
  if (!byte_1C68F0)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C68F0, __size);
  return 1;
}

uint64_t ramrod_get_recovery_os_apfs_container_device_node(char *a1, size_t __size)
{
  if (!byte_1C6910)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C6910, __size);
  return 1;
}

uint64_t ramrod_get_recovery_os_volume_device_node(char *a1, size_t __size)
{
  if (!byte_1C6930)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C6930, __size);
  return 1;
}

uint64_t ramrod_get_recovery_preboot_partition_device_node_path(char *a1, size_t __size)
{
  if (!byte_1C6950)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C6950, __size);
  return 1;
}

uint64_t ramrod_get_iboot_system_container_device_node(char *a1, size_t __size)
{
  if (!byte_1C6970)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C6970, __size);
  return 1;
}

uint64_t ramrod_get_isc_preboot_partition_device_node_path(char *a1, size_t __size)
{
  if (!byte_1C6990)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C6990, __size);
  return 1;
}

uint64_t ramrod_get_isc_recovery_os_volume_device_node(char *a1, size_t __size)
{
  if (!byte_1C69B0)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C69B0, __size);
  return 1;
}

uint64_t ramrod_get_paired_recovery_os_volume_device_node(char *a1, size_t __size)
{
  if (!byte_1C69D0)
  {
    return 0;
  }

  strlcpy(a1, &byte_1C69D0, __size);
  return 1;
}

uint64_t ramrod_disable_fsevents_rescan(const char *a1)
{
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s/.fseventsd/.ramdisk-boot-done", a1);
  v2 = open_dprotected_np(__str, 512, 4, 0, 420);
  if (v2 == -1)
  {
    v4 = __error();
    v5 = *v4;
    if (v5 != 2)
    {
      v7 = strerror(*v4);
      ramrod_log_msg("%s: %s (%d)\n", __str, v7, v5);
      return v5;
    }
  }

  else
  {
    v3 = v2;
    ramrod_log_msg("%s: created successfully\n", __str);
    close(v3);
  }

  return 0;
}

uint64_t ramrod_change_filesystem_permissions_opt_err(const char *a1, const char *a2, int a3, CFErrorRef *a4)
{
  v16[0] = "/sbin/mount";
  v16[1] = "-u";
  v8 = "-r";
  if (!a3)
  {
    v8 = "-w";
  }

  v16[2] = v8;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = 0;
  if (a3)
  {
    v9 = "readonly";
  }

  else
  {
    v9 = "readwrite";
  }

  v10 = ramrod_execute_command(v16);
  v11 = v10;
  if (v10)
  {
    ramrod_log_msg("Failed to change permissions on %s mounted at %s to %s. Error: %d.\n", a1, a2, v9, v10);
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: Failed to change permissions on %s mounted at %s to %s. Error: %d.\n", v12, v13, v14, "ramrod_change_filesystem_permissions_opt_err");
  }

  else
  {
    ramrod_log_msg("Changed permissions on %s mounted at %s to %s\n", a1, a2, v9);
    if (!a3)
    {
      ramrod_disable_fsevents_rescan(a2);
    }
  }

  return v11;
}

uint64_t ramrod_mount_filesystem_opt_err(const char *a1, char *a2, uint64_t a3, CFErrorRef *a4)
{
  v5 = a3;
  v14[0] = "/sbin/fsck_apfs";
  v14[1] = "-fdn";
  v14[2] = a1;
  v14[3] = 0;
  v8 = calloc(1uLL, 0x30uLL);
  v8[18] = 0;
  *(v8 + 5) = 0x7FFFFFFF000000B4;
  ramrod_execute_config_set_log_output(v8);
  v8[18] = 0;
  *(v8 + 5) = 0x7FFFFFFF000000B4;
  if (ramrod_execute_command_with_config(v14, v8))
  {
    ramrod_log_msg("fsck failed on %s\n", a1);
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: fsck failed on %s", v9, v10, v11, "ramrod_mount_filesystem_opt_err");
    ramrod_dump_mounted_filesystem_info();
    v12 = 0xFFFFFFFFLL;
  }

  else
  {
    v12 = ramrod_mount_filesystem_no_fsck_opt_err(a1, a2, v5, a4);
  }

  ramrod_execute_config_free(v8);
  return v12;
}

uint64_t ramrod_mount_filesystem_no_fsck_opt_err(const char *a1, char *a2, int a3, CFErrorRef *a4)
{
  bzero(v22, 0x400uLL);
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14[0] = "/sbin/mount_apfs";
  v14[1] = "-R";
  if (a3)
  {
    *&v15 = "-o";
    *(&v15 + 1) = "rdonly";
    v8 = 4;
    if (a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 2;
    if (a2)
    {
      goto LABEL_7;
    }
  }

  ramrod_log_msg("Creating temporary mount point to mount %s\n", a1);
  a2 = v22;
  __strlcpy_chk();
  if (!mkdtemp(v22))
  {
    v9 = __error();
    ramrod_log_msg("unable to create temporary mount directory (%d). Using %s instead\n", *v9, "/mnt5");
    a2 = v22;
    __strlcpy_chk();
  }

LABEL_7:
  v14[v8] = a1;
  v14[v8 | 1u] = a2;
  v14[v8 + 2] = 0;
  mkdir(a2, 0x1C0u);
  if (ramrod_execute_command(v14))
  {
    ramrod_log_msg("mounting %s on %s failed\n", a1, a2);
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: mounting %s on %s failed", v10, v11, v12, "ramrod_mount_filesystem_no_fsck_opt_err");
    ramrod_dump_mounted_filesystem_info();
    return 0xFFFFFFFFLL;
  }

  else
  {
    ramrod_log_msg("%s mounted on %s\n", a1, a2);
    if (!a3)
    {
      ramrod_disable_fsevents_rescan(a2);
    }

    return 0;
  }
}

void ramrod_dump_mounted_filesystem_info()
{
  ramrod_log_msg("%s:**********DUMPING MOUNTED FILESYSTEMS********\n", "ramrod_dump_mounted_filesystem_info");
  v3 = 0;
  v0 = getmntinfo(&v3, 2);
  ramrod_log_msg("%s: %d filesystems are mounted\n", "ramrod_dump_mounted_filesystem_info", v0);
  if (v3)
  {
    if (v0 >= 1)
    {
      v1 = v0 + 1;
      v2 = 2168 * v0 - 2080;
      do
      {
        ramrod_log_msg("%s is mounted at %s\n", &v3->f_mntonname[v2 + 936], v3 + v2);
        --v1;
        v2 -= 2168;
      }

      while (v1 > 1);
    }
  }

  else
  {
    ramrod_log_msg("Failed to get info regarding mounted filesystems\n");
  }

  ramrod_log_msg("%s: *********DONE DUMPING MOUNTED FILESYSTEMS********\n", "ramrod_dump_mounted_filesystem_info");
}

uint64_t ramrod_mount_preboot_tmp(const char *a1, char *__dst, size_t a3)
{
  strlcpy(__dst, "/mnt5/preboot-mount-XXXXXX", a3);
  if (mkdtemp(__dst))
  {
    v5 = ramrod_mount_filesystem_no_fsck_opt_err(a1, __dst, 0, 0);
    if (v5)
    {
      ramrod_log_msg("unable to mount preboot %s on %s: %d\n", a1, __dst, v5);
      return 0xFFFFFFFFLL;
    }

    else
    {
      ramrod_log_msg("mounted preboot (%s) on %s\n", a1, __dst);
      return 0;
    }
  }

  else
  {
    v7 = __error();
    v6 = *v7;
    ramrod_log_msg("unable to create mount directory: %d\n", *v7);
  }

  return v6;
}

uint64_t ramrod_fsck_filesystem_ignore_encryption_err(const char *a1, int a2, CFErrorRef *a3)
{
  v5 = "-dyo";
  if (a2)
  {
    v5 = "-dyoM";
  }

  v12[0] = "/sbin/fsck_apfs";
  v12[1] = v5;
  v12[2] = a1;
  v12[3] = 0;
  xpc_transaction_begin();
  ramrod_log_msg("Starting an xpc transaction.\n");
  v6 = calloc(1uLL, 0x30uLL);
  v6[18] = 0;
  *(v6 + 5) = 0x7FFFFFFF000000B4;
  ramrod_execute_config_set_log_output(v6);
  v6[18] = 0;
  *(v6 + 5) = 0x7FFFFFFF000000B4;
  if (ramrod_execute_command_with_config(v12, v6))
  {
    ramrod_log_msg("fsck failed on %s\n", a1);
    if (a3)
    {
      ramrod_create_error_cf(a3, @"RamrodErrorDomain", 7, 0, @"%s: fsck failed on %s", v7, v8, v9, "ramrod_fsck_filesystem_ignore_encryption_err");
    }

    v10 = 0xFFFFFFFFLL;
  }

  else
  {
    ramrod_log_msg("fsck succeeded on %s\n", a1);
    v10 = 0;
    if (a3)
    {
      *a3 = 0;
    }
  }

  xpc_transaction_end();
  ramrod_execute_config_free(v6);
  return v10;
}

uint64_t ramrod_clear_LwVMKey_effaceable_storage(uint64_t a1)
{
  *connect = 0;
  input = a1;
  v1 = IOServiceMatching("AppleEffaceableStorage");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v1);
  if (!MatchingService)
  {
    return 6;
  }

  v3 = MatchingService;
  if (IOServiceOpen(MatchingService, mach_task_self_, 0, &connect[1]))
  {
    v4 = 6;
  }

  else
  {
    v5 = IOConnectCallScalarMethod(connect[1], 7u, &input, 1u, 0, connect);
    if (v5 == -536870160)
    {
      v4 = 2;
    }

    else
    {
      v4 = v5;
    }
  }

  IOObjectRelease(v3);
  if (connect[1])
  {
    IOServiceClose(connect[1]);
  }

  return v4;
}

uint64_t sub_22F90(char *a1, int a2, _BYTE *a3)
{
  v6 = open(a1, 0x100000);
  if (v6 < 0)
  {
    v19 = __error();
    ramrod_log_msg("%s : Unable to open %s: %d", "ramrod_delete_all_mobilebackup_snapshots_with_wait", a1, *v19);
    return 1;
  }

  else
  {
    v7 = v6;
    v26.reserved = 0;
    *&v26.volattr = 0;
    *&v26.fileattr = 0;
    bzero(v27, 0x400uLL);
    v26.bitmapcount = 5;
    v26.commonattr = -1610612735;
    v8 = fs_snapshot_list(v7, &v26, v27, 0x400uLL, 0);
    v9 = v8;
    if (v8 < 0)
    {
      v20 = __error();
      ramrod_log_msg("%s : fs_snapshot_list failed with error %d, errno %d\n", "ramrod_delete_all_mobilebackup_snapshots_with_wait", v9, *v20);
      v11 = 0;
      v10 = 1;
    }

    else if (v8)
    {
      v25 = a2;
      v10 = 0;
      v11 = 0;
      v12 = v8 + 1;
      v13 = v27;
      while (1)
      {
        v14 = (v13 + 6);
        v15 = v13[1];
        if ((v15 & 0x20000000) != 0)
        {
          break;
        }

        v16 = *v13;
        if (v15)
        {
          v17 = v14 + *v14;
          if (fs_snapshot_delete(v7, v17, 0))
          {
            v18 = __error();
            ramrod_log_msg("%s : Unable to delete snapshot %s: %d\n", "ramrod_delete_all_mobilebackup_snapshots_with_wait", v17, *v18);
            v10 = *__error();
            if (a3)
            {
              *a3 = 1;
            }
          }

          else
          {
            ramrod_log_msg("%s : Waiting for snapshot delete to finish for %s\n", "ramrod_delete_all_mobilebackup_snapshots_with_wait", v17);
            if (sub_282C4(v7, 0xFu))
            {
              ramrod_log_msg("%s: Timed out waiting for snapshot(%s) to delete\n", "ramrod_delete_all_mobilebackup_snapshots_with_wait", v17);
              v11 = 0;
            }

            else
            {
              ramrod_log_msg("%s: Successfully deleted snapshot %s\n", "ramrod_delete_all_mobilebackup_snapshots_with_wait", v17);
              v11 = 1;
            }
          }
        }

        else
        {
          ramrod_log_msg("%s : Unactionable record, commonattr: %u\n", "ramrod_delete_all_mobilebackup_snapshots_with_wait", v15);
        }

        v13 = (v13 + v16);
        if (--v12 <= 1)
        {
          goto LABEL_20;
        }
      }

      v10 = *v14;
      ramrod_log_msg("%s : Error in reading attributes for directory entry %d\n", "ramrod_delete_all_mobilebackup_snapshots_with_wait", *v14);
LABEL_20:
      sub_28350(a1);
      a2 = v25;
    }

    else
    {
      ramrod_log_msg("%s : No snapshots to delete on %s\n", "ramrod_delete_all_mobilebackup_snapshots_with_wait", a1);
      v11 = 0;
      v10 = 0;
    }

    if (!a2 || (v11 & 1) != 0)
    {
      goto LABEL_33;
    }

    ramrod_log_msg("%s: Waiting for snapshots to delete\n", "ramrod_delete_all_mobilebackup_snapshots_with_wait");
    for (i = 0; i != 3; ++i)
    {
      v22 = sub_282C4(v7, 0x1Eu);
      if (!v22)
      {
        ramrod_log_msg("%s: Finished waiting for snapshots to delete\n", "ramrod_delete_all_mobilebackup_snapshots_with_wait");
        goto LABEL_32;
      }

      v23 = v22;
      ramrod_log_msg("%s: Timed out waiting for snapshots to delete, attempt:%d\n", "ramrod_delete_all_mobilebackup_snapshots_with_wait", i);
    }

    if (v23 != 35)
    {
      if (v23 == 17)
      {
        ramrod_log_msg("%s: Snapshot exists after deletion. Returning error\n", "ramrod_delete_all_mobilebackup_snapshots_with_wait");
        if (a3)
        {
          *a3 = 1;
        }

        v10 = 17;
        goto LABEL_33;
      }

LABEL_32:
      ramrod_log_msg("%s: Syncing volume after snapshots deletion\n", "ramrod_delete_all_mobilebackup_snapshots_with_wait");
      sub_28350(a1);
      goto LABEL_33;
    }

    ramrod_log_msg("%s: Returning timed out for snapshots deletion\n", "ramrod_delete_all_mobilebackup_snapshots_with_wait");
    if (a3)
    {
      *a3 = 1;
    }

    v10 = 35;
LABEL_33:
    close(v7);
  }

  return v10;
}

uint64_t ramrod_mount_and_delete_all_mobilebackup_snapshots(const char *a1, char *a2)
{
  bzero(__s1, 0x400uLL);
  v7 = 0;
  if (!a2)
  {
    ramrod_log_msg("mount path is not valid\n");
    return -v7;
  }

  mount_path = ramrod_get_mount_path(a1, __s1, 0x400uLL);
  if (mount_path)
  {
    if (ramrod_mount_filesystem_no_fsck_opt_err(a1, a2, 0, 0))
    {
      ramrod_log_msg("Failed to mount %s to delete snapshots: %d\n");
      return -v7;
    }
  }

  else if (strcmp(__s1, a2))
  {
    ramrod_log_msg("Using %s mount path %s rather than supplied %s\n", a1, __s1, a2);
    a2 = __s1;
  }

  v5 = sub_22F90(a2, 1, &v7);
  if (v5)
  {
    ramrod_log_msg("ramrod_delete_all_mobilebackup_snapshots on device %s with mount %s failed with %d, fatal is %d\n", a1, a2, v5, v7);
  }

  if (mount_path && ramrod_force_unmount_filesystem(a2, 0))
  {
    ramrod_log_msg("Failed to unmount %s after deleting snapshots\n");
  }

  return -v7;
}

uint64_t ramrod_get_mount_path(const char *a1, char *a2, size_t a3)
{
  v11 = 0;
  v6 = getmntinfo_r_np(&v11, 2);
  if (!v6)
  {
    ramrod_log_msg("Failed to get list of all mounted file systems\n");
    goto LABEL_8;
  }

  if (v6 < 1)
  {
LABEL_8:
    v9 = 1;
    goto LABEL_9;
  }

  v7 = v6;
  f_mntfromname = v11->f_mntfromname;
  while (strcmp(a1, f_mntfromname))
  {
    f_mntfromname += 2168;
    if (!--v7)
    {
      goto LABEL_8;
    }
  }

  strlcpy(a2, f_mntfromname - 1024, a3);
  v9 = 0;
LABEL_9:
  if (v11)
  {
    free(v11);
  }

  return v9;
}

uint64_t ramrod_mount_and_delete_all_tmp_content(const char *a1, char *a2)
{
  bzero(__s1, 0x400uLL);
  bzero(__str, 0x400uLL);
  mount_path = ramrod_get_mount_path(a1, __s1, 0x400uLL);
  if (mount_path)
  {
    if (ramrod_mount_filesystem_no_fsck_opt_err(a1, a2, 0, 0))
    {
      v5 = 0xFFFFFFFFLL;
      ramrod_log_msg("Failed to mount %s to delete tmp content: %d\n");
      return v5;
    }

    v5 = 0;
  }

  else if (!strcmp(__s1, a2))
  {
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    ramrod_log_msg("Using %s mount path %s rather than supplied %s\n", a1, __s1, a2);
    v5 = 0xFFFFFFFFLL;
    a2 = __s1;
  }

  snprintf(__str, 0x400uLL, "%s/tmp", a2);
  ramrod_log_msg("Deleting content of %s\n", __str);
  if (removefile(__str, 0, 3u))
  {
    v6 = __error();
    ramrod_log_msg("delete of tmp content on device %s with mount %s failed with %d\n", a1, a2, *v6);
    if (!mount_path)
    {
      return v5;
    }
  }

  else
  {
    v5 = 0;
    if (!mount_path)
    {
      return v5;
    }
  }

  if (a2 && ramrod_force_unmount_filesystem(a2, 0))
  {
    ramrod_log_msg("Failed to unmount %s after deleting tmp content\n");
  }

  return v5;
}

uint64_t device_supports_effaceable_storage()
{
  v0 = copy_property_from_registry_defaults(@"no-effaceable-storage");
  if (!v0)
  {
    return 1;
  }

  CFRelease(v0);
  return 0;
}

CFTypeRef device_supports_ean_storage()
{
  result = copy_property_from_registry_defaults(@"ean-storage-present");
  if (result)
  {
    CFRelease(result);
    return &dword_0 + 1;
  }

  return result;
}

BOOL ramrod_update_ramdisk_root_mount()
{
  bzero(&v2, 0x878uLL);
  if (!statfs("/", &v2))
  {
    return (*v2.f_fstypename ^ 0x73667061 | v2.f_fstypename[4]) == 0;
  }

  v0 = __error();
  ramrod_log_msg("statfs failed with error %d\n", *v0);
  return 0;
}

uint64_t ramrod_force_unmount_filesystem(char *a1, int a2)
{
  v3 = (a2 != 0) << 19;
  v18 = off_1A92B8;
  v19 = unk_1A92C8;
  v4 = &v19;
  if (a2)
  {
    v5 = &v19;
    v4 = (&v19 + 8);
    *(&v18 + 1) = "-f";
  }

  else
  {
    v5 = (&v18 + 8);
  }

  *v5 = a1;
  *v4 = 0;
  v6 = 3;
  while (1)
  {
    v17 = 0;
    v16 = xmmword_10ABF4;
    memset(v14, 0, sizeof(v14));
    v15 = 0;
    if (!getattrlist(a1, &v16, v14, 0x1CuLL, 8u) && (v15 & 1) == 0)
    {
      ramrod_log_msg("Tried to unmount a volume at '%s' that wasn't mounted. Ignoring the error.\n", a1);
      return 0;
    }

    if (!unmount(a1, v3))
    {
      return 0;
    }

    v7 = __error();
    v8 = *v7;
    v9 = v8 == 35 || v8 == 16;
    v10 = *v7;
    if (!v9)
    {
      break;
    }

LABEL_15:
    v11 = strerror(v10);
    ramrod_log_msg("Unmounting '%s' failed with %d: %s.\n", a1, v10, v11);
    ramrod_dump_mounted_filesystem_info();
    ramrod_log_msg("Will retry unmounting '%s' in %u seconds.\n", a1, 3);
    sleep(3u);
    if (!--v6)
    {
      return v8;
    }
  }

  if (v8 == 1)
  {
    if (!ramrod_execute_command(&v18))
    {
      return 0;
    }

    v10 = 1;
    goto LABEL_15;
  }

  v13 = strerror(*v7);
  ramrod_log_msg("Unmounting '%s' failed with %d: %s.\n", a1, v8, v13);
  ramrod_dump_mounted_filesystem_info();
  return v8;
}

uint64_t ramrod_unmount_all_filesystems()
{
  if (chdir("/"))
  {
    v0 = __error();
    v1 = *v0;
    ramrod_log_msg("Failed to chdir to %s when unmounting file systems, errno:%d", "/", *v0);
  }

  else
  {
    v1 = 0;
  }

  off_1C6788 = ramrod_probe_media;
  sub_208DC(3, 0);
  for (i = 0; i != 80; i += 8)
  {
    v3 = *(&off_1A92D8 + i);
    if (*v3)
    {
      bzero(v7, 0x400uLL);
      if (ramrod_get_mount_path(v3, v7, 0x400uLL))
      {
        ramrod_log_msg("%s is not mounted\n", v3);
        v4 = 0;
      }

      else
      {
        ramrod_log_msg("%s is mounted at %s.\n", v3, v7);
        v4 = ramrod_force_unmount_filesystem(v7, 0);
      }

      if (v1)
      {
        v5 = 1;
      }

      else
      {
        v5 = v4 == 0;
      }

      if (v5)
      {
        v1 = v1;
      }

      else
      {
        v1 = v4;
      }
    }
  }

  return v1;
}

uint64_t ramrod_get_snapshot_mount_path(const char *a1, char *a2, size_t a3)
{
  v14 = 0;
  v6 = getmntinfo_r_np(&v14, 2);
  if (!v6)
  {
    ramrod_log_msg("Failed to get list of all mounted file systems\n");
    goto LABEL_9;
  }

  v7 = v6;
  if (v6 < 1)
  {
LABEL_9:
    v12 = 1;
    goto LABEL_10;
  }

  v8 = strlen(a1);
  v9 = v7;
  f_mntfromname = v14->f_mntfromname;
  while (1)
  {
    v11 = strlen(f_mntfromname);
    if (v11 >= v8 && !strcmp(a1, &f_mntfromname[v11 - v8]))
    {
      break;
    }

    f_mntfromname += 2168;
    if (!--v9)
    {
      goto LABEL_9;
    }
  }

  strlcpy(a2, f_mntfromname - 1024, a3);
  v12 = 0;
LABEL_10:
  if (v14)
  {
    free(v14);
  }

  return v12;
}

BOOL ramrod_preload_and_create_media_keys(const char *a1, char *a2, _BOOL8 a3, int a4)
{
  bzero(v11, 0x400uLL);
  if (sub_23CD0(a1, a2, v11))
  {
    return 0;
  }

  if (a4)
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  result = sub_23D80(a1, v11, a3, v9);
  if (result)
  {
    if (a4)
    {
      v10 = 8;
    }

    else
    {
      v10 = 0;
    }

    result = sub_23EBC(qword_1C69F0, "additional eds volume", a2, a3, v10);
    if (result)
    {
      return sub_23EBC(qword_1C69F8, "additional encrypted volume", a2, a3 | a4, 0);
    }
  }

  return result;
}

uint64_t sub_23CD0(const char *a1, char *a2, char *a3)
{
  if (!ramrod_get_mount_path(a1, a3, 0x400uLL))
  {
    ramrod_log_msg("Using %s mount path %s rather than supplied value\n", a1, a3);
    return 0;
  }

  if (!ramrod_mount_filesystem_no_fsck_opt_err(a1, a2, 1, 0))
  {
    strlcpy(a3, a2, 0x400uLL);
    return 0;
  }

  v6 = 0xFFFFFFFFLL;
  v7 = strerror(-1);
  ramrod_log_msg("Failed to mount %s to preload keys: %s (%d)\n", a1, v7, -1);
  return v6;
}

BOOL sub_23D80(const char *a1, char *a2, _BOOL8 a3, int a4)
{
  ramrod_log_msg("Calling APFS_FSCTL_UNMOUNT_CRYPTO_HINT on %s\n", a1);
  v13 = 1;
  if (fsctl(a2, 0x80014A22uLL, &v13, 0))
  {
    if (*__error() == 17)
    {
      ramrod_log_msg("Call to APFS_FSCTL_UNMOUNT_CRYPTO_HINT on %s returned EEXIST\n");
    }

    else
    {
      v8 = __error();
      ramrod_log_msg("Failed to call APFS_FSCTL_UNMOUNT_CRYPTO_HINT on %s with errno %d\n", a1, *v8);
      if (!a3)
      {
        goto LABEL_10;
      }

      ramrod_log_msg("Ignoring APFS_FSCTL_UNMOUNT_CRYPTO_HINT failure\n");
    }
  }

  if (a4)
  {
    ramrod_log_msg("Calling APFS_FSCTL_UNMOUNT_CRYPTO_HINT with hints:%d on %s\n", a4, a1);
    v12 = a4;
    v9 = fsctl(a2, 0x80014A22uLL, &v12, 0);
    a3 = v9 == 0;
    if (v9)
    {
      v10 = __error();
      ramrod_log_msg("Failed to call APFS_FSCTL_UNMOUNT_CRYPTO_HINT with hints:%d on %s with errno %d\n", a4, a1, *v10);
    }
  }

  else
  {
    a3 = 1;
  }

LABEL_10:
  if (ramrod_force_unmount_filesystem(a2, 0))
  {
    ramrod_log_msg("Failed to unmount %s after loading crypto keys\n", a1);
  }

  return a3;
}

BOOL sub_23EBC(const __CFArray *a1, const char *a2, char *a3, _BOOL8 a4, int a5)
{
  if (a1 && (Count = CFArrayGetCount(a1), Count >= 1))
  {
    v11 = Count;
    v12 = 0;
    for (i = 0; i != v11; v12 = i >= v11)
    {
      bzero(v18, 0x400uLL);
      *buffer = 0u;
      v17 = 0u;
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      CFStringGetCString(ValueAtIndex, buffer, 32, 0x8000100u);
      if (sub_23CD0(buffer, a3, v18))
      {
        break;
      }

      ramrod_log_msg("Loading keys for %s %s\n", a2, buffer);
      if (!sub_23D80(buffer, v18, a4, a5))
      {
        break;
      }

      ++i;
    }
  }

  else
  {
    return 1;
  }

  return v12;
}

uint64_t ramrod_create_readwrite_ramdisk()
{
  v21 = *off_1A9328;
  v22 = 0;
  v0 = ramrod_execute_command(&v21);
  if (v0)
  {
    ramrod_log_msg("failed to mount tmpfs\n");
  }

  *existing = 0;
  properties = 0;
  ramrod_log_msg("entering %s\n", "show_service_nodes");
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v2 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v3 = v2;
  if (Mutable)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    ramrod_log_msg("failed to create dictionary\n");
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  else
  {
    CFDictionarySetValue(v2, @"Whole", kCFBooleanTrue);
    CFDictionarySetValue(Mutable, @"IOPropertyMatch", v3);
    CFRelease(v3);
    if (IOServiceGetMatchingServices(kIOMasterPortDefault, Mutable, &existing[1]))
    {
      v5 = 1;
    }

    else
    {
      v5 = existing[1] == 0;
    }

    if (v5)
    {
      ramrod_log_msg("failed to show service names (no matching service dictionary) error:%d\n");
    }

    else
    {
      v6 = IOIteratorNext(existing[1]);
      if (v6)
      {
        v7 = v6;
        while (1)
        {
          existing[0] = 0;
          Iterator = IORegistryEntryCreateCFProperties(v7, &properties, kCFAllocatorDefault, 0);
          if (!Iterator && properties)
          {
            Value = CFDictionaryGetValue(properties, @"BSD Name");
            if (Value)
            {
              v10 = Value;
              bzero(buffer, 0x400uLL);
              CFStringGetCString(v10, buffer, 1024, 0x8000100u);
              ramrod_log_msg("%s\n", buffer);
              ramrod_log_msg("\n");
            }

            Iterator = IORegistryEntryCreateIterator(v7, "IOService", 3u, existing);
            v11 = existing[0];
            if (Iterator || !existing[0])
            {
              goto LABEL_31;
            }

            v12 = IOIteratorNext(existing[0]);
            v13 = 0uLL;
            if (v12)
            {
              v14 = v12;
              do
              {
                v29 = v13;
                v30 = v13;
                v27 = v13;
                v28 = v13;
                v25 = v13;
                v26 = v13;
                *buffer = v13;
                v24 = v13;
                entryID = 0;
                busyState = 0;
                IORegistryEntryGetName(v14, buffer);
                IORegistryEntryGetRegistryEntryID(v14, &entryID);
                IOServiceGetBusyState(v14, &busyState);
                IOServiceGetState();
                ramrod_log_msg("%s RegistryID : 0x%qx Busy State : 0x%x Service State : 0x%qx\n", buffer, entryID, busyState, 0);
                IOObjectRelease(v14);
                v15 = IOIteratorNext(existing[0]);
                v13 = 0uLL;
                v14 = v15;
              }

              while (v15);
            }

            ramrod_log_msg("----\n", 0.0);
            ramrod_log_msg("\n");
            Iterator = 0;
          }

          v11 = existing[0];
LABEL_31:
          if (v11)
          {
            IOObjectRelease(v11);
            existing[0] = 0;
          }

          if (properties)
          {
            CFRelease(properties);
            properties = 0;
          }

          IOObjectRelease(v7);
          if (!Iterator)
          {
            v7 = IOIteratorNext(existing[1]);
            if (v7)
            {
              continue;
            }
          }

          goto LABEL_39;
        }
      }

      ramrod_log_msg("failed to show service names (no initial object)\n");
    }
  }

LABEL_39:
  if (existing[1])
  {
    IOObjectRelease(existing[1]);
  }

  return v0;
}

uint64_t ramrod_eject_readwrite_ramdisk()
{
  v0 = ramrod_force_unmount_filesystem("/mnt5", 0);
  if (v0)
  {
    ramrod_log_msg("failed to unmount tmpfs\n");
  }

  else
  {
    ramrod_log_msg("successfully unmounted tmpfs\n");
  }

  return v0;
}

uint64_t ramrod_device_has_baseband_legacy()
{
  v0 = IOServiceNameMatching("baseband");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
    if (qword_1C6A00 != -1)
    {
      sub_D66D4();
    }

    v2 = byte_1C6A08 ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t ramrod_device_has_baseband(uint64_t a1)
{
  if (qword_1C6A00 != -1)
  {
    sub_D66D4();
  }

  return byte_1C6A08;
}

uint64_t ramrod_device_has_int(uint64_t a1)
{
  if (qword_1C6A00 != -1)
  {
    sub_D66D4();
  }

  return byte_1C6A08;
}

void sub_244C0(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFStringGetTypeID() && CFStringHasPrefix(v2, @"int"))
    {
      byte_1C6A08 = 1;
    }

    CFRelease(v2);
  }
}

uint64_t ramrod_device_expects_baseband_volume()
{
  v0 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/filesystems/fstab/baseband-vol");
  if (v0)
  {
    IOObjectRelease(v0);
    v1 = 1;
    ramrod_log_msg("We should have a baseband volume.\n");
  }

  else
  {
    v1 = 0;
    ramrod_log_msg("We should not have a baseband volume.\n");
  }

  return v1;
}

BOOL ramrod_device_has_hoover()
{
  v0 = IOServiceNameMatching("AppleSTDP2700GPIO");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
  v2 = MatchingService;
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
  }

  return v2 != 0;
}

uint64_t bootstrap_hoover()
{
  memset(&v6, 0, sizeof(v6));
  ramrod_log_msg("entering %s\n", "bootstrap_hoover");
  if (stat("/usr/local/standalone/firmware/STDP2700/runtime", &v6))
  {
    ramrod_log_msg("%s: using customer firmware\n", "bootstrap_hoover");
    v0 = "/usr/standalone/firmware/STDP2700/runtime";
    if (stat("/usr/standalone/firmware/STDP2700/runtime", &v6))
    {
      ramrod_log_msg("%s: could not find a firmware file in the ram disk\n");
      return 0;
    }
  }

  else
  {
    ramrod_log_msg("%s: using factory firmware\n", "bootstrap_hoover");
    v0 = "/usr/local/standalone/firmware/STDP2700/runtime";
  }

  v1 = dlopen("/usr/lib/libdpfu.dylib", 261);
  if (v1)
  {
    v2 = dlsym(v1, "dpfuUpdateDeviceWithContentsOfFile");
    if (v2)
    {
      v3 = v2;
      v4 = wait_for_io_service_matching_class_with_timeout("IODPDevice", 0x14u);
      if (v4)
      {
        IOObjectRelease(v4);
      }

      else
      {
        ramrod_log_msg("timed out waiting for IODPDevice service\n");
      }

      if (!v3(v0, 2, 0, 1, 0, 0))
      {
        ramrod_log_msg("%s: hoover successfully bootstrapped\n", "bootstrap_hoover");
        return 1;
      }

      ramrod_log_msg("%s: hoover failed to bootstrap %d\n");
    }

    else
    {
      dlerror();
      ramrod_log_msg("unable to find updater function dpfuUpdateDeviceWithContentsOfFile: %s\n");
    }
  }

  else
  {
    dlerror();
    ramrod_log_msg("unable to open libdpfu.dylib. %s, skipping step\n");
  }

  return 0;
}

const __CFDictionary *ramrod_device_has_stockholm()
{
  result = IOServiceMatching("AppleStockholmControl");
  if (result)
  {
    result = IOServiceGetMatchingService(kIOMasterPortDefault, result);
    if (result)
    {
      IOObjectRelease(result);
      return (&dword_0 + 1);
    }
  }

  return result;
}

BOOL ramrod_device_is_virtual_machine()
{
  v3 = 0;
  v2 = 4;
  return !sysctlbyname("kern.hv_vmm_present", &v3, &v2, 0, 0) && v3 == 1;
}

uint64_t ramrod_create_udid_string()
{
  pthread_mutex_lock(&stru_1C4700);
  v0 = qword_1C6A10;
  if (!qword_1C6A10)
  {
    v0 = MGCopyAnswer();
    qword_1C6A10 = v0;
  }

  CFRetain(v0);
  pthread_mutex_unlock(&stru_1C4700);
  return qword_1C6A10;
}

void *ramrod_copy_NVRAM_variable_as_string(const __CFString *a1, CFErrorRef *a2)
{
  v3 = ramrod_copy_NVRAM_variable(a1);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFStringGetTypeID())
    {
      v6 = CFRetain(v4);
    }

    else
    {
      if (v5 != CFDataGetTypeID())
      {
        ramrod_create_error_cf(a2, @"RamrodErrorDomain", 5, 0, @"%s: could not coerce NVRAM variable to a string: %@=%@", v8, v9, v10, "ramrod_copy_NVRAM_variable_as_string");
        v7 = 0;
        goto LABEL_9;
      }

      BytePtr = CFDataGetBytePtr(v4);
      v6 = CFStringCreateWithCString(kCFAllocatorDefault, BytePtr, 0x8000100u);
    }

    v7 = v6;
LABEL_9:
    CFRelease(v4);
    return v7;
  }

  return 0;
}

id ramrod_get_NVRAM_variable_as_BOOLean(const __CFString *a1, CFErrorRef *a2)
{
  v2 = ramrod_copy_NVRAM_variable_as_string(a1, a2);

  return [v2 BOOLValue];
}

void ramrod_kickstart_aces()
{
  v7 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v1 = Mutable;
    v2 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v2)
    {
      v3 = v2;
      CFDictionarySetValue(v1, @"IOPropertyMatch", v2);
      CFRetain(v1);
      CFDictionarySetValue(v3, @"compatible", @"usbc,cd3215");
      if (IOServiceGetMatchingService(kIOMasterPortDefault, v1))
      {
        CFRelease(v1);
        CFRelease(v3);
LABEL_10:
        ramrod_log_msg("port micro restart in progress\n");
        set_usb_forced_off_bus(1);
        if (ramrod_set_SMC_key("AC-R", &v7))
        {
          if (ramrod_copy_NVRAM_variable(@"usbcfw.version"))
          {
            ramrod_set_NVRAM_variable(@"ramrod-kickstart-aces", @"1", 0);
          }

          ramrod_log_msg("port micro restart in progress\n");
        }

        else
        {
          ramrod_log_msg("unable to kick port micro - Couldn't set AC-R to 0\n");
        }

        return;
      }

      v4 = 0;
      do
      {
        v5 = v4;
        if (v4 == 4)
        {
          break;
        }

        CFRetain(v1);
        CFDictionarySetValue(v3, @"compatible", *(&off_1A9380 + v5 + 1));
        MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v1);
        v4 = v5 + 1;
      }

      while (!MatchingService);
      CFRelease(v1);
      CFRelease(v3);
      if (v5 < 4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      ramrod_log_msg("Couldn't create a propertyMatchingDict to update USB-C firmware.\n");
      CFRelease(v1);
    }
  }

  ramrod_delete_NVRAM_variable(@"ramrod-kickstart-aces", 0);

  ramrod_log_msg("No valid port micro usbc,cdXXXX value. Not restarting port micro\n");
}

BOOL ramrod_set_SMC_key(const char *a1, const char *a2)
{
  v4 = IOServiceMatching("AppleSMC");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v4);
  if (!MatchingService)
  {
    ramrod_log_msg("Couldn't find matching SMC service. Bailing.\n");
    return 0;
  }

  v6 = MatchingService;
  if (!off_1AD498 || !SMCOpenConnection())
  {
    ramrod_log_msg("Failed to open SMC connection. Bailing.\n");
    IOObjectRelease(v6);
    return 0;
  }

  SMCMakeUInt32Key();
  v7 = SMCGetKeyInfo();
  if (v7)
  {
    ramrod_log_msg("Couldn't retrieve SMC Key %s. Got SMC error: %d\n", a1, v7);
    v8 = 0;
  }

  else
  {
    v9 = SMCWriteKeyWithKnownSize();
    v8 = v9 == 0;
    if (v9)
    {
      ramrod_log_msg("Writing SMC key %s as value %s failed with error %d\n", a1, a2, v9);
    }

    SMCReadKeyAsNumeric();
    ramrod_log_msg("Read (0x%jX) for key %s\n", 0, a1);
  }

  IOObjectRelease(v6);
  SMCCloseConnection();
  return v8;
}

void _ramrod_reset_usbcretimer_legacy()
{
  ramrod_log_msg("creating AppleTypeCRetimer obj\n");
  v0 = off_1AD490;
  if (!off_1AD490)
  {
    goto LABEL_7;
  }

  v1 = AppleTypeCRetimerUpdaterCreate();
  if (!v1)
  {
    v0 = 0;
LABEL_7:
    ramrod_log_msg_cf(@"failed to create AppleTypeCRetimer error=%@\n", v0);
    return;
  }

  v2 = v1;
  ramrod_log_msg("executing AppleTypeCRetimerUpdaterReset on AppleUSBCRetimer\n");
  v3 = AppleTypeCRetimerUpdaterReset();
  v4 = "success";
  if (!v3)
  {
    v4 = "failure";
  }

  ramrod_log_msg("AppleTypeCRetimerUpdaterReset returned %s\n", v4);
  CFRelease(v2);
}

void sub_24E04(const char *result, const char *a2)
{
  if (a2)
  {
    ramrod_log_msg("updater_log (%s): %s", result, a2);
  }
}

void _ramrod_reset_usbcretimer_uarp()
{
  ramrod_log_msg("creating AppleTypeCRetimerUARP obj\n");
  v0 = off_1AD488;
  if (!off_1AD488)
  {
    goto LABEL_7;
  }

  v1 = AppleTypeCRetimerUARPUpdaterCreate();
  if (!v1)
  {
    v0 = 0;
LABEL_7:
    ramrod_log_msg_cf(@"failed to create AppleTypeCRetimerUARP error=%@\n", v0);
    return;
  }

  v2 = v1;
  ramrod_log_msg("executing AppleTypeCRetimerUARPUpdaterReset on AppleUSBCRetimerUARP\n");
  v3 = AppleTypeCRetimerUARPUpdaterReset();
  v4 = "success";
  if (!v3)
  {
    v4 = "failure";
  }

  ramrod_log_msg("AppleTypeCRetimerUARPUpdaterReset returned %s\n", v4);
  CFRelease(v2);
}

void ramrod_reset_usbcretimer()
{
  if (ramrod_device_has_usbcretimer_legacy())
  {
    _ramrod_reset_usbcretimer_legacy();
  }

  if (ramrod_device_has_usbcretimer_uarp())
  {

    _ramrod_reset_usbcretimer_uarp();
  }
}

void ramrod_kickstart_usbcretimer()
{
  v0 = ramrod_copy_NVRAM_variable(@"ramrod-kickstart-appletypecretimer");
  if (v0)
  {
    v1 = v0;
    ramrod_reset_usbcretimer();
    ramrod_delete_NVRAM_variable(@"ramrod-kickstart-appletypecretimer", 0);

    CFRelease(v1);
  }

  else
  {

    ramrod_log_msg("nvram not set, skipping kick.\n");
  }
}

BOOL ramrod_get_SMC_key(const char *a1, void *a2)
{
  v4 = IOServiceMatching("AppleSMC");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v4);
  if (!MatchingService)
  {
    ramrod_log_msg("Couldn't find matching SMC service. Bailing.\n");
    return 0;
  }

  v6 = MatchingService;
  if (!off_1AD498 || !SMCOpenConnection())
  {
    ramrod_log_msg("Failed to open SMC connection. Bailing.\n");
    IOObjectRelease(v6);
    return 0;
  }

  SMCMakeUInt32Key();
  v7 = SMCGetKeyInfo();
  v8 = v7 == 0;
  if (v7)
  {
    ramrod_log_msg("Couldn't retrieve SMC Key %s. Got SMC error: %d\n", a1, v7);
  }

  else
  {
    SMCReadKeyAsNumeric();
    ramrod_log_msg("Read (0x%jX) for key %s\n", 0, a1);
    *a2 = 0;
  }

  IOObjectRelease(v6);
  SMCCloseConnection();
  return v8;
}

uint64_t ramrod_set_rootless_flags(const char *a1)
{
  memset(&v8, 0, sizeof(v8));
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s/%s", a1, "/private/var/db/com.apple.xpc.roleaccountd.staging");
  if (setxattr(__str, "com.apple.rootless", "RoleAccountStaging", 0x12uLL, 0, 1))
  {
    v2 = __error();
    v3 = *v2;
    if (v3 != 2)
    {
      v6 = strerror(*v2);
      ramrod_log_msg("Failed to set com.apple.rootless=RoleAccountStaging xattr on %s with error %d: %s\n", __str, v3, v6);
      return v3;
    }

    ramrod_log_msg("Failed to set com.apple.rootless=RoleAccountStaging xattr on %s because the directory doesn't exist. Not fatal.\n", __str);
    return 0;
  }

  stat(__str, &v8);
  if (!lchflags(__str, v8.st_flags | 0x80000))
  {
    return 0;
  }

  v4 = __error();
  v3 = *v4;
  v5 = strerror(*v4);
  ramrod_log_msg("Failed to set SF_RESTRICTED flag on %s with error %d: %s\n", __str, v3, v5);
  return v3;
}

uint64_t asp_nand_set_writable()
{
  *mainPort = 0;
  memset(name, 0, 128);
  if (IOMasterPort(0, mainPort))
  {
    ramrod_log_msg("IOMasterPort failed\n");
    return 1;
  }

  v1 = IOServiceMatching("ASPStorage");
  if (!v1)
  {
    ramrod_log_msg("IOServiceMatching failed for %s\n");
    return 1;
  }

  IOServiceGetMatchingServices(mainPort[0], v1, &mainPort[1]);
  if (!mainPort[1])
  {
    puts("ASPStorage instance not found!");
    return 1;
  }

  v2 = IOIteratorNext(mainPort[1]);
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  while (1)
  {
    IORegistryEntryGetName(v3, name);
    ramrod_log_msg("Service name : %s\n", name);
    v4 = IORegistryEntrySetCFProperty(v3, @"ASPSetWritable", kCFBooleanTrue);
    if (v4)
    {
      break;
    }

    ramrod_log_msg("Set ASP writable successfully\n");
    IOObjectRelease(v3);
    v3 = IOIteratorNext(mainPort[1]);
    if (!v3)
    {
      return 1;
    }
  }

  ramrod_log_msg("Failed to set ASP writable property. err = 0x%08x occurred\n", v4);
  return 0;
}

uint64_t dump_panic_logs_from_path(uint64_t a1, const char *a2, CFErrorRef *a3)
{
  bzero(v10, 0x401uLL);
  ramrod_log_msg("entering %s\n", "dump_panic_logs_from_path");
  __strlcpy_chk();
  __strlcat_chk();
  __strlcat_chk();
  v9[0] = "/usr/libexec/DumpPanic";
  v9[1] = v10;
  v9[2] = 0;
  v4 = ramrod_execute_command(v9);
  if (!v4)
  {
    return 1;
  }

  ramrod_log_msg("DumpPanic failure: %d\n", v4);
  ramrod_create_error_cf(a3, @"RamrodErrorDomain", 7, 0, @"%s: DumpPanic failed: %d", v5, v6, v7, "dump_panic_logs_from_path");
  return 0;
}

uint64_t dump_and_return_panic_logs_from_path(uint64_t a1, const char *a2, const char **a3, void *a4, ssize_t *a5, CFErrorRef *a6)
{
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = "/mobile/Library/Logs/CrashReporter/";
  }

  bzero(__s, 0x400uLL);
  ramrod_log_msg("entering %s\n", "dump_and_return_panic_logs_from_path");
  __strlcpy_chk();
  __strlcat_chk();
  v12 = strlen(__s);
  v13 = time(0);
  v14 = dump_panic_logs_from_path(a1, v11, a6);
  v15 = time(0);
  *a4 = 0;
  *a3 = 0;
  *a5 = 0;
  v16 = opendir(__s);
  if (!v16)
  {
    v31 = __error();
    v32 = strerror(*v31);
    ramrod_log_msg("%s: Unable to open CrashReporter directory at %s: (%s)\n", "dump_and_return_panic_logs_from_path", __s, v32);
    __error();
    ramrod_create_error_cf(a6, @"RamrodErrorDomain", 11, 0, @"%s: Failed to open CrashReporter directory: %d", v33, v34, v35, "dump_and_return_panic_logs_from_path");
    return 0;
  }

  v17 = v16;
  ramrod_log_msg("Looking for logs between %ld and %ld\n", v13, v15);
  bzero(&v42, 0x418uLL);
  v41 = 0;
  if (readdir_r(v17, &v42, &v41) || !v41)
  {
    goto LABEL_42;
  }

  while (1)
  {
    memset(&v40, 0, sizeof(v40));
    if (v42.d_type != 8)
    {
      goto LABEL_25;
    }

    d_namlen = v42.d_namlen;
    if (v42.d_namlen < 5u)
    {
      goto LABEL_25;
    }

    if (*v42.d_name == 1768841584 && v42.d_name[4] == 99)
    {
      v21 = "panic";
    }

    else
    {
      if (v42.d_namlen < 0xAu)
      {
        goto LABEL_25;
      }

      if (*v42.d_name != 0x7365526563726F66 || *&v42.d_name[8] != 29797)
      {
        goto LABEL_25;
      }

      v21 = "forceReset";
    }

    *a3 = v21;
    if (v12 + d_namlen >= 0x400)
    {
      ramrod_log_msg("Log path name too long, skipping\n");
      goto LABEL_25;
    }

    strncpy(&__s[v12], v42.d_name, d_namlen);
    __s[v12 + v42.d_namlen] = 0;
    if (!stat(__s, &v40))
    {
      break;
    }

    v22 = __error();
    ramrod_log_msg("Error %d from stat(%s)\n", *v22, __s);
LABEL_25:
    if (readdir_r(v17, &v42, &v41) || !v41)
    {
      goto LABEL_42;
    }
  }

  if (v40.st_ctimespec.tv_sec < v13 || v40.st_ctimespec.tv_sec > v15 || v40.st_mtimespec.tv_sec < v13 || v40.st_mtimespec.tv_sec > v15)
  {
    goto LABEL_25;
  }

  ramrod_log_msg("Found %s log at %s\n", *a3, __s);
  v23 = open(__s, 0);
  if (v23 < 0)
  {
    __error();
    ramrod_create_error_cf(a6, @"RamrodErrorDomain", 11, 0, @"%s: Error %d opening panic log", v36, v37, v38, "dump_and_return_panic_logs_from_path");
  }

  else
  {
    v24 = v23;
    if (v40.st_size >= 0x200000uLL)
    {
      st_size = 0x200000;
    }

    else
    {
      st_size = v40.st_size;
    }

    v29 = malloc(st_size + 1);
    if (v29)
    {
      v30 = read(v24, v29, st_size);
      *(v29 + v30) = 0;
      *a4 = v29;
      *a5 = v30;
    }

    else
    {
      ramrod_create_error_cf(a6, @"RamrodErrorDomain", 6, 0, @"%s: Could not allocate memory for panic log", v26, v27, v28, "dump_and_return_panic_logs_from_path");
    }

    close(v24);
  }

LABEL_42:
  closedir(v17);
  return v14;
}

uint64_t ramrod_parse_panic_string(const char *a1, regoff_t a2, void *a3, void *a4)
{
  if (sub_25A70(a1, a2, "(panic\\(cpu(?:[^\n\\\\]|\\\\[^n\n])*)", a3, a4) || sub_25A70(a1, a2, "Debugger message: ((?:[^\n\\\\]|\\\\[^n\n])*)", a3, a4))
  {
    return 1;
  }

  result = 0;
  *a3 = 0;
  *a4 = 0;
  return result;
}

BOOL sub_25A70(const char *a1, regoff_t a2, char *a3, void *a4, void *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  memset(&v13, 0, sizeof(v13));
  v9 = regcomp(&v13, a3, 265);
  if (v9)
  {
    v20 = 0uLL;
    v21 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    __pmatch = 0;
    v15 = 0uLL;
    regerror(v9, &v13, &__pmatch, 0x80uLL);
    ramrod_log_msg("regcomp failed: %s\n", &__pmatch);
    return 0;
  }

  else
  {
    v22 = 0uLL;
    v23 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    __pmatch.rm_so = 0;
    v15 = 0uLL;
    __pmatch.rm_eo = a2;
    v10 = regexec(&v13, a1, 0xAuLL, &__pmatch, 7);
    v11 = v10 == 0;
    if (!v10)
    {
      if (a4)
      {
        *a4 = &a1[v15];
      }

      if (a5)
      {
        *a5 = *(&v15 + 1) - v15;
      }
    }

    regfree(&v13);
  }

  return v11;
}

uint64_t ramrod_parse_panic_uptime(const char *a1, regoff_t a2)
{
  v11 = 0;
  __str = 0;
  v9 = 0;
  v10 = 0;
  sub_25A70(a1, a2, "Boot\\s+:\\s(\\w+)", &__str, &v10);
  sub_25A70(a1, a2, "Calendar:\\s(\\w+)", &v11, &v9);
  if (v10)
  {
    v4 = v9 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return -1;
  }

  v5 = strtol(__str, 0, 16);
  v6 = strtol(v11, 0, 16);
  if (v5 < 1 || v6 <= 0)
  {
    return -1;
  }

  else
  {
    return v6 - v5;
  }
}

uint64_t ramrod_raw_device_for_block_device(const char *a1, char *a2, size_t a3)
{
  memset(&v10, 0, sizeof(v10));
  if (stat(a1, &v10))
  {
    v6 = __error();
    v7 = *v6;
    v8 = strerror(*v6);
    ramrod_log_msg("unable to stat block device %s: %s\n", a1, v8);
  }

  else if ((v10.st_mode & 0xF000) == 0x6000)
  {
    *buf = 0u;
    v12 = 0u;
    devname_r(v10.st_rdev, 0x2000u, buf, 32);
    snprintf(a2, a3, "%s%s", "/dev/", buf);
    return 0;
  }

  else
  {
    ramrod_log_msg("%s is not a block device\n", a1);
    return 0xFFFFFFFFLL;
  }

  return v7;
}

uint64_t ramrod_register_for_button_click()
{
  if (IOHIDEventSystemCreate())
  {
    if (IOHIDEventSystemOpen())
    {
      ramrod_log_msg("Registered for button events\n");
    }

    else
    {
      ramrod_log_msg("IOHIDEventSystemOpen failed\n");
    }
  }

  else
  {
    ramrod_log_msg("IOHIDEventSystemCreate failed\n");
  }

  return 0;
}

uint64_t sub_25DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (IOHIDEventGetType() != 3)
  {
    return 1;
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  v5 = IOHIDEventGetIntegerValue();
  ramrod_log_msg("%s: usage: %ld - intValue:%ld\n", "ramrodButtonHIDEventCallBack", IntegerValue, v5);
  if (IntegerValue > 232)
  {
    if ((IntegerValue - 233) > 1)
    {
      return 1;
    }
  }

  else if (IntegerValue != 48 && IntegerValue != 64 && IntegerValue != 149)
  {
    return 1;
  }

  if (IOHIDEventGetIntegerValue())
  {
    if ((byte_1C6B3D[0] & 1) == 0)
    {
      v6 = 0;
      while (v6 != 4)
      {
        v7 = byte_1C6B3D[++v6];
        if (v7 == 1)
        {
          if ((v6 - 1) < 4)
          {
            goto LABEL_18;
          }

          break;
        }
      }

      if ((byte_1C6B3C & 1) == 0)
      {
        if (qword_1C6B48 != -1)
        {
          sub_D66E8();
        }

        dispatch_async(qword_1C6B50, &stru_1AD838);
      }
    }

LABEL_18:
    pthread_mutex_lock(&stru_1C4740);
    if (IntegerValue <= 148)
    {
      if (IntegerValue == 48)
      {
        v8 = byte_1C6B3D;
      }

      else
      {
        v8 = &byte_1C6B3E;
      }
    }

    else
    {
      switch(IntegerValue)
      {
        case 149:
          v8 = &byte_1C6B41;
          break;
        case 233:
          v8 = &byte_1C6B3F;
          break;
        case 234:
          v8 = &byte_1C6B40;
          break;
        default:
LABEL_36:
          pthread_mutex_unlock(&stru_1C4740);
          return 1;
      }
    }

    *v8 = 1;
    goto LABEL_36;
  }

  pthread_mutex_lock(&stru_1C4740);
  if (IntegerValue <= 148)
  {
    v9 = byte_1C6B3D;
    if (IntegerValue != 48)
    {
      v9 = &byte_1C6B3E;
    }
  }

  else
  {
    switch(IntegerValue)
    {
      case 149:
        v9 = &byte_1C6B41;
        break;
      case 233:
        v9 = &byte_1C6B3F;
        break;
      case 234:
        v9 = &byte_1C6B40;
        break;
      default:
        goto LABEL_40;
    }
  }

  *v9 = 0;
LABEL_40:
  pthread_mutex_unlock(&stru_1C4740);
  if ((byte_1C6B3D[0] & 1) == 0)
  {
    v10 = 0;
    while (v10 != 4)
    {
      v11 = byte_1C6B3D[++v10];
      if (v11 == 1)
      {
        if ((v10 - 1) < 4)
        {
          return 1;
        }

        break;
      }
    }

    if ((byte_1C6B3C & 1) == 0)
    {
      if (qword_1C6B48 != -1)
      {
        sub_D66FC();
      }

      dispatch_async(qword_1C6B50, &stru_1AD878);
    }
  }

  return 1;
}

uint64_t ramrod_wait_for_button(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  memset(v2.__opaque, 0, sizeof(v2.__opaque));
  v2.__sig = 850045863;
  v3 = 1018212795;
  v7 = a1;
  if (IOHIDEventSystemCreate())
  {
    if (IOHIDEventSystemOpen())
    {
      pthread_mutex_lock(&v2);
      while (!DWORD2(v6))
      {
        pthread_cond_wait(&v3, &v2);
      }

      pthread_mutex_unlock(&v2);
      IOHIDEventSystemClose();
    }

    else
    {
      ramrod_log_msg("IOHIDEventSystemOpen failed\n");
    }
  }

  else
  {
    ramrod_log_msg("IOHIDEventSystemCreate failed\n");
  }

  return 0;
}

uint64_t sub_26224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Type = IOHIDEventGetType();
  ramrod_log_msg("hid event type: %d\n", Type);
  if (Type == 3)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v7 = IOHIDEventGetIntegerValue();
    v8 = IOHIDEventGetIntegerValue();
    ramrod_log_msg("%s: usage_page: %ld - usage: %ld - intValue:%ld\n", "ramrodHIDEventCallBack", IntegerValue, v7, v8);
    ramrod_log_msg("%s: looking for %ld\n", "ramrodHIDEventCallBack", *(a2 + 120));
    if (IntegerValue == 12)
    {
      v9 = *(a2 + 120);
      if (!v9 || v7 == v9)
      {
        if (IOHIDEventGetIntegerValue())
        {
          pthread_mutex_lock(a2);
          *(a2 + 112) = 1;
          pthread_cond_signal((a2 + 64));
          pthread_mutex_unlock(a2);
        }
      }
    }
  }

  return 0;
}

CFTypeRef *ramrod_read_os_build_version(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3)
{
  if (!a1)
  {
    ramrod_log_msg("%s: NULL system partition mount point\n", a2);
    return 0;
  }

  v3 = a2;
  if (!a2)
  {
    ramrod_log_msg("%s: NULL OS build version ref\n", "ramrod_read_os_build_version");
    return v3;
  }

  if (!a3)
  {
    ramrod_log_msg("%s: NULL OS release type mount point\n", a2);
    return 0;
  }

  if (*a2)
  {
    CFRelease(*a2);
    *v3 = 0;
  }

  if (*a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  v6 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s/System/Library/CoreServices/SystemVersion.plist", a1);
  if (!v6)
  {
    ramrod_log_msg("%s: Couldn't allocate plist path string\n", v7);
    return 0;
  }

  v8 = v6;
  bzero(buffer, 0x400uLL);
  CString = CFStringGetCString(v8, buffer, 1024, 0x8000100u);
  CFRelease(v8);
  if (!CString)
  {
    ramrod_log_msg("%s: Couldn't get c-string with plist path\n", v10);
    return 0;
  }

  dictionary_from_plist = create_dictionary_from_plist(buffer, 0);
  if (!dictionary_from_plist)
  {
    ramrod_log_msg("%s: Unable to read system version plist\n", v12);
    return 0;
  }

  v13 = dictionary_from_plist;
  Value = CFDictionaryGetValue(dictionary_from_plist, @"ProductBuildVersion");
  *v3 = Value;
  v3 = Value != 0;
  if (Value)
  {
    CFRetain(Value);
    v15 = CFDictionaryGetValue(v13, @"ReleaseType");
    *a3 = v15;
    if (v15)
    {
      CFRetain(v15);
    }
  }

  else
  {
    ramrod_log_msg("%s: Unable to read build version from plist", "ramrod_read_os_build_version");
  }

  CFRelease(v13);
  return v3;
}

CFTypeRef *ramrod_read_previous_os_build_version(uint64_t a1)
{
  os_build_version = ramrod_read_os_build_version(a1, &previous_os_build_version, &previous_os_release_type);
  if (os_build_version)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    *buffer = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
    *v3 = 0u;
    v4 = 0u;
    if (!CFStringGetCString(previous_os_build_version, buffer, 256, 0x8000100u))
    {
      __strlcpy_chk();
    }

    if (!previous_os_release_type || !CFStringGetCString(previous_os_release_type, v3, 256, 0x8000100u))
    {
      __strlcpy_chk();
    }

    ramrod_log_msg("%s: previous OS version: %s (%s)\n", "ramrod_read_previous_os_build_version", buffer, v3);
  }

  return os_build_version;
}

CFTypeRef *ramrod_read_new_os_build_version(uint64_t a1)
{
  os_build_version = ramrod_read_os_build_version(a1, &new_os_build_version, &new_os_release_type);
  if (os_build_version)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    *buffer = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
    *v3 = 0u;
    v4 = 0u;
    if (!CFStringGetCString(new_os_build_version, buffer, 256, 0x8000100u))
    {
      __strlcpy_chk();
    }

    if (!new_os_release_type || !CFStringGetCString(new_os_release_type, v3, 256, 0x8000100u))
    {
      __strlcpy_chk();
    }

    ramrod_log_msg("%s: new OS version: %s (%s)\n", "ramrod_read_new_os_build_version", buffer, v3);
  }

  return os_build_version;
}

BOOL ramrod_plugin_done_is_last(const __CFNumber *a1)
{
  ++dword_1C6A18;
  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  return valuePtr == dword_1C6A18;
}

uint64_t ramrod_reallocate_main_container(uint64_t a1)
{
  if (byte_1C67B0)
  {
    ramrod_log_msg("Resizing main OS container to %lld bytes (0 mean max size of partition) \n", a1);
    v1 = APFSContainerResize();
    if (v1)
    {
      ramrod_log_msg("APFSContainerResize failed: %d\n", v1);
      return 0;
    }
  }

  else
  {
    ramrod_log_msg("apfs_container_device_node_path wasn't created yet, skipping resize of container (partition resized already \n");
  }

  return 1;
}

uint64_t ramrod_resize_container(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = dispatch_time(0, 900000000000);
  global_queue = dispatch_get_global_queue(2, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3254779904;
  v9[2] = sub_26A00;
  v9[3] = &unk_1AD778;
  v9[4] = &v10;
  v9[5] = a1;
  dispatch_after(v5, global_queue, v9);
  *a3 = 0;
  v7 = APFSContainerResizeEx();
  *(v11 + 24) = 1;
  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_269E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26A00(uint64_t result)
{
  if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
  {
    if (APFSCancelContainerResize())
    {
      ramrod_log_msg("ramrod_resize_container: Failed to cancel resize container %s, %d.\n");
    }

    else
    {
      ramrod_log_msg("ramrod_resize_container: Canceled resize container %s.\n");
    }
  }
}

uint64_t ramrod_shrink_main_os_container_with_error(uint64_t a1, uint64_t a2, void *a3, CFTypeRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = 0;
  v37 = 0;
  v38 = 0;
  cf = 0;
  if (!byte_1C67B0)
  {
    v17 = @"%s: APFS main container doesn't exist";
    v16 = 8;
    v18 = 8;
LABEL_5:
    ramrod_create_error_cf(&cf, @"RamrodErrorDomain", v18, 0, v17, a6, a7, a8, "ramrod_shrink_main_os_container_with_error");
    goto LABEL_16;
  }

  SpaceInfo = APFSContainerGetSpaceInfo();
  if (SpaceInfo)
  {
    v33 = SpaceInfo;
    __error();
    ramrod_create_error_cf(&cf, @"RamrodErrorDomain", 7, 0, @"%s: Failed getting %s container space information. status: %d, errno: %d", v13, v14, v15, "ramrod_shrink_main_os_container_with_error");
    v16 = v33;
    goto LABEL_16;
  }

  MinimalSize = APFSContainerGetMinimalSize();
  if (MinimalSize)
  {
    v34 = MinimalSize;
    __error();
    ramrod_create_error_cf(&cf, @"RamrodErrorDomain", 7, 0, @"%s: Failed getting %s container minimum allowed space. status: %d, errno: %d", v23, v24, v25, "ramrod_shrink_main_os_container_with_error");
    v16 = v34;
    goto LABEL_16;
  }

  if (v39 < a1 || v39 < a2)
  {
    v16 = 2;
    ramrod_create_error_cf(&cf, @"RamrodErrorDomain", 2, 0, @"%s: Unexpected arguments and/or APFS results. main_container_min_allowed_size: %llu, current_container_size: %llu, max_recovery_os_extra_size: %llu, min_recovery_os_extra_size: %llu", v20, v21, v22, "ramrod_shrink_main_os_container_with_error");
  }

  else
  {
    ramrod_log_msg("The container in %s current size is %lldMiB with min allowed size of %lldMiB. Asked to shrink by %lldMiB to %lldMiB.\n", &byte_1C67B0, v39 >> 20, v37 >> 20, a1 / 0x100000, a2 / 0x100000);
    if (v39 - v37 >= a2)
    {
      v26 = a2;
    }

    else
    {
      v26 = v39 - v37;
    }

    if (v26 < a1)
    {
      v17 = CFSTR("%s: Device doesn't have enough space to install recovery OS (max shrink offset %llu, minimum needed space %llu, maximum needed space %llu");
      v16 = 7;
LABEL_23:
      v18 = 7;
      goto LABEL_5;
    }

    v28 = ramrod_resize_container(&byte_1C67B0, v39 - v26, &v37);
    if (v28)
    {
      v16 = v28;
      __error();
      v17 = @"%s: Failed resizeing %s container. status: %d, errno:%d  (asked resize to %llu, estimated min possible size is %llu)";
      goto LABEL_23;
    }

    v38 = 0;
    v29 = APFSContainerGetSpaceInfo();
    if (v29)
    {
      v35 = v29;
      __error();
      ramrod_create_error_cf(&cf, @"RamrodErrorDomain", 7, 0, @"%s: Failed geting post resize %s container space information. status: %d, errno: %d", v30, v31, v32, "ramrod_shrink_main_os_container_with_error");
      v16 = v35;
    }

    else
    {
      ramrod_log_msg("After resize for container %s we have, container_size %llu.\n", &byte_1C67B0, v39);
      v16 = 0;
      if (a3)
      {
        *a3 = v39 - v38;
      }
    }
  }

LABEL_16:
  if (cf)
  {
    ramrod_log_msg_cf(@"ramrod_shrink_main_os_container failed: %@", cf);
    if (a4)
    {
      *a4 = cf;
    }

    else
    {
      CFRelease(cf);
    }
  }

  return v16;
}

uint64_t ramrod_cancel_main_os_container_resize()
{
  if (byte_1C67B0)
  {
    v0 = APFSCancelContainerResize();
    if (v0)
    {
      ramrod_log_msg("Failed to cancel resize for container %s, %d.\n");
    }

    else
    {
      ramrod_log_msg("Canceled resize for container %s.\n");
    }
  }

  else
  {
    ramrod_log_msg("APFS main container doesn't exist.\n");
    return 0xFFFFFFFFLL;
  }

  return v0;
}

uint64_t ramrod_get_device_size(const char *a1)
{
  v12 = 0;
  v11 = 0;
  v2 = open(a1, 0);
  if (v2 == -1)
  {
    v9 = __error();
    v10 = strerror(*v9);
    ramrod_log_msg("unable to open %s: %s\n", a1, v10);
    return 0;
  }

  else
  {
    v3 = v2;
    if (ioctl(v2, 0x40046418uLL, &v12) == -1)
    {
      v4 = __error();
      v5 = strerror(*v4);
      ramrod_log_msg("unable to get DKIOCGETBLOCKSIZE for %s: %s\n", a1, v5);
      v12 = 0;
    }

    if (ioctl(v3, 0x40086419uLL, &v11) == -1)
    {
      v6 = __error();
      v7 = strerror(*v6);
      ramrod_log_msg("unable to get DKIOCGETBLOCKCOUNT for %s: %s\n", a1, v7);
      v11 = 0;
    }

    close(v3);
    return v11 * v12;
  }
}

uint64_t ramrod_convert_eds_volumes(uint64_t a1, CFErrorRef *a2)
{
  if (!qword_1C69F0)
  {
    return 0;
  }

  Count = CFArrayGetCount(qword_1C69F0);
  v5 = Count;
  if (Count >= 2)
  {
    ramrod_log_msg("Found %ld eds volumes, expected only 1, this is a BUG!\n", Count);
    goto LABEL_5;
  }

  if (Count != 1)
  {
    return 0;
  }

LABEL_5:
  v6 = 0;
  while (1)
  {
    *buffer = 0u;
    v20 = 0u;
    ValueAtIndex = CFArrayGetValueAtIndex(qword_1C69F0, v6);
    CFStringGetCString(ValueAtIndex, buffer, 32, 0x8000100u);
    ramrod_log_msg("Converting eds volume %s\n", buffer);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v21[0] = "/System/Library/Filesystems/apfs.fs/apfs_vol_converter";
    memset(v29, 0, sizeof(v29));
    if (ramrod_raw_device_for_block_device(buffer, v29, 0x20uLL))
    {
      ramrod_log_msg("Failed to convert block device path %s into character device node path\n", buffer);
      v11 = 3;
      ramrod_create_error_cf(a2, @"RamrodErrorDomain", 3, 0, @"%s: Failed to find raw data device", v13, v14, v15, "ramrod_convert_eds_volume");
      return v11;
    }

    v21[1] = "-v";
    if (a1)
    {
      *&v22 = "-m";
      *(&v22 + 1) = a1;
      v8 = 4;
    }

    else
    {
      v8 = 2;
    }

    v9 = &v21[v8];
    *v9 = "-l";
    v9[1] = "/mnt5/apfs_vol_converter.log";
    v9[2] = v29;
    v9[3] = 0;
    ramrod_log_msg("Running apfs_vol_converter on volume %s\n", buffer);
    v10 = ramrod_execute_command(v21);
    if (v10)
    {
      break;
    }

    ramrod_log_msg("Successfully returned after running apfs_vol_converter on %s\n", buffer);
    ramrod_log_msg("Removing %s on success\n", "/mnt5/apfs_vol_converter.log");
    unlink("/mnt5/apfs_vol_converter.log");
    if (v5 == ++v6)
    {
      return 0;
    }
  }

  ramrod_log_msg("Execution of apfs_vol_converter returned an error %d\n", v10);
  v11 = 7;
  ramrod_create_error_cf(a2, @"RamrodErrorDomain", 7, 0, @"%s: Failed to convert eds volume", v16, v17, v18, "ramrod_convert_eds_volume");
  return v11;
}

uint64_t ramrod_is_data_volume_split_required(uint64_t a1, uint64_t a2)
{
  if (qword_1C6A20 != -1)
  {
    sub_D6710();
  }

  return byte_1C6A1C;
}

void sub_27210(id a1)
{
  v1 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/filesystems");
  if (v1)
  {
    v2 = v1;
    CFProperty = IORegistryEntryCreateCFProperty(v1, @"e-apfs", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      CFRelease(CFProperty);
      IOObjectRelease(v2);
      ramrod_log_msg("%s: YES, enhanced apfs is supported\n", "ramrod_is_data_volume_split_required_block_invoke");
      byte_1C6A1C = 1;
      return;
    }

    IOObjectRelease(v2);
  }

  v5 = 0;
  if (sysctlbyname("kern.bootargs", 0, &v5, 0, 0))
  {
    ramrod_log_msg("%s: failed to get kern.bootargs length\n", "ramrod_is_data_volume_split_required_block_invoke");
  }

  else
  {
    v4 = calloc(1uLL, v5 + 1);
    if (sysctlbyname("kern.bootargs", v4, &v5, 0, 0))
    {
      ramrod_log_msg("%s: failed to get kern.bootargs\n");
    }

    else if (strstr(v4, "-apfs_restorevf_enabled"))
    {
      ramrod_log_msg("%s: YES, -apfs_restorevf_enabled in boot-args\n", "ramrod_is_data_volume_split_required_block_invoke");
      byte_1C6A1C = 1;
    }

    else
    {
      ramrod_log_msg("%s: NO\n");
    }

    free(v4);
  }
}

uint64_t _ramrod_device_has_sandcat(uint64_t a1, uint64_t a2)
{
  if (qword_1C6A30 != -1)
  {
    sub_D6724();
  }

  return byte_1C6A28;
}

void sub_273C8(id a1)
{
  v1 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/arm-io/sep/iop-sep-nub/Sandcat");
  if (v1)
  {
    byte_1C6A28 = 1;

    IOObjectRelease(v1);
  }
}

uint64_t ramrod_is_device_needs_crypto_migration(const char *a1, char *a2)
{
  bzero(v7, 0x400uLL);
  if (a1 && *a1)
  {
    mount_path = ramrod_get_mount_path(a1, v7, 0x400uLL);
    if (!mount_path)
    {
      goto LABEL_9;
    }

    if (!a2)
    {
      ramrod_log_msg("%s: mount path is not valid\n");
      return 1;
    }

    if (ramrod_mount_filesystem_no_fsck_opt_err(a1, a2, 0, 0))
    {
      ramrod_log_msg("%s: Failed to mount %s for checking crypto migration: %d\n");
    }

    else
    {
LABEL_9:
      v6 = APFSVolumeNeedsCryptoMigration();
      if (v6)
      {
        ramrod_log_msg("%s: Calling APFSVolumeNeedsCryptoMigration on %s failed with error %d\n", "ramrod_is_device_needs_crypto_migration", a1, v6);
      }

      ramrod_log_msg("%s: crypto migration for device %s is %s\n", "ramrod_is_device_needs_crypto_migration", a1, "needed");
      if (a2 && mount_path && ramrod_force_unmount_filesystem(a2, 0))
      {
        ramrod_log_msg("%s: Failed to unmount %s after deleting snapshots\n");
      }
    }
  }

  else
  {
    ramrod_log_msg("%s: invalid device name\n");
  }

  return 1;
}

uint64_t ramrod_connect_to_ioservice(const char *a1, io_service_t *a2, io_connect_t *a3)
{
  v5 = IOServiceMatching(a1);
  if (v5)
  {
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v5);
    if (MatchingService)
    {
      v7 = MatchingService;
      connect = 0;
      if (!IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
      {
        *a2 = v7;
        *a3 = connect;
        return 1;
      }

      ramrod_log_msg("IOServiceOpen failed for class '%s'\n");
    }

    else
    {
      ramrod_log_msg("IOServiceGetMatchingService failed\n");
    }
  }

  else
  {
    ramrod_log_msg("IOServiceMatching failed for %s\n");
  }

  return 0;
}

uint64_t ramrod_generate_apslot_copy_nonce(_DWORD *a1, CFDataRef *a2)
{
  v14 = 4;
  *connection = 0;
  v13 = 32;
  *bytes = 0u;
  v17 = 0u;
  if (!ramrod_connect_to_ioservice("AppleMobileApNonce", &connection[1], connection))
  {
    ramrod_log_msg("Failed to connect to AppleMobileApNonce to generate AP nonce slot.\n");
    goto LABEL_5;
  }

  v4 = connection[0];
  v5 = IOConnectCallMethod(connection[0], 0xC8u, 0, 0, 0, 0, 0, 0, bytes, &v13);
  if (v5)
  {
    mach_error_string(v5);
    ramrod_log_msg("IOConnectCallMethod(%s,%u) failed: %s\n");
LABEL_5:
    outputStruct = 0;
    goto LABEL_6;
  }

  outputStruct = calloc(1uLL, 4uLL);
  v11 = IOConnectCallMethod(v4, 0xCBu, 0, 0, 0, 0, 0, 0, outputStruct, &v14);
  if (v11)
  {
    v12 = mach_error_string(v11);
    ramrod_log_msg("IOConnectCallMethod(%s,%u) failed: %s\n", "AppleMobileApNonce", 203, v12);
LABEL_6:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    if (!a1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = *outputStruct;
  v8 = CFDataCreate(kCFAllocatorDefault, bytes, 32);
  v9 = 1;
  if (a1)
  {
LABEL_7:
    *a1 = v7;
  }

LABEL_8:
  if (a2)
  {
    *a2 = v8;
  }

  else if (v8)
  {
    CFRelease(v8);
  }

  if (outputStruct)
  {
    free(outputStruct);
  }

  if (connection[1])
  {
    IOObjectRelease(connection[1]);
  }

  if (connection[0])
  {
    IOObjectRelease(connection[0]);
  }

  return v9;
}

uint64_t ramrod_generate_sepslot_copy_nonce(_DWORD *a1, CFDataRef *a2)
{
  *bytes = 0;
  v16 = 0;
  v17 = 0;
  length = 20;
  *connection = 0;
  output = 0;
  outputCnt = 1;
  if (ramrod_connect_to_ioservice("AppleSEPManager", &connection[1], connection))
  {
    v4 = connection[0];
    v5 = IOConnectCallMethod(connection[0], 0x53u, 0, 0, 0, 0, &output, &outputCnt, bytes, &length);
    if (v5)
    {
      v6 = mach_error_string(v5);
      ramrod_log_msg("IOConnectCallMethod(%s,%u) failed: %s\n", "AppleSEPManager", 83, v6);
      v7 = 0;
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v8 = output;
      v9 = CFDataCreate(kCFAllocatorDefault, bytes, length);
      v7 = 1;
    }

    if (connection[1])
    {
      IOObjectRelease(connection[1]);
    }

    if (v4)
    {
      IOObjectRelease(v4);
    }

    if (a1)
    {
      *a1 = v8;
    }

    if (a2)
    {
      *a2 = v9;
    }

    else if (v9)
    {
      CFRelease(v9);
    }
  }

  else
  {
    ramrod_log_msg("Failed to connect to AppleSEPManager to generate sep nonce.\n");
    return 0;
  }

  return v7;
}

BOOL ramrod_should_disable_sep_load()
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  *__s1 = 0u;
  v3 = 0u;
  v1 = 256;
  if (!sysctlbyname("kern.bootargs", __s1, &v1, 0, 0))
  {
    return strstr(__s1, "ramrod_disable_sep_load=1") != 0;
  }

  perror("sysctlbyname(kern.bootargs) -> 0");
  return 0;
}

BOOL ramrod_should_use_sep()
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  *__s1 = 0u;
  v3 = 0u;
  v1 = 256;
  if (sysctlbyname("kern.bootargs", __s1, &v1, 0, 0))
  {
    perror("sysctlbyname(kern.bootargs) -> 0");
    return 0;
  }

  else
  {
    return !strstr(__s1, "ramrod_disable_sep_load=1") || strstr(__s1, "ramrod_reload_sep_image=1") != 0;
  }
}

uint64_t ramrod_stash_info_to_file(uint64_t a1, uint64_t a2, uint64_t a3, NSMutableDictionary *a4, int a5)
{
  ramrod_log_msg_cf(@"%s: Stashing info to mount:%s dir:%s file:%s\n", "ramrod_stash_info_to_file", a1, a2, a3);
  if (!a1 || !a2 || !a3 || !a4)
  {
    ramrod_log_msg_cf(@"%s: missing parameters\n", "ramrod_stash_info_to_file", v25, v26);
    return 0;
  }

  ramrod_log_msg_cf(@"%s: Dictionary is %@\n", "ramrod_stash_info_to_file", a4);
  v10 = [[NSString stringWithCString:?], "stringByAppendingPathComponent:", [NSString stringWithCString:a2]];
  if (!v10)
  {
    ramrod_log_msg("%s: Failed to allocate path string to save persisted state\n");
    return 0;
  }

  v11 = v10;
  v12 = +[NSFileManager defaultManager];
  v31 = 0;
  if ([(NSFileManager *)v12 fileExistsAtPath:v11 isDirectory:&v31])
  {
    if ((v31 & 1) == 0)
    {
      ramrod_log_msg_cf(@"%s: Directory(%@) doesn't exist but a file exists with the same name at that location. Cannot proceed.\n", "ramrod_stash_info_to_file", v11, v26);
      return 0;
    }
  }

  else
  {
    ramrod_log_msg_cf(@"%s: Creating directory(%@) to save current state\n", "ramrod_stash_info_to_file", v11);
    v30 = 0;
    if (![(NSFileManager *)v12 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v30])
    {
      ramrod_log_msg_cf(@"%s: Failed to create directory. Error: %@\n", "ramrod_stash_info_to_file", v30, v26);
      return 0;
    }
  }

  v13 = [(NSString *)v11 stringByAppendingPathComponent:[NSString stringWithCString:a3]];
  if (v13)
  {
    v14 = v13;
    if (a5)
    {
      ramrod_log_msg("%s: Attempting to read the current file so we can modify it\n", "ramrod_stash_info_to_file");
      v15 = [NSMutableDictionary dictionaryWithContentsOfFile:v14];
      if (v15)
      {
        v16 = v15;
        [(NSMutableDictionary *)v15 addEntriesFromDictionary:a4];
        a4 = v16;
      }

      else
      {
        ramrod_log_msg("%s: No existing file\n", "ramrod_stash_info_to_file");
      }
    }

    ramrod_log_msg_cf(@"%s: Saving data to %@\n", "ramrod_stash_info_to_file", v14);
    if (([(NSMutableDictionary *)a4 writeToFile:v14 atomically:1]& 1) != 0)
    {
      ramrod_log_msg("%s: Updating file permissions\n", "ramrod_stash_info_to_file");
      v17 = [(NSString *)v14 UTF8String];
      if (v17)
      {
        v18 = v17;
        if (chmod(v17, 0x1F8u))
        {
          v19 = *__error();
          v20 = __error();
          v28 = strerror(*v20);
          ramrod_log_msg_cf(@"%s: Failed to chmod bootedOsStateFile at %@ errno=%d: (%s)..Deleting the file", "fixup_permissions_for_bootedos_state_file", v14, v19, v28);
        }

        else
        {
          v22 = getpwnam("mobile");
          if (v22)
          {
            if (!chown(v18, v22->pw_uid, v22->pw_gid))
            {
              ramrod_log_msg_cf(@"%s: Successfully fixed up permissions for %@", "fixup_permissions_for_bootedos_state_file", v14);
              return 1;
            }

            v23 = *__error();
            v24 = __error();
            v29 = strerror(*v24);
            ramrod_log_msg_cf(@"%s: Failed to chown bootedOSStateFile at %@ errno=%d: (%s)..Deleting the file", "fixup_permissions_for_bootedos_state_file", v14, v23, v29);
          }

          else
          {
            ramrod_log_msg_cf(@"%s: Failed to get uid/gid for mobile user to chown the bootedOSState file..Deleting the file at %@", "fixup_permissions_for_bootedos_state_file", v14, v26, v27);
          }
        }
      }

      else
      {
        ramrod_log_msg("%s: Failed to get c string representation of the bootedOSStateFile path to fixup permissions..Deleting the file", "fixup_permissions_for_bootedos_state_file");
      }

      ramrod_log_msg("%s: Failed to set permissions on stashed file..Deleting it\n", "ramrod_stash_info_to_file");
      v30 = 0;
      [(NSFileManager *)v12 removeItemAtPath:v14 error:&v30];
      if (v30)
      {
        ramrod_log_msg_cf(@"%s: Failed to delete persisted file at %@. Error: %@", "ramrod_stash_info_to_file", v14, v30);
      }
    }

    else
    {
      ramrod_log_msg("%s: Failed to write env data to file\n");
    }
  }

  else
  {
    ramrod_log_msg("%s: Failed to allocate string for the stashed file path\n");
  }

  return 0;
}

void ramrod_clear_apt_carvout()
{
  ramrod_log_msg("Entering %s\n", "ramrod_clear_apt_carvout");
  v0 = IOServiceNameMatching("AppleProcessorTraceNub");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
  if (MatchingService)
  {
    v2 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"DeviceCapabilities", kCFAllocatorDefault, 0);
    if (CFProperty && (v4 = CFProperty, v5 = CFGetTypeID(CFProperty), v5 == CFDictionaryGetTypeID()))
    {
      Value = CFDictionaryGetValue(v4, @"FeatureFlags");
      if (Value && (v7 = Value, v8 = CFGetTypeID(Value), v8 == CFNumberGetTypeID()))
      {
        valuePtr = 0;
        if (CFNumberGetValue(v7, kCFNumberIntType, &valuePtr))
        {
          if ((valuePtr & 4) != 0)
          {
            ramrod_delete_NVRAM_variable(@"apt-carveout-size-mb", 0);
          }
        }

        else
        {
          ramrod_log_msg("Couldn't read a kCFNumberIntType out of the feature flags");
        }
      }

      else
      {
        ramrod_log_msg("Feature flags were NULL. No need to clear apt carvout");
      }

      CFRelease(v4);
    }

    else
    {
      ramrod_log_msg("Device had no DeviceCapabilities dictionary?");
    }

    IOObjectRelease(v2);
  }

  else
  {

    ramrod_log_msg("Device had no AppleProcessorTraceNub entry");
  }
}

uint64_t sub_28164(uint64_t a1, posix_spawn_file_actions_t *a2)
{
  if (*(a1 + 32) == 1)
  {
    posix_spawn_file_actions_adddup2(a2, 1, 2);
  }

  return 0;
}

uint64_t sub_2819C(uint64_t a1, int __fd)
{
  v2 = *(a1 + 40);
  if (v2 >= 1)
  {
    v4 = *(a1 + 32);
    while (1)
    {
      v5 = write(__fd, v4, v2);
      if (v5 == -1)
      {
        break;
      }

      v4 += v5;
      v6 = v2 <= v5;
      v2 -= v5;
      if (v6)
      {
        return 0;
      }
    }

    v7 = __error();
    v8 = strerror(*v7);
    ramrod_log_msg("write failed for subprocess: %s\n", v8);
  }

  return 0;
}

void sub_28224(uint64_t a1, void *__src, size_t a3)
{
  v3 = a3;
  v5 = *(*(*(a1 + 32) + 8) + 24);
  if (v5)
  {
    if (v5 >= a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = *(*(*(a1 + 32) + 8) + 24);
    }

    memcpy(*(*(*(a1 + 40) + 8) + 24), __src, v7);
    *(*(*(a1 + 40) + 8) + 24) += v7;
    *(*(*(a1 + 32) + 8) + 24) -= v7;
  }

  ramrod_log_msg("%.*s", v3, __src);
}

uint64_t sub_282C4(int a1, unsigned int a2)
{
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = a2;
  if (ffsctl(a1, 0x80184A24uLL, v5, 0))
  {
    v2 = __error();
    v3 = *v2;
    ramrod_log_msg("%s: Failed waiting for snapshot to delete, errno:%d\n", "ramrod_wait_for_snapshot_deletion", *v2);
  }

  else
  {
    ramrod_log_msg("%s: Successfully waited for snapshot deletion\n", "ramrod_wait_for_snapshot_deletion");
    return 0;
  }

  return v3;
}

void sub_28350(char *a1)
{
  for (i = 0; i != 3; ++i)
  {
    v3 = sync_volume_np(a1, 3);
    if (v3)
    {
      ramrod_log_msg("Got error(%d) from sync_volume_np data volume call attempt %d", v3, i);
    }
  }

  ramrod_log_msg("Done calling sync_volume_np on data volume\n");
}

void sub_283F8(id a1)
{
  ramrod_log_msg("entering %s\n", "ramrod_set_updating_text_block_invoke_2");
  v1 = 0;
  if ((ramrod_display_set_aux_image_path(@"/mnt5/updating.png", &v1) & 1) == 0)
  {
    ramrod_log_msg("%s: failed to set aux image to updating image\n", "ramrod_set_updating_text_block_invoke_2");
  }
}

void sub_28488(id a1)
{
  v2 = 0;
  ramrod_log_msg("entering %s\n", "ramrod_clear_updating_text_block_invoke_2");
  pthread_mutex_lock(&stru_1C4780);
  byte_1C6B3C = 1;
  pthread_mutex_unlock(&stru_1C4780);
  sleep(3u);
  ramrod_display_set_aux_image_path(0, &v2);
  progress = ramrod_display_get_progress();
  if (progress != 0.0)
  {
    ramrod_display_set_granular_progress_forced(1, progress);
  }

  pthread_mutex_lock(&stru_1C4780);
  byte_1C6B3C = 0;
  pthread_mutex_unlock(&stru_1C4780);
}

void sub_28524(CFErrorRef *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a5@<X4>, uint64_t x5_0@<X5>, uint64_t x6_0@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{

  ramrod_create_error_cf(a1, a2, 6, 0, a5, x5_0, x6_0, a6, a7);
}

void sub_28654(uint64_t a1)
{
  step_desc = checkpoint_closure_context_get_step_desc([*(a1 + 32) checkpoint_closure_context]);
  ramrod_log_msg("[AsyncCP][Start] Checkpoint %s start running.\n", *(step_desc + 8));
  v3 = [*(a1 + 32) workQueue];
  dispatch_queue_set_specific(v3, kCheckpointAsyncStepContextKey[0], [*(a1 + 32) checkpoint_closure_context], 0);
  v4 = 0;
  v5 = 1;
  do
  {
    while (1)
    {
      v13 = 0;
      v12 = 0;
      if (v4)
      {
        v5 = checkpoint_closure_context_handle_simulator_actions([*(a1 + 32) checkpoint_closure_context], 1, &v13, &v12) != 0;
      }

      v6 = *(a1 + 32);
      objc_sync_enter(v6);
      v5 &= [*(a1 + 32) isCanceled] ^ 1;
      objc_sync_exit(v6);
      if (v5)
      {
        checkpoint_closure_context_set_start_time([*(a1 + 32) checkpoint_closure_context]);
        (*(*(a1 + 40) + 16))();
        checkpoint_closure_context_set_end_time([*(a1 + 32) checkpoint_closure_context]);
        v13 = [*(a1 + 32) result];
        v12 = [*(a1 + 32) error];
      }

      if (checkpoint_closure_context_handle_simulator_actions([*(a1 + 32) checkpoint_closure_context], 0, &v13, &v12))
      {
        v7 = checkpoint_closure_context_handle_simulator_match_name([*(a1 + 32) checkpoint_closure_context]) != 0;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(a1 + 32);
      objc_sync_enter(v8);
      if (([*(a1 + 32) isCanceled] & 1) == 0)
      {
        [*(a1 + 32) setResult:v13];
        [*(a1 + 32) setError:v12];
      }

      if (!v13)
      {
        goto LABEL_14;
      }

      v9 = [*(a1 + 32) isCanceled];
      if (((v9 | v7) & 1) == 0)
      {
        break;
      }

      LOBYTE(v7) = v9 ^ 1;
LABEL_14:
      objc_sync_exit(v8);
      v4 = 1;
      if ((v7 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    should_retry = checkpoint_closure_context_should_retry([*(a1 + 32) checkpoint_closure_context]);
    objc_sync_exit(v8);
    v4 = 1;
  }

  while (should_retry);
LABEL_17:
  v11 = [*(a1 + 32) workQueue];
  dispatch_queue_set_specific(v11, kCheckpointAsyncStepContextKey[0], 0, 0);
  ramrod_log_msg("[AsyncCP][End] Checkpoint %s finished with result: %d.\n", *(step_desc + 8), [*(a1 + 32) result]);
  if ([*(a1 + 32) result])
  {
    if ([*(a1 + 32) error])
    {
      checkpoint_closure_context_set_encountered_async_error([*(a1 + 32) checkpoint_closure_context], objc_msgSend(*(a1 + 32), "result"), objc_msgSend(*(a1 + 32), "error"));
    }
  }
}

void sub_288CC(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 3);
  v4 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v4, 7);
}

void sub_2891C(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 7);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 3);
}

uint64_t ramrod_send_data_array(uint64_t a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  v5 = calloc(Count, 0x10uLL);
  v6 = v5;
  if (Count >= 1)
  {
    v7 = 0;
    p_iov_len = &v5->iov_len;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
      *(p_iov_len - 1) = CFDataGetBytePtr(ValueAtIndex);
      *p_iov_len = CFDataGetLength(ValueAtIndex);
      p_iov_len += 2;
      ++v7;
    }

    while (Count != v7);
  }

  v10 = sub_28E48(a1, v6, Count);
  free(v6);
  return v10;
}

uint64_t sub_28E48(uint64_t a1, iovec *a2, int a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  p_iov_len = &a2->iov_len;
  v9 = a3;
  while (1)
  {
    do
    {
      v7 += a2[v6++].iov_len;
    }

    while (v6 != v9);
    if (!v7)
    {
      return 0;
    }

    v10 = sub_299F0(a1, a2, a3);
    v11 = p_iov_len;
    v7 = v9;
    if (v10 == -1)
    {
      break;
    }

    do
    {
      v12 = *v11;
      if (*v11 >= v10)
      {
        v13 = v10;
      }

      else
      {
        v13 = *v11;
      }

      *(v11 - 1) += v13;
      *v11 = v12 - v13;
      v10 -= v13;
      v11 += 2;
      --v7;
    }

    while (v7);
    v6 = 0;
  }

  return *__error();
}

uint64_t ramrod_send_bytes(uint64_t a1, void *a2, size_t a3)
{
  v4.iov_base = a2;
  v4.iov_len = a3;
  return sub_28E48(a1, &v4, 1);
}

uint64_t sub_28F54(uint64_t a1, char *a2, size_t a3, unsigned __int8 a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  v8 = a2;
  while (1)
  {
    v9 = ((v8 == a2) & a4) != 0 ? 64 : 0x100000040;
    v10 = ramrod_socket_recv(a1, v8, v5, v9);
    if (!v10)
    {
      break;
    }

    if (v10 == -1)
    {
      return *__error();
    }

    v8 += v10;
    v5 -= v10;
    if (!v5)
    {
      return 0;
    }
  }

  if (v8 == a2)
  {
    return 96;
  }

  else
  {
    return 94;
  }
}

uint64_t ramrod_send_message(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  cf = 0;
  v3 = ramrod_message_plist_create(a2, &v17, &cf);
  if (v3)
  {
    v11 = v3;
    *bytes = bswap32(v17);
    v12 = CFDataCreate(0, bytes, 4);
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    CFArrayAppendValue(Mutable, v12);
    ramrod_message_plist_append(v11, Mutable);
    v14 = ramrod_send_data_array(a1, Mutable);
    CFRelease(Mutable);
    CFRelease(v12);
    CFRelease(v11);
  }

  else
  {
    v31 = xmmword_10ACCC;
    v32 = unk_10ACDC;
    v33 = xmmword_10ACEC;
    v34 = unk_10ACFC;
    v27 = xmmword_10AC8C;
    v28 = unk_10AC9C;
    v29 = xmmword_10ACAC;
    v30 = unk_10ACBC;
    v23 = xmmword_10AC4C;
    v24 = unk_10AC5C;
    v25 = xmmword_10AC6C;
    v26 = unk_10AC7C;
    *bytes = *"unknown error";
    v20 = unk_10AC1C;
    v21 = xmmword_10AC2C;
    v22 = unk_10AC3C;
    if (cf)
    {
      v15 = CFCopyDescription(cf);
      CFStringGetCString(v15, bytes, 256, 0x8000100u);
      CFRelease(v15);
      CFRelease(cf);
    }

    ramrod_message_error("sock %3d: CFPropertyListCreateData: %s", v4, v5, v6, v7, v8, v9, v10, a1);
    return 0xFFFFFFFFLL;
  }

  return v14;
}

CFPropertyListRef ramrod_receive_message(uint64_t a1)
{
  memset(length, 0, sizeof(length));
  v2 = sub_28F54(a1, length, 4uLL, 1u);
  if (v2)
  {
    v10 = 0;
    v11 = 0;
    if (v2 != 96)
    {
      ramrod_message_error("sock %3d: unable to read message size: %d", v3, v4, v5, v6, v7, v8, v9, a1);
      v10 = 0;
      v11 = 0;
    }

    goto LABEL_13;
  }

  v12 = bswap32(length[0]);
  length[0] = v12;
  v11 = malloc(v12);
  if (sub_28F54(a1, v11, v12, 0))
  {
    ramrod_message_error("sock %3d: unable to read message: %d", v13, v14, v15, v16, v17, v18, v19, a1);
LABEL_6:
    v10 = 0;
    goto LABEL_13;
  }

  v20 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v11, length[0], kCFAllocatorNull);
  if (!v20)
  {
    ramrod_message_error("sock %3d: unable to convert message to CFData", v21, v22, v23, v24, v25, v26, v27, a1);
    goto LABEL_6;
  }

  v28 = v20;
  v10 = CFPropertyListCreateWithData(kCFAllocatorDefault, v20, 0, 0, &length[1]);
  if (!v10)
  {
    ramrod_message_error("sock %3d: unable to convert message to property list", v29, v30, v31, v32, v33, v34, v35, a1);
  }

  if (*&length[1])
  {
    v36 = CFErrorCopyDescription(*&length[1]);
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    *buffer = 0u;
    v47 = 0u;
    CFStringGetCString(v36, buffer, 256, 0x8000100u);
    ramrod_message_error("sock %3d: CFPropertyListCreateFromXMLData: %s", v37, v38, v39, v40, v41, v42, v43, a1);
    CFRelease(v36);
    CFRelease(*&length[1]);
  }

  CFRelease(v28);
LABEL_13:
  free(v11);
  return v10;
}

uint64_t ramrod_socket_set_idle_timeouts_active(int a1, uint64_t a2)
{
  setsockopt(a1, 6, 16, (a2 + 4), 4u);
  setsockopt(a1, 6, 258, (a2 + 12), 4u);
  setsockopt(a1, 6, 257, (a2 + 8), 4u);
  setsockopt(a1, 6, 533, (a2 + 16), 4u);
  setsockopt(a1, 6, 32, a2, 4u);
  return 0;
}

uint64_t ramrod_socket_set_recv_timeout(uint64_t a1, int a2)
{
  v19[0] = a2;
  v19[1] = 0;
  if (setsockopt(a1, 0xFFFF, 4102, v19, 0x10u))
  {
    v10 = __error();
    strerror(*v10);
    ramrod_message_error("sock %3d: could not set SO_RCVTIMEO=%d: %s", v11, v12, v13, v14, v15, v16, v17, a1);
    return 0xFFFFFFFFLL;
  }

  else
  {
    ramrod_message_error("sock %3d: set SO_RCVTIMEO=%d", v3, v4, v5, v6, v7, v8, v9, a1);
    return 0;
  }
}

CFPropertyListRef ramrod_receive_async_response_message(int a1)
{
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0;
  v15 = 0u;
  v13 = 128;
  v1 = accept(a1, &v14, &v13);
  v2 = v1;
  if ((v1 & 0x80000000) != 0)
  {
    v4 = __error();
    ramrod_message_error("failed to accept incoming async response socket with errno: %d", v5, v6, v7, v8, v9, v10, v11, *v4);
    v3 = 0;
    result = 0;
    if (v2 == -1)
    {
      return result;
    }
  }

  else
  {
    ramrod_socket_set_nosigpipe(v1, 1);
    v3 = ramrod_receive_message(v2);
  }

  close(v2);
  return v3;
}

uint64_t ramrod_socket_set_nosigpipe(uint64_t a1, int a2)
{
  v12 = a2;
  result = setsockopt(a1, 0xFFFF, 4130, &v12, 4u);
  if (result)
  {
    v4 = __error();
    strerror(*v4);
    ramrod_message_error("sock %3d: could not set SO_NOSIGPIPE=%d: %s", v5, v6, v7, v8, v9, v10, v11, a1);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t ramrod_socket_set_keepalive(uint64_t a1, int a2)
{
  v19 = a2;
  if (setsockopt(a1, 0xFFFF, 8, &v19, 4u))
  {
    v10 = __error();
    strerror(*v10);
    ramrod_message_error("sock %3d: could not set SO_KEEPALIVE=%d: %s", v11, v12, v13, v14, v15, v16, v17, a1);
    return 0xFFFFFFFFLL;
  }

  else
  {
    ramrod_message_error("sock %3d: set SO_KEEPALIVE=%d", v3, v4, v5, v6, v7, v8, v9, a1);
    return 0;
  }
}

uint64_t ramrod_socket_set_nopush(int a1, int a2)
{
  v3 = a2;
  setsockopt(a1, 6, 4, &v3, 4u);
  return 0;
}

uint64_t ramrod_socket_set_buffer_limits(uint64_t a1, int a2, int a3)
{
  v23 = a2;
  v22 = a3;
  if (a2 >= 1 && setsockopt(a1, 0xFFFF, 4097, &v23, 4u))
  {
    v5 = __error();
    strerror(*v5);
    ramrod_message_error("sock %3d: could not set SO_SNDBUF=%d: %s", v6, v7, v8, v9, v10, v11, v12, a1);
    return 0xFFFFFFFFLL;
  }

  if (a3 >= 1)
  {
    result = setsockopt(a1, 0xFFFF, 4098, &v22, 4u);
    if (!result)
    {
      return result;
    }

    v14 = __error();
    strerror(*v14);
    ramrod_message_error("sock %3d: could not set SO_RCVBUF=%d: %s", v15, v16, v17, v18, v19, v20, v21, a1);
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t ramrod_getsockopt_int(int a1, int a2, int a3, unsigned int a4)
{
  v6 = 4;
  v7 = 0;
  if (getsockopt(a1, a2, a3, &v7, &v6))
  {
    return a4;
  }

  else
  {
    return v7;
  }
}

void ramrod_socket_log_statistics(uint64_t a1)
{
  LODWORD(v13) = 0;
  HIDWORD(v20) = 4;
  getsockopt(a1, 0xFFFF, 4097, &v13, &v20 + 1);
  LODWORD(v13) = 0;
  HIDWORD(v20) = 4;
  getsockopt(a1, 0xFFFF, 4098, &v13, &v20 + 1);
  v18 = 0u;
  v19 = 0u;
  v16 = 0uLL;
  v17 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v13 = 0uLL;
  v12 = 112;
  if (getsockopt(a1, 6, 262, &v13, &v12))
  {
    v2 = __error();
    strerror(*v2);
    ramrod_message_error("sock %3d: could not query TCP_CONNECTION_INFO: %s", v3, v4, v5, v6, v7, v8, v9, a1);
  }

  else
  {
    v20 = 4;
    getsockopt(a1, 0xFFFF, 4132, &v20 + 4, &v20);
    v20 = 4;
    getsockopt(a1, 0xFFFF, 4128, &v20 + 4, &v20);
    ramrod_message_error("sock %3d: connection summary\n    state: %s (%hhu) options: %#x flags: %#x\n    bytes in/out: %llu/%llu\n    pkts in/out: %llu/%llu\n    bytes ooo in: %llu\n    bytes rxmit out: %llu\n    buffer sizes in/out: %d/%d\n    pending bytes in/out: %d/%d\n    window in/out: %u/%u\n    mss: %u\n    rtt: %u ms\n    rttvar: %u ms", HIDWORD(v14), v14, DWORD1(v15), HIDWORD(v15), v16, v10, v11, a1);
  }
}

ssize_t ramrod_socket_send(uint64_t a1, void *a2, size_t a3)
{
  v4.iov_base = a2;
  v4.iov_len = a3;
  return sub_299F0(a1, &v4, 1);
}

ssize_t sub_299F0(uint64_t a1, iovec *a2, int a3)
{
  v6 = 0;
  v7 = a3;
  p_iov_len = &a2->iov_len;
  while (1)
  {
    if (v6)
    {
      usleep(0x186A0u);
    }

    memset(&v23.msg_iovlen + 1, 0, 20);
    *&v23.msg_name = 0u;
    v23.msg_iov = a2;
    v23.msg_iovlen = a3;
    result = sendmsg(a1, &v23, 0);
    if (result != -1)
    {
      break;
    }

    v10 = __error();
    if (a3 >= 1)
    {
      v11 = 0;
      v12 = p_iov_len;
      v13 = v7;
      do
      {
        v14 = *v12;
        v12 += 2;
        v11 += v14;
        --v13;
      }

      while (v13);
    }

    v15 = *v10;
    strerror(*v10);
    ramrod_message_error("sock %3d: send(%lu) failed: %s", v16, v17, v18, v19, v20, v21, v22, a1);
    *__error() = v15;
    if ((v15 == 4 || v15 == 55) && ++v6 != 51)
    {
      continue;
    }

    return -1;
  }

  return result;
}

ssize_t ramrod_socket_recv(uint64_t a1, void *a2, size_t a3, uint64_t a4)
{
  v6 = recv(a1, a2, a3, a4 & 0x7FFFFFFF);
  v14 = v6;
  if (v6)
  {
    if (v6 == -1)
    {
      v15 = *__error();
      strerror(v15);
      ramrod_message_error("sock %3d: recv(%lu) failed: %s", v16, v17, v18, v19, v20, v21, v22, a1);
      *__error() = v15;
    }
  }

  else if ((a4 & 0x100000000) != 0)
  {
    ramrod_message_error("sock %3d: recv(%lu) failed: connection closed", v7, v8, v9, v10, v11, v12, v13, a1);
  }

  return v14;
}

uint64_t ramrod_socket_shutdown(uint64_t a1, int a2)
{
  if (shutdown(a1, a2))
  {
    v10 = __error();
    strerror(*v10);
    ramrod_message_error("sock %3d: shutdown(%s) failed: %s", v11, v12, v13, v14, v15, v16, v17, a1);
    return 0xFFFFFFFFLL;
  }

  else
  {
    ramrod_message_error("sock %3d: shutdown(%s) complete", v3, v4, v5, v6, v7, v8, v9, a1);
    return 0;
  }
}

uint64_t ramrod_socket_send_eof_and_wait(uint64_t a1)
{
  if (ramrod_socket_shutdown(a1, 1))
  {
    return 0xFFFFFFFFLL;
  }

  return ramrod_socket_wait_for_eof();
}

uint64_t ramrod_socket_wait_for_eof()
{
  v0 = off_1AD4A0();
  bzero(v11, 0x1000uLL);
  do
  {
    v1 = recv(v0, v11, 0x1000uLL, 0);
  }

  while (v1 > 0);
  if (v1 != -1)
  {
    return 0;
  }

  v3 = __error();
  strerror(*v3);
  ramrod_message_error("sock %3d: received error waiting for EOF: %s", v4, v5, v6, v7, v8, v9, v10, v0);
  return 0xFFFFFFFFLL;
}

uint64_t ramrod_socket_sockaddr_to_string(char *a1, size_t a2, const sockaddr *a3, uint64_t a4)
{
  sa_family = a3->sa_family;
  if (sa_family != 30 && sa_family != 1 && !a3->sa_family)
  {
    goto LABEL_16;
  }

  bzero(v14, 0x401uLL);
  *v12 = 0u;
  v13 = 0u;
  if (sa_family == 30)
  {
    v9 = 28;
  }

  else
  {
    v9 = 0;
  }

  if (sa_family == 2)
  {
    v9 = 16;
  }

  if (a3->sa_len)
  {
    sa_len = a3->sa_len;
  }

  else
  {
    sa_len = v9;
  }

  if (!getnameinfo(a3, sa_len, v14, 0x401u, v12, 0x20u, 10))
  {
    if (!v12[0] || *v12 == 48)
    {
      v12[0] = 0;
    }

    LODWORD(result) = snprintf(a1, a2, "%s%s%s%s%s");
    return result;
  }

  if (a3->sa_family == 1 && a3->sa_len != 2)
  {
    LODWORD(result) = snprintf(a1, a2, "%s%.*s%s");
  }

  else
  {
LABEL_16:
    if (!a4)
    {
      return -1;
    }

    LODWORD(result) = snprintf(a1, a2, "%s");
  }

  return result;
}

BOOL ramrod_check_NVRAM_access()
{
  v0 = wait_for_io_service_matching_resource_with_timeout("IONVRAM", 0);
  v1 = v0;
  if (v0)
  {
    IOObjectRelease(v0);
  }

  return v1 != 0;
}

uint64_t _ramrod_set_file_var(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  sub_2A03C(@"%@ = %@\n", v5, v6, v7, v8, v9, v10, v11, a1);
  if (a1 && a2)
  {
    v19 = qword_1C6B58;
    if (!qword_1C6B58)
    {
      v19 = [NSMutableDictionary dictionaryWithCapacity:1];
      qword_1C6B58 = v19;
    }

    [(NSMutableDictionary *)v19 setObject:a2 forKey:a1];
    if (qword_1C6B60)
    {
      [qword_1C6B60 removeObject:a1];
    }
  }

  else
  {
    sub_2A03C(@"skipping\n", v12, v13, v14, v15, v16, v17, v18, v21);
  }

  objc_autoreleasePoolPop(v4);
  return 1;
}

void sub_2A03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = objc_autoreleasePoolPush();
  ramrod_log_msg("%s", [objc_msgSend([NSString alloc] initWithFormat:a1 arguments:&a9), "cStringUsingEncoding:", 4]);
  objc_autoreleasePoolPop(v10);
}

id _ramrod_copy_file_var(uint64_t a1)
{
  v1 = [qword_1C6B58 objectForKey:a1];

  return v1;
}

uint64_t _ramrod_delete_file_var(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_2A03C(@"%@ = <delete>\n", v3, v4, v5, v6, v7, v8, v9, a1);
  if (qword_1C6B58)
  {
    [qword_1C6B58 removeObjectForKey:a1];
  }

  v10 = qword_1C6B60;
  if (!qword_1C6B60)
  {
    v10 = [NSMutableArray arrayWithCapacity:1];
    qword_1C6B60 = v10;
  }

  if (([(NSMutableArray *)v10 containsObject:a1]& 1) == 0)
  {
    [qword_1C6B60 addObject:a1];
  }

  objc_autoreleasePoolPop(v2);
  return 1;
}

uint64_t ramrod_set_NVRAM_persistent_path(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    sub_2A03C(@"nvram will not be shadowed to the file system\n", a2, a3, a4, a5, a6, a7, a8, v27);
    ramrod_delete_NVRAM_variable(@"ramrod-nvram-sequence", 0);
    ramrod_delete_NVRAM_variable(@"ramrod-nvram-session", 0);
    ramrod_delete_NVRAM_variable(@"ramrod-nvram-shadow-path", 0);
    return 0;
  }

  v28 = 0;
  if (!ramrod_set_NVRAM_shadow(@"ramrod-nvram-shadow-path", a1, a1, &v28, 0, 0))
  {
    if (v28)
    {
      sub_2A03C(@"Error %@ setting nvram shadowing to path %@\n", v9, v10, v11, v12, v13, v14, v15, v28);
    }

    else
    {
      sub_2A03C(@"Uknown error setting nvram shadowing to path %@\n", v9, v10, v11, v12, v13, v14, v15, a1);
    }

    return 0;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = [NSString stringWithFormat:@"%ld", sub_2A304()];
  v25 = ramrod_set_NVRAM_shadow(@"ramrod-nvram-session", v17, v17, &v28, 0, 0);
  if (v25)
  {
    sub_2A03C(@"nvram will be shadowed at the path %@\n", v18, v19, v20, v21, v22, v23, v24, a1);
  }

  else if (v28)
  {
    sub_2A03C(@"Error %@ setting nvram session value to %@ while setting shadow path to %@\n", v18, v19, v20, v21, v22, v23, v24, v28);
  }

  else
  {
    sub_2A03C(@"Uknown error setting nvram session value while setting shadow path to %@\n", v18, v19, v20, v21, v22, v23, v24, a1);
  }

  objc_autoreleasePoolPop(v16);
  return v25;
}

uint64_t sub_2A304()
{
  result = qword_1C6B70;
  if (!qword_1C6B70)
  {
    *v11 = 0x1500000001;
    v9[0] = 0;
    v9[1] = 0;
    v10 = 16;
    if (sysctl(v11, 2u, v9, &v10, 0, 0))
    {
      sub_2A03C(@"Could not determine boot time\n", v1, v2, v3, v4, v5, v6, v7, v8);
      return qword_1C6B70;
    }

    else
    {
      result = v9[0];
      qword_1C6B70 = v9[0];
    }
  }

  return result;
}

uint64_t ramrod_delete_NVRAM_variable(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (qword_1C6B88 != -1)
  {
    sub_D6738();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = sub_2B434;
  block[3] = &unk_1AD8F8;
  block[4] = &v7;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(qword_1C6B80, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void ramrod_dump_NVRAM_file()
{
  v0 = ramrod_copy_NVRAM_variable_from_devicetree(@"ramrod-nvram-shadow-path");
  if (v0)
  {
    v1 = v0;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v2 = [[NSString alloc] initWithData:v1 encoding:4], v1, (v1 = v2) != 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
        {
          v17 = [NSDictionary dictionaryWithContentsOfFile:v1];
          sub_2A03C(@"NVRAM file: %@\n", v10, v11, v12, v13, v14, v15, v16, v17);
        }

        else
        {
          sub_2A03C(@"no NVRAM file: %@\n", v3, v4, v5, v6, v7, v8, v9, v1);
        }
      }
    }
  }
}

unint64_t ramrod_fullsync_on_NVRAM_file()
{
  v0 = objc_autoreleasePoolPush();
  v1 = ramrod_copy_NVRAM_variable_from_devicetree(@"ramrod-nvram-shadow-path");
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [[NSString alloc] initWithData:v2 encoding:4];
    }

    if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
    {
      v2 = fcntl([[NSFileHandle fileHandleForUpdatingAtPath:?]], 51) == 0;
    }

    else
    {
      v2 = 0;
    }
  }

  objc_autoreleasePoolPop(v0);
  return v2;
}

uint64_t ramrod_persist_NVRAM_to_filesystem()
{
  v0 = objc_autoreleasePoolPush();
  v1 = ramrod_copy_NVRAM_variable_from_devicetree(@"ramrod-nvram-session");
  if (!v1)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [[NSString alloc] initWithData:v1 encoding:4];

    v1 = v2;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_13:
    v4 = 0;
    goto LABEL_14;
  }

  v3 = strtol([v1 UTF8String], 0, 0);
  if (v3 != sub_2A304())
  {
    objc_autoreleasePoolPop(v0);
    v17 = 0;
    if (!v1)
    {
      return v17;
    }

    goto LABEL_18;
  }

  v4 = ramrod_copy_NVRAM_variable_from_devicetree(@"ramrod-nvram-shadow-path");
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = ramrod_copy_NVRAM_variable_from_devicetree(@"ramrod-nvram-sequence");
  if (!v5)
  {
    v16 = 1;
    goto LABEL_27;
  }

  v6 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [[NSString alloc] initWithData:v6 encoding:4];

    v6 = v7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v93 = objc_opt_class();
    sub_2A03C(@"%@ has an unsupported type: %@\n", v19, v20, v21, v22, v23, v24, v25, @"ramrod-nvram-sequence");
LABEL_25:
    v16 = 1;
    goto LABEL_26;
  }

  v8 = [v6 UTF8String];
  if (!v8)
  {
    sub_2A03C(@"epochCStrPtr == NULL\n", v9, v10, v11, v12, v13, v14, v15, v91);
    goto LABEL_25;
  }

  v16 = strtol(v8, 0, 0) + 1;
LABEL_26:

LABEL_27:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = [[NSString alloc] initWithData:v4 encoding:4];

    v4 = v26;
  }

  if ((byte_1C6B68 & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
      {
        sub_2A03C(@"Using file at: %@\n", v27, v28, v29, v30, v31, v32, v33, v4);
        v34 = [NSDictionary dictionaryWithContentsOfFile:v4];
        if (v34)
        {
          v42 = v34;
          v43 = [(NSDictionary *)v34 description];
          if ([(NSString *)v43 length]>= 0x801)
          {
            v43 = [NSString stringWithFormat:@"Truncated NVRAM: %@", [(NSString *)v43 substringToIndex:2048]];
          }

          sub_2A03C(@"Loaded persistent file: %@\n", v44, v45, v46, v47, v48, v49, v50, v43);
          sub_2A03C(@"Pending file-vars: %@\n", v51, v52, v53, v54, v55, v56, v57, qword_1C6B58);
          sub_2A03C(@"Pending var deletes: %@\n", v58, v59, v60, v61, v62, v63, v64, qword_1C6B60);
          v65 = [(NSDictionary *)v42 valueForKey:@"ramrod-file-only-vars"];
          if (v65)
          {
            v66 = v65;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v67 = [v66 mutableCopy];
              v68 = v67;
              if (qword_1C6B58)
              {
                [v67 addEntriesFromDictionary:?];
              }

              v28 = qword_1C6B60;
              if (qword_1C6B60)
              {
                [v68 removeObjectsForKeys:?];
              }

              qword_1C6B58 = v68;
            }
          }
        }

        else
        {
          sub_2A03C(@"Error loading persistent var file: %@\n", v35, v36, v37, v38, v39, v40, v41, v4);
        }

        byte_1C6B68 = 1;
        if (qword_1C6B60)
        {

          qword_1C6B60 = 0;
        }

        v91 = qword_1C6B58;
        v76 = @"Final vars: %@\n";
      }

      else
      {
        v76 = @"no NVRAM file\n";
      }

      sub_2A03C(v76, v27, v28, v29, v30, v31, v32, v33, v91);
      goto LABEL_49;
    }

    objc_opt_class();
    sub_2A03C(@"%@ has an unsupported type: %@\n", v69, v70, v71, v72, v73, v74, v75, @"ramrod-nvram-shadow-path");
LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

LABEL_49:
  v95 = 0;
  ramrod_set_NVRAM_variable_sync_no_shadow(@"ramrod-nvram-sequence", [NSString stringWithFormat:@"%ld", v16, v93], &v95, 0);
  v77 = v95;
  properties = 0;
  v78 = sub_2AEEC();
  v79 = IORegistryEntryCreateCFProperties(v78, &properties, 0, 0);
  if (v79)
  {
    v92 = v79;
    v87 = @"Error %x creating IORegistryEntry CFProperties\n";
LABEL_51:
    sub_2A03C(v87, v80, v81, v82, v83, v84, v85, v86, v92);
    goto LABEL_14;
  }

  v88 = properties;
  properties = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v89 = [NSMutableDictionary dictionaryWithDictionary:v88];
    [(NSMutableDictionary *)v89 setObject:v88 forKey:@"ramrod-nvram-shadow-vars"];
    if (qword_1C6B58)
    {
      [(NSMutableDictionary *)v89 addEntriesFromDictionary:?];
      [(NSMutableDictionary *)v89 setObject:qword_1C6B58 forKey:@"ramrod-file-only-vars"];
    }

    if (![(NSMutableDictionary *)v89 writeToFile:v4 atomically:1])
    {
      v87 = @"Failed to persist contents of nvram to the filesystem. File system may not be available\n";
      goto LABEL_51;
    }

    if ((byte_1C6B68 & 1) == 0)
    {
      sub_2A03C(@"first sync - no file\n", v80, v81, v82, v83, v84, v85, v86, v92);
      byte_1C6B68 = 1;
      if (qword_1C6B60)
      {

        qword_1C6B60 = 0;
      }
    }

    v90 = @"nvram successfully persisted to the filesystem\n";
  }

  else
  {
    v92 = @"ramrod-nvram-shadow-path";
    objc_opt_class();
    v90 = @"%@ has an unsupported type: %@\n";
  }

  sub_2A03C(v90, v80, v81, v82, v83, v84, v85, v86, v92);
  v17 = 1;
LABEL_15:
  objc_autoreleasePoolPop(v0);
  if (v4)
  {
  }

  if (v1)
  {
LABEL_18:
  }

  return v17;
}

BOOL ramrod_set_NVRAM_variable_sync_no_shadow(uint64_t a1, uint64_t a2, CFErrorRef *a3, int a4)
{
  if (sub_2B024(a3))
  {
    return 0;
  }

  v8 = 4;
  if (!a1 || !a2)
  {
LABEL_32:
    mach_error_string(v8);
    ramrod_create_error_cf(a3, kCFErrorDomainMach, v8, 0, @"%s: failed to set nvram '%@=%@': %#x (%s)", v19, v20, v21, "ramrod_set_NVRAM_variable_sync_no_shadow");
    return 0;
  }

  v9 = CFStringCreateWithFormat(0, 0, @"%@", a1);
  v10 = CFStringCreateWithFormat(0, 0, @"%@", a2);
  v25[0] = CFDataGetTypeID();
  v25[1] = CFStringGetTypeID();
  v25[2] = CFNumberGetTypeID();
  v25[3] = CFBooleanGetTypeID();
  v11 = sub_2AEEC();
  v12 = 0;
  v8 = -536870206;
  while (1)
  {
    v13 = v25[v12];
    v14 = CFGetTypeID(v10);
    if (v14 == v13)
    {
      v15 = v10;
LABEL_7:
      Copy = CFRetain(v15);
LABEL_8:
      v17 = Copy;
      goto LABEL_9;
    }

    if (v14 == CFStringGetTypeID())
    {
      break;
    }

LABEL_28:
    if (++v12 == 4)
    {
      goto LABEL_31;
    }
  }

  if (CFStringGetTypeID() == v13)
  {
    Copy = CFStringCreateCopy(0, v10);
    goto LABEL_8;
  }

  if (CFDataGetTypeID() == v13)
  {
    v15 = [(__CFString *)v10 dataUsingEncoding:4];
    if (v15)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

  if (CFBooleanGetTypeID() != v13)
  {
    if (CFNumberGetTypeID() != v13)
    {
      goto LABEL_28;
    }

    v28 = 0u;
    v29 = 0u;
    *buffer = 0u;
    v27 = 0u;
    if (!CFStringGetCString(v10, buffer, 64, 0x8000100u))
    {
      goto LABEL_28;
    }

    __endptr = 0;
    v18 = strtol(buffer, &__endptr, 0);
    if (__endptr == buffer || *__endptr)
    {
      goto LABEL_28;
    }

    valuePtr = v18;
    Copy = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    goto LABEL_8;
  }

  v17 = kCFBooleanTrue;
  if (!CFEqual(v10, @"true"))
  {
    v17 = kCFBooleanFalse;
    if (!CFEqual(v10, @"false"))
    {
      goto LABEL_28;
    }
  }

LABEL_9:
  if (!v17)
  {
    goto LABEL_28;
  }

  v8 = IORegistryEntrySetCFProperty(v11, v9, v17);
  CFRelease(v17);
  if (v8 != -536870211 && v8 != -536870181 && v8)
  {
    goto LABEL_28;
  }

LABEL_31:
  CFRelease(v10);
  CFRelease(v9);
  if (v8)
  {
    goto LABEL_32;
  }

  if (!a4)
  {
    return 1;
  }

  result = ramrod_sync_NVRAM(a3);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_2AEEC()
{
  result = atomic_load(&dword_1C6B78);
  if (!result)
  {
    result = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/options");
    if (result)
    {
      v1 = 0;
      atomic_compare_exchange_strong(&dword_1C6B78, &v1, result);
      if (v1)
      {
        IOObjectRelease(result);
        return v1;
      }
    }
  }

  return result;
}

BOOL ramrod_print_NVRAM_variables()
{
  properties = 0;
  ramrod_log_msg("%s\n", "ramrod_print_NVRAM_variables");
  if (sub_2B024(0))
  {
    return 0;
  }

  v2 = sub_2AEEC();
  v0 = IORegistryEntryCreateCFProperties(v2, &properties, 0, 0) == 0;
  if (properties)
  {
    Data = CFPropertyListCreateData(0, properties, kCFPropertyListXMLFormat_v1_0, 0, 0);
    if (Data)
    {
      v4 = Data;
      Length = CFDataGetLength(Data);
      BytePtr = CFDataGetBytePtr(v4);
      ramrod_log_msg("NVRAM variables:\n%.*s\n", Length, BytePtr);
      CFRelease(v4);
    }

    if (properties)
    {
      CFRelease(properties);
    }
  }

  return v0;
}

uint64_t sub_2B024(CFErrorRef *a1)
{
  pthread_mutex_lock(&stru_1C47C0);
  if (dword_1C6B7C == 1)
  {
    goto LABEL_5;
  }

  if (dword_1C6B7C == 2)
  {
LABEL_7:
    pthread_mutex_unlock(&stru_1C47C0);
    v3 = 4;
    ramrod_create_error_cf(a1, @"RamrodErrorDomain", 4, 0, @"%s: timeout waiting for nvram service", v4, v5, v6, "ramrod_wait_for_nvram");
    return v3;
  }

  v2 = wait_for_io_service_matching_resource_with_timeout("IONVRAM", 0x3Cu);
  if (!v2)
  {
    dword_1C6B7C = 2;
    goto LABEL_7;
  }

  IOObjectRelease(v2);
  dword_1C6B7C = 1;
LABEL_5:
  pthread_mutex_unlock(&stru_1C47C0);
  return 0;
}

BOOL ramrod_sync_NVRAM(CFErrorRef *a1)
{
  ramrod_log_msg("%s\n", "ramrod_sync_NVRAM");
  v2 = sub_2AEEC();
  v3 = IORegistryEntrySetCFProperty(v2, @"IONVRAM-FORCESYNCNOW-PROPERTY", @"IONVRAM-FORCESYNCNOW-PROPERTY");
  v4 = v3;
  if (v3)
  {
    mach_error_string(v3);
    ramrod_create_error_cf(a1, kCFErrorDomainMach, v4, 0, @"%s: failed to sync NVRAM: %#x (%s)", v5, v6, v7, "ramrod_sync_NVRAM");
  }

  return v4 == 0;
}

uint64_t ramrod_set_NVRAM_shadow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (qword_1C6B88 != -1)
  {
    sub_D6738();
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3254779904;
  v14[2] = sub_2B388;
  v14[3] = &unk_1AD8C8;
  v15 = a5;
  v16 = a6;
  v14[4] = &v17;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v14[8] = a4;
  dispatch_sync(qword_1C6B80, v14);
  v12 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  return v12;
}

uint64_t ramrod_set_NVRAM_shadow_limit(uint64_t a1, CFStringRef theString, uint64_t a3, char a4, char a5, CFIndex a6)
{
  if (a6 < 1 || CFStringGetLength(theString) <= a6)
  {

    return ramrod_set_NVRAM_shadow(a1, theString, 0, a3, a4, a5);
  }

  else
  {
    v16.location = 0;
    v16.length = a6;
    v12 = CFStringCreateWithSubstring(kCFAllocatorDefault, theString, v16);
    v13 = ramrod_set_NVRAM_shadow(a1, theString, v12, a3, a4, a5);
    if (v12)
    {
      CFRelease(v12);
    }

    return v13;
  }
}

uint64_t sub_2B388(uint64_t a1)
{
  _ramrod_set_file_var(*(a1 + 40), *(a1 + 48));
  if (*(a1 + 72) == 1)
  {
    ramrod_fullsync_on_NVRAM_file();
  }

  if (*(a1 + 73) == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  else
  {
    Copy = CFStringCreateCopy(0, *(a1 + 40));
    v3 = Copy;
    v4 = *(a1 + 56);
    if (!v4)
    {
      v4 = *(a1 + 48);
    }

    *(*(*(a1 + 32) + 8) + 24) = ramrod_set_NVRAM_variable_sync_no_shadow(Copy, v4, *(a1 + 64), *(a1 + 72));
    CFRelease(v3);
  }

  return ramrod_persist_NVRAM_to_filesystem();
}

uint64_t sub_2B434(uint64_t a1)
{
  Copy = CFStringCreateCopy(0, *(a1 + 40));
  v3 = *(a1 + 48);
  if (!sub_2B024(v3))
  {
    if (Copy)
    {
      v4 = sub_2AEEC();
      v5 = IORegistryEntrySetCFProperty(v4, @"IONVRAM-DELETE-PROPERTY", Copy);
      if (!v5)
      {
        v6 = 1;
        goto LABEL_8;
      }
    }

    else
    {
      v5 = 4;
    }

    mach_error_string(v5);
    ramrod_create_error_cf(v3, kCFErrorDomainMach, v5, 0, @"%s: failed to delete nvram '%@': %#x (%s)", v7, v8, v9, "ramrod_delete_NVRAM_variable_no_shadow");
  }

  v6 = 0;
LABEL_8:
  *(*(*(a1 + 32) + 8) + 24) = v6;
  _ramrod_delete_file_var(Copy);
  CFRelease(Copy);

  return ramrod_persist_NVRAM_to_filesystem();
}

CFTypeRef ramrod_copy_NVRAM_variable_from_devicetree(CFStringRef theString)
{
  Copy = CFStringCreateCopy(0, theString);
  v2 = sub_2AEEC();
  CFProperty = IORegistryEntryCreateCFProperty(v2, Copy, 0, 0);
  CFRelease(Copy);
  return CFProperty;
}

CFTypeRef ramrod_copy_NVRAM_shadow_variable(const __CFString *a1)
{
  result = [qword_1C6B58 objectForKey:a1];
  if (!result)
  {

    return ramrod_copy_NVRAM_variable_from_devicetree(a1);
  }

  return result;
}

uint64_t ramrod_clear_NVRAM_variables(CFErrorRef *a1)
{
  if (!sub_2B024(a1))
  {
    v2 = sub_2AEEC();
    if (v2)
    {
      v6 = v2;
      if (IOObjectConformsTo(v2, "AppleEFINVRAM"))
      {
        ramrod_log_msg("EFINvram machine. Skiping clearing nvram variables.\n");
        return 1;
      }

      v8 = IORegistryEntrySetCFProperty(v6, @"40A0DDD2-77F8-4392-B4A3-1E7304206516:ResetNVRam", @"40A0DDD2-77F8-4392-B4A3-1E7304206516:ResetNVRam");
      if (!v8)
      {
        ramrod_log_msg("Clearing nvram with IORegistryEntrySetCFProperty succeeded.\n");
        return 1;
      }

      v9 = v8;
      ramrod_log_msg("Failed to clear nvram with kernel_error %d\n", v8);
      ramrod_create_error_cf(a1, kCFErrorDomainMach, v9, 0, @"%s: Couldn't set ResetNVRam key to wipe nvram", v10, v11, v12, "ramrod_clear_NVRAM_variables");
    }

    else
    {
      ramrod_create_error_cf(a1, kCFErrorDomainMach, -536870208, 0, @"%s: unable to get registry entry for IODeviceTree:/options", v3, v4, v5, "ramrod_clear_NVRAM_variables");
    }
  }

  return 0;
}

void ramrod_load_nonce_slots(uint64_t a1, uint64_t a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_2B784;
  v2[3] = &unk_1A97E0;
  v2[4] = a1;
  v2[5] = a2;
  if (qword_1C6B90 != -1)
  {
    dispatch_once(&qword_1C6B90, v2);
  }
}

uint64_t ramrod_force_load_nonce_slots(uint64_t a1, uint64_t a2)
{
  result = _ramrod_device_has_sandcat(a1, a2);
  if (result)
  {
    v5 = (*(a1 + 48))(a2);
    sub_351A4(v5, &dword_1C4800);
    AMSupportSafeRelease();
    v6 = (*(a1 + 16))(a2);
    ramrod_log_msg("Entering: %s\n", "Boolean _ramrod_load_ap_nonce_slot_from_data(CFDataRef, int *)");
    if (v6)
    {
      sub_42F44(v6, @"anid", &dword_1C6BA0);
    }

    else
    {
      ramrod_log_msg("WARNING: sep_data == NULL in %s. Will return default.\n", "Boolean _ramrod_load_ap_nonce_slot_from_data(CFDataRef, int *)");
    }

    return AMSupportSafeRelease();
  }

  return result;
}

void ramrod_set_overridden_sfr_manifest_hash_with_string(const __CFString *a1)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (!CStringPtr || (v3 = strdup(CStringPtr)) == 0)
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    if (CFStringGetCString(a1, v4, 97, 0x8000100u))
    {
      v3 = strdup(v4);
    }

    else
    {
      v3 = 0;
    }
  }

  free(qword_1C6B98);
  qword_1C6B98 = v3;
}

void ramrod_set_overridden_sfr_manifest_hash_with_data(const __CFData *a1)
{
  free(qword_1C6B98);
  qword_1C6B98 = 0;
  CFDataGetBytePtr(a1);
  CFDataGetLength(a1);
  if (AMSupportCommonCopyHexStringFromData())
  {
    ramrod_log_msg("Failed to decode sfr hash.\n");
  }
}

BOOL ramrod_commit_dual_iboot_spi_partition(int a1)
{
  v2 = wait_for_io_service_matching_class_with_timeout("AppleEmbeddedSimpleSPINORFlasherDriver", 0xFu);
  if (v2)
  {
    v3 = v2;
    v4 = [[IODualSPIWriter alloc] initWithService:v2];
    if ([(IOServiceWriter *)v4 isAvailable])
    {
      v5 = [(IODualSPIWriter *)v4 commitHeaderAtIndex:a1 withError:0]== 0;
    }

    else
    {
      v5 = 0;
    }

    IOObjectRelease(v3);
  }

  else
  {
    ramrod_log_msg("%s: no SPI flasher driver\n", "ramrod_commit_dual_iboot_spi_partition");
    return 0;
  }

  return v5;
}

uint64_t ramrod_find_prepared_dual_iboot_spi_partition()
{
  v0 = wait_for_io_service_matching_class_with_timeout("AppleEmbeddedSimpleSPINORFlasherDriver", 0xFu);
  if (v0)
  {
    v1 = v0;
    v2 = [[IODualSPIWriter alloc] initWithService:v0];
    if ([(IOServiceWriter *)v2 isAvailable])
    {
      v3 = [(IODualSPIWriter *)v2 findPreparedHeader];
    }

    else
    {
      v3 = 0xFFFFFFFFLL;
    }

    IOObjectRelease(v1);
  }

  else
  {
    ramrod_log_msg("%s: no SPI flasher driver\n", "ramrod_find_prepared_dual_iboot_spi_partition");
    v2 = 0;
    v3 = 0xFFFFFFFFLL;
  }

  return v3;
}

uint64_t ramrod_create_directory_with_class(_BYTE *a1, int a2, uid_t a3, gid_t a4, int a5, int a6)
{
  if (!a1 || *a1 != 47)
  {
    return 22;
  }

  bzero(v24, 0x400uLL);
  __strlcpy_chk();
  for (i = v24; ; *i = 47)
  {
    v12 = strchr(i + 1, 47);
    i = v12;
    if (v12)
    {
      *v12 = 0;
    }

    memset(&v23, 0, sizeof(v23));
    if (lstat(v24, &v23))
    {
      if (*__error() != 2)
      {
        v13 = *__error();
        v14 = __error();
        strerror(*v14);
        ramrod_log_msg("lstat %s failed: %s\n");
        return v13;
      }

      if (a6)
      {
        ramrod_log_msg("creating directory (owner=%d group=%d mode=%o, class=%d) %s\n", a3, a4, a2, a5, v24);
      }

      if (mkdir(v24, a2 & 0x1FF))
      {
        v13 = *__error();
        v15 = __error();
        strerror(*v15);
        ramrod_log_msg("mkdir failed: %s\n");
        return v13;
      }

      if (chmod(v24, a2))
      {
        v13 = *__error();
        v16 = __error();
        strerror(*v16);
        ramrod_log_msg("chmod failed: %s\n");
        return v13;
      }

      if (chown(v24, a3, a4))
      {
        v13 = *__error();
        v17 = __error();
        strerror(*v17);
        ramrod_log_msg("chown failed: %s\n");
        return v13;
      }

      if ((a5 & 0x80000000) == 0)
      {
        v22 = 0;
        v21 = xmmword_10AD6C;
        v20 = a5;
        if (setattrlist(v24, &v21, &v20, 4uLL, 0))
        {
          break;
        }
      }
    }

    if (!i)
    {
      return 0;
    }
  }

  v13 = *__error();
  v18 = __error();
  strerror(*v18);
  ramrod_log_msg("setattrlist failed: %s\n");
  return v13;
}

uint64_t ramrod_write_data_to_file_with_class(const __CFData *a1, char *a2, int a3)
{
  v5 = open_dprotected_np(a2, 1537, a3, 0, 420);
  if (v5 < 0)
  {
    v14 = __error();
    v15 = strerror(*v14);
    ramrod_log_msg("failed to open %s for writing (%s)\n", a2, v15);
  }

  else
  {
    v6 = v5;
    Length = CFDataGetLength(a1);
    v8 = CFDataGetLength(a1);
    BytePtr = CFDataGetBytePtr(a1);
    if (Length < 1)
    {
LABEL_6:
      close(v6);
      return 0;
    }

    v10 = BytePtr;
    v11 = 0;
    while (1)
    {
      v12 = write(v6, v10, v8);
      if (v12 <= 0)
      {
        break;
      }

      v10 += v12;
      v8 -= v12;
      v11 += v12;
      if (Length <= v11)
      {
        goto LABEL_6;
      }
    }

    v16 = __error();
    v17 = strerror(*v16);
    ramrod_log_msg("failed writing %s: %s\n", a2, v17);
    close(v6);
    unlink(a2);
  }

  return 0xFFFFFFFFLL;
}

uint64_t ramrod_sync_apfs_metrics_nvram_checkpoint(uint64_t a1, const char *a2, uint64_t a3, int a4)
{
  __linecapp = 0;
  __linep = 0;
  cf = 0;
  v8 = calloc(8uLL, a4);
  v9 = fopen(a2, "r");
  if (!v9)
  {
    v24 = sub_2C3AC(0, "Could not read file %s", a2);
    v25 = 0;
    v13 = 0;
    v26 = 0;
    if (a1)
    {
      goto LABEL_46;
    }

    goto LABEL_48;
  }

  if (getline(&__linep, &__linecapp, v9) == -1)
  {
    v24 = 0;
    v26 = 0;
    v13 = 0;
    v25 = 1;
    goto LABEL_50;
  }

  v39 = a2;
  v40 = a1;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = __linep;
    v15 = strchr(__linep, 10);
    if (!v15)
    {
      v27 = v39;
      v24 = sub_2C3AC(0, "%d: no newline character detected while reading %s", v10, v39);
      v26 = 0;
      v25 = 0;
      goto LABEL_41;
    }

    if (v15 == v14 || *v15 != 10)
    {
      goto LABEL_13;
    }

    if (v12 < a4)
    {
      *buffer = 0u;
      v45 = 0u;
      *v15 = 0;
      v17 = &v8[v12];
      asprintf(v17, "%s", __linep);
      if (!*v17)
      {
        v24 = sub_2C3AC(0, "%d: failed to store log line[%d]", v10, v12);
        v26 = 0;
        goto LABEL_39;
      }

      CFStringGetCString(*(a3 + 8 * v12), buffer, 32, 0x8000100u);
      v13 = sub_2C3AC(v13, "%s:%s", buffer, *v17);
      ++v12;
      v14 = __linep;
LABEL_13:
      if (!v14)
      {
        goto LABEL_15;
      }

LABEL_14:
      free(v14);
      __linep = 0;
      goto LABEL_15;
    }

    ++v11;
    if (v14)
    {
      goto LABEL_14;
    }

LABEL_15:
    ++v10;
  }

  while (getline(&__linep, &__linecapp, v9) != -1);
  if (v12 < 1)
  {
    v26 = 0;
    v24 = 0;
    v25 = 1;
    goto LABEL_40;
  }

  v28 = 0;
  while (1)
  {
    v29 = v8[v28];
    if (!v29)
    {
LABEL_29:
      v26 = 0;
      v24 = 0;
      v25 = 1;
      goto LABEL_40;
    }

    v26 = CFStringCreateWithCString(kCFAllocatorDefault, v29, 0x8000100u);
    if (!v26)
    {
      v24 = sub_2C3AC(0, "failed to create CFString for log line[%d]", v28);
      v25 = 0;
      goto LABEL_40;
    }

    if ((ramrod_set_NVRAM_variable_sync(*(a3 + 8 * v28), v26, &cf, v12 - 1 == v28) & 1) == 0)
    {
      break;
    }

    ++v28;
    CFRelease(v26);
    if (v12 == v28)
    {
      goto LABEL_29;
    }
  }

  if (!cf)
  {
    goto LABEL_38;
  }

  v30 = CFErrorCopyUserInfo(cf);
  if (!v30)
  {
    goto LABEL_38;
  }

  v31 = v30;
  Value = CFDictionaryGetValue(v30, kCFErrorLocalizedFailureReasonKey);
  if (!Value)
  {
    CFRelease(v31);
LABEL_38:
    v24 = sub_2C3AC(0, "failed NVRAM write of conversion log line[%d]", v28);
    goto LABEL_39;
  }

  v33 = Value;
  bzero(buffer, 0x800uLL);
  CFStringGetCString(v33, buffer, 2048, 0x8000100u);
  v24 = sub_2C3AC(0, "failed NVRAM write(%s) of conversion log line[%d]", buffer, v28);
  CFRelease(v31);
  CFRelease(v33);
LABEL_39:
  v25 = 0;
LABEL_40:
  v27 = v39;
LABEL_41:
  if (v11 >= 1)
  {
    v24 = sub_2C3AC(v24, "%d log lines dropped from %s", v11, v27);
  }

  a1 = v40;
  if (!v40)
  {
LABEL_48:
    if (v24)
    {
      ramrod_log_msg("WARNING: %s\n", v24);
    }

    goto LABEL_50;
  }

  if (v13)
  {
    checkpoint_closure_info(v40, "%s", v18, v19, v20, v21, v22, v23, v13);
  }

LABEL_46:
  if (v24)
  {
    checkpoint_closure_warning(a1, "%s", v18, v19, v20, v21, v22, v23, v24);
  }

LABEL_50:
  if (__linep)
  {
    free(__linep);
    __linep = 0;
  }

  if (v13)
  {
    free(v13);
  }

  if (v24)
  {
    free(v24);
  }

  if (a4 < 1)
  {
    v36 = v8;
    if (v8)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v34 = v8;
    v35 = a4;
    v36 = v34;
    v37 = v34;
    do
    {
      if (*v37)
      {
        free(*v37);
        *v37 = 0;
      }

      ++v37;
      --v35;
    }

    while (v35);
LABEL_63:
    free(v36);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v9)
  {
    fclose(v9);
  }

  return v25;
}

char *sub_2C3AC(char *a1, const char *a2, ...)
{
  va_start(va, a2);
  v4 = 0;
  v5[0] = 0;
  va_copy(&v5[1], va);
  vasprintf(v5, a2, va);
  if (!v5[0])
  {
    return a1;
  }

  if (!a1)
  {
    return v5[0];
  }

  asprintf(&v4, "%s;%s", a1, v5[0]);
  if (v4)
  {
    free(a1);
  }

  else
  {
    v4 = a1;
  }

  if (v5[0])
  {
    free(v5[0]);
    v5[0] = 0;
  }

  return v4;
}

uint64_t ramrod_sync_apfs_metrics_nvram()
{
  v0 = ramrod_sync_apfs_metrics_nvram_checkpoint(0, "/mnt5/fsck_logs", &off_1A9800, 1);
  if (v0)
  {
    ramrod_log_msg("%s : failed to sync fsck metrics\n", "ramrod_sync_apfs_metrics_nvram");
  }

  return v0;
}

const __CFDictionary *ramrod_should_update_stockholm(int a1)
{
  if (a1)
  {
    ramrod_log_msg("Skipping checking stockholm for booted update\n");
    return 0;
  }

  else
  {

    return ramrod_device_has_stockholm();
  }
}

uint64_t ramrod_bootstrap_stockholm(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  ramrod_log_msg("entering ramrod_bootstrap_stockholm\n");
  if (a4)
  {
    *a4 = 0;
  }

  v9[0] = @"Preboot Root";
  v9[1] = @"Stockholm Skip JCOP";
  v10[0] = a1;
  v10[1] = [NSNumber numberWithBool:1];
  return sub_2C5E4([NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2], a2, a3, a4);
}

uint64_t sub_2C5E4(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  if (CFDictionaryGetValue(a1, @"Perform stockholm install") == kCFBooleanFalse)
  {
    goto LABEL_63;
  }

  ramrod_log_msg("entering update_stockholm\n");
  (*(a2 + 8))(4, 0, a3);
  v8 = IOServiceMatching("AppleStockholmControl");
  if (!v8)
  {
    goto LABEL_63;
  }

  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v8);
  if (!MatchingService)
  {
    goto LABEL_63;
  }

  IOObjectRelease(MatchingService);
  memset(&v57, 0, sizeof(v57));
  cf = 0;
  v10 = dlopen("/usr/lib/libnfrestore.dylib", 261);
  if (!v10)
  {
    sub_D7E94();
LABEL_63:
    (*(a2 + 8))(4, 100, a3);
    return 1;
  }

  v11 = dlsym(v10, "NfRestoreReturnError");
  if (!v11)
  {
    ramrod_log_msg("could not find NfRestore call\n");
    goto LABEL_63;
  }

  v12 = v11;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    ramrod_log_msg("failed to create params dictionary\n");
    goto LABEL_63;
  }

  v14 = Mutable;
  if (stat("/usr/standalone/firmware/nfrestore/firmware/", &v57))
  {
    ramrod_log_msg("Could not find stockholm firmware directory\n");
    goto LABEL_56;
  }

  CFDictionarySetValue(v14, @"RootFilePath", @"/usr/standalone/firmware/nfrestore/firmware/");
  Value = CFDictionaryGetValue(a1, @"Preboot Root");
  if (!Value)
  {
    bzero(valuePtr, 0x400uLL);
    system_partition_device_node = ramrod_get_system_partition_device_node(valuePtr, 0x400uLL);
    if (system_partition_device_node)
    {
      v16 = ramrod_copy_preboot_path(system_partition_device_node, "/mnt9", 0, 0);
      if (v16)
      {
        goto LABEL_12;
      }
    }

    sub_D7E58(a4, v18, v19, v20, v21, v22, v23, v24);
LABEL_56:
    v16 = 0;
    goto LABEL_57;
  }

  v16 = Value;
  CFRetain(Value);
LABEL_12:
  CFDictionarySetValue(v14, @"RestoreSystemPartition", v16);
  if (a1)
  {
    v25 = CFDictionaryGetValue(a1, @"Stockholm Factory Install");
    if (v25)
    {
      v26 = v25;
      v27 = CFGetTypeID(v25);
      if (v27 == CFBooleanGetTypeID() && CFBooleanGetValue(v26) == 1)
      {
        CFDictionarySetValue(v14, @"FactoryInstall", kCFBooleanTrue);
      }
    }

    v28 = CFDictionaryGetValue(a1, @"Stockholm Advanced Install");
    if (v28)
    {
      v29 = v28;
      v30 = CFGetTypeID(v28);
      if (v30 == CFBooleanGetTypeID() && CFBooleanGetValue(v29) == 1)
      {
        CFDictionarySetValue(v14, @"AdvancedFeatures", kCFBooleanTrue);
      }
    }

    v31 = CFDictionaryGetValue(a1, @"Terminate Applets");
    if (v31)
    {
      v32 = v31;
      v33 = CFGetTypeID(v31);
      if (v33 == CFBooleanGetTypeID() && CFBooleanGetValue(v32) == 1)
      {
        CFDictionarySetValue(v14, @"JcopTerminateApplets", kCFBooleanTrue);
      }
    }

    v34 = CFDictionaryGetValue(a1, @"Stockholm Postflight Script");
    if (v34)
    {
      v35 = v34;
      v36 = CFGetTypeID(v34);
      if (v36 == CFStringGetTypeID())
      {
        CFDictionarySetValue(v14, @"JcopPostflightScript", v35);
      }
    }

    v37 = CFDictionaryGetValue(a1, @"Stockholm Skip JCOP");
    if (v37)
    {
      v38 = v37;
      v39 = CFGetTypeID(v37);
      if (v39 == CFBooleanGetTypeID() && CFBooleanGetValue(v38) == 1)
      {
        CFDictionarySetValue(v14, @"JcopUpdateDisable", kCFBooleanTrue);
      }
    }

    v40 = CFDictionaryGetValue(a1, @"JCOP Type");
    if (v40)
    {
      v41 = v40;
      v42 = CFGetTypeID(v40);
      if (v42 == CFStringGetTypeID())
      {
        if (CFEqual(v41, @"Development"))
        {
          v43 = 1;
        }

        else
        {
          v43 = 2 * (CFEqual(v41, @"Production") != 0);
        }

        *valuePtr = v43;
        v44 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, valuePtr);
        CFDictionarySetValue(v14, @"JcopKeyType", v44);
        CFRelease(v44);
      }
    }

    v45 = CFDictionaryGetValue(a1, @"Stockholm Verify JCOP");
    if (v45)
    {
      v46 = v45;
      v47 = CFGetTypeID(v45);
      if (v47 == CFBooleanGetTypeID() && CFBooleanGetValue(v46) == 1)
      {
        CFDictionarySetValue(v14, @"JcopValidateConfig", kCFBooleanTrue);
      }
    }

    v48 = CFDictionaryGetValue(a1, @"StockholmOptions");
    ramrod_log_msg("Adding stockholm options dictionary %d", v48 != 0);
    if (v48)
    {
      v49 = CFGetTypeID(v48);
      if (v49 == CFDictionaryGetTypeID())
      {
        CFDictionarySetValue(v14, @"StockholmOptions", v48);
      }
    }
  }

  v53 = v12(v14, stockholm_progress_callback, sub_43094, &cf, 0);
  if (cf)
  {
    CFRetain(cf);
  }

  if (v53)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1007, cf, @"%s: NfRestore Failed. NfResult: %d", v50, v51, v52, "update_stockholm");
    if (cf)
    {
      CFRelease(cf);
    }

    v54 = 0;
    goto LABEL_58;
  }

  if (cf)
  {
    if (a4)
    {
      *a4 = cf;
    }

    else
    {
      CFRelease(cf);
    }
  }

LABEL_57:
  v54 = 1;
LABEL_58:
  (*(a2 + 8))(4, 100, a3);
  CFRelease(v14);
  if (v16)
  {
    CFRelease(v16);
  }

  return v54;
}

void skip_NAND_update(uint64_t a1)
{
  bzero(v3, 0x400uLL);
  ramrod_log_msg("skipping update_NAND\n");
  v1 = *off_1A9808;
  v2 = 0;
  if (ramrod_execute_command_get_cstring_result(&v1, v3, 1024))
  {
    sub_D7EC4();
  }
}

CFPropertyListRef query_nvmefwupdater(const __CFData *Length, CFErrorRef *a2)
{
  bzero(bytes, 0x400uLL);
  memset(&v9, 0, sizeof(v9));
  if (stat("/usr/bin/nvmefwupdater", &v9) == -1)
  {
    ramrod_log_msg("nvmefwupdater missing at %s\n", "/usr/bin/nvmefwupdater");
    return 0;
  }

  v10 = *off_1A9820;
  v11 = *algn_1A9830;
  if (Length)
  {
    BytePtr = CFDataGetBytePtr(Length);
    Length = CFDataGetLength(Length);
    *&v11 = "-";
    ramrod_log_msg("Overriding NAND BFH firmware\n");
  }

  else
  {
    BytePtr = 0;
  }

  cstring_result = ramrod_execute_command_with_input_data_get_cstring_result(&v10, BytePtr, Length, bytes, 1024);
  if (cstring_result)
  {
    sub_D7F1C(cstring_result, a2);
    return 0;
  }

  v7 = CFDataCreate(kCFAllocatorDefault, bytes, 1024);
  v5 = CFPropertyListCreateWithData(kCFAllocatorDefault, v7, 0, 0, 0);
  if (!v5)
  {
    sub_D7F80();
    if (!v7)
    {
      return v5;
    }

    goto LABEL_10;
  }

  if (v7)
  {
LABEL_10:
    CFRelease(v7);
  }

  return v5;
}

uint64_t _validate_NAND_firmware(_BYTE *a1, _BYTE *a2, _BYTE *a3, CFErrorRef *a4)
{
  if (!*a1)
  {
    sub_D8088(a4);
    return 1;
  }

  if ((*a2 != 0) != (*a3 != 0))
  {
    sub_D7FE0(*a2 != 0);
    return 1;
  }

  return 0;
}

uint64_t update_NAND(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  bzero(buffer, 0x400uLL);
  bzero(v55, 0x400uLL);
  bzero(v54, 0x400uLL);
  ramrod_log_msg("entering update_NAND\n");
  v51 = xmmword_1A9860;
  v52 = unk_1A9870;
  v53 = xmmword_1A9880;
  v49 = off_1A9840;
  v50 = *algn_1A9850;
  if (ramrod_should_do_legacy_restored_internal_behaviors() && CFDictionaryGetValue(a1, @"SkipS3E") == kCFBooleanTrue)
  {
    skip_NAND_update(a4);
  }

  else
  {
    Value = CFDictionaryGetValue(a1, @"EraseInstall");
    v7 = CFDictionaryGetValue(a1, @"NAND filepath");
    v8 = CFDictionaryGetValue(a1, @"PHY Text filepath");
    v9 = CFDictionaryGetValue(a1, @"PHY Data filepath");
    v10 = v9;
    if (!v7 && !v8 && !v9)
    {
      ramrod_log_msg("No queried filepaths found in updater options\n");
      nvmefwupdater = query_nvmefwupdater(0, a4);
      v7 = CFDictionaryGetValue(nvmefwupdater, @"nand");
      v8 = CFDictionaryGetValue(nvmefwupdater, @"phy_text");
      v10 = CFDictionaryGetValue(nvmefwupdater, @"phy_data");
    }

    memset(&v48, 0, sizeof(v48));
    if (v7)
    {
      v12 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s%@", "/usr/standalone/firmware/", v7, *&v48.st_dev, v48.st_ino, *&v48.st_uid, *&v48.st_rdev, v48.st_atimespec.tv_sec, v48.st_atimespec.tv_nsec, v48.st_mtimespec.tv_sec, v48.st_mtimespec.tv_nsec, v48.st_ctimespec.tv_sec, v48.st_ctimespec.tv_nsec, v48.st_birthtimespec.tv_sec, v48.st_birthtimespec.tv_nsec, v48.st_size, v48.st_blocks, *&v48.st_blksize, *&v48.st_gen, v48.st_qspare[0], v48.st_qspare[1], v49, v50, v51, v52, v53);
      CFStringGetCString(v12, buffer, 1024, 0x8000100u);
      CFRelease(v12);
    }

    if (v8)
    {
      v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s%@", "/usr/standalone/firmware/", v8);
      CFStringGetCString(v13, v55, 1024, 0x8000100u);
      CFRelease(v13);
    }

    if (v10)
    {
      v14 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s%@", "/usr/standalone/firmware/", v10);
      CFStringGetCString(v14, v54, 1024, 0x8000100u);
      CFRelease(v14);
    }

    if (ramrod_should_do_legacy_restored_internal_behaviors())
    {
      ramrod_create_directory_with_class("/mnt5/usr/standalone/firmware/", 493, 0, 0, -1, 1);
      if (CFDictionaryContainsKey(a1, @"S3E Override Folder"))
      {
        v15 = CFDictionaryGetValue(a1, @"S3E Override Folder");
        v16 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%snand_fw.pak", "/mnt5/usr/standalone/firmware/");
        CStringPtr = CFStringGetCStringPtr(v16, 0x8000100u);
        ramrod_write_data_to_file_with_class(v15, CStringPtr, -1);
        v18 = CFStringGetCStringPtr(v16, 0x8000100u);
        ramrod_log_msg("Overriding NAND firmware: %s\n", v18);
        CFStringGetCString(v16, buffer, 1024, 0x8000100u);
        if (v16)
        {
          CFRelease(v16);
        }
      }

      if (CFDictionaryContainsKey(a1, @"PHY Text Override"))
      {
        v19 = CFDictionaryGetValue(a1, @"PHY Text Override");
        v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%sphy_text.bin", "/mnt5/usr/standalone/firmware/", @"phy_text");
        v21 = CFStringGetCStringPtr(v20, 0x8000100u);
        ramrod_write_data_to_file_with_class(v19, v21, -1);
        v22 = CFStringGetCStringPtr(v20, 0x8000100u);
        ramrod_log_msg("Overriding PHY text: %s\n", v22);
        CFStringGetCString(v20, v55, 1024, 0x8000100u);
        if (v20)
        {
          CFRelease(v20);
        }
      }

      if (CFDictionaryContainsKey(a1, @"PHY Data Override"))
      {
        v23 = CFDictionaryGetValue(a1, @"PHY Data Override");
        v24 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%sphy_data.bin", "/mnt5/usr/standalone/firmware/", @"phy_data");
        v25 = CFStringGetCStringPtr(v24, 0x8000100u);
        ramrod_write_data_to_file_with_class(v23, v25, -1);
        v26 = CFStringGetCStringPtr(v24, 0x8000100u);
        ramrod_log_msg("Overriding PHY data: %s\n", v26);
        CFStringGetCString(v24, v54, 1024, 0x8000100u);
        if (v24)
        {
          CFRelease(v24);
        }
      }

      if (CFDictionaryGetValue(a1, @"SkipPHYUpdate") == kCFBooleanTrue)
      {
        ramrod_log_msg("Skipping PHY update, ignoring overrides\n");
        v55[0] = 0;
        v54[0] = 0;
      }
    }

    if (_validate_NAND_firmware(buffer, v55, v54, a4))
    {
      return 0;
    }

    if (stat(buffer, &v48))
    {
      ramrod_log_msg("error: NAND firmware does not exist: %s\n", buffer);
      skip_NAND_update(a4);
      if (a4)
      {
        ramrod_create_error_cf(a4, @"RamrodErrorDomain", 8, *a4, @"%s: missing NAND information %s", v28, v29, v30, "update_NAND");
      }

      return 1;
    }

    if (v55[0] && v54[0])
    {
      if (stat(v55, &v48))
      {
        ramrod_log_msg("error: PHY text does not exist: %s\n");
        return 0;
      }

      v31 = v54;
      if (stat(v54, &v48))
      {
        ramrod_log_msg("error: PHY data does not exist: %s\n");
        return 0;
      }

      v32 = &v52 + 8;
      ramrod_log_msg("Updating NAND: %s\n", buffer);
      ramrod_log_msg("Updating PHY: text: %s data: %s\n", v55, v54);
      *(&v49 + 1) = "--validate";
      *&v50 = "--nand_fw";
      *(&v50 + 1) = buffer;
      *&v51 = "--phy_text";
      *(&v51 + 1) = v55;
      *&v52 = "--phy_data";
    }

    else
    {
      v32 = &v50 + 8;
      v31 = buffer;
      ramrod_log_msg("Updating NAND: %s\n", buffer);
      ramrod_log_msg("No PHY update data provided; skipping PHY update\n");
      *(&v49 + 1) = "--validate";
      *&v50 = "--nand_fw";
    }

    *v32 = v31;
    v33 = ramrod_execute_command(&v49);
    if (v33 > 3)
    {
      if (v33 == 4)
      {
        ramrod_log_msg("ECC or DM version mismatch. Production update required\n");
        v37 = @"%s: ECC or DM version mismatch. Production update required";
        goto LABEL_53;
      }

      if (v33 != 5)
      {
        goto LABEL_51;
      }

      if (Value != kCFBooleanTrue)
      {
        ramrod_log_msg("FTL version mismatch. Erase install required\n");
        v37 = @"%s: FTL version mismatch. Erase install required";
        goto LABEL_53;
      }
    }

    else if (v33 != 1)
    {
      if (v33 == 3)
      {
        ramrod_log_msg("Invalid FW package\n");
        v37 = @"%s: Invalid FW package";
LABEL_53:
        ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, v37, v34, v35, v36, "update_NAND");
        return 0;
      }

LABEL_51:
      ramrod_log_msg("Unknown return value %d from --validate\n", v33);
      v37 = @"%s: failed to validate NAND update file";
      goto LABEL_53;
    }

    *(&v49 + 1) = "--update";
    v38 = ramrod_execute_command(&v49);
    if (v38 <= 3)
    {
      if (v38 != 1)
      {
        if (v38 == 3)
        {
          ramrod_log_msg("Update NAND - Invalid FW package\n");
          v37 = @"%s: Update NAND - Invalid FW package";
          goto LABEL_53;
        }

LABEL_65:
        ramrod_log_msg("Unknown return value %d from --update\n", v38);
        v37 = @"%s: failed to update NAND update file";
        goto LABEL_53;
      }
    }

    else
    {
      if (v38 == 4)
      {
        ramrod_log_msg("Update NAND - ECC or DM version mismatch. Production update required\n");
        v37 = @"%s: Update NAND - ECC or DM version mismatch. Production update required";
        goto LABEL_53;
      }

      if (v38 != 5)
      {
        if (v38 == 6)
        {
          ramrod_log_msg("Update NAND - failed. Retry requested\n");
          ramrod_create_error_cf(a4, @"RamrodErrorDomain", 13, 0, @"%s: NAND update failed with error %d, retrying", v39, v40, v41, "update_NAND");
          return 0;
        }

        goto LABEL_65;
      }

      if (Value != kCFBooleanTrue)
      {
        ramrod_log_msg("Update NAND - FTL version mismatch. Erase install required\n");
        v37 = @"%s: Update NAND - FTL version mismatch. Erase install required";
        goto LABEL_53;
      }
    }

    if (!ramrod_should_do_legacy_restored_internal_behaviors() || (v42 = CFDictionaryGetValue(a1, @"NAND Tunable Tables Override Bundle")) == 0)
    {
      *(&v49 + 1) = "--sendtunabletables";
      *&v50 = 0;
      v47 = ramrod_execute_command(&v49);
      if (v47 > 7)
      {
        if (v47 == 8)
        {
          ramrod_log_msg("Note: A file was not found on the ramdisk for tunable table data\n");
          return 1;
        }

        if (v47 == 9)
        {
          ramrod_log_msg("nvmefwupdater was unable to find the tunable table bundle name in the device tree\n");
          return 1;
        }
      }

      else
      {
        if (!v47)
        {
          return 1;
        }

        if (v47 == 7)
        {
          v37 = @"%s: Failed to send ramdisk NAND tunable table data to device\n";
          goto LABEL_53;
        }
      }

      v37 = @"%s: Failed to read NAND tunable table data from ramdisk with error %d\n";
      goto LABEL_53;
    }

    v43 = v42;
    *(&v49 + 1) = "--sendtunabletables";
    *&v50 = "-";
    BytePtr = CFDataGetBytePtr(v42);
    Length = CFDataGetLength(v43);
    v46 = ramrod_execute_command_with_input_data(&v49, BytePtr, Length);
    if (v46)
    {
      if (v46 == 7)
      {
        v37 = @"%s: Failed to send override NAND tunable table data to device\n";
      }

      else
      {
        v37 = @"%s: Failed to read override NAND tunable table data from Purple Restore with error %d\n";
      }

      goto LABEL_53;
    }
  }

  return 1;
}

uint64_t update_usbc()
{
  v0 = off_1AD4C8();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v35 = *off_1A9890;
  v36 = unk_1A98A0;
  v37 = xmmword_1A98B0;
  bzero(v34, 0x2000uLL);
  cf = 0;
  value = 0;
  *bytes = 1;
  URLFromString = AMSupportCreateURLFromString();
  ramrod_log_msg("entering %s\n", "update_usbc");
  v7 = CFDictionaryContainsKey(*(v4 + 8), @"UUID");
  if (v7)
  {
    *(&v36 + 1) = "/mnt5/usbcfw.version";
    v8 = "--stashExpectedFWVersion";
  }

  else
  {
    v8 = "--reset";
  }

  *&v36 = v8;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    goto LABEL_12;
  }

  v10 = Mutable;
  v11 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v11)
  {
    ramrod_log_msg("Couldn't create a propertyMatchingDict to update USB-C firmware.\n");
LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  v12 = v11;
  v13 = CFDataCreate(kCFAllocatorDefault, bytes, 4);
  if (!v13)
  {
    ramrod_log_msg("Couldn't create a swdFlashPayloadDataRef to update USB-C firmware.\n");
    goto LABEL_12;
  }

  CFDictionarySetValue(v12, @"usbc-flash-update", v13);
  CFDictionarySetValue(v10, @"IOPropertyMatch", v12);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v10);
  if (!MatchingService)
  {
    ramrod_log_msg("No valid USB-C device found. Skipping updater.\n");
    v17 = 1;
    goto LABEL_13;
  }

  v15 = MatchingService;
  ramrod_delete_NVRAM_variable(@"usbcfw.version", 0);
  ramrod_delete_NVRAM_variable(@"ramrod-kickstart-aces", 0);
  if (CFDictionaryGetValueIfPresent(v5, @"USBC", &value))
  {
    v16 = value;
  }

  else
  {
    v16 = kCFBooleanTrue;
    value = kCFBooleanTrue;
  }

  if (!CFBooleanGetValue(v16))
  {
    goto LABEL_36;
  }

  if (ramrod_should_do_legacy_restored_internal_behaviors() && ramrod_ticket_has_BOOLean_entitlement(0x6175666Fu) && CFDictionaryGetValueIfPresent(v5, @"USB-C FW Data", &cf))
  {
    bzero(v33, 0x400uLL);
    if (ramrod_write_data_to_file_with_class(cf, "/mnt5/USB-C_HPM,2.bin", -1))
    {
      ramrod_create_error_cf(v2, @"RamrodErrorDomain", 7, 0, @"%s: %s: Failed to write out USB-C firmware file to %s.", v19, v20, v21, "update_usbc");
      v17 = 0;
      goto LABEL_37;
    }

    __sprintf_chk(v33, 0, 0x400uLL, "--flash=%s", "/mnt5/USB-C_HPM,2.bin");
    ramrod_log_msg("Instructing USBC FW flasher to use the FW at %s instead of the normal path.\n", "/mnt5/USB-C_HPM,2.bin");
    *&v37 = v33;
  }

  cstring_result = ramrod_execute_command_get_cstring_result(&v35, v34, 0x2000);
  if (!cstring_result)
  {
    ramrod_log_msg("USBC update succceeded. Looking for version file in %s\n", "/mnt5/usbcfw.version");
    if (!AMSupportCreateDataFromFileURL())
    {
      ramrod_log_msg("Found USBC version file, reading it in.\n");
      v27 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, 0, 0x8000100u);
      if (v27)
      {
        v28 = v27;
        CStringPtr = CFStringGetCStringPtr(v27, 0x8000100u);
        ramrod_log_msg("Read USBC version file: %s\n", CStringPtr);
        ramrod_set_NVRAM_variable(@"usbcfw.version", v28, 0);
        CFRelease(v28);
      }

      else
      {
        ramrod_log_msg("Couldn't create string from read CFDataRef.\n");
      }
    }

    if (v7)
    {
      ramrod_set_NVRAM_variable(@"ramrod-kickstart-aces", @"1", 0);
    }

LABEL_36:
    v17 = 1;
    goto LABEL_37;
  }

  v26 = cstring_result;
  if (cstring_result == 99)
  {
    v17 = 1;
  }

  else
  {
    ramrod_create_error_cf(v2, @"RamrodErrorDomain", 7, 0, @"%s: USB-C firmware update failed with error: %d. Output: %s", v23, v24, v25, "update_usbc");
    v17 = 0;
  }

  ramrod_log_msg("USBC update failed with a sustained failure: %d. Output: %s. Proceeding without updating USBC.\n", v26, v34);
LABEL_37:
  IOObjectRelease(v15);
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_13:
  if (URLFromString)
  {
    CFRelease(URLFromString);
  }

  return v17;
}

void _AddOtherFlashImages(const __CFString *a1, const void *a2, __CFArray **a3)
{
  if (CFStringCompare(a1, @"iBoot", 0) && CFStringCompare(a1, @"LLB", 0))
  {
    v6 = *a3;

    CFArrayAppendValue(v6, a2);
  }
}

__CFDictionary *_copy_current_fdr_ean_values(uint64_t a1)
{
  theArray = 0;
  value = 0;
  v2 = 0;
  if (ramrod_ticket_copy())
  {
    if (AMFDRSealingMapGetEntriesForDevice())
    {
      if (AMFDRSealingMapCopyDataClassesWithAttribute())
      {
        ramrod_log_msg("No FDR Data for EAN.\n");
      }

      else
      {
        ramrod_log_msg("AMFDRSealingMapCopyDataClassesWithAttribute returned failure\n");
      }
    }

    else
    {
      ramrod_log_msg("Skipping update_fdr_ean on non-FDR device\n");
    }
  }

  else
  {
    ramrod_log_msg("Failed to get ap_ticket.\n");
  }

  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return 0;
}

uint64_t _copy_fdr_ean_values(const __CFString *a1, _DWORD *a2, CFDataRef *a3)
{
  theData = 0;
  if (sub_2E3CC(a1, &theData))
  {
    Length = CFDataGetLength(theData);
    if (Length > 0x1F)
    {
      v7 = Length;
      BytePtr = CFDataGetBytePtr(theData);
      if (*BytePtr == 1769104486)
      {
        if (*(BytePtr + 1) == 1)
        {
          v9 = *(BytePtr + 2);
          if ((v9 + 1) > 1)
          {
            v12 = *(BytePtr + 3);
            if (v12 > 0x1F)
            {
              v13 = *(BytePtr + 4);
              if (!v13)
              {
                ramrod_log_msg("Hash size is zero.\n");
                goto LABEL_11;
              }

              if (v7 <= v13 + v12)
              {
                ramrod_log_msg("Hash is extends outside payload.\n");
                goto LABEL_11;
              }

              v14 = *(BytePtr + 5);
              if (!v14)
              {
                ramrod_log_msg("FDR info payload is empty.\n");
                goto LABEL_11;
              }

              if (16 * v14 != *(BytePtr + 7))
              {
                ramrod_log_msg("FDR info payload is incorrect size.\n\tExpect: %d * %lu = %zu\n\tFound: %d");
                goto LABEL_11;
              }

              if (a2)
              {
                *a2 = v9;
              }

              if (a3)
              {
                v15 = CFDataCreate(kCFAllocatorDefault, &BytePtr[*(BytePtr + 3)], *(BytePtr + 4));
                if (!v15)
                {
                  goto LABEL_11;
                }

                *a3 = v15;
              }

              v10 = 1;
              goto LABEL_12;
            }

            ramrod_log_msg("Hash is inside header.\n");
          }

          else
          {
            ramrod_log_msg("Generation count is invalid.\n");
          }
        }

        else
        {
          ramrod_log_msg("Bad fdr info header version.\n\tExpect: %d\n\tFound: %d\n");
        }
      }

      else
      {
        ramrod_log_msg("Bad fdr info header magic.\n\tExpect: %d\n\tFound: %d\n");
      }
    }

    else
    {
      CFStringGetCStringPtr(a1, 0x8000100u);
      ramrod_log_msg("Entry too small to be versioned blob: %s\n");
    }
  }

  else
  {
    CFStringGetCStringPtr(a1, 0x8000100u);
    ramrod_log_msg("Failed to load EAN key: %s\n");
  }

LABEL_11:
  v10 = 0;
LABEL_12:
  AMSupportSafeRelease();
  return v10;
}

CFTypeRef *sub_2E3CC(const __CFString *a1, CFTypeRef *a2)
{
  connect = 0;
  input = 0;
  v20 = 0;
  v21 = 0;
  output = 0;
  outputCnt = 1;
  if (!a1)
  {
    ramrod_log_msg("key is NULL.\n");
LABEL_27:
    LODWORD(v4) = 0;
    goto LABEL_15;
  }

  v3 = a2;
  if (a2)
  {
    v4 = sub_430C4(a1);
    if (v4)
    {
      v5 = sub_33448(a1);
      v6 = v5;
      if (v5)
      {
        if ((v5 & 0xFFF) != 0)
        {
          ramrod_log_msg("payloadSize isn't %d-aligned.\n", 4096);
          LODWORD(v4) = 0;
          goto LABEL_15;
        }

        ramrod_log_msg("Reading EAN key %c%c%c%c.\n", BYTE3(v4), WORD1(v4), v4 >> 8, v4);
        v7 = calloc(1uLL, v6);
        v9 = v7;
        if (v7)
        {
          input = v4;
          v20 = v7;
          v21 = v6;
          v10 = IOServiceMatching("AppleNVMeEAN");
          MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v10);
          LODWORD(v4) = MatchingService;
          if (MatchingService)
          {
            if (IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
            {
              ramrod_log_msg("IOServiceOpen returned result=0x%04x.\n");
            }

            else if (connect)
            {
              if (IOConnectCallMethod(connect, 4u, &input, 3u, 0, 0, &output, &outputCnt, 0, 0))
              {
                ramrod_log_msg("read failed, kernResult = 0x%x.\n");
              }

              else
              {
                v12 = CFDataCreate(kCFAllocatorDefault, v9, v6);
                v13 = v12;
                if (v12)
                {
                  if (CFDataGetLength(v12) > 0)
                  {
                    *v3 = CFRetain(v13);
                    v3 = (&dword_0 + 1);
                    goto LABEL_16;
                  }

                  ramrod_log_msg("CFData is 0 bytes.\n");
                }

                else
                {
                  ramrod_log_msg("CFDataCreate returned NULL.\n");
                }
              }
            }

            else
            {
              ramrod_log_msg("IOServiceOpen returned IO_OBJECT_NULL.\n");
            }
          }

          else
          {
            ramrod_log_msg("IOServiceGetMatchingService failed to find kNVMeEANServiceMatchName.\n", outputStruct);
          }

          goto LABEL_15;
        }

        ramrod_log_msg("Failed to calloc() buffer %llu bytes.\n", v8);
        goto LABEL_27;
      }

      ramrod_log_msg("Key %c%c%c%c not found.\n", BYTE3(v4), WORD1(v4), v4 >> 8, v4);
      LODWORD(v4) = 0;
    }

    else
    {
      ramrod_log_msg("payloadType is invalid.\n");
    }

LABEL_15:
    v3 = 0;
    goto LABEL_16;
  }

  ramrod_log_msg("outData is NULL.\n");
  LODWORD(v4) = 0;
LABEL_16:
  AMSupportSafeFree();
  if (connect)
  {
    IOServiceClose(connect);
    connect = 0;
  }

  if (v4)
  {
    IOObjectRelease(v4);
  }

  AMSupportSafeRelease();
  return v3;
}

BOOL ramrod_copy_euicccsn_str(CFTypeRef *a1)
{
  v1 = qword_1C6BA8;
  if (a1 && qword_1C6BA8)
  {
    *a1 = CFRetain(qword_1C6BA8);
  }

  return v1 != 0;
}

void _baseband_update_requires_filesystems_once()
{
  has_baseband_legacy = ramrod_device_has_baseband_legacy();
  if (!has_baseband_legacy && !ramrod_device_has_baseband(has_baseband_legacy))
  {
    v5 = 0;
    v4 = 0;
    goto LABEL_26;
  }

  v4 = BBUpdaterExtremeCreateWithError();
  if (!v4)
  {
    ramrod_create_error_cf(&qword_1C6BB0, @"RamrodErrorDomain", 1005, 0, @"%s: BBUpdaterExtremeCreateWithError failed", v1, v2, v3, "_baseband_update_requires_filesystems_once");
    v5 = 0;
    goto LABEL_26;
  }

  BBUpdaterRegisterLogSink();
  v5 = sub_2EA98(0, 0, &qword_1C6BB0);
  if (!v5)
  {
    goto LABEL_26;
  }

  if (!BBUpdaterSetOptions())
  {
    v26 = @"%s: BBUpdaterSetOptions rejected options";
LABEL_25:
    ramrod_create_error_cf(&qword_1C6BB0, @"RamrodErrorDomain", 1005, 0, v26, v6, v7, v8, "_baseband_update_requires_filesystems_once");
    goto LABEL_26;
  }

  ramrod_log_msg("%s: querying baseband to determine if it requires system filesystem\n", "_baseband_update_requires_filesystems_once");
  if (!BBUpdaterExecCommand())
  {
    v26 = @"%s: failed querying baseband";
    goto LABEL_25;
  }

  bzero(buffer, 0x800uLL);
  v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", 0);
  if (v9)
  {
    v10 = v9;
    if (CFStringGetCString(v9, buffer, 2048, 0x8000100u))
    {
      ramrod_log_msg("%s: query returned %s\n", "_baseband_update_requires_filesystems_once", buffer);
    }

    CFRelease(v10);
  }

  Value = CFDictionaryGetValue(0, @"requireSystemPartitionMount");
  if (Value && (v15 = Value, v16 = CFGetTypeID(Value), v16 == CFBooleanGetTypeID()))
  {
    byte_1C6BB8 = CFBooleanGetValue(v15) != 0;
    v17 = CFDictionaryGetValue(0, @"requireUserPartitionMount");
    if (v17)
    {
      v18 = v17;
      v19 = CFGetTypeID(v17);
      if (v19 == CFBooleanGetTypeID())
      {
        byte_1C6BB9 = CFBooleanGetValue(v18) != 0;
      }
    }

    v20 = CFDictionaryGetValue(0, @"requestedBasebandFSPartitionMountSize");
    if (v20)
    {
      v21 = v20;
      v22 = CFGetTypeID(v20);
      if (v22 == CFNumberGetTypeID() && !CFNumberGetValue(v21, kCFNumberLongType, &qword_1C6BC0))
      {
        ramrod_create_error_cf(&qword_1C6BB0, @"RamrodErrorDomain", 3, 0, @"%s: could not convert baseband data partition size to size_t", v23, v24, v25, "_baseband_update_requires_filesystems_once");
      }
    }
  }

  else
  {
    ramrod_create_error_cf(&qword_1C6BB0, @"RamrodErrorDomain", 1004, 0, @"%s: baseband updater failed to indicate if it requires system filesystem mounted", v12, v13, v14, "_baseband_update_requires_filesystems_once");
  }

LABEL_26:
  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

__CFDictionary *sub_2EA98(const __CFDictionary *a1, const __CFDictionary *a2, CFErrorRef *a3)
{
  v6 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%@", @"Baseband", @"Options");
  if (!v6)
  {
    ramrod_create_error_cf(a3, @"RamrodErrorDomain", 6, 0, @"%s: failed to allocate options key", v7, v8, v9, "create_baseband_update_options");
    return 0;
  }

  v10 = v6;
  has_baseband_legacy = ramrod_device_has_baseband_legacy();
  if (has_baseband_legacy)
  {
    if (!a1)
    {
      goto LABEL_11;
    }

    v12 = @"Baseband Updater Options";
    v13 = a1;
  }

  else
  {
    if (!ramrod_device_has_baseband(has_baseband_legacy))
    {
      ramrod_create_error_cf(a3, @"RamrodErrorDomain", 8, 0, @"%s: device does not have a baseband", v14, v15, v16, "create_baseband_update_options");
      goto LABEL_32;
    }

    if (!a2)
    {
      goto LABEL_11;
    }

    v13 = a2;
    v12 = v10;
  }

  Value = CFDictionaryGetValue(v13, v12);
  if (Value)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, Value);
    goto LABEL_12;
  }

LABEL_11:
  MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
LABEL_12:
  v22 = MutableCopy;
  if (!MutableCopy)
  {
    ramrod_create_error_cf(a3, @"RamrodErrorDomain", 6, 0, @"%s: unable to allocate update options dictionary", v19, v20, v21, "create_baseband_update_options");
LABEL_32:
    CFRelease(v10);
    return 0;
  }

  valuePtr = 0;
  CFDictionarySetValue(MutableCopy, @"autoSetupEnv", kCFBooleanFalse);
  CFDictionarySetValue(v22, @"disablePing", kCFBooleanTrue);
  if (a1)
  {
    v23 = CFDictionaryGetValue(a1, @"Preboot Root");
    if (v23)
    {
      CFDictionarySetValue(v22, @"SystemRoot", v23);
LABEL_16:
      v24 = CFDictionaryGetValue(a1, @"Data Root");
      if (v24)
      {
        CFDictionarySetValue(v22, @"DataRoot", v24);
      }

      v25 = CFDictionaryGetValue(a1, @"Baseband Data Root");
      if (v25)
      {
        CFDictionarySetValue(v22, @"RemoteFSRoot", v25);
      }

      v56 = kCFBooleanTrue;
      v26 = CFDictionaryGetValue(a1, @"Restore NV Items");
      if (v26)
      {
        CFDictionarySetValue(v22, @"NVRestoreSetting", v26);
      }

      v27 = ramrod_ticket_copy();
      if (v27)
      {
        CFDictionarySetValue(v22, @"apTicket", v27);
      }

      goto LABEL_26;
    }

    pthread_once(&stru_1C4808, _baseband_update_requires_filesystems_once);
    if (a3)
    {
      v42 = qword_1C6BB0;
      *a3 = qword_1C6BB0;
      if (v42)
      {
        ramrod_log_msg("%s: Failed to query baseband.\n", "create_baseband_update_options");
        CFRelease(*a3);
        v38 = 0;
        v27 = 0;
        *a3 = 0;
        goto LABEL_63;
      }

      if (byte_1C6BB8 != 1)
      {
        goto LABEL_16;
      }
    }

    else if ((byte_1C6BB8 & 1) == 0)
    {
      goto LABEL_16;
    }

    ramrod_create_error_cf(a3, @"RamrodErrorDomain", 1006, 0, @"%s: Baseband requires system filesystem to be mounted but it is not.", v39, v40, v41, "create_baseband_update_options");
    v38 = 0;
    v27 = 0;
    goto LABEL_63;
  }

  v56 = kCFBooleanTrue;
  v27 = 0;
LABEL_26:
  v28 = IOServiceNameMatching("baseband");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v28);
  if (MatchingService)
  {
    v30 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"imeisv", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v32 = CFProperty;
      v33 = CFGetTypeID(CFProperty);
      if (v33 == CFDataGetTypeID())
      {
        v34 = *CFDataGetBytePtr(v32);
      }

      else
      {
        ramrod_log_msg("imeisv property has unexpected type, using 0\n");
        v34 = 0;
      }

      CFRelease(v32);
      IOObjectRelease(v30);
      valuePtr = v34;
      if (v34 < 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      ramrod_log_msg("imeisv property not found, using 0\n");
      IOObjectRelease(v30);
      v34 = 0;
      valuePtr = 0;
    }

    ramrod_log_msg("%s: Got imeisv: %d\n", "create_baseband_update_options", v34);
    v43 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
    if (v43)
    {
      v47 = v43;
      CFDictionarySetValue(v22, @"IMEISwVersion", v43);
      CFRelease(v47);
      if (ramrod_should_do_legacy_restored_internal_behaviors())
      {
        v48 = v56;
      }

      else
      {
        v48 = kCFBooleanFalse;
      }

      CFDictionarySetValue(v22, @"restoredInternal", v48);
      if (ramrod_device_has_baseband_legacy())
      {
        v49 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v22);
        if (v49)
        {
          v38 = v49;
          goto LABEL_63;
        }
      }

      else
      {
        if (a2)
        {
          Mutable = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a2);
        }

        else
        {
          Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        }

        v38 = Mutable;
        if (Mutable)
        {
          if (a1)
          {
            v52 = CFDictionaryGetValue(a1, @"Baseband Updater Options");
            if (v52)
            {
              CFDictionaryApplyFunction(v52, sub_43194, v22);
            }
          }

          CFDictionarySetValue(v38, v10, v22);
          goto LABEL_63;
        }
      }

      v50 = @"%s: unable to allocate CFDictionary";
    }

    else
    {
      v50 = @"%s: unable to allocate CFNumber";
    }

    ramrod_create_error_cf(a3, @"RamrodErrorDomain", 6, 0, v50, v44, v45, v46, "create_baseband_update_options");
LABEL_62:
    v38 = 0;
    goto LABEL_63;
  }

  ramrod_log_msg("unable to find baseband service\n");
  ramrod_create_error_cf(a3, @"RamrodErrorDomain", 4, 0, @"%s: unable to get baseband service", v35, v36, v37, "get_imeisv");
  v38 = 0;
  valuePtr = -1;
LABEL_63:
  v53 = CFCopyDescription(v22);
  if (v53)
  {
    v54 = v53;
    bzero(buffer, 0x800uLL);
    if (CFStringGetCString(v54, buffer, 2048, 0x8000100u) == 1)
    {
      ramrod_log_msg("baseband updater options = %s\n");
    }

    else
    {
      ramrod_log_msg("unable to get updater options string\n");
    }

    CFRelease(v54);
  }

  CFRelease(v22);
  CFRelease(v10);
  if (v27)
  {
    CFRelease(v27);
  }

  return v38;
}

uint64_t ramrod_baseband_verify_sealed_manifest(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  cf = 0;
  theDict = 0;
  ramrod_log_msg("entering %s\n", "ramrod_baseband_verify_sealed_manifest");
  if (!ramrod_device_has_baseband_legacy())
  {
    v36 = 0;
    v37 = 0;
    v38 = 1;
    goto LABEL_40;
  }

  observer[0] = a2;
  observer[1] = a3;
  v11 = BBUpdaterExtremeCreateWithError();
  if (!v11)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1004, cf, @"%s: BBUpdaterExtremeCreateWithError failed", v8, v9, v10, "ramrod_baseband_verify_sealed_manifest");
    v36 = 0;
    v37 = 0;
    v38 = 0;
    goto LABEL_40;
  }

  BBUpdaterRegisterLogSink();
  ramrod_log_msg("%s: registering for progress notifications\n", "ramrod_baseband_verify_sealed_manifest");
  LocalCenter = CFNotificationCenterGetLocalCenter();
  v13 = LocalCenter;
  if (LocalCenter)
  {
    CFNotificationCenterAddObserver(LocalCenter, observer, sub_2F6D4, @"BBUpdateProgress", v11, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 6, 0, @"%s: failed to allocate update_options", v14, v15, v16, "ramrod_baseband_verify_sealed_manifest");
    v22 = 0;
    goto LABEL_37;
  }

  Value = CFDictionaryGetValue(a1, @"Preboot Root");
  if (Value)
  {
    CFDictionarySetValue(Mutable, @"SystemRoot", Value);
  }

  v19 = CFDictionaryGetValue(a1, @"Data Root");
  if (v19)
  {
    CFDictionarySetValue(Mutable, @"DataRoot", v19);
  }

  v20 = CFDictionaryGetValue(a1, @"Baseband Data Root");
  if (v20)
  {
    CFDictionarySetValue(Mutable, @"RemoteFSRoot", v20);
  }

  v21 = CFDictionaryGetValue(a1, @"DebugArgs");
  if (v21)
  {
    CFDictionarySetValue(Mutable, @"DebugArgs", v21);
  }

  v22 = ramrod_ticket_copy();
  if (v22)
  {
    CFDictionarySetValue(Mutable, @"apTicket", v22);
  }

  valuePtr = 1;
  v23 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(Mutable, @"BootMode", v23);
  CFDictionarySetValue(Mutable, @"DisallowFusing", kCFBooleanTrue);
  CFDictionarySetValue(Mutable, @"EraseEFS", kCFBooleanFalse);
  if (!BBUpdaterSetOptions())
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1005, cf, @"%s: BBUpdaterSetOptions rejected options", v24, v25, v26, "ramrod_baseband_verify_sealed_manifest");
    goto LABEL_37;
  }

  bzero(buffer, 0x800uLL);
  v27 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", Mutable);
  if (v27)
  {
    v28 = v27;
    if (CFStringGetCString(v27, buffer, 2048, 0x8000100u))
    {
      ramrod_log_msg("update_options: %s\n", buffer);
    }

    CFRelease(v28);
  }

  if (!BBUpdaterExecCommand())
  {
    ramrod_log_msg("%s: performManifestCheck returned error\n", "ramrod_baseband_verify_sealed_manifest");
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1005, cf, @"%s: failed to perform manifest check", v39, v40, v41, "ramrod_baseband_verify_sealed_manifest");
    (*(a2 + 40))(0, theDict, cf, a3);
    goto LABEL_37;
  }

  ramrod_log_msg("%s: performManifestCheck returned success\n", "ramrod_baseband_verify_sealed_manifest");
  if (!theDict)
  {
    goto LABEL_55;
  }

  v29 = CFDictionaryGetValue(theDict, @"ManifestInfo");
  if (!v29)
  {
    v35 = @"%s: bb_output is missing ManifestInfo\n";
    goto LABEL_35;
  }

  v33 = v29;
  v34 = CFDictionaryGetValue(v29, @"CMStatusCode");
  if (!v34)
  {
    v35 = @"%s: bb_output is missing CMStatusCode\n";
    goto LABEL_35;
  }

  v47 = -1;
  if (!CFNumberGetValue(v34, kCFNumberSInt64Type, &v47))
  {
    v35 = @"%s: failed to convert CMStatusCode";
    goto LABEL_50;
  }

  if (!v47)
  {
    v46 = CFDictionaryGetValue(v33, @"PMStatusCode");
    if (!v46)
    {
      v35 = @"%s: bb_output is missing PMStatusCode\n";
      goto LABEL_35;
    }

    v47 = -1;
    if (CFNumberGetValue(v46, kCFNumberSInt64Type, &v47))
    {
      if (v47)
      {
        v35 = @"%s: baseband rejected provisioning manifest, PMStatusCode=%lld\n";
        goto LABEL_35;
      }

LABEL_55:
      v44 = 1;
      if (!v13)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v35 = @"%s: failed to convert PMStatusCode";
LABEL_50:
    v42 = a4;
    v43 = 3;
    goto LABEL_36;
  }

  v35 = @"%s: baseband rejected calibration manifest, CMStatusCode=%lld\n";
LABEL_35:
  v42 = a4;
  v43 = 1005;
LABEL_36:
  ramrod_create_error_cf(v42, @"RamrodErrorDomain", v43, 0, v35, v30, v31, v32, "ramrod_baseband_verify_sealed_manifest");
LABEL_37:
  v44 = 0;
  if (v13)
  {
LABEL_38:
    CFNotificationCenterRemoveEveryObserver(v13, observer);
  }

LABEL_39:
  CFRelease(v11);
  v36 = v22;
  v37 = Mutable;
  v38 = v44;
LABEL_40:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  return v38;
}

void sub_2F6D4(int a1, void *a2, int a3, int a4, CFDictionaryRef theDict)
{
  if (theDict)
  {
    value = 0;
    if (CFDictionaryGetValueIfPresent(theDict, @"percentage", &value) == 1)
    {
      valuePtr = 0;
      CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr);
      (*(*a2 + 8))(3, valuePtr, a2[1]);
    }
  }

  else
  {
    ramrod_log_msg("%s called without user info\n", "bbupdater_progress");
  }
}

void *ramrod_update_copy_baseband_migration_data(CFDictionaryRef theDict, CFErrorRef *a2)
{
  v3 = 0;
  if (sub_2F7A4(1, &v3, theDict, a2))
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2F7A4(int a1, void **a2, CFDictionaryRef theDict, CFErrorRef *a4)
{
  cf = 0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"Baseband Data Root");
  }

  else
  {
    Value = 0;
  }

  pthread_once(&stru_1C4808, _baseband_update_requires_filesystems_once);
  if (qword_1C6BC0)
  {
    v11 = Value == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1006, 0, @"%s: baseband data filesystem mountpoint is required but was not provided", v8, v9, v10, "_handle_baseband_data_migration");
    v24 = 0;
    goto LABEL_28;
  }

  v15 = BBUpdaterExtremeCreateWithError();
  if (!v15)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1005, 0, @"%s: BBUpdaterExtremeCreateWithError failed", v12, v13, v14, "_handle_baseband_data_migration");
    v24 = 0;
    goto LABEL_28;
  }

  BBUpdaterRegisterLogSink();
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v20 = Mutable;
  if (Mutable)
  {
    if (Value)
    {
      CFDictionarySetValue(Mutable, @"RemoteFSRoot", Value);
    }

    if ((a1 & 1) == 0)
    {
      values = *a2;
      keys = @"MigrationData";
      cf = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    if (BBUpdaterSetOptions())
    {
      if (BBUpdaterExecCommand())
      {
        v24 = 1;
        if (a1 && cf)
        {
          *a2 = CFRetain(cf);
        }

        goto LABEL_26;
      }

      v25 = @"%s: BBUpdater command '%@' failed";
    }

    else
    {
      v25 = @"%s: BBUpdaterSetOptions rejected options";
    }

    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1005, 0, v25, v21, v22, v23, "_handle_baseband_data_migration");
  }

  else
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 6, 0, @"%s: failed to create baseband updater options", v17, v18, v19, "_handle_baseband_data_migration");
  }

  v24 = 0;
LABEL_26:
  BBUpdaterSetOptions();
  CFRelease(v15);
  if (v20)
  {
    CFRelease(v20);
  }

LABEL_28:
  if (cf)
  {
    CFRelease(cf);
  }

  return v24;
}

BOOL ramrod_should_update_baseband(uint64_t a1)
{
  if (!a1)
  {
    return ramrod_device_has_baseband(a1) != 0;
  }

  ramrod_log_msg("Skipping checking baseband for booted OS update\n");
  return 0;
}

uint64_t ramrod_baseband_update_required_baseband_data_filesystem_size(void *a1)
{
  pthread_once(&stru_1C4808, _baseband_update_requires_filesystems_once);
  if (a1)
  {
    *a1 = qword_1C6BB0;
  }

  return qword_1C6BC0;
}

uint64_t ramrod_baseband_update_requires_system_filesystem(void *a1)
{
  pthread_once(&stru_1C4808, _baseband_update_requires_filesystems_once);
  if (a1)
  {
    *a1 = qword_1C6BB0;
  }

  return byte_1C6BB8;
}

uint64_t ramrod_copy_updater_functions(void *a1, const char *a2, __CFDictionary *(***a3)(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4), CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2 || !a3)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 3, 0, @"%s: invalid parameters", a6, a7, a8, "ramrod_copy_updater_functions");
    return 0;
  }

  v10 = a2;
  *a3 = 0;
  v12 = malloc(0x20uLL);
  if (!v12)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 6, 0, @"%s: failed to allocate tmp update_functions struct", v13, v14, v15, "ramrod_copy_updater_functions");
    return 0;
  }

  v16 = v12;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  if (!strcmp(v10, "Banyan"))
  {
    v10 = "BanyanUARP";
  }

  if (!strcmp(v10, "Canary"))
  {
    *v16 = sub_2FF18;
    v16[1] = sub_2FFFC;
    v32 = sub_30034;
    v33 = 2;
    goto LABEL_16;
  }

  v20 = sub_2FDE8(a1, v10, "UpdaterCreate", a4, 0, v17, v18, v19);
  *v16 = v20;
  if (!v20 || (v24 = sub_2FDE8(a1, v10, "UpdaterIsDone", a4, 0, v21, v22, v23), (v16[1] = v24) == 0) || (v28 = sub_2FDE8(a1, v10, "UpdaterExecCommand", a4, 0, v25, v26, v27), (v16[2] = v28) == 0))
  {
    free(v16);
    return 0;
  }

  v32 = sub_2FDE8(a1, v10, "UpdaterIsTwoStageSupported", a4, 1, v29, v30, v31);
  v33 = 3;
LABEL_16:
  v16[v33] = v32;
  *a3 = v16;
  return 1;
}

void *sub_2FDE8(void *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2 || !a3)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 3, 0, @"%s: invalid parameters", a6, a7, a8, "load_function");
    return 0;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *__symbol = 0u;
  v16 = 0u;
  __strlcpy_chk();
  __strlcat_chk();
  result = dlsym(a1, __symbol);
  if (!a5 && !result)
  {
    dlerror();
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1012, 0, @"%s: unable to find %s: %s", v12, v13, v14, "load_function");
    return 0;
  }

  return result;
}

__CFDictionary *sub_2FF18(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    if (a1)
    {
      Value = CFDictionaryGetValue(a1, @"Options");
      if (Value)
      {
        CFDictionarySetValue(Mutable, @"Options", Value);
      }
    }

    CFDictionarySetValue(Mutable, @"IsDone", kCFBooleanFalse);
    CFDictionarySetValue(Mutable, @"Loop0", kCFBooleanTrue);
    CFDictionarySetValue(Mutable, @"QueryLoop0", kCFBooleanTrue);
  }

  else
  {
    sub_D829C(a4, v6, v7, v8, v9, v10, v11, v12);
  }

  return Mutable;
}

const __CFDictionary *sub_2FFFC(const __CFDictionary *result)
{
  if (result)
  {
    Value = CFDictionaryGetValue(result, @"IsDone");

    return CFBooleanGetValue(Value);
  }

  return result;
}

uint64_t sub_30034(const __CFDictionary *a1, CFStringRef theString1, uint64_t a3, CFMutableDictionaryRef *a4, CFErrorRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    sub_D838C(a5, theString1, a3, a4, a5, a6, a7, a8);
    return 0;
  }

  if (!theString1)
  {
    sub_D8350(a5, 0, a3, a4, a5, a6, a7, a8);
    return 0;
  }

  if (!a4)
  {
    sub_D8314(a5, theString1, a3, 0, a5, a6, a7, a8);
    return 0;
  }

  if (CFStringCompare(theString1, @"queryInfo", 0))
  {
    if (CFStringCompare(theString1, @"performNextStage", 0))
    {
      ramrod_create_error_cf(a5, @"RamrodErrorDomain", 3, 0, @"%s: %@ invalid command", v12, v13, v14, "_CanaryUpdaterExecCmd");
      return 0;
    }

    Value = CFDictionaryGetValue(a1, @"Loop0");
    ramrod_log_msg_cf(@"PerformNextStage Running, Loop0=%@.", Value);
    if (CFDictionaryGetValue(a1, @"Loop0") == kCFBooleanFalse)
    {
      CFDictionarySetValue(a1, @"IsDone", kCFBooleanTrue);
    }

    v27 = @"Loop0";
    v28 = a1;
    v29 = kCFBooleanFalse;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *a4 = Mutable;
    if (!Mutable)
    {
      sub_D82D8(a5, v17, v18, v19, v20, v21, v22, v23);
      return 0;
    }

    v24 = CFDictionaryGetValue(a1, @"QueryLoop0");
    ramrod_log_msg_cf(@"QueryInfo Running, Loop0=%@.", v24);
    CFDictionarySetValue(*a4, @"ECID", @"1234567890");
    v25 = *a4;
    v26 = CFDictionaryGetValue(a1, @"QueryLoop0");
    CFDictionarySetValue(v25, @"QueryLoop0", v26);
    CFDictionarySetValue(*a4, @"LocalSigningID", kCFBooleanTrue);
    if (CFDictionaryGetValue(a1, @"QueryLoop0") == kCFBooleanFalse)
    {
      CFDictionarySetValue(a1, @"IsDone", kCFBooleanTrue);
    }

    v27 = @"QueryLoop0";
    v28 = a1;
    v29 = kCFBooleanFalse;
  }

  CFDictionarySetValue(v28, v27, v29);
  return 1;
}

uint64_t ramrod_update_nvram_overrides(const char *a1, __CFDictionary *a2)
{
  if (a2)
  {
    if (a1)
    {
      CStringPtr = CFStringGetCStringPtr(@"T200", 0x8000100u);
      if (!strcmp(a1, CStringPtr) && (v8 = ramrod_copy_NVRAM_variable_from_devicetree(@"VeridianForceUpdate")) != 0)
      {
        v9 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v8, 0x8000100u);
        v5 = v9;
        if (v9)
        {
          v10 = CFGetTypeID(v9);
          if (v10 == CFStringGetTypeID() && CFStringCompare(v5, @"yes", 1uLL) == kCFCompareEqualTo)
          {
            ramrod_log_msg("Setting %s=false due to nvram variable %s=yes\n", "SkipSameVersion", "VeridianForceUpdate");
            CFDictionarySetValue(a2, @"SkipSameVersion", kCFBooleanFalse);
            CFDictionarySetValue(a2, @"RestoreInternal", kCFBooleanTrue);
          }
        }
      }

      else
      {
        v5 = 0;
      }

      v6 = CFStringGetCStringPtr(@"AppleTCON", 0x8000100u);
      if (!strcmp(a1, v6))
      {
        v11 = ramrod_copy_NVRAM_variable_from_devicetree(@"AppleTCONForceUpdate");
        if (v11)
        {
          v5 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v11, 0x8000100u);
        }

        if (v5)
        {
          v12 = CFGetTypeID(v5);
          if (v12 == CFStringGetTypeID() && CFStringCompare(v5, @"yes", 1uLL) == kCFCompareEqualTo)
          {
            ramrod_log_msg("Setting %s=false due to nvram variable %s=yes\n", "SkipSameVersion", "AppleTCONForceUpdate");
            CFDictionarySetValue(a2, @"SkipSameVersion", kCFBooleanFalse);
            CFDictionarySetValue(a2, @"RestoreInternal", kCFBooleanTrue);
          }
        }
      }
    }

    else
    {
      ramrod_log_msg("updaterName is NULL\n");
    }
  }

  else
  {
    ramrod_log_msg("options is NULL\n");
  }

  AMSupportSafeRelease();

  return AMSupportSafeRelease();
}

void *ramrod_updater_copy_options(const char *a1, const __CFDictionary *a2, CFDictionaryRef theDict, void (*a4)(const __CFDictionary *, CFDictionaryRef, __CFDictionary *), CFErrorRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2 && theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"PostFDRSealing");
    v16 = Value && (v14 = Value, TypeID = CFBooleanGetTypeID(), TypeID == CFGetTypeID(v14)) && v14 == kCFBooleanTrue;
    v17 = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x8000100u);
    if (v17)
    {
      v21 = v17;
      if (CFStringCompare(v17, @"AppleTypeCRetimerUARP", 0))
      {
        Mutable = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s%@", a1, @"Options");
        if (Mutable)
        {
          goto LABEL_12;
        }
      }

      else
      {
        Mutable = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%@", @"AppleTypeCRetimer", @"Options");
        ramrod_log_msg_cf(@"%s: overriding optionsKey %@ with AppleTypeCRetimerOptions\n", "ramrod_updater_copy_options", v21);
        if (Mutable)
        {
LABEL_12:
          v72 = a4;
          cf = Mutable;
          v74 = v21;
          v26 = CFDictionaryGetValue(a2, Mutable);
          if (v26)
          {
            MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v26);
          }

          else
          {
            MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          }

          v34 = MutableCopy;
          if (!MutableCopy)
          {
            sub_D83C8(a5, Mutable, v28, v29, v30, v31, v32, v33);
            Mutable = 0;
LABEL_75:
            v21 = v74;
            goto LABEL_76;
          }

          AMSupportLogInternal(6, "ramrod_updater_copy_options", "%s options: %@", a1, MutableCopy);
          v35 = CFDictionaryGetValue(theDict, @"Preboot Root");
          if (v35)
          {
            v36 = v35;
            CFRetain(v35);
          }

          else
          {
            bzero(buffer, 0x400uLL);
            system_partition_device_node = ramrod_get_system_partition_device_node(buffer, 0x400uLL);
            if (!system_partition_device_node)
            {
              v36 = 0;
              if (!v16)
              {
                goto LABEL_41;
              }

              goto LABEL_23;
            }

            v36 = ramrod_copy_preboot_path(system_partition_device_node, "/mnt9", 0, 0);
            if (!v36)
            {
              if (!v16)
              {
                goto LABEL_41;
              }

              goto LABEL_23;
            }
          }

          CFDictionarySetValue(v34, @"RestoreSystemPartition", v36);
          if (!v16)
          {
            v38 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/%s/%s/%s/", v36, "/private/var", "/wireless/Library/Logs/CrashReporter/updater_output/", a1);
            goto LABEL_26;
          }

LABEL_23:
          v37 = CFDictionaryGetValue(theDict, @"Data Root");
          if (!v37)
          {
            goto LABEL_41;
          }

          v38 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/%s/%s/", v37, "/wireless/Library/Logs/CrashReporter/updater_output/", a1);
LABEL_26:
          v39 = v38;
          if (v38)
          {
            v71 = v36;
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            *buffer = 0u;
            v76 = 0u;
            v40 = getpwnam("_wireless");
            if (v40)
            {
              pw_uid = v40->pw_uid;
              pw_gid = v40->pw_gid;
            }

            else
            {
              AMSupportLogInternal(3, "create_directory_with_wireless_owner", "wireless user doesn't exist, falling back to root user\n");
              pw_uid = 0;
              pw_gid = 0;
            }

            SystemEncoding = CFStringGetSystemEncoding();
            CStringPtr = CFStringGetCStringPtr(v39, SystemEncoding);
            if (CStringPtr || (v46 = CFStringGetSystemEncoding(), CStringPtr = buffer, CFStringGetCString(v39, buffer, 128, v46)))
            {
              directory_with_class = ramrod_create_directory_with_class(CStringPtr, 493, pw_uid, pw_gid, -1, 1);
              if (!directory_with_class)
              {
                CFDictionarySetValue(v34, @"DebugLogPath", v39);
                goto LABEL_39;
              }
            }

            else
            {
              AMSupportLogInternal(3, "create_directory_with_wireless_owner", "failed to get CString from CFStringRef\n");
              directory_with_class = -1;
            }

            AMSupportLogInternal(3, "ramrod_updater_copy_options", "failed to create debug directory (status: %d)\n", directory_with_class);
LABEL_39:
            v36 = v71;
            CFRelease(v39);
LABEL_42:
            AMSupportCFDictionarySetBoolean();
            v48 = CFDictionaryGetValue(theDict, @"PreflightContext");
            if (v48)
            {
              v49 = v48;
            }

            else
            {
              v49 = @"Limited";
            }

            CFDictionarySetValue(v34, @"PreflightContext", v49);
            v50 = CFDictionaryGetValue(theDict, @"BootedUpdate");
            if (v50)
            {
              CFDictionarySetValue(v34, @"BootedUpdate", v50);
            }

            should_do_legacy_restored_internal_behaviors = ramrod_should_do_legacy_restored_internal_behaviors();
            v52 = &kCFBooleanTrue;
            if (!should_do_legacy_restored_internal_behaviors)
            {
              v52 = &kCFBooleanFalse;
            }

            CFDictionarySetValue(v34, @"RestoreInternal", *v52);
            v53 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen/iBoot");
            if (v53)
            {
              v54 = v53;
              v55 = v36;
              CFProperty = IORegistryEntryCreateCFProperty(v53, @"iboot-build-variant", kCFAllocatorDefault, 0);
              v57 = CFProperty;
              if (CFProperty)
              {
                if (CFDataGetLength(CFProperty) <= 0)
                {
                  ramrod_log_msg("%s: iboot-build-variant is 0 bytes", "_is_internal_iboot");
                  v60 = 0;
                }

                else
                {
                  BytePtr = CFDataGetBytePtr(v57);
                  Length = CFDataGetLength(v57);
                  v60 = strncmp(BytePtr, "release", Length) != 0;
                }
              }

              else
              {
                v60 = 0;
              }

              IOObjectRelease(v54);
              AMSupportSafeRelease();
              v61 = kCFBooleanFalse;
              if (v60)
              {
                v62 = kCFBooleanTrue;
              }

              else
              {
                v62 = kCFBooleanFalse;
              }

              v36 = v55;
            }

            else
            {
              ramrod_log_msg("%s: IODeviceTree:/chosen/iBoot not found", "_is_internal_iboot");
              AMSupportSafeRelease();
              v61 = kCFBooleanFalse;
              v62 = kCFBooleanFalse;
            }

            CFDictionarySetValue(v34, @"iBootInternal", v62);
            if (CFDictionaryContainsKey(theDict, @"RestoreInternal"))
            {
              v63 = CFDictionaryGetValue(theDict, @"RestoreInternal");
              CFDictionarySetValue(v34, @"RestoreInternal", v63);
            }

            if (CFDictionaryContainsKey(theDict, @"APTicket"))
            {
              v64 = CFDictionaryGetValue(theDict, @"APTicket");
              CFDictionarySetValue(v34, @"APTicket", v64);
            }

            v65 = CFDictionaryGetValue(theDict, @"PreflightTickets");
            if (v65)
            {
              CFDictionarySetValue(v34, @"PreflightTickets", v65);
            }

            v66 = CFDictionaryGetValue(theDict, @"DeferredCommit");
            if (v66)
            {
              CFDictionarySetValue(v34, @"DeferredCommit", v66);
            }

            ramrod_update_nvram_overrides(a1, v34);
            if (os_parse_boot_arg_int())
            {
              CFDictionarySetValue(v34, @"SkipSameVersion", v61);
              CFDictionarySetValue(v34, @"RestoreInternal", kCFBooleanTrue);
            }

            Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (Mutable)
            {
              if (v72)
              {
                v72(a2, theDict, v34);
              }

              CFDictionarySetValue(Mutable, @"Options", v34);
              CFDictionarySetValue(Mutable, @"RestoreOptions", a2);
              ramrod_log_msg_cf(@"creating %sUpdater instance with options->Options=%@\n", a1, v34);
            }

            else
            {
              ramrod_create_error_cf(a5, @"RamrodErrorDomain", 6, 0, @"%s: failed to allocate options dict", v67, v68, v69, "ramrod_updater_copy_options");
            }

            CFRelease(cf);
            CFRelease(v34);
            if (v36)
            {
              CFRelease(v36);
            }

            goto LABEL_75;
          }

LABEL_41:
          AMSupportLogInternal(3, "ramrod_updater_copy_options", "failed to determine mount point\n");
          goto LABEL_42;
        }
      }

      ramrod_create_error_cf(a5, @"RamrodErrorDomain", 6, 0, @"%s: failed to allocate options key", v22, v23, v24, "ramrod_updater_copy_options");
LABEL_76:
      CFRelease(v21);
      return Mutable;
    }

    ramrod_create_error_cf(a5, @"RamrodErrorDomain", 6, 0, @"%s: failed to allocate updater string", v18, v19, v20, "ramrod_updater_copy_options");
  }

  else
  {
    ramrod_create_error_cf(a5, @"RamrodErrorDomain", 3, 0, @"%s: invalid parameters", a6, a7, a8, "ramrod_updater_copy_options");
  }

  return 0;
}

CFStringRef ramrod_copy_preboot_path(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v5 = ramrod_ticket_copy_nsih(a3, a4);
  if (v5)
  {
    v6 = v5;
    if (a2)
    {
      v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s/%@", a2, v5);
    }

    else
    {
      v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", v5);
    }

    v8 = v7;
    CFRelease(v6);
  }

  else
  {
    ramrod_log_msg("failed to obtain nsih\n");
    return 0;
  }

  return v8;
}

uint64_t update_generic_firmware(__CFString *a1, CFDictionaryRef theDict, uint64_t a3, CFErrorRef *a4)
{
  v6 = theDict;
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
  if (*(**(a3 + 16) + 8))
  {
    v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%@.ForceTwoStage", a1, @"Options");
    if (AMSupportGetValueForKeyPathInDict() == kCFBooleanTrue)
    {
      ramrod_log_msg_cf(@"STAGE-1: Simulating two-stage flow in tethered restore due to %@", v9);
      CFDictionarySetValue(MutableCopy, @"PreflightContext", @"BootedOS");
      CFDictionarySetValue(MutableCopy, @"DeferredCommit", kCFBooleanTrue);
      if (!sub_30F48(a1, MutableCopy, a3, a4))
      {
        v10 = 0;
        goto LABEL_6;
      }

      CFDictionarySetValue(MutableCopy, @"PreflightContext", @"Limited");
      ramrod_log_msg_cf(@"STAGE-2: Simulating two-stage flow in tethered restore due to %@", v9);
      v6 = MutableCopy;
    }
  }

  v10 = sub_30F48(a1, v6, a3, a4);
LABEL_6:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v10;
}

uint64_t sub_30F48(__CFString *a1, const __CFDictionary *a2, void *a3, CFErrorRef *a4)
{
  cf = 0;
  v81 = 0;
  v78 = 0;
  v79 = 0;
  v77 = 0;
  v8 = sub_3190C(a1);
  if (!a1 || (v16 = v8) == 0 || !*a3[2])
  {
    sub_D8488(a4, v9, v10, v11, v12, v13, v14, v15);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    MutableCopy = 0;
LABEL_48:
    v33 = 0;
    v19 = 0;
LABEL_49:
    v34 = 0;
    v37 = 0;
LABEL_50:
    v38 = 1;
    if (a4)
    {
      goto LABEL_51;
    }

    goto LABEL_111;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a2);
  if (!MutableCopy)
  {
    ramrod_log_msg("options is NULL");
    v30 = 0;
    v31 = 0;
    v32 = 0;
    goto LABEL_48;
  }

  Length = CFStringGetLength(a1);
  v19 = malloc(Length + 1);
  if (!v19)
  {
    ramrod_log_msg("malloc failed for updaterName");
LABEL_118:
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    goto LABEL_49;
  }

  v20 = CFStringGetLength(a1);
  if (!CFStringGetCString(a1, v19, v20 + 1, 0x8000100u))
  {
    ramrod_log_msg("CFStringGetCString failed");
    goto LABEL_118;
  }

  dylib = ramrod_update_get_dylib(a1);
  if (!*(a3[1] + 41) || ramrod_update_supports_preflight(a1))
  {
    if (dylib)
    {
      ramrod_log_msg("opening %s\n", dylib);
      v26 = dlopen(dylib, 261);
      if (!v26)
      {
        sub_D844C();
        goto LABEL_45;
      }
    }

    else
    {
      v26 = 0;
    }

    if (ramrod_copy_updater_functions(v26, v19, &v81, a4, v21, v22, v23, v24))
    {
      if ((*(v81 + 1))(0, &cf) == 1)
      {
        ramrod_log_msg("%s firmware update not available for this device.\n", v19);
        if (cf)
        {
          ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1015, cf, @"%s: %s updater aborted early returning error", v27, v28, v29, "_update_generic_firmware");
        }

        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        goto LABEL_18;
      }

      Value = CFDictionaryGetValue(MutableCopy, @"PostFDRSealing");
      if (Value)
      {
        v40 = Value;
        TypeID = CFBooleanGetTypeID();
        if (TypeID == CFGetTypeID(v40) && v40 == kCFBooleanTrue)
        {
          *(a3[2] + 12) = 1;
        }
      }

      v42 = AMAuthInstallUpdaterDeviceRestoreInfo();
      v43 = a3[1];
      if (v42 && !*(v43 + 41))
      {
        *(a3[2] + 12) = 1;
        ramrod_log_msg_cf(@"Supports DeviceRestoreInfo, setting ForceRepersonalization and skipping preflightTickets query for tethered restore.");
        v43 = a3[1];
      }

      v44 = a3[2];
      if (*(v43 + 41))
      {
        *(v44 + 12) = 0;
      }

      else if (*(v44 + 12))
      {
        goto LABEL_66;
      }

      v45 = **(*a3 + 80);
      if (v45)
      {
        v32 = v45(v19);
        if (v32)
        {
          CFDictionarySetValue(MutableCopy, @"PreflightTickets", v32);
        }

LABEL_69:
        v33 = ramrod_ticket_copy();
        if (v33)
        {
          ramrod_log_msg("populating AP ticket for updater\n");
          CFDictionarySetValue(MutableCopy, @"APTicket", v33);
        }

        if (ramrod_update_twostage_enabled(a1))
        {
          if (*(a3[1] + 41))
          {
            v46 = "YES";
          }

          else
          {
            v46 = "NO";
          }

          ramrod_log_msg("%s Updater configured for two-stage update. DeferredCommit: %s.\n", v19, v46);
          if (*(a3[1] + 41))
          {
            CFDictionarySetValue(MutableCopy, @"DeferredCommit", kCFBooleanTrue);
            if (qword_1C6BD8 != -1)
            {
              sub_D8424();
            }

            if ((byte_1C6BD1 & 1) == 0 && *(v16 + 33))
            {
              ramrod_log_msg("Not in restore/ramdisk.  Stage-1 of 2 treated as bestEffort.");
              v37 = 1;
LABEL_84:
              v30 = ramrod_updater_copy_options(v19, *(*a3[2] + 8), MutableCopy, 0, &cf, v47, v48, v49);
              if (!v30)
              {
                v74 = v19;
                ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1022, cf, @"%s: failed to create options for %s updater", v50, v51, v52, "_update_generic_firmware");
                v31 = 0;
                v34 = 0;
                goto LABEL_112;
              }

              ramrod_log_msg("creating %sUpdater obj\n", v19);
              v53 = (*v81)(v30, sub_32D20, v19, &cf);
              v34 = v53;
              if (!v53)
              {
                v74 = v19;
                ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1013, cf, @"%s: failed to create %s updater", v54, v55, v56, "_update_generic_firmware");
                goto LABEL_91;
              }

              if ((*(v81 + 1))(v53, &cf))
              {
LABEL_87:
                AMSupportLogInternal(6, "_update_generic_firmware", "%s updater loop done", v19);
                if (!cf)
                {
                  v31 = 0;
                  goto LABEL_18;
                }

                v74 = v19;
                ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1015, cf, @"%s: failed to set %s firmware", v57, v58, v59, "_update_generic_firmware");
LABEL_91:
                v31 = 0;
                goto LABEL_112;
              }

              v76 = v37;
              while (1)
              {
                if (*(a3[2] + 8) >= 0x400u)
                {
                  AMSupportLogInternal(3, "_update_generic_firmware", "Exceeded maximum loops (%d) for %s. error=%@", 1024, v19);
                  v74 = v19;
                  ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1016, cf, @"%s: Exceeded maximum loops for %s", v71, v72, v73, "_update_generic_firmware");
                  goto LABEL_91;
                }

                if (!(*(v81 + 2))(v34, @"queryInfo", 0, &v79, &cf))
                {
                  v74 = @"queryInfo";
                  v75 = v19;
                  ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1016, cf, @"%s: failed to execute %@ on %s updater", v60, v61, v62, "_update_generic_firmware");
                  v31 = 0;
                  goto LABEL_50;
                }

                if (!v79 || (v63 = CFDictionaryGetTypeID(), v63 != CFGetTypeID(v79)))
                {
                  v74 = v19;
                  ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1018, cf, @"%s: out dictionary from %s updater is null or malformed", v60, v61, v62, "_update_generic_firmware");
                  goto LABEL_91;
                }

                ramrod_log_msg("copying %s updater response for loop %u\n", v19, *(a3[2] + 8));
                v64 = (*(*(*a3 + 80) + 8))(v19, v79, a3[2], &v77);
                v31 = v64;
                if (!v64)
                {
                  v74 = v19;
                  ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1020, v77, @"%s: failed to copy response for %s", v65, v66, v67, "_update_generic_firmware");
                  goto LABEL_112;
                }

                AMSupportLogInternal(6, "_update_generic_firmware", "response = %@", v64);
                if (!(*(v81 + 2))(v34, @"performNextStage", v31, &v78, &cf))
                {
                  break;
                }

                AMSupportLogInternal(6, "_update_generic_firmware", "perform command returned dict = %@", v78);
                if (v79)
                {
                  CFRelease(v79);
                  v79 = 0;
                }

                CFRelease(v31);
                v37 = v76;
                if (v78)
                {
                  CFRelease(v78);
                  v78 = 0;
                }

                ++*(a3[2] + 8);
                if ((*(v81 + 1))(v34, &cf))
                {
                  goto LABEL_87;
                }
              }

              v74 = @"performNextStage";
              v75 = v19;
              ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1017, cf, @"%s: failed to execute %@ on %s updater", v68, v69, v70, "_update_generic_firmware");
              v38 = 1;
              v37 = v76;
              if (a4)
              {
                goto LABEL_51;
              }

LABEL_111:
              if (v38)
              {
                goto LABEL_112;
              }

LABEL_18:
              v35 = 1;
              goto LABEL_19;
            }
          }

          else
          {
            CFDictionarySetValue(MutableCopy, @"DeferredCommit", kCFBooleanFalse);
          }
        }

        else
        {
          ramrod_log_msg("%s Updater: Legacy / single-stage updater.\n", v19);
        }

        v37 = 0;
        goto LABEL_84;
      }

LABEL_66:
      v32 = 0;
      goto LABEL_69;
    }

    goto LABEL_118;
  }

  ramrod_log_msg("%s firmware not configured for preflight, skipping this update.\n", v19);
LABEL_45:
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v37 = 0;
  v38 = 0;
  if (!a4)
  {
    goto LABEL_111;
  }

LABEL_51:
  if (!*a4)
  {
    goto LABEL_111;
  }

  AMSupportLogInternal(3, "_update_generic_firmware", "Operation failed: %@", *a4);
  if ((v38 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_112:
  AMSupportLogInternal(3, "_update_generic_firmware", "Underlying error: %@", cf, v74, v75);
  if (v37)
  {
    AMSupportLogInternal(4, "_update_generic_firmware", "Updater (Stage 1) failed, but this is bestEffort - returning success.");
    goto LABEL_18;
  }

  v35 = 0;
LABEL_19:
  if (v81)
  {
    free(v81);
    v81 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v79)
  {
    CFRelease(v79);
    v79 = 0;
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v78)
  {
    CFRelease(v78);
    v78 = 0;
  }

  if (v77)
  {
    CFRelease(v77);
    v77 = 0;
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v19)
  {
    free(v19);
  }

  return v35;
}

BOOL ramrod_update_supports_preflight(const __CFString *a1)
{
  if (!a1)
  {
    sub_D84C4(0);
    return 1;
  }

  v2 = sub_3190C(a1);
  if (!v2)
  {
    AMSupportLogInternal(3, "ramrod_update_supports_preflight", "updaterName %@ not found", a1);
    return 1;
  }

  v3 = v2;
  v4 = v2[2];
  return v4 && v4(0) && *(v3 + 34);
}

CFStringRef *sub_3190C(const __CFString *a1)
{
  sub_4325C();
  if (a1)
  {
    v2 = off_1C05E8;
    v3 = 14;
    v4 = "Updater entry is NULL, defaulting to TRUE";
    while (*v2)
    {
      if (CFStringCompare(a1, *v2, 0) == kCFCompareEqualTo)
      {
        return v2;
      }

      v2 += 6;
      if (!--v3)
      {
        return 0;
      }
    }
  }

  else
  {
    v4 = "updaterName is NULL";
  }

  sub_D84D8(v4);
  return 0;
}

uint64_t ramrod_update_needs_ap_receipt(const __CFString *a1)
{
  if (a1)
  {
    sub_4325C();
    v3 = off_1C05E8;
    v4 = 14;
    while (*v3)
    {
      v2 = CFStringCompare(a1, *v3, 0);
      if (v2 == kCFCompareEqualTo)
      {
        return *(v3 + 35);
      }

      v3 += 6;
      if (!--v4)
      {
        return 0;
      }
    }

    sub_D84E8(v2);
  }

  else
  {
    sub_D84FC(0);
  }

  return 0;
}

CFStringRef ramrod_update_key_to_scrub(const __CFString *a1)
{
  if (a1)
  {
    v2 = sub_3190C(a1);
    if (v2)
    {
      return v2[5];
    }

    AMSupportLogInternal(3, "ramrod_update_key_to_scrub", "updaterName %@ not found", a1);
  }

  else
  {
    sub_D8510(0);
  }

  return 0;
}

CFStringRef ramrod_update_get_dylib(const __CFString *a1)
{
  if (a1)
  {
    v2 = sub_3190C(a1);
    if (v2)
    {
      return v2[3];
    }

    AMSupportLogInternal(3, "ramrod_update_get_dylib", "updaterName %@ not found", a1);
  }

  else
  {
    sub_D8524(0);
  }

  return 0;
}

uint64_t ramrod_update_preflight_looping(const __CFString *a1)
{
  if (a1)
  {
    v2 = sub_3190C(a1);
    if (v2)
    {
      return *(v2 + 36);
    }

    AMSupportLogInternal(3, "ramrod_update_preflight_looping", "updaterName %@ not found", a1);
  }

  else
  {
    sub_D8538(0);
  }

  return 0;
}

__CFArray *ramrod_update_copy_all_names()
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    sub_4325C();
    v1 = 0;
    while (1)
    {
      v2 = off_1C05E8[v1];
      if (!v2)
      {
        break;
      }

      CFArrayAppendValue(Mutable, v2);
      v1 += 6;
      if (v1 == 84)
      {
        return Mutable;
      }
    }

    sub_D854C(Mutable);
    return 0;
  }

  else
  {
    sub_D8598(0);
  }

  return Mutable;
}

__CFArray *ramrod_update_copy_booted_updater_names()
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    sub_4325C();
    v1 = off_1C05E8;
    v2 = 14;
    while (*v1)
    {
      v3 = v1[2];
      if (v3 && (v3)(1))
      {
        CFArrayAppendValue(Mutable, *v1);
      }

      v1 += 6;
      if (!--v2)
      {
        return Mutable;
      }
    }

    sub_D85AC(Mutable);
    return 0;
  }

  else
  {
    sub_D85F8(0);
  }

  return Mutable;
}

uint64_t ramrod_update_should_write_deviceinfo(const __CFString *a1)
{
  if (a1)
  {
    v2 = sub_3190C(a1);
    if (v2)
    {
      return *(v2 + 32);
    }

    AMSupportLogInternal(3, "ramrod_update_should_write_deviceinfo", "updaterName %@ not found", a1);
  }

  else
  {
    sub_D860C(0);
  }

  return 0;
}

CFDictionaryRef ramrod_update_copy_ap_parameters_generating_nonces(CFDictionaryRef theDict)
{
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v2 = MutableCopy;
  if (MutableCopy)
  {
    CFDictionarySetValue(MutableCopy, @"GenerateNonces", kCFBooleanTrue);
    updated = ramrod_update_copy_ap_parameters(v2);
    CFRelease(v2);
    return updated;
  }

  else
  {
    ramrod_log_msg("Failed to allocate ap options dictionary.\n");
    return 0;
  }
}

CFDictionaryRef ramrod_update_copy_ap_parameters(const __CFDictionary *a1)
{
  BOOLean_option = get_BOOLean_option(a1, @"GenerateNonces", 0);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v3 = sub_31F98(@"esdm-fuses");
    if (v3)
    {
      CFDictionarySetValue(Mutable, kAMAuthInstallApParameterSiKA, v3);
    }

    v4 = sub_31F98(@"chip-epoch");
    if (v4)
    {
      CFDictionarySetValue(Mutable, kAMAuthInstallApParameterCertificateEpoch, v4);
    }

    if (BOOLean_option && _ramrod_device_has_sandcat(v4, v5))
    {
      v14 = 2;
      valuePtr = 0;
      cf = 0;
      value = 0;
      if (ramrod_generate_apslot_copy_nonce(&valuePtr, &value))
      {
        v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
        if (v6)
        {
          v7 = v6;
          CFDictionarySetValue(Mutable, kAMAuthInstallApParameterApNonceSlotID, v6);
          CFRelease(v7);
        }

        if (value)
        {
          CFDictionarySetValue(Mutable, kAMAuthInstallApParameterApNonce, value);
          CFRelease(value);
        }
      }

      else
      {
        ramrod_log_msg("unable to read the AP slot id will not set.\n");
      }

      if (ramrod_generate_sepslot_copy_nonce(&v14, &cf))
      {
        v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v14);
        if (v8)
        {
          v9 = v8;
          CFDictionarySetValue(Mutable, kAMAuthInstallApParameterSepNonceSlotID, v8);
          CFRelease(v9);
        }

        if (cf)
        {
          CFDictionarySetValue(Mutable, kAMAuthInstallApParameterSepNonce, cf);
          CFRelease(cf);
        }
      }

      else
      {
        ramrod_log_msg("unable to read the SEP slot id will not set.\n");
      }
    }

    Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, Mutable);
  }

  else
  {
    sub_D8620(0);
    Copy = 0;
  }

  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return Copy;
}

CFNumberRef sub_31F98(const __CFString *a1)
{
  v2 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen");
  if (v2)
  {
    v3 = v2;
    CFProperty = IORegistryEntryCreateCFProperty(v2, a1, kCFAllocatorDefault, 0);
    if (!CFProperty)
    {
      ramrod_log_msg_cf(@"unable to lookup %@ property\n", a1);
      v8 = 0;
LABEL_11:
      IOObjectRelease(v3);
      return v8;
    }

    v5 = CFProperty;
    v6 = CFGetTypeID(CFProperty);
    if (v6 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(v5);
      v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, BytePtr);
      if (v8)
      {
LABEL_10:
        CFRelease(v5);
        goto LABEL_11;
      }

      ramrod_log_msg_cf(@"could not create CFNumber for %@\n", a1);
    }

    else
    {
      ramrod_log_msg_cf(@"%@ property is not a CFData\n", a1);
    }

    v8 = 0;
    goto LABEL_10;
  }

  ramrod_log_msg("unable to find 'chosen' registry entry\n");
  return 0;
}

CFMutableDictionaryRef ramrod_update_copy_deviceinfo_with_options(const __CFDictionary *a1, CFErrorRef *a2)
{
  v105 = 0;
  v106[0] = 0;
  v104 = 0;
  sub_4325C();
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    sub_D8634(a2, v3, v4, v5, v6, v7, v8, v9);
LABEL_147:
    v85 = 1;
    goto LABEL_119;
  }

  v18 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v18)
  {
    sub_D8864(a2, v11, v12, v13, v14, v15, v16, v17);
    goto LABEL_147;
  }

  v26 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v26)
  {
    sub_D8828(a2, v19, v20, v21, v22, v23, v24, v25);
    goto LABEL_147;
  }

  v34 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v34)
  {
    sub_D87EC(a2, v27, v28, v29, v30, v31, v32, v33);
    goto LABEL_147;
  }

  if (!a1)
  {
    sub_D87A4(a2, v27, v28, v29, v30, v31, v32, v33);
    goto LABEL_147;
  }

  theDict = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!theDict)
  {
    sub_D8790(0);
    goto LABEL_147;
  }

  v35 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v35)
  {
    sub_D877C(0);
    goto LABEL_147;
  }

  v100 = a1;
  v36 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v97 = v35;
  if (!v36)
  {
    sub_D8768(0);
    goto LABEL_147;
  }

  v37 = v36;
  CFDictionarySetValue(v36, @"CreateFilesystemPartitions", kCFBooleanFalse);
  CFDictionarySetValue(theDict, @"RestoreOptions", v37);
  if (CFDictionaryContainsKey(a1, @"PreflightRequired"))
  {
    Value = CFDictionaryGetValue(a1, @"PreflightRequired");
    CFDictionarySetValue(v35, @"PreflightRequired", Value);
  }

  if (CFDictionaryContainsKey(a1, @"BootedUpdate"))
  {
    v39 = CFDictionaryGetValue(a1, @"BootedUpdate");
    CFDictionarySetValue(v35, @"BootedUpdate", v39);
    v102 = v39 == kCFBooleanTrue;
  }

  else
  {
    v102 = 0;
  }

  v93 = Mutable;
  v94 = v26;
  v95 = v18;
  v99 = v34;
  if (CFDictionaryContainsKey(a1, @"PreflightContext"))
  {
    v43 = CFDictionaryGetValue(a1, @"PreflightContext");
    CFDictionarySetValue(v35, @"PreflightContext", v43);
    v44 = CFStringCompare(v43, @"Limited", 0) != kCFCompareEqualTo;
  }

  else
  {
    v44 = 1;
  }

  v45 = a1;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  MutableCopy = 0;
  if (v102)
  {
    v44 = 1;
  }

  v103 = v44;
  v51 = theDict;
  while (1)
  {
    if (v47)
    {
      CFRelease(v47);
    }

    if (v105)
    {
      CFRelease(v105);
      v105 = 0;
    }

    if (v48)
    {
      CFRelease(v48);
    }

    if (v49)
    {
      CFRelease(v49);
    }

    if (v106[0])
    {
      CFRelease(v106[0]);
      v106[0] = 0;
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (v104)
    {
      free(v104);
      v104 = 0;
    }

    v52 = &off_1C05E8[6 * v46];
    if (!*v52)
    {
      v88 = v106[0];
      v89 = @"%s: Updater Name is NULL at index %d";
LABEL_130:
      ramrod_create_error_cf(a2, @"RamrodErrorDomain", 6, v88, v89, v40, v41, v42, "ramrod_update_copy_deviceinfo_with_options");
      goto LABEL_137;
    }

    ramrod_log_msg_cf(@"Preflight loop %d for updater %@..", ++v46, *v52);
    v53 = v52[2];
    if (!v53)
    {
      goto LABEL_47;
    }

    if (!v103)
    {
      if ((v53)(1))
      {
        v54 = 0;
        goto LABEL_42;
      }

      v53 = v52[2];
    }

    if (!(v53)(v102))
    {
LABEL_47:
      ramrod_log_msg_cf(@"Updater %@ not supported on this device..", *v52, v90);
LABEL_49:
      v47 = 0;
      v48 = 0;
      v49 = 0;
      MutableCopy = 0;
      goto LABEL_67;
    }

    v54 = 1;
LABEL_42:
    if (CFDictionaryGetValue(v45, *v52) == kCFBooleanFalse)
    {
      ramrod_log_msg_cf(@"Updater %@ should be skipped for %s..", *v52, "ramrod_update_copy_deviceinfo_with_options");
      goto LABEL_49;
    }

    CStringPtr = CFStringGetCStringPtr(*v52, 0x8000100u);
    if (!CStringPtr)
    {
      v88 = v106[0];
      v89 = @"%s: failed convert updaterName %@";
      goto LABEL_130;
    }

    v56 = CStringPtr;
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v35);
    if (!MutableCopy)
    {
      ramrod_create_error_cf(a2, @"RamrodErrorDomain", 6, v106[0], @"%s: Failed to copy subOptions for %s", v57, v58, v59, "ramrod_update_copy_deviceinfo_with_options");
      goto LABEL_137;
    }

    CFDictionarySetValue(v51, @"Options", MutableCopy);
    ramrod_update_nvram_overrides(v56, MutableCopy);
    if (ramrod_update_twostage_enabled(*v52))
    {
      ramrod_log_msg("%s Updater configured for two-stage update. DeferredCommit: YES.\n", v56);
      CFDictionarySetValue(MutableCopy, @"DeferredCommit", kCFBooleanTrue);
    }

    else
    {
      ramrod_log_msg("%s Updater: Legacy / single-stage updater.\n", v56);
    }

    if (os_parse_boot_arg_int())
    {
      CFDictionarySetValue(MutableCopy, @"SkipSameVersion", kCFBooleanFalse);
      CFDictionarySetValue(MutableCopy, @"RestoreInternal", kCFBooleanTrue);
    }

    if (*(v52 + 36))
    {
      v48 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      if (!v48)
      {
        ramrod_create_error_cf(a2, @"RamrodErrorDomain", 6, v106[0], @"%s: Failed to create queryResults array for %s", v60, v61, v62, "ramrod_update_copy_deviceinfo_with_options");
        goto LABEL_137;
      }

      if ((v54 & 1) == 0)
      {
LABEL_56:
        ramrod_log_msg_cf(@"overriding updater context to BootedOS for %sUpdater", v56);
        CFDictionarySetValue(MutableCopy, @"PreflightContext", @"BootedOS");
      }
    }

    else
    {
      v48 = 0;
      if ((v54 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    v63 = dlopen(v52[3], 261);
    if (!v63)
    {
      v91 = dlerror();
      ramrod_log_msg_cf(@"Failed to open updater library on device that should have %s: %s", v56, v91);
      goto LABEL_65;
    }

    if (!ramrod_copy_updater_functions(v63, v56, &v104, a2, v64, v65, v66, v67))
    {
      AMSupportLogInternal(3, "ramrod_update_copy_deviceinfo_with_options", "ramrod_copy_updater_functions failed on %s");
      goto LABEL_137;
    }

    v68 = (v104[1])(0, v106);
    if (v106[0])
    {
      goto LABEL_136;
    }

    if (v68)
    {
      ramrod_log_msg_cf(@"Updater %s returned isDone(NULL)=true (ie: module should skip), continuing.", v56, v90);
LABEL_65:
      v49 = 0;
      v47 = 0;
      goto LABEL_66;
    }

    ramrod_log_msg_cf(@"creating %sUpdater obj", v56);
    v69 = (*v104)(v51, sub_32D20, v56, v106);
    v47 = v69;
    if (!v69)
    {
      break;
    }

    v70 = (v104[1])(v69, v106);
    if (v106[0])
    {
LABEL_136:
      AMSupportLogInternal(3, "ramrod_update_copy_deviceinfo_with_options", "%sUpdater fp_isDone returned error: %@", v56, v106[0]);
      goto LABEL_137;
    }

    if (v70)
    {
      ramrod_log_msg_cf(@"Updater %s returned isDone(obj)=true (ie: module should skip), continuing.", v56);
      v49 = 0;
      goto LABEL_66;
    }

    v71 = 0;
    v96 = 0;
LABEL_74:
    if (v71 <= 1024)
    {
      v72 = 1024;
    }

    else
    {
      v72 = v71;
    }

    v73 = v72 - v71++ + 1;
    do
    {
      if (v105)
      {
        CFRelease(v105);
        v105 = 0;
      }

      if (!--v73)
      {
        sub_D86EC();
        goto LABEL_137;
      }

      if (v48)
      {
        ramrod_log_msg_cf(@"Calling %sUpdater fp_isDone", v56);
        v74 = (v104[1])(v47, v106);
        if (v106[0])
        {
          goto LABEL_136;
        }

        if (v74)
        {
          break;
        }
      }

      ramrod_log_msg_cf(@"Calling %sUpdater fp_ExecCmd", v56, v90);
      if ((v104[2])(v47, @"queryInfo", 0, &v105, v106))
      {
        if (v105)
        {
          TypeID = CFDictionaryGetTypeID();
          v51 = theDict;
          if (TypeID == CFGetTypeID(v105) && CFDictionaryGetValue(v100, @"PreflightRequired") == kCFBooleanFalse)
          {
            v96 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v105);
            if (!v96)
            {
              goto LABEL_137;
            }

            v79 = v52[5];
            if (v79)
            {
              key = v52[5];
              if (CFDictionaryContainsKey(v96, v79))
              {
                AMSupportLogInternal(3, "ramrod_update_copy_deviceinfo_with_options", "Removing updater reference from DeviceInfo to avoid serialization failures.");
                CFDictionaryRemoveValue(v96, key);
                CFRelease(v105);
                v105 = v96;
                v96 = 0;
              }
            }
          }
        }

        else
        {
          v51 = theDict;
        }

        v80 = v105;
        if (v48)
        {
          CFArrayAppendValue(v48, v105);
          v80 = v105;
        }

        if (!v80 || v106[0])
        {
          if (v80 | v106[0])
          {
            v83 = "NULL";
            if (v80)
            {
              v83 = "NOT-NULL";
            }

            ramrod_log_msg_cf(@"Updater %s QueryInfo succeeded, but bad results. Results=%s, Error=%@", v56, v83, v106[0]);
            if (*(v52 + 34))
            {
              ramrod_create_error_cf(a2, @"RamrodErrorDomain", 1016, v106[0], @"%s: Preflight QueryInfo succeeded, but improper results on %s", v40, v41, v42, "ramrod_update_copy_deviceinfo_with_options");
              goto LABEL_137;
            }
          }

          else
          {
            ramrod_log_msg_cf(@"Updater %s returned no personalization info (ie: module should skip), continuing.", v56);
          }

          if (!v48)
          {
LABEL_117:
            v49 = v96;
            v35 = v97;
            goto LABEL_66;
          }
        }

        else
        {
          ramrod_log_msg_cf(@"Populated deviceinfo for %s, continuing.", v56);
          if (v48)
          {
            v81 = v48;
          }

          else
          {
            v81 = v105;
          }

          if (*(v52 + 34))
          {
            v82 = v95;
          }

          else
          {
            v82 = v94;
          }

          CFDictionarySetValue(v82, *v52, v81);
          if (!v48)
          {
            goto LABEL_117;
          }
        }

        goto LABEL_74;
      }

      AMSupportLogInternal(3, "ramrod_update_copy_deviceinfo_with_options", "fp_ExecCmd failed on %s, continuing to next updater.", v56);
      if (*(v52 + 33) == 1)
      {
        ramrod_log_msg("%s updater failed but not reporting error since it is best effort\n", v56);
      }

      else
      {
        CFDictionarySetValue(v99, *v52, v52[1]);
        v90 = v56;
        ramrod_create_error_cf(a2, @"RamrodErrorDomain", 1016, v106[0], @"%s: Preflight QueryInfo failed on %s", v75, v76, v77, "ramrod_update_copy_deviceinfo_with_options");
      }

      ++v71;
    }

    while (v48);
    v35 = v97;
    v51 = theDict;
    v49 = v96;
LABEL_66:
    v45 = v100;
LABEL_67:
    if (v46 == 14)
    {
      updated = ramrod_update_copy_ap_parameters(v45);
      Mutable = v93;
      CFDictionaryAddValue(v93, @"DeviceInfo", v95);
      CFDictionaryAddValue(v93, @"DeviceInfoDisabled", v94);
      CFDictionaryAddValue(v93, @"DeviceInfoFailures", v99);
      CFDictionaryAddValue(v93, @"ApParameters", updated);
      v85 = 0;
      goto LABEL_119;
    }
  }

  sub_D8670();
LABEL_137:
  v85 = 1;
  Mutable = v93;
LABEL_119:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  if (v104)
  {
    free(v104);
    v104 = 0;
  }

  v86 = v85 ^ 1;
  if (!Mutable)
  {
    v86 = 1;
  }

  if ((v86 & 1) == 0)
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}