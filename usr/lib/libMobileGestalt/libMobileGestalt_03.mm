CFNumberRef MobileGestalt_copy_coverglassSerialNumber_obj()
{
  v0 = MGCopyAnswer(@"OWi11Urd09rDmPVy1z5dOQ");

  return v0;
}

CFNumberRef MobileGestalt_copy_dMin_obj()
{
  v0 = MGCopyAnswer(@"DMin");

  return v0;
}

UInt8 *MobileGestalt_copy_debugBoardRevision()
{
  v0 = MGCopyAnswer(@"DebugBoardRevision");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0xE1945D7AuLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_debugBoardRevision_obj()
{
  v0 = MGCopyAnswer(@"DebugBoardRevision");

  return v0;
}

uint64_t MobileGestalt_get_deviceBackGlassMaterial(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"bUJD9zcOcitJwFA0ieIkxA");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F2868();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_deviceBackingColor(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"CJcvxERO5v/3IWjDFKZKRw");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F28E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_deviceBrand(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"fuKL2rMywRgQF1wowOA/cg");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F2968();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

char *MobileGestalt_copy_deviceClass()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"DeviceClass");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_deviceClass_obj()
{
  v0 = MGCopyAnswer(@"DeviceClass");

  return v0;
}

char *MobileGestalt_copy_deviceColor()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"DeviceColor");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_deviceColor_obj()
{
  v0 = MGCopyAnswer(@"DeviceColor");

  return v0;
}

uint64_t MobileGestalt_get_deviceColorMapPolicy(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"DeviceColorMapPolicy");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F2A68();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

float MobileGestalt_get_deviceCornerRadius(void *a1)
{
  v1 = a1;
  valuePtr = -1082130432;
  v2 = MGCopyAnswer(@"DeviceCornerRadius");
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v3, kCFNumberFloat32Type, &valuePtr))
      {
LABEL_10:
        CFRelease(v3);
        v6 = *&valuePtr;
        goto LABEL_11;
      }

      v5 = [v1 log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v5 = [v1 log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F2AE8();
      }
    }

    goto LABEL_10;
  }

  v6 = -1.0;
LABEL_11:

  return v6;
}

uint64_t MobileGestalt_get_deviceCoverGlassCoating(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"DeviceCoverGlassCoating");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F2B68();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_deviceCoverGlassColor(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"9N7qIucqhr0Cy2/Tk27/hw");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F2BE8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_deviceCoverGlassMaterial(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"gnQwi8RnEeMG9qBe3IUKrg");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F2C68();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_deviceCoverMaterial(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"iaegRQa4jNGOuTA6hnZmcQ");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F2CE8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

CFNumberRef MobileGestalt_copy_deviceDBVDependentVSHCompensationTraits_obj()
{
  v0 = MGCopyAnswer(@"DeviceDBVDependentVSHCompensationTraits");

  return v0;
}

char *MobileGestalt_copy_deviceEnclosureColor()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"DeviceEnclosureColor");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_deviceEnclosureColor_obj()
{
  v0 = MGCopyAnswer(@"DeviceEnclosureColor");

  return v0;
}

uint64_t MobileGestalt_get_deviceEnclosureMaterial(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"AtmPEO/j+Pdr8+WKxv4Aaw");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F2D68();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_deviceEnclosureRGBColor(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"DeviceEnclosureRGBColor");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F2DE8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_deviceHasEmbeddedSIMOnlyBoard(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"DeviceHasEmbeddedSIMOnlyBoard");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F2E68();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_deviceHousingColor(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"NJsxTSI2WuD+13rxShXX9w");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F2EE8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

UInt8 *MobileGestalt_copy_deviceHousingColorUncooked()
{
  v0 = MGCopyAnswer(@"0GizaJLOyfzgAbxQ/5aniA");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x624029D6uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_deviceHousingColorUncooked_obj()
{
  v0 = MGCopyAnswer(@"0GizaJLOyfzgAbxQ/5aniA");

  return v0;
}

UInt8 *MobileGestalt_copy_deviceKeyboardCalibration()
{
  v0 = MGCopyAnswer(@"DrrXMX9VWX7bMj0MZuhTUA");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0xB8B64F70uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_deviceKeyboardCalibration_obj()
{
  v0 = MGCopyAnswer(@"DrrXMX9VWX7bMj0MZuhTUA");

  return v0;
}

CFNumberRef MobileGestalt_copy_deviceLaunchTimeLimitScale_obj()
{
  v0 = MGCopyAnswer(@"emXA9B552rnSoI7xXE91DA");

  return v0;
}

uint64_t MobileGestalt_get_deviceLowBatteryLevel(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"DeviceLowBatteryLevel");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F2F68();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_deviceMemorySize(void *a1)
{
  v1 = a1;
  v2 = -1;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"DeviceMemorySize");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt64Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F2FE8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_deviceMesaType(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"DeviceMesaType");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F3068();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

char *MobileGestalt_copy_deviceName()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"DeviceName");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_deviceName_obj()
{
  v0 = MGCopyAnswer(@"DeviceName");

  return v0;
}

char *MobileGestalt_copy_deviceNameString()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"device-name");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_deviceNameString_obj()
{
  v0 = MGCopyAnswer(@"device-name");

  return v0;
}

uint64_t MobileGestalt_get_deviceRGBColor(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"DeviceRGBColor");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F30E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

CFNumberRef MobileGestalt_copy_deviceSceneUpdateTimeLimitScale_obj()
{
  v0 = MGCopyAnswer(@"QbQzuIbef01P4JeoL9EmKg");

  return v0;
}

uint64_t MobileGestalt_get_deviceStingHousingColor(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"rtIWWK0kM4F+ZMkIqhE7yQ");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F3168();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_deviceSubBrand(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"wtUF1NceYeLT6IHovZvocw");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F31E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_deviceSupportsSWProRes(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"oWUSugFxOVhHOKYv7DawLw");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F3268();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_deviceSupportsSiriUnderstandingOnDevice(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"DeviceSupportsSiriUnderstandingOnDevice");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F32E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

UInt8 *MobileGestalt_copy_deviceSupportsVSHCompensation()
{
  v0 = MGCopyAnswer(@"DeviceSupportsVSHCompensation");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0xBFBDB711uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_deviceSupportsVSHCompensation_obj()
{
  v0 = MGCopyAnswer(@"DeviceSupportsVSHCompensation");

  return v0;
}

char *MobileGestalt_copy_deviceVariant()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"DeviceVariant");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_deviceVariant_obj()
{
  v0 = MGCopyAnswer(@"DeviceVariant");

  return v0;
}

char *MobileGestalt_copy_deviceVariantGuess()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"DeviceVariantGuess");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_deviceVariantGuess_obj()
{
  v0 = MGCopyAnswer(@"DeviceVariantGuess");

  return v0;
}

UInt8 *MobileGestalt_copy_diagData()
{
  v0 = MGCopyAnswer(@"DiagData");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x778DE7B4uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_diagData_obj()
{
  v0 = MGCopyAnswer(@"DiagData");

  return v0;
}

uint64_t MobileGestalt_get_dieId(void *a1)
{
  v1 = a1;
  v2 = -1;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"DieId");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt64Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F3368();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

CFNumberRef MobileGestalt_copy_diskUsage_obj()
{
  v0 = MGCopyAnswer(@"DiskUsage");

  return v0;
}

uint64_t MobileGestalt_get_displayBootRotation(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"DisplayBootRotation");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F33E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

UInt8 *MobileGestalt_copy_displayDriverICChipID()
{
  v0 = MGCopyAnswer(@"DisplayDriverICChipID");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0xD53BD6D1uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_displayDriverICChipID_obj()
{
  v0 = MGCopyAnswer(@"DisplayDriverICChipID");

  return v0;
}

uint64_t MobileGestalt_get_displayInactiveBrightnessClass(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"DisplayInactiveBrightnessClass");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F3468();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_displayMaxNits(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"awLQ2KgwSTZswuKgSSjmEQ");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F34E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

char *MobileGestalt_copy_dynamicFunctionRowSerialNumber()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"Bb01MNJ0ezfSmzucKZXrsg");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_dynamicFunctionRowSerialNumber_obj()
{
  v0 = MGCopyAnswer(@"Bb01MNJ0ezfSmzucKZXrsg");

  return v0;
}

uint64_t MobileGestalt_get_eOSHalleyConfiguration(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"EOSHalleyConfiguration");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F3568();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_eUICCChipID(void *a1)
{
  v1 = a1;
  v2 = -1;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"EUICCChipID");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt64Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F35E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

CFNumberRef MobileGestalt_copy_ephemeralDataModeOverride_obj()
{
  v0 = MGCopyAnswer(@"EphemeralDataModeOverride");

  return v0;
}

char *MobileGestalt_copy_ethernetMacAddress()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"EthernetMacAddress");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_ethernetMacAddress_obj()
{
  v0 = MGCopyAnswer(@"EthernetMacAddress");

  return v0;
}

char *MobileGestalt_copy_extendedLOMMacAddress()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"ExtendedLOMMacAddress");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_extendedLOMMacAddress_obj()
{
  v0 = MGCopyAnswer(@"ExtendedLOMMacAddress");

  return v0;
}

uint64_t MobileGestalt_get_extendedSecurityDomain(void *a1)
{
  v1 = a1;
  v2 = -1;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"ExtendedSecurityDomain");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt64Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F3668();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_facetimeBackCameraTemporalNoiseReductionMode(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"FaceTimeBackCameraTemporalNoiseReductionMode");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F36E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_facetimeBitRate2G(void *a1)
{
  v1 = a1;
  v2 = -1;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"FaceTimeBitRate2G");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt64Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F3768();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_facetimeBitRate3G(void *a1)
{
  v1 = a1;
  v2 = -1;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"FaceTimeBitRate3G");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt64Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F37E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_facetimeBitRateLTE(void *a1)
{
  v1 = a1;
  v2 = -1;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"FaceTimeBitRateLTE");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt64Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F3868();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_facetimeBitRateWiFi(void *a1)
{
  v1 = a1;
  v2 = -1;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"FaceTimeBitRateWiFi");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt64Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F38E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

CFNumberRef MobileGestalt_copy_facetimeDecodings_obj()
{
  v0 = MGCopyAnswer(@"FaceTimeDecodings");

  return v0;
}

CFNumberRef MobileGestalt_copy_facetimeEncodings_obj()
{
  v0 = MGCopyAnswer(@"FaceTimeEncodings");

  return v0;
}

uint64_t MobileGestalt_get_facetimeFrontCameraTemporalNoiseReductionMode(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"FaceTimeFrontCameraTemporalNoiseReductionMode");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F3968();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

CFNumberRef MobileGestalt_copy_facetimePreferredDecoding_obj()
{
  v0 = MGCopyAnswer(@"FaceTimePreferredDecoding");

  return v0;
}

CFNumberRef MobileGestalt_copy_facetimePreferredEncoding_obj()
{
  v0 = MGCopyAnswer(@"FaceTimePreferredEncoding");

  return v0;
}

UInt8 *MobileGestalt_copy_firmwareNonce()
{
  v0 = MGCopyAnswer(@"FirmwareNonce");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x84AEFC02uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_firmwareNonce_obj()
{
  v0 = MGCopyAnswer(@"FirmwareNonce");

  return v0;
}

CFNumberRef MobileGestalt_copy_firmwarePreflightInfo_obj()
{
  v0 = MGCopyAnswer(@"FirmwarePreflightInfo");

  return v0;
}

char *MobileGestalt_copy_firmwareVersion()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"FirmwareVersion");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_firmwareVersion_obj()
{
  v0 = MGCopyAnswer(@"FirmwareVersion");

  return v0;
}

CFNumberRef MobileGestalt_copy_firstPartyLaunchTimeLimitScale_obj()
{
  v0 = MGCopyAnswer(@"NUYAz1eq3Flzt7ZQxXC/ng");

  return v0;
}

char *MobileGestalt_copy_framebufferIdentifier()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"FramebufferIdentifier");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_framebufferIdentifier_obj()
{
  v0 = MGCopyAnswer(@"FramebufferIdentifier");

  return v0;
}

CFNumberRef MobileGestalt_copy_frontCameraOffsetFromDisplayCenter_obj()
{
  v0 = MGCopyAnswer(@"FrontCameraOffsetFromDisplayCenter");

  return v0;
}

uint64_t MobileGestalt_get_frontCameraRotationForISP(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"FrontCameraRotationForISP");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F39E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

CFNumberRef MobileGestalt_copy_frontCameraRotationFromDisplayNormal_obj()
{
  v0 = MGCopyAnswer(@"FrontCameraRotationFromDisplayNormal");

  return v0;
}

uint64_t MobileGestalt_get_frontFacingCameraHFRVideoCapture1080PMaxFPS(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"mL1lk3ZVGDFUQhxU9YLW6Q");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F3A68();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_frontFacingCameraHFRVideoCapture720PMaxFPS(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"TqAfAH10ANDgiG7V2u8BkQ");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F3AE8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_frontFacingCameraMaxVideoZoomFactor(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"FrontFacingCameraMaxVideoZoomFactor");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F3B68();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

char *MobileGestalt_copy_frontFacingCameraModuleSerialNumber()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"qlcdNkarcGLcbW3HvBhwaA");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_frontFacingCameraModuleSerialNumber_obj()
{
  v0 = MGCopyAnswer(@"qlcdNkarcGLcbW3HvBhwaA");

  return v0;
}

