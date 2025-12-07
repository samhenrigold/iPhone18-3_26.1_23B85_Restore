@interface CFBundleInfoPlistProcessInfoDictionary
@end

@implementation CFBundleInfoPlistProcessInfoDictionary

void ___CFBundleInfoPlistProcessInfoDictionary_block_invoke(CFMutableArrayRef *a1, const __CFString *cf)
{
  v38[6] = *MEMORY[0x1E69E9840];
  if (CFGetTypeID(cf) == 7)
  {
    if (!cf)
    {
      return;
    }

    v4 = CFStringFind(cf, @"#", 4uLL);
    if (v4.location > 0)
    {
      Length = CFStringGetLength(cf);
      v42.location = v4.location + v4.length;
      v42.length = Length - (v4.location + v4.length);
      v6 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, cf, v42);
      if (CFEqual(v6, @"CH"))
      {
        if (_isValidSpecialCase_onceToken != -1)
        {
          ___CFBundleInfoPlistProcessInfoDictionary_block_invoke_cold_1();
        }

        if (_isValidSpecialCase_useSpecialCase)
        {
          goto LABEL_8;
        }
      }

      else if (CFEqual(v6, @"override"))
      {
LABEL_8:
        v43.location = 0;
        v43.length = v4.location;
        v7 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, cf, v43);
        v8 = a1[5];
        Value = CFDictionaryGetValue(a1[6], cf);
        CFDictionarySetValue(v8, v7, Value);
        CFArrayAppendValue(a1[4], cf);
        CFRelease(v7);
        if (v6)
        {

          CFRelease(v6);
        }

        return;
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    v11 = CFStringFind(cf, @"-", 4uLL);
    location = v11.location;
    v13 = CFStringFind(cf, @"~", 4uLL);
    if ((v11.location != -1 || v13.location != -1) && (v11.location == -1 || v13.location == -1 || v13.location > v11.location))
    {
      v14 = CFStringGetLength(cf);
      v15 = v13.location == -1 ? v14 : v13.location;
      v16 = v13.location == -1 ? -1 : v13.location + v13.length;
      v17 = v13.location == -1 ? 0 : v14 - (v13.location + v13.length);
      if (v11.location == -1)
      {
        location = v13.location;
        v18 = -1;
      }

      else
      {
        v18 = v11.location + v11.length;
      }

      v19 = v11.location == -1 ? 0 : v15 - (v11.location + v11.length);
      if (location >= 1 && (v18 == -1 || v19 >= 1) && (v16 == -1 || v17 >= 1))
      {
        if (v18 != -1 || v16 == -1)
        {
          if (v18 == -1 || v16 != -1)
          {
            v41.location = v16;
            v41.length = v17;
            v20 = _CFBundleSupportedProductName(cf, v41);
            if (v20)
            {
              v45.location = v18;
              v45.length = v19;
              v20 = CFStringFindWithOptions(cf, @"iphoneos", v45, 8uLL, 0) != 0;
            }
          }

          else
          {
            v44.location = v18;
            v44.length = v19;
            v20 = CFStringFindWithOptions(cf, @"iphoneos", v44, 8uLL, 0);
          }
        }

        else
        {
          v40.location = v16;
          v40.length = v17;
          v20 = _CFBundleSupportedProductName(cf, v40);
        }

        if (v20)
        {
          v46.location = 0;
          v46.length = location;
          v21 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, cf, v46);
          if (v18 == -1)
          {
            v22 = 0;
          }

          else
          {
            v47.location = v18;
            v47.length = v19;
            v22 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, cf, v47);
          }

          if (v16 == -1)
          {
            v23 = 0;
          }

          else
          {
            v48.location = v16;
            v48.length = v17;
            v23 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, cf, v48);
          }

          if (!(v22 | v23))
          {
            v22 = 0;
            goto LABEL_72;
          }

          if (v22)
          {
            if (v23)
            {
              if (_CFGetProductName_onceToken != -1)
              {
                ___CFBundleInfoPlistProcessInfoDictionary_block_invoke_cold_3();
              }

              v24 = CFEqual(_CFGetProductName__cfBundlePlatform, v23);
              if (v24)
              {
                v24 = CFEqual(@"iphoneos", v22) != 0;
              }

LABEL_71:
              if (!v24)
              {
                CFArrayAppendValue(a1[4], cf);
                if (!v22)
                {
                  goto LABEL_80;
                }

                goto LABEL_79;
              }

LABEL_72:
              v37 = a1[6];
              Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
              if (_CFGetProductName_onceToken != -1)
              {
                ___CFBundleInfoPlistProcessInfoDictionary_block_invoke_cold_4();
              }

              v28 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@-%@~%@", v21, @"iphoneos", _CFGetProductName__cfBundlePlatform);
              if (_CFGetProductName_onceToken != -1)
              {
                ___CFBundleInfoPlistProcessInfoDictionary_block_invoke_cold_5();
              }

              v29 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@~%@", v21, _CFGetProductName__cfBundlePlatform);
              v30 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@-%@", v21, @"iphoneos");
              CFArrayAppendValue(Mutable, v28);
              CFArrayAppendValue(Mutable, v29);
              CFArrayAppendValue(Mutable, v30);
              CFRelease(v28);
              CFRelease(v29);
              CFRelease(v30);
              v31 = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
              Count = CFArrayGetCount(Mutable);
              v38[0] = MEMORY[0x1E69E9820];
              v38[1] = 0x40000000;
              v38[2] = ___CopySortedOverridesForBaseKey_block_invoke;
              v38[3] = &__block_descriptor_tmp_87;
              v38[4] = v37;
              v38[5] = v31;
              CFArrayApply(Mutable, 0, Count, v38);
              CFRelease(Mutable);
              ValueAtIndex = CFArrayGetValueAtIndex(v31, 0);
              v34 = a1[5];
              v35 = CFDictionaryGetValue(a1[6], ValueAtIndex);
              CFDictionarySetValue(v34, v21, v35);
              v36 = CFArrayGetCount(v31);
              if (v36 >= 1)
              {
                v49.location = 1;
                v49.length = v36 - 1;
                CFArrayAppendArray(a1[4], v31, v49);
              }

              CFRelease(v31);
              if (!v22)
              {
                goto LABEL_80;
              }

LABEL_79:
              CFRelease(v22);
LABEL_80:
              if (v23)
              {
                CFRelease(v23);
              }

              CFRelease(v21);
              return;
            }

            v25 = @"iphoneos";
            v26 = v22;
          }

          else
          {
            if (_CFGetProductName_onceToken != -1)
            {
              ___CFBundleInfoPlistProcessInfoDictionary_block_invoke_cold_2();
            }

            v25 = _CFGetProductName__cfBundlePlatform;
            v26 = v23;
          }

          v24 = CFEqual(v25, v26);
          goto LABEL_71;
        }
      }
    }
  }

  else
  {
    v10 = a1[4];

    CFArrayAppendValue(v10, cf);
  }
}

@end