uint64_t MobileGestalt_get_frontFacingCameraStillDurationForBurst(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"TDM8SEI14n2KE9PGHO0a4A");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F3BE8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_frontFacingCameraVideoCapture1080PMaxFPS(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"3yzXj0lJhQi+r3kgQlwiOg");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F3C68();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_frontFacingCameraVideoCapture4KMaxFPS(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"cux58RcuSiBhpxWnT3pE4A");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F3CE8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_frontFacingCameraVideoCapture720PMaxFPS(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"0AFeHRmliNJ4pSlVb8ltZA");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F3D68();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

char *MobileGestalt_copy_frontFacingIRCameraModuleSerialNumber()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"2kuITg6XPwXl8zbpx+hoCw");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_frontFacingIRCameraModuleSerialNumber_obj()
{
  v0 = MGCopyAnswer(@"2kuITg6XPwXl8zbpx+hoCw");

  return v0;
}

char *MobileGestalt_copy_frontFacingIRStructuredLightProjectorModuleSerialNumber()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"wH7fRq4TDdYG2pN1KDQW/A");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_frontFacingIRStructuredLightProjectorModuleSerialNumber_obj()
{
  v0 = MGCopyAnswer(@"wH7fRq4TDdYG2pN1KDQW/A");

  return v0;
}

char *MobileGestalt_copy_gsDeviceName()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"GSDeviceName");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_gsDeviceName_obj()
{
  v0 = MGCopyAnswer(@"GSDeviceName");

  return v0;
}

char *MobileGestalt_copy_hwModelDescriptionForAnalytics()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"uCIk6n9Am5fsV2cTjhqFQw");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_hwModelDescriptionForAnalytics_obj()
{
  v0 = MGCopyAnswer(@"uCIk6n9Am5fsV2cTjhqFQw");

  return v0;
}

char *MobileGestalt_copy_hwModelDescriptionForAudio()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"dW5fpt/6HhaTbnK/UqL6cA");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_hwModelDescriptionForAudio_obj()
{
  v0 = MGCopyAnswer(@"dW5fpt/6HhaTbnK/UqL6cA");

  return v0;
}

char *MobileGestalt_copy_hwModelDescriptionForAutomatedTesting()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"oQNDePXjSD1z7W0ddqt9tg");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_hwModelDescriptionForAutomatedTesting_obj()
{
  v0 = MGCopyAnswer(@"oQNDePXjSD1z7W0ddqt9tg");

  return v0;
}

char *MobileGestalt_copy_hwModelDescriptionForCamera()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"yAfB6E2v0++rHtdW7SDg8w");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

char *MobileGestalt_copy_hwModelDescriptionForPowerPerf()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"b4e7mEbjqfewD6oXmo9U5g");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_hwModelDescriptionForPowerPerf_obj()
{
  v0 = MGCopyAnswer(@"b4e7mEbjqfewD6oXmo9U5g");

  return v0;
}

char *MobileGestalt_copy_hwModelDescriptionForUserVisibility()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"ZGraRMW0TsxCvONeeJ5C2w");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_hwModelDescriptionForUserVisibility_obj()
{
  v0 = MGCopyAnswer(@"ZGraRMW0TsxCvONeeJ5C2w");

  return v0;
}

char *MobileGestalt_copy_hwModelStr()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"HWModelStr");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_hwModelStr_obj()
{
  v0 = MGCopyAnswer(@"HWModelStr");

  return v0;
}

char *MobileGestalt_copy_hwModelUniqueStr()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"HWModelUniqueStr");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_hwModelUniqueStr_obj()
{
  v0 = MGCopyAnswer(@"HWModelUniqueStr");

  return v0;
}

uint64_t MobileGestalt_get_hapticsPowerControlFeatures(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"s2qnnwugvb7yAD70+Uho7g");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F3DE8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

char *MobileGestalt_copy_hardwarePlatform()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"HardwarePlatform");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_hardwarePlatform_obj()
{
  v0 = MGCopyAnswer(@"HardwarePlatform");

  return v0;
}

float MobileGestalt_get_hiccoughInterval(void *a1)
{
  v1 = a1;
  valuePtr = -1082130432;
  v2 = MGCopyAnswer(@"hiccough-interval");
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v3, kCFNumberFloat32Type, &valuePtr))
      {
LABEL_10:
        CFRelease(v3);
        v6 = *&valuePtr;
        goto LABEL_11;
      }

      v5 = [v1 log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v5 = [v1 log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F3E68();
      }
    }

    goto LABEL_10;
  }

  v6 = -1.0;
LABEL_11:

  return v6;
}

uint64_t MobileGestalt_get_highestSupportedVideoMode(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"HighestSupportedVideoMode");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F3EE8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_homeButtonType(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"JwLB44/jEB8aFDpXQ16Tuw");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F3F68();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

char *MobileGestalt_copy_humanReadableProductVersionString()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"HumanReadableProductVersionString");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_humanReadableProductVersionString_obj()
{
  v0 = MGCopyAnswer(@"HumanReadableProductVersionString");

  return v0;
}

CFNumberRef MobileGestalt_copy_iOSurfaceFormatDictionary_obj()
{
  v0 = MGCopyAnswer(@"AoKnINTLPoKML3ctoP0AZg");

  return v0;
}

char *MobileGestalt_copy_iceFallID()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"hfs43coKE3iWlCwnqPgBpg");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_iceFallID_obj()
{
  v0 = MGCopyAnswer(@"hfs43coKE3iWlCwnqPgBpg");

  return v0;
}

UInt8 *MobileGestalt_copy_icefallInfo()
{
  v0 = MGCopyAnswer(@"MW1p1oJH8nDJc6igOb8G4g");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x58DE8EC0uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_icefallInfo_obj()
{
  v0 = MGCopyAnswer(@"MW1p1oJH8nDJc6igOb8G4g");

  return v0;
}

char *MobileGestalt_copy_image4CryptoHashMethod()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"Image4CryptoHashMethod");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_image4CryptoHashMethod_obj()
{
  v0 = MGCopyAnswer(@"Image4CryptoHashMethod");

  return v0;
}

char *MobileGestalt_copy_integratedCircuitCardIdentifier()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"IntegratedCircuitCardIdentifier");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_integratedCircuitCardIdentifier_obj()
{
  v0 = MGCopyAnswer(@"IntegratedCircuitCardIdentifier");

  return v0;
}

char *MobileGestalt_copy_integratedCircuitCardIdentifier2()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"lHMDJnC58naUz2rOCJyVIw");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_integratedCircuitCardIdentifier2_obj()
{
  v0 = MGCopyAnswer(@"lHMDJnC58naUz2rOCJyVIw");

  return v0;
}

char *MobileGestalt_copy_internationalMobileEquipmentIdentity()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"InternationalMobileEquipmentIdentity");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_internationalMobileEquipmentIdentity_obj()
{
  v0 = MGCopyAnswer(@"InternationalMobileEquipmentIdentity");

  return v0;
}

char *MobileGestalt_copy_internationalMobileEquipmentIdentity2()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"xRyzf9zFE/ycr/wJPweZvQ");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_internationalMobileEquipmentIdentity2_obj()
{
  v0 = MGCopyAnswer(@"xRyzf9zFE/ycr/wJPweZvQ");

  return v0;
}

char *MobileGestalt_copy_inverseDeviceID()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"InverseDeviceID");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_inverseDeviceID_obj()
{
  v0 = MGCopyAnswer(@"InverseDeviceID");

  return v0;
}

char *MobileGestalt_copy_jasperSerialNumber()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"dJvRNnysMoubdy0ZCK2aRQ");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_jasperSerialNumber_obj()
{
  v0 = MGCopyAnswer(@"dJvRNnysMoubdy0ZCK2aRQ");

  return v0;
}

UInt8 *MobileGestalt_copy_liDARCalibrationPrCL()
{
  v0 = MGCopyAnswer(@"LiDARCalibrationPrCL");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0xC57B2BCFuLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_liDARCalibrationPrCL_obj()
{
  v0 = MGCopyAnswer(@"LiDARCalibrationPrCL");

  return v0;
}

char *MobileGestalt_copy_localizedDeviceNameString()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"device-name-localized");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_localizedDeviceNameString_obj()
{
  v0 = MGCopyAnswer(@"device-name-localized");

  return v0;
}

CFNumberRef MobileGestalt_copy_lowPowerExpressModesSupported_obj()
{
  v0 = MGCopyAnswer(@"LowPowerExpressModesSupported");

  return v0;
}

char *MobileGestalt_copy_lunaFlexSerialNumber()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"LunaFlexSerialNumber");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_lunaFlexSerialNumber_obj()
{
  v0 = MGCopyAnswer(@"LunaFlexSerialNumber");

  return v0;
}

UInt8 *MobileGestalt_copy_lynxPublicKey()
{
  v0 = MGCopyAnswer(@"HMpTbnbcAb+mQDi8O71h6Q");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0xA1052CCCuLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_lynxPublicKey_obj()
{
  v0 = MGCopyAnswer(@"HMpTbnbcAb+mQDi8O71h6Q");

  return v0;
}

UInt8 *MobileGestalt_copy_lynxSerialNumber()
{
  v0 = MGCopyAnswer(@"r5pA2qLgR86BQKwgMjPWzg");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0xED308386uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_lynxSerialNumber_obj()
{
  v0 = MGCopyAnswer(@"r5pA2qLgR86BQKwgMjPWzg");

  return v0;
}

char *MobileGestalt_copy_mlbSerialNumber()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"MLBSerialNumber");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_mlbSerialNumber_obj()
{
  v0 = MGCopyAnswer(@"MLBSerialNumber");

  return v0;
}

UInt8 *MobileGestalt_copy_macBridgingKeys()
{
  v0 = MGCopyAnswer(@"VdSOpM2K054AhCKBaXuiqw");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x10934D64uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_macBridgingKeys_obj()
{
  v0 = MGCopyAnswer(@"VdSOpM2K054AhCKBaXuiqw");

  return v0;
}

char *MobileGestalt_copy_macFormFactor()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"MacFormFactor");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_macFormFactor_obj()
{
  v0 = MGCopyAnswer(@"MacFormFactor");

  return v0;
}

char *MobileGestalt_copy_macPrefsAssetImage()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"MacPrefsAssetImage");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_macPrefsAssetImage_obj()
{
  v0 = MGCopyAnswer(@"MacPrefsAssetImage");

  return v0;
}

uint64_t MobileGestalt_get_mainDisplayRotation(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"MainDisplayRotation");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F3FE8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

UInt8 *MobileGestalt_copy_mainScreenCanvasSizes()
{
  v0 = MGCopyAnswer(@"MainScreenCanvasSizes");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x24D224F9uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_mainScreenCanvasSizes_obj()
{
  v0 = MGCopyAnswer(@"MainScreenCanvasSizes");

  return v0;
}

uint64_t MobileGestalt_get_mainScreenClass(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"main-screen-class");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F4068();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_mainScreenHeight(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"main-screen-height");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F40E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

float MobileGestalt_get_mainScreenOrientation(void *a1)
{
  v1 = a1;
  valuePtr = -1082130432;
  v2 = MGCopyAnswer(@"main-screen-orientation");
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v3, kCFNumberFloat32Type, &valuePtr))
      {
LABEL_10:
        CFRelease(v3);
        v6 = *&valuePtr;
        goto LABEL_11;
      }

      v5 = [v1 log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v5 = [v1 log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F4168();
      }
    }

    goto LABEL_10;
  }

  v6 = -1.0;
LABEL_11:

  return v6;
}

uint64_t MobileGestalt_get_mainScreenPitch(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"main-screen-pitch");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F41E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_mainScreenWidth(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"main-screen-width");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F42E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

char *MobileGestalt_copy_marketingDeviceFamilyName()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"MarketingDeviceFamilyName");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_marketingDeviceFamilyName_obj()
{
  v0 = MGCopyAnswer(@"MarketingDeviceFamilyName");

  return v0;
}

char *MobileGestalt_copy_marketingNameString()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"marketing-name");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_marketingNameString_obj()
{
  v0 = MGCopyAnswer(@"marketing-name");

  return v0;
}

char *MobileGestalt_copy_marketingProductName()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"j9Th5smJpdztHwc+i39zIg");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_marketingProductName_obj()
{
  v0 = MGCopyAnswer(@"j9Th5smJpdztHwc+i39zIg");

  return v0;
}

char *MobileGestalt_copy_marketingSOCNameString()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"marketing-soc-name");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_marketingSOCNameString_obj()
{
  v0 = MGCopyAnswer(@"marketing-soc-name");

  return v0;
}

char *MobileGestalt_copy_marketingVersion()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"MarketingVersion");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_marketingVersion_obj()
{
  v0 = MGCopyAnswer(@"MarketingVersion");

  return v0;
}

CFNumberRef MobileGestalt_copy_maxH264PlaybackLevel_obj()
{
  v0 = MGCopyAnswer(@"4W7X4OWHjri5PGaAGsCWxw");

  return v0;
}

uint64_t MobileGestalt_get_maximumScreenScale(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"XmExwNGRvYTII6QC0+jvsA");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F4368();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

char *MobileGestalt_copy_mesaSerialNumber()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"MesaSerialNumber");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_mesaSerialNumber_obj()
{
  v0 = MGCopyAnswer(@"MesaSerialNumber");

  return v0;
}

uint64_t MobileGestalt_get_metalPerfLevelCapability(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"MetalPerfLevelCapability");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F43E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_microphoneCount(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"MicrophoneCount");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F4468();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

char *MobileGestalt_copy_minimumSupportediTunesVersion()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"MinimumSupportediTunesVersion");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_minimumSupportediTunesVersion_obj()
{
  v0 = MGCopyAnswer(@"MinimumSupportediTunesVersion");

  return v0;
}

char *MobileGestalt_copy_mobileDeviceMinimumVersion()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"MobileDeviceMinimumVersion");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_mobileDeviceMinimumVersion_obj()
{
  v0 = MGCopyAnswer(@"MobileDeviceMinimumVersion");

  return v0;
}

char *MobileGestalt_copy_mobileEquipmentIdentifier()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"MobileEquipmentIdentifier");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_mobileEquipmentIdentifier_obj()
{
  v0 = MGCopyAnswer(@"MobileEquipmentIdentifier");

  return v0;
}

char *MobileGestalt_copy_mobileEquipmentInfoBaseId()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"MobileEquipmentInfoBaseId");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_mobileEquipmentInfoBaseId_obj()
{
  v0 = MGCopyAnswer(@"MobileEquipmentInfoBaseId");

  return v0;
}

char *MobileGestalt_copy_mobileEquipmentInfoBaseProfile()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"MobileEquipmentInfoBaseProfile");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_mobileEquipmentInfoBaseProfile_obj()
{
  v0 = MGCopyAnswer(@"MobileEquipmentInfoBaseProfile");

  return v0;
}

char *MobileGestalt_copy_mobileEquipmentInfoBaseVersion()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"MobileEquipmentInfoBaseVersion");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_mobileEquipmentInfoBaseVersion_obj()
{
  v0 = MGCopyAnswer(@"MobileEquipmentInfoBaseVersion");

  return v0;
}

char *MobileGestalt_copy_mobileEquipmentInfoCSN()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"MobileEquipmentInfoCSN");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_mobileEquipmentInfoCSN_obj()
{
  v0 = MGCopyAnswer(@"MobileEquipmentInfoCSN");

  return v0;
}

char *MobileGestalt_copy_mobileEquipmentInfoDisplayCSN()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"MobileEquipmentInfoDisplayCSN");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_mobileEquipmentInfoDisplayCSN_obj()
{
  v0 = MGCopyAnswer(@"MobileEquipmentInfoDisplayCSN");

  return v0;
}

char *MobileGestalt_copy_mobileSubscriberCountryCode()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"MobileSubscriberCountryCode");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_mobileSubscriberCountryCode_obj()
{
  v0 = MGCopyAnswer(@"MobileSubscriberCountryCode");

  return v0;
}

char *MobileGestalt_copy_mobileSubscriberNetworkCode()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"MobileSubscriberNetworkCode");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_mobileSubscriberNetworkCode_obj()
{
  v0 = MGCopyAnswer(@"MobileSubscriberNetworkCode");

  return v0;
}

char *MobileGestalt_copy_modelNumber()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"ModelNumber");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_modelNumber_obj()
{
  v0 = MGCopyAnswer(@"ModelNumber");

  return v0;
}

CFNumberRef MobileGestalt_copy_multiLynxPublicKeyArray_obj()
{
  v0 = MGCopyAnswer(@"niQFEBBY7JaauAIosAyQQg");

  return v0;
}

CFNumberRef MobileGestalt_copy_multiLynxSerialNumberArray_obj()
{
  v0 = MGCopyAnswer(@"juE6wCsjVG4bfAhgHcUVcQ");

  return v0;
}

uint64_t MobileGestalt_get_multiTouchMaxBootTime(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"EuwCLwMXh+X5LErHKwvuIw");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F44E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

char *MobileGestalt_copy_nfcUniqueChipID()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"NFCUniqueChipID");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_nfcUniqueChipID_obj()
{
  v0 = MGCopyAnswer(@"NFCUniqueChipID");

  return v0;
}

CFNumberRef MobileGestalt_copy_nVRAMDictionary_obj()
{
  v0 = MGCopyAnswer(@"NVRAMDictionary");

  return v0;
}

char *MobileGestalt_copy_nandControllerUID()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"PcQWbThCb7iLEW+EoqZdEQ");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_nandControllerUID_obj()
{
  v0 = MGCopyAnswer(@"PcQWbThCb7iLEW+EoqZdEQ");

  return v0;
}

uint64_t MobileGestalt_get_navajoFusingState(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"NavajoFusingState");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F4568();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

CFNumberRef MobileGestalt_copy_oceanComputeCarrierID_obj()
{
  v0 = MGCopyAnswer(@"OceanComputeCarrierID");

  return v0;
}

CFNumberRef MobileGestalt_copy_oceanComputeCarrierSlot_obj()
{
  v0 = MGCopyAnswer(@"OceanComputeCarrierSlot");

  return v0;
}

uint64_t MobileGestalt_get_openGLESVersion(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"OpenGLESVersion");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F45E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

char *MobileGestalt_copy_panelSerialNumber()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"YVNo6vlMjhgQ9yGYV8gatw");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_panelSerialNumber_obj()
{
  v0 = MGCopyAnswer(@"YVNo6vlMjhgQ9yGYV8gatw");

  return v0;
}

char *MobileGestalt_copy_partitionStyle()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"PartitionStyle");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_partitionStyle_obj()
{
  v0 = MGCopyAnswer(@"PartitionStyle");

  return v0;
}

char *MobileGestalt_copy_partitionType()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"PartitionType");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_partitionType_obj()
{
  v0 = MGCopyAnswer(@"PartitionType");

  return v0;
}

uint64_t MobileGestalt_get_peekUIWidth(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"PeekUIWidth");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F4668();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_perfLevelCapability(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"PerfLevelCapability");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F46E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

char *MobileGestalt_copy_phoneNumber()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"PhoneNumber");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_phoneNumber_obj()
{
  v0 = MGCopyAnswer(@"PhoneNumber");

  return v0;
}

char *MobileGestalt_copy_phoneNumber2()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"SZy8T5ma/+a0wJc0ntiaaA");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_phoneNumber2_obj()
{
  v0 = MGCopyAnswer(@"SZy8T5ma/+a0wJc0ntiaaA");

  return v0;
}

char *MobileGestalt_copy_physicalHardwareNameString()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"PhysicalHardwareNameString");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_physicalHardwareNameString_obj()
{
  v0 = MGCopyAnswer(@"PhysicalHardwareNameString");

  return v0;
}

UInt8 *MobileGestalt_copy_pintoMacAddress()
{
  v0 = MGCopyAnswer(@"PintoMacAddress");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x26A01076uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_pintoMacAddress_obj()
{
  v0 = MGCopyAnswer(@"PintoMacAddress");

  return v0;
}

UInt8 *MobileGestalt_copy_productHash()
{
  v0 = MGCopyAnswer(@"ProductHash");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x747B5C97uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_productHash_obj()
{
  v0 = MGCopyAnswer(@"ProductHash");

  return v0;
}

char *MobileGestalt_copy_productName()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"ProductName");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_productName_obj()
{
  v0 = MGCopyAnswer(@"ProductName");

  return v0;
}

char *MobileGestalt_copy_productType()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"ProductType");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_productType_obj()
{
  v0 = MGCopyAnswer(@"ProductType");

  return v0;
}

char *MobileGestalt_copy_productTypeDescForAnalytics()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"xNN67KktpWp7syTT3S1BFA");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_productTypeDescForAnalytics_obj()
{
  v0 = MGCopyAnswer(@"xNN67KktpWp7syTT3S1BFA");

  return v0;
}

char *MobileGestalt_copy_productTypeDescForAudio()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"+1TeoctsaQC55zwHZ6MESg");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_productTypeDescForAudio_obj()
{
  v0 = MGCopyAnswer(@"+1TeoctsaQC55zwHZ6MESg");

  return v0;
}

char *MobileGestalt_copy_productTypeDescForAutomatedTesting()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"MKE8hwsOxxRCtwBk2aDBZA");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_productTypeDescForAutomatedTesting_obj()
{
  v0 = MGCopyAnswer(@"MKE8hwsOxxRCtwBk2aDBZA");

  return v0;
}

char *MobileGestalt_copy_productTypeDescForCamera()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"myx96YOqBSDzLwljSYWBiQ");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_productTypeDescForCamera_obj()
{
  v0 = MGCopyAnswer(@"myx96YOqBSDzLwljSYWBiQ");

  return v0;
}

char *MobileGestalt_copy_productTypeDescForPowerPerf()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"GEsznZwAYGOa1a67QU1Uew");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_productTypeDescForPowerPerf_obj()
{
  v0 = MGCopyAnswer(@"GEsznZwAYGOa1a67QU1Uew");

  return v0;
}

char *MobileGestalt_copy_productTypeDescForUserVisibility()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"G91h5IuJvXISeyngNFqEpg");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_productTypeDescForUserVisibility_obj()
{
  v0 = MGCopyAnswer(@"G91h5IuJvXISeyngNFqEpg");

  return v0;
}

char *MobileGestalt_copy_productVersion()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"ProductVersion");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_productVersion_obj()
{
  v0 = MGCopyAnswer(@"ProductVersion");

  return v0;
}

char *MobileGestalt_copy_productVersionExtra()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"ProductVersionExtra");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_productVersionExtra_obj()
{
  v0 = MGCopyAnswer(@"ProductVersionExtra");

  return v0;
}

char *MobileGestalt_copy_provisioningUniqueDeviceID()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"ProvisioningUniqueDeviceID");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_provisioningUniqueDeviceID_obj()
{
  v0 = MGCopyAnswer(@"ProvisioningUniqueDeviceID");

  return v0;
}

UInt8 *MobileGestalt_copy_proximitySensorCalibration()
{
  v0 = MGCopyAnswer(@"ProximitySensorCalibration");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x55D841B7uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_proximitySensorCalibration_obj()
{
  v0 = MGCopyAnswer(@"ProximitySensorCalibration");

  return v0;
}

CFNumberRef MobileGestalt_copy_proximitySensorCalibrationDictionary_obj()
{
  v0 = MGCopyAnswer(@"ProximitySensorCalibrationDictionary");

  return v0;
}

uint64_t MobileGestalt_get_rFExposureSeparationDistance(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"RFExposureSeparationDistance");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F4768();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

UInt8 *MobileGestalt_copy_rawPanelSerialNumber()
{
  v0 = MGCopyAnswer(@"PxEDp0oOasJ92F/V7YBa8A");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x79243517uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_rawPanelSerialNumber_obj()
{
  v0 = MGCopyAnswer(@"PxEDp0oOasJ92F/V7YBa8A");

  return v0;
}

CFNumberRef MobileGestalt_copy_rearCameraOffsetFromDisplayCenter_obj()
{
  v0 = MGCopyAnswer(@"RearCameraOffsetFromDisplayCenter");

  return v0;
}

uint64_t MobileGestalt_get_rearFacingCameraHFRVideoCapture1080PMaxFPS(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"jKFTzVOYcfTfNBh+yDrprw");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F47E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_rearFacingCameraHFRVideoCapture720PMaxFPS(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"XellXEQUbOIgUPoTrIj5nA");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F4868();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_rearFacingCameraMaxVideoZoomFactor(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"RearFacingCameraMaxVideoZoomFactor");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F48E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

char *MobileGestalt_copy_rearFacingCameraModuleSerialNumber()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"nWFV2qG2TjSuH7vZFCdi4w");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_rearFacingCameraModuleSerialNumber_obj()
{
  v0 = MGCopyAnswer(@"nWFV2qG2TjSuH7vZFCdi4w");

  return v0;
}

uint64_t MobileGestalt_get_rearFacingCameraStillDurationForBurst(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"gq0j1GmcIcaD4DjJoo9pfg");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F4968();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_rearFacingCameraVideoCapture1080PMaxFPS(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"jBGZJ71pRJrqD8VZ6Tk2VQ");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F49E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_rearFacingCameraVideoCapture4KMaxFPS(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"po7g0ATDzGoVI1DO8ISmuw");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F4A68();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_rearFacingCameraVideoCapture720PMaxFPS(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"0/7QNywWU4IqDcyvTv9UYQ");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F4AE8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_rearFacingCameraVideoCaptureFPS(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"RearFacingCameraVideoCaptureFPS");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F4B68();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

char *MobileGestalt_copy_rearFacingSuperWideCameraModuleSerialNumber()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"UZfUiD1Aqy3GOwg72SQcLQ");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_rearFacingSuperWideCameraModuleSerialNumber_obj()
{
  v0 = MGCopyAnswer(@"UZfUiD1Aqy3GOwg72SQcLQ");

  return v0;
}

char *MobileGestalt_copy_rearFacingTelephotoCameraModuleSerialNumber()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"cm399FbDqnv8IOFoeBLWYg");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_rearFacingTelephotoCameraModuleSerialNumber_obj()
{
  v0 = MGCopyAnswer(@"cm399FbDqnv8IOFoeBLWYg");

  return v0;
}

char *MobileGestalt_copy_recoveryOSVersion()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"RecoveryOSVersion");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_recoveryOSVersion_obj()
{
  v0 = MGCopyAnswer(@"RecoveryOSVersion");

  return v0;
}

char *MobileGestalt_copy_regionCode()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"RegionCode");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_regionCode_obj()
{
  v0 = MGCopyAnswer(@"RegionCode");

  return v0;
}

char *MobileGestalt_copy_regionInfo()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"RegionInfo");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_regionInfo_obj()
{
  v0 = MGCopyAnswer(@"RegionInfo");

  return v0;
}

CFNumberRef MobileGestalt_copy_regionalBehaviorAll_obj()
{
  v0 = MGCopyAnswer(@"RegionalBehaviorAll");

  return v0;
}

char *MobileGestalt_copy_regulatoryModelNumber()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"RegulatoryModelNumber");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_regulatoryModelNumber_obj()
{
  v0 = MGCopyAnswer(@"RegulatoryModelNumber");

  return v0;
}

char *MobileGestalt_copy_releaseType()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"ReleaseType");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_releaseType_obj()
{
  v0 = MGCopyAnswer(@"ReleaseType");

  return v0;
}

UInt8 *MobileGestalt_copy_remoteBluetoothAddress()
{
  v0 = MGCopyAnswer(@"RemoteBluetoothAddress");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0xEEE44FE2uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_remoteBluetoothAddress_obj()
{
  v0 = MGCopyAnswer(@"RemoteBluetoothAddress");

  return v0;
}

float MobileGestalt_get_requiredBatteryLevelForSoftwareUpdate(void *a1)
{
  v1 = a1;
  valuePtr = -1082130432;
  v2 = MGCopyAnswer(@"RequiredBatteryLevelForSoftwareUpdate");
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v3, kCFNumberFloat32Type, &valuePtr))
      {
LABEL_10:
        CFRelease(v3);
        v6 = *&valuePtr;
        goto LABEL_11;
      }

      v5 = [v1 log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v5 = [v1 log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F4BE8();
      }
    }

    goto LABEL_10;
  }

  v6 = -1.0;
LABEL_11:

  return v6;
}

CFNumberRef MobileGestalt_copy_restrictedCountryCodes_obj()
{
  v0 = MGCopyAnswer(@"RestrictedCountryCodes");

  return v0;
}

UInt8 *MobileGestalt_copy_ringerButtonCGRect()
{
  v0 = MGCopyAnswer(@"RingerButtonCGRect");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0xAFDCC082uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_ringerButtonCGRect_obj()
{
  v0 = MGCopyAnswer(@"RingerButtonCGRect");

  return v0;
}

UInt8 *MobileGestalt_copy_ringerButtonNormalizedCGRect()
{
  v0 = MGCopyAnswer(@"RingerButtonNormalizedCGRect");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x3847524EuLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_ringerButtonNormalizedCGRect_obj()
{
  v0 = MGCopyAnswer(@"RingerButtonNormalizedCGRect");

  return v0;
}

char *MobileGestalt_copy_rosalineSerialNumber()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"O8mk69g6k/CbfeET9LtqQA");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_rosalineSerialNumber_obj()
{
  v0 = MGCopyAnswer(@"O8mk69g6k/CbfeET9LtqQA");

  return v0;
}

UInt8 *MobileGestalt_copy_roswellChipID()
{
  v0 = MGCopyAnswer(@"RoswellChipID");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x4636E52CuLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_roswellChipID_obj()
{
  v0 = MGCopyAnswer(@"RoswellChipID");

  return v0;
}

CFNumberRef MobileGestalt_copy_runnableArchitectures_obj()
{
  v0 = MGCopyAnswer(@"RunnableArchitectures");

  return v0;
}

UInt8 *MobileGestalt_copy_sEInfo()
{
  v0 = MGCopyAnswer(@"atOCpGf+lHCxgJ9GElef8Q");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x91D273F3uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_sEInfo_obj()
{
  v0 = MGCopyAnswer(@"atOCpGf+lHCxgJ9GElef8Q");

  return v0;
}

UInt8 *MobileGestalt_copy_sEPNonce()
{
  v0 = MGCopyAnswer(@"SEPNonce");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x8DB9B855uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_sEPNonce_obj()
{
  v0 = MGCopyAnswer(@"SEPNonce");

  return v0;
}

char *MobileGestalt_copy_simStatus()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"SIMStatus");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_simStatus_obj()
{
  v0 = MGCopyAnswer(@"SIMStatus");

  return v0;
}

char *MobileGestalt_copy_simStatus2()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"b2BKAEe88VRfp2WXEjJOyA");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_simStatus2_obj()
{
  v0 = MGCopyAnswer(@"b2BKAEe88VRfp2WXEjJOyA");

  return v0;
}

char *MobileGestalt_copy_simTrayStatus()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"SIMTrayStatus");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_simTrayStatus_obj()
{
  v0 = MGCopyAnswer(@"SIMTrayStatus");

  return v0;
}

char *MobileGestalt_copy_simTrayStatus2()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"sHiXbHqHvvRS3I/qo/rH2Q");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_simTrayStatus2_obj()
{
  v0 = MGCopyAnswer(@"sHiXbHqHvvRS3I/qo/rH2Q");

  return v0;
}

UInt8 *MobileGestalt_copy_savageChipID()
{
  v0 = MGCopyAnswer(@"m9OWD0Y4Br0TZHUl6rGcOg");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x9901D67CuLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_savageChipID_obj()
{
  v0 = MGCopyAnswer(@"m9OWD0Y4Br0TZHUl6rGcOg");

  return v0;
}

CFNumberRef MobileGestalt_copy_savageInfo_obj()
{
  v0 = MGCopyAnswer(@"SavageInfo");

  return v0;
}

UInt8 *MobileGestalt_copy_savageSerialNumber()
{
  v0 = MGCopyAnswer(@"LE2kQ7U1iM32AmlhYvlagg");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0xD641BE8BuLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_savageSerialNumber_obj()
{
  v0 = MGCopyAnswer(@"LE2kQ7U1iM32AmlhYvlagg");

  return v0;
}

UInt8 *MobileGestalt_copy_savageUID()
{
  v0 = MGCopyAnswer(@"FNvQ6lBvJIUcYBzQ8ggOUQ");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x281788FBuLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_savageUID_obj()
{
  v0 = MGCopyAnswer(@"FNvQ6lBvJIUcYBzQ8ggOUQ");

  return v0;
}

uint64_t MobileGestalt_get_screenCaptureHeight(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"ScreenCaptureHeight");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F4C68();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_screenCaptureWidth(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"ScreenCaptureWidth");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F4CE8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

CFNumberRef MobileGestalt_copy_screenDimensionsCapability_obj()
{
  v0 = MGCopyAnswer(@"screen-dimensions");

  return v0;
}

char *MobileGestalt_copy_screenSerialNumber()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"ScreenSerialNumber");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_screenSerialNumber_obj()
{
  v0 = MGCopyAnswer(@"ScreenSerialNumber");

  return v0;
}

char *MobileGestalt_copy_secondaryBluetoothMacAddress()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"SecondaryBluetoothMacAddress");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_secondaryBluetoothMacAddress_obj()
{
  v0 = MGCopyAnswer(@"SecondaryBluetoothMacAddress");

  return v0;
}

UInt8 *MobileGestalt_copy_secondaryEthernetMacAddress()
{
  v0 = MGCopyAnswer(@"SecondaryEthernetMacAddress");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x95DF4EDEuLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_secondaryEthernetMacAddress_obj()
{
  v0 = MGCopyAnswer(@"SecondaryEthernetMacAddress");

  return v0;
}

UInt8 *MobileGestalt_copy_secondaryWifiMacAddress()
{
  v0 = MGCopyAnswer(@"SecondaryWifiMacAddress");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0xB72C8A57uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_secondaryWifiMacAddress_obj()
{
  v0 = MGCopyAnswer(@"SecondaryWifiMacAddress");

  return v0;
}

char *MobileGestalt_copy_secureElementID()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"nZUUCFZgomfWUIPGGzNAqg");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_secureElementID_obj()
{
  v0 = MGCopyAnswer(@"nZUUCFZgomfWUIPGGzNAqg");

  return v0;
}

uint64_t MobileGestalt_get_securityDomain(void *a1)
{
  v1 = a1;
  v2 = -1;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"SecurityDomain");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt64Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F4D68();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

char *MobileGestalt_copy_serialNumber()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"SerialNumber");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_serialNumber_obj()
{
  v0 = MGCopyAnswer(@"SerialNumber");

  return v0;
}

uint64_t MobileGestalt_get_soCSKU(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"SoCSKU");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F4DE8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

UInt8 *MobileGestalt_copy_softwareBehavior()
{
  v0 = MGCopyAnswer(@"SoftwareBehavior");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x42886077uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_softwareBehavior_obj()
{
  v0 = MGCopyAnswer(@"SoftwareBehavior");

  return v0;
}

char *MobileGestalt_copy_softwareBundleVersion()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"SoftwareBundleVersion");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_softwareBundleVersion_obj()
{
  v0 = MGCopyAnswer(@"SoftwareBundleVersion");

  return v0;
}

float MobileGestalt_get_softwareDimmingAlpha(void *a1)
{
  v1 = a1;
  valuePtr = -1082130432;
  v2 = MGCopyAnswer(@"SoftwareDimmingAlpha");
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v3, kCFNumberFloat32Type, &valuePtr))
      {
LABEL_10:
        CFRelease(v3);
        v6 = *&valuePtr;
        goto LABEL_11;
      }

      v5 = [v1 log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v5 = [v1 log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F4E68();
      }
    }

    goto LABEL_10;
  }

  v6 = -1.0;
LABEL_11:

  return v6;
}

UInt8 *MobileGestalt_copy_speakerCalibrationMiGa()
{
  v0 = MGCopyAnswer(@"jxx29Cq5bGHDnkcha4y/Rw");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x2E44D88AuLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_speakerCalibrationMiGa_obj()
{
  v0 = MGCopyAnswer(@"jxx29Cq5bGHDnkcha4y/Rw");

  return v0;
}

UInt8 *MobileGestalt_copy_speakerCalibrationSpGa()
{
  v0 = MGCopyAnswer(@"meicxSe0OZJaae1hEiOV5Q");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0xA8E5B7FuLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_speakerCalibrationSpGa_obj()
{
  v0 = MGCopyAnswer(@"meicxSe0OZJaae1hEiOV5Q");

  return v0;
}

UInt8 *MobileGestalt_copy_speakerCalibrationSpTS()
{
  v0 = MGCopyAnswer(@"Wr2SycNVQwBrdup3ok+LxQ");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x324160A4uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_speakerCalibrationSpTS_obj()
{
  v0 = MGCopyAnswer(@"Wr2SycNVQwBrdup3ok+LxQ");

  return v0;
}

CFNumberRef MobileGestalt_copy_stockholmJcopInfo_obj()
{
  v0 = MGCopyAnswer(@"RgoxDxYGuZ0GzijFt6kSQQ");

  return v0;
}

CFNumberRef MobileGestalt_copy_strictWakeKeyboardCases_obj()
{
  v0 = MGCopyAnswer(@"StrictWakeKeyboardCases");

  return v0;
}

char *MobileGestalt_copy_subProductType()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"SubProductType");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_subProductType_obj()
{
  v0 = MGCopyAnswer(@"SubProductType");

  return v0;
}

char *MobileGestalt_copy_supplementalBuildVersion()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"SupplementalBuildVersion");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_supplementalBuildVersion_obj()
{
  v0 = MGCopyAnswer(@"SupplementalBuildVersion");

  return v0;
}

CFNumberRef MobileGestalt_copy_supportedDeviceFamilies_obj()
{
  v0 = MGCopyAnswer(@"SupportedDeviceFamilies");

  return v0;
}

CFNumberRef MobileGestalt_copy_supportedKeyboards_obj()
{
  v0 = MGCopyAnswer(@"SupportedKeyboards");

  return v0;
}

UInt8 *MobileGestalt_copy_sysCfg()
{
  v0 = MGCopyAnswer(@"SysCfg");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x4124B62DuLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_sysCfg_obj()
{
  v0 = MGCopyAnswer(@"SysCfg");

  return v0;
}

CFNumberRef MobileGestalt_copy_sysCfgDict_obj()
{
  v0 = MGCopyAnswer(@"SysCfgDict");

  return v0;
}

char *MobileGestalt_copy_systemImageID()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"SystemImageID");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_systemImageID_obj()
{
  v0 = MGCopyAnswer(@"SystemImageID");

  return v0;
}

CFNumberRef MobileGestalt_copy_tVOutSettingsCapability_obj()
{
  v0 = MGCopyAnswer(@"tv-out-settings");

  return v0;
}

char *MobileGestalt_copy_targetSubType()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"TargetSubType");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_targetSubType_obj()
{
  v0 = MGCopyAnswer(@"TargetSubType");

  return v0;
}

float MobileGestalt_get_telephonyMaximumGeneration(void *a1)
{
  v1 = a1;
  valuePtr = -1082130432;
  v2 = MGCopyAnswer(@"telephony-maximum-generation");
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v3, kCFNumberFloat32Type, &valuePtr))
      {
LABEL_10:
        CFRelease(v3);
        v6 = *&valuePtr;
        goto LABEL_11;
      }

      v5 = [v1 log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v5 = [v1 log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F4EE8();
      }
    }

    goto LABEL_10;
  }

  v6 = -1.0;
LABEL_11:

  return v6;
}

char *MobileGestalt_copy_thinningProductType()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"ThinningProductType");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_thinningProductType_obj()
{
  v0 = MGCopyAnswer(@"ThinningProductType");

  return v0;
}

char *MobileGestalt_copy_threadRadioMacAddress()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"ThreadRadioMacAddress");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_threadRadioMacAddress_obj()
{
  v0 = MGCopyAnswer(@"ThreadRadioMacAddress");

  return v0;
}

char *MobileGestalt_copy_threadRadioMacAddress64Bit()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"ThreadRadioMacAddress64Bit");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_threadRadioMacAddress64Bit_obj()
{
  v0 = MGCopyAnswer(@"ThreadRadioMacAddress64Bit");

  return v0;
}

char *MobileGestalt_copy_threadRadioMacAddressForProvisioning()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"ThreadRadioMacAddressForProvisioning");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_threadRadioMacAddressForProvisioning_obj()
{
  v0 = MGCopyAnswer(@"ThreadRadioMacAddressForProvisioning");

  return v0;
}

UInt8 *MobileGestalt_copy_topModuleAuthChipID()
{
  v0 = MGCopyAnswer(@"TopModuleAuthChipID");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0xCDF84D11uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_topModuleAuthChipID_obj()
{
  v0 = MGCopyAnswer(@"TopModuleAuthChipID");

  return v0;
}

CFNumberRef MobileGestalt_copy_tribecaSettings_obj()
{
  v0 = MGCopyAnswer(@"TribecaSettings");

  return v0;
}

UInt8 *MobileGestalt_copy_tristarID()
{
  v0 = MGCopyAnswer(@"o60T6wXe1DDaO4a4gw10TA");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x68ADEFFAuLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_tristarID_obj()
{
  v0 = MGCopyAnswer(@"o60T6wXe1DDaO4a4gw10TA");

  return v0;
}

uint64_t MobileGestalt_get_uiBackgroundQuality(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"UIBackgroundQuality");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F4F68();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_uniqueChipID(void *a1)
{
  v1 = a1;
  v2 = -1;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"UniqueChipID");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt64Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F4FE8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

char *MobileGestalt_copy_uniqueChipIDString()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"6WdGcQGw4VLzrgxJo+bcrw");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_uniqueChipIDString_obj()
{
  v0 = MGCopyAnswer(@"6WdGcQGw4VLzrgxJo+bcrw");

  return v0;
}

char *MobileGestalt_copy_uniqueDeviceID()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"UniqueDeviceID");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

UInt8 *MobileGestalt_copy_uniqueDeviceIDData()
{
  v0 = MGCopyAnswer(@"UniqueDeviceIDData");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0xC7C7F393uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_uniqueDeviceIDData_obj()
{
  v0 = MGCopyAnswer(@"UniqueDeviceIDData");

  return v0;
}

char *MobileGestalt_copy_userAssignedDeviceName()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"UserAssignedDeviceName");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_userAssignedDeviceName_obj()
{
  v0 = MGCopyAnswer(@"UserAssignedDeviceName");

  return v0;
}

UInt8 *MobileGestalt_copy_userIntentPhysicalButtonCGRect()
{
  v0 = MGCopyAnswer(@"UserIntentPhysicalButtonCGRect");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0xBDBB78ABuLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_userIntentPhysicalButtonCGRect_obj()
{
  v0 = MGCopyAnswer(@"UserIntentPhysicalButtonCGRect");

  return v0;
}

char *MobileGestalt_copy_userIntentPhysicalButtonCGRectString()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"UserIntentPhysicalButtonCGRectString");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_userIntentPhysicalButtonCGRectString_obj()
{
  v0 = MGCopyAnswer(@"UserIntentPhysicalButtonCGRectString");

  return v0;
}

UInt8 *MobileGestalt_copy_userIntentPhysicalButtonNormalizedCGRect()
{
  v0 = MGCopyAnswer(@"UserIntentPhysicalButtonNormalizedCGRect");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x3814FD11uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_userIntentPhysicalButtonNormalizedCGRect_obj()
{
  v0 = MGCopyAnswer(@"UserIntentPhysicalButtonNormalizedCGRect");

  return v0;
}

UInt8 *MobileGestalt_copy_vMUniqueDeviceIDData()
{
  v0 = MGCopyAnswer(@"VMUniqueDeviceIDData");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0xFF535655uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_vMUniqueDeviceIDData_obj()
{
  v0 = MGCopyAnswer(@"VMUniqueDeviceIDData");

  return v0;
}

CFNumberRef MobileGestalt_copy_vSHCompensationMinimumNits_obj()
{
  v0 = MGCopyAnswer(@"VSHCompensationMinimumNits");

  return v0;
}

UInt8 *MobileGestalt_copy_volumeDownButtonCGRect()
{
  v0 = MGCopyAnswer(@"VolumeDownButtonCGRect");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0xF25AD6FEuLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_volumeDownButtonCGRect_obj()
{
  v0 = MGCopyAnswer(@"VolumeDownButtonCGRect");

  return v0;
}

UInt8 *MobileGestalt_copy_volumeDownButtonNormalizedCGRect()
{
  v0 = MGCopyAnswer(@"VolumeDownButtonNormalizedCGRect");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x378AD26CuLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_volumeDownButtonNormalizedCGRect_obj()
{
  v0 = MGCopyAnswer(@"VolumeDownButtonNormalizedCGRect");

  return v0;
}

UInt8 *MobileGestalt_copy_volumeUpButtonCGRect()
{
  v0 = MGCopyAnswer(@"VolumeUpButtonCGRect");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x95D1B860uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_volumeUpButtonCGRect_obj()
{
  v0 = MGCopyAnswer(@"VolumeUpButtonCGRect");

  return v0;
}

UInt8 *MobileGestalt_copy_volumeUpButtonNormalizedCGRect()
{
  v0 = MGCopyAnswer(@"VolumeUpButtonNormalizedCGRect");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0xD98C9BABuLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_volumeUpButtonNormalizedCGRect_obj()
{
  v0 = MGCopyAnswer(@"VolumeUpButtonNormalizedCGRect");

  return v0;
}

uint64_t MobileGestalt_get_wAGraphicQuality(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"WAGraphicQuality");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F5068();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t MobileGestalt_get_wLANBkgScanCache(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"WLANBkgScanCache");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F50E8();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

UInt8 *MobileGestalt_copy_wSKU()
{
  v0 = MGCopyAnswer(@"gD8SNRcHQeIxCAvsp+2vjA");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0xE9B1646BuLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_wSKU_obj()
{
  v0 = MGCopyAnswer(@"gD8SNRcHQeIxCAvsp+2vjA");

  return v0;
}

char *MobileGestalt_copy_wifiChipsetRevision()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"WiFiChipsetRevision");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_wifiChipsetRevision_obj()
{
  v0 = MGCopyAnswer(@"WiFiChipsetRevision");

  return v0;
}

char *MobileGestalt_copy_wifiAddress()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"WifiAddress");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_wifiAddress_obj()
{
  v0 = MGCopyAnswer(@"WifiAddress");

  return v0;
}

UInt8 *MobileGestalt_copy_wifiAntennaSKUVersion()
{
  v0 = MGCopyAnswer(@"WifiAntennaSKUVersion");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x2CA1562AuLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_wifiAntennaSKUVersion_obj()
{
  v0 = MGCopyAnswer(@"WifiAntennaSKUVersion");

  return v0;
}

char *MobileGestalt_copy_wifiChipset()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"WifiChipset");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_wifiChipset_obj()
{
  v0 = MGCopyAnswer(@"WifiChipset");

  return v0;
}

char *MobileGestalt_copy_wifiFirmwareVersion()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"WifiFirmwareVersion");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_wifiFirmwareVersion_obj()
{
  v0 = MGCopyAnswer(@"WifiFirmwareVersion");

  return v0;
}

char *MobileGestalt_copy_wifiVendor()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"WifiVendor");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_wifiVendor_obj()
{
  v0 = MGCopyAnswer(@"WifiVendor");

  return v0;
}

char *MobileGestalt_copy_wirelessBoardSnum()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer(@"WirelessBoardSnum");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  bzero(buffer, 0x400uLL);
  CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  v2 = strdup(buffer);
  CFRelease(v1);
  return v2;
}

CFNumberRef MobileGestalt_copy_wirelessBoardSnum_obj()
{
  v0 = MGCopyAnswer(@"WirelessBoardSnum");

  return v0;
}

UInt8 *MobileGestalt_copy_yonkersChipID()
{
  v0 = MGCopyAnswer(@"2/q9qmqGigMfkzY830Zf2g");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x247B778BuLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_yonkersChipID_obj()
{
  v0 = MGCopyAnswer(@"2/q9qmqGigMfkzY830Zf2g");

  return v0;
}

UInt8 *MobileGestalt_copy_yonkersSerialNumber()
{
  v0 = MGCopyAnswer(@"67Dsh4G8EGQp4WbPDfS/Xw");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x15A65D8DuLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_yonkersSerialNumber_obj()
{
  v0 = MGCopyAnswer(@"67Dsh4G8EGQp4WbPDfS/Xw");

  return v0;
}

UInt8 *MobileGestalt_copy_yonkersUID()
{
  v0 = MGCopyAnswer(@"bwLsbkp4shhHuNB5VpRa8w");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Length = CFDataGetLength(v0);
  v3 = malloc_type_malloc(Length, 0x281C0623uLL);
  v5.location = 0;
  v5.length = Length;
  CFDataGetBytes(v1, v5, v3);
  CFRelease(v1);
  return v3;
}

CFNumberRef MobileGestalt_copy_yonkersUID_obj()
{
  v0 = MGCopyAnswer(@"bwLsbkp4shhHuNB5VpRa8w");

  return v0;
}

uint64_t MobileGestalt_get_iTunesFamilyID(void *a1)
{
  v1 = a1;
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v3 = MGCopyAnswer(@"iTunesFamilyID");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
LABEL_9:
        CFRelease(v4);
        v2 = valuePtr;
        goto LABEL_10;
      }

      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F1C2C();
      }
    }

    else
    {
      v6 = [v1 log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B01F5168();
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v2;
}

uint64_t _MGIterateDevices(int a1, char *name, uint64_t a3)
{
  if (a1 == 5)
  {
    result = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], name);
    if (result)
    {
      v6 = result;
      (*(a3 + 16))(a3, result);

      return IOObjectRelease(v6);
    }
  }

  else
  {
    v8 = sub_1B01D8260(a1, name);
    if (v8)
    {
      existing = 0;
      result = IOServiceGetMatchingServices(*MEMORY[0x1E696CD60], v8, &existing);
      if (!result)
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 0x40000000;
        v9[2] = sub_1B01D8308;
        v9[3] = &unk_1E7A93240;
        v9[4] = a3;
        sub_1B01BCEB8(existing, v9);
        return IOObjectRelease(existing);
      }
    }

    else
    {
      return fprintf(*MEMORY[0x1E69E9848], "couldn't get matching dictionary for %d:%s\n", a1, name);
    }
  }

  return result;
}

CFMutableDictionaryRef sub_1B01D8260(int a1, char *name)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {

      return IOServiceNameMatching(name);
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_20;
      }

      return IOServiceMatching(name);
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v4 = *MEMORY[0x1E696CD60];

        return IOBSDNameMatching(v4, 0, name);
      case 4:

        return sub_1B01921E8(name);
      case 5:
        return 0;
      default:
LABEL_20:
        abort();
    }
  }
}

void _MGWaitForDevices(int a1, char *a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a1 == 5)
  {
    sub_1B01F5214();
  }

  v10 = sub_1B01D8260(a1, a2);
  if (v10)
  {
    if (!a3)
    {
      if (!a5)
      {
        sub_1B01F51E8();
      }

      a3 = 1;
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = sub_1B01D83FC;
    v11[3] = &unk_1E7A93268;
    v11[4] = a4;
    sub_1B01BD998(v10, a3, v11, a5);
  }

  else
  {
    fprintf(*MEMORY[0x1E69E9848], "couldn't get matching dictionary for %d:%s\n", a1, a2);
  }
}

__CFDictionary *_MGCopyDeviceDescription(uint64_t a1, const __CFArray *a2, int a3, const char *a4, uint64_t a5)
{
  v5 = a5;
  if (a3 == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a4;
  }

  if (a3 == 3)
  {
    v7 = 1;
  }

  else
  {
    a4 = v6;
    v7 = 0;
  }

  return sub_1B01D8450(a1, a2, 1, a4, v7, v5, 0);
}

__CFDictionary *sub_1B01D8450(uint64_t a1, const __CFArray *a2, int a3, const char *a4, char a5, int a6, void *a7)
{
  v44 = *MEMORY[0x1E69E9840];
  v34 = a7;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  *cStr = 0u;
  v37 = 0u;
  memset(className, 0, sizeof(className));
  v33 = 0;
  if (!MEMORY[0x1B2720D90](a1, cStr))
  {
    v14 = CFStringCreateWithCString(0, cStr, 0x8000100u);
    CFDictionarySetValue(Mutable, @"0:Name", v14);
    CFRelease(v14);
  }

  if (!IOObjectGetClass(a1, className))
  {
    v15 = CFStringCreateWithCString(0, className, 0x8000100u);
    CFDictionarySetValue(Mutable, @"1:Class", v15);
    CFRelease(v15);
  }

  sub_1B01D8AD0(a1, Mutable, @"2:IOService Path", "IOService", a4, &v34, &v33);
  sub_1B01D8AD0(a1, Mutable, @"2:IODeviceTree Path", "IODeviceTree", a4, &v34, &v33);
  if (a4 && strcmp(a4, "IOService") && strcmp(a4, "IODeviceTree"))
  {
    v16 = CFStringCreateWithFormat(0, 0, @"2:%s Path", a4);
    sub_1B01D8AD0(a1, Mutable, v16, a4, a4, &v34, &v33);
    CFRelease(v16);
  }

  if (a3)
  {
    cf = 0;
    if (a2)
    {
      v17 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      cf = v17;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 0x40000000;
      v31[2] = sub_1B01D8CA0;
      v31[3] = &unk_1E7A93288;
      v32 = a1;
      v31[4] = v17;
      sub_1B01A1B38(a2, v31);
      if (v17)
      {
LABEL_12:
        if (a6)
        {
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 0x40000000;
          v30[2] = sub_1B01D8D34;
          v30[3] = &unk_1E7A932A8;
          v30[4] = v17;
          sub_1B0192BA4(v17, v30);
          v17 = cf;
        }

        CFDictionarySetValue(Mutable, @"3:Properties", v17);
        CFRelease(cf);
        goto LABEL_15;
      }
    }

    else
    {
      IORegistryEntryCreateCFProperties(a1, &cf, 0, 0);
      v17 = cf;
      if (cf)
      {
        goto LABEL_12;
      }
    }

    CFDictionarySetValue(Mutable, @"3:Properties", @"*** NOT PRESENT ***");
    if (!a4)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

LABEL_15:
  if (!a4)
  {
    goto LABEL_19;
  }

LABEL_16:
  cf = 0;
  p_cf = &cf;
  v28 = 0x2000000000;
  v29 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2000000000;
  v25 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 0x40000000;
  v20[2] = sub_1B01D8DF8;
  v20[3] = &unk_1E7A932D0;
  v21 = a3 & a5;
  v20[6] = a2;
  v20[7] = a4;
  v22 = a5;
  v23 = a6;
  v20[8] = v34;
  v20[4] = v24;
  v20[5] = &cf;
  sub_1B01BD00C(a1, a4, v20);
  v18 = p_cf[3];
  if (v18)
  {
    CFDictionarySetValue(Mutable, @"4:Children", v18);
    CFRelease(p_cf[3]);
  }

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&cf, 8);
LABEL_19:
  if (v33 == 1)
  {
    free(v34);
  }

  return Mutable;
}

CFMutableDictionaryRef sub_1B01D88D8(FILE *__stream, int a2, int a3, char *name, int a5, int a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, char a11)
{
  v15 = name;
  v18 = a9;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2000000000;
  v33 = 0;
  v19 = a2 & 4;
  if (__stream)
  {
    if ((a2 & 4) != 0)
    {
      v25 = a2;
      sub_1B01D9FE4(__stream);
      v18 = a9;
      a2 = v25;
      v15 = name;
    }

    v21 = 0;
  }

  else
  {
    v26 = a2;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v18 = a9;
    a2 = v26;
    v15 = name;
    v21 = Mutable;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 0x40000000;
  v27[2] = sub_1B01D8FB4;
  v27[3] = &unk_1E7A932F8;
  v31 = a11;
  v27[4] = v32;
  v27[5] = a8;
  v27[6] = a10;
  v27[7] = __stream;
  v28 = v18;
  v29 = v19;
  v30 = a2;
  v27[8] = v21;
  if (a5)
  {
    _MGWaitForDevices(a3, v15, a6, v27, a7);
    if (!__stream)
    {
      goto LABEL_12;
    }
  }

  else
  {
    _MGIterateDevices(a3, v15, v27);
    if (!__stream)
    {
      goto LABEL_12;
    }
  }

  if (v19)
  {
    sub_1B01DA130(__stream);
  }

LABEL_12:
  _Block_object_dispose(v32, 8);
  return v21;
}

void sub_1B01D8AD0(uint64_t a1, __CFDictionary *a2, const void *a3, const char *a4, const char *a5, char **a6, _BYTE *a7)
{
  v52 = *MEMORY[0x1E69E9840];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  *__s = 0u;
  v21 = 0u;
  if (!MEMORY[0x1B2720DA0](a1, a4, __s))
  {
    if (!a5 || strcmp(a5, a4))
    {
      v13 = strlen(a4);
      v14 = CFStringCreateWithCString(0, &__s[v13 + 1], 0x8000100u);
LABEL_5:
      v15 = v14;
      CFDictionarySetValue(a2, a3, v14);
      CFRelease(v15);
      return;
    }

    if (*a6)
    {
      v16 = strlen(*a6);
      v14 = CFStringCreateWithFormat(0, 0, @".../%s", &__s[v16 + 1]);
      goto LABEL_5;
    }

    v17 = strlen(a4);
    v18 = CFStringCreateWithCString(0, &__s[v17 + 1], 0x8000100u);
    CFDictionarySetValue(a2, a3, v18);
    CFRelease(v18);
    v19 = strlen(__s) - 1;
    if (__s[v19] == 47)
    {
      __s[v19] = 0;
    }

    *a6 = strdup(__s);
    *a7 = 1;
  }
}

void sub_1B01D8CA0(uint64_t a1, const __CFString *a2)
{
  CFProperty = IORegistryEntryCreateCFProperty(*(a1 + 40), a2, 0, 0);
  v5 = *(a1 + 32);
  if (CFProperty)
  {
    CFDictionarySetValue(v5, a2, CFProperty);

    CFRelease(CFProperty);
  }

  else
  {

    CFDictionarySetValue(v5, a2, @"*** NOT PRESENT ***");
  }
}

void sub_1B01D8D34(uint64_t a1, const void *a2, CFTypeRef cf)
{
  v6 = CFGetTypeID(cf);
  if (v6 == CFDataGetTypeID())
  {
    v7 = sub_1B01A1BE8(cf);
    if (v7)
    {
      v8 = v7;
      Length = CFDataGetLength(cf);
      v10 = CFStringCreateWithFormat(0, 0, @"Decoded Data[%lld]: %@", Length, v8);
      CFDictionarySetValue(*(a1 + 32), a2, v10);
      CFRelease(v10);

      CFRelease(v8);
    }
  }
}

void sub_1B01D8DF8(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = sub_1B01D8450(a2, *(a1 + 48), *(a1 + 72), *(a1 + 56), *(a1 + 73), *(a1 + 74), *(a1 + 64));
  if (v4)
  {
    v5 = v4;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    *cStr = 0u;
    v11 = 0u;
    if (MEMORY[0x1B2720DA0](a2, *(a1 + 56), cStr))
    {
      v6 = CFStringCreateWithFormat(0, 0, @"Unknown Child %d", *(*(*(a1 + 32) + 8) + 24));
      ++*(*(*(a1 + 32) + 8) + 24);
    }

    else
    {
      v7 = cStr;
      if (cStr[0] != 47 || cStr[1])
      {
        v8 = rindex(cStr, 47);
        if (v8)
        {
          v7 = v8 + 1;
        }
      }

      v6 = CFStringCreateWithCString(0, v7, 0x8000100u);
    }

    v9 = *(*(*(a1 + 40) + 8) + 24);
    if (!v9)
    {
      *(*(*(a1 + 40) + 8) + 24) = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v9 = *(*(*(a1 + 40) + 8) + 24);
    }

    CFDictionarySetValue(v9, v6, v5);
    CFRelease(v5);
    CFRelease(v6);
  }
}

void sub_1B01D8FB4(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v11 = time(0);
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *__s = 0u;
  v13 = 0u;
  ctime_r(&v11, __s);
  __s[strlen(__s) - 1] = 0;
  v4 = *(a1 + 72);
  if (v4 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 48);
  }

  if (v4 == 3)
  {
    v6 = *(a1 + 48);
  }

  else
  {
    v6 = v5;
  }

  v7 = sub_1B01D8450(a2, *(a1 + 40), 1, v6, v4 == 3, *(a1 + 84), 0);
  if (v7)
  {
    v8 = v7;
    v9 = CFStringCreateWithFormat(0, 0, @"%5d: %s", *(*(*(a1 + 32) + 8) + 24), __s);
    v10 = *(a1 + 56);
    if (v10)
    {
      if (*(*(*(a1 + 32) + 8) + 24))
      {
        sub_1B01DA170(v10, *(a1 + 76), "\n--------------\n");
        v10 = *(a1 + 56);
      }

      sub_1B01DA170(v10, *(a1 + 76), "%@\n", v9);
      sub_1B01DA19C(*(a1 + 56), v8, 0, *(a1 + 80));
      sub_1B01DA170(*(a1 + 56), *(a1 + 76), "\n");
    }

    else
    {
      CFDictionarySetValue(*(a1 + 64), v9, v8);
    }

    CFRelease(v9);
    CFRelease(v8);
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

void _MGWriteCache()
{
  v108 = *MEMORY[0x1E69E9840];
  if (sub_1B01C5104())
  {
    _MGClearInProcessCache();
    v0 = MEMORY[0x1E695E9D8];
    v1 = MEMORY[0x1E695E9E8];
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v3 = CFDictionaryCreateMutable(0, 0, v0, v1);
    v4 = CFDataCreateMutable(0, 6210);
    CFDataSetLength(v4, 6210);
    MutableBytePtr = CFDataGetMutableBytePtr(v4);
    v5 = MGCopyAnswer(@"mZfUC7qo4pURNhyMHZ62RQ");
    CFDictionarySetValue(Mutable, @"CacheVersion", v5);
    CFDictionarySetValue(Mutable, @"CacheData", v4);
    CFDictionarySetValue(Mutable, @"CacheExtra", v3);
    cf = Mutable;
    CFDictionarySetValue(Mutable, @"CacheUUID", @"CEEA7316-5800-454A-AA6A-834513AAC59B");
    CFRelease(v5);
    CFRelease(v4);
    theDict = v3;
    CFRelease(v3);
    v99 = -1;
    v6 = sub_1B01A32F0(&v99);
    v7 = v99;
    v95 = v6;
    if (v99 < 1)
    {
      v13 = 0;
      v12 = 0;
      v11 = 0;
      v10 = 0;
      v9 = 0;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = v6 + 156;
      do
      {
        v15 = *(v14 - 39);
        if (v15)
        {
          v9 = (v9 + 1);
          v10 = *(v14 - 1) == -1 ? v10 : (v10 + 1);
          if ((*(v14 - 1) & 0x10) != 0)
          {
            v16 = CFStringCreateWithCString(0, v15, 0x8000100u);
            v17 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
            if (v17)
            {
              v23 = v17 + 1;
            }

            else
            {
              v23 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
            }

            _MGLog(v23, 470, @"MGCache: Invoking %@", v18, v19, v20, v21, v22, v16);
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *v103 = v16;
              _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "MGCache: Invoking %@", buf, 0xCu);
            }

            v24 = MGCopyAnswer(v16);
            if (v24)
            {
              v25 = v24;
              if (*v14 > 0xBu || ((1 << *v14) & 0x8E0) == 0)
              {
                CFDictionarySetValue(theDict, v16, v24);
                v12 = (v12 + 1);
              }

              CFRelease(v25);
            }

            else
            {
              v13 = (v13 + 1);
            }

            v11 = (v11 + 1);
            CFRelease(v16);
            v7 = v99;
          }
        }

        ++v8;
        v14 += 40;
      }

      while (v8 < v7);
    }

    os_unfair_lock_lock(&unk_1ED446D88);
    v33 = v99;
    if (v99 < 1)
    {
      v35 = v13;
    }

    else
    {
      v34 = v95 + 156;
      v35 = v13;
      do
      {
        if ((*(v34 - 1) & 0x10) != 0)
        {
          v36 = *(v34 - 1);
          if (*(&qword_1ED4471E0[690] + v36) == 1 && *v34 <= 0xBu && ((1 << *v34) & 0x8E0) != 0)
          {
            *&MutableBytePtr[8 * v36] = qword_1ED4471E0[v36];
            MutableBytePtr[*(v34 - 1) + 5520] = 1;
            v12 = (v12 + 1);
          }
        }

        v34 += 40;
        --v33;
      }

      while (v33);
    }

    os_unfair_lock_unlock(&unk_1ED446D88);
    v38 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
    if (v38)
    {
      v44 = v38 + 1;
    }

    else
    {
      v44 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
    }

    _MGLog(v44, 532, @"%d total, %d cacheable, %d precacheable, %d precached, %d null", v39, v40, v41, v42, v43, v9, v10, v11, v12, v35);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110144;
      *v103 = v9;
      *&v103[4] = 1024;
      *&v103[6] = v10;
      LOWORD(v104) = 1024;
      *(&v104 + 2) = v11;
      HIWORD(v104) = 1024;
      v105 = v12;
      v106 = 1024;
      v107 = v35;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%d total, %d cacheable, %d precacheable, %d precached, %d null", buf, 0x20u);
    }

    error = 0;
    v101 = 1;
    v45 = container_system_group_path_for_identifier();
    if (!v45)
    {
      v63 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
      if (v63)
      {
        v69 = v63 + 1;
      }

      else
      {
        v69 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
      }

      _MGLog(v69, 350, @"Failed to look up system group container path: %llu", v64, v65, v66, v67, v68, v101);
      v47 = cf;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v103 = v101;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to look up system group container path: %llu", buf, 0xCu);
      }

      goto LABEL_88;
    }

    v46 = v45;
    v47 = cf;
    if (strstr("/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.mobilegestaltcache/Library/Caches/com.apple.MobileGestalt.plist", v45))
    {
      v48 = *MEMORY[0x1E695E480];
      v49 = strlen(v46);
      v50 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x1E695E480], v46, v49, 1u);
      if (v50)
      {
        v51 = v50;
        v52 = CFURLCreateCopyAppendingPathComponent(v48, v50, @"Library", 1u);
        v53 = v52;
        if (v52)
        {
          v54 = 1;
          if (CFURLSetResourcePropertyForKey(v52, *MEMORY[0x1E695EB30], *MEMORY[0x1E695E4D0], &error) || !error)
          {
            goto LABEL_81;
          }

          v55 = CFErrorCopyDescription(error);
          v56 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
          if (v56)
          {
            v62 = v56 + 1;
          }

          else
          {
            v62 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
          }

          _MGLog(v62, 377, @"Failed to set backup exclusion for path: %@", v57, v58, v59, v60, v61, v53);
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v103 = v53;
            _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to set backup exclusion for path: %@", buf, 0xCu);
          }

          CFRelease(v55);
          CFRelease(error);
        }

        else
        {
          v87 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
          if (v87)
          {
            v93 = v87 + 1;
          }

          else
          {
            v93 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
          }

          _MGLog(v93, 370, @"Failed to allocate container backup exclusion URL from %@", v88, v89, v90, v91, v92, v51);
          v54 = 0;
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_81;
          }

          *buf = 138412290;
          *v103 = v51;
          _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to allocate container backup exclusion URL from %@", buf, 0xCu);
        }

        v54 = 0;
LABEL_81:
        free(v46);
        CFRelease(v51);
        if (v53)
        {
          CFRelease(v53);
          if ((v54 & 1) == 0)
          {
            goto LABEL_88;
          }

LABEL_85:
          v94 = *(off_1EB6CFEC0 + 51);
          if (!v94)
          {
            v94 = sub_1B0193150(51, 2);
          }

          (v94)(cf, "/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.mobilegestaltcache/Library/Caches/com.apple.MobileGestalt.plist");
          goto LABEL_88;
        }

        if (v54)
        {
          goto LABEL_85;
        }

LABEL_88:
        CFRelease(v47);
        return;
      }

      v80 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
      if (v80)
      {
        v86 = v80 + 1;
      }

      else
      {
        v86 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
      }

      _MGLog(v86, 364, @"Failed to allocate container URL from %s", v81, v82, v83, v84, v85, v46);
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
LABEL_74:
        free(v46);
        goto LABEL_88;
      }

      *buf = 136315138;
      *v103 = v46;
      v77 = MEMORY[0x1E69E9C10];
      v78 = "Failed to allocate container URL from %s";
      v79 = 12;
    }

    else
    {
      v70 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
      if (v70)
      {
        v76 = v70 + 1;
      }

      else
      {
        v76 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
      }

      _MGLog(v76, 358, @"System group container path: %s should match expected gestalt cache path: %s", v71, v72, v73, v74, v75, v46, "/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.mobilegestaltcache/Library/Caches/com.apple.MobileGestalt.plist");
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_74;
      }

      *buf = 136315394;
      *v103 = v46;
      *&v103[8] = 2080;
      v104 = "/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.mobilegestaltcache/Library/Caches/com.apple.MobileGestalt.plist";
      v77 = MEMORY[0x1E69E9C10];
      v78 = "System group container path: %s should match expected gestalt cache path: %s";
      v79 = 22;
    }

    _os_log_impl(&dword_1B0190000, v77, OS_LOG_TYPE_DEFAULT, v78, buf, v79);
    goto LABEL_74;
  }

  v26 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
  if (v26)
  {
    v32 = v26 + 1;
  }

  else
  {
    v32 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
  }

  _MGLog(v32, 411, @"IOKit is still busy, don't build cache", v27, v28, v29, v30, v31);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "IOKit is still busy, don't build cache", buf, 2u);
  }
}

void _MGClearInProcessCache()
{
  os_unfair_lock_lock(&unk_1ED446D88);
  v10 = -1;
  v0 = sub_1B01A32F0(&v10);
  v1 = v10;
  if (v10 >= 1)
  {
    v2 = 0;
    v3 = (v0 + 154);
    do
    {
      v4 = *v3;
      if (v4 != -1 && *(&qword_1ED4471E0[690] + v4) == 1)
      {
        v5 = *(v3 + 1);
        v6 = v5 > 0xB;
        v7 = (1 << v5) & 0x8E0;
        if (v6 || v7 == 0)
        {
          v9 = qword_1ED4471E0[v4];
          if (v9)
          {
            CFRelease(v9);
            qword_1ED4471E0[*v3] = 0;
            v1 = v10;
          }
        }
      }

      ++v2;
      v3 += 80;
    }

    while (v2 < v1);
  }

  bzero(qword_1ED4471E0, 0x1842uLL);
  os_unfair_lock_unlock(&unk_1ED446D88);
}

uint64_t _MGRebuildCache()
{
  sub_1B01D9BD0();
  if ((_MGCacheValid() & 1) == 0)
  {
    v0 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
    if (v0)
    {
      v6 = v0 + 1;
    }

    else
    {
      v6 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
    }

    _MGLog(v6, 592, @"Waiting for IOKit to quiesce", v1, v2, v3, v4, v5);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Waiting for IOKit to quiesce", buf, 2u);
    }

    if (sub_1B01C5104())
    {
      _MGWriteCache();
    }

    else
    {
      v7 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
      if (v7)
      {
        v13 = v7 + 1;
      }

      else
      {
        v13 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
      }

      _MGLog(v13, 596, @"No cache generated", v8, v9, v10, v11, v12);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "No cache generated", v15, 2u);
      }
    }
  }

  return _MGCacheValid();
}

uint64_t sub_1B01D9BD0()
{
  v30 = *MEMORY[0x1E69E9840];
  if (!unlink("/private/var/containers/Shared/SystemGroup/systemgroup.com.apple.mobilegestaltcache/Library/Caches/com.apple.MobileGestalt.plist"))
  {
    v10 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
    if (v10)
    {
      v16 = v10 + 1;
    }

    else
    {
      v16 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
    }

    _MGLog(v16, 615, @"Successfully deleted gestalt cache", v11, v12, v13, v14, v15);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v8 = MEMORY[0x1E69E9C10];
    v9 = "Successfully deleted gestalt cache";
    goto LABEL_12;
  }

  v0 = *__error();
  v1 = "/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c";
  v2 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestalt/libMobileGestalt/MobileGestaltCache.c", 47);
  if (v2)
  {
    v1 = v2 + 1;
  }

  if (v0 == 2)
  {
    _MGLog(v1, 612, @"Cache file did not exist. Rebuilding.", v3, v4, v5, v6, v7);
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
LABEL_13:
      _MGClearInProcessCache();
      _MGWriteCache();
      return _MGCacheValid();
    }

    *buf = 0;
    v8 = MEMORY[0x1E69E9C10];
    v9 = "Cache file did not exist. Rebuilding.";
LABEL_12:
    _os_log_impl(&dword_1B0190000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
    goto LABEL_13;
  }

  v18 = __error();
  v19 = strerror(*v18);
  _MGLog(v1, 609, @"Failed to delete gestalt cache: %s", v20, v21, v22, v23, v24, v19);
  v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v25)
  {
    v26 = __error();
    v27 = strerror(*v26);
    *buf = 136315138;
    v29 = v27;
    _os_log_impl(&dword_1B0190000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to delete gestalt cache: %s", buf, 0xCu);
    return 0;
  }

  return result;
}

const __CFString *_MGCacheCopyValueForKey(const __CFString *a1)
{
  result = sub_1B0192C7C(a1);
  if (result)
  {

    return sub_1B0191A80(result);
  }

  return result;
}

void sub_1B01D9DDC(FILE *a1, int a2, char *cStr, va_list a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  bzero(buffer, 0x400uLL);
  if (v7)
  {
    v8 = CFStringCreateWithFormatAndArguments(0, 0, v7, a4);
    if (v8)
    {
      v9 = v8;
      if (CFStringGetCString(v8, buffer, 1024, 0x8000100u))
      {
        if (a2)
        {
          v10 = strlen(buffer);
          if (v10)
          {
            v11 = v10;
            for (i = 0; i < v11; ++i)
            {
              v13 = buffer[i];
              if ((v13 - 92) <= 0x21 && ((1 << (v13 - 92)) & 0x280000001) != 0)
              {
                goto LABEL_14;
              }

              if (v13 == 27)
              {
                v16 = -1;
                if (sscanf(&buffer[i], "\x1B[%dm", &v16) == 1)
                {
                  do
                  {
                    v15 = buffer[i++];
                  }

                  while (v15 != 109);
                  --i;
                  if (v16)
                  {
                    v16 -= 30;
                    fprintf(a1, "\\cf%d ");
                  }

                  else
                  {
                    fwrite("\\cf0 ", 5uLL, 1uLL, a1);
                  }
                }

                continue;
              }

              if (v13 != 10)
              {
                fputc(v13, a1);
              }

              else
              {
LABEL_14:
                fprintf(a1, "\\%c");
              }
            }
          }
        }

        else
        {
          fputs(buffer, a1);
        }
      }

      CFRelease(v7);
    }

    else
    {
      v9 = v7;
    }

    CFRelease(v9);
  }
}

size_t sub_1B01D9FE4(FILE *__stream)
{
  fwrite("{\\rtf1\\ansi\\ansicpg1252\\cocoartf1183\n", 0x25uLL, 1uLL, __stream);
  fwrite("{\\fonttbl\\f0\\fnil\\fcharset0 Menlo-Regular;}\n", 0x2CuLL, 1uLL, __stream);
  fwrite("{\\colortbl;", 0xBuLL, 1uLL, __stream);
  fwrite("\\red194\\green54\\blue33;", 0x17uLL, 1uLL, __stream);
  fwrite("\\red37\\green188\\blue36;", 0x17uLL, 1uLL, __stream);
  fwrite("\\red128\\green128\\blue0;", 0x17uLL, 1uLL, __stream);
  fwrite("\\red73\\green46\\blue225;", 0x17uLL, 1uLL, __stream);
  fwrite("\\red211\\green56\\blue211;", 0x18uLL, 1uLL, __stream);
  fwrite("\\red51\\green187\\blue200;", 0x18uLL, 1uLL, __stream);
  fwrite("}\n", 2uLL, 1uLL, __stream);
  fwrite("\\margl1440\\margr1440\\vieww16420\\viewh18180\\viewkind0\n", 0x35uLL, 1uLL, __stream);

  return fwrite("\\pard\\tx720\\tx1440\\tx2160\\tx2880\\tx3600\\tx4320\\tx5040\\tx5760\\tx6480\\tx7200\\tx7920\\tx8640\\pardirnatural\n\n\\f0\\fs24 ", 0x71uLL, 1uLL, __stream);
}

uint64_t sub_1B01DA130(FILE *a1)
{
  fputc(125, a1);

  return fflush(a1);
}

void sub_1B01DA19C(FILE *a1, const void *a2, int a3, uint64_t a4)
{
  v5 = a4 & 4;
  if ((a4 & 4) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = a4 & 2;
  }

  if ((a4 & 4) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = a4 & 1;
  }

  if (a2)
  {
    v11 = CFGetTypeID(a2);
    if (v11 == CFBooleanGetTypeID())
    {
      goto LABEL_10;
    }

    v12 = CFGetTypeID(a2);
    if (v12 == CFNumberGetTypeID())
    {
      goto LABEL_10;
    }

    v13 = CFGetTypeID(a2);
    if (v13 == CFStringGetTypeID())
    {
      sub_1B01DA170(a1, v5, "%@", a2);
      return;
    }

    v14 = CFGetTypeID(a2);
    if (v14 == CFDataGetTypeID())
    {
      Length = CFDataGetLength(a2);
      Mutable = CFStringCreateMutable(0, 0);
      BytePtr = CFDataGetBytePtr(a2);
      v18 = BytePtr;
      if (Length < 25)
      {
        if (Length < 1)
        {
          goto LABEL_46;
        }

        v46 = v7;
        v31 = BytePtr;
        v32 = Length;
        do
        {
          v33 = *v31++;
          CFStringAppendFormat(Mutable, 0, @"%02x", v33);
          --v32;
        }

        while (v32);
      }

      else
      {
        v46 = v7;
        v19 = 0;
        do
        {
          CFStringAppendFormat(Mutable, 0, @"%02x%02x%02x%02x", v18[v19], v18[v19 + 1], v18[v19 + 2], v18[v19 + 3]);
          v20 = v19 >= 0xC;
          v19 += 4;
        }

        while (!v20);
        CFStringAppend(Mutable, @" ... ");
        v21 = Length - 8;
        do
        {
          CFStringAppendFormat(Mutable, 0, @"%02x%02x%02x%02x", v18[v21], v18[v21 + 1], v18[v21 + 2], v18[v21 + 3]);
          v21 += 4;
        }

        while (v21 < Length);
      }

      v7 = v46;
      if ((a4 & 8) != 0 && Length >= 32)
      {
        sub_1B01DA170(a1, v5, "{ x: %f, y: %f, width: %f, height: %f }");
        goto LABEL_47;
      }

LABEL_46:
      sub_1B01DA170(a1, v5, "Data[%llu] (%@)", Length, Mutable, v43, v44);
LABEL_47:
      if (v7)
      {
        if (Length)
        {
          v34 = sub_1B01A1BE8(a2);
          if (v34)
          {
            v35 = v34;
            sub_1B01DA170(a1, v5, " (%@)", v34);
            CFRelease(v35);
          }
        }
      }

      CFRelease(Mutable);
      return;
    }

    v22 = CFGetTypeID(a2);
    if (v22 == CFDictionaryGetTypeID())
    {
      v47 = v7;
      Count = CFDictionaryGetCount(a2);
      v24 = Count;
      if (v6)
      {
        sub_1B01DA170(a1, v5, "Dictionary[%lld]", Count);
      }

      v25 = malloc_type_calloc(v24, 8uLL, 0xC0040B8AA526DuLL);
      CFDictionaryGetKeysAndValues(a2, v25, 0);
      qsort_b(v25, v24, 8uLL, &unk_1F2637500);
      if (v24 >= 1)
      {
        v26 = 0;
        v27 = a3 + 1;
        v45 = (a3 % 6 + 31);
        do
        {
          v28 = v24;
          sub_1B01DA170(a1, v5, "\n");
          if (v27)
          {
            v29 = v27;
            do
            {
              --v29;
              fwrite("   ", 3uLL, 1uLL, a1);
            }

            while (v29);
          }

          if (v47)
          {
            sub_1B01DA170(a1, v5, "\x1B[%dm%@\x1B[0m => ", v45, v25[v26]);
          }

          else
          {
            sub_1B01DA170(a1, v5, "%@ => ", v25[v26], v42);
          }

          v24 = v28;
          Value = CFDictionaryGetValue(a2, v25[v26]);
          sub_1B01DA19C(a1, Value, v27, a4);
          ++v26;
        }

        while (v26 != v28);
      }

      free(v25);
    }

    else
    {
      v36 = CFGetTypeID(a2);
      if (v36 != CFArrayGetTypeID())
      {
LABEL_10:
        sub_1B01DA170(a1, v5, "%@", a2);
        return;
      }

      v37 = CFArrayGetCount(a2);
      v38 = v37;
      if (v6)
      {
        sub_1B01DA170(a1, v5, "Array[%lld]", v37);
      }

      if (v38 >= 1)
      {
        for (i = 0; i != v38; ++i)
        {
          sub_1B01DA170(a1, v5, "\n");
          if (a3 != -1)
          {
            v40 = a3 + 1;
            do
            {
              --v40;
              fwrite("   ", 3uLL, 1uLL, a1);
            }

            while (v40);
          }

          if (v7)
          {
            sub_1B01DA170(a1, v5, "\x1B[%dm[%lld]\x1B[0m: ");
          }

          else
          {
            sub_1B01DA170(a1, v5, "[%lld]: ");
          }

          ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
          sub_1B01DA19C(a1, ValueAtIndex, a3 + 1, a4);
        }
      }
    }
  }

  else
  {

    sub_1B01DA170(a1, a4 & 4, "NULL");
  }
}

CFComparisonResult sub_1B01DA760(uint64_t a1, CFTypeRef *a2, const __CFNumber **a3)
{
  TypeID = CFNumberGetTypeID();
  v6 = CFGetTypeID(*a2);
  v7 = *a2;
  v8 = *a3;
  if (TypeID == v6)
  {
    return CFNumberCompare(v7, v8, 0);
  }

  else
  {
    return CFStringCompare(v7, v8, 0);
  }
}

uint64_t sub_1B01DA7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, unsigned __int8 *a7, unint64_t a8)
{
  v29 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v14 = sub_1B01DF3DC(a2);
  if (!sub_1B01DD624(v14))
  {
    return 13;
  }

  v15 = sub_1B01DD5D8(v14);
  MEMORY[0x1EEE9AC00](v15, (24 * *v15 + 31) & 0xFFFFFFFFFFFFFFF0, v16, v17, v18, v19, v20, v21);
  v23 = &v27[-v22];
  bzero(&v27[-v22], v22);
  *v23 = v15;
  result = 1;
  if (a1 && a5 && a7)
  {
    v25 = sub_1B01DD954(v15, a2, a1, v23);
    if (v25 == -13)
    {
      return 2;
    }

    if (v25)
    {
      return 6;
    }

    v26 = sub_1B01DF0D8(v23, a8, a7, a6, a5, &v28);
    if (v26 == -13)
    {
      return 2;
    }

    if (v26)
    {
      return 6;
    }

    else if (v28)
    {
      return 0;
    }

    else
    {
      return 6;
    }
  }

  return result;
}

uint64_t sub_1B01DA968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, unsigned __int8 *);
  v11 = va_arg(va2, void);

  return sub_1B01DA984(va2, a2, va, va1);
}

uint64_t sub_1B01DA984(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 **a4)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v18[1] = 0;
  bzero(&v17, 0x638uLL);
  v16 = 64;
  v8 = *(a1 + 8);
  v15[0] = *a1;
  v15[1] = v8;
  v13 = 0u;
  v14 = 0u;
  if (sub_1B01E7954(v15, 2u, &unk_1B01FF580, &v13, 0x20uLL))
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(&v13 + 1);
  v10 = v13;
  if (*(&v13 + 1))
  {
    v11 = 7;
    while (!*v10)
    {
      ++v10;
      if (!--v9)
      {
        v10 = (v13 + *(&v13 + 1));
        goto LABEL_10;
      }
    }

    v11 = v9 + 7;
    if (v9 + 7 >= 0x208)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v11 = 7;
  }

LABEL_10:
  v16 = v11 >> 3;
  result = sub_1B01E4CBC(&v16, *(&v14 + 1), v14, v9, v10);
  if (!result)
  {
    if (&unk_1B01FF190 && qword_1F25E30A0)
    {
      result = sub_1B01E2610(&v16, a2, a3[1], *a3, a4[1], *a4, v18);
      if (result)
      {
        return result;
      }

      sub_1B01DF37C(16, &unk_1B01FF190, v18);
      return 0;
    }

    LOBYTE(v13) = 0;
    result = sub_1B01E24D0(&v16, a2, a3[1], *a3, a4[1], *a4, &v13);
    if (!result && (v13 & 1) != 0)
    {
      return 0;
    }
  }

  return result;
}

void sub_1B01DAB2C(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1B01DAB38(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t sub_1B01DAB58(const __CFAllocator *a1, CFTypeRef *a2, CFTypeRef cf, int a4)
{
  cfa[1] = *MEMORY[0x1E69E9840];
  cfa[0] = 0;
  v4 = 1;
  if (a2 && cf)
  {
    v8 = sub_1B01F5498(a1, cf, cfa, 0);
    if (v8)
    {
      v4 = v8;
      sub_1B01DAC6C(3, "_AMSupportCreateDataFromFileURLInternal", "AMSupportCopyPreserveFileURL failed.", v9, v10, v11, v12, v13);
    }

    else
    {
      if (a4)
      {
        v14 = sub_1B01F58D8(a1, a2, cfa[0]);
      }

      else
      {
        v14 = sub_1B01F56BC(a1, a2, cfa[0]);
      }

      v4 = v14;
    }

    if (cfa[0])
    {
      CFRelease(cfa[0]);
    }
  }

  return v4;
}

void sub_1B01DAC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v8 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v13 = v8;
  v30 = *MEMORY[0x1E69E9840];
  bzero(__str, 0x1000uLL);
  v14 = "";
  if (v12)
  {
    v14 = v12;
  }

  v15 = snprintf(__str, 0x1000uLL, "%s: ", v14);
  v16 = *MEMORY[0x1E695E480];
  v17 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], v10, 0x8000100u, *MEMORY[0x1E695E498]);
  if (!v17)
  {
    v19 = 0;
    goto LABEL_9;
  }

  v18 = CFStringCreateWithFormatAndArguments(v16, 0, v17, va);
  v19 = v18;
  if (!v18)
  {
LABEL_9:
    v27 = 0;
    v26 = 0;
    goto LABEL_14;
  }

  v20 = v15;
  v21 = 4096 - v15;
  Length = CFStringGetLength(v18);
  v23 = Length;
  if (4096 - v15 < Length && (v24 = malloc_type_malloc(v15 + Length + 1, 0x100004077774924uLL)) != 0)
  {
    v25 = v24;
    v21 = v23 + 1;
    memcpy(v24, __str, v15);
    v26 = v25;
  }

  else
  {
    v26 = 0;
    v25 = __str;
  }

  if (CFStringGetCString(v19, &v25[v20], v21, 0x8000100u))
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

LABEL_14:
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = "failed to format log message";
  }

  off_1EE812408(v13, v28);
  sub_1B01DAB2C(v17);
  sub_1B01DAB2C(v19);
  sub_1B01DAB38(v26);
}

uint64_t sub_1B01DAE64(char *__format, ...)
{
  va_start(va, __format);
  v18 = *MEMORY[0x1E69E9840];
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
  *__str = 0u;
  v3 = 0u;
  vsnprintf(__str, 0x100uLL, __format, va);
  return fprintf(*MEMORY[0x1E69E9848], "%s\n", __str);
}

FILE *sub_1B01DAF14(const __CFURL *a1, const char *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    return fopen(buffer, a2);
  }

  sub_1B01DAC6C(3, "AMSupportPlatformOpenFileStreamWithURL", "failed to convert url to file system representation", v4, v5, v6, v7, v8);
  sub_1B01DAC6C(8, "AMSupportPlatformOpenFileStreamWithURL", "%@", v10, v11, v12, v13, v14, a1);
  return 0;
}

uint64_t sub_1B01DAFE0(void *a1, size_t a2)
{
  result = munmap(a1, a2);
  if (result == -1)
  {
    return sub_1B01DB008();
  }

  return result;
}

int8x16_t *sub_1B01DB030(int8x16_t *result, int8x16_t *a2, uint64_t a3, uint64_t a4, int8x16_t *a5)
{
  if (a3)
  {
    v5 = result[15].u32[0];
    if (v5 == 160 || v5 == 192 || v5 == 224)
    {
      do
      {
        v6 = v5 - 16;
        a4 += 16;
        _Q2 = *result;
        v7 = result + 1;
        do
        {
          __asm
          {
            AESE            V0.16B, V2.16B
            AESMC           V0.16B, V0.16B
          }

          _Q2 = *v7++;
          v15 = v6 <= 16;
          v6 -= 16;
        }

        while (!v15);
        __asm { AESE            V0.16B, V2.16B }

        v17 = veorq_s8(_Q0, *v7);
        result = (v7 - v5);
        *a5++ = v17;
        v15 = a3-- <= 1;
      }

      while (!v15);
      result = 0;
      *a2 = v17;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

unint64_t sub_1B01DB0B0(uint64_t a1, char a2, unint64_t *a3, unint64_t *a4)
{
  result = sub_1B01E07C8();
  for (i = __ROR8__(0x5555555555555555, a2 | (2 * result)); a1; --a1)
  {
    v10 = *a4 ^ *a3;
    *a3 ^= result;
    v11 = *a4 ^ result;
    *a4 = v11;
    v12 = *a3 ^ v10 & 0x5555555555555555;
    v13 = v11 ^ v10 & 0x5555555555555555;
    v14 = v10 & i;
    *a3++ = v12 ^ v14 ^ result;
    *a4++ = v13 ^ v14 ^ result;
  }

  return result;
}

uint64_t sub_1B01DB150(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_1B01DFC00(a2);
  v9 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, v8);
  v11 = sub_1B01E6C58(a2);
  if (sub_1B01E1880(v8, v10, v11, 2uLL))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = sub_1B01E07E4(a1, a2, a3, a4, v10);
  }

  *(a1 + 16) = v9;
  return result;
}

uint64_t sub_1B01DB1F8(unsigned __int8 **a1, uint64_t a2, unsigned __int8 **a3)
{
  v8 = 0;
  result = sub_1B01DB488(a1, a2, &v8, 0);
  v6 = 0;
  v7 = 0;
  if (result)
  {
    v6 = *a1;
    v7 = &(*a1)[v8];
    *a1 = v7;
  }

  *a3 = v6;
  a3[1] = v7;
  return result;
}

uint64_t sub_1B01DB25C(uint64_t a1, unint64_t *a2, int a3)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*a1)
  {
    v5 = v4 >= v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    goto LABEL_7;
  }

  v6 = v4 + 1;
  v7 = *v4;
  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_6;
  }

  v9 = *v4;
  if (v9 > 0x82)
  {
    if (v9 == 131)
    {
      if ((v3 - v6) < 3)
      {
        goto LABEL_7;
      }

      v10 = v4[1];
      v6 = v4 + 4;
      v7 = v4[3] | (v10 << 16) | (v4[2] << 8);
      if (!a3)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v9 != 132 || (v3 - v6) < 4)
      {
        goto LABEL_7;
      }

      LODWORD(v10) = v4[1];
      v6 = v4 + 5;
      v7 = (v4[1] << 24) | (v4[2] << 16) | v4[4] | (v4[3] << 8);
      if (!a3)
      {
        goto LABEL_6;
      }
    }

LABEL_26:
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v9 == 129)
  {
    if ((v3 - v6) < 1)
    {
      goto LABEL_7;
    }

    v6 = v4 + 2;
    v11 = v4[1];
    v7 = v11;
    if (a3)
    {
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_6;
  }

  if (v9 != 130 || (v3 - v6) < 2)
  {
    goto LABEL_7;
  }

  v10 = v4[1];
  v6 = v4 + 3;
  v7 = v4[2] | (v10 << 8);
  if (a3)
  {
    goto LABEL_26;
  }

LABEL_6:
  if (v3 - v6 < v7)
  {
LABEL_7:
    result = 0;
    *a2 = 0;
    return result;
  }

  *a2 = v7;
  *a1 = v6;
  return 1;
